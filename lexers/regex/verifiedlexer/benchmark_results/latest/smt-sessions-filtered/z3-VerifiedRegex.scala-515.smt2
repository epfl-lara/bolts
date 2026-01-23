; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14254 () Bool)

(assert start!14254)

(declare-fun b!136223 () Bool)

(declare-fun e!79207 () Bool)

(declare-datatypes ((B!881 0))(
  ( (B!882 (val!926 Int)) )
))
(declare-datatypes ((List!2244 0))(
  ( (Nil!2238) (Cons!2238 (h!7635 B!881) (t!22830 List!2244)) )
))
(declare-fun l1!1230 () List!2244)

(declare-fun isEmpty!880 (List!2244) Bool)

(assert (=> b!136223 (= e!79207 (not (isEmpty!880 l1!1230)))))

(declare-fun b!136225 () Bool)

(declare-fun res!63937 () Bool)

(declare-fun e!79213 () Bool)

(assert (=> b!136225 (=> (not res!63937) (not e!79213))))

(declare-fun e!79206 () Bool)

(assert (=> b!136225 (= res!63937 e!79206)))

(declare-fun res!63935 () Bool)

(assert (=> b!136225 (=> res!63935 e!79206)))

(declare-fun lt!40875 () List!2244)

(declare-fun sub!16 () List!2244)

(declare-fun lt!40878 () Bool)

(assert (=> b!136225 (= res!63935 (or lt!40878 (not (= (h!7635 sub!16) (h!7635 lt!40875)))))))

(declare-fun b!136226 () Bool)

(declare-fun e!79212 () Bool)

(assert (=> b!136226 (= e!79213 e!79212)))

(declare-fun res!63932 () Bool)

(assert (=> b!136226 (=> (not res!63932) (not e!79212))))

(declare-fun l2!1199 () List!2244)

(declare-fun lt!40876 () List!2244)

(declare-fun subseq!85 (List!2244 List!2244) Bool)

(declare-fun ++!512 (List!2244 List!2244) List!2244)

(assert (=> b!136226 (= res!63932 (subseq!85 sub!16 (++!512 lt!40876 l2!1199)))))

(declare-fun tail!306 (List!2244) List!2244)

(assert (=> b!136226 (= lt!40876 (tail!306 l1!1230))))

(declare-fun b!136227 () Bool)

(declare-fun e!79211 () Bool)

(assert (=> b!136227 (= e!79211 e!79213)))

(declare-fun res!63931 () Bool)

(assert (=> b!136227 (=> (not res!63931) (not e!79213))))

(assert (=> b!136227 (= res!63931 e!79207)))

(declare-fun res!63938 () Bool)

(assert (=> b!136227 (=> res!63938 e!79207)))

(assert (=> b!136227 (= res!63938 lt!40878)))

(get-info :version)

(assert (=> b!136227 (= lt!40878 (not ((_ is Cons!2238) lt!40875)))))

(declare-fun b!136228 () Bool)

(declare-fun l3!231 () List!2244)

(assert (=> b!136228 (= e!79212 (not (subseq!85 sub!16 (++!512 (++!512 l1!1230 l3!231) l2!1199))))))

(assert (=> b!136228 (subseq!85 sub!16 (++!512 (++!512 lt!40876 l3!231) l2!1199))))

(declare-datatypes ((Unit!1772 0))(
  ( (Unit!1773) )
))
(declare-fun lt!40877 () Unit!1772)

(declare-fun lemmaBiggerSndListPreservesSubSeq!16 (List!2244 List!2244 List!2244 List!2244) Unit!1772)

(assert (=> b!136228 (= lt!40877 (lemmaBiggerSndListPreservesSubSeq!16 sub!16 lt!40876 l2!1199 l3!231))))

(declare-fun b!136229 () Bool)

(declare-fun res!63933 () Bool)

(assert (=> b!136229 (=> (not res!63933) (not e!79211))))

(assert (=> b!136229 (= res!63933 (not ((_ is Nil!2238) sub!16)))))

(declare-fun b!136230 () Bool)

(declare-fun e!79208 () Bool)

(declare-fun tp_is_empty!1525 () Bool)

(declare-fun tp!71111 () Bool)

(assert (=> b!136230 (= e!79208 (and tp_is_empty!1525 tp!71111))))

(declare-fun b!136224 () Bool)

(assert (=> b!136224 (= e!79206 (not (subseq!85 (t!22830 sub!16) (t!22830 lt!40875))))))

(declare-fun res!63934 () Bool)

(assert (=> start!14254 (=> (not res!63934) (not e!79211))))

(assert (=> start!14254 (= res!63934 (subseq!85 sub!16 lt!40875))))

(assert (=> start!14254 (= lt!40875 (++!512 l1!1230 l2!1199))))

(assert (=> start!14254 e!79211))

(declare-fun e!79205 () Bool)

