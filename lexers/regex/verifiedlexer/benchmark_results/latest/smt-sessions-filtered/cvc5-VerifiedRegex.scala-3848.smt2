; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!213032 () Bool)

(assert start!213032)

(declare-fun b!2195160 () Bool)

(declare-fun res!943677 () Bool)

(declare-fun e!1402864 () Bool)

(assert (=> b!2195160 (=> (not res!943677) (not e!1402864))))

(declare-fun e!1402862 () Bool)

(assert (=> b!2195160 (= res!943677 e!1402862)))

(declare-fun res!943673 () Bool)

(assert (=> b!2195160 (=> res!943673 e!1402862)))

(declare-datatypes ((C!12470 0))(
  ( (C!12471 (val!7221 Int)) )
))
(declare-datatypes ((Regex!6162 0))(
  ( (ElementMatch!6162 (c!349507 C!12470)) (Concat!10464 (regOne!12836 Regex!6162) (regTwo!12836 Regex!6162)) (EmptyExpr!6162) (Star!6162 (reg!6491 Regex!6162)) (EmptyLang!6162) (Union!6162 (regOne!12837 Regex!6162) (regTwo!12837 Regex!6162)) )
))
(declare-datatypes ((List!25608 0))(
  ( (Nil!25524) (Cons!25524 (h!30925 Regex!6162) (t!198214 List!25608)) )
))
(declare-datatypes ((Context!3464 0))(
  ( (Context!3465 (exprs!2232 List!25608)) )
))
(declare-fun z!3955 () (Set Context!3464))

(declare-fun nullableZipper!442 ((Set Context!3464)) Bool)

(assert (=> b!2195160 (= res!943673 (not (nullableZipper!442 z!3955)))))

(declare-fun b!2195161 () Bool)

(declare-fun e!1402868 () Bool)

(declare-datatypes ((List!25609 0))(
  ( (Nil!25525) (Cons!25525 (h!30926 C!12470) (t!198215 List!25609)) )
))
(declare-fun lt!821007 () List!25609)

(declare-fun lt!821009 () List!25609)

(assert (=> b!2195161 (= e!1402868 (= lt!821007 lt!821009))))

(declare-fun lt!821017 () C!12470)

(declare-fun lt!821018 () List!25609)

(assert (=> b!2195161 (= (Cons!25525 lt!821017 lt!821018) lt!821009)))

(declare-fun lt!821011 () List!25609)

(declare-fun from!1114 () Int)

(declare-fun lt!821014 () Int)

(declare-fun take!350 (List!25609 Int) List!25609)

(declare-fun drop!1360 (List!25609 Int) List!25609)

(assert (=> b!2195161 (= lt!821009 (take!350 (drop!1360 lt!821011 from!1114) (+ 2 lt!821014)))))

(declare-fun apply!6226 (List!25609 Int) C!12470)

(assert (=> b!2195161 (= lt!821017 (apply!6226 lt!821011 from!1114))))

(declare-fun lt!821019 () Int)

(declare-datatypes ((Unit!38651 0))(
  ( (Unit!38652) )
))
(declare-fun lt!821015 () Unit!38651)

(declare-fun lemmaDropTakeAddOneLeft!15 (List!25609 Int Int) Unit!38651)

(assert (=> b!2195161 (= lt!821015 (lemmaDropTakeAddOneLeft!15 lt!821011 from!1114 lt!821019))))

(declare-fun b!2195162 () Bool)

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2195162 (= e!1402862 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2195163 () Bool)

(declare-fun e!1402861 () Int)

(assert (=> b!2195163 (= e!1402861 from!1114)))

(declare-fun b!2195164 () Bool)

(declare-fun e!1402867 () Bool)

(declare-fun e!1402865 () Bool)

(assert (=> b!2195164 (= e!1402867 e!1402865)))

(declare-fun res!943670 () Bool)

(assert (=> b!2195164 (=> res!943670 e!1402865)))

(declare-fun lt!821021 () (Set Context!3464))

(declare-fun matchZipper!258 ((Set Context!3464) List!25609) Bool)

(assert (=> b!2195164 (= res!943670 (not (matchZipper!258 lt!821021 lt!821018)))))

(assert (=> b!2195164 (= lt!821018 (take!350 (drop!1360 lt!821011 (+ 1 from!1114)) lt!821019))))

(declare-datatypes ((IArray!16601 0))(
  ( (IArray!16602 (innerList!8358 List!25609)) )
))
(declare-datatypes ((Conc!8298 0))(
  ( (Node!8298 (left!19594 Conc!8298) (right!19924 Conc!8298) (csize!16826 Int) (cheight!8509 Int)) (Leaf!12147 (xs!11240 IArray!16601) (csize!16827 Int)) (Empty!8298) )
))
(declare-datatypes ((BalanceConc!16358 0))(
  ( (BalanceConc!16359 (c!349508 Conc!8298)) )
))
(declare-fun totalInput!923 () BalanceConc!16358)

(declare-fun list!9818 (BalanceConc!16358) List!25609)

(assert (=> b!2195164 (= lt!821011 (list!9818 totalInput!923))))

(declare-fun b!2195165 () Bool)

(declare-fun e!1402866 () Bool)

(declare-fun tp!683862 () Bool)

(declare-fun inv!34165 (Conc!8298) Bool)

(assert (=> b!2195165 (= e!1402866 (and (inv!34165 (c!349508 totalInput!923)) tp!683862))))

(declare-fun b!2195166 () Bool)

(declare-fun e!1402858 () Bool)

(assert (=> b!2195166 (= e!1402858 (not e!1402867))))

(declare-fun res!943676 () Bool)

(assert (=> b!2195166 (=> res!943676 e!1402867)))

(declare-fun lt!821008 () Bool)

(assert (=> b!2195166 (= res!943676 lt!821008)))

(declare-fun e!1402863 () Bool)

(assert (=> b!2195166 e!1402863))

(declare-fun res!943678 () Bool)

(assert (=> b!2195166 (=> res!943678 e!1402863)))

(assert (=> b!2195166 (= res!943678 lt!821008)))

(assert (=> b!2195166 (= lt!821008 (<= lt!821019 0))))

(assert (=> b!2195166 (= lt!821019 (+ 1 lt!821014))))

(declare-fun lt!821013 () Int)

(assert (=> b!2195166 (= lt!821014 (- lt!821013 (+ 1 from!1114)))))

(declare-fun lt!821012 () Int)

(declare-fun lt!821010 () Unit!38651)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!161 ((Set Context!3464) Int BalanceConc!16358 Int) Unit!38651)

(assert (=> b!2195166 (= lt!821010 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!161 lt!821021 (+ 1 from!1114) totalInput!923 lt!821012))))

(declare-fun b!2195168 () Bool)

(declare-fun e!1402860 () Bool)

(declare-fun tp!683863 () Bool)

(assert (=> b!2195168 (= e!1402860 tp!683863)))

(declare-fun b!2195169 () Bool)

(assert (=> b!2195169 (= e!1402864 e!1402858)))

(declare-fun res!943669 () Bool)

(assert (=> b!2195169 (=> (not res!943669) (not e!1402858))))

(declare-fun lt!821020 () Int)

(assert (=> b!2195169 (= res!943669 (= lt!821020 lt!821013))))

(declare-fun lt!821022 () Int)

(declare-fun furthestNullablePosition!332 ((Set Context!3464) Int BalanceConc!16358 Int Int) Int)

(assert (=> b!2195169 (= lt!821013 (furthestNullablePosition!332 lt!821021 (+ 1 from!1114) totalInput!923 lt!821022 lt!821012))))

(assert (=> b!2195169 (= lt!821020 (furthestNullablePosition!332 z!3955 from!1114 totalInput!923 lt!821022 lastNullablePos!193))))

(assert (=> b!2195169 (= lt!821012 e!1402861)))

(declare-fun c!349506 () Bool)

(assert (=> b!2195169 (= c!349506 (nullableZipper!442 lt!821021))))

(declare-fun lt!821016 () C!12470)

(declare-fun derivationStepZipper!236 ((Set Context!3464) C!12470) (Set Context!3464))

(assert (=> b!2195169 (= lt!821021 (derivationStepZipper!236 z!3955 lt!821016))))

(declare-fun apply!6227 (BalanceConc!16358 Int) C!12470)

(assert (=> b!2195169 (= lt!821016 (apply!6227 totalInput!923 from!1114))))

(declare-fun b!2195170 () Bool)

(assert (=> b!2195170 (= e!1402863 (matchZipper!258 lt!821021 (take!350 (drop!1360 (list!9818 totalInput!923) (+ 1 from!1114)) lt!821019)))))

(declare-fun b!2195171 () Bool)

(declare-fun res!943671 () Bool)

(assert (=> b!2195171 (=> (not res!943671) (not e!1402864))))

(assert (=> b!2195171 (= res!943671 (not (= from!1114 lt!821022)))))

(declare-fun setIsEmpty!18749 () Bool)

(declare-fun setRes!18749 () Bool)

(assert (=> setIsEmpty!18749 setRes!18749))

(declare-fun b!2195172 () Bool)

(declare-fun e!1402859 () Bool)

(assert (=> b!2195172 (= e!1402859 e!1402864)))

(declare-fun res!943675 () Bool)

(assert (=> b!2195172 (=> (not res!943675) (not e!1402864))))

