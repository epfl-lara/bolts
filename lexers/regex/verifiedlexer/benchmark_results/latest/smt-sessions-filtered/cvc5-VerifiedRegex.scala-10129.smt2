; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!530232 () Bool)

(assert start!530232)

(declare-fun b!5018737 () Bool)

(declare-fun e!3135292 () Bool)

(declare-datatypes ((C!27934 0))(
  ( (C!27935 (val!23333 Int)) )
))
(declare-datatypes ((List!58108 0))(
  ( (Nil!57984) (Cons!57984 (h!64432 C!27934) (t!370484 List!58108)) )
))
(declare-fun lt!2077200 () List!58108)

(declare-fun knownSize!24 () Int)

(declare-fun size!38566 (List!58108) Int)

(assert (=> b!5018737 (= e!3135292 (not (= (size!38566 lt!2077200) knownSize!24)))))

(declare-fun b!5018739 () Bool)

(declare-fun e!3135288 () Bool)

(declare-fun tp!1407417 () Bool)

(assert (=> b!5018739 (= e!3135288 tp!1407417)))

(declare-fun b!5018740 () Bool)

(declare-fun res!2140212 () Bool)

(assert (=> b!5018740 (=> (not res!2140212) (not e!3135292))))

(assert (=> b!5018740 (= res!2140212 (and (not (= knownSize!24 0)) (> knownSize!24 0)))))

(declare-fun b!5018741 () Bool)

(declare-fun e!3135291 () Bool)

(assert (=> b!5018741 (= e!3135291 e!3135292)))

(declare-fun res!2140215 () Bool)

(assert (=> b!5018741 (=> (not res!2140215) (not e!3135292))))

(declare-datatypes ((Regex!13842 0))(
  ( (ElementMatch!13842 (c!857479 C!27934)) (Concat!22635 (regOne!28196 Regex!13842) (regTwo!28196 Regex!13842)) (EmptyExpr!13842) (Star!13842 (reg!14171 Regex!13842)) (EmptyLang!13842) (Union!13842 (regOne!28197 Regex!13842) (regTwo!28197 Regex!13842)) )
))
(declare-datatypes ((List!58109 0))(
  ( (Nil!57985) (Cons!57985 (h!64433 Regex!13842) (t!370485 List!58109)) )
))
(declare-datatypes ((Context!6534 0))(
  ( (Context!6535 (exprs!3767 List!58109)) )
))
(declare-fun z!4710 () (Set Context!6534))

(declare-fun matchZipper!610 ((Set Context!6534) List!58108) Bool)

(assert (=> b!5018741 (= res!2140215 (matchZipper!610 z!4710 lt!2077200))))

(declare-datatypes ((IArray!30783 0))(
  ( (IArray!30784 (innerList!15449 List!58108)) )
))
(declare-datatypes ((Conc!15361 0))(
  ( (Node!15361 (left!42388 Conc!15361) (right!42718 Conc!15361) (csize!30952 Int) (cheight!15572 Int)) (Leaf!25491 (xs!18687 IArray!30783) (csize!30953 Int)) (Empty!15361) )
))
(declare-datatypes ((BalanceConc!30152 0))(
  ( (BalanceConc!30153 (c!857480 Conc!15361)) )
))
(declare-fun totalInput!1125 () BalanceConc!30152)

(declare-fun from!1212 () Int)

(declare-fun take!701 (List!58108 Int) List!58108)

(declare-fun drop!2505 (List!58108 Int) List!58108)

(declare-fun list!18689 (BalanceConc!30152) List!58108)

(assert (=> b!5018741 (= lt!2077200 (take!701 (drop!2505 (list!18689 totalInput!1125) from!1212) knownSize!24))))

(declare-fun setNonEmpty!28597 () Bool)

(declare-fun tp!1407418 () Bool)

(declare-fun setRes!28597 () Bool)

(declare-fun setElem!28597 () Context!6534)