(assert (=> start!14254 e!79205))

(assert (=> start!14254 e!79208))

(declare-fun e!79209 () Bool)

(assert (=> start!14254 e!79209))

(declare-fun e!79210 () Bool)

(assert (=> start!14254 e!79210))

(declare-fun b!136231 () Bool)

(declare-fun tp!71112 () Bool)

(assert (=> b!136231 (= e!79209 (and tp_is_empty!1525 tp!71112))))

(declare-fun b!136232 () Bool)

(declare-fun res!63936 () Bool)

(assert (=> b!136232 (=> (not res!63936) (not e!79213))))

(assert (=> b!136232 (= res!63936 (not lt!40878))))

(declare-fun b!136233 () Bool)

(declare-fun tp!71114 () Bool)

(assert (=> b!136233 (= e!79210 (and tp_is_empty!1525 tp!71114))))

(declare-fun b!136234 () Bool)

(declare-fun tp!71113 () Bool)

(assert (=> b!136234 (= e!79205 (and tp_is_empty!1525 tp!71113))))

(assert (= (and start!14254 res!63934) b!136229))

(assert (= (and b!136229 res!63933) b!136227))

(assert (= (and b!136227 (not res!63938)) b!136223))

(assert (= (and b!136227 res!63931) b!136225))

(assert (= (and b!136225 (not res!63935)) b!136224))

(assert (= (and b!136225 res!63937) b!136232))

(assert (= (and b!136232 res!63936) b!136226))

(assert (= (and b!136226 res!63932) b!136228))

(assert (= (and start!14254 ((_ is Cons!2238) sub!16)) b!136234))

(assert (= (and start!14254 ((_ is Cons!2238) l3!231)) b!136230))

(assert (= (and start!14254 ((_ is Cons!2238) l1!1230)) b!136231))

(assert (= (and start!14254 ((_ is Cons!2238) l2!1199)) b!136233))

(declare-fun m!120805 () Bool)

(assert (=> b!136228 m!120805))

(declare-fun m!120807 () Bool)

(assert (=> b!136228 m!120807))

(declare-fun m!120809 () Bool)

(assert (=> b!136228 m!120809))

(declare-fun m!120811 () Bool)

(assert (=> b!136228 m!120811))

(assert (=> b!136228 m!120805))

(declare-fun m!120813 () Bool)

(assert (=> b!136228 m!120813))

(declare-fun m!120815 () Bool)

(assert (=> b!136228 m!120815))

(assert (=> b!136228 m!120809))

(assert (=> b!136228 m!120815))

(assert (=> b!136228 m!120807))

(declare-fun m!120817 () Bool)

(assert (=> b!136228 m!120817))

(declare-fun m!120819 () Bool)

(assert (=> b!136226 m!120819))

(assert (=> b!136226 m!120819))

(declare-fun m!120821 () Bool)

(assert (=> b!136226 m!120821))

(declare-fun m!120823 () Bool)

(assert (=> b!136226 m!120823))

(declare-fun m!120825 () Bool)

(assert (=> b!136223 m!120825))

(declare-fun m!120827 () Bool)

(assert (=> start!14254 m!120827))

(declare-fun m!120829 () Bool)

(assert (=> start!14254 m!120829))

(declare-fun m!120831 () Bool)

(assert (=> b!136224 m!120831))

(check-sat (not b!136228) tp_is_empty!1525 (not b!136224) (not start!14254) (not b!136231) (not b!136230) (not b!136223) (not b!136234) (not b!136233) (not b!136226))
(check-sat)
(get-model)

(declare-fun b!136255 () Bool)

(declare-fun e!79234 () Bool)

(declare-fun e!79236 () Bool)

(assert (=> b!136255 (= e!79234 e!79236)))

(declare-fun res!63960 () Bool)

(assert (=> b!136255 (=> (not res!63960) (not e!79236))))

(assert (=> b!136255 (= res!63960 ((_ is Cons!2238) (t!22830 lt!40875)))))

(declare-fun d!32646 () Bool)

(declare-fun res!63961 () Bool)

(assert (=> d!32646 (=> res!63961 e!79234)))

(assert (=> d!32646 (= res!63961 ((_ is Nil!2238) (t!22830 sub!16)))))

(assert (=> d!32646 (= (subseq!85 (t!22830 sub!16) (t!22830 lt!40875)) e!79234)))

(declare-fun b!136257 () Bool)

(declare-fun e!79237 () Bool)

(assert (=> b!136257 (= e!79237 (subseq!85 (t!22830 (t!22830 sub!16)) (t!22830 (t!22830 lt!40875))))))

(declare-fun b!136256 () Bool)

(declare-fun e!79235 () Bool)

(assert (=> b!136256 (= e!79236 e!79235)))

(declare-fun res!63962 () Bool)

(assert (=> b!136256 (=> res!63962 e!79235)))

