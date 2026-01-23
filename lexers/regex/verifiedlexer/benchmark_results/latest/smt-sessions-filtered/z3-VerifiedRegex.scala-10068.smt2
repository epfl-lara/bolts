; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!527366 () Bool)

(assert start!527366)

(declare-fun res!2129743 () Bool)

(declare-fun e!3117946 () Bool)

(assert (=> start!527366 (=> (not res!2129743) (not e!3117946))))

(declare-datatypes ((C!27692 0))(
  ( (C!27693 (val!23212 Int)) )
))
(declare-datatypes ((Regex!13721 0))(
  ( (ElementMatch!13721 (c!851287 C!27692)) (Concat!22514 (regOne!27954 Regex!13721) (regTwo!27954 Regex!13721)) (EmptyExpr!13721) (Star!13721 (reg!14050 Regex!13721)) (EmptyLang!13721) (Union!13721 (regOne!27955 Regex!13721) (regTwo!27955 Regex!13721)) )
))
(declare-fun r!15264 () Regex!13721)

(declare-fun validRegex!6018 (Regex!13721) Bool)

(assert (=> start!527366 (= res!2129743 (validRegex!6018 r!15264))))

(assert (=> start!527366 e!3117946))

(declare-fun e!3117947 () Bool)

(assert (=> start!527366 e!3117947))

(declare-datatypes ((List!57772 0))(
  ( (Nil!57648) (Cons!57648 (h!64096 C!27692) (t!370098 List!57772)) )
))
(declare-datatypes ((IArray!30541 0))(
  ( (IArray!30542 (innerList!15328 List!57772)) )
))
(declare-datatypes ((Conc!15240 0))(
  ( (Node!15240 (left!42190 Conc!15240) (right!42520 Conc!15240) (csize!30710 Int) (cheight!15451 Int)) (Leaf!25309 (xs!18566 IArray!30541) (csize!30711 Int)) (Empty!15240) )
))
(declare-datatypes ((BalanceConc!29910 0))(
  ( (BalanceConc!29911 (c!851288 Conc!15240)) )
))
(declare-fun input!6528 () BalanceConc!29910)

(declare-fun e!3117944 () Bool)

(declare-fun inv!75633 (BalanceConc!29910) Bool)

(assert (=> start!527366 (and (inv!75633 input!6528) e!3117944)))

(declare-fun totalInput!1177 () BalanceConc!29910)

(declare-fun e!3117945 () Bool)

(assert (=> start!527366 (and (inv!75633 totalInput!1177) e!3117945)))

(declare-fun b!4988914 () Bool)

(declare-fun tp_is_empty!36439 () Bool)

(assert (=> b!4988914 (= e!3117947 tp_is_empty!36439)))

(declare-fun b!4988915 () Bool)

(declare-fun e!3117948 () Bool)

(assert (=> b!4988915 (= e!3117946 e!3117948)))

(declare-fun res!2129742 () Bool)

(assert (=> b!4988915 (=> (not res!2129742) (not e!3117948))))

(declare-fun lt!2062480 () List!57772)

(declare-fun isSuffix!1287 (List!57772 List!57772) Bool)

(declare-fun list!18522 (BalanceConc!29910) List!57772)

(assert (=> b!4988915 (= res!2129742 (isSuffix!1287 lt!2062480 (list!18522 totalInput!1177)))))

(assert (=> b!4988915 (= lt!2062480 (list!18522 input!6528))))

(declare-fun b!4988916 () Bool)

(declare-fun tp!1398096 () Bool)

(declare-fun inv!75634 (Conc!15240) Bool)

(assert (=> b!4988916 (= e!3117945 (and (inv!75634 (c!851288 totalInput!1177)) tp!1398096))))

(declare-fun b!4988917 () Bool)

(assert (=> b!4988917 (= e!3117948 (not true))))

(declare-fun sizeTr!374 (List!57772 Int) Int)

(declare-fun size!38311 (List!57772) Int)

(assert (=> b!4988917 (= (sizeTr!374 lt!2062480 0) (size!38311 lt!2062480))))

(declare-datatypes ((Unit!148819 0))(
  ( (Unit!148820) )
))
(declare-fun lt!2062479 () Unit!148819)

(declare-fun lemmaSizeTrEqualsSize!373 (List!57772 Int) Unit!148819)

(assert (=> b!4988917 (= lt!2062479 (lemmaSizeTrEqualsSize!373 lt!2062480 0))))

(declare-fun e!3117949 () Bool)

(assert (=> b!4988917 e!3117949))

(declare-fun res!2129741 () Bool)

(assert (=> b!4988917 (=> (not res!2129741) (not e!3117949))))

(declare-datatypes ((tuple2!62732 0))(
  ( (tuple2!62733 (_1!34669 BalanceConc!29910) (_2!34669 BalanceConc!29910)) )
))
(declare-fun lt!2062482 () tuple2!62732)

(declare-datatypes ((tuple2!62734 0))(
  ( (tuple2!62735 (_1!34670 List!57772) (_2!34670 List!57772)) )
))
(declare-fun lt!2062481 () tuple2!62734)

