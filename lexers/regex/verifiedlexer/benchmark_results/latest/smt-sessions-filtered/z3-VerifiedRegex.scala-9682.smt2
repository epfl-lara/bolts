; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507710 () Bool)

(assert start!507710)

(declare-fun b!4858948 () Bool)

(declare-fun e!3037662 () Bool)

(declare-fun tp!1366767 () Bool)

(assert (=> b!4858948 (= e!3037662 tp!1366767)))

(declare-fun b!4858949 () Bool)

(declare-fun e!3037661 () Bool)

(declare-datatypes ((T!98686 0))(
  ( (T!98687 (val!22412 Int)) )
))
(declare-datatypes ((List!55880 0))(
  ( (Nil!55756) (Cons!55756 (h!62204 T!98686) (t!363490 List!55880)) )
))
(declare-datatypes ((IArray!29133 0))(
  ( (IArray!29134 (innerList!14624 List!55880)) )
))
(declare-datatypes ((Conc!14536 0))(
  ( (Node!14536 (left!40524 Conc!14536) (right!40854 Conc!14536) (csize!29302 Int) (cheight!14747 Int)) (Leaf!24219 (xs!17842 IArray!29133) (csize!29303 Int)) (Empty!14536) )
))
(declare-fun t!4677 () Conc!14536)

(declare-fun inv!71618 (IArray!29133) Bool)

(assert (=> b!4858949 (= e!3037661 (and (inv!71618 (xs!17842 t!4677)) e!3037662))))

(declare-fun b!4858950 () Bool)

(declare-fun e!3037660 () Bool)

(declare-fun err!4481 () T!98686)

(declare-fun last!410 (List!55880) T!98686)

(declare-fun list!17432 (Conc!14536) List!55880)

(assert (=> b!4858950 (= e!3037660 (not (= err!4481 (last!410 (list!17432 t!4677)))))))

(assert (=> b!4858950 true))

(declare-fun tp_is_empty!35531 () Bool)

(assert (=> b!4858950 tp_is_empty!35531))

(declare-fun b!4858951 () Bool)

(declare-fun res!2074261 () Bool)

(assert (=> b!4858951 (=> (not res!2074261) (not e!3037660))))

(get-info :version)

(assert (=> b!4858951 (= res!2074261 (and (not ((_ is Leaf!24219) t!4677)) (not ((_ is Node!14536) t!4677))))))

(declare-fun b!4858953 () Bool)

(declare-fun tp!1366768 () Bool)

(declare-fun tp!1366769 () Bool)

(declare-fun inv!71619 (Conc!14536) Bool)

(assert (=> b!4858953 (= e!3037661 (and (inv!71619 (left!40524 t!4677)) tp!1366768 (inv!71619 (right!40854 t!4677)) tp!1366769))))

(declare-fun res!2074259 () Bool)

(assert (=> start!507710 (=> (not res!2074259) (not e!3037660))))

(declare-fun isBalanced!3942 (Conc!14536) Bool)

(assert (=> start!507710 (= res!2074259 (isBalanced!3942 t!4677))))

(assert (=> start!507710 e!3037660))

(assert (=> start!507710 (and (inv!71619 t!4677) e!3037661)))

(declare-fun b!4858952 () Bool)

(declare-fun res!2074260 () Bool)

(assert (=> b!4858952 (=> (not res!2074260) (not e!3037660))))

(declare-fun isEmpty!29843 (Conc!14536) Bool)

(assert (=> b!4858952 (= res!2074260 (not (isEmpty!29843 t!4677)))))

(assert (= (and start!507710 res!2074259) b!4858952))

(assert (= (and b!4858952 res!2074260) b!4858951))

(assert (= (and b!4858951 res!2074261) b!4858950))

(assert (= (and start!507710 ((_ is Node!14536) t!4677)) b!4858953))

(assert (= b!4858949 b!4858948))

(assert (= (and start!507710 ((_ is Leaf!24219) t!4677)) b!4858949))

(declare-fun m!5857274 () Bool)

(assert (=> b!4858953 m!5857274))

(declare-fun m!5857276 () Bool)

(assert (=> b!4858953 m!5857276))

(declare-fun m!5857278 () Bool)

(assert (=> b!4858952 m!5857278))

(declare-fun m!5857280 () Bool)

(assert (=> start!507710 m!5857280))

(declare-fun m!5857282 () Bool)

(assert (=> start!507710 m!5857282))

(declare-fun m!5857284 () Bool)

(assert (=> b!4858950 m!5857284))

(assert (=> b!4858950 m!5857284))

(declare-fun m!5857286 () Bool)

(assert (=> b!4858950 m!5857286))

(declare-fun m!5857288 () Bool)

(assert (=> b!4858949 m!5857288))

(check-sat (not b!4858950) (not b!4858949) tp_is_empty!35531 (not b!4858952) (not b!4858953) (not start!507710) (not b!4858948))
(check-sat)
(get-model)

(declare-fun d!1559763 () Bool)

(declare-fun res!2074278 () Bool)

(declare-fun e!3037668 () Bool)

(assert (=> d!1559763 (=> res!2074278 e!3037668)))

(assert (=> d!1559763 (= res!2074278 (not ((_ is Node!14536) t!4677)))))

(assert (=> d!1559763 (= (isBalanced!3942 t!4677) e!3037668)))

(declare-fun b!4858966 () Bool)

(declare-fun res!2074277 () Bool)

(declare-fun e!3037667 () Bool)

(assert (=> b!4858966 (=> (not res!2074277) (not e!3037667))))

(assert (=> b!4858966 (= res!2074277 (isBalanced!3942 (right!40854 t!4677)))))

(declare-fun b!4858967 () Bool)

(declare-fun res!2074279 () Bool)

(assert (=> b!4858967 (=> (not res!2074279) (not e!3037667))))

(declare-fun height!1914 (Conc!14536) Int)

(assert (=> b!4858967 (= res!2074279 (<= (- (height!1914 (left!40524 t!4677)) (height!1914 (right!40854 t!4677))) 1))))

(declare-fun b!4858968 () Bool)

(assert (=> b!4858968 (= e!3037667 (not (isEmpty!29843 (right!40854 t!4677))))))

(declare-fun b!4858969 () Bool)

(declare-fun res!2074276 () Bool)

(assert (=> b!4858969 (=> (not res!2074276) (not e!3037667))))

(assert (=> b!4858969 (= res!2074276 (isBalanced!3942 (left!40524 t!4677)))))

(declare-fun b!4858970 () Bool)

(assert (=> b!4858970 (= e!3037668 e!3037667)))

(declare-fun res!2074275 () Bool)

(assert (=> b!4858970 (=> (not res!2074275) (not e!3037667))))

(assert (=> b!4858970 (= res!2074275 (<= (- 1) (- (height!1914 (left!40524 t!4677)) (height!1914 (right!40854 t!4677)))))))

(declare-fun b!4858971 () Bool)

(declare-fun res!2074274 () Bool)

(assert (=> b!4858971 (=> (not res!2074274) (not e!3037667))))

(assert (=> b!4858971 (= res!2074274 (not (isEmpty!29843 (left!40524 t!4677))))))

(assert (= (and d!1559763 (not res!2074278)) b!4858970))

(assert (= (and b!4858970 res!2074275) b!4858967))

(assert (= (and b!4858967 res!2074279) b!4858969))

(assert (= (and b!4858969 res!2074276) b!4858966))

(assert (= (and b!4858966 res!2074277) b!4858971))

(assert (= (and b!4858971 res!2074274) b!4858968))

(declare-fun m!5857292 () Bool)

(assert (=> b!4858969 m!5857292))

(declare-fun m!5857294 () Bool)

(assert (=> b!4858968 m!5857294))

(declare-fun m!5857296 () Bool)

(assert (=> b!4858966 m!5857296))

(declare-fun m!5857298 () Bool)

(assert (=> b!4858967 m!5857298))

(declare-fun m!5857300 () Bool)

(assert (=> b!4858967 m!5857300))

(assert (=> b!4858970 m!5857298))

(assert (=> b!4858970 m!5857300))

(declare-fun m!5857302 () Bool)

(assert (=> b!4858971 m!5857302))

(assert (=> start!507710 d!1559763))

(declare-fun d!1559769 () Bool)

(declare-fun c!826624 () Bool)

(assert (=> d!1559769 (= c!826624 ((_ is Node!14536) t!4677))))

(declare-fun e!3037677 () Bool)

(assert (=> d!1559769 (= (inv!71619 t!4677) e!3037677)))

(declare-fun b!4858990 () Bool)

(declare-fun inv!71620 (Conc!14536) Bool)

(assert (=> b!4858990 (= e!3037677 (inv!71620 t!4677))))

(declare-fun b!4858991 () Bool)

(declare-fun e!3037678 () Bool)

(assert (=> b!4858991 (= e!3037677 e!3037678)))

(declare-fun res!2074294 () Bool)

(assert (=> b!4858991 (= res!2074294 (not ((_ is Leaf!24219) t!4677)))))