(assert (=> b!136256 (= res!63962 e!79237)))

(declare-fun res!63959 () Bool)

(assert (=> b!136256 (=> (not res!63959) (not e!79237))))

(assert (=> b!136256 (= res!63959 (= (h!7635 (t!22830 sub!16)) (h!7635 (t!22830 lt!40875))))))

(declare-fun b!136258 () Bool)

(assert (=> b!136258 (= e!79235 (subseq!85 (t!22830 sub!16) (t!22830 (t!22830 lt!40875))))))

(assert (= (and d!32646 (not res!63961)) b!136255))

(assert (= (and b!136255 res!63960) b!136256))

(assert (= (and b!136256 res!63959) b!136257))

(assert (= (and b!136256 (not res!63962)) b!136258))

(declare-fun m!120835 () Bool)

(assert (=> b!136257 m!120835))

(declare-fun m!120837 () Bool)

(assert (=> b!136258 m!120837))

(assert (=> b!136224 d!32646))

(declare-fun b!136259 () Bool)

(declare-fun e!79238 () Bool)

(declare-fun e!79240 () Bool)

(assert (=> b!136259 (= e!79238 e!79240)))

(declare-fun res!63964 () Bool)

(assert (=> b!136259 (=> (not res!63964) (not e!79240))))

(assert (=> b!136259 (= res!63964 ((_ is Cons!2238) (++!512 lt!40876 l2!1199)))))

(declare-fun d!32650 () Bool)

(declare-fun res!63965 () Bool)

(assert (=> d!32650 (=> res!63965 e!79238)))

(assert (=> d!32650 (= res!63965 ((_ is Nil!2238) sub!16))))

(assert (=> d!32650 (= (subseq!85 sub!16 (++!512 lt!40876 l2!1199)) e!79238)))

(declare-fun b!136261 () Bool)

(declare-fun e!79241 () Bool)

(assert (=> b!136261 (= e!79241 (subseq!85 (t!22830 sub!16) (t!22830 (++!512 lt!40876 l2!1199))))))

(declare-fun b!136260 () Bool)

(declare-fun e!79239 () Bool)

(assert (=> b!136260 (= e!79240 e!79239)))

(declare-fun res!63966 () Bool)

(assert (=> b!136260 (=> res!63966 e!79239)))

(assert (=> b!136260 (= res!63966 e!79241)))

(declare-fun res!63963 () Bool)

(assert (=> b!136260 (=> (not res!63963) (not e!79241))))

(assert (=> b!136260 (= res!63963 (= (h!7635 sub!16) (h!7635 (++!512 lt!40876 l2!1199))))))

(declare-fun b!136262 () Bool)

(assert (=> b!136262 (= e!79239 (subseq!85 sub!16 (t!22830 (++!512 lt!40876 l2!1199))))))

(assert (= (and d!32650 (not res!63965)) b!136259))

(assert (= (and b!136259 res!63964) b!136260))

(assert (= (and b!136260 res!63963) b!136261))

(assert (= (and b!136260 (not res!63966)) b!136262))

(declare-fun m!120839 () Bool)

(assert (=> b!136261 m!120839))

(declare-fun m!120841 () Bool)

(assert (=> b!136262 m!120841))

(assert (=> b!136226 d!32650))

(declare-fun d!32652 () Bool)

(declare-fun e!79260 () Bool)

(assert (=> d!32652 e!79260))

(declare-fun res!63986 () Bool)

(assert (=> d!32652 (=> (not res!63986) (not e!79260))))

(declare-fun lt!40884 () List!2244)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!339 (List!2244) (InoxSet B!881))

(assert (=> d!32652 (= res!63986 (= (content!339 lt!40884) ((_ map or) (content!339 lt!40876) (content!339 l2!1199))))))

(declare-fun e!79261 () List!2244)

(assert (=> d!32652 (= lt!40884 e!79261)))

(declare-fun c!28896 () Bool)

(assert (=> d!32652 (= c!28896 ((_ is Nil!2238) lt!40876))))

(assert (=> d!32652 (= (++!512 lt!40876 l2!1199) lt!40884)))

(declare-fun b!136291 () Bool)

(assert (=> b!136291 (= e!79261 l2!1199)))

(declare-fun b!136293 () Bool)

(declare-fun res!63985 () Bool)

(assert (=> b!136293 (=> (not res!63985) (not e!79260))))

(declare-fun size!2027 (List!2244) Int)

(assert (=> b!136293 (= res!63985 (= (size!2027 lt!40884) (+ (size!2027 lt!40876) (size!2027 l2!1199))))))

(declare-fun b!136292 () Bool)

(assert (=> b!136292 (= e!79261 (Cons!2238 (h!7635 lt!40876) (++!512 (t!22830 lt!40876) l2!1199)))))

(declare-fun b!136294 () Bool)

