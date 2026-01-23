; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!516826 () Bool)

(assert start!516826)

(declare-fun res!2101363 () Bool)

(declare-fun e!3075801 () Bool)

(assert (=> start!516826 (=> (not res!2101363) (not e!3075801))))

(declare-datatypes ((C!26946 0))(
  ( (C!26947 (val!22807 Int)) )
))
(declare-datatypes ((List!56799 0))(
  ( (Nil!56675) (Cons!56675 (h!63123 C!26946) (t!367237 List!56799)) )
))
(declare-datatypes ((tuple2!61144 0))(
  ( (tuple2!61145 (_1!33875 List!56799) (_2!33875 List!56799)) )
))
(declare-fun lt!2023782 () tuple2!61144)

(declare-fun lt!2023783 () List!56799)

(declare-fun lt!2023778 () List!56799)

(declare-fun ++!12317 (List!56799 List!56799) List!56799)

(assert (=> start!516826 (= res!2101363 (= (++!12317 lt!2023783 lt!2023778) (++!12317 (_1!33875 lt!2023782) (_2!33875 lt!2023782))))))

(declare-fun lt!2023777 () Int)

(declare-fun lt!2023776 () List!56799)

(declare-datatypes ((Regex!13368 0))(
  ( (ElementMatch!13368 (c!837724 C!26946)) (Concat!21941 (regOne!27248 Regex!13368) (regTwo!27248 Regex!13368)) (EmptyExpr!13368) (Star!13368 (reg!13697 Regex!13368)) (EmptyLang!13368) (Union!13368 (regOne!27249 Regex!13368) (regTwo!27249 Regex!13368)) )
))
(declare-datatypes ((List!56800 0))(
  ( (Nil!56676) (Cons!56676 (h!63124 Regex!13368) (t!367238 List!56800)) )
))
(declare-datatypes ((Context!6020 0))(
  ( (Context!6021 (exprs!3510 List!56800)) )
))
(declare-fun z!3559 () (Set Context!6020))

(declare-fun findLongestMatchInnerZipper!53 ((Set Context!6020) List!56799 Int List!56799 List!56799 Int) tuple2!61144)

(assert (=> start!516826 (= lt!2023782 (findLongestMatchInnerZipper!53 z!3559 Nil!56675 0 lt!2023776 lt!2023776 lt!2023777))))

(declare-datatypes ((IArray!29795 0))(
  ( (IArray!29796 (innerList!14955 List!56799)) )
))
(declare-datatypes ((Conc!14867 0))(
  ( (Node!14867 (left!41323 Conc!14867) (right!41653 Conc!14867) (csize!29964 Int) (cheight!15078 Int)) (Leaf!24734 (xs!18187 IArray!29795) (csize!29965 Int)) (Empty!14867) )
))
(declare-datatypes ((BalanceConc!29164 0))(
  ( (BalanceConc!29165 (c!837725 Conc!14867)) )
))
(declare-datatypes ((tuple2!61146 0))(
  ( (tuple2!61147 (_1!33876 BalanceConc!29164) (_2!33876 BalanceConc!29164)) )
))
(declare-fun lt!2023780 () tuple2!61146)

(declare-fun list!17940 (BalanceConc!29164) List!56799)

(assert (=> start!516826 (= lt!2023778 (list!17940 (_2!33876 lt!2023780)))))

(assert (=> start!516826 (= lt!2023783 (list!17940 (_1!33876 lt!2023780)))))

(declare-fun input!5492 () BalanceConc!29164)

(declare-fun splitAt!262 (BalanceConc!29164 Int) tuple2!61146)

(declare-fun findLongestMatchInnerZipperFast!80 ((Set Context!6020) List!56799 Int List!56799 BalanceConc!29164 Int) Int)

(assert (=> start!516826 (= lt!2023780 (splitAt!262 input!5492 (findLongestMatchInnerZipperFast!80 z!3559 Nil!56675 0 lt!2023776 input!5492 lt!2023777)))))

(declare-fun size!37463 (BalanceConc!29164) Int)

(assert (=> start!516826 (= lt!2023777 (size!37463 input!5492))))

