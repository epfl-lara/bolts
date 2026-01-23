; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!515730 () Bool)

(assert start!515730)

(declare-fun res!2098609 () Bool)

(declare-fun e!3070695 () Bool)

(assert (=> start!515730 (=> (not res!2098609) (not e!3070695))))

(declare-datatypes ((C!26878 0))(
  ( (C!26879 (val!22773 Int)) )
))
(declare-datatypes ((Regex!13340 0))(
  ( (ElementMatch!13340 (c!835055 C!26878)) (Concat!21913 (regOne!27192 Regex!13340) (regTwo!27192 Regex!13340)) (EmptyExpr!13340) (Star!13340 (reg!13669 Regex!13340)) (EmptyLang!13340) (Union!13340 (regOne!27193 Regex!13340) (regTwo!27193 Regex!13340)) )
))
(declare-fun r!15208 () Regex!13340)

(declare-fun validRegex!5929 (Regex!13340) Bool)

(assert (=> start!515730 (= res!2098609 (validRegex!5929 r!15208))))

(assert (=> start!515730 e!3070695))

(declare-fun e!3070696 () Bool)

(assert (=> start!515730 e!3070696))

(declare-datatypes ((List!56730 0))(
  ( (Nil!56606) (Cons!56606 (h!63054 C!26878) (t!367136 List!56730)) )
))
(declare-datatypes ((IArray!29727 0))(
  ( (IArray!29728 (innerList!14921 List!56730)) )
))
(declare-datatypes ((Conc!14833 0))(
  ( (Node!14833 (left!41264 Conc!14833) (right!41594 Conc!14833) (csize!29896 Int) (cheight!15044 Int)) (Leaf!24683 (xs!18149 IArray!29727) (csize!29897 Int)) (Empty!14833) )
))
(declare-datatypes ((BalanceConc!29096 0))(
  ( (BalanceConc!29097 (c!835056 Conc!14833)) )
))
(declare-fun input!6475 () BalanceConc!29096)

(declare-fun e!3070697 () Bool)

(declare-fun inv!73227 (BalanceConc!29096) Bool)

(assert (=> start!515730 (and (inv!73227 input!6475) e!3070697)))

(declare-fun b!4912774 () Bool)

(declare-fun tp!1381345 () Bool)

(declare-fun tp!1381343 () Bool)

(assert (=> b!4912774 (= e!3070696 (and tp!1381345 tp!1381343))))

(declare-fun b!4912775 () Bool)

(assert (=> b!4912775 (= e!3070695 (not true))))

(declare-datatypes ((tuple2!61018 0))(
  ( (tuple2!61019 (_1!33812 BalanceConc!29096) (_2!33812 BalanceConc!29096)) )
))
(declare-fun lt!2017086 () tuple2!61018)

(declare-datatypes ((List!56731 0))(
  ( (Nil!56607) (Cons!56607 (h!63055 Regex!13340) (t!367137 List!56731)) )
))
(declare-datatypes ((Context!5964 0))(
  ( (Context!5965 (exprs!3482 List!56731)) )
))
(declare-fun lt!2017085 () (Set Context!5964))

(declare-fun findLongestMatchZipperFast!7 ((Set Context!5964) BalanceConc!29096) tuple2!61018)

(assert (=> b!4912775 (= lt!2017086 (findLongestMatchZipperFast!7 lt!2017085 input!6475))))

(declare-fun lt!2017083 () List!56730)

(declare-fun sizeTr!353 (List!56730 Int) Int)

(declare-fun size!37382 (List!56730) Int)

(assert (=> b!4912775 (= (sizeTr!353 lt!2017083 0) (size!37382 lt!2017083))))

(declare-datatypes ((Unit!146896 0))(
  ( (Unit!146897) )
))
(declare-fun lt!2017082 () Unit!146896)

(declare-fun lemmaSizeTrEqualsSize!352 (List!56730 Int) Unit!146896)

