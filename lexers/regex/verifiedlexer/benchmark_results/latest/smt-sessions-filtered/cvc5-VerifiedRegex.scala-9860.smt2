; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!516582 () Bool)

(assert start!516582)

(declare-fun setIsEmpty!27427 () Bool)

(declare-fun setRes!27427 () Bool)

(assert (=> setIsEmpty!27427 setRes!27427))

(declare-fun b!4920748 () Bool)

(declare-fun e!3075000 () Bool)

(declare-datatypes ((C!26922 0))(
  ( (C!26923 (val!22795 Int)) )
))
(declare-datatypes ((List!56775 0))(
  ( (Nil!56651) (Cons!56651 (h!63099 C!26922) (t!367213 List!56775)) )
))
(declare-datatypes ((IArray!29771 0))(
  ( (IArray!29772 (innerList!14943 List!56775)) )
))
(declare-datatypes ((Conc!14855 0))(
  ( (Node!14855 (left!41305 Conc!14855) (right!41635 Conc!14855) (csize!29940 Int) (cheight!15066 Int)) (Leaf!24716 (xs!18175 IArray!29771) (csize!29941 Int)) (Empty!14855) )
))
(declare-datatypes ((BalanceConc!29140 0))(
  ( (BalanceConc!29141 (c!837285 Conc!14855)) )
))
(declare-fun input!5492 () BalanceConc!29140)

(declare-fun tp!1382790 () Bool)

(declare-fun inv!73349 (Conc!14855) Bool)

(assert (=> b!4920748 (= e!3075000 (and (inv!73349 (c!837285 input!5492)) tp!1382790))))

(declare-fun e!3074999 () Bool)

(declare-fun tp!1382789 () Bool)

(declare-datatypes ((Regex!13356 0))(
  ( (ElementMatch!13356 (c!837286 C!26922)) (Concat!21929 (regOne!27224 Regex!13356) (regTwo!27224 Regex!13356)) (EmptyExpr!13356) (Star!13356 (reg!13685 Regex!13356)) (EmptyLang!13356) (Union!13356 (regOne!27225 Regex!13356) (regTwo!27225 Regex!13356)) )
))
(declare-datatypes ((List!56776 0))(
  ( (Nil!56652) (Cons!56652 (h!63100 Regex!13356) (t!367214 List!56776)) )
))
(declare-datatypes ((Context!5996 0))(
  ( (Context!5997 (exprs!3498 List!56776)) )
))
(declare-fun setElem!27427 () Context!5996)

(declare-fun setNonEmpty!27427 () Bool)

(declare-fun inv!73350 (Context!5996) Bool)

(assert (=> setNonEmpty!27427 (= setRes!27427 (and tp!1382789 (inv!73350 setElem!27427) e!3074999))))

(declare-fun z!3559 () (Set Context!5996))

(declare-fun setRest!27427 () (Set Context!5996))

(assert (=> setNonEmpty!27427 (= z!3559 (set.union (set.insert setElem!27427 (as set.empty (Set Context!5996))) setRest!27427))))

(declare-fun b!4920749 () Bool)

(declare-fun tp!1382788 () Bool)

(assert (=> b!4920749 (= e!3074999 tp!1382788)))

(declare-fun lt!2021433 () List!56775)

(declare-datatypes ((tuple2!61074 0))(
  ( (tuple2!61075 (_1!33840 BalanceConc!29140) (_2!33840 BalanceConc!29140)) )
))
(declare-fun lt!2021432 () tuple2!61074)

(declare-fun list!17916 (BalanceConc!29140) List!56775)

(assert (=> start!516582 (= lt!2021433 (list!17916 (_2!33840 lt!2021432)))))

(declare-fun lt!2021430 () List!56775)

(assert (=> start!516582 (= lt!2021430 (list!17916 (_1!33840 lt!2021432)))))

(declare-fun lt!2021431 () List!56775)

(declare-fun splitAt!239 (BalanceConc!29140 Int) tuple2!61074)

(declare-fun findLongestMatchInnerZipperFast!68 ((Set Context!5996) List!56775 Int List!56775 BalanceConc!29140 Int) Int)

(declare-fun size!37428 (BalanceConc!29140) Int)

(assert (=> start!516582 (= lt!2021432 (splitAt!239 input!5492 (findLongestMatchInnerZipperFast!68 z!3559 Nil!56651 0 lt!2021431 input!5492 (size!37428 input!5492))))))

(assert (=> start!516582 (= lt!2021431 (list!17916 input!5492))))

(declare-fun ++!12305 (List!56775 List!56775) List!56775)

(assert (=> start!516582 (not (= (++!12305 Nil!56651 lt!2021431) lt!2021431))))

(declare-fun inv!73351 (BalanceConc!29140) Bool)

(assert (=> start!516582 (and (inv!73351 input!5492) e!3075000)))

(declare-fun condSetEmpty!27427 () Bool)

(assert (=> start!516582 (= condSetEmpty!27427 (= z!3559 (as set.empty (Set Context!5996))))))

(assert (=> start!516582 setRes!27427))

(assert (= start!516582 b!4920748))

(assert (= (and start!516582 condSetEmpty!27427) setIsEmpty!27427))

(assert (= (and start!516582 (not condSetEmpty!27427)) setNonEmpty!27427))

(assert (= setNonEmpty!27427 b!4920749))

