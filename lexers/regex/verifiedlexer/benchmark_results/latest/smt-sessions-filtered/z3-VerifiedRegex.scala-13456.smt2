; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!727514 () Bool)

(assert start!727514)

(declare-fun b_free!134365 () Bool)

(declare-fun b_next!135155 () Bool)

(assert (=> start!727514 (= b_free!134365 (not b_next!135155))))

(declare-fun tp!2179806 () Bool)

(declare-fun b_and!351987 () Bool)

(assert (=> start!727514 (= tp!2179806 b_and!351987)))

(declare-fun res!3012770 () Bool)

(declare-fun e!4477958 () Bool)

(assert (=> start!727514 (=> (not res!3012770) (not e!4477958))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!1155 0))(
  ( (A!1156 (val!30310 Int)) )
))
(declare-fun s!1481 () (InoxSet A!1155))

(declare-fun p!1695 () Int)

(declare-fun exists!4913 ((InoxSet A!1155) Int) Bool)

(assert (=> start!727514 (= res!3012770 (exists!4913 s!1481 p!1695))))

(assert (=> start!727514 e!4477958))

(declare-fun condSetEmpty!57227 () Bool)

(assert (=> start!727514 (= condSetEmpty!57227 (= s!1481 ((as const (Array A!1155 Bool)) false)))))

(declare-fun setRes!57227 () Bool)

(assert (=> start!727514 setRes!57227))

(assert (=> start!727514 tp!2179806))

(declare-fun setIsEmpty!57227 () Bool)

(assert (=> setIsEmpty!57227 setRes!57227))

(declare-fun setNonEmpty!57227 () Bool)

(declare-fun tp!2179805 () Bool)

(declare-fun tp_is_empty!49793 () Bool)

(assert (=> setNonEmpty!57227 (= setRes!57227 (and tp!2179805 tp_is_empty!49793))))

(declare-fun setElem!57227 () A!1155)

(declare-fun setRest!57227 () (InoxSet A!1155))

(assert (=> setNonEmpty!57227 (= s!1481 ((_ map or) (store ((as const (Array A!1155 Bool)) false) setElem!57227 true) setRest!57227))))

(declare-fun b!7509644 () Bool)

(declare-fun e!4477957 () Bool)

(assert (=> b!7509644 (= e!4477958 e!4477957)))

(declare-fun res!3012771 () Bool)

(assert (=> b!7509644 (=> res!3012771 e!4477957)))

(declare-fun lt!2637271 () A!1155)

(declare-fun dynLambda!29810 (Int A!1155) Bool)

(assert (=> b!7509644 (= res!3012771 (not (dynLambda!29810 p!1695 lt!2637271)))))

(declare-datatypes ((List!72604 0))(
  ( (Nil!72480) (Cons!72480 (h!78928 A!1155) (t!387177 List!72604)) )
))
(declare-fun getWitness!2493 (List!72604 Int) A!1155)

(declare-fun toList!11862 ((InoxSet A!1155)) List!72604)

(assert (=> b!7509644 (= lt!2637271 (getWitness!2493 (toList!11862 s!1481) p!1695))))

(declare-fun b!7509645 () Bool)

(assert (=> b!7509645 (= e!4477957 (not (select s!1481 lt!2637271)))))

(assert (= (and start!727514 res!3012770) b!7509644))

(assert (= (and b!7509644 (not res!3012771)) b!7509645))

(assert (= (and start!727514 condSetEmpty!57227) setIsEmpty!57227))

(assert (= (and start!727514 (not condSetEmpty!57227)) setNonEmpty!57227))

(declare-fun b_lambda!287955 () Bool)

(assert (=> (not b_lambda!287955) (not b!7509644)))

(declare-fun t!387176 () Bool)

(declare-fun tb!262453 () Bool)

(assert (=> (and start!727514 (= p!1695 p!1695) t!387176) tb!262453))

(declare-fun result!356216 () Bool)

(assert (=> tb!262453 (= result!356216 true)))

(assert (=> b!7509644 t!387176))

(declare-fun b_and!351989 () Bool)

(assert (= b_and!351987 (and (=> t!387176 result!356216) b_and!351989)))