(assert (=> b!136294 (= e!79260 (or (not (= l2!1199 Nil!2238)) (= lt!40884 lt!40876)))))

(assert (= (and d!32652 c!28896) b!136291))

(assert (= (and d!32652 (not c!28896)) b!136292))

(assert (= (and d!32652 res!63986) b!136293))

(assert (= (and b!136293 res!63985) b!136294))

(declare-fun m!120865 () Bool)

(assert (=> d!32652 m!120865))

(declare-fun m!120867 () Bool)

(assert (=> d!32652 m!120867))

(declare-fun m!120869 () Bool)

(assert (=> d!32652 m!120869))

(declare-fun m!120871 () Bool)

(assert (=> b!136293 m!120871))

(declare-fun m!120873 () Bool)

(assert (=> b!136293 m!120873))

(declare-fun m!120875 () Bool)

(assert (=> b!136293 m!120875))

(declare-fun m!120877 () Bool)

(assert (=> b!136292 m!120877))

(assert (=> b!136226 d!32652))

(declare-fun d!32660 () Bool)

(assert (=> d!32660 (= (tail!306 l1!1230) (t!22830 l1!1230))))

(assert (=> b!136226 d!32660))

(declare-fun b!136295 () Bool)

(declare-fun e!79262 () Bool)

(declare-fun e!79264 () Bool)

(assert (=> b!136295 (= e!79262 e!79264)))

(declare-fun res!63988 () Bool)

(assert (=> b!136295 (=> (not res!63988) (not e!79264))))

(assert (=> b!136295 (= res!63988 ((_ is Cons!2238) (++!512 (++!512 lt!40876 l3!231) l2!1199)))))

(declare-fun d!32662 () Bool)

(declare-fun res!63989 () Bool)

(assert (=> d!32662 (=> res!63989 e!79262)))

(assert (=> d!32662 (= res!63989 ((_ is Nil!2238) sub!16))))

(assert (=> d!32662 (= (subseq!85 sub!16 (++!512 (++!512 lt!40876 l3!231) l2!1199)) e!79262)))

(declare-fun e!79265 () Bool)

(declare-fun b!136297 () Bool)

(assert (=> b!136297 (= e!79265 (subseq!85 (t!22830 sub!16) (t!22830 (++!512 (++!512 lt!40876 l3!231) l2!1199))))))

(declare-fun b!136296 () Bool)

(declare-fun e!79263 () Bool)

(assert (=> b!136296 (= e!79264 e!79263)))

(declare-fun res!63990 () Bool)

(assert (=> b!136296 (=> res!63990 e!79263)))

(assert (=> b!136296 (= res!63990 e!79265)))

(declare-fun res!63987 () Bool)

(assert (=> b!136296 (=> (not res!63987) (not e!79265))))

(assert (=> b!136296 (= res!63987 (= (h!7635 sub!16) (h!7635 (++!512 (++!512 lt!40876 l3!231) l2!1199))))))

(declare-fun b!136298 () Bool)

(assert (=> b!136298 (= e!79263 (subseq!85 sub!16 (t!22830 (++!512 (++!512 lt!40876 l3!231) l2!1199))))))

(assert (= (and d!32662 (not res!63989)) b!136295))

(assert (= (and b!136295 res!63988) b!136296))

(assert (= (and b!136296 res!63987) b!136297))

(assert (= (and b!136296 (not res!63990)) b!136298))

(declare-fun m!120879 () Bool)

(assert (=> b!136297 m!120879))

(declare-fun m!120881 () Bool)

(assert (=> b!136298 m!120881))

(assert (=> b!136228 d!32662))

(declare-fun d!32664 () Bool)

(assert (=> d!32664 (subseq!85 sub!16 (++!512 (++!512 lt!40876 l3!231) l2!1199))))

(declare-fun lt!40892 () Unit!1772)

(declare-fun choose!1707 (List!2244 List!2244 List!2244 List!2244) Unit!1772)

(assert (=> d!32664 (= lt!40892 (choose!1707 sub!16 lt!40876 l2!1199 l3!231))))

(assert (=> d!32664 (subseq!85 sub!16 (++!512 lt!40876 l2!1199))))

(assert (=> d!32664 (= (lemmaBiggerSndListPreservesSubSeq!16 sub!16 lt!40876 l2!1199 l3!231) lt!40892)))

(declare-fun bs!12741 () Bool)

(assert (= bs!12741 d!32664))

(assert (=> bs!12741 m!120809))

(assert (=> bs!12741 m!120811))

(assert (=> bs!12741 m!120815))

(assert (=> bs!12741 m!120819))

(assert (=> bs!12741 m!120815))

(assert (=> bs!12741 m!120809))

(assert (=> bs!12741 m!120819))

(assert (=> bs!12741 m!120821))

(declare-fun m!120909 () Bool)

(assert (=> bs!12741 m!120909))

