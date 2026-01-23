; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!92472 () Bool)

(assert start!92472)

(declare-fun bs!256655 () Bool)

(declare-fun b!1085892 () Bool)

(declare-fun b!1085890 () Bool)

(assert (= bs!256655 (and b!1085892 b!1085890)))

(declare-fun lambda!39986 () Int)

(declare-fun lambda!39985 () Int)

(assert (=> bs!256655 (not (= lambda!39986 lambda!39985))))

(assert (=> b!1085892 true))

(declare-fun b!1085888 () Bool)

(declare-fun res!482955 () Bool)

(declare-fun e!686776 () Bool)

(assert (=> b!1085888 (=> (not res!482955) (not e!686776))))

(declare-datatypes ((C!6578 0))(
  ( (C!6579 (val!3537 Int)) )
))
(declare-datatypes ((Regex!3004 0))(
  ( (ElementMatch!3004 (c!183568 C!6578)) (Concat!4837 (regOne!6520 Regex!3004) (regTwo!6520 Regex!3004)) (EmptyExpr!3004) (Star!3004 (reg!3333 Regex!3004)) (EmptyLang!3004) (Union!3004 (regOne!6521 Regex!3004) (regTwo!6521 Regex!3004)) )
))
(declare-datatypes ((List!10315 0))(
  ( (Nil!10299) (Cons!10299 (h!15700 Regex!3004) (t!101361 List!10315)) )
))
(declare-datatypes ((Context!968 0))(
  ( (Context!969 (exprs!984 List!10315)) )
))
(declare-fun z!1122 () (Set Context!968))

(declare-datatypes ((List!10316 0))(
  ( (Nil!10300) (Cons!10300 (h!15701 C!6578) (t!101362 List!10316)) )
))
(declare-fun s!2287 () List!10316)

(declare-fun matchZipper!52 ((Set Context!968) List!10316) Bool)

(assert (=> b!1085888 (= res!482955 (not (matchZipper!52 z!1122 s!2287)))))

(declare-fun b!1085889 () Bool)

(declare-fun e!686779 () Bool)

(declare-fun tp_is_empty!5639 () Bool)

(declare-fun tp!325118 () Bool)

(assert (=> b!1085889 (= e!686779 (and tp_is_empty!5639 tp!325118))))

(declare-fun res!482952 () Bool)

(assert (=> b!1085890 (=> (not res!482952) (not e!686776))))

(declare-fun filter!166 ((Set Context!968) Int) (Set Context!968))

(assert (=> b!1085890 (= res!482952 (matchZipper!52 (filter!166 z!1122 lambda!39985) s!2287))))

(declare-fun setElem!7563 () Context!968)

(declare-fun tp!325117 () Bool)

(declare-fun setNonEmpty!7563 () Bool)

(declare-fun setRes!7563 () Bool)

(declare-fun e!686775 () Bool)

(declare-fun inv!13224 (Context!968) Bool)

(assert (=> setNonEmpty!7563 (= setRes!7563 (and tp!325117 (inv!13224 setElem!7563) e!686775))))

(declare-fun setRest!7563 () (Set Context!968))

(assert (=> setNonEmpty!7563 (= z!1122 (set.union (set.insert setElem!7563 (as set.empty (Set Context!968))) setRest!7563))))

(declare-datatypes ((List!10317 0))(
  ( (Nil!10301) (Cons!10301 (h!15702 Context!968) (t!101363 List!10317)) )
))
(declare-fun zl!316 () List!10317)

(declare-fun tp!325120 () Bool)

(declare-fun e!686778 () Bool)

(declare-fun e!686780 () Bool)

(declare-fun b!1085891 () Bool)

(assert (=> b!1085891 (= e!686780 (and (inv!13224 (h!15702 zl!316)) e!686778 tp!325120))))

(declare-fun e!686777 () Bool)

(assert (=> b!1085892 (= e!686776 (not e!686777))))

(declare-fun res!482954 () Bool)

(assert (=> b!1085892 (=> res!482954 e!686777)))