(declare-fun m!8093696 () Bool)

(assert (=> start!727514 m!8093696))

(declare-fun m!8093698 () Bool)

(assert (=> b!7509644 m!8093698))

(declare-fun m!8093700 () Bool)

(assert (=> b!7509644 m!8093700))

(assert (=> b!7509644 m!8093700))

(declare-fun m!8093702 () Bool)

(assert (=> b!7509644 m!8093702))

(declare-fun m!8093704 () Bool)

(assert (=> b!7509645 m!8093704))

(check-sat (not b_lambda!287955) (not b_next!135155) tp_is_empty!49793 (not setNonEmpty!57227) (not start!727514) b_and!351989 (not b!7509644))
(check-sat b_and!351989 (not b_next!135155))
(get-model)

(declare-fun b_lambda!287959 () Bool)

(assert (= b_lambda!287955 (or (and start!727514 b_free!134365) b_lambda!287959)))

(check-sat (not b_next!135155) tp_is_empty!49793 (not setNonEmpty!57227) (not b_lambda!287959) (not start!727514) b_and!351989 (not b!7509644))
(check-sat b_and!351989 (not b_next!135155))
(get-model)

(declare-fun b!7509676 () Bool)

(declare-fun e!4477980 () A!1155)

(assert (=> b!7509676 (= e!4477980 (h!78928 (toList!11862 s!1481)))))

(declare-fun d!2306133 () Bool)

(declare-fun e!4477982 () Bool)

(assert (=> d!2306133 e!4477982))

(declare-fun res!3012782 () Bool)

(assert (=> d!2306133 (=> (not res!3012782) (not e!4477982))))

(declare-fun lt!2637285 () A!1155)

(assert (=> d!2306133 (= res!3012782 (dynLambda!29810 p!1695 lt!2637285))))

(assert (=> d!2306133 (= lt!2637285 e!4477980)))

(declare-fun c!1386821 () Bool)

(declare-fun e!4477981 () Bool)

(assert (=> d!2306133 (= c!1386821 e!4477981)))

(declare-fun res!3012783 () Bool)

(assert (=> d!2306133 (=> (not res!3012783) (not e!4477981))))

(get-info :version)

(assert (=> d!2306133 (= res!3012783 ((_ is Cons!72480) (toList!11862 s!1481)))))

(declare-fun exists!4915 (List!72604 Int) Bool)

(assert (=> d!2306133 (exists!4915 (toList!11862 s!1481) p!1695)))

(assert (=> d!2306133 (= (getWitness!2493 (toList!11862 s!1481) p!1695) lt!2637285)))

(declare-fun b!7509677 () Bool)

(declare-fun contains!20874 (List!72604 A!1155) Bool)

(assert (=> b!7509677 (= e!4477982 (contains!20874 (toList!11862 s!1481) lt!2637285))))

(declare-fun b!7509678 () Bool)

(declare-datatypes ((Unit!166508 0))(
  ( (Unit!166509) )
))
(declare-fun lt!2637286 () Unit!166508)

(declare-fun Unit!166510 () Unit!166508)

(assert (=> b!7509678 (= lt!2637286 Unit!166510)))

(assert (=> b!7509678 false))

(declare-fun e!4477979 () A!1155)

(declare-fun head!15439 (List!72604) A!1155)

(assert (=> b!7509678 (= e!4477979 (head!15439 (toList!11862 s!1481)))))

(declare-fun b!7509679 () Bool)

(assert (=> b!7509679 (= e!4477979 (getWitness!2493 (t!387177 (toList!11862 s!1481)) p!1695))))

(declare-fun b!7509680 () Bool)

(assert (=> b!7509680 (= e!4477981 (dynLambda!29810 p!1695 (h!78928 (toList!11862 s!1481))))))

(declare-fun b!7509681 () Bool)

(assert (=> b!7509681 (= e!4477980 e!4477979)))

(declare-fun c!1386820 () Bool)

(assert (=> b!7509681 (= c!1386820 ((_ is Cons!72480) (toList!11862 s!1481)))))

(assert (= (and d!2306133 res!3012783) b!7509680))

(assert (= (and d!2306133 c!1386821) b!7509676))