(assert (=> b!136228 d!32664))

(declare-fun d!32672 () Bool)

(declare-fun e!79272 () Bool)

(assert (=> d!32672 e!79272))

(declare-fun res!63998 () Bool)

(assert (=> d!32672 (=> (not res!63998) (not e!79272))))

(declare-fun lt!40894 () List!2244)

(assert (=> d!32672 (= res!63998 (= (content!339 lt!40894) ((_ map or) (content!339 lt!40876) (content!339 l3!231))))))

(declare-fun e!79273 () List!2244)

(assert (=> d!32672 (= lt!40894 e!79273)))

(declare-fun c!28900 () Bool)

(assert (=> d!32672 (= c!28900 ((_ is Nil!2238) lt!40876))))

(assert (=> d!32672 (= (++!512 lt!40876 l3!231) lt!40894)))

(declare-fun b!136311 () Bool)

(assert (=> b!136311 (= e!79273 l3!231)))

(declare-fun b!136313 () Bool)

(declare-fun res!63997 () Bool)

(assert (=> b!136313 (=> (not res!63997) (not e!79272))))

(assert (=> b!136313 (= res!63997 (= (size!2027 lt!40894) (+ (size!2027 lt!40876) (size!2027 l3!231))))))

(declare-fun b!136312 () Bool)

(assert (=> b!136312 (= e!79273 (Cons!2238 (h!7635 lt!40876) (++!512 (t!22830 lt!40876) l3!231)))))

(declare-fun b!136314 () Bool)

(assert (=> b!136314 (= e!79272 (or (not (= l3!231 Nil!2238)) (= lt!40894 lt!40876)))))

(assert (= (and d!32672 c!28900) b!136311))

(assert (= (and d!32672 (not c!28900)) b!136312))

(assert (= (and d!32672 res!63998) b!136313))

(assert (= (and b!136313 res!63997) b!136314))

(declare-fun m!120921 () Bool)

(assert (=> d!32672 m!120921))

(assert (=> d!32672 m!120867))

(declare-fun m!120923 () Bool)

(assert (=> d!32672 m!120923))

(declare-fun m!120925 () Bool)

(assert (=> b!136313 m!120925))

(assert (=> b!136313 m!120873))

(declare-fun m!120927 () Bool)

(assert (=> b!136313 m!120927))

(declare-fun m!120929 () Bool)

(assert (=> b!136312 m!120929))

(assert (=> b!136228 d!32672))

(declare-fun d!32676 () Bool)

(declare-fun e!79276 () Bool)

(assert (=> d!32676 e!79276))

(declare-fun res!64002 () Bool)

(assert (=> d!32676 (=> (not res!64002) (not e!79276))))

(declare-fun lt!40896 () List!2244)

(assert (=> d!32676 (= res!64002 (= (content!339 lt!40896) ((_ map or) (content!339 (++!512 lt!40876 l3!231)) (content!339 l2!1199))))))

(declare-fun e!79277 () List!2244)

(assert (=> d!32676 (= lt!40896 e!79277)))

(declare-fun c!28902 () Bool)

(assert (=> d!32676 (= c!28902 ((_ is Nil!2238) (++!512 lt!40876 l3!231)))))

(assert (=> d!32676 (= (++!512 (++!512 lt!40876 l3!231) l2!1199) lt!40896)))

(declare-fun b!136319 () Bool)

(assert (=> b!136319 (= e!79277 l2!1199)))

(declare-fun b!136321 () Bool)

(declare-fun res!64001 () Bool)

(assert (=> b!136321 (=> (not res!64001) (not e!79276))))

(assert (=> b!136321 (= res!64001 (= (size!2027 lt!40896) (+ (size!2027 (++!512 lt!40876 l3!231)) (size!2027 l2!1199))))))

(declare-fun b!136320 () Bool)

(assert (=> b!136320 (= e!79277 (Cons!2238 (h!7635 (++!512 lt!40876 l3!231)) (++!512 (t!22830 (++!512 lt!40876 l3!231)) l2!1199)))))

(declare-fun b!136322 () Bool)

(assert (=> b!136322 (= e!79276 (or (not (= l2!1199 Nil!2238)) (= lt!40896 (++!512 lt!40876 l3!231))))))

(assert (= (and d!32676 c!28902) b!136319))

(assert (= (and d!32676 (not c!28902)) b!136320))

(assert (= (and d!32676 res!64002) b!136321))

(assert (= (and b!136321 res!64001) b!136322))

(declare-fun m!120937 () Bool)

(assert (=> d!32676 m!120937))

(assert (=> d!32676 m!120815))

(declare-fun m!120939 () Bool)

(assert (=> d!32676 m!120939))

(assert (=> d!32676 m!120869))

(declare-fun m!120941 () Bool)

(assert (=> b!136321 m!120941))

(assert (=> b!136321 m!120815))

