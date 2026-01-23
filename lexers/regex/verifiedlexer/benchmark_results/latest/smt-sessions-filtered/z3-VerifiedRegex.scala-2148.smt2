; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107436 () Bool)

(assert start!107436)

(declare-fun b!1205944 () Bool)

(declare-fun e!773674 () Bool)

(declare-fun lt!412320 () Int)

(declare-datatypes ((T!22286 0))(
  ( (T!22287 (val!3960 Int)) )
))
(declare-datatypes ((List!12139 0))(
  ( (Nil!12115) (Cons!12115 (h!17516 T!22286) (t!112555 List!12139)) )
))
(declare-fun l!2744 () List!12139)

(declare-fun ListPrimitiveSize!86 (List!12139) Int)

(assert (=> b!1205944 (= e!773674 (>= lt!412320 (ListPrimitiveSize!86 l!2744)))))

(declare-fun lt!412322 () Int)

(declare-fun r!2028 () List!12139)

(assert (=> b!1205944 (= lt!412322 (ListPrimitiveSize!86 r!2028))))

(declare-fun lt!412318 () List!12139)

(assert (=> b!1205944 (= lt!412320 (ListPrimitiveSize!86 lt!412318))))

(declare-fun b!1205945 () Bool)

(declare-fun e!773672 () Bool)

(declare-fun tp_is_empty!6123 () Bool)

(declare-fun tp!342033 () Bool)

(assert (=> b!1205945 (= e!773672 (and tp_is_empty!6123 tp!342033))))

(declare-fun res!542983 () Bool)

(declare-fun e!773673 () Bool)

(assert (=> start!107436 (=> (not res!542983) (not e!773673))))

(declare-fun from!613 () Int)

(declare-fun until!61 () Int)