(declare-fun inv!76278 (Context!6534) Bool)

(assert (=> setNonEmpty!28597 (= setRes!28597 (and tp!1407418 (inv!76278 setElem!28597) e!3135288))))

(declare-fun setRest!28597 () (Set Context!6534))

(assert (=> setNonEmpty!28597 (= z!4710 (set.union (set.insert setElem!28597 (as set.empty (Set Context!6534))) setRest!28597))))

(declare-fun b!5018738 () Bool)

(declare-fun e!3135289 () Bool)

(declare-fun tp!1407419 () Bool)

(declare-fun inv!76279 (Conc!15361) Bool)

(assert (=> b!5018738 (= e!3135289 (and (inv!76279 (c!857480 totalInput!1125)) tp!1407419))))

(declare-fun res!2140214 () Bool)

(declare-fun e!3135290 () Bool)

(assert (=> start!530232 (=> (not res!2140214) (not e!3135290))))

(assert (=> start!530232 (= res!2140214 (>= from!1212 0))))

(assert (=> start!530232 e!3135290))

(assert (=> start!530232 true))

(declare-fun inv!76280 (BalanceConc!30152) Bool)

(assert (=> start!530232 (and (inv!76280 totalInput!1125) e!3135289)))

(declare-fun condSetEmpty!28597 () Bool)

(assert (=> start!530232 (= condSetEmpty!28597 (= z!4710 (as set.empty (Set Context!6534))))))

(assert (=> start!530232 setRes!28597))

(declare-fun b!5018742 () Bool)

(assert (=> b!5018742 (= e!3135290 e!3135291)))

(declare-fun res!2140213 () Bool)

(assert (=> b!5018742 (=> (not res!2140213) (not e!3135291))))

(declare-fun lt!2077199 () Int)

(assert (=> b!5018742 (= res!2140213 (and (<= from!1212 lt!2077199) (>= knownSize!24 0) (<= knownSize!24 (- lt!2077199 from!1212))))))

(declare-fun size!38567 (BalanceConc!30152) Int)

(assert (=> b!5018742 (= lt!2077199 (size!38567 totalInput!1125))))

(declare-fun setIsEmpty!28597 () Bool)

(assert (=> setIsEmpty!28597 setRes!28597))

(assert (= (and start!530232 res!2140214) b!5018742))

(assert (= (and b!5018742 res!2140213) b!5018741))

(assert (= (and b!5018741 res!2140215) b!5018740))

(assert (= (and b!5018740 res!2140212) b!5018737))

(assert (= start!530232 b!5018738))

(assert (= (and start!530232 condSetEmpty!28597) setIsEmpty!28597))

(assert (= (and start!530232 (not condSetEmpty!28597)) setNonEmpty!28597))

(assert (= setNonEmpty!28597 b!5018739))

(declare-fun m!6054066 () Bool)

(assert (=> start!530232 m!6054066))

(declare-fun m!6054068 () Bool)

(assert (=> b!5018738 m!6054068))

(declare-fun m!6054070 () Bool)

(assert (=> b!5018737 m!6054070))

(declare-fun m!6054072 () Bool)

(assert (=> b!5018741 m!6054072))

(declare-fun m!6054074 () Bool)

(assert (=> b!5018741 m!6054074))

(assert (=> b!5018741 m!6054074))

(declare-fun m!6054076 () Bool)

(assert (=> b!5018741 m!6054076))

(assert (=> b!5018741 m!6054076))

(declare-fun m!6054078 () Bool)

(assert (=> b!5018741 m!6054078))

(declare-fun m!6054080 () Bool)

(assert (=> setNonEmpty!28597 m!6054080))

(declare-fun m!6054082 () Bool)

(assert (=> b!5018742 m!6054082))

(push 1)

(assert (not b!5018738))

(assert (not b!5018737))

(assert (not start!530232))

(assert (not b!5018741))