(assert (=> b!2195172 (= res!943675 (and (<= from!1114 lt!821022) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19904 (BalanceConc!16358) Int)

(assert (=> b!2195172 (= lt!821022 (size!19904 totalInput!923))))

(declare-fun b!2195167 () Bool)

(assert (=> b!2195167 (= e!1402865 e!1402868)))

(declare-fun res!943668 () Bool)

(assert (=> b!2195167 (=> res!943668 e!1402868)))

(assert (=> b!2195167 (= res!943668 (not (matchZipper!258 z!3955 lt!821007)))))

(assert (=> b!2195167 (= lt!821007 (Cons!25525 lt!821016 lt!821018))))

(declare-fun res!943674 () Bool)

(assert (=> start!213032 (=> (not res!943674) (not e!1402859))))

(assert (=> start!213032 (= res!943674 (>= from!1114 0))))

(assert (=> start!213032 e!1402859))

(assert (=> start!213032 true))

(declare-fun inv!34166 (BalanceConc!16358) Bool)

(assert (=> start!213032 (and (inv!34166 totalInput!923) e!1402866)))

(declare-fun condSetEmpty!18749 () Bool)

(assert (=> start!213032 (= condSetEmpty!18749 (= z!3955 (as set.empty (Set Context!3464))))))

(assert (=> start!213032 setRes!18749))

(declare-fun b!2195173 () Bool)

(declare-fun res!943672 () Bool)

(assert (=> b!2195173 (=> (not res!943672) (not e!1402864))))

(declare-fun lostCauseZipper!280 ((Set Context!3464)) Bool)

(assert (=> b!2195173 (= res!943672 (not (lostCauseZipper!280 z!3955)))))

(declare-fun setNonEmpty!18749 () Bool)

(declare-fun setElem!18749 () Context!3464)

(declare-fun tp!683861 () Bool)

(declare-fun inv!34167 (Context!3464) Bool)

(assert (=> setNonEmpty!18749 (= setRes!18749 (and tp!683861 (inv!34167 setElem!18749) e!1402860))))

(declare-fun setRest!18749 () (Set Context!3464))

(assert (=> setNonEmpty!18749 (= z!3955 (set.union (set.insert setElem!18749 (as set.empty (Set Context!3464))) setRest!18749))))

(declare-fun b!2195174 () Bool)

(assert (=> b!2195174 (= e!1402861 lastNullablePos!193)))

(assert (= (and start!213032 res!943674) b!2195172))

(assert (= (and b!2195172 res!943675) b!2195160))

(assert (= (and b!2195160 (not res!943673)) b!2195162))

(assert (= (and b!2195160 res!943677) b!2195171))

(assert (= (and b!2195171 res!943671) b!2195173))

(assert (= (and b!2195173 res!943672) b!2195169))

(assert (= (and b!2195169 c!349506) b!2195163))

(assert (= (and b!2195169 (not c!349506)) b!2195174))

(assert (= (and b!2195169 res!943669) b!2195166))

(assert (= (and b!2195166 (not res!943678)) b!2195170))

(assert (= (and b!2195166 (not res!943676)) b!2195164))

(assert (= (and b!2195164 (not res!943670)) b!2195167))

(assert (= (and b!2195167 (not res!943668)) b!2195161))

(assert (= start!213032 b!2195165))

(assert (= (and start!213032 condSetEmpty!18749) setIsEmpty!18749))

(assert (= (and start!213032 (not condSetEmpty!18749)) setNonEmpty!18749))

(assert (= setNonEmpty!18749 b!2195168))

(declare-fun m!2637731 () Bool)

(assert (=> b!2195160 m!2637731))

(declare-fun m!2637733 () Bool)

(assert (=> b!2195170 m!2637733))

(assert (=> b!2195170 m!2637733))

(declare-fun m!2637735 () Bool)

(assert (=> b!2195170 m!2637735))

(assert (=> b!2195170 m!2637735))

(declare-fun m!2637737 () Bool)

(assert (=> b!2195170 m!2637737))

(assert (=> b!2195170 m!2637737))

(declare-fun m!2637739 () Bool)

(assert (=> b!2195170 m!2637739))

(declare-fun m!2637741 () Bool)

(assert (=> start!213032 m!2637741))

(declare-fun m!2637743 () Bool)

(assert (=> b!2195164 m!2637743))

(declare-fun m!2637745 () Bool)

(assert (=> b!2195164 m!2637745))

(assert (=> b!2195164 m!2637745))

(declare-fun m!2637747 () Bool)

(assert (=> b!2195164 m!2637747))

(assert (=> b!2195164 m!2637733))

(declare-fun m!2637749 () Bool)

(assert (=> b!2195166 m!2637749))

(declare-fun m!2637751 () Bool)

(assert (=> b!2195172 m!2637751))

(declare-fun m!2637753 () Bool)

(assert (=> b!2195169 m!2637753))

(declare-fun m!2637755 () Bool)

(assert (=> b!2195169 m!2637755))

(declare-fun m!2637757 () Bool)

(assert (=> b!2195169 m!2637757))

(declare-fun m!2637759 () Bool)

(assert (=> b!2195169 m!2637759))

(declare-fun m!2637761 () Bool)

(assert (=> b!2195169 m!2637761))

(declare-fun m!2637763 () Bool)

(assert (=> b!2195161 m!2637763))

(assert (=> b!2195161 m!2637763))

(declare-fun m!2637765 () Bool)

(assert (=> b!2195161 m!2637765))

(declare-fun m!2637767 () Bool)

(assert (=> b!2195161 m!2637767))

(declare-fun m!2637769 () Bool)

(assert (=> b!2195161 m!2637769))

(declare-fun m!2637771 () Bool)

(assert (=> b!2195165 m!2637771))

(declare-fun m!2637773 () Bool)

(assert (=> setNonEmpty!18749 m!2637773))

(declare-fun m!2637775 () Bool)

(assert (=> b!2195167 m!2637775))

(declare-fun m!2637777 () Bool)

(assert (=> b!2195173 m!2637777))

(push 1)

(assert (not b!2195172))

(assert (not b!2195173))

(assert (not b!2195167))

(assert (not b!2195168))

(assert (not b!2195160))

(assert (not setNonEmpty!18749))

(assert (not b!2195161))

(assert (not b!2195164))

(assert (not start!213032))

(assert (not b!2195170))

(assert (not b!2195169))

(assert (not b!2195165))

(assert (not b!2195166))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!448902 () Bool)

(declare-fun b!2195296 () Bool)

(declare-fun d!656839 () Bool)

(assert (= bs!448902 (and b!2195296 d!656839)))

(declare-fun lambda!82543 () Int)

(declare-fun lambda!82542 () Int)

(assert (=> bs!448902 (not (= lambda!82543 lambda!82542))))

(declare-fun bs!448903 () Bool)

(declare-fun b!2195297 () Bool)

(assert (= bs!448903 (and b!2195297 d!656839)))

(declare-fun lambda!82544 () Int)

(assert (=> bs!448903 (not (= lambda!82544 lambda!82542))))

(declare-fun bs!448904 () Bool)

(assert (= bs!448904 (and b!2195297 b!2195296)))

(assert (=> bs!448904 (= lambda!82544 lambda!82543)))

(declare-fun bm!131951 () Bool)

(declare-datatypes ((List!25612 0))(
  ( (Nil!25528) (Cons!25528 (h!30929 Context!3464) (t!198218 List!25612)) )
))
(declare-fun call!131955 () List!25612)

(declare-fun toList!1254 ((Set Context!3464)) List!25612)

(assert (=> bm!131951 (= call!131955 (toList!1254 z!3955))))

(declare-fun lt!821098 () List!25612)

(declare-fun call!131956 () Bool)

(declare-fun bm!131950 () Bool)

(declare-fun c!349558 () Bool)

(declare-fun lt!821099 () List!25612)

(declare-fun exists!807 (List!25612 Int) Bool)

(assert (=> bm!131950 (= call!131956 (exists!807 (ite c!349558 lt!821099 lt!821098) (ite c!349558 lambda!82543 lambda!82544)))))

(declare-fun lt!821102 () Bool)

(declare-datatypes ((Option!5018 0))(
  ( (None!5017) (Some!5017 (v!29412 List!25609)) )
))
(declare-fun isEmpty!14580 (Option!5018) Bool)

(declare-fun getLanguageWitness!137 ((Set Context!3464)) Option!5018)

(assert (=> d!656839 (= lt!821102 (isEmpty!14580 (getLanguageWitness!137 z!3955)))))

(declare-fun forall!5220 ((Set Context!3464) Int) Bool)

(assert (=> d!656839 (= lt!821102 (forall!5220 z!3955 lambda!82542))))

(declare-fun lt!821100 () Unit!38651)

(declare-fun e!1402948 () Unit!38651)

(assert (=> d!656839 (= lt!821100 e!1402948)))

(assert (=> d!656839 (= c!349558 (not (forall!5220 z!3955 lambda!82542)))))

(assert (=> d!656839 (= (lostCauseZipper!280 z!3955) lt!821102)))

(declare-fun Unit!38655 () Unit!38651)

(assert (=> b!2195296 (= e!1402948 Unit!38655)))

(assert (=> b!2195296 (= lt!821099 call!131955)))

(declare-fun lt!821097 () Unit!38651)

(declare-fun lemmaNotForallThenExists!43 (List!25612 Int) Unit!38651)

(assert (=> b!2195296 (= lt!821097 (lemmaNotForallThenExists!43 lt!821099 lambda!82542))))

(assert (=> b!2195296 call!131956))

(declare-fun lt!821096 () Unit!38651)

(assert (=> b!2195296 (= lt!821096 lt!821097)))

(declare-fun Unit!38656 () Unit!38651)

(assert (=> b!2195297 (= e!1402948 Unit!38656)))

(assert (=> b!2195297 (= lt!821098 call!131955)))

(declare-fun lt!821101 () Unit!38651)

(declare-fun lemmaForallThenNotExists!43 (List!25612 Int) Unit!38651)

(assert (=> b!2195297 (= lt!821101 (lemmaForallThenNotExists!43 lt!821098 lambda!82542))))

(assert (=> b!2195297 (not call!131956)))

(declare-fun lt!821095 () Unit!38651)

(assert (=> b!2195297 (= lt!821095 lt!821101)))

(assert (= (and d!656839 c!349558) b!2195296))

(assert (= (and d!656839 (not c!349558)) b!2195297))

(assert (= (or b!2195296 b!2195297) bm!131950))

(assert (= (or b!2195296 b!2195297) bm!131951))

(declare-fun m!2637889 () Bool)

(assert (=> b!2195297 m!2637889))

(declare-fun m!2637891 () Bool)

(assert (=> bm!131950 m!2637891))

(declare-fun m!2637893 () Bool)

(assert (=> bm!131951 m!2637893))

(declare-fun m!2637895 () Bool)

(assert (=> b!2195296 m!2637895))

(declare-fun m!2637897 () Bool)

(assert (=> d!656839 m!2637897))

(assert (=> d!656839 m!2637897))

(declare-fun m!2637899 () Bool)

(assert (=> d!656839 m!2637899))

(declare-fun m!2637901 () Bool)

(assert (=> d!656839 m!2637901))

(assert (=> d!656839 m!2637901))

(assert (=> b!2195173 d!656839))

(declare-fun d!656853 () Bool)

(declare-fun c!349561 () Bool)

(assert (=> d!656853 (= c!349561 (is-Node!8298 (c!349508 totalInput!923)))))

(declare-fun e!1402953 () Bool)

(assert (=> d!656853 (= (inv!34165 (c!349508 totalInput!923)) e!1402953)))

(declare-fun b!2195304 () Bool)

(declare-fun inv!34171 (Conc!8298) Bool)

(assert (=> b!2195304 (= e!1402953 (inv!34171 (c!349508 totalInput!923)))))

(declare-fun b!2195305 () Bool)

(declare-fun e!1402954 () Bool)

(assert (=> b!2195305 (= e!1402953 e!1402954)))

(declare-fun res!943722 () Bool)

(assert (=> b!2195305 (= res!943722 (not (is-Leaf!12147 (c!349508 totalInput!923))))))

(assert (=> b!2195305 (=> res!943722 e!1402954)))

(declare-fun b!2195306 () Bool)

(declare-fun inv!34172 (Conc!8298) Bool)

(assert (=> b!2195306 (= e!1402954 (inv!34172 (c!349508 totalInput!923)))))

(assert (= (and d!656853 c!349561) b!2195304))

(assert (= (and d!656853 (not c!349561)) b!2195305))

(assert (= (and b!2195305 (not res!943722)) b!2195306))

(declare-fun m!2637903 () Bool)

(assert (=> b!2195304 m!2637903))

(declare-fun m!2637905 () Bool)

(assert (=> b!2195306 m!2637905))

(assert (=> b!2195165 d!656853))

(declare-fun d!656855 () Bool)

(declare-fun c!349564 () Bool)

(declare-fun isEmpty!14581 (List!25609) Bool)

(assert (=> d!656855 (= c!349564 (isEmpty!14581 lt!821018))))

(declare-fun e!1402957 () Bool)

(assert (=> d!656855 (= (matchZipper!258 lt!821021 lt!821018) e!1402957)))

(declare-fun b!2195311 () Bool)

(assert (=> b!2195311 (= e!1402957 (nullableZipper!442 lt!821021))))

(declare-fun b!2195312 () Bool)

(declare-fun head!4683 (List!25609) C!12470)

(declare-fun tail!3155 (List!25609) List!25609)

(assert (=> b!2195312 (= e!1402957 (matchZipper!258 (derivationStepZipper!236 lt!821021 (head!4683 lt!821018)) (tail!3155 lt!821018)))))

(assert (= (and d!656855 c!349564) b!2195311))

(assert (= (and d!656855 (not c!349564)) b!2195312))

(declare-fun m!2637907 () Bool)

(assert (=> d!656855 m!2637907))

(assert (=> b!2195311 m!2637757))

(declare-fun m!2637909 () Bool)

(assert (=> b!2195312 m!2637909))

(assert (=> b!2195312 m!2637909))

(declare-fun m!2637911 () Bool)

(assert (=> b!2195312 m!2637911))

(declare-fun m!2637913 () Bool)

(assert (=> b!2195312 m!2637913))

(assert (=> b!2195312 m!2637911))

(assert (=> b!2195312 m!2637913))

(declare-fun m!2637915 () Bool)

(assert (=> b!2195312 m!2637915))

(assert (=> b!2195164 d!656855))

(declare-fun d!656857 () Bool)

(declare-fun e!1402966 () Bool)

(assert (=> d!656857 e!1402966))

(declare-fun res!943725 () Bool)

(assert (=> d!656857 (=> (not res!943725) (not e!1402966))))

(declare-fun lt!821105 () List!25609)

(declare-fun content!3468 (List!25609) (Set C!12470))

(assert (=> d!656857 (= res!943725 (set.subset (content!3468 lt!821105) (content!3468 (drop!1360 lt!821011 (+ 1 from!1114)))))))

(declare-fun e!1402967 () List!25609)

(assert (=> d!656857 (= lt!821105 e!1402967)))

(declare-fun c!349571 () Bool)

(assert (=> d!656857 (= c!349571 (or (is-Nil!25525 (drop!1360 lt!821011 (+ 1 from!1114))) (<= lt!821019 0)))))

(assert (=> d!656857 (= (take!350 (drop!1360 lt!821011 (+ 1 from!1114)) lt!821019) lt!821105)))

(declare-fun b!2195327 () Bool)

(assert (=> b!2195327 (= e!1402967 (Cons!25525 (h!30926 (drop!1360 lt!821011 (+ 1 from!1114))) (take!350 (t!198215 (drop!1360 lt!821011 (+ 1 from!1114))) (- lt!821019 1))))))

(declare-fun b!2195328 () Bool)

(declare-fun e!1402968 () Int)

(assert (=> b!2195328 (= e!1402968 0)))

(declare-fun b!2195329 () Bool)

(declare-fun e!1402969 () Int)

(assert (=> b!2195329 (= e!1402969 lt!821019)))

(declare-fun b!2195330 () Bool)

(declare-fun size!19906 (List!25609) Int)

(assert (=> b!2195330 (= e!1402966 (= (size!19906 lt!821105) e!1402968))))

(declare-fun c!349573 () Bool)

(assert (=> b!2195330 (= c!349573 (<= lt!821019 0))))

(declare-fun b!2195331 () Bool)

(assert (=> b!2195331 (= e!1402969 (size!19906 (drop!1360 lt!821011 (+ 1 from!1114))))))

(declare-fun b!2195332 () Bool)

(assert (=> b!2195332 (= e!1402968 e!1402969)))

(declare-fun c!349572 () Bool)

(assert (=> b!2195332 (= c!349572 (>= lt!821019 (size!19906 (drop!1360 lt!821011 (+ 1 from!1114)))))))

(declare-fun b!2195333 () Bool)

(assert (=> b!2195333 (= e!1402967 Nil!25525)))

(assert (= (and d!656857 c!349571) b!2195333))

(assert (= (and d!656857 (not c!349571)) b!2195327))

(assert (= (and d!656857 res!943725) b!2195330))

(assert (= (and b!2195330 c!349573) b!2195328))

(assert (= (and b!2195330 (not c!349573)) b!2195332))

(assert (= (and b!2195332 c!349572) b!2195331))

(assert (= (and b!2195332 (not c!349572)) b!2195329))

(declare-fun m!2637917 () Bool)

(assert (=> b!2195327 m!2637917))

(declare-fun m!2637919 () Bool)

(assert (=> d!656857 m!2637919))

(assert (=> d!656857 m!2637745))

(declare-fun m!2637921 () Bool)

(assert (=> d!656857 m!2637921))

(declare-fun m!2637923 () Bool)

(assert (=> b!2195330 m!2637923))

(assert (=> b!2195331 m!2637745))

(declare-fun m!2637925 () Bool)

(assert (=> b!2195331 m!2637925))

(assert (=> b!2195332 m!2637745))

(assert (=> b!2195332 m!2637925))

(assert (=> b!2195164 d!656857))

(declare-fun b!2195352 () Bool)

(declare-fun e!1402984 () Bool)

(declare-fun lt!821108 () List!25609)

(declare-fun e!1402980 () Int)

(assert (=> b!2195352 (= e!1402984 (= (size!19906 lt!821108) e!1402980))))

(declare-fun c!349585 () Bool)

(assert (=> b!2195352 (= c!349585 (<= (+ 1 from!1114) 0))))

(declare-fun d!656859 () Bool)

(assert (=> d!656859 e!1402984))

(declare-fun res!943728 () Bool)

(assert (=> d!656859 (=> (not res!943728) (not e!1402984))))

(assert (=> d!656859 (= res!943728 (set.subset (content!3468 lt!821108) (content!3468 lt!821011)))))

(declare-fun e!1402982 () List!25609)

(assert (=> d!656859 (= lt!821108 e!1402982)))

(declare-fun c!349582 () Bool)

(assert (=> d!656859 (= c!349582 (is-Nil!25525 lt!821011))))

(assert (=> d!656859 (= (drop!1360 lt!821011 (+ 1 from!1114)) lt!821108)))

(declare-fun b!2195353 () Bool)

(declare-fun e!1402981 () List!25609)

(assert (=> b!2195353 (= e!1402981 lt!821011)))

(declare-fun b!2195354 () Bool)

(assert (=> b!2195354 (= e!1402982 e!1402981)))

(declare-fun c!349583 () Bool)

(assert (=> b!2195354 (= c!349583 (<= (+ 1 from!1114) 0))))

(declare-fun b!2195355 () Bool)

(assert (=> b!2195355 (= e!1402982 Nil!25525)))

(declare-fun b!2195356 () Bool)

(declare-fun e!1402983 () Int)

(declare-fun call!131959 () Int)

(assert (=> b!2195356 (= e!1402983 (- call!131959 (+ 1 from!1114)))))

(declare-fun bm!131954 () Bool)

(assert (=> bm!131954 (= call!131959 (size!19906 lt!821011))))

(declare-fun b!2195357 () Bool)

(assert (=> b!2195357 (= e!1402981 (drop!1360 (t!198215 lt!821011) (- (+ 1 from!1114) 1)))))

(declare-fun b!2195358 () Bool)

(assert (=> b!2195358 (= e!1402983 0)))

(declare-fun b!2195359 () Bool)

(assert (=> b!2195359 (= e!1402980 call!131959)))

(declare-fun b!2195360 () Bool)

(assert (=> b!2195360 (= e!1402980 e!1402983)))

(declare-fun c!349584 () Bool)

(assert (=> b!2195360 (= c!349584 (>= (+ 1 from!1114) call!131959))))

(assert (= (and d!656859 c!349582) b!2195355))

(assert (= (and d!656859 (not c!349582)) b!2195354))

(assert (= (and b!2195354 c!349583) b!2195353))

(assert (= (and b!2195354 (not c!349583)) b!2195357))

(assert (= (and d!656859 res!943728) b!2195352))

(assert (= (and b!2195352 c!349585) b!2195359))

(assert (= (and b!2195352 (not c!349585)) b!2195360))

(assert (= (and b!2195360 c!349584) b!2195358))

(assert (= (and b!2195360 (not c!349584)) b!2195356))

(assert (= (or b!2195359 b!2195360 b!2195356) bm!131954))

(declare-fun m!2637927 () Bool)

(assert (=> b!2195352 m!2637927))

(declare-fun m!2637929 () Bool)

(assert (=> d!656859 m!2637929))

(declare-fun m!2637931 () Bool)

(assert (=> d!656859 m!2637931))

(declare-fun m!2637933 () Bool)

(assert (=> bm!131954 m!2637933))

(declare-fun m!2637935 () Bool)

(assert (=> b!2195357 m!2637935))

(assert (=> b!2195164 d!656859))

(declare-fun d!656861 () Bool)

(declare-fun list!9820 (Conc!8298) List!25609)

(assert (=> d!656861 (= (list!9818 totalInput!923) (list!9820 (c!349508 totalInput!923)))))

(declare-fun bs!448905 () Bool)

(assert (= bs!448905 d!656861))

(declare-fun m!2637937 () Bool)

(assert (=> bs!448905 m!2637937))

(assert (=> b!2195164 d!656861))

(declare-fun d!656863 () Bool)

(declare-fun lambda!82547 () Int)

(declare-fun forall!5221 (List!25608 Int) Bool)

(assert (=> d!656863 (= (inv!34167 setElem!18749) (forall!5221 (exprs!2232 setElem!18749) lambda!82547))))

(declare-fun bs!448906 () Bool)

(assert (= bs!448906 d!656863))

(declare-fun m!2637939 () Bool)

(assert (=> bs!448906 m!2637939))

(assert (=> setNonEmpty!18749 d!656863))

(declare-fun d!656865 () Bool)

(declare-fun e!1402985 () Bool)

(assert (=> d!656865 e!1402985))

(declare-fun res!943729 () Bool)

(assert (=> d!656865 (=> (not res!943729) (not e!1402985))))

(declare-fun lt!821109 () List!25609)

(assert (=> d!656865 (= res!943729 (set.subset (content!3468 lt!821109) (content!3468 (drop!1360 lt!821011 from!1114))))))

(declare-fun e!1402986 () List!25609)

(assert (=> d!656865 (= lt!821109 e!1402986)))

(declare-fun c!349586 () Bool)

(assert (=> d!656865 (= c!349586 (or (is-Nil!25525 (drop!1360 lt!821011 from!1114)) (<= (+ 2 lt!821014) 0)))))

(assert (=> d!656865 (= (take!350 (drop!1360 lt!821011 from!1114) (+ 2 lt!821014)) lt!821109)))

(declare-fun b!2195361 () Bool)

(assert (=> b!2195361 (= e!1402986 (Cons!25525 (h!30926 (drop!1360 lt!821011 from!1114)) (take!350 (t!198215 (drop!1360 lt!821011 from!1114)) (- (+ 2 lt!821014) 1))))))

(declare-fun b!2195362 () Bool)

(declare-fun e!1402987 () Int)

(assert (=> b!2195362 (= e!1402987 0)))

(declare-fun b!2195363 () Bool)

(declare-fun e!1402988 () Int)

(assert (=> b!2195363 (= e!1402988 (+ 2 lt!821014))))

(declare-fun b!2195364 () Bool)

(assert (=> b!2195364 (= e!1402985 (= (size!19906 lt!821109) e!1402987))))

(declare-fun c!349588 () Bool)

(assert (=> b!2195364 (= c!349588 (<= (+ 2 lt!821014) 0))))

(declare-fun b!2195365 () Bool)

(assert (=> b!2195365 (= e!1402988 (size!19906 (drop!1360 lt!821011 from!1114)))))

(declare-fun b!2195366 () Bool)

(assert (=> b!2195366 (= e!1402987 e!1402988)))

(declare-fun c!349587 () Bool)

(assert (=> b!2195366 (= c!349587 (>= (+ 2 lt!821014) (size!19906 (drop!1360 lt!821011 from!1114))))))

(declare-fun b!2195367 () Bool)

(assert (=> b!2195367 (= e!1402986 Nil!25525)))

(assert (= (and d!656865 c!349586) b!2195367))

(assert (= (and d!656865 (not c!349586)) b!2195361))

(assert (= (and d!656865 res!943729) b!2195364))

(assert (= (and b!2195364 c!349588) b!2195362))

(assert (= (and b!2195364 (not c!349588)) b!2195366))

(assert (= (and b!2195366 c!349587) b!2195365))

(assert (= (and b!2195366 (not c!349587)) b!2195363))

(declare-fun m!2637941 () Bool)

(assert (=> b!2195361 m!2637941))

(declare-fun m!2637943 () Bool)

(assert (=> d!656865 m!2637943))

(assert (=> d!656865 m!2637763))

(declare-fun m!2637945 () Bool)

(assert (=> d!656865 m!2637945))

(declare-fun m!2637947 () Bool)

(assert (=> b!2195364 m!2637947))

(assert (=> b!2195365 m!2637763))

(declare-fun m!2637949 () Bool)

(assert (=> b!2195365 m!2637949))

(assert (=> b!2195366 m!2637763))

(assert (=> b!2195366 m!2637949))

(assert (=> b!2195161 d!656865))

(declare-fun b!2195368 () Bool)

(declare-fun e!1402993 () Bool)

(declare-fun lt!821110 () List!25609)

(declare-fun e!1402989 () Int)

(assert (=> b!2195368 (= e!1402993 (= (size!19906 lt!821110) e!1402989))))

(declare-fun c!349592 () Bool)

(assert (=> b!2195368 (= c!349592 (<= from!1114 0))))

(declare-fun d!656867 () Bool)

(assert (=> d!656867 e!1402993))

(declare-fun res!943730 () Bool)

(assert (=> d!656867 (=> (not res!943730) (not e!1402993))))

(assert (=> d!656867 (= res!943730 (set.subset (content!3468 lt!821110) (content!3468 lt!821011)))))

(declare-fun e!1402991 () List!25609)

(assert (=> d!656867 (= lt!821110 e!1402991)))

(declare-fun c!349589 () Bool)

(assert (=> d!656867 (= c!349589 (is-Nil!25525 lt!821011))))

(assert (=> d!656867 (= (drop!1360 lt!821011 from!1114) lt!821110)))

(declare-fun b!2195369 () Bool)

(declare-fun e!1402990 () List!25609)

(assert (=> b!2195369 (= e!1402990 lt!821011)))

(declare-fun b!2195370 () Bool)

(assert (=> b!2195370 (= e!1402991 e!1402990)))

(declare-fun c!349590 () Bool)

(assert (=> b!2195370 (= c!349590 (<= from!1114 0))))

(declare-fun b!2195371 () Bool)

(assert (=> b!2195371 (= e!1402991 Nil!25525)))

(declare-fun b!2195372 () Bool)

(declare-fun e!1402992 () Int)

(declare-fun call!131960 () Int)

(assert (=> b!2195372 (= e!1402992 (- call!131960 from!1114))))

(declare-fun bm!131955 () Bool)

(assert (=> bm!131955 (= call!131960 (size!19906 lt!821011))))

(declare-fun b!2195373 () Bool)

(assert (=> b!2195373 (= e!1402990 (drop!1360 (t!198215 lt!821011) (- from!1114 1)))))

(declare-fun b!2195374 () Bool)

(assert (=> b!2195374 (= e!1402992 0)))

(declare-fun b!2195375 () Bool)

(assert (=> b!2195375 (= e!1402989 call!131960)))

(declare-fun b!2195376 () Bool)

(assert (=> b!2195376 (= e!1402989 e!1402992)))

(declare-fun c!349591 () Bool)

(assert (=> b!2195376 (= c!349591 (>= from!1114 call!131960))))

(assert (= (and d!656867 c!349589) b!2195371))

(assert (= (and d!656867 (not c!349589)) b!2195370))

(assert (= (and b!2195370 c!349590) b!2195369))

(assert (= (and b!2195370 (not c!349590)) b!2195373))

(assert (= (and d!656867 res!943730) b!2195368))

(assert (= (and b!2195368 c!349592) b!2195375))

(assert (= (and b!2195368 (not c!349592)) b!2195376))

(assert (= (and b!2195376 c!349591) b!2195374))

(assert (= (and b!2195376 (not c!349591)) b!2195372))

(assert (= (or b!2195375 b!2195376 b!2195372) bm!131955))

(declare-fun m!2637951 () Bool)

(assert (=> b!2195368 m!2637951))

(declare-fun m!2637953 () Bool)

(assert (=> d!656867 m!2637953))

(assert (=> d!656867 m!2637931))

(assert (=> bm!131955 m!2637933))

(declare-fun m!2637955 () Bool)

(assert (=> b!2195373 m!2637955))

(assert (=> b!2195161 d!656867))

(declare-fun d!656869 () Bool)

(declare-fun lt!821113 () C!12470)

(declare-fun contains!4280 (List!25609 C!12470) Bool)

(assert (=> d!656869 (contains!4280 lt!821011 lt!821113)))

(declare-fun e!1402999 () C!12470)

(assert (=> d!656869 (= lt!821113 e!1402999)))

(declare-fun c!349595 () Bool)

(assert (=> d!656869 (= c!349595 (= from!1114 0))))

(declare-fun e!1402998 () Bool)

(assert (=> d!656869 e!1402998))

(declare-fun res!943733 () Bool)

(assert (=> d!656869 (=> (not res!943733) (not e!1402998))))

(assert (=> d!656869 (= res!943733 (<= 0 from!1114))))

(assert (=> d!656869 (= (apply!6226 lt!821011 from!1114) lt!821113)))

(declare-fun b!2195383 () Bool)

(assert (=> b!2195383 (= e!1402998 (< from!1114 (size!19906 lt!821011)))))

(declare-fun b!2195384 () Bool)

(assert (=> b!2195384 (= e!1402999 (head!4683 lt!821011))))

(declare-fun b!2195385 () Bool)

(assert (=> b!2195385 (= e!1402999 (apply!6226 (tail!3155 lt!821011) (- from!1114 1)))))

(assert (= (and d!656869 res!943733) b!2195383))

(assert (= (and d!656869 c!349595) b!2195384))

(assert (= (and d!656869 (not c!349595)) b!2195385))

(declare-fun m!2637957 () Bool)

(assert (=> d!656869 m!2637957))

(assert (=> b!2195383 m!2637933))

(declare-fun m!2637959 () Bool)

(assert (=> b!2195384 m!2637959))

(declare-fun m!2637961 () Bool)

(assert (=> b!2195385 m!2637961))

(assert (=> b!2195385 m!2637961))

(declare-fun m!2637963 () Bool)

(assert (=> b!2195385 m!2637963))

(assert (=> b!2195161 d!656869))

(declare-fun d!656871 () Bool)

(assert (=> d!656871 (= (Cons!25525 (apply!6226 lt!821011 from!1114) (take!350 (drop!1360 lt!821011 (+ from!1114 1)) lt!821019)) (take!350 (drop!1360 lt!821011 from!1114) (+ lt!821019 1)))))

(declare-fun lt!821116 () Unit!38651)

(declare-fun choose!12996 (List!25609 Int Int) Unit!38651)

(assert (=> d!656871 (= lt!821116 (choose!12996 lt!821011 from!1114 lt!821019))))

(declare-fun e!1403002 () Bool)

(assert (=> d!656871 e!1403002))

(declare-fun res!943736 () Bool)

(assert (=> d!656871 (=> (not res!943736) (not e!1403002))))

(assert (=> d!656871 (= res!943736 (>= from!1114 0))))

(assert (=> d!656871 (= (lemmaDropTakeAddOneLeft!15 lt!821011 from!1114 lt!821019) lt!821116)))

(declare-fun b!2195388 () Bool)

(assert (=> b!2195388 (= e!1403002 (< from!1114 (size!19906 lt!821011)))))

(assert (= (and d!656871 res!943736) b!2195388))

(assert (=> d!656871 m!2637763))

(declare-fun m!2637965 () Bool)

(assert (=> d!656871 m!2637965))

(declare-fun m!2637967 () Bool)

(assert (=> d!656871 m!2637967))

(assert (=> d!656871 m!2637767))

(assert (=> d!656871 m!2637763))

(declare-fun m!2637969 () Bool)

(assert (=> d!656871 m!2637969))

(assert (=> d!656871 m!2637967))

(declare-fun m!2637971 () Bool)

(assert (=> d!656871 m!2637971))

(assert (=> b!2195388 m!2637933))

(assert (=> b!2195161 d!656871))

(declare-fun bs!448907 () Bool)

(declare-fun d!656873 () Bool)

(assert (= bs!448907 (and d!656873 d!656839)))

(declare-fun lambda!82550 () Int)

(assert (=> bs!448907 (not (= lambda!82550 lambda!82542))))

(declare-fun bs!448908 () Bool)

(assert (= bs!448908 (and d!656873 b!2195296)))

(assert (=> bs!448908 (not (= lambda!82550 lambda!82543))))

(declare-fun bs!448909 () Bool)

(assert (= bs!448909 (and d!656873 b!2195297)))

(assert (=> bs!448909 (not (= lambda!82550 lambda!82544))))

(declare-fun exists!808 ((Set Context!3464) Int) Bool)

(assert (=> d!656873 (= (nullableZipper!442 z!3955) (exists!808 z!3955 lambda!82550))))

(declare-fun bs!448910 () Bool)

(assert (= bs!448910 d!656873))

(declare-fun m!2637973 () Bool)

(assert (=> bs!448910 m!2637973))

(assert (=> b!2195160 d!656873))

(declare-fun d!656875 () Bool)

(declare-fun lt!821119 () Int)

(assert (=> d!656875 (= lt!821119 (size!19906 (list!9818 totalInput!923)))))

(declare-fun size!19907 (Conc!8298) Int)

(assert (=> d!656875 (= lt!821119 (size!19907 (c!349508 totalInput!923)))))

(assert (=> d!656875 (= (size!19904 totalInput!923) lt!821119)))

(declare-fun bs!448911 () Bool)

(assert (= bs!448911 d!656875))

(assert (=> bs!448911 m!2637733))

(assert (=> bs!448911 m!2637733))

(declare-fun m!2637975 () Bool)

(assert (=> bs!448911 m!2637975))

(declare-fun m!2637977 () Bool)

(assert (=> bs!448911 m!2637977))

(assert (=> b!2195172 d!656875))

(declare-fun bs!448912 () Bool)

(declare-fun d!656877 () Bool)

(assert (= bs!448912 (and d!656877 d!656839)))

(declare-fun lambda!82551 () Int)

(assert (=> bs!448912 (not (= lambda!82551 lambda!82542))))

(declare-fun bs!448913 () Bool)

(assert (= bs!448913 (and d!656877 b!2195296)))

(assert (=> bs!448913 (not (= lambda!82551 lambda!82543))))

(declare-fun bs!448914 () Bool)

(assert (= bs!448914 (and d!656877 b!2195297)))

(assert (=> bs!448914 (not (= lambda!82551 lambda!82544))))

(declare-fun bs!448915 () Bool)

(assert (= bs!448915 (and d!656877 d!656873)))

(assert (=> bs!448915 (= lambda!82551 lambda!82550)))

(assert (=> d!656877 (= (nullableZipper!442 lt!821021) (exists!808 lt!821021 lambda!82551))))

(declare-fun bs!448916 () Bool)

(assert (= bs!448916 d!656877))

(declare-fun m!2637979 () Bool)

(assert (=> bs!448916 m!2637979))

(assert (=> b!2195169 d!656877))

(declare-fun d!656879 () Bool)

(declare-fun lt!821122 () C!12470)

(assert (=> d!656879 (= lt!821122 (apply!6226 (list!9818 totalInput!923) from!1114))))

(declare-fun apply!6230 (Conc!8298 Int) C!12470)

(assert (=> d!656879 (= lt!821122 (apply!6230 (c!349508 totalInput!923) from!1114))))

(declare-fun e!1403005 () Bool)

(assert (=> d!656879 e!1403005))

(declare-fun res!943739 () Bool)

(assert (=> d!656879 (=> (not res!943739) (not e!1403005))))

(assert (=> d!656879 (= res!943739 (<= 0 from!1114))))

(assert (=> d!656879 (= (apply!6227 totalInput!923 from!1114) lt!821122)))

(declare-fun b!2195391 () Bool)

(assert (=> b!2195391 (= e!1403005 (< from!1114 (size!19904 totalInput!923)))))

(assert (= (and d!656879 res!943739) b!2195391))

(assert (=> d!656879 m!2637733))

(assert (=> d!656879 m!2637733))

(declare-fun m!2637981 () Bool)

(assert (=> d!656879 m!2637981))

(declare-fun m!2637983 () Bool)

(assert (=> d!656879 m!2637983))

(assert (=> b!2195391 m!2637751))

(assert (=> b!2195169 d!656879))

(declare-fun b!2195404 () Bool)

(declare-fun e!1403013 () Int)

(assert (=> b!2195404 (= e!1403013 lt!821012)))

(declare-fun b!2195405 () Bool)

(declare-fun e!1403015 () Int)

(assert (=> b!2195405 (= e!1403015 lt!821012)))

(declare-fun d!656881 () Bool)

(declare-fun lt!821127 () Int)

(assert (=> d!656881 (and (>= lt!821127 (- 1)) (< lt!821127 lt!821022) (>= lt!821127 lt!821012) (or (= lt!821127 lt!821012) (>= lt!821127 (+ 1 from!1114))))))

(assert (=> d!656881 (= lt!821127 e!1403013)))

(declare-fun c!349603 () Bool)

(declare-fun e!1403014 () Bool)

(assert (=> d!656881 (= c!349603 e!1403014)))

(declare-fun res!943742 () Bool)

(assert (=> d!656881 (=> res!943742 e!1403014)))

(assert (=> d!656881 (= res!943742 (= (+ 1 from!1114) lt!821022))))

(assert (=> d!656881 (and (>= (+ 1 from!1114) 0) (<= (+ 1 from!1114) lt!821022))))

(assert (=> d!656881 (= (furthestNullablePosition!332 lt!821021 (+ 1 from!1114) totalInput!923 lt!821022 lt!821012) lt!821127)))

(declare-fun b!2195406 () Bool)

(assert (=> b!2195406 (= e!1403015 (+ 1 from!1114))))

(declare-fun b!2195407 () Bool)

(assert (=> b!2195407 (= e!1403014 (lostCauseZipper!280 lt!821021))))

(declare-fun lt!821128 () (Set Context!3464))

(declare-fun b!2195408 () Bool)

(assert (=> b!2195408 (= e!1403013 (furthestNullablePosition!332 lt!821128 (+ 1 from!1114 1) totalInput!923 lt!821022 e!1403015))))

(assert (=> b!2195408 (= lt!821128 (derivationStepZipper!236 lt!821021 (apply!6227 totalInput!923 (+ 1 from!1114))))))

(declare-fun c!349604 () Bool)

(assert (=> b!2195408 (= c!349604 (nullableZipper!442 lt!821128))))

(assert (= (and d!656881 (not res!943742)) b!2195407))

(assert (= (and d!656881 c!349603) b!2195404))

(assert (= (and d!656881 (not c!349603)) b!2195408))

(assert (= (and b!2195408 c!349604) b!2195406))

(assert (= (and b!2195408 (not c!349604)) b!2195405))

(declare-fun m!2637999 () Bool)

(assert (=> b!2195407 m!2637999))

(declare-fun m!2638001 () Bool)

(assert (=> b!2195408 m!2638001))

(declare-fun m!2638003 () Bool)

(assert (=> b!2195408 m!2638003))

(assert (=> b!2195408 m!2638003))

(declare-fun m!2638005 () Bool)

(assert (=> b!2195408 m!2638005))

(declare-fun m!2638007 () Bool)

(assert (=> b!2195408 m!2638007))

(assert (=> b!2195169 d!656881))

(declare-fun d!656889 () Bool)

(assert (=> d!656889 true))

(declare-fun lambda!82557 () Int)

(declare-fun flatMap!149 ((Set Context!3464) Int) (Set Context!3464))

(assert (=> d!656889 (= (derivationStepZipper!236 z!3955 lt!821016) (flatMap!149 z!3955 lambda!82557))))

(declare-fun bs!448920 () Bool)

(assert (= bs!448920 d!656889))

(declare-fun m!2638011 () Bool)

(assert (=> bs!448920 m!2638011))

(assert (=> b!2195169 d!656889))

(declare-fun b!2195411 () Bool)

(declare-fun e!1403016 () Int)

(assert (=> b!2195411 (= e!1403016 lastNullablePos!193)))

(declare-fun b!2195412 () Bool)

(declare-fun e!1403018 () Int)

(assert (=> b!2195412 (= e!1403018 lastNullablePos!193)))

(declare-fun lt!821132 () Int)

(declare-fun d!656893 () Bool)

(assert (=> d!656893 (and (>= lt!821132 (- 1)) (< lt!821132 lt!821022) (>= lt!821132 lastNullablePos!193) (or (= lt!821132 lastNullablePos!193) (>= lt!821132 from!1114)))))

(assert (=> d!656893 (= lt!821132 e!1403016)))

(declare-fun c!349607 () Bool)

(declare-fun e!1403017 () Bool)

(assert (=> d!656893 (= c!349607 e!1403017)))

(declare-fun res!943743 () Bool)

(assert (=> d!656893 (=> res!943743 e!1403017)))

(assert (=> d!656893 (= res!943743 (= from!1114 lt!821022))))

(assert (=> d!656893 (and (>= from!1114 0) (<= from!1114 lt!821022))))

(assert (=> d!656893 (= (furthestNullablePosition!332 z!3955 from!1114 totalInput!923 lt!821022 lastNullablePos!193) lt!821132)))

(declare-fun b!2195413 () Bool)

(assert (=> b!2195413 (= e!1403018 from!1114)))

(declare-fun b!2195414 () Bool)

(assert (=> b!2195414 (= e!1403017 (lostCauseZipper!280 z!3955))))

(declare-fun lt!821133 () (Set Context!3464))

(declare-fun b!2195415 () Bool)

(assert (=> b!2195415 (= e!1403016 (furthestNullablePosition!332 lt!821133 (+ from!1114 1) totalInput!923 lt!821022 e!1403018))))

(assert (=> b!2195415 (= lt!821133 (derivationStepZipper!236 z!3955 (apply!6227 totalInput!923 from!1114)))))

(declare-fun c!349608 () Bool)

(assert (=> b!2195415 (= c!349608 (nullableZipper!442 lt!821133))))

(assert (= (and d!656893 (not res!943743)) b!2195414))

(assert (= (and d!656893 c!349607) b!2195411))

(assert (= (and d!656893 (not c!349607)) b!2195415))

(assert (= (and b!2195415 c!349608) b!2195413))

(assert (= (and b!2195415 (not c!349608)) b!2195412))

(assert (=> b!2195414 m!2637777))

(declare-fun m!2638013 () Bool)

(assert (=> b!2195415 m!2638013))

(assert (=> b!2195415 m!2637759))

(assert (=> b!2195415 m!2637759))

(declare-fun m!2638015 () Bool)

(assert (=> b!2195415 m!2638015))

(declare-fun m!2638017 () Bool)

(assert (=> b!2195415 m!2638017))

(assert (=> b!2195169 d!656893))

(declare-fun d!656895 () Bool)

(declare-fun isBalanced!2560 (Conc!8298) Bool)

(assert (=> d!656895 (= (inv!34166 totalInput!923) (isBalanced!2560 (c!349508 totalInput!923)))))

(declare-fun bs!448921 () Bool)

(assert (= bs!448921 d!656895))

(declare-fun m!2638019 () Bool)

(assert (=> bs!448921 m!2638019))

(assert (=> start!213032 d!656895))

(declare-fun d!656897 () Bool)

(declare-fun c!349609 () Bool)

(assert (=> d!656897 (= c!349609 (isEmpty!14581 (take!350 (drop!1360 (list!9818 totalInput!923) (+ 1 from!1114)) lt!821019)))))

(declare-fun e!1403019 () Bool)

(assert (=> d!656897 (= (matchZipper!258 lt!821021 (take!350 (drop!1360 (list!9818 totalInput!923) (+ 1 from!1114)) lt!821019)) e!1403019)))

(declare-fun b!2195416 () Bool)

(assert (=> b!2195416 (= e!1403019 (nullableZipper!442 lt!821021))))

(declare-fun b!2195417 () Bool)

(assert (=> b!2195417 (= e!1403019 (matchZipper!258 (derivationStepZipper!236 lt!821021 (head!4683 (take!350 (drop!1360 (list!9818 totalInput!923) (+ 1 from!1114)) lt!821019))) (tail!3155 (take!350 (drop!1360 (list!9818 totalInput!923) (+ 1 from!1114)) lt!821019))))))

(assert (= (and d!656897 c!349609) b!2195416))

(assert (= (and d!656897 (not c!349609)) b!2195417))

(assert (=> d!656897 m!2637737))

(declare-fun m!2638021 () Bool)

(assert (=> d!656897 m!2638021))

(assert (=> b!2195416 m!2637757))

(assert (=> b!2195417 m!2637737))

(declare-fun m!2638025 () Bool)

(assert (=> b!2195417 m!2638025))

(assert (=> b!2195417 m!2638025))

(declare-fun m!2638027 () Bool)

(assert (=> b!2195417 m!2638027))

(assert (=> b!2195417 m!2637737))

(declare-fun m!2638029 () Bool)

(assert (=> b!2195417 m!2638029))

(assert (=> b!2195417 m!2638027))

(assert (=> b!2195417 m!2638029))

(declare-fun m!2638031 () Bool)

(assert (=> b!2195417 m!2638031))

(assert (=> b!2195170 d!656897))

(declare-fun d!656901 () Bool)

(declare-fun e!1403020 () Bool)

(assert (=> d!656901 e!1403020))

(declare-fun res!943744 () Bool)

(assert (=> d!656901 (=> (not res!943744) (not e!1403020))))

(declare-fun lt!821134 () List!25609)

(assert (=> d!656901 (= res!943744 (set.subset (content!3468 lt!821134) (content!3468 (drop!1360 (list!9818 totalInput!923) (+ 1 from!1114)))))))

(declare-fun e!1403021 () List!25609)

(assert (=> d!656901 (= lt!821134 e!1403021)))

(declare-fun c!349610 () Bool)

(assert (=> d!656901 (= c!349610 (or (is-Nil!25525 (drop!1360 (list!9818 totalInput!923) (+ 1 from!1114))) (<= lt!821019 0)))))

(assert (=> d!656901 (= (take!350 (drop!1360 (list!9818 totalInput!923) (+ 1 from!1114)) lt!821019) lt!821134)))

(declare-fun b!2195418 () Bool)

(assert (=> b!2195418 (= e!1403021 (Cons!25525 (h!30926 (drop!1360 (list!9818 totalInput!923) (+ 1 from!1114))) (take!350 (t!198215 (drop!1360 (list!9818 totalInput!923) (+ 1 from!1114))) (- lt!821019 1))))))

(declare-fun b!2195419 () Bool)

(declare-fun e!1403022 () Int)

(assert (=> b!2195419 (= e!1403022 0)))

(declare-fun b!2195420 () Bool)

(declare-fun e!1403023 () Int)

(assert (=> b!2195420 (= e!1403023 lt!821019)))

(declare-fun b!2195421 () Bool)

(assert (=> b!2195421 (= e!1403020 (= (size!19906 lt!821134) e!1403022))))

(declare-fun c!349612 () Bool)

(assert (=> b!2195421 (= c!349612 (<= lt!821019 0))))

(declare-fun b!2195422 () Bool)

(assert (=> b!2195422 (= e!1403023 (size!19906 (drop!1360 (list!9818 totalInput!923) (+ 1 from!1114))))))

(declare-fun b!2195423 () Bool)

(assert (=> b!2195423 (= e!1403022 e!1403023)))

(declare-fun c!349611 () Bool)

(assert (=> b!2195423 (= c!349611 (>= lt!821019 (size!19906 (drop!1360 (list!9818 totalInput!923) (+ 1 from!1114)))))))

(declare-fun b!2195424 () Bool)

(assert (=> b!2195424 (= e!1403021 Nil!25525)))

(assert (= (and d!656901 c!349610) b!2195424))

(assert (= (and d!656901 (not c!349610)) b!2195418))

(assert (= (and d!656901 res!943744) b!2195421))

(assert (= (and b!2195421 c!349612) b!2195419))

(assert (= (and b!2195421 (not c!349612)) b!2195423))

(assert (= (and b!2195423 c!349611) b!2195422))

(assert (= (and b!2195423 (not c!349611)) b!2195420))

(declare-fun m!2638035 () Bool)

(assert (=> b!2195418 m!2638035))

(declare-fun m!2638037 () Bool)

(assert (=> d!656901 m!2638037))

(assert (=> d!656901 m!2637735))

(declare-fun m!2638039 () Bool)

(assert (=> d!656901 m!2638039))

(declare-fun m!2638041 () Bool)

(assert (=> b!2195421 m!2638041))

(assert (=> b!2195422 m!2637735))

(declare-fun m!2638043 () Bool)

(assert (=> b!2195422 m!2638043))

(assert (=> b!2195423 m!2637735))

(assert (=> b!2195423 m!2638043))

(assert (=> b!2195170 d!656901))

(declare-fun b!2195425 () Bool)

(declare-fun e!1403028 () Bool)

(declare-fun lt!821135 () List!25609)

(declare-fun e!1403024 () Int)

(assert (=> b!2195425 (= e!1403028 (= (size!19906 lt!821135) e!1403024))))

(declare-fun c!349616 () Bool)

(assert (=> b!2195425 (= c!349616 (<= (+ 1 from!1114) 0))))

(declare-fun d!656905 () Bool)

(assert (=> d!656905 e!1403028))

(declare-fun res!943745 () Bool)

(assert (=> d!656905 (=> (not res!943745) (not e!1403028))))

(assert (=> d!656905 (= res!943745 (set.subset (content!3468 lt!821135) (content!3468 (list!9818 totalInput!923))))))

(declare-fun e!1403026 () List!25609)

(assert (=> d!656905 (= lt!821135 e!1403026)))

(declare-fun c!349613 () Bool)

(assert (=> d!656905 (= c!349613 (is-Nil!25525 (list!9818 totalInput!923)))))

(assert (=> d!656905 (= (drop!1360 (list!9818 totalInput!923) (+ 1 from!1114)) lt!821135)))

(declare-fun b!2195426 () Bool)

(declare-fun e!1403025 () List!25609)

(assert (=> b!2195426 (= e!1403025 (list!9818 totalInput!923))))

(declare-fun b!2195427 () Bool)

(assert (=> b!2195427 (= e!1403026 e!1403025)))

(declare-fun c!349614 () Bool)

(assert (=> b!2195427 (= c!349614 (<= (+ 1 from!1114) 0))))

(declare-fun b!2195428 () Bool)

(assert (=> b!2195428 (= e!1403026 Nil!25525)))

(declare-fun b!2195429 () Bool)

(declare-fun e!1403027 () Int)

(declare-fun call!131961 () Int)

(assert (=> b!2195429 (= e!1403027 (- call!131961 (+ 1 from!1114)))))

(declare-fun bm!131956 () Bool)

(assert (=> bm!131956 (= call!131961 (size!19906 (list!9818 totalInput!923)))))

(declare-fun b!2195430 () Bool)

(assert (=> b!2195430 (= e!1403025 (drop!1360 (t!198215 (list!9818 totalInput!923)) (- (+ 1 from!1114) 1)))))

(declare-fun b!2195431 () Bool)

(assert (=> b!2195431 (= e!1403027 0)))

(declare-fun b!2195432 () Bool)

(assert (=> b!2195432 (= e!1403024 call!131961)))

(declare-fun b!2195433 () Bool)

(assert (=> b!2195433 (= e!1403024 e!1403027)))

(declare-fun c!349615 () Bool)

(assert (=> b!2195433 (= c!349615 (>= (+ 1 from!1114) call!131961))))

(assert (= (and d!656905 c!349613) b!2195428))

(assert (= (and d!656905 (not c!349613)) b!2195427))

(assert (= (and b!2195427 c!349614) b!2195426))

(assert (= (and b!2195427 (not c!349614)) b!2195430))

(assert (= (and d!656905 res!943745) b!2195425))

(assert (= (and b!2195425 c!349616) b!2195432))

(assert (= (and b!2195425 (not c!349616)) b!2195433))

(assert (= (and b!2195433 c!349615) b!2195431))

(assert (= (and b!2195433 (not c!349615)) b!2195429))

(assert (= (or b!2195432 b!2195433 b!2195429) bm!131956))

(declare-fun m!2638045 () Bool)

(assert (=> b!2195425 m!2638045))

(declare-fun m!2638047 () Bool)

(assert (=> d!656905 m!2638047))

(assert (=> d!656905 m!2637733))

(declare-fun m!2638049 () Bool)

(assert (=> d!656905 m!2638049))

(assert (=> bm!131956 m!2637733))

(assert (=> bm!131956 m!2637975))

(declare-fun m!2638051 () Bool)

(assert (=> b!2195430 m!2638051))

(assert (=> b!2195170 d!656905))

(assert (=> b!2195170 d!656861))

(declare-fun d!656907 () Bool)

(declare-fun e!1403037 () Bool)

(assert (=> d!656907 e!1403037))

(declare-fun res!943753 () Bool)

(assert (=> d!656907 (=> res!943753 e!1403037)))

(declare-fun lt!821144 () Int)

(assert (=> d!656907 (= res!943753 (<= lt!821144 0))))

(assert (=> d!656907 (= lt!821144 (+ (- (furthestNullablePosition!332 lt!821021 (+ 1 from!1114) totalInput!923 (size!19904 totalInput!923) lt!821012) (+ 1 from!1114)) 1))))

(declare-fun lt!821143 () Unit!38651)

(declare-fun choose!12997 ((Set Context!3464) Int BalanceConc!16358 Int) Unit!38651)

(assert (=> d!656907 (= lt!821143 (choose!12997 lt!821021 (+ 1 from!1114) totalInput!923 lt!821012))))

(declare-fun e!1403036 () Bool)

(assert (=> d!656907 e!1403036))

(declare-fun res!943754 () Bool)

(assert (=> d!656907 (=> (not res!943754) (not e!1403036))))

(assert (=> d!656907 (= res!943754 (>= (+ 1 from!1114) 0))))

(assert (=> d!656907 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!161 lt!821021 (+ 1 from!1114) totalInput!923 lt!821012) lt!821143)))