(declare-fun exists!151 ((Set Context!968) Int) Bool)

(assert (=> b!1085892 (= res!482954 (not (exists!151 (filter!166 z!1122 lambda!39985) lambda!39986)))))

(declare-fun lt!363283 () List!10317)

(declare-fun exists!152 (List!10317 Int) Bool)

(assert (=> b!1085892 (exists!152 lt!363283 lambda!39986)))

(declare-datatypes ((Unit!15699 0))(
  ( (Unit!15700) )
))
(declare-fun lt!363282 () Unit!15699)

(declare-fun lemmaZipperMatchesExistsMatchingContext!31 (List!10317 List!10316) Unit!15699)

(assert (=> b!1085892 (= lt!363282 (lemmaZipperMatchesExistsMatchingContext!31 lt!363283 s!2287))))

(declare-fun toList!622 ((Set Context!968)) List!10317)

(assert (=> b!1085892 (= lt!363283 (toList!622 (filter!166 z!1122 lambda!39985)))))

(declare-fun b!1085893 () Bool)

(declare-fun getWitness!71 ((Set Context!968) Int) Context!968)

(assert (=> b!1085893 (= e!686777 (set.member (getWitness!71 (filter!166 z!1122 lambda!39985) lambda!39986) (filter!166 z!1122 lambda!39985)))))

(declare-fun b!1085894 () Bool)

(declare-fun tp!325121 () Bool)

(assert (=> b!1085894 (= e!686775 tp!325121)))

(declare-fun res!482953 () Bool)

(assert (=> start!92472 (=> (not res!482953) (not e!686776))))

(assert (=> start!92472 (= res!482953 (= (toList!622 z!1122) zl!316))))

(assert (=> start!92472 e!686776))

(declare-fun condSetEmpty!7563 () Bool)

(assert (=> start!92472 (= condSetEmpty!7563 (= z!1122 (as set.empty (Set Context!968))))))

(assert (=> start!92472 setRes!7563))

(assert (=> start!92472 e!686780))

(assert (=> start!92472 e!686779))

(declare-fun setIsEmpty!7563 () Bool)

(assert (=> setIsEmpty!7563 setRes!7563))

(declare-fun b!1085895 () Bool)

(declare-fun tp!325119 () Bool)

(assert (=> b!1085895 (= e!686778 tp!325119)))

(assert (= (and start!92472 res!482953) b!1085888))

(assert (= (and b!1085888 res!482955) b!1085890))

(assert (= (and b!1085890 res!482952) b!1085892))

(assert (= (and b!1085892 (not res!482954)) b!1085893))

(assert (= (and start!92472 condSetEmpty!7563) setIsEmpty!7563))

(assert (= (and start!92472 (not condSetEmpty!7563)) setNonEmpty!7563))

(assert (= setNonEmpty!7563 b!1085894))

(assert (= b!1085891 b!1085895))

(assert (= (and start!92472 (is-Cons!10301 zl!316)) b!1085891))

(assert (= (and start!92472 (is-Cons!10300 s!2287)) b!1085889))

(declare-fun m!1235667 () Bool)

(assert (=> start!92472 m!1235667))

(declare-fun m!1235669 () Bool)

(assert (=> b!1085893 m!1235669))

(assert (=> b!1085893 m!1235669))

(declare-fun m!1235671 () Bool)

(assert (=> b!1085893 m!1235671))

(assert (=> b!1085893 m!1235669))

(assert (=> b!1085893 m!1235671))

(declare-fun m!1235673 () Bool)

(assert (=> b!1085893 m!1235673))

(declare-fun m!1235675 () Bool)

(assert (=> b!1085891 m!1235675))

(assert (=> b!1085890 m!1235669))

(assert (=> b!1085890 m!1235669))

(declare-fun m!1235677 () Bool)

(assert (=> b!1085890 m!1235677))

(declare-fun m!1235679 () Bool)

(assert (=> b!1085888 m!1235679))

(assert (=> b!1085892 m!1235669))