(assert (= (and d!2306133 (not c!1386821)) b!7509681))

(assert (= (and b!7509681 c!1386820) b!7509679))

(assert (= (and b!7509681 (not c!1386820)) b!7509678))

(assert (= (and d!2306133 res!3012782) b!7509677))

(declare-fun b_lambda!287965 () Bool)

(assert (=> (not b_lambda!287965) (not d!2306133)))

(declare-fun t!387183 () Bool)

(declare-fun tb!262459 () Bool)

(assert (=> (and start!727514 (= p!1695 p!1695) t!387183) tb!262459))

(declare-fun result!356222 () Bool)

(assert (=> tb!262459 (= result!356222 true)))

(assert (=> d!2306133 t!387183))

(declare-fun b_and!351995 () Bool)

(assert (= b_and!351989 (and (=> t!387183 result!356222) b_and!351995)))

(declare-fun b_lambda!287967 () Bool)

(assert (=> (not b_lambda!287967) (not b!7509680)))

(declare-fun t!387185 () Bool)

(declare-fun tb!262461 () Bool)

(assert (=> (and start!727514 (= p!1695 p!1695) t!387185) tb!262461))

(declare-fun result!356224 () Bool)

(assert (=> tb!262461 (= result!356224 true)))

(assert (=> b!7509680 t!387185))

(declare-fun b_and!351997 () Bool)

(assert (= b_and!351995 (and (=> t!387185 result!356224) b_and!351997)))

(declare-fun m!8093720 () Bool)

(assert (=> b!7509680 m!8093720))

(assert (=> b!7509677 m!8093700))

(declare-fun m!8093722 () Bool)

(assert (=> b!7509677 m!8093722))

(declare-fun m!8093724 () Bool)

(assert (=> b!7509679 m!8093724))

(assert (=> b!7509678 m!8093700))

(declare-fun m!8093726 () Bool)

(assert (=> b!7509678 m!8093726))

(declare-fun m!8093728 () Bool)

(assert (=> d!2306133 m!8093728))

(assert (=> d!2306133 m!8093700))

(declare-fun m!8093730 () Bool)

(assert (=> d!2306133 m!8093730))

(assert (=> b!7509644 d!2306133))

(declare-fun d!2306137 () Bool)

(declare-fun e!4477988 () Bool)

(assert (=> d!2306137 e!4477988))

(declare-fun res!3012789 () Bool)

(assert (=> d!2306137 (=> (not res!3012789) (not e!4477988))))

(declare-fun lt!2637292 () List!72604)

(declare-fun noDuplicate!3162 (List!72604) Bool)

(assert (=> d!2306137 (= res!3012789 (noDuplicate!3162 lt!2637292))))

(declare-fun choose!58253 ((InoxSet A!1155)) List!72604)

(assert (=> d!2306137 (= lt!2637292 (choose!58253 s!1481))))

(assert (=> d!2306137 (= (toList!11862 s!1481) lt!2637292)))

(declare-fun b!7509689 () Bool)

(declare-fun content!15332 (List!72604) (InoxSet A!1155))

(assert (=> b!7509689 (= e!4477988 (= (content!15332 lt!2637292) s!1481))))

(assert (= (and d!2306137 res!3012789) b!7509689))

(declare-fun m!8093738 () Bool)

(assert (=> d!2306137 m!8093738))

(declare-fun m!8093740 () Bool)

(assert (=> d!2306137 m!8093740))

(declare-fun m!8093742 () Bool)

(assert (=> b!7509689 m!8093742))

(assert (=> b!7509644 d!2306137))

(declare-fun d!2306139 () Bool)

(declare-fun lt!2637295 () Bool)

(assert (=> d!2306139 (= lt!2637295 (exists!4915 (toList!11862 s!1481) p!1695))))

(declare-fun choose!58254 ((InoxSet A!1155) Int) Bool)

(assert (=> d!2306139 (= lt!2637295 (choose!58254 s!1481 p!1695))))

(assert (=> d!2306139 (= (exists!4913 s!1481 p!1695) lt!2637295)))

(declare-fun bs!1939063 () Bool)

(assert (= bs!1939063 d!2306139))

(assert (=> bs!1939063 m!8093700))