(declare-fun m!120943 () Bool)

(assert (=> b!136321 m!120943))

(assert (=> b!136321 m!120875))

(declare-fun m!120945 () Bool)

(assert (=> b!136320 m!120945))

(assert (=> b!136228 d!32676))

(declare-fun d!32680 () Bool)

(declare-fun e!79282 () Bool)

(assert (=> d!32680 e!79282))

(declare-fun res!64008 () Bool)

(assert (=> d!32680 (=> (not res!64008) (not e!79282))))

(declare-fun lt!40897 () List!2244)

(assert (=> d!32680 (= res!64008 (= (content!339 lt!40897) ((_ map or) (content!339 (++!512 l1!1230 l3!231)) (content!339 l2!1199))))))

(declare-fun e!79283 () List!2244)

(assert (=> d!32680 (= lt!40897 e!79283)))

(declare-fun c!28903 () Bool)

(assert (=> d!32680 (= c!28903 ((_ is Nil!2238) (++!512 l1!1230 l3!231)))))

(assert (=> d!32680 (= (++!512 (++!512 l1!1230 l3!231) l2!1199) lt!40897)))

(declare-fun b!136327 () Bool)

(assert (=> b!136327 (= e!79283 l2!1199)))

(declare-fun b!136329 () Bool)

(declare-fun res!64007 () Bool)

(assert (=> b!136329 (=> (not res!64007) (not e!79282))))

(assert (=> b!136329 (= res!64007 (= (size!2027 lt!40897) (+ (size!2027 (++!512 l1!1230 l3!231)) (size!2027 l2!1199))))))

(declare-fun b!136328 () Bool)

(assert (=> b!136328 (= e!79283 (Cons!2238 (h!7635 (++!512 l1!1230 l3!231)) (++!512 (t!22830 (++!512 l1!1230 l3!231)) l2!1199)))))

(declare-fun b!136330 () Bool)

(assert (=> b!136330 (= e!79282 (or (not (= l2!1199 Nil!2238)) (= lt!40897 (++!512 l1!1230 l3!231))))))

(assert (= (and d!32680 c!28903) b!136327))

(assert (= (and d!32680 (not c!28903)) b!136328))

(assert (= (and d!32680 res!64008) b!136329))

(assert (= (and b!136329 res!64007) b!136330))

(declare-fun m!120951 () Bool)

(assert (=> d!32680 m!120951))

(assert (=> d!32680 m!120805))

(declare-fun m!120953 () Bool)

(assert (=> d!32680 m!120953))

(assert (=> d!32680 m!120869))

(declare-fun m!120955 () Bool)

(assert (=> b!136329 m!120955))

(assert (=> b!136329 m!120805))

(declare-fun m!120957 () Bool)

(assert (=> b!136329 m!120957))

(assert (=> b!136329 m!120875))

(declare-fun m!120959 () Bool)

(assert (=> b!136328 m!120959))

(assert (=> b!136228 d!32680))

(declare-fun d!32684 () Bool)

(declare-fun e!79284 () Bool)

(assert (=> d!32684 e!79284))

(declare-fun res!64010 () Bool)

(assert (=> d!32684 (=> (not res!64010) (not e!79284))))

(declare-fun lt!40898 () List!2244)

(assert (=> d!32684 (= res!64010 (= (content!339 lt!40898) ((_ map or) (content!339 l1!1230) (content!339 l3!231))))))

(declare-fun e!79285 () List!2244)

(assert (=> d!32684 (= lt!40898 e!79285)))

(declare-fun c!28904 () Bool)

(assert (=> d!32684 (= c!28904 ((_ is Nil!2238) l1!1230))))

(assert (=> d!32684 (= (++!512 l1!1230 l3!231) lt!40898)))

(declare-fun b!136331 () Bool)

(assert (=> b!136331 (= e!79285 l3!231)))

(declare-fun b!136333 () Bool)

(declare-fun res!64009 () Bool)

(assert (=> b!136333 (=> (not res!64009) (not e!79284))))

(assert (=> b!136333 (= res!64009 (= (size!2027 lt!40898) (+ (size!2027 l1!1230) (size!2027 l3!231))))))

(declare-fun b!136332 () Bool)

(assert (=> b!136332 (= e!79285 (Cons!2238 (h!7635 l1!1230) (++!512 (t!22830 l1!1230) l3!231)))))

(declare-fun b!136334 () Bool)

(assert (=> b!136334 (= e!79284 (or (not (= l3!231 Nil!2238)) (= lt!40898 l1!1230)))))

(assert (= (and d!32684 c!28904) b!136331))

(assert (= (and d!32684 (not c!28904)) b!136332))

(assert (= (and d!32684 res!64010) b!136333))

(assert (= (and b!136333 res!64009) b!136334))

(declare-fun m!120961 () Bool)

(assert (=> d!32684 m!120961))