(declare-fun m!1235681 () Bool)

(assert (=> b!1085892 m!1235681))

(assert (=> b!1085892 m!1235669))

(declare-fun m!1235683 () Bool)

(assert (=> b!1085892 m!1235683))

(assert (=> b!1085892 m!1235669))

(declare-fun m!1235685 () Bool)

(assert (=> b!1085892 m!1235685))

(assert (=> b!1085892 m!1235669))

(declare-fun m!1235687 () Bool)

(assert (=> b!1085892 m!1235687))

(declare-fun m!1235689 () Bool)

(assert (=> setNonEmpty!7563 m!1235689))

(push 1)

(assert (not setNonEmpty!7563))

(assert (not start!92472))

(assert (not b!1085895))

(assert (not b!1085891))

(assert (not b!1085892))

(assert (not b!1085893))

(assert tp_is_empty!5639)

(assert (not b!1085890))

(assert (not b!1085894))

(assert (not b!1085889))

(assert (not b!1085888))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!305068 () Bool)

(declare-fun e!686801 () Bool)

(assert (=> d!305068 e!686801))

(declare-fun res!482970 () Bool)

(assert (=> d!305068 (=> (not res!482970) (not e!686801))))

(declare-fun lt!363292 () Context!968)

(declare-fun dynLambda!4513 (Int Context!968) Bool)

(assert (=> d!305068 (= res!482970 (dynLambda!4513 lambda!39986 lt!363292))))

(declare-fun getWitness!73 (List!10317 Int) Context!968)

(assert (=> d!305068 (= lt!363292 (getWitness!73 (toList!622 (filter!166 z!1122 lambda!39985)) lambda!39986))))

(assert (=> d!305068 (exists!151 (filter!166 z!1122 lambda!39985) lambda!39986)))

(assert (=> d!305068 (= (getWitness!71 (filter!166 z!1122 lambda!39985) lambda!39986) lt!363292)))

(declare-fun b!1085926 () Bool)

(assert (=> b!1085926 (= e!686801 (set.member lt!363292 (filter!166 z!1122 lambda!39985)))))

(assert (= (and d!305068 res!482970) b!1085926))

(declare-fun b_lambda!30031 () Bool)

(assert (=> (not b_lambda!30031) (not d!305068)))

(declare-fun m!1235715 () Bool)

(assert (=> d!305068 m!1235715))

(assert (=> d!305068 m!1235669))

(assert (=> d!305068 m!1235683))

(assert (=> d!305068 m!1235683))

(declare-fun m!1235717 () Bool)

(assert (=> d!305068 m!1235717))

(assert (=> d!305068 m!1235669))

(assert (=> d!305068 m!1235681))

(declare-fun m!1235719 () Bool)

(assert (=> b!1085926 m!1235719))

(assert (=> b!1085893 d!305068))

(declare-fun d!305070 () Bool)

(declare-fun choose!6917 ((Set Context!968) Int) (Set Context!968))

(assert (=> d!305070 (= (filter!166 z!1122 lambda!39985) (choose!6917 z!1122 lambda!39985))))

(declare-fun bs!256657 () Bool)

(assert (= bs!256657 d!305070))

(declare-fun m!1235721 () Bool)

(assert (=> bs!256657 m!1235721))

(assert (=> b!1085893 d!305070))

(declare-fun d!305072 () Bool)

(declare-fun c!183588 () Bool)

(declare-fun isEmpty!6623 (List!10316) Bool)

(assert (=> d!305072 (= c!183588 (isEmpty!6623 s!2287))))

(declare-fun e!686804 () Bool)

(assert (=> d!305072 (= (matchZipper!52 (filter!166 z!1122 lambda!39985) s!2287) e!686804)))

(declare-fun b!1085931 () Bool)

(declare-fun nullableZipper!22 ((Set Context!968)) Bool)

(assert (=> b!1085931 (= e!686804 (nullableZipper!22 (filter!166 z!1122 lambda!39985)))))

(declare-fun b!1085932 () Bool)