(assert (=> bs!1939063 m!8093700))

(assert (=> bs!1939063 m!8093730))

(declare-fun m!8093744 () Bool)

(assert (=> bs!1939063 m!8093744))

(assert (=> start!727514 d!2306139))

(declare-fun condSetEmpty!57233 () Bool)

(assert (=> setNonEmpty!57227 (= condSetEmpty!57233 (= setRest!57227 ((as const (Array A!1155 Bool)) false)))))

(declare-fun setRes!57233 () Bool)

(assert (=> setNonEmpty!57227 (= tp!2179805 setRes!57233)))

(declare-fun setIsEmpty!57233 () Bool)

(assert (=> setIsEmpty!57233 setRes!57233))

(declare-fun setNonEmpty!57233 () Bool)

(declare-fun tp!2179812 () Bool)

(assert (=> setNonEmpty!57233 (= setRes!57233 (and tp!2179812 tp_is_empty!49793))))

(declare-fun setElem!57233 () A!1155)

(declare-fun setRest!57233 () (InoxSet A!1155))

(assert (=> setNonEmpty!57233 (= setRest!57227 ((_ map or) (store ((as const (Array A!1155 Bool)) false) setElem!57233 true) setRest!57233))))

(assert (= (and setNonEmpty!57227 condSetEmpty!57233) setIsEmpty!57233))

(assert (= (and setNonEmpty!57227 (not condSetEmpty!57233)) setNonEmpty!57233))

(declare-fun b_lambda!287973 () Bool)

(assert (= b_lambda!287965 (or (and start!727514 b_free!134365) b_lambda!287973)))

(declare-fun b_lambda!287975 () Bool)

(assert (= b_lambda!287967 (or (and start!727514 b_free!134365) b_lambda!287975)))

(check-sat (not b!7509678) tp_is_empty!49793 (not d!2306137) (not b_lambda!287959) (not b_lambda!287973) (not b!7509677) (not d!2306139) (not setNonEmpty!57233) (not b!7509679) b_and!351997 (not b!7509689) (not b_next!135155) (not d!2306133) (not b_lambda!287975))
(check-sat b_and!351997 (not b_next!135155))
(get-model)

(declare-fun d!2306141 () Bool)

(assert (=> d!2306141 true))

(declare-fun order!29693 () Int)

(declare-fun lambda!466126 () Int)

(declare-fun dynLambda!29811 (Int Int) Int)

(assert (=> d!2306141 (< (dynLambda!29811 order!29693 p!1695) (dynLambda!29811 order!29693 lambda!466126))))

(declare-fun forall!18361 (List!72604 Int) Bool)

(assert (=> d!2306141 (= (exists!4915 (toList!11862 s!1481) p!1695) (not (forall!18361 (toList!11862 s!1481) lambda!466126)))))

(declare-fun bs!1939064 () Bool)

(assert (= bs!1939064 d!2306141))

(assert (=> bs!1939064 m!8093700))

(declare-fun m!8093746 () Bool)

(assert (=> bs!1939064 m!8093746))

(assert (=> d!2306139 d!2306141))

(assert (=> d!2306139 d!2306137))

(declare-fun d!2306147 () Bool)

(declare-fun res!3012794 () Bool)

(assert (=> d!2306147 (= res!3012794 (exists!4915 (toList!11862 s!1481) p!1695))))

(assert (=> d!2306147 true))

(assert (=> d!2306147 (= (choose!58254 s!1481 p!1695) res!3012794)))

(declare-fun bs!1939065 () Bool)

(assert (= bs!1939065 d!2306147))

(assert (=> bs!1939065 m!8093700))

(assert (=> bs!1939065 m!8093700))

(assert (=> bs!1939065 m!8093730))

(assert (=> d!2306139 d!2306147))

(declare-fun b!7509704 () Bool)

(declare-fun e!4477998 () A!1155)

(assert (=> b!7509704 (= e!4477998 (h!78928 (t!387177 (toList!11862 s!1481))))))

(declare-fun d!2306151 () Bool)

(declare-fun e!4478000 () Bool)

(assert (=> d!2306151 e!4478000))

(declare-fun res!3012799 () Bool)

