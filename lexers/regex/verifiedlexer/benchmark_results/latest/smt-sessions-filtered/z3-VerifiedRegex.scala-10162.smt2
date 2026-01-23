; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!531022 () Bool)

(assert start!531022)

(declare-fun b!5023959 () Bool)

(declare-fun e!3138474 () Bool)

(declare-fun e!3138477 () Bool)

(assert (=> b!5023959 (= e!3138474 e!3138477)))

(declare-fun res!2142046 () Bool)

(assert (=> b!5023959 (=> (not res!2142046) (not e!3138477))))

(declare-fun from!1228 () Int)

(declare-fun lt!2079323 () Int)

(assert (=> b!5023959 (= res!2142046 (<= from!1228 lt!2079323))))

(declare-datatypes ((C!28048 0))(
  ( (C!28049 (val!23400 Int)) )
))
(declare-datatypes ((List!58244 0))(
  ( (Nil!58120) (Cons!58120 (h!64568 C!28048) (t!370636 List!58244)) )
))
(declare-datatypes ((IArray!30897 0))(
  ( (IArray!30898 (innerList!15506 List!58244)) )
))
(declare-datatypes ((Conc!15418 0))(
  ( (Node!15418 (left!42502 Conc!15418) (right!42832 Conc!15418) (csize!31066 Int) (cheight!15629 Int)) (Leaf!25581 (xs!18744 IArray!30897) (csize!31067 Int)) (Empty!15418) )
))
(declare-datatypes ((BalanceConc!30266 0))(
  ( (BalanceConc!30267 (c!858997 Conc!15418)) )
))
(declare-fun totalInput!1141 () BalanceConc!30266)

(declare-fun size!38674 (BalanceConc!30266) Int)

(assert (=> b!5023959 (= lt!2079323 (size!38674 totalInput!1141))))

(declare-fun b!5023960 () Bool)

(declare-fun e!3138475 () Bool)

(declare-fun tp!1408437 () Bool)

(assert (=> b!5023960 (= e!3138475 tp!1408437)))

(declare-fun b!5023961 () Bool)

(declare-fun e!3138473 () Bool)

(assert (=> b!5023961 (= e!3138477 (not e!3138473))))

(declare-fun res!2142047 () Bool)

(assert (=> b!5023961 (=> res!2142047 e!3138473)))

(declare-fun lt!2079325 () Int)

(assert (=> b!5023961 (= res!2142047 (> lt!2079325 0))))

(declare-fun lt!2079327 () List!58244)

(declare-fun lt!2079322 () List!58244)

(declare-fun take!750 (List!58244 Int) List!58244)

(assert (=> b!5023961 (= lt!2079327 (take!750 lt!2079322 lt!2079325))))

(declare-fun lt!2079321 () List!58244)

(declare-fun drop!2550 (List!58244 Int) List!58244)

(assert (=> b!5023961 (= lt!2079322 (drop!2550 lt!2079321 (+ 1 from!1228)))))

(declare-fun list!18752 (BalanceConc!30266) List!58244)

(assert (=> b!5023961 (= lt!2079321 (list!18752 totalInput!1141))))

(declare-fun e!3138478 () Bool)

(assert (=> b!5023961 e!3138478))

(declare-fun res!2142052 () Bool)

(assert (=> b!5023961 (=> res!2142052 e!3138478)))

(assert (=> b!5023961 (= res!2142052 (= lt!2079325 0))))

(declare-datatypes ((Unit!149303 0))(
  ( (Unit!149304) )
))
(declare-fun lt!2079324 () Unit!149303)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13899 0))(
  ( (ElementMatch!13899 (c!858998 C!28048)) (Concat!22692 (regOne!28310 Regex!13899) (regTwo!28310 Regex!13899)) (EmptyExpr!13899) (Star!13899 (reg!14228 Regex!13899)) (EmptyLang!13899) (Union!13899 (regOne!28311 Regex!13899) (regTwo!28311 Regex!13899)) )
))
(declare-datatypes ((List!58245 0))(
  ( (Nil!58121) (Cons!58121 (h!64569 Regex!13899) (t!370637 List!58245)) )
))
(declare-datatypes ((Context!6648 0))(
  ( (Context!6649 (exprs!3824 List!58245)) )
))
(declare-fun lt!2079328 () (InoxSet Context!6648))

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!96 ((InoxSet Context!6648) Int BalanceConc!30266) Unit!149303)