(declare-fun derivationStepZipper!20 ((Set Context!968) C!6578) (Set Context!968))

(declare-fun head!2008 (List!10316) C!6578)

(declare-fun tail!1570 (List!10316) List!10316)

(assert (=> b!1085932 (= e!686804 (matchZipper!52 (derivationStepZipper!20 (filter!166 z!1122 lambda!39985) (head!2008 s!2287)) (tail!1570 s!2287)))))

(assert (= (and d!305072 c!183588) b!1085931))

(assert (= (and d!305072 (not c!183588)) b!1085932))

(declare-fun m!1235723 () Bool)

(assert (=> d!305072 m!1235723))

(assert (=> b!1085931 m!1235669))

(declare-fun m!1235725 () Bool)

(assert (=> b!1085931 m!1235725))

(declare-fun m!1235727 () Bool)

(assert (=> b!1085932 m!1235727))

(assert (=> b!1085932 m!1235669))

(assert (=> b!1085932 m!1235727))

(declare-fun m!1235729 () Bool)

(assert (=> b!1085932 m!1235729))

(declare-fun m!1235731 () Bool)

(assert (=> b!1085932 m!1235731))

(assert (=> b!1085932 m!1235729))

(assert (=> b!1085932 m!1235731))

(declare-fun m!1235733 () Bool)

(assert (=> b!1085932 m!1235733))

(assert (=> b!1085890 d!305072))

(assert (=> b!1085890 d!305070))

(declare-fun d!305076 () Bool)

(declare-fun lambda!40007 () Int)

(declare-fun forall!2261 (List!10315 Int) Bool)

(assert (=> d!305076 (= (inv!13224 setElem!7563) (forall!2261 (exprs!984 setElem!7563) lambda!40007))))

(declare-fun bs!256658 () Bool)

(assert (= bs!256658 d!305076))

(declare-fun m!1235741 () Bool)

(assert (=> bs!256658 m!1235741))

(assert (=> setNonEmpty!7563 d!305076))

(declare-fun bs!256659 () Bool)

(declare-fun d!305080 () Bool)

(assert (= bs!256659 (and d!305080 d!305076)))

(declare-fun lambda!40008 () Int)

(assert (=> bs!256659 (= lambda!40008 lambda!40007)))

(assert (=> d!305080 (= (inv!13224 (h!15702 zl!316)) (forall!2261 (exprs!984 (h!15702 zl!316)) lambda!40008))))

(declare-fun bs!256660 () Bool)

(assert (= bs!256660 d!305080))

(declare-fun m!1235743 () Bool)

(assert (=> bs!256660 m!1235743))

(assert (=> b!1085891 d!305080))

(declare-fun d!305082 () Bool)

(declare-fun e!686810 () Bool)

(assert (=> d!305082 e!686810))

(declare-fun res!482976 () Bool)

(assert (=> d!305082 (=> (not res!482976) (not e!686810))))

(declare-fun lt!363298 () List!10317)

(declare-fun noDuplicate!184 (List!10317) Bool)

(assert (=> d!305082 (= res!482976 (noDuplicate!184 lt!363298))))

(declare-fun choose!6918 ((Set Context!968)) List!10317)

(assert (=> d!305082 (= lt!363298 (choose!6918 z!1122))))

(assert (=> d!305082 (= (toList!622 z!1122) lt!363298)))

(declare-fun b!1085938 () Bool)

(declare-fun content!1476 (List!10317) (Set Context!968))

(assert (=> b!1085938 (= e!686810 (= (content!1476 lt!363298) z!1122))))

(assert (= (and d!305082 res!482976) b!1085938))

(declare-fun m!1235745 () Bool)

(assert (=> d!305082 m!1235745))

(declare-fun m!1235747 () Bool)

(assert (=> d!305082 m!1235747))

(declare-fun m!1235749 () Bool)

(assert (=> b!1085938 m!1235749))

(assert (=> start!92472 d!305082))

(declare-fun d!305084 () Bool)