(assert (=> b!4858991 (=> res!2074294 e!3037678)))

(declare-fun b!4858992 () Bool)

(declare-fun inv!71621 (Conc!14536) Bool)

(assert (=> b!4858992 (= e!3037678 (inv!71621 t!4677))))

(assert (= (and d!1559769 c!826624) b!4858990))

(assert (= (and d!1559769 (not c!826624)) b!4858991))

(assert (= (and b!4858991 (not res!2074294)) b!4858992))

(declare-fun m!5857304 () Bool)

(assert (=> b!4858990 m!5857304))

(declare-fun m!5857306 () Bool)

(assert (=> b!4858992 m!5857306))

(assert (=> start!507710 d!1559769))

(declare-fun d!1559771 () Bool)

(declare-fun lt!1991922 () Bool)

(declare-fun isEmpty!29844 (List!55880) Bool)

(assert (=> d!1559771 (= lt!1991922 (isEmpty!29844 (list!17432 t!4677)))))

(declare-fun size!36742 (Conc!14536) Int)

(assert (=> d!1559771 (= lt!1991922 (= (size!36742 t!4677) 0))))

(assert (=> d!1559771 (= (isEmpty!29843 t!4677) lt!1991922)))

(declare-fun bs!1173831 () Bool)

(assert (= bs!1173831 d!1559771))

(assert (=> bs!1173831 m!5857284))

(assert (=> bs!1173831 m!5857284))

(declare-fun m!5857320 () Bool)

(assert (=> bs!1173831 m!5857320))

(declare-fun m!5857322 () Bool)

(assert (=> bs!1173831 m!5857322))

(assert (=> b!4858952 d!1559771))

(declare-fun d!1559775 () Bool)

(declare-fun c!826625 () Bool)

(assert (=> d!1559775 (= c!826625 ((_ is Node!14536) (left!40524 t!4677)))))

(declare-fun e!3037681 () Bool)

(assert (=> d!1559775 (= (inv!71619 (left!40524 t!4677)) e!3037681)))

(declare-fun b!4858999 () Bool)

(assert (=> b!4858999 (= e!3037681 (inv!71620 (left!40524 t!4677)))))

(declare-fun b!4859000 () Bool)

(declare-fun e!3037682 () Bool)

(assert (=> b!4859000 (= e!3037681 e!3037682)))

(declare-fun res!2074301 () Bool)

(assert (=> b!4859000 (= res!2074301 (not ((_ is Leaf!24219) (left!40524 t!4677))))))

(assert (=> b!4859000 (=> res!2074301 e!3037682)))

(declare-fun b!4859001 () Bool)

(assert (=> b!4859001 (= e!3037682 (inv!71621 (left!40524 t!4677)))))

(assert (= (and d!1559775 c!826625) b!4858999))

(assert (= (and d!1559775 (not c!826625)) b!4859000))

(assert (= (and b!4859000 (not res!2074301)) b!4859001))

(declare-fun m!5857324 () Bool)

(assert (=> b!4858999 m!5857324))

(declare-fun m!5857326 () Bool)

(assert (=> b!4859001 m!5857326))

(assert (=> b!4858953 d!1559775))

(declare-fun d!1559777 () Bool)

(declare-fun c!826626 () Bool)

(assert (=> d!1559777 (= c!826626 ((_ is Node!14536) (right!40854 t!4677)))))

(declare-fun e!3037683 () Bool)

(assert (=> d!1559777 (= (inv!71619 (right!40854 t!4677)) e!3037683)))

(declare-fun b!4859002 () Bool)

(assert (=> b!4859002 (= e!3037683 (inv!71620 (right!40854 t!4677)))))

(declare-fun b!4859003 () Bool)

(declare-fun e!3037684 () Bool)

(assert (=> b!4859003 (= e!3037683 e!3037684)))

(declare-fun res!2074302 () Bool)

(assert (=> b!4859003 (= res!2074302 (not ((_ is Leaf!24219) (right!40854 t!4677))))))

(assert (=> b!4859003 (=> res!2074302 e!3037684)))

(declare-fun b!4859004 () Bool)

(assert (=> b!4859004 (= e!3037684 (inv!71621 (right!40854 t!4677)))))

(assert (= (and d!1559777 c!826626) b!4859002))

(assert (= (and d!1559777 (not c!826626)) b!4859003))

(assert (= (and b!4859003 (not res!2074302)) b!4859004))

(declare-fun m!5857328 () Bool)

(assert (=> b!4859002 m!5857328))

(declare-fun m!5857330 () Bool)

(assert (=> b!4859004 m!5857330))

(assert (=> b!4858953 d!1559777))

(declare-fun d!1559779 () Bool)

(declare-fun lt!1991927 () T!98686)

(declare-fun contains!19368 (List!55880 T!98686) Bool)

(assert (=> d!1559779 (contains!19368 (list!17432 t!4677) lt!1991927)))

(declare-fun e!3037693 () T!98686)

(assert (=> d!1559779 (= lt!1991927 e!3037693)))

(declare-fun c!826632 () Bool)

(assert (=> d!1559779 (= c!826632 (and ((_ is Cons!55756) (list!17432 t!4677)) ((_ is Nil!55756) (t!363490 (list!17432 t!4677)))))))

(assert (=> d!1559779 (not (isEmpty!29844 (list!17432 t!4677)))))

(assert (=> d!1559779 (= (last!410 (list!17432 t!4677)) lt!1991927)))

(declare-fun b!4859018 () Bool)

(assert (=> b!4859018 (= e!3037693 (h!62204 (list!17432 t!4677)))))

(declare-fun b!4859019 () Bool)

(assert (=> b!4859019 (= e!3037693 (last!410 (t!363490 (list!17432 t!4677))))))

(assert (= (and d!1559779 c!826632) b!4859018))

(assert (= (and d!1559779 (not c!826632)) b!4859019))

(assert (=> d!1559779 m!5857284))

(declare-fun m!5857336 () Bool)

(assert (=> d!1559779 m!5857336))

(assert (=> d!1559779 m!5857284))

(assert (=> d!1559779 m!5857320))

(declare-fun m!5857338 () Bool)

(assert (=> b!4859019 m!5857338))

(assert (=> b!4858950 d!1559779))

(declare-fun b!4859035 () Bool)

(declare-fun e!3037701 () List!55880)

(declare-fun e!3037702 () List!55880)

(assert (=> b!4859035 (= e!3037701 e!3037702)))

(declare-fun c!826641 () Bool)

(assert (=> b!4859035 (= c!826641 ((_ is Leaf!24219) t!4677))))

(declare-fun b!4859034 () Bool)

(assert (=> b!4859034 (= e!3037701 Nil!55756)))

(declare-fun d!1559783 () Bool)

(declare-fun c!826640 () Bool)

(assert (=> d!1559783 (= c!826640 ((_ is Empty!14536) t!4677))))

(assert (=> d!1559783 (= (list!17432 t!4677) e!3037701)))

(declare-fun b!4859037 () Bool)

(declare-fun ++!12140 (List!55880 List!55880) List!55880)

(assert (=> b!4859037 (= e!3037702 (++!12140 (list!17432 (left!40524 t!4677)) (list!17432 (right!40854 t!4677))))))

(declare-fun b!4859036 () Bool)

(declare-fun list!17433 (IArray!29133) List!55880)

(assert (=> b!4859036 (= e!3037702 (list!17433 (xs!17842 t!4677)))))

(assert (= (and d!1559783 c!826640) b!4859034))

(assert (= (and d!1559783 (not c!826640)) b!4859035))

(assert (= (and b!4859035 c!826641) b!4859036))

(assert (= (and b!4859035 (not c!826641)) b!4859037))

(declare-fun m!5857348 () Bool)

(assert (=> b!4859037 m!5857348))

(declare-fun m!5857350 () Bool)

(assert (=> b!4859037 m!5857350))

(assert (=> b!4859037 m!5857348))

(assert (=> b!4859037 m!5857350))

(declare-fun m!5857352 () Bool)

(assert (=> b!4859037 m!5857352))

(declare-fun m!5857354 () Bool)

(assert (=> b!4859036 m!5857354))

(assert (=> b!4858950 d!1559783))

(declare-fun d!1559789 () Bool)

(declare-fun size!36744 (List!55880) Int)

(assert (=> d!1559789 (= (inv!71618 (xs!17842 t!4677)) (<= (size!36744 (innerList!14624 (xs!17842 t!4677))) 2147483647))))

(declare-fun bs!1173833 () Bool)

(assert (= bs!1173833 d!1559789))

(declare-fun m!5857356 () Bool)

(assert (=> bs!1173833 m!5857356))

(assert (=> b!4858949 d!1559789))

(declare-fun b!4859050 () Bool)

(declare-fun e!3037709 () Bool)

(declare-fun tp!1366772 () Bool)

(assert (=> b!4859050 (= e!3037709 (and tp_is_empty!35531 tp!1366772))))