(assert (=> d!2306151 (=> (not res!3012799) (not e!4478000))))

(declare-fun lt!2637298 () A!1155)

(assert (=> d!2306151 (= res!3012799 (dynLambda!29810 p!1695 lt!2637298))))

(assert (=> d!2306151 (= lt!2637298 e!4477998)))

(declare-fun c!1386825 () Bool)

(declare-fun e!4477999 () Bool)

(assert (=> d!2306151 (= c!1386825 e!4477999)))

(declare-fun res!3012800 () Bool)

(assert (=> d!2306151 (=> (not res!3012800) (not e!4477999))))

(assert (=> d!2306151 (= res!3012800 ((_ is Cons!72480) (t!387177 (toList!11862 s!1481))))))

(assert (=> d!2306151 (exists!4915 (t!387177 (toList!11862 s!1481)) p!1695)))

(assert (=> d!2306151 (= (getWitness!2493 (t!387177 (toList!11862 s!1481)) p!1695) lt!2637298)))

(declare-fun b!7509705 () Bool)

(assert (=> b!7509705 (= e!4478000 (contains!20874 (t!387177 (toList!11862 s!1481)) lt!2637298))))

(declare-fun b!7509706 () Bool)

(declare-fun lt!2637299 () Unit!166508)

(declare-fun Unit!166511 () Unit!166508)

(assert (=> b!7509706 (= lt!2637299 Unit!166511)))

(assert (=> b!7509706 false))

(declare-fun e!4477997 () A!1155)

(assert (=> b!7509706 (= e!4477997 (head!15439 (t!387177 (toList!11862 s!1481))))))

(declare-fun b!7509707 () Bool)

(assert (=> b!7509707 (= e!4477997 (getWitness!2493 (t!387177 (t!387177 (toList!11862 s!1481))) p!1695))))

(declare-fun b!7509708 () Bool)

(assert (=> b!7509708 (= e!4477999 (dynLambda!29810 p!1695 (h!78928 (t!387177 (toList!11862 s!1481)))))))

(declare-fun b!7509709 () Bool)

(assert (=> b!7509709 (= e!4477998 e!4477997)))

(declare-fun c!1386824 () Bool)

(assert (=> b!7509709 (= c!1386824 ((_ is Cons!72480) (t!387177 (toList!11862 s!1481))))))

(assert (= (and d!2306151 res!3012800) b!7509708))

(assert (= (and d!2306151 c!1386825) b!7509704))

(assert (= (and d!2306151 (not c!1386825)) b!7509709))

(assert (= (and b!7509709 c!1386824) b!7509707))

(assert (= (and b!7509709 (not c!1386824)) b!7509706))

(assert (= (and d!2306151 res!3012799) b!7509705))

(declare-fun b_lambda!287981 () Bool)

(assert (=> (not b_lambda!287981) (not d!2306151)))

(declare-fun t!387191 () Bool)

(declare-fun tb!262467 () Bool)

(assert (=> (and start!727514 (= p!1695 p!1695) t!387191) tb!262467))

(declare-fun result!356234 () Bool)

(assert (=> tb!262467 (= result!356234 true)))

(assert (=> d!2306151 t!387191))

(declare-fun b_and!352003 () Bool)

(assert (= b_and!351997 (and (=> t!387191 result!356234) b_and!352003)))

(declare-fun b_lambda!287983 () Bool)

(assert (=> (not b_lambda!287983) (not b!7509708)))

(declare-fun t!387193 () Bool)

(declare-fun tb!262469 () Bool)

(assert (=> (and start!727514 (= p!1695 p!1695) t!387193) tb!262469))

(declare-fun result!356236 () Bool)

(assert (=> tb!262469 (= result!356236 true)))

(assert (=> b!7509708 t!387193))

(declare-fun b_and!352005 () Bool)

(assert (= b_and!352003 (and (=> t!387193 result!356236) b_and!352005)))

(declare-fun m!8093760 () Bool)

(assert (=> b!7509708 m!8093760))

(declare-fun m!8093762 () Bool)

(assert (=> b!7509705 m!8093762))

(declare-fun m!8093764 () Bool)

(assert (=> b!7509707 m!8093764))

(declare-fun m!8093766 () Bool)