(declare-fun c!183589 () Bool)

(assert (=> d!305084 (= c!183589 (isEmpty!6623 s!2287))))

(declare-fun e!686811 () Bool)

(assert (=> d!305084 (= (matchZipper!52 z!1122 s!2287) e!686811)))

(declare-fun b!1085939 () Bool)

(assert (=> b!1085939 (= e!686811 (nullableZipper!22 z!1122))))

(declare-fun b!1085940 () Bool)

(assert (=> b!1085940 (= e!686811 (matchZipper!52 (derivationStepZipper!20 z!1122 (head!2008 s!2287)) (tail!1570 s!2287)))))

(assert (= (and d!305084 c!183589) b!1085939))

(assert (= (and d!305084 (not c!183589)) b!1085940))

(assert (=> d!305084 m!1235723))

(declare-fun m!1235751 () Bool)

(assert (=> b!1085939 m!1235751))

(assert (=> b!1085940 m!1235727))

(assert (=> b!1085940 m!1235727))

(declare-fun m!1235753 () Bool)

(assert (=> b!1085940 m!1235753))

(assert (=> b!1085940 m!1235731))

(assert (=> b!1085940 m!1235753))

(assert (=> b!1085940 m!1235731))

(declare-fun m!1235755 () Bool)

(assert (=> b!1085940 m!1235755))

(assert (=> b!1085888 d!305084))

(declare-fun bs!256661 () Bool)

(declare-fun d!305086 () Bool)

(assert (= bs!256661 (and d!305086 b!1085890)))

(declare-fun lambda!40011 () Int)

(assert (=> bs!256661 (not (= lambda!40011 lambda!39985))))

(declare-fun bs!256662 () Bool)

(assert (= bs!256662 (and d!305086 b!1085892)))

(assert (=> bs!256662 (not (= lambda!40011 lambda!39986))))

(assert (=> d!305086 true))

(declare-fun order!6205 () Int)

(declare-fun dynLambda!4514 (Int Int) Int)

(assert (=> d!305086 (< (dynLambda!4514 order!6205 lambda!39986) (dynLambda!4514 order!6205 lambda!40011))))

(declare-fun forall!2262 (List!10317 Int) Bool)

(assert (=> d!305086 (= (exists!152 lt!363283 lambda!39986) (not (forall!2262 lt!363283 lambda!40011)))))

(declare-fun bs!256663 () Bool)

(assert (= bs!256663 d!305086))

(declare-fun m!1235757 () Bool)

(assert (=> bs!256663 m!1235757))

(assert (=> b!1085892 d!305086))

(declare-fun bs!256665 () Bool)

(declare-fun d!305088 () Bool)

(assert (= bs!256665 (and d!305088 b!1085890)))

(declare-fun lambda!40014 () Int)

(assert (=> bs!256665 (not (= lambda!40014 lambda!39985))))

(declare-fun bs!256666 () Bool)

(assert (= bs!256666 (and d!305088 b!1085892)))

(assert (=> bs!256666 (= lambda!40014 lambda!39986)))

(declare-fun bs!256667 () Bool)

(assert (= bs!256667 (and d!305088 d!305086)))

(assert (=> bs!256667 (not (= lambda!40014 lambda!40011))))

(assert (=> d!305088 true))

(assert (=> d!305088 (exists!152 lt!363283 lambda!40014)))

(declare-fun lt!363304 () Unit!15699)

(declare-fun choose!6919 (List!10317 List!10316) Unit!15699)

(assert (=> d!305088 (= lt!363304 (choose!6919 lt!363283 s!2287))))

(assert (=> d!305088 (matchZipper!52 (content!1476 lt!363283) s!2287)))

(assert (=> d!305088 (= (lemmaZipperMatchesExistsMatchingContext!31 lt!363283 s!2287) lt!363304)))

(declare-fun bs!256668 () Bool)

(assert (= bs!256668 d!305088))

(declare-fun m!1235769 () Bool)

(assert (=> bs!256668 m!1235769))