(assert (not setNonEmpty!28597))

(assert (not b!5018742))

(assert (not b!5018739))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1615682 () Bool)

(declare-fun lt!2077209 () Int)

(assert (=> d!1615682 (= lt!2077209 (size!38566 (list!18689 totalInput!1125)))))

(declare-fun size!38570 (Conc!15361) Int)

(assert (=> d!1615682 (= lt!2077209 (size!38570 (c!857480 totalInput!1125)))))

(assert (=> d!1615682 (= (size!38567 totalInput!1125) lt!2077209)))

(declare-fun bs!1187097 () Bool)

(assert (= bs!1187097 d!1615682))

(assert (=> bs!1187097 m!6054074))

(assert (=> bs!1187097 m!6054074))

(declare-fun m!6054102 () Bool)

(assert (=> bs!1187097 m!6054102))

(declare-fun m!6054104 () Bool)

(assert (=> bs!1187097 m!6054104))

(assert (=> b!5018742 d!1615682))

(declare-fun d!1615686 () Bool)

(declare-fun c!857485 () Bool)

(assert (=> d!1615686 (= c!857485 (is-Node!15361 (c!857480 totalInput!1125)))))

(declare-fun e!3135312 () Bool)

(assert (=> d!1615686 (= (inv!76279 (c!857480 totalInput!1125)) e!3135312)))

(declare-fun b!5018767 () Bool)

(declare-fun inv!76284 (Conc!15361) Bool)

(assert (=> b!5018767 (= e!3135312 (inv!76284 (c!857480 totalInput!1125)))))

(declare-fun b!5018768 () Bool)

(declare-fun e!3135313 () Bool)

(assert (=> b!5018768 (= e!3135312 e!3135313)))

(declare-fun res!2140230 () Bool)

(assert (=> b!5018768 (= res!2140230 (not (is-Leaf!25491 (c!857480 totalInput!1125))))))

(assert (=> b!5018768 (=> res!2140230 e!3135313)))

(declare-fun b!5018769 () Bool)

(declare-fun inv!76285 (Conc!15361) Bool)

(assert (=> b!5018769 (= e!3135313 (inv!76285 (c!857480 totalInput!1125)))))

(assert (= (and d!1615686 c!857485) b!5018767))

(assert (= (and d!1615686 (not c!857485)) b!5018768))

(assert (= (and b!5018768 (not res!2140230)) b!5018769))

(declare-fun m!6054108 () Bool)

(assert (=> b!5018767 m!6054108))

(declare-fun m!6054110 () Bool)

(assert (=> b!5018769 m!6054110))

(assert (=> b!5018738 d!1615686))

(declare-fun d!1615690 () Bool)

(declare-fun isBalanced!4283 (Conc!15361) Bool)

(assert (=> d!1615690 (= (inv!76280 totalInput!1125) (isBalanced!4283 (c!857480 totalInput!1125)))))

(declare-fun bs!1187099 () Bool)

(assert (= bs!1187099 d!1615690))

(declare-fun m!6054112 () Bool)

(assert (=> bs!1187099 m!6054112))

(assert (=> start!530232 d!1615690))

(declare-fun d!1615692 () Bool)

(declare-fun c!857491 () Bool)

(declare-fun isEmpty!31405 (List!58108) Bool)

(assert (=> d!1615692 (= c!857491 (isEmpty!31405 lt!2077200))))

(declare-fun e!3135319 () Bool)

(assert (=> d!1615692 (= (matchZipper!610 z!4710 lt!2077200) e!3135319)))

(declare-fun b!5018780 () Bool)

(declare-fun nullableZipper!895 ((Set Context!6534)) Bool)

(assert (=> b!5018780 (= e!3135319 (nullableZipper!895 z!4710))))

(declare-fun b!5018781 () Bool)

(declare-fun derivationStepZipper!652 ((Set Context!6534) C!27934) (Set Context!6534))