(declare-fun b!2195441 () Bool)

(assert (=> b!2195441 (= e!1403036 (<= (+ 1 from!1114) (size!19904 totalInput!923)))))

(declare-fun b!2195442 () Bool)

(assert (=> b!2195442 (= e!1403037 (matchZipper!258 lt!821021 (take!350 (drop!1360 (list!9818 totalInput!923) (+ 1 from!1114)) lt!821144)))))

(assert (= (and d!656907 res!943754) b!2195441))

(assert (= (and d!656907 (not res!943753)) b!2195442))

(assert (=> d!656907 m!2637751))

(assert (=> d!656907 m!2637751))

(declare-fun m!2638057 () Bool)

(assert (=> d!656907 m!2638057))

(declare-fun m!2638059 () Bool)

(assert (=> d!656907 m!2638059))

(assert (=> b!2195441 m!2637751))

(assert (=> b!2195442 m!2637733))

(assert (=> b!2195442 m!2637733))

(assert (=> b!2195442 m!2637735))

(assert (=> b!2195442 m!2637735))

(declare-fun m!2638061 () Bool)

(assert (=> b!2195442 m!2638061))

(assert (=> b!2195442 m!2638061))

(declare-fun m!2638063 () Bool)

(assert (=> b!2195442 m!2638063))

