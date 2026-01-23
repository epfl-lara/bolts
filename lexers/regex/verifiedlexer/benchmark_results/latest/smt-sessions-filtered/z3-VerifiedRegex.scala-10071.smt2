; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!527410 () Bool)

(assert start!527410)

(declare-fun b!4989248 () Bool)

(declare-fun e!3118136 () Bool)

(declare-fun tp!1398313 () Bool)

(declare-fun tp!1398314 () Bool)

(assert (=> b!4989248 (= e!3118136 (and tp!1398313 tp!1398314))))

(declare-fun b!4989249 () Bool)

(declare-fun tp_is_empty!36451 () Bool)

(assert (=> b!4989249 (= e!3118136 tp_is_empty!36451)))

(declare-fun b!4989250 () Bool)

(declare-fun e!3118137 () Bool)

(declare-fun e!3118139 () Bool)

(assert (=> b!4989250 (= e!3118137 e!3118139)))

(declare-fun res!2129841 () Bool)

(assert (=> b!4989250 (=> (not res!2129841) (not e!3118139))))

(declare-datatypes ((C!27704 0))(
  ( (C!27705 (val!23218 Int)) )
))
(declare-datatypes ((List!57786 0))(
  ( (Nil!57662) (Cons!57662 (h!64110 C!27704) (t!370112 List!57786)) )
))
(declare-fun lt!2062545 () List!57786)

(declare-datatypes ((IArray!30553 0))(
  ( (IArray!30554 (innerList!15334 List!57786)) )
))
(declare-datatypes ((Conc!15246 0))(
  ( (Node!15246 (left!42199 Conc!15246) (right!42529 Conc!15246) (csize!30722 Int) (cheight!15457 Int)) (Leaf!25318 (xs!18572 IArray!30553) (csize!30723 Int)) (Empty!15246) )
))
(declare-datatypes ((BalanceConc!29922 0))(
  ( (BalanceConc!29923 (c!851319 Conc!15246)) )
))
(declare-fun totalInput!1177 () BalanceConc!29922)

(declare-fun isSuffix!1293 (List!57786 List!57786) Bool)

(declare-fun list!18530 (BalanceConc!29922) List!57786)

(assert (=> b!4989250 (= res!2129841 (isSuffix!1293 lt!2062545 (list!18530 totalInput!1177)))))

(declare-fun input!6528 () BalanceConc!29922)

(assert (=> b!4989250 (= lt!2062545 (list!18530 input!6528))))

(declare-fun b!4989251 () Bool)

(declare-fun e!3118135 () Bool)

(declare-fun tp!1398315 () Bool)

(declare-fun inv!75660 (Conc!15246) Bool)

(assert (=> b!4989251 (= e!3118135 (and (inv!75660 (c!851319 totalInput!1177)) tp!1398315))))

(declare-fun b!4989252 () Bool)

(declare-fun tp!1398316 () Bool)

(assert (=> b!4989252 (= e!3118136 tp!1398316)))

(declare-fun b!4989253 () Bool)

(declare-fun e!3118138 () Bool)

(declare-fun tp!1398312 () Bool)

(assert (=> b!4989253 (= e!3118138 (and (inv!75660 (c!851319 input!6528)) tp!1398312))))

(declare-fun b!4989254 () Bool)

(declare-fun tp!1398317 () Bool)

(declare-fun tp!1398318 () Bool)

(assert (=> b!4989254 (= e!3118136 (and tp!1398317 tp!1398318))))

(declare-fun b!4989256 () Bool)

(declare-fun lt!2062546 () List!57786)

(declare-datatypes ((tuple2!62740 0))(
  ( (tuple2!62741 (_1!34673 BalanceConc!29922) (_2!34673 BalanceConc!29922)) )
))
(declare-fun lt!2062548 () tuple2!62740)

(declare-datatypes ((tuple2!62742 0))(
  ( (tuple2!62743 (_1!34674 List!57786) (_2!34674 List!57786)) )
))
(declare-fun lt!2062549 () tuple2!62742)

(assert (=> b!4989256 (= e!3118139 (not (= (tuple2!62743 lt!2062546 (list!18530 (_2!34673 lt!2062548))) lt!2062549)))))

(declare-fun sizeTr!376 (List!57786 Int) Int)

(declare-fun size!38315 (List!57786) Int)

(assert (=> b!4989256 (= (sizeTr!376 lt!2062545 0) (size!38315 lt!2062545))))

(declare-datatypes ((Unit!148823 0))(
  ( (Unit!148824) )
))
(declare-fun lt!2062544 () Unit!148823)

(declare-fun lemmaSizeTrEqualsSize!375 (List!57786 Int) Unit!148823)

(assert (=> b!4989256 (= lt!2062544 (lemmaSizeTrEqualsSize!375 lt!2062545 0))))

(declare-fun e!3118134 () Bool)

(assert (=> b!4989256 e!3118134))

(declare-fun res!2129842 () Bool)

(assert (=> b!4989256 (=> (not res!2129842) (not e!3118134))))

(assert (=> b!4989256 (= res!2129842 (= lt!2062546 (_1!34674 lt!2062549)))))

(assert (=> b!4989256 (= lt!2062546 (list!18530 (_1!34673 lt!2062548)))))

