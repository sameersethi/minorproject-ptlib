/*
 * pprocess.h
 *
 * Operating system process (running program) class.
 *
 * Portable Windows Library
 *
 * Copyright (c) 1993-1998 Equivalence Pty. Ltd.
 *
 * The contents of this file are subject to the Mozilla Public License
 * Version 1.0 (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at
 * http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS IS"
 * basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
 * the License for the specific language governing rights and limitations
 * under the License.
 *
 * The Original Code is Portable Windows Library.
 *
 * The Initial Developer of the Original Code is Equivalence Pty. Ltd.
 *
 * Portions are Copyright (C) 1993 Free Software Foundation, Inc.
 * All Rights Reserved.
 *
 * Contributor(s): ______________________________________.
 *
 * $Revision: 22082 $
 * $Author: rjongbloed $
 * $Date: 2009-02-16 23:31:44 -0600 (Mon, 16 Feb 2009) $
 */


///////////////////////////////////////////////////////////////////////////////
// PProcess

  public:
    ~PProcess();

    void SignalTimerChange();
    // Signal to the timer thread that a change was made.

    virtual PBoolean IsServiceProcess() const;
    virtual PBoolean IsGUIProcess() const;
    void WaitOnExitConsoleWindow();

  private:
    PLIST(ThreadList, PThread);
    ThreadList autoDeleteThreads;
    PMutex deleteThreadMutex;

    class HouseKeepingThread : public PThread
    {
        PCLASSINFO(HouseKeepingThread, PThread)
      public:
        HouseKeepingThread();
        ~HouseKeepingThread();
        void Main();
        PSyncPoint m_breakBlock;
        bool       m_running;
    };
    HouseKeepingThread * houseKeeper;
    // Thread for doing timers, thread clean up etc.

  friend PThread * PThread::Current();
  friend void HouseKeepingThread::Main();
  friend UINT __stdcall PThread::MainFunction(void * thread);
  friend class PServiceProcess;
  friend class PApplication;
#ifndef _WIN32_WCE
  friend int PASCAL WinMain(HINSTANCE, HINSTANCE, LPSTR, int);
#else
  friend int PASCAL WinMain(HINSTANCE, HINSTANCE, LPTSTR, int);
#endif

// End Of File ///////////////////////////////////////////////////////////////