(assert (=> b!2195166 d!656907))

(declare-fun d!656911 () Bool)

(declare-fun c!349617 () Bool)

(assert (=> d!656911 (= c!349617 (isEmpty!14581 lt!821007))))

(declare-fun e!1403038 () Bool)

(assert (=> d!656911 (= (matchZipper!258 z!3955 lt!821007) e!1403038)))

(declare-fun b!2195443 () Bool)

(assert (=> b!2195443 (= e!1403038 (nullableZipper!442 z!3955))))

(declare-fun b!2195444 () Bool)

(assert (=> b!2195444 (= e!1403038 (matchZipper!258 (derivationStepZipper!236 z!3955 (head!4683 lt!821007)) (tail!3155 lt!821007)))))

(assert (= (and d!656911 c!349617) b!2195443))

(assert (= (and d!656911 (not c!349617)) b!2195444))

(declare-fun m!2638065 () Bool)

(assert (=> d!656911 m!2638065))

(assert (=> b!2195443 m!2637731))

(declare-fun m!2638067 () Bool)

(assert (=> b!2195444 m!2638067))

(assert (=> b!2195444 m!2638067))

(declare-fun m!2638069 () Bool)

(assert (=> b!2195444 m!2638069))

(declare-fun m!2638071 () Bool)