(declare-fun m!5935108 () Bool)

(assert (=> b!4920748 m!5935108))

(declare-fun m!5935110 () Bool)

(assert (=> setNonEmpty!27427 m!5935110))

(declare-fun m!5935112 () Bool)

(assert (=> start!516582 m!5935112))

(declare-fun m!5935114 () Bool)

(assert (=> start!516582 m!5935114))

(declare-fun m!5935116 () Bool)

(assert (=> start!516582 m!5935116))

(declare-fun m!5935118 () Bool)

(assert (=> start!516582 m!5935118))

(declare-fun m!5935120 () Bool)

(assert (=> start!516582 m!5935120))

(declare-fun m!5935122 () Bool)

(assert (=> start!516582 m!5935122))

(assert (=> start!516582 m!5935122))

(declare-fun m!5935124 () Bool)

(assert (=> start!516582 m!5935124))

(assert (=> start!516582 m!5935124))

(declare-fun m!5935126 () Bool)

(assert (=> start!516582 m!5935126))

(push 1)

(assert (not setNonEmpty!27427))

(assert (not start!516582))

(assert (not b!4920748))

(assert (not b!4920749))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1583009 () Bool)

(declare-fun lambda!245079 () Int)

(declare-fun forall!13118 (List!56776 Int) Bool)

(assert (=> d!1583009 (= (inv!73350 setElem!27427) (forall!13118 (exprs!3498 setElem!27427) lambda!245079))))

(declare-fun bs!1179120 () Bool)

(assert (= bs!1179120 d!1583009))

(declare-fun m!5935150 () Bool)

(assert (=> bs!1179120 m!5935150))

(assert (=> setNonEmpty!27427 d!1583009))

(declare-fun d!1583015 () Bool)

(declare-fun list!17918 (Conc!14855) List!56775)

(assert (=> d!1583015 (= (list!17916 (_1!33840 lt!2021432)) (list!17918 (c!837285 (_1!33840 lt!2021432))))))

(declare-fun bs!1179121 () Bool)

(assert (= bs!1179121 d!1583015))

(declare-fun m!5935152 () Bool)

(assert (=> bs!1179121 m!5935152))

(assert (=> start!516582 d!1583015))

(declare-fun d!1583017 () Bool)

(declare-fun e!3075024 () Bool)

(assert (=> d!1583017 e!3075024))

(declare-fun res!2101114 () Bool)

(assert (=> d!1583017 (=> (not res!2101114) (not e!3075024))))

(declare-fun lt!2021577 () tuple2!61074)

(declare-fun isBalanced!4071 (Conc!14855) Bool)

(assert (=> d!1583017 (= res!2101114 (isBalanced!4071 (c!837285 (_1!33840 lt!2021577))))))

(declare-datatypes ((tuple2!61078 0))(
  ( (tuple2!61079 (_1!33842 Conc!14855) (_2!33842 Conc!14855)) )
))
(declare-fun lt!2021576 () tuple2!61078)

(assert (=> d!1583017 (= lt!2021577 (tuple2!61075 (BalanceConc!29141 (_1!33842 lt!2021576)) (BalanceConc!29141 (_2!33842 lt!2021576))))))

(declare-fun splitAt!241 (Conc!14855 Int) tuple2!61078)

(assert (=> d!1583017 (= lt!2021576 (splitAt!241 (c!837285 input!5492) (findLongestMatchInnerZipperFast!68 z!3559 Nil!56651 0 lt!2021431 input!5492 (size!37428 input!5492))))))

(assert (=> d!1583017 (isBalanced!4071 (c!837285 input!5492))))

(assert (=> d!1583017 (= (splitAt!239 input!5492 (findLongestMatchInnerZipperFast!68 z!3559 Nil!56651 0 lt!2021431 input!5492 (size!37428 input!5492))) lt!2021577)))

(declare-fun b!4920790 () Bool)

(declare-fun res!2101113 () Bool)

(assert (=> b!4920790 (=> (not res!2101113) (not e!3075024))))

(assert (=> b!4920790 (= res!2101113 (isBalanced!4071 (c!837285 (_2!33840 lt!2021577))))))

(declare-fun b!4920791 () Bool)

(declare-datatypes ((tuple2!61080 0))(
  ( (tuple2!61081 (_1!33843 List!56775) (_2!33843 List!56775)) )
))
(declare-fun splitAtIndex!87 (List!56775 Int) tuple2!61080)

(assert (=> b!4920791 (= e!3075024 (= (tuple2!61081 (list!17916 (_1!33840 lt!2021577)) (list!17916 (_2!33840 lt!2021577))) (splitAtIndex!87 (list!17916 input!5492) (findLongestMatchInnerZipperFast!68 z!3559 Nil!56651 0 lt!2021431 input!5492 (size!37428 input!5492)))))))

(assert (= (and d!1583017 res!2101114) b!4920790))

(assert (= (and b!4920790 res!2101113) b!4920791))

(declare-fun m!5935224 () Bool)

(assert (=> d!1583017 m!5935224))

(assert (=> d!1583017 m!5935124))

(declare-fun m!5935226 () Bool)

(assert (=> d!1583017 m!5935226))

(declare-fun m!5935228 () Bool)

(assert (=> d!1583017 m!5935228))

(declare-fun m!5935230 () Bool)

(assert (=> b!4920790 m!5935230))