(assert (=> b!4988917 (= res!2129741 (= (list!18522 (_1!34669 lt!2062482)) (_1!34670 lt!2062481)))))

(declare-fun findLongestMatch!1740 (Regex!13721 List!57772) tuple2!62734)

(assert (=> b!4988917 (= lt!2062481 (findLongestMatch!1740 r!15264 lt!2062480))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!57773 0))(
  ( (Nil!57649) (Cons!57649 (h!64097 Regex!13721) (t!370099 List!57773)) )
))
(declare-datatypes ((Context!6292 0))(
  ( (Context!6293 (exprs!3646 List!57773)) )
))
(declare-fun lt!2062483 () (InoxSet Context!6292))

(declare-fun findLongestMatchZipperFastV2!27 ((InoxSet Context!6292) BalanceConc!29910 BalanceConc!29910) tuple2!62732)

(assert (=> b!4988917 (= lt!2062482 (findLongestMatchZipperFastV2!27 lt!2062483 input!6528 totalInput!1177))))

(declare-fun lt!2062484 () Unit!148819)

(declare-fun longestMatchV2SameAsRegex!25 (Regex!13721 (InoxSet Context!6292) BalanceConc!29910 BalanceConc!29910) Unit!148819)

(assert (=> b!4988917 (= lt!2062484 (longestMatchV2SameAsRegex!25 r!15264 lt!2062483 input!6528 totalInput!1177))))

(declare-fun focus!354 (Regex!13721) (InoxSet Context!6292))

(assert (=> b!4988917 (= lt!2062483 (focus!354 r!15264))))

(declare-fun b!4988918 () Bool)

(declare-fun tp!1398097 () Bool)

(assert (=> b!4988918 (= e!3117947 tp!1398097)))

(declare-fun b!4988919 () Bool)

(assert (=> b!4988919 (= e!3117949 (= (list!18522 (_2!34669 lt!2062482)) (_2!34670 lt!2062481)))))

(declare-fun b!4988920 () Bool)

(declare-fun tp!1398094 () Bool)

(declare-fun tp!1398095 () Bool)

(assert (=> b!4988920 (= e!3117947 (and tp!1398094 tp!1398095))))

(declare-fun b!4988921 () Bool)

(declare-fun tp!1398093 () Bool)

(assert (=> b!4988921 (= e!3117944 (and (inv!75634 (c!851288 input!6528)) tp!1398093))))

(declare-fun b!4988922 () Bool)

(declare-fun tp!1398092 () Bool)

(declare-fun tp!1398098 () Bool)

(assert (=> b!4988922 (= e!3117947 (and tp!1398092 tp!1398098))))

(assert (= (and start!527366 res!2129743) b!4988915))

(assert (= (and b!4988915 res!2129742) b!4988917))

(assert (= (and b!4988917 res!2129741) b!4988919))

(get-info :version)

(assert (= (and start!527366 ((_ is ElementMatch!13721) r!15264)) b!4988914))

(assert (= (and start!527366 ((_ is Concat!22514) r!15264)) b!4988920))

(assert (= (and start!527366 ((_ is Star!13721) r!15264)) b!4988918))

(assert (= (and start!527366 ((_ is Union!13721) r!15264)) b!4988922))

(assert (= start!527366 b!4988921))

(assert (= start!527366 b!4988916))

(declare-fun m!6020880 () Bool)

(assert (=> b!4988917 m!6020880))

(declare-fun m!6020882 () Bool)

(assert (=> b!4988917 m!6020882))

(declare-fun m!6020884 () Bool)

(assert (=> b!4988917 m!6020884))

(declare-fun m!6020886 () Bool)

(assert (=> b!4988917 m!6020886))

(declare-fun m!6020888 () Bool)

(assert (=> b!4988917 m!6020888))

(declare-fun m!6020890 () Bool)

(assert (=> b!4988917 m!6020890))

(declare-fun m!6020892 () Bool)

(assert (=> b!4988917 m!6020892))

(declare-fun m!6020894 () Bool)

(assert (=> b!4988917 m!6020894))

(declare-fun m!6020896 () Bool)

(assert (=> b!4988915 m!6020896))

(assert (=> b!4988915 m!6020896))

(declare-fun m!6020898 () Bool)

(assert (=> b!4988915 m!6020898))

(declare-fun m!6020900 () Bool)

(assert (=> b!4988915 m!6020900))

(declare-fun m!6020902 () Bool)

(assert (=> b!4988919 m!6020902))

(declare-fun m!6020904 () Bool)

(assert (=> b!4988921 m!6020904))

(declare-fun m!6020906 () Bool)

(assert (=> b!4988916 m!6020906))

(declare-fun m!6020908 () Bool)

(assert (=> start!527366 m!6020908))

(declare-fun m!6020910 () Bool)

(assert (=> start!527366 m!6020910))

(declare-fun m!6020912 () Bool)

(assert (=> start!527366 m!6020912))

(check-sat (not b!4988919) (not b!4988922) (not b!4988920) tp_is_empty!36439 (not b!4988917) (not start!527366) (not b!4988915) (not b!4988916) (not b!4988921) (not b!4988918))
(check-sat)