(assert (=> b!4858948 (= tp!1366767 e!3037709)))

(assert (= (and b!4858948 ((_ is Cons!55756) (innerList!14624 (xs!17842 t!4677)))) b!4859050))

(declare-fun e!3037714 () Bool)

(declare-fun b!4859059 () Bool)

(declare-fun tp!1366780 () Bool)

(declare-fun tp!1366781 () Bool)

(assert (=> b!4859059 (= e!3037714 (and (inv!71619 (left!40524 (left!40524 t!4677))) tp!1366781 (inv!71619 (right!40854 (left!40524 t!4677))) tp!1366780))))

(declare-fun b!4859061 () Bool)

(declare-fun e!3037715 () Bool)

(declare-fun tp!1366779 () Bool)

(assert (=> b!4859061 (= e!3037715 tp!1366779)))

(declare-fun b!4859060 () Bool)

(assert (=> b!4859060 (= e!3037714 (and (inv!71618 (xs!17842 (left!40524 t!4677))) e!3037715))))

(assert (=> b!4858953 (= tp!1366768 (and (inv!71619 (left!40524 t!4677)) e!3037714))))

(assert (= (and b!4858953 ((_ is Node!14536) (left!40524 t!4677))) b!4859059))

(assert (= b!4859060 b!4859061))

(assert (= (and b!4858953 ((_ is Leaf!24219) (left!40524 t!4677))) b!4859060))

(declare-fun m!5857358 () Bool)

(assert (=> b!4859059 m!5857358))

(declare-fun m!5857360 () Bool)

(assert (=> b!4859059 m!5857360))

(declare-fun m!5857364 () Bool)

(assert (=> b!4859060 m!5857364))

(assert (=> b!4858953 m!5857274))

(declare-fun tp!1366784 () Bool)

(declare-fun tp!1366783 () Bool)

(declare-fun e!3037718 () Bool)

(declare-fun b!4859066 () Bool)

(assert (=> b!4859066 (= e!3037718 (and (inv!71619 (left!40524 (right!40854 t!4677))) tp!1366784 (inv!71619 (right!40854 (right!40854 t!4677))) tp!1366783))))

(declare-fun b!4859068 () Bool)

(declare-fun e!3037719 () Bool)

(declare-fun tp!1366782 () Bool)

(assert (=> b!4859068 (= e!3037719 tp!1366782)))

(declare-fun b!4859067 () Bool)

(assert (=> b!4859067 (= e!3037718 (and (inv!71618 (xs!17842 (right!40854 t!4677))) e!3037719))))

(assert (=> b!4858953 (= tp!1366769 (and (inv!71619 (right!40854 t!4677)) e!3037718))))

(assert (= (and b!4858953 ((_ is Node!14536) (right!40854 t!4677))) b!4859066))

(assert (= b!4859067 b!4859068))

(assert (= (and b!4858953 ((_ is Leaf!24219) (right!40854 t!4677))) b!4859067))

(declare-fun m!5857372 () Bool)

(assert (=> b!4859066 m!5857372))

(declare-fun m!5857374 () Bool)

(assert (=> b!4859066 m!5857374))

(declare-fun m!5857376 () Bool)

(assert (=> b!4859067 m!5857376))

(assert (=> b!4858953 m!5857276))

(check-sat (not b!4859067) tp_is_empty!35531 (not b!4858999) (not b!4859060) (not b!4859037) (not b!4858967) (not b!4858990) (not b!4859068) (not b!4859050) (not b!4858968) (not b!4858969) (not b!4859019) (not b!4858971) (not b!4859004) (not b!4858992) (not d!1559789) (not b!4859059) (not b!4858970) (not b!4859002) (not b!4858953) (not b!4859036) (not b!4858966) (not d!1559779) (not b!4859066) (not d!1559771) (not b!4859001) (not b!4859061))
(check-sat)
(get-model)

(declare-fun d!1559795 () Bool)

(declare-fun res!2074312 () Bool)

(declare-fun e!3037736 () Bool)

(assert (=> d!1559795 (=> res!2074312 e!3037736)))

(assert (=> d!1559795 (= res!2074312 (not ((_ is Node!14536) (right!40854 t!4677))))))

(assert (=> d!1559795 (= (isBalanced!3942 (right!40854 t!4677)) e!3037736)))

(declare-fun b!4859094 () Bool)

(declare-fun res!2074311 () Bool)

(declare-fun e!3037735 () Bool)

(assert (=> b!4859094 (=> (not res!2074311) (not e!3037735))))

(assert (=> b!4859094 (= res!2074311 (isBalanced!3942 (right!40854 (right!40854 t!4677))))))

(declare-fun b!4859095 () Bool)

(declare-fun res!2074313 () Bool)

(assert (=> b!4859095 (=> (not res!2074313) (not e!3037735))))

(assert (=> b!4859095 (= res!2074313 (<= (- (height!1914 (left!40524 (right!40854 t!4677))) (height!1914 (right!40854 (right!40854 t!4677)))) 1))))

(declare-fun b!4859096 () Bool)

(assert (=> b!4859096 (= e!3037735 (not (isEmpty!29843 (right!40854 (right!40854 t!4677)))))))

(declare-fun b!4859097 () Bool)

(declare-fun res!2074310 () Bool)

(assert (=> b!4859097 (=> (not res!2074310) (not e!3037735))))

(assert (=> b!4859097 (= res!2074310 (isBalanced!3942 (left!40524 (right!40854 t!4677))))))

(declare-fun b!4859098 () Bool)

(assert (=> b!4859098 (= e!3037736 e!3037735)))

(declare-fun res!2074309 () Bool)

(assert (=> b!4859098 (=> (not res!2074309) (not e!3037735))))

(assert (=> b!4859098 (= res!2074309 (<= (- 1) (- (height!1914 (left!40524 (right!40854 t!4677))) (height!1914 (right!40854 (right!40854 t!4677))))))))

(declare-fun b!4859099 () Bool)

(declare-fun res!2074308 () Bool)

(assert (=> b!4859099 (=> (not res!2074308) (not e!3037735))))

(assert (=> b!4859099 (= res!2074308 (not (isEmpty!29843 (left!40524 (right!40854 t!4677)))))))

(assert (= (and d!1559795 (not res!2074312)) b!4859098))

(assert (= (and b!4859098 res!2074309) b!4859095))

(assert (= (and b!4859095 res!2074313) b!4859097))

(assert (= (and b!4859097 res!2074310) b!4859094))

(assert (= (and b!4859094 res!2074311) b!4859099))

(assert (= (and b!4859099 res!2074308) b!4859096))

(declare-fun m!5857398 () Bool)

(assert (=> b!4859097 m!5857398))

(declare-fun m!5857400 () Bool)

(assert (=> b!4859096 m!5857400))

(declare-fun m!5857402 () Bool)

(assert (=> b!4859094 m!5857402))

(declare-fun m!5857404 () Bool)

(assert (=> b!4859095 m!5857404))

(declare-fun m!5857406 () Bool)

(assert (=> b!4859095 m!5857406))

(assert (=> b!4859098 m!5857404))

(assert (=> b!4859098 m!5857406))

(declare-fun m!5857408 () Bool)

(assert (=> b!4859099 m!5857408))

(assert (=> b!4858966 d!1559795))

(declare-fun d!1559797 () Bool)

(declare-fun res!2074318 () Bool)

(declare-fun e!3037739 () Bool)

(assert (=> d!1559797 (=> (not res!2074318) (not e!3037739))))

(assert (=> d!1559797 (= res!2074318 (<= (size!36744 (list!17433 (xs!17842 (left!40524 t!4677)))) 512))))

(assert (=> d!1559797 (= (inv!71621 (left!40524 t!4677)) e!3037739)))

(declare-fun b!4859104 () Bool)

(declare-fun res!2074319 () Bool)

(assert (=> b!4859104 (=> (not res!2074319) (not e!3037739))))

(assert (=> b!4859104 (= res!2074319 (= (csize!29303 (left!40524 t!4677)) (size!36744 (list!17433 (xs!17842 (left!40524 t!4677))))))))

(declare-fun b!4859105 () Bool)

(assert (=> b!4859105 (= e!3037739 (and (> (csize!29303 (left!40524 t!4677)) 0) (<= (csize!29303 (left!40524 t!4677)) 512)))))

(assert (= (and d!1559797 res!2074318) b!4859104))

(assert (= (and b!4859104 res!2074319) b!4859105))

(declare-fun m!5857410 () Bool)

(assert (=> d!1559797 m!5857410))

(assert (=> d!1559797 m!5857410))

(declare-fun m!5857412 () Bool)

(assert (=> d!1559797 m!5857412))

(assert (=> b!4859104 m!5857410))

(assert (=> b!4859104 m!5857410))

(assert (=> b!4859104 m!5857412))

(assert (=> b!4859001 d!1559797))

(declare-fun d!1559799 () Bool)

(declare-fun lt!1991932 () Bool)