(declare-fun head!10750 (List!58108) C!27934)

(declare-fun tail!9883 (List!58108) List!58108)

(assert (=> b!5018781 (= e!3135319 (matchZipper!610 (derivationStepZipper!652 z!4710 (head!10750 lt!2077200)) (tail!9883 lt!2077200)))))

(assert (= (and d!1615692 c!857491) b!5018780))

(assert (= (and d!1615692 (not c!857491)) b!5018781))

(declare-fun m!6054126 () Bool)

(assert (=> d!1615692 m!6054126))

(declare-fun m!6054128 () Bool)

(assert (=> b!5018780 m!6054128))

(declare-fun m!6054130 () Bool)

(assert (=> b!5018781 m!6054130))

(assert (=> b!5018781 m!6054130))

(declare-fun m!6054132 () Bool)

(assert (=> b!5018781 m!6054132))

(declare-fun m!6054134 () Bool)

(assert (=> b!5018781 m!6054134))

(assert (=> b!5018781 m!6054132))

(assert (=> b!5018781 m!6054134))

(declare-fun m!6054136 () Bool)

(assert (=> b!5018781 m!6054136))

(assert (=> b!5018741 d!1615692))

(declare-fun d!1615696 () Bool)

(declare-fun e!3135341 () Bool)

(assert (=> d!1615696 e!3135341))

(declare-fun res!2140236 () Bool)

(assert (=> d!1615696 (=> (not res!2140236) (not e!3135341))))

(declare-fun lt!2077215 () List!58108)

(declare-fun content!10274 (List!58108) (Set C!27934))

(assert (=> d!1615696 (= res!2140236 (set.subset (content!10274 lt!2077215) (content!10274 (drop!2505 (list!18689 totalInput!1125) from!1212))))))

(declare-fun e!3135340 () List!58108)

(assert (=> d!1615696 (= lt!2077215 e!3135340)))

(declare-fun c!857508 () Bool)

(assert (=> d!1615696 (= c!857508 (or (is-Nil!57984 (drop!2505 (list!18689 totalInput!1125) from!1212)) (<= knownSize!24 0)))))

(assert (=> d!1615696 (= (take!701 (drop!2505 (list!18689 totalInput!1125) from!1212) knownSize!24) lt!2077215)))

(declare-fun b!5018817 () Bool)

(declare-fun e!3135342 () Int)

(assert (=> b!5018817 (= e!3135342 (size!38566 (drop!2505 (list!18689 totalInput!1125) from!1212)))))

(declare-fun b!5018818 () Bool)

(declare-fun e!3135343 () Int)

(assert (=> b!5018818 (= e!3135341 (= (size!38566 lt!2077215) e!3135343))))

(declare-fun c!857507 () Bool)

(assert (=> b!5018818 (= c!857507 (<= knownSize!24 0))))

(declare-fun b!5018819 () Bool)

(assert (=> b!5018819 (= e!3135340 Nil!57984)))

(declare-fun b!5018820 () Bool)

(assert (=> b!5018820 (= e!3135343 0)))

(declare-fun b!5018821 () Bool)

(assert (=> b!5018821 (= e!3135342 knownSize!24)))

(declare-fun b!5018822 () Bool)

(assert (=> b!5018822 (= e!3135340 (Cons!57984 (h!64432 (drop!2505 (list!18689 totalInput!1125) from!1212)) (take!701 (t!370484 (drop!2505 (list!18689 totalInput!1125) from!1212)) (- knownSize!24 1))))))

(declare-fun b!5018823 () Bool)

(assert (=> b!5018823 (= e!3135343 e!3135342)))

(declare-fun c!857509 () Bool)

(assert (=> b!5018823 (= c!857509 (>= knownSize!24 (size!38566 (drop!2505 (list!18689 totalInput!1125) from!1212))))))

(assert (= (and d!1615696 c!857508) b!5018819))