(assert (=> b!5023961 (= lt!2079324 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!96 lt!2079328 (+ 1 from!1228) totalInput!1141))))

(declare-fun findLongestMatchInnerZipperFastV2!213 ((InoxSet Context!6648) Int BalanceConc!30266 Int) Int)

(assert (=> b!5023961 (= lt!2079325 (findLongestMatchInnerZipperFastV2!213 lt!2079328 (+ 1 from!1228) totalInput!1141 lt!2079323))))

(declare-fun z!4747 () (InoxSet Context!6648))

(declare-fun lt!2079329 () C!28048)

(declare-fun derivationStepZipper!695 ((InoxSet Context!6648) C!28048) (InoxSet Context!6648))

(assert (=> b!5023961 (= lt!2079328 (derivationStepZipper!695 z!4747 lt!2079329))))

(declare-fun apply!14120 (BalanceConc!30266 Int) C!28048)

(assert (=> b!5023961 (= lt!2079329 (apply!14120 totalInput!1141 from!1228))))

(declare-fun b!5023962 () Bool)

(declare-fun e!3138476 () Bool)

(assert (=> b!5023962 (= e!3138476 true)))

(declare-fun lt!2079320 () Bool)

(declare-fun matchZipper!653 ((InoxSet Context!6648) List!58244) Bool)

(assert (=> b!5023962 (= lt!2079320 (matchZipper!653 lt!2079328 Nil!58120))))

(declare-fun b!5023963 () Bool)

(declare-fun res!2142049 () Bool)

(assert (=> b!5023963 (=> (not res!2142049) (not e!3138477))))

(assert (=> b!5023963 (= res!2142049 (not (= from!1228 lt!2079323)))))

(declare-fun setIsEmpty!28820 () Bool)

(declare-fun setRes!28820 () Bool)

(assert (=> setIsEmpty!28820 setRes!28820))

(declare-fun b!5023964 () Bool)

(declare-fun e!3138479 () Bool)

(declare-fun tp!1408436 () Bool)

(declare-fun inv!76593 (Conc!15418) Bool)

(assert (=> b!5023964 (= e!3138479 (and (inv!76593 (c!858997 totalInput!1141)) tp!1408436))))

(declare-fun b!5023965 () Bool)

(assert (=> b!5023965 (= e!3138478 (matchZipper!653 lt!2079328 (take!750 (drop!2550 (list!18752 totalInput!1141) (+ 1 from!1228)) lt!2079325)))))

(declare-fun setElem!28820 () Context!6648)

(declare-fun setNonEmpty!28820 () Bool)

(declare-fun tp!1408438 () Bool)

(declare-fun inv!76594 (Context!6648) Bool)

(assert (=> setNonEmpty!28820 (= setRes!28820 (and tp!1408438 (inv!76594 setElem!28820) e!3138475))))

(declare-fun setRest!28820 () (InoxSet Context!6648))

(assert (=> setNonEmpty!28820 (= z!4747 ((_ map or) (store ((as const (Array Context!6648 Bool)) false) setElem!28820 true) setRest!28820))))

(declare-fun b!5023966 () Bool)

(declare-fun res!2142048 () Bool)

(assert (=> b!5023966 (=> res!2142048 e!3138473)))

(declare-fun nullableZipper!916 ((InoxSet Context!6648)) Bool)

(assert (=> b!5023966 (= res!2142048 (not (nullableZipper!916 lt!2079328)))))

(declare-fun res!2142050 () Bool)

(assert (=> start!531022 (=> (not res!2142050) (not e!3138474))))

(assert (=> start!531022 (= res!2142050 (>= from!1228 0))))

(assert (=> start!531022 e!3138474))

(assert (=> start!531022 true))

(declare-fun inv!76595 (BalanceConc!30266) Bool)

(assert (=> start!531022 (and (inv!76595 totalInput!1141) e!3138479)))

(declare-fun condSetEmpty!28820 () Bool)

(assert (=> start!531022 (= condSetEmpty!28820 (= z!4747 ((as const (Array Context!6648 Bool)) false)))))

(assert (=> start!531022 setRes!28820))

(declare-fun b!5023967 () Bool)

(assert (=> b!5023967 (= e!3138473 e!3138476)))

(declare-fun res!2142051 () Bool)

(assert (=> b!5023967 (=> res!2142051 e!3138476)))

(declare-fun lt!2079326 () List!58244)

(assert (=> b!5023967 (= res!2142051 (not (= lt!2079326 (Cons!58120 lt!2079329 Nil!58120))))))