(assert (=> d!1559799 (= lt!1991932 (isEmpty!29844 (list!17432 (right!40854 t!4677))))))

(assert (=> d!1559799 (= lt!1991932 (= (size!36742 (right!40854 t!4677)) 0))))

(assert (=> d!1559799 (= (isEmpty!29843 (right!40854 t!4677)) lt!1991932)))

(declare-fun bs!1173834 () Bool)

(assert (= bs!1173834 d!1559799))

(assert (=> bs!1173834 m!5857350))

(assert (=> bs!1173834 m!5857350))

(declare-fun m!5857414 () Bool)

(assert (=> bs!1173834 m!5857414))

(declare-fun m!5857416 () Bool)

(assert (=> bs!1173834 m!5857416))

(assert (=> b!4858968 d!1559799))

(declare-fun d!1559801 () Bool)

(declare-fun c!826650 () Bool)

(assert (=> d!1559801 (= c!826650 ((_ is Node!14536) (left!40524 (left!40524 t!4677))))))

(declare-fun e!3037740 () Bool)

(assert (=> d!1559801 (= (inv!71619 (left!40524 (left!40524 t!4677))) e!3037740)))

(declare-fun b!4859106 () Bool)

(assert (=> b!4859106 (= e!3037740 (inv!71620 (left!40524 (left!40524 t!4677))))))

(declare-fun b!4859107 () Bool)

(declare-fun e!3037741 () Bool)

(assert (=> b!4859107 (= e!3037740 e!3037741)))

(declare-fun res!2074320 () Bool)

(assert (=> b!4859107 (= res!2074320 (not ((_ is Leaf!24219) (left!40524 (left!40524 t!4677)))))))

(assert (=> b!4859107 (=> res!2074320 e!3037741)))

(declare-fun b!4859108 () Bool)

(assert (=> b!4859108 (= e!3037741 (inv!71621 (left!40524 (left!40524 t!4677))))))

(assert (= (and d!1559801 c!826650) b!4859106))

(assert (= (and d!1559801 (not c!826650)) b!4859107))

(assert (= (and b!4859107 (not res!2074320)) b!4859108))

(declare-fun m!5857418 () Bool)

(assert (=> b!4859106 m!5857418))

(declare-fun m!5857420 () Bool)

(assert (=> b!4859108 m!5857420))

(assert (=> b!4859059 d!1559801))

(declare-fun d!1559803 () Bool)

(declare-fun c!826651 () Bool)

(assert (=> d!1559803 (= c!826651 ((_ is Node!14536) (right!40854 (left!40524 t!4677))))))

(declare-fun e!3037742 () Bool)

(assert (=> d!1559803 (= (inv!71619 (right!40854 (left!40524 t!4677))) e!3037742)))

(declare-fun b!4859109 () Bool)

(assert (=> b!4859109 (= e!3037742 (inv!71620 (right!40854 (left!40524 t!4677))))))

(declare-fun b!4859110 () Bool)

(declare-fun e!3037743 () Bool)

(assert (=> b!4859110 (= e!3037742 e!3037743)))

(declare-fun res!2074321 () Bool)

(assert (=> b!4859110 (= res!2074321 (not ((_ is Leaf!24219) (right!40854 (left!40524 t!4677)))))))

(assert (=> b!4859110 (=> res!2074321 e!3037743)))

(declare-fun b!4859111 () Bool)

(assert (=> b!4859111 (= e!3037743 (inv!71621 (right!40854 (left!40524 t!4677))))))

(assert (= (and d!1559803 c!826651) b!4859109))

(assert (= (and d!1559803 (not c!826651)) b!4859110))

(assert (= (and b!4859110 (not res!2074321)) b!4859111))

(declare-fun m!5857422 () Bool)

(assert (=> b!4859109 m!5857422))

(declare-fun m!5857424 () Bool)

(assert (=> b!4859111 m!5857424))

(assert (=> b!4859059 d!1559803))

(declare-fun d!1559805 () Bool)

(assert (=> d!1559805 (= (height!1914 (left!40524 t!4677)) (ite ((_ is Empty!14536) (left!40524 t!4677)) 0 (ite ((_ is Leaf!24219) (left!40524 t!4677)) 1 (cheight!14747 (left!40524 t!4677)))))))

(assert (=> b!4858967 d!1559805))

(declare-fun d!1559807 () Bool)

(assert (=> d!1559807 (= (height!1914 (right!40854 t!4677)) (ite ((_ is Empty!14536) (right!40854 t!4677)) 0 (ite ((_ is Leaf!24219) (right!40854 t!4677)) 1 (cheight!14747 (right!40854 t!4677)))))))

(assert (=> b!4858967 d!1559807))

(declare-fun d!1559809 () Bool)

(declare-fun res!2074326 () Bool)

(declare-fun e!3037745 () Bool)

(assert (=> d!1559809 (=> res!2074326 e!3037745)))

(assert (=> d!1559809 (= res!2074326 (not ((_ is Node!14536) (left!40524 t!4677))))))

(assert (=> d!1559809 (= (isBalanced!3942 (left!40524 t!4677)) e!3037745)))

(declare-fun b!4859112 () Bool)

(declare-fun res!2074325 () Bool)

(declare-fun e!3037744 () Bool)

(assert (=> b!4859112 (=> (not res!2074325) (not e!3037744))))

(assert (=> b!4859112 (= res!2074325 (isBalanced!3942 (right!40854 (left!40524 t!4677))))))

(declare-fun b!4859113 () Bool)

(declare-fun res!2074327 () Bool)

(assert (=> b!4859113 (=> (not res!2074327) (not e!3037744))))

(assert (=> b!4859113 (= res!2074327 (<= (- (height!1914 (left!40524 (left!40524 t!4677))) (height!1914 (right!40854 (left!40524 t!4677)))) 1))))

(declare-fun b!4859114 () Bool)

(assert (=> b!4859114 (= e!3037744 (not (isEmpty!29843 (right!40854 (left!40524 t!4677)))))))

(declare-fun b!4859115 () Bool)

(declare-fun res!2074324 () Bool)

(assert (=> b!4859115 (=> (not res!2074324) (not e!3037744))))

(assert (=> b!4859115 (= res!2074324 (isBalanced!3942 (left!40524 (left!40524 t!4677))))))

(declare-fun b!4859116 () Bool)

(assert (=> b!4859116 (= e!3037745 e!3037744)))

(declare-fun res!2074323 () Bool)

(assert (=> b!4859116 (=> (not res!2074323) (not e!3037744))))

(assert (=> b!4859116 (= res!2074323 (<= (- 1) (- (height!1914 (left!40524 (left!40524 t!4677))) (height!1914 (right!40854 (left!40524 t!4677))))))))

(declare-fun b!4859117 () Bool)

(declare-fun res!2074322 () Bool)

(assert (=> b!4859117 (=> (not res!2074322) (not e!3037744))))

(assert (=> b!4859117 (= res!2074322 (not (isEmpty!29843 (left!40524 (left!40524 t!4677)))))))

(assert (= (and d!1559809 (not res!2074326)) b!4859116))

(assert (= (and b!4859116 res!2074323) b!4859113))

(assert (= (and b!4859113 res!2074327) b!4859115))

(assert (= (and b!4859115 res!2074324) b!4859112))

(assert (= (and b!4859112 res!2074325) b!4859117))

(assert (= (and b!4859117 res!2074322) b!4859114))

(declare-fun m!5857426 () Bool)

(assert (=> b!4859115 m!5857426))

(declare-fun m!5857428 () Bool)

(assert (=> b!4859114 m!5857428))

(declare-fun m!5857430 () Bool)

(assert (=> b!4859112 m!5857430))

(declare-fun m!5857432 () Bool)

(assert (=> b!4859113 m!5857432))

(declare-fun m!5857434 () Bool)

(assert (=> b!4859113 m!5857434))

(assert (=> b!4859116 m!5857432))

(assert (=> b!4859116 m!5857434))

(declare-fun m!5857436 () Bool)

(assert (=> b!4859117 m!5857436))

(assert (=> b!4858969 d!1559809))

(declare-fun d!1559811 () Bool)

(assert (=> d!1559811 (= (inv!71618 (xs!17842 (left!40524 t!4677))) (<= (size!36744 (innerList!14624 (xs!17842 (left!40524 t!4677)))) 2147483647))))

(declare-fun bs!1173835 () Bool)

(assert (= bs!1173835 d!1559811))

(declare-fun m!5857438 () Bool)

(assert (=> bs!1173835 m!5857438))

(assert (=> b!4859060 d!1559811))

(declare-fun d!1559813 () Bool)

(declare-fun res!2074334 () Bool)

(declare-fun e!3037748 () Bool)

(assert (=> d!1559813 (=> (not res!2074334) (not e!3037748))))

(assert (=> d!1559813 (= res!2074334 (= (csize!29302 (left!40524 t!4677)) (+ (size!36742 (left!40524 (left!40524 t!4677))) (size!36742 (right!40854 (left!40524 t!4677))))))))