(assert (=> start!107436 (= res!542983 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107436 e!773673))

(assert (=> start!107436 true))

(assert (=> start!107436 e!773672))

(declare-fun e!773670 () Bool)

(assert (=> start!107436 e!773670))

(declare-fun b!1205946 () Bool)

(declare-fun res!542981 () Bool)

(assert (=> b!1205946 (=> (not res!542981) (not e!773674))))

(assert (=> b!1205946 (= res!542981 (and (= from!613 0) (<= 0 (- until!61 1))))))

(declare-fun b!1205947 () Bool)

(declare-fun tp!342032 () Bool)

(assert (=> b!1205947 (= e!773670 (and tp_is_empty!6123 tp!342032))))

(declare-fun b!1205948 () Bool)

(declare-fun e!773671 () Bool)

(assert (=> b!1205948 (= e!773671 e!773674)))

(declare-fun res!542984 () Bool)

(assert (=> b!1205948 (=> (not res!542984) (not e!773674))))

(declare-fun tail!1736 (List!12139) List!12139)

(declare-fun ++!3137 (List!12139 List!12139) List!12139)

(assert (=> b!1205948 (= res!542984 (= (tail!1736 (++!3137 l!2744 r!2028)) (++!3137 lt!412318 r!2028)))))

(assert (=> b!1205948 (= lt!412318 (tail!1736 l!2744))))

(declare-fun b!1205949 () Bool)

(assert (=> b!1205949 (= e!773673 e!773671)))

(declare-fun res!542982 () Bool)

(assert (=> b!1205949 (=> (not res!542982) (not e!773671))))

(declare-fun lt!412321 () Int)

(declare-fun lt!412319 () Int)

(assert (=> b!1205949 (= res!542982 (and (<= until!61 (+ lt!412319 lt!412321)) (not (= l!2744 Nil!12115)) (not (= r!2028 Nil!12115)) (not (= until!61 0))))))

(declare-fun size!9655 (List!12139) Int)

(assert (=> b!1205949 (= lt!412321 (size!9655 r!2028))))

(assert (=> b!1205949 (= lt!412319 (size!9655 l!2744))))

(declare-fun b!1205950 () Bool)

(declare-fun res!542980 () Bool)

(assert (=> b!1205950 (=> (not res!542980) (not e!773674))))

(assert (=> b!1205950 (= res!542980 (<= (- until!61 1) (+ (size!9655 lt!412318) lt!412321)))))

(assert (= (and start!107436 res!542983) b!1205949))

(assert (= (and b!1205949 res!542982) b!1205948))

(assert (= (and b!1205948 res!542984) b!1205946))

(assert (= (and b!1205946 res!542981) b!1205950))

(assert (= (and b!1205950 res!542980) b!1205944))

(get-info :version)

(assert (= (and start!107436 ((_ is Cons!12115) l!2744)) b!1205945))

(assert (= (and start!107436 ((_ is Cons!12115) r!2028)) b!1205947))

(declare-fun m!1381109 () Bool)

(assert (=> b!1205944 m!1381109))

(declare-fun m!1381111 () Bool)

(assert (=> b!1205944 m!1381111))

(declare-fun m!1381113 () Bool)

(assert (=> b!1205944 m!1381113))

(declare-fun m!1381115 () Bool)

(assert (=> b!1205948 m!1381115))

(assert (=> b!1205948 m!1381115))

(declare-fun m!1381117 () Bool)

(assert (=> b!1205948 m!1381117))

(declare-fun m!1381119 () Bool)

(assert (=> b!1205948 m!1381119))

(declare-fun m!1381121 () Bool)

(assert (=> b!1205948 m!1381121))

(declare-fun m!1381123 () Bool)

(assert (=> b!1205949 m!1381123))

(declare-fun m!1381125 () Bool)

(assert (=> b!1205949 m!1381125))

(declare-fun m!1381127 () Bool)

(assert (=> b!1205950 m!1381127))

(check-sat (not b!1205949) tp_is_empty!6123 (not b!1205950) (not b!1205948) (not b!1205945) (not b!1205944) (not b!1205947))
(check-sat)
(get-model)

(declare-fun d!344595 () Bool)

(declare-fun lt!412325 () Int)

(assert (=> d!344595 (>= lt!412325 0)))

(declare-fun e!773677 () Int)

(assert (=> d!344595 (= lt!412325 e!773677)))

(declare-fun c!201449 () Bool)

(assert (=> d!344595 (= c!201449 ((_ is Nil!12115) l!2744))))

(assert (=> d!344595 (= (ListPrimitiveSize!86 l!2744) lt!412325)))

(declare-fun b!1205955 () Bool)

(assert (=> b!1205955 (= e!773677 0)))

(declare-fun b!1205956 () Bool)

(assert (=> b!1205956 (= e!773677 (+ 1 (ListPrimitiveSize!86 (t!112555 l!2744))))))

(assert (= (and d!344595 c!201449) b!1205955))

(assert (= (and d!344595 (not c!201449)) b!1205956))

(declare-fun m!1381129 () Bool)

(assert (=> b!1205956 m!1381129))

(assert (=> b!1205944 d!344595))

(declare-fun d!344597 () Bool)

(declare-fun lt!412326 () Int)

(assert (=> d!344597 (>= lt!412326 0)))

(declare-fun e!773678 () Int)

(assert (=> d!344597 (= lt!412326 e!773678)))

(declare-fun c!201450 () Bool)

(assert (=> d!344597 (= c!201450 ((_ is Nil!12115) r!2028))))

(assert (=> d!344597 (= (ListPrimitiveSize!86 r!2028) lt!412326)))

(declare-fun b!1205957 () Bool)

(assert (=> b!1205957 (= e!773678 0)))

(declare-fun b!1205958 () Bool)

(assert (=> b!1205958 (= e!773678 (+ 1 (ListPrimitiveSize!86 (t!112555 r!2028))))))

(assert (= (and d!344597 c!201450) b!1205957))

(assert (= (and d!344597 (not c!201450)) b!1205958))

(declare-fun m!1381131 () Bool)

(assert (=> b!1205958 m!1381131))

(assert (=> b!1205944 d!344597))

(declare-fun d!344599 () Bool)

(declare-fun lt!412327 () Int)

(assert (=> d!344599 (>= lt!412327 0)))

(declare-fun e!773679 () Int)

(assert (=> d!344599 (= lt!412327 e!773679)))

(declare-fun c!201451 () Bool)

(assert (=> d!344599 (= c!201451 ((_ is Nil!12115) lt!412318))))

(assert (=> d!344599 (= (ListPrimitiveSize!86 lt!412318) lt!412327)))

(declare-fun b!1205959 () Bool)

(assert (=> b!1205959 (= e!773679 0)))

(declare-fun b!1205960 () Bool)

(assert (=> b!1205960 (= e!773679 (+ 1 (ListPrimitiveSize!86 (t!112555 lt!412318))))))

(assert (= (and d!344599 c!201451) b!1205959))

(assert (= (and d!344599 (not c!201451)) b!1205960))

(declare-fun m!1381133 () Bool)

(assert (=> b!1205960 m!1381133))

(assert (=> b!1205944 d!344599))

(declare-fun d!344601 () Bool)

(declare-fun lt!412330 () Int)

(assert (=> d!344601 (>= lt!412330 0)))

(declare-fun e!773682 () Int)

(assert (=> d!344601 (= lt!412330 e!773682)))

(declare-fun c!201454 () Bool)

(assert (=> d!344601 (= c!201454 ((_ is Nil!12115) r!2028))))

(assert (=> d!344601 (= (size!9655 r!2028) lt!412330)))

(declare-fun b!1205965 () Bool)

(assert (=> b!1205965 (= e!773682 0)))

(declare-fun b!1205966 () Bool)

(assert (=> b!1205966 (= e!773682 (+ 1 (size!9655 (t!112555 r!2028))))))

(assert (= (and d!344601 c!201454) b!1205965))

(assert (= (and d!344601 (not c!201454)) b!1205966))

(declare-fun m!1381135 () Bool)

(assert (=> b!1205966 m!1381135))

(assert (=> b!1205949 d!344601))

(declare-fun d!344603 () Bool)

(declare-fun lt!412331 () Int)

(assert (=> d!344603 (>= lt!412331 0)))

(declare-fun e!773683 () Int)

(assert (=> d!344603 (= lt!412331 e!773683)))

(declare-fun c!201455 () Bool)

(assert (=> d!344603 (= c!201455 ((_ is Nil!12115) l!2744))))

(assert (=> d!344603 (= (size!9655 l!2744) lt!412331)))

(declare-fun b!1205967 () Bool)

(assert (=> b!1205967 (= e!773683 0)))

(declare-fun b!1205968 () Bool)

(assert (=> b!1205968 (= e!773683 (+ 1 (size!9655 (t!112555 l!2744))))))

(assert (= (and d!344603 c!201455) b!1205967))

(assert (= (and d!344603 (not c!201455)) b!1205968))

(declare-fun m!1381137 () Bool)

(assert (=> b!1205968 m!1381137))

(assert (=> b!1205949 d!344603))

(declare-fun d!344605 () Bool)

(declare-fun lt!412332 () Int)

(assert (=> d!344605 (>= lt!412332 0)))

(declare-fun e!773684 () Int)

(assert (=> d!344605 (= lt!412332 e!773684)))

(declare-fun c!201456 () Bool)

(assert (=> d!344605 (= c!201456 ((_ is Nil!12115) lt!412318))))

(assert (=> d!344605 (= (size!9655 lt!412318) lt!412332)))

(declare-fun b!1205969 () Bool)

(assert (=> b!1205969 (= e!773684 0)))

(declare-fun b!1205970 () Bool)

(assert (=> b!1205970 (= e!773684 (+ 1 (size!9655 (t!112555 lt!412318))))))

(assert (= (and d!344605 c!201456) b!1205969))

(assert (= (and d!344605 (not c!201456)) b!1205970))

(declare-fun m!1381139 () Bool)

(assert (=> b!1205970 m!1381139))

(assert (=> b!1205950 d!344605))

(declare-fun d!344607 () Bool)

(assert (=> d!344607 (= (tail!1736 (++!3137 l!2744 r!2028)) (t!112555 (++!3137 l!2744 r!2028)))))

(assert (=> b!1205948 d!344607))

(declare-fun b!1205999 () Bool)

(declare-fun e!773699 () List!12139)

(assert (=> b!1205999 (= e!773699 r!2028)))

(declare-fun b!1206002 () Bool)

(declare-fun e!773700 () Bool)

(declare-fun lt!412345 () List!12139)

(assert (=> b!1206002 (= e!773700 (or (not (= r!2028 Nil!12115)) (= lt!412345 l!2744)))))

(declare-fun b!1206000 () Bool)

(assert (=> b!1206000 (= e!773699 (Cons!12115 (h!17516 l!2744) (++!3137 (t!112555 l!2744) r!2028)))))

(declare-fun d!344611 () Bool)

(assert (=> d!344611 e!773700))

(declare-fun res!542990 () Bool)

(assert (=> d!344611 (=> (not res!542990) (not e!773700))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1713 (List!12139) (InoxSet T!22286))

(assert (=> d!344611 (= res!542990 (= (content!1713 lt!412345) ((_ map or) (content!1713 l!2744) (content!1713 r!2028))))))

(assert (=> d!344611 (= lt!412345 e!773699)))

(declare-fun c!201469 () Bool)

(assert (=> d!344611 (= c!201469 ((_ is Nil!12115) l!2744))))

(assert (=> d!344611 (= (++!3137 l!2744 r!2028) lt!412345)))

(declare-fun b!1206001 () Bool)

(declare-fun res!542989 () Bool)

(assert (=> b!1206001 (=> (not res!542989) (not e!773700))))

(assert (=> b!1206001 (= res!542989 (= (size!9655 lt!412345) (+ (size!9655 l!2744) (size!9655 r!2028))))))

(assert (= (and d!344611 c!201469) b!1205999))

(assert (= (and d!344611 (not c!201469)) b!1206000))

(assert (= (and d!344611 res!542990) b!1206001))

(assert (= (and b!1206001 res!542989) b!1206002))

(declare-fun m!1381153 () Bool)

(assert (=> b!1206000 m!1381153))

(declare-fun m!1381155 () Bool)

(assert (=> d!344611 m!1381155))

(declare-fun m!1381157 () Bool)

(assert (=> d!344611 m!1381157))

(declare-fun m!1381159 () Bool)

(assert (=> d!344611 m!1381159))

(declare-fun m!1381161 () Bool)

(assert (=> b!1206001 m!1381161))

(assert (=> b!1206001 m!1381125))

(assert (=> b!1206001 m!1381123))

(assert (=> b!1205948 d!344611))

(declare-fun b!1206003 () Bool)

(declare-fun e!773701 () List!12139)

(assert (=> b!1206003 (= e!773701 r!2028)))

(declare-fun lt!412346 () List!12139)

(declare-fun b!1206006 () Bool)

(declare-fun e!773702 () Bool)

(assert (=> b!1206006 (= e!773702 (or (not (= r!2028 Nil!12115)) (= lt!412346 lt!412318)))))

(declare-fun b!1206004 () Bool)

(assert (=> b!1206004 (= e!773701 (Cons!12115 (h!17516 lt!412318) (++!3137 (t!112555 lt!412318) r!2028)))))

(declare-fun d!344627 () Bool)

(assert (=> d!344627 e!773702))

(declare-fun res!542992 () Bool)

(assert (=> d!344627 (=> (not res!542992) (not e!773702))))

(assert (=> d!344627 (= res!542992 (= (content!1713 lt!412346) ((_ map or) (content!1713 lt!412318) (content!1713 r!2028))))))

(assert (=> d!344627 (= lt!412346 e!773701)))

(declare-fun c!201470 () Bool)

(assert (=> d!344627 (= c!201470 ((_ is Nil!12115) lt!412318))))

(assert (=> d!344627 (= (++!3137 lt!412318 r!2028) lt!412346)))

(declare-fun b!1206005 () Bool)

(declare-fun res!542991 () Bool)

(assert (=> b!1206005 (=> (not res!542991) (not e!773702))))

(assert (=> b!1206005 (= res!542991 (= (size!9655 lt!412346) (+ (size!9655 lt!412318) (size!9655 r!2028))))))

(assert (= (and d!344627 c!201470) b!1206003))

(assert (= (and d!344627 (not c!201470)) b!1206004))

(assert (= (and d!344627 res!542992) b!1206005))

(assert (= (and b!1206005 res!542991) b!1206006))

(declare-fun m!1381163 () Bool)

(assert (=> b!1206004 m!1381163))

(declare-fun m!1381165 () Bool)

(assert (=> d!344627 m!1381165))

(declare-fun m!1381167 () Bool)

(assert (=> d!344627 m!1381167))

(assert (=> d!344627 m!1381159))

(declare-fun m!1381169 () Bool)

(assert (=> b!1206005 m!1381169))

(assert (=> b!1206005 m!1381127))

(assert (=> b!1206005 m!1381123))

(assert (=> b!1205948 d!344627))

(declare-fun d!344629 () Bool)

(assert (=> d!344629 (= (tail!1736 l!2744) (t!112555 l!2744))))

(assert (=> b!1205948 d!344629))

(declare-fun b!1206011 () Bool)

(declare-fun e!773705 () Bool)

(declare-fun tp!342036 () Bool)

(assert (=> b!1206011 (= e!773705 (and tp_is_empty!6123 tp!342036))))

(assert (=> b!1205945 (= tp!342033 e!773705)))

(assert (= (and b!1205945 ((_ is Cons!12115) (t!112555 l!2744))) b!1206011))

(declare-fun b!1206012 () Bool)

(declare-fun e!773706 () Bool)

(declare-fun tp!342037 () Bool)

(assert (=> b!1206012 (= e!773706 (and tp_is_empty!6123 tp!342037))))

(assert (=> b!1205947 (= tp!342032 e!773706)))

(assert (= (and b!1205947 ((_ is Cons!12115) (t!112555 r!2028))) b!1206012))

(check-sat (not b!1205968) (not d!344627) (not d!344611) tp_is_empty!6123 (not b!1206011) (not b!1205956) (not b!1205958) (not b!1206000) (not b!1206004) (not b!1206012) (not b!1206001) (not b!1206005) (not b!1205970) (not b!1205966) (not b!1205960))
(check-sat)
