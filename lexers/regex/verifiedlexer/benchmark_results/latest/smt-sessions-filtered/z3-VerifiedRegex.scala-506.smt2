; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14078 () Bool)

(assert start!14078)

(declare-fun b!134879 () Bool)

(declare-fun e!78223 () Bool)

(declare-fun tp_is_empty!1489 () Bool)

(declare-fun tp!70830 () Bool)

(assert (=> b!134879 (= e!78223 (and tp_is_empty!1489 tp!70830))))

(declare-fun b!134880 () Bool)

(declare-fun e!78225 () Bool)

(declare-fun tp!70832 () Bool)

(assert (=> b!134880 (= e!78225 (and tp_is_empty!1489 tp!70832))))

(declare-fun b!134877 () Bool)

(declare-fun e!78222 () Bool)

(declare-datatypes ((B!845 0))(
  ( (B!846 (val!908 Int)) )
))
(declare-datatypes ((List!2226 0))(
  ( (Nil!2220) (Cons!2220 (h!7617 B!845) (t!22812 List!2226)) )
))
(declare-fun lt!40636 () List!2226)

(declare-fun size!2009 (List!2226) Int)

(assert (=> b!134877 (= e!78222 (< (size!2009 lt!40636) 0))))

(declare-fun b!134878 () Bool)

(declare-fun e!78224 () Bool)

(declare-fun tp!70831 () Bool)

(assert (=> b!134878 (= e!78224 (and tp_is_empty!1489 tp!70831))))

(declare-fun res!63110 () Bool)

(assert (=> start!14078 (=> (not res!63110) (not e!78222))))

(declare-fun sub!16 () List!2226)

(declare-fun subseq!67 (List!2226 List!2226) Bool)

(assert (=> start!14078 (= res!63110 (subseq!67 sub!16 lt!40636))))

(declare-fun l1!1230 () List!2226)

(declare-fun l2!1199 () List!2226)

(declare-fun ++!494 (List!2226 List!2226) List!2226)

(assert (=> start!14078 (= lt!40636 (++!494 l1!1230 l2!1199))))

(assert (=> start!14078 e!78222))

(assert (=> start!14078 e!78224))

(assert (=> start!14078 e!78223))

(assert (=> start!14078 e!78225))

(assert (= (and start!14078 res!63110) b!134877))

(get-info :version)

(assert (= (and start!14078 ((_ is Cons!2220) l1!1230)) b!134878))

(assert (= (and start!14078 ((_ is Cons!2220) l2!1199)) b!134879))

(assert (= (and start!14078 ((_ is Cons!2220) sub!16)) b!134880))

(declare-fun m!119779 () Bool)

(assert (=> b!134877 m!119779))

(declare-fun m!119781 () Bool)

(assert (=> start!14078 m!119781))

(declare-fun m!119783 () Bool)

(assert (=> start!14078 m!119783))

(check-sat (not b!134877) (not b!134879) tp_is_empty!1489 (not b!134880) (not start!14078) (not b!134878))
(check-sat)
(get-model)

(declare-fun b!134904 () Bool)

(declare-fun e!78246 () Bool)

(assert (=> b!134904 (= e!78246 (subseq!67 sub!16 (t!22812 lt!40636)))))

(declare-fun b!134902 () Bool)

(declare-fun e!78249 () Bool)

(assert (=> b!134902 (= e!78249 e!78246)))

(declare-fun res!63133 () Bool)

(assert (=> b!134902 (=> res!63133 e!78246)))

(declare-fun e!78248 () Bool)

(assert (=> b!134902 (= res!63133 e!78248)))

(declare-fun res!63131 () Bool)

(assert (=> b!134902 (=> (not res!63131) (not e!78248))))

(assert (=> b!134902 (= res!63131 (= (h!7617 sub!16) (h!7617 lt!40636)))))

(declare-fun b!134903 () Bool)

(assert (=> b!134903 (= e!78248 (subseq!67 (t!22812 sub!16) (t!22812 lt!40636)))))

(declare-fun d!32365 () Bool)

(declare-fun res!63134 () Bool)

(declare-fun e!78247 () Bool)

(assert (=> d!32365 (=> res!63134 e!78247)))

(assert (=> d!32365 (= res!63134 ((_ is Nil!2220) sub!16))))

(assert (=> d!32365 (= (subseq!67 sub!16 lt!40636) e!78247)))

(declare-fun b!134901 () Bool)

(assert (=> b!134901 (= e!78247 e!78249)))

(declare-fun res!63132 () Bool)

(assert (=> b!134901 (=> (not res!63132) (not e!78249))))

(assert (=> b!134901 (= res!63132 ((_ is Cons!2220) lt!40636))))

(assert (= (and d!32365 (not res!63134)) b!134901))

(assert (= (and b!134901 res!63132) b!134902))

(assert (= (and b!134902 res!63131) b!134903))

(assert (= (and b!134902 (not res!63133)) b!134904))

(declare-fun m!119789 () Bool)

(assert (=> b!134904 m!119789))

(declare-fun m!119791 () Bool)