(assert (=> d!1559813 (= (inv!71620 (left!40524 t!4677)) e!3037748)))

(declare-fun b!4859124 () Bool)

(declare-fun res!2074335 () Bool)

(assert (=> b!4859124 (=> (not res!2074335) (not e!3037748))))

(assert (=> b!4859124 (= res!2074335 (and (not (= (left!40524 (left!40524 t!4677)) Empty!14536)) (not (= (right!40854 (left!40524 t!4677)) Empty!14536))))))

(declare-fun b!4859125 () Bool)

(declare-fun res!2074336 () Bool)

(assert (=> b!4859125 (=> (not res!2074336) (not e!3037748))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4859125 (= res!2074336 (= (cheight!14747 (left!40524 t!4677)) (+ (max!0 (height!1914 (left!40524 (left!40524 t!4677))) (height!1914 (right!40854 (left!40524 t!4677)))) 1)))))

(declare-fun b!4859126 () Bool)

(assert (=> b!4859126 (= e!3037748 (<= 0 (cheight!14747 (left!40524 t!4677))))))

(assert (= (and d!1559813 res!2074334) b!4859124))

(assert (= (and b!4859124 res!2074335) b!4859125))

(assert (= (and b!4859125 res!2074336) b!4859126))

(declare-fun m!5857440 () Bool)

(assert (=> d!1559813 m!5857440))

(declare-fun m!5857442 () Bool)

(assert (=> d!1559813 m!5857442))

(assert (=> b!4859125 m!5857432))

(assert (=> b!4859125 m!5857434))

(assert (=> b!4859125 m!5857432))

(assert (=> b!4859125 m!5857434))

(declare-fun m!5857444 () Bool)

(assert (=> b!4859125 m!5857444))

(assert (=> b!4858999 d!1559813))

(declare-fun d!1559815 () Bool)

(declare-fun lt!1991935 () Int)

(assert (=> d!1559815 (>= lt!1991935 0)))

(declare-fun e!3037751 () Int)

(assert (=> d!1559815 (= lt!1991935 e!3037751)))

(declare-fun c!826654 () Bool)

(assert (=> d!1559815 (= c!826654 ((_ is Nil!55756) (innerList!14624 (xs!17842 t!4677))))))

(assert (=> d!1559815 (= (size!36744 (innerList!14624 (xs!17842 t!4677))) lt!1991935)))

(declare-fun b!4859131 () Bool)

(assert (=> b!4859131 (= e!3037751 0)))

(declare-fun b!4859132 () Bool)

(assert (=> b!4859132 (= e!3037751 (+ 1 (size!36744 (t!363490 (innerList!14624 (xs!17842 t!4677))))))))

(assert (= (and d!1559815 c!826654) b!4859131))

(assert (= (and d!1559815 (not c!826654)) b!4859132))

(declare-fun m!5857446 () Bool)

(assert (=> b!4859132 m!5857446))

(assert (=> d!1559789 d!1559815))

(declare-fun d!1559817 () Bool)

(declare-fun lt!1991938 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9940 (List!55880) (InoxSet T!98686))

(assert (=> d!1559817 (= lt!1991938 (select (content!9940 (list!17432 t!4677)) lt!1991927))))

(declare-fun e!3037757 () Bool)

(assert (=> d!1559817 (= lt!1991938 e!3037757)))

(declare-fun res!2074341 () Bool)

(assert (=> d!1559817 (=> (not res!2074341) (not e!3037757))))

(assert (=> d!1559817 (= res!2074341 ((_ is Cons!55756) (list!17432 t!4677)))))

(assert (=> d!1559817 (= (contains!19368 (list!17432 t!4677) lt!1991927) lt!1991938)))

(declare-fun b!4859137 () Bool)

(declare-fun e!3037756 () Bool)

(assert (=> b!4859137 (= e!3037757 e!3037756)))

(declare-fun res!2074342 () Bool)

(assert (=> b!4859137 (=> res!2074342 e!3037756)))

(assert (=> b!4859137 (= res!2074342 (= (h!62204 (list!17432 t!4677)) lt!1991927))))

(declare-fun b!4859138 () Bool)

(assert (=> b!4859138 (= e!3037756 (contains!19368 (t!363490 (list!17432 t!4677)) lt!1991927))))

(assert (= (and d!1559817 res!2074341) b!4859137))

(assert (= (and b!4859137 (not res!2074342)) b!4859138))

(assert (=> d!1559817 m!5857284))

(declare-fun m!5857448 () Bool)

(assert (=> d!1559817 m!5857448))

(declare-fun m!5857450 () Bool)

(assert (=> d!1559817 m!5857450))

(declare-fun m!5857452 () Bool)

(assert (=> b!4859138 m!5857452))

(assert (=> d!1559779 d!1559817))

(declare-fun d!1559819 () Bool)

(assert (=> d!1559819 (= (isEmpty!29844 (list!17432 t!4677)) ((_ is Nil!55756) (list!17432 t!4677)))))

(assert (=> d!1559779 d!1559819))

(declare-fun d!1559821 () Bool)

(declare-fun res!2074343 () Bool)

(declare-fun e!3037758 () Bool)

(assert (=> d!1559821 (=> (not res!2074343) (not e!3037758))))

(assert (=> d!1559821 (= res!2074343 (= (csize!29302 t!4677) (+ (size!36742 (left!40524 t!4677)) (size!36742 (right!40854 t!4677)))))))

(assert (=> d!1559821 (= (inv!71620 t!4677) e!3037758)))

(declare-fun b!4859139 () Bool)

(declare-fun res!2074344 () Bool)

(assert (=> b!4859139 (=> (not res!2074344) (not e!3037758))))

(assert (=> b!4859139 (= res!2074344 (and (not (= (left!40524 t!4677) Empty!14536)) (not (= (right!40854 t!4677) Empty!14536))))))

(declare-fun b!4859140 () Bool)

(declare-fun res!2074345 () Bool)

(assert (=> b!4859140 (=> (not res!2074345) (not e!3037758))))

(assert (=> b!4859140 (= res!2074345 (= (cheight!14747 t!4677) (+ (max!0 (height!1914 (left!40524 t!4677)) (height!1914 (right!40854 t!4677))) 1)))))

(declare-fun b!4859141 () Bool)

(assert (=> b!4859141 (= e!3037758 (<= 0 (cheight!14747 t!4677)))))

(assert (= (and d!1559821 res!2074343) b!4859139))

(assert (= (and b!4859139 res!2074344) b!4859140))

(assert (= (and b!4859140 res!2074345) b!4859141))

(declare-fun m!5857454 () Bool)

(assert (=> d!1559821 m!5857454))

(assert (=> d!1559821 m!5857416))

(assert (=> b!4859140 m!5857298))

(assert (=> b!4859140 m!5857300))

(assert (=> b!4859140 m!5857298))

(assert (=> b!4859140 m!5857300))

(declare-fun m!5857456 () Bool)

(assert (=> b!4859140 m!5857456))

(assert (=> b!4858990 d!1559821))

(declare-fun d!1559823 () Bool)

(declare-fun e!3037764 () Bool)

(assert (=> d!1559823 e!3037764))

(declare-fun res!2074351 () Bool)

(assert (=> d!1559823 (=> (not res!2074351) (not e!3037764))))

(declare-fun lt!1991941 () List!55880)

(assert (=> d!1559823 (= res!2074351 (= (content!9940 lt!1991941) ((_ map or) (content!9940 (list!17432 (left!40524 t!4677))) (content!9940 (list!17432 (right!40854 t!4677))))))))

(declare-fun e!3037763 () List!55880)

(assert (=> d!1559823 (= lt!1991941 e!3037763)))

(declare-fun c!826657 () Bool)

(assert (=> d!1559823 (= c!826657 ((_ is Nil!55756) (list!17432 (left!40524 t!4677))))))

(assert (=> d!1559823 (= (++!12140 (list!17432 (left!40524 t!4677)) (list!17432 (right!40854 t!4677))) lt!1991941)))

(declare-fun b!4859150 () Bool)

(assert (=> b!4859150 (= e!3037763 (list!17432 (right!40854 t!4677)))))

(declare-fun b!4859153 () Bool)

(assert (=> b!4859153 (= e!3037764 (or (not (= (list!17432 (right!40854 t!4677)) Nil!55756)) (= lt!1991941 (list!17432 (left!40524 t!4677)))))))

(declare-fun b!4859151 () Bool)

(assert (=> b!4859151 (= e!3037763 (Cons!55756 (h!62204 (list!17432 (left!40524 t!4677))) (++!12140 (t!363490 (list!17432 (left!40524 t!4677))) (list!17432 (right!40854 t!4677)))))))

(declare-fun b!4859152 () Bool)

(declare-fun res!2074350 () Bool)

(assert (=> b!4859152 (=> (not res!2074350) (not e!3037764))))

(assert (=> b!4859152 (= res!2074350 (= (size!36744 lt!1991941) (+ (size!36744 (list!17432 (left!40524 t!4677))) (size!36744 (list!17432 (right!40854 t!4677))))))))