(declare-fun m!120963 () Bool)

(assert (=> d!32684 m!120963))

(assert (=> d!32684 m!120923))

(declare-fun m!120965 () Bool)

(assert (=> b!136333 m!120965))

(declare-fun m!120967 () Bool)

(assert (=> b!136333 m!120967))

(assert (=> b!136333 m!120927))

(declare-fun m!120971 () Bool)

(assert (=> b!136332 m!120971))

(assert (=> b!136228 d!32684))

(declare-fun b!136343 () Bool)

(declare-fun e!79292 () Bool)

(declare-fun e!79294 () Bool)

(assert (=> b!136343 (= e!79292 e!79294)))

(declare-fun res!64018 () Bool)

(assert (=> b!136343 (=> (not res!64018) (not e!79294))))

(assert (=> b!136343 (= res!64018 ((_ is Cons!2238) (++!512 (++!512 l1!1230 l3!231) l2!1199)))))

(declare-fun d!32690 () Bool)

(declare-fun res!64019 () Bool)

(assert (=> d!32690 (=> res!64019 e!79292)))

(assert (=> d!32690 (= res!64019 ((_ is Nil!2238) sub!16))))

(assert (=> d!32690 (= (subseq!85 sub!16 (++!512 (++!512 l1!1230 l3!231) l2!1199)) e!79292)))

(declare-fun e!79295 () Bool)

(declare-fun b!136345 () Bool)

(assert (=> b!136345 (= e!79295 (subseq!85 (t!22830 sub!16) (t!22830 (++!512 (++!512 l1!1230 l3!231) l2!1199))))))

(declare-fun b!136344 () Bool)

(declare-fun e!79293 () Bool)

(assert (=> b!136344 (= e!79294 e!79293)))

(declare-fun res!64020 () Bool)

(assert (=> b!136344 (=> res!64020 e!79293)))

(assert (=> b!136344 (= res!64020 e!79295)))

(declare-fun res!64017 () Bool)

(assert (=> b!136344 (=> (not res!64017) (not e!79295))))

(assert (=> b!136344 (= res!64017 (= (h!7635 sub!16) (h!7635 (++!512 (++!512 l1!1230 l3!231) l2!1199))))))

(declare-fun b!136346 () Bool)

(assert (=> b!136346 (= e!79293 (subseq!85 sub!16 (t!22830 (++!512 (++!512 l1!1230 l3!231) l2!1199))))))

(assert (= (and d!32690 (not res!64019)) b!136343))

(assert (= (and b!136343 res!64018) b!136344))

(assert (= (and b!136344 res!64017) b!136345))

(assert (= (and b!136344 (not res!64020)) b!136346))

(declare-fun m!120977 () Bool)

(assert (=> b!136345 m!120977))

(declare-fun m!120981 () Bool)

(assert (=> b!136346 m!120981))

(assert (=> b!136228 d!32690))

(declare-fun d!32692 () Bool)

(assert (=> d!32692 (= (isEmpty!880 l1!1230) ((_ is Nil!2238) l1!1230))))

(assert (=> b!136223 d!32692))

(declare-fun b!136351 () Bool)

(declare-fun e!79298 () Bool)

(declare-fun e!79300 () Bool)

(assert (=> b!136351 (= e!79298 e!79300)))

(declare-fun res!64022 () Bool)

(assert (=> b!136351 (=> (not res!64022) (not e!79300))))

(assert (=> b!136351 (= res!64022 ((_ is Cons!2238) lt!40875))))

(declare-fun d!32696 () Bool)

(declare-fun res!64023 () Bool)

(assert (=> d!32696 (=> res!64023 e!79298)))

(assert (=> d!32696 (= res!64023 ((_ is Nil!2238) sub!16))))

(assert (=> d!32696 (= (subseq!85 sub!16 lt!40875) e!79298)))

(declare-fun b!136353 () Bool)

(declare-fun e!79301 () Bool)

(assert (=> b!136353 (= e!79301 (subseq!85 (t!22830 sub!16) (t!22830 lt!40875)))))

(declare-fun b!136352 () Bool)

(declare-fun e!79299 () Bool)

(assert (=> b!136352 (= e!79300 e!79299)))

(declare-fun res!64024 () Bool)

(assert (=> b!136352 (=> res!64024 e!79299)))

(assert (=> b!136352 (= res!64024 e!79301)))

(declare-fun res!64021 () Bool)

(assert (=> b!136352 (=> (not res!64021) (not e!79301))))

(assert (=> b!136352 (= res!64021 (= (h!7635 sub!16) (h!7635 lt!40875)))))

(declare-fun b!136354 () Bool)

(assert (=> b!136354 (= e!79299 (subseq!85 sub!16 (t!22830 lt!40875)))))

(assert (= (and d!32696 (not res!64023)) b!136351))

(assert (= (and b!136351 res!64022) b!136352))