(assert (=> b!7509706 m!8093766))

(declare-fun m!8093768 () Bool)

(assert (=> d!2306151 m!8093768))

(declare-fun m!8093770 () Bool)

(assert (=> d!2306151 m!8093770))

(assert (=> b!7509679 d!2306151))

(declare-fun d!2306153 () Bool)

(declare-fun c!1386828 () Bool)

(assert (=> d!2306153 (= c!1386828 ((_ is Nil!72480) lt!2637292))))

(declare-fun e!4478009 () (InoxSet A!1155))

(assert (=> d!2306153 (= (content!15332 lt!2637292) e!4478009)))

(declare-fun b!7509720 () Bool)

(assert (=> b!7509720 (= e!4478009 ((as const (Array A!1155 Bool)) false))))

(declare-fun b!7509721 () Bool)

(assert (=> b!7509721 (= e!4478009 ((_ map or) (store ((as const (Array A!1155 Bool)) false) (h!78928 lt!2637292) true) (content!15332 (t!387177 lt!2637292))))))

(assert (= (and d!2306153 c!1386828) b!7509720))

(assert (= (and d!2306153 (not c!1386828)) b!7509721))

(declare-fun m!8093776 () Bool)

(assert (=> b!7509721 m!8093776))

(declare-fun m!8093778 () Bool)

(assert (=> b!7509721 m!8093778))

(assert (=> b!7509689 d!2306153))

(assert (=> d!2306133 d!2306141))

(declare-fun d!2306157 () Bool)

(assert (=> d!2306157 (= (head!15439 (toList!11862 s!1481)) (h!78928 (toList!11862 s!1481)))))

(assert (=> b!7509678 d!2306157))

(declare-fun d!2306161 () Bool)

(declare-fun res!3012813 () Bool)

(declare-fun e!4478016 () Bool)

(assert (=> d!2306161 (=> res!3012813 e!4478016)))

(assert (=> d!2306161 (= res!3012813 ((_ is Nil!72480) lt!2637292))))

(assert (=> d!2306161 (= (noDuplicate!3162 lt!2637292) e!4478016)))

(declare-fun b!7509730 () Bool)

(declare-fun e!4478017 () Bool)

(assert (=> b!7509730 (= e!4478016 e!4478017)))

(declare-fun res!3012814 () Bool)

(assert (=> b!7509730 (=> (not res!3012814) (not e!4478017))))

(assert (=> b!7509730 (= res!3012814 (not (contains!20874 (t!387177 lt!2637292) (h!78928 lt!2637292))))))

(declare-fun b!7509731 () Bool)

(assert (=> b!7509731 (= e!4478017 (noDuplicate!3162 (t!387177 lt!2637292)))))

(assert (= (and d!2306161 (not res!3012813)) b!7509730))

(assert (= (and b!7509730 res!3012814) b!7509731))

(declare-fun m!8093786 () Bool)

(assert (=> b!7509730 m!8093786))

(declare-fun m!8093788 () Bool)

(assert (=> b!7509731 m!8093788))

(assert (=> d!2306137 d!2306161))

(declare-fun d!2306165 () Bool)

(declare-fun e!4478026 () Bool)

(assert (=> d!2306165 e!4478026))

(declare-fun res!3012823 () Bool)

(assert (=> d!2306165 (=> (not res!3012823) (not e!4478026))))

(declare-fun res!3012824 () List!72604)

(assert (=> d!2306165 (= res!3012823 (noDuplicate!3162 res!3012824))))

(declare-fun e!4478027 () Bool)

(assert (=> d!2306165 e!4478027))

(assert (=> d!2306165 (= (choose!58253 s!1481) res!3012824)))

(declare-fun b!7509740 () Bool)

(declare-fun tp!2179818 () Bool)

(assert (=> b!7509740 (= e!4478027 (and tp_is_empty!49793 tp!2179818))))

(declare-fun b!7509741 () Bool)

(assert (=> b!7509741 (= e!4478026 (= (content!15332 res!3012824) s!1481))))

(assert (= (and d!2306165 ((_ is Cons!72480) res!3012824)) b!7509740))

(assert (= (and d!2306165 res!3012823) b!7509741))