(assert (=> b!2195444 m!2638071))

(assert (=> b!2195444 m!2638069))

(assert (=> b!2195444 m!2638071))

(declare-fun m!2638073 () Bool)

(assert (=> b!2195444 m!2638073))

(assert (=> b!2195167 d!656911))

(declare-fun b!2195459 () Bool)

(declare-fun e!1403047 () Bool)

(declare-fun tp!683877 () Bool)

(declare-fun tp!683878 () Bool)

(assert (=> b!2195459 (= e!1403047 (and tp!683877 tp!683878))))

(assert (=> b!2195168 (= tp!683863 e!1403047)))

(assert (= (and b!2195168 (is-Cons!25524 (exprs!2232 setElem!18749))) b!2195459))

(declare-fun e!1403053 () Bool)

(declare-fun tp!683886 () Bool)

(declare-fun tp!683885 () Bool)

(declare-fun b!2195468 () Bool)

(assert (=> b!2195468 (= e!1403053 (and (inv!34165 (left!19594 (c!349508 totalInput!923))) tp!683885 (inv!34165 (right!19924 (c!349508 totalInput!923))) tp!683886))))

(declare-fun b!2195470 () Bool)

(declare-fun e!1403052 () Bool)

(declare-fun tp!683887 () Bool)

(assert (=> b!2195470 (= e!1403052 tp!683887)))