(assert (=> b!134903 m!119791))

(assert (=> start!14078 d!32365))

(declare-fun b!134926 () Bool)

(declare-fun e!78261 () List!2226)

(assert (=> b!134926 (= e!78261 (Cons!2220 (h!7617 l1!1230) (++!494 (t!22812 l1!1230) l2!1199)))))

(declare-fun b!134928 () Bool)

(declare-fun e!78260 () Bool)

(declare-fun lt!40642 () List!2226)

(assert (=> b!134928 (= e!78260 (or (not (= l2!1199 Nil!2220)) (= lt!40642 l1!1230)))))

(declare-fun b!134927 () Bool)

(declare-fun res!63145 () Bool)

(assert (=> b!134927 (=> (not res!63145) (not e!78260))))

(assert (=> b!134927 (= res!63145 (= (size!2009 lt!40642) (+ (size!2009 l1!1230) (size!2009 l2!1199))))))

(declare-fun b!134925 () Bool)

(assert (=> b!134925 (= e!78261 l2!1199)))

(declare-fun d!32369 () Bool)

(assert (=> d!32369 e!78260))

(declare-fun res!63146 () Bool)

(assert (=> d!32369 (=> (not res!63146) (not e!78260))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!320 (List!2226) (InoxSet B!845))

(assert (=> d!32369 (= res!63146 (= (content!320 lt!40642) ((_ map or) (content!320 l1!1230) (content!320 l2!1199))))))

(assert (=> d!32369 (= lt!40642 e!78261)))

(declare-fun c!28792 () Bool)

(assert (=> d!32369 (= c!28792 ((_ is Nil!2220) l1!1230))))

(assert (=> d!32369 (= (++!494 l1!1230 l2!1199) lt!40642)))

(assert (= (and d!32369 c!28792) b!134925))

(assert (= (and d!32369 (not c!28792)) b!134926))

(assert (= (and d!32369 res!63146) b!134927))

(assert (= (and b!134927 res!63145) b!134928))

(declare-fun m!119807 () Bool)

(assert (=> b!134926 m!119807))

(declare-fun m!119809 () Bool)

(assert (=> b!134927 m!119809))

(declare-fun m!119811 () Bool)

(assert (=> b!134927 m!119811))

(declare-fun m!119813 () Bool)

(assert (=> b!134927 m!119813))

(declare-fun m!119815 () Bool)

(assert (=> d!32369 m!119815))

(declare-fun m!119817 () Bool)

(assert (=> d!32369 m!119817))

(declare-fun m!119819 () Bool)

(assert (=> d!32369 m!119819))

(assert (=> start!14078 d!32369))

(declare-fun d!32373 () Bool)

(declare-fun lt!40647 () Int)

(assert (=> d!32373 (>= lt!40647 0)))

(declare-fun e!78266 () Int)

(assert (=> d!32373 (= lt!40647 e!78266)))

(declare-fun c!28797 () Bool)

(assert (=> d!32373 (= c!28797 ((_ is Nil!2220) lt!40636))))

(assert (=> d!32373 (= (size!2009 lt!40636) lt!40647)))

(declare-fun b!134937 () Bool)

(assert (=> b!134937 (= e!78266 0)))

(declare-fun b!134938 () Bool)

(assert (=> b!134938 (= e!78266 (+ 1 (size!2009 (t!22812 lt!40636))))))

(assert (= (and d!32373 c!28797) b!134937))

(assert (= (and d!32373 (not c!28797)) b!134938))

(declare-fun m!119821 () Bool)

(assert (=> b!134938 m!119821))

(assert (=> b!134877 d!32373))

(declare-fun b!134949 () Bool)

(declare-fun e!78272 () Bool)

(declare-fun tp!70837 () Bool)

(assert (=> b!134949 (= e!78272 (and tp_is_empty!1489 tp!70837))))

(assert (=> b!134879 (= tp!70830 e!78272)))

(assert (= (and b!134879 ((_ is Cons!2220) (t!22812 l2!1199))) b!134949))

(declare-fun b!134950 () Bool)

(declare-fun e!78273 () Bool)

(declare-fun tp!70838 () Bool)

(assert (=> b!134950 (= e!78273 (and tp_is_empty!1489 tp!70838))))

(assert (=> b!134880 (= tp!70832 e!78273)))

(assert (= (and b!134880 ((_ is Cons!2220) (t!22812 sub!16))) b!134950))

(declare-fun b!134951 () Bool)

(declare-fun e!78274 () Bool)

(declare-fun tp!70839 () Bool)

(assert (=> b!134951 (= e!78274 (and tp_is_empty!1489 tp!70839))))

(assert (=> b!134878 (= tp!70831 e!78274)))

(assert (= (and b!134878 ((_ is Cons!2220) (t!22812 l1!1230))) b!134951))

(check-sat (not b!134949) (not b!134950) (not b!134951) (not b!134903) tp_is_empty!1489 (not b!134927) (not b!134938) (not d!32369) (not b!134904) (not b!134926))
(check-sat)