(declare-fun m!8093790 () Bool)

(assert (=> d!2306165 m!8093790))

(declare-fun m!8093792 () Bool)

(assert (=> b!7509741 m!8093792))

(assert (=> d!2306137 d!2306165))

(declare-fun d!2306167 () Bool)

(declare-fun lt!2637305 () Bool)

(assert (=> d!2306167 (= lt!2637305 (select (content!15332 (toList!11862 s!1481)) lt!2637285))))

(declare-fun e!4478035 () Bool)

(assert (=> d!2306167 (= lt!2637305 e!4478035)))

(declare-fun res!3012834 () Bool)

(assert (=> d!2306167 (=> (not res!3012834) (not e!4478035))))

(assert (=> d!2306167 (= res!3012834 ((_ is Cons!72480) (toList!11862 s!1481)))))

(assert (=> d!2306167 (= (contains!20874 (toList!11862 s!1481) lt!2637285) lt!2637305)))

(declare-fun b!7509748 () Bool)

(declare-fun e!4478034 () Bool)

(assert (=> b!7509748 (= e!4478035 e!4478034)))

(declare-fun res!3012835 () Bool)

(assert (=> b!7509748 (=> res!3012835 e!4478034)))

(assert (=> b!7509748 (= res!3012835 (= (h!78928 (toList!11862 s!1481)) lt!2637285))))

(declare-fun b!7509749 () Bool)

(assert (=> b!7509749 (= e!4478034 (contains!20874 (t!387177 (toList!11862 s!1481)) lt!2637285))))

(assert (= (and d!2306167 res!3012834) b!7509748))

(assert (= (and b!7509748 (not res!3012835)) b!7509749))

(assert (=> d!2306167 m!8093700))

(declare-fun m!8093800 () Bool)

(assert (=> d!2306167 m!8093800))

(declare-fun m!8093802 () Bool)

(assert (=> d!2306167 m!8093802))

(declare-fun m!8093804 () Bool)

(assert (=> b!7509749 m!8093804))

(assert (=> b!7509677 d!2306167))

(declare-fun condSetEmpty!57234 () Bool)

(assert (=> setNonEmpty!57233 (= condSetEmpty!57234 (= setRest!57233 ((as const (Array A!1155 Bool)) false)))))

(declare-fun setRes!57234 () Bool)

(assert (=> setNonEmpty!57233 (= tp!2179812 setRes!57234)))

(declare-fun setIsEmpty!57234 () Bool)

(assert (=> setIsEmpty!57234 setRes!57234))

(declare-fun setNonEmpty!57234 () Bool)

(declare-fun tp!2179819 () Bool)

(assert (=> setNonEmpty!57234 (= setRes!57234 (and tp!2179819 tp_is_empty!49793))))

(declare-fun setElem!57234 () A!1155)

(declare-fun setRest!57234 () (InoxSet A!1155))

(assert (=> setNonEmpty!57234 (= setRest!57233 ((_ map or) (store ((as const (Array A!1155 Bool)) false) setElem!57234 true) setRest!57234))))

(assert (= (and setNonEmpty!57233 condSetEmpty!57234) setIsEmpty!57234))

(assert (= (and setNonEmpty!57233 (not condSetEmpty!57234)) setNonEmpty!57234))

(declare-fun b_lambda!287985 () Bool)

(assert (= b_lambda!287981 (or (and start!727514 b_free!134365) b_lambda!287985)))

(declare-fun b_lambda!287987 () Bool)

(assert (= b_lambda!287983 (or (and start!727514 b_free!134365) b_lambda!287987)))

(check-sat (not b!7509706) (not d!2306151) (not b_lambda!287959) (not b_lambda!287987) (not d!2306147) (not b!7509741) (not b!7509730) (not b_lambda!287973) b_and!352005 (not b!7509740) (not b!7509705) (not d!2306167) (not b_next!135155) (not b!7509749) (not setNonEmpty!57234) (not b!7509721) tp_is_empty!49793 (not b!7509707) (not b_lambda!287975) (not d!2306165) (not b_lambda!287985) (not d!2306141) (not b!7509731))
(check-sat b_and!352005 (not b_next!135155))