(declare-fun apply!14121 (List!58244 Int) C!28048)

(assert (=> b!5023967 (= (Cons!58120 (apply!14121 lt!2079321 from!1228) (take!750 lt!2079322 0)) lt!2079326)))

(declare-fun lt!2079330 () Unit!149303)

(declare-fun lemmaDropTakeAddOneLeft!84 (List!58244 Int Int) Unit!149303)

(assert (=> b!5023967 (= lt!2079330 (lemmaDropTakeAddOneLeft!84 lt!2079321 from!1228 0))))

(assert (=> b!5023967 (= lt!2079326 (take!750 (drop!2550 lt!2079321 from!1228) 1))))

(declare-fun b!5023968 () Bool)

(declare-fun res!2142053 () Bool)

(assert (=> b!5023968 (=> (not res!2142053) (not e!3138477))))

(declare-fun lostCauseZipper!913 ((InoxSet Context!6648)) Bool)

(assert (=> b!5023968 (= res!2142053 (not (lostCauseZipper!913 z!4747)))))

(assert (= (and start!531022 res!2142050) b!5023959))

(assert (= (and b!5023959 res!2142046) b!5023968))

(assert (= (and b!5023968 res!2142053) b!5023963))

(assert (= (and b!5023963 res!2142049) b!5023961))

(assert (= (and b!5023961 (not res!2142052)) b!5023965))

(assert (= (and b!5023961 (not res!2142047)) b!5023966))

(assert (= (and b!5023966 (not res!2142048)) b!5023967))

(assert (= (and b!5023967 (not res!2142051)) b!5023962))

(assert (= start!531022 b!5023964))

(assert (= (and start!531022 condSetEmpty!28820) setIsEmpty!28820))

(assert (= (and start!531022 (not condSetEmpty!28820)) setNonEmpty!28820))

(assert (= setNonEmpty!28820 b!5023960))

(declare-fun m!6059170 () Bool)

(assert (=> b!5023966 m!6059170))

(declare-fun m!6059172 () Bool)

(assert (=> setNonEmpty!28820 m!6059172))

(declare-fun m!6059174 () Bool)

(assert (=> b!5023964 m!6059174))

(declare-fun m!6059176 () Bool)

(assert (=> b!5023965 m!6059176))

(assert (=> b!5023965 m!6059176))

(declare-fun m!6059178 () Bool)

(assert (=> b!5023965 m!6059178))

(assert (=> b!5023965 m!6059178))

(declare-fun m!6059180 () Bool)

(assert (=> b!5023965 m!6059180))

(assert (=> b!5023965 m!6059180))

(declare-fun m!6059182 () Bool)

(assert (=> b!5023965 m!6059182))

(declare-fun m!6059184 () Bool)

(assert (=> b!5023967 m!6059184))

(declare-fun m!6059186 () Bool)

(assert (=> b!5023967 m!6059186))

(declare-fun m!6059188 () Bool)

(assert (=> b!5023967 m!6059188))

(declare-fun m!6059190 () Bool)

(assert (=> b!5023967 m!6059190))

(assert (=> b!5023967 m!6059186))

(declare-fun m!6059192 () Bool)

(assert (=> b!5023967 m!6059192))

(declare-fun m!6059194 () Bool)

(assert (=> b!5023968 m!6059194))

(declare-fun m!6059196 () Bool)

(assert (=> start!531022 m!6059196))

(declare-fun m!6059198 () Bool)

(assert (=> b!5023962 m!6059198))

(declare-fun m!6059200 () Bool)

(assert (=> b!5023959 m!6059200))

(declare-fun m!6059202 () Bool)

(assert (=> b!5023961 m!6059202))

(declare-fun m!6059204 () Bool)

(assert (=> b!5023961 m!6059204))

(declare-fun m!6059206 () Bool)

(assert (=> b!5023961 m!6059206))

(declare-fun m!6059208 () Bool)

(assert (=> b!5023961 m!6059208))

(declare-fun m!6059210 () Bool)

(assert (=> b!5023961 m!6059210))

(declare-fun m!6059212 () Bool)

(assert (=> b!5023961 m!6059212))

(assert (=> b!5023961 m!6059176))

(check-sat (not b!5023961) (not b!5023966) (not setNonEmpty!28820) (not b!5023964) (not b!5023962) (not b!5023959) (not b!5023960) (not start!531022) (not b!5023965) (not b!5023967) (not b!5023968))
(check-sat)
