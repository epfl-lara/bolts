; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!188888 () Bool)

(assert start!188888)

(declare-fun b!1886205 () Bool)

(declare-fun res!841818 () Bool)

(declare-fun e!1203553 () Bool)

(assert (=> b!1886205 (=> (not res!841818) (not e!1203553))))

(declare-datatypes ((B!1685 0))(
  ( (B!1686 (val!6128 Int)) )
))
(declare-datatypes ((List!21121 0))(
  ( (Nil!21039) (Cons!21039 (h!26440 B!1685) (t!175120 List!21121)) )
))
(declare-fun l2!1298 () List!21121)

(declare-fun l3!256 () List!21121)

(declare-fun subseq!391 (List!21121 List!21121) Bool)

(assert (=> b!1886205 (= res!841818 (subseq!391 l2!1298 l3!256))))

(declare-fun b!1886206 () Bool)

(declare-fun e!1203551 () Bool)

(declare-fun tp_is_empty!8941 () Bool)

(declare-fun tp!537868 () Bool)

(assert (=> b!1886206 (= e!1203551 (and tp_is_empty!8941 tp!537868))))

(declare-fun b!1886207 () Bool)

(declare-fun lt!723502 () Int)

(declare-fun lt!723500 () Int)

(declare-fun lt!723501 () Int)

(assert (=> b!1886207 (= e!1203553 (or (< lt!723502 0) (< lt!723501 0) (< lt!723500 0)))))

(declare-fun size!16709 (List!21121) Int)

(assert (=> b!1886207 (= lt!723500 (size!16709 l3!256))))

(assert (=> b!1886207 (= lt!723501 (size!16709 l2!1298))))

(declare-fun l1!1329 () List!21121)

(assert (=> b!1886207 (= lt!723502 (size!16709 l1!1329))))

(declare-fun b!1886208 () Bool)

(declare-fun e!1203554 () Bool)

(declare-fun tp!537870 () Bool)

(assert (=> b!1886208 (= e!1203554 (and tp_is_empty!8941 tp!537870))))

(declare-fun res!841817 () Bool)

(assert (=> start!188888 (=> (not res!841817) (not e!1203553))))

(assert (=> start!188888 (= res!841817 (subseq!391 l1!1329 l2!1298))))

(assert (=> start!188888 e!1203553))

(assert (=> start!188888 e!1203551))

(declare-fun e!1203552 () Bool)

(assert (=> start!188888 e!1203552))

(assert (=> start!188888 e!1203554))

(declare-fun b!1886204 () Bool)

(declare-fun tp!537869 () Bool)

(assert (=> b!1886204 (= e!1203552 (and tp_is_empty!8941 tp!537869))))

(assert (= (and start!188888 res!841817) b!1886205))

(assert (= (and b!1886205 res!841818) b!1886207))

(get-info :version)

(assert (= (and start!188888 ((_ is Cons!21039) l1!1329)) b!1886206))

(assert (= (and start!188888 ((_ is Cons!21039) l2!1298)) b!1886204))

(assert (= (and start!188888 ((_ is Cons!21039) l3!256)) b!1886208))

(declare-fun m!2318845 () Bool)

(assert (=> b!1886205 m!2318845))

(declare-fun m!2318847 () Bool)

(assert (=> b!1886207 m!2318847))

(declare-fun m!2318849 () Bool)

(assert (=> b!1886207 m!2318849))

(declare-fun m!2318851 () Bool)

(assert (=> b!1886207 m!2318851))

(declare-fun m!2318853 () Bool)

(assert (=> start!188888 m!2318853))

(check-sat (not start!188888) tp_is_empty!8941 (not b!1886207) (not b!1886206) (not b!1886205) (not b!1886208) (not b!1886204))
(check-sat)
(get-model)

(declare-fun d!577934 () Bool)

(declare-fun res!841828 () Bool)

(declare-fun e!1203567 () Bool)

(assert (=> d!577934 (=> res!841828 e!1203567)))

(assert (=> d!577934 (= res!841828 ((_ is Nil!21039) l2!1298))))

(assert (=> d!577934 (= (subseq!391 l2!1298 l3!256) e!1203567)))

(declare-fun b!1886227 () Bool)

(declare-fun e!1203568 () Bool)