(declare-fun m!1235771 () Bool)

(assert (=> bs!256668 m!1235771))

(declare-fun m!1235775 () Bool)

(assert (=> bs!256668 m!1235775))

(assert (=> bs!256668 m!1235775))

(declare-fun m!1235779 () Bool)

(assert (=> bs!256668 m!1235779))

(assert (=> b!1085892 d!305088))

(declare-fun d!305094 () Bool)

(declare-fun lt!363308 () Bool)

(assert (=> d!305094 (= lt!363308 (exists!152 (toList!622 (filter!166 z!1122 lambda!39985)) lambda!39986))))

(declare-fun choose!6920 ((Set Context!968) Int) Bool)

(assert (=> d!305094 (= lt!363308 (choose!6920 (filter!166 z!1122 lambda!39985) lambda!39986))))

(assert (=> d!305094 (= (exists!151 (filter!166 z!1122 lambda!39985) lambda!39986) lt!363308)))

(declare-fun bs!256669 () Bool)

(assert (= bs!256669 d!305094))

(assert (=> bs!256669 m!1235669))

(assert (=> bs!256669 m!1235683))

(assert (=> bs!256669 m!1235683))

(declare-fun m!1235781 () Bool)

(assert (=> bs!256669 m!1235781))

(assert (=> bs!256669 m!1235669))

(declare-fun m!1235783 () Bool)

(assert (=> bs!256669 m!1235783))

(assert (=> b!1085892 d!305094))

(declare-fun d!305098 () Bool)

(declare-fun e!686816 () Bool)

(assert (=> d!305098 e!686816))

(declare-fun res!482981 () Bool)

(assert (=> d!305098 (=> (not res!482981) (not e!686816))))

(declare-fun lt!363309 () List!10317)

(assert (=> d!305098 (= res!482981 (noDuplicate!184 lt!363309))))

(assert (=> d!305098 (= lt!363309 (choose!6918 (filter!166 z!1122 lambda!39985)))))

(assert (=> d!305098 (= (toList!622 (filter!166 z!1122 lambda!39985)) lt!363309)))

(declare-fun b!1085947 () Bool)

(assert (=> b!1085947 (= e!686816 (= (content!1476 lt!363309) (filter!166 z!1122 lambda!39985)))))

(assert (= (and d!305098 res!482981) b!1085947))

(declare-fun m!1235785 () Bool)

(assert (=> d!305098 m!1235785))

(assert (=> d!305098 m!1235669))

(declare-fun m!1235787 () Bool)

(assert (=> d!305098 m!1235787))

(declare-fun m!1235789 () Bool)

(assert (=> b!1085947 m!1235789))

(assert (=> b!1085892 d!305098))

(assert (=> b!1085892 d!305070))

(declare-fun b!1085952 () Bool)

(declare-fun e!686819 () Bool)

(declare-fun tp!325139 () Bool)

(assert (=> b!1085952 (= e!686819 (and tp_is_empty!5639 tp!325139))))

(assert (=> b!1085889 (= tp!325118 e!686819)))

(assert (= (and b!1085889 (is-Cons!10300 (t!101362 s!2287))) b!1085952))

(declare-fun b!1085957 () Bool)

(declare-fun e!686822 () Bool)

(declare-fun tp!325144 () Bool)

(declare-fun tp!325145 () Bool)

(assert (=> b!1085957 (= e!686822 (and tp!325144 tp!325145))))

(assert (=> b!1085894 (= tp!325121 e!686822)))

(assert (= (and b!1085894 (is-Cons!10299 (exprs!984 setElem!7563))) b!1085957))

(declare-fun condSetEmpty!7569 () Bool)

(assert (=> setNonEmpty!7563 (= condSetEmpty!7569 (= setRest!7563 (as set.empty (Set Context!968))))))

(declare-fun setRes!7569 () Bool)

(assert (=> setNonEmpty!7563 (= tp!325117 setRes!7569)))

(declare-fun setIsEmpty!7569 () Bool)