(assert (= (and d!1559823 c!826657) b!4859150))

(assert (= (and d!1559823 (not c!826657)) b!4859151))

(assert (= (and d!1559823 res!2074351) b!4859152))

(assert (= (and b!4859152 res!2074350) b!4859153))

(declare-fun m!5857458 () Bool)

(assert (=> d!1559823 m!5857458))

(assert (=> d!1559823 m!5857348))

(declare-fun m!5857460 () Bool)

(assert (=> d!1559823 m!5857460))

(assert (=> d!1559823 m!5857350))

(declare-fun m!5857462 () Bool)

(assert (=> d!1559823 m!5857462))

(assert (=> b!4859151 m!5857350))

(declare-fun m!5857464 () Bool)

(assert (=> b!4859151 m!5857464))

(declare-fun m!5857466 () Bool)

(assert (=> b!4859152 m!5857466))

(assert (=> b!4859152 m!5857348))

(declare-fun m!5857468 () Bool)

(assert (=> b!4859152 m!5857468))

(assert (=> b!4859152 m!5857350))

(declare-fun m!5857470 () Bool)

(assert (=> b!4859152 m!5857470))

(assert (=> b!4859037 d!1559823))

(declare-fun b!4859155 () Bool)

(declare-fun e!3037765 () List!55880)

(declare-fun e!3037766 () List!55880)

(assert (=> b!4859155 (= e!3037765 e!3037766)))

(declare-fun c!826659 () Bool)

(assert (=> b!4859155 (= c!826659 ((_ is Leaf!24219) (left!40524 t!4677)))))

(declare-fun b!4859154 () Bool)

(assert (=> b!4859154 (= e!3037765 Nil!55756)))

(declare-fun d!1559825 () Bool)

(declare-fun c!826658 () Bool)

(assert (=> d!1559825 (= c!826658 ((_ is Empty!14536) (left!40524 t!4677)))))

(assert (=> d!1559825 (= (list!17432 (left!40524 t!4677)) e!3037765)))

(declare-fun b!4859157 () Bool)

(assert (=> b!4859157 (= e!3037766 (++!12140 (list!17432 (left!40524 (left!40524 t!4677))) (list!17432 (right!40854 (left!40524 t!4677)))))))

(declare-fun b!4859156 () Bool)

(assert (=> b!4859156 (= e!3037766 (list!17433 (xs!17842 (left!40524 t!4677))))))

(assert (= (and d!1559825 c!826658) b!4859154))

(assert (= (and d!1559825 (not c!826658)) b!4859155))

(assert (= (and b!4859155 c!826659) b!4859156))

(assert (= (and b!4859155 (not c!826659)) b!4859157))

(declare-fun m!5857472 () Bool)

(assert (=> b!4859157 m!5857472))

(declare-fun m!5857474 () Bool)

(assert (=> b!4859157 m!5857474))

(assert (=> b!4859157 m!5857472))

(assert (=> b!4859157 m!5857474))

(declare-fun m!5857476 () Bool)

(assert (=> b!4859157 m!5857476))

(assert (=> b!4859156 m!5857410))

(assert (=> b!4859037 d!1559825))

(declare-fun b!4859159 () Bool)

(declare-fun e!3037767 () List!55880)

(declare-fun e!3037768 () List!55880)

(assert (=> b!4859159 (= e!3037767 e!3037768)))

(declare-fun c!826661 () Bool)

(assert (=> b!4859159 (= c!826661 ((_ is Leaf!24219) (right!40854 t!4677)))))

(declare-fun b!4859158 () Bool)

(assert (=> b!4859158 (= e!3037767 Nil!55756)))

(declare-fun d!1559827 () Bool)

(declare-fun c!826660 () Bool)

(assert (=> d!1559827 (= c!826660 ((_ is Empty!14536) (right!40854 t!4677)))))

(assert (=> d!1559827 (= (list!17432 (right!40854 t!4677)) e!3037767)))

(declare-fun b!4859161 () Bool)

(assert (=> b!4859161 (= e!3037768 (++!12140 (list!17432 (left!40524 (right!40854 t!4677))) (list!17432 (right!40854 (right!40854 t!4677)))))))

(declare-fun b!4859160 () Bool)

(assert (=> b!4859160 (= e!3037768 (list!17433 (xs!17842 (right!40854 t!4677))))))

(assert (= (and d!1559827 c!826660) b!4859158))

(assert (= (and d!1559827 (not c!826660)) b!4859159))

(assert (= (and b!4859159 c!826661) b!4859160))

(assert (= (and b!4859159 (not c!826661)) b!4859161))

(declare-fun m!5857478 () Bool)

(assert (=> b!4859161 m!5857478))

(declare-fun m!5857480 () Bool)

(assert (=> b!4859161 m!5857480))

(assert (=> b!4859161 m!5857478))

(assert (=> b!4859161 m!5857480))

(declare-fun m!5857482 () Bool)

(assert (=> b!4859161 m!5857482))

(declare-fun m!5857484 () Bool)

(assert (=> b!4859160 m!5857484))

(assert (=> b!4859037 d!1559827))

(declare-fun d!1559829 () Bool)

(declare-fun res!2074352 () Bool)

(declare-fun e!3037769 () Bool)

(assert (=> d!1559829 (=> (not res!2074352) (not e!3037769))))

(assert (=> d!1559829 (= res!2074352 (= (csize!29302 (right!40854 t!4677)) (+ (size!36742 (left!40524 (right!40854 t!4677))) (size!36742 (right!40854 (right!40854 t!4677))))))))

(assert (=> d!1559829 (= (inv!71620 (right!40854 t!4677)) e!3037769)))

(declare-fun b!4859162 () Bool)

(declare-fun res!2074353 () Bool)

(assert (=> b!4859162 (=> (not res!2074353) (not e!3037769))))

(assert (=> b!4859162 (= res!2074353 (and (not (= (left!40524 (right!40854 t!4677)) Empty!14536)) (not (= (right!40854 (right!40854 t!4677)) Empty!14536))))))

(declare-fun b!4859163 () Bool)

(declare-fun res!2074354 () Bool)

(assert (=> b!4859163 (=> (not res!2074354) (not e!3037769))))

(assert (=> b!4859163 (= res!2074354 (= (cheight!14747 (right!40854 t!4677)) (+ (max!0 (height!1914 (left!40524 (right!40854 t!4677))) (height!1914 (right!40854 (right!40854 t!4677)))) 1)))))

(declare-fun b!4859164 () Bool)

(assert (=> b!4859164 (= e!3037769 (<= 0 (cheight!14747 (right!40854 t!4677))))))

(assert (= (and d!1559829 res!2074352) b!4859162))

(assert (= (and b!4859162 res!2074353) b!4859163))

(assert (= (and b!4859163 res!2074354) b!4859164))

(declare-fun m!5857486 () Bool)

(assert (=> d!1559829 m!5857486))

(declare-fun m!5857488 () Bool)

(assert (=> d!1559829 m!5857488))

(assert (=> b!4859163 m!5857404))

(assert (=> b!4859163 m!5857406))

(assert (=> b!4859163 m!5857404))

(assert (=> b!4859163 m!5857406))

(declare-fun m!5857490 () Bool)

(assert (=> b!4859163 m!5857490))

(assert (=> b!4859002 d!1559829))

(declare-fun d!1559831 () Bool)

(declare-fun res!2074355 () Bool)

(declare-fun e!3037770 () Bool)

(assert (=> d!1559831 (=> (not res!2074355) (not e!3037770))))

(assert (=> d!1559831 (= res!2074355 (<= (size!36744 (list!17433 (xs!17842 t!4677))) 512))))

(assert (=> d!1559831 (= (inv!71621 t!4677) e!3037770)))

(declare-fun b!4859165 () Bool)

(declare-fun res!2074356 () Bool)

(assert (=> b!4859165 (=> (not res!2074356) (not e!3037770))))

(assert (=> b!4859165 (= res!2074356 (= (csize!29303 t!4677) (size!36744 (list!17433 (xs!17842 t!4677)))))))

(declare-fun b!4859166 () Bool)

(assert (=> b!4859166 (= e!3037770 (and (> (csize!29303 t!4677) 0) (<= (csize!29303 t!4677) 512)))))

(assert (= (and d!1559831 res!2074355) b!4859165))

(assert (= (and b!4859165 res!2074356) b!4859166))

(assert (=> d!1559831 m!5857354))

(assert (=> d!1559831 m!5857354))

(declare-fun m!5857492 () Bool)

(assert (=> d!1559831 m!5857492))

(assert (=> b!4859165 m!5857354))

(assert (=> b!4859165 m!5857354))

(assert (=> b!4859165 m!5857492))

(assert (=> b!4858992 d!1559831))

(assert (=> b!4858953 d!1559775))

(assert (=> b!4858953 d!1559777))

(declare-fun d!1559833 () Bool)