(declare-fun m!5935232 () Bool)

(assert (=> b!4920791 m!5935232))

(declare-fun m!5935234 () Bool)

(assert (=> b!4920791 m!5935234))

(assert (=> b!4920791 m!5935120))

(assert (=> b!4920791 m!5935120))

(assert (=> b!4920791 m!5935124))

(declare-fun m!5935236 () Bool)

(assert (=> b!4920791 m!5935236))

(assert (=> start!516582 d!1583017))

(declare-fun b!4920803 () Bool)

(declare-fun e!3075030 () Bool)

(declare-fun lt!2021580 () List!56775)

(assert (=> b!4920803 (= e!3075030 (or (not (= lt!2021431 Nil!56651)) (= lt!2021580 Nil!56651)))))

(declare-fun b!4920800 () Bool)

(declare-fun e!3075029 () List!56775)

(assert (=> b!4920800 (= e!3075029 lt!2021431)))

(declare-fun d!1583021 () Bool)

(assert (=> d!1583021 e!3075030))

(declare-fun res!2101120 () Bool)

(assert (=> d!1583021 (=> (not res!2101120) (not e!3075030))))

(declare-fun content!10055 (List!56775) (Set C!26922))

(assert (=> d!1583021 (= res!2101120 (= (content!10055 lt!2021580) (set.union (content!10055 Nil!56651) (content!10055 lt!2021431))))))

(assert (=> d!1583021 (= lt!2021580 e!3075029)))

(declare-fun c!837306 () Bool)

(assert (=> d!1583021 (= c!837306 (is-Nil!56651 Nil!56651))))

(assert (=> d!1583021 (= (++!12305 Nil!56651 lt!2021431) lt!2021580)))

(declare-fun b!4920802 () Bool)

(declare-fun res!2101119 () Bool)

(assert (=> b!4920802 (=> (not res!2101119) (not e!3075030))))

(declare-fun size!37430 (List!56775) Int)

(assert (=> b!4920802 (= res!2101119 (= (size!37430 lt!2021580) (+ (size!37430 Nil!56651) (size!37430 lt!2021431))))))

(declare-fun b!4920801 () Bool)

(assert (=> b!4920801 (= e!3075029 (Cons!56651 (h!63099 Nil!56651) (++!12305 (t!367213 Nil!56651) lt!2021431)))))

(assert (= (and d!1583021 c!837306) b!4920800))

(assert (= (and d!1583021 (not c!837306)) b!4920801))

(assert (= (and d!1583021 res!2101120) b!4920802))

(assert (= (and b!4920802 res!2101119) b!4920803))

(declare-fun m!5935238 () Bool)

(assert (=> d!1583021 m!5935238))

(declare-fun m!5935240 () Bool)

(assert (=> d!1583021 m!5935240))

(declare-fun m!5935242 () Bool)

(assert (=> d!1583021 m!5935242))

(declare-fun m!5935244 () Bool)

(assert (=> b!4920802 m!5935244))

(declare-fun m!5935246 () Bool)

(assert (=> b!4920802 m!5935246))

(declare-fun m!5935248 () Bool)

(assert (=> b!4920802 m!5935248))

(declare-fun m!5935250 () Bool)

(assert (=> b!4920801 m!5935250))

(assert (=> start!516582 d!1583021))

(declare-fun d!1583023 () Bool)

(declare-fun lt!2021583 () Int)

(assert (=> d!1583023 (= lt!2021583 (size!37430 (list!17916 input!5492)))))

(declare-fun size!37431 (Conc!14855) Int)

(assert (=> d!1583023 (= lt!2021583 (size!37431 (c!837285 input!5492)))))

(assert (=> d!1583023 (= (size!37428 input!5492) lt!2021583)))

(declare-fun bs!1179122 () Bool)

(assert (= bs!1179122 d!1583023))

(assert (=> bs!1179122 m!5935120))

(assert (=> bs!1179122 m!5935120))

(declare-fun m!5935252 () Bool)

(assert (=> bs!1179122 m!5935252))

(declare-fun m!5935254 () Bool)

(assert (=> bs!1179122 m!5935254))

(assert (=> start!516582 d!1583023))

(declare-fun d!1583025 () Bool)

(assert (=> d!1583025 (= (list!17916 input!5492) (list!17918 (c!837285 input!5492)))))

(declare-fun bs!1179123 () Bool)

(assert (= bs!1179123 d!1583025))

(declare-fun m!5935256 () Bool)

(assert (=> bs!1179123 m!5935256))

(assert (=> start!516582 d!1583025))

(declare-fun d!1583027 () Bool)

(assert (=> d!1583027 (= (inv!73351 input!5492) (isBalanced!4071 (c!837285 input!5492)))))

(declare-fun bs!1179124 () Bool)

(assert (= bs!1179124 d!1583027))

(assert (=> bs!1179124 m!5935228))

(assert (=> start!516582 d!1583027))

(declare-fun b!4920855 () Bool)

(declare-datatypes ((Unit!147036 0))(
  ( (Unit!147037) )
))
(declare-fun e!3075060 () Unit!147036)

(declare-fun Unit!147038 () Unit!147036)

(assert (=> b!4920855 (= e!3075060 Unit!147038)))

(declare-fun lt!2021713 () List!56775)

(assert (=> b!4920855 (= lt!2021713 (list!17916 input!5492))))