(assert (=> setIsEmpty!7569 setRes!7569))

(declare-fun tp!325151 () Bool)

(declare-fun setElem!7569 () Context!968)

(declare-fun e!686825 () Bool)

(declare-fun setNonEmpty!7569 () Bool)

(assert (=> setNonEmpty!7569 (= setRes!7569 (and tp!325151 (inv!13224 setElem!7569) e!686825))))

(declare-fun setRest!7569 () (Set Context!968))

(assert (=> setNonEmpty!7569 (= setRest!7563 (set.union (set.insert setElem!7569 (as set.empty (Set Context!968))) setRest!7569))))

(declare-fun b!1085962 () Bool)

(declare-fun tp!325150 () Bool)

(assert (=> b!1085962 (= e!686825 tp!325150)))

(assert (= (and setNonEmpty!7563 condSetEmpty!7569) setIsEmpty!7569))

(assert (= (and setNonEmpty!7563 (not condSetEmpty!7569)) setNonEmpty!7569))

(assert (= setNonEmpty!7569 b!1085962))

(declare-fun m!1235791 () Bool)

(assert (=> setNonEmpty!7569 m!1235791))

(declare-fun b!1085970 () Bool)

(declare-fun e!686831 () Bool)

(declare-fun tp!325156 () Bool)

(assert (=> b!1085970 (= e!686831 tp!325156)))

(declare-fun e!686830 () Bool)

(declare-fun tp!325157 () Bool)

(declare-fun b!1085969 () Bool)

(assert (=> b!1085969 (= e!686830 (and (inv!13224 (h!15702 (t!101363 zl!316))) e!686831 tp!325157))))

(assert (=> b!1085891 (= tp!325120 e!686830)))

(assert (= b!1085969 b!1085970))

(assert (= (and b!1085891 (is-Cons!10301 (t!101363 zl!316))) b!1085969))

(declare-fun m!1235797 () Bool)

(assert (=> b!1085969 m!1235797))

(declare-fun b!1085971 () Bool)

(declare-fun e!686832 () Bool)

(declare-fun tp!325158 () Bool)

(declare-fun tp!325159 () Bool)

(assert (=> b!1085971 (= e!686832 (and tp!325158 tp!325159))))

(assert (=> b!1085895 (= tp!325119 e!686832)))

(assert (= (and b!1085895 (is-Cons!10299 (exprs!984 (h!15702 zl!316)))) b!1085971))

(declare-fun b_lambda!30035 () Bool)

(assert (= b_lambda!30031 (or b!1085892 b_lambda!30035)))

(declare-fun bs!256671 () Bool)

(declare-fun d!305102 () Bool)

(assert (= bs!256671 (and d!305102 b!1085892)))

(assert (=> bs!256671 (= (dynLambda!4513 lambda!39986 lt!363292) (matchZipper!52 (set.insert lt!363292 (as set.empty (Set Context!968))) s!2287))))

(declare-fun m!1235799 () Bool)

(assert (=> bs!256671 m!1235799))

(assert (=> bs!256671 m!1235799))

(declare-fun m!1235801 () Bool)

(assert (=> bs!256671 m!1235801))

(assert (=> d!305068 d!305102))

(push 1)

(assert (not d!305072))

(assert (not setNonEmpty!7569))

(assert (not d!305070))

(assert (not b!1085947))

(assert (not b!1085931))

(assert (not d!305082))

(assert (not b!1085969))

(assert (not d!305080))

(assert (not b_lambda!30035))

(assert (not b!1085962))

(assert (not d!305084))

(assert (not d!305076))

(assert (not b!1085932))

(assert tp_is_empty!5639)

(assert (not d!305086))

(assert (not b!1085952))

(assert (not bs!256671))

(assert (not b!1085940))

(assert (not d!305068))

(assert (not d!305094))

(assert (not b!1085957))

(assert (not b!1085971))

(assert (not d!305088))

(assert (not b!1085970))

(assert (not d!305098))

(assert (not b!1085938))

(assert (not b!1085939))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