(declare-fun res!2074357 () Bool)

(declare-fun e!3037771 () Bool)

(assert (=> d!1559833 (=> (not res!2074357) (not e!3037771))))

(assert (=> d!1559833 (= res!2074357 (<= (size!36744 (list!17433 (xs!17842 (right!40854 t!4677)))) 512))))

(assert (=> d!1559833 (= (inv!71621 (right!40854 t!4677)) e!3037771)))

(declare-fun b!4859167 () Bool)

(declare-fun res!2074358 () Bool)

(assert (=> b!4859167 (=> (not res!2074358) (not e!3037771))))

(assert (=> b!4859167 (= res!2074358 (= (csize!29303 (right!40854 t!4677)) (size!36744 (list!17433 (xs!17842 (right!40854 t!4677))))))))

(declare-fun b!4859168 () Bool)

(assert (=> b!4859168 (= e!3037771 (and (> (csize!29303 (right!40854 t!4677)) 0) (<= (csize!29303 (right!40854 t!4677)) 512)))))

(assert (= (and d!1559833 res!2074357) b!4859167))

(assert (= (and b!4859167 res!2074358) b!4859168))

(assert (=> d!1559833 m!5857484))

(assert (=> d!1559833 m!5857484))

(declare-fun m!5857494 () Bool)

(assert (=> d!1559833 m!5857494))

(assert (=> b!4859167 m!5857484))

(assert (=> b!4859167 m!5857484))

(assert (=> b!4859167 m!5857494))

(assert (=> b!4859004 d!1559833))

(assert (=> b!4858970 d!1559805))

(assert (=> b!4858970 d!1559807))

(declare-fun d!1559835 () Bool)

(declare-fun lt!1991942 () Bool)

(assert (=> d!1559835 (= lt!1991942 (isEmpty!29844 (list!17432 (left!40524 t!4677))))))

(assert (=> d!1559835 (= lt!1991942 (= (size!36742 (left!40524 t!4677)) 0))))

(assert (=> d!1559835 (= (isEmpty!29843 (left!40524 t!4677)) lt!1991942)))

(declare-fun bs!1173836 () Bool)

(assert (= bs!1173836 d!1559835))

(assert (=> bs!1173836 m!5857348))

(assert (=> bs!1173836 m!5857348))

(declare-fun m!5857496 () Bool)

(assert (=> bs!1173836 m!5857496))

(assert (=> bs!1173836 m!5857454))

(assert (=> b!4858971 d!1559835))

(declare-fun d!1559837 () Bool)

(assert (=> d!1559837 (= (inv!71618 (xs!17842 (right!40854 t!4677))) (<= (size!36744 (innerList!14624 (xs!17842 (right!40854 t!4677)))) 2147483647))))

(declare-fun bs!1173837 () Bool)

(assert (= bs!1173837 d!1559837))

(declare-fun m!5857498 () Bool)

(assert (=> bs!1173837 m!5857498))

(assert (=> b!4859067 d!1559837))

(declare-fun d!1559839 () Bool)

(declare-fun c!826662 () Bool)

(assert (=> d!1559839 (= c!826662 ((_ is Node!14536) (left!40524 (right!40854 t!4677))))))

(declare-fun e!3037772 () Bool)

(assert (=> d!1559839 (= (inv!71619 (left!40524 (right!40854 t!4677))) e!3037772)))

(declare-fun b!4859169 () Bool)

(assert (=> b!4859169 (= e!3037772 (inv!71620 (left!40524 (right!40854 t!4677))))))

(declare-fun b!4859170 () Bool)

(declare-fun e!3037773 () Bool)

(assert (=> b!4859170 (= e!3037772 e!3037773)))

(declare-fun res!2074359 () Bool)

(assert (=> b!4859170 (= res!2074359 (not ((_ is Leaf!24219) (left!40524 (right!40854 t!4677)))))))

(assert (=> b!4859170 (=> res!2074359 e!3037773)))

(declare-fun b!4859171 () Bool)

(assert (=> b!4859171 (= e!3037773 (inv!71621 (left!40524 (right!40854 t!4677))))))

(assert (= (and d!1559839 c!826662) b!4859169))

(assert (= (and d!1559839 (not c!826662)) b!4859170))

(assert (= (and b!4859170 (not res!2074359)) b!4859171))

(declare-fun m!5857500 () Bool)

(assert (=> b!4859169 m!5857500))

(declare-fun m!5857502 () Bool)

(assert (=> b!4859171 m!5857502))

(assert (=> b!4859066 d!1559839))

(declare-fun d!1559841 () Bool)

(declare-fun c!826663 () Bool)

(assert (=> d!1559841 (= c!826663 ((_ is Node!14536) (right!40854 (right!40854 t!4677))))))

(declare-fun e!3037774 () Bool)

(assert (=> d!1559841 (= (inv!71619 (right!40854 (right!40854 t!4677))) e!3037774)))

(declare-fun b!4859172 () Bool)

(assert (=> b!4859172 (= e!3037774 (inv!71620 (right!40854 (right!40854 t!4677))))))

(declare-fun b!4859173 () Bool)

(declare-fun e!3037775 () Bool)

(assert (=> b!4859173 (= e!3037774 e!3037775)))

(declare-fun res!2074360 () Bool)

(assert (=> b!4859173 (= res!2074360 (not ((_ is Leaf!24219) (right!40854 (right!40854 t!4677)))))))

(assert (=> b!4859173 (=> res!2074360 e!3037775)))

(declare-fun b!4859174 () Bool)

(assert (=> b!4859174 (= e!3037775 (inv!71621 (right!40854 (right!40854 t!4677))))))

(assert (= (and d!1559841 c!826663) b!4859172))

(assert (= (and d!1559841 (not c!826663)) b!4859173))

(assert (= (and b!4859173 (not res!2074360)) b!4859174))

(declare-fun m!5857504 () Bool)

(assert (=> b!4859172 m!5857504))

(declare-fun m!5857506 () Bool)

(assert (=> b!4859174 m!5857506))

(assert (=> b!4859066 d!1559841))

(assert (=> d!1559771 d!1559819))

(assert (=> d!1559771 d!1559783))

(declare-fun d!1559843 () Bool)

(declare-fun lt!1991945 () Int)

(assert (=> d!1559843 (= lt!1991945 (size!36744 (list!17432 t!4677)))))

(assert (=> d!1559843 (= lt!1991945 (ite ((_ is Empty!14536) t!4677) 0 (ite ((_ is Leaf!24219) t!4677) (csize!29303 t!4677) (csize!29302 t!4677))))))

(assert (=> d!1559843 (= (size!36742 t!4677) lt!1991945)))

(declare-fun bs!1173838 () Bool)

(assert (= bs!1173838 d!1559843))

(assert (=> bs!1173838 m!5857284))

(assert (=> bs!1173838 m!5857284))

(declare-fun m!5857508 () Bool)

(assert (=> bs!1173838 m!5857508))

(assert (=> d!1559771 d!1559843))

(declare-fun d!1559847 () Bool)

(assert (=> d!1559847 (= (list!17433 (xs!17842 t!4677)) (innerList!14624 (xs!17842 t!4677)))))

(assert (=> b!4859036 d!1559847))

(declare-fun d!1559849 () Bool)

(declare-fun lt!1991946 () T!98686)

(assert (=> d!1559849 (contains!19368 (t!363490 (list!17432 t!4677)) lt!1991946)))

(declare-fun e!3037776 () T!98686)

(assert (=> d!1559849 (= lt!1991946 e!3037776)))

(declare-fun c!826664 () Bool)

(assert (=> d!1559849 (= c!826664 (and ((_ is Cons!55756) (t!363490 (list!17432 t!4677))) ((_ is Nil!55756) (t!363490 (t!363490 (list!17432 t!4677))))))))

(assert (=> d!1559849 (not (isEmpty!29844 (t!363490 (list!17432 t!4677))))))

(assert (=> d!1559849 (= (last!410 (t!363490 (list!17432 t!4677))) lt!1991946)))

(declare-fun b!4859175 () Bool)

(assert (=> b!4859175 (= e!3037776 (h!62204 (t!363490 (list!17432 t!4677))))))

(declare-fun b!4859176 () Bool)

(assert (=> b!4859176 (= e!3037776 (last!410 (t!363490 (t!363490 (list!17432 t!4677)))))))

(assert (= (and d!1559849 c!826664) b!4859175))

(assert (= (and d!1559849 (not c!826664)) b!4859176))

(declare-fun m!5857510 () Bool)

(assert (=> d!1559849 m!5857510))

(declare-fun m!5857512 () Bool)

(assert (=> d!1559849 m!5857512))

(declare-fun m!5857514 () Bool)

(assert (=> b!4859176 m!5857514))

(assert (=> b!4859019 d!1559849))

(declare-fun b!4859177 () Bool)

(declare-fun e!3037777 () Bool)

(declare-fun tp!1366800 () Bool)

(assert (=> b!4859177 (= e!3037777 (and tp_is_empty!35531 tp!1366800))))