(declare-datatypes ((Regex!13727 0))(
  ( (ElementMatch!13727 (c!851320 C!27704)) (Concat!22520 (regOne!27966 Regex!13727) (regTwo!27966 Regex!13727)) (EmptyExpr!13727) (Star!13727 (reg!14056 Regex!13727)) (EmptyLang!13727) (Union!13727 (regOne!27967 Regex!13727) (regTwo!27967 Regex!13727)) )
))
(declare-fun r!15264 () Regex!13727)

(declare-fun findLongestMatch!1742 (Regex!13727 List!57786) tuple2!62742)

(assert (=> b!4989256 (= lt!2062549 (findLongestMatch!1742 r!15264 lt!2062545))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!57787 0))(
  ( (Nil!57663) (Cons!57663 (h!64111 Regex!13727) (t!370113 List!57787)) )
))
(declare-datatypes ((Context!6304 0))(
  ( (Context!6305 (exprs!3652 List!57787)) )
))
(declare-fun lt!2062550 () (InoxSet Context!6304))

(declare-fun findLongestMatchZipperFastV2!29 ((InoxSet Context!6304) BalanceConc!29922 BalanceConc!29922) tuple2!62740)

(assert (=> b!4989256 (= lt!2062548 (findLongestMatchZipperFastV2!29 lt!2062550 input!6528 totalInput!1177))))

(declare-fun lt!2062547 () Unit!148823)

(declare-fun longestMatchV2SameAsRegex!27 (Regex!13727 (InoxSet Context!6304) BalanceConc!29922 BalanceConc!29922) Unit!148823)

(assert (=> b!4989256 (= lt!2062547 (longestMatchV2SameAsRegex!27 r!15264 lt!2062550 input!6528 totalInput!1177))))

(declare-fun focus!360 (Regex!13727) (InoxSet Context!6304))

(assert (=> b!4989256 (= lt!2062550 (focus!360 r!15264))))

(declare-fun res!2129843 () Bool)

(assert (=> start!527410 (=> (not res!2129843) (not e!3118137))))

(declare-fun validRegex!6024 (Regex!13727) Bool)

(assert (=> start!527410 (= res!2129843 (validRegex!6024 r!15264))))

(assert (=> start!527410 e!3118137))

(assert (=> start!527410 e!3118136))

(declare-fun inv!75661 (BalanceConc!29922) Bool)

(assert (=> start!527410 (and (inv!75661 input!6528) e!3118138)))

(assert (=> start!527410 (and (inv!75661 totalInput!1177) e!3118135)))

(declare-fun b!4989255 () Bool)

(assert (=> b!4989255 (= e!3118134 (= (list!18530 (_2!34673 lt!2062548)) (_2!34674 lt!2062549)))))

(assert (= (and start!527410 res!2129843) b!4989250))

(assert (= (and b!4989250 res!2129841) b!4989256))

(assert (= (and b!4989256 res!2129842) b!4989255))

(get-info :version)

(assert (= (and start!527410 ((_ is ElementMatch!13727) r!15264)) b!4989249))

(assert (= (and start!527410 ((_ is Concat!22520) r!15264)) b!4989254))

(assert (= (and start!527410 ((_ is Star!13727) r!15264)) b!4989252))

(assert (= (and start!527410 ((_ is Union!13727) r!15264)) b!4989248))

(assert (= start!527410 b!4989253))

(assert (= start!527410 b!4989251))

(declare-fun m!6021144 () Bool)

(assert (=> b!4989253 m!6021144))

(declare-fun m!6021146 () Bool)

(assert (=> b!4989255 m!6021146))

(declare-fun m!6021148 () Bool)

(assert (=> start!527410 m!6021148))

(declare-fun m!6021150 () Bool)

(assert (=> start!527410 m!6021150))

(declare-fun m!6021152 () Bool)

(assert (=> start!527410 m!6021152))

(declare-fun m!6021154 () Bool)

(assert (=> b!4989251 m!6021154))

(declare-fun m!6021156 () Bool)

(assert (=> b!4989250 m!6021156))

(assert (=> b!4989250 m!6021156))

(declare-fun m!6021158 () Bool)

(assert (=> b!4989250 m!6021158))

(declare-fun m!6021160 () Bool)

(assert (=> b!4989250 m!6021160))

(declare-fun m!6021162 () Bool)

(assert (=> b!4989256 m!6021162))

(declare-fun m!6021164 () Bool)

(assert (=> b!4989256 m!6021164))

(declare-fun m!6021166 () Bool)

(assert (=> b!4989256 m!6021166))

(declare-fun m!6021168 () Bool)

(assert (=> b!4989256 m!6021168))

(declare-fun m!6021170 () Bool)

(assert (=> b!4989256 m!6021170))

(declare-fun m!6021172 () Bool)

(assert (=> b!4989256 m!6021172))

(declare-fun m!6021174 () Bool)

(assert (=> b!4989256 m!6021174))

(assert (=> b!4989256 m!6021146))

(declare-fun m!6021176 () Bool)

(assert (=> b!4989256 m!6021176))

(check-sat (not b!4989256) (not b!4989253) (not b!4989252) (not b!4989250) (not b!4989248) tp_is_empty!36451 (not b!4989255) (not start!527410) (not b!4989251) (not b!4989254))
(check-sat)