(assert (=> start!516826 (= lt!2023776 (list!17940 input!5492))))

(assert (=> start!516826 e!3075801))

(declare-fun e!3075800 () Bool)

(declare-fun inv!73436 (BalanceConc!29164) Bool)

(assert (=> start!516826 (and (inv!73436 input!5492) e!3075800)))

(declare-fun condSetEmpty!27499 () Bool)

(assert (=> start!516826 (= condSetEmpty!27499 (= z!3559 (as set.empty (Set Context!6020))))))

(declare-fun setRes!27499 () Bool)

(assert (=> start!516826 setRes!27499))

(declare-fun tp!1383149 () Bool)

(declare-fun setNonEmpty!27499 () Bool)

(declare-fun e!3075802 () Bool)

(declare-fun setElem!27499 () Context!6020)

(declare-fun inv!73437 (Context!6020) Bool)

(assert (=> setNonEmpty!27499 (= setRes!27499 (and tp!1383149 (inv!73437 setElem!27499) e!3075802))))

(declare-fun setRest!27499 () (Set Context!6020))

(assert (=> setNonEmpty!27499 (= z!3559 (set.union (set.insert setElem!27499 (as set.empty (Set Context!6020))) setRest!27499))))

(declare-fun b!4922156 () Bool)

(declare-fun tp!1383148 () Bool)

(assert (=> b!4922156 (= e!3075802 tp!1383148)))

(declare-fun b!4922157 () Bool)

(declare-fun tp!1383150 () Bool)

(declare-fun inv!73438 (Conc!14867) Bool)

(assert (=> b!4922157 (= e!3075800 (and (inv!73438 (c!837725 input!5492)) tp!1383150))))

(declare-fun setIsEmpty!27499 () Bool)

(assert (=> setIsEmpty!27499 setRes!27499))

(declare-fun b!4922158 () Bool)

(assert (=> b!4922158 (= e!3075801 false)))

(declare-fun lt!2023781 () Int)

(declare-fun size!37464 (List!56799) Int)

(assert (=> b!4922158 (= lt!2023781 (size!37464 (_1!33875 lt!2023782)))))

(declare-fun lt!2023779 () Int)

(assert (=> b!4922158 (= lt!2023779 (size!37464 lt!2023783))))

(assert (= (and start!516826 res!2101363) b!4922158))

(assert (= start!516826 b!4922157))

(assert (= (and start!516826 condSetEmpty!27499) setIsEmpty!27499))

(assert (= (and start!516826 (not condSetEmpty!27499)) setNonEmpty!27499))

(assert (= setNonEmpty!27499 b!4922156))

(declare-fun m!5937076 () Bool)

(assert (=> start!516826 m!5937076))

(declare-fun m!5937078 () Bool)

(assert (=> start!516826 m!5937078))

(assert (=> start!516826 m!5937076))

(declare-fun m!5937080 () Bool)

(assert (=> start!516826 m!5937080))

(declare-fun m!5937082 () Bool)

(assert (=> start!516826 m!5937082))

(declare-fun m!5937084 () Bool)

(assert (=> start!516826 m!5937084))

(declare-fun m!5937086 () Bool)

(assert (=> start!516826 m!5937086))

(declare-fun m!5937088 () Bool)

(assert (=> start!516826 m!5937088))

(declare-fun m!5937090 () Bool)

(assert (=> start!516826 m!5937090))

(declare-fun m!5937092 () Bool)

(assert (=> start!516826 m!5937092))

(declare-fun m!5937094 () Bool)

(assert (=> start!516826 m!5937094))

(declare-fun m!5937096 () Bool)

(assert (=> setNonEmpty!27499 m!5937096))

(declare-fun m!5937098 () Bool)

(assert (=> b!4922157 m!5937098))

(declare-fun m!5937100 () Bool)

(assert (=> b!4922158 m!5937100))

(declare-fun m!5937102 () Bool)

(assert (=> b!4922158 m!5937102))

(push 1)

(assert (not b!4922157))

(assert (not b!4922156))

(assert (not setNonEmpty!27499))

(assert (not b!4922158))

(assert (not start!516826))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