(assert (=> b!4859061 (= tp!1366779 e!3037777)))

(assert (= (and b!4859061 ((_ is Cons!55756) (innerList!14624 (xs!17842 (left!40524 t!4677))))) b!4859177))

(declare-fun b!4859178 () Bool)

(declare-fun e!3037778 () Bool)

(declare-fun tp!1366801 () Bool)

(assert (=> b!4859178 (= e!3037778 (and tp_is_empty!35531 tp!1366801))))

(assert (=> b!4859050 (= tp!1366772 e!3037778)))

(assert (= (and b!4859050 ((_ is Cons!55756) (t!363490 (innerList!14624 (xs!17842 t!4677))))) b!4859178))

(declare-fun tp!1366804 () Bool)

(declare-fun e!3037779 () Bool)

(declare-fun b!4859179 () Bool)

(declare-fun tp!1366803 () Bool)

(assert (=> b!4859179 (= e!3037779 (and (inv!71619 (left!40524 (left!40524 (left!40524 t!4677)))) tp!1366804 (inv!71619 (right!40854 (left!40524 (left!40524 t!4677)))) tp!1366803))))

(declare-fun b!4859181 () Bool)

(declare-fun e!3037780 () Bool)

(declare-fun tp!1366802 () Bool)

(assert (=> b!4859181 (= e!3037780 tp!1366802)))

(declare-fun b!4859180 () Bool)

(assert (=> b!4859180 (= e!3037779 (and (inv!71618 (xs!17842 (left!40524 (left!40524 t!4677)))) e!3037780))))

(assert (=> b!4859059 (= tp!1366781 (and (inv!71619 (left!40524 (left!40524 t!4677))) e!3037779))))

(assert (= (and b!4859059 ((_ is Node!14536) (left!40524 (left!40524 t!4677)))) b!4859179))

(assert (= b!4859180 b!4859181))

(assert (= (and b!4859059 ((_ is Leaf!24219) (left!40524 (left!40524 t!4677)))) b!4859180))

(declare-fun m!5857516 () Bool)

(assert (=> b!4859179 m!5857516))

(declare-fun m!5857518 () Bool)

(assert (=> b!4859179 m!5857518))

(declare-fun m!5857520 () Bool)

(assert (=> b!4859180 m!5857520))

(assert (=> b!4859059 m!5857358))

(declare-fun e!3037781 () Bool)

(declare-fun b!4859182 () Bool)

(declare-fun tp!1366807 () Bool)

(declare-fun tp!1366806 () Bool)

(assert (=> b!4859182 (= e!3037781 (and (inv!71619 (left!40524 (right!40854 (left!40524 t!4677)))) tp!1366807 (inv!71619 (right!40854 (right!40854 (left!40524 t!4677)))) tp!1366806))))

(declare-fun b!4859184 () Bool)

(declare-fun e!3037782 () Bool)

(declare-fun tp!1366805 () Bool)

(assert (=> b!4859184 (= e!3037782 tp!1366805)))

(declare-fun b!4859183 () Bool)

(assert (=> b!4859183 (= e!3037781 (and (inv!71618 (xs!17842 (right!40854 (left!40524 t!4677)))) e!3037782))))

(assert (=> b!4859059 (= tp!1366780 (and (inv!71619 (right!40854 (left!40524 t!4677))) e!3037781))))

(assert (= (and b!4859059 ((_ is Node!14536) (right!40854 (left!40524 t!4677)))) b!4859182))

(assert (= b!4859183 b!4859184))

(assert (= (and b!4859059 ((_ is Leaf!24219) (right!40854 (left!40524 t!4677)))) b!4859183))

(declare-fun m!5857522 () Bool)

(assert (=> b!4859182 m!5857522))

(declare-fun m!5857524 () Bool)

(assert (=> b!4859182 m!5857524))

(declare-fun m!5857526 () Bool)

(assert (=> b!4859183 m!5857526))

(assert (=> b!4859059 m!5857360))

(declare-fun tp!1366810 () Bool)

(declare-fun e!3037783 () Bool)

(declare-fun tp!1366809 () Bool)

(declare-fun b!4859185 () Bool)

(assert (=> b!4859185 (= e!3037783 (and (inv!71619 (left!40524 (left!40524 (right!40854 t!4677)))) tp!1366810 (inv!71619 (right!40854 (left!40524 (right!40854 t!4677)))) tp!1366809))))

(declare-fun b!4859187 () Bool)

(declare-fun e!3037784 () Bool)

(declare-fun tp!1366808 () Bool)

(assert (=> b!4859187 (= e!3037784 tp!1366808)))

(declare-fun b!4859186 () Bool)

(assert (=> b!4859186 (= e!3037783 (and (inv!71618 (xs!17842 (left!40524 (right!40854 t!4677)))) e!3037784))))

(assert (=> b!4859066 (= tp!1366784 (and (inv!71619 (left!40524 (right!40854 t!4677))) e!3037783))))

(assert (= (and b!4859066 ((_ is Node!14536) (left!40524 (right!40854 t!4677)))) b!4859185))

(assert (= b!4859186 b!4859187))

(assert (= (and b!4859066 ((_ is Leaf!24219) (left!40524 (right!40854 t!4677)))) b!4859186))

(declare-fun m!5857528 () Bool)

(assert (=> b!4859185 m!5857528))

(declare-fun m!5857530 () Bool)

(assert (=> b!4859185 m!5857530))

(declare-fun m!5857532 () Bool)

(assert (=> b!4859186 m!5857532))

(assert (=> b!4859066 m!5857372))

(declare-fun e!3037785 () Bool)

(declare-fun tp!1366812 () Bool)

(declare-fun b!4859188 () Bool)

(declare-fun tp!1366813 () Bool)

(assert (=> b!4859188 (= e!3037785 (and (inv!71619 (left!40524 (right!40854 (right!40854 t!4677)))) tp!1366813 (inv!71619 (right!40854 (right!40854 (right!40854 t!4677)))) tp!1366812))))

(declare-fun b!4859190 () Bool)

(declare-fun e!3037786 () Bool)

(declare-fun tp!1366811 () Bool)

(assert (=> b!4859190 (= e!3037786 tp!1366811)))

(declare-fun b!4859189 () Bool)

(assert (=> b!4859189 (= e!3037785 (and (inv!71618 (xs!17842 (right!40854 (right!40854 t!4677)))) e!3037786))))

(assert (=> b!4859066 (= tp!1366783 (and (inv!71619 (right!40854 (right!40854 t!4677))) e!3037785))))

(assert (= (and b!4859066 ((_ is Node!14536) (right!40854 (right!40854 t!4677)))) b!4859188))

(assert (= b!4859189 b!4859190))

(assert (= (and b!4859066 ((_ is Leaf!24219) (right!40854 (right!40854 t!4677)))) b!4859189))

(declare-fun m!5857534 () Bool)

(assert (=> b!4859188 m!5857534))

(declare-fun m!5857536 () Bool)

(assert (=> b!4859188 m!5857536))

(declare-fun m!5857538 () Bool)

(assert (=> b!4859189 m!5857538))

(assert (=> b!4859066 m!5857374))

(declare-fun b!4859191 () Bool)

(declare-fun e!3037787 () Bool)

(declare-fun tp!1366814 () Bool)

(assert (=> b!4859191 (= e!3037787 (and tp_is_empty!35531 tp!1366814))))

(assert (=> b!4859068 (= tp!1366782 e!3037787)))

(assert (= (and b!4859068 ((_ is Cons!55756) (innerList!14624 (xs!17842 (right!40854 t!4677))))) b!4859191))

(check-sat (not d!1559823) (not b!4859160) (not b!4859190) (not d!1559835) (not d!1559797) (not b!4859113) (not b!4859176) (not b!4859184) (not b!4859106) (not b!4859104) (not b!4859186) (not b!4859114) (not b!4859171) (not d!1559831) (not b!4859165) (not b!4859152) (not b!4859138) tp_is_empty!35531 (not b!4859187) (not b!4859183) (not b!4859157) (not d!1559811) (not b!4859108) (not b!4859125) (not b!4859185) (not b!4859178) (not b!4859112) (not d!1559849) (not b!4859179) (not b!4859151) (not b!4859161) (not b!4859189) (not b!4859095) (not b!4859059) (not d!1559829) (not b!4859163) (not b!4859191) (not b!4859169) (not b!4859096) (not b!4859094) (not b!4859097) (not b!4859180) (not b!4859098) (not b!4859167) (not d!1559837) (not d!1559799) (not b!4859188) (not d!1559821) (not b!4859111) (not b!4859156) (not b!4859140) (not b!4859172) (not d!1559843) (not d!1559817) (not b!4859115) (not b!4859109) (not b!4859066) (not b!4859182) (not b!4859099) (not b!4859174) (not d!1559813) (not b!4859116) (not d!1559833) (not b!4859177) (not b!4859181) (not b!4859117) (not b!4859132))
(check-sat)