(assert (=> b!4912775 (= lt!2017082 (lemmaSizeTrEqualsSize!352 lt!2017083 0))))

(declare-datatypes ((tuple2!61020 0))(
  ( (tuple2!61021 (_1!33813 List!56730) (_2!33813 List!56730)) )
))
(declare-fun findLongestMatchZipper!14 ((Set Context!5964) List!56730) tuple2!61020)

(declare-fun findLongestMatch!1689 (Regex!13340 List!56730) tuple2!61020)

(assert (=> b!4912775 (= (findLongestMatchZipper!14 lt!2017085 lt!2017083) (findLongestMatch!1689 r!15208 lt!2017083))))

(declare-fun lt!2017084 () Unit!146896)

(declare-fun longestMatchSameAsRegex!13 (Regex!13340 (Set Context!5964) List!56730) Unit!146896)

(assert (=> b!4912775 (= lt!2017084 (longestMatchSameAsRegex!13 r!15208 lt!2017085 lt!2017083))))

(declare-fun list!17877 (BalanceConc!29096) List!56730)

(assert (=> b!4912775 (= lt!2017083 (list!17877 input!6475))))

(declare-fun focus!338 (Regex!13340) (Set Context!5964))

(assert (=> b!4912775 (= lt!2017085 (focus!338 r!15208))))

(declare-fun b!4912776 () Bool)

(declare-fun tp!1381347 () Bool)

(declare-fun tp!1381342 () Bool)

(assert (=> b!4912776 (= e!3070696 (and tp!1381347 tp!1381342))))

(declare-fun b!4912777 () Bool)

(declare-fun tp_is_empty!35881 () Bool)

(assert (=> b!4912777 (= e!3070696 tp_is_empty!35881)))

(declare-fun b!4912778 () Bool)

(declare-fun tp!1381346 () Bool)

(declare-fun inv!73228 (Conc!14833) Bool)

(assert (=> b!4912778 (= e!3070697 (and (inv!73228 (c!835056 input!6475)) tp!1381346))))

(declare-fun b!4912779 () Bool)

(declare-fun tp!1381344 () Bool)

(assert (=> b!4912779 (= e!3070696 tp!1381344)))

(assert (= (and start!515730 res!2098609) b!4912775))

(assert (= (and start!515730 (is-ElementMatch!13340 r!15208)) b!4912777))

(assert (= (and start!515730 (is-Concat!21913 r!15208)) b!4912776))

(assert (= (and start!515730 (is-Star!13340 r!15208)) b!4912779))

(assert (= (and start!515730 (is-Union!13340 r!15208)) b!4912774))

(assert (= start!515730 b!4912778))

(declare-fun m!5922662 () Bool)

(assert (=> start!515730 m!5922662))

(declare-fun m!5922664 () Bool)

(assert (=> start!515730 m!5922664))

(declare-fun m!5922666 () Bool)

(assert (=> b!4912775 m!5922666))

(declare-fun m!5922668 () Bool)

(assert (=> b!4912775 m!5922668))

(declare-fun m!5922670 () Bool)

(assert (=> b!4912775 m!5922670))

(declare-fun m!5922672 () Bool)

(assert (=> b!4912775 m!5922672))

(declare-fun m!5922674 () Bool)

(assert (=> b!4912775 m!5922674))

(declare-fun m!5922676 () Bool)

(assert (=> b!4912775 m!5922676))

(declare-fun m!5922678 () Bool)

(assert (=> b!4912775 m!5922678))

(declare-fun m!5922680 () Bool)

(assert (=> b!4912775 m!5922680))

(declare-fun m!5922682 () Bool)

(assert (=> b!4912775 m!5922682))

(declare-fun m!5922684 () Bool)

(assert (=> b!4912778 m!5922684))

(push 1)

(assert (not b!4912778))

(assert (not b!4912779))

(assert (not start!515730))

(assert (not b!4912774))

(assert (not b!4912775))

(assert (not b!4912776))

(assert tp_is_empty!35881)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