(assert (= (and d!1615696 (not c!857508)) b!5018822))

(assert (= (and d!1615696 res!2140236) b!5018818))

(assert (= (and b!5018818 c!857507) b!5018820))

(assert (= (and b!5018818 (not c!857507)) b!5018823))

(assert (= (and b!5018823 c!857509) b!5018817))

(assert (= (and b!5018823 (not c!857509)) b!5018821))

(declare-fun m!6054148 () Bool)

(assert (=> b!5018818 m!6054148))

(declare-fun m!6054150 () Bool)

(assert (=> d!1615696 m!6054150))

(assert (=> d!1615696 m!6054076))

(declare-fun m!6054152 () Bool)

(assert (=> d!1615696 m!6054152))

(assert (=> b!5018817 m!6054076))

(declare-fun m!6054154 () Bool)

(assert (=> b!5018817 m!6054154))

(assert (=> b!5018823 m!6054076))

(assert (=> b!5018823 m!6054154))

(declare-fun m!6054156 () Bool)

(assert (=> b!5018822 m!6054156))

(assert (=> b!5018741 d!1615696))

(declare-fun b!5018869 () Bool)

(declare-fun e!3135369 () Int)

(assert (=> b!5018869 (= e!3135369 0)))

(declare-fun b!5018870 () Bool)

(declare-fun e!3135370 () Bool)

(declare-fun lt!2077221 () List!58108)

(declare-fun e!3135373 () Int)

(assert (=> b!5018870 (= e!3135370 (= (size!38566 lt!2077221) e!3135373))))

(declare-fun c!857531 () Bool)

(assert (=> b!5018870 (= c!857531 (<= from!1212 0))))

(declare-fun b!5018871 () Bool)

(declare-fun e!3135372 () List!58108)

(assert (=> b!5018871 (= e!3135372 (list!18689 totalInput!1125))))

(declare-fun b!5018872 () Bool)

(declare-fun call!350513 () Int)

(assert (=> b!5018872 (= e!3135369 (- call!350513 from!1212))))

(declare-fun b!5018873 () Bool)

(assert (=> b!5018873 (= e!3135372 (drop!2505 (t!370484 (list!18689 totalInput!1125)) (- from!1212 1)))))

(declare-fun b!5018874 () Bool)

(assert (=> b!5018874 (= e!3135373 call!350513)))

(declare-fun b!5018875 () Bool)

(declare-fun e!3135371 () List!58108)

(assert (=> b!5018875 (= e!3135371 Nil!57984)))

(declare-fun d!1615700 () Bool)

(assert (=> d!1615700 e!3135370))

(declare-fun res!2140242 () Bool)

(assert (=> d!1615700 (=> (not res!2140242) (not e!3135370))))

(assert (=> d!1615700 (= res!2140242 (set.subset (content!10274 lt!2077221) (content!10274 (list!18689 totalInput!1125))))))

(assert (=> d!1615700 (= lt!2077221 e!3135371)))

(declare-fun c!857532 () Bool)

(assert (=> d!1615700 (= c!857532 (is-Nil!57984 (list!18689 totalInput!1125)))))

(assert (=> d!1615700 (= (drop!2505 (list!18689 totalInput!1125) from!1212) lt!2077221)))

(declare-fun b!5018876 () Bool)

(assert (=> b!5018876 (= e!3135373 e!3135369)))

(declare-fun c!857533 () Bool)

(assert (=> b!5018876 (= c!857533 (>= from!1212 call!350513))))

(declare-fun bm!350508 () Bool)

(assert (=> bm!350508 (= call!350513 (size!38566 (list!18689 totalInput!1125)))))

(declare-fun b!5018877 () Bool)

(assert (=> b!5018877 (= e!3135371 e!3135372)))

(declare-fun c!857530 () Bool)

(assert (=> b!5018877 (= c!857530 (<= from!1212 0))))

(assert (= (and d!1615700 c!857532) b!5018875))