(declare-fun b!2195469 () Bool)

(declare-fun inv!34173 (IArray!16601) Bool)

(assert (=> b!2195469 (= e!1403053 (and (inv!34173 (xs!11240 (c!349508 totalInput!923))) e!1403052))))

(assert (=> b!2195165 (= tp!683862 (and (inv!34165 (c!349508 totalInput!923)) e!1403053))))

(assert (= (and b!2195165 (is-Node!8298 (c!349508 totalInput!923))) b!2195468))

(assert (= b!2195469 b!2195470))

(assert (= (and b!2195165 (is-Leaf!12147 (c!349508 totalInput!923))) b!2195469))

(declare-fun m!2638075 () Bool)

(assert (=> b!2195468 m!2638075))

(declare-fun m!2638077 () Bool)

(assert (=> b!2195468 m!2638077))

(declare-fun m!2638079 () Bool)

(assert (=> b!2195469 m!2638079))

(assert (=> b!2195165 m!2637771))

(declare-fun condSetEmpty!18755 () Bool)

(assert (=> setNonEmpty!18749 (= condSetEmpty!18755 (= setRest!18749 (as set.empty (Set Context!3464))))))

(declare-fun setRes!18755 () Bool)

(assert (=> setNonEmpty!18749 (= tp!683861 setRes!18755)))