(assert (=> b!1886227 (= e!1203568 (subseq!391 (t!175120 l2!1298) (t!175120 l3!256)))))

(declare-fun b!1886226 () Bool)

(declare-fun e!1203570 () Bool)

(declare-fun e!1203569 () Bool)

(assert (=> b!1886226 (= e!1203570 e!1203569)))

(declare-fun res!841827 () Bool)

(assert (=> b!1886226 (=> res!841827 e!1203569)))

(assert (=> b!1886226 (= res!841827 e!1203568)))

(declare-fun res!841829 () Bool)

(assert (=> b!1886226 (=> (not res!841829) (not e!1203568))))

(assert (=> b!1886226 (= res!841829 (= (h!26440 l2!1298) (h!26440 l3!256)))))

(declare-fun b!1886225 () Bool)

(assert (=> b!1886225 (= e!1203567 e!1203570)))

(declare-fun res!841830 () Bool)

(assert (=> b!1886225 (=> (not res!841830) (not e!1203570))))

(assert (=> b!1886225 (= res!841830 ((_ is Cons!21039) l3!256))))

(declare-fun b!1886228 () Bool)

(assert (=> b!1886228 (= e!1203569 (subseq!391 l2!1298 (t!175120 l3!256)))))

(assert (= (and d!577934 (not res!841828)) b!1886225))

(assert (= (and b!1886225 res!841830) b!1886226))

(assert (= (and b!1886226 res!841829) b!1886227))

(assert (= (and b!1886226 (not res!841827)) b!1886228))

(declare-fun m!2318861 () Bool)

(assert (=> b!1886227 m!2318861))

(declare-fun m!2318863 () Bool)

(assert (=> b!1886228 m!2318863))

(assert (=> b!1886205 d!577934))

(declare-fun d!577944 () Bool)

(declare-fun res!841832 () Bool)

(declare-fun e!1203572 () Bool)

(assert (=> d!577944 (=> res!841832 e!1203572)))

(assert (=> d!577944 (= res!841832 ((_ is Nil!21039) l1!1329))))

(assert (=> d!577944 (= (subseq!391 l1!1329 l2!1298) e!1203572)))

(declare-fun b!1886233 () Bool)

(declare-fun e!1203573 () Bool)

(assert (=> b!1886233 (= e!1203573 (subseq!391 (t!175120 l1!1329) (t!175120 l2!1298)))))

(declare-fun b!1886232 () Bool)

(declare-fun e!1203575 () Bool)

(declare-fun e!1203574 () Bool)

(assert (=> b!1886232 (= e!1203575 e!1203574)))

(declare-fun res!841831 () Bool)

(assert (=> b!1886232 (=> res!841831 e!1203574)))

(assert (=> b!1886232 (= res!841831 e!1203573)))

(declare-fun res!841833 () Bool)

(assert (=> b!1886232 (=> (not res!841833) (not e!1203573))))

(assert (=> b!1886232 (= res!841833 (= (h!26440 l1!1329) (h!26440 l2!1298)))))

(declare-fun b!1886231 () Bool)

(assert (=> b!1886231 (= e!1203572 e!1203575)))

(declare-fun res!841834 () Bool)

(assert (=> b!1886231 (=> (not res!841834) (not e!1203575))))

(assert (=> b!1886231 (= res!841834 ((_ is Cons!21039) l2!1298))))

(declare-fun b!1886234 () Bool)

(assert (=> b!1886234 (= e!1203574 (subseq!391 l1!1329 (t!175120 l2!1298)))))

(assert (= (and d!577944 (not res!841832)) b!1886231))

(assert (= (and b!1886231 res!841834) b!1886232))

(assert (= (and b!1886232 res!841833) b!1886233))

(assert (= (and b!1886232 (not res!841831)) b!1886234))

(declare-fun m!2318865 () Bool)

(assert (=> b!1886233 m!2318865))

(declare-fun m!2318867 () Bool)

(assert (=> b!1886234 m!2318867))

(assert (=> start!188888 d!577944))

(declare-fun d!577946 () Bool)

(declare-fun lt!723510 () Int)

(assert (=> d!577946 (>= lt!723510 0)))

(declare-fun e!1203580 () Int)

(assert (=> d!577946 (= lt!723510 e!1203580)))

(declare-fun c!308098 () Bool)