(assert (= (and b!136352 res!64021) b!136353))

(assert (= (and b!136352 (not res!64024)) b!136354))

(assert (=> b!136353 m!120831))

(declare-fun m!120985 () Bool)

(assert (=> b!136354 m!120985))

(assert (=> start!14254 d!32696))

(declare-fun d!32698 () Bool)

(declare-fun e!79303 () Bool)

(assert (=> d!32698 e!79303))

(declare-fun res!64026 () Bool)

(assert (=> d!32698 (=> (not res!64026) (not e!79303))))

(declare-fun lt!40900 () List!2244)

(assert (=> d!32698 (= res!64026 (= (content!339 lt!40900) ((_ map or) (content!339 l1!1230) (content!339 l2!1199))))))

(declare-fun e!79304 () List!2244)

(assert (=> d!32698 (= lt!40900 e!79304)))

(declare-fun c!28906 () Bool)

(assert (=> d!32698 (= c!28906 ((_ is Nil!2238) l1!1230))))

(assert (=> d!32698 (= (++!512 l1!1230 l2!1199) lt!40900)))

(declare-fun b!136356 () Bool)

(assert (=> b!136356 (= e!79304 l2!1199)))

(declare-fun b!136358 () Bool)

(declare-fun res!64025 () Bool)

(assert (=> b!136358 (=> (not res!64025) (not e!79303))))

(assert (=> b!136358 (= res!64025 (= (size!2027 lt!40900) (+ (size!2027 l1!1230) (size!2027 l2!1199))))))

(declare-fun b!136357 () Bool)

(assert (=> b!136357 (= e!79304 (Cons!2238 (h!7635 l1!1230) (++!512 (t!22830 l1!1230) l2!1199)))))

(declare-fun b!136359 () Bool)

(assert (=> b!136359 (= e!79303 (or (not (= l2!1199 Nil!2238)) (= lt!40900 l1!1230)))))

(assert (= (and d!32698 c!28906) b!136356))

(assert (= (and d!32698 (not c!28906)) b!136357))

(assert (= (and d!32698 res!64026) b!136358))

(assert (= (and b!136358 res!64025) b!136359))

(declare-fun m!120987 () Bool)

(assert (=> d!32698 m!120987))

(assert (=> d!32698 m!120963))

(assert (=> d!32698 m!120869))

(declare-fun m!120989 () Bool)

(assert (=> b!136358 m!120989))

(assert (=> b!136358 m!120967))

(assert (=> b!136358 m!120875))

(declare-fun m!120991 () Bool)

(assert (=> b!136357 m!120991))

(assert (=> start!14254 d!32698))

(declare-fun b!136367 () Bool)

(declare-fun e!79310 () Bool)

(declare-fun tp!71123 () Bool)

(assert (=> b!136367 (= e!79310 (and tp_is_empty!1525 tp!71123))))

(assert (=> b!136234 (= tp!71113 e!79310)))

(assert (= (and b!136234 ((_ is Cons!2238) (t!22830 sub!16))) b!136367))

(declare-fun b!136368 () Bool)

(declare-fun e!79311 () Bool)

(declare-fun tp!71124 () Bool)

(assert (=> b!136368 (= e!79311 (and tp_is_empty!1525 tp!71124))))

(assert (=> b!136231 (= tp!71112 e!79311)))

(assert (= (and b!136231 ((_ is Cons!2238) (t!22830 l1!1230))) b!136368))

(declare-fun b!136369 () Bool)

(declare-fun e!79312 () Bool)

(declare-fun tp!71125 () Bool)

(assert (=> b!136369 (= e!79312 (and tp_is_empty!1525 tp!71125))))

(assert (=> b!136230 (= tp!71111 e!79312)))

(assert (= (and b!136230 ((_ is Cons!2238) (t!22830 l3!231))) b!136369))

(declare-fun b!136370 () Bool)

(declare-fun e!79313 () Bool)

(declare-fun tp!71126 () Bool)

(assert (=> b!136370 (= e!79313 (and tp_is_empty!1525 tp!71126))))

(assert (=> b!136233 (= tp!71114 e!79313)))

(assert (= (and b!136233 ((_ is Cons!2238) (t!22830 l2!1199))) b!136370))

(check-sat (not b!136354) (not d!32664) (not b!136367) (not b!136262) (not b!136297) (not b!136333) (not b!136369) (not b!136312) (not b!136357) (not b!136258) (not b!136329) (not d!32698) (not d!32680) (not b!136298) (not d!32652) (not b!136332) tp_is_empty!1525 (not b!136358) (not b!136321) (not b!136292) (not b!136261) (not b!136313) (not b!136328) (not b!136293) (not b!136257) (not d!32672) (not b!136345) (not b!136368) (not d!32684) (not d!32676) (not b!136353) (not b!136346) (not b!136320) (not b!136370))
(check-sat)