(declare-fun setIsEmpty!18755 () Bool)

(assert (=> setIsEmpty!18755 setRes!18755))

(declare-fun e!1403062 () Bool)

(declare-fun setNonEmpty!18755 () Bool)

(declare-fun setElem!18755 () Context!3464)

(declare-fun tp!683892 () Bool)

(assert (=> setNonEmpty!18755 (= setRes!18755 (and tp!683892 (inv!34167 setElem!18755) e!1403062))))

(declare-fun setRest!18755 () (Set Context!3464))

(assert (=> setNonEmpty!18755 (= setRest!18749 (set.union (set.insert setElem!18755 (as set.empty (Set Context!3464))) setRest!18755))))

(declare-fun b!2195485 () Bool)

(declare-fun tp!683893 () Bool)

(assert (=> b!2195485 (= e!1403062 tp!683893)))

(assert (= (and setNonEmpty!18749 condSetEmpty!18755) setIsEmpty!18755))

(assert (= (and setNonEmpty!18749 (not condSetEmpty!18755)) setNonEmpty!18755))

(assert (= setNonEmpty!18755 b!2195485))

(declare-fun m!2638091 () Bool)

(assert (=> setNonEmpty!18755 m!2638091))

(push 1)

(assert (not d!656865))

(assert (not b!2195296))