(assert (= (and d!1615700 (not c!857532)) b!5018877))

(assert (= (and b!5018877 c!857530) b!5018871))

(assert (= (and b!5018877 (not c!857530)) b!5018873))

(assert (= (and d!1615700 res!2140242) b!5018870))

(assert (= (and b!5018870 c!857531) b!5018874))

(assert (= (and b!5018870 (not c!857531)) b!5018876))

(assert (= (and b!5018876 c!857533) b!5018869))

(assert (= (and b!5018876 (not c!857533)) b!5018872))

(assert (= (or b!5018874 b!5018876 b!5018872) bm!350508))

(declare-fun m!6054170 () Bool)

(assert (=> b!5018870 m!6054170))

(declare-fun m!6054172 () Bool)

(assert (=> b!5018873 m!6054172))

(declare-fun m!6054174 () Bool)

(assert (=> d!1615700 m!6054174))

(assert (=> d!1615700 m!6054074))

(declare-fun m!6054176 () Bool)

(assert (=> d!1615700 m!6054176))

(assert (=> bm!350508 m!6054074))

(assert (=> bm!350508 m!6054102))

(assert (=> b!5018741 d!1615700))

(declare-fun d!1615706 () Bool)

(declare-fun list!18691 (Conc!15361) List!58108)

(assert (=> d!1615706 (= (list!18689 totalInput!1125) (list!18691 (c!857480 totalInput!1125)))))

(declare-fun bs!1187101 () Bool)

(assert (= bs!1187101 d!1615706))

(declare-fun m!6054178 () Bool)

(assert (=> bs!1187101 m!6054178))

(assert (=> b!5018741 d!1615706))

(declare-fun d!1615708 () Bool)

(declare-fun lambda!248675 () Int)

(declare-fun forall!13383 (List!58109 Int) Bool)

(assert (=> d!1615708 (= (inv!76278 setElem!28597) (forall!13383 (exprs!3767 setElem!28597) lambda!248675))))

(declare-fun bs!1187102 () Bool)

(assert (= bs!1187102 d!1615708))

(declare-fun m!6054186 () Bool)

(assert (=> bs!1187102 m!6054186))

(assert (=> setNonEmpty!28597 d!1615708))

(declare-fun d!1615714 () Bool)

(declare-fun lt!2077227 () Int)

(assert (=> d!1615714 (>= lt!2077227 0)))

(declare-fun e!3135385 () Int)

(assert (=> d!1615714 (= lt!2077227 e!3135385)))

(declare-fun c!857542 () Bool)

(assert (=> d!1615714 (= c!857542 (is-Nil!57984 lt!2077200))))

(assert (=> d!1615714 (= (size!38566 lt!2077200) lt!2077227)))

(declare-fun b!5018897 () Bool)

(assert (=> b!5018897 (= e!3135385 0)))

(declare-fun b!5018898 () Bool)

(assert (=> b!5018898 (= e!3135385 (+ 1 (size!38566 (t!370484 lt!2077200))))))

(assert (= (and d!1615714 c!857542) b!5018897))

(assert (= (and d!1615714 (not c!857542)) b!5018898))

(declare-fun m!6054188 () Bool)

(assert (=> b!5018898 m!6054188))

(assert (=> b!5018737 d!1615714))

(declare-fun tp!1407437 () Bool)

(declare-fun tp!1407435 () Bool)

(declare-fun e!3135390 () Bool)

(declare-fun b!5018907 () Bool)

(assert (=> b!5018907 (= e!3135390 (and (inv!76279 (left!42388 (c!857480 totalInput!1125))) tp!1407437 (inv!76279 (right!42718 (c!857480 totalInput!1125))) tp!1407435))))

(declare-fun b!5018909 () Bool)

(declare-fun e!3135391 () Bool)

(declare-fun tp!1407436 () Bool)

(assert (=> b!5018909 (= e!3135391 tp!1407436)))