(declare-fun lt!2021707 () List!56775)

(assert (=> b!4920855 (= lt!2021707 (list!17916 input!5492))))

(declare-fun lt!2021703 () Unit!147036)

(declare-fun call!342325 () Unit!147036)

(assert (=> b!4920855 (= lt!2021703 call!342325)))

(declare-fun call!342328 () Bool)

(assert (=> b!4920855 call!342328))

(declare-fun lt!2021693 () Unit!147036)

(assert (=> b!4920855 (= lt!2021693 lt!2021703)))

(declare-fun lt!2021687 () List!56775)

(assert (=> b!4920855 (= lt!2021687 (list!17916 input!5492))))

(declare-fun lt!2021701 () Unit!147036)

(declare-fun call!342323 () Unit!147036)

(assert (=> b!4920855 (= lt!2021701 call!342323)))

(assert (=> b!4920855 (= lt!2021687 Nil!56651)))

(declare-fun lt!2021720 () Unit!147036)

(assert (=> b!4920855 (= lt!2021720 lt!2021701)))

(assert (=> b!4920855 false))

(declare-fun b!4920856 () Bool)

(declare-fun e!3075058 () Int)

(assert (=> b!4920856 (= e!3075058 0)))

(declare-fun b!4920857 () Bool)

(assert (=> b!4920857 (= e!3075058 0)))

(declare-fun lt!2021705 () List!56775)

(declare-fun bm!342316 () Bool)

(declare-fun lt!2021690 () List!56775)

(declare-fun c!837326 () Bool)

(declare-fun isPrefix!4946 (List!56775 List!56775) Bool)

(assert (=> bm!342316 (= call!342328 (isPrefix!4946 (ite c!837326 lt!2021690 lt!2021713) (ite c!837326 lt!2021705 lt!2021707)))))

(declare-fun bm!342318 () Bool)

(declare-fun lemmaIsPrefixRefl!3343 (List!56775 List!56775) Unit!147036)

(assert (=> bm!342318 (= call!342325 (lemmaIsPrefixRefl!3343 (ite c!837326 lt!2021690 lt!2021713) (ite c!837326 lt!2021705 lt!2021707)))))

(declare-fun b!4920858 () Bool)

(declare-fun e!3075059 () Int)

(declare-fun call!342322 () Int)

(assert (=> b!4920858 (= e!3075059 call!342322)))

(declare-fun b!4920859 () Bool)

(declare-fun c!837328 () Bool)

(declare-fun call!342321 () Bool)

(assert (=> b!4920859 (= c!837328 call!342321)))

(declare-fun lt!2021685 () Unit!147036)

(declare-fun lt!2021680 () Unit!147036)

(assert (=> b!4920859 (= lt!2021685 lt!2021680)))

(declare-fun lt!2021702 () List!56775)

(assert (=> b!4920859 (= lt!2021702 Nil!56651)))

(assert (=> b!4920859 (= lt!2021680 call!342323)))

(declare-fun call!342324 () List!56775)

(assert (=> b!4920859 (= lt!2021702 call!342324)))

(declare-fun lt!2021689 () Unit!147036)

(declare-fun lt!2021710 () Unit!147036)

(assert (=> b!4920859 (= lt!2021689 lt!2021710)))

(assert (=> b!4920859 call!342328))

(assert (=> b!4920859 (= lt!2021710 call!342325)))

(assert (=> b!4920859 (= lt!2021705 call!342324)))

(assert (=> b!4920859 (= lt!2021690 call!342324)))

(declare-fun e!3075062 () Int)

(assert (=> b!4920859 (= e!3075062 e!3075058)))

(declare-fun b!4920860 () Bool)

(declare-fun c!837325 () Bool)

(assert (=> b!4920860 (= c!837325 call!342321)))

(declare-fun lt!2021698 () Unit!147036)

(declare-fun lt!2021688 () Unit!147036)

(assert (=> b!4920860 (= lt!2021698 lt!2021688)))

(declare-fun lt!2021694 () C!26922)

(declare-fun lt!2021697 () List!56775)

(declare-fun lt!2021683 () List!56775)