(assert (not d!656839))

(assert (not d!656857))

(assert (not d!656871))

(assert (not d!656861))

(assert (not d!656867))

(assert (not d!656911))

(assert (not b!2195430))

(assert (not b!2195421))

(assert (not b!2195469))

(assert (not b!2195306))

(assert (not b!2195373))

(assert (not d!656901))

(assert (not b!2195417))

(assert (not d!656859))

(assert (not b!2195311))

(assert (not d!656869))

(assert (not b!2195384))

(assert (not b!2195304))

(assert (not b!2195364))

(assert (not b!2195414))

(assert (not b!2195407))

(assert (not b!2195365))

(assert (not d!656879))

(assert (not b!2195312))

(assert (not setNonEmpty!18755))

(assert (not b!2195331))

(assert (not b!2195297))

(assert (not b!2195425))

(assert (not d!656897))

(assert (not d!656895))

(assert (not b!2195388))

(assert (not b!2195441))

(assert (not b!2195443))

(assert (not b!2195418))

(assert (not b!2195327))

(assert (not b!2195442))

(assert (not d!656875))

(assert (not b!2195352))

(assert (not b!2195383))

(assert (not b!2195422))

(assert (not b!2195165))

(assert (not d!656905))

(assert (not b!2195415))

(assert (not b!2195468))

(assert (not d!656877))

(assert (not bm!131950))

(assert (not b!2195366))

(assert (not b!2195416))

(assert (not b!2195485))

(assert (not b!2195423))

(assert (not b!2195332))

(assert (not b!2195357))

(assert (not d!656855))

(assert (not b!2195391))

(assert (not b!2195470))

(assert (not b!2195330))

(assert (not b!2195361))

(assert (not b!2195444))

(assert (not b!2195385))

(assert (not bm!131956))

(assert (not b!2195459))

(assert (not d!656863))

(assert (not bm!131955))

(assert (not bm!131954))

(assert (not b!2195368))

(assert (not bm!131951))

(assert (not b!2195408))

(assert (not d!656873))

(assert (not d!656889))

(assert (not d!656907))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