(declare-fun b!5018908 () Bool)

(declare-fun inv!76286 (IArray!30783) Bool)

(assert (=> b!5018908 (= e!3135390 (and (inv!76286 (xs!18687 (c!857480 totalInput!1125))) e!3135391))))

(assert (=> b!5018738 (= tp!1407419 (and (inv!76279 (c!857480 totalInput!1125)) e!3135390))))

(assert (= (and b!5018738 (is-Node!15361 (c!857480 totalInput!1125))) b!5018907))

(assert (= b!5018908 b!5018909))

(assert (= (and b!5018738 (is-Leaf!25491 (c!857480 totalInput!1125))) b!5018908))

(declare-fun m!6054190 () Bool)

(assert (=> b!5018907 m!6054190))

(declare-fun m!6054192 () Bool)

(assert (=> b!5018907 m!6054192))

(declare-fun m!6054194 () Bool)

(assert (=> b!5018908 m!6054194))

(assert (=> b!5018738 m!6054068))

(declare-fun b!5018914 () Bool)

(declare-fun e!3135394 () Bool)

(declare-fun tp!1407442 () Bool)

(declare-fun tp!1407443 () Bool)

(assert (=> b!5018914 (= e!3135394 (and tp!1407442 tp!1407443))))

(assert (=> b!5018739 (= tp!1407417 e!3135394)))

(assert (= (and b!5018739 (is-Cons!57985 (exprs!3767 setElem!28597))) b!5018914))

(declare-fun condSetEmpty!28603 () Bool)

(assert (=> setNonEmpty!28597 (= condSetEmpty!28603 (= setRest!28597 (as set.empty (Set Context!6534))))))

(declare-fun setRes!28603 () Bool)

(assert (=> setNonEmpty!28597 (= tp!1407418 setRes!28603)))

(declare-fun setIsEmpty!28603 () Bool)

(assert (=> setIsEmpty!28603 setRes!28603))

(declare-fun setNonEmpty!28603 () Bool)

(declare-fun tp!1407448 () Bool)

(declare-fun setElem!28603 () Context!6534)

(declare-fun e!3135397 () Bool)

(assert (=> setNonEmpty!28603 (= setRes!28603 (and tp!1407448 (inv!76278 setElem!28603) e!3135397))))

(declare-fun setRest!28603 () (Set Context!6534))

(assert (=> setNonEmpty!28603 (= setRest!28597 (set.union (set.insert setElem!28603 (as set.empty (Set Context!6534))) setRest!28603))))

(declare-fun b!5018919 () Bool)

(declare-fun tp!1407449 () Bool)

(assert (=> b!5018919 (= e!3135397 tp!1407449)))

(assert (= (and setNonEmpty!28597 condSetEmpty!28603) setIsEmpty!28603))

(assert (= (and setNonEmpty!28597 (not condSetEmpty!28603)) setNonEmpty!28603))

(assert (= setNonEmpty!28603 b!5018919))

(declare-fun m!6054196 () Bool)

(assert (=> setNonEmpty!28603 m!6054196))

(push 1)

(assert (not b!5018898))

(assert (not d!1615706))

(assert (not d!1615696))

(assert (not b!5018908))

(assert (not setNonEmpty!28603))

(assert (not d!1615708))

(assert (not b!5018781))

(assert (not d!1615682))

(assert (not b!5018907))

(assert (not b!5018870))

(assert (not b!5018909))

(assert (not bm!350508))

(assert (not b!5018817))

(assert (not d!1615692))

(assert (not b!5018822))

(assert (not b!5018738))

(assert (not b!5018914))

(assert (not b!5018823))

(assert (not d!1615690))

(assert (not b!5018818))

(assert (not b!5018769))

(assert (not d!1615700))

(assert (not b!5018919))

(assert (not b!5018780))

(assert (not b!5018873))

(assert (not b!5018767))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