(assert (=> b!4920860 (= (++!12305 (++!12305 Nil!56651 (Cons!56651 lt!2021694 Nil!56651)) lt!2021697) lt!2021683)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1377 (List!56775 C!26922 List!56775 List!56775) Unit!147036)

(assert (=> b!4920860 (= lt!2021688 (lemmaMoveElementToOtherListKeepsConcatEq!1377 Nil!56651 lt!2021694 lt!2021697 lt!2021683))))

(assert (=> b!4920860 (= lt!2021683 (list!17916 input!5492))))

(declare-fun tail!9653 (List!56775) List!56775)

(assert (=> b!4920860 (= lt!2021697 (tail!9653 lt!2021431))))

(declare-fun apply!13627 (BalanceConc!29140 Int) C!26922)

(assert (=> b!4920860 (= lt!2021694 (apply!13627 input!5492 0))))

(declare-fun lt!2021682 () Unit!147036)

(declare-fun lt!2021696 () Unit!147036)

(assert (=> b!4920860 (= lt!2021682 lt!2021696)))

(declare-fun lt!2021699 () List!56775)

(declare-fun head!10506 (List!56775) C!26922)

(declare-fun getSuffix!2934 (List!56775 List!56775) List!56775)

(assert (=> b!4920860 (isPrefix!4946 (++!12305 Nil!56651 (Cons!56651 (head!10506 (getSuffix!2934 lt!2021699 Nil!56651)) Nil!56651)) lt!2021699)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!759 (List!56775 List!56775) Unit!147036)

(assert (=> b!4920860 (= lt!2021696 (lemmaAddHeadSuffixToPrefixStillPrefix!759 Nil!56651 lt!2021699))))

(assert (=> b!4920860 (= lt!2021699 (list!17916 input!5492))))

(declare-fun lt!2021708 () Unit!147036)

(assert (=> b!4920860 (= lt!2021708 e!3075060)))

(declare-fun c!837330 () Bool)

(assert (=> b!4920860 (= c!837330 (= (size!37430 Nil!56651) (size!37428 input!5492)))))

(declare-fun lt!2021700 () Unit!147036)

(declare-fun lt!2021681 () Unit!147036)

(assert (=> b!4920860 (= lt!2021700 lt!2021681)))

(declare-fun lt!2021718 () List!56775)

(assert (=> b!4920860 (<= (size!37430 Nil!56651) (size!37430 lt!2021718))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!671 (List!56775 List!56775) Unit!147036)

(assert (=> b!4920860 (= lt!2021681 (lemmaIsPrefixThenSmallerEqSize!671 Nil!56651 lt!2021718))))

(assert (=> b!4920860 (= lt!2021718 (list!17916 input!5492))))

(declare-fun lt!2021714 () Unit!147036)

(declare-fun lt!2021704 () Unit!147036)

(assert (=> b!4920860 (= lt!2021714 lt!2021704)))

(declare-fun lt!2021691 () List!56775)

(declare-fun drop!2210 (List!56775 Int) List!56775)

(declare-fun apply!13628 (List!56775 Int) C!26922)

(assert (=> b!4920860 (= (head!10506 (drop!2210 lt!2021691 0)) (apply!13628 lt!2021691 0))))

(declare-fun lemmaDropApply!1268 (List!56775 Int) Unit!147036)

(assert (=> b!4920860 (= lt!2021704 (lemmaDropApply!1268 lt!2021691 0))))

(assert (=> b!4920860 (= lt!2021691 (list!17916 input!5492))))

(declare-fun lt!2021706 () Unit!147036)

(declare-fun lt!2021695 () Unit!147036)

(assert (=> b!4920860 (= lt!2021706 lt!2021695)))

(declare-fun lt!2021716 () List!56775)

(declare-fun lt!2021692 () List!56775)

(assert (=> b!4920860 (and (= lt!2021716 Nil!56651) (= lt!2021692 lt!2021431))))

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!643 (List!56775 List!56775 List!56775 List!56775) Unit!147036)

(assert (=> b!4920860 (= lt!2021695 (lemmaConcatSameAndSameSizesThenSameLists!643 lt!2021716 lt!2021692 Nil!56651 lt!2021431))))

(declare-fun lt!2021686 () tuple2!61074)

(assert (=> b!4920860 (= lt!2021692 (list!17916 (_2!33840 lt!2021686)))))

(assert (=> b!4920860 (= lt!2021716 call!342324)))

(assert (=> b!4920860 (= lt!2021686 (splitAt!239 input!5492 0))))

(assert (=> b!4920860 (= e!3075062 e!3075059)))

(declare-fun b!4920861 () Bool)

(declare-fun e!3075063 () List!56775)

(assert (=> b!4920861 (= e!3075063 (list!17916 input!5492))))

(declare-fun bm!342319 () Bool)

(declare-fun call!342326 () C!26922)

(assert (=> bm!342319 (= call!342326 (apply!13627 input!5492 0))))

(declare-fun bm!342320 () Bool)

(declare-fun nullableZipper!796 ((Set Context!5996)) Bool)

(assert (=> bm!342320 (= call!342321 (nullableZipper!796 z!3559))))

(declare-fun bm!342321 () Bool)

(declare-fun call!342330 () List!56775)

(assert (=> bm!342321 (= call!342330 (++!12305 Nil!56651 (Cons!56651 call!342326 Nil!56651)))))

(declare-fun b!4920862 () Bool)

(declare-fun lt!2021719 () Int)

(assert (=> b!4920862 (= e!3075059 (ite (= lt!2021719 0) 0 lt!2021719))))

(assert (=> b!4920862 (= lt!2021719 call!342322)))

(declare-fun bm!342317 () Bool)

(declare-fun c!837329 () Bool)

(assert (=> bm!342317 (= c!837329 c!837326)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!1105 (List!56775 List!56775 List!56775) Unit!147036)

(assert (=> bm!342317 (= call!342323 (lemmaIsPrefixSameLengthThenSameList!1105 (ite c!837326 lt!2021702 lt!2021687) Nil!56651 e!3075063))))

(declare-fun d!1583029 () Bool)

(declare-fun lt!2021721 () Int)

(declare-fun findLongestMatchInnerZipper!41 ((Set Context!5996) List!56775 Int List!56775 List!56775 Int) tuple2!61080)

(assert (=> d!1583029 (= (size!37430 (_1!33843 (findLongestMatchInnerZipper!41 z!3559 Nil!56651 0 lt!2021431 (list!17916 input!5492) (size!37428 input!5492)))) lt!2021721)))

(declare-fun e!3075061 () Int)

(assert (=> d!1583029 (= lt!2021721 e!3075061)))

(declare-fun c!837327 () Bool)

(declare-fun lostCauseZipper!676 ((Set Context!5996)) Bool)

(assert (=> d!1583029 (= c!837327 (lostCauseZipper!676 z!3559))))

(declare-fun lt!2021684 () Unit!147036)

(declare-fun Unit!147039 () Unit!147036)

(assert (=> d!1583029 (= lt!2021684 Unit!147039)))

(assert (=> d!1583029 (= (getSuffix!2934 (list!17916 input!5492) Nil!56651) lt!2021431)))

(declare-fun lt!2021709 () Unit!147036)

(declare-fun lt!2021711 () Unit!147036)

(assert (=> d!1583029 (= lt!2021709 lt!2021711)))

(declare-fun lt!2021715 () List!56775)

(assert (=> d!1583029 (= lt!2021431 lt!2021715)))

(declare-fun lemmaSamePrefixThenSameSuffix!2350 (List!56775 List!56775 List!56775 List!56775 List!56775) Unit!147036)

(assert (=> d!1583029 (= lt!2021711 (lemmaSamePrefixThenSameSuffix!2350 Nil!56651 lt!2021431 Nil!56651 lt!2021715 (list!17916 input!5492)))))

(assert (=> d!1583029 (= lt!2021715 (getSuffix!2934 (list!17916 input!5492) Nil!56651))))

(declare-fun lt!2021717 () Unit!147036)

(declare-fun lt!2021712 () Unit!147036)

(assert (=> d!1583029 (= lt!2021717 lt!2021712)))

(assert (=> d!1583029 (isPrefix!4946 Nil!56651 (++!12305 Nil!56651 lt!2021431))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3170 (List!56775 List!56775) Unit!147036)

(assert (=> d!1583029 (= lt!2021712 (lemmaConcatTwoListThenFirstIsPrefix!3170 Nil!56651 lt!2021431))))

(assert (=> d!1583029 (= (++!12305 Nil!56651 lt!2021431) (list!17916 input!5492))))

(assert (=> d!1583029 (= (findLongestMatchInnerZipperFast!68 z!3559 Nil!56651 0 lt!2021431 input!5492 (size!37428 input!5492)) lt!2021721)))

(declare-fun b!4920863 () Bool)

(assert (=> b!4920863 (= e!3075061 0)))

(declare-fun bm!342322 () Bool)

(declare-fun call!342329 () List!56775)

(assert (=> bm!342322 (= call!342329 (tail!9653 lt!2021431))))

(declare-fun b!4920864 () Bool)

(assert (=> b!4920864 (= e!3075063 call!342324)))

(declare-fun bm!342323 () Bool)

(assert (=> bm!342323 (= call!342324 (list!17916 (ite c!837326 input!5492 (_1!33840 lt!2021686))))))

(declare-fun bm!342324 () Bool)

(declare-fun call!342327 () (Set Context!5996))

(assert (=> bm!342324 (= call!342322 (findLongestMatchInnerZipperFast!68 call!342327 call!342330 (+ 0 1) call!342329 input!5492 (size!37428 input!5492)))))

(declare-fun b!4920865 () Bool)

(assert (=> b!4920865 (= e!3075061 e!3075062)))

(assert (=> b!4920865 (= c!837326 (= 0 (size!37428 input!5492)))))

(declare-fun bm!342325 () Bool)

(declare-fun derivationStepZipper!574 ((Set Context!5996) C!26922) (Set Context!5996))

(assert (=> bm!342325 (= call!342327 (derivationStepZipper!574 z!3559 call!342326))))

(declare-fun b!4920866 () Bool)

(declare-fun Unit!147040 () Unit!147036)

(assert (=> b!4920866 (= e!3075060 Unit!147040)))

(assert (= (and d!1583029 c!837327) b!4920863))

(assert (= (and d!1583029 (not c!837327)) b!4920865))

(assert (= (and b!4920865 c!837326) b!4920859))

(assert (= (and b!4920865 (not c!837326)) b!4920860))

(assert (= (and b!4920859 c!837328) b!4920856))

(assert (= (and b!4920859 (not c!837328)) b!4920857))

(assert (= (and b!4920860 c!837330) b!4920855))

(assert (= (and b!4920860 (not c!837330)) b!4920866))

(assert (= (and b!4920860 c!837325) b!4920862))

(assert (= (and b!4920860 (not c!837325)) b!4920858))

(assert (= (or b!4920862 b!4920858) bm!342322))

(assert (= (or b!4920862 b!4920858) bm!342319))

(assert (= (or b!4920862 b!4920858) bm!342325))

(assert (= (or b!4920862 b!4920858) bm!342321))

(assert (= (or b!4920862 b!4920858) bm!342324))

(assert (= (or b!4920859 b!4920860) bm!342320))

(assert (= (or b!4920859 b!4920855) bm!342316))

(assert (= (or b!4920859 b!4920855) bm!342318))

(assert (= (or b!4920859 b!4920860) bm!342323))

(assert (= (or b!4920859 b!4920855) bm!342317))

(assert (= (and bm!342317 c!837329) b!4920864))

(assert (= (and bm!342317 (not c!837329)) b!4920861))

(declare-fun m!5935296 () Bool)

(assert (=> d!1583029 m!5935296))

(assert (=> d!1583029 m!5935112))

(declare-fun m!5935298 () Bool)

(assert (=> d!1583029 m!5935298))

(declare-fun m!5935300 () Bool)

(assert (=> d!1583029 m!5935300))

(assert (=> d!1583029 m!5935120))

(assert (=> d!1583029 m!5935122))

(declare-fun m!5935302 () Bool)

(assert (=> d!1583029 m!5935302))

(declare-fun m!5935304 () Bool)

(assert (=> d!1583029 m!5935304))

(assert (=> d!1583029 m!5935120))

(declare-fun m!5935306 () Bool)

(assert (=> d!1583029 m!5935306))

(assert (=> d!1583029 m!5935120))

(assert (=> d!1583029 m!5935112))

(assert (=> d!1583029 m!5935120))

(declare-fun m!5935308 () Bool)

(assert (=> d!1583029 m!5935308))

(declare-fun m!5935310 () Bool)

(assert (=> bm!342319 m!5935310))

(declare-fun m!5935312 () Bool)

(assert (=> bm!342316 m!5935312))

(declare-fun m!5935314 () Bool)

(assert (=> bm!342322 m!5935314))

(declare-fun m!5935316 () Bool)

(assert (=> bm!342318 m!5935316))

(declare-fun m!5935318 () Bool)

(assert (=> bm!342321 m!5935318))

(declare-fun m!5935320 () Bool)

(assert (=> bm!342317 m!5935320))

(declare-fun m!5935322 () Bool)

(assert (=> bm!342323 m!5935322))

(assert (=> bm!342324 m!5935122))

(declare-fun m!5935324 () Bool)

(assert (=> bm!342324 m!5935324))

(declare-fun m!5935326 () Bool)

(assert (=> b!4920860 m!5935326))

(declare-fun m!5935328 () Bool)

(assert (=> b!4920860 m!5935328))

(declare-fun m!5935330 () Bool)

(assert (=> b!4920860 m!5935330))

(assert (=> b!4920860 m!5935310))

(declare-fun m!5935332 () Bool)

(assert (=> b!4920860 m!5935332))

(declare-fun m!5935334 () Bool)

(assert (=> b!4920860 m!5935334))

(declare-fun m!5935336 () Bool)

(assert (=> b!4920860 m!5935336))

(declare-fun m!5935338 () Bool)

(assert (=> b!4920860 m!5935338))

(declare-fun m!5935340 () Bool)

(assert (=> b!4920860 m!5935340))

(declare-fun m!5935342 () Bool)

(assert (=> b!4920860 m!5935342))

(declare-fun m!5935344 () Bool)

(assert (=> b!4920860 m!5935344))

(declare-fun m!5935346 () Bool)

(assert (=> b!4920860 m!5935346))

(assert (=> b!4920860 m!5935246))

(declare-fun m!5935348 () Bool)

(assert (=> b!4920860 m!5935348))

(assert (=> b!4920860 m!5935120))

(assert (=> b!4920860 m!5935122))

(assert (=> b!4920860 m!5935344))

(assert (=> b!4920860 m!5935314))

(assert (=> b!4920860 m!5935332))

(declare-fun m!5935350 () Bool)

(assert (=> b!4920860 m!5935350))

(assert (=> b!4920860 m!5935340))

(declare-fun m!5935352 () Bool)

(assert (=> b!4920860 m!5935352))

(declare-fun m!5935354 () Bool)

(assert (=> b!4920860 m!5935354))

(declare-fun m!5935356 () Bool)

(assert (=> b!4920860 m!5935356))

(assert (=> b!4920860 m!5935348))

(declare-fun m!5935358 () Bool)

(assert (=> b!4920860 m!5935358))

(declare-fun m!5935360 () Bool)

(assert (=> bm!342325 m!5935360))

(declare-fun m!5935362 () Bool)

(assert (=> bm!342320 m!5935362))

(assert (=> b!4920861 m!5935120))

(assert (=> b!4920855 m!5935120))

(assert (=> start!516582 d!1583029))

(declare-fun d!1583045 () Bool)

(assert (=> d!1583045 (= (list!17916 (_2!33840 lt!2021432)) (list!17918 (c!837285 (_2!33840 lt!2021432))))))

(declare-fun bs!1179129 () Bool)

(assert (= bs!1179129 d!1583045))

(declare-fun m!5935364 () Bool)

(assert (=> bs!1179129 m!5935364))

(assert (=> start!516582 d!1583045))

(declare-fun d!1583047 () Bool)

(declare-fun c!837333 () Bool)

(assert (=> d!1583047 (= c!837333 (is-Node!14855 (c!837285 input!5492)))))

(declare-fun e!3075068 () Bool)

(assert (=> d!1583047 (= (inv!73349 (c!837285 input!5492)) e!3075068)))

(declare-fun b!4920873 () Bool)

(declare-fun inv!73355 (Conc!14855) Bool)

(assert (=> b!4920873 (= e!3075068 (inv!73355 (c!837285 input!5492)))))

(declare-fun b!4920874 () Bool)

(declare-fun e!3075069 () Bool)

(assert (=> b!4920874 (= e!3075068 e!3075069)))

(declare-fun res!2101138 () Bool)

(assert (=> b!4920874 (= res!2101138 (not (is-Leaf!24716 (c!837285 input!5492))))))

(assert (=> b!4920874 (=> res!2101138 e!3075069)))

(declare-fun b!4920875 () Bool)

(declare-fun inv!73356 (Conc!14855) Bool)

(assert (=> b!4920875 (= e!3075069 (inv!73356 (c!837285 input!5492)))))

(assert (= (and d!1583047 c!837333) b!4920873))

(assert (= (and d!1583047 (not c!837333)) b!4920874))

(assert (= (and b!4920874 (not res!2101138)) b!4920875))

(declare-fun m!5935366 () Bool)

(assert (=> b!4920873 m!5935366))

(declare-fun m!5935368 () Bool)

(assert (=> b!4920875 m!5935368))

(assert (=> b!4920748 d!1583047))

(declare-fun condSetEmpty!27433 () Bool)

(assert (=> setNonEmpty!27427 (= condSetEmpty!27433 (= setRest!27427 (as set.empty (Set Context!5996))))))

(declare-fun setRes!27433 () Bool)

(assert (=> setNonEmpty!27427 (= tp!1382789 setRes!27433)))

(declare-fun setIsEmpty!27433 () Bool)

(assert (=> setIsEmpty!27433 setRes!27433))

(declare-fun setElem!27433 () Context!5996)

(declare-fun tp!1382804 () Bool)

(declare-fun e!3075072 () Bool)

(declare-fun setNonEmpty!27433 () Bool)

(assert (=> setNonEmpty!27433 (= setRes!27433 (and tp!1382804 (inv!73350 setElem!27433) e!3075072))))

(declare-fun setRest!27433 () (Set Context!5996))

(assert (=> setNonEmpty!27433 (= setRest!27427 (set.union (set.insert setElem!27433 (as set.empty (Set Context!5996))) setRest!27433))))

(declare-fun b!4920880 () Bool)

(declare-fun tp!1382805 () Bool)

(assert (=> b!4920880 (= e!3075072 tp!1382805)))

(assert (= (and setNonEmpty!27427 condSetEmpty!27433) setIsEmpty!27433))

(assert (= (and setNonEmpty!27427 (not condSetEmpty!27433)) setNonEmpty!27433))

(assert (= setNonEmpty!27433 b!4920880))

(declare-fun m!5935370 () Bool)

(assert (=> setNonEmpty!27433 m!5935370))

(declare-fun b!4920885 () Bool)

(declare-fun e!3075075 () Bool)

(declare-fun tp!1382810 () Bool)

(declare-fun tp!1382811 () Bool)

(assert (=> b!4920885 (= e!3075075 (and tp!1382810 tp!1382811))))

(assert (=> b!4920749 (= tp!1382788 e!3075075)))

(assert (= (and b!4920749 (is-Cons!56652 (exprs!3498 setElem!27427))) b!4920885))

(declare-fun b!4920894 () Bool)

(declare-fun tp!1382820 () Bool)

(declare-fun tp!1382818 () Bool)

(declare-fun e!3075081 () Bool)

(assert (=> b!4920894 (= e!3075081 (and (inv!73349 (left!41305 (c!837285 input!5492))) tp!1382818 (inv!73349 (right!41635 (c!837285 input!5492))) tp!1382820))))

(declare-fun b!4920896 () Bool)

(declare-fun e!3075080 () Bool)

(declare-fun tp!1382819 () Bool)

(assert (=> b!4920896 (= e!3075080 tp!1382819)))

(declare-fun b!4920895 () Bool)

(declare-fun inv!73357 (IArray!29771) Bool)

(assert (=> b!4920895 (= e!3075081 (and (inv!73357 (xs!18175 (c!837285 input!5492))) e!3075080))))

(assert (=> b!4920748 (= tp!1382790 (and (inv!73349 (c!837285 input!5492)) e!3075081))))

(assert (= (and b!4920748 (is-Node!14855 (c!837285 input!5492))) b!4920894))

(assert (= b!4920895 b!4920896))

(assert (= (and b!4920748 (is-Leaf!24716 (c!837285 input!5492))) b!4920895))

(declare-fun m!5935372 () Bool)

(assert (=> b!4920894 m!5935372))

(declare-fun m!5935374 () Bool)

(assert (=> b!4920894 m!5935374))

(declare-fun m!5935376 () Bool)

(assert (=> b!4920895 m!5935376))

(assert (=> b!4920748 m!5935108))

(push 1)

(assert (not d!1583045))

(assert (not bm!342319))

(assert (not b!4920860))

(assert (not d!1583015))

(assert (not bm!342318))

(assert (not d!1583023))

(assert (not bm!342324))

(assert (not b!4920873))

(assert (not b!4920875))

(assert (not b!4920880))

(assert (not b!4920885))

(assert (not bm!342323))

(assert (not bm!342322))

(assert (not d!1583029))

(assert (not bm!342317))

(assert (not b!4920894))

(assert (not b!4920802))

(assert (not b!4920895))

(assert (not bm!342320))

(assert (not d!1583017))

(assert (not setNonEmpty!27433))

(assert (not bm!342316))

(assert (not d!1583009))

(assert (not d!1583021))

(assert (not b!4920748))

(assert (not b!4920855))

(assert (not b!4920791))

(assert (not d!1583025))

(assert (not b!4920801))

(assert (not b!4920790))

(assert (not b!4920896))

(assert (not bm!342321))

(assert (not bm!342325))

(assert (not d!1583027))

(assert (not b!4920861))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