(assert (=> d!577946 (= c!308098 ((_ is Nil!21039) l3!256))))

(assert (=> d!577946 (= (size!16709 l3!256) lt!723510)))

(declare-fun b!1886239 () Bool)

(assert (=> b!1886239 (= e!1203580 0)))

(declare-fun b!1886241 () Bool)

(assert (=> b!1886241 (= e!1203580 (+ 1 (size!16709 (t!175120 l3!256))))))

(assert (= (and d!577946 c!308098) b!1886239))

(assert (= (and d!577946 (not c!308098)) b!1886241))

(declare-fun m!2318869 () Bool)

(assert (=> b!1886241 m!2318869))

(assert (=> b!1886207 d!577946))

(declare-fun d!577948 () Bool)

(declare-fun lt!723511 () Int)

(assert (=> d!577948 (>= lt!723511 0)))

(declare-fun e!1203587 () Int)

(assert (=> d!577948 (= lt!723511 e!1203587)))

(declare-fun c!308099 () Bool)

(assert (=> d!577948 (= c!308099 ((_ is Nil!21039) l2!1298))))

(assert (=> d!577948 (= (size!16709 l2!1298) lt!723511)))

(declare-fun b!1886247 () Bool)

(assert (=> b!1886247 (= e!1203587 0)))

(declare-fun b!1886248 () Bool)

(assert (=> b!1886248 (= e!1203587 (+ 1 (size!16709 (t!175120 l2!1298))))))

(assert (= (and d!577948 c!308099) b!1886247))

(assert (= (and d!577948 (not c!308099)) b!1886248))

(declare-fun m!2318871 () Bool)

(assert (=> b!1886248 m!2318871))

(assert (=> b!1886207 d!577948))

(declare-fun d!577950 () Bool)

(declare-fun lt!723512 () Int)

(assert (=> d!577950 (>= lt!723512 0)))

(declare-fun e!1203588 () Int)

(assert (=> d!577950 (= lt!723512 e!1203588)))

(declare-fun c!308100 () Bool)

(assert (=> d!577950 (= c!308100 ((_ is Nil!21039) l1!1329))))

(assert (=> d!577950 (= (size!16709 l1!1329) lt!723512)))

(declare-fun b!1886251 () Bool)

(assert (=> b!1886251 (= e!1203588 0)))

(declare-fun b!1886252 () Bool)

(assert (=> b!1886252 (= e!1203588 (+ 1 (size!16709 (t!175120 l1!1329))))))

(assert (= (and d!577950 c!308100) b!1886251))

(assert (= (and d!577950 (not c!308100)) b!1886252))

(declare-fun m!2318873 () Bool)

(assert (=> b!1886252 m!2318873))

(assert (=> b!1886207 d!577950))

(declare-fun b!1886257 () Bool)

(declare-fun e!1203591 () Bool)

(declare-fun tp!537873 () Bool)

(assert (=> b!1886257 (= e!1203591 (and tp_is_empty!8941 tp!537873))))

(assert (=> b!1886206 (= tp!537868 e!1203591)))

(assert (= (and b!1886206 ((_ is Cons!21039) (t!175120 l1!1329))) b!1886257))

(declare-fun b!1886258 () Bool)

(declare-fun e!1203592 () Bool)

(declare-fun tp!537874 () Bool)

(assert (=> b!1886258 (= e!1203592 (and tp_is_empty!8941 tp!537874))))

(assert (=> b!1886204 (= tp!537869 e!1203592)))

(assert (= (and b!1886204 ((_ is Cons!21039) (t!175120 l2!1298))) b!1886258))

(declare-fun b!1886259 () Bool)

(declare-fun e!1203593 () Bool)

(declare-fun tp!537875 () Bool)

(assert (=> b!1886259 (= e!1203593 (and tp_is_empty!8941 tp!537875))))

(assert (=> b!1886208 (= tp!537870 e!1203593)))

(assert (= (and b!1886208 ((_ is Cons!21039) (t!175120 l3!256))) b!1886259))

(check-sat (not b!1886259) (not b!1886241) (not b!1886227) (not b!1886257) tp_is_empty!8941 (not b!1886248) (not b!1886252) (not b!1886258) (not b!1886228) (not b!1886234) (not b!1886233))
(check-sat)
