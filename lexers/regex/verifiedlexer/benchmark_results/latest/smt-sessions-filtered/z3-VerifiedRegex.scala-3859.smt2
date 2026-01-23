; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213202 () Bool)

(assert start!213202)

(declare-fun b!2196667 () Bool)

(declare-fun e!1403876 () Bool)

(declare-fun e!1403880 () Bool)

(assert (=> b!2196667 (= e!1403876 e!1403880)))

(declare-fun res!944409 () Bool)

(assert (=> b!2196667 (=> res!944409 e!1403880)))

(declare-datatypes ((C!12516 0))(
  ( (C!12517 (val!7244 Int)) )
))
(declare-datatypes ((List!25658 0))(
  ( (Nil!25574) (Cons!25574 (h!30975 C!12516) (t!198264 List!25658)) )
))
(declare-fun lt!821762 () List!25658)

(declare-fun lt!821772 () C!12516)

(declare-fun lt!821767 () Int)

(assert (=> b!2196667 (= res!944409 (or (not (= lt!821762 (Cons!25574 lt!821772 Nil!25574))) (<= lt!821767 0)))))

(declare-fun lt!821769 () C!12516)

(declare-fun lt!821765 () List!25658)

(assert (=> b!2196667 (= (Cons!25574 lt!821769 lt!821765) lt!821762)))

(declare-fun lt!821768 () List!25658)

(declare-fun take!363 (List!25658 Int) List!25658)

(assert (=> b!2196667 (= lt!821762 (take!363 lt!821768 1))))

(declare-fun lt!821775 () List!25658)

(declare-fun from!1114 () Int)

(declare-fun drop!1373 (List!25658 Int) List!25658)

(assert (=> b!2196667 (= lt!821768 (drop!1373 lt!821775 from!1114))))

(assert (=> b!2196667 (= lt!821765 (take!363 (drop!1373 lt!821775 (+ 1 from!1114)) 0))))

(declare-fun apply!6258 (List!25658 Int) C!12516)

(assert (=> b!2196667 (= lt!821769 (apply!6258 lt!821775 from!1114))))

(declare-datatypes ((Unit!38685 0))(
  ( (Unit!38686) )
))
(declare-fun lt!821764 () Unit!38685)

(declare-fun lemmaDropTakeAddOneLeft!20 (List!25658 Int Int) Unit!38685)

(assert (=> b!2196667 (= lt!821764 (lemmaDropTakeAddOneLeft!20 lt!821775 from!1114 0))))

(declare-datatypes ((IArray!16647 0))(
  ( (IArray!16648 (innerList!8381 List!25658)) )
))
(declare-datatypes ((Conc!8321 0))(
  ( (Node!8321 (left!19636 Conc!8321) (right!19966 Conc!8321) (csize!16872 Int) (cheight!8532 Int)) (Leaf!12181 (xs!11263 IArray!16647) (csize!16873 Int)) (Empty!8321) )
))
(declare-datatypes ((BalanceConc!16404 0))(
  ( (BalanceConc!16405 (c!349872 Conc!8321)) )
))
(declare-fun totalInput!923 () BalanceConc!16404)

(declare-fun list!9835 (BalanceConc!16404) List!25658)

(assert (=> b!2196667 (= lt!821775 (list!9835 totalInput!923))))

(declare-fun b!2196668 () Bool)

(declare-fun e!1403874 () Bool)

(declare-fun e!1403878 () Bool)

(assert (=> b!2196668 (= e!1403874 (not e!1403878))))

(declare-fun res!944404 () Bool)

(assert (=> b!2196668 (=> res!944404 e!1403878)))

(declare-fun lt!821770 () Int)

(declare-fun lastNullablePos!193 () Int)

(declare-fun lt!821774 () Int)

(declare-fun lt!821766 () Int)

(assert (=> b!2196668 (= res!944404 (or (> lt!821774 0) (> lt!821770 from!1114) (< lt!821770 lt!821766) (< lt!821766 lastNullablePos!193) (> lt!821766 from!1114) (and (not (= lt!821766 from!1114)) (not (= lt!821766 lastNullablePos!193))) (= lt!821766 lastNullablePos!193)))))

(declare-fun e!1403875 () Bool)

(assert (=> b!2196668 e!1403875))

(declare-fun res!944407 () Bool)

(assert (=> b!2196668 (=> res!944407 e!1403875)))

(assert (=> b!2196668 (= res!944407 (<= lt!821774 0))))

(assert (=> b!2196668 (= lt!821774 (+ 1 (- lt!821770 (+ 1 from!1114))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6185 0))(
  ( (ElementMatch!6185 (c!349873 C!12516)) (Concat!10487 (regOne!12882 Regex!6185) (regTwo!12882 Regex!6185)) (EmptyExpr!6185) (Star!6185 (reg!6514 Regex!6185)) (EmptyLang!6185) (Union!6185 (regOne!12883 Regex!6185) (regTwo!12883 Regex!6185)) )
))
(declare-datatypes ((List!25659 0))(
  ( (Nil!25575) (Cons!25575 (h!30976 Regex!6185) (t!198265 List!25659)) )
))
(declare-datatypes ((Context!3510 0))(
  ( (Context!3511 (exprs!2255 List!25659)) )
))
(declare-fun lt!821776 () (InoxSet Context!3510))

(declare-fun lt!821773 () Unit!38685)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!174 ((InoxSet Context!3510) Int BalanceConc!16404 Int) Unit!38685)

(assert (=> b!2196668 (= lt!821773 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!174 lt!821776 (+ 1 from!1114) totalInput!923 lt!821766))))

(declare-fun b!2196669 () Bool)

(declare-fun res!944411 () Bool)

(declare-fun e!1403872 () Bool)

(assert (=> b!2196669 (=> (not res!944411) (not e!1403872))))

(declare-fun lt!821763 () Int)

(assert (=> b!2196669 (= res!944411 (not (= from!1114 lt!821763)))))

(declare-fun b!2196670 () Bool)

(assert (=> b!2196670 (= e!1403878 e!1403876)))

(declare-fun res!944408 () Bool)

(assert (=> b!2196670 (=> res!944408 e!1403876)))

(assert (=> b!2196670 (= res!944408 (not (= lt!821767 1)))))

(declare-fun lt!821771 () Int)

(assert (=> b!2196670 (= lt!821767 (+ 1 (- lt!821771 from!1114)))))

(declare-fun setIsEmpty!18830 () Bool)

(declare-fun setRes!18830 () Bool)

(assert (=> setIsEmpty!18830 setRes!18830))

(declare-fun b!2196671 () Bool)

(declare-fun e!1403877 () Int)

(assert (=> b!2196671 (= e!1403877 from!1114)))

(declare-fun b!2196673 () Bool)

(assert (=> b!2196673 (= e!1403877 lastNullablePos!193)))

(declare-fun b!2196674 () Bool)

(declare-fun matchZipper!271 ((InoxSet Context!3510) List!25658) Bool)

(assert (=> b!2196674 (= e!1403875 (matchZipper!271 lt!821776 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774)))))

(declare-fun b!2196675 () Bool)

(declare-fun res!944403 () Bool)

(assert (=> b!2196675 (=> (not res!944403) (not e!1403872))))

(declare-fun e!1403879 () Bool)

(assert (=> b!2196675 (= res!944403 e!1403879)))

(declare-fun res!944410 () Bool)

(assert (=> b!2196675 (=> res!944410 e!1403879)))

(declare-fun z!3955 () (InoxSet Context!3510))

(declare-fun nullableZipper!465 ((InoxSet Context!3510)) Bool)

(assert (=> b!2196675 (= res!944410 (not (nullableZipper!465 z!3955)))))

(declare-fun b!2196676 () Bool)

(assert (=> b!2196676 (= e!1403880 (matchZipper!271 z!3955 (take!363 lt!821768 lt!821767)))))

(declare-fun b!2196677 () Bool)

(assert (=> b!2196677 (= e!1403879 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2196678 () Bool)

(declare-fun e!1403871 () Bool)

(assert (=> b!2196678 (= e!1403871 e!1403872)))

(declare-fun res!944413 () Bool)

(assert (=> b!2196678 (=> (not res!944413) (not e!1403872))))

(assert (=> b!2196678 (= res!944413 (and (<= from!1114 lt!821763) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19937 (BalanceConc!16404) Int)

(assert (=> b!2196678 (= lt!821763 (size!19937 totalInput!923))))

(declare-fun b!2196672 () Bool)

(declare-fun e!1403873 () Bool)

(declare-fun tp!684152 () Bool)

(declare-fun inv!34276 (Conc!8321) Bool)

(assert (=> b!2196672 (= e!1403873 (and (inv!34276 (c!349872 totalInput!923)) tp!684152))))

(declare-fun res!944406 () Bool)

(assert (=> start!213202 (=> (not res!944406) (not e!1403871))))

(assert (=> start!213202 (= res!944406 (>= from!1114 0))))

(assert (=> start!213202 e!1403871))

(assert (=> start!213202 true))

(declare-fun inv!34277 (BalanceConc!16404) Bool)

(assert (=> start!213202 (and (inv!34277 totalInput!923) e!1403873)))

(declare-fun condSetEmpty!18830 () Bool)

(assert (=> start!213202 (= condSetEmpty!18830 (= z!3955 ((as const (Array Context!3510 Bool)) false)))))

(assert (=> start!213202 setRes!18830))

(declare-fun b!2196679 () Bool)

(assert (=> b!2196679 (= e!1403872 e!1403874)))

(declare-fun res!944412 () Bool)

(assert (=> b!2196679 (=> (not res!944412) (not e!1403874))))

(assert (=> b!2196679 (= res!944412 (= lt!821771 lt!821770))))

(declare-fun furthestNullablePosition!353 ((InoxSet Context!3510) Int BalanceConc!16404 Int Int) Int)

(assert (=> b!2196679 (= lt!821770 (furthestNullablePosition!353 lt!821776 (+ 1 from!1114) totalInput!923 lt!821763 lt!821766))))

(assert (=> b!2196679 (= lt!821771 (furthestNullablePosition!353 z!3955 from!1114 totalInput!923 lt!821763 lastNullablePos!193))))

(assert (=> b!2196679 (= lt!821766 e!1403877)))

(declare-fun c!349871 () Bool)

(assert (=> b!2196679 (= c!349871 (nullableZipper!465 lt!821776))))

(declare-fun derivationStepZipper!257 ((InoxSet Context!3510) C!12516) (InoxSet Context!3510))

(assert (=> b!2196679 (= lt!821776 (derivationStepZipper!257 z!3955 lt!821772))))

(declare-fun apply!6259 (BalanceConc!16404 Int) C!12516)

(assert (=> b!2196679 (= lt!821772 (apply!6259 totalInput!923 from!1114))))

(declare-fun b!2196680 () Bool)

(declare-fun e!1403881 () Bool)

(declare-fun tp!684153 () Bool)

(assert (=> b!2196680 (= e!1403881 tp!684153)))

(declare-fun b!2196681 () Bool)

(declare-fun res!944405 () Bool)

(assert (=> b!2196681 (=> (not res!944405) (not e!1403872))))

(declare-fun lostCauseZipper!301 ((InoxSet Context!3510)) Bool)

(assert (=> b!2196681 (= res!944405 (not (lostCauseZipper!301 z!3955)))))

(declare-fun setElem!18830 () Context!3510)

(declare-fun setNonEmpty!18830 () Bool)

(declare-fun tp!684154 () Bool)

(declare-fun inv!34278 (Context!3510) Bool)

(assert (=> setNonEmpty!18830 (= setRes!18830 (and tp!684154 (inv!34278 setElem!18830) e!1403881))))

(declare-fun setRest!18830 () (InoxSet Context!3510))

(assert (=> setNonEmpty!18830 (= z!3955 ((_ map or) (store ((as const (Array Context!3510 Bool)) false) setElem!18830 true) setRest!18830))))

(assert (= (and start!213202 res!944406) b!2196678))

(assert (= (and b!2196678 res!944413) b!2196675))

(assert (= (and b!2196675 (not res!944410)) b!2196677))

(assert (= (and b!2196675 res!944403) b!2196669))

(assert (= (and b!2196669 res!944411) b!2196681))

(assert (= (and b!2196681 res!944405) b!2196679))

(assert (= (and b!2196679 c!349871) b!2196671))

(assert (= (and b!2196679 (not c!349871)) b!2196673))

(assert (= (and b!2196679 res!944412) b!2196668))

(assert (= (and b!2196668 (not res!944407)) b!2196674))

(assert (= (and b!2196668 (not res!944404)) b!2196670))

(assert (= (and b!2196670 (not res!944408)) b!2196667))

(assert (= (and b!2196667 (not res!944409)) b!2196676))

(assert (= start!213202 b!2196672))

(assert (= (and start!213202 condSetEmpty!18830) setIsEmpty!18830))

(assert (= (and start!213202 (not condSetEmpty!18830)) setNonEmpty!18830))

(assert (= setNonEmpty!18830 b!2196680))

(declare-fun m!2639015 () Bool)

(assert (=> setNonEmpty!18830 m!2639015))

(declare-fun m!2639017 () Bool)

(assert (=> b!2196667 m!2639017))

(declare-fun m!2639019 () Bool)

(assert (=> b!2196667 m!2639019))

(declare-fun m!2639021 () Bool)

(assert (=> b!2196667 m!2639021))

(declare-fun m!2639023 () Bool)

(assert (=> b!2196667 m!2639023))

(assert (=> b!2196667 m!2639021))

(declare-fun m!2639025 () Bool)

(assert (=> b!2196667 m!2639025))

(declare-fun m!2639027 () Bool)

(assert (=> b!2196667 m!2639027))

(declare-fun m!2639029 () Bool)

(assert (=> b!2196667 m!2639029))

(declare-fun m!2639031 () Bool)

(assert (=> b!2196679 m!2639031))

(declare-fun m!2639033 () Bool)

(assert (=> b!2196679 m!2639033))

(declare-fun m!2639035 () Bool)

(assert (=> b!2196679 m!2639035))

(declare-fun m!2639037 () Bool)

(assert (=> b!2196679 m!2639037))

(declare-fun m!2639039 () Bool)

(assert (=> b!2196679 m!2639039))

(assert (=> b!2196674 m!2639029))

(assert (=> b!2196674 m!2639029))

(declare-fun m!2639041 () Bool)

(assert (=> b!2196674 m!2639041))

(assert (=> b!2196674 m!2639041))

(declare-fun m!2639043 () Bool)

(assert (=> b!2196674 m!2639043))

(assert (=> b!2196674 m!2639043))

(declare-fun m!2639045 () Bool)

(assert (=> b!2196674 m!2639045))

(declare-fun m!2639047 () Bool)

(assert (=> b!2196668 m!2639047))

(declare-fun m!2639049 () Bool)

(assert (=> start!213202 m!2639049))

(declare-fun m!2639051 () Bool)

(assert (=> b!2196676 m!2639051))

(assert (=> b!2196676 m!2639051))

(declare-fun m!2639053 () Bool)

(assert (=> b!2196676 m!2639053))

(declare-fun m!2639055 () Bool)

(assert (=> b!2196681 m!2639055))

(declare-fun m!2639057 () Bool)

(assert (=> b!2196675 m!2639057))

(declare-fun m!2639059 () Bool)

(assert (=> b!2196678 m!2639059))

(declare-fun m!2639061 () Bool)

(assert (=> b!2196672 m!2639061))

(check-sat (not start!213202) (not b!2196668) (not b!2196674) (not b!2196667) (not b!2196675) (not b!2196679) (not b!2196676) (not setNonEmpty!18830) (not b!2196678) (not b!2196681) (not b!2196680) (not b!2196672))
(check-sat)
(get-model)

(declare-fun d!657010 () Bool)

(assert (=> d!657010 true))

(declare-fun lambda!82632 () Int)

(declare-fun flatMap!153 ((InoxSet Context!3510) Int) (InoxSet Context!3510))

(assert (=> d!657010 (= (derivationStepZipper!257 z!3955 lt!821772) (flatMap!153 z!3955 lambda!82632))))

(declare-fun bs!448992 () Bool)

(assert (= bs!448992 d!657010))

(declare-fun m!2639067 () Bool)

(assert (=> bs!448992 m!2639067))

(assert (=> b!2196679 d!657010))

(declare-fun lt!821785 () Int)

(declare-fun d!657016 () Bool)

(assert (=> d!657016 (and (>= lt!821785 (- 1)) (< lt!821785 lt!821763) (>= lt!821785 lastNullablePos!193) (or (= lt!821785 lastNullablePos!193) (>= lt!821785 from!1114)))))

(declare-fun e!1403889 () Int)

(assert (=> d!657016 (= lt!821785 e!1403889)))

(declare-fun c!349880 () Bool)

(declare-fun e!1403890 () Bool)

(assert (=> d!657016 (= c!349880 e!1403890)))

(declare-fun res!944416 () Bool)

(assert (=> d!657016 (=> res!944416 e!1403890)))

(assert (=> d!657016 (= res!944416 (= from!1114 lt!821763))))

(assert (=> d!657016 (and (>= from!1114 0) (<= from!1114 lt!821763))))

(assert (=> d!657016 (= (furthestNullablePosition!353 z!3955 from!1114 totalInput!923 lt!821763 lastNullablePos!193) lt!821785)))

(declare-fun lt!821784 () (InoxSet Context!3510))

(declare-fun e!1403888 () Int)

(declare-fun b!2196694 () Bool)

(assert (=> b!2196694 (= e!1403889 (furthestNullablePosition!353 lt!821784 (+ from!1114 1) totalInput!923 lt!821763 e!1403888))))

(assert (=> b!2196694 (= lt!821784 (derivationStepZipper!257 z!3955 (apply!6259 totalInput!923 from!1114)))))

(declare-fun c!349881 () Bool)

(assert (=> b!2196694 (= c!349881 (nullableZipper!465 lt!821784))))

(declare-fun b!2196695 () Bool)

(assert (=> b!2196695 (= e!1403889 lastNullablePos!193)))

(declare-fun b!2196696 () Bool)

(assert (=> b!2196696 (= e!1403890 (lostCauseZipper!301 z!3955))))

(declare-fun b!2196697 () Bool)

(assert (=> b!2196697 (= e!1403888 from!1114)))

(declare-fun b!2196698 () Bool)

(assert (=> b!2196698 (= e!1403888 lastNullablePos!193)))

(assert (= (and d!657016 (not res!944416)) b!2196696))

(assert (= (and d!657016 c!349880) b!2196695))

(assert (= (and d!657016 (not c!349880)) b!2196694))

(assert (= (and b!2196694 c!349881) b!2196697))

(assert (= (and b!2196694 (not c!349881)) b!2196698))

(declare-fun m!2639069 () Bool)

(assert (=> b!2196694 m!2639069))

(assert (=> b!2196694 m!2639031))

(assert (=> b!2196694 m!2639031))

(declare-fun m!2639071 () Bool)

(assert (=> b!2196694 m!2639071))

(declare-fun m!2639073 () Bool)

(assert (=> b!2196694 m!2639073))

(assert (=> b!2196696 m!2639055))

(assert (=> b!2196679 d!657016))

(declare-fun d!657018 () Bool)

(declare-fun lt!821788 () C!12516)

(assert (=> d!657018 (= lt!821788 (apply!6258 (list!9835 totalInput!923) from!1114))))

(declare-fun apply!6260 (Conc!8321 Int) C!12516)

(assert (=> d!657018 (= lt!821788 (apply!6260 (c!349872 totalInput!923) from!1114))))

(declare-fun e!1403893 () Bool)

(assert (=> d!657018 e!1403893))

(declare-fun res!944419 () Bool)

(assert (=> d!657018 (=> (not res!944419) (not e!1403893))))

(assert (=> d!657018 (= res!944419 (<= 0 from!1114))))

(assert (=> d!657018 (= (apply!6259 totalInput!923 from!1114) lt!821788)))

(declare-fun b!2196701 () Bool)

(assert (=> b!2196701 (= e!1403893 (< from!1114 (size!19937 totalInput!923)))))

(assert (= (and d!657018 res!944419) b!2196701))

(assert (=> d!657018 m!2639029))

(assert (=> d!657018 m!2639029))

(declare-fun m!2639075 () Bool)

(assert (=> d!657018 m!2639075))

(declare-fun m!2639077 () Bool)

(assert (=> d!657018 m!2639077))

(assert (=> b!2196701 m!2639059))

(assert (=> b!2196679 d!657018))

(declare-fun lt!821790 () Int)

(declare-fun d!657020 () Bool)

(assert (=> d!657020 (and (>= lt!821790 (- 1)) (< lt!821790 lt!821763) (>= lt!821790 lt!821766) (or (= lt!821790 lt!821766) (>= lt!821790 (+ 1 from!1114))))))

(declare-fun e!1403895 () Int)

(assert (=> d!657020 (= lt!821790 e!1403895)))

(declare-fun c!349882 () Bool)

(declare-fun e!1403896 () Bool)

(assert (=> d!657020 (= c!349882 e!1403896)))

(declare-fun res!944420 () Bool)

(assert (=> d!657020 (=> res!944420 e!1403896)))

(assert (=> d!657020 (= res!944420 (= (+ 1 from!1114) lt!821763))))

(assert (=> d!657020 (and (>= (+ 1 from!1114) 0) (<= (+ 1 from!1114) lt!821763))))

(assert (=> d!657020 (= (furthestNullablePosition!353 lt!821776 (+ 1 from!1114) totalInput!923 lt!821763 lt!821766) lt!821790)))

(declare-fun b!2196702 () Bool)

(declare-fun e!1403894 () Int)

(declare-fun lt!821789 () (InoxSet Context!3510))

(assert (=> b!2196702 (= e!1403895 (furthestNullablePosition!353 lt!821789 (+ 1 from!1114 1) totalInput!923 lt!821763 e!1403894))))

(assert (=> b!2196702 (= lt!821789 (derivationStepZipper!257 lt!821776 (apply!6259 totalInput!923 (+ 1 from!1114))))))

(declare-fun c!349883 () Bool)

(assert (=> b!2196702 (= c!349883 (nullableZipper!465 lt!821789))))

(declare-fun b!2196703 () Bool)

(assert (=> b!2196703 (= e!1403895 lt!821766)))

(declare-fun b!2196704 () Bool)

(assert (=> b!2196704 (= e!1403896 (lostCauseZipper!301 lt!821776))))

(declare-fun b!2196705 () Bool)

(assert (=> b!2196705 (= e!1403894 (+ 1 from!1114))))

(declare-fun b!2196706 () Bool)

(assert (=> b!2196706 (= e!1403894 lt!821766)))

(assert (= (and d!657020 (not res!944420)) b!2196704))

(assert (= (and d!657020 c!349882) b!2196703))

(assert (= (and d!657020 (not c!349882)) b!2196702))

(assert (= (and b!2196702 c!349883) b!2196705))

(assert (= (and b!2196702 (not c!349883)) b!2196706))

(declare-fun m!2639079 () Bool)

(assert (=> b!2196702 m!2639079))

(declare-fun m!2639081 () Bool)

(assert (=> b!2196702 m!2639081))

(assert (=> b!2196702 m!2639081))

(declare-fun m!2639083 () Bool)

(assert (=> b!2196702 m!2639083))

(declare-fun m!2639085 () Bool)

(assert (=> b!2196702 m!2639085))

(declare-fun m!2639087 () Bool)

(assert (=> b!2196704 m!2639087))

(assert (=> b!2196679 d!657020))

(declare-fun d!657022 () Bool)

(declare-fun lambda!82635 () Int)

(declare-fun exists!815 ((InoxSet Context!3510) Int) Bool)

(assert (=> d!657022 (= (nullableZipper!465 lt!821776) (exists!815 lt!821776 lambda!82635))))

(declare-fun bs!448993 () Bool)

(assert (= bs!448993 d!657022))

(declare-fun m!2639089 () Bool)

(assert (=> bs!448993 m!2639089))

(assert (=> b!2196679 d!657022))

(declare-fun bs!448994 () Bool)

(declare-fun d!657024 () Bool)

(assert (= bs!448994 (and d!657024 d!657022)))

(declare-fun lambda!82648 () Int)

(assert (=> bs!448994 (not (= lambda!82648 lambda!82635))))

(declare-fun bs!448995 () Bool)

(declare-fun b!2196711 () Bool)

(assert (= bs!448995 (and b!2196711 d!657022)))

(declare-fun lambda!82649 () Int)

(assert (=> bs!448995 (not (= lambda!82649 lambda!82635))))

(declare-fun bs!448996 () Bool)

(assert (= bs!448996 (and b!2196711 d!657024)))

(assert (=> bs!448996 (not (= lambda!82649 lambda!82648))))

(declare-fun bs!448997 () Bool)

(declare-fun b!2196712 () Bool)

(assert (= bs!448997 (and b!2196712 d!657022)))

(declare-fun lambda!82650 () Int)

(assert (=> bs!448997 (not (= lambda!82650 lambda!82635))))

(declare-fun bs!448998 () Bool)

(assert (= bs!448998 (and b!2196712 d!657024)))

(assert (=> bs!448998 (not (= lambda!82650 lambda!82648))))

(declare-fun bs!448999 () Bool)

(assert (= bs!448999 (and b!2196712 b!2196711)))

(assert (=> bs!448999 (= lambda!82650 lambda!82649)))

(declare-datatypes ((List!25660 0))(
  ( (Nil!25576) (Cons!25576 (h!30977 Context!3510) (t!198266 List!25660)) )
))
(declare-fun lt!821810 () List!25660)

(declare-fun call!131991 () Bool)

(declare-fun lt!821814 () List!25660)

(declare-fun bm!131986 () Bool)

(declare-fun c!349896 () Bool)

(declare-fun exists!816 (List!25660 Int) Bool)

(assert (=> bm!131986 (= call!131991 (exists!816 (ite c!349896 lt!821814 lt!821810) (ite c!349896 lambda!82649 lambda!82650)))))

(declare-fun e!1403903 () Unit!38685)

(declare-fun Unit!38687 () Unit!38685)

(assert (=> b!2196711 (= e!1403903 Unit!38687)))

(declare-fun call!131992 () List!25660)

(assert (=> b!2196711 (= lt!821814 call!131992)))

(declare-fun lt!821809 () Unit!38685)

(declare-fun lemmaNotForallThenExists!47 (List!25660 Int) Unit!38685)

(assert (=> b!2196711 (= lt!821809 (lemmaNotForallThenExists!47 lt!821814 lambda!82648))))

(assert (=> b!2196711 call!131991))

(declare-fun lt!821813 () Unit!38685)

(assert (=> b!2196711 (= lt!821813 lt!821809)))

(declare-fun bm!131987 () Bool)

(declare-fun toList!1258 ((InoxSet Context!3510)) List!25660)

(assert (=> bm!131987 (= call!131992 (toList!1258 z!3955))))

(declare-fun lt!821808 () Bool)

(declare-datatypes ((Option!5022 0))(
  ( (None!5021) (Some!5021 (v!29416 List!25658)) )
))
(declare-fun isEmpty!14588 (Option!5022) Bool)

(declare-fun getLanguageWitness!141 ((InoxSet Context!3510)) Option!5022)

(assert (=> d!657024 (= lt!821808 (isEmpty!14588 (getLanguageWitness!141 z!3955)))))

(declare-fun forall!5228 ((InoxSet Context!3510) Int) Bool)

(assert (=> d!657024 (= lt!821808 (forall!5228 z!3955 lambda!82648))))

(declare-fun lt!821812 () Unit!38685)

(assert (=> d!657024 (= lt!821812 e!1403903)))

(assert (=> d!657024 (= c!349896 (not (forall!5228 z!3955 lambda!82648)))))

(assert (=> d!657024 (= (lostCauseZipper!301 z!3955) lt!821808)))

(declare-fun Unit!38688 () Unit!38685)

(assert (=> b!2196712 (= e!1403903 Unit!38688)))

(assert (=> b!2196712 (= lt!821810 call!131992)))

(declare-fun lt!821811 () Unit!38685)

(declare-fun lemmaForallThenNotExists!47 (List!25660 Int) Unit!38685)

(assert (=> b!2196712 (= lt!821811 (lemmaForallThenNotExists!47 lt!821810 lambda!82648))))

(assert (=> b!2196712 (not call!131991)))

(declare-fun lt!821807 () Unit!38685)

(assert (=> b!2196712 (= lt!821807 lt!821811)))

(assert (= (and d!657024 c!349896) b!2196711))

(assert (= (and d!657024 (not c!349896)) b!2196712))

(assert (= (or b!2196711 b!2196712) bm!131986))

(assert (= (or b!2196711 b!2196712) bm!131987))

(declare-fun m!2639091 () Bool)

(assert (=> d!657024 m!2639091))

(assert (=> d!657024 m!2639091))

(declare-fun m!2639093 () Bool)

(assert (=> d!657024 m!2639093))

(declare-fun m!2639095 () Bool)

(assert (=> d!657024 m!2639095))

(assert (=> d!657024 m!2639095))

(declare-fun m!2639097 () Bool)

(assert (=> bm!131987 m!2639097))

(declare-fun m!2639099 () Bool)

(assert (=> bm!131986 m!2639099))

(declare-fun m!2639101 () Bool)

(assert (=> b!2196712 m!2639101))

(declare-fun m!2639103 () Bool)

(assert (=> b!2196711 m!2639103))

(assert (=> b!2196681 d!657024))

(declare-fun d!657026 () Bool)

(declare-fun lambda!82653 () Int)

(declare-fun forall!5229 (List!25659 Int) Bool)

(assert (=> d!657026 (= (inv!34278 setElem!18830) (forall!5229 (exprs!2255 setElem!18830) lambda!82653))))

(declare-fun bs!449000 () Bool)

(assert (= bs!449000 d!657026))

(declare-fun m!2639105 () Bool)

(assert (=> bs!449000 m!2639105))

(assert (=> setNonEmpty!18830 d!657026))

(declare-fun d!657028 () Bool)

(declare-fun c!349899 () Bool)

(get-info :version)

(assert (=> d!657028 (= c!349899 ((_ is Node!8321) (c!349872 totalInput!923)))))

(declare-fun e!1403908 () Bool)

(assert (=> d!657028 (= (inv!34276 (c!349872 totalInput!923)) e!1403908)))

(declare-fun b!2196719 () Bool)

(declare-fun inv!34279 (Conc!8321) Bool)

(assert (=> b!2196719 (= e!1403908 (inv!34279 (c!349872 totalInput!923)))))

(declare-fun b!2196720 () Bool)

(declare-fun e!1403909 () Bool)

(assert (=> b!2196720 (= e!1403908 e!1403909)))

(declare-fun res!944423 () Bool)

(assert (=> b!2196720 (= res!944423 (not ((_ is Leaf!12181) (c!349872 totalInput!923))))))

(assert (=> b!2196720 (=> res!944423 e!1403909)))

(declare-fun b!2196721 () Bool)

(declare-fun inv!34280 (Conc!8321) Bool)

(assert (=> b!2196721 (= e!1403909 (inv!34280 (c!349872 totalInput!923)))))

(assert (= (and d!657028 c!349899) b!2196719))

(assert (= (and d!657028 (not c!349899)) b!2196720))

(assert (= (and b!2196720 (not res!944423)) b!2196721))

(declare-fun m!2639107 () Bool)

(assert (=> b!2196719 m!2639107))

(declare-fun m!2639109 () Bool)

(assert (=> b!2196721 m!2639109))

(assert (=> b!2196672 d!657028))

(declare-fun d!657030 () Bool)

(declare-fun c!349902 () Bool)

(declare-fun isEmpty!14589 (List!25658) Bool)

(assert (=> d!657030 (= c!349902 (isEmpty!14589 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774)))))

(declare-fun e!1403912 () Bool)

(assert (=> d!657030 (= (matchZipper!271 lt!821776 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774)) e!1403912)))

(declare-fun b!2196726 () Bool)

(assert (=> b!2196726 (= e!1403912 (nullableZipper!465 lt!821776))))

(declare-fun b!2196727 () Bool)

(declare-fun head!4687 (List!25658) C!12516)

(declare-fun tail!3159 (List!25658) List!25658)

(assert (=> b!2196727 (= e!1403912 (matchZipper!271 (derivationStepZipper!257 lt!821776 (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))) (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))))))

(assert (= (and d!657030 c!349902) b!2196726))

(assert (= (and d!657030 (not c!349902)) b!2196727))

(assert (=> d!657030 m!2639043))

(declare-fun m!2639111 () Bool)

(assert (=> d!657030 m!2639111))

(assert (=> b!2196726 m!2639033))

(assert (=> b!2196727 m!2639043))

(declare-fun m!2639113 () Bool)

(assert (=> b!2196727 m!2639113))

(assert (=> b!2196727 m!2639113))

(declare-fun m!2639115 () Bool)

(assert (=> b!2196727 m!2639115))

(assert (=> b!2196727 m!2639043))

(declare-fun m!2639117 () Bool)

(assert (=> b!2196727 m!2639117))

(assert (=> b!2196727 m!2639115))

(assert (=> b!2196727 m!2639117))

(declare-fun m!2639119 () Bool)

(assert (=> b!2196727 m!2639119))

(assert (=> b!2196674 d!657030))

(declare-fun b!2196742 () Bool)

(declare-fun e!1403923 () Int)

(declare-fun size!19938 (List!25658) Int)

(assert (=> b!2196742 (= e!1403923 (size!19938 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114))))))

(declare-fun b!2196743 () Bool)

(declare-fun e!1403921 () Bool)

(declare-fun lt!821817 () List!25658)

(declare-fun e!1403922 () Int)

(assert (=> b!2196743 (= e!1403921 (= (size!19938 lt!821817) e!1403922))))

(declare-fun c!349910 () Bool)

(assert (=> b!2196743 (= c!349910 (<= lt!821774 0))))

(declare-fun b!2196744 () Bool)

(assert (=> b!2196744 (= e!1403922 0)))

(declare-fun b!2196745 () Bool)

(assert (=> b!2196745 (= e!1403922 e!1403923)))

(declare-fun c!349911 () Bool)

(assert (=> b!2196745 (= c!349911 (>= lt!821774 (size!19938 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)))))))

(declare-fun e!1403924 () List!25658)

(declare-fun b!2196746 () Bool)

(assert (=> b!2196746 (= e!1403924 (Cons!25574 (h!30975 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114))) (take!363 (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114))) (- lt!821774 1))))))

(declare-fun b!2196747 () Bool)

(assert (=> b!2196747 (= e!1403923 lt!821774)))

(declare-fun d!657032 () Bool)

(assert (=> d!657032 e!1403921))

(declare-fun res!944426 () Bool)

(assert (=> d!657032 (=> (not res!944426) (not e!1403921))))

(declare-fun content!3472 (List!25658) (InoxSet C!12516))

(assert (=> d!657032 (= res!944426 (= ((_ map implies) (content!3472 lt!821817) (content!3472 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)))) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657032 (= lt!821817 e!1403924)))

(declare-fun c!349909 () Bool)

(assert (=> d!657032 (= c!349909 (or ((_ is Nil!25574) (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114))) (<= lt!821774 0)))))

(assert (=> d!657032 (= (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774) lt!821817)))

(declare-fun b!2196748 () Bool)

(assert (=> b!2196748 (= e!1403924 Nil!25574)))

(assert (= (and d!657032 c!349909) b!2196748))

(assert (= (and d!657032 (not c!349909)) b!2196746))

(assert (= (and d!657032 res!944426) b!2196743))

(assert (= (and b!2196743 c!349910) b!2196744))

(assert (= (and b!2196743 (not c!349910)) b!2196745))

(assert (= (and b!2196745 c!349911) b!2196742))

(assert (= (and b!2196745 (not c!349911)) b!2196747))

(assert (=> b!2196742 m!2639041))

(declare-fun m!2639121 () Bool)

(assert (=> b!2196742 m!2639121))

(declare-fun m!2639123 () Bool)

(assert (=> b!2196743 m!2639123))

(declare-fun m!2639125 () Bool)

(assert (=> d!657032 m!2639125))

(assert (=> d!657032 m!2639041))

(declare-fun m!2639127 () Bool)

(assert (=> d!657032 m!2639127))

(declare-fun m!2639129 () Bool)

(assert (=> b!2196746 m!2639129))

(assert (=> b!2196745 m!2639041))

(assert (=> b!2196745 m!2639121))

(assert (=> b!2196674 d!657032))

(declare-fun b!2196767 () Bool)

(declare-fun e!1403938 () List!25658)

(assert (=> b!2196767 (= e!1403938 (drop!1373 (t!198264 (list!9835 totalInput!923)) (- (+ 1 from!1114) 1)))))

(declare-fun b!2196768 () Bool)

(declare-fun e!1403937 () Bool)

(declare-fun lt!821820 () List!25658)

(declare-fun e!1403939 () Int)

(assert (=> b!2196768 (= e!1403937 (= (size!19938 lt!821820) e!1403939))))

(declare-fun c!349922 () Bool)

(assert (=> b!2196768 (= c!349922 (<= (+ 1 from!1114) 0))))

(declare-fun b!2196769 () Bool)

(declare-fun e!1403936 () Int)

(declare-fun call!131995 () Int)

(assert (=> b!2196769 (= e!1403936 (- call!131995 (+ 1 from!1114)))))

(declare-fun b!2196770 () Bool)

(declare-fun e!1403935 () List!25658)

(assert (=> b!2196770 (= e!1403935 e!1403938)))

(declare-fun c!349920 () Bool)

(assert (=> b!2196770 (= c!349920 (<= (+ 1 from!1114) 0))))

(declare-fun bm!131990 () Bool)

(assert (=> bm!131990 (= call!131995 (size!19938 (list!9835 totalInput!923)))))

(declare-fun b!2196772 () Bool)

(assert (=> b!2196772 (= e!1403939 e!1403936)))

(declare-fun c!349921 () Bool)

(assert (=> b!2196772 (= c!349921 (>= (+ 1 from!1114) call!131995))))

(declare-fun b!2196773 () Bool)

(assert (=> b!2196773 (= e!1403936 0)))

(declare-fun b!2196774 () Bool)

(assert (=> b!2196774 (= e!1403935 Nil!25574)))

(declare-fun b!2196775 () Bool)

(assert (=> b!2196775 (= e!1403938 (list!9835 totalInput!923))))

(declare-fun d!657034 () Bool)

(assert (=> d!657034 e!1403937))

(declare-fun res!944429 () Bool)

(assert (=> d!657034 (=> (not res!944429) (not e!1403937))))

(assert (=> d!657034 (= res!944429 (= ((_ map implies) (content!3472 lt!821820) (content!3472 (list!9835 totalInput!923))) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657034 (= lt!821820 e!1403935)))

(declare-fun c!349923 () Bool)

(assert (=> d!657034 (= c!349923 ((_ is Nil!25574) (list!9835 totalInput!923)))))

(assert (=> d!657034 (= (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821820)))

(declare-fun b!2196771 () Bool)

(assert (=> b!2196771 (= e!1403939 call!131995)))

(assert (= (and d!657034 c!349923) b!2196774))

(assert (= (and d!657034 (not c!349923)) b!2196770))

(assert (= (and b!2196770 c!349920) b!2196775))

(assert (= (and b!2196770 (not c!349920)) b!2196767))

(assert (= (and d!657034 res!944429) b!2196768))

(assert (= (and b!2196768 c!349922) b!2196771))

(assert (= (and b!2196768 (not c!349922)) b!2196772))

(assert (= (and b!2196772 c!349921) b!2196773))

(assert (= (and b!2196772 (not c!349921)) b!2196769))

(assert (= (or b!2196771 b!2196772 b!2196769) bm!131990))

(declare-fun m!2639131 () Bool)

(assert (=> b!2196767 m!2639131))

(declare-fun m!2639133 () Bool)

(assert (=> b!2196768 m!2639133))

(assert (=> bm!131990 m!2639029))

(declare-fun m!2639135 () Bool)

(assert (=> bm!131990 m!2639135))

(declare-fun m!2639137 () Bool)

(assert (=> d!657034 m!2639137))

(assert (=> d!657034 m!2639029))

(declare-fun m!2639139 () Bool)

(assert (=> d!657034 m!2639139))

(assert (=> b!2196674 d!657034))

(declare-fun d!657036 () Bool)

(declare-fun list!9836 (Conc!8321) List!25658)

(assert (=> d!657036 (= (list!9835 totalInput!923) (list!9836 (c!349872 totalInput!923)))))

(declare-fun bs!449001 () Bool)

(assert (= bs!449001 d!657036))

(declare-fun m!2639141 () Bool)

(assert (=> bs!449001 m!2639141))

(assert (=> b!2196674 d!657036))

(declare-fun bs!449002 () Bool)

(declare-fun d!657038 () Bool)

(assert (= bs!449002 (and d!657038 d!657022)))

(declare-fun lambda!82654 () Int)

(assert (=> bs!449002 (= lambda!82654 lambda!82635)))

(declare-fun bs!449003 () Bool)

(assert (= bs!449003 (and d!657038 d!657024)))

(assert (=> bs!449003 (not (= lambda!82654 lambda!82648))))

(declare-fun bs!449004 () Bool)

(assert (= bs!449004 (and d!657038 b!2196711)))

(assert (=> bs!449004 (not (= lambda!82654 lambda!82649))))

(declare-fun bs!449005 () Bool)

(assert (= bs!449005 (and d!657038 b!2196712)))

(assert (=> bs!449005 (not (= lambda!82654 lambda!82650))))

(assert (=> d!657038 (= (nullableZipper!465 z!3955) (exists!815 z!3955 lambda!82654))))

(declare-fun bs!449006 () Bool)

(assert (= bs!449006 d!657038))

(declare-fun m!2639143 () Bool)

(assert (=> bs!449006 m!2639143))

(assert (=> b!2196675 d!657038))

(declare-fun d!657040 () Bool)

(declare-fun c!349924 () Bool)

(assert (=> d!657040 (= c!349924 (isEmpty!14589 (take!363 lt!821768 lt!821767)))))

(declare-fun e!1403940 () Bool)

(assert (=> d!657040 (= (matchZipper!271 z!3955 (take!363 lt!821768 lt!821767)) e!1403940)))

(declare-fun b!2196776 () Bool)

(assert (=> b!2196776 (= e!1403940 (nullableZipper!465 z!3955))))

(declare-fun b!2196777 () Bool)

(assert (=> b!2196777 (= e!1403940 (matchZipper!271 (derivationStepZipper!257 z!3955 (head!4687 (take!363 lt!821768 lt!821767))) (tail!3159 (take!363 lt!821768 lt!821767))))))

(assert (= (and d!657040 c!349924) b!2196776))

(assert (= (and d!657040 (not c!349924)) b!2196777))

(assert (=> d!657040 m!2639051))

(declare-fun m!2639145 () Bool)

(assert (=> d!657040 m!2639145))

(assert (=> b!2196776 m!2639057))

(assert (=> b!2196777 m!2639051))

(declare-fun m!2639147 () Bool)

(assert (=> b!2196777 m!2639147))

(assert (=> b!2196777 m!2639147))

(declare-fun m!2639149 () Bool)

(assert (=> b!2196777 m!2639149))

(assert (=> b!2196777 m!2639051))

(declare-fun m!2639151 () Bool)

(assert (=> b!2196777 m!2639151))

(assert (=> b!2196777 m!2639149))

(assert (=> b!2196777 m!2639151))

(declare-fun m!2639153 () Bool)

(assert (=> b!2196777 m!2639153))

(assert (=> b!2196676 d!657040))

(declare-fun b!2196778 () Bool)

(declare-fun e!1403943 () Int)

(assert (=> b!2196778 (= e!1403943 (size!19938 lt!821768))))

(declare-fun b!2196779 () Bool)

(declare-fun e!1403941 () Bool)

(declare-fun lt!821821 () List!25658)

(declare-fun e!1403942 () Int)

(assert (=> b!2196779 (= e!1403941 (= (size!19938 lt!821821) e!1403942))))

(declare-fun c!349926 () Bool)

(assert (=> b!2196779 (= c!349926 (<= lt!821767 0))))

(declare-fun b!2196780 () Bool)

(assert (=> b!2196780 (= e!1403942 0)))

(declare-fun b!2196781 () Bool)

(assert (=> b!2196781 (= e!1403942 e!1403943)))

(declare-fun c!349927 () Bool)

(assert (=> b!2196781 (= c!349927 (>= lt!821767 (size!19938 lt!821768)))))

(declare-fun b!2196782 () Bool)

(declare-fun e!1403944 () List!25658)

(assert (=> b!2196782 (= e!1403944 (Cons!25574 (h!30975 lt!821768) (take!363 (t!198264 lt!821768) (- lt!821767 1))))))

(declare-fun b!2196783 () Bool)

(assert (=> b!2196783 (= e!1403943 lt!821767)))

(declare-fun d!657042 () Bool)

(assert (=> d!657042 e!1403941))

(declare-fun res!944430 () Bool)

(assert (=> d!657042 (=> (not res!944430) (not e!1403941))))

(assert (=> d!657042 (= res!944430 (= ((_ map implies) (content!3472 lt!821821) (content!3472 lt!821768)) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657042 (= lt!821821 e!1403944)))

(declare-fun c!349925 () Bool)

(assert (=> d!657042 (= c!349925 (or ((_ is Nil!25574) lt!821768) (<= lt!821767 0)))))

(assert (=> d!657042 (= (take!363 lt!821768 lt!821767) lt!821821)))

(declare-fun b!2196784 () Bool)

(assert (=> b!2196784 (= e!1403944 Nil!25574)))

(assert (= (and d!657042 c!349925) b!2196784))

(assert (= (and d!657042 (not c!349925)) b!2196782))

(assert (= (and d!657042 res!944430) b!2196779))

(assert (= (and b!2196779 c!349926) b!2196780))

(assert (= (and b!2196779 (not c!349926)) b!2196781))

(assert (= (and b!2196781 c!349927) b!2196778))

(assert (= (and b!2196781 (not c!349927)) b!2196783))

(declare-fun m!2639155 () Bool)

(assert (=> b!2196778 m!2639155))

(declare-fun m!2639157 () Bool)

(assert (=> b!2196779 m!2639157))

(declare-fun m!2639159 () Bool)

(assert (=> d!657042 m!2639159))

(declare-fun m!2639161 () Bool)

(assert (=> d!657042 m!2639161))

(declare-fun m!2639163 () Bool)

(assert (=> b!2196782 m!2639163))

(assert (=> b!2196781 m!2639155))

(assert (=> b!2196676 d!657042))

(declare-fun d!657044 () Bool)

(assert (=> d!657044 (= (Cons!25574 (apply!6258 lt!821775 from!1114) (take!363 (drop!1373 lt!821775 (+ from!1114 1)) 0)) (take!363 (drop!1373 lt!821775 from!1114) (+ 0 1)))))

(declare-fun lt!821824 () Unit!38685)

(declare-fun choose!13000 (List!25658 Int Int) Unit!38685)

(assert (=> d!657044 (= lt!821824 (choose!13000 lt!821775 from!1114 0))))

(declare-fun e!1403947 () Bool)

(assert (=> d!657044 e!1403947))

(declare-fun res!944433 () Bool)

(assert (=> d!657044 (=> (not res!944433) (not e!1403947))))

(assert (=> d!657044 (= res!944433 (>= from!1114 0))))

(assert (=> d!657044 (= (lemmaDropTakeAddOneLeft!20 lt!821775 from!1114 0) lt!821824)))

(declare-fun b!2196787 () Bool)

(assert (=> b!2196787 (= e!1403947 (< from!1114 (size!19938 lt!821775)))))

(assert (= (and d!657044 res!944433) b!2196787))

(assert (=> d!657044 m!2639019))

(declare-fun m!2639165 () Bool)

(assert (=> d!657044 m!2639165))

(assert (=> d!657044 m!2639019))

(assert (=> d!657044 m!2639027))

(declare-fun m!2639167 () Bool)

(assert (=> d!657044 m!2639167))

(declare-fun m!2639169 () Bool)

(assert (=> d!657044 m!2639169))

(assert (=> d!657044 m!2639167))

(declare-fun m!2639171 () Bool)

(assert (=> d!657044 m!2639171))

(declare-fun m!2639173 () Bool)

(assert (=> b!2196787 m!2639173))

(assert (=> b!2196667 d!657044))

(declare-fun d!657046 () Bool)

(declare-fun lt!821827 () C!12516)

(declare-fun contains!4281 (List!25658 C!12516) Bool)

(assert (=> d!657046 (contains!4281 lt!821775 lt!821827)))

(declare-fun e!1403953 () C!12516)

(assert (=> d!657046 (= lt!821827 e!1403953)))

(declare-fun c!349930 () Bool)

(assert (=> d!657046 (= c!349930 (= from!1114 0))))

(declare-fun e!1403952 () Bool)

(assert (=> d!657046 e!1403952))

(declare-fun res!944436 () Bool)

(assert (=> d!657046 (=> (not res!944436) (not e!1403952))))

(assert (=> d!657046 (= res!944436 (<= 0 from!1114))))

(assert (=> d!657046 (= (apply!6258 lt!821775 from!1114) lt!821827)))

(declare-fun b!2196794 () Bool)

(assert (=> b!2196794 (= e!1403952 (< from!1114 (size!19938 lt!821775)))))

(declare-fun b!2196795 () Bool)

(assert (=> b!2196795 (= e!1403953 (head!4687 lt!821775))))

(declare-fun b!2196796 () Bool)

(assert (=> b!2196796 (= e!1403953 (apply!6258 (tail!3159 lt!821775) (- from!1114 1)))))

(assert (= (and d!657046 res!944436) b!2196794))

(assert (= (and d!657046 c!349930) b!2196795))

(assert (= (and d!657046 (not c!349930)) b!2196796))

(declare-fun m!2639175 () Bool)

(assert (=> d!657046 m!2639175))

(assert (=> b!2196794 m!2639173))

(declare-fun m!2639177 () Bool)

(assert (=> b!2196795 m!2639177))

(declare-fun m!2639179 () Bool)

(assert (=> b!2196796 m!2639179))

(assert (=> b!2196796 m!2639179))

(declare-fun m!2639181 () Bool)

(assert (=> b!2196796 m!2639181))

(assert (=> b!2196667 d!657046))

(declare-fun b!2196797 () Bool)

(declare-fun e!1403956 () Int)

(assert (=> b!2196797 (= e!1403956 (size!19938 (drop!1373 lt!821775 (+ 1 from!1114))))))

(declare-fun b!2196798 () Bool)

(declare-fun e!1403954 () Bool)

(declare-fun lt!821828 () List!25658)

(declare-fun e!1403955 () Int)

(assert (=> b!2196798 (= e!1403954 (= (size!19938 lt!821828) e!1403955))))

(declare-fun c!349932 () Bool)

(assert (=> b!2196798 (= c!349932 (<= 0 0))))

(declare-fun b!2196799 () Bool)

(assert (=> b!2196799 (= e!1403955 0)))

(declare-fun b!2196800 () Bool)

(assert (=> b!2196800 (= e!1403955 e!1403956)))

(declare-fun c!349933 () Bool)

(assert (=> b!2196800 (= c!349933 (>= 0 (size!19938 (drop!1373 lt!821775 (+ 1 from!1114)))))))

(declare-fun b!2196801 () Bool)

(declare-fun e!1403957 () List!25658)

(assert (=> b!2196801 (= e!1403957 (Cons!25574 (h!30975 (drop!1373 lt!821775 (+ 1 from!1114))) (take!363 (t!198264 (drop!1373 lt!821775 (+ 1 from!1114))) (- 0 1))))))

(declare-fun b!2196802 () Bool)

(assert (=> b!2196802 (= e!1403956 0)))

(declare-fun d!657048 () Bool)

(assert (=> d!657048 e!1403954))

(declare-fun res!944437 () Bool)

(assert (=> d!657048 (=> (not res!944437) (not e!1403954))))

(assert (=> d!657048 (= res!944437 (= ((_ map implies) (content!3472 lt!821828) (content!3472 (drop!1373 lt!821775 (+ 1 from!1114)))) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657048 (= lt!821828 e!1403957)))

(declare-fun c!349931 () Bool)

(assert (=> d!657048 (= c!349931 (or ((_ is Nil!25574) (drop!1373 lt!821775 (+ 1 from!1114))) (<= 0 0)))))

(assert (=> d!657048 (= (take!363 (drop!1373 lt!821775 (+ 1 from!1114)) 0) lt!821828)))

(declare-fun b!2196803 () Bool)

(assert (=> b!2196803 (= e!1403957 Nil!25574)))

(assert (= (and d!657048 c!349931) b!2196803))

(assert (= (and d!657048 (not c!349931)) b!2196801))

(assert (= (and d!657048 res!944437) b!2196798))

(assert (= (and b!2196798 c!349932) b!2196799))

(assert (= (and b!2196798 (not c!349932)) b!2196800))

(assert (= (and b!2196800 c!349933) b!2196797))

(assert (= (and b!2196800 (not c!349933)) b!2196802))

(assert (=> b!2196797 m!2639021))

(declare-fun m!2639183 () Bool)

(assert (=> b!2196797 m!2639183))

(declare-fun m!2639185 () Bool)

(assert (=> b!2196798 m!2639185))

(declare-fun m!2639187 () Bool)

(assert (=> d!657048 m!2639187))

(assert (=> d!657048 m!2639021))

(declare-fun m!2639189 () Bool)

(assert (=> d!657048 m!2639189))

(declare-fun m!2639191 () Bool)

(assert (=> b!2196801 m!2639191))

(assert (=> b!2196800 m!2639021))

(assert (=> b!2196800 m!2639183))

(assert (=> b!2196667 d!657048))

(declare-fun b!2196804 () Bool)

(declare-fun e!1403961 () List!25658)

(assert (=> b!2196804 (= e!1403961 (drop!1373 (t!198264 lt!821775) (- (+ 1 from!1114) 1)))))

(declare-fun b!2196805 () Bool)

(declare-fun e!1403960 () Bool)

(declare-fun lt!821829 () List!25658)

(declare-fun e!1403962 () Int)

(assert (=> b!2196805 (= e!1403960 (= (size!19938 lt!821829) e!1403962))))

(declare-fun c!349936 () Bool)

(assert (=> b!2196805 (= c!349936 (<= (+ 1 from!1114) 0))))

(declare-fun b!2196806 () Bool)

(declare-fun e!1403959 () Int)

(declare-fun call!131996 () Int)

(assert (=> b!2196806 (= e!1403959 (- call!131996 (+ 1 from!1114)))))

(declare-fun b!2196807 () Bool)

(declare-fun e!1403958 () List!25658)

(assert (=> b!2196807 (= e!1403958 e!1403961)))

(declare-fun c!349934 () Bool)

(assert (=> b!2196807 (= c!349934 (<= (+ 1 from!1114) 0))))

(declare-fun bm!131991 () Bool)

(assert (=> bm!131991 (= call!131996 (size!19938 lt!821775))))

(declare-fun b!2196809 () Bool)

(assert (=> b!2196809 (= e!1403962 e!1403959)))

(declare-fun c!349935 () Bool)

(assert (=> b!2196809 (= c!349935 (>= (+ 1 from!1114) call!131996))))

(declare-fun b!2196810 () Bool)

(assert (=> b!2196810 (= e!1403959 0)))

(declare-fun b!2196811 () Bool)

(assert (=> b!2196811 (= e!1403958 Nil!25574)))

(declare-fun b!2196812 () Bool)

(assert (=> b!2196812 (= e!1403961 lt!821775)))

(declare-fun d!657050 () Bool)

(assert (=> d!657050 e!1403960))

(declare-fun res!944438 () Bool)

(assert (=> d!657050 (=> (not res!944438) (not e!1403960))))

(assert (=> d!657050 (= res!944438 (= ((_ map implies) (content!3472 lt!821829) (content!3472 lt!821775)) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657050 (= lt!821829 e!1403958)))

(declare-fun c!349937 () Bool)

(assert (=> d!657050 (= c!349937 ((_ is Nil!25574) lt!821775))))

(assert (=> d!657050 (= (drop!1373 lt!821775 (+ 1 from!1114)) lt!821829)))

(declare-fun b!2196808 () Bool)

(assert (=> b!2196808 (= e!1403962 call!131996)))

(assert (= (and d!657050 c!349937) b!2196811))

(assert (= (and d!657050 (not c!349937)) b!2196807))

(assert (= (and b!2196807 c!349934) b!2196812))

(assert (= (and b!2196807 (not c!349934)) b!2196804))

(assert (= (and d!657050 res!944438) b!2196805))

(assert (= (and b!2196805 c!349936) b!2196808))

(assert (= (and b!2196805 (not c!349936)) b!2196809))

(assert (= (and b!2196809 c!349935) b!2196810))

(assert (= (and b!2196809 (not c!349935)) b!2196806))

(assert (= (or b!2196808 b!2196809 b!2196806) bm!131991))

(declare-fun m!2639193 () Bool)

(assert (=> b!2196804 m!2639193))

(declare-fun m!2639195 () Bool)

(assert (=> b!2196805 m!2639195))

(assert (=> bm!131991 m!2639173))

(declare-fun m!2639197 () Bool)

(assert (=> d!657050 m!2639197))

(declare-fun m!2639199 () Bool)

(assert (=> d!657050 m!2639199))

(assert (=> b!2196667 d!657050))

(assert (=> b!2196667 d!657036))

(declare-fun b!2196813 () Bool)

(declare-fun e!1403966 () List!25658)

(assert (=> b!2196813 (= e!1403966 (drop!1373 (t!198264 lt!821775) (- from!1114 1)))))

(declare-fun b!2196814 () Bool)

(declare-fun e!1403965 () Bool)

(declare-fun lt!821830 () List!25658)

(declare-fun e!1403967 () Int)

(assert (=> b!2196814 (= e!1403965 (= (size!19938 lt!821830) e!1403967))))

(declare-fun c!349940 () Bool)

(assert (=> b!2196814 (= c!349940 (<= from!1114 0))))

(declare-fun b!2196815 () Bool)

(declare-fun e!1403964 () Int)

(declare-fun call!131997 () Int)

(assert (=> b!2196815 (= e!1403964 (- call!131997 from!1114))))

(declare-fun b!2196816 () Bool)

(declare-fun e!1403963 () List!25658)

(assert (=> b!2196816 (= e!1403963 e!1403966)))

(declare-fun c!349938 () Bool)

(assert (=> b!2196816 (= c!349938 (<= from!1114 0))))

(declare-fun bm!131992 () Bool)

(assert (=> bm!131992 (= call!131997 (size!19938 lt!821775))))

(declare-fun b!2196818 () Bool)

(assert (=> b!2196818 (= e!1403967 e!1403964)))

(declare-fun c!349939 () Bool)

(assert (=> b!2196818 (= c!349939 (>= from!1114 call!131997))))

(declare-fun b!2196819 () Bool)

(assert (=> b!2196819 (= e!1403964 0)))

(declare-fun b!2196820 () Bool)

(assert (=> b!2196820 (= e!1403963 Nil!25574)))

(declare-fun b!2196821 () Bool)

(assert (=> b!2196821 (= e!1403966 lt!821775)))

(declare-fun d!657052 () Bool)

(assert (=> d!657052 e!1403965))

(declare-fun res!944439 () Bool)

(assert (=> d!657052 (=> (not res!944439) (not e!1403965))))

(assert (=> d!657052 (= res!944439 (= ((_ map implies) (content!3472 lt!821830) (content!3472 lt!821775)) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657052 (= lt!821830 e!1403963)))

(declare-fun c!349941 () Bool)

(assert (=> d!657052 (= c!349941 ((_ is Nil!25574) lt!821775))))

(assert (=> d!657052 (= (drop!1373 lt!821775 from!1114) lt!821830)))

(declare-fun b!2196817 () Bool)

(assert (=> b!2196817 (= e!1403967 call!131997)))

(assert (= (and d!657052 c!349941) b!2196820))

(assert (= (and d!657052 (not c!349941)) b!2196816))

(assert (= (and b!2196816 c!349938) b!2196821))

(assert (= (and b!2196816 (not c!349938)) b!2196813))

(assert (= (and d!657052 res!944439) b!2196814))

(assert (= (and b!2196814 c!349940) b!2196817))

(assert (= (and b!2196814 (not c!349940)) b!2196818))

(assert (= (and b!2196818 c!349939) b!2196819))

(assert (= (and b!2196818 (not c!349939)) b!2196815))

(assert (= (or b!2196817 b!2196818 b!2196815) bm!131992))

(declare-fun m!2639201 () Bool)

(assert (=> b!2196813 m!2639201))

(declare-fun m!2639203 () Bool)

(assert (=> b!2196814 m!2639203))

(assert (=> bm!131992 m!2639173))

(declare-fun m!2639205 () Bool)

(assert (=> d!657052 m!2639205))

(assert (=> d!657052 m!2639199))

(assert (=> b!2196667 d!657052))

(declare-fun b!2196822 () Bool)

(declare-fun e!1403970 () Int)

(assert (=> b!2196822 (= e!1403970 (size!19938 lt!821768))))

(declare-fun b!2196823 () Bool)

(declare-fun e!1403968 () Bool)

(declare-fun lt!821831 () List!25658)

(declare-fun e!1403969 () Int)

(assert (=> b!2196823 (= e!1403968 (= (size!19938 lt!821831) e!1403969))))

(declare-fun c!349943 () Bool)

(assert (=> b!2196823 (= c!349943 (<= 1 0))))

(declare-fun b!2196824 () Bool)

(assert (=> b!2196824 (= e!1403969 0)))

(declare-fun b!2196825 () Bool)

(assert (=> b!2196825 (= e!1403969 e!1403970)))

(declare-fun c!349944 () Bool)

(assert (=> b!2196825 (= c!349944 (>= 1 (size!19938 lt!821768)))))

(declare-fun b!2196826 () Bool)

(declare-fun e!1403971 () List!25658)

(assert (=> b!2196826 (= e!1403971 (Cons!25574 (h!30975 lt!821768) (take!363 (t!198264 lt!821768) (- 1 1))))))

(declare-fun b!2196827 () Bool)

(assert (=> b!2196827 (= e!1403970 1)))

(declare-fun d!657054 () Bool)

(assert (=> d!657054 e!1403968))

(declare-fun res!944440 () Bool)

(assert (=> d!657054 (=> (not res!944440) (not e!1403968))))

(assert (=> d!657054 (= res!944440 (= ((_ map implies) (content!3472 lt!821831) (content!3472 lt!821768)) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657054 (= lt!821831 e!1403971)))

(declare-fun c!349942 () Bool)

(assert (=> d!657054 (= c!349942 (or ((_ is Nil!25574) lt!821768) (<= 1 0)))))

(assert (=> d!657054 (= (take!363 lt!821768 1) lt!821831)))

(declare-fun b!2196828 () Bool)

(assert (=> b!2196828 (= e!1403971 Nil!25574)))

(assert (= (and d!657054 c!349942) b!2196828))

(assert (= (and d!657054 (not c!349942)) b!2196826))

(assert (= (and d!657054 res!944440) b!2196823))

(assert (= (and b!2196823 c!349943) b!2196824))

(assert (= (and b!2196823 (not c!349943)) b!2196825))

(assert (= (and b!2196825 c!349944) b!2196822))

(assert (= (and b!2196825 (not c!349944)) b!2196827))

(assert (=> b!2196822 m!2639155))

(declare-fun m!2639207 () Bool)

(assert (=> b!2196823 m!2639207))

(declare-fun m!2639209 () Bool)

(assert (=> d!657054 m!2639209))

(assert (=> d!657054 m!2639161))

(declare-fun m!2639211 () Bool)

(assert (=> b!2196826 m!2639211))

(assert (=> b!2196825 m!2639155))

(assert (=> b!2196667 d!657054))

(declare-fun d!657056 () Bool)

(declare-fun isBalanced!2564 (Conc!8321) Bool)

(assert (=> d!657056 (= (inv!34277 totalInput!923) (isBalanced!2564 (c!349872 totalInput!923)))))

(declare-fun bs!449007 () Bool)

(assert (= bs!449007 d!657056))

(declare-fun m!2639213 () Bool)

(assert (=> bs!449007 m!2639213))

(assert (=> start!213202 d!657056))

(declare-fun d!657058 () Bool)

(declare-fun lt!821834 () Int)

(assert (=> d!657058 (= lt!821834 (size!19938 (list!9835 totalInput!923)))))

(declare-fun size!19941 (Conc!8321) Int)

(assert (=> d!657058 (= lt!821834 (size!19941 (c!349872 totalInput!923)))))

(assert (=> d!657058 (= (size!19937 totalInput!923) lt!821834)))

(declare-fun bs!449008 () Bool)

(assert (= bs!449008 d!657058))

(assert (=> bs!449008 m!2639029))

(assert (=> bs!449008 m!2639029))

(assert (=> bs!449008 m!2639135))

(declare-fun m!2639215 () Bool)

(assert (=> bs!449008 m!2639215))

(assert (=> b!2196678 d!657058))

(declare-fun d!657060 () Bool)

(declare-fun e!1403979 () Bool)

(assert (=> d!657060 e!1403979))

(declare-fun res!944446 () Bool)

(assert (=> d!657060 (=> res!944446 e!1403979)))

(declare-fun lt!821839 () Int)

(assert (=> d!657060 (= res!944446 (<= lt!821839 0))))

(assert (=> d!657060 (= lt!821839 (+ (- (furthestNullablePosition!353 lt!821776 (+ 1 from!1114) totalInput!923 (size!19937 totalInput!923) lt!821766) (+ 1 from!1114)) 1))))

(declare-fun lt!821840 () Unit!38685)

(declare-fun choose!13001 ((InoxSet Context!3510) Int BalanceConc!16404 Int) Unit!38685)

(assert (=> d!657060 (= lt!821840 (choose!13001 lt!821776 (+ 1 from!1114) totalInput!923 lt!821766))))

(declare-fun e!1403980 () Bool)

(assert (=> d!657060 e!1403980))

(declare-fun res!944445 () Bool)

(assert (=> d!657060 (=> (not res!944445) (not e!1403980))))

(assert (=> d!657060 (= res!944445 (>= (+ 1 from!1114) 0))))

(assert (=> d!657060 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!174 lt!821776 (+ 1 from!1114) totalInput!923 lt!821766) lt!821840)))

(declare-fun b!2196839 () Bool)

(assert (=> b!2196839 (= e!1403980 (<= (+ 1 from!1114) (size!19937 totalInput!923)))))

(declare-fun b!2196840 () Bool)

(assert (=> b!2196840 (= e!1403979 (matchZipper!271 lt!821776 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821839)))))

(assert (= (and d!657060 res!944445) b!2196839))

(assert (= (and d!657060 (not res!944446)) b!2196840))

(assert (=> d!657060 m!2639059))

(assert (=> d!657060 m!2639059))

(declare-fun m!2639231 () Bool)

(assert (=> d!657060 m!2639231))

(declare-fun m!2639233 () Bool)

(assert (=> d!657060 m!2639233))

(assert (=> b!2196839 m!2639059))

(assert (=> b!2196840 m!2639029))

(assert (=> b!2196840 m!2639029))

(assert (=> b!2196840 m!2639041))

(assert (=> b!2196840 m!2639041))

(declare-fun m!2639235 () Bool)

(assert (=> b!2196840 m!2639235))

(assert (=> b!2196840 m!2639235))

(declare-fun m!2639237 () Bool)

(assert (=> b!2196840 m!2639237))

(assert (=> b!2196668 d!657060))

(declare-fun b!2196845 () Bool)

(declare-fun e!1403983 () Bool)

(declare-fun tp!684159 () Bool)

(declare-fun tp!684160 () Bool)

(assert (=> b!2196845 (= e!1403983 (and tp!684159 tp!684160))))

(assert (=> b!2196680 (= tp!684153 e!1403983)))

(assert (= (and b!2196680 ((_ is Cons!25575) (exprs!2255 setElem!18830))) b!2196845))

(declare-fun condSetEmpty!18833 () Bool)

(assert (=> setNonEmpty!18830 (= condSetEmpty!18833 (= setRest!18830 ((as const (Array Context!3510 Bool)) false)))))

(declare-fun setRes!18833 () Bool)

(assert (=> setNonEmpty!18830 (= tp!684154 setRes!18833)))

(declare-fun setIsEmpty!18833 () Bool)

(assert (=> setIsEmpty!18833 setRes!18833))

(declare-fun setElem!18833 () Context!3510)

(declare-fun e!1403986 () Bool)

(declare-fun setNonEmpty!18833 () Bool)

(declare-fun tp!684165 () Bool)

(assert (=> setNonEmpty!18833 (= setRes!18833 (and tp!684165 (inv!34278 setElem!18833) e!1403986))))

(declare-fun setRest!18833 () (InoxSet Context!3510))

(assert (=> setNonEmpty!18833 (= setRest!18830 ((_ map or) (store ((as const (Array Context!3510 Bool)) false) setElem!18833 true) setRest!18833))))

(declare-fun b!2196850 () Bool)

(declare-fun tp!684166 () Bool)

(assert (=> b!2196850 (= e!1403986 tp!684166)))

(assert (= (and setNonEmpty!18830 condSetEmpty!18833) setIsEmpty!18833))

(assert (= (and setNonEmpty!18830 (not condSetEmpty!18833)) setNonEmpty!18833))

(assert (= setNonEmpty!18833 b!2196850))

(declare-fun m!2639239 () Bool)

(assert (=> setNonEmpty!18833 m!2639239))

(declare-fun tp!684173 () Bool)

(declare-fun e!1403999 () Bool)

(declare-fun b!2196873 () Bool)

(declare-fun tp!684175 () Bool)

(assert (=> b!2196873 (= e!1403999 (and (inv!34276 (left!19636 (c!349872 totalInput!923))) tp!684175 (inv!34276 (right!19966 (c!349872 totalInput!923))) tp!684173))))

(declare-fun b!2196875 () Bool)

(declare-fun e!1404000 () Bool)

(declare-fun tp!684174 () Bool)

(assert (=> b!2196875 (= e!1404000 tp!684174)))

(declare-fun b!2196874 () Bool)

(declare-fun inv!34283 (IArray!16647) Bool)

(assert (=> b!2196874 (= e!1403999 (and (inv!34283 (xs!11263 (c!349872 totalInput!923))) e!1404000))))

(assert (=> b!2196672 (= tp!684152 (and (inv!34276 (c!349872 totalInput!923)) e!1403999))))

(assert (= (and b!2196672 ((_ is Node!8321) (c!349872 totalInput!923))) b!2196873))

(assert (= b!2196874 b!2196875))

(assert (= (and b!2196672 ((_ is Leaf!12181) (c!349872 totalInput!923))) b!2196874))

(declare-fun m!2639241 () Bool)

(assert (=> b!2196873 m!2639241))

(declare-fun m!2639243 () Bool)

(assert (=> b!2196873 m!2639243))

(declare-fun m!2639245 () Bool)

(assert (=> b!2196874 m!2639245))

(assert (=> b!2196672 m!2639061))

(check-sat (not b!2196813) (not d!657048) (not b!2196778) (not d!657018) (not b!2196704) (not d!657056) (not b!2196800) (not d!657058) (not d!657044) (not b!2196874) (not d!657034) (not b!2196672) (not b!2196787) (not d!657026) (not b!2196701) (not b!2196826) (not b!2196845) (not b!2196781) (not b!2196850) (not b!2196873) (not b!2196796) (not d!657060) (not d!657022) (not b!2196804) (not b!2196823) (not d!657036) (not b!2196719) (not d!657040) (not bm!131987) (not b!2196711) (not b!2196875) (not bm!131991) (not b!2196696) (not b!2196797) (not b!2196726) (not d!657054) (not b!2196839) (not b!2196814) (not bm!131986) (not b!2196798) (not d!657050) (not d!657032) (not b!2196702) (not b!2196743) (not b!2196746) (not b!2196794) (not d!657024) (not bm!131990) (not b!2196805) (not d!657010) (not b!2196694) (not b!2196840) (not b!2196795) (not d!657046) (not b!2196745) (not b!2196727) (not b!2196782) (not b!2196779) (not b!2196721) (not b!2196742) (not b!2196776) (not b!2196822) (not d!657052) (not b!2196768) (not b!2196767) (not d!657042) (not setNonEmpty!18833) (not b!2196825) (not b!2196712) (not d!657030) (not b!2196801) (not d!657038) (not b!2196777) (not bm!131992))
(check-sat)
(get-model)

(declare-fun b!2197030 () Bool)

(declare-fun e!1404100 () Int)

(assert (=> b!2197030 (= e!1404100 (size!19938 (t!198264 lt!821768)))))

(declare-fun b!2197031 () Bool)

(declare-fun e!1404098 () Bool)

(declare-fun lt!821899 () List!25658)

(declare-fun e!1404099 () Int)

(assert (=> b!2197031 (= e!1404098 (= (size!19938 lt!821899) e!1404099))))

(declare-fun c!350017 () Bool)

(assert (=> b!2197031 (= c!350017 (<= (- lt!821767 1) 0))))

(declare-fun b!2197032 () Bool)

(assert (=> b!2197032 (= e!1404099 0)))

(declare-fun b!2197033 () Bool)

(assert (=> b!2197033 (= e!1404099 e!1404100)))

(declare-fun c!350018 () Bool)

(assert (=> b!2197033 (= c!350018 (>= (- lt!821767 1) (size!19938 (t!198264 lt!821768))))))

(declare-fun b!2197034 () Bool)

(declare-fun e!1404101 () List!25658)

(assert (=> b!2197034 (= e!1404101 (Cons!25574 (h!30975 (t!198264 lt!821768)) (take!363 (t!198264 (t!198264 lt!821768)) (- (- lt!821767 1) 1))))))

(declare-fun b!2197035 () Bool)

(assert (=> b!2197035 (= e!1404100 (- lt!821767 1))))

(declare-fun d!657106 () Bool)

(assert (=> d!657106 e!1404098))

(declare-fun res!944480 () Bool)

(assert (=> d!657106 (=> (not res!944480) (not e!1404098))))

(assert (=> d!657106 (= res!944480 (= ((_ map implies) (content!3472 lt!821899) (content!3472 (t!198264 lt!821768))) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657106 (= lt!821899 e!1404101)))

(declare-fun c!350016 () Bool)

(assert (=> d!657106 (= c!350016 (or ((_ is Nil!25574) (t!198264 lt!821768)) (<= (- lt!821767 1) 0)))))

(assert (=> d!657106 (= (take!363 (t!198264 lt!821768) (- lt!821767 1)) lt!821899)))

(declare-fun b!2197036 () Bool)

(assert (=> b!2197036 (= e!1404101 Nil!25574)))

(assert (= (and d!657106 c!350016) b!2197036))

(assert (= (and d!657106 (not c!350016)) b!2197034))

(assert (= (and d!657106 res!944480) b!2197031))

(assert (= (and b!2197031 c!350017) b!2197032))

(assert (= (and b!2197031 (not c!350017)) b!2197033))

(assert (= (and b!2197033 c!350018) b!2197030))

(assert (= (and b!2197033 (not c!350018)) b!2197035))

(declare-fun m!2639395 () Bool)

(assert (=> b!2197030 m!2639395))

(declare-fun m!2639397 () Bool)

(assert (=> b!2197031 m!2639397))

(declare-fun m!2639399 () Bool)

(assert (=> d!657106 m!2639399))

(declare-fun m!2639401 () Bool)

(assert (=> d!657106 m!2639401))

(declare-fun m!2639403 () Bool)

(assert (=> b!2197034 m!2639403))

(assert (=> b!2197033 m!2639395))

(assert (=> b!2196782 d!657106))

(declare-fun lt!821901 () Int)

(declare-fun d!657108 () Bool)

(assert (=> d!657108 (and (>= lt!821901 (- 1)) (< lt!821901 (size!19937 totalInput!923)) (>= lt!821901 lt!821766) (or (= lt!821901 lt!821766) (>= lt!821901 (+ 1 from!1114))))))

(declare-fun e!1404103 () Int)

(assert (=> d!657108 (= lt!821901 e!1404103)))

(declare-fun c!350019 () Bool)

(declare-fun e!1404104 () Bool)

(assert (=> d!657108 (= c!350019 e!1404104)))

(declare-fun res!944481 () Bool)

(assert (=> d!657108 (=> res!944481 e!1404104)))

(assert (=> d!657108 (= res!944481 (= (+ 1 from!1114) (size!19937 totalInput!923)))))

(assert (=> d!657108 (and (>= (+ 1 from!1114) 0) (<= (+ 1 from!1114) (size!19937 totalInput!923)))))

(assert (=> d!657108 (= (furthestNullablePosition!353 lt!821776 (+ 1 from!1114) totalInput!923 (size!19937 totalInput!923) lt!821766) lt!821901)))

(declare-fun b!2197037 () Bool)

(declare-fun lt!821900 () (InoxSet Context!3510))

(declare-fun e!1404102 () Int)

(assert (=> b!2197037 (= e!1404103 (furthestNullablePosition!353 lt!821900 (+ 1 from!1114 1) totalInput!923 (size!19937 totalInput!923) e!1404102))))

(assert (=> b!2197037 (= lt!821900 (derivationStepZipper!257 lt!821776 (apply!6259 totalInput!923 (+ 1 from!1114))))))

(declare-fun c!350020 () Bool)

(assert (=> b!2197037 (= c!350020 (nullableZipper!465 lt!821900))))

(declare-fun b!2197038 () Bool)

(assert (=> b!2197038 (= e!1404103 lt!821766)))

(declare-fun b!2197039 () Bool)

(assert (=> b!2197039 (= e!1404104 (lostCauseZipper!301 lt!821776))))

(declare-fun b!2197040 () Bool)

(assert (=> b!2197040 (= e!1404102 (+ 1 from!1114))))

(declare-fun b!2197041 () Bool)

(assert (=> b!2197041 (= e!1404102 lt!821766)))

(assert (= (and d!657108 (not res!944481)) b!2197039))

(assert (= (and d!657108 c!350019) b!2197038))

(assert (= (and d!657108 (not c!350019)) b!2197037))

(assert (= (and b!2197037 c!350020) b!2197040))

(assert (= (and b!2197037 (not c!350020)) b!2197041))

(assert (=> b!2197037 m!2639059))

(declare-fun m!2639405 () Bool)

(assert (=> b!2197037 m!2639405))

(assert (=> b!2197037 m!2639081))

(assert (=> b!2197037 m!2639081))

(assert (=> b!2197037 m!2639083))

(declare-fun m!2639407 () Bool)

(assert (=> b!2197037 m!2639407))

(assert (=> b!2197039 m!2639087))

(assert (=> d!657060 d!657108))

(assert (=> d!657060 d!657058))

(declare-fun d!657110 () Bool)

(declare-fun e!1404107 () Bool)

(assert (=> d!657110 e!1404107))

(declare-fun res!944484 () Bool)

(assert (=> d!657110 (=> res!944484 e!1404107)))

(declare-fun lt!821904 () Int)

(assert (=> d!657110 (= res!944484 (<= lt!821904 0))))

(assert (=> d!657110 (= lt!821904 (+ (- (furthestNullablePosition!353 lt!821776 (+ 1 from!1114) totalInput!923 (size!19937 totalInput!923) lt!821766) (+ 1 from!1114)) 1))))

(assert (=> d!657110 true))

(declare-fun _$71!150 () Unit!38685)

(assert (=> d!657110 (= (choose!13001 lt!821776 (+ 1 from!1114) totalInput!923 lt!821766) _$71!150)))

(declare-fun b!2197044 () Bool)

(assert (=> b!2197044 (= e!1404107 (matchZipper!271 lt!821776 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821904)))))

(assert (= (and d!657110 (not res!944484)) b!2197044))

(assert (=> d!657110 m!2639059))

(assert (=> d!657110 m!2639059))

(assert (=> d!657110 m!2639231))

(assert (=> b!2197044 m!2639029))

(assert (=> b!2197044 m!2639029))

(assert (=> b!2197044 m!2639041))

(assert (=> b!2197044 m!2639041))

(declare-fun m!2639409 () Bool)

(assert (=> b!2197044 m!2639409))

(assert (=> b!2197044 m!2639409))

(declare-fun m!2639411 () Bool)

(assert (=> b!2197044 m!2639411))

(assert (=> d!657060 d!657110))

(assert (=> b!2196839 d!657058))

(assert (=> b!2196672 d!657028))

(declare-fun d!657112 () Bool)

(declare-fun lt!821907 () Int)

(assert (=> d!657112 (>= lt!821907 0)))

(declare-fun e!1404110 () Int)

(assert (=> d!657112 (= lt!821907 e!1404110)))

(declare-fun c!350023 () Bool)

(assert (=> d!657112 (= c!350023 ((_ is Nil!25574) lt!821817))))

(assert (=> d!657112 (= (size!19938 lt!821817) lt!821907)))

(declare-fun b!2197049 () Bool)

(assert (=> b!2197049 (= e!1404110 0)))

(declare-fun b!2197050 () Bool)

(assert (=> b!2197050 (= e!1404110 (+ 1 (size!19938 (t!198264 lt!821817))))))

(assert (= (and d!657112 c!350023) b!2197049))

(assert (= (and d!657112 (not c!350023)) b!2197050))

(declare-fun m!2639413 () Bool)

(assert (=> b!2197050 m!2639413))

(assert (=> b!2196743 d!657112))

(declare-fun d!657114 () Bool)

(declare-fun c!350026 () Bool)

(assert (=> d!657114 (= c!350026 ((_ is Nil!25574) lt!821829))))

(declare-fun e!1404113 () (InoxSet C!12516))

(assert (=> d!657114 (= (content!3472 lt!821829) e!1404113)))

(declare-fun b!2197055 () Bool)

(assert (=> b!2197055 (= e!1404113 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197056 () Bool)

(assert (=> b!2197056 (= e!1404113 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 lt!821829) true) (content!3472 (t!198264 lt!821829))))))

(assert (= (and d!657114 c!350026) b!2197055))

(assert (= (and d!657114 (not c!350026)) b!2197056))

(declare-fun m!2639415 () Bool)

(assert (=> b!2197056 m!2639415))

(declare-fun m!2639417 () Bool)

(assert (=> b!2197056 m!2639417))

(assert (=> d!657050 d!657114))

(declare-fun d!657116 () Bool)

(declare-fun c!350027 () Bool)

(assert (=> d!657116 (= c!350027 ((_ is Nil!25574) lt!821775))))

(declare-fun e!1404114 () (InoxSet C!12516))

(assert (=> d!657116 (= (content!3472 lt!821775) e!1404114)))

(declare-fun b!2197057 () Bool)

(assert (=> b!2197057 (= e!1404114 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197058 () Bool)

(assert (=> b!2197058 (= e!1404114 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 lt!821775) true) (content!3472 (t!198264 lt!821775))))))

(assert (= (and d!657116 c!350027) b!2197057))

(assert (= (and d!657116 (not c!350027)) b!2197058))

(declare-fun m!2639419 () Bool)

(assert (=> b!2197058 m!2639419))

(declare-fun m!2639421 () Bool)

(assert (=> b!2197058 m!2639421))

(assert (=> d!657050 d!657116))

(declare-fun bs!449025 () Bool)

(declare-fun d!657118 () Bool)

(assert (= bs!449025 (and d!657118 d!657038)))

(declare-fun lambda!82682 () Int)

(assert (=> bs!449025 (not (= lambda!82682 lambda!82654))))

(declare-fun bs!449026 () Bool)

(assert (= bs!449026 (and d!657118 d!657022)))

(assert (=> bs!449026 (not (= lambda!82682 lambda!82635))))

(declare-fun bs!449027 () Bool)

(assert (= bs!449027 (and d!657118 b!2196711)))

(assert (=> bs!449027 (not (= lambda!82682 lambda!82649))))

(declare-fun bs!449028 () Bool)

(assert (= bs!449028 (and d!657118 b!2196712)))

(assert (=> bs!449028 (not (= lambda!82682 lambda!82650))))

(declare-fun bs!449029 () Bool)

(assert (= bs!449029 (and d!657118 d!657024)))

(assert (=> bs!449029 (not (= lambda!82682 lambda!82648))))

(assert (=> d!657118 true))

(declare-fun order!14811 () Int)

(declare-fun dynLambda!11444 (Int Int) Int)

(assert (=> d!657118 (< (dynLambda!11444 order!14811 lambda!82648) (dynLambda!11444 order!14811 lambda!82682))))

(assert (=> d!657118 (not (exists!816 lt!821810 lambda!82682))))

(declare-fun lt!821910 () Unit!38685)

(declare-fun choose!13004 (List!25660 Int) Unit!38685)

(assert (=> d!657118 (= lt!821910 (choose!13004 lt!821810 lambda!82648))))

(declare-fun forall!5232 (List!25660 Int) Bool)

(assert (=> d!657118 (forall!5232 lt!821810 lambda!82648)))

(assert (=> d!657118 (= (lemmaForallThenNotExists!47 lt!821810 lambda!82648) lt!821910)))

(declare-fun bs!449030 () Bool)

(assert (= bs!449030 d!657118))

(declare-fun m!2639423 () Bool)

(assert (=> bs!449030 m!2639423))

(declare-fun m!2639425 () Bool)

(assert (=> bs!449030 m!2639425))

(declare-fun m!2639427 () Bool)

(assert (=> bs!449030 m!2639427))

(assert (=> b!2196712 d!657118))

(declare-fun d!657120 () Bool)

(declare-fun lt!821913 () Bool)

(assert (=> d!657120 (= lt!821913 (exists!816 (toList!1258 z!3955) lambda!82654))))

(declare-fun choose!13005 ((InoxSet Context!3510) Int) Bool)

(assert (=> d!657120 (= lt!821913 (choose!13005 z!3955 lambda!82654))))

(assert (=> d!657120 (= (exists!815 z!3955 lambda!82654) lt!821913)))

(declare-fun bs!449031 () Bool)

(assert (= bs!449031 d!657120))

(assert (=> bs!449031 m!2639097))

(assert (=> bs!449031 m!2639097))

(declare-fun m!2639429 () Bool)

(assert (=> bs!449031 m!2639429))

(declare-fun m!2639431 () Bool)

(assert (=> bs!449031 m!2639431))

(assert (=> d!657038 d!657120))

(declare-fun d!657122 () Bool)

(declare-fun lt!821915 () Int)

(assert (=> d!657122 (and (>= lt!821915 (- 1)) (< lt!821915 lt!821763) (>= lt!821915 e!1403888) (or (= lt!821915 e!1403888) (>= lt!821915 (+ from!1114 1))))))

(declare-fun e!1404118 () Int)

(assert (=> d!657122 (= lt!821915 e!1404118)))

(declare-fun c!350028 () Bool)

(declare-fun e!1404119 () Bool)

(assert (=> d!657122 (= c!350028 e!1404119)))

(declare-fun res!944485 () Bool)

(assert (=> d!657122 (=> res!944485 e!1404119)))

(assert (=> d!657122 (= res!944485 (= (+ from!1114 1) lt!821763))))

(assert (=> d!657122 (and (>= (+ from!1114 1) 0) (<= (+ from!1114 1) lt!821763))))

(assert (=> d!657122 (= (furthestNullablePosition!353 lt!821784 (+ from!1114 1) totalInput!923 lt!821763 e!1403888) lt!821915)))

(declare-fun lt!821914 () (InoxSet Context!3510))

(declare-fun e!1404117 () Int)

(declare-fun b!2197061 () Bool)

(assert (=> b!2197061 (= e!1404118 (furthestNullablePosition!353 lt!821914 (+ from!1114 1 1) totalInput!923 lt!821763 e!1404117))))

(assert (=> b!2197061 (= lt!821914 (derivationStepZipper!257 lt!821784 (apply!6259 totalInput!923 (+ from!1114 1))))))

(declare-fun c!350029 () Bool)

(assert (=> b!2197061 (= c!350029 (nullableZipper!465 lt!821914))))

(declare-fun b!2197062 () Bool)

(assert (=> b!2197062 (= e!1404118 e!1403888)))

(declare-fun b!2197063 () Bool)

(assert (=> b!2197063 (= e!1404119 (lostCauseZipper!301 lt!821784))))

(declare-fun b!2197064 () Bool)

(assert (=> b!2197064 (= e!1404117 (+ from!1114 1))))

(declare-fun b!2197065 () Bool)

(assert (=> b!2197065 (= e!1404117 e!1403888)))

(assert (= (and d!657122 (not res!944485)) b!2197063))

(assert (= (and d!657122 c!350028) b!2197062))

(assert (= (and d!657122 (not c!350028)) b!2197061))

(assert (= (and b!2197061 c!350029) b!2197064))

(assert (= (and b!2197061 (not c!350029)) b!2197065))

(declare-fun m!2639433 () Bool)

(assert (=> b!2197061 m!2639433))

(declare-fun m!2639435 () Bool)

(assert (=> b!2197061 m!2639435))

(assert (=> b!2197061 m!2639435))

(declare-fun m!2639437 () Bool)

(assert (=> b!2197061 m!2639437))

(declare-fun m!2639439 () Bool)

(assert (=> b!2197061 m!2639439))

(declare-fun m!2639441 () Bool)

(assert (=> b!2197063 m!2639441))

(assert (=> b!2196694 d!657122))

(declare-fun bs!449032 () Bool)

(declare-fun d!657124 () Bool)

(assert (= bs!449032 (and d!657124 d!657010)))

(declare-fun lambda!82683 () Int)

(assert (=> bs!449032 (= (= (apply!6259 totalInput!923 from!1114) lt!821772) (= lambda!82683 lambda!82632))))

(assert (=> d!657124 true))

(assert (=> d!657124 (= (derivationStepZipper!257 z!3955 (apply!6259 totalInput!923 from!1114)) (flatMap!153 z!3955 lambda!82683))))

(declare-fun bs!449033 () Bool)

(assert (= bs!449033 d!657124))

(declare-fun m!2639443 () Bool)

(assert (=> bs!449033 m!2639443))

(assert (=> b!2196694 d!657124))

(assert (=> b!2196694 d!657018))

(declare-fun bs!449034 () Bool)

(declare-fun d!657126 () Bool)

(assert (= bs!449034 (and d!657126 d!657118)))

(declare-fun lambda!82684 () Int)

(assert (=> bs!449034 (not (= lambda!82684 lambda!82682))))

(declare-fun bs!449035 () Bool)

(assert (= bs!449035 (and d!657126 d!657038)))

(assert (=> bs!449035 (= lambda!82684 lambda!82654)))

(declare-fun bs!449036 () Bool)

(assert (= bs!449036 (and d!657126 d!657022)))

(assert (=> bs!449036 (= lambda!82684 lambda!82635)))

(declare-fun bs!449037 () Bool)

(assert (= bs!449037 (and d!657126 b!2196711)))

(assert (=> bs!449037 (not (= lambda!82684 lambda!82649))))

(declare-fun bs!449038 () Bool)

(assert (= bs!449038 (and d!657126 b!2196712)))

(assert (=> bs!449038 (not (= lambda!82684 lambda!82650))))

(declare-fun bs!449039 () Bool)

(assert (= bs!449039 (and d!657126 d!657024)))

(assert (=> bs!449039 (not (= lambda!82684 lambda!82648))))

(assert (=> d!657126 (= (nullableZipper!465 lt!821784) (exists!815 lt!821784 lambda!82684))))

(declare-fun bs!449040 () Bool)

(assert (= bs!449040 d!657126))

(declare-fun m!2639445 () Bool)

(assert (=> bs!449040 m!2639445))

(assert (=> b!2196694 d!657126))

(declare-fun b!2197078 () Bool)

(declare-fun res!944498 () Bool)

(declare-fun e!1404124 () Bool)

(assert (=> b!2197078 (=> (not res!944498) (not e!1404124))))

(assert (=> b!2197078 (= res!944498 (isBalanced!2564 (right!19966 (c!349872 totalInput!923))))))

(declare-fun b!2197079 () Bool)

(declare-fun res!944499 () Bool)

(assert (=> b!2197079 (=> (not res!944499) (not e!1404124))))

(assert (=> b!2197079 (= res!944499 (isBalanced!2564 (left!19636 (c!349872 totalInput!923))))))

(declare-fun b!2197080 () Bool)

(declare-fun res!944502 () Bool)

(assert (=> b!2197080 (=> (not res!944502) (not e!1404124))))

(declare-fun height!1250 (Conc!8321) Int)

(assert (=> b!2197080 (= res!944502 (<= (- (height!1250 (left!19636 (c!349872 totalInput!923))) (height!1250 (right!19966 (c!349872 totalInput!923)))) 1))))

(declare-fun b!2197081 () Bool)

(declare-fun res!944501 () Bool)

(assert (=> b!2197081 (=> (not res!944501) (not e!1404124))))

(declare-fun isEmpty!14592 (Conc!8321) Bool)

(assert (=> b!2197081 (= res!944501 (not (isEmpty!14592 (left!19636 (c!349872 totalInput!923)))))))

(declare-fun b!2197082 () Bool)

(assert (=> b!2197082 (= e!1404124 (not (isEmpty!14592 (right!19966 (c!349872 totalInput!923)))))))

(declare-fun b!2197083 () Bool)

(declare-fun e!1404125 () Bool)

(assert (=> b!2197083 (= e!1404125 e!1404124)))

(declare-fun res!944503 () Bool)

(assert (=> b!2197083 (=> (not res!944503) (not e!1404124))))

(assert (=> b!2197083 (= res!944503 (<= (- 1) (- (height!1250 (left!19636 (c!349872 totalInput!923))) (height!1250 (right!19966 (c!349872 totalInput!923))))))))

(declare-fun d!657128 () Bool)

(declare-fun res!944500 () Bool)

(assert (=> d!657128 (=> res!944500 e!1404125)))

(assert (=> d!657128 (= res!944500 (not ((_ is Node!8321) (c!349872 totalInput!923))))))

(assert (=> d!657128 (= (isBalanced!2564 (c!349872 totalInput!923)) e!1404125)))

(assert (= (and d!657128 (not res!944500)) b!2197083))

(assert (= (and b!2197083 res!944503) b!2197080))

(assert (= (and b!2197080 res!944502) b!2197079))

(assert (= (and b!2197079 res!944499) b!2197078))

(assert (= (and b!2197078 res!944498) b!2197081))

(assert (= (and b!2197081 res!944501) b!2197082))

(declare-fun m!2639447 () Bool)

(assert (=> b!2197083 m!2639447))

(declare-fun m!2639449 () Bool)

(assert (=> b!2197083 m!2639449))

(declare-fun m!2639451 () Bool)

(assert (=> b!2197079 m!2639451))

(declare-fun m!2639453 () Bool)

(assert (=> b!2197081 m!2639453))

(declare-fun m!2639455 () Bool)

(assert (=> b!2197078 m!2639455))

(assert (=> b!2197080 m!2639447))

(assert (=> b!2197080 m!2639449))

(declare-fun m!2639457 () Bool)

(assert (=> b!2197082 m!2639457))

(assert (=> d!657056 d!657128))

(declare-fun d!657130 () Bool)

(assert (=> d!657130 (= (inv!34283 (xs!11263 (c!349872 totalInput!923))) (<= (size!19938 (innerList!8381 (xs!11263 (c!349872 totalInput!923)))) 2147483647))))

(declare-fun bs!449041 () Bool)

(assert (= bs!449041 d!657130))

(declare-fun m!2639459 () Bool)

(assert (=> bs!449041 m!2639459))

(assert (=> b!2196874 d!657130))

(declare-fun d!657132 () Bool)

(assert (=> d!657132 (= (isEmpty!14588 (getLanguageWitness!141 z!3955)) (not ((_ is Some!5021) (getLanguageWitness!141 z!3955))))))

(assert (=> d!657024 d!657132))

(declare-fun bs!449042 () Bool)

(declare-fun d!657134 () Bool)

(assert (= bs!449042 (and d!657134 d!657118)))

(declare-fun lambda!82691 () Int)

(assert (=> bs!449042 (not (= lambda!82691 lambda!82682))))

(declare-fun bs!449043 () Bool)

(assert (= bs!449043 (and d!657134 d!657038)))

(assert (=> bs!449043 (not (= lambda!82691 lambda!82654))))

(declare-fun bs!449044 () Bool)

(assert (= bs!449044 (and d!657134 d!657022)))

(assert (=> bs!449044 (not (= lambda!82691 lambda!82635))))

(declare-fun bs!449045 () Bool)

(assert (= bs!449045 (and d!657134 b!2196711)))

(assert (=> bs!449045 (= lambda!82691 lambda!82649)))

(declare-fun bs!449046 () Bool)

(assert (= bs!449046 (and d!657134 d!657126)))

(assert (=> bs!449046 (not (= lambda!82691 lambda!82684))))

(declare-fun bs!449047 () Bool)

(assert (= bs!449047 (and d!657134 b!2196712)))

(assert (=> bs!449047 (= lambda!82691 lambda!82650)))

(declare-fun bs!449048 () Bool)

(assert (= bs!449048 (and d!657134 d!657024)))

(assert (=> bs!449048 (not (= lambda!82691 lambda!82648))))

(declare-fun lt!821918 () Option!5022)

(declare-fun isDefined!4112 (Option!5022) Bool)

(assert (=> d!657134 (= (isDefined!4112 lt!821918) (exists!815 z!3955 lambda!82691))))

(declare-fun e!1404128 () Option!5022)

(assert (=> d!657134 (= lt!821918 e!1404128)))

(declare-fun c!350038 () Bool)

(assert (=> d!657134 (= c!350038 (exists!815 z!3955 lambda!82691))))

(assert (=> d!657134 (= (getLanguageWitness!141 z!3955) lt!821918)))

(declare-fun b!2197088 () Bool)

(declare-fun getLanguageWitness!143 (Context!3510) Option!5022)

(declare-fun getWitness!510 ((InoxSet Context!3510) Int) Context!3510)

(assert (=> b!2197088 (= e!1404128 (getLanguageWitness!143 (getWitness!510 z!3955 lambda!82691)))))

(declare-fun b!2197089 () Bool)

(assert (=> b!2197089 (= e!1404128 None!5021)))

(assert (= (and d!657134 c!350038) b!2197088))

(assert (= (and d!657134 (not c!350038)) b!2197089))

(declare-fun m!2639461 () Bool)

(assert (=> d!657134 m!2639461))

(declare-fun m!2639463 () Bool)

(assert (=> d!657134 m!2639463))

(assert (=> d!657134 m!2639463))

(declare-fun m!2639465 () Bool)

(assert (=> b!2197088 m!2639465))

(assert (=> b!2197088 m!2639465))

(declare-fun m!2639467 () Bool)

(assert (=> b!2197088 m!2639467))

(assert (=> d!657024 d!657134))

(declare-fun d!657136 () Bool)

(declare-fun lt!821921 () Bool)

(assert (=> d!657136 (= lt!821921 (forall!5232 (toList!1258 z!3955) lambda!82648))))

(declare-fun choose!13006 ((InoxSet Context!3510) Int) Bool)

(assert (=> d!657136 (= lt!821921 (choose!13006 z!3955 lambda!82648))))

(assert (=> d!657136 (= (forall!5228 z!3955 lambda!82648) lt!821921)))

(declare-fun bs!449049 () Bool)

(assert (= bs!449049 d!657136))

(assert (=> bs!449049 m!2639097))

(assert (=> bs!449049 m!2639097))

(declare-fun m!2639469 () Bool)

(assert (=> bs!449049 m!2639469))

(declare-fun m!2639471 () Bool)

(assert (=> bs!449049 m!2639471))

(assert (=> d!657024 d!657136))

(declare-fun b!2197090 () Bool)

(declare-fun e!1404132 () List!25658)

(assert (=> b!2197090 (= e!1404132 (drop!1373 (t!198264 (t!198264 lt!821775)) (- (- (+ 1 from!1114) 1) 1)))))

(declare-fun b!2197091 () Bool)

(declare-fun e!1404131 () Bool)

(declare-fun lt!821922 () List!25658)

(declare-fun e!1404133 () Int)

(assert (=> b!2197091 (= e!1404131 (= (size!19938 lt!821922) e!1404133))))

(declare-fun c!350041 () Bool)

(assert (=> b!2197091 (= c!350041 (<= (- (+ 1 from!1114) 1) 0))))

(declare-fun b!2197092 () Bool)

(declare-fun e!1404130 () Int)

(declare-fun call!132009 () Int)

(assert (=> b!2197092 (= e!1404130 (- call!132009 (- (+ 1 from!1114) 1)))))

(declare-fun b!2197093 () Bool)

(declare-fun e!1404129 () List!25658)

(assert (=> b!2197093 (= e!1404129 e!1404132)))

(declare-fun c!350039 () Bool)

(assert (=> b!2197093 (= c!350039 (<= (- (+ 1 from!1114) 1) 0))))

(declare-fun bm!132004 () Bool)

(assert (=> bm!132004 (= call!132009 (size!19938 (t!198264 lt!821775)))))

(declare-fun b!2197095 () Bool)

(assert (=> b!2197095 (= e!1404133 e!1404130)))

(declare-fun c!350040 () Bool)

(assert (=> b!2197095 (= c!350040 (>= (- (+ 1 from!1114) 1) call!132009))))

(declare-fun b!2197096 () Bool)

(assert (=> b!2197096 (= e!1404130 0)))

(declare-fun b!2197097 () Bool)

(assert (=> b!2197097 (= e!1404129 Nil!25574)))

(declare-fun b!2197098 () Bool)

(assert (=> b!2197098 (= e!1404132 (t!198264 lt!821775))))

(declare-fun d!657138 () Bool)

(assert (=> d!657138 e!1404131))

(declare-fun res!944504 () Bool)

(assert (=> d!657138 (=> (not res!944504) (not e!1404131))))

(assert (=> d!657138 (= res!944504 (= ((_ map implies) (content!3472 lt!821922) (content!3472 (t!198264 lt!821775))) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657138 (= lt!821922 e!1404129)))

(declare-fun c!350042 () Bool)

(assert (=> d!657138 (= c!350042 ((_ is Nil!25574) (t!198264 lt!821775)))))

(assert (=> d!657138 (= (drop!1373 (t!198264 lt!821775) (- (+ 1 from!1114) 1)) lt!821922)))

(declare-fun b!2197094 () Bool)

(assert (=> b!2197094 (= e!1404133 call!132009)))

(assert (= (and d!657138 c!350042) b!2197097))

(assert (= (and d!657138 (not c!350042)) b!2197093))

(assert (= (and b!2197093 c!350039) b!2197098))

(assert (= (and b!2197093 (not c!350039)) b!2197090))

(assert (= (and d!657138 res!944504) b!2197091))

(assert (= (and b!2197091 c!350041) b!2197094))

(assert (= (and b!2197091 (not c!350041)) b!2197095))

(assert (= (and b!2197095 c!350040) b!2197096))

(assert (= (and b!2197095 (not c!350040)) b!2197092))

(assert (= (or b!2197094 b!2197095 b!2197092) bm!132004))

(declare-fun m!2639473 () Bool)

(assert (=> b!2197090 m!2639473))

(declare-fun m!2639475 () Bool)

(assert (=> b!2197091 m!2639475))

(declare-fun m!2639477 () Bool)

(assert (=> bm!132004 m!2639477))

(declare-fun m!2639479 () Bool)

(assert (=> d!657138 m!2639479))

(assert (=> d!657138 m!2639421))

(assert (=> b!2196804 d!657138))

(assert (=> b!2196776 d!657038))

(declare-fun b!2197108 () Bool)

(declare-fun e!1404138 () List!25658)

(declare-fun e!1404139 () List!25658)

(assert (=> b!2197108 (= e!1404138 e!1404139)))

(declare-fun c!350048 () Bool)

(assert (=> b!2197108 (= c!350048 ((_ is Leaf!12181) (c!349872 totalInput!923)))))

(declare-fun b!2197110 () Bool)

(declare-fun ++!6423 (List!25658 List!25658) List!25658)

(assert (=> b!2197110 (= e!1404139 (++!6423 (list!9836 (left!19636 (c!349872 totalInput!923))) (list!9836 (right!19966 (c!349872 totalInput!923)))))))

(declare-fun b!2197107 () Bool)

(assert (=> b!2197107 (= e!1404138 Nil!25574)))

(declare-fun d!657140 () Bool)

(declare-fun c!350047 () Bool)

(assert (=> d!657140 (= c!350047 ((_ is Empty!8321) (c!349872 totalInput!923)))))

(assert (=> d!657140 (= (list!9836 (c!349872 totalInput!923)) e!1404138)))

(declare-fun b!2197109 () Bool)

(declare-fun list!9838 (IArray!16647) List!25658)

(assert (=> b!2197109 (= e!1404139 (list!9838 (xs!11263 (c!349872 totalInput!923))))))

(assert (= (and d!657140 c!350047) b!2197107))

(assert (= (and d!657140 (not c!350047)) b!2197108))

(assert (= (and b!2197108 c!350048) b!2197109))

(assert (= (and b!2197108 (not c!350048)) b!2197110))

(declare-fun m!2639481 () Bool)

(assert (=> b!2197110 m!2639481))

(declare-fun m!2639483 () Bool)

(assert (=> b!2197110 m!2639483))

(assert (=> b!2197110 m!2639481))

(assert (=> b!2197110 m!2639483))

(declare-fun m!2639485 () Bool)

(assert (=> b!2197110 m!2639485))

(declare-fun m!2639487 () Bool)

(assert (=> b!2197109 m!2639487))

(assert (=> d!657036 d!657140))

(declare-fun b!2197111 () Bool)

(declare-fun e!1404143 () List!25658)

(assert (=> b!2197111 (= e!1404143 (drop!1373 (t!198264 (t!198264 (list!9835 totalInput!923))) (- (- (+ 1 from!1114) 1) 1)))))

(declare-fun b!2197112 () Bool)

(declare-fun e!1404142 () Bool)

(declare-fun lt!821923 () List!25658)

(declare-fun e!1404144 () Int)

(assert (=> b!2197112 (= e!1404142 (= (size!19938 lt!821923) e!1404144))))

(declare-fun c!350051 () Bool)

(assert (=> b!2197112 (= c!350051 (<= (- (+ 1 from!1114) 1) 0))))

(declare-fun b!2197113 () Bool)

(declare-fun e!1404141 () Int)

(declare-fun call!132010 () Int)

(assert (=> b!2197113 (= e!1404141 (- call!132010 (- (+ 1 from!1114) 1)))))

(declare-fun b!2197114 () Bool)

(declare-fun e!1404140 () List!25658)

(assert (=> b!2197114 (= e!1404140 e!1404143)))

(declare-fun c!350049 () Bool)

(assert (=> b!2197114 (= c!350049 (<= (- (+ 1 from!1114) 1) 0))))

(declare-fun bm!132005 () Bool)

(assert (=> bm!132005 (= call!132010 (size!19938 (t!198264 (list!9835 totalInput!923))))))

(declare-fun b!2197116 () Bool)

(assert (=> b!2197116 (= e!1404144 e!1404141)))

(declare-fun c!350050 () Bool)

(assert (=> b!2197116 (= c!350050 (>= (- (+ 1 from!1114) 1) call!132010))))

(declare-fun b!2197117 () Bool)

(assert (=> b!2197117 (= e!1404141 0)))

(declare-fun b!2197118 () Bool)

(assert (=> b!2197118 (= e!1404140 Nil!25574)))

(declare-fun b!2197119 () Bool)

(assert (=> b!2197119 (= e!1404143 (t!198264 (list!9835 totalInput!923)))))

(declare-fun d!657142 () Bool)

(assert (=> d!657142 e!1404142))

(declare-fun res!944505 () Bool)

(assert (=> d!657142 (=> (not res!944505) (not e!1404142))))

(assert (=> d!657142 (= res!944505 (= ((_ map implies) (content!3472 lt!821923) (content!3472 (t!198264 (list!9835 totalInput!923)))) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657142 (= lt!821923 e!1404140)))

(declare-fun c!350052 () Bool)

(assert (=> d!657142 (= c!350052 ((_ is Nil!25574) (t!198264 (list!9835 totalInput!923))))))

(assert (=> d!657142 (= (drop!1373 (t!198264 (list!9835 totalInput!923)) (- (+ 1 from!1114) 1)) lt!821923)))

(declare-fun b!2197115 () Bool)

(assert (=> b!2197115 (= e!1404144 call!132010)))

(assert (= (and d!657142 c!350052) b!2197118))

(assert (= (and d!657142 (not c!350052)) b!2197114))

(assert (= (and b!2197114 c!350049) b!2197119))

(assert (= (and b!2197114 (not c!350049)) b!2197111))

(assert (= (and d!657142 res!944505) b!2197112))

(assert (= (and b!2197112 c!350051) b!2197115))

(assert (= (and b!2197112 (not c!350051)) b!2197116))

(assert (= (and b!2197116 c!350050) b!2197117))

(assert (= (and b!2197116 (not c!350050)) b!2197113))

(assert (= (or b!2197115 b!2197116 b!2197113) bm!132005))

(declare-fun m!2639489 () Bool)

(assert (=> b!2197111 m!2639489))

(declare-fun m!2639491 () Bool)

(assert (=> b!2197112 m!2639491))

(declare-fun m!2639493 () Bool)

(assert (=> bm!132005 m!2639493))

(declare-fun m!2639495 () Bool)

(assert (=> d!657142 m!2639495))

(declare-fun m!2639497 () Bool)

(assert (=> d!657142 m!2639497))

(assert (=> b!2196767 d!657142))

(declare-fun d!657144 () Bool)

(declare-fun lt!821924 () Int)

(assert (=> d!657144 (>= lt!821924 0)))

(declare-fun e!1404145 () Int)

(assert (=> d!657144 (= lt!821924 e!1404145)))

(declare-fun c!350053 () Bool)

(assert (=> d!657144 (= c!350053 ((_ is Nil!25574) lt!821768))))

(assert (=> d!657144 (= (size!19938 lt!821768) lt!821924)))

(declare-fun b!2197120 () Bool)

(assert (=> b!2197120 (= e!1404145 0)))

(declare-fun b!2197121 () Bool)

(assert (=> b!2197121 (= e!1404145 (+ 1 (size!19938 (t!198264 lt!821768))))))

(assert (= (and d!657144 c!350053) b!2197120))

(assert (= (and d!657144 (not c!350053)) b!2197121))

(assert (=> b!2197121 m!2639395))

(assert (=> b!2196778 d!657144))

(declare-fun d!657146 () Bool)

(declare-fun lt!821925 () Bool)

(assert (=> d!657146 (= lt!821925 (exists!816 (toList!1258 lt!821776) lambda!82635))))

(assert (=> d!657146 (= lt!821925 (choose!13005 lt!821776 lambda!82635))))

(assert (=> d!657146 (= (exists!815 lt!821776 lambda!82635) lt!821925)))

(declare-fun bs!449050 () Bool)

(assert (= bs!449050 d!657146))

(declare-fun m!2639499 () Bool)

(assert (=> bs!449050 m!2639499))

(assert (=> bs!449050 m!2639499))

(declare-fun m!2639501 () Bool)

(assert (=> bs!449050 m!2639501))

(declare-fun m!2639503 () Bool)

(assert (=> bs!449050 m!2639503))

(assert (=> d!657022 d!657146))

(declare-fun d!657148 () Bool)

(declare-fun c!350054 () Bool)

(assert (=> d!657148 (= c!350054 ((_ is Nil!25574) lt!821820))))

(declare-fun e!1404146 () (InoxSet C!12516))

(assert (=> d!657148 (= (content!3472 lt!821820) e!1404146)))

(declare-fun b!2197122 () Bool)

(assert (=> b!2197122 (= e!1404146 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197123 () Bool)

(assert (=> b!2197123 (= e!1404146 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 lt!821820) true) (content!3472 (t!198264 lt!821820))))))

(assert (= (and d!657148 c!350054) b!2197122))

(assert (= (and d!657148 (not c!350054)) b!2197123))

(declare-fun m!2639505 () Bool)

(assert (=> b!2197123 m!2639505))

(declare-fun m!2639507 () Bool)

(assert (=> b!2197123 m!2639507))

(assert (=> d!657034 d!657148))

(declare-fun d!657150 () Bool)

(declare-fun c!350055 () Bool)

(assert (=> d!657150 (= c!350055 ((_ is Nil!25574) (list!9835 totalInput!923)))))

(declare-fun e!1404147 () (InoxSet C!12516))

(assert (=> d!657150 (= (content!3472 (list!9835 totalInput!923)) e!1404147)))

(declare-fun b!2197124 () Bool)

(assert (=> b!2197124 (= e!1404147 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197125 () Bool)

(assert (=> b!2197125 (= e!1404147 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 (list!9835 totalInput!923)) true) (content!3472 (t!198264 (list!9835 totalInput!923)))))))

(assert (= (and d!657150 c!350055) b!2197124))

(assert (= (and d!657150 (not c!350055)) b!2197125))

(declare-fun m!2639509 () Bool)

(assert (=> b!2197125 m!2639509))

(assert (=> b!2197125 m!2639497))

(assert (=> d!657034 d!657150))

(declare-fun d!657152 () Bool)

(declare-fun lt!821926 () Int)

(assert (=> d!657152 (>= lt!821926 0)))

(declare-fun e!1404148 () Int)

(assert (=> d!657152 (= lt!821926 e!1404148)))

(declare-fun c!350056 () Bool)

(assert (=> d!657152 (= c!350056 ((_ is Nil!25574) lt!821775))))

(assert (=> d!657152 (= (size!19938 lt!821775) lt!821926)))

(declare-fun b!2197126 () Bool)

(assert (=> b!2197126 (= e!1404148 0)))

(declare-fun b!2197127 () Bool)

(assert (=> b!2197127 (= e!1404148 (+ 1 (size!19938 (t!198264 lt!821775))))))

(assert (= (and d!657152 c!350056) b!2197126))

(assert (= (and d!657152 (not c!350056)) b!2197127))

(assert (=> b!2197127 m!2639477))

(assert (=> b!2196787 d!657152))

(assert (=> bm!131992 d!657152))

(declare-fun d!657154 () Bool)

(declare-fun lt!821927 () Int)

(assert (=> d!657154 (>= lt!821927 0)))

(declare-fun e!1404149 () Int)

(assert (=> d!657154 (= lt!821927 e!1404149)))

(declare-fun c!350057 () Bool)

(assert (=> d!657154 (= c!350057 ((_ is Nil!25574) (list!9835 totalInput!923)))))

(assert (=> d!657154 (= (size!19938 (list!9835 totalInput!923)) lt!821927)))

(declare-fun b!2197128 () Bool)

(assert (=> b!2197128 (= e!1404149 0)))

(declare-fun b!2197129 () Bool)

(assert (=> b!2197129 (= e!1404149 (+ 1 (size!19938 (t!198264 (list!9835 totalInput!923)))))))

(assert (= (and d!657154 c!350057) b!2197128))

(assert (= (and d!657154 (not c!350057)) b!2197129))

(assert (=> b!2197129 m!2639493))

(assert (=> d!657058 d!657154))

(assert (=> d!657058 d!657036))

(declare-fun d!657156 () Bool)

(declare-fun lt!821930 () Int)

(assert (=> d!657156 (= lt!821930 (size!19938 (list!9836 (c!349872 totalInput!923))))))

(assert (=> d!657156 (= lt!821930 (ite ((_ is Empty!8321) (c!349872 totalInput!923)) 0 (ite ((_ is Leaf!12181) (c!349872 totalInput!923)) (csize!16873 (c!349872 totalInput!923)) (csize!16872 (c!349872 totalInput!923)))))))

(assert (=> d!657156 (= (size!19941 (c!349872 totalInput!923)) lt!821930)))

(declare-fun bs!449051 () Bool)

(assert (= bs!449051 d!657156))

(assert (=> bs!449051 m!2639141))

(assert (=> bs!449051 m!2639141))

(declare-fun m!2639511 () Bool)

(assert (=> bs!449051 m!2639511))

(assert (=> d!657058 d!657156))

(declare-fun d!657158 () Bool)

(declare-fun lt!821931 () Int)

(assert (=> d!657158 (>= lt!821931 0)))

(declare-fun e!1404150 () Int)

(assert (=> d!657158 (= lt!821931 e!1404150)))

(declare-fun c!350058 () Bool)

(assert (=> d!657158 (= c!350058 ((_ is Nil!25574) lt!821831))))

(assert (=> d!657158 (= (size!19938 lt!821831) lt!821931)))

(declare-fun b!2197130 () Bool)

(assert (=> b!2197130 (= e!1404150 0)))

(declare-fun b!2197131 () Bool)

(assert (=> b!2197131 (= e!1404150 (+ 1 (size!19938 (t!198264 lt!821831))))))

(assert (= (and d!657158 c!350058) b!2197130))

(assert (= (and d!657158 (not c!350058)) b!2197131))

(declare-fun m!2639513 () Bool)

(assert (=> b!2197131 m!2639513))

(assert (=> b!2196823 d!657158))

(declare-fun d!657160 () Bool)

(assert (=> d!657160 (= (isEmpty!14589 (take!363 lt!821768 lt!821767)) ((_ is Nil!25574) (take!363 lt!821768 lt!821767)))))

(assert (=> d!657040 d!657160))

(assert (=> b!2196825 d!657144))

(assert (=> d!657044 d!657046))

(declare-fun b!2197132 () Bool)

(declare-fun e!1404153 () Int)

(assert (=> b!2197132 (= e!1404153 (size!19938 (drop!1373 lt!821775 from!1114)))))

(declare-fun b!2197133 () Bool)

(declare-fun e!1404151 () Bool)

(declare-fun lt!821932 () List!25658)

(declare-fun e!1404152 () Int)

(assert (=> b!2197133 (= e!1404151 (= (size!19938 lt!821932) e!1404152))))

(declare-fun c!350060 () Bool)

(assert (=> b!2197133 (= c!350060 (<= (+ 0 1) 0))))

(declare-fun b!2197134 () Bool)

(assert (=> b!2197134 (= e!1404152 0)))

(declare-fun b!2197135 () Bool)

(assert (=> b!2197135 (= e!1404152 e!1404153)))

(declare-fun c!350061 () Bool)

(assert (=> b!2197135 (= c!350061 (>= (+ 0 1) (size!19938 (drop!1373 lt!821775 from!1114))))))

(declare-fun b!2197136 () Bool)

(declare-fun e!1404154 () List!25658)

(assert (=> b!2197136 (= e!1404154 (Cons!25574 (h!30975 (drop!1373 lt!821775 from!1114)) (take!363 (t!198264 (drop!1373 lt!821775 from!1114)) (- (+ 0 1) 1))))))

(declare-fun b!2197137 () Bool)

(assert (=> b!2197137 (= e!1404153 (+ 0 1))))

(declare-fun d!657162 () Bool)

(assert (=> d!657162 e!1404151))

(declare-fun res!944506 () Bool)

(assert (=> d!657162 (=> (not res!944506) (not e!1404151))))

(assert (=> d!657162 (= res!944506 (= ((_ map implies) (content!3472 lt!821932) (content!3472 (drop!1373 lt!821775 from!1114))) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657162 (= lt!821932 e!1404154)))

(declare-fun c!350059 () Bool)

(assert (=> d!657162 (= c!350059 (or ((_ is Nil!25574) (drop!1373 lt!821775 from!1114)) (<= (+ 0 1) 0)))))

(assert (=> d!657162 (= (take!363 (drop!1373 lt!821775 from!1114) (+ 0 1)) lt!821932)))

(declare-fun b!2197138 () Bool)

(assert (=> b!2197138 (= e!1404154 Nil!25574)))

(assert (= (and d!657162 c!350059) b!2197138))

(assert (= (and d!657162 (not c!350059)) b!2197136))

(assert (= (and d!657162 res!944506) b!2197133))

(assert (= (and b!2197133 c!350060) b!2197134))

(assert (= (and b!2197133 (not c!350060)) b!2197135))

(assert (= (and b!2197135 c!350061) b!2197132))

(assert (= (and b!2197135 (not c!350061)) b!2197137))

(assert (=> b!2197132 m!2639019))

(declare-fun m!2639515 () Bool)

(assert (=> b!2197132 m!2639515))

(declare-fun m!2639517 () Bool)

(assert (=> b!2197133 m!2639517))

(declare-fun m!2639519 () Bool)

(assert (=> d!657162 m!2639519))

(assert (=> d!657162 m!2639019))

(declare-fun m!2639521 () Bool)

(assert (=> d!657162 m!2639521))

(declare-fun m!2639523 () Bool)

(assert (=> b!2197136 m!2639523))

(assert (=> b!2197135 m!2639019))

(assert (=> b!2197135 m!2639515))

(assert (=> d!657044 d!657162))

(assert (=> d!657044 d!657052))

(declare-fun b!2197139 () Bool)

(declare-fun e!1404158 () List!25658)

(assert (=> b!2197139 (= e!1404158 (drop!1373 (t!198264 lt!821775) (- (+ from!1114 1) 1)))))

(declare-fun b!2197140 () Bool)

(declare-fun e!1404157 () Bool)

(declare-fun lt!821933 () List!25658)

(declare-fun e!1404159 () Int)

(assert (=> b!2197140 (= e!1404157 (= (size!19938 lt!821933) e!1404159))))

(declare-fun c!350064 () Bool)

(assert (=> b!2197140 (= c!350064 (<= (+ from!1114 1) 0))))

(declare-fun b!2197141 () Bool)

(declare-fun e!1404156 () Int)

(declare-fun call!132011 () Int)

(assert (=> b!2197141 (= e!1404156 (- call!132011 (+ from!1114 1)))))

(declare-fun b!2197142 () Bool)

(declare-fun e!1404155 () List!25658)

(assert (=> b!2197142 (= e!1404155 e!1404158)))

(declare-fun c!350062 () Bool)

(assert (=> b!2197142 (= c!350062 (<= (+ from!1114 1) 0))))

(declare-fun bm!132006 () Bool)

(assert (=> bm!132006 (= call!132011 (size!19938 lt!821775))))

(declare-fun b!2197144 () Bool)

(assert (=> b!2197144 (= e!1404159 e!1404156)))

(declare-fun c!350063 () Bool)

(assert (=> b!2197144 (= c!350063 (>= (+ from!1114 1) call!132011))))

(declare-fun b!2197145 () Bool)

(assert (=> b!2197145 (= e!1404156 0)))

(declare-fun b!2197146 () Bool)

(assert (=> b!2197146 (= e!1404155 Nil!25574)))

(declare-fun b!2197147 () Bool)

(assert (=> b!2197147 (= e!1404158 lt!821775)))

(declare-fun d!657164 () Bool)

(assert (=> d!657164 e!1404157))

(declare-fun res!944507 () Bool)

(assert (=> d!657164 (=> (not res!944507) (not e!1404157))))

(assert (=> d!657164 (= res!944507 (= ((_ map implies) (content!3472 lt!821933) (content!3472 lt!821775)) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657164 (= lt!821933 e!1404155)))

(declare-fun c!350065 () Bool)

(assert (=> d!657164 (= c!350065 ((_ is Nil!25574) lt!821775))))

(assert (=> d!657164 (= (drop!1373 lt!821775 (+ from!1114 1)) lt!821933)))

(declare-fun b!2197143 () Bool)

(assert (=> b!2197143 (= e!1404159 call!132011)))

(assert (= (and d!657164 c!350065) b!2197146))

(assert (= (and d!657164 (not c!350065)) b!2197142))

(assert (= (and b!2197142 c!350062) b!2197147))

(assert (= (and b!2197142 (not c!350062)) b!2197139))

(assert (= (and d!657164 res!944507) b!2197140))

(assert (= (and b!2197140 c!350064) b!2197143))

(assert (= (and b!2197140 (not c!350064)) b!2197144))

(assert (= (and b!2197144 c!350063) b!2197145))

(assert (= (and b!2197144 (not c!350063)) b!2197141))

(assert (= (or b!2197143 b!2197144 b!2197141) bm!132006))

(declare-fun m!2639525 () Bool)

(assert (=> b!2197139 m!2639525))

(declare-fun m!2639527 () Bool)

(assert (=> b!2197140 m!2639527))

(assert (=> bm!132006 m!2639173))

(declare-fun m!2639529 () Bool)

(assert (=> d!657164 m!2639529))

(assert (=> d!657164 m!2639199))

(assert (=> d!657044 d!657164))

(declare-fun d!657166 () Bool)

(assert (=> d!657166 (= (Cons!25574 (apply!6258 lt!821775 from!1114) (take!363 (drop!1373 lt!821775 (+ from!1114 1)) 0)) (take!363 (drop!1373 lt!821775 from!1114) (+ 0 1)))))

(assert (=> d!657166 true))

(declare-fun _$30!116 () Unit!38685)

(assert (=> d!657166 (= (choose!13000 lt!821775 from!1114 0) _$30!116)))

(declare-fun bs!449052 () Bool)

(assert (= bs!449052 d!657166))

(assert (=> bs!449052 m!2639167))

(assert (=> bs!449052 m!2639027))

(assert (=> bs!449052 m!2639167))

(assert (=> bs!449052 m!2639171))

(assert (=> bs!449052 m!2639019))

(assert (=> bs!449052 m!2639019))

(assert (=> bs!449052 m!2639165))

(assert (=> d!657044 d!657166))

(declare-fun b!2197148 () Bool)

(declare-fun e!1404162 () Int)

(assert (=> b!2197148 (= e!1404162 (size!19938 (drop!1373 lt!821775 (+ from!1114 1))))))

(declare-fun b!2197149 () Bool)

(declare-fun e!1404160 () Bool)

(declare-fun lt!821934 () List!25658)

(declare-fun e!1404161 () Int)

(assert (=> b!2197149 (= e!1404160 (= (size!19938 lt!821934) e!1404161))))

(declare-fun c!350067 () Bool)

(assert (=> b!2197149 (= c!350067 (<= 0 0))))

(declare-fun b!2197150 () Bool)

(assert (=> b!2197150 (= e!1404161 0)))

(declare-fun b!2197151 () Bool)

(assert (=> b!2197151 (= e!1404161 e!1404162)))

(declare-fun c!350068 () Bool)

(assert (=> b!2197151 (= c!350068 (>= 0 (size!19938 (drop!1373 lt!821775 (+ from!1114 1)))))))

(declare-fun b!2197152 () Bool)

(declare-fun e!1404163 () List!25658)

(assert (=> b!2197152 (= e!1404163 (Cons!25574 (h!30975 (drop!1373 lt!821775 (+ from!1114 1))) (take!363 (t!198264 (drop!1373 lt!821775 (+ from!1114 1))) (- 0 1))))))

(declare-fun b!2197153 () Bool)

(assert (=> b!2197153 (= e!1404162 0)))

(declare-fun d!657168 () Bool)

(assert (=> d!657168 e!1404160))

(declare-fun res!944508 () Bool)

(assert (=> d!657168 (=> (not res!944508) (not e!1404160))))

(assert (=> d!657168 (= res!944508 (= ((_ map implies) (content!3472 lt!821934) (content!3472 (drop!1373 lt!821775 (+ from!1114 1)))) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657168 (= lt!821934 e!1404163)))

(declare-fun c!350066 () Bool)

(assert (=> d!657168 (= c!350066 (or ((_ is Nil!25574) (drop!1373 lt!821775 (+ from!1114 1))) (<= 0 0)))))

(assert (=> d!657168 (= (take!363 (drop!1373 lt!821775 (+ from!1114 1)) 0) lt!821934)))

(declare-fun b!2197154 () Bool)

(assert (=> b!2197154 (= e!1404163 Nil!25574)))

(assert (= (and d!657168 c!350066) b!2197154))

(assert (= (and d!657168 (not c!350066)) b!2197152))

(assert (= (and d!657168 res!944508) b!2197149))

(assert (= (and b!2197149 c!350067) b!2197150))

(assert (= (and b!2197149 (not c!350067)) b!2197151))

(assert (= (and b!2197151 c!350068) b!2197148))

(assert (= (and b!2197151 (not c!350068)) b!2197153))

(assert (=> b!2197148 m!2639167))

(declare-fun m!2639531 () Bool)

(assert (=> b!2197148 m!2639531))

(declare-fun m!2639533 () Bool)

(assert (=> b!2197149 m!2639533))

(declare-fun m!2639535 () Bool)

(assert (=> d!657168 m!2639535))

(assert (=> d!657168 m!2639167))

(declare-fun m!2639537 () Bool)

(assert (=> d!657168 m!2639537))

(declare-fun m!2639539 () Bool)

(assert (=> b!2197152 m!2639539))

(assert (=> b!2197151 m!2639167))

(assert (=> b!2197151 m!2639531))

(assert (=> d!657044 d!657168))

(declare-fun d!657170 () Bool)

(declare-fun lt!821935 () Int)

(assert (=> d!657170 (>= lt!821935 0)))

(declare-fun e!1404164 () Int)

(assert (=> d!657170 (= lt!821935 e!1404164)))

(declare-fun c!350069 () Bool)

(assert (=> d!657170 (= c!350069 ((_ is Nil!25574) (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114))))))

(assert (=> d!657170 (= (size!19938 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114))) lt!821935)))

(declare-fun b!2197155 () Bool)

(assert (=> b!2197155 (= e!1404164 0)))

(declare-fun b!2197156 () Bool)

(assert (=> b!2197156 (= e!1404164 (+ 1 (size!19938 (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114))))))))

(assert (= (and d!657170 c!350069) b!2197155))

(assert (= (and d!657170 (not c!350069)) b!2197156))

(declare-fun m!2639541 () Bool)

(assert (=> b!2197156 m!2639541))

(assert (=> b!2196745 d!657170))

(declare-fun d!657172 () Bool)

(declare-fun e!1404167 () Bool)

(assert (=> d!657172 e!1404167))

(declare-fun res!944511 () Bool)

(assert (=> d!657172 (=> (not res!944511) (not e!1404167))))

(declare-fun lt!821938 () List!25660)

(declare-fun noDuplicate!311 (List!25660) Bool)

(assert (=> d!657172 (= res!944511 (noDuplicate!311 lt!821938))))

(declare-fun choose!13007 ((InoxSet Context!3510)) List!25660)

(assert (=> d!657172 (= lt!821938 (choose!13007 z!3955))))

(assert (=> d!657172 (= (toList!1258 z!3955) lt!821938)))

(declare-fun b!2197159 () Bool)

(declare-fun content!3474 (List!25660) (InoxSet Context!3510))

(assert (=> b!2197159 (= e!1404167 (= (content!3474 lt!821938) z!3955))))

(assert (= (and d!657172 res!944511) b!2197159))

(declare-fun m!2639543 () Bool)

(assert (=> d!657172 m!2639543))

(declare-fun m!2639545 () Bool)

(assert (=> d!657172 m!2639545))

(declare-fun m!2639547 () Bool)

(assert (=> b!2197159 m!2639547))

(assert (=> bm!131987 d!657172))

(assert (=> b!2196696 d!657024))

(assert (=> b!2196794 d!657152))

(declare-fun d!657174 () Bool)

(declare-fun lt!821939 () Int)

(assert (=> d!657174 (>= lt!821939 0)))

(declare-fun e!1404168 () Int)

(assert (=> d!657174 (= lt!821939 e!1404168)))

(declare-fun c!350070 () Bool)

(assert (=> d!657174 (= c!350070 ((_ is Nil!25574) lt!821830))))

(assert (=> d!657174 (= (size!19938 lt!821830) lt!821939)))

(declare-fun b!2197160 () Bool)

(assert (=> b!2197160 (= e!1404168 0)))

(declare-fun b!2197161 () Bool)

(assert (=> b!2197161 (= e!1404168 (+ 1 (size!19938 (t!198264 lt!821830))))))

(assert (= (and d!657174 c!350070) b!2197160))

(assert (= (and d!657174 (not c!350070)) b!2197161))

(declare-fun m!2639549 () Bool)

(assert (=> b!2197161 m!2639549))

(assert (=> b!2196814 d!657174))

(declare-fun d!657176 () Bool)

(declare-fun lt!821940 () Int)

(assert (=> d!657176 (>= lt!821940 0)))

(declare-fun e!1404169 () Int)

(assert (=> d!657176 (= lt!821940 e!1404169)))

(declare-fun c!350071 () Bool)

(assert (=> d!657176 (= c!350071 ((_ is Nil!25574) lt!821828))))

(assert (=> d!657176 (= (size!19938 lt!821828) lt!821940)))

(declare-fun b!2197162 () Bool)

(assert (=> b!2197162 (= e!1404169 0)))

(declare-fun b!2197163 () Bool)

(assert (=> b!2197163 (= e!1404169 (+ 1 (size!19938 (t!198264 lt!821828))))))

(assert (= (and d!657176 c!350071) b!2197162))

(assert (= (and d!657176 (not c!350071)) b!2197163))

(declare-fun m!2639551 () Bool)

(assert (=> b!2197163 m!2639551))

(assert (=> b!2196798 d!657176))

(declare-fun d!657178 () Bool)

(declare-fun lt!821941 () C!12516)

(assert (=> d!657178 (contains!4281 (tail!3159 lt!821775) lt!821941)))

(declare-fun e!1404171 () C!12516)

(assert (=> d!657178 (= lt!821941 e!1404171)))

(declare-fun c!350072 () Bool)

(assert (=> d!657178 (= c!350072 (= (- from!1114 1) 0))))

(declare-fun e!1404170 () Bool)

(assert (=> d!657178 e!1404170))

(declare-fun res!944512 () Bool)

(assert (=> d!657178 (=> (not res!944512) (not e!1404170))))

(assert (=> d!657178 (= res!944512 (<= 0 (- from!1114 1)))))

(assert (=> d!657178 (= (apply!6258 (tail!3159 lt!821775) (- from!1114 1)) lt!821941)))

(declare-fun b!2197164 () Bool)

(assert (=> b!2197164 (= e!1404170 (< (- from!1114 1) (size!19938 (tail!3159 lt!821775))))))

(declare-fun b!2197165 () Bool)

(assert (=> b!2197165 (= e!1404171 (head!4687 (tail!3159 lt!821775)))))

(declare-fun b!2197166 () Bool)

(assert (=> b!2197166 (= e!1404171 (apply!6258 (tail!3159 (tail!3159 lt!821775)) (- (- from!1114 1) 1)))))

(assert (= (and d!657178 res!944512) b!2197164))

(assert (= (and d!657178 c!350072) b!2197165))

(assert (= (and d!657178 (not c!350072)) b!2197166))

(assert (=> d!657178 m!2639179))

(declare-fun m!2639553 () Bool)

(assert (=> d!657178 m!2639553))

(assert (=> b!2197164 m!2639179))

(declare-fun m!2639555 () Bool)

(assert (=> b!2197164 m!2639555))

(assert (=> b!2197165 m!2639179))

(declare-fun m!2639557 () Bool)

(assert (=> b!2197165 m!2639557))

(assert (=> b!2197166 m!2639179))

(declare-fun m!2639559 () Bool)

(assert (=> b!2197166 m!2639559))

(assert (=> b!2197166 m!2639559))

(declare-fun m!2639561 () Bool)

(assert (=> b!2197166 m!2639561))

(assert (=> b!2196796 d!657178))

(declare-fun d!657180 () Bool)

(assert (=> d!657180 (= (tail!3159 lt!821775) (t!198264 lt!821775))))

(assert (=> b!2196796 d!657180))

(declare-fun d!657182 () Bool)

(declare-fun c!350073 () Bool)

(assert (=> d!657182 (= c!350073 (isEmpty!14589 (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))))))

(declare-fun e!1404172 () Bool)

(assert (=> d!657182 (= (matchZipper!271 (derivationStepZipper!257 lt!821776 (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))) (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))) e!1404172)))

(declare-fun b!2197167 () Bool)

(assert (=> b!2197167 (= e!1404172 (nullableZipper!465 (derivationStepZipper!257 lt!821776 (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774)))))))

(declare-fun b!2197168 () Bool)

(assert (=> b!2197168 (= e!1404172 (matchZipper!271 (derivationStepZipper!257 (derivationStepZipper!257 lt!821776 (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))) (head!4687 (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774)))) (tail!3159 (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774)))))))

(assert (= (and d!657182 c!350073) b!2197167))

(assert (= (and d!657182 (not c!350073)) b!2197168))

(assert (=> d!657182 m!2639117))

(declare-fun m!2639563 () Bool)

(assert (=> d!657182 m!2639563))

(assert (=> b!2197167 m!2639115))

(declare-fun m!2639565 () Bool)

(assert (=> b!2197167 m!2639565))

(assert (=> b!2197168 m!2639117))

(declare-fun m!2639567 () Bool)

(assert (=> b!2197168 m!2639567))

(assert (=> b!2197168 m!2639115))

(assert (=> b!2197168 m!2639567))

(declare-fun m!2639569 () Bool)

(assert (=> b!2197168 m!2639569))

(assert (=> b!2197168 m!2639117))

(declare-fun m!2639571 () Bool)

(assert (=> b!2197168 m!2639571))

(assert (=> b!2197168 m!2639569))

(assert (=> b!2197168 m!2639571))

(declare-fun m!2639573 () Bool)

(assert (=> b!2197168 m!2639573))

(assert (=> b!2196727 d!657182))

(declare-fun bs!449053 () Bool)

(declare-fun d!657184 () Bool)

(assert (= bs!449053 (and d!657184 d!657010)))

(declare-fun lambda!82692 () Int)

(assert (=> bs!449053 (= (= (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774)) lt!821772) (= lambda!82692 lambda!82632))))

(declare-fun bs!449054 () Bool)

(assert (= bs!449054 (and d!657184 d!657124)))

(assert (=> bs!449054 (= (= (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774)) (apply!6259 totalInput!923 from!1114)) (= lambda!82692 lambda!82683))))

(assert (=> d!657184 true))

(assert (=> d!657184 (= (derivationStepZipper!257 lt!821776 (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))) (flatMap!153 lt!821776 lambda!82692))))

(declare-fun bs!449055 () Bool)

(assert (= bs!449055 d!657184))

(declare-fun m!2639575 () Bool)

(assert (=> bs!449055 m!2639575))

(assert (=> b!2196727 d!657184))

(declare-fun d!657186 () Bool)

(assert (=> d!657186 (= (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774)) (h!30975 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774)))))

(assert (=> b!2196727 d!657186))

(declare-fun d!657188 () Bool)

(assert (=> d!657188 (= (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774)) (t!198264 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774)))))

(assert (=> b!2196727 d!657188))

(declare-fun d!657190 () Bool)

(declare-fun res!944517 () Bool)

(declare-fun e!1404177 () Bool)

(assert (=> d!657190 (=> res!944517 e!1404177)))

(assert (=> d!657190 (= res!944517 ((_ is Nil!25575) (exprs!2255 setElem!18830)))))

(assert (=> d!657190 (= (forall!5229 (exprs!2255 setElem!18830) lambda!82653) e!1404177)))

(declare-fun b!2197173 () Bool)

(declare-fun e!1404178 () Bool)

(assert (=> b!2197173 (= e!1404177 e!1404178)))

(declare-fun res!944518 () Bool)

(assert (=> b!2197173 (=> (not res!944518) (not e!1404178))))

(declare-fun dynLambda!11445 (Int Regex!6185) Bool)

(assert (=> b!2197173 (= res!944518 (dynLambda!11445 lambda!82653 (h!30976 (exprs!2255 setElem!18830))))))

(declare-fun b!2197174 () Bool)

(assert (=> b!2197174 (= e!1404178 (forall!5229 (t!198265 (exprs!2255 setElem!18830)) lambda!82653))))

(assert (= (and d!657190 (not res!944517)) b!2197173))

(assert (= (and b!2197173 res!944518) b!2197174))

(declare-fun b_lambda!71157 () Bool)

(assert (=> (not b_lambda!71157) (not b!2197173)))

(declare-fun m!2639577 () Bool)

(assert (=> b!2197173 m!2639577))

(declare-fun m!2639579 () Bool)

(assert (=> b!2197174 m!2639579))

(assert (=> d!657026 d!657190))

(declare-fun d!657192 () Bool)

(declare-fun lt!821942 () Int)

(assert (=> d!657192 (>= lt!821942 0)))

(declare-fun e!1404179 () Int)

(assert (=> d!657192 (= lt!821942 e!1404179)))

(declare-fun c!350074 () Bool)

(assert (=> d!657192 (= c!350074 ((_ is Nil!25574) (drop!1373 lt!821775 (+ 1 from!1114))))))

(assert (=> d!657192 (= (size!19938 (drop!1373 lt!821775 (+ 1 from!1114))) lt!821942)))

(declare-fun b!2197175 () Bool)

(assert (=> b!2197175 (= e!1404179 0)))

(declare-fun b!2197176 () Bool)

(assert (=> b!2197176 (= e!1404179 (+ 1 (size!19938 (t!198264 (drop!1373 lt!821775 (+ 1 from!1114))))))))

(assert (= (and d!657192 c!350074) b!2197175))

(assert (= (and d!657192 (not c!350074)) b!2197176))

(declare-fun m!2639581 () Bool)

(assert (=> b!2197176 m!2639581))

(assert (=> b!2196800 d!657192))

(assert (=> b!2196781 d!657144))

(assert (=> bm!131991 d!657152))

(declare-fun bs!449056 () Bool)

(declare-fun d!657194 () Bool)

(assert (= bs!449056 (and d!657194 d!657026)))

(declare-fun lambda!82693 () Int)

(assert (=> bs!449056 (= lambda!82693 lambda!82653)))

(assert (=> d!657194 (= (inv!34278 setElem!18833) (forall!5229 (exprs!2255 setElem!18833) lambda!82693))))

(declare-fun bs!449057 () Bool)

(assert (= bs!449057 d!657194))

(declare-fun m!2639583 () Bool)

(assert (=> bs!449057 m!2639583))

(assert (=> setNonEmpty!18833 d!657194))

(assert (=> bm!131990 d!657154))

(declare-fun d!657196 () Bool)

(declare-fun lt!821945 () Bool)

(assert (=> d!657196 (= lt!821945 (select (content!3472 lt!821775) lt!821827))))

(declare-fun e!1404185 () Bool)

(assert (=> d!657196 (= lt!821945 e!1404185)))

(declare-fun res!944524 () Bool)

(assert (=> d!657196 (=> (not res!944524) (not e!1404185))))

(assert (=> d!657196 (= res!944524 ((_ is Cons!25574) lt!821775))))

(assert (=> d!657196 (= (contains!4281 lt!821775 lt!821827) lt!821945)))

(declare-fun b!2197181 () Bool)

(declare-fun e!1404184 () Bool)

(assert (=> b!2197181 (= e!1404185 e!1404184)))

(declare-fun res!944523 () Bool)

(assert (=> b!2197181 (=> res!944523 e!1404184)))

(assert (=> b!2197181 (= res!944523 (= (h!30975 lt!821775) lt!821827))))

(declare-fun b!2197182 () Bool)

(assert (=> b!2197182 (= e!1404184 (contains!4281 (t!198264 lt!821775) lt!821827))))

(assert (= (and d!657196 res!944524) b!2197181))

(assert (= (and b!2197181 (not res!944523)) b!2197182))

(assert (=> d!657196 m!2639199))

(declare-fun m!2639585 () Bool)

(assert (=> d!657196 m!2639585))

(declare-fun m!2639587 () Bool)

(assert (=> b!2197182 m!2639587))

(assert (=> d!657046 d!657196))

(declare-fun d!657198 () Bool)

(declare-fun c!350075 () Bool)

(assert (=> d!657198 (= c!350075 ((_ is Nil!25574) lt!821831))))

(declare-fun e!1404186 () (InoxSet C!12516))

(assert (=> d!657198 (= (content!3472 lt!821831) e!1404186)))

(declare-fun b!2197183 () Bool)

(assert (=> b!2197183 (= e!1404186 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197184 () Bool)

(assert (=> b!2197184 (= e!1404186 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 lt!821831) true) (content!3472 (t!198264 lt!821831))))))

(assert (= (and d!657198 c!350075) b!2197183))

(assert (= (and d!657198 (not c!350075)) b!2197184))

(declare-fun m!2639589 () Bool)

(assert (=> b!2197184 m!2639589))

(declare-fun m!2639591 () Bool)

(assert (=> b!2197184 m!2639591))

(assert (=> d!657054 d!657198))

(declare-fun d!657200 () Bool)

(declare-fun c!350076 () Bool)

(assert (=> d!657200 (= c!350076 ((_ is Nil!25574) lt!821768))))

(declare-fun e!1404187 () (InoxSet C!12516))

(assert (=> d!657200 (= (content!3472 lt!821768) e!1404187)))

(declare-fun b!2197185 () Bool)

(assert (=> b!2197185 (= e!1404187 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197186 () Bool)

(assert (=> b!2197186 (= e!1404187 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 lt!821768) true) (content!3472 (t!198264 lt!821768))))))

(assert (= (and d!657200 c!350076) b!2197185))

(assert (= (and d!657200 (not c!350076)) b!2197186))

(declare-fun m!2639593 () Bool)

(assert (=> b!2197186 m!2639593))

(assert (=> b!2197186 m!2639401))

(assert (=> d!657054 d!657200))

(assert (=> b!2196742 d!657170))

(declare-fun bs!449058 () Bool)

(declare-fun d!657202 () Bool)

(assert (= bs!449058 (and d!657202 d!657118)))

(declare-fun lambda!82696 () Int)

(assert (=> bs!449058 (= lambda!82696 lambda!82682)))

(declare-fun bs!449059 () Bool)

(assert (= bs!449059 (and d!657202 d!657022)))

(assert (=> bs!449059 (not (= lambda!82696 lambda!82635))))

(declare-fun bs!449060 () Bool)

(assert (= bs!449060 (and d!657202 b!2196711)))

(assert (=> bs!449060 (not (= lambda!82696 lambda!82649))))

(declare-fun bs!449061 () Bool)

(assert (= bs!449061 (and d!657202 d!657126)))

(assert (=> bs!449061 (not (= lambda!82696 lambda!82684))))

(declare-fun bs!449062 () Bool)

(assert (= bs!449062 (and d!657202 b!2196712)))

(assert (=> bs!449062 (not (= lambda!82696 lambda!82650))))

(declare-fun bs!449063 () Bool)

(assert (= bs!449063 (and d!657202 d!657024)))

(assert (=> bs!449063 (not (= lambda!82696 lambda!82648))))

(declare-fun bs!449064 () Bool)

(assert (= bs!449064 (and d!657202 d!657134)))

(assert (=> bs!449064 (not (= lambda!82696 lambda!82691))))

(declare-fun bs!449065 () Bool)

(assert (= bs!449065 (and d!657202 d!657038)))

(assert (=> bs!449065 (not (= lambda!82696 lambda!82654))))

(assert (=> d!657202 true))

(assert (=> d!657202 (< (dynLambda!11444 order!14811 lambda!82648) (dynLambda!11444 order!14811 lambda!82696))))

(assert (=> d!657202 (exists!816 lt!821814 lambda!82696)))

(declare-fun lt!821948 () Unit!38685)

(declare-fun choose!13008 (List!25660 Int) Unit!38685)

(assert (=> d!657202 (= lt!821948 (choose!13008 lt!821814 lambda!82648))))

(assert (=> d!657202 (not (forall!5232 lt!821814 lambda!82648))))

(assert (=> d!657202 (= (lemmaNotForallThenExists!47 lt!821814 lambda!82648) lt!821948)))

(declare-fun bs!449066 () Bool)

(assert (= bs!449066 d!657202))

(declare-fun m!2639595 () Bool)

(assert (=> bs!449066 m!2639595))

(declare-fun m!2639597 () Bool)

(assert (=> bs!449066 m!2639597))

(declare-fun m!2639599 () Bool)

(assert (=> bs!449066 m!2639599))

(assert (=> b!2196711 d!657202))

(declare-fun d!657204 () Bool)

(declare-fun c!350077 () Bool)

(assert (=> d!657204 (= c!350077 (isEmpty!14589 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821839)))))

(declare-fun e!1404190 () Bool)

(assert (=> d!657204 (= (matchZipper!271 lt!821776 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821839)) e!1404190)))

(declare-fun b!2197187 () Bool)

(assert (=> b!2197187 (= e!1404190 (nullableZipper!465 lt!821776))))

(declare-fun b!2197188 () Bool)

(assert (=> b!2197188 (= e!1404190 (matchZipper!271 (derivationStepZipper!257 lt!821776 (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821839))) (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821839))))))

(assert (= (and d!657204 c!350077) b!2197187))

(assert (= (and d!657204 (not c!350077)) b!2197188))

(assert (=> d!657204 m!2639235))

(declare-fun m!2639601 () Bool)

(assert (=> d!657204 m!2639601))

(assert (=> b!2197187 m!2639033))

(assert (=> b!2197188 m!2639235))

(declare-fun m!2639603 () Bool)

(assert (=> b!2197188 m!2639603))

(assert (=> b!2197188 m!2639603))

(declare-fun m!2639605 () Bool)

(assert (=> b!2197188 m!2639605))

(assert (=> b!2197188 m!2639235))

(declare-fun m!2639607 () Bool)

(assert (=> b!2197188 m!2639607))

(assert (=> b!2197188 m!2639605))

(assert (=> b!2197188 m!2639607))

(declare-fun m!2639609 () Bool)

(assert (=> b!2197188 m!2639609))

(assert (=> b!2196840 d!657204))

(declare-fun b!2197189 () Bool)

(declare-fun e!1404193 () Int)

(assert (=> b!2197189 (= e!1404193 (size!19938 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114))))))

(declare-fun b!2197190 () Bool)

(declare-fun e!1404191 () Bool)

(declare-fun lt!821949 () List!25658)

(declare-fun e!1404192 () Int)

(assert (=> b!2197190 (= e!1404191 (= (size!19938 lt!821949) e!1404192))))

(declare-fun c!350079 () Bool)

(assert (=> b!2197190 (= c!350079 (<= lt!821839 0))))

(declare-fun b!2197191 () Bool)

(assert (=> b!2197191 (= e!1404192 0)))

(declare-fun b!2197192 () Bool)

(assert (=> b!2197192 (= e!1404192 e!1404193)))

(declare-fun c!350080 () Bool)

(assert (=> b!2197192 (= c!350080 (>= lt!821839 (size!19938 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)))))))

(declare-fun e!1404194 () List!25658)

(declare-fun b!2197193 () Bool)

(assert (=> b!2197193 (= e!1404194 (Cons!25574 (h!30975 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114))) (take!363 (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114))) (- lt!821839 1))))))

(declare-fun b!2197194 () Bool)

(assert (=> b!2197194 (= e!1404193 lt!821839)))

(declare-fun d!657206 () Bool)

(assert (=> d!657206 e!1404191))

(declare-fun res!944525 () Bool)

(assert (=> d!657206 (=> (not res!944525) (not e!1404191))))

(assert (=> d!657206 (= res!944525 (= ((_ map implies) (content!3472 lt!821949) (content!3472 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)))) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657206 (= lt!821949 e!1404194)))

(declare-fun c!350078 () Bool)

(assert (=> d!657206 (= c!350078 (or ((_ is Nil!25574) (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114))) (<= lt!821839 0)))))

(assert (=> d!657206 (= (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821839) lt!821949)))

(declare-fun b!2197195 () Bool)

(assert (=> b!2197195 (= e!1404194 Nil!25574)))

(assert (= (and d!657206 c!350078) b!2197195))

(assert (= (and d!657206 (not c!350078)) b!2197193))

(assert (= (and d!657206 res!944525) b!2197190))

(assert (= (and b!2197190 c!350079) b!2197191))

(assert (= (and b!2197190 (not c!350079)) b!2197192))

(assert (= (and b!2197192 c!350080) b!2197189))

(assert (= (and b!2197192 (not c!350080)) b!2197194))

(assert (=> b!2197189 m!2639041))

(assert (=> b!2197189 m!2639121))

(declare-fun m!2639611 () Bool)

(assert (=> b!2197190 m!2639611))

(declare-fun m!2639613 () Bool)

(assert (=> d!657206 m!2639613))

(assert (=> d!657206 m!2639041))

(assert (=> d!657206 m!2639127))

(declare-fun m!2639615 () Bool)

(assert (=> b!2197193 m!2639615))

(assert (=> b!2197192 m!2639041))

(assert (=> b!2197192 m!2639121))

(assert (=> b!2196840 d!657206))

(assert (=> b!2196840 d!657034))

(assert (=> b!2196840 d!657036))

(declare-fun d!657208 () Bool)

(declare-fun c!350081 () Bool)

(assert (=> d!657208 (= c!350081 ((_ is Node!8321) (left!19636 (c!349872 totalInput!923))))))

(declare-fun e!1404195 () Bool)

(assert (=> d!657208 (= (inv!34276 (left!19636 (c!349872 totalInput!923))) e!1404195)))

(declare-fun b!2197196 () Bool)

(assert (=> b!2197196 (= e!1404195 (inv!34279 (left!19636 (c!349872 totalInput!923))))))

(declare-fun b!2197197 () Bool)

(declare-fun e!1404196 () Bool)

(assert (=> b!2197197 (= e!1404195 e!1404196)))

(declare-fun res!944526 () Bool)

(assert (=> b!2197197 (= res!944526 (not ((_ is Leaf!12181) (left!19636 (c!349872 totalInput!923)))))))

(assert (=> b!2197197 (=> res!944526 e!1404196)))

(declare-fun b!2197198 () Bool)

(assert (=> b!2197198 (= e!1404196 (inv!34280 (left!19636 (c!349872 totalInput!923))))))

(assert (= (and d!657208 c!350081) b!2197196))

(assert (= (and d!657208 (not c!350081)) b!2197197))

(assert (= (and b!2197197 (not res!944526)) b!2197198))

(declare-fun m!2639617 () Bool)

(assert (=> b!2197196 m!2639617))

(declare-fun m!2639619 () Bool)

(assert (=> b!2197198 m!2639619))

(assert (=> b!2196873 d!657208))

(declare-fun d!657210 () Bool)

(declare-fun c!350082 () Bool)

(assert (=> d!657210 (= c!350082 ((_ is Node!8321) (right!19966 (c!349872 totalInput!923))))))

(declare-fun e!1404197 () Bool)

(assert (=> d!657210 (= (inv!34276 (right!19966 (c!349872 totalInput!923))) e!1404197)))

(declare-fun b!2197199 () Bool)

(assert (=> b!2197199 (= e!1404197 (inv!34279 (right!19966 (c!349872 totalInput!923))))))

(declare-fun b!2197200 () Bool)

(declare-fun e!1404198 () Bool)

(assert (=> b!2197200 (= e!1404197 e!1404198)))

(declare-fun res!944527 () Bool)

(assert (=> b!2197200 (= res!944527 (not ((_ is Leaf!12181) (right!19966 (c!349872 totalInput!923)))))))

(assert (=> b!2197200 (=> res!944527 e!1404198)))

(declare-fun b!2197201 () Bool)

(assert (=> b!2197201 (= e!1404198 (inv!34280 (right!19966 (c!349872 totalInput!923))))))

(assert (= (and d!657210 c!350082) b!2197199))

(assert (= (and d!657210 (not c!350082)) b!2197200))

(assert (= (and b!2197200 (not res!944527)) b!2197201))

(declare-fun m!2639621 () Bool)

(assert (=> b!2197199 m!2639621))

(declare-fun m!2639623 () Bool)

(assert (=> b!2197201 m!2639623))

(assert (=> b!2196873 d!657210))

(declare-fun lt!821951 () Int)

(declare-fun d!657212 () Bool)

(assert (=> d!657212 (and (>= lt!821951 (- 1)) (< lt!821951 lt!821763) (>= lt!821951 e!1403894) (or (= lt!821951 e!1403894) (>= lt!821951 (+ 1 from!1114 1))))))

(declare-fun e!1404200 () Int)

(assert (=> d!657212 (= lt!821951 e!1404200)))

(declare-fun c!350083 () Bool)

(declare-fun e!1404201 () Bool)

(assert (=> d!657212 (= c!350083 e!1404201)))

(declare-fun res!944528 () Bool)

(assert (=> d!657212 (=> res!944528 e!1404201)))

(assert (=> d!657212 (= res!944528 (= (+ 1 from!1114 1) lt!821763))))

(assert (=> d!657212 (and (>= (+ 1 from!1114 1) 0) (<= (+ 1 from!1114 1) lt!821763))))

(assert (=> d!657212 (= (furthestNullablePosition!353 lt!821789 (+ 1 from!1114 1) totalInput!923 lt!821763 e!1403894) lt!821951)))

(declare-fun lt!821950 () (InoxSet Context!3510))

(declare-fun b!2197202 () Bool)

(declare-fun e!1404199 () Int)

(assert (=> b!2197202 (= e!1404200 (furthestNullablePosition!353 lt!821950 (+ 1 from!1114 1 1) totalInput!923 lt!821763 e!1404199))))

(assert (=> b!2197202 (= lt!821950 (derivationStepZipper!257 lt!821789 (apply!6259 totalInput!923 (+ 1 from!1114 1))))))

(declare-fun c!350084 () Bool)

(assert (=> b!2197202 (= c!350084 (nullableZipper!465 lt!821950))))

(declare-fun b!2197203 () Bool)

(assert (=> b!2197203 (= e!1404200 e!1403894)))

(declare-fun b!2197204 () Bool)

(assert (=> b!2197204 (= e!1404201 (lostCauseZipper!301 lt!821789))))

(declare-fun b!2197205 () Bool)

(assert (=> b!2197205 (= e!1404199 (+ 1 from!1114 1))))

(declare-fun b!2197206 () Bool)

(assert (=> b!2197206 (= e!1404199 e!1403894)))

(assert (= (and d!657212 (not res!944528)) b!2197204))

(assert (= (and d!657212 c!350083) b!2197203))

(assert (= (and d!657212 (not c!350083)) b!2197202))

(assert (= (and b!2197202 c!350084) b!2197205))

(assert (= (and b!2197202 (not c!350084)) b!2197206))

(declare-fun m!2639625 () Bool)

(assert (=> b!2197202 m!2639625))

(declare-fun m!2639627 () Bool)

(assert (=> b!2197202 m!2639627))

(assert (=> b!2197202 m!2639627))

(declare-fun m!2639629 () Bool)

(assert (=> b!2197202 m!2639629))

(declare-fun m!2639631 () Bool)

(assert (=> b!2197202 m!2639631))

(declare-fun m!2639633 () Bool)

(assert (=> b!2197204 m!2639633))

(assert (=> b!2196702 d!657212))

(declare-fun bs!449067 () Bool)

(declare-fun d!657214 () Bool)

(assert (= bs!449067 (and d!657214 d!657010)))

(declare-fun lambda!82697 () Int)

(assert (=> bs!449067 (= (= (apply!6259 totalInput!923 (+ 1 from!1114)) lt!821772) (= lambda!82697 lambda!82632))))

(declare-fun bs!449068 () Bool)

(assert (= bs!449068 (and d!657214 d!657124)))

(assert (=> bs!449068 (= (= (apply!6259 totalInput!923 (+ 1 from!1114)) (apply!6259 totalInput!923 from!1114)) (= lambda!82697 lambda!82683))))

(declare-fun bs!449069 () Bool)

(assert (= bs!449069 (and d!657214 d!657184)))

(assert (=> bs!449069 (= (= (apply!6259 totalInput!923 (+ 1 from!1114)) (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))) (= lambda!82697 lambda!82692))))

(assert (=> d!657214 true))

(assert (=> d!657214 (= (derivationStepZipper!257 lt!821776 (apply!6259 totalInput!923 (+ 1 from!1114))) (flatMap!153 lt!821776 lambda!82697))))

(declare-fun bs!449070 () Bool)

(assert (= bs!449070 d!657214))

(declare-fun m!2639635 () Bool)

(assert (=> bs!449070 m!2639635))

(assert (=> b!2196702 d!657214))

(declare-fun d!657216 () Bool)

(declare-fun lt!821952 () C!12516)

(assert (=> d!657216 (= lt!821952 (apply!6258 (list!9835 totalInput!923) (+ 1 from!1114)))))

(assert (=> d!657216 (= lt!821952 (apply!6260 (c!349872 totalInput!923) (+ 1 from!1114)))))

(declare-fun e!1404202 () Bool)

(assert (=> d!657216 e!1404202))

(declare-fun res!944529 () Bool)

(assert (=> d!657216 (=> (not res!944529) (not e!1404202))))

(assert (=> d!657216 (= res!944529 (<= 0 (+ 1 from!1114)))))

(assert (=> d!657216 (= (apply!6259 totalInput!923 (+ 1 from!1114)) lt!821952)))

(declare-fun b!2197207 () Bool)

(assert (=> b!2197207 (= e!1404202 (< (+ 1 from!1114) (size!19937 totalInput!923)))))

(assert (= (and d!657216 res!944529) b!2197207))

(assert (=> d!657216 m!2639029))

(assert (=> d!657216 m!2639029))

(declare-fun m!2639637 () Bool)

(assert (=> d!657216 m!2639637))

(declare-fun m!2639639 () Bool)

(assert (=> d!657216 m!2639639))

(assert (=> b!2197207 m!2639059))

(assert (=> b!2196702 d!657216))

(declare-fun bs!449071 () Bool)

(declare-fun d!657218 () Bool)

(assert (= bs!449071 (and d!657218 d!657118)))

(declare-fun lambda!82698 () Int)

(assert (=> bs!449071 (not (= lambda!82698 lambda!82682))))

(declare-fun bs!449072 () Bool)

(assert (= bs!449072 (and d!657218 d!657022)))

(assert (=> bs!449072 (= lambda!82698 lambda!82635)))

(declare-fun bs!449073 () Bool)

(assert (= bs!449073 (and d!657218 d!657202)))

(assert (=> bs!449073 (not (= lambda!82698 lambda!82696))))

(declare-fun bs!449074 () Bool)

(assert (= bs!449074 (and d!657218 b!2196711)))

(assert (=> bs!449074 (not (= lambda!82698 lambda!82649))))

(declare-fun bs!449075 () Bool)

(assert (= bs!449075 (and d!657218 d!657126)))

(assert (=> bs!449075 (= lambda!82698 lambda!82684)))

(declare-fun bs!449076 () Bool)

(assert (= bs!449076 (and d!657218 b!2196712)))

(assert (=> bs!449076 (not (= lambda!82698 lambda!82650))))

(declare-fun bs!449077 () Bool)

(assert (= bs!449077 (and d!657218 d!657024)))

(assert (=> bs!449077 (not (= lambda!82698 lambda!82648))))

(declare-fun bs!449078 () Bool)

(assert (= bs!449078 (and d!657218 d!657134)))

(assert (=> bs!449078 (not (= lambda!82698 lambda!82691))))

(declare-fun bs!449079 () Bool)

(assert (= bs!449079 (and d!657218 d!657038)))

(assert (=> bs!449079 (= lambda!82698 lambda!82654)))

(assert (=> d!657218 (= (nullableZipper!465 lt!821789) (exists!815 lt!821789 lambda!82698))))

(declare-fun bs!449080 () Bool)

(assert (= bs!449080 d!657218))

(declare-fun m!2639641 () Bool)

(assert (=> bs!449080 m!2639641))

(assert (=> b!2196702 d!657218))

(declare-fun bs!449081 () Bool)

(declare-fun d!657220 () Bool)

(assert (= bs!449081 (and d!657220 d!657022)))

(declare-fun lambda!82701 () Int)

(assert (=> bs!449081 (not (= lambda!82701 lambda!82635))))

(declare-fun bs!449082 () Bool)

(assert (= bs!449082 (and d!657220 d!657202)))

(assert (=> bs!449082 (= (= (ite c!349896 lambda!82649 lambda!82650) lambda!82648) (= lambda!82701 lambda!82696))))

(declare-fun bs!449083 () Bool)

(assert (= bs!449083 (and d!657220 b!2196711)))

(assert (=> bs!449083 (not (= lambda!82701 lambda!82649))))

(declare-fun bs!449084 () Bool)

(assert (= bs!449084 (and d!657220 d!657126)))

(assert (=> bs!449084 (not (= lambda!82701 lambda!82684))))

(declare-fun bs!449085 () Bool)

(assert (= bs!449085 (and d!657220 d!657118)))

(assert (=> bs!449085 (= (= (ite c!349896 lambda!82649 lambda!82650) lambda!82648) (= lambda!82701 lambda!82682))))

(declare-fun bs!449086 () Bool)

(assert (= bs!449086 (and d!657220 d!657218)))

(assert (=> bs!449086 (not (= lambda!82701 lambda!82698))))

(declare-fun bs!449087 () Bool)

(assert (= bs!449087 (and d!657220 b!2196712)))

(assert (=> bs!449087 (not (= lambda!82701 lambda!82650))))

(declare-fun bs!449088 () Bool)

(assert (= bs!449088 (and d!657220 d!657024)))

(assert (=> bs!449088 (not (= lambda!82701 lambda!82648))))

(declare-fun bs!449089 () Bool)

(assert (= bs!449089 (and d!657220 d!657134)))

(assert (=> bs!449089 (not (= lambda!82701 lambda!82691))))

(declare-fun bs!449090 () Bool)

(assert (= bs!449090 (and d!657220 d!657038)))

(assert (=> bs!449090 (not (= lambda!82701 lambda!82654))))

(assert (=> d!657220 true))

(assert (=> d!657220 (< (dynLambda!11444 order!14811 (ite c!349896 lambda!82649 lambda!82650)) (dynLambda!11444 order!14811 lambda!82701))))

(assert (=> d!657220 (= (exists!816 (ite c!349896 lt!821814 lt!821810) (ite c!349896 lambda!82649 lambda!82650)) (not (forall!5232 (ite c!349896 lt!821814 lt!821810) lambda!82701)))))

(declare-fun bs!449091 () Bool)

(assert (= bs!449091 d!657220))

(declare-fun m!2639643 () Bool)

(assert (=> bs!449091 m!2639643))

(assert (=> bm!131986 d!657220))

(declare-fun d!657222 () Bool)

(declare-fun lt!821953 () C!12516)

(assert (=> d!657222 (contains!4281 (list!9835 totalInput!923) lt!821953)))

(declare-fun e!1404204 () C!12516)

(assert (=> d!657222 (= lt!821953 e!1404204)))

(declare-fun c!350085 () Bool)

(assert (=> d!657222 (= c!350085 (= from!1114 0))))

(declare-fun e!1404203 () Bool)

(assert (=> d!657222 e!1404203))

(declare-fun res!944530 () Bool)

(assert (=> d!657222 (=> (not res!944530) (not e!1404203))))

(assert (=> d!657222 (= res!944530 (<= 0 from!1114))))

(assert (=> d!657222 (= (apply!6258 (list!9835 totalInput!923) from!1114) lt!821953)))

(declare-fun b!2197208 () Bool)

(assert (=> b!2197208 (= e!1404203 (< from!1114 (size!19938 (list!9835 totalInput!923))))))

(declare-fun b!2197209 () Bool)

(assert (=> b!2197209 (= e!1404204 (head!4687 (list!9835 totalInput!923)))))

(declare-fun b!2197210 () Bool)

(assert (=> b!2197210 (= e!1404204 (apply!6258 (tail!3159 (list!9835 totalInput!923)) (- from!1114 1)))))

(assert (= (and d!657222 res!944530) b!2197208))

(assert (= (and d!657222 c!350085) b!2197209))

(assert (= (and d!657222 (not c!350085)) b!2197210))

(assert (=> d!657222 m!2639029))

(declare-fun m!2639645 () Bool)

(assert (=> d!657222 m!2639645))

(assert (=> b!2197208 m!2639029))

(assert (=> b!2197208 m!2639135))

(assert (=> b!2197209 m!2639029))

(declare-fun m!2639647 () Bool)

(assert (=> b!2197209 m!2639647))

(assert (=> b!2197210 m!2639029))

(declare-fun m!2639649 () Bool)

(assert (=> b!2197210 m!2639649))

(assert (=> b!2197210 m!2639649))

(declare-fun m!2639651 () Bool)

(assert (=> b!2197210 m!2639651))

(assert (=> d!657018 d!657222))

(assert (=> d!657018 d!657036))

(declare-fun b!2197226 () Bool)

(declare-fun e!1404216 () C!12516)

(declare-fun apply!6262 (IArray!16647 Int) C!12516)

(assert (=> b!2197226 (= e!1404216 (apply!6262 (xs!11263 (c!349872 totalInput!923)) from!1114))))

(declare-fun b!2197227 () Bool)

(declare-fun e!1404214 () C!12516)

(declare-fun call!132014 () C!12516)

(assert (=> b!2197227 (= e!1404214 call!132014)))

(declare-fun bm!132009 () Bool)

(declare-fun c!350094 () Bool)

(declare-fun c!350093 () Bool)

(assert (=> bm!132009 (= c!350094 c!350093)))

(declare-fun e!1404213 () Int)

(assert (=> bm!132009 (= call!132014 (apply!6260 (ite c!350093 (left!19636 (c!349872 totalInput!923)) (right!19966 (c!349872 totalInput!923))) e!1404213))))

(declare-fun b!2197228 () Bool)

(assert (=> b!2197228 (= e!1404216 e!1404214)))

(declare-fun lt!821959 () Bool)

(declare-fun appendIndex!252 (List!25658 List!25658 Int) Bool)

(assert (=> b!2197228 (= lt!821959 (appendIndex!252 (list!9836 (left!19636 (c!349872 totalInput!923))) (list!9836 (right!19966 (c!349872 totalInput!923))) from!1114))))

(assert (=> b!2197228 (= c!350093 (< from!1114 (size!19941 (left!19636 (c!349872 totalInput!923)))))))

(declare-fun b!2197229 () Bool)

(assert (=> b!2197229 (= e!1404214 call!132014)))

(declare-fun d!657224 () Bool)

(declare-fun lt!821958 () C!12516)

(assert (=> d!657224 (= lt!821958 (apply!6258 (list!9836 (c!349872 totalInput!923)) from!1114))))

(assert (=> d!657224 (= lt!821958 e!1404216)))

(declare-fun c!350092 () Bool)

(assert (=> d!657224 (= c!350092 ((_ is Leaf!12181) (c!349872 totalInput!923)))))

(declare-fun e!1404215 () Bool)

(assert (=> d!657224 e!1404215))

(declare-fun res!944533 () Bool)

(assert (=> d!657224 (=> (not res!944533) (not e!1404215))))

(assert (=> d!657224 (= res!944533 (<= 0 from!1114))))

(assert (=> d!657224 (= (apply!6260 (c!349872 totalInput!923) from!1114) lt!821958)))

(declare-fun b!2197225 () Bool)

(assert (=> b!2197225 (= e!1404215 (< from!1114 (size!19941 (c!349872 totalInput!923))))))

(declare-fun b!2197230 () Bool)

(assert (=> b!2197230 (= e!1404213 (- from!1114 (size!19941 (left!19636 (c!349872 totalInput!923)))))))

(declare-fun b!2197231 () Bool)

(assert (=> b!2197231 (= e!1404213 from!1114)))

(assert (= (and d!657224 res!944533) b!2197225))

(assert (= (and d!657224 c!350092) b!2197226))

(assert (= (and d!657224 (not c!350092)) b!2197228))

(assert (= (and b!2197228 c!350093) b!2197229))

(assert (= (and b!2197228 (not c!350093)) b!2197227))

(assert (= (or b!2197229 b!2197227) bm!132009))

(assert (= (and bm!132009 c!350094) b!2197231))

(assert (= (and bm!132009 (not c!350094)) b!2197230))

(assert (=> d!657224 m!2639141))

(assert (=> d!657224 m!2639141))

(declare-fun m!2639653 () Bool)

(assert (=> d!657224 m!2639653))

(declare-fun m!2639655 () Bool)

(assert (=> bm!132009 m!2639655))

(declare-fun m!2639657 () Bool)

(assert (=> b!2197230 m!2639657))

(assert (=> b!2197228 m!2639481))

(assert (=> b!2197228 m!2639483))

(assert (=> b!2197228 m!2639481))

(assert (=> b!2197228 m!2639483))

(declare-fun m!2639659 () Bool)

(assert (=> b!2197228 m!2639659))

(assert (=> b!2197228 m!2639657))

(assert (=> b!2197225 m!2639215))

(declare-fun m!2639661 () Bool)

(assert (=> b!2197226 m!2639661))

(assert (=> d!657018 d!657224))

(declare-fun d!657226 () Bool)

(declare-fun lt!821960 () Int)

(assert (=> d!657226 (>= lt!821960 0)))

(declare-fun e!1404217 () Int)

(assert (=> d!657226 (= lt!821960 e!1404217)))

(declare-fun c!350095 () Bool)

(assert (=> d!657226 (= c!350095 ((_ is Nil!25574) lt!821829))))

(assert (=> d!657226 (= (size!19938 lt!821829) lt!821960)))

(declare-fun b!2197232 () Bool)

(assert (=> b!2197232 (= e!1404217 0)))

(declare-fun b!2197233 () Bool)

(assert (=> b!2197233 (= e!1404217 (+ 1 (size!19938 (t!198264 lt!821829))))))

(assert (= (and d!657226 c!350095) b!2197232))

(assert (= (and d!657226 (not c!350095)) b!2197233))

(declare-fun m!2639663 () Bool)

(assert (=> b!2197233 m!2639663))

(assert (=> b!2196805 d!657226))

(declare-fun d!657228 () Bool)

(declare-fun c!350096 () Bool)

(assert (=> d!657228 (= c!350096 (isEmpty!14589 (tail!3159 (take!363 lt!821768 lt!821767))))))

(declare-fun e!1404218 () Bool)

(assert (=> d!657228 (= (matchZipper!271 (derivationStepZipper!257 z!3955 (head!4687 (take!363 lt!821768 lt!821767))) (tail!3159 (take!363 lt!821768 lt!821767))) e!1404218)))

(declare-fun b!2197234 () Bool)

(assert (=> b!2197234 (= e!1404218 (nullableZipper!465 (derivationStepZipper!257 z!3955 (head!4687 (take!363 lt!821768 lt!821767)))))))

(declare-fun b!2197235 () Bool)

(assert (=> b!2197235 (= e!1404218 (matchZipper!271 (derivationStepZipper!257 (derivationStepZipper!257 z!3955 (head!4687 (take!363 lt!821768 lt!821767))) (head!4687 (tail!3159 (take!363 lt!821768 lt!821767)))) (tail!3159 (tail!3159 (take!363 lt!821768 lt!821767)))))))

(assert (= (and d!657228 c!350096) b!2197234))

(assert (= (and d!657228 (not c!350096)) b!2197235))

(assert (=> d!657228 m!2639151))

(declare-fun m!2639665 () Bool)

(assert (=> d!657228 m!2639665))

(assert (=> b!2197234 m!2639149))

(declare-fun m!2639667 () Bool)

(assert (=> b!2197234 m!2639667))

(assert (=> b!2197235 m!2639151))

(declare-fun m!2639669 () Bool)

(assert (=> b!2197235 m!2639669))

(assert (=> b!2197235 m!2639149))

(assert (=> b!2197235 m!2639669))

(declare-fun m!2639671 () Bool)

(assert (=> b!2197235 m!2639671))

(assert (=> b!2197235 m!2639151))

(declare-fun m!2639673 () Bool)

(assert (=> b!2197235 m!2639673))

(assert (=> b!2197235 m!2639671))

(assert (=> b!2197235 m!2639673))

(declare-fun m!2639675 () Bool)

(assert (=> b!2197235 m!2639675))

(assert (=> b!2196777 d!657228))

(declare-fun bs!449092 () Bool)

(declare-fun d!657230 () Bool)

(assert (= bs!449092 (and d!657230 d!657010)))

(declare-fun lambda!82702 () Int)

(assert (=> bs!449092 (= (= (head!4687 (take!363 lt!821768 lt!821767)) lt!821772) (= lambda!82702 lambda!82632))))

(declare-fun bs!449093 () Bool)

(assert (= bs!449093 (and d!657230 d!657124)))

(assert (=> bs!449093 (= (= (head!4687 (take!363 lt!821768 lt!821767)) (apply!6259 totalInput!923 from!1114)) (= lambda!82702 lambda!82683))))

(declare-fun bs!449094 () Bool)

(assert (= bs!449094 (and d!657230 d!657184)))

(assert (=> bs!449094 (= (= (head!4687 (take!363 lt!821768 lt!821767)) (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))) (= lambda!82702 lambda!82692))))

(declare-fun bs!449095 () Bool)

(assert (= bs!449095 (and d!657230 d!657214)))

(assert (=> bs!449095 (= (= (head!4687 (take!363 lt!821768 lt!821767)) (apply!6259 totalInput!923 (+ 1 from!1114))) (= lambda!82702 lambda!82697))))

(assert (=> d!657230 true))

(assert (=> d!657230 (= (derivationStepZipper!257 z!3955 (head!4687 (take!363 lt!821768 lt!821767))) (flatMap!153 z!3955 lambda!82702))))

(declare-fun bs!449096 () Bool)

(assert (= bs!449096 d!657230))

(declare-fun m!2639677 () Bool)

(assert (=> bs!449096 m!2639677))

(assert (=> b!2196777 d!657230))

(declare-fun d!657232 () Bool)

(assert (=> d!657232 (= (head!4687 (take!363 lt!821768 lt!821767)) (h!30975 (take!363 lt!821768 lt!821767)))))

(assert (=> b!2196777 d!657232))

(declare-fun d!657234 () Bool)

(assert (=> d!657234 (= (tail!3159 (take!363 lt!821768 lt!821767)) (t!198264 (take!363 lt!821768 lt!821767)))))

(assert (=> b!2196777 d!657234))

(declare-fun d!657236 () Bool)

(declare-fun c!350097 () Bool)

(assert (=> d!657236 (= c!350097 ((_ is Nil!25574) lt!821828))))

(declare-fun e!1404219 () (InoxSet C!12516))

(assert (=> d!657236 (= (content!3472 lt!821828) e!1404219)))

(declare-fun b!2197236 () Bool)

(assert (=> b!2197236 (= e!1404219 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197237 () Bool)

(assert (=> b!2197237 (= e!1404219 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 lt!821828) true) (content!3472 (t!198264 lt!821828))))))

(assert (= (and d!657236 c!350097) b!2197236))

(assert (= (and d!657236 (not c!350097)) b!2197237))

(declare-fun m!2639679 () Bool)

(assert (=> b!2197237 m!2639679))

(declare-fun m!2639681 () Bool)

(assert (=> b!2197237 m!2639681))

(assert (=> d!657048 d!657236))

(declare-fun d!657238 () Bool)

(declare-fun c!350098 () Bool)

(assert (=> d!657238 (= c!350098 ((_ is Nil!25574) (drop!1373 lt!821775 (+ 1 from!1114))))))

(declare-fun e!1404220 () (InoxSet C!12516))

(assert (=> d!657238 (= (content!3472 (drop!1373 lt!821775 (+ 1 from!1114))) e!1404220)))

(declare-fun b!2197238 () Bool)

(assert (=> b!2197238 (= e!1404220 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197239 () Bool)

(assert (=> b!2197239 (= e!1404220 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 (drop!1373 lt!821775 (+ 1 from!1114))) true) (content!3472 (t!198264 (drop!1373 lt!821775 (+ 1 from!1114))))))))

(assert (= (and d!657238 c!350098) b!2197238))

(assert (= (and d!657238 (not c!350098)) b!2197239))

(declare-fun m!2639683 () Bool)

(assert (=> b!2197239 m!2639683))

(declare-fun m!2639685 () Bool)

(assert (=> b!2197239 m!2639685))

(assert (=> d!657048 d!657238))

(declare-fun d!657240 () Bool)

(declare-fun lt!821961 () Int)

(assert (=> d!657240 (>= lt!821961 0)))

(declare-fun e!1404221 () Int)

(assert (=> d!657240 (= lt!821961 e!1404221)))

(declare-fun c!350099 () Bool)

(assert (=> d!657240 (= c!350099 ((_ is Nil!25574) lt!821820))))

(assert (=> d!657240 (= (size!19938 lt!821820) lt!821961)))

(declare-fun b!2197240 () Bool)

(assert (=> b!2197240 (= e!1404221 0)))

(declare-fun b!2197241 () Bool)

(assert (=> b!2197241 (= e!1404221 (+ 1 (size!19938 (t!198264 lt!821820))))))

(assert (= (and d!657240 c!350099) b!2197240))

(assert (= (and d!657240 (not c!350099)) b!2197241))

(declare-fun m!2639687 () Bool)

(assert (=> b!2197241 m!2639687))

(assert (=> b!2196768 d!657240))

(declare-fun d!657242 () Bool)

(declare-fun lt!821962 () Int)

(assert (=> d!657242 (>= lt!821962 0)))

(declare-fun e!1404222 () Int)

(assert (=> d!657242 (= lt!821962 e!1404222)))

(declare-fun c!350100 () Bool)

(assert (=> d!657242 (= c!350100 ((_ is Nil!25574) lt!821821))))

(assert (=> d!657242 (= (size!19938 lt!821821) lt!821962)))

(declare-fun b!2197242 () Bool)

(assert (=> b!2197242 (= e!1404222 0)))

(declare-fun b!2197243 () Bool)

(assert (=> b!2197243 (= e!1404222 (+ 1 (size!19938 (t!198264 lt!821821))))))

(assert (= (and d!657242 c!350100) b!2197242))

(assert (= (and d!657242 (not c!350100)) b!2197243))

(declare-fun m!2639689 () Bool)

(assert (=> b!2197243 m!2639689))

(assert (=> b!2196779 d!657242))

(declare-fun d!657244 () Bool)

(declare-fun choose!13010 ((InoxSet Context!3510) Int) (InoxSet Context!3510))

(assert (=> d!657244 (= (flatMap!153 z!3955 lambda!82632) (choose!13010 z!3955 lambda!82632))))

(declare-fun bs!449097 () Bool)

(assert (= bs!449097 d!657244))

(declare-fun m!2639691 () Bool)

(assert (=> bs!449097 m!2639691))

(assert (=> d!657010 d!657244))

(declare-fun d!657246 () Bool)

(declare-fun c!350101 () Bool)

(assert (=> d!657246 (= c!350101 ((_ is Nil!25574) lt!821817))))

(declare-fun e!1404223 () (InoxSet C!12516))

(assert (=> d!657246 (= (content!3472 lt!821817) e!1404223)))

(declare-fun b!2197244 () Bool)

(assert (=> b!2197244 (= e!1404223 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197245 () Bool)

(assert (=> b!2197245 (= e!1404223 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 lt!821817) true) (content!3472 (t!198264 lt!821817))))))

(assert (= (and d!657246 c!350101) b!2197244))

(assert (= (and d!657246 (not c!350101)) b!2197245))

(declare-fun m!2639693 () Bool)

(assert (=> b!2197245 m!2639693))

(declare-fun m!2639695 () Bool)

(assert (=> b!2197245 m!2639695))

(assert (=> d!657032 d!657246))

(declare-fun d!657248 () Bool)

(declare-fun c!350102 () Bool)

(assert (=> d!657248 (= c!350102 ((_ is Nil!25574) (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114))))))

(declare-fun e!1404224 () (InoxSet C!12516))

(assert (=> d!657248 (= (content!3472 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114))) e!1404224)))

(declare-fun b!2197246 () Bool)

(assert (=> b!2197246 (= e!1404224 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197247 () Bool)

(assert (=> b!2197247 (= e!1404224 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114))) true) (content!3472 (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114))))))))

(assert (= (and d!657248 c!350102) b!2197246))

(assert (= (and d!657248 (not c!350102)) b!2197247))

(declare-fun m!2639697 () Bool)

(assert (=> b!2197247 m!2639697))

(declare-fun m!2639699 () Bool)

(assert (=> b!2197247 m!2639699))

(assert (=> d!657032 d!657248))

(assert (=> b!2196701 d!657058))

(declare-fun b!2197248 () Bool)

(declare-fun e!1404227 () Int)

(assert (=> b!2197248 (= e!1404227 (size!19938 (t!198264 (drop!1373 lt!821775 (+ 1 from!1114)))))))

(declare-fun b!2197249 () Bool)

(declare-fun e!1404225 () Bool)

(declare-fun lt!821963 () List!25658)

(declare-fun e!1404226 () Int)

(assert (=> b!2197249 (= e!1404225 (= (size!19938 lt!821963) e!1404226))))

(declare-fun c!350104 () Bool)

(assert (=> b!2197249 (= c!350104 (<= (- 0 1) 0))))

(declare-fun b!2197250 () Bool)

(assert (=> b!2197250 (= e!1404226 0)))

(declare-fun b!2197251 () Bool)

(assert (=> b!2197251 (= e!1404226 e!1404227)))

(declare-fun c!350105 () Bool)

(assert (=> b!2197251 (= c!350105 (>= (- 0 1) (size!19938 (t!198264 (drop!1373 lt!821775 (+ 1 from!1114))))))))

(declare-fun b!2197252 () Bool)

(declare-fun e!1404228 () List!25658)

(assert (=> b!2197252 (= e!1404228 (Cons!25574 (h!30975 (t!198264 (drop!1373 lt!821775 (+ 1 from!1114)))) (take!363 (t!198264 (t!198264 (drop!1373 lt!821775 (+ 1 from!1114)))) (- (- 0 1) 1))))))

(declare-fun b!2197253 () Bool)

(assert (=> b!2197253 (= e!1404227 (- 0 1))))

(declare-fun d!657250 () Bool)

(assert (=> d!657250 e!1404225))

(declare-fun res!944534 () Bool)

(assert (=> d!657250 (=> (not res!944534) (not e!1404225))))

(assert (=> d!657250 (= res!944534 (= ((_ map implies) (content!3472 lt!821963) (content!3472 (t!198264 (drop!1373 lt!821775 (+ 1 from!1114))))) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657250 (= lt!821963 e!1404228)))

(declare-fun c!350103 () Bool)

(assert (=> d!657250 (= c!350103 (or ((_ is Nil!25574) (t!198264 (drop!1373 lt!821775 (+ 1 from!1114)))) (<= (- 0 1) 0)))))

(assert (=> d!657250 (= (take!363 (t!198264 (drop!1373 lt!821775 (+ 1 from!1114))) (- 0 1)) lt!821963)))

(declare-fun b!2197254 () Bool)

(assert (=> b!2197254 (= e!1404228 Nil!25574)))

(assert (= (and d!657250 c!350103) b!2197254))

(assert (= (and d!657250 (not c!350103)) b!2197252))

(assert (= (and d!657250 res!944534) b!2197249))

(assert (= (and b!2197249 c!350104) b!2197250))

(assert (= (and b!2197249 (not c!350104)) b!2197251))

(assert (= (and b!2197251 c!350105) b!2197248))

(assert (= (and b!2197251 (not c!350105)) b!2197253))

(assert (=> b!2197248 m!2639581))

(declare-fun m!2639701 () Bool)

(assert (=> b!2197249 m!2639701))

(declare-fun m!2639703 () Bool)

(assert (=> d!657250 m!2639703))

(assert (=> d!657250 m!2639685))

(declare-fun m!2639705 () Bool)

(assert (=> b!2197252 m!2639705))

(assert (=> b!2197251 m!2639581))

(assert (=> b!2196801 d!657250))

(assert (=> b!2196822 d!657144))

(declare-fun d!657252 () Bool)

(assert (=> d!657252 (= (isEmpty!14589 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774)) ((_ is Nil!25574) (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774)))))

(assert (=> d!657030 d!657252))

(declare-fun d!657254 () Bool)

(declare-fun c!350106 () Bool)

(assert (=> d!657254 (= c!350106 ((_ is Nil!25574) lt!821830))))

(declare-fun e!1404229 () (InoxSet C!12516))

(assert (=> d!657254 (= (content!3472 lt!821830) e!1404229)))

(declare-fun b!2197255 () Bool)

(assert (=> b!2197255 (= e!1404229 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197256 () Bool)

(assert (=> b!2197256 (= e!1404229 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 lt!821830) true) (content!3472 (t!198264 lt!821830))))))

(assert (= (and d!657254 c!350106) b!2197255))

(assert (= (and d!657254 (not c!350106)) b!2197256))

(declare-fun m!2639707 () Bool)

(assert (=> b!2197256 m!2639707))

(declare-fun m!2639709 () Bool)

(assert (=> b!2197256 m!2639709))

(assert (=> d!657052 d!657254))

(assert (=> d!657052 d!657116))

(declare-fun b!2197257 () Bool)

(declare-fun e!1404232 () Int)

(assert (=> b!2197257 (= e!1404232 (size!19938 (t!198264 lt!821768)))))

(declare-fun b!2197258 () Bool)

(declare-fun e!1404230 () Bool)

(declare-fun lt!821964 () List!25658)

(declare-fun e!1404231 () Int)

(assert (=> b!2197258 (= e!1404230 (= (size!19938 lt!821964) e!1404231))))

(declare-fun c!350108 () Bool)

(assert (=> b!2197258 (= c!350108 (<= (- 1 1) 0))))

(declare-fun b!2197259 () Bool)

(assert (=> b!2197259 (= e!1404231 0)))

(declare-fun b!2197260 () Bool)

(assert (=> b!2197260 (= e!1404231 e!1404232)))

(declare-fun c!350109 () Bool)

(assert (=> b!2197260 (= c!350109 (>= (- 1 1) (size!19938 (t!198264 lt!821768))))))

(declare-fun b!2197261 () Bool)

(declare-fun e!1404233 () List!25658)

(assert (=> b!2197261 (= e!1404233 (Cons!25574 (h!30975 (t!198264 lt!821768)) (take!363 (t!198264 (t!198264 lt!821768)) (- (- 1 1) 1))))))

(declare-fun b!2197262 () Bool)

(assert (=> b!2197262 (= e!1404232 (- 1 1))))

(declare-fun d!657256 () Bool)

(assert (=> d!657256 e!1404230))

(declare-fun res!944535 () Bool)

(assert (=> d!657256 (=> (not res!944535) (not e!1404230))))

(assert (=> d!657256 (= res!944535 (= ((_ map implies) (content!3472 lt!821964) (content!3472 (t!198264 lt!821768))) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657256 (= lt!821964 e!1404233)))

(declare-fun c!350107 () Bool)

(assert (=> d!657256 (= c!350107 (or ((_ is Nil!25574) (t!198264 lt!821768)) (<= (- 1 1) 0)))))

(assert (=> d!657256 (= (take!363 (t!198264 lt!821768) (- 1 1)) lt!821964)))

(declare-fun b!2197263 () Bool)

(assert (=> b!2197263 (= e!1404233 Nil!25574)))

(assert (= (and d!657256 c!350107) b!2197263))

(assert (= (and d!657256 (not c!350107)) b!2197261))

(assert (= (and d!657256 res!944535) b!2197258))

(assert (= (and b!2197258 c!350108) b!2197259))

(assert (= (and b!2197258 (not c!350108)) b!2197260))

(assert (= (and b!2197260 c!350109) b!2197257))

(assert (= (and b!2197260 (not c!350109)) b!2197262))

(assert (=> b!2197257 m!2639395))

(declare-fun m!2639711 () Bool)

(assert (=> b!2197258 m!2639711))

(declare-fun m!2639713 () Bool)

(assert (=> d!657256 m!2639713))

(assert (=> d!657256 m!2639401))

(declare-fun m!2639715 () Bool)

(assert (=> b!2197261 m!2639715))

(assert (=> b!2197260 m!2639395))

(assert (=> b!2196826 d!657256))

(declare-fun d!657258 () Bool)

(declare-fun res!944542 () Bool)

(declare-fun e!1404236 () Bool)

(assert (=> d!657258 (=> (not res!944542) (not e!1404236))))

(assert (=> d!657258 (= res!944542 (= (csize!16872 (c!349872 totalInput!923)) (+ (size!19941 (left!19636 (c!349872 totalInput!923))) (size!19941 (right!19966 (c!349872 totalInput!923))))))))

(assert (=> d!657258 (= (inv!34279 (c!349872 totalInput!923)) e!1404236)))

(declare-fun b!2197270 () Bool)

(declare-fun res!944543 () Bool)

(assert (=> b!2197270 (=> (not res!944543) (not e!1404236))))

(assert (=> b!2197270 (= res!944543 (and (not (= (left!19636 (c!349872 totalInput!923)) Empty!8321)) (not (= (right!19966 (c!349872 totalInput!923)) Empty!8321))))))

(declare-fun b!2197271 () Bool)

(declare-fun res!944544 () Bool)

(assert (=> b!2197271 (=> (not res!944544) (not e!1404236))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2197271 (= res!944544 (= (cheight!8532 (c!349872 totalInput!923)) (+ (max!0 (height!1250 (left!19636 (c!349872 totalInput!923))) (height!1250 (right!19966 (c!349872 totalInput!923)))) 1)))))

(declare-fun b!2197272 () Bool)

(assert (=> b!2197272 (= e!1404236 (<= 0 (cheight!8532 (c!349872 totalInput!923))))))

(assert (= (and d!657258 res!944542) b!2197270))

(assert (= (and b!2197270 res!944543) b!2197271))

(assert (= (and b!2197271 res!944544) b!2197272))

(assert (=> d!657258 m!2639657))

(declare-fun m!2639717 () Bool)

(assert (=> d!657258 m!2639717))

(assert (=> b!2197271 m!2639447))

(assert (=> b!2197271 m!2639449))

(assert (=> b!2197271 m!2639447))

(assert (=> b!2197271 m!2639449))

(declare-fun m!2639719 () Bool)

(assert (=> b!2197271 m!2639719))

(assert (=> b!2196719 d!657258))

(declare-fun b!2197273 () Bool)

(declare-fun e!1404240 () List!25658)

(assert (=> b!2197273 (= e!1404240 (drop!1373 (t!198264 (t!198264 lt!821775)) (- (- from!1114 1) 1)))))

(declare-fun b!2197274 () Bool)

(declare-fun e!1404239 () Bool)

(declare-fun lt!821965 () List!25658)

(declare-fun e!1404241 () Int)

(assert (=> b!2197274 (= e!1404239 (= (size!19938 lt!821965) e!1404241))))

(declare-fun c!350112 () Bool)

(assert (=> b!2197274 (= c!350112 (<= (- from!1114 1) 0))))

(declare-fun b!2197275 () Bool)

(declare-fun e!1404238 () Int)

(declare-fun call!132015 () Int)

(assert (=> b!2197275 (= e!1404238 (- call!132015 (- from!1114 1)))))

(declare-fun b!2197276 () Bool)

(declare-fun e!1404237 () List!25658)

(assert (=> b!2197276 (= e!1404237 e!1404240)))

(declare-fun c!350110 () Bool)

(assert (=> b!2197276 (= c!350110 (<= (- from!1114 1) 0))))

(declare-fun bm!132010 () Bool)

(assert (=> bm!132010 (= call!132015 (size!19938 (t!198264 lt!821775)))))

(declare-fun b!2197278 () Bool)

(assert (=> b!2197278 (= e!1404241 e!1404238)))

(declare-fun c!350111 () Bool)

(assert (=> b!2197278 (= c!350111 (>= (- from!1114 1) call!132015))))

(declare-fun b!2197279 () Bool)

(assert (=> b!2197279 (= e!1404238 0)))

(declare-fun b!2197280 () Bool)

(assert (=> b!2197280 (= e!1404237 Nil!25574)))

(declare-fun b!2197281 () Bool)

(assert (=> b!2197281 (= e!1404240 (t!198264 lt!821775))))

(declare-fun d!657260 () Bool)

(assert (=> d!657260 e!1404239))

(declare-fun res!944545 () Bool)

(assert (=> d!657260 (=> (not res!944545) (not e!1404239))))

(assert (=> d!657260 (= res!944545 (= ((_ map implies) (content!3472 lt!821965) (content!3472 (t!198264 lt!821775))) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657260 (= lt!821965 e!1404237)))

(declare-fun c!350113 () Bool)

(assert (=> d!657260 (= c!350113 ((_ is Nil!25574) (t!198264 lt!821775)))))

(assert (=> d!657260 (= (drop!1373 (t!198264 lt!821775) (- from!1114 1)) lt!821965)))

(declare-fun b!2197277 () Bool)

(assert (=> b!2197277 (= e!1404241 call!132015)))

(assert (= (and d!657260 c!350113) b!2197280))

(assert (= (and d!657260 (not c!350113)) b!2197276))

(assert (= (and b!2197276 c!350110) b!2197281))

(assert (= (and b!2197276 (not c!350110)) b!2197273))

(assert (= (and d!657260 res!944545) b!2197274))

(assert (= (and b!2197274 c!350112) b!2197277))

(assert (= (and b!2197274 (not c!350112)) b!2197278))

(assert (= (and b!2197278 c!350111) b!2197279))

(assert (= (and b!2197278 (not c!350111)) b!2197275))

(assert (= (or b!2197277 b!2197278 b!2197275) bm!132010))

(declare-fun m!2639721 () Bool)

(assert (=> b!2197273 m!2639721))

(declare-fun m!2639723 () Bool)

(assert (=> b!2197274 m!2639723))

(assert (=> bm!132010 m!2639477))

(declare-fun m!2639725 () Bool)

(assert (=> d!657260 m!2639725))

(assert (=> d!657260 m!2639421))

(assert (=> b!2196813 d!657260))

(declare-fun bs!449098 () Bool)

(declare-fun d!657262 () Bool)

(assert (= bs!449098 (and d!657262 d!657022)))

(declare-fun lambda!82703 () Int)

(assert (=> bs!449098 (not (= lambda!82703 lambda!82635))))

(declare-fun bs!449099 () Bool)

(assert (= bs!449099 (and d!657262 d!657202)))

(assert (=> bs!449099 (not (= lambda!82703 lambda!82696))))

(declare-fun bs!449100 () Bool)

(assert (= bs!449100 (and d!657262 b!2196711)))

(assert (=> bs!449100 (not (= lambda!82703 lambda!82649))))

(declare-fun bs!449101 () Bool)

(assert (= bs!449101 (and d!657262 d!657118)))

(assert (=> bs!449101 (not (= lambda!82703 lambda!82682))))

(declare-fun bs!449102 () Bool)

(assert (= bs!449102 (and d!657262 d!657218)))

(assert (=> bs!449102 (not (= lambda!82703 lambda!82698))))

(declare-fun bs!449103 () Bool)

(assert (= bs!449103 (and d!657262 b!2196712)))

(assert (=> bs!449103 (not (= lambda!82703 lambda!82650))))

(declare-fun bs!449104 () Bool)

(assert (= bs!449104 (and d!657262 d!657024)))

(assert (=> bs!449104 (= lambda!82703 lambda!82648)))

(declare-fun bs!449105 () Bool)

(assert (= bs!449105 (and d!657262 d!657134)))

(assert (=> bs!449105 (not (= lambda!82703 lambda!82691))))

(declare-fun bs!449106 () Bool)

(assert (= bs!449106 (and d!657262 d!657038)))

(assert (=> bs!449106 (not (= lambda!82703 lambda!82654))))

(declare-fun bs!449107 () Bool)

(assert (= bs!449107 (and d!657262 d!657126)))

(assert (=> bs!449107 (not (= lambda!82703 lambda!82684))))

(declare-fun bs!449108 () Bool)

(assert (= bs!449108 (and d!657262 d!657220)))

(assert (=> bs!449108 (not (= lambda!82703 lambda!82701))))

(declare-fun bs!449109 () Bool)

(declare-fun b!2197282 () Bool)

(assert (= bs!449109 (and b!2197282 d!657262)))

(declare-fun lambda!82704 () Int)

(assert (=> bs!449109 (not (= lambda!82704 lambda!82703))))

(declare-fun bs!449110 () Bool)

(assert (= bs!449110 (and b!2197282 d!657022)))

(assert (=> bs!449110 (not (= lambda!82704 lambda!82635))))

(declare-fun bs!449111 () Bool)

(assert (= bs!449111 (and b!2197282 d!657202)))

(assert (=> bs!449111 (not (= lambda!82704 lambda!82696))))

(declare-fun bs!449112 () Bool)

(assert (= bs!449112 (and b!2197282 b!2196711)))

(assert (=> bs!449112 (= lambda!82704 lambda!82649)))

(declare-fun bs!449113 () Bool)

(assert (= bs!449113 (and b!2197282 d!657118)))

(assert (=> bs!449113 (not (= lambda!82704 lambda!82682))))

(declare-fun bs!449114 () Bool)

(assert (= bs!449114 (and b!2197282 d!657218)))

(assert (=> bs!449114 (not (= lambda!82704 lambda!82698))))

(declare-fun bs!449115 () Bool)

(assert (= bs!449115 (and b!2197282 b!2196712)))

(assert (=> bs!449115 (= lambda!82704 lambda!82650)))

(declare-fun bs!449116 () Bool)

(assert (= bs!449116 (and b!2197282 d!657024)))

(assert (=> bs!449116 (not (= lambda!82704 lambda!82648))))

(declare-fun bs!449117 () Bool)

(assert (= bs!449117 (and b!2197282 d!657134)))

(assert (=> bs!449117 (= lambda!82704 lambda!82691)))

(declare-fun bs!449118 () Bool)

(assert (= bs!449118 (and b!2197282 d!657038)))

(assert (=> bs!449118 (not (= lambda!82704 lambda!82654))))

(declare-fun bs!449119 () Bool)

(assert (= bs!449119 (and b!2197282 d!657126)))

(assert (=> bs!449119 (not (= lambda!82704 lambda!82684))))

(declare-fun bs!449120 () Bool)

(assert (= bs!449120 (and b!2197282 d!657220)))

(assert (=> bs!449120 (not (= lambda!82704 lambda!82701))))

(declare-fun bs!449121 () Bool)

(declare-fun b!2197283 () Bool)

(assert (= bs!449121 (and b!2197283 d!657262)))

(declare-fun lambda!82705 () Int)

(assert (=> bs!449121 (not (= lambda!82705 lambda!82703))))

(declare-fun bs!449122 () Bool)

(assert (= bs!449122 (and b!2197283 b!2197282)))

(assert (=> bs!449122 (= lambda!82705 lambda!82704)))

(declare-fun bs!449123 () Bool)

(assert (= bs!449123 (and b!2197283 d!657022)))

(assert (=> bs!449123 (not (= lambda!82705 lambda!82635))))

(declare-fun bs!449124 () Bool)

(assert (= bs!449124 (and b!2197283 d!657202)))

(assert (=> bs!449124 (not (= lambda!82705 lambda!82696))))

(declare-fun bs!449125 () Bool)

(assert (= bs!449125 (and b!2197283 b!2196711)))

(assert (=> bs!449125 (= lambda!82705 lambda!82649)))

(declare-fun bs!449126 () Bool)

(assert (= bs!449126 (and b!2197283 d!657118)))

(assert (=> bs!449126 (not (= lambda!82705 lambda!82682))))

(declare-fun bs!449127 () Bool)

(assert (= bs!449127 (and b!2197283 d!657218)))

(assert (=> bs!449127 (not (= lambda!82705 lambda!82698))))

(declare-fun bs!449128 () Bool)

(assert (= bs!449128 (and b!2197283 b!2196712)))

(assert (=> bs!449128 (= lambda!82705 lambda!82650)))

(declare-fun bs!449129 () Bool)

(assert (= bs!449129 (and b!2197283 d!657024)))

(assert (=> bs!449129 (not (= lambda!82705 lambda!82648))))

(declare-fun bs!449130 () Bool)

(assert (= bs!449130 (and b!2197283 d!657134)))

(assert (=> bs!449130 (= lambda!82705 lambda!82691)))

(declare-fun bs!449131 () Bool)

(assert (= bs!449131 (and b!2197283 d!657038)))

(assert (=> bs!449131 (not (= lambda!82705 lambda!82654))))

(declare-fun bs!449132 () Bool)

(assert (= bs!449132 (and b!2197283 d!657126)))

(assert (=> bs!449132 (not (= lambda!82705 lambda!82684))))

(declare-fun bs!449133 () Bool)

(assert (= bs!449133 (and b!2197283 d!657220)))

(assert (=> bs!449133 (not (= lambda!82705 lambda!82701))))

(declare-fun call!132016 () Bool)

(declare-fun lt!821973 () List!25660)

(declare-fun c!350114 () Bool)

(declare-fun bm!132011 () Bool)

(declare-fun lt!821969 () List!25660)

(assert (=> bm!132011 (= call!132016 (exists!816 (ite c!350114 lt!821973 lt!821969) (ite c!350114 lambda!82704 lambda!82705)))))

(declare-fun e!1404242 () Unit!38685)

(declare-fun Unit!38693 () Unit!38685)

(assert (=> b!2197282 (= e!1404242 Unit!38693)))

(declare-fun call!132017 () List!25660)

(assert (=> b!2197282 (= lt!821973 call!132017)))

(declare-fun lt!821968 () Unit!38685)

(assert (=> b!2197282 (= lt!821968 (lemmaNotForallThenExists!47 lt!821973 lambda!82703))))

(assert (=> b!2197282 call!132016))

(declare-fun lt!821972 () Unit!38685)

(assert (=> b!2197282 (= lt!821972 lt!821968)))

(declare-fun bm!132012 () Bool)

(assert (=> bm!132012 (= call!132017 (toList!1258 lt!821776))))

(declare-fun lt!821967 () Bool)

(assert (=> d!657262 (= lt!821967 (isEmpty!14588 (getLanguageWitness!141 lt!821776)))))

(assert (=> d!657262 (= lt!821967 (forall!5228 lt!821776 lambda!82703))))

(declare-fun lt!821971 () Unit!38685)

(assert (=> d!657262 (= lt!821971 e!1404242)))

(assert (=> d!657262 (= c!350114 (not (forall!5228 lt!821776 lambda!82703)))))

(assert (=> d!657262 (= (lostCauseZipper!301 lt!821776) lt!821967)))

(declare-fun Unit!38694 () Unit!38685)

(assert (=> b!2197283 (= e!1404242 Unit!38694)))

(assert (=> b!2197283 (= lt!821969 call!132017)))

(declare-fun lt!821970 () Unit!38685)

(assert (=> b!2197283 (= lt!821970 (lemmaForallThenNotExists!47 lt!821969 lambda!82703))))

(assert (=> b!2197283 (not call!132016)))

(declare-fun lt!821966 () Unit!38685)

(assert (=> b!2197283 (= lt!821966 lt!821970)))

(assert (= (and d!657262 c!350114) b!2197282))

(assert (= (and d!657262 (not c!350114)) b!2197283))

(assert (= (or b!2197282 b!2197283) bm!132011))

(assert (= (or b!2197282 b!2197283) bm!132012))

(declare-fun m!2639727 () Bool)

(assert (=> d!657262 m!2639727))

(assert (=> d!657262 m!2639727))

(declare-fun m!2639729 () Bool)

(assert (=> d!657262 m!2639729))

(declare-fun m!2639731 () Bool)

(assert (=> d!657262 m!2639731))

(assert (=> d!657262 m!2639731))

(assert (=> bm!132012 m!2639499))

(declare-fun m!2639733 () Bool)

(assert (=> bm!132011 m!2639733))

(declare-fun m!2639735 () Bool)

(assert (=> b!2197283 m!2639735))

(declare-fun m!2639737 () Bool)

(assert (=> b!2197282 m!2639737))

(assert (=> b!2196704 d!657262))

(declare-fun b!2197284 () Bool)

(declare-fun e!1404245 () Int)

(assert (=> b!2197284 (= e!1404245 (size!19938 (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)))))))

(declare-fun b!2197285 () Bool)

(declare-fun e!1404243 () Bool)

(declare-fun lt!821974 () List!25658)

(declare-fun e!1404244 () Int)

(assert (=> b!2197285 (= e!1404243 (= (size!19938 lt!821974) e!1404244))))

(declare-fun c!350116 () Bool)

(assert (=> b!2197285 (= c!350116 (<= (- lt!821774 1) 0))))

(declare-fun b!2197286 () Bool)

(assert (=> b!2197286 (= e!1404244 0)))

(declare-fun b!2197287 () Bool)

(assert (=> b!2197287 (= e!1404244 e!1404245)))

(declare-fun c!350117 () Bool)

(assert (=> b!2197287 (= c!350117 (>= (- lt!821774 1) (size!19938 (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114))))))))

(declare-fun e!1404246 () List!25658)

(declare-fun b!2197288 () Bool)

(assert (=> b!2197288 (= e!1404246 (Cons!25574 (h!30975 (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)))) (take!363 (t!198264 (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)))) (- (- lt!821774 1) 1))))))

(declare-fun b!2197289 () Bool)

(assert (=> b!2197289 (= e!1404245 (- lt!821774 1))))

(declare-fun d!657264 () Bool)

(assert (=> d!657264 e!1404243))

(declare-fun res!944546 () Bool)

(assert (=> d!657264 (=> (not res!944546) (not e!1404243))))

(assert (=> d!657264 (= res!944546 (= ((_ map implies) (content!3472 lt!821974) (content!3472 (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114))))) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657264 (= lt!821974 e!1404246)))

(declare-fun c!350115 () Bool)

(assert (=> d!657264 (= c!350115 (or ((_ is Nil!25574) (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)))) (<= (- lt!821774 1) 0)))))

(assert (=> d!657264 (= (take!363 (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114))) (- lt!821774 1)) lt!821974)))

(declare-fun b!2197290 () Bool)

(assert (=> b!2197290 (= e!1404246 Nil!25574)))

(assert (= (and d!657264 c!350115) b!2197290))

(assert (= (and d!657264 (not c!350115)) b!2197288))

(assert (= (and d!657264 res!944546) b!2197285))

(assert (= (and b!2197285 c!350116) b!2197286))

(assert (= (and b!2197285 (not c!350116)) b!2197287))

(assert (= (and b!2197287 c!350117) b!2197284))

(assert (= (and b!2197287 (not c!350117)) b!2197289))

(assert (=> b!2197284 m!2639541))

(declare-fun m!2639739 () Bool)

(assert (=> b!2197285 m!2639739))

(declare-fun m!2639741 () Bool)

(assert (=> d!657264 m!2639741))

(assert (=> d!657264 m!2639699))

(declare-fun m!2639743 () Bool)

(assert (=> b!2197288 m!2639743))

(assert (=> b!2197287 m!2639541))

(assert (=> b!2196746 d!657264))

(assert (=> b!2196797 d!657192))

(declare-fun d!657266 () Bool)

(assert (=> d!657266 (= (head!4687 lt!821775) (h!30975 lt!821775))))

(assert (=> b!2196795 d!657266))

(assert (=> b!2196726 d!657022))

(declare-fun d!657268 () Bool)

(declare-fun res!944551 () Bool)

(declare-fun e!1404249 () Bool)

(assert (=> d!657268 (=> (not res!944551) (not e!1404249))))

(assert (=> d!657268 (= res!944551 (<= (size!19938 (list!9838 (xs!11263 (c!349872 totalInput!923)))) 512))))

(assert (=> d!657268 (= (inv!34280 (c!349872 totalInput!923)) e!1404249)))

(declare-fun b!2197295 () Bool)

(declare-fun res!944552 () Bool)

(assert (=> b!2197295 (=> (not res!944552) (not e!1404249))))

(assert (=> b!2197295 (= res!944552 (= (csize!16873 (c!349872 totalInput!923)) (size!19938 (list!9838 (xs!11263 (c!349872 totalInput!923))))))))

(declare-fun b!2197296 () Bool)

(assert (=> b!2197296 (= e!1404249 (and (> (csize!16873 (c!349872 totalInput!923)) 0) (<= (csize!16873 (c!349872 totalInput!923)) 512)))))

(assert (= (and d!657268 res!944551) b!2197295))

(assert (= (and b!2197295 res!944552) b!2197296))

(assert (=> d!657268 m!2639487))

(assert (=> d!657268 m!2639487))

(declare-fun m!2639745 () Bool)

(assert (=> d!657268 m!2639745))

(assert (=> b!2197295 m!2639487))

(assert (=> b!2197295 m!2639487))

(assert (=> b!2197295 m!2639745))

(assert (=> b!2196721 d!657268))

(declare-fun d!657270 () Bool)

(declare-fun c!350118 () Bool)

(assert (=> d!657270 (= c!350118 ((_ is Nil!25574) lt!821821))))

(declare-fun e!1404250 () (InoxSet C!12516))

(assert (=> d!657270 (= (content!3472 lt!821821) e!1404250)))

(declare-fun b!2197297 () Bool)

(assert (=> b!2197297 (= e!1404250 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197298 () Bool)

(assert (=> b!2197298 (= e!1404250 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 lt!821821) true) (content!3472 (t!198264 lt!821821))))))

(assert (= (and d!657270 c!350118) b!2197297))

(assert (= (and d!657270 (not c!350118)) b!2197298))

(declare-fun m!2639747 () Bool)

(assert (=> b!2197298 m!2639747))

(declare-fun m!2639749 () Bool)

(assert (=> b!2197298 m!2639749))

(assert (=> d!657042 d!657270))

(assert (=> d!657042 d!657200))

(declare-fun b!2197303 () Bool)

(declare-fun e!1404253 () Bool)

(declare-fun tp_is_empty!9731 () Bool)

(declare-fun tp!684199 () Bool)

(assert (=> b!2197303 (= e!1404253 (and tp_is_empty!9731 tp!684199))))

(assert (=> b!2196875 (= tp!684174 e!1404253)))

(assert (= (and b!2196875 ((_ is Cons!25574) (innerList!8381 (xs!11263 (c!349872 totalInput!923))))) b!2197303))

(declare-fun condSetEmpty!18837 () Bool)

(assert (=> setNonEmpty!18833 (= condSetEmpty!18837 (= setRest!18833 ((as const (Array Context!3510 Bool)) false)))))

(declare-fun setRes!18837 () Bool)

(assert (=> setNonEmpty!18833 (= tp!684165 setRes!18837)))

(declare-fun setIsEmpty!18837 () Bool)

(assert (=> setIsEmpty!18837 setRes!18837))

(declare-fun setNonEmpty!18837 () Bool)

(declare-fun tp!684200 () Bool)

(declare-fun setElem!18837 () Context!3510)

(declare-fun e!1404254 () Bool)

(assert (=> setNonEmpty!18837 (= setRes!18837 (and tp!684200 (inv!34278 setElem!18837) e!1404254))))

(declare-fun setRest!18837 () (InoxSet Context!3510))

(assert (=> setNonEmpty!18837 (= setRest!18833 ((_ map or) (store ((as const (Array Context!3510 Bool)) false) setElem!18837 true) setRest!18837))))

(declare-fun b!2197304 () Bool)

(declare-fun tp!684201 () Bool)

(assert (=> b!2197304 (= e!1404254 tp!684201)))

(assert (= (and setNonEmpty!18833 condSetEmpty!18837) setIsEmpty!18837))

(assert (= (and setNonEmpty!18833 (not condSetEmpty!18837)) setNonEmpty!18837))

(assert (= setNonEmpty!18837 b!2197304))

(declare-fun m!2639751 () Bool)

(assert (=> setNonEmpty!18837 m!2639751))

(declare-fun b!2197305 () Bool)

(declare-fun e!1404255 () Bool)

(declare-fun tp!684202 () Bool)

(declare-fun tp!684203 () Bool)

(assert (=> b!2197305 (= e!1404255 (and tp!684202 tp!684203))))

(assert (=> b!2196850 (= tp!684166 e!1404255)))

(assert (= (and b!2196850 ((_ is Cons!25575) (exprs!2255 setElem!18833))) b!2197305))

(declare-fun b!2197318 () Bool)

(declare-fun e!1404258 () Bool)

(declare-fun tp!684216 () Bool)

(assert (=> b!2197318 (= e!1404258 tp!684216)))

(declare-fun b!2197317 () Bool)

(declare-fun tp!684214 () Bool)

(declare-fun tp!684218 () Bool)

(assert (=> b!2197317 (= e!1404258 (and tp!684214 tp!684218))))

(declare-fun b!2197319 () Bool)

(declare-fun tp!684217 () Bool)

(declare-fun tp!684215 () Bool)

(assert (=> b!2197319 (= e!1404258 (and tp!684217 tp!684215))))

(declare-fun b!2197316 () Bool)

(assert (=> b!2197316 (= e!1404258 tp_is_empty!9731)))

(assert (=> b!2196845 (= tp!684159 e!1404258)))

(assert (= (and b!2196845 ((_ is ElementMatch!6185) (h!30976 (exprs!2255 setElem!18830)))) b!2197316))

(assert (= (and b!2196845 ((_ is Concat!10487) (h!30976 (exprs!2255 setElem!18830)))) b!2197317))

(assert (= (and b!2196845 ((_ is Star!6185) (h!30976 (exprs!2255 setElem!18830)))) b!2197318))

(assert (= (and b!2196845 ((_ is Union!6185) (h!30976 (exprs!2255 setElem!18830)))) b!2197319))

(declare-fun b!2197320 () Bool)

(declare-fun e!1404259 () Bool)

(declare-fun tp!684219 () Bool)

(declare-fun tp!684220 () Bool)

(assert (=> b!2197320 (= e!1404259 (and tp!684219 tp!684220))))

(assert (=> b!2196845 (= tp!684160 e!1404259)))

(assert (= (and b!2196845 ((_ is Cons!25575) (t!198265 (exprs!2255 setElem!18830)))) b!2197320))

(declare-fun tp!684223 () Bool)

(declare-fun b!2197321 () Bool)

(declare-fun e!1404260 () Bool)

(declare-fun tp!684221 () Bool)

(assert (=> b!2197321 (= e!1404260 (and (inv!34276 (left!19636 (left!19636 (c!349872 totalInput!923)))) tp!684223 (inv!34276 (right!19966 (left!19636 (c!349872 totalInput!923)))) tp!684221))))

(declare-fun b!2197323 () Bool)

(declare-fun e!1404261 () Bool)

(declare-fun tp!684222 () Bool)

(assert (=> b!2197323 (= e!1404261 tp!684222)))

(declare-fun b!2197322 () Bool)

(assert (=> b!2197322 (= e!1404260 (and (inv!34283 (xs!11263 (left!19636 (c!349872 totalInput!923)))) e!1404261))))

(assert (=> b!2196873 (= tp!684175 (and (inv!34276 (left!19636 (c!349872 totalInput!923))) e!1404260))))

(assert (= (and b!2196873 ((_ is Node!8321) (left!19636 (c!349872 totalInput!923)))) b!2197321))

(assert (= b!2197322 b!2197323))

(assert (= (and b!2196873 ((_ is Leaf!12181) (left!19636 (c!349872 totalInput!923)))) b!2197322))

(declare-fun m!2639753 () Bool)

(assert (=> b!2197321 m!2639753))

(declare-fun m!2639755 () Bool)

(assert (=> b!2197321 m!2639755))

(declare-fun m!2639757 () Bool)

(assert (=> b!2197322 m!2639757))

(assert (=> b!2196873 m!2639241))

(declare-fun tp!684226 () Bool)

(declare-fun tp!684224 () Bool)

(declare-fun b!2197324 () Bool)

(declare-fun e!1404262 () Bool)

(assert (=> b!2197324 (= e!1404262 (and (inv!34276 (left!19636 (right!19966 (c!349872 totalInput!923)))) tp!684226 (inv!34276 (right!19966 (right!19966 (c!349872 totalInput!923)))) tp!684224))))

(declare-fun b!2197326 () Bool)

(declare-fun e!1404263 () Bool)

(declare-fun tp!684225 () Bool)

(assert (=> b!2197326 (= e!1404263 tp!684225)))

(declare-fun b!2197325 () Bool)

(assert (=> b!2197325 (= e!1404262 (and (inv!34283 (xs!11263 (right!19966 (c!349872 totalInput!923)))) e!1404263))))

(assert (=> b!2196873 (= tp!684173 (and (inv!34276 (right!19966 (c!349872 totalInput!923))) e!1404262))))

(assert (= (and b!2196873 ((_ is Node!8321) (right!19966 (c!349872 totalInput!923)))) b!2197324))

(assert (= b!2197325 b!2197326))

(assert (= (and b!2196873 ((_ is Leaf!12181) (right!19966 (c!349872 totalInput!923)))) b!2197325))

(declare-fun m!2639759 () Bool)

(assert (=> b!2197324 m!2639759))

(declare-fun m!2639761 () Bool)

(assert (=> b!2197324 m!2639761))

(declare-fun m!2639763 () Bool)

(assert (=> b!2197325 m!2639763))

(assert (=> b!2196873 m!2639243))

(declare-fun b_lambda!71159 () Bool)

(assert (= b_lambda!71157 (or d!657026 b_lambda!71159)))

(declare-fun bs!449134 () Bool)

(declare-fun d!657272 () Bool)

(assert (= bs!449134 (and d!657272 d!657026)))

(declare-fun validRegex!2338 (Regex!6185) Bool)

(assert (=> bs!449134 (= (dynLambda!11445 lambda!82653 (h!30976 (exprs!2255 setElem!18830))) (validRegex!2338 (h!30976 (exprs!2255 setElem!18830))))))

(declare-fun m!2639765 () Bool)

(assert (=> bs!449134 m!2639765))

(assert (=> b!2197173 d!657272))

(check-sat (not bm!132005) (not d!657164) (not b!2197234) (not b!2197230) (not d!657124) (not d!657216) (not b!2197031) (not b!2197249) (not d!657250) (not b!2197088) (not b!2197079) (not b!2197235) (not b!2197166) (not d!657118) (not b!2197273) (not b!2197258) (not d!657156) (not b!2197318) (not d!657220) (not b!2197325) (not b!2197225) (not b!2197140) (not b!2197271) (not b!2197125) (not b!2197083) (not b!2197129) (not b!2197033) (not b!2197164) (not b!2197287) (not d!657218) (not bm!132009) (not d!657178) (not d!657146) (not b!2197319) (not b!2197192) (not d!657230) (not b!2197317) (not b!2197056) (not b!2197184) (not b!2197135) (not bm!132010) (not b!2196873) (not b!2197090) (not b!2197285) (not b!2197210) (not b!2197233) (not b!2197163) (not d!657138) (not d!657166) (not b!2197282) (not d!657136) (not b!2197156) (not bm!132004) (not b!2197324) (not b!2197260) (not b!2197204) (not b!2197034) (not b!2197274) (not b_lambda!71159) (not b!2197226) (not b!2197256) (not d!657196) (not b!2197080) (not b!2197187) (not d!657244) (not b!2197112) (not b!2197241) (not b!2197050) (not b!2197063) (not b!2197139) (not d!657268) (not b!2197111) (not b!2197323) (not b!2197182) (not d!657168) (not b!2197174) (not b!2197257) (not b!2197202) (not b!2197201) (not b!2197190) (not d!657202) (not d!657126) (not b!2197298) (not b!2197320) (not d!657260) (not b!2197081) (not b!2197251) (not b!2197037) (not bm!132012) (not b!2197165) (not d!657142) (not b!2197189) (not d!657134) (not b!2197151) (not b!2197082) (not b!2197228) (not b!2197284) (not b!2197123) (not b!2197121) (not b!2197039) (not b!2197247) (not b!2197304) (not b!2197243) (not b!2197196) (not b!2197131) (not b!2197058) (not b!2197199) (not d!657194) (not b!2197030) (not d!657228) (not b!2197295) (not b!2197167) (not b!2197326) (not b!2197161) (not b!2197176) (not b!2197207) (not b!2197303) tp_is_empty!9731 (not d!657110) (not d!657258) (not b!2197198) (not b!2197288) (not b!2197239) (not b!2197078) (not b!2197136) (not b!2197245) (not b!2197209) (not b!2197186) (not d!657206) (not b!2197237) (not b!2197091) (not b!2197322) (not b!2197248) (not b!2197159) (not bs!449134) (not b!2197208) (not b!2197133) (not b!2197188) (not bm!132006) (not b!2197044) (not b!2197321) (not bm!132011) (not d!657130) (not d!657106) (not b!2197252) (not d!657182) (not b!2197149) (not b!2197152) (not d!657120) (not d!657204) (not b!2197127) (not b!2197283) (not b!2197110) (not b!2197168) (not b!2197109) (not b!2197061) (not d!657222) (not b!2197132) (not d!657184) (not b!2197148) (not d!657224) (not d!657172) (not d!657214) (not d!657262) (not b!2197261) (not setNonEmpty!18837) (not d!657162) (not d!657264) (not b!2197193) (not b!2197305) (not d!657256))
(check-sat)
(get-model)

(declare-fun d!657442 () Bool)

(declare-fun lt!822051 () Int)

(assert (=> d!657442 (>= lt!822051 0)))

(declare-fun e!1404430 () Int)

(assert (=> d!657442 (= lt!822051 e!1404430)))

(declare-fun c!350222 () Bool)

(assert (=> d!657442 (= c!350222 ((_ is Nil!25574) (t!198264 (drop!1373 lt!821775 (+ 1 from!1114)))))))

(assert (=> d!657442 (= (size!19938 (t!198264 (drop!1373 lt!821775 (+ 1 from!1114)))) lt!822051)))

(declare-fun b!2197624 () Bool)

(assert (=> b!2197624 (= e!1404430 0)))

(declare-fun b!2197625 () Bool)

(assert (=> b!2197625 (= e!1404430 (+ 1 (size!19938 (t!198264 (t!198264 (drop!1373 lt!821775 (+ 1 from!1114)))))))))

(assert (= (and d!657442 c!350222) b!2197624))

(assert (= (and d!657442 (not c!350222)) b!2197625))

(declare-fun m!2640139 () Bool)

(assert (=> b!2197625 m!2640139))

(assert (=> b!2197251 d!657442))

(declare-fun d!657444 () Bool)

(assert (=> d!657444 (= (height!1250 (left!19636 (c!349872 totalInput!923))) (ite ((_ is Empty!8321) (left!19636 (c!349872 totalInput!923))) 0 (ite ((_ is Leaf!12181) (left!19636 (c!349872 totalInput!923))) 1 (cheight!8532 (left!19636 (c!349872 totalInput!923))))))))

(assert (=> b!2197080 d!657444))

(declare-fun d!657446 () Bool)

(assert (=> d!657446 (= (height!1250 (right!19966 (c!349872 totalInput!923))) (ite ((_ is Empty!8321) (right!19966 (c!349872 totalInput!923))) 0 (ite ((_ is Leaf!12181) (right!19966 (c!349872 totalInput!923))) 1 (cheight!8532 (right!19966 (c!349872 totalInput!923))))))))

(assert (=> b!2197080 d!657446))

(declare-fun d!657448 () Bool)

(declare-fun lt!822052 () Int)

(assert (=> d!657448 (>= lt!822052 0)))

(declare-fun e!1404431 () Int)

(assert (=> d!657448 (= lt!822052 e!1404431)))

(declare-fun c!350223 () Bool)

(assert (=> d!657448 (= c!350223 ((_ is Nil!25574) (t!198264 lt!821775)))))

(assert (=> d!657448 (= (size!19938 (t!198264 lt!821775)) lt!822052)))

(declare-fun b!2197626 () Bool)

(assert (=> b!2197626 (= e!1404431 0)))

(declare-fun b!2197627 () Bool)

(assert (=> b!2197627 (= e!1404431 (+ 1 (size!19938 (t!198264 (t!198264 lt!821775)))))))

(assert (= (and d!657448 c!350223) b!2197626))

(assert (= (and d!657448 (not c!350223)) b!2197627))

(declare-fun m!2640141 () Bool)

(assert (=> b!2197627 m!2640141))

(assert (=> b!2197127 d!657448))

(declare-fun bs!449245 () Bool)

(declare-fun d!657450 () Bool)

(assert (= bs!449245 (and d!657450 d!657262)))

(declare-fun lambda!82732 () Int)

(assert (=> bs!449245 (not (= lambda!82732 lambda!82703))))

(declare-fun bs!449246 () Bool)

(assert (= bs!449246 (and d!657450 b!2197282)))

(assert (=> bs!449246 (not (= lambda!82732 lambda!82704))))

(declare-fun bs!449247 () Bool)

(assert (= bs!449247 (and d!657450 b!2197283)))

(assert (=> bs!449247 (not (= lambda!82732 lambda!82705))))

(declare-fun bs!449248 () Bool)

(assert (= bs!449248 (and d!657450 d!657022)))

(assert (=> bs!449248 (= lambda!82732 lambda!82635)))

(declare-fun bs!449249 () Bool)

(assert (= bs!449249 (and d!657450 d!657202)))

(assert (=> bs!449249 (not (= lambda!82732 lambda!82696))))

(declare-fun bs!449250 () Bool)

(assert (= bs!449250 (and d!657450 b!2196711)))

(assert (=> bs!449250 (not (= lambda!82732 lambda!82649))))

(declare-fun bs!449251 () Bool)

(assert (= bs!449251 (and d!657450 d!657118)))

(assert (=> bs!449251 (not (= lambda!82732 lambda!82682))))

(declare-fun bs!449252 () Bool)

(assert (= bs!449252 (and d!657450 d!657218)))

(assert (=> bs!449252 (= lambda!82732 lambda!82698)))

(declare-fun bs!449253 () Bool)

(assert (= bs!449253 (and d!657450 b!2196712)))

(assert (=> bs!449253 (not (= lambda!82732 lambda!82650))))

(declare-fun bs!449254 () Bool)

(assert (= bs!449254 (and d!657450 d!657024)))

(assert (=> bs!449254 (not (= lambda!82732 lambda!82648))))

(declare-fun bs!449255 () Bool)

(assert (= bs!449255 (and d!657450 d!657134)))

(assert (=> bs!449255 (not (= lambda!82732 lambda!82691))))

(declare-fun bs!449256 () Bool)

(assert (= bs!449256 (and d!657450 d!657038)))

(assert (=> bs!449256 (= lambda!82732 lambda!82654)))

(declare-fun bs!449257 () Bool)

(assert (= bs!449257 (and d!657450 d!657126)))

(assert (=> bs!449257 (= lambda!82732 lambda!82684)))

(declare-fun bs!449258 () Bool)

(assert (= bs!449258 (and d!657450 d!657220)))

(assert (=> bs!449258 (not (= lambda!82732 lambda!82701))))

(assert (=> d!657450 (= (nullableZipper!465 (derivationStepZipper!257 z!3955 (head!4687 (take!363 lt!821768 lt!821767)))) (exists!815 (derivationStepZipper!257 z!3955 (head!4687 (take!363 lt!821768 lt!821767))) lambda!82732))))

(declare-fun bs!449259 () Bool)

(assert (= bs!449259 d!657450))

(assert (=> bs!449259 m!2639149))

(declare-fun m!2640143 () Bool)

(assert (=> bs!449259 m!2640143))

(assert (=> b!2197234 d!657450))

(declare-fun d!657452 () Bool)

(declare-fun lt!822053 () Int)

(assert (=> d!657452 (>= lt!822053 0)))

(declare-fun e!1404432 () Int)

(assert (=> d!657452 (= lt!822053 e!1404432)))

(declare-fun c!350224 () Bool)

(assert (=> d!657452 (= c!350224 ((_ is Nil!25574) (t!198264 lt!821817)))))

(assert (=> d!657452 (= (size!19938 (t!198264 lt!821817)) lt!822053)))

(declare-fun b!2197628 () Bool)

(assert (=> b!2197628 (= e!1404432 0)))

(declare-fun b!2197629 () Bool)

(assert (=> b!2197629 (= e!1404432 (+ 1 (size!19938 (t!198264 (t!198264 lt!821817)))))))

(assert (= (and d!657452 c!350224) b!2197628))

(assert (= (and d!657452 (not c!350224)) b!2197629))

(declare-fun m!2640145 () Bool)

(assert (=> b!2197629 m!2640145))

(assert (=> b!2197050 d!657452))

(declare-fun b!2197630 () Bool)

(declare-fun e!1404436 () List!25658)

(assert (=> b!2197630 (= e!1404436 (drop!1373 (t!198264 (t!198264 (t!198264 lt!821775))) (- (- (- (+ 1 from!1114) 1) 1) 1)))))

(declare-fun b!2197631 () Bool)

(declare-fun e!1404435 () Bool)

(declare-fun lt!822054 () List!25658)

(declare-fun e!1404437 () Int)

(assert (=> b!2197631 (= e!1404435 (= (size!19938 lt!822054) e!1404437))))

(declare-fun c!350227 () Bool)

(assert (=> b!2197631 (= c!350227 (<= (- (- (+ 1 from!1114) 1) 1) 0))))

(declare-fun b!2197632 () Bool)

(declare-fun e!1404434 () Int)

(declare-fun call!132027 () Int)

(assert (=> b!2197632 (= e!1404434 (- call!132027 (- (- (+ 1 from!1114) 1) 1)))))

(declare-fun b!2197633 () Bool)

(declare-fun e!1404433 () List!25658)

(assert (=> b!2197633 (= e!1404433 e!1404436)))

(declare-fun c!350225 () Bool)

(assert (=> b!2197633 (= c!350225 (<= (- (- (+ 1 from!1114) 1) 1) 0))))

(declare-fun bm!132022 () Bool)

(assert (=> bm!132022 (= call!132027 (size!19938 (t!198264 (t!198264 lt!821775))))))

(declare-fun b!2197635 () Bool)

(assert (=> b!2197635 (= e!1404437 e!1404434)))

(declare-fun c!350226 () Bool)

(assert (=> b!2197635 (= c!350226 (>= (- (- (+ 1 from!1114) 1) 1) call!132027))))

(declare-fun b!2197636 () Bool)

(assert (=> b!2197636 (= e!1404434 0)))

(declare-fun b!2197637 () Bool)

(assert (=> b!2197637 (= e!1404433 Nil!25574)))

(declare-fun b!2197638 () Bool)

(assert (=> b!2197638 (= e!1404436 (t!198264 (t!198264 lt!821775)))))

(declare-fun d!657454 () Bool)

(assert (=> d!657454 e!1404435))

(declare-fun res!944626 () Bool)

(assert (=> d!657454 (=> (not res!944626) (not e!1404435))))

(assert (=> d!657454 (= res!944626 (= ((_ map implies) (content!3472 lt!822054) (content!3472 (t!198264 (t!198264 lt!821775)))) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657454 (= lt!822054 e!1404433)))

(declare-fun c!350228 () Bool)

(assert (=> d!657454 (= c!350228 ((_ is Nil!25574) (t!198264 (t!198264 lt!821775))))))

(assert (=> d!657454 (= (drop!1373 (t!198264 (t!198264 lt!821775)) (- (- (+ 1 from!1114) 1) 1)) lt!822054)))

(declare-fun b!2197634 () Bool)

(assert (=> b!2197634 (= e!1404437 call!132027)))

(assert (= (and d!657454 c!350228) b!2197637))

(assert (= (and d!657454 (not c!350228)) b!2197633))

(assert (= (and b!2197633 c!350225) b!2197638))

(assert (= (and b!2197633 (not c!350225)) b!2197630))

(assert (= (and d!657454 res!944626) b!2197631))

(assert (= (and b!2197631 c!350227) b!2197634))

(assert (= (and b!2197631 (not c!350227)) b!2197635))

(assert (= (and b!2197635 c!350226) b!2197636))

(assert (= (and b!2197635 (not c!350226)) b!2197632))

(assert (= (or b!2197634 b!2197635 b!2197632) bm!132022))

(declare-fun m!2640147 () Bool)

(assert (=> b!2197630 m!2640147))

(declare-fun m!2640149 () Bool)

(assert (=> b!2197631 m!2640149))

(assert (=> bm!132022 m!2640141))

(declare-fun m!2640151 () Bool)

(assert (=> d!657454 m!2640151))

(declare-fun m!2640153 () Bool)

(assert (=> d!657454 m!2640153))

(assert (=> b!2197090 d!657454))

(declare-fun d!657456 () Bool)

(declare-fun lt!822055 () Int)

(assert (=> d!657456 (>= lt!822055 0)))

(declare-fun e!1404438 () Int)

(assert (=> d!657456 (= lt!822055 e!1404438)))

(declare-fun c!350229 () Bool)

(assert (=> d!657456 (= c!350229 ((_ is Nil!25574) (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)))))))

(assert (=> d!657456 (= (size!19938 (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)))) lt!822055)))

(declare-fun b!2197639 () Bool)

(assert (=> b!2197639 (= e!1404438 0)))

(declare-fun b!2197640 () Bool)

(assert (=> b!2197640 (= e!1404438 (+ 1 (size!19938 (t!198264 (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)))))))))

(assert (= (and d!657456 c!350229) b!2197639))

(assert (= (and d!657456 (not c!350229)) b!2197640))

(declare-fun m!2640155 () Bool)

(assert (=> b!2197640 m!2640155))

(assert (=> b!2197287 d!657456))

(declare-fun d!657458 () Bool)

(declare-fun lt!822056 () C!12516)

(assert (=> d!657458 (contains!4281 (tail!3159 (tail!3159 lt!821775)) lt!822056)))

(declare-fun e!1404440 () C!12516)

(assert (=> d!657458 (= lt!822056 e!1404440)))

(declare-fun c!350230 () Bool)

(assert (=> d!657458 (= c!350230 (= (- (- from!1114 1) 1) 0))))

(declare-fun e!1404439 () Bool)

(assert (=> d!657458 e!1404439))

(declare-fun res!944627 () Bool)

(assert (=> d!657458 (=> (not res!944627) (not e!1404439))))

(assert (=> d!657458 (= res!944627 (<= 0 (- (- from!1114 1) 1)))))

(assert (=> d!657458 (= (apply!6258 (tail!3159 (tail!3159 lt!821775)) (- (- from!1114 1) 1)) lt!822056)))

(declare-fun b!2197641 () Bool)

(assert (=> b!2197641 (= e!1404439 (< (- (- from!1114 1) 1) (size!19938 (tail!3159 (tail!3159 lt!821775)))))))

(declare-fun b!2197642 () Bool)

(assert (=> b!2197642 (= e!1404440 (head!4687 (tail!3159 (tail!3159 lt!821775))))))

(declare-fun b!2197643 () Bool)

(assert (=> b!2197643 (= e!1404440 (apply!6258 (tail!3159 (tail!3159 (tail!3159 lt!821775))) (- (- (- from!1114 1) 1) 1)))))

(assert (= (and d!657458 res!944627) b!2197641))

(assert (= (and d!657458 c!350230) b!2197642))

(assert (= (and d!657458 (not c!350230)) b!2197643))

(assert (=> d!657458 m!2639559))

(declare-fun m!2640157 () Bool)

(assert (=> d!657458 m!2640157))

(assert (=> b!2197641 m!2639559))

(declare-fun m!2640159 () Bool)

(assert (=> b!2197641 m!2640159))

(assert (=> b!2197642 m!2639559))

(declare-fun m!2640161 () Bool)

(assert (=> b!2197642 m!2640161))

(assert (=> b!2197643 m!2639559))

(declare-fun m!2640163 () Bool)

(assert (=> b!2197643 m!2640163))

(assert (=> b!2197643 m!2640163))

(declare-fun m!2640165 () Bool)

(assert (=> b!2197643 m!2640165))

(assert (=> b!2197166 d!657458))

(declare-fun d!657460 () Bool)

(assert (=> d!657460 (= (tail!3159 (tail!3159 lt!821775)) (t!198264 (tail!3159 lt!821775)))))

(assert (=> b!2197166 d!657460))

(declare-fun d!657462 () Bool)

(declare-fun lt!822057 () Int)

(assert (=> d!657462 (>= lt!822057 0)))

(declare-fun e!1404441 () Int)

(assert (=> d!657462 (= lt!822057 e!1404441)))

(declare-fun c!350231 () Bool)

(assert (=> d!657462 (= c!350231 ((_ is Nil!25574) (t!198264 lt!821830)))))

(assert (=> d!657462 (= (size!19938 (t!198264 lt!821830)) lt!822057)))

(declare-fun b!2197644 () Bool)

(assert (=> b!2197644 (= e!1404441 0)))

(declare-fun b!2197645 () Bool)

(assert (=> b!2197645 (= e!1404441 (+ 1 (size!19938 (t!198264 (t!198264 lt!821830)))))))

(assert (= (and d!657462 c!350231) b!2197644))

(assert (= (and d!657462 (not c!350231)) b!2197645))

(declare-fun m!2640167 () Bool)

(assert (=> b!2197645 m!2640167))

(assert (=> b!2197161 d!657462))

(declare-fun d!657464 () Bool)

(declare-fun res!944628 () Bool)

(declare-fun e!1404442 () Bool)

(assert (=> d!657464 (=> (not res!944628) (not e!1404442))))

(assert (=> d!657464 (= res!944628 (<= (size!19938 (list!9838 (xs!11263 (right!19966 (c!349872 totalInput!923))))) 512))))

(assert (=> d!657464 (= (inv!34280 (right!19966 (c!349872 totalInput!923))) e!1404442)))

(declare-fun b!2197646 () Bool)

(declare-fun res!944629 () Bool)

(assert (=> b!2197646 (=> (not res!944629) (not e!1404442))))

(assert (=> b!2197646 (= res!944629 (= (csize!16873 (right!19966 (c!349872 totalInput!923))) (size!19938 (list!9838 (xs!11263 (right!19966 (c!349872 totalInput!923)))))))))

(declare-fun b!2197647 () Bool)

(assert (=> b!2197647 (= e!1404442 (and (> (csize!16873 (right!19966 (c!349872 totalInput!923))) 0) (<= (csize!16873 (right!19966 (c!349872 totalInput!923))) 512)))))

(assert (= (and d!657464 res!944628) b!2197646))

(assert (= (and b!2197646 res!944629) b!2197647))

(declare-fun m!2640169 () Bool)

(assert (=> d!657464 m!2640169))

(assert (=> d!657464 m!2640169))

(declare-fun m!2640171 () Bool)

(assert (=> d!657464 m!2640171))

(assert (=> b!2197646 m!2640169))

(assert (=> b!2197646 m!2640169))

(assert (=> b!2197646 m!2640171))

(assert (=> b!2197201 d!657464))

(declare-fun d!657466 () Bool)

(declare-fun lt!822058 () Int)

(assert (=> d!657466 (>= lt!822058 0)))

(declare-fun e!1404443 () Int)

(assert (=> d!657466 (= lt!822058 e!1404443)))

(declare-fun c!350232 () Bool)

(assert (=> d!657466 (= c!350232 ((_ is Nil!25574) (t!198264 lt!821821)))))

(assert (=> d!657466 (= (size!19938 (t!198264 lt!821821)) lt!822058)))

(declare-fun b!2197648 () Bool)

(assert (=> b!2197648 (= e!1404443 0)))

(declare-fun b!2197649 () Bool)

(assert (=> b!2197649 (= e!1404443 (+ 1 (size!19938 (t!198264 (t!198264 lt!821821)))))))

(assert (= (and d!657466 c!350232) b!2197648))

(assert (= (and d!657466 (not c!350232)) b!2197649))

(declare-fun m!2640173 () Bool)

(assert (=> b!2197649 m!2640173))

(assert (=> b!2197243 d!657466))

(declare-fun d!657468 () Bool)

(declare-fun c!350233 () Bool)

(assert (=> d!657468 (= c!350233 ((_ is Nil!25574) (t!198264 lt!821830)))))

(declare-fun e!1404444 () (InoxSet C!12516))

(assert (=> d!657468 (= (content!3472 (t!198264 lt!821830)) e!1404444)))

(declare-fun b!2197650 () Bool)

(assert (=> b!2197650 (= e!1404444 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197651 () Bool)

(assert (=> b!2197651 (= e!1404444 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 (t!198264 lt!821830)) true) (content!3472 (t!198264 (t!198264 lt!821830)))))))

(assert (= (and d!657468 c!350233) b!2197650))

(assert (= (and d!657468 (not c!350233)) b!2197651))

(declare-fun m!2640175 () Bool)

(assert (=> b!2197651 m!2640175))

(declare-fun m!2640177 () Bool)

(assert (=> b!2197651 m!2640177))

(assert (=> b!2197256 d!657468))

(declare-fun c!350234 () Bool)

(declare-fun d!657470 () Bool)

(assert (=> d!657470 (= c!350234 (isEmpty!14589 (tail!3159 (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774)))))))

(declare-fun e!1404445 () Bool)

(assert (=> d!657470 (= (matchZipper!271 (derivationStepZipper!257 (derivationStepZipper!257 lt!821776 (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))) (head!4687 (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774)))) (tail!3159 (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774)))) e!1404445)))

(declare-fun b!2197652 () Bool)

(assert (=> b!2197652 (= e!1404445 (nullableZipper!465 (derivationStepZipper!257 (derivationStepZipper!257 lt!821776 (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))) (head!4687 (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))))))))

(declare-fun b!2197653 () Bool)

(assert (=> b!2197653 (= e!1404445 (matchZipper!271 (derivationStepZipper!257 (derivationStepZipper!257 (derivationStepZipper!257 lt!821776 (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))) (head!4687 (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774)))) (head!4687 (tail!3159 (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))))) (tail!3159 (tail!3159 (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))))))))

(assert (= (and d!657470 c!350234) b!2197652))

(assert (= (and d!657470 (not c!350234)) b!2197653))

(assert (=> d!657470 m!2639571))

(declare-fun m!2640179 () Bool)

(assert (=> d!657470 m!2640179))

(assert (=> b!2197652 m!2639569))

(declare-fun m!2640181 () Bool)

(assert (=> b!2197652 m!2640181))

(assert (=> b!2197653 m!2639571))

(declare-fun m!2640183 () Bool)

(assert (=> b!2197653 m!2640183))

(assert (=> b!2197653 m!2639569))

(assert (=> b!2197653 m!2640183))

(declare-fun m!2640185 () Bool)

(assert (=> b!2197653 m!2640185))

(assert (=> b!2197653 m!2639571))

(declare-fun m!2640187 () Bool)

(assert (=> b!2197653 m!2640187))

(assert (=> b!2197653 m!2640185))

(assert (=> b!2197653 m!2640187))

(declare-fun m!2640189 () Bool)

(assert (=> b!2197653 m!2640189))

(assert (=> b!2197168 d!657470))

(declare-fun bs!449260 () Bool)

(declare-fun d!657472 () Bool)

(assert (= bs!449260 (and d!657472 d!657124)))

(declare-fun lambda!82733 () Int)

(assert (=> bs!449260 (= (= (head!4687 (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))) (apply!6259 totalInput!923 from!1114)) (= lambda!82733 lambda!82683))))

(declare-fun bs!449261 () Bool)

(assert (= bs!449261 (and d!657472 d!657230)))

(assert (=> bs!449261 (= (= (head!4687 (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))) (head!4687 (take!363 lt!821768 lt!821767))) (= lambda!82733 lambda!82702))))

(declare-fun bs!449262 () Bool)

(assert (= bs!449262 (and d!657472 d!657010)))

(assert (=> bs!449262 (= (= (head!4687 (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))) lt!821772) (= lambda!82733 lambda!82632))))

(declare-fun bs!449263 () Bool)

(assert (= bs!449263 (and d!657472 d!657184)))

(assert (=> bs!449263 (= (= (head!4687 (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))) (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))) (= lambda!82733 lambda!82692))))

(declare-fun bs!449264 () Bool)

(assert (= bs!449264 (and d!657472 d!657214)))

(assert (=> bs!449264 (= (= (head!4687 (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))) (apply!6259 totalInput!923 (+ 1 from!1114))) (= lambda!82733 lambda!82697))))

(assert (=> d!657472 true))

(assert (=> d!657472 (= (derivationStepZipper!257 (derivationStepZipper!257 lt!821776 (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))) (head!4687 (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774)))) (flatMap!153 (derivationStepZipper!257 lt!821776 (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))) lambda!82733))))

(declare-fun bs!449265 () Bool)

(assert (= bs!449265 d!657472))

(assert (=> bs!449265 m!2639115))

(declare-fun m!2640191 () Bool)

(assert (=> bs!449265 m!2640191))

(assert (=> b!2197168 d!657472))

(declare-fun d!657474 () Bool)

(assert (=> d!657474 (= (head!4687 (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))) (h!30975 (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))))))

(assert (=> b!2197168 d!657474))

(declare-fun d!657476 () Bool)

(assert (=> d!657476 (= (tail!3159 (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))) (t!198264 (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))))))

(assert (=> b!2197168 d!657476))

(declare-fun d!657478 () Bool)

(declare-fun c!350235 () Bool)

(assert (=> d!657478 (= c!350235 ((_ is Nil!25574) (t!198264 lt!821775)))))

(declare-fun e!1404446 () (InoxSet C!12516))

(assert (=> d!657478 (= (content!3472 (t!198264 lt!821775)) e!1404446)))

(declare-fun b!2197654 () Bool)

(assert (=> b!2197654 (= e!1404446 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197655 () Bool)

(assert (=> b!2197655 (= e!1404446 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 (t!198264 lt!821775)) true) (content!3472 (t!198264 (t!198264 lt!821775)))))))

(assert (= (and d!657478 c!350235) b!2197654))

(assert (= (and d!657478 (not c!350235)) b!2197655))

(declare-fun m!2640193 () Bool)

(assert (=> b!2197655 m!2640193))

(assert (=> b!2197655 m!2640153))

(assert (=> b!2197058 d!657478))

(declare-fun d!657480 () Bool)

(declare-fun c!350238 () Bool)

(assert (=> d!657480 (= c!350238 ((_ is Nil!25576) lt!821938))))

(declare-fun e!1404449 () (InoxSet Context!3510))

(assert (=> d!657480 (= (content!3474 lt!821938) e!1404449)))

(declare-fun b!2197660 () Bool)

(assert (=> b!2197660 (= e!1404449 ((as const (Array Context!3510 Bool)) false))))

(declare-fun b!2197661 () Bool)

(assert (=> b!2197661 (= e!1404449 ((_ map or) (store ((as const (Array Context!3510 Bool)) false) (h!30977 lt!821938) true) (content!3474 (t!198266 lt!821938))))))

(assert (= (and d!657480 c!350238) b!2197660))

(assert (= (and d!657480 (not c!350238)) b!2197661))

(declare-fun m!2640195 () Bool)

(assert (=> b!2197661 m!2640195))

(declare-fun m!2640197 () Bool)

(assert (=> b!2197661 m!2640197))

(assert (=> b!2197159 d!657480))

(declare-fun d!657482 () Bool)

(declare-fun res!944630 () Bool)

(declare-fun e!1404450 () Bool)

(assert (=> d!657482 (=> (not res!944630) (not e!1404450))))

(assert (=> d!657482 (= res!944630 (<= (size!19938 (list!9838 (xs!11263 (left!19636 (c!349872 totalInput!923))))) 512))))

(assert (=> d!657482 (= (inv!34280 (left!19636 (c!349872 totalInput!923))) e!1404450)))

(declare-fun b!2197662 () Bool)

(declare-fun res!944631 () Bool)

(assert (=> b!2197662 (=> (not res!944631) (not e!1404450))))

(assert (=> b!2197662 (= res!944631 (= (csize!16873 (left!19636 (c!349872 totalInput!923))) (size!19938 (list!9838 (xs!11263 (left!19636 (c!349872 totalInput!923)))))))))

(declare-fun b!2197663 () Bool)

(assert (=> b!2197663 (= e!1404450 (and (> (csize!16873 (left!19636 (c!349872 totalInput!923))) 0) (<= (csize!16873 (left!19636 (c!349872 totalInput!923))) 512)))))

(assert (= (and d!657482 res!944630) b!2197662))

(assert (= (and b!2197662 res!944631) b!2197663))

(declare-fun m!2640199 () Bool)

(assert (=> d!657482 m!2640199))

(assert (=> d!657482 m!2640199))

(declare-fun m!2640201 () Bool)

(assert (=> d!657482 m!2640201))

(assert (=> b!2197662 m!2640199))

(assert (=> b!2197662 m!2640199))

(assert (=> b!2197662 m!2640201))

(assert (=> b!2197198 d!657482))

(assert (=> b!2197189 d!657170))

(declare-fun d!657484 () Bool)

(declare-fun c!350239 () Bool)

(assert (=> d!657484 (= c!350239 ((_ is Nil!25574) lt!821974))))

(declare-fun e!1404451 () (InoxSet C!12516))

(assert (=> d!657484 (= (content!3472 lt!821974) e!1404451)))

(declare-fun b!2197664 () Bool)

(assert (=> b!2197664 (= e!1404451 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197665 () Bool)

(assert (=> b!2197665 (= e!1404451 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 lt!821974) true) (content!3472 (t!198264 lt!821974))))))

(assert (= (and d!657484 c!350239) b!2197664))

(assert (= (and d!657484 (not c!350239)) b!2197665))

(declare-fun m!2640203 () Bool)

(assert (=> b!2197665 m!2640203))

(declare-fun m!2640205 () Bool)

(assert (=> b!2197665 m!2640205))

(assert (=> d!657264 d!657484))

(declare-fun d!657486 () Bool)

(declare-fun c!350240 () Bool)

(assert (=> d!657486 (= c!350240 ((_ is Nil!25574) (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)))))))

(declare-fun e!1404452 () (InoxSet C!12516))

(assert (=> d!657486 (= (content!3472 (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)))) e!1404452)))

(declare-fun b!2197666 () Bool)

(assert (=> b!2197666 (= e!1404452 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197667 () Bool)

(assert (=> b!2197667 (= e!1404452 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)))) true) (content!3472 (t!198264 (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)))))))))

(assert (= (and d!657486 c!350240) b!2197666))

(assert (= (and d!657486 (not c!350240)) b!2197667))

(declare-fun m!2640207 () Bool)

(assert (=> b!2197667 m!2640207))

(declare-fun m!2640209 () Bool)

(assert (=> b!2197667 m!2640209))

(assert (=> d!657264 d!657486))

(declare-fun d!657488 () Bool)

(declare-fun lt!822059 () Bool)

(assert (=> d!657488 (= lt!822059 (exists!816 (toList!1258 lt!821789) lambda!82698))))

(assert (=> d!657488 (= lt!822059 (choose!13005 lt!821789 lambda!82698))))

(assert (=> d!657488 (= (exists!815 lt!821789 lambda!82698) lt!822059)))

(declare-fun bs!449266 () Bool)

(assert (= bs!449266 d!657488))

(declare-fun m!2640211 () Bool)

(assert (=> bs!449266 m!2640211))

(assert (=> bs!449266 m!2640211))

(declare-fun m!2640213 () Bool)

(assert (=> bs!449266 m!2640213))

(declare-fun m!2640215 () Bool)

(assert (=> bs!449266 m!2640215))

(assert (=> d!657218 d!657488))

(declare-fun d!657490 () Bool)

(declare-fun lt!822060 () Int)

(assert (=> d!657490 (>= lt!822060 0)))

(declare-fun e!1404453 () Int)

(assert (=> d!657490 (= lt!822060 e!1404453)))

(declare-fun c!350241 () Bool)

(assert (=> d!657490 (= c!350241 ((_ is Nil!25574) (t!198264 lt!821831)))))

(assert (=> d!657490 (= (size!19938 (t!198264 lt!821831)) lt!822060)))

(declare-fun b!2197668 () Bool)

(assert (=> b!2197668 (= e!1404453 0)))

(declare-fun b!2197669 () Bool)

(assert (=> b!2197669 (= e!1404453 (+ 1 (size!19938 (t!198264 (t!198264 lt!821831)))))))

(assert (= (and d!657490 c!350241) b!2197668))

(assert (= (and d!657490 (not c!350241)) b!2197669))

(declare-fun m!2640217 () Bool)

(assert (=> b!2197669 m!2640217))

(assert (=> b!2197131 d!657490))

(declare-fun b!2197679 () Bool)

(declare-fun e!1404459 () List!25658)

(assert (=> b!2197679 (= e!1404459 (Cons!25574 (h!30975 (list!9836 (left!19636 (c!349872 totalInput!923)))) (++!6423 (t!198264 (list!9836 (left!19636 (c!349872 totalInput!923)))) (list!9836 (right!19966 (c!349872 totalInput!923))))))))

(declare-fun b!2197678 () Bool)

(assert (=> b!2197678 (= e!1404459 (list!9836 (right!19966 (c!349872 totalInput!923))))))

(declare-fun b!2197681 () Bool)

(declare-fun e!1404458 () Bool)

(declare-fun lt!822063 () List!25658)

(assert (=> b!2197681 (= e!1404458 (or (not (= (list!9836 (right!19966 (c!349872 totalInput!923))) Nil!25574)) (= lt!822063 (list!9836 (left!19636 (c!349872 totalInput!923))))))))

(declare-fun d!657492 () Bool)

(assert (=> d!657492 e!1404458))

(declare-fun res!944637 () Bool)

(assert (=> d!657492 (=> (not res!944637) (not e!1404458))))

(assert (=> d!657492 (= res!944637 (= (content!3472 lt!822063) ((_ map or) (content!3472 (list!9836 (left!19636 (c!349872 totalInput!923)))) (content!3472 (list!9836 (right!19966 (c!349872 totalInput!923)))))))))

(assert (=> d!657492 (= lt!822063 e!1404459)))

(declare-fun c!350244 () Bool)

(assert (=> d!657492 (= c!350244 ((_ is Nil!25574) (list!9836 (left!19636 (c!349872 totalInput!923)))))))

(assert (=> d!657492 (= (++!6423 (list!9836 (left!19636 (c!349872 totalInput!923))) (list!9836 (right!19966 (c!349872 totalInput!923)))) lt!822063)))

(declare-fun b!2197680 () Bool)

(declare-fun res!944636 () Bool)

(assert (=> b!2197680 (=> (not res!944636) (not e!1404458))))

(assert (=> b!2197680 (= res!944636 (= (size!19938 lt!822063) (+ (size!19938 (list!9836 (left!19636 (c!349872 totalInput!923)))) (size!19938 (list!9836 (right!19966 (c!349872 totalInput!923)))))))))

(assert (= (and d!657492 c!350244) b!2197678))

(assert (= (and d!657492 (not c!350244)) b!2197679))

(assert (= (and d!657492 res!944637) b!2197680))

(assert (= (and b!2197680 res!944636) b!2197681))

(assert (=> b!2197679 m!2639483))

(declare-fun m!2640219 () Bool)

(assert (=> b!2197679 m!2640219))

(declare-fun m!2640221 () Bool)

(assert (=> d!657492 m!2640221))

(assert (=> d!657492 m!2639481))

(declare-fun m!2640223 () Bool)

(assert (=> d!657492 m!2640223))

(assert (=> d!657492 m!2639483))

(declare-fun m!2640225 () Bool)

(assert (=> d!657492 m!2640225))

(declare-fun m!2640227 () Bool)

(assert (=> b!2197680 m!2640227))

(assert (=> b!2197680 m!2639481))

(declare-fun m!2640229 () Bool)

(assert (=> b!2197680 m!2640229))

(assert (=> b!2197680 m!2639483))

(declare-fun m!2640231 () Bool)

(assert (=> b!2197680 m!2640231))

(assert (=> b!2197110 d!657492))

(declare-fun b!2197683 () Bool)

(declare-fun e!1404460 () List!25658)

(declare-fun e!1404461 () List!25658)

(assert (=> b!2197683 (= e!1404460 e!1404461)))

(declare-fun c!350246 () Bool)

(assert (=> b!2197683 (= c!350246 ((_ is Leaf!12181) (left!19636 (c!349872 totalInput!923))))))

(declare-fun b!2197685 () Bool)

(assert (=> b!2197685 (= e!1404461 (++!6423 (list!9836 (left!19636 (left!19636 (c!349872 totalInput!923)))) (list!9836 (right!19966 (left!19636 (c!349872 totalInput!923))))))))

(declare-fun b!2197682 () Bool)

(assert (=> b!2197682 (= e!1404460 Nil!25574)))

(declare-fun d!657494 () Bool)

(declare-fun c!350245 () Bool)

(assert (=> d!657494 (= c!350245 ((_ is Empty!8321) (left!19636 (c!349872 totalInput!923))))))

(assert (=> d!657494 (= (list!9836 (left!19636 (c!349872 totalInput!923))) e!1404460)))

(declare-fun b!2197684 () Bool)

(assert (=> b!2197684 (= e!1404461 (list!9838 (xs!11263 (left!19636 (c!349872 totalInput!923)))))))

(assert (= (and d!657494 c!350245) b!2197682))

(assert (= (and d!657494 (not c!350245)) b!2197683))

(assert (= (and b!2197683 c!350246) b!2197684))

(assert (= (and b!2197683 (not c!350246)) b!2197685))

(declare-fun m!2640233 () Bool)

(assert (=> b!2197685 m!2640233))

(declare-fun m!2640235 () Bool)

(assert (=> b!2197685 m!2640235))

(assert (=> b!2197685 m!2640233))

(assert (=> b!2197685 m!2640235))

(declare-fun m!2640237 () Bool)

(assert (=> b!2197685 m!2640237))

(assert (=> b!2197684 m!2640199))

(assert (=> b!2197110 d!657494))

(declare-fun b!2197687 () Bool)

(declare-fun e!1404462 () List!25658)

(declare-fun e!1404463 () List!25658)

(assert (=> b!2197687 (= e!1404462 e!1404463)))

(declare-fun c!350248 () Bool)

(assert (=> b!2197687 (= c!350248 ((_ is Leaf!12181) (right!19966 (c!349872 totalInput!923))))))

(declare-fun b!2197689 () Bool)

(assert (=> b!2197689 (= e!1404463 (++!6423 (list!9836 (left!19636 (right!19966 (c!349872 totalInput!923)))) (list!9836 (right!19966 (right!19966 (c!349872 totalInput!923))))))))

(declare-fun b!2197686 () Bool)

(assert (=> b!2197686 (= e!1404462 Nil!25574)))

(declare-fun d!657496 () Bool)

(declare-fun c!350247 () Bool)

(assert (=> d!657496 (= c!350247 ((_ is Empty!8321) (right!19966 (c!349872 totalInput!923))))))

(assert (=> d!657496 (= (list!9836 (right!19966 (c!349872 totalInput!923))) e!1404462)))

(declare-fun b!2197688 () Bool)

(assert (=> b!2197688 (= e!1404463 (list!9838 (xs!11263 (right!19966 (c!349872 totalInput!923)))))))

(assert (= (and d!657496 c!350247) b!2197686))

(assert (= (and d!657496 (not c!350247)) b!2197687))

(assert (= (and b!2197687 c!350248) b!2197688))

(assert (= (and b!2197687 (not c!350248)) b!2197689))

(declare-fun m!2640239 () Bool)

(assert (=> b!2197689 m!2640239))

(declare-fun m!2640241 () Bool)

(assert (=> b!2197689 m!2640241))

(assert (=> b!2197689 m!2640239))

(assert (=> b!2197689 m!2640241))

(declare-fun m!2640243 () Bool)

(assert (=> b!2197689 m!2640243))

(assert (=> b!2197688 m!2640169))

(assert (=> b!2197110 d!657496))

(declare-fun d!657498 () Bool)

(assert (=> d!657498 true))

(declare-fun setRes!18841 () Bool)

(assert (=> d!657498 setRes!18841))

(declare-fun condSetEmpty!18841 () Bool)

(declare-fun res!944640 () (InoxSet Context!3510))

(assert (=> d!657498 (= condSetEmpty!18841 (= res!944640 ((as const (Array Context!3510 Bool)) false)))))

(assert (=> d!657498 (= (choose!13010 z!3955 lambda!82632) res!944640)))

(declare-fun setIsEmpty!18841 () Bool)

(assert (=> setIsEmpty!18841 setRes!18841))

(declare-fun tp!684261 () Bool)

(declare-fun e!1404466 () Bool)

(declare-fun setElem!18841 () Context!3510)

(declare-fun setNonEmpty!18841 () Bool)

(assert (=> setNonEmpty!18841 (= setRes!18841 (and tp!684261 (inv!34278 setElem!18841) e!1404466))))

(declare-fun setRest!18841 () (InoxSet Context!3510))

(assert (=> setNonEmpty!18841 (= res!944640 ((_ map or) (store ((as const (Array Context!3510 Bool)) false) setElem!18841 true) setRest!18841))))

(declare-fun b!2197692 () Bool)

(declare-fun tp!684262 () Bool)

(assert (=> b!2197692 (= e!1404466 tp!684262)))

(assert (= (and d!657498 condSetEmpty!18841) setIsEmpty!18841))

(assert (= (and d!657498 (not condSetEmpty!18841)) setNonEmpty!18841))

(assert (= setNonEmpty!18841 b!2197692))

(declare-fun m!2640245 () Bool)

(assert (=> setNonEmpty!18841 m!2640245))

(assert (=> d!657244 d!657498))

(declare-fun b!2197693 () Bool)

(declare-fun e!1404470 () List!25658)

(assert (=> b!2197693 (= e!1404470 (drop!1373 (t!198264 (t!198264 lt!821775)) (- (- (+ from!1114 1) 1) 1)))))

(declare-fun b!2197694 () Bool)

(declare-fun e!1404469 () Bool)

(declare-fun lt!822064 () List!25658)

(declare-fun e!1404471 () Int)

(assert (=> b!2197694 (= e!1404469 (= (size!19938 lt!822064) e!1404471))))

(declare-fun c!350251 () Bool)

(assert (=> b!2197694 (= c!350251 (<= (- (+ from!1114 1) 1) 0))))

(declare-fun b!2197695 () Bool)

(declare-fun e!1404468 () Int)

(declare-fun call!132028 () Int)

(assert (=> b!2197695 (= e!1404468 (- call!132028 (- (+ from!1114 1) 1)))))

(declare-fun b!2197696 () Bool)

(declare-fun e!1404467 () List!25658)

(assert (=> b!2197696 (= e!1404467 e!1404470)))

(declare-fun c!350249 () Bool)

(assert (=> b!2197696 (= c!350249 (<= (- (+ from!1114 1) 1) 0))))

(declare-fun bm!132023 () Bool)

(assert (=> bm!132023 (= call!132028 (size!19938 (t!198264 lt!821775)))))

(declare-fun b!2197698 () Bool)

(assert (=> b!2197698 (= e!1404471 e!1404468)))

(declare-fun c!350250 () Bool)

(assert (=> b!2197698 (= c!350250 (>= (- (+ from!1114 1) 1) call!132028))))

(declare-fun b!2197699 () Bool)

(assert (=> b!2197699 (= e!1404468 0)))

(declare-fun b!2197700 () Bool)

(assert (=> b!2197700 (= e!1404467 Nil!25574)))

(declare-fun b!2197701 () Bool)

(assert (=> b!2197701 (= e!1404470 (t!198264 lt!821775))))

(declare-fun d!657500 () Bool)

(assert (=> d!657500 e!1404469))

(declare-fun res!944641 () Bool)

(assert (=> d!657500 (=> (not res!944641) (not e!1404469))))

(assert (=> d!657500 (= res!944641 (= ((_ map implies) (content!3472 lt!822064) (content!3472 (t!198264 lt!821775))) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657500 (= lt!822064 e!1404467)))

(declare-fun c!350252 () Bool)

(assert (=> d!657500 (= c!350252 ((_ is Nil!25574) (t!198264 lt!821775)))))

(assert (=> d!657500 (= (drop!1373 (t!198264 lt!821775) (- (+ from!1114 1) 1)) lt!822064)))

(declare-fun b!2197697 () Bool)

(assert (=> b!2197697 (= e!1404471 call!132028)))

(assert (= (and d!657500 c!350252) b!2197700))

(assert (= (and d!657500 (not c!350252)) b!2197696))

(assert (= (and b!2197696 c!350249) b!2197701))

(assert (= (and b!2197696 (not c!350249)) b!2197693))

(assert (= (and d!657500 res!944641) b!2197694))

(assert (= (and b!2197694 c!350251) b!2197697))

(assert (= (and b!2197694 (not c!350251)) b!2197698))

(assert (= (and b!2197698 c!350250) b!2197699))

(assert (= (and b!2197698 (not c!350250)) b!2197695))

(assert (= (or b!2197697 b!2197698 b!2197695) bm!132023))

(declare-fun m!2640247 () Bool)

(assert (=> b!2197693 m!2640247))

(declare-fun m!2640249 () Bool)

(assert (=> b!2197694 m!2640249))

(assert (=> bm!132023 m!2639477))

(declare-fun m!2640251 () Bool)

(assert (=> d!657500 m!2640251))

(assert (=> d!657500 m!2639421))

(assert (=> b!2197139 d!657500))

(declare-fun d!657502 () Bool)

(declare-fun lt!822067 () C!12516)

(assert (=> d!657502 (= lt!822067 (apply!6258 (list!9838 (xs!11263 (c!349872 totalInput!923))) from!1114))))

(declare-fun choose!13016 (IArray!16647 Int) C!12516)

(assert (=> d!657502 (= lt!822067 (choose!13016 (xs!11263 (c!349872 totalInput!923)) from!1114))))

(declare-fun e!1404474 () Bool)

(assert (=> d!657502 e!1404474))

(declare-fun res!944644 () Bool)

(assert (=> d!657502 (=> (not res!944644) (not e!1404474))))

(assert (=> d!657502 (= res!944644 (<= 0 from!1114))))

(assert (=> d!657502 (= (apply!6262 (xs!11263 (c!349872 totalInput!923)) from!1114) lt!822067)))

(declare-fun b!2197704 () Bool)

(declare-fun size!19942 (IArray!16647) Int)

(assert (=> b!2197704 (= e!1404474 (< from!1114 (size!19942 (xs!11263 (c!349872 totalInput!923)))))))

(assert (= (and d!657502 res!944644) b!2197704))

(assert (=> d!657502 m!2639487))

(assert (=> d!657502 m!2639487))

(declare-fun m!2640253 () Bool)

(assert (=> d!657502 m!2640253))

(declare-fun m!2640255 () Bool)

(assert (=> d!657502 m!2640255))

(declare-fun m!2640257 () Bool)

(assert (=> b!2197704 m!2640257))

(assert (=> b!2197226 d!657502))

(declare-fun d!657504 () Bool)

(declare-fun lt!822068 () Bool)

(assert (=> d!657504 (= lt!822068 (select (content!3472 (t!198264 lt!821775)) lt!821827))))

(declare-fun e!1404476 () Bool)

(assert (=> d!657504 (= lt!822068 e!1404476)))

(declare-fun res!944646 () Bool)

(assert (=> d!657504 (=> (not res!944646) (not e!1404476))))

(assert (=> d!657504 (= res!944646 ((_ is Cons!25574) (t!198264 lt!821775)))))

(assert (=> d!657504 (= (contains!4281 (t!198264 lt!821775) lt!821827) lt!822068)))

(declare-fun b!2197705 () Bool)

(declare-fun e!1404475 () Bool)

(assert (=> b!2197705 (= e!1404476 e!1404475)))

(declare-fun res!944645 () Bool)

(assert (=> b!2197705 (=> res!944645 e!1404475)))

(assert (=> b!2197705 (= res!944645 (= (h!30975 (t!198264 lt!821775)) lt!821827))))

(declare-fun b!2197706 () Bool)

(assert (=> b!2197706 (= e!1404475 (contains!4281 (t!198264 (t!198264 lt!821775)) lt!821827))))

(assert (= (and d!657504 res!944646) b!2197705))

(assert (= (and b!2197705 (not res!944645)) b!2197706))

(assert (=> d!657504 m!2639421))

(declare-fun m!2640259 () Bool)

(assert (=> d!657504 m!2640259))

(declare-fun m!2640261 () Bool)

(assert (=> b!2197706 m!2640261))

(assert (=> b!2197182 d!657504))

(declare-fun b!2197707 () Bool)

(declare-fun e!1404479 () Int)

(assert (=> b!2197707 (= e!1404479 (size!19938 (t!198264 (drop!1373 lt!821775 (+ from!1114 1)))))))

(declare-fun b!2197708 () Bool)

(declare-fun e!1404477 () Bool)

(declare-fun lt!822069 () List!25658)

(declare-fun e!1404478 () Int)

(assert (=> b!2197708 (= e!1404477 (= (size!19938 lt!822069) e!1404478))))

(declare-fun c!350254 () Bool)

(assert (=> b!2197708 (= c!350254 (<= (- 0 1) 0))))

(declare-fun b!2197709 () Bool)

(assert (=> b!2197709 (= e!1404478 0)))

(declare-fun b!2197710 () Bool)

(assert (=> b!2197710 (= e!1404478 e!1404479)))

(declare-fun c!350255 () Bool)

(assert (=> b!2197710 (= c!350255 (>= (- 0 1) (size!19938 (t!198264 (drop!1373 lt!821775 (+ from!1114 1))))))))

(declare-fun b!2197711 () Bool)

(declare-fun e!1404480 () List!25658)

(assert (=> b!2197711 (= e!1404480 (Cons!25574 (h!30975 (t!198264 (drop!1373 lt!821775 (+ from!1114 1)))) (take!363 (t!198264 (t!198264 (drop!1373 lt!821775 (+ from!1114 1)))) (- (- 0 1) 1))))))

(declare-fun b!2197712 () Bool)

(assert (=> b!2197712 (= e!1404479 (- 0 1))))

(declare-fun d!657506 () Bool)

(assert (=> d!657506 e!1404477))

(declare-fun res!944647 () Bool)

(assert (=> d!657506 (=> (not res!944647) (not e!1404477))))

(assert (=> d!657506 (= res!944647 (= ((_ map implies) (content!3472 lt!822069) (content!3472 (t!198264 (drop!1373 lt!821775 (+ from!1114 1))))) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657506 (= lt!822069 e!1404480)))

(declare-fun c!350253 () Bool)

(assert (=> d!657506 (= c!350253 (or ((_ is Nil!25574) (t!198264 (drop!1373 lt!821775 (+ from!1114 1)))) (<= (- 0 1) 0)))))

(assert (=> d!657506 (= (take!363 (t!198264 (drop!1373 lt!821775 (+ from!1114 1))) (- 0 1)) lt!822069)))

(declare-fun b!2197713 () Bool)

(assert (=> b!2197713 (= e!1404480 Nil!25574)))

(assert (= (and d!657506 c!350253) b!2197713))

(assert (= (and d!657506 (not c!350253)) b!2197711))

(assert (= (and d!657506 res!944647) b!2197708))

(assert (= (and b!2197708 c!350254) b!2197709))

(assert (= (and b!2197708 (not c!350254)) b!2197710))

(assert (= (and b!2197710 c!350255) b!2197707))

(assert (= (and b!2197710 (not c!350255)) b!2197712))

(declare-fun m!2640263 () Bool)

(assert (=> b!2197707 m!2640263))

(declare-fun m!2640265 () Bool)

(assert (=> b!2197708 m!2640265))

(declare-fun m!2640267 () Bool)

(assert (=> d!657506 m!2640267))

(declare-fun m!2640269 () Bool)

(assert (=> d!657506 m!2640269))

(declare-fun m!2640271 () Bool)

(assert (=> b!2197711 m!2640271))

(assert (=> b!2197710 m!2640263))

(assert (=> b!2197152 d!657506))

(declare-fun d!657508 () Bool)

(declare-fun lt!822070 () Int)

(assert (=> d!657508 (>= lt!822070 0)))

(declare-fun e!1404481 () Int)

(assert (=> d!657508 (= lt!822070 e!1404481)))

(declare-fun c!350256 () Bool)

(assert (=> d!657508 (= c!350256 ((_ is Nil!25574) (t!198264 lt!821820)))))

(assert (=> d!657508 (= (size!19938 (t!198264 lt!821820)) lt!822070)))

(declare-fun b!2197714 () Bool)

(assert (=> b!2197714 (= e!1404481 0)))

(declare-fun b!2197715 () Bool)

(assert (=> b!2197715 (= e!1404481 (+ 1 (size!19938 (t!198264 (t!198264 lt!821820)))))))

(assert (= (and d!657508 c!350256) b!2197714))

(assert (= (and d!657508 (not c!350256)) b!2197715))

(declare-fun m!2640273 () Bool)

(assert (=> b!2197715 m!2640273))

(assert (=> b!2197241 d!657508))

(declare-fun b!2197716 () Bool)

(declare-fun e!1404484 () Int)

(assert (=> b!2197716 (= e!1404484 (size!19938 (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)))))))

(declare-fun b!2197717 () Bool)

(declare-fun e!1404482 () Bool)

(declare-fun lt!822071 () List!25658)

(declare-fun e!1404483 () Int)

(assert (=> b!2197717 (= e!1404482 (= (size!19938 lt!822071) e!1404483))))

(declare-fun c!350258 () Bool)

(assert (=> b!2197717 (= c!350258 (<= (- lt!821839 1) 0))))

(declare-fun b!2197718 () Bool)

(assert (=> b!2197718 (= e!1404483 0)))

(declare-fun b!2197719 () Bool)

(assert (=> b!2197719 (= e!1404483 e!1404484)))

(declare-fun c!350259 () Bool)

(assert (=> b!2197719 (= c!350259 (>= (- lt!821839 1) (size!19938 (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114))))))))

(declare-fun b!2197720 () Bool)

(declare-fun e!1404485 () List!25658)

(assert (=> b!2197720 (= e!1404485 (Cons!25574 (h!30975 (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)))) (take!363 (t!198264 (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)))) (- (- lt!821839 1) 1))))))

(declare-fun b!2197721 () Bool)

(assert (=> b!2197721 (= e!1404484 (- lt!821839 1))))

(declare-fun d!657510 () Bool)

(assert (=> d!657510 e!1404482))

(declare-fun res!944648 () Bool)

(assert (=> d!657510 (=> (not res!944648) (not e!1404482))))

(assert (=> d!657510 (= res!944648 (= ((_ map implies) (content!3472 lt!822071) (content!3472 (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114))))) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657510 (= lt!822071 e!1404485)))

(declare-fun c!350257 () Bool)

(assert (=> d!657510 (= c!350257 (or ((_ is Nil!25574) (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)))) (<= (- lt!821839 1) 0)))))

(assert (=> d!657510 (= (take!363 (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114))) (- lt!821839 1)) lt!822071)))

(declare-fun b!2197722 () Bool)

(assert (=> b!2197722 (= e!1404485 Nil!25574)))

(assert (= (and d!657510 c!350257) b!2197722))

(assert (= (and d!657510 (not c!350257)) b!2197720))

(assert (= (and d!657510 res!944648) b!2197717))

(assert (= (and b!2197717 c!350258) b!2197718))

(assert (= (and b!2197717 (not c!350258)) b!2197719))

(assert (= (and b!2197719 c!350259) b!2197716))

(assert (= (and b!2197719 (not c!350259)) b!2197721))

(assert (=> b!2197716 m!2639541))

(declare-fun m!2640275 () Bool)

(assert (=> b!2197717 m!2640275))

(declare-fun m!2640277 () Bool)

(assert (=> d!657510 m!2640277))

(assert (=> d!657510 m!2639699))

(declare-fun m!2640279 () Bool)

(assert (=> b!2197720 m!2640279))

(assert (=> b!2197719 m!2639541))

(assert (=> b!2197193 d!657510))

(declare-fun d!657512 () Bool)

(declare-fun c!350260 () Bool)

(assert (=> d!657512 (= c!350260 ((_ is Nil!25574) (t!198264 lt!821828)))))

(declare-fun e!1404486 () (InoxSet C!12516))

(assert (=> d!657512 (= (content!3472 (t!198264 lt!821828)) e!1404486)))

(declare-fun b!2197723 () Bool)

(assert (=> b!2197723 (= e!1404486 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197724 () Bool)

(assert (=> b!2197724 (= e!1404486 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 (t!198264 lt!821828)) true) (content!3472 (t!198264 (t!198264 lt!821828)))))))

(assert (= (and d!657512 c!350260) b!2197723))

(assert (= (and d!657512 (not c!350260)) b!2197724))

(declare-fun m!2640281 () Bool)

(assert (=> b!2197724 m!2640281))

(declare-fun m!2640283 () Bool)

(assert (=> b!2197724 m!2640283))

(assert (=> b!2197237 d!657512))

(declare-fun d!657514 () Bool)

(declare-fun c!350261 () Bool)

(assert (=> d!657514 (= c!350261 ((_ is Nil!25574) lt!821963))))

(declare-fun e!1404487 () (InoxSet C!12516))

(assert (=> d!657514 (= (content!3472 lt!821963) e!1404487)))

(declare-fun b!2197725 () Bool)

(assert (=> b!2197725 (= e!1404487 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197726 () Bool)

(assert (=> b!2197726 (= e!1404487 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 lt!821963) true) (content!3472 (t!198264 lt!821963))))))

(assert (= (and d!657514 c!350261) b!2197725))

(assert (= (and d!657514 (not c!350261)) b!2197726))

(declare-fun m!2640285 () Bool)

(assert (=> b!2197726 m!2640285))

(declare-fun m!2640287 () Bool)

(assert (=> b!2197726 m!2640287))

(assert (=> d!657250 d!657514))

(declare-fun d!657516 () Bool)

(declare-fun c!350262 () Bool)

(assert (=> d!657516 (= c!350262 ((_ is Nil!25574) (t!198264 (drop!1373 lt!821775 (+ 1 from!1114)))))))

(declare-fun e!1404488 () (InoxSet C!12516))

(assert (=> d!657516 (= (content!3472 (t!198264 (drop!1373 lt!821775 (+ 1 from!1114)))) e!1404488)))

(declare-fun b!2197727 () Bool)

(assert (=> b!2197727 (= e!1404488 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197728 () Bool)

(assert (=> b!2197728 (= e!1404488 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 (t!198264 (drop!1373 lt!821775 (+ 1 from!1114)))) true) (content!3472 (t!198264 (t!198264 (drop!1373 lt!821775 (+ 1 from!1114)))))))))

(assert (= (and d!657516 c!350262) b!2197727))

(assert (= (and d!657516 (not c!350262)) b!2197728))

(declare-fun m!2640289 () Bool)

(assert (=> b!2197728 m!2640289))

(declare-fun m!2640291 () Bool)

(assert (=> b!2197728 m!2640291))

(assert (=> d!657250 d!657516))

(assert (=> d!657196 d!657116))

(assert (=> b!2197208 d!657154))

(declare-fun d!657518 () Bool)

(declare-fun lt!822073 () Int)

(assert (=> d!657518 (and (>= lt!822073 (- 1)) (< lt!822073 (size!19937 totalInput!923)) (>= lt!822073 e!1404102) (or (= lt!822073 e!1404102) (>= lt!822073 (+ 1 from!1114 1))))))

(declare-fun e!1404490 () Int)

(assert (=> d!657518 (= lt!822073 e!1404490)))

(declare-fun c!350263 () Bool)

(declare-fun e!1404491 () Bool)

(assert (=> d!657518 (= c!350263 e!1404491)))

(declare-fun res!944649 () Bool)

(assert (=> d!657518 (=> res!944649 e!1404491)))

(assert (=> d!657518 (= res!944649 (= (+ 1 from!1114 1) (size!19937 totalInput!923)))))

(assert (=> d!657518 (and (>= (+ 1 from!1114 1) 0) (<= (+ 1 from!1114 1) (size!19937 totalInput!923)))))

(assert (=> d!657518 (= (furthestNullablePosition!353 lt!821900 (+ 1 from!1114 1) totalInput!923 (size!19937 totalInput!923) e!1404102) lt!822073)))

(declare-fun b!2197729 () Bool)

(declare-fun e!1404489 () Int)

(declare-fun lt!822072 () (InoxSet Context!3510))

(assert (=> b!2197729 (= e!1404490 (furthestNullablePosition!353 lt!822072 (+ 1 from!1114 1 1) totalInput!923 (size!19937 totalInput!923) e!1404489))))

(assert (=> b!2197729 (= lt!822072 (derivationStepZipper!257 lt!821900 (apply!6259 totalInput!923 (+ 1 from!1114 1))))))

(declare-fun c!350264 () Bool)

(assert (=> b!2197729 (= c!350264 (nullableZipper!465 lt!822072))))

(declare-fun b!2197730 () Bool)

(assert (=> b!2197730 (= e!1404490 e!1404102)))

(declare-fun b!2197731 () Bool)

(assert (=> b!2197731 (= e!1404491 (lostCauseZipper!301 lt!821900))))

(declare-fun b!2197732 () Bool)

(assert (=> b!2197732 (= e!1404489 (+ 1 from!1114 1))))

(declare-fun b!2197733 () Bool)

(assert (=> b!2197733 (= e!1404489 e!1404102)))

(assert (= (and d!657518 (not res!944649)) b!2197731))

(assert (= (and d!657518 c!350263) b!2197730))

(assert (= (and d!657518 (not c!350263)) b!2197729))

(assert (= (and b!2197729 c!350264) b!2197732))

(assert (= (and b!2197729 (not c!350264)) b!2197733))

(assert (=> b!2197729 m!2639059))

(declare-fun m!2640293 () Bool)

(assert (=> b!2197729 m!2640293))

(assert (=> b!2197729 m!2639627))

(assert (=> b!2197729 m!2639627))

(declare-fun m!2640295 () Bool)

(assert (=> b!2197729 m!2640295))

(declare-fun m!2640297 () Bool)

(assert (=> b!2197729 m!2640297))

(declare-fun m!2640299 () Bool)

(assert (=> b!2197731 m!2640299))

(assert (=> b!2197037 d!657518))

(assert (=> b!2197037 d!657214))

(assert (=> b!2197037 d!657216))

(declare-fun bs!449267 () Bool)

(declare-fun d!657520 () Bool)

(assert (= bs!449267 (and d!657520 d!657262)))

(declare-fun lambda!82734 () Int)

(assert (=> bs!449267 (not (= lambda!82734 lambda!82703))))

(declare-fun bs!449268 () Bool)

(assert (= bs!449268 (and d!657520 d!657450)))

(assert (=> bs!449268 (= lambda!82734 lambda!82732)))

(declare-fun bs!449269 () Bool)

(assert (= bs!449269 (and d!657520 b!2197282)))

(assert (=> bs!449269 (not (= lambda!82734 lambda!82704))))

(declare-fun bs!449270 () Bool)

(assert (= bs!449270 (and d!657520 b!2197283)))

(assert (=> bs!449270 (not (= lambda!82734 lambda!82705))))

(declare-fun bs!449271 () Bool)

(assert (= bs!449271 (and d!657520 d!657022)))

(assert (=> bs!449271 (= lambda!82734 lambda!82635)))

(declare-fun bs!449272 () Bool)

(assert (= bs!449272 (and d!657520 d!657202)))

(assert (=> bs!449272 (not (= lambda!82734 lambda!82696))))

(declare-fun bs!449273 () Bool)

(assert (= bs!449273 (and d!657520 b!2196711)))

(assert (=> bs!449273 (not (= lambda!82734 lambda!82649))))

(declare-fun bs!449274 () Bool)

(assert (= bs!449274 (and d!657520 d!657118)))

(assert (=> bs!449274 (not (= lambda!82734 lambda!82682))))

(declare-fun bs!449275 () Bool)

(assert (= bs!449275 (and d!657520 d!657218)))

(assert (=> bs!449275 (= lambda!82734 lambda!82698)))

(declare-fun bs!449276 () Bool)

(assert (= bs!449276 (and d!657520 b!2196712)))

(assert (=> bs!449276 (not (= lambda!82734 lambda!82650))))

(declare-fun bs!449277 () Bool)

(assert (= bs!449277 (and d!657520 d!657024)))

(assert (=> bs!449277 (not (= lambda!82734 lambda!82648))))

(declare-fun bs!449278 () Bool)

(assert (= bs!449278 (and d!657520 d!657134)))

(assert (=> bs!449278 (not (= lambda!82734 lambda!82691))))

(declare-fun bs!449279 () Bool)

(assert (= bs!449279 (and d!657520 d!657038)))

(assert (=> bs!449279 (= lambda!82734 lambda!82654)))

(declare-fun bs!449280 () Bool)

(assert (= bs!449280 (and d!657520 d!657126)))

(assert (=> bs!449280 (= lambda!82734 lambda!82684)))

(declare-fun bs!449281 () Bool)

(assert (= bs!449281 (and d!657520 d!657220)))

(assert (=> bs!449281 (not (= lambda!82734 lambda!82701))))

(assert (=> d!657520 (= (nullableZipper!465 lt!821900) (exists!815 lt!821900 lambda!82734))))

(declare-fun bs!449282 () Bool)

(assert (= bs!449282 d!657520))

(declare-fun m!2640301 () Bool)

(assert (=> bs!449282 m!2640301))

(assert (=> b!2197037 d!657520))

(declare-fun d!657522 () Bool)

(declare-fun lt!822074 () Int)

(assert (=> d!657522 (>= lt!822074 0)))

(declare-fun e!1404492 () Int)

(assert (=> d!657522 (= lt!822074 e!1404492)))

(declare-fun c!350265 () Bool)

(assert (=> d!657522 (= c!350265 ((_ is Nil!25574) (drop!1373 lt!821775 (+ from!1114 1))))))

(assert (=> d!657522 (= (size!19938 (drop!1373 lt!821775 (+ from!1114 1))) lt!822074)))

(declare-fun b!2197734 () Bool)

(assert (=> b!2197734 (= e!1404492 0)))

(declare-fun b!2197735 () Bool)

(assert (=> b!2197735 (= e!1404492 (+ 1 (size!19938 (t!198264 (drop!1373 lt!821775 (+ from!1114 1))))))))

(assert (= (and d!657522 c!350265) b!2197734))

(assert (= (and d!657522 (not c!350265)) b!2197735))

(assert (=> b!2197735 m!2640263))

(assert (=> b!2197148 d!657522))

(declare-fun d!657524 () Bool)

(declare-fun c!350266 () Bool)

(assert (=> d!657524 (= c!350266 ((_ is Nil!25574) lt!821922))))

(declare-fun e!1404493 () (InoxSet C!12516))

(assert (=> d!657524 (= (content!3472 lt!821922) e!1404493)))

(declare-fun b!2197736 () Bool)

(assert (=> b!2197736 (= e!1404493 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197737 () Bool)

(assert (=> b!2197737 (= e!1404493 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 lt!821922) true) (content!3472 (t!198264 lt!821922))))))

(assert (= (and d!657524 c!350266) b!2197736))

(assert (= (and d!657524 (not c!350266)) b!2197737))

(declare-fun m!2640303 () Bool)

(assert (=> b!2197737 m!2640303))

(declare-fun m!2640305 () Bool)

(assert (=> b!2197737 m!2640305))

(assert (=> d!657138 d!657524))

(assert (=> d!657138 d!657478))

(assert (=> d!657166 d!657168))

(assert (=> d!657166 d!657046))

(assert (=> d!657166 d!657162))

(assert (=> d!657166 d!657052))

(assert (=> d!657166 d!657164))

(declare-fun b!2197738 () Bool)

(declare-fun e!1404496 () Int)

(assert (=> b!2197738 (= e!1404496 (size!19938 (t!198264 (t!198264 lt!821768))))))

(declare-fun b!2197739 () Bool)

(declare-fun e!1404494 () Bool)

(declare-fun lt!822075 () List!25658)

(declare-fun e!1404495 () Int)

(assert (=> b!2197739 (= e!1404494 (= (size!19938 lt!822075) e!1404495))))

(declare-fun c!350268 () Bool)

(assert (=> b!2197739 (= c!350268 (<= (- (- 1 1) 1) 0))))

(declare-fun b!2197740 () Bool)

(assert (=> b!2197740 (= e!1404495 0)))

(declare-fun b!2197741 () Bool)

(assert (=> b!2197741 (= e!1404495 e!1404496)))

(declare-fun c!350269 () Bool)

(assert (=> b!2197741 (= c!350269 (>= (- (- 1 1) 1) (size!19938 (t!198264 (t!198264 lt!821768)))))))

(declare-fun b!2197742 () Bool)

(declare-fun e!1404497 () List!25658)

(assert (=> b!2197742 (= e!1404497 (Cons!25574 (h!30975 (t!198264 (t!198264 lt!821768))) (take!363 (t!198264 (t!198264 (t!198264 lt!821768))) (- (- (- 1 1) 1) 1))))))

(declare-fun b!2197743 () Bool)

(assert (=> b!2197743 (= e!1404496 (- (- 1 1) 1))))

(declare-fun d!657526 () Bool)

(assert (=> d!657526 e!1404494))

(declare-fun res!944650 () Bool)

(assert (=> d!657526 (=> (not res!944650) (not e!1404494))))

(assert (=> d!657526 (= res!944650 (= ((_ map implies) (content!3472 lt!822075) (content!3472 (t!198264 (t!198264 lt!821768)))) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657526 (= lt!822075 e!1404497)))

(declare-fun c!350267 () Bool)

(assert (=> d!657526 (= c!350267 (or ((_ is Nil!25574) (t!198264 (t!198264 lt!821768))) (<= (- (- 1 1) 1) 0)))))

(assert (=> d!657526 (= (take!363 (t!198264 (t!198264 lt!821768)) (- (- 1 1) 1)) lt!822075)))

(declare-fun b!2197744 () Bool)

(assert (=> b!2197744 (= e!1404497 Nil!25574)))

(assert (= (and d!657526 c!350267) b!2197744))

(assert (= (and d!657526 (not c!350267)) b!2197742))

(assert (= (and d!657526 res!944650) b!2197739))

(assert (= (and b!2197739 c!350268) b!2197740))

(assert (= (and b!2197739 (not c!350268)) b!2197741))

(assert (= (and b!2197741 c!350269) b!2197738))

(assert (= (and b!2197741 (not c!350269)) b!2197743))

(declare-fun m!2640307 () Bool)

(assert (=> b!2197738 m!2640307))

(declare-fun m!2640309 () Bool)

(assert (=> b!2197739 m!2640309))

(declare-fun m!2640311 () Bool)

(assert (=> d!657526 m!2640311))

(declare-fun m!2640313 () Bool)

(assert (=> d!657526 m!2640313))

(declare-fun m!2640315 () Bool)

(assert (=> b!2197742 m!2640315))

(assert (=> b!2197741 m!2640307))

(assert (=> b!2197261 d!657526))

(declare-fun bs!449283 () Bool)

(declare-fun d!657528 () Bool)

(assert (= bs!449283 (and d!657528 d!657262)))

(declare-fun lambda!82735 () Int)

(assert (=> bs!449283 (not (= lambda!82735 lambda!82703))))

(declare-fun bs!449284 () Bool)

(assert (= bs!449284 (and d!657528 d!657450)))

(assert (=> bs!449284 (not (= lambda!82735 lambda!82732))))

(declare-fun bs!449285 () Bool)

(assert (= bs!449285 (and d!657528 b!2197282)))

(assert (=> bs!449285 (not (= lambda!82735 lambda!82704))))

(declare-fun bs!449286 () Bool)

(assert (= bs!449286 (and d!657528 b!2197283)))

(assert (=> bs!449286 (not (= lambda!82735 lambda!82705))))

(declare-fun bs!449287 () Bool)

(assert (= bs!449287 (and d!657528 d!657520)))

(assert (=> bs!449287 (not (= lambda!82735 lambda!82734))))

(declare-fun bs!449288 () Bool)

(assert (= bs!449288 (and d!657528 d!657022)))

(assert (=> bs!449288 (not (= lambda!82735 lambda!82635))))

(declare-fun bs!449289 () Bool)

(assert (= bs!449289 (and d!657528 d!657202)))

(assert (=> bs!449289 (= (= lambda!82703 lambda!82648) (= lambda!82735 lambda!82696))))

(declare-fun bs!449290 () Bool)

(assert (= bs!449290 (and d!657528 b!2196711)))

(assert (=> bs!449290 (not (= lambda!82735 lambda!82649))))

(declare-fun bs!449291 () Bool)

(assert (= bs!449291 (and d!657528 d!657118)))

(assert (=> bs!449291 (= (= lambda!82703 lambda!82648) (= lambda!82735 lambda!82682))))

(declare-fun bs!449292 () Bool)

(assert (= bs!449292 (and d!657528 d!657218)))

(assert (=> bs!449292 (not (= lambda!82735 lambda!82698))))

(declare-fun bs!449293 () Bool)

(assert (= bs!449293 (and d!657528 b!2196712)))

(assert (=> bs!449293 (not (= lambda!82735 lambda!82650))))

(declare-fun bs!449294 () Bool)

(assert (= bs!449294 (and d!657528 d!657024)))

(assert (=> bs!449294 (not (= lambda!82735 lambda!82648))))

(declare-fun bs!449295 () Bool)

(assert (= bs!449295 (and d!657528 d!657134)))

(assert (=> bs!449295 (not (= lambda!82735 lambda!82691))))

(declare-fun bs!449296 () Bool)

(assert (= bs!449296 (and d!657528 d!657038)))

(assert (=> bs!449296 (not (= lambda!82735 lambda!82654))))

(declare-fun bs!449297 () Bool)

(assert (= bs!449297 (and d!657528 d!657126)))

(assert (=> bs!449297 (not (= lambda!82735 lambda!82684))))

(declare-fun bs!449298 () Bool)

(assert (= bs!449298 (and d!657528 d!657220)))

(assert (=> bs!449298 (= (= lambda!82703 (ite c!349896 lambda!82649 lambda!82650)) (= lambda!82735 lambda!82701))))

(assert (=> d!657528 true))

(assert (=> d!657528 (< (dynLambda!11444 order!14811 lambda!82703) (dynLambda!11444 order!14811 lambda!82735))))

(assert (=> d!657528 (not (exists!816 lt!821969 lambda!82735))))

(declare-fun lt!822076 () Unit!38685)

(assert (=> d!657528 (= lt!822076 (choose!13004 lt!821969 lambda!82703))))

(assert (=> d!657528 (forall!5232 lt!821969 lambda!82703)))

(assert (=> d!657528 (= (lemmaForallThenNotExists!47 lt!821969 lambda!82703) lt!822076)))

(declare-fun bs!449299 () Bool)

(assert (= bs!449299 d!657528))

(declare-fun m!2640317 () Bool)

(assert (=> bs!449299 m!2640317))

(declare-fun m!2640319 () Bool)

(assert (=> bs!449299 m!2640319))

(declare-fun m!2640321 () Bool)

(assert (=> bs!449299 m!2640321))

(assert (=> b!2197283 d!657528))

(declare-fun d!657530 () Bool)

(declare-fun c!350270 () Bool)

(assert (=> d!657530 (= c!350270 ((_ is Nil!25574) (t!198264 (list!9835 totalInput!923))))))

(declare-fun e!1404498 () (InoxSet C!12516))

(assert (=> d!657530 (= (content!3472 (t!198264 (list!9835 totalInput!923))) e!1404498)))

(declare-fun b!2197745 () Bool)

(assert (=> b!2197745 (= e!1404498 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197746 () Bool)

(assert (=> b!2197746 (= e!1404498 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 (t!198264 (list!9835 totalInput!923))) true) (content!3472 (t!198264 (t!198264 (list!9835 totalInput!923))))))))

(assert (= (and d!657530 c!350270) b!2197745))

(assert (= (and d!657530 (not c!350270)) b!2197746))

(declare-fun m!2640323 () Bool)

(assert (=> b!2197746 m!2640323))

(declare-fun m!2640325 () Bool)

(assert (=> b!2197746 m!2640325))

(assert (=> b!2197125 d!657530))

(declare-fun d!657532 () Bool)

(declare-fun lt!822077 () Int)

(assert (=> d!657532 (>= lt!822077 0)))

(declare-fun e!1404499 () Int)

(assert (=> d!657532 (= lt!822077 e!1404499)))

(declare-fun c!350271 () Bool)

(assert (=> d!657532 (= c!350271 ((_ is Nil!25574) (t!198264 lt!821768)))))

(assert (=> d!657532 (= (size!19938 (t!198264 lt!821768)) lt!822077)))

(declare-fun b!2197747 () Bool)

(assert (=> b!2197747 (= e!1404499 0)))

(declare-fun b!2197748 () Bool)

(assert (=> b!2197748 (= e!1404499 (+ 1 (size!19938 (t!198264 (t!198264 lt!821768)))))))

(assert (= (and d!657532 c!350271) b!2197747))

(assert (= (and d!657532 (not c!350271)) b!2197748))

(assert (=> b!2197748 m!2640307))

(assert (=> b!2197257 d!657532))

(declare-fun d!657534 () Bool)

(declare-fun lt!822080 () Bool)

(assert (=> d!657534 (= lt!822080 (isEmpty!14589 (list!9836 (left!19636 (c!349872 totalInput!923)))))))

(assert (=> d!657534 (= lt!822080 (= (size!19941 (left!19636 (c!349872 totalInput!923))) 0))))

(assert (=> d!657534 (= (isEmpty!14592 (left!19636 (c!349872 totalInput!923))) lt!822080)))

(declare-fun bs!449300 () Bool)

(assert (= bs!449300 d!657534))

(assert (=> bs!449300 m!2639481))

(assert (=> bs!449300 m!2639481))

(declare-fun m!2640327 () Bool)

(assert (=> bs!449300 m!2640327))

(assert (=> bs!449300 m!2639657))

(assert (=> b!2197081 d!657534))

(declare-fun d!657536 () Bool)

(declare-fun res!944651 () Bool)

(declare-fun e!1404500 () Bool)

(assert (=> d!657536 (=> res!944651 e!1404500)))

(assert (=> d!657536 (= res!944651 ((_ is Nil!25575) (exprs!2255 setElem!18833)))))

(assert (=> d!657536 (= (forall!5229 (exprs!2255 setElem!18833) lambda!82693) e!1404500)))

(declare-fun b!2197749 () Bool)

(declare-fun e!1404501 () Bool)

(assert (=> b!2197749 (= e!1404500 e!1404501)))

(declare-fun res!944652 () Bool)

(assert (=> b!2197749 (=> (not res!944652) (not e!1404501))))

(assert (=> b!2197749 (= res!944652 (dynLambda!11445 lambda!82693 (h!30976 (exprs!2255 setElem!18833))))))

(declare-fun b!2197750 () Bool)

(assert (=> b!2197750 (= e!1404501 (forall!5229 (t!198265 (exprs!2255 setElem!18833)) lambda!82693))))

(assert (= (and d!657536 (not res!944651)) b!2197749))

(assert (= (and b!2197749 res!944652) b!2197750))

(declare-fun b_lambda!71165 () Bool)

(assert (=> (not b_lambda!71165) (not b!2197749)))

(declare-fun m!2640329 () Bool)

(assert (=> b!2197749 m!2640329))

(declare-fun m!2640331 () Bool)

(assert (=> b!2197750 m!2640331))

(assert (=> d!657194 d!657536))

(declare-fun d!657538 () Bool)

(declare-fun c!350272 () Bool)

(assert (=> d!657538 (= c!350272 ((_ is Nil!25574) (t!198264 lt!821831)))))

(declare-fun e!1404502 () (InoxSet C!12516))

(assert (=> d!657538 (= (content!3472 (t!198264 lt!821831)) e!1404502)))

(declare-fun b!2197751 () Bool)

(assert (=> b!2197751 (= e!1404502 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197752 () Bool)

(assert (=> b!2197752 (= e!1404502 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 (t!198264 lt!821831)) true) (content!3472 (t!198264 (t!198264 lt!821831)))))))

(assert (= (and d!657538 c!350272) b!2197751))

(assert (= (and d!657538 (not c!350272)) b!2197752))

(declare-fun m!2640333 () Bool)

(assert (=> b!2197752 m!2640333))

(declare-fun m!2640335 () Bool)

(assert (=> b!2197752 m!2640335))

(assert (=> b!2197184 d!657538))

(declare-fun d!657540 () Bool)

(declare-fun lt!822081 () Int)

(assert (=> d!657540 (>= lt!822081 0)))

(declare-fun e!1404503 () Int)

(assert (=> d!657540 (= lt!822081 e!1404503)))

(declare-fun c!350273 () Bool)

(assert (=> d!657540 (= c!350273 ((_ is Nil!25574) lt!821922))))

(assert (=> d!657540 (= (size!19938 lt!821922) lt!822081)))

(declare-fun b!2197753 () Bool)

(assert (=> b!2197753 (= e!1404503 0)))

(declare-fun b!2197754 () Bool)

(assert (=> b!2197754 (= e!1404503 (+ 1 (size!19938 (t!198264 lt!821922))))))

(assert (= (and d!657540 c!350273) b!2197753))

(assert (= (and d!657540 (not c!350273)) b!2197754))

(declare-fun m!2640337 () Bool)

(assert (=> b!2197754 m!2640337))

(assert (=> b!2197091 d!657540))

(declare-fun d!657542 () Bool)

(declare-fun c!350274 () Bool)

(assert (=> d!657542 (= c!350274 (isEmpty!14589 (tail!3159 (tail!3159 (take!363 lt!821768 lt!821767)))))))

(declare-fun e!1404504 () Bool)

(assert (=> d!657542 (= (matchZipper!271 (derivationStepZipper!257 (derivationStepZipper!257 z!3955 (head!4687 (take!363 lt!821768 lt!821767))) (head!4687 (tail!3159 (take!363 lt!821768 lt!821767)))) (tail!3159 (tail!3159 (take!363 lt!821768 lt!821767)))) e!1404504)))

(declare-fun b!2197755 () Bool)

(assert (=> b!2197755 (= e!1404504 (nullableZipper!465 (derivationStepZipper!257 (derivationStepZipper!257 z!3955 (head!4687 (take!363 lt!821768 lt!821767))) (head!4687 (tail!3159 (take!363 lt!821768 lt!821767))))))))

(declare-fun b!2197756 () Bool)

(assert (=> b!2197756 (= e!1404504 (matchZipper!271 (derivationStepZipper!257 (derivationStepZipper!257 (derivationStepZipper!257 z!3955 (head!4687 (take!363 lt!821768 lt!821767))) (head!4687 (tail!3159 (take!363 lt!821768 lt!821767)))) (head!4687 (tail!3159 (tail!3159 (take!363 lt!821768 lt!821767))))) (tail!3159 (tail!3159 (tail!3159 (take!363 lt!821768 lt!821767))))))))

(assert (= (and d!657542 c!350274) b!2197755))

(assert (= (and d!657542 (not c!350274)) b!2197756))

(assert (=> d!657542 m!2639673))

(declare-fun m!2640339 () Bool)

(assert (=> d!657542 m!2640339))

(assert (=> b!2197755 m!2639671))

(declare-fun m!2640341 () Bool)

(assert (=> b!2197755 m!2640341))

(assert (=> b!2197756 m!2639673))

(declare-fun m!2640343 () Bool)

(assert (=> b!2197756 m!2640343))

(assert (=> b!2197756 m!2639671))

(assert (=> b!2197756 m!2640343))

(declare-fun m!2640345 () Bool)

(assert (=> b!2197756 m!2640345))

(assert (=> b!2197756 m!2639673))

(declare-fun m!2640347 () Bool)

(assert (=> b!2197756 m!2640347))

(assert (=> b!2197756 m!2640345))

(assert (=> b!2197756 m!2640347))

(declare-fun m!2640349 () Bool)

(assert (=> b!2197756 m!2640349))

(assert (=> b!2197235 d!657542))

(declare-fun bs!449301 () Bool)

(declare-fun d!657544 () Bool)

(assert (= bs!449301 (and d!657544 d!657230)))

(declare-fun lambda!82736 () Int)

(assert (=> bs!449301 (= (= (head!4687 (tail!3159 (take!363 lt!821768 lt!821767))) (head!4687 (take!363 lt!821768 lt!821767))) (= lambda!82736 lambda!82702))))

(declare-fun bs!449302 () Bool)

(assert (= bs!449302 (and d!657544 d!657010)))

(assert (=> bs!449302 (= (= (head!4687 (tail!3159 (take!363 lt!821768 lt!821767))) lt!821772) (= lambda!82736 lambda!82632))))

(declare-fun bs!449303 () Bool)

(assert (= bs!449303 (and d!657544 d!657124)))

(assert (=> bs!449303 (= (= (head!4687 (tail!3159 (take!363 lt!821768 lt!821767))) (apply!6259 totalInput!923 from!1114)) (= lambda!82736 lambda!82683))))

(declare-fun bs!449304 () Bool)

(assert (= bs!449304 (and d!657544 d!657472)))

(assert (=> bs!449304 (= (= (head!4687 (tail!3159 (take!363 lt!821768 lt!821767))) (head!4687 (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774)))) (= lambda!82736 lambda!82733))))

(declare-fun bs!449305 () Bool)

(assert (= bs!449305 (and d!657544 d!657184)))

(assert (=> bs!449305 (= (= (head!4687 (tail!3159 (take!363 lt!821768 lt!821767))) (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))) (= lambda!82736 lambda!82692))))

(declare-fun bs!449306 () Bool)

(assert (= bs!449306 (and d!657544 d!657214)))

(assert (=> bs!449306 (= (= (head!4687 (tail!3159 (take!363 lt!821768 lt!821767))) (apply!6259 totalInput!923 (+ 1 from!1114))) (= lambda!82736 lambda!82697))))

(assert (=> d!657544 true))

(assert (=> d!657544 (= (derivationStepZipper!257 (derivationStepZipper!257 z!3955 (head!4687 (take!363 lt!821768 lt!821767))) (head!4687 (tail!3159 (take!363 lt!821768 lt!821767)))) (flatMap!153 (derivationStepZipper!257 z!3955 (head!4687 (take!363 lt!821768 lt!821767))) lambda!82736))))

(declare-fun bs!449307 () Bool)

(assert (= bs!449307 d!657544))

(assert (=> bs!449307 m!2639149))

(declare-fun m!2640351 () Bool)

(assert (=> bs!449307 m!2640351))

(assert (=> b!2197235 d!657544))

(declare-fun d!657546 () Bool)

(assert (=> d!657546 (= (head!4687 (tail!3159 (take!363 lt!821768 lt!821767))) (h!30975 (tail!3159 (take!363 lt!821768 lt!821767))))))

(assert (=> b!2197235 d!657546))

(declare-fun d!657548 () Bool)

(assert (=> d!657548 (= (tail!3159 (tail!3159 (take!363 lt!821768 lt!821767))) (t!198264 (tail!3159 (take!363 lt!821768 lt!821767))))))

(assert (=> b!2197235 d!657548))

(assert (=> b!2197239 d!657516))

(declare-fun b!2197757 () Bool)

(declare-fun e!1404507 () Int)

(assert (=> b!2197757 (= e!1404507 (size!19938 (t!198264 (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114))))))))

(declare-fun b!2197758 () Bool)

(declare-fun e!1404505 () Bool)

(declare-fun lt!822082 () List!25658)

(declare-fun e!1404506 () Int)

(assert (=> b!2197758 (= e!1404505 (= (size!19938 lt!822082) e!1404506))))

(declare-fun c!350276 () Bool)

(assert (=> b!2197758 (= c!350276 (<= (- (- lt!821774 1) 1) 0))))

(declare-fun b!2197759 () Bool)

(assert (=> b!2197759 (= e!1404506 0)))

(declare-fun b!2197760 () Bool)

(assert (=> b!2197760 (= e!1404506 e!1404507)))

(declare-fun c!350277 () Bool)

(assert (=> b!2197760 (= c!350277 (>= (- (- lt!821774 1) 1) (size!19938 (t!198264 (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)))))))))

(declare-fun b!2197761 () Bool)

(declare-fun e!1404508 () List!25658)

(assert (=> b!2197761 (= e!1404508 (Cons!25574 (h!30975 (t!198264 (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114))))) (take!363 (t!198264 (t!198264 (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114))))) (- (- (- lt!821774 1) 1) 1))))))

(declare-fun b!2197762 () Bool)

(assert (=> b!2197762 (= e!1404507 (- (- lt!821774 1) 1))))

(declare-fun d!657550 () Bool)

(assert (=> d!657550 e!1404505))

(declare-fun res!944653 () Bool)

(assert (=> d!657550 (=> (not res!944653) (not e!1404505))))

(assert (=> d!657550 (= res!944653 (= ((_ map implies) (content!3472 lt!822082) (content!3472 (t!198264 (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)))))) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657550 (= lt!822082 e!1404508)))

(declare-fun c!350275 () Bool)

(assert (=> d!657550 (= c!350275 (or ((_ is Nil!25574) (t!198264 (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114))))) (<= (- (- lt!821774 1) 1) 0)))))

(assert (=> d!657550 (= (take!363 (t!198264 (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)))) (- (- lt!821774 1) 1)) lt!822082)))

(declare-fun b!2197763 () Bool)

(assert (=> b!2197763 (= e!1404508 Nil!25574)))

(assert (= (and d!657550 c!350275) b!2197763))

(assert (= (and d!657550 (not c!350275)) b!2197761))

(assert (= (and d!657550 res!944653) b!2197758))

(assert (= (and b!2197758 c!350276) b!2197759))

(assert (= (and b!2197758 (not c!350276)) b!2197760))

(assert (= (and b!2197760 c!350277) b!2197757))

(assert (= (and b!2197760 (not c!350277)) b!2197762))

(assert (=> b!2197757 m!2640155))

(declare-fun m!2640353 () Bool)

(assert (=> b!2197758 m!2640353))

(declare-fun m!2640355 () Bool)

(assert (=> d!657550 m!2640355))

(assert (=> d!657550 m!2640209))

(declare-fun m!2640357 () Bool)

(assert (=> b!2197761 m!2640357))

(assert (=> b!2197760 m!2640155))

(assert (=> b!2197288 d!657550))

(assert (=> b!2197248 d!657442))

(assert (=> b!2197176 d!657442))

(assert (=> d!657110 d!657108))

(assert (=> d!657110 d!657058))

(declare-fun d!657552 () Bool)

(declare-fun e!1404509 () Bool)

(assert (=> d!657552 e!1404509))

(declare-fun res!944654 () Bool)

(assert (=> d!657552 (=> (not res!944654) (not e!1404509))))

(declare-fun lt!822083 () List!25660)

(assert (=> d!657552 (= res!944654 (noDuplicate!311 lt!822083))))

(assert (=> d!657552 (= lt!822083 (choose!13007 lt!821776))))

(assert (=> d!657552 (= (toList!1258 lt!821776) lt!822083)))

(declare-fun b!2197764 () Bool)

(assert (=> b!2197764 (= e!1404509 (= (content!3474 lt!822083) lt!821776))))

(assert (= (and d!657552 res!944654) b!2197764))

(declare-fun m!2640359 () Bool)

(assert (=> d!657552 m!2640359))

(declare-fun m!2640361 () Bool)

(assert (=> d!657552 m!2640361))

(declare-fun m!2640363 () Bool)

(assert (=> b!2197764 m!2640363))

(assert (=> bm!132012 d!657552))

(declare-fun c!350278 () Bool)

(declare-fun d!657554 () Bool)

(assert (=> d!657554 (= c!350278 (isEmpty!14589 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821904)))))

(declare-fun e!1404510 () Bool)

(assert (=> d!657554 (= (matchZipper!271 lt!821776 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821904)) e!1404510)))

(declare-fun b!2197765 () Bool)

(assert (=> b!2197765 (= e!1404510 (nullableZipper!465 lt!821776))))

(declare-fun b!2197766 () Bool)

(assert (=> b!2197766 (= e!1404510 (matchZipper!271 (derivationStepZipper!257 lt!821776 (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821904))) (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821904))))))

(assert (= (and d!657554 c!350278) b!2197765))

(assert (= (and d!657554 (not c!350278)) b!2197766))

(assert (=> d!657554 m!2639409))

(declare-fun m!2640365 () Bool)

(assert (=> d!657554 m!2640365))

(assert (=> b!2197765 m!2639033))

(assert (=> b!2197766 m!2639409))

(declare-fun m!2640367 () Bool)

(assert (=> b!2197766 m!2640367))

(assert (=> b!2197766 m!2640367))

(declare-fun m!2640369 () Bool)

(assert (=> b!2197766 m!2640369))

(assert (=> b!2197766 m!2639409))

(declare-fun m!2640371 () Bool)

(assert (=> b!2197766 m!2640371))

(assert (=> b!2197766 m!2640369))

(assert (=> b!2197766 m!2640371))

(declare-fun m!2640373 () Bool)

(assert (=> b!2197766 m!2640373))

(assert (=> b!2197044 d!657554))

(declare-fun b!2197767 () Bool)

(declare-fun e!1404513 () Int)

(assert (=> b!2197767 (= e!1404513 (size!19938 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114))))))

(declare-fun b!2197768 () Bool)

(declare-fun e!1404511 () Bool)

(declare-fun lt!822084 () List!25658)

(declare-fun e!1404512 () Int)

(assert (=> b!2197768 (= e!1404511 (= (size!19938 lt!822084) e!1404512))))

(declare-fun c!350280 () Bool)

(assert (=> b!2197768 (= c!350280 (<= lt!821904 0))))

(declare-fun b!2197769 () Bool)

(assert (=> b!2197769 (= e!1404512 0)))

(declare-fun b!2197770 () Bool)

(assert (=> b!2197770 (= e!1404512 e!1404513)))

(declare-fun c!350281 () Bool)

(assert (=> b!2197770 (= c!350281 (>= lt!821904 (size!19938 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)))))))

(declare-fun b!2197771 () Bool)

(declare-fun e!1404514 () List!25658)

(assert (=> b!2197771 (= e!1404514 (Cons!25574 (h!30975 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114))) (take!363 (t!198264 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114))) (- lt!821904 1))))))

(declare-fun b!2197772 () Bool)

(assert (=> b!2197772 (= e!1404513 lt!821904)))

(declare-fun d!657556 () Bool)

(assert (=> d!657556 e!1404511))

(declare-fun res!944655 () Bool)

(assert (=> d!657556 (=> (not res!944655) (not e!1404511))))

(assert (=> d!657556 (= res!944655 (= ((_ map implies) (content!3472 lt!822084) (content!3472 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)))) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657556 (= lt!822084 e!1404514)))

(declare-fun c!350279 () Bool)

(assert (=> d!657556 (= c!350279 (or ((_ is Nil!25574) (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114))) (<= lt!821904 0)))))

(assert (=> d!657556 (= (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821904) lt!822084)))

(declare-fun b!2197773 () Bool)

(assert (=> b!2197773 (= e!1404514 Nil!25574)))

(assert (= (and d!657556 c!350279) b!2197773))

(assert (= (and d!657556 (not c!350279)) b!2197771))

(assert (= (and d!657556 res!944655) b!2197768))

(assert (= (and b!2197768 c!350280) b!2197769))

(assert (= (and b!2197768 (not c!350280)) b!2197770))

(assert (= (and b!2197770 c!350281) b!2197767))

(assert (= (and b!2197770 (not c!350281)) b!2197772))

(assert (=> b!2197767 m!2639041))

(assert (=> b!2197767 m!2639121))

(declare-fun m!2640375 () Bool)

(assert (=> b!2197768 m!2640375))

(declare-fun m!2640377 () Bool)

(assert (=> d!657556 m!2640377))

(assert (=> d!657556 m!2639041))

(assert (=> d!657556 m!2639127))

(declare-fun m!2640379 () Bool)

(assert (=> b!2197771 m!2640379))

(assert (=> b!2197770 m!2639041))

(assert (=> b!2197770 m!2639121))

(assert (=> b!2197044 d!657556))

(assert (=> b!2197044 d!657034))

(assert (=> b!2197044 d!657036))

(declare-fun d!657558 () Bool)

(declare-fun res!944656 () Bool)

(declare-fun e!1404515 () Bool)

(assert (=> d!657558 (=> res!944656 e!1404515)))

(assert (=> d!657558 (= res!944656 ((_ is Nil!25575) (t!198265 (exprs!2255 setElem!18830))))))

(assert (=> d!657558 (= (forall!5229 (t!198265 (exprs!2255 setElem!18830)) lambda!82653) e!1404515)))

(declare-fun b!2197774 () Bool)

(declare-fun e!1404516 () Bool)

(assert (=> b!2197774 (= e!1404515 e!1404516)))

(declare-fun res!944657 () Bool)

(assert (=> b!2197774 (=> (not res!944657) (not e!1404516))))

(assert (=> b!2197774 (= res!944657 (dynLambda!11445 lambda!82653 (h!30976 (t!198265 (exprs!2255 setElem!18830)))))))

(declare-fun b!2197775 () Bool)

(assert (=> b!2197775 (= e!1404516 (forall!5229 (t!198265 (t!198265 (exprs!2255 setElem!18830))) lambda!82653))))

(assert (= (and d!657558 (not res!944656)) b!2197774))

(assert (= (and b!2197774 res!944657) b!2197775))

(declare-fun b_lambda!71167 () Bool)

(assert (=> (not b_lambda!71167) (not b!2197774)))

(declare-fun m!2640381 () Bool)

(assert (=> b!2197774 m!2640381))

(declare-fun m!2640383 () Bool)

(assert (=> b!2197775 m!2640383))

(assert (=> b!2197174 d!657558))

(declare-fun d!657560 () Bool)

(declare-fun lt!822085 () Int)

(assert (=> d!657560 (= lt!822085 (size!19938 (list!9836 (left!19636 (c!349872 totalInput!923)))))))

(assert (=> d!657560 (= lt!822085 (ite ((_ is Empty!8321) (left!19636 (c!349872 totalInput!923))) 0 (ite ((_ is Leaf!12181) (left!19636 (c!349872 totalInput!923))) (csize!16873 (left!19636 (c!349872 totalInput!923))) (csize!16872 (left!19636 (c!349872 totalInput!923))))))))

(assert (=> d!657560 (= (size!19941 (left!19636 (c!349872 totalInput!923))) lt!822085)))

(declare-fun bs!449308 () Bool)

(assert (= bs!449308 d!657560))

(assert (=> bs!449308 m!2639481))

(assert (=> bs!449308 m!2639481))

(assert (=> bs!449308 m!2640229))

(assert (=> d!657258 d!657560))

(declare-fun d!657562 () Bool)

(declare-fun lt!822086 () Int)

(assert (=> d!657562 (= lt!822086 (size!19938 (list!9836 (right!19966 (c!349872 totalInput!923)))))))

(assert (=> d!657562 (= lt!822086 (ite ((_ is Empty!8321) (right!19966 (c!349872 totalInput!923))) 0 (ite ((_ is Leaf!12181) (right!19966 (c!349872 totalInput!923))) (csize!16873 (right!19966 (c!349872 totalInput!923))) (csize!16872 (right!19966 (c!349872 totalInput!923))))))))

(assert (=> d!657562 (= (size!19941 (right!19966 (c!349872 totalInput!923))) lt!822086)))

(declare-fun bs!449309 () Bool)

(assert (= bs!449309 d!657562))

(assert (=> bs!449309 m!2639483))

(assert (=> bs!449309 m!2639483))

(assert (=> bs!449309 m!2640231))

(assert (=> d!657258 d!657562))

(assert (=> b!2197033 d!657532))

(declare-fun d!657564 () Bool)

(declare-fun lt!822087 () Int)

(assert (=> d!657564 (>= lt!822087 0)))

(declare-fun e!1404517 () Int)

(assert (=> d!657564 (= lt!822087 e!1404517)))

(declare-fun c!350282 () Bool)

(assert (=> d!657564 (= c!350282 ((_ is Nil!25574) (drop!1373 lt!821775 from!1114)))))

(assert (=> d!657564 (= (size!19938 (drop!1373 lt!821775 from!1114)) lt!822087)))

(declare-fun b!2197776 () Bool)

(assert (=> b!2197776 (= e!1404517 0)))

(declare-fun b!2197777 () Bool)

(assert (=> b!2197777 (= e!1404517 (+ 1 (size!19938 (t!198264 (drop!1373 lt!821775 from!1114)))))))

(assert (= (and d!657564 c!350282) b!2197776))

(assert (= (and d!657564 (not c!350282)) b!2197777))

(declare-fun m!2640385 () Bool)

(assert (=> b!2197777 m!2640385))

(assert (=> b!2197135 d!657564))

(assert (=> bm!132004 d!657448))

(declare-fun b!2197778 () Bool)

(declare-fun e!1404520 () Int)

(assert (=> b!2197778 (= e!1404520 (size!19938 (t!198264 (t!198264 (drop!1373 lt!821775 (+ 1 from!1114))))))))

(declare-fun b!2197779 () Bool)

(declare-fun e!1404518 () Bool)

(declare-fun lt!822088 () List!25658)

(declare-fun e!1404519 () Int)

(assert (=> b!2197779 (= e!1404518 (= (size!19938 lt!822088) e!1404519))))

(declare-fun c!350284 () Bool)

(assert (=> b!2197779 (= c!350284 (<= (- (- 0 1) 1) 0))))

(declare-fun b!2197780 () Bool)

(assert (=> b!2197780 (= e!1404519 0)))

(declare-fun b!2197781 () Bool)

(assert (=> b!2197781 (= e!1404519 e!1404520)))

(declare-fun c!350285 () Bool)

(assert (=> b!2197781 (= c!350285 (>= (- (- 0 1) 1) (size!19938 (t!198264 (t!198264 (drop!1373 lt!821775 (+ 1 from!1114)))))))))

(declare-fun b!2197782 () Bool)

(declare-fun e!1404521 () List!25658)

(assert (=> b!2197782 (= e!1404521 (Cons!25574 (h!30975 (t!198264 (t!198264 (drop!1373 lt!821775 (+ 1 from!1114))))) (take!363 (t!198264 (t!198264 (t!198264 (drop!1373 lt!821775 (+ 1 from!1114))))) (- (- (- 0 1) 1) 1))))))

(declare-fun b!2197783 () Bool)

(assert (=> b!2197783 (= e!1404520 (- (- 0 1) 1))))

(declare-fun d!657566 () Bool)

(assert (=> d!657566 e!1404518))

(declare-fun res!944658 () Bool)

(assert (=> d!657566 (=> (not res!944658) (not e!1404518))))

(assert (=> d!657566 (= res!944658 (= ((_ map implies) (content!3472 lt!822088) (content!3472 (t!198264 (t!198264 (drop!1373 lt!821775 (+ 1 from!1114)))))) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657566 (= lt!822088 e!1404521)))

(declare-fun c!350283 () Bool)

(assert (=> d!657566 (= c!350283 (or ((_ is Nil!25574) (t!198264 (t!198264 (drop!1373 lt!821775 (+ 1 from!1114))))) (<= (- (- 0 1) 1) 0)))))

(assert (=> d!657566 (= (take!363 (t!198264 (t!198264 (drop!1373 lt!821775 (+ 1 from!1114)))) (- (- 0 1) 1)) lt!822088)))

(declare-fun b!2197784 () Bool)

(assert (=> b!2197784 (= e!1404521 Nil!25574)))

(assert (= (and d!657566 c!350283) b!2197784))

(assert (= (and d!657566 (not c!350283)) b!2197782))

(assert (= (and d!657566 res!944658) b!2197779))

(assert (= (and b!2197779 c!350284) b!2197780))

(assert (= (and b!2197779 (not c!350284)) b!2197781))

(assert (= (and b!2197781 c!350285) b!2197778))

(assert (= (and b!2197781 (not c!350285)) b!2197783))

(assert (=> b!2197778 m!2640139))

(declare-fun m!2640387 () Bool)

(assert (=> b!2197779 m!2640387))

(declare-fun m!2640389 () Bool)

(assert (=> d!657566 m!2640389))

(assert (=> d!657566 m!2640291))

(declare-fun m!2640391 () Bool)

(assert (=> b!2197782 m!2640391))

(assert (=> b!2197781 m!2640139))

(assert (=> b!2197252 d!657566))

(declare-fun d!657568 () Bool)

(declare-fun lt!822089 () Bool)

(assert (=> d!657568 (= lt!822089 (select (content!3472 (tail!3159 lt!821775)) lt!821941))))

(declare-fun e!1404523 () Bool)

(assert (=> d!657568 (= lt!822089 e!1404523)))

(declare-fun res!944660 () Bool)

(assert (=> d!657568 (=> (not res!944660) (not e!1404523))))

(assert (=> d!657568 (= res!944660 ((_ is Cons!25574) (tail!3159 lt!821775)))))

(assert (=> d!657568 (= (contains!4281 (tail!3159 lt!821775) lt!821941) lt!822089)))

(declare-fun b!2197785 () Bool)

(declare-fun e!1404522 () Bool)

(assert (=> b!2197785 (= e!1404523 e!1404522)))

(declare-fun res!944659 () Bool)

(assert (=> b!2197785 (=> res!944659 e!1404522)))

(assert (=> b!2197785 (= res!944659 (= (h!30975 (tail!3159 lt!821775)) lt!821941))))

(declare-fun b!2197786 () Bool)

(assert (=> b!2197786 (= e!1404522 (contains!4281 (t!198264 (tail!3159 lt!821775)) lt!821941))))

(assert (= (and d!657568 res!944660) b!2197785))

(assert (= (and b!2197785 (not res!944659)) b!2197786))

(assert (=> d!657568 m!2639179))

(declare-fun m!2640393 () Bool)

(assert (=> d!657568 m!2640393))

(declare-fun m!2640395 () Bool)

(assert (=> d!657568 m!2640395))

(declare-fun m!2640397 () Bool)

(assert (=> b!2197786 m!2640397))

(assert (=> d!657178 d!657568))

(declare-fun d!657570 () Bool)

(declare-fun lt!822090 () Int)

(assert (=> d!657570 (>= lt!822090 0)))

(declare-fun e!1404524 () Int)

(assert (=> d!657570 (= lt!822090 e!1404524)))

(declare-fun c!350286 () Bool)

(assert (=> d!657570 (= c!350286 ((_ is Nil!25574) (list!9838 (xs!11263 (c!349872 totalInput!923)))))))

(assert (=> d!657570 (= (size!19938 (list!9838 (xs!11263 (c!349872 totalInput!923)))) lt!822090)))

(declare-fun b!2197787 () Bool)

(assert (=> b!2197787 (= e!1404524 0)))

(declare-fun b!2197788 () Bool)

(assert (=> b!2197788 (= e!1404524 (+ 1 (size!19938 (t!198264 (list!9838 (xs!11263 (c!349872 totalInput!923)))))))))

(assert (= (and d!657570 c!350286) b!2197787))

(assert (= (and d!657570 (not c!350286)) b!2197788))

(declare-fun m!2640399 () Bool)

(assert (=> b!2197788 m!2640399))

(assert (=> d!657268 d!657570))

(declare-fun d!657572 () Bool)

(assert (=> d!657572 (= (list!9838 (xs!11263 (c!349872 totalInput!923))) (innerList!8381 (xs!11263 (c!349872 totalInput!923))))))

(assert (=> d!657268 d!657572))

(declare-fun bs!449310 () Bool)

(declare-fun d!657574 () Bool)

(assert (= bs!449310 (and d!657574 d!657262)))

(declare-fun lambda!82737 () Int)

(assert (=> bs!449310 (= lambda!82737 lambda!82703)))

(declare-fun bs!449311 () Bool)

(assert (= bs!449311 (and d!657574 d!657450)))

(assert (=> bs!449311 (not (= lambda!82737 lambda!82732))))

(declare-fun bs!449312 () Bool)

(assert (= bs!449312 (and d!657574 b!2197282)))

(assert (=> bs!449312 (not (= lambda!82737 lambda!82704))))

(declare-fun bs!449313 () Bool)

(assert (= bs!449313 (and d!657574 d!657528)))

(assert (=> bs!449313 (not (= lambda!82737 lambda!82735))))

(declare-fun bs!449314 () Bool)

(assert (= bs!449314 (and d!657574 b!2197283)))

(assert (=> bs!449314 (not (= lambda!82737 lambda!82705))))

(declare-fun bs!449315 () Bool)

(assert (= bs!449315 (and d!657574 d!657520)))

(assert (=> bs!449315 (not (= lambda!82737 lambda!82734))))

(declare-fun bs!449316 () Bool)

(assert (= bs!449316 (and d!657574 d!657022)))

(assert (=> bs!449316 (not (= lambda!82737 lambda!82635))))

(declare-fun bs!449317 () Bool)

(assert (= bs!449317 (and d!657574 d!657202)))

(assert (=> bs!449317 (not (= lambda!82737 lambda!82696))))

(declare-fun bs!449318 () Bool)

(assert (= bs!449318 (and d!657574 b!2196711)))

(assert (=> bs!449318 (not (= lambda!82737 lambda!82649))))

(declare-fun bs!449319 () Bool)

(assert (= bs!449319 (and d!657574 d!657118)))

(assert (=> bs!449319 (not (= lambda!82737 lambda!82682))))

(declare-fun bs!449320 () Bool)

(assert (= bs!449320 (and d!657574 d!657218)))

(assert (=> bs!449320 (not (= lambda!82737 lambda!82698))))

(declare-fun bs!449321 () Bool)

(assert (= bs!449321 (and d!657574 b!2196712)))

(assert (=> bs!449321 (not (= lambda!82737 lambda!82650))))

(declare-fun bs!449322 () Bool)

(assert (= bs!449322 (and d!657574 d!657024)))

(assert (=> bs!449322 (= lambda!82737 lambda!82648)))

(declare-fun bs!449323 () Bool)

(assert (= bs!449323 (and d!657574 d!657134)))

(assert (=> bs!449323 (not (= lambda!82737 lambda!82691))))

(declare-fun bs!449324 () Bool)

(assert (= bs!449324 (and d!657574 d!657038)))

(assert (=> bs!449324 (not (= lambda!82737 lambda!82654))))

(declare-fun bs!449325 () Bool)

(assert (= bs!449325 (and d!657574 d!657126)))

(assert (=> bs!449325 (not (= lambda!82737 lambda!82684))))

(declare-fun bs!449326 () Bool)

(assert (= bs!449326 (and d!657574 d!657220)))

(assert (=> bs!449326 (not (= lambda!82737 lambda!82701))))

(declare-fun bs!449327 () Bool)

(declare-fun b!2197789 () Bool)

(assert (= bs!449327 (and b!2197789 d!657262)))

(declare-fun lambda!82738 () Int)

(assert (=> bs!449327 (not (= lambda!82738 lambda!82703))))

(declare-fun bs!449328 () Bool)

(assert (= bs!449328 (and b!2197789 d!657574)))

(assert (=> bs!449328 (not (= lambda!82738 lambda!82737))))

(declare-fun bs!449329 () Bool)

(assert (= bs!449329 (and b!2197789 d!657450)))

(assert (=> bs!449329 (not (= lambda!82738 lambda!82732))))

(declare-fun bs!449330 () Bool)

(assert (= bs!449330 (and b!2197789 b!2197282)))

(assert (=> bs!449330 (= lambda!82738 lambda!82704)))

(declare-fun bs!449331 () Bool)

(assert (= bs!449331 (and b!2197789 d!657528)))

(assert (=> bs!449331 (not (= lambda!82738 lambda!82735))))

(declare-fun bs!449332 () Bool)

(assert (= bs!449332 (and b!2197789 b!2197283)))

(assert (=> bs!449332 (= lambda!82738 lambda!82705)))

(declare-fun bs!449333 () Bool)

(assert (= bs!449333 (and b!2197789 d!657520)))

(assert (=> bs!449333 (not (= lambda!82738 lambda!82734))))

(declare-fun bs!449334 () Bool)

(assert (= bs!449334 (and b!2197789 d!657022)))

(assert (=> bs!449334 (not (= lambda!82738 lambda!82635))))

(declare-fun bs!449335 () Bool)

(assert (= bs!449335 (and b!2197789 d!657202)))

(assert (=> bs!449335 (not (= lambda!82738 lambda!82696))))

(declare-fun bs!449336 () Bool)

(assert (= bs!449336 (and b!2197789 b!2196711)))

(assert (=> bs!449336 (= lambda!82738 lambda!82649)))

(declare-fun bs!449337 () Bool)

(assert (= bs!449337 (and b!2197789 d!657118)))

(assert (=> bs!449337 (not (= lambda!82738 lambda!82682))))

(declare-fun bs!449338 () Bool)

(assert (= bs!449338 (and b!2197789 d!657218)))

(assert (=> bs!449338 (not (= lambda!82738 lambda!82698))))

(declare-fun bs!449339 () Bool)

(assert (= bs!449339 (and b!2197789 b!2196712)))

(assert (=> bs!449339 (= lambda!82738 lambda!82650)))

(declare-fun bs!449340 () Bool)

(assert (= bs!449340 (and b!2197789 d!657024)))

(assert (=> bs!449340 (not (= lambda!82738 lambda!82648))))

(declare-fun bs!449341 () Bool)

(assert (= bs!449341 (and b!2197789 d!657134)))

(assert (=> bs!449341 (= lambda!82738 lambda!82691)))

(declare-fun bs!449342 () Bool)

(assert (= bs!449342 (and b!2197789 d!657038)))

(assert (=> bs!449342 (not (= lambda!82738 lambda!82654))))

(declare-fun bs!449343 () Bool)

(assert (= bs!449343 (and b!2197789 d!657126)))

(assert (=> bs!449343 (not (= lambda!82738 lambda!82684))))

(declare-fun bs!449344 () Bool)

(assert (= bs!449344 (and b!2197789 d!657220)))

(assert (=> bs!449344 (not (= lambda!82738 lambda!82701))))

(declare-fun bs!449345 () Bool)

(declare-fun b!2197790 () Bool)

(assert (= bs!449345 (and b!2197790 d!657262)))

(declare-fun lambda!82739 () Int)

(assert (=> bs!449345 (not (= lambda!82739 lambda!82703))))

(declare-fun bs!449346 () Bool)

(assert (= bs!449346 (and b!2197790 d!657450)))

(assert (=> bs!449346 (not (= lambda!82739 lambda!82732))))

(declare-fun bs!449347 () Bool)

(assert (= bs!449347 (and b!2197790 b!2197282)))

(assert (=> bs!449347 (= lambda!82739 lambda!82704)))

(declare-fun bs!449348 () Bool)

(assert (= bs!449348 (and b!2197790 d!657528)))

(assert (=> bs!449348 (not (= lambda!82739 lambda!82735))))

(declare-fun bs!449349 () Bool)

(assert (= bs!449349 (and b!2197790 b!2197283)))

(assert (=> bs!449349 (= lambda!82739 lambda!82705)))

(declare-fun bs!449350 () Bool)

(assert (= bs!449350 (and b!2197790 d!657520)))

(assert (=> bs!449350 (not (= lambda!82739 lambda!82734))))

(declare-fun bs!449351 () Bool)

(assert (= bs!449351 (and b!2197790 d!657022)))

(assert (=> bs!449351 (not (= lambda!82739 lambda!82635))))

(declare-fun bs!449352 () Bool)

(assert (= bs!449352 (and b!2197790 d!657202)))

(assert (=> bs!449352 (not (= lambda!82739 lambda!82696))))

(declare-fun bs!449353 () Bool)

(assert (= bs!449353 (and b!2197790 b!2196711)))

(assert (=> bs!449353 (= lambda!82739 lambda!82649)))

(declare-fun bs!449354 () Bool)

(assert (= bs!449354 (and b!2197790 d!657574)))

(assert (=> bs!449354 (not (= lambda!82739 lambda!82737))))

(declare-fun bs!449355 () Bool)

(assert (= bs!449355 (and b!2197790 b!2197789)))

(assert (=> bs!449355 (= lambda!82739 lambda!82738)))

(declare-fun bs!449356 () Bool)

(assert (= bs!449356 (and b!2197790 d!657118)))

(assert (=> bs!449356 (not (= lambda!82739 lambda!82682))))

(declare-fun bs!449357 () Bool)

(assert (= bs!449357 (and b!2197790 d!657218)))

(assert (=> bs!449357 (not (= lambda!82739 lambda!82698))))

(declare-fun bs!449358 () Bool)

(assert (= bs!449358 (and b!2197790 b!2196712)))

(assert (=> bs!449358 (= lambda!82739 lambda!82650)))

(declare-fun bs!449359 () Bool)

(assert (= bs!449359 (and b!2197790 d!657024)))

(assert (=> bs!449359 (not (= lambda!82739 lambda!82648))))

(declare-fun bs!449360 () Bool)

(assert (= bs!449360 (and b!2197790 d!657134)))

(assert (=> bs!449360 (= lambda!82739 lambda!82691)))

(declare-fun bs!449361 () Bool)

(assert (= bs!449361 (and b!2197790 d!657038)))

(assert (=> bs!449361 (not (= lambda!82739 lambda!82654))))

(declare-fun bs!449362 () Bool)

(assert (= bs!449362 (and b!2197790 d!657126)))

(assert (=> bs!449362 (not (= lambda!82739 lambda!82684))))

(declare-fun bs!449363 () Bool)

(assert (= bs!449363 (and b!2197790 d!657220)))

(assert (=> bs!449363 (not (= lambda!82739 lambda!82701))))

(declare-fun bm!132024 () Bool)

(declare-fun lt!822094 () List!25660)

(declare-fun call!132029 () Bool)

(declare-fun lt!822098 () List!25660)

(declare-fun c!350287 () Bool)

(assert (=> bm!132024 (= call!132029 (exists!816 (ite c!350287 lt!822098 lt!822094) (ite c!350287 lambda!82738 lambda!82739)))))

(declare-fun e!1404525 () Unit!38685)

(declare-fun Unit!38695 () Unit!38685)

(assert (=> b!2197789 (= e!1404525 Unit!38695)))

(declare-fun call!132030 () List!25660)

(assert (=> b!2197789 (= lt!822098 call!132030)))

(declare-fun lt!822093 () Unit!38685)

(assert (=> b!2197789 (= lt!822093 (lemmaNotForallThenExists!47 lt!822098 lambda!82737))))

(assert (=> b!2197789 call!132029))

(declare-fun lt!822097 () Unit!38685)

(assert (=> b!2197789 (= lt!822097 lt!822093)))

(declare-fun bm!132025 () Bool)

(assert (=> bm!132025 (= call!132030 (toList!1258 lt!821784))))

(declare-fun lt!822092 () Bool)

(assert (=> d!657574 (= lt!822092 (isEmpty!14588 (getLanguageWitness!141 lt!821784)))))

(assert (=> d!657574 (= lt!822092 (forall!5228 lt!821784 lambda!82737))))

(declare-fun lt!822096 () Unit!38685)

(assert (=> d!657574 (= lt!822096 e!1404525)))

(assert (=> d!657574 (= c!350287 (not (forall!5228 lt!821784 lambda!82737)))))

(assert (=> d!657574 (= (lostCauseZipper!301 lt!821784) lt!822092)))

(declare-fun Unit!38696 () Unit!38685)

(assert (=> b!2197790 (= e!1404525 Unit!38696)))

(assert (=> b!2197790 (= lt!822094 call!132030)))

(declare-fun lt!822095 () Unit!38685)

(assert (=> b!2197790 (= lt!822095 (lemmaForallThenNotExists!47 lt!822094 lambda!82737))))

(assert (=> b!2197790 (not call!132029)))

(declare-fun lt!822091 () Unit!38685)

(assert (=> b!2197790 (= lt!822091 lt!822095)))

(assert (= (and d!657574 c!350287) b!2197789))

(assert (= (and d!657574 (not c!350287)) b!2197790))

(assert (= (or b!2197789 b!2197790) bm!132024))

(assert (= (or b!2197789 b!2197790) bm!132025))

(declare-fun m!2640401 () Bool)

(assert (=> d!657574 m!2640401))

(assert (=> d!657574 m!2640401))

(declare-fun m!2640403 () Bool)

(assert (=> d!657574 m!2640403))

(declare-fun m!2640405 () Bool)

(assert (=> d!657574 m!2640405))

(assert (=> d!657574 m!2640405))

(declare-fun m!2640407 () Bool)

(assert (=> bm!132025 m!2640407))

(declare-fun m!2640409 () Bool)

(assert (=> bm!132024 m!2640409))

(declare-fun m!2640411 () Bool)

(assert (=> b!2197790 m!2640411))

(declare-fun m!2640413 () Bool)

(assert (=> b!2197789 m!2640413))

(assert (=> b!2197063 d!657574))

(declare-fun bs!449364 () Bool)

(declare-fun d!657576 () Bool)

(assert (= bs!449364 (and d!657576 d!657262)))

(declare-fun lambda!82740 () Int)

(assert (=> bs!449364 (not (= lambda!82740 lambda!82703))))

(declare-fun bs!449365 () Bool)

(assert (= bs!449365 (and d!657576 d!657450)))

(assert (=> bs!449365 (not (= lambda!82740 lambda!82732))))

(declare-fun bs!449366 () Bool)

(assert (= bs!449366 (and d!657576 b!2197282)))

(assert (=> bs!449366 (not (= lambda!82740 lambda!82704))))

(declare-fun bs!449367 () Bool)

(assert (= bs!449367 (and d!657576 d!657528)))

(assert (=> bs!449367 (= (= lambda!82635 lambda!82703) (= lambda!82740 lambda!82735))))

(declare-fun bs!449368 () Bool)

(assert (= bs!449368 (and d!657576 b!2197283)))

(assert (=> bs!449368 (not (= lambda!82740 lambda!82705))))

(declare-fun bs!449369 () Bool)

(assert (= bs!449369 (and d!657576 d!657520)))

(assert (=> bs!449369 (not (= lambda!82740 lambda!82734))))

(declare-fun bs!449370 () Bool)

(assert (= bs!449370 (and d!657576 d!657022)))

(assert (=> bs!449370 (not (= lambda!82740 lambda!82635))))

(declare-fun bs!449371 () Bool)

(assert (= bs!449371 (and d!657576 d!657202)))

(assert (=> bs!449371 (= (= lambda!82635 lambda!82648) (= lambda!82740 lambda!82696))))

(declare-fun bs!449372 () Bool)

(assert (= bs!449372 (and d!657576 b!2196711)))

(assert (=> bs!449372 (not (= lambda!82740 lambda!82649))))

(declare-fun bs!449373 () Bool)

(assert (= bs!449373 (and d!657576 b!2197790)))

(assert (=> bs!449373 (not (= lambda!82740 lambda!82739))))

(declare-fun bs!449374 () Bool)

(assert (= bs!449374 (and d!657576 d!657574)))

(assert (=> bs!449374 (not (= lambda!82740 lambda!82737))))

(declare-fun bs!449375 () Bool)

(assert (= bs!449375 (and d!657576 b!2197789)))

(assert (=> bs!449375 (not (= lambda!82740 lambda!82738))))

(declare-fun bs!449376 () Bool)

(assert (= bs!449376 (and d!657576 d!657118)))

(assert (=> bs!449376 (= (= lambda!82635 lambda!82648) (= lambda!82740 lambda!82682))))

(declare-fun bs!449377 () Bool)

(assert (= bs!449377 (and d!657576 d!657218)))

(assert (=> bs!449377 (not (= lambda!82740 lambda!82698))))

(declare-fun bs!449378 () Bool)

(assert (= bs!449378 (and d!657576 b!2196712)))

(assert (=> bs!449378 (not (= lambda!82740 lambda!82650))))

(declare-fun bs!449379 () Bool)

(assert (= bs!449379 (and d!657576 d!657024)))

(assert (=> bs!449379 (not (= lambda!82740 lambda!82648))))

(declare-fun bs!449380 () Bool)

(assert (= bs!449380 (and d!657576 d!657134)))

(assert (=> bs!449380 (not (= lambda!82740 lambda!82691))))

(declare-fun bs!449381 () Bool)

(assert (= bs!449381 (and d!657576 d!657038)))

(assert (=> bs!449381 (not (= lambda!82740 lambda!82654))))

(declare-fun bs!449382 () Bool)

(assert (= bs!449382 (and d!657576 d!657126)))

(assert (=> bs!449382 (not (= lambda!82740 lambda!82684))))

(declare-fun bs!449383 () Bool)

(assert (= bs!449383 (and d!657576 d!657220)))

(assert (=> bs!449383 (= (= lambda!82635 (ite c!349896 lambda!82649 lambda!82650)) (= lambda!82740 lambda!82701))))

(assert (=> d!657576 true))

(assert (=> d!657576 (< (dynLambda!11444 order!14811 lambda!82635) (dynLambda!11444 order!14811 lambda!82740))))

(assert (=> d!657576 (= (exists!816 (toList!1258 lt!821776) lambda!82635) (not (forall!5232 (toList!1258 lt!821776) lambda!82740)))))

(declare-fun bs!449384 () Bool)

(assert (= bs!449384 d!657576))

(assert (=> bs!449384 m!2639499))

(declare-fun m!2640415 () Bool)

(assert (=> bs!449384 m!2640415))

(assert (=> d!657146 d!657576))

(assert (=> d!657146 d!657552))

(declare-fun d!657578 () Bool)

(declare-fun res!944663 () Bool)

(assert (=> d!657578 (= res!944663 (exists!816 (toList!1258 lt!821776) lambda!82635))))

(assert (=> d!657578 true))

(assert (=> d!657578 (= (choose!13005 lt!821776 lambda!82635) res!944663)))

(declare-fun bs!449385 () Bool)

(assert (= bs!449385 d!657578))

(assert (=> bs!449385 m!2639499))

(assert (=> bs!449385 m!2639499))

(assert (=> bs!449385 m!2639501))

(assert (=> d!657146 d!657578))

(declare-fun d!657580 () Bool)

(declare-fun lt!822099 () Bool)

(assert (=> d!657580 (= lt!822099 (exists!816 (toList!1258 lt!821784) lambda!82684))))

(assert (=> d!657580 (= lt!822099 (choose!13005 lt!821784 lambda!82684))))

(assert (=> d!657580 (= (exists!815 lt!821784 lambda!82684) lt!822099)))

(declare-fun bs!449386 () Bool)

(assert (= bs!449386 d!657580))

(assert (=> bs!449386 m!2640407))

(assert (=> bs!449386 m!2640407))

(declare-fun m!2640417 () Bool)

(assert (=> bs!449386 m!2640417))

(declare-fun m!2640419 () Bool)

(assert (=> bs!449386 m!2640419))

(assert (=> d!657126 d!657580))

(declare-fun d!657582 () Bool)

(declare-fun lt!822100 () Int)

(assert (=> d!657582 (>= lt!822100 0)))

(declare-fun e!1404526 () Int)

(assert (=> d!657582 (= lt!822100 e!1404526)))

(declare-fun c!350288 () Bool)

(assert (=> d!657582 (= c!350288 ((_ is Nil!25574) (list!9836 (c!349872 totalInput!923))))))

(assert (=> d!657582 (= (size!19938 (list!9836 (c!349872 totalInput!923))) lt!822100)))

(declare-fun b!2197791 () Bool)

(assert (=> b!2197791 (= e!1404526 0)))

(declare-fun b!2197792 () Bool)

(assert (=> b!2197792 (= e!1404526 (+ 1 (size!19938 (t!198264 (list!9836 (c!349872 totalInput!923))))))))

(assert (= (and d!657582 c!350288) b!2197791))

(assert (= (and d!657582 (not c!350288)) b!2197792))

(declare-fun m!2640421 () Bool)

(assert (=> b!2197792 m!2640421))

(assert (=> d!657156 d!657582))

(assert (=> d!657156 d!657140))

(declare-fun d!657584 () Bool)

(assert (=> d!657584 (= (head!4687 (list!9835 totalInput!923)) (h!30975 (list!9835 totalInput!923)))))

(assert (=> b!2197209 d!657584))

(declare-fun d!657586 () Bool)

(assert (=> d!657586 (= (isDefined!4112 lt!821918) (not (isEmpty!14588 lt!821918)))))

(declare-fun bs!449387 () Bool)

(assert (= bs!449387 d!657586))

(declare-fun m!2640423 () Bool)

(assert (=> bs!449387 m!2640423))

(assert (=> d!657134 d!657586))

(declare-fun d!657588 () Bool)

(declare-fun lt!822101 () Bool)

(assert (=> d!657588 (= lt!822101 (exists!816 (toList!1258 z!3955) lambda!82691))))

(assert (=> d!657588 (= lt!822101 (choose!13005 z!3955 lambda!82691))))

(assert (=> d!657588 (= (exists!815 z!3955 lambda!82691) lt!822101)))

(declare-fun bs!449388 () Bool)

(assert (= bs!449388 d!657588))

(assert (=> bs!449388 m!2639097))

(assert (=> bs!449388 m!2639097))

(declare-fun m!2640425 () Bool)

(assert (=> bs!449388 m!2640425))

(declare-fun m!2640427 () Bool)

(assert (=> bs!449388 m!2640427))

(assert (=> d!657134 d!657588))

(declare-fun d!657590 () Bool)

(declare-fun lt!822102 () Int)

(assert (=> d!657590 (>= lt!822102 0)))

(declare-fun e!1404527 () Int)

(assert (=> d!657590 (= lt!822102 e!1404527)))

(declare-fun c!350289 () Bool)

(assert (=> d!657590 (= c!350289 ((_ is Nil!25574) lt!821949))))

(assert (=> d!657590 (= (size!19938 lt!821949) lt!822102)))

(declare-fun b!2197793 () Bool)

(assert (=> b!2197793 (= e!1404527 0)))

(declare-fun b!2197794 () Bool)

(assert (=> b!2197794 (= e!1404527 (+ 1 (size!19938 (t!198264 lt!821949))))))

(assert (= (and d!657590 c!350289) b!2197793))

(assert (= (and d!657590 (not c!350289)) b!2197794))

(declare-fun m!2640429 () Bool)

(assert (=> b!2197794 m!2640429))

(assert (=> b!2197190 d!657590))

(declare-fun d!657592 () Bool)

(declare-fun lt!822103 () Int)

(assert (=> d!657592 (>= lt!822103 0)))

(declare-fun e!1404528 () Int)

(assert (=> d!657592 (= lt!822103 e!1404528)))

(declare-fun c!350290 () Bool)

(assert (=> d!657592 (= c!350290 ((_ is Nil!25574) lt!821934))))

(assert (=> d!657592 (= (size!19938 lt!821934) lt!822103)))

(declare-fun b!2197795 () Bool)

(assert (=> b!2197795 (= e!1404528 0)))

(declare-fun b!2197796 () Bool)

(assert (=> b!2197796 (= e!1404528 (+ 1 (size!19938 (t!198264 lt!821934))))))

(assert (= (and d!657592 c!350290) b!2197795))

(assert (= (and d!657592 (not c!350290)) b!2197796))

(declare-fun m!2640431 () Bool)

(assert (=> b!2197796 m!2640431))

(assert (=> b!2197149 d!657592))

(declare-fun d!657594 () Bool)

(declare-fun lt!822104 () Int)

(assert (=> d!657594 (>= lt!822104 0)))

(declare-fun e!1404529 () Int)

(assert (=> d!657594 (= lt!822104 e!1404529)))

(declare-fun c!350291 () Bool)

(assert (=> d!657594 (= c!350291 ((_ is Nil!25574) (t!198264 lt!821828)))))

(assert (=> d!657594 (= (size!19938 (t!198264 lt!821828)) lt!822104)))

(declare-fun b!2197797 () Bool)

(assert (=> b!2197797 (= e!1404529 0)))

(declare-fun b!2197798 () Bool)

(assert (=> b!2197798 (= e!1404529 (+ 1 (size!19938 (t!198264 (t!198264 lt!821828)))))))

(assert (= (and d!657594 c!350291) b!2197797))

(assert (= (and d!657594 (not c!350291)) b!2197798))

(declare-fun m!2640433 () Bool)

(assert (=> b!2197798 m!2640433))

(assert (=> b!2197163 d!657594))

(assert (=> b!2197295 d!657570))

(assert (=> b!2197295 d!657572))

(declare-fun bs!449389 () Bool)

(declare-fun d!657596 () Bool)

(assert (= bs!449389 (and d!657596 d!657262)))

(declare-fun lambda!82741 () Int)

(assert (=> bs!449389 (not (= lambda!82741 lambda!82703))))

(declare-fun bs!449390 () Bool)

(assert (= bs!449390 (and d!657596 d!657450)))

(assert (=> bs!449390 (not (= lambda!82741 lambda!82732))))

(declare-fun bs!449391 () Bool)

(assert (= bs!449391 (and d!657596 b!2197282)))

(assert (=> bs!449391 (not (= lambda!82741 lambda!82704))))

(declare-fun bs!449392 () Bool)

(assert (= bs!449392 (and d!657596 d!657528)))

(assert (=> bs!449392 (= (= lambda!82654 lambda!82703) (= lambda!82741 lambda!82735))))

(declare-fun bs!449393 () Bool)

(assert (= bs!449393 (and d!657596 b!2197283)))

(assert (=> bs!449393 (not (= lambda!82741 lambda!82705))))

(declare-fun bs!449394 () Bool)

(assert (= bs!449394 (and d!657596 d!657520)))

(assert (=> bs!449394 (not (= lambda!82741 lambda!82734))))

(declare-fun bs!449395 () Bool)

(assert (= bs!449395 (and d!657596 d!657022)))

(assert (=> bs!449395 (not (= lambda!82741 lambda!82635))))

(declare-fun bs!449396 () Bool)

(assert (= bs!449396 (and d!657596 d!657202)))

(assert (=> bs!449396 (= (= lambda!82654 lambda!82648) (= lambda!82741 lambda!82696))))

(declare-fun bs!449397 () Bool)

(assert (= bs!449397 (and d!657596 b!2196711)))

(assert (=> bs!449397 (not (= lambda!82741 lambda!82649))))

(declare-fun bs!449398 () Bool)

(assert (= bs!449398 (and d!657596 b!2197790)))

(assert (=> bs!449398 (not (= lambda!82741 lambda!82739))))

(declare-fun bs!449399 () Bool)

(assert (= bs!449399 (and d!657596 d!657574)))

(assert (=> bs!449399 (not (= lambda!82741 lambda!82737))))

(declare-fun bs!449400 () Bool)

(assert (= bs!449400 (and d!657596 b!2197789)))

(assert (=> bs!449400 (not (= lambda!82741 lambda!82738))))

(declare-fun bs!449401 () Bool)

(assert (= bs!449401 (and d!657596 d!657118)))

(assert (=> bs!449401 (= (= lambda!82654 lambda!82648) (= lambda!82741 lambda!82682))))

(declare-fun bs!449402 () Bool)

(assert (= bs!449402 (and d!657596 d!657576)))

(assert (=> bs!449402 (= (= lambda!82654 lambda!82635) (= lambda!82741 lambda!82740))))

(declare-fun bs!449403 () Bool)

(assert (= bs!449403 (and d!657596 d!657218)))

(assert (=> bs!449403 (not (= lambda!82741 lambda!82698))))

(declare-fun bs!449404 () Bool)

(assert (= bs!449404 (and d!657596 b!2196712)))

(assert (=> bs!449404 (not (= lambda!82741 lambda!82650))))

(declare-fun bs!449405 () Bool)

(assert (= bs!449405 (and d!657596 d!657024)))

(assert (=> bs!449405 (not (= lambda!82741 lambda!82648))))

(declare-fun bs!449406 () Bool)

(assert (= bs!449406 (and d!657596 d!657134)))

(assert (=> bs!449406 (not (= lambda!82741 lambda!82691))))

(declare-fun bs!449407 () Bool)

(assert (= bs!449407 (and d!657596 d!657038)))

(assert (=> bs!449407 (not (= lambda!82741 lambda!82654))))

(declare-fun bs!449408 () Bool)

(assert (= bs!449408 (and d!657596 d!657126)))

(assert (=> bs!449408 (not (= lambda!82741 lambda!82684))))

(declare-fun bs!449409 () Bool)

(assert (= bs!449409 (and d!657596 d!657220)))

(assert (=> bs!449409 (= (= lambda!82654 (ite c!349896 lambda!82649 lambda!82650)) (= lambda!82741 lambda!82701))))

(assert (=> d!657596 true))

(assert (=> d!657596 (< (dynLambda!11444 order!14811 lambda!82654) (dynLambda!11444 order!14811 lambda!82741))))

(assert (=> d!657596 (= (exists!816 (toList!1258 z!3955) lambda!82654) (not (forall!5232 (toList!1258 z!3955) lambda!82741)))))

(declare-fun bs!449410 () Bool)

(assert (= bs!449410 d!657596))

(assert (=> bs!449410 m!2639097))

(declare-fun m!2640435 () Bool)

(assert (=> bs!449410 m!2640435))

(assert (=> d!657120 d!657596))

(assert (=> d!657120 d!657172))

(declare-fun d!657598 () Bool)

(declare-fun res!944664 () Bool)

(assert (=> d!657598 (= res!944664 (exists!816 (toList!1258 z!3955) lambda!82654))))

(assert (=> d!657598 true))

(assert (=> d!657598 (= (choose!13005 z!3955 lambda!82654) res!944664)))

(declare-fun bs!449411 () Bool)

(assert (= bs!449411 d!657598))

(assert (=> bs!449411 m!2639097))

(assert (=> bs!449411 m!2639097))

(assert (=> bs!449411 m!2639429))

(assert (=> d!657120 d!657598))

(declare-fun d!657600 () Bool)

(declare-fun lt!822105 () Int)

(assert (=> d!657600 (>= lt!822105 0)))

(declare-fun e!1404530 () Int)

(assert (=> d!657600 (= lt!822105 e!1404530)))

(declare-fun c!350292 () Bool)

(assert (=> d!657600 (= c!350292 ((_ is Nil!25574) (innerList!8381 (xs!11263 (c!349872 totalInput!923)))))))

(assert (=> d!657600 (= (size!19938 (innerList!8381 (xs!11263 (c!349872 totalInput!923)))) lt!822105)))

(declare-fun b!2197799 () Bool)

(assert (=> b!2197799 (= e!1404530 0)))

(declare-fun b!2197800 () Bool)

(assert (=> b!2197800 (= e!1404530 (+ 1 (size!19938 (t!198264 (innerList!8381 (xs!11263 (c!349872 totalInput!923)))))))))

(assert (= (and d!657600 c!350292) b!2197799))

(assert (= (and d!657600 (not c!350292)) b!2197800))

(declare-fun m!2640437 () Bool)

(assert (=> b!2197800 m!2640437))

(assert (=> d!657130 d!657600))

(declare-fun bs!449412 () Bool)

(declare-fun d!657602 () Bool)

(assert (= bs!449412 (and d!657602 d!657026)))

(declare-fun lambda!82744 () Int)

(assert (=> bs!449412 (not (= lambda!82744 lambda!82653))))

(declare-fun bs!449413 () Bool)

(assert (= bs!449413 (and d!657602 d!657194)))

(assert (=> bs!449413 (not (= lambda!82744 lambda!82693))))

(declare-fun b!2197813 () Bool)

(declare-fun e!1404538 () Option!5022)

(assert (=> b!2197813 (= e!1404538 None!5021)))

(declare-fun b!2197814 () Bool)

(declare-fun e!1404537 () Option!5022)

(declare-fun e!1404539 () Option!5022)

(assert (=> b!2197814 (= e!1404537 e!1404539)))

(declare-fun lt!822112 () Option!5022)

(declare-fun getLanguageWitness!145 (Regex!6185) Option!5022)

(assert (=> b!2197814 (= lt!822112 (getLanguageWitness!145 (h!30976 (exprs!2255 (getWitness!510 z!3955 lambda!82691)))))))

(declare-fun c!350302 () Bool)

(assert (=> b!2197814 (= c!350302 ((_ is Some!5021) lt!822112))))

(declare-fun b!2197815 () Bool)

(declare-fun lt!822114 () Option!5022)

(assert (=> b!2197815 (= e!1404538 (Some!5021 (++!6423 (v!29416 lt!822112) (v!29416 lt!822114))))))

(declare-fun b!2197816 () Bool)

(declare-fun c!350300 () Bool)

(assert (=> b!2197816 (= c!350300 ((_ is Some!5021) lt!822114))))

(assert (=> b!2197816 (= lt!822114 (getLanguageWitness!143 (Context!3511 (t!198265 (exprs!2255 (getWitness!510 z!3955 lambda!82691))))))))

(assert (=> b!2197816 (= e!1404539 e!1404538)))

(declare-fun lt!822113 () Option!5022)

(declare-fun exists!819 (List!25659 Int) Bool)

(assert (=> d!657602 (= (isEmpty!14588 lt!822113) (exists!819 (exprs!2255 (getWitness!510 z!3955 lambda!82691)) lambda!82744))))

(assert (=> d!657602 (= lt!822113 e!1404537)))

(declare-fun c!350301 () Bool)

(assert (=> d!657602 (= c!350301 ((_ is Cons!25575) (exprs!2255 (getWitness!510 z!3955 lambda!82691))))))

(assert (=> d!657602 (= (getLanguageWitness!143 (getWitness!510 z!3955 lambda!82691)) lt!822113)))

(declare-fun b!2197817 () Bool)

(assert (=> b!2197817 (= e!1404539 None!5021)))

(declare-fun b!2197818 () Bool)

(assert (=> b!2197818 (= e!1404537 (Some!5021 Nil!25574))))

(assert (= (and d!657602 c!350301) b!2197814))

(assert (= (and d!657602 (not c!350301)) b!2197818))

(assert (= (and b!2197814 c!350302) b!2197816))

(assert (= (and b!2197814 (not c!350302)) b!2197817))

(assert (= (and b!2197816 c!350300) b!2197815))

(assert (= (and b!2197816 (not c!350300)) b!2197813))

(declare-fun m!2640439 () Bool)

(assert (=> b!2197814 m!2640439))

(declare-fun m!2640441 () Bool)

(assert (=> b!2197815 m!2640441))

(declare-fun m!2640443 () Bool)

(assert (=> b!2197816 m!2640443))

(declare-fun m!2640445 () Bool)

(assert (=> d!657602 m!2640445))

(declare-fun m!2640447 () Bool)

(assert (=> d!657602 m!2640447))

(assert (=> b!2197088 d!657602))

(declare-fun d!657604 () Bool)

(declare-fun e!1404542 () Bool)

(assert (=> d!657604 e!1404542))

(declare-fun res!944667 () Bool)

(assert (=> d!657604 (=> (not res!944667) (not e!1404542))))

(declare-fun lt!822117 () Context!3510)

(declare-fun dynLambda!11448 (Int Context!3510) Bool)

(assert (=> d!657604 (= res!944667 (dynLambda!11448 lambda!82691 lt!822117))))

(declare-fun getWitness!512 (List!25660 Int) Context!3510)

(assert (=> d!657604 (= lt!822117 (getWitness!512 (toList!1258 z!3955) lambda!82691))))

(assert (=> d!657604 (exists!815 z!3955 lambda!82691)))

(assert (=> d!657604 (= (getWitness!510 z!3955 lambda!82691) lt!822117)))

(declare-fun b!2197821 () Bool)

(assert (=> b!2197821 (= e!1404542 (select z!3955 lt!822117))))

(assert (= (and d!657604 res!944667) b!2197821))

(declare-fun b_lambda!71169 () Bool)

(assert (=> (not b_lambda!71169) (not d!657604)))

(declare-fun m!2640449 () Bool)

(assert (=> d!657604 m!2640449))

(assert (=> d!657604 m!2639097))

(assert (=> d!657604 m!2639097))

(declare-fun m!2640451 () Bool)

(assert (=> d!657604 m!2640451))

(assert (=> d!657604 m!2639463))

(declare-fun m!2640453 () Bool)

(assert (=> b!2197821 m!2640453))

(assert (=> b!2197088 d!657604))

(assert (=> bm!132006 d!657152))

(assert (=> b!2197230 d!657560))

(declare-fun bs!449414 () Bool)

(declare-fun d!657606 () Bool)

(assert (= bs!449414 (and d!657606 d!657262)))

(declare-fun lambda!82745 () Int)

(assert (=> bs!449414 (not (= lambda!82745 lambda!82703))))

(declare-fun bs!449415 () Bool)

(assert (= bs!449415 (and d!657606 d!657450)))

(assert (=> bs!449415 (not (= lambda!82745 lambda!82732))))

(declare-fun bs!449416 () Bool)

(assert (= bs!449416 (and d!657606 b!2197282)))

(assert (=> bs!449416 (not (= lambda!82745 lambda!82704))))

(declare-fun bs!449417 () Bool)

(assert (= bs!449417 (and d!657606 d!657528)))

(assert (=> bs!449417 (= (= (ite c!350114 lambda!82704 lambda!82705) lambda!82703) (= lambda!82745 lambda!82735))))

(declare-fun bs!449418 () Bool)

(assert (= bs!449418 (and d!657606 b!2197283)))

(assert (=> bs!449418 (not (= lambda!82745 lambda!82705))))

(declare-fun bs!449419 () Bool)

(assert (= bs!449419 (and d!657606 d!657596)))

(assert (=> bs!449419 (= (= (ite c!350114 lambda!82704 lambda!82705) lambda!82654) (= lambda!82745 lambda!82741))))

(declare-fun bs!449420 () Bool)

(assert (= bs!449420 (and d!657606 d!657520)))

(assert (=> bs!449420 (not (= lambda!82745 lambda!82734))))

(declare-fun bs!449421 () Bool)

(assert (= bs!449421 (and d!657606 d!657022)))

(assert (=> bs!449421 (not (= lambda!82745 lambda!82635))))

(declare-fun bs!449422 () Bool)

(assert (= bs!449422 (and d!657606 d!657202)))

(assert (=> bs!449422 (= (= (ite c!350114 lambda!82704 lambda!82705) lambda!82648) (= lambda!82745 lambda!82696))))

(declare-fun bs!449423 () Bool)

(assert (= bs!449423 (and d!657606 b!2196711)))

(assert (=> bs!449423 (not (= lambda!82745 lambda!82649))))

(declare-fun bs!449424 () Bool)

(assert (= bs!449424 (and d!657606 b!2197790)))

(assert (=> bs!449424 (not (= lambda!82745 lambda!82739))))

(declare-fun bs!449425 () Bool)

(assert (= bs!449425 (and d!657606 d!657574)))

(assert (=> bs!449425 (not (= lambda!82745 lambda!82737))))

(declare-fun bs!449426 () Bool)

(assert (= bs!449426 (and d!657606 b!2197789)))

(assert (=> bs!449426 (not (= lambda!82745 lambda!82738))))

(declare-fun bs!449427 () Bool)

(assert (= bs!449427 (and d!657606 d!657118)))

(assert (=> bs!449427 (= (= (ite c!350114 lambda!82704 lambda!82705) lambda!82648) (= lambda!82745 lambda!82682))))

(declare-fun bs!449428 () Bool)

(assert (= bs!449428 (and d!657606 d!657576)))

(assert (=> bs!449428 (= (= (ite c!350114 lambda!82704 lambda!82705) lambda!82635) (= lambda!82745 lambda!82740))))

(declare-fun bs!449429 () Bool)

(assert (= bs!449429 (and d!657606 d!657218)))

(assert (=> bs!449429 (not (= lambda!82745 lambda!82698))))

(declare-fun bs!449430 () Bool)

(assert (= bs!449430 (and d!657606 b!2196712)))

(assert (=> bs!449430 (not (= lambda!82745 lambda!82650))))

(declare-fun bs!449431 () Bool)

(assert (= bs!449431 (and d!657606 d!657024)))

(assert (=> bs!449431 (not (= lambda!82745 lambda!82648))))

(declare-fun bs!449432 () Bool)

(assert (= bs!449432 (and d!657606 d!657134)))

(assert (=> bs!449432 (not (= lambda!82745 lambda!82691))))

(declare-fun bs!449433 () Bool)

(assert (= bs!449433 (and d!657606 d!657038)))

(assert (=> bs!449433 (not (= lambda!82745 lambda!82654))))

(declare-fun bs!449434 () Bool)

(assert (= bs!449434 (and d!657606 d!657126)))

(assert (=> bs!449434 (not (= lambda!82745 lambda!82684))))

(declare-fun bs!449435 () Bool)

(assert (= bs!449435 (and d!657606 d!657220)))

(assert (=> bs!449435 (= (= (ite c!350114 lambda!82704 lambda!82705) (ite c!349896 lambda!82649 lambda!82650)) (= lambda!82745 lambda!82701))))

(assert (=> d!657606 true))

(assert (=> d!657606 (< (dynLambda!11444 order!14811 (ite c!350114 lambda!82704 lambda!82705)) (dynLambda!11444 order!14811 lambda!82745))))

(assert (=> d!657606 (= (exists!816 (ite c!350114 lt!821973 lt!821969) (ite c!350114 lambda!82704 lambda!82705)) (not (forall!5232 (ite c!350114 lt!821973 lt!821969) lambda!82745)))))

(declare-fun bs!449436 () Bool)

(assert (= bs!449436 d!657606))

(declare-fun m!2640455 () Bool)

(assert (=> bs!449436 m!2640455))

(assert (=> bm!132011 d!657606))

(declare-fun bs!449437 () Bool)

(declare-fun d!657608 () Bool)

(assert (= bs!449437 (and d!657608 d!657262)))

(declare-fun lambda!82746 () Int)

(assert (=> bs!449437 (= lambda!82746 lambda!82703)))

(declare-fun bs!449438 () Bool)

(assert (= bs!449438 (and d!657608 d!657450)))

(assert (=> bs!449438 (not (= lambda!82746 lambda!82732))))

(declare-fun bs!449439 () Bool)

(assert (= bs!449439 (and d!657608 b!2197282)))

(assert (=> bs!449439 (not (= lambda!82746 lambda!82704))))

(declare-fun bs!449440 () Bool)

(assert (= bs!449440 (and d!657608 d!657528)))

(assert (=> bs!449440 (not (= lambda!82746 lambda!82735))))

(declare-fun bs!449441 () Bool)

(assert (= bs!449441 (and d!657608 b!2197283)))

(assert (=> bs!449441 (not (= lambda!82746 lambda!82705))))

(declare-fun bs!449442 () Bool)

(assert (= bs!449442 (and d!657608 d!657596)))

(assert (=> bs!449442 (not (= lambda!82746 lambda!82741))))

(declare-fun bs!449443 () Bool)

(assert (= bs!449443 (and d!657608 d!657520)))

(assert (=> bs!449443 (not (= lambda!82746 lambda!82734))))

(declare-fun bs!449444 () Bool)

(assert (= bs!449444 (and d!657608 d!657022)))

(assert (=> bs!449444 (not (= lambda!82746 lambda!82635))))

(declare-fun bs!449445 () Bool)

(assert (= bs!449445 (and d!657608 b!2196711)))

(assert (=> bs!449445 (not (= lambda!82746 lambda!82649))))

(declare-fun bs!449446 () Bool)

(assert (= bs!449446 (and d!657608 b!2197790)))

(assert (=> bs!449446 (not (= lambda!82746 lambda!82739))))

(declare-fun bs!449447 () Bool)

(assert (= bs!449447 (and d!657608 d!657574)))

(assert (=> bs!449447 (= lambda!82746 lambda!82737)))

(declare-fun bs!449448 () Bool)

(assert (= bs!449448 (and d!657608 b!2197789)))

(assert (=> bs!449448 (not (= lambda!82746 lambda!82738))))

(declare-fun bs!449449 () Bool)

(assert (= bs!449449 (and d!657608 d!657118)))

(assert (=> bs!449449 (not (= lambda!82746 lambda!82682))))

(declare-fun bs!449450 () Bool)

(assert (= bs!449450 (and d!657608 d!657576)))

(assert (=> bs!449450 (not (= lambda!82746 lambda!82740))))

(declare-fun bs!449451 () Bool)

(assert (= bs!449451 (and d!657608 d!657218)))

(assert (=> bs!449451 (not (= lambda!82746 lambda!82698))))

(declare-fun bs!449452 () Bool)

(assert (= bs!449452 (and d!657608 b!2196712)))

(assert (=> bs!449452 (not (= lambda!82746 lambda!82650))))

(declare-fun bs!449453 () Bool)

(assert (= bs!449453 (and d!657608 d!657024)))

(assert (=> bs!449453 (= lambda!82746 lambda!82648)))

(declare-fun bs!449454 () Bool)

(assert (= bs!449454 (and d!657608 d!657134)))

(assert (=> bs!449454 (not (= lambda!82746 lambda!82691))))

(declare-fun bs!449455 () Bool)

(assert (= bs!449455 (and d!657608 d!657038)))

(assert (=> bs!449455 (not (= lambda!82746 lambda!82654))))

(declare-fun bs!449456 () Bool)

(assert (= bs!449456 (and d!657608 d!657202)))

(assert (=> bs!449456 (not (= lambda!82746 lambda!82696))))

(declare-fun bs!449457 () Bool)

(assert (= bs!449457 (and d!657608 d!657606)))

(assert (=> bs!449457 (not (= lambda!82746 lambda!82745))))

(declare-fun bs!449458 () Bool)

(assert (= bs!449458 (and d!657608 d!657126)))

(assert (=> bs!449458 (not (= lambda!82746 lambda!82684))))

(declare-fun bs!449459 () Bool)

(assert (= bs!449459 (and d!657608 d!657220)))

(assert (=> bs!449459 (not (= lambda!82746 lambda!82701))))

(declare-fun bs!449460 () Bool)

(declare-fun b!2197822 () Bool)

(assert (= bs!449460 (and b!2197822 d!657262)))

(declare-fun lambda!82747 () Int)

(assert (=> bs!449460 (not (= lambda!82747 lambda!82703))))

(declare-fun bs!449461 () Bool)

(assert (= bs!449461 (and b!2197822 d!657450)))

(assert (=> bs!449461 (not (= lambda!82747 lambda!82732))))

(declare-fun bs!449462 () Bool)

(assert (= bs!449462 (and b!2197822 b!2197282)))

(assert (=> bs!449462 (= lambda!82747 lambda!82704)))

(declare-fun bs!449463 () Bool)

(assert (= bs!449463 (and b!2197822 d!657528)))

(assert (=> bs!449463 (not (= lambda!82747 lambda!82735))))

(declare-fun bs!449464 () Bool)

(assert (= bs!449464 (and b!2197822 b!2197283)))

(assert (=> bs!449464 (= lambda!82747 lambda!82705)))

(declare-fun bs!449465 () Bool)

(assert (= bs!449465 (and b!2197822 d!657596)))

(assert (=> bs!449465 (not (= lambda!82747 lambda!82741))))

(declare-fun bs!449466 () Bool)

(assert (= bs!449466 (and b!2197822 d!657520)))

(assert (=> bs!449466 (not (= lambda!82747 lambda!82734))))

(declare-fun bs!449467 () Bool)

(assert (= bs!449467 (and b!2197822 d!657022)))

(assert (=> bs!449467 (not (= lambda!82747 lambda!82635))))

(declare-fun bs!449468 () Bool)

(assert (= bs!449468 (and b!2197822 b!2196711)))

(assert (=> bs!449468 (= lambda!82747 lambda!82649)))

(declare-fun bs!449469 () Bool)

(assert (= bs!449469 (and b!2197822 b!2197790)))

(assert (=> bs!449469 (= lambda!82747 lambda!82739)))

(declare-fun bs!449470 () Bool)

(assert (= bs!449470 (and b!2197822 d!657574)))

(assert (=> bs!449470 (not (= lambda!82747 lambda!82737))))

(declare-fun bs!449471 () Bool)

(assert (= bs!449471 (and b!2197822 b!2197789)))

(assert (=> bs!449471 (= lambda!82747 lambda!82738)))

(declare-fun bs!449472 () Bool)

(assert (= bs!449472 (and b!2197822 d!657118)))

(assert (=> bs!449472 (not (= lambda!82747 lambda!82682))))

(declare-fun bs!449473 () Bool)

(assert (= bs!449473 (and b!2197822 d!657576)))

(assert (=> bs!449473 (not (= lambda!82747 lambda!82740))))

(declare-fun bs!449474 () Bool)

(assert (= bs!449474 (and b!2197822 d!657218)))

(assert (=> bs!449474 (not (= lambda!82747 lambda!82698))))

(declare-fun bs!449475 () Bool)

(assert (= bs!449475 (and b!2197822 b!2196712)))

(assert (=> bs!449475 (= lambda!82747 lambda!82650)))

(declare-fun bs!449476 () Bool)

(assert (= bs!449476 (and b!2197822 d!657024)))

(assert (=> bs!449476 (not (= lambda!82747 lambda!82648))))

(declare-fun bs!449477 () Bool)

(assert (= bs!449477 (and b!2197822 d!657608)))

(assert (=> bs!449477 (not (= lambda!82747 lambda!82746))))

(declare-fun bs!449478 () Bool)

(assert (= bs!449478 (and b!2197822 d!657134)))

(assert (=> bs!449478 (= lambda!82747 lambda!82691)))

(declare-fun bs!449479 () Bool)

(assert (= bs!449479 (and b!2197822 d!657038)))

(assert (=> bs!449479 (not (= lambda!82747 lambda!82654))))

(declare-fun bs!449480 () Bool)

(assert (= bs!449480 (and b!2197822 d!657202)))

(assert (=> bs!449480 (not (= lambda!82747 lambda!82696))))

(declare-fun bs!449481 () Bool)

(assert (= bs!449481 (and b!2197822 d!657606)))

(assert (=> bs!449481 (not (= lambda!82747 lambda!82745))))

(declare-fun bs!449482 () Bool)

(assert (= bs!449482 (and b!2197822 d!657126)))

(assert (=> bs!449482 (not (= lambda!82747 lambda!82684))))

(declare-fun bs!449483 () Bool)

(assert (= bs!449483 (and b!2197822 d!657220)))

(assert (=> bs!449483 (not (= lambda!82747 lambda!82701))))

(declare-fun bs!449484 () Bool)

(declare-fun b!2197823 () Bool)

(assert (= bs!449484 (and b!2197823 d!657262)))

(declare-fun lambda!82748 () Int)

(assert (=> bs!449484 (not (= lambda!82748 lambda!82703))))

(declare-fun bs!449485 () Bool)

(assert (= bs!449485 (and b!2197823 d!657450)))

(assert (=> bs!449485 (not (= lambda!82748 lambda!82732))))

(declare-fun bs!449486 () Bool)

(assert (= bs!449486 (and b!2197823 b!2197282)))

(assert (=> bs!449486 (= lambda!82748 lambda!82704)))

(declare-fun bs!449487 () Bool)

(assert (= bs!449487 (and b!2197823 d!657528)))

(assert (=> bs!449487 (not (= lambda!82748 lambda!82735))))

(declare-fun bs!449488 () Bool)

(assert (= bs!449488 (and b!2197823 b!2197822)))

(assert (=> bs!449488 (= lambda!82748 lambda!82747)))

(declare-fun bs!449489 () Bool)

(assert (= bs!449489 (and b!2197823 b!2197283)))

(assert (=> bs!449489 (= lambda!82748 lambda!82705)))

(declare-fun bs!449490 () Bool)

(assert (= bs!449490 (and b!2197823 d!657596)))

(assert (=> bs!449490 (not (= lambda!82748 lambda!82741))))

(declare-fun bs!449491 () Bool)

(assert (= bs!449491 (and b!2197823 d!657520)))

(assert (=> bs!449491 (not (= lambda!82748 lambda!82734))))

(declare-fun bs!449492 () Bool)

(assert (= bs!449492 (and b!2197823 d!657022)))

(assert (=> bs!449492 (not (= lambda!82748 lambda!82635))))

(declare-fun bs!449493 () Bool)

(assert (= bs!449493 (and b!2197823 b!2196711)))

(assert (=> bs!449493 (= lambda!82748 lambda!82649)))

(declare-fun bs!449494 () Bool)

(assert (= bs!449494 (and b!2197823 b!2197790)))

(assert (=> bs!449494 (= lambda!82748 lambda!82739)))

(declare-fun bs!449495 () Bool)

(assert (= bs!449495 (and b!2197823 d!657574)))

(assert (=> bs!449495 (not (= lambda!82748 lambda!82737))))

(declare-fun bs!449496 () Bool)

(assert (= bs!449496 (and b!2197823 b!2197789)))

(assert (=> bs!449496 (= lambda!82748 lambda!82738)))

(declare-fun bs!449497 () Bool)

(assert (= bs!449497 (and b!2197823 d!657118)))

(assert (=> bs!449497 (not (= lambda!82748 lambda!82682))))

(declare-fun bs!449498 () Bool)

(assert (= bs!449498 (and b!2197823 d!657576)))

(assert (=> bs!449498 (not (= lambda!82748 lambda!82740))))

(declare-fun bs!449499 () Bool)

(assert (= bs!449499 (and b!2197823 d!657218)))

(assert (=> bs!449499 (not (= lambda!82748 lambda!82698))))

(declare-fun bs!449500 () Bool)

(assert (= bs!449500 (and b!2197823 b!2196712)))

(assert (=> bs!449500 (= lambda!82748 lambda!82650)))

(declare-fun bs!449501 () Bool)

(assert (= bs!449501 (and b!2197823 d!657024)))

(assert (=> bs!449501 (not (= lambda!82748 lambda!82648))))

(declare-fun bs!449502 () Bool)

(assert (= bs!449502 (and b!2197823 d!657608)))

(assert (=> bs!449502 (not (= lambda!82748 lambda!82746))))

(declare-fun bs!449503 () Bool)

(assert (= bs!449503 (and b!2197823 d!657134)))

(assert (=> bs!449503 (= lambda!82748 lambda!82691)))

(declare-fun bs!449504 () Bool)

(assert (= bs!449504 (and b!2197823 d!657038)))

(assert (=> bs!449504 (not (= lambda!82748 lambda!82654))))

(declare-fun bs!449505 () Bool)

(assert (= bs!449505 (and b!2197823 d!657202)))

(assert (=> bs!449505 (not (= lambda!82748 lambda!82696))))

(declare-fun bs!449506 () Bool)

(assert (= bs!449506 (and b!2197823 d!657606)))

(assert (=> bs!449506 (not (= lambda!82748 lambda!82745))))

(declare-fun bs!449507 () Bool)

(assert (= bs!449507 (and b!2197823 d!657126)))

(assert (=> bs!449507 (not (= lambda!82748 lambda!82684))))

(declare-fun bs!449508 () Bool)

(assert (= bs!449508 (and b!2197823 d!657220)))

(assert (=> bs!449508 (not (= lambda!82748 lambda!82701))))

(declare-fun bm!132026 () Bool)

(declare-fun lt!822125 () List!25660)

(declare-fun c!350303 () Bool)

(declare-fun lt!822121 () List!25660)

(declare-fun call!132031 () Bool)

(assert (=> bm!132026 (= call!132031 (exists!816 (ite c!350303 lt!822125 lt!822121) (ite c!350303 lambda!82747 lambda!82748)))))

(declare-fun e!1404543 () Unit!38685)

(declare-fun Unit!38697 () Unit!38685)

(assert (=> b!2197822 (= e!1404543 Unit!38697)))

(declare-fun call!132032 () List!25660)

(assert (=> b!2197822 (= lt!822125 call!132032)))

(declare-fun lt!822120 () Unit!38685)

(assert (=> b!2197822 (= lt!822120 (lemmaNotForallThenExists!47 lt!822125 lambda!82746))))

(assert (=> b!2197822 call!132031))

(declare-fun lt!822124 () Unit!38685)

(assert (=> b!2197822 (= lt!822124 lt!822120)))

(declare-fun bm!132027 () Bool)

(assert (=> bm!132027 (= call!132032 (toList!1258 lt!821789))))

(declare-fun lt!822119 () Bool)

(assert (=> d!657608 (= lt!822119 (isEmpty!14588 (getLanguageWitness!141 lt!821789)))))

(assert (=> d!657608 (= lt!822119 (forall!5228 lt!821789 lambda!82746))))

(declare-fun lt!822123 () Unit!38685)

(assert (=> d!657608 (= lt!822123 e!1404543)))

(assert (=> d!657608 (= c!350303 (not (forall!5228 lt!821789 lambda!82746)))))

(assert (=> d!657608 (= (lostCauseZipper!301 lt!821789) lt!822119)))

(declare-fun Unit!38698 () Unit!38685)

(assert (=> b!2197823 (= e!1404543 Unit!38698)))

(assert (=> b!2197823 (= lt!822121 call!132032)))

(declare-fun lt!822122 () Unit!38685)

(assert (=> b!2197823 (= lt!822122 (lemmaForallThenNotExists!47 lt!822121 lambda!82746))))

(assert (=> b!2197823 (not call!132031)))

(declare-fun lt!822118 () Unit!38685)

(assert (=> b!2197823 (= lt!822118 lt!822122)))

(assert (= (and d!657608 c!350303) b!2197822))

(assert (= (and d!657608 (not c!350303)) b!2197823))

(assert (= (or b!2197822 b!2197823) bm!132026))

(assert (= (or b!2197822 b!2197823) bm!132027))

(declare-fun m!2640457 () Bool)

(assert (=> d!657608 m!2640457))

(assert (=> d!657608 m!2640457))

(declare-fun m!2640459 () Bool)

(assert (=> d!657608 m!2640459))

(declare-fun m!2640461 () Bool)

(assert (=> d!657608 m!2640461))

(assert (=> d!657608 m!2640461))

(assert (=> bm!132027 m!2640211))

(declare-fun m!2640463 () Bool)

(assert (=> bm!132026 m!2640463))

(declare-fun m!2640465 () Bool)

(assert (=> b!2197823 m!2640465))

(declare-fun m!2640467 () Bool)

(assert (=> b!2197822 m!2640467))

(assert (=> b!2197204 d!657608))

(declare-fun d!657610 () Bool)

(declare-fun c!350304 () Bool)

(assert (=> d!657610 (= c!350304 ((_ is Nil!25574) (t!198264 lt!821817)))))

(declare-fun e!1404544 () (InoxSet C!12516))

(assert (=> d!657610 (= (content!3472 (t!198264 lt!821817)) e!1404544)))

(declare-fun b!2197824 () Bool)

(assert (=> b!2197824 (= e!1404544 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197825 () Bool)

(assert (=> b!2197825 (= e!1404544 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 (t!198264 lt!821817)) true) (content!3472 (t!198264 (t!198264 lt!821817)))))))

(assert (= (and d!657610 c!350304) b!2197824))

(assert (= (and d!657610 (not c!350304)) b!2197825))

(declare-fun m!2640469 () Bool)

(assert (=> b!2197825 m!2640469))

(declare-fun m!2640471 () Bool)

(assert (=> b!2197825 m!2640471))

(assert (=> b!2197245 d!657610))

(declare-fun d!657612 () Bool)

(assert (=> d!657612 (= (isEmpty!14589 (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))) ((_ is Nil!25574) (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))))))

(assert (=> d!657182 d!657612))

(declare-fun d!657614 () Bool)

(declare-fun c!350305 () Bool)

(assert (=> d!657614 (= c!350305 ((_ is Node!8321) (left!19636 (left!19636 (c!349872 totalInput!923)))))))

(declare-fun e!1404545 () Bool)

(assert (=> d!657614 (= (inv!34276 (left!19636 (left!19636 (c!349872 totalInput!923)))) e!1404545)))

(declare-fun b!2197826 () Bool)

(assert (=> b!2197826 (= e!1404545 (inv!34279 (left!19636 (left!19636 (c!349872 totalInput!923)))))))

(declare-fun b!2197827 () Bool)

(declare-fun e!1404546 () Bool)

(assert (=> b!2197827 (= e!1404545 e!1404546)))

(declare-fun res!944668 () Bool)

(assert (=> b!2197827 (= res!944668 (not ((_ is Leaf!12181) (left!19636 (left!19636 (c!349872 totalInput!923))))))))

(assert (=> b!2197827 (=> res!944668 e!1404546)))

(declare-fun b!2197828 () Bool)

(assert (=> b!2197828 (= e!1404546 (inv!34280 (left!19636 (left!19636 (c!349872 totalInput!923)))))))

(assert (= (and d!657614 c!350305) b!2197826))

(assert (= (and d!657614 (not c!350305)) b!2197827))

(assert (= (and b!2197827 (not res!944668)) b!2197828))

(declare-fun m!2640473 () Bool)

(assert (=> b!2197826 m!2640473))

(declare-fun m!2640475 () Bool)

(assert (=> b!2197828 m!2640475))

(assert (=> b!2197321 d!657614))

(declare-fun d!657616 () Bool)

(declare-fun c!350306 () Bool)

(assert (=> d!657616 (= c!350306 ((_ is Node!8321) (right!19966 (left!19636 (c!349872 totalInput!923)))))))

(declare-fun e!1404547 () Bool)

(assert (=> d!657616 (= (inv!34276 (right!19966 (left!19636 (c!349872 totalInput!923)))) e!1404547)))

(declare-fun b!2197829 () Bool)

(assert (=> b!2197829 (= e!1404547 (inv!34279 (right!19966 (left!19636 (c!349872 totalInput!923)))))))

(declare-fun b!2197830 () Bool)

(declare-fun e!1404548 () Bool)

(assert (=> b!2197830 (= e!1404547 e!1404548)))

(declare-fun res!944669 () Bool)

(assert (=> b!2197830 (= res!944669 (not ((_ is Leaf!12181) (right!19966 (left!19636 (c!349872 totalInput!923))))))))

(assert (=> b!2197830 (=> res!944669 e!1404548)))

(declare-fun b!2197831 () Bool)

(assert (=> b!2197831 (= e!1404548 (inv!34280 (right!19966 (left!19636 (c!349872 totalInput!923)))))))

(assert (= (and d!657616 c!350306) b!2197829))

(assert (= (and d!657616 (not c!350306)) b!2197830))

(assert (= (and b!2197830 (not res!944669)) b!2197831))

(declare-fun m!2640477 () Bool)

(assert (=> b!2197829 m!2640477))

(declare-fun m!2640479 () Bool)

(assert (=> b!2197831 m!2640479))

(assert (=> b!2197321 d!657616))

(declare-fun d!657618 () Bool)

(declare-fun c!350307 () Bool)

(assert (=> d!657618 (= c!350307 ((_ is Nil!25574) lt!821899))))

(declare-fun e!1404549 () (InoxSet C!12516))

(assert (=> d!657618 (= (content!3472 lt!821899) e!1404549)))

(declare-fun b!2197832 () Bool)

(assert (=> b!2197832 (= e!1404549 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197833 () Bool)

(assert (=> b!2197833 (= e!1404549 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 lt!821899) true) (content!3472 (t!198264 lt!821899))))))

(assert (= (and d!657618 c!350307) b!2197832))

(assert (= (and d!657618 (not c!350307)) b!2197833))

(declare-fun m!2640481 () Bool)

(assert (=> b!2197833 m!2640481))

(declare-fun m!2640483 () Bool)

(assert (=> b!2197833 m!2640483))

(assert (=> d!657106 d!657618))

(declare-fun d!657620 () Bool)

(declare-fun c!350308 () Bool)

(assert (=> d!657620 (= c!350308 ((_ is Nil!25574) (t!198264 lt!821768)))))

(declare-fun e!1404550 () (InoxSet C!12516))

(assert (=> d!657620 (= (content!3472 (t!198264 lt!821768)) e!1404550)))

(declare-fun b!2197834 () Bool)

(assert (=> b!2197834 (= e!1404550 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197835 () Bool)

(assert (=> b!2197835 (= e!1404550 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 (t!198264 lt!821768)) true) (content!3472 (t!198264 (t!198264 lt!821768)))))))

(assert (= (and d!657620 c!350308) b!2197834))

(assert (= (and d!657620 (not c!350308)) b!2197835))

(declare-fun m!2640485 () Bool)

(assert (=> b!2197835 m!2640485))

(assert (=> b!2197835 m!2640313))

(assert (=> d!657106 d!657620))

(declare-fun d!657622 () Bool)

(declare-fun lt!822126 () Int)

(assert (=> d!657622 (>= lt!822126 0)))

(declare-fun e!1404551 () Int)

(assert (=> d!657622 (= lt!822126 e!1404551)))

(declare-fun c!350309 () Bool)

(assert (=> d!657622 (= c!350309 ((_ is Nil!25574) lt!821964))))

(assert (=> d!657622 (= (size!19938 lt!821964) lt!822126)))

(declare-fun b!2197836 () Bool)

(assert (=> b!2197836 (= e!1404551 0)))

(declare-fun b!2197837 () Bool)

(assert (=> b!2197837 (= e!1404551 (+ 1 (size!19938 (t!198264 lt!821964))))))

(assert (= (and d!657622 c!350309) b!2197836))

(assert (= (and d!657622 (not c!350309)) b!2197837))

(declare-fun m!2640487 () Bool)

(assert (=> b!2197837 m!2640487))

(assert (=> b!2197258 d!657622))

(declare-fun d!657624 () Bool)

(declare-fun c!350310 () Bool)

(assert (=> d!657624 (= c!350310 ((_ is Nil!25574) lt!821932))))

(declare-fun e!1404552 () (InoxSet C!12516))

(assert (=> d!657624 (= (content!3472 lt!821932) e!1404552)))

(declare-fun b!2197838 () Bool)

(assert (=> b!2197838 (= e!1404552 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197839 () Bool)

(assert (=> b!2197839 (= e!1404552 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 lt!821932) true) (content!3472 (t!198264 lt!821932))))))

(assert (= (and d!657624 c!350310) b!2197838))

(assert (= (and d!657624 (not c!350310)) b!2197839))

(declare-fun m!2640489 () Bool)

(assert (=> b!2197839 m!2640489))

(declare-fun m!2640491 () Bool)

(assert (=> b!2197839 m!2640491))

(assert (=> d!657162 d!657624))

(declare-fun d!657626 () Bool)

(declare-fun c!350311 () Bool)

(assert (=> d!657626 (= c!350311 ((_ is Nil!25574) (drop!1373 lt!821775 from!1114)))))

(declare-fun e!1404553 () (InoxSet C!12516))

(assert (=> d!657626 (= (content!3472 (drop!1373 lt!821775 from!1114)) e!1404553)))

(declare-fun b!2197840 () Bool)

(assert (=> b!2197840 (= e!1404553 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197841 () Bool)

(assert (=> b!2197841 (= e!1404553 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 (drop!1373 lt!821775 from!1114)) true) (content!3472 (t!198264 (drop!1373 lt!821775 from!1114)))))))

(assert (= (and d!657626 c!350311) b!2197840))

(assert (= (and d!657626 (not c!350311)) b!2197841))

(declare-fun m!2640493 () Bool)

(assert (=> b!2197841 m!2640493))

(declare-fun m!2640495 () Bool)

(assert (=> b!2197841 m!2640495))

(assert (=> d!657162 d!657626))

(declare-fun d!657628 () Bool)

(declare-fun lt!822127 () Int)

(assert (=> d!657628 (>= lt!822127 0)))

(declare-fun e!1404554 () Int)

(assert (=> d!657628 (= lt!822127 e!1404554)))

(declare-fun c!350312 () Bool)

(assert (=> d!657628 (= c!350312 ((_ is Nil!25574) lt!821933))))

(assert (=> d!657628 (= (size!19938 lt!821933) lt!822127)))

(declare-fun b!2197842 () Bool)

(assert (=> b!2197842 (= e!1404554 0)))

(declare-fun b!2197843 () Bool)

(assert (=> b!2197843 (= e!1404554 (+ 1 (size!19938 (t!198264 lt!821933))))))

(assert (= (and d!657628 c!350312) b!2197842))

(assert (= (and d!657628 (not c!350312)) b!2197843))

(declare-fun m!2640497 () Bool)

(assert (=> b!2197843 m!2640497))

(assert (=> b!2197140 d!657628))

(declare-fun d!657630 () Bool)

(declare-fun res!944674 () Bool)

(declare-fun e!1404559 () Bool)

(assert (=> d!657630 (=> res!944674 e!1404559)))

(assert (=> d!657630 (= res!944674 ((_ is Nil!25576) (ite c!349896 lt!821814 lt!821810)))))

(assert (=> d!657630 (= (forall!5232 (ite c!349896 lt!821814 lt!821810) lambda!82701) e!1404559)))

(declare-fun b!2197848 () Bool)

(declare-fun e!1404560 () Bool)

(assert (=> b!2197848 (= e!1404559 e!1404560)))

(declare-fun res!944675 () Bool)

(assert (=> b!2197848 (=> (not res!944675) (not e!1404560))))

(assert (=> b!2197848 (= res!944675 (dynLambda!11448 lambda!82701 (h!30977 (ite c!349896 lt!821814 lt!821810))))))

(declare-fun b!2197849 () Bool)

(assert (=> b!2197849 (= e!1404560 (forall!5232 (t!198266 (ite c!349896 lt!821814 lt!821810)) lambda!82701))))

(assert (= (and d!657630 (not res!944674)) b!2197848))

(assert (= (and b!2197848 res!944675) b!2197849))

(declare-fun b_lambda!71171 () Bool)

(assert (=> (not b_lambda!71171) (not b!2197848)))

(declare-fun m!2640499 () Bool)

(assert (=> b!2197848 m!2640499))

(declare-fun m!2640501 () Bool)

(assert (=> b!2197849 m!2640501))

(assert (=> d!657220 d!657630))

(assert (=> b!2197207 d!657058))

(declare-fun d!657632 () Bool)

(declare-fun lt!822128 () Int)

(assert (=> d!657632 (>= lt!822128 0)))

(declare-fun e!1404561 () Int)

(assert (=> d!657632 (= lt!822128 e!1404561)))

(declare-fun c!350313 () Bool)

(assert (=> d!657632 (= c!350313 ((_ is Nil!25574) lt!821963))))

(assert (=> d!657632 (= (size!19938 lt!821963) lt!822128)))

(declare-fun b!2197850 () Bool)

(assert (=> b!2197850 (= e!1404561 0)))

(declare-fun b!2197851 () Bool)

(assert (=> b!2197851 (= e!1404561 (+ 1 (size!19938 (t!198264 lt!821963))))))

(assert (= (and d!657632 c!350313) b!2197850))

(assert (= (and d!657632 (not c!350313)) b!2197851))

(declare-fun m!2640503 () Bool)

(assert (=> b!2197851 m!2640503))

(assert (=> b!2197249 d!657632))

(declare-fun b!2197870 () Bool)

(declare-fun e!1404582 () Bool)

(declare-fun e!1404578 () Bool)

(assert (=> b!2197870 (= e!1404582 e!1404578)))

(declare-fun res!944688 () Bool)

(assert (=> b!2197870 (=> (not res!944688) (not e!1404578))))

(declare-fun call!132039 () Bool)

(assert (=> b!2197870 (= res!944688 call!132039)))

(declare-fun bm!132034 () Bool)

(declare-fun c!350318 () Bool)

(assert (=> bm!132034 (= call!132039 (validRegex!2338 (ite c!350318 (regOne!12883 (h!30976 (exprs!2255 setElem!18830))) (regOne!12882 (h!30976 (exprs!2255 setElem!18830))))))))

(declare-fun b!2197871 () Bool)

(declare-fun call!132040 () Bool)

(assert (=> b!2197871 (= e!1404578 call!132040)))

(declare-fun b!2197872 () Bool)

(declare-fun res!944687 () Bool)

(assert (=> b!2197872 (=> res!944687 e!1404582)))

(assert (=> b!2197872 (= res!944687 (not ((_ is Concat!10487) (h!30976 (exprs!2255 setElem!18830)))))))

(declare-fun e!1404581 () Bool)

(assert (=> b!2197872 (= e!1404581 e!1404582)))

(declare-fun b!2197873 () Bool)

(declare-fun e!1404580 () Bool)

(assert (=> b!2197873 (= e!1404580 e!1404581)))

(assert (=> b!2197873 (= c!350318 ((_ is Union!6185) (h!30976 (exprs!2255 setElem!18830))))))

(declare-fun bm!132035 () Bool)

(declare-fun call!132041 () Bool)

(assert (=> bm!132035 (= call!132040 call!132041)))

(declare-fun b!2197875 () Bool)

(declare-fun e!1404579 () Bool)

(assert (=> b!2197875 (= e!1404580 e!1404579)))

(declare-fun res!944690 () Bool)

(declare-fun nullable!1716 (Regex!6185) Bool)

(assert (=> b!2197875 (= res!944690 (not (nullable!1716 (reg!6514 (h!30976 (exprs!2255 setElem!18830))))))))

(assert (=> b!2197875 (=> (not res!944690) (not e!1404579))))

(declare-fun b!2197876 () Bool)

(declare-fun e!1404576 () Bool)

(assert (=> b!2197876 (= e!1404576 e!1404580)))

(declare-fun c!350319 () Bool)

(assert (=> b!2197876 (= c!350319 ((_ is Star!6185) (h!30976 (exprs!2255 setElem!18830))))))

(declare-fun b!2197877 () Bool)

(declare-fun e!1404577 () Bool)

(assert (=> b!2197877 (= e!1404577 call!132040)))

(declare-fun bm!132036 () Bool)

(assert (=> bm!132036 (= call!132041 (validRegex!2338 (ite c!350319 (reg!6514 (h!30976 (exprs!2255 setElem!18830))) (ite c!350318 (regTwo!12883 (h!30976 (exprs!2255 setElem!18830))) (regTwo!12882 (h!30976 (exprs!2255 setElem!18830)))))))))

(declare-fun b!2197878 () Bool)

(assert (=> b!2197878 (= e!1404579 call!132041)))

(declare-fun d!657634 () Bool)

(declare-fun res!944689 () Bool)

(assert (=> d!657634 (=> res!944689 e!1404576)))

(assert (=> d!657634 (= res!944689 ((_ is ElementMatch!6185) (h!30976 (exprs!2255 setElem!18830))))))

(assert (=> d!657634 (= (validRegex!2338 (h!30976 (exprs!2255 setElem!18830))) e!1404576)))

(declare-fun b!2197874 () Bool)

(declare-fun res!944686 () Bool)

(assert (=> b!2197874 (=> (not res!944686) (not e!1404577))))

(assert (=> b!2197874 (= res!944686 call!132039)))

(assert (=> b!2197874 (= e!1404581 e!1404577)))

(assert (= (and d!657634 (not res!944689)) b!2197876))

(assert (= (and b!2197876 c!350319) b!2197875))

(assert (= (and b!2197876 (not c!350319)) b!2197873))

(assert (= (and b!2197875 res!944690) b!2197878))

(assert (= (and b!2197873 c!350318) b!2197874))

(assert (= (and b!2197873 (not c!350318)) b!2197872))

(assert (= (and b!2197874 res!944686) b!2197877))

(assert (= (and b!2197872 (not res!944687)) b!2197870))

(assert (= (and b!2197870 res!944688) b!2197871))

(assert (= (or b!2197877 b!2197871) bm!132035))

(assert (= (or b!2197874 b!2197870) bm!132034))

(assert (= (or b!2197878 bm!132035) bm!132036))

(declare-fun m!2640505 () Bool)

(assert (=> bm!132034 m!2640505))

(declare-fun m!2640507 () Bool)

(assert (=> b!2197875 m!2640507))

(declare-fun m!2640509 () Bool)

(assert (=> bm!132036 m!2640509))

(assert (=> bs!449134 d!657634))

(declare-fun b!2197879 () Bool)

(declare-fun res!944691 () Bool)

(declare-fun e!1404583 () Bool)

(assert (=> b!2197879 (=> (not res!944691) (not e!1404583))))

(assert (=> b!2197879 (= res!944691 (isBalanced!2564 (right!19966 (right!19966 (c!349872 totalInput!923)))))))

(declare-fun b!2197880 () Bool)

(declare-fun res!944692 () Bool)

(assert (=> b!2197880 (=> (not res!944692) (not e!1404583))))

(assert (=> b!2197880 (= res!944692 (isBalanced!2564 (left!19636 (right!19966 (c!349872 totalInput!923)))))))

(declare-fun b!2197881 () Bool)

(declare-fun res!944695 () Bool)

(assert (=> b!2197881 (=> (not res!944695) (not e!1404583))))

(assert (=> b!2197881 (= res!944695 (<= (- (height!1250 (left!19636 (right!19966 (c!349872 totalInput!923)))) (height!1250 (right!19966 (right!19966 (c!349872 totalInput!923))))) 1))))

(declare-fun b!2197882 () Bool)

(declare-fun res!944694 () Bool)

(assert (=> b!2197882 (=> (not res!944694) (not e!1404583))))

(assert (=> b!2197882 (= res!944694 (not (isEmpty!14592 (left!19636 (right!19966 (c!349872 totalInput!923))))))))

(declare-fun b!2197883 () Bool)

(assert (=> b!2197883 (= e!1404583 (not (isEmpty!14592 (right!19966 (right!19966 (c!349872 totalInput!923))))))))

(declare-fun b!2197884 () Bool)

(declare-fun e!1404584 () Bool)

(assert (=> b!2197884 (= e!1404584 e!1404583)))

(declare-fun res!944696 () Bool)

(assert (=> b!2197884 (=> (not res!944696) (not e!1404583))))

(assert (=> b!2197884 (= res!944696 (<= (- 1) (- (height!1250 (left!19636 (right!19966 (c!349872 totalInput!923)))) (height!1250 (right!19966 (right!19966 (c!349872 totalInput!923)))))))))

(declare-fun d!657636 () Bool)

(declare-fun res!944693 () Bool)

(assert (=> d!657636 (=> res!944693 e!1404584)))

(assert (=> d!657636 (= res!944693 (not ((_ is Node!8321) (right!19966 (c!349872 totalInput!923)))))))

(assert (=> d!657636 (= (isBalanced!2564 (right!19966 (c!349872 totalInput!923))) e!1404584)))

(assert (= (and d!657636 (not res!944693)) b!2197884))

(assert (= (and b!2197884 res!944696) b!2197881))

(assert (= (and b!2197881 res!944695) b!2197880))

(assert (= (and b!2197880 res!944692) b!2197879))

(assert (= (and b!2197879 res!944691) b!2197882))

(assert (= (and b!2197882 res!944694) b!2197883))

(declare-fun m!2640511 () Bool)

(assert (=> b!2197884 m!2640511))

(declare-fun m!2640513 () Bool)

(assert (=> b!2197884 m!2640513))

(declare-fun m!2640515 () Bool)

(assert (=> b!2197880 m!2640515))

(declare-fun m!2640517 () Bool)

(assert (=> b!2197882 m!2640517))

(declare-fun m!2640519 () Bool)

(assert (=> b!2197879 m!2640519))

(assert (=> b!2197881 m!2640511))

(assert (=> b!2197881 m!2640513))

(declare-fun m!2640521 () Bool)

(assert (=> b!2197883 m!2640521))

(assert (=> b!2197078 d!657636))

(declare-fun d!657638 () Bool)

(declare-fun c!350320 () Bool)

(assert (=> d!657638 (= c!350320 ((_ is Nil!25574) lt!821934))))

(declare-fun e!1404585 () (InoxSet C!12516))

(assert (=> d!657638 (= (content!3472 lt!821934) e!1404585)))

(declare-fun b!2197885 () Bool)

(assert (=> b!2197885 (= e!1404585 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197886 () Bool)

(assert (=> b!2197886 (= e!1404585 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 lt!821934) true) (content!3472 (t!198264 lt!821934))))))

(assert (= (and d!657638 c!350320) b!2197885))

(assert (= (and d!657638 (not c!350320)) b!2197886))

(declare-fun m!2640523 () Bool)

(assert (=> b!2197886 m!2640523))

(declare-fun m!2640525 () Bool)

(assert (=> b!2197886 m!2640525))

(assert (=> d!657168 d!657638))

(declare-fun d!657640 () Bool)

(declare-fun c!350321 () Bool)

(assert (=> d!657640 (= c!350321 ((_ is Nil!25574) (drop!1373 lt!821775 (+ from!1114 1))))))

(declare-fun e!1404586 () (InoxSet C!12516))

(assert (=> d!657640 (= (content!3472 (drop!1373 lt!821775 (+ from!1114 1))) e!1404586)))

(declare-fun b!2197887 () Bool)

(assert (=> b!2197887 (= e!1404586 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197888 () Bool)

(assert (=> b!2197888 (= e!1404586 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 (drop!1373 lt!821775 (+ from!1114 1))) true) (content!3472 (t!198264 (drop!1373 lt!821775 (+ from!1114 1))))))))

(assert (= (and d!657640 c!350321) b!2197887))

(assert (= (and d!657640 (not c!350321)) b!2197888))

(declare-fun m!2640527 () Bool)

(assert (=> b!2197888 m!2640527))

(assert (=> b!2197888 m!2640269))

(assert (=> d!657168 d!657640))

(declare-fun d!657642 () Bool)

(declare-fun c!350322 () Bool)

(assert (=> d!657642 (= c!350322 ((_ is Nil!25574) (t!198264 lt!821829)))))

(declare-fun e!1404587 () (InoxSet C!12516))

(assert (=> d!657642 (= (content!3472 (t!198264 lt!821829)) e!1404587)))

(declare-fun b!2197889 () Bool)

(assert (=> b!2197889 (= e!1404587 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197890 () Bool)

(assert (=> b!2197890 (= e!1404587 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 (t!198264 lt!821829)) true) (content!3472 (t!198264 (t!198264 lt!821829)))))))

(assert (= (and d!657642 c!350322) b!2197889))

(assert (= (and d!657642 (not c!350322)) b!2197890))

(declare-fun m!2640529 () Bool)

(assert (=> b!2197890 m!2640529))

(declare-fun m!2640531 () Bool)

(assert (=> b!2197890 m!2640531))

(assert (=> b!2197056 d!657642))

(declare-fun d!657644 () Bool)

(declare-fun lt!822129 () Int)

(assert (=> d!657644 (>= lt!822129 0)))

(declare-fun e!1404588 () Int)

(assert (=> d!657644 (= lt!822129 e!1404588)))

(declare-fun c!350323 () Bool)

(assert (=> d!657644 (= c!350323 ((_ is Nil!25574) lt!821974))))

(assert (=> d!657644 (= (size!19938 lt!821974) lt!822129)))

(declare-fun b!2197891 () Bool)

(assert (=> b!2197891 (= e!1404588 0)))

(declare-fun b!2197892 () Bool)

(assert (=> b!2197892 (= e!1404588 (+ 1 (size!19938 (t!198264 lt!821974))))))

(assert (= (and d!657644 c!350323) b!2197891))

(assert (= (and d!657644 (not c!350323)) b!2197892))

(declare-fun m!2640533 () Bool)

(assert (=> b!2197892 m!2640533))

(assert (=> b!2197285 d!657644))

(declare-fun d!657646 () Bool)

(declare-fun c!350324 () Bool)

(assert (=> d!657646 (= c!350324 ((_ is Nil!25574) lt!821949))))

(declare-fun e!1404589 () (InoxSet C!12516))

(assert (=> d!657646 (= (content!3472 lt!821949) e!1404589)))

(declare-fun b!2197893 () Bool)

(assert (=> b!2197893 (= e!1404589 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197894 () Bool)

(assert (=> b!2197894 (= e!1404589 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 lt!821949) true) (content!3472 (t!198264 lt!821949))))))

(assert (= (and d!657646 c!350324) b!2197893))

(assert (= (and d!657646 (not c!350324)) b!2197894))

(declare-fun m!2640535 () Bool)

(assert (=> b!2197894 m!2640535))

(declare-fun m!2640537 () Bool)

(assert (=> b!2197894 m!2640537))

(assert (=> d!657206 d!657646))

(assert (=> d!657206 d!657248))

(declare-fun b!2197895 () Bool)

(declare-fun e!1404592 () Int)

(assert (=> b!2197895 (= e!1404592 (size!19938 (t!198264 (t!198264 lt!821768))))))

(declare-fun b!2197896 () Bool)

(declare-fun e!1404590 () Bool)

(declare-fun lt!822130 () List!25658)

(declare-fun e!1404591 () Int)

(assert (=> b!2197896 (= e!1404590 (= (size!19938 lt!822130) e!1404591))))

(declare-fun c!350326 () Bool)

(assert (=> b!2197896 (= c!350326 (<= (- (- lt!821767 1) 1) 0))))

(declare-fun b!2197897 () Bool)

(assert (=> b!2197897 (= e!1404591 0)))

(declare-fun b!2197898 () Bool)

(assert (=> b!2197898 (= e!1404591 e!1404592)))

(declare-fun c!350327 () Bool)

(assert (=> b!2197898 (= c!350327 (>= (- (- lt!821767 1) 1) (size!19938 (t!198264 (t!198264 lt!821768)))))))

(declare-fun b!2197899 () Bool)

(declare-fun e!1404593 () List!25658)

(assert (=> b!2197899 (= e!1404593 (Cons!25574 (h!30975 (t!198264 (t!198264 lt!821768))) (take!363 (t!198264 (t!198264 (t!198264 lt!821768))) (- (- (- lt!821767 1) 1) 1))))))

(declare-fun b!2197900 () Bool)

(assert (=> b!2197900 (= e!1404592 (- (- lt!821767 1) 1))))

(declare-fun d!657648 () Bool)

(assert (=> d!657648 e!1404590))

(declare-fun res!944697 () Bool)

(assert (=> d!657648 (=> (not res!944697) (not e!1404590))))

(assert (=> d!657648 (= res!944697 (= ((_ map implies) (content!3472 lt!822130) (content!3472 (t!198264 (t!198264 lt!821768)))) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657648 (= lt!822130 e!1404593)))

(declare-fun c!350325 () Bool)

(assert (=> d!657648 (= c!350325 (or ((_ is Nil!25574) (t!198264 (t!198264 lt!821768))) (<= (- (- lt!821767 1) 1) 0)))))

(assert (=> d!657648 (= (take!363 (t!198264 (t!198264 lt!821768)) (- (- lt!821767 1) 1)) lt!822130)))

(declare-fun b!2197901 () Bool)

(assert (=> b!2197901 (= e!1404593 Nil!25574)))

(assert (= (and d!657648 c!350325) b!2197901))

(assert (= (and d!657648 (not c!350325)) b!2197899))

(assert (= (and d!657648 res!944697) b!2197896))

(assert (= (and b!2197896 c!350326) b!2197897))

(assert (= (and b!2197896 (not c!350326)) b!2197898))

(assert (= (and b!2197898 c!350327) b!2197895))

(assert (= (and b!2197898 (not c!350327)) b!2197900))

(assert (=> b!2197895 m!2640307))

(declare-fun m!2640539 () Bool)

(assert (=> b!2197896 m!2640539))

(declare-fun m!2640541 () Bool)

(assert (=> d!657648 m!2640541))

(assert (=> d!657648 m!2640313))

(declare-fun m!2640543 () Bool)

(assert (=> b!2197899 m!2640543))

(assert (=> b!2197898 m!2640307))

(assert (=> b!2197034 d!657648))

(declare-fun b!2197902 () Bool)

(declare-fun e!1404596 () Int)

(assert (=> b!2197902 (= e!1404596 (size!19938 (t!198264 (drop!1373 lt!821775 from!1114))))))

(declare-fun b!2197903 () Bool)

(declare-fun e!1404594 () Bool)

(declare-fun lt!822131 () List!25658)

(declare-fun e!1404595 () Int)

(assert (=> b!2197903 (= e!1404594 (= (size!19938 lt!822131) e!1404595))))

(declare-fun c!350329 () Bool)

(assert (=> b!2197903 (= c!350329 (<= (- (+ 0 1) 1) 0))))

(declare-fun b!2197904 () Bool)

(assert (=> b!2197904 (= e!1404595 0)))

(declare-fun b!2197905 () Bool)

(assert (=> b!2197905 (= e!1404595 e!1404596)))

(declare-fun c!350330 () Bool)

(assert (=> b!2197905 (= c!350330 (>= (- (+ 0 1) 1) (size!19938 (t!198264 (drop!1373 lt!821775 from!1114)))))))

(declare-fun b!2197906 () Bool)

(declare-fun e!1404597 () List!25658)

(assert (=> b!2197906 (= e!1404597 (Cons!25574 (h!30975 (t!198264 (drop!1373 lt!821775 from!1114))) (take!363 (t!198264 (t!198264 (drop!1373 lt!821775 from!1114))) (- (- (+ 0 1) 1) 1))))))

(declare-fun b!2197907 () Bool)

(assert (=> b!2197907 (= e!1404596 (- (+ 0 1) 1))))

(declare-fun d!657650 () Bool)

(assert (=> d!657650 e!1404594))

(declare-fun res!944698 () Bool)

(assert (=> d!657650 (=> (not res!944698) (not e!1404594))))

(assert (=> d!657650 (= res!944698 (= ((_ map implies) (content!3472 lt!822131) (content!3472 (t!198264 (drop!1373 lt!821775 from!1114)))) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657650 (= lt!822131 e!1404597)))

(declare-fun c!350328 () Bool)

(assert (=> d!657650 (= c!350328 (or ((_ is Nil!25574) (t!198264 (drop!1373 lt!821775 from!1114))) (<= (- (+ 0 1) 1) 0)))))

(assert (=> d!657650 (= (take!363 (t!198264 (drop!1373 lt!821775 from!1114)) (- (+ 0 1) 1)) lt!822131)))

(declare-fun b!2197908 () Bool)

(assert (=> b!2197908 (= e!1404597 Nil!25574)))

(assert (= (and d!657650 c!350328) b!2197908))

(assert (= (and d!657650 (not c!350328)) b!2197906))

(assert (= (and d!657650 res!944698) b!2197903))

(assert (= (and b!2197903 c!350329) b!2197904))

(assert (= (and b!2197903 (not c!350329)) b!2197905))

(assert (= (and b!2197905 c!350330) b!2197902))

(assert (= (and b!2197905 (not c!350330)) b!2197907))

(assert (=> b!2197902 m!2640385))

(declare-fun m!2640545 () Bool)

(assert (=> b!2197903 m!2640545))

(declare-fun m!2640547 () Bool)

(assert (=> d!657650 m!2640547))

(assert (=> d!657650 m!2640495))

(declare-fun m!2640549 () Bool)

(assert (=> b!2197906 m!2640549))

(assert (=> b!2197905 m!2640385))

(assert (=> b!2197136 d!657650))

(declare-fun b!2197909 () Bool)

(declare-fun e!1404601 () List!25658)

(assert (=> b!2197909 (= e!1404601 (drop!1373 (t!198264 (t!198264 (t!198264 lt!821775))) (- (- (- from!1114 1) 1) 1)))))

(declare-fun b!2197910 () Bool)

(declare-fun e!1404600 () Bool)

(declare-fun lt!822132 () List!25658)

(declare-fun e!1404602 () Int)

(assert (=> b!2197910 (= e!1404600 (= (size!19938 lt!822132) e!1404602))))

(declare-fun c!350333 () Bool)

(assert (=> b!2197910 (= c!350333 (<= (- (- from!1114 1) 1) 0))))

(declare-fun b!2197911 () Bool)

(declare-fun e!1404599 () Int)

(declare-fun call!132042 () Int)

(assert (=> b!2197911 (= e!1404599 (- call!132042 (- (- from!1114 1) 1)))))

(declare-fun b!2197912 () Bool)

(declare-fun e!1404598 () List!25658)

(assert (=> b!2197912 (= e!1404598 e!1404601)))

(declare-fun c!350331 () Bool)

(assert (=> b!2197912 (= c!350331 (<= (- (- from!1114 1) 1) 0))))

(declare-fun bm!132037 () Bool)

(assert (=> bm!132037 (= call!132042 (size!19938 (t!198264 (t!198264 lt!821775))))))

(declare-fun b!2197914 () Bool)

(assert (=> b!2197914 (= e!1404602 e!1404599)))

(declare-fun c!350332 () Bool)

(assert (=> b!2197914 (= c!350332 (>= (- (- from!1114 1) 1) call!132042))))

(declare-fun b!2197915 () Bool)

(assert (=> b!2197915 (= e!1404599 0)))

(declare-fun b!2197916 () Bool)

(assert (=> b!2197916 (= e!1404598 Nil!25574)))

(declare-fun b!2197917 () Bool)

(assert (=> b!2197917 (= e!1404601 (t!198264 (t!198264 lt!821775)))))

(declare-fun d!657652 () Bool)

(assert (=> d!657652 e!1404600))

(declare-fun res!944699 () Bool)

(assert (=> d!657652 (=> (not res!944699) (not e!1404600))))

(assert (=> d!657652 (= res!944699 (= ((_ map implies) (content!3472 lt!822132) (content!3472 (t!198264 (t!198264 lt!821775)))) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657652 (= lt!822132 e!1404598)))

(declare-fun c!350334 () Bool)

(assert (=> d!657652 (= c!350334 ((_ is Nil!25574) (t!198264 (t!198264 lt!821775))))))

(assert (=> d!657652 (= (drop!1373 (t!198264 (t!198264 lt!821775)) (- (- from!1114 1) 1)) lt!822132)))

(declare-fun b!2197913 () Bool)

(assert (=> b!2197913 (= e!1404602 call!132042)))

(assert (= (and d!657652 c!350334) b!2197916))

(assert (= (and d!657652 (not c!350334)) b!2197912))

(assert (= (and b!2197912 c!350331) b!2197917))

(assert (= (and b!2197912 (not c!350331)) b!2197909))

(assert (= (and d!657652 res!944699) b!2197910))

(assert (= (and b!2197910 c!350333) b!2197913))

(assert (= (and b!2197910 (not c!350333)) b!2197914))

(assert (= (and b!2197914 c!350332) b!2197915))

(assert (= (and b!2197914 (not c!350332)) b!2197911))

(assert (= (or b!2197913 b!2197914 b!2197911) bm!132037))

(declare-fun m!2640551 () Bool)

(assert (=> b!2197909 m!2640551))

(declare-fun m!2640553 () Bool)

(assert (=> b!2197910 m!2640553))

(assert (=> bm!132037 m!2640141))

(declare-fun m!2640555 () Bool)

(assert (=> d!657652 m!2640555))

(assert (=> d!657652 m!2640153))

(assert (=> b!2197273 d!657652))

(declare-fun d!657654 () Bool)

(declare-fun c!350335 () Bool)

(assert (=> d!657654 (= c!350335 ((_ is Node!8321) (left!19636 (right!19966 (c!349872 totalInput!923)))))))

(declare-fun e!1404603 () Bool)

(assert (=> d!657654 (= (inv!34276 (left!19636 (right!19966 (c!349872 totalInput!923)))) e!1404603)))

(declare-fun b!2197918 () Bool)

(assert (=> b!2197918 (= e!1404603 (inv!34279 (left!19636 (right!19966 (c!349872 totalInput!923)))))))

(declare-fun b!2197919 () Bool)

(declare-fun e!1404604 () Bool)

(assert (=> b!2197919 (= e!1404603 e!1404604)))

(declare-fun res!944700 () Bool)

(assert (=> b!2197919 (= res!944700 (not ((_ is Leaf!12181) (left!19636 (right!19966 (c!349872 totalInput!923))))))))

(assert (=> b!2197919 (=> res!944700 e!1404604)))

(declare-fun b!2197920 () Bool)

(assert (=> b!2197920 (= e!1404604 (inv!34280 (left!19636 (right!19966 (c!349872 totalInput!923)))))))

(assert (= (and d!657654 c!350335) b!2197918))

(assert (= (and d!657654 (not c!350335)) b!2197919))

(assert (= (and b!2197919 (not res!944700)) b!2197920))

(declare-fun m!2640557 () Bool)

(assert (=> b!2197918 m!2640557))

(declare-fun m!2640559 () Bool)

(assert (=> b!2197920 m!2640559))

(assert (=> b!2197324 d!657654))

(declare-fun d!657656 () Bool)

(declare-fun c!350336 () Bool)

(assert (=> d!657656 (= c!350336 ((_ is Node!8321) (right!19966 (right!19966 (c!349872 totalInput!923)))))))

(declare-fun e!1404605 () Bool)

(assert (=> d!657656 (= (inv!34276 (right!19966 (right!19966 (c!349872 totalInput!923)))) e!1404605)))

(declare-fun b!2197921 () Bool)

(assert (=> b!2197921 (= e!1404605 (inv!34279 (right!19966 (right!19966 (c!349872 totalInput!923)))))))

(declare-fun b!2197922 () Bool)

(declare-fun e!1404606 () Bool)

(assert (=> b!2197922 (= e!1404605 e!1404606)))

(declare-fun res!944701 () Bool)

(assert (=> b!2197922 (= res!944701 (not ((_ is Leaf!12181) (right!19966 (right!19966 (c!349872 totalInput!923))))))))

(assert (=> b!2197922 (=> res!944701 e!1404606)))

(declare-fun b!2197923 () Bool)

(assert (=> b!2197923 (= e!1404606 (inv!34280 (right!19966 (right!19966 (c!349872 totalInput!923)))))))

(assert (= (and d!657656 c!350336) b!2197921))

(assert (= (and d!657656 (not c!350336)) b!2197922))

(assert (= (and b!2197922 (not res!944701)) b!2197923))

(declare-fun m!2640561 () Bool)

(assert (=> b!2197921 m!2640561))

(declare-fun m!2640563 () Bool)

(assert (=> b!2197923 m!2640563))

(assert (=> b!2197324 d!657656))

(assert (=> b!2197187 d!657022))

(declare-fun d!657658 () Bool)

(declare-fun res!944702 () Bool)

(declare-fun e!1404607 () Bool)

(assert (=> d!657658 (=> (not res!944702) (not e!1404607))))

(assert (=> d!657658 (= res!944702 (= (csize!16872 (left!19636 (c!349872 totalInput!923))) (+ (size!19941 (left!19636 (left!19636 (c!349872 totalInput!923)))) (size!19941 (right!19966 (left!19636 (c!349872 totalInput!923)))))))))

(assert (=> d!657658 (= (inv!34279 (left!19636 (c!349872 totalInput!923))) e!1404607)))

(declare-fun b!2197924 () Bool)

(declare-fun res!944703 () Bool)

(assert (=> b!2197924 (=> (not res!944703) (not e!1404607))))

(assert (=> b!2197924 (= res!944703 (and (not (= (left!19636 (left!19636 (c!349872 totalInput!923))) Empty!8321)) (not (= (right!19966 (left!19636 (c!349872 totalInput!923))) Empty!8321))))))

(declare-fun b!2197925 () Bool)

(declare-fun res!944704 () Bool)

(assert (=> b!2197925 (=> (not res!944704) (not e!1404607))))

(assert (=> b!2197925 (= res!944704 (= (cheight!8532 (left!19636 (c!349872 totalInput!923))) (+ (max!0 (height!1250 (left!19636 (left!19636 (c!349872 totalInput!923)))) (height!1250 (right!19966 (left!19636 (c!349872 totalInput!923))))) 1)))))

(declare-fun b!2197926 () Bool)

(assert (=> b!2197926 (= e!1404607 (<= 0 (cheight!8532 (left!19636 (c!349872 totalInput!923)))))))

(assert (= (and d!657658 res!944702) b!2197924))

(assert (= (and b!2197924 res!944703) b!2197925))

(assert (= (and b!2197925 res!944704) b!2197926))

(declare-fun m!2640565 () Bool)

(assert (=> d!657658 m!2640565))

(declare-fun m!2640567 () Bool)

(assert (=> d!657658 m!2640567))

(declare-fun m!2640569 () Bool)

(assert (=> b!2197925 m!2640569))

(declare-fun m!2640571 () Bool)

(assert (=> b!2197925 m!2640571))

(assert (=> b!2197925 m!2640569))

(assert (=> b!2197925 m!2640571))

(declare-fun m!2640573 () Bool)

(assert (=> b!2197925 m!2640573))

(assert (=> b!2197196 d!657658))

(declare-fun b!2197927 () Bool)

(declare-fun e!1404611 () List!25658)

(assert (=> b!2197927 (= e!1404611 (drop!1373 (t!198264 (t!198264 (t!198264 (list!9835 totalInput!923)))) (- (- (- (+ 1 from!1114) 1) 1) 1)))))

(declare-fun b!2197928 () Bool)

(declare-fun e!1404610 () Bool)

(declare-fun lt!822133 () List!25658)

(declare-fun e!1404612 () Int)

(assert (=> b!2197928 (= e!1404610 (= (size!19938 lt!822133) e!1404612))))

(declare-fun c!350339 () Bool)

(assert (=> b!2197928 (= c!350339 (<= (- (- (+ 1 from!1114) 1) 1) 0))))

(declare-fun b!2197929 () Bool)

(declare-fun e!1404609 () Int)

(declare-fun call!132043 () Int)

(assert (=> b!2197929 (= e!1404609 (- call!132043 (- (- (+ 1 from!1114) 1) 1)))))

(declare-fun b!2197930 () Bool)

(declare-fun e!1404608 () List!25658)

(assert (=> b!2197930 (= e!1404608 e!1404611)))

(declare-fun c!350337 () Bool)

(assert (=> b!2197930 (= c!350337 (<= (- (- (+ 1 from!1114) 1) 1) 0))))

(declare-fun bm!132038 () Bool)

(assert (=> bm!132038 (= call!132043 (size!19938 (t!198264 (t!198264 (list!9835 totalInput!923)))))))

(declare-fun b!2197932 () Bool)

(assert (=> b!2197932 (= e!1404612 e!1404609)))

(declare-fun c!350338 () Bool)

(assert (=> b!2197932 (= c!350338 (>= (- (- (+ 1 from!1114) 1) 1) call!132043))))

(declare-fun b!2197933 () Bool)

(assert (=> b!2197933 (= e!1404609 0)))

(declare-fun b!2197934 () Bool)

(assert (=> b!2197934 (= e!1404608 Nil!25574)))

(declare-fun b!2197935 () Bool)

(assert (=> b!2197935 (= e!1404611 (t!198264 (t!198264 (list!9835 totalInput!923))))))

(declare-fun d!657660 () Bool)

(assert (=> d!657660 e!1404610))

(declare-fun res!944705 () Bool)

(assert (=> d!657660 (=> (not res!944705) (not e!1404610))))

(assert (=> d!657660 (= res!944705 (= ((_ map implies) (content!3472 lt!822133) (content!3472 (t!198264 (t!198264 (list!9835 totalInput!923))))) ((as const (InoxSet C!12516)) true)))))

(assert (=> d!657660 (= lt!822133 e!1404608)))

(declare-fun c!350340 () Bool)

(assert (=> d!657660 (= c!350340 ((_ is Nil!25574) (t!198264 (t!198264 (list!9835 totalInput!923)))))))

(assert (=> d!657660 (= (drop!1373 (t!198264 (t!198264 (list!9835 totalInput!923))) (- (- (+ 1 from!1114) 1) 1)) lt!822133)))

(declare-fun b!2197931 () Bool)

(assert (=> b!2197931 (= e!1404612 call!132043)))

(assert (= (and d!657660 c!350340) b!2197934))

(assert (= (and d!657660 (not c!350340)) b!2197930))

(assert (= (and b!2197930 c!350337) b!2197935))

(assert (= (and b!2197930 (not c!350337)) b!2197927))

(assert (= (and d!657660 res!944705) b!2197928))

(assert (= (and b!2197928 c!350339) b!2197931))

(assert (= (and b!2197928 (not c!350339)) b!2197932))

(assert (= (and b!2197932 c!350338) b!2197933))

(assert (= (and b!2197932 (not c!350338)) b!2197929))

(assert (= (or b!2197931 b!2197932 b!2197929) bm!132038))

(declare-fun m!2640575 () Bool)

(assert (=> b!2197927 m!2640575))

(declare-fun m!2640577 () Bool)

(assert (=> b!2197928 m!2640577))

(declare-fun m!2640579 () Bool)

(assert (=> bm!132038 m!2640579))

(declare-fun m!2640581 () Bool)

(assert (=> d!657660 m!2640581))

(assert (=> d!657660 m!2640325))

(assert (=> b!2197111 d!657660))

(assert (=> b!2197247 d!657486))

(declare-fun bs!449509 () Bool)

(declare-fun d!657662 () Bool)

(assert (= bs!449509 (and d!657662 d!657026)))

(declare-fun lambda!82749 () Int)

(assert (=> bs!449509 (= lambda!82749 lambda!82653)))

(declare-fun bs!449510 () Bool)

(assert (= bs!449510 (and d!657662 d!657194)))

(assert (=> bs!449510 (= lambda!82749 lambda!82693)))

(declare-fun bs!449511 () Bool)

(assert (= bs!449511 (and d!657662 d!657602)))

(assert (=> bs!449511 (not (= lambda!82749 lambda!82744))))

(assert (=> d!657662 (= (inv!34278 setElem!18837) (forall!5229 (exprs!2255 setElem!18837) lambda!82749))))

(declare-fun bs!449512 () Bool)

(assert (= bs!449512 d!657662))

(declare-fun m!2640583 () Bool)

(assert (=> bs!449512 m!2640583))

(assert (=> setNonEmpty!18837 d!657662))

(declare-fun d!657664 () Bool)

(assert (=> d!657664 (= (flatMap!153 z!3955 lambda!82683) (choose!13010 z!3955 lambda!82683))))

(declare-fun bs!449513 () Bool)

(assert (= bs!449513 d!657664))

(declare-fun m!2640585 () Bool)

(assert (=> bs!449513 m!2640585))

(assert (=> d!657124 d!657664))

(declare-fun d!657666 () Bool)

(declare-fun c!350341 () Bool)

(assert (=> d!657666 (= c!350341 ((_ is Nil!25574) (t!198264 lt!821820)))))

(declare-fun e!1404613 () (InoxSet C!12516))

(assert (=> d!657666 (= (content!3472 (t!198264 lt!821820)) e!1404613)))

(declare-fun b!2197936 () Bool)

(assert (=> b!2197936 (= e!1404613 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197937 () Bool)

(assert (=> b!2197937 (= e!1404613 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 (t!198264 lt!821820)) true) (content!3472 (t!198264 (t!198264 lt!821820)))))))

(assert (= (and d!657666 c!350341) b!2197936))

(assert (= (and d!657666 (not c!350341)) b!2197937))

(declare-fun m!2640587 () Bool)

(assert (=> b!2197937 m!2640587))

(declare-fun m!2640589 () Bool)

(assert (=> b!2197937 m!2640589))

(assert (=> b!2197123 d!657666))

(declare-fun d!657668 () Bool)

(declare-fun c!350342 () Bool)

(assert (=> d!657668 (= c!350342 ((_ is Nil!25574) lt!821964))))

(declare-fun e!1404614 () (InoxSet C!12516))

(assert (=> d!657668 (= (content!3472 lt!821964) e!1404614)))

(declare-fun b!2197938 () Bool)

(assert (=> b!2197938 (= e!1404614 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197939 () Bool)

(assert (=> b!2197939 (= e!1404614 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 lt!821964) true) (content!3472 (t!198264 lt!821964))))))

(assert (= (and d!657668 c!350342) b!2197938))

(assert (= (and d!657668 (not c!350342)) b!2197939))

(declare-fun m!2640591 () Bool)

(assert (=> b!2197939 m!2640591))

(declare-fun m!2640593 () Bool)

(assert (=> b!2197939 m!2640593))

(assert (=> d!657256 d!657668))

(assert (=> d!657256 d!657620))

(assert (=> b!2197030 d!657532))

(declare-fun d!657670 () Bool)

(declare-fun lt!822134 () Bool)

(assert (=> d!657670 (= lt!822134 (isEmpty!14589 (list!9836 (right!19966 (c!349872 totalInput!923)))))))

(assert (=> d!657670 (= lt!822134 (= (size!19941 (right!19966 (c!349872 totalInput!923))) 0))))

(assert (=> d!657670 (= (isEmpty!14592 (right!19966 (c!349872 totalInput!923))) lt!822134)))

(declare-fun bs!449514 () Bool)

(assert (= bs!449514 d!657670))

(assert (=> bs!449514 m!2639483))

(assert (=> bs!449514 m!2639483))

(declare-fun m!2640595 () Bool)

(assert (=> bs!449514 m!2640595))

(assert (=> bs!449514 m!2639717))

(assert (=> b!2197082 d!657670))

(declare-fun d!657672 () Bool)

(declare-fun lt!822135 () Bool)

(assert (=> d!657672 (= lt!822135 (select (content!3472 (list!9835 totalInput!923)) lt!821953))))

(declare-fun e!1404616 () Bool)

(assert (=> d!657672 (= lt!822135 e!1404616)))

(declare-fun res!944707 () Bool)

(assert (=> d!657672 (=> (not res!944707) (not e!1404616))))

(assert (=> d!657672 (= res!944707 ((_ is Cons!25574) (list!9835 totalInput!923)))))

(assert (=> d!657672 (= (contains!4281 (list!9835 totalInput!923) lt!821953) lt!822135)))

(declare-fun b!2197940 () Bool)

(declare-fun e!1404615 () Bool)

(assert (=> b!2197940 (= e!1404616 e!1404615)))

(declare-fun res!944706 () Bool)

(assert (=> b!2197940 (=> res!944706 e!1404615)))

(assert (=> b!2197940 (= res!944706 (= (h!30975 (list!9835 totalInput!923)) lt!821953))))

(declare-fun b!2197941 () Bool)

(assert (=> b!2197941 (= e!1404615 (contains!4281 (t!198264 (list!9835 totalInput!923)) lt!821953))))

(assert (= (and d!657672 res!944707) b!2197940))

(assert (= (and b!2197940 (not res!944706)) b!2197941))

(assert (=> d!657672 m!2639029))

(assert (=> d!657672 m!2639139))

(declare-fun m!2640597 () Bool)

(assert (=> d!657672 m!2640597))

(declare-fun m!2640599 () Bool)

(assert (=> b!2197941 m!2640599))

(assert (=> d!657222 d!657672))

(declare-fun d!657674 () Bool)

(assert (=> d!657674 (= (isEmpty!14588 (getLanguageWitness!141 lt!821776)) (not ((_ is Some!5021) (getLanguageWitness!141 lt!821776))))))

(assert (=> d!657262 d!657674))

(declare-fun bs!449515 () Bool)

(declare-fun d!657676 () Bool)

(assert (= bs!449515 (and d!657676 d!657262)))

(declare-fun lambda!82750 () Int)

(assert (=> bs!449515 (not (= lambda!82750 lambda!82703))))

(declare-fun bs!449516 () Bool)

(assert (= bs!449516 (and d!657676 d!657450)))

(assert (=> bs!449516 (not (= lambda!82750 lambda!82732))))

(declare-fun bs!449517 () Bool)

(assert (= bs!449517 (and d!657676 b!2197282)))

(assert (=> bs!449517 (= lambda!82750 lambda!82704)))

(declare-fun bs!449518 () Bool)

(assert (= bs!449518 (and d!657676 d!657528)))

(assert (=> bs!449518 (not (= lambda!82750 lambda!82735))))

(declare-fun bs!449519 () Bool)

(assert (= bs!449519 (and d!657676 b!2197822)))

(assert (=> bs!449519 (= lambda!82750 lambda!82747)))

(declare-fun bs!449520 () Bool)

(assert (= bs!449520 (and d!657676 b!2197283)))

(assert (=> bs!449520 (= lambda!82750 lambda!82705)))

(declare-fun bs!449521 () Bool)

(assert (= bs!449521 (and d!657676 d!657596)))

(assert (=> bs!449521 (not (= lambda!82750 lambda!82741))))

(declare-fun bs!449522 () Bool)

(assert (= bs!449522 (and d!657676 d!657520)))

(assert (=> bs!449522 (not (= lambda!82750 lambda!82734))))

(declare-fun bs!449523 () Bool)

(assert (= bs!449523 (and d!657676 b!2196711)))

(assert (=> bs!449523 (= lambda!82750 lambda!82649)))

(declare-fun bs!449524 () Bool)

(assert (= bs!449524 (and d!657676 b!2197790)))

(assert (=> bs!449524 (= lambda!82750 lambda!82739)))

(declare-fun bs!449525 () Bool)

(assert (= bs!449525 (and d!657676 d!657574)))

(assert (=> bs!449525 (not (= lambda!82750 lambda!82737))))

(declare-fun bs!449526 () Bool)

(assert (= bs!449526 (and d!657676 b!2197789)))

(assert (=> bs!449526 (= lambda!82750 lambda!82738)))

(declare-fun bs!449527 () Bool)

(assert (= bs!449527 (and d!657676 d!657118)))

(assert (=> bs!449527 (not (= lambda!82750 lambda!82682))))

(declare-fun bs!449528 () Bool)

(assert (= bs!449528 (and d!657676 d!657576)))

(assert (=> bs!449528 (not (= lambda!82750 lambda!82740))))

(declare-fun bs!449529 () Bool)

(assert (= bs!449529 (and d!657676 d!657218)))

(assert (=> bs!449529 (not (= lambda!82750 lambda!82698))))

(declare-fun bs!449530 () Bool)

(assert (= bs!449530 (and d!657676 b!2196712)))

(assert (=> bs!449530 (= lambda!82750 lambda!82650)))

(declare-fun bs!449531 () Bool)

(assert (= bs!449531 (and d!657676 d!657024)))

(assert (=> bs!449531 (not (= lambda!82750 lambda!82648))))

(declare-fun bs!449532 () Bool)

(assert (= bs!449532 (and d!657676 d!657608)))

(assert (=> bs!449532 (not (= lambda!82750 lambda!82746))))

(declare-fun bs!449533 () Bool)

(assert (= bs!449533 (and d!657676 d!657134)))

(assert (=> bs!449533 (= lambda!82750 lambda!82691)))

(declare-fun bs!449534 () Bool)

(assert (= bs!449534 (and d!657676 d!657038)))

(assert (=> bs!449534 (not (= lambda!82750 lambda!82654))))

(declare-fun bs!449535 () Bool)

(assert (= bs!449535 (and d!657676 d!657022)))

(assert (=> bs!449535 (not (= lambda!82750 lambda!82635))))

(declare-fun bs!449536 () Bool)

(assert (= bs!449536 (and d!657676 b!2197823)))

(assert (=> bs!449536 (= lambda!82750 lambda!82748)))

(declare-fun bs!449537 () Bool)

(assert (= bs!449537 (and d!657676 d!657202)))

(assert (=> bs!449537 (not (= lambda!82750 lambda!82696))))

(declare-fun bs!449538 () Bool)

(assert (= bs!449538 (and d!657676 d!657606)))

(assert (=> bs!449538 (not (= lambda!82750 lambda!82745))))

(declare-fun bs!449539 () Bool)

(assert (= bs!449539 (and d!657676 d!657126)))

(assert (=> bs!449539 (not (= lambda!82750 lambda!82684))))

(declare-fun bs!449540 () Bool)

(assert (= bs!449540 (and d!657676 d!657220)))

(assert (=> bs!449540 (not (= lambda!82750 lambda!82701))))

(declare-fun lt!822136 () Option!5022)

(assert (=> d!657676 (= (isDefined!4112 lt!822136) (exists!815 lt!821776 lambda!82750))))

(declare-fun e!1404617 () Option!5022)

(assert (=> d!657676 (= lt!822136 e!1404617)))

(declare-fun c!350343 () Bool)

(assert (=> d!657676 (= c!350343 (exists!815 lt!821776 lambda!82750))))

(assert (=> d!657676 (= (getLanguageWitness!141 lt!821776) lt!822136)))

(declare-fun b!2197942 () Bool)

(assert (=> b!2197942 (= e!1404617 (getLanguageWitness!143 (getWitness!510 lt!821776 lambda!82750)))))

(declare-fun b!2197943 () Bool)

(assert (=> b!2197943 (= e!1404617 None!5021)))

(assert (= (and d!657676 c!350343) b!2197942))

(assert (= (and d!657676 (not c!350343)) b!2197943))

(declare-fun m!2640601 () Bool)

(assert (=> d!657676 m!2640601))

(declare-fun m!2640603 () Bool)

(assert (=> d!657676 m!2640603))

(assert (=> d!657676 m!2640603))

(declare-fun m!2640605 () Bool)

(assert (=> b!2197942 m!2640605))

(assert (=> b!2197942 m!2640605))

(declare-fun m!2640607 () Bool)

(assert (=> b!2197942 m!2640607))

(assert (=> d!657262 d!657676))

(declare-fun d!657678 () Bool)

(declare-fun lt!822137 () Bool)

(assert (=> d!657678 (= lt!822137 (forall!5232 (toList!1258 lt!821776) lambda!82703))))

(assert (=> d!657678 (= lt!822137 (choose!13006 lt!821776 lambda!82703))))

(assert (=> d!657678 (= (forall!5228 lt!821776 lambda!82703) lt!822137)))

(declare-fun bs!449541 () Bool)

(assert (= bs!449541 d!657678))

(assert (=> bs!449541 m!2639499))

(assert (=> bs!449541 m!2639499))

(declare-fun m!2640609 () Bool)

(assert (=> bs!449541 m!2640609))

(declare-fun m!2640611 () Bool)

(assert (=> bs!449541 m!2640611))

(assert (=> d!657262 d!657678))

(assert (=> b!2197132 d!657564))

(declare-fun d!657680 () Bool)

(declare-fun c!350344 () Bool)

(assert (=> d!657680 (= c!350344 ((_ is Nil!25574) lt!821923))))

(declare-fun e!1404618 () (InoxSet C!12516))

(assert (=> d!657680 (= (content!3472 lt!821923) e!1404618)))

(declare-fun b!2197944 () Bool)

(assert (=> b!2197944 (= e!1404618 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197945 () Bool)

(assert (=> b!2197945 (= e!1404618 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 lt!821923) true) (content!3472 (t!198264 lt!821923))))))

(assert (= (and d!657680 c!350344) b!2197944))

(assert (= (and d!657680 (not c!350344)) b!2197945))

(declare-fun m!2640613 () Bool)

(assert (=> b!2197945 m!2640613))

(declare-fun m!2640615 () Bool)

(assert (=> b!2197945 m!2640615))

(assert (=> d!657142 d!657680))

(assert (=> d!657142 d!657530))

(declare-fun d!657682 () Bool)

(assert (=> d!657682 (= (flatMap!153 lt!821776 lambda!82692) (choose!13010 lt!821776 lambda!82692))))

(declare-fun bs!449542 () Bool)

(assert (= bs!449542 d!657682))

(declare-fun m!2640617 () Bool)

(assert (=> bs!449542 m!2640617))

(assert (=> d!657184 d!657682))

(declare-fun d!657684 () Bool)

(declare-fun lt!822138 () C!12516)

(assert (=> d!657684 (contains!4281 (tail!3159 (list!9835 totalInput!923)) lt!822138)))

(declare-fun e!1404620 () C!12516)

(assert (=> d!657684 (= lt!822138 e!1404620)))

(declare-fun c!350345 () Bool)

(assert (=> d!657684 (= c!350345 (= (- from!1114 1) 0))))

(declare-fun e!1404619 () Bool)

(assert (=> d!657684 e!1404619))

(declare-fun res!944708 () Bool)

(assert (=> d!657684 (=> (not res!944708) (not e!1404619))))

(assert (=> d!657684 (= res!944708 (<= 0 (- from!1114 1)))))

(assert (=> d!657684 (= (apply!6258 (tail!3159 (list!9835 totalInput!923)) (- from!1114 1)) lt!822138)))

(declare-fun b!2197946 () Bool)

(assert (=> b!2197946 (= e!1404619 (< (- from!1114 1) (size!19938 (tail!3159 (list!9835 totalInput!923)))))))

(declare-fun b!2197947 () Bool)

(assert (=> b!2197947 (= e!1404620 (head!4687 (tail!3159 (list!9835 totalInput!923))))))

(declare-fun b!2197948 () Bool)

(assert (=> b!2197948 (= e!1404620 (apply!6258 (tail!3159 (tail!3159 (list!9835 totalInput!923))) (- (- from!1114 1) 1)))))

(assert (= (and d!657684 res!944708) b!2197946))

(assert (= (and d!657684 c!350345) b!2197947))

(assert (= (and d!657684 (not c!350345)) b!2197948))

(assert (=> d!657684 m!2639649))

(declare-fun m!2640619 () Bool)

(assert (=> d!657684 m!2640619))

(assert (=> b!2197946 m!2639649))

(declare-fun m!2640621 () Bool)

(assert (=> b!2197946 m!2640621))

(assert (=> b!2197947 m!2639649))

(declare-fun m!2640623 () Bool)

(assert (=> b!2197947 m!2640623))

(assert (=> b!2197948 m!2639649))

(declare-fun m!2640625 () Bool)

(assert (=> b!2197948 m!2640625))

(assert (=> b!2197948 m!2640625))

(declare-fun m!2640627 () Bool)

(assert (=> b!2197948 m!2640627))

(assert (=> b!2197210 d!657684))

(declare-fun d!657686 () Bool)

(assert (=> d!657686 (= (tail!3159 (list!9835 totalInput!923)) (t!198264 (list!9835 totalInput!923)))))

(assert (=> b!2197210 d!657686))

(assert (=> b!2197039 d!657262))

(assert (=> b!2197156 d!657456))

(declare-fun d!657688 () Bool)

(assert (=> d!657688 (= (flatMap!153 lt!821776 lambda!82697) (choose!13010 lt!821776 lambda!82697))))

(declare-fun bs!449543 () Bool)

(assert (= bs!449543 d!657688))

(declare-fun m!2640629 () Bool)

(assert (=> bs!449543 m!2640629))

(assert (=> d!657214 d!657688))

(declare-fun d!657690 () Bool)

(assert (=> d!657690 (= (isEmpty!14589 (tail!3159 (take!363 lt!821768 lt!821767))) ((_ is Nil!25574) (tail!3159 (take!363 lt!821768 lt!821767))))))

(assert (=> d!657228 d!657690))

(assert (=> b!2197284 d!657456))

(declare-fun d!657692 () Bool)

(declare-fun c!350346 () Bool)

(assert (=> d!657692 (= c!350346 ((_ is Nil!25574) (t!198264 lt!821821)))))

(declare-fun e!1404621 () (InoxSet C!12516))

(assert (=> d!657692 (= (content!3472 (t!198264 lt!821821)) e!1404621)))

(declare-fun b!2197949 () Bool)

(assert (=> b!2197949 (= e!1404621 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197950 () Bool)

(assert (=> b!2197950 (= e!1404621 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 (t!198264 lt!821821)) true) (content!3472 (t!198264 (t!198264 lt!821821)))))))

(assert (= (and d!657692 c!350346) b!2197949))

(assert (= (and d!657692 (not c!350346)) b!2197950))

(declare-fun m!2640631 () Bool)

(assert (=> b!2197950 m!2640631))

(declare-fun m!2640633 () Bool)

(assert (=> b!2197950 m!2640633))

(assert (=> b!2197298 d!657692))

(declare-fun d!657694 () Bool)

(declare-fun c!350347 () Bool)

(assert (=> d!657694 (= c!350347 ((_ is Nil!25574) lt!821965))))

(declare-fun e!1404622 () (InoxSet C!12516))

(assert (=> d!657694 (= (content!3472 lt!821965) e!1404622)))

(declare-fun b!2197951 () Bool)

(assert (=> b!2197951 (= e!1404622 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197952 () Bool)

(assert (=> b!2197952 (= e!1404622 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 lt!821965) true) (content!3472 (t!198264 lt!821965))))))

(assert (= (and d!657694 c!350347) b!2197951))

(assert (= (and d!657694 (not c!350347)) b!2197952))

(declare-fun m!2640635 () Bool)

(assert (=> b!2197952 m!2640635))

(declare-fun m!2640637 () Bool)

(assert (=> b!2197952 m!2640637))

(assert (=> d!657260 d!657694))

(assert (=> d!657260 d!657478))

(declare-fun b!2197954 () Bool)

(declare-fun e!1404626 () C!12516)

(assert (=> b!2197954 (= e!1404626 (apply!6262 (xs!11263 (ite c!350093 (left!19636 (c!349872 totalInput!923)) (right!19966 (c!349872 totalInput!923)))) e!1404213))))

(declare-fun b!2197955 () Bool)

(declare-fun e!1404624 () C!12516)

(declare-fun call!132044 () C!12516)

(assert (=> b!2197955 (= e!1404624 call!132044)))

(declare-fun bm!132039 () Bool)

(declare-fun c!350350 () Bool)

(declare-fun c!350349 () Bool)

(assert (=> bm!132039 (= c!350350 c!350349)))

(declare-fun e!1404623 () Int)

(assert (=> bm!132039 (= call!132044 (apply!6260 (ite c!350349 (left!19636 (ite c!350093 (left!19636 (c!349872 totalInput!923)) (right!19966 (c!349872 totalInput!923)))) (right!19966 (ite c!350093 (left!19636 (c!349872 totalInput!923)) (right!19966 (c!349872 totalInput!923))))) e!1404623))))

(declare-fun b!2197956 () Bool)

(assert (=> b!2197956 (= e!1404626 e!1404624)))

(declare-fun lt!822140 () Bool)

(assert (=> b!2197956 (= lt!822140 (appendIndex!252 (list!9836 (left!19636 (ite c!350093 (left!19636 (c!349872 totalInput!923)) (right!19966 (c!349872 totalInput!923))))) (list!9836 (right!19966 (ite c!350093 (left!19636 (c!349872 totalInput!923)) (right!19966 (c!349872 totalInput!923))))) e!1404213))))

(assert (=> b!2197956 (= c!350349 (< e!1404213 (size!19941 (left!19636 (ite c!350093 (left!19636 (c!349872 totalInput!923)) (right!19966 (c!349872 totalInput!923)))))))))

(declare-fun b!2197957 () Bool)

(assert (=> b!2197957 (= e!1404624 call!132044)))

(declare-fun lt!822139 () C!12516)

(declare-fun d!657696 () Bool)

(assert (=> d!657696 (= lt!822139 (apply!6258 (list!9836 (ite c!350093 (left!19636 (c!349872 totalInput!923)) (right!19966 (c!349872 totalInput!923)))) e!1404213))))

(assert (=> d!657696 (= lt!822139 e!1404626)))

(declare-fun c!350348 () Bool)

(assert (=> d!657696 (= c!350348 ((_ is Leaf!12181) (ite c!350093 (left!19636 (c!349872 totalInput!923)) (right!19966 (c!349872 totalInput!923)))))))

(declare-fun e!1404625 () Bool)

(assert (=> d!657696 e!1404625))

(declare-fun res!944709 () Bool)

(assert (=> d!657696 (=> (not res!944709) (not e!1404625))))

(assert (=> d!657696 (= res!944709 (<= 0 e!1404213))))

(assert (=> d!657696 (= (apply!6260 (ite c!350093 (left!19636 (c!349872 totalInput!923)) (right!19966 (c!349872 totalInput!923))) e!1404213) lt!822139)))

(declare-fun b!2197953 () Bool)

(assert (=> b!2197953 (= e!1404625 (< e!1404213 (size!19941 (ite c!350093 (left!19636 (c!349872 totalInput!923)) (right!19966 (c!349872 totalInput!923))))))))

(declare-fun b!2197958 () Bool)

(assert (=> b!2197958 (= e!1404623 (- e!1404213 (size!19941 (left!19636 (ite c!350093 (left!19636 (c!349872 totalInput!923)) (right!19966 (c!349872 totalInput!923)))))))))

(declare-fun b!2197959 () Bool)

(assert (=> b!2197959 (= e!1404623 e!1404213)))

(assert (= (and d!657696 res!944709) b!2197953))

(assert (= (and d!657696 c!350348) b!2197954))

(assert (= (and d!657696 (not c!350348)) b!2197956))

(assert (= (and b!2197956 c!350349) b!2197957))

(assert (= (and b!2197956 (not c!350349)) b!2197955))

(assert (= (or b!2197957 b!2197955) bm!132039))

(assert (= (and bm!132039 c!350350) b!2197959))

(assert (= (and bm!132039 (not c!350350)) b!2197958))

(declare-fun m!2640639 () Bool)

(assert (=> d!657696 m!2640639))

(assert (=> d!657696 m!2640639))

(declare-fun m!2640641 () Bool)

(assert (=> d!657696 m!2640641))

(declare-fun m!2640643 () Bool)

(assert (=> bm!132039 m!2640643))

(declare-fun m!2640645 () Bool)

(assert (=> b!2197958 m!2640645))

(declare-fun m!2640647 () Bool)

(assert (=> b!2197956 m!2640647))

(declare-fun m!2640649 () Bool)

(assert (=> b!2197956 m!2640649))

(assert (=> b!2197956 m!2640647))

(assert (=> b!2197956 m!2640649))

(declare-fun m!2640651 () Bool)

(assert (=> b!2197956 m!2640651))

(assert (=> b!2197956 m!2640645))

(declare-fun m!2640653 () Bool)

(assert (=> b!2197953 m!2640653))

(declare-fun m!2640655 () Bool)

(assert (=> b!2197954 m!2640655))

(assert (=> bm!132009 d!657696))

(declare-fun d!657698 () Bool)

(assert (=> d!657698 (= (inv!34283 (xs!11263 (left!19636 (c!349872 totalInput!923)))) (<= (size!19938 (innerList!8381 (xs!11263 (left!19636 (c!349872 totalInput!923))))) 2147483647))))

(declare-fun bs!449544 () Bool)

(assert (= bs!449544 d!657698))

(declare-fun m!2640657 () Bool)

(assert (=> bs!449544 m!2640657))

(assert (=> b!2197322 d!657698))

(declare-fun d!657700 () Bool)

(declare-fun lt!822141 () Int)

(assert (=> d!657700 (>= lt!822141 0)))

(declare-fun e!1404627 () Int)

(assert (=> d!657700 (= lt!822141 e!1404627)))

(declare-fun c!350351 () Bool)

(assert (=> d!657700 (= c!350351 ((_ is Nil!25574) (t!198264 lt!821829)))))

(assert (=> d!657700 (= (size!19938 (t!198264 lt!821829)) lt!822141)))

(declare-fun b!2197960 () Bool)

(assert (=> b!2197960 (= e!1404627 0)))

(declare-fun b!2197961 () Bool)

(assert (=> b!2197961 (= e!1404627 (+ 1 (size!19938 (t!198264 (t!198264 lt!821829)))))))

(assert (= (and d!657700 c!350351) b!2197960))

(assert (= (and d!657700 (not c!350351)) b!2197961))

(declare-fun m!2640659 () Bool)

(assert (=> b!2197961 m!2640659))

(assert (=> b!2197233 d!657700))

(declare-fun bs!449545 () Bool)

(declare-fun d!657702 () Bool)

(assert (= bs!449545 (and d!657702 d!657262)))

(declare-fun lambda!82751 () Int)

(assert (=> bs!449545 (not (= lambda!82751 lambda!82703))))

(declare-fun bs!449546 () Bool)

(assert (= bs!449546 (and d!657702 d!657450)))

(assert (=> bs!449546 (not (= lambda!82751 lambda!82732))))

(declare-fun bs!449547 () Bool)

(assert (= bs!449547 (and d!657702 b!2197282)))

(assert (=> bs!449547 (not (= lambda!82751 lambda!82704))))

(declare-fun bs!449548 () Bool)

(assert (= bs!449548 (and d!657702 d!657528)))

(assert (=> bs!449548 (= (= lambda!82682 lambda!82703) (= lambda!82751 lambda!82735))))

(declare-fun bs!449549 () Bool)

(assert (= bs!449549 (and d!657702 d!657676)))

(assert (=> bs!449549 (not (= lambda!82751 lambda!82750))))

(declare-fun bs!449550 () Bool)

(assert (= bs!449550 (and d!657702 b!2197822)))

(assert (=> bs!449550 (not (= lambda!82751 lambda!82747))))

(declare-fun bs!449551 () Bool)

(assert (= bs!449551 (and d!657702 b!2197283)))

(assert (=> bs!449551 (not (= lambda!82751 lambda!82705))))

(declare-fun bs!449552 () Bool)

(assert (= bs!449552 (and d!657702 d!657596)))

(assert (=> bs!449552 (= (= lambda!82682 lambda!82654) (= lambda!82751 lambda!82741))))

(declare-fun bs!449553 () Bool)

(assert (= bs!449553 (and d!657702 d!657520)))

(assert (=> bs!449553 (not (= lambda!82751 lambda!82734))))

(declare-fun bs!449554 () Bool)

(assert (= bs!449554 (and d!657702 b!2196711)))

(assert (=> bs!449554 (not (= lambda!82751 lambda!82649))))

(declare-fun bs!449555 () Bool)

(assert (= bs!449555 (and d!657702 b!2197790)))

(assert (=> bs!449555 (not (= lambda!82751 lambda!82739))))

(declare-fun bs!449556 () Bool)

(assert (= bs!449556 (and d!657702 d!657574)))

(assert (=> bs!449556 (not (= lambda!82751 lambda!82737))))

(declare-fun bs!449557 () Bool)

(assert (= bs!449557 (and d!657702 b!2197789)))

(assert (=> bs!449557 (not (= lambda!82751 lambda!82738))))

(declare-fun bs!449558 () Bool)

(assert (= bs!449558 (and d!657702 d!657118)))

(assert (=> bs!449558 (= (= lambda!82682 lambda!82648) (= lambda!82751 lambda!82682))))

(declare-fun bs!449559 () Bool)

(assert (= bs!449559 (and d!657702 d!657576)))

(assert (=> bs!449559 (= (= lambda!82682 lambda!82635) (= lambda!82751 lambda!82740))))

(declare-fun bs!449560 () Bool)

(assert (= bs!449560 (and d!657702 d!657218)))

(assert (=> bs!449560 (not (= lambda!82751 lambda!82698))))

(declare-fun bs!449561 () Bool)

(assert (= bs!449561 (and d!657702 b!2196712)))

(assert (=> bs!449561 (not (= lambda!82751 lambda!82650))))

(declare-fun bs!449562 () Bool)

(assert (= bs!449562 (and d!657702 d!657024)))

(assert (=> bs!449562 (not (= lambda!82751 lambda!82648))))

(declare-fun bs!449563 () Bool)

(assert (= bs!449563 (and d!657702 d!657608)))

(assert (=> bs!449563 (not (= lambda!82751 lambda!82746))))

(declare-fun bs!449564 () Bool)

(assert (= bs!449564 (and d!657702 d!657134)))

(assert (=> bs!449564 (not (= lambda!82751 lambda!82691))))

(declare-fun bs!449565 () Bool)

(assert (= bs!449565 (and d!657702 d!657038)))

(assert (=> bs!449565 (not (= lambda!82751 lambda!82654))))

(declare-fun bs!449566 () Bool)

(assert (= bs!449566 (and d!657702 d!657022)))

(assert (=> bs!449566 (not (= lambda!82751 lambda!82635))))

(declare-fun bs!449567 () Bool)

(assert (= bs!449567 (and d!657702 b!2197823)))

(assert (=> bs!449567 (not (= lambda!82751 lambda!82748))))

(declare-fun bs!449568 () Bool)

(assert (= bs!449568 (and d!657702 d!657202)))

(assert (=> bs!449568 (= (= lambda!82682 lambda!82648) (= lambda!82751 lambda!82696))))

(declare-fun bs!449569 () Bool)

(assert (= bs!449569 (and d!657702 d!657606)))

(assert (=> bs!449569 (= (= lambda!82682 (ite c!350114 lambda!82704 lambda!82705)) (= lambda!82751 lambda!82745))))

(declare-fun bs!449570 () Bool)

(assert (= bs!449570 (and d!657702 d!657126)))

(assert (=> bs!449570 (not (= lambda!82751 lambda!82684))))

(declare-fun bs!449571 () Bool)

(assert (= bs!449571 (and d!657702 d!657220)))

(assert (=> bs!449571 (= (= lambda!82682 (ite c!349896 lambda!82649 lambda!82650)) (= lambda!82751 lambda!82701))))

(assert (=> d!657702 true))

(assert (=> d!657702 (< (dynLambda!11444 order!14811 lambda!82682) (dynLambda!11444 order!14811 lambda!82751))))

(assert (=> d!657702 (= (exists!816 lt!821810 lambda!82682) (not (forall!5232 lt!821810 lambda!82751)))))

(declare-fun bs!449572 () Bool)

(assert (= bs!449572 d!657702))

(declare-fun m!2640661 () Bool)

(assert (=> bs!449572 m!2640661))

(assert (=> d!657118 d!657702))

(declare-fun bs!449573 () Bool)

(declare-fun d!657704 () Bool)

(assert (= bs!449573 (and d!657704 d!657262)))

(declare-fun lambda!82754 () Int)

(assert (=> bs!449573 (not (= lambda!82754 lambda!82703))))

(declare-fun bs!449574 () Bool)

(assert (= bs!449574 (and d!657704 d!657450)))

(assert (=> bs!449574 (not (= lambda!82754 lambda!82732))))

(declare-fun bs!449575 () Bool)

(assert (= bs!449575 (and d!657704 d!657528)))

(assert (=> bs!449575 (= (= lambda!82648 lambda!82703) (= lambda!82754 lambda!82735))))

(declare-fun bs!449576 () Bool)

(assert (= bs!449576 (and d!657704 d!657676)))

(assert (=> bs!449576 (not (= lambda!82754 lambda!82750))))

(declare-fun bs!449577 () Bool)

(assert (= bs!449577 (and d!657704 b!2197822)))

(assert (=> bs!449577 (not (= lambda!82754 lambda!82747))))

(declare-fun bs!449578 () Bool)

(assert (= bs!449578 (and d!657704 b!2197283)))

(assert (=> bs!449578 (not (= lambda!82754 lambda!82705))))

(declare-fun bs!449579 () Bool)

(assert (= bs!449579 (and d!657704 d!657596)))

(assert (=> bs!449579 (= (= lambda!82648 lambda!82654) (= lambda!82754 lambda!82741))))

(declare-fun bs!449580 () Bool)

(assert (= bs!449580 (and d!657704 d!657520)))

(assert (=> bs!449580 (not (= lambda!82754 lambda!82734))))

(declare-fun bs!449581 () Bool)

(assert (= bs!449581 (and d!657704 b!2196711)))

(assert (=> bs!449581 (not (= lambda!82754 lambda!82649))))

(declare-fun bs!449582 () Bool)

(assert (= bs!449582 (and d!657704 b!2197790)))

(assert (=> bs!449582 (not (= lambda!82754 lambda!82739))))

(declare-fun bs!449583 () Bool)

(assert (= bs!449583 (and d!657704 d!657574)))

(assert (=> bs!449583 (not (= lambda!82754 lambda!82737))))

(declare-fun bs!449584 () Bool)

(assert (= bs!449584 (and d!657704 b!2197789)))

(assert (=> bs!449584 (not (= lambda!82754 lambda!82738))))

(declare-fun bs!449585 () Bool)

(assert (= bs!449585 (and d!657704 d!657118)))

(assert (=> bs!449585 (= lambda!82754 lambda!82682)))

(declare-fun bs!449586 () Bool)

(assert (= bs!449586 (and d!657704 d!657576)))

(assert (=> bs!449586 (= (= lambda!82648 lambda!82635) (= lambda!82754 lambda!82740))))

(declare-fun bs!449587 () Bool)

(assert (= bs!449587 (and d!657704 d!657218)))

(assert (=> bs!449587 (not (= lambda!82754 lambda!82698))))

(declare-fun bs!449588 () Bool)

(assert (= bs!449588 (and d!657704 b!2197282)))

(assert (=> bs!449588 (not (= lambda!82754 lambda!82704))))

(declare-fun bs!449589 () Bool)

(assert (= bs!449589 (and d!657704 d!657702)))

(assert (=> bs!449589 (= (= lambda!82648 lambda!82682) (= lambda!82754 lambda!82751))))

(declare-fun bs!449590 () Bool)

(assert (= bs!449590 (and d!657704 b!2196712)))

(assert (=> bs!449590 (not (= lambda!82754 lambda!82650))))

(declare-fun bs!449591 () Bool)

(assert (= bs!449591 (and d!657704 d!657024)))

(assert (=> bs!449591 (not (= lambda!82754 lambda!82648))))

(declare-fun bs!449592 () Bool)

(assert (= bs!449592 (and d!657704 d!657608)))

(assert (=> bs!449592 (not (= lambda!82754 lambda!82746))))

(declare-fun bs!449593 () Bool)

(assert (= bs!449593 (and d!657704 d!657134)))

(assert (=> bs!449593 (not (= lambda!82754 lambda!82691))))

(declare-fun bs!449594 () Bool)

(assert (= bs!449594 (and d!657704 d!657038)))

(assert (=> bs!449594 (not (= lambda!82754 lambda!82654))))

(declare-fun bs!449595 () Bool)

(assert (= bs!449595 (and d!657704 d!657022)))

(assert (=> bs!449595 (not (= lambda!82754 lambda!82635))))

(declare-fun bs!449596 () Bool)

(assert (= bs!449596 (and d!657704 b!2197823)))

(assert (=> bs!449596 (not (= lambda!82754 lambda!82748))))

(declare-fun bs!449597 () Bool)

(assert (= bs!449597 (and d!657704 d!657202)))

(assert (=> bs!449597 (= lambda!82754 lambda!82696)))

(declare-fun bs!449598 () Bool)

(assert (= bs!449598 (and d!657704 d!657606)))

(assert (=> bs!449598 (= (= lambda!82648 (ite c!350114 lambda!82704 lambda!82705)) (= lambda!82754 lambda!82745))))

(declare-fun bs!449599 () Bool)

(assert (= bs!449599 (and d!657704 d!657126)))

(assert (=> bs!449599 (not (= lambda!82754 lambda!82684))))

(declare-fun bs!449600 () Bool)

(assert (= bs!449600 (and d!657704 d!657220)))

(assert (=> bs!449600 (= (= lambda!82648 (ite c!349896 lambda!82649 lambda!82650)) (= lambda!82754 lambda!82701))))

(assert (=> d!657704 true))

(assert (=> d!657704 (< (dynLambda!11444 order!14811 lambda!82648) (dynLambda!11444 order!14811 lambda!82754))))

(assert (=> d!657704 (not (exists!816 lt!821810 lambda!82754))))

(assert (=> d!657704 true))

(declare-fun _$98!189 () Unit!38685)

(assert (=> d!657704 (= (choose!13004 lt!821810 lambda!82648) _$98!189)))

(declare-fun bs!449601 () Bool)

(assert (= bs!449601 d!657704))

(declare-fun m!2640663 () Bool)

(assert (=> bs!449601 m!2640663))

(assert (=> d!657118 d!657704))

(declare-fun d!657706 () Bool)

(declare-fun res!944710 () Bool)

(declare-fun e!1404630 () Bool)

(assert (=> d!657706 (=> res!944710 e!1404630)))

(assert (=> d!657706 (= res!944710 ((_ is Nil!25576) lt!821810))))

(assert (=> d!657706 (= (forall!5232 lt!821810 lambda!82648) e!1404630)))

(declare-fun b!2197962 () Bool)

(declare-fun e!1404631 () Bool)

(assert (=> b!2197962 (= e!1404630 e!1404631)))

(declare-fun res!944711 () Bool)

(assert (=> b!2197962 (=> (not res!944711) (not e!1404631))))

(assert (=> b!2197962 (= res!944711 (dynLambda!11448 lambda!82648 (h!30977 lt!821810)))))

(declare-fun b!2197963 () Bool)

(assert (=> b!2197963 (= e!1404631 (forall!5232 (t!198266 lt!821810) lambda!82648))))

(assert (= (and d!657706 (not res!944710)) b!2197962))

(assert (= (and b!2197962 res!944711) b!2197963))

(declare-fun b_lambda!71173 () Bool)

(assert (=> (not b_lambda!71173) (not b!2197962)))

(declare-fun m!2640665 () Bool)

(assert (=> b!2197962 m!2640665))

(declare-fun m!2640667 () Bool)

(assert (=> b!2197963 m!2640667))

(assert (=> d!657118 d!657706))

(declare-fun d!657708 () Bool)

(declare-fun res!944716 () Bool)

(declare-fun e!1404636 () Bool)

(assert (=> d!657708 (=> res!944716 e!1404636)))

(assert (=> d!657708 (= res!944716 ((_ is Nil!25576) lt!821938))))

(assert (=> d!657708 (= (noDuplicate!311 lt!821938) e!1404636)))

(declare-fun b!2197968 () Bool)

(declare-fun e!1404637 () Bool)

(assert (=> b!2197968 (= e!1404636 e!1404637)))

(declare-fun res!944717 () Bool)

(assert (=> b!2197968 (=> (not res!944717) (not e!1404637))))

(declare-fun contains!4283 (List!25660 Context!3510) Bool)

(assert (=> b!2197968 (= res!944717 (not (contains!4283 (t!198266 lt!821938) (h!30977 lt!821938))))))

(declare-fun b!2197969 () Bool)

(assert (=> b!2197969 (= e!1404637 (noDuplicate!311 (t!198266 lt!821938)))))

(assert (= (and d!657708 (not res!944716)) b!2197968))

(assert (= (and b!2197968 res!944717) b!2197969))

(declare-fun m!2640669 () Bool)

(assert (=> b!2197968 m!2640669))

(declare-fun m!2640671 () Bool)

(assert (=> b!2197969 m!2640671))

(assert (=> d!657172 d!657708))

(declare-fun d!657710 () Bool)

(declare-fun e!1404645 () Bool)

(assert (=> d!657710 e!1404645))

(declare-fun res!944722 () Bool)

(assert (=> d!657710 (=> (not res!944722) (not e!1404645))))

(declare-fun res!944723 () List!25660)

(assert (=> d!657710 (= res!944722 (noDuplicate!311 res!944723))))

(declare-fun e!1404646 () Bool)

(assert (=> d!657710 e!1404646))

(assert (=> d!657710 (= (choose!13007 z!3955) res!944723)))

(declare-fun b!2197977 () Bool)

(declare-fun e!1404644 () Bool)

(declare-fun tp!684268 () Bool)

(assert (=> b!2197977 (= e!1404644 tp!684268)))

(declare-fun b!2197976 () Bool)

(declare-fun tp!684267 () Bool)

(assert (=> b!2197976 (= e!1404646 (and (inv!34278 (h!30977 res!944723)) e!1404644 tp!684267))))

(declare-fun b!2197978 () Bool)

(assert (=> b!2197978 (= e!1404645 (= (content!3474 res!944723) z!3955))))

(assert (= b!2197976 b!2197977))

(assert (= (and d!657710 ((_ is Cons!25576) res!944723)) b!2197976))

(assert (= (and d!657710 res!944722) b!2197978))

(declare-fun m!2640673 () Bool)

(assert (=> d!657710 m!2640673))

(declare-fun m!2640675 () Bool)

(assert (=> b!2197976 m!2640675))

(declare-fun m!2640677 () Bool)

(assert (=> b!2197978 m!2640677))

(assert (=> d!657172 d!657710))

(assert (=> b!2197109 d!657572))

(declare-fun b!2197979 () Bool)

(declare-fun res!944724 () Bool)

(declare-fun e!1404647 () Bool)

(assert (=> b!2197979 (=> (not res!944724) (not e!1404647))))

(assert (=> b!2197979 (= res!944724 (isBalanced!2564 (right!19966 (left!19636 (c!349872 totalInput!923)))))))

(declare-fun b!2197980 () Bool)

(declare-fun res!944725 () Bool)

(assert (=> b!2197980 (=> (not res!944725) (not e!1404647))))

(assert (=> b!2197980 (= res!944725 (isBalanced!2564 (left!19636 (left!19636 (c!349872 totalInput!923)))))))

(declare-fun b!2197981 () Bool)

(declare-fun res!944728 () Bool)

(assert (=> b!2197981 (=> (not res!944728) (not e!1404647))))

(assert (=> b!2197981 (= res!944728 (<= (- (height!1250 (left!19636 (left!19636 (c!349872 totalInput!923)))) (height!1250 (right!19966 (left!19636 (c!349872 totalInput!923))))) 1))))

(declare-fun b!2197982 () Bool)

(declare-fun res!944727 () Bool)

(assert (=> b!2197982 (=> (not res!944727) (not e!1404647))))

(assert (=> b!2197982 (= res!944727 (not (isEmpty!14592 (left!19636 (left!19636 (c!349872 totalInput!923))))))))

(declare-fun b!2197983 () Bool)

(assert (=> b!2197983 (= e!1404647 (not (isEmpty!14592 (right!19966 (left!19636 (c!349872 totalInput!923))))))))

(declare-fun b!2197984 () Bool)

(declare-fun e!1404648 () Bool)

(assert (=> b!2197984 (= e!1404648 e!1404647)))

(declare-fun res!944729 () Bool)

(assert (=> b!2197984 (=> (not res!944729) (not e!1404647))))

(assert (=> b!2197984 (= res!944729 (<= (- 1) (- (height!1250 (left!19636 (left!19636 (c!349872 totalInput!923)))) (height!1250 (right!19966 (left!19636 (c!349872 totalInput!923)))))))))

(declare-fun d!657712 () Bool)

(declare-fun res!944726 () Bool)

(assert (=> d!657712 (=> res!944726 e!1404648)))

(assert (=> d!657712 (= res!944726 (not ((_ is Node!8321) (left!19636 (c!349872 totalInput!923)))))))

(assert (=> d!657712 (= (isBalanced!2564 (left!19636 (c!349872 totalInput!923))) e!1404648)))

(assert (= (and d!657712 (not res!944726)) b!2197984))

(assert (= (and b!2197984 res!944729) b!2197981))

(assert (= (and b!2197981 res!944728) b!2197980))

(assert (= (and b!2197980 res!944725) b!2197979))

(assert (= (and b!2197979 res!944724) b!2197982))

(assert (= (and b!2197982 res!944727) b!2197983))

(assert (=> b!2197984 m!2640569))

(assert (=> b!2197984 m!2640571))

(declare-fun m!2640679 () Bool)

(assert (=> b!2197980 m!2640679))

(declare-fun m!2640681 () Bool)

(assert (=> b!2197982 m!2640681))

(declare-fun m!2640683 () Bool)

(assert (=> b!2197979 m!2640683))

(assert (=> b!2197981 m!2640569))

(assert (=> b!2197981 m!2640571))

(declare-fun m!2640685 () Bool)

(assert (=> b!2197983 m!2640685))

(assert (=> b!2197079 d!657712))

(declare-fun d!657714 () Bool)

(declare-fun lt!822142 () C!12516)

(assert (=> d!657714 (contains!4281 (list!9836 (c!349872 totalInput!923)) lt!822142)))

(declare-fun e!1404650 () C!12516)

(assert (=> d!657714 (= lt!822142 e!1404650)))

(declare-fun c!350352 () Bool)

(assert (=> d!657714 (= c!350352 (= from!1114 0))))

(declare-fun e!1404649 () Bool)

(assert (=> d!657714 e!1404649))

(declare-fun res!944730 () Bool)

(assert (=> d!657714 (=> (not res!944730) (not e!1404649))))

(assert (=> d!657714 (= res!944730 (<= 0 from!1114))))

(assert (=> d!657714 (= (apply!6258 (list!9836 (c!349872 totalInput!923)) from!1114) lt!822142)))

(declare-fun b!2197985 () Bool)

(assert (=> b!2197985 (= e!1404649 (< from!1114 (size!19938 (list!9836 (c!349872 totalInput!923)))))))

(declare-fun b!2197986 () Bool)

(assert (=> b!2197986 (= e!1404650 (head!4687 (list!9836 (c!349872 totalInput!923))))))

(declare-fun b!2197987 () Bool)

(assert (=> b!2197987 (= e!1404650 (apply!6258 (tail!3159 (list!9836 (c!349872 totalInput!923))) (- from!1114 1)))))

(assert (= (and d!657714 res!944730) b!2197985))

(assert (= (and d!657714 c!350352) b!2197986))

(assert (= (and d!657714 (not c!350352)) b!2197987))

(assert (=> d!657714 m!2639141))

(declare-fun m!2640687 () Bool)

(assert (=> d!657714 m!2640687))

(assert (=> b!2197985 m!2639141))

(assert (=> b!2197985 m!2639511))

(assert (=> b!2197986 m!2639141))

(declare-fun m!2640689 () Bool)

(assert (=> b!2197986 m!2640689))

(assert (=> b!2197987 m!2639141))

(declare-fun m!2640691 () Bool)

(assert (=> b!2197987 m!2640691))

(assert (=> b!2197987 m!2640691))

(declare-fun m!2640693 () Bool)

(assert (=> b!2197987 m!2640693))

(assert (=> d!657224 d!657714))

(assert (=> d!657224 d!657140))

(declare-fun d!657716 () Bool)

(declare-fun c!350353 () Bool)

(assert (=> d!657716 (= c!350353 ((_ is Nil!25574) lt!821933))))

(declare-fun e!1404651 () (InoxSet C!12516))

(assert (=> d!657716 (= (content!3472 lt!821933) e!1404651)))

(declare-fun b!2197988 () Bool)

(assert (=> b!2197988 (= e!1404651 ((as const (Array C!12516 Bool)) false))))

(declare-fun b!2197989 () Bool)

(assert (=> b!2197989 (= e!1404651 ((_ map or) (store ((as const (Array C!12516 Bool)) false) (h!30975 lt!821933) true) (content!3472 (t!198264 lt!821933))))))

(assert (= (and d!657716 c!350353) b!2197988))

(assert (= (and d!657716 (not c!350353)) b!2197989))

(declare-fun m!2640695 () Bool)

(assert (=> b!2197989 m!2640695))

(declare-fun m!2640697 () Bool)

(assert (=> b!2197989 m!2640697))

(assert (=> d!657164 d!657716))

(assert (=> d!657164 d!657116))

(assert (=> b!2196873 d!657208))

(assert (=> b!2196873 d!657210))

(declare-fun bs!449602 () Bool)

(declare-fun d!657718 () Bool)

(assert (= bs!449602 (and d!657718 d!657262)))

(declare-fun lambda!82755 () Int)

(assert (=> bs!449602 (not (= lambda!82755 lambda!82703))))

(declare-fun bs!449603 () Bool)

(assert (= bs!449603 (and d!657718 d!657450)))

(assert (=> bs!449603 (= lambda!82755 lambda!82732)))

(declare-fun bs!449604 () Bool)

(assert (= bs!449604 (and d!657718 d!657528)))

(assert (=> bs!449604 (not (= lambda!82755 lambda!82735))))

(declare-fun bs!449605 () Bool)

(assert (= bs!449605 (and d!657718 d!657704)))

(assert (=> bs!449605 (not (= lambda!82755 lambda!82754))))

(declare-fun bs!449606 () Bool)

(assert (= bs!449606 (and d!657718 d!657676)))

(assert (=> bs!449606 (not (= lambda!82755 lambda!82750))))

(declare-fun bs!449607 () Bool)

(assert (= bs!449607 (and d!657718 b!2197822)))

(assert (=> bs!449607 (not (= lambda!82755 lambda!82747))))

(declare-fun bs!449608 () Bool)

(assert (= bs!449608 (and d!657718 b!2197283)))

(assert (=> bs!449608 (not (= lambda!82755 lambda!82705))))

(declare-fun bs!449609 () Bool)

(assert (= bs!449609 (and d!657718 d!657596)))

(assert (=> bs!449609 (not (= lambda!82755 lambda!82741))))

(declare-fun bs!449610 () Bool)

(assert (= bs!449610 (and d!657718 d!657520)))

(assert (=> bs!449610 (= lambda!82755 lambda!82734)))

(declare-fun bs!449611 () Bool)

(assert (= bs!449611 (and d!657718 b!2196711)))

(assert (=> bs!449611 (not (= lambda!82755 lambda!82649))))

(declare-fun bs!449612 () Bool)

(assert (= bs!449612 (and d!657718 b!2197790)))

(assert (=> bs!449612 (not (= lambda!82755 lambda!82739))))

(declare-fun bs!449613 () Bool)

(assert (= bs!449613 (and d!657718 d!657574)))

(assert (=> bs!449613 (not (= lambda!82755 lambda!82737))))

(declare-fun bs!449614 () Bool)

(assert (= bs!449614 (and d!657718 b!2197789)))

(assert (=> bs!449614 (not (= lambda!82755 lambda!82738))))

(declare-fun bs!449615 () Bool)

(assert (= bs!449615 (and d!657718 d!657118)))

(assert (=> bs!449615 (not (= lambda!82755 lambda!82682))))

(declare-fun bs!449616 () Bool)

(assert (= bs!449616 (and d!657718 d!657576)))

(assert (=> bs!449616 (not (= lambda!82755 lambda!82740))))

(declare-fun bs!449617 () Bool)

(assert (= bs!449617 (and d!657718 d!657218)))

(assert (=> bs!449617 (= lambda!82755 lambda!82698)))

(declare-fun bs!449618 () Bool)

(assert (= bs!449618 (and d!657718 b!2197282)))

(assert (=> bs!449618 (not (= lambda!82755 lambda!82704))))

(declare-fun bs!449619 () Bool)

(assert (= bs!449619 (and d!657718 d!657702)))

(assert (=> bs!449619 (not (= lambda!82755 lambda!82751))))

(declare-fun bs!449620 () Bool)

(assert (= bs!449620 (and d!657718 b!2196712)))

(assert (=> bs!449620 (not (= lambda!82755 lambda!82650))))

(declare-fun bs!449621 () Bool)

(assert (= bs!449621 (and d!657718 d!657024)))

(assert (=> bs!449621 (not (= lambda!82755 lambda!82648))))

(declare-fun bs!449622 () Bool)

(assert (= bs!449622 (and d!657718 d!657608)))

(assert (=> bs!449622 (not (= lambda!82755 lambda!82746))))

(declare-fun bs!449623 () Bool)

(assert (= bs!449623 (and d!657718 d!657134)))

(assert (=> bs!449623 (not (= lambda!82755 lambda!82691))))

(declare-fun bs!449624 () Bool)

(assert (= bs!449624 (and d!657718 d!657038)))

(assert (=> bs!449624 (= lambda!82755 lambda!82654)))

(declare-fun bs!449625 () Bool)

(assert (= bs!449625 (and d!657718 d!657022)))

(assert (=> bs!449625 (= lambda!82755 lambda!82635)))

(declare-fun bs!449626 () Bool)

(assert (= bs!449626 (and d!657718 b!2197823)))

(assert (=> bs!449626 (not (= lambda!82755 lambda!82748))))

(declare-fun bs!449627 () Bool)

(assert (= bs!449627 (and d!657718 d!657202)))

(assert (=> bs!449627 (not (= lambda!82755 lambda!82696))))

(declare-fun bs!449628 () Bool)

(assert (= bs!449628 (and d!657718 d!657606)))

(assert (=> bs!449628 (not (= lambda!82755 lambda!82745))))

(declare-fun bs!449629 () Bool)

(assert (= bs!449629 (and d!657718 d!657126)))

(assert (=> bs!449629 (= lambda!82755 lambda!82684)))

(declare-fun bs!449630 () Bool)

(assert (= bs!449630 (and d!657718 d!657220)))

(assert (=> bs!449630 (not (= lambda!82755 lambda!82701))))

(assert (=> d!657718 (= (nullableZipper!465 (derivationStepZipper!257 lt!821776 (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774)))) (exists!815 (derivationStepZipper!257 lt!821776 (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))) lambda!82755))))

(declare-fun bs!449631 () Bool)

(assert (= bs!449631 d!657718))

(assert (=> bs!449631 m!2639115))

(declare-fun m!2640699 () Bool)

(assert (=> bs!449631 m!2640699))

(assert (=> b!2197167 d!657718))

(declare-fun d!657720 () Bool)

(assert (=> d!657720 (= (head!4687 (tail!3159 lt!821775)) (h!30975 (tail!3159 lt!821775)))))

(assert (=> b!2197165 d!657720))

(declare-fun d!657722 () Bool)

(declare-fun c!350354 () Bool)

(assert (=> d!657722 (= c!350354 (isEmpty!14589 (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821839))))))

(declare-fun e!1404652 () Bool)

(assert (=> d!657722 (= (matchZipper!271 (derivationStepZipper!257 lt!821776 (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821839))) (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821839))) e!1404652)))

(declare-fun b!2197990 () Bool)

(assert (=> b!2197990 (= e!1404652 (nullableZipper!465 (derivationStepZipper!257 lt!821776 (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821839)))))))

(declare-fun b!2197991 () Bool)

(assert (=> b!2197991 (= e!1404652 (matchZipper!271 (derivationStepZipper!257 (derivationStepZipper!257 lt!821776 (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821839))) (head!4687 (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821839)))) (tail!3159 (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821839)))))))

(assert (= (and d!657722 c!350354) b!2197990))

(assert (= (and d!657722 (not c!350354)) b!2197991))

(assert (=> d!657722 m!2639607))

(declare-fun m!2640701 () Bool)

(assert (=> d!657722 m!2640701))

(assert (=> b!2197990 m!2639605))

(declare-fun m!2640703 () Bool)

(assert (=> b!2197990 m!2640703))

(assert (=> b!2197991 m!2639607))

(declare-fun m!2640705 () Bool)

(assert (=> b!2197991 m!2640705))

(assert (=> b!2197991 m!2639605))

(assert (=> b!2197991 m!2640705))

(declare-fun m!2640707 () Bool)

(assert (=> b!2197991 m!2640707))

(assert (=> b!2197991 m!2639607))

(declare-fun m!2640709 () Bool)

(assert (=> b!2197991 m!2640709))

(assert (=> b!2197991 m!2640707))

(assert (=> b!2197991 m!2640709))

(declare-fun m!2640711 () Bool)

(assert (=> b!2197991 m!2640711))

(assert (=> b!2197188 d!657722))

(declare-fun bs!449632 () Bool)

(declare-fun d!657724 () Bool)

(assert (= bs!449632 (and d!657724 d!657230)))

(declare-fun lambda!82756 () Int)

(assert (=> bs!449632 (= (= (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821839)) (head!4687 (take!363 lt!821768 lt!821767))) (= lambda!82756 lambda!82702))))

(declare-fun bs!449633 () Bool)

(assert (= bs!449633 (and d!657724 d!657544)))

(assert (=> bs!449633 (= (= (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821839)) (head!4687 (tail!3159 (take!363 lt!821768 lt!821767)))) (= lambda!82756 lambda!82736))))

(declare-fun bs!449634 () Bool)

(assert (= bs!449634 (and d!657724 d!657010)))

(assert (=> bs!449634 (= (= (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821839)) lt!821772) (= lambda!82756 lambda!82632))))

(declare-fun bs!449635 () Bool)

(assert (= bs!449635 (and d!657724 d!657124)))

(assert (=> bs!449635 (= (= (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821839)) (apply!6259 totalInput!923 from!1114)) (= lambda!82756 lambda!82683))))

(declare-fun bs!449636 () Bool)

(assert (= bs!449636 (and d!657724 d!657472)))

(assert (=> bs!449636 (= (= (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821839)) (head!4687 (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774)))) (= lambda!82756 lambda!82733))))

(declare-fun bs!449637 () Bool)

(assert (= bs!449637 (and d!657724 d!657184)))

(assert (=> bs!449637 (= (= (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821839)) (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))) (= lambda!82756 lambda!82692))))

(declare-fun bs!449638 () Bool)

(assert (= bs!449638 (and d!657724 d!657214)))

(assert (=> bs!449638 (= (= (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821839)) (apply!6259 totalInput!923 (+ 1 from!1114))) (= lambda!82756 lambda!82697))))

(assert (=> d!657724 true))

(assert (=> d!657724 (= (derivationStepZipper!257 lt!821776 (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821839))) (flatMap!153 lt!821776 lambda!82756))))

(declare-fun bs!449639 () Bool)

(assert (= bs!449639 d!657724))

(declare-fun m!2640713 () Bool)

(assert (=> bs!449639 m!2640713))

(assert (=> b!2197188 d!657724))

(declare-fun d!657726 () Bool)

(assert (=> d!657726 (= (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821839)) (h!30975 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821839)))))

(assert (=> b!2197188 d!657726))

(declare-fun d!657728 () Bool)

(assert (=> d!657728 (= (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821839)) (t!198264 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821839)))))

(assert (=> b!2197188 d!657728))

(declare-fun d!657730 () Bool)

(declare-fun lt!822143 () Int)

(assert (=> d!657730 (>= lt!822143 0)))

(declare-fun e!1404653 () Int)

(assert (=> d!657730 (= lt!822143 e!1404653)))

(declare-fun c!350355 () Bool)

(assert (=> d!657730 (= c!350355 ((_ is Nil!25574) lt!821923))))

(assert (=> d!657730 (= (size!19938 lt!821923) lt!822143)))

(declare-fun b!2197992 () Bool)

(assert (=> b!2197992 (= e!1404653 0)))

(declare-fun b!2197993 () Bool)

(assert (=> b!2197993 (= e!1404653 (+ 1 (size!19938 (t!198264 lt!821923))))))

(assert (= (and d!657730 c!350355) b!2197992))

(assert (= (and d!657730 (not c!350355)) b!2197993))

(declare-fun m!2640715 () Bool)

(assert (=> b!2197993 m!2640715))

(assert (=> b!2197112 d!657730))

(declare-fun d!657732 () Bool)

(declare-fun lt!822144 () Int)

(assert (=> d!657732 (>= lt!822144 0)))

(declare-fun e!1404654 () Int)

(assert (=> d!657732 (= lt!822144 e!1404654)))

(declare-fun c!350356 () Bool)

(assert (=> d!657732 (= c!350356 ((_ is Nil!25574) lt!821899))))

(assert (=> d!657732 (= (size!19938 lt!821899) lt!822144)))

(declare-fun b!2197994 () Bool)

(assert (=> b!2197994 (= e!1404654 0)))

(declare-fun b!2197995 () Bool)

(assert (=> b!2197995 (= e!1404654 (+ 1 (size!19938 (t!198264 lt!821899))))))

(assert (= (and d!657732 c!350356) b!2197994))

(assert (= (and d!657732 (not c!350356)) b!2197995))

(declare-fun m!2640717 () Bool)

(assert (=> b!2197995 m!2640717))

(assert (=> b!2197031 d!657732))

(assert (=> b!2197083 d!657444))

(assert (=> b!2197083 d!657446))

(declare-fun d!657734 () Bool)

(declare-fun lt!822145 () Int)

(assert (=> d!657734 (>= lt!822145 0)))

(declare-fun e!1404655 () Int)

(assert (=> d!657734 (= lt!822145 e!1404655)))

(declare-fun c!350357 () Bool)

(assert (=> d!657734 (= c!350357 ((_ is Nil!25574) lt!821932))))

(assert (=> d!657734 (= (size!19938 lt!821932) lt!822145)))

(declare-fun b!2197996 () Bool)

(assert (=> b!2197996 (= e!1404655 0)))

(declare-fun b!2197997 () Bool)

(assert (=> b!2197997 (= e!1404655 (+ 1 (size!19938 (t!198264 lt!821932))))))

(assert (= (and d!657734 c!350357) b!2197996))

(assert (= (and d!657734 (not c!350357)) b!2197997))

(declare-fun m!2640719 () Bool)

(assert (=> b!2197997 m!2640719))

(assert (=> b!2197133 d!657734))

(declare-fun d!657736 () Bool)

(assert (=> d!657736 (= (isEmpty!14589 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821839)) ((_ is Nil!25574) (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821839)))))

(assert (=> d!657204 d!657736))

(assert (=> bm!132010 d!657448))

(assert (=> b!2197186 d!657620))

(assert (=> b!2197225 d!657156))

(assert (=> b!2197192 d!657170))

(assert (=> b!2197151 d!657522))

(declare-fun lt!822147 () Int)

(declare-fun d!657738 () Bool)

(assert (=> d!657738 (and (>= lt!822147 (- 1)) (< lt!822147 lt!821763) (>= lt!822147 e!1404117) (or (= lt!822147 e!1404117) (>= lt!822147 (+ from!1114 1 1))))))

(declare-fun e!1404657 () Int)

(assert (=> d!657738 (= lt!822147 e!1404657)))

(declare-fun c!350358 () Bool)

(declare-fun e!1404658 () Bool)

(assert (=> d!657738 (= c!350358 e!1404658)))

(declare-fun res!944731 () Bool)

(assert (=> d!657738 (=> res!944731 e!1404658)))

(assert (=> d!657738 (= res!944731 (= (+ from!1114 1 1) lt!821763))))

(assert (=> d!657738 (and (>= (+ from!1114 1 1) 0) (<= (+ from!1114 1 1) lt!821763))))

(assert (=> d!657738 (= (furthestNullablePosition!353 lt!821914 (+ from!1114 1 1) totalInput!923 lt!821763 e!1404117) lt!822147)))

(declare-fun b!2197998 () Bool)

(declare-fun e!1404656 () Int)

(declare-fun lt!822146 () (InoxSet Context!3510))

(assert (=> b!2197998 (= e!1404657 (furthestNullablePosition!353 lt!822146 (+ from!1114 1 1 1) totalInput!923 lt!821763 e!1404656))))

(assert (=> b!2197998 (= lt!822146 (derivationStepZipper!257 lt!821914 (apply!6259 totalInput!923 (+ from!1114 1 1))))))

(declare-fun c!350359 () Bool)

(assert (=> b!2197998 (= c!350359 (nullableZipper!465 lt!822146))))

(declare-fun b!2197999 () Bool)

(assert (=> b!2197999 (= e!1404657 e!1404117)))

(declare-fun b!2198000 () Bool)

(assert (=> b!2198000 (= e!1404658 (lostCauseZipper!301 lt!821914))))

(declare-fun b!2198001 () Bool)

(assert (=> b!2198001 (= e!1404656 (+ from!1114 1 1))))

(declare-fun b!2198002 () Bool)

(assert (=> b!2198002 (= e!1404656 e!1404117)))

(assert (= (and d!657738 (not res!944731)) b!2198000))

(assert (= (and d!657738 c!350358) b!2197999))

(assert (= (and d!657738 (not c!350358)) b!2197998))

(assert (= (and b!2197998 c!350359) b!2198001))

(assert (= (and b!2197998 (not c!350359)) b!2198002))

(declare-fun m!2640721 () Bool)

(assert (=> b!2197998 m!2640721))

(declare-fun m!2640723 () Bool)

(assert (=> b!2197998 m!2640723))

(assert (=> b!2197998 m!2640723))

(declare-fun m!2640725 () Bool)

(assert (=> b!2197998 m!2640725))

(declare-fun m!2640727 () Bool)

(assert (=> b!2197998 m!2640727))

(declare-fun m!2640729 () Bool)

(assert (=> b!2198000 m!2640729))

(assert (=> b!2197061 d!657738))

(declare-fun bs!449640 () Bool)

(declare-fun d!657740 () Bool)

(assert (= bs!449640 (and d!657740 d!657544)))

(declare-fun lambda!82757 () Int)

(assert (=> bs!449640 (= (= (apply!6259 totalInput!923 (+ from!1114 1)) (head!4687 (tail!3159 (take!363 lt!821768 lt!821767)))) (= lambda!82757 lambda!82736))))

(declare-fun bs!449641 () Bool)

(assert (= bs!449641 (and d!657740 d!657010)))

(assert (=> bs!449641 (= (= (apply!6259 totalInput!923 (+ from!1114 1)) lt!821772) (= lambda!82757 lambda!82632))))

(declare-fun bs!449642 () Bool)

(assert (= bs!449642 (and d!657740 d!657124)))

(assert (=> bs!449642 (= (= (apply!6259 totalInput!923 (+ from!1114 1)) (apply!6259 totalInput!923 from!1114)) (= lambda!82757 lambda!82683))))

(declare-fun bs!449643 () Bool)

(assert (= bs!449643 (and d!657740 d!657472)))

(assert (=> bs!449643 (= (= (apply!6259 totalInput!923 (+ from!1114 1)) (head!4687 (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774)))) (= lambda!82757 lambda!82733))))

(declare-fun bs!449644 () Bool)

(assert (= bs!449644 (and d!657740 d!657230)))

(assert (=> bs!449644 (= (= (apply!6259 totalInput!923 (+ from!1114 1)) (head!4687 (take!363 lt!821768 lt!821767))) (= lambda!82757 lambda!82702))))

(declare-fun bs!449645 () Bool)

(assert (= bs!449645 (and d!657740 d!657724)))

(assert (=> bs!449645 (= (= (apply!6259 totalInput!923 (+ from!1114 1)) (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821839))) (= lambda!82757 lambda!82756))))

(declare-fun bs!449646 () Bool)

(assert (= bs!449646 (and d!657740 d!657184)))

(assert (=> bs!449646 (= (= (apply!6259 totalInput!923 (+ from!1114 1)) (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))) (= lambda!82757 lambda!82692))))

(declare-fun bs!449647 () Bool)

(assert (= bs!449647 (and d!657740 d!657214)))

(assert (=> bs!449647 (= (= (apply!6259 totalInput!923 (+ from!1114 1)) (apply!6259 totalInput!923 (+ 1 from!1114))) (= lambda!82757 lambda!82697))))

(assert (=> d!657740 true))

(assert (=> d!657740 (= (derivationStepZipper!257 lt!821784 (apply!6259 totalInput!923 (+ from!1114 1))) (flatMap!153 lt!821784 lambda!82757))))

(declare-fun bs!449648 () Bool)

(assert (= bs!449648 d!657740))

(declare-fun m!2640731 () Bool)

(assert (=> bs!449648 m!2640731))

(assert (=> b!2197061 d!657740))

(declare-fun d!657742 () Bool)

(declare-fun lt!822148 () C!12516)

(assert (=> d!657742 (= lt!822148 (apply!6258 (list!9835 totalInput!923) (+ from!1114 1)))))

(assert (=> d!657742 (= lt!822148 (apply!6260 (c!349872 totalInput!923) (+ from!1114 1)))))

(declare-fun e!1404659 () Bool)

(assert (=> d!657742 e!1404659))

(declare-fun res!944732 () Bool)

(assert (=> d!657742 (=> (not res!944732) (not e!1404659))))

(assert (=> d!657742 (= res!944732 (<= 0 (+ from!1114 1)))))

(assert (=> d!657742 (= (apply!6259 totalInput!923 (+ from!1114 1)) lt!822148)))

(declare-fun b!2198003 () Bool)

(assert (=> b!2198003 (= e!1404659 (< (+ from!1114 1) (size!19937 totalInput!923)))))

(assert (= (and d!657742 res!944732) b!2198003))

(assert (=> d!657742 m!2639029))

(assert (=> d!657742 m!2639029))

(declare-fun m!2640733 () Bool)

(assert (=> d!657742 m!2640733))

(declare-fun m!2640735 () Bool)

(assert (=> d!657742 m!2640735))

(assert (=> b!2198003 m!2639059))

(assert (=> b!2197061 d!657742))

(declare-fun bs!449649 () Bool)

(declare-fun d!657744 () Bool)

(assert (= bs!449649 (and d!657744 d!657262)))

(declare-fun lambda!82758 () Int)

(assert (=> bs!449649 (not (= lambda!82758 lambda!82703))))

(declare-fun bs!449650 () Bool)

(assert (= bs!449650 (and d!657744 d!657450)))

(assert (=> bs!449650 (= lambda!82758 lambda!82732)))

(declare-fun bs!449651 () Bool)

(assert (= bs!449651 (and d!657744 d!657528)))

(assert (=> bs!449651 (not (= lambda!82758 lambda!82735))))

(declare-fun bs!449652 () Bool)

(assert (= bs!449652 (and d!657744 d!657704)))

(assert (=> bs!449652 (not (= lambda!82758 lambda!82754))))

(declare-fun bs!449653 () Bool)

(assert (= bs!449653 (and d!657744 d!657676)))

(assert (=> bs!449653 (not (= lambda!82758 lambda!82750))))

(declare-fun bs!449654 () Bool)

(assert (= bs!449654 (and d!657744 b!2197822)))

(assert (=> bs!449654 (not (= lambda!82758 lambda!82747))))

(declare-fun bs!449655 () Bool)

(assert (= bs!449655 (and d!657744 d!657596)))

(assert (=> bs!449655 (not (= lambda!82758 lambda!82741))))

(declare-fun bs!449656 () Bool)

(assert (= bs!449656 (and d!657744 d!657520)))

(assert (=> bs!449656 (= lambda!82758 lambda!82734)))

(declare-fun bs!449657 () Bool)

(assert (= bs!449657 (and d!657744 b!2196711)))

(assert (=> bs!449657 (not (= lambda!82758 lambda!82649))))

(declare-fun bs!449658 () Bool)

(assert (= bs!449658 (and d!657744 b!2197790)))

(assert (=> bs!449658 (not (= lambda!82758 lambda!82739))))

(declare-fun bs!449659 () Bool)

(assert (= bs!449659 (and d!657744 d!657574)))

(assert (=> bs!449659 (not (= lambda!82758 lambda!82737))))

(declare-fun bs!449660 () Bool)

(assert (= bs!449660 (and d!657744 b!2197789)))

(assert (=> bs!449660 (not (= lambda!82758 lambda!82738))))

(declare-fun bs!449661 () Bool)

(assert (= bs!449661 (and d!657744 d!657118)))

(assert (=> bs!449661 (not (= lambda!82758 lambda!82682))))

(declare-fun bs!449662 () Bool)

(assert (= bs!449662 (and d!657744 d!657576)))

(assert (=> bs!449662 (not (= lambda!82758 lambda!82740))))

(declare-fun bs!449663 () Bool)

(assert (= bs!449663 (and d!657744 d!657218)))

(assert (=> bs!449663 (= lambda!82758 lambda!82698)))

(declare-fun bs!449664 () Bool)

(assert (= bs!449664 (and d!657744 b!2197282)))

(assert (=> bs!449664 (not (= lambda!82758 lambda!82704))))

(declare-fun bs!449665 () Bool)

(assert (= bs!449665 (and d!657744 d!657702)))

(assert (=> bs!449665 (not (= lambda!82758 lambda!82751))))

(declare-fun bs!449666 () Bool)

(assert (= bs!449666 (and d!657744 b!2196712)))

(assert (=> bs!449666 (not (= lambda!82758 lambda!82650))))

(declare-fun bs!449667 () Bool)

(assert (= bs!449667 (and d!657744 d!657024)))

(assert (=> bs!449667 (not (= lambda!82758 lambda!82648))))

(declare-fun bs!449668 () Bool)

(assert (= bs!449668 (and d!657744 b!2197283)))

(assert (=> bs!449668 (not (= lambda!82758 lambda!82705))))

(declare-fun bs!449669 () Bool)

(assert (= bs!449669 (and d!657744 d!657718)))

(assert (=> bs!449669 (= lambda!82758 lambda!82755)))

(declare-fun bs!449670 () Bool)

(assert (= bs!449670 (and d!657744 d!657608)))

(assert (=> bs!449670 (not (= lambda!82758 lambda!82746))))

(declare-fun bs!449671 () Bool)

(assert (= bs!449671 (and d!657744 d!657134)))

(assert (=> bs!449671 (not (= lambda!82758 lambda!82691))))

(declare-fun bs!449672 () Bool)

(assert (= bs!449672 (and d!657744 d!657038)))

(assert (=> bs!449672 (= lambda!82758 lambda!82654)))

(declare-fun bs!449673 () Bool)

(assert (= bs!449673 (and d!657744 d!657022)))

(assert (=> bs!449673 (= lambda!82758 lambda!82635)))

(declare-fun bs!449674 () Bool)

(assert (= bs!449674 (and d!657744 b!2197823)))

(assert (=> bs!449674 (not (= lambda!82758 lambda!82748))))

(declare-fun bs!449675 () Bool)

(assert (= bs!449675 (and d!657744 d!657202)))

(assert (=> bs!449675 (not (= lambda!82758 lambda!82696))))

(declare-fun bs!449676 () Bool)

(assert (= bs!449676 (and d!657744 d!657606)))

(assert (=> bs!449676 (not (= lambda!82758 lambda!82745))))

(declare-fun bs!449677 () Bool)

(assert (= bs!449677 (and d!657744 d!657126)))

(assert (=> bs!449677 (= lambda!82758 lambda!82684)))

(declare-fun bs!449678 () Bool)

(assert (= bs!449678 (and d!657744 d!657220)))

(assert (=> bs!449678 (not (= lambda!82758 lambda!82701))))

(assert (=> d!657744 (= (nullableZipper!465 lt!821914) (exists!815 lt!821914 lambda!82758))))

(declare-fun bs!449679 () Bool)

(assert (= bs!449679 d!657744))

(declare-fun m!2640737 () Bool)

(assert (=> bs!449679 m!2640737))

(assert (=> b!2197061 d!657744))

(assert (=> b!2197121 d!657532))

(declare-fun d!657746 () Bool)

(declare-fun lt!822149 () Int)

(assert (=> d!657746 (>= lt!822149 0)))

(declare-fun e!1404660 () Int)

(assert (=> d!657746 (= lt!822149 e!1404660)))

(declare-fun c!350360 () Bool)

(assert (=> d!657746 (= c!350360 ((_ is Nil!25574) (t!198264 (list!9835 totalInput!923))))))

(assert (=> d!657746 (= (size!19938 (t!198264 (list!9835 totalInput!923))) lt!822149)))

(declare-fun b!2198004 () Bool)

(assert (=> b!2198004 (= e!1404660 0)))

(declare-fun b!2198005 () Bool)

(assert (=> b!2198005 (= e!1404660 (+ 1 (size!19938 (t!198264 (t!198264 (list!9835 totalInput!923))))))))

(assert (= (and d!657746 c!350360) b!2198004))

(assert (= (and d!657746 (not c!350360)) b!2198005))

(assert (=> b!2198005 m!2640579))

(assert (=> bm!132005 d!657746))

(assert (=> b!2197129 d!657746))

(declare-fun d!657748 () Bool)

(assert (=> d!657748 (= (inv!34283 (xs!11263 (right!19966 (c!349872 totalInput!923)))) (<= (size!19938 (innerList!8381 (xs!11263 (right!19966 (c!349872 totalInput!923))))) 2147483647))))

(declare-fun bs!449680 () Bool)

(assert (= bs!449680 d!657748))

(declare-fun m!2640739 () Bool)

(assert (=> bs!449680 m!2640739))

(assert (=> b!2197325 d!657748))

(declare-fun d!657750 () Bool)

(declare-fun lt!822150 () Int)

(assert (=> d!657750 (>= lt!822150 0)))

(declare-fun e!1404661 () Int)

(assert (=> d!657750 (= lt!822150 e!1404661)))

(declare-fun c!350361 () Bool)

(assert (=> d!657750 (= c!350361 ((_ is Nil!25574) lt!821965))))

(assert (=> d!657750 (= (size!19938 lt!821965) lt!822150)))

(declare-fun b!2198006 () Bool)

(assert (=> b!2198006 (= e!1404661 0)))

(declare-fun b!2198007 () Bool)

(assert (=> b!2198007 (= e!1404661 (+ 1 (size!19938 (t!198264 lt!821965))))))

(assert (= (and d!657750 c!350361) b!2198006))

(assert (= (and d!657750 (not c!350361)) b!2198007))

(declare-fun m!2640741 () Bool)

(assert (=> b!2198007 m!2640741))

(assert (=> b!2197274 d!657750))

(declare-fun d!657752 () Bool)

(assert (=> d!657752 (= (max!0 (height!1250 (left!19636 (c!349872 totalInput!923))) (height!1250 (right!19966 (c!349872 totalInput!923)))) (ite (< (height!1250 (left!19636 (c!349872 totalInput!923))) (height!1250 (right!19966 (c!349872 totalInput!923)))) (height!1250 (right!19966 (c!349872 totalInput!923))) (height!1250 (left!19636 (c!349872 totalInput!923)))))))

(assert (=> b!2197271 d!657752))

(assert (=> b!2197271 d!657444))

(assert (=> b!2197271 d!657446))

(declare-fun d!657754 () Bool)

(declare-fun lt!822151 () Int)

(assert (=> d!657754 (>= lt!822151 0)))

(declare-fun e!1404662 () Int)

(assert (=> d!657754 (= lt!822151 e!1404662)))

(declare-fun c!350362 () Bool)

(assert (=> d!657754 (= c!350362 ((_ is Nil!25574) (tail!3159 lt!821775)))))

(assert (=> d!657754 (= (size!19938 (tail!3159 lt!821775)) lt!822151)))

(declare-fun b!2198008 () Bool)

(assert (=> b!2198008 (= e!1404662 0)))

(declare-fun b!2198009 () Bool)

(assert (=> b!2198009 (= e!1404662 (+ 1 (size!19938 (t!198264 (tail!3159 lt!821775)))))))

(assert (= (and d!657754 c!350362) b!2198008))

(assert (= (and d!657754 (not c!350362)) b!2198009))

(declare-fun m!2640743 () Bool)

(assert (=> b!2198009 m!2640743))

(assert (=> b!2197164 d!657754))

(declare-fun d!657756 () Bool)

(declare-fun res!944733 () Bool)

(declare-fun e!1404663 () Bool)

(assert (=> d!657756 (=> (not res!944733) (not e!1404663))))

(assert (=> d!657756 (= res!944733 (= (csize!16872 (right!19966 (c!349872 totalInput!923))) (+ (size!19941 (left!19636 (right!19966 (c!349872 totalInput!923)))) (size!19941 (right!19966 (right!19966 (c!349872 totalInput!923)))))))))

(assert (=> d!657756 (= (inv!34279 (right!19966 (c!349872 totalInput!923))) e!1404663)))

(declare-fun b!2198010 () Bool)

(declare-fun res!944734 () Bool)

(assert (=> b!2198010 (=> (not res!944734) (not e!1404663))))

(assert (=> b!2198010 (= res!944734 (and (not (= (left!19636 (right!19966 (c!349872 totalInput!923))) Empty!8321)) (not (= (right!19966 (right!19966 (c!349872 totalInput!923))) Empty!8321))))))

(declare-fun b!2198011 () Bool)

(declare-fun res!944735 () Bool)

(assert (=> b!2198011 (=> (not res!944735) (not e!1404663))))

(assert (=> b!2198011 (= res!944735 (= (cheight!8532 (right!19966 (c!349872 totalInput!923))) (+ (max!0 (height!1250 (left!19636 (right!19966 (c!349872 totalInput!923)))) (height!1250 (right!19966 (right!19966 (c!349872 totalInput!923))))) 1)))))

(declare-fun b!2198012 () Bool)

(assert (=> b!2198012 (= e!1404663 (<= 0 (cheight!8532 (right!19966 (c!349872 totalInput!923)))))))

(assert (= (and d!657756 res!944733) b!2198010))

(assert (= (and b!2198010 res!944734) b!2198011))

(assert (= (and b!2198011 res!944735) b!2198012))

(declare-fun m!2640745 () Bool)

(assert (=> d!657756 m!2640745))

(declare-fun m!2640747 () Bool)

(assert (=> d!657756 m!2640747))

(assert (=> b!2198011 m!2640511))

(assert (=> b!2198011 m!2640513))

(assert (=> b!2198011 m!2640511))

(assert (=> b!2198011 m!2640513))

(declare-fun m!2640749 () Bool)

(assert (=> b!2198011 m!2640749))

(assert (=> b!2197199 d!657756))

(declare-fun d!657758 () Bool)

(declare-fun lt!822152 () C!12516)

(assert (=> d!657758 (contains!4281 (list!9835 totalInput!923) lt!822152)))

(declare-fun e!1404665 () C!12516)

(assert (=> d!657758 (= lt!822152 e!1404665)))

(declare-fun c!350363 () Bool)

(assert (=> d!657758 (= c!350363 (= (+ 1 from!1114) 0))))

(declare-fun e!1404664 () Bool)

(assert (=> d!657758 e!1404664))

(declare-fun res!944736 () Bool)

(assert (=> d!657758 (=> (not res!944736) (not e!1404664))))

(assert (=> d!657758 (= res!944736 (<= 0 (+ 1 from!1114)))))

(assert (=> d!657758 (= (apply!6258 (list!9835 totalInput!923) (+ 1 from!1114)) lt!822152)))

(declare-fun b!2198013 () Bool)

(assert (=> b!2198013 (= e!1404664 (< (+ 1 from!1114) (size!19938 (list!9835 totalInput!923))))))

(declare-fun b!2198014 () Bool)

(assert (=> b!2198014 (= e!1404665 (head!4687 (list!9835 totalInput!923)))))

(declare-fun b!2198015 () Bool)

(assert (=> b!2198015 (= e!1404665 (apply!6258 (tail!3159 (list!9835 totalInput!923)) (- (+ 1 from!1114) 1)))))

(assert (= (and d!657758 res!944736) b!2198013))

(assert (= (and d!657758 c!350363) b!2198014))

(assert (= (and d!657758 (not c!350363)) b!2198015))

(assert (=> d!657758 m!2639029))

(declare-fun m!2640751 () Bool)

(assert (=> d!657758 m!2640751))

(assert (=> b!2198013 m!2639029))

(assert (=> b!2198013 m!2639135))

(assert (=> b!2198014 m!2639029))

(assert (=> b!2198014 m!2639647))

(assert (=> b!2198015 m!2639029))

(assert (=> b!2198015 m!2639649))

(assert (=> b!2198015 m!2639649))

(declare-fun m!2640753 () Bool)

(assert (=> b!2198015 m!2640753))

(assert (=> d!657216 d!657758))

(assert (=> d!657216 d!657036))

(declare-fun b!2198017 () Bool)

(declare-fun e!1404669 () C!12516)

(assert (=> b!2198017 (= e!1404669 (apply!6262 (xs!11263 (c!349872 totalInput!923)) (+ 1 from!1114)))))

(declare-fun b!2198018 () Bool)

(declare-fun e!1404667 () C!12516)

(declare-fun call!132045 () C!12516)

(assert (=> b!2198018 (= e!1404667 call!132045)))

(declare-fun bm!132040 () Bool)

(declare-fun c!350366 () Bool)

(declare-fun c!350365 () Bool)

(assert (=> bm!132040 (= c!350366 c!350365)))

(declare-fun e!1404666 () Int)

(assert (=> bm!132040 (= call!132045 (apply!6260 (ite c!350365 (left!19636 (c!349872 totalInput!923)) (right!19966 (c!349872 totalInput!923))) e!1404666))))

(declare-fun b!2198019 () Bool)

(assert (=> b!2198019 (= e!1404669 e!1404667)))

(declare-fun lt!822154 () Bool)

(assert (=> b!2198019 (= lt!822154 (appendIndex!252 (list!9836 (left!19636 (c!349872 totalInput!923))) (list!9836 (right!19966 (c!349872 totalInput!923))) (+ 1 from!1114)))))

(assert (=> b!2198019 (= c!350365 (< (+ 1 from!1114) (size!19941 (left!19636 (c!349872 totalInput!923)))))))

(declare-fun b!2198020 () Bool)

(assert (=> b!2198020 (= e!1404667 call!132045)))

(declare-fun d!657760 () Bool)

(declare-fun lt!822153 () C!12516)

(assert (=> d!657760 (= lt!822153 (apply!6258 (list!9836 (c!349872 totalInput!923)) (+ 1 from!1114)))))

(assert (=> d!657760 (= lt!822153 e!1404669)))

(declare-fun c!350364 () Bool)

(assert (=> d!657760 (= c!350364 ((_ is Leaf!12181) (c!349872 totalInput!923)))))

(declare-fun e!1404668 () Bool)

(assert (=> d!657760 e!1404668))

(declare-fun res!944737 () Bool)

(assert (=> d!657760 (=> (not res!944737) (not e!1404668))))

(assert (=> d!657760 (= res!944737 (<= 0 (+ 1 from!1114)))))

(assert (=> d!657760 (= (apply!6260 (c!349872 totalInput!923) (+ 1 from!1114)) lt!822153)))

(declare-fun b!2198016 () Bool)

(assert (=> b!2198016 (= e!1404668 (< (+ 1 from!1114) (size!19941 (c!349872 totalInput!923))))))

(declare-fun b!2198021 () Bool)

(assert (=> b!2198021 (= e!1404666 (- (+ 1 from!1114) (size!19941 (left!19636 (c!349872 totalInput!923)))))))

(declare-fun b!2198022 () Bool)

(assert (=> b!2198022 (= e!1404666 (+ 1 from!1114))))

(assert (= (and d!657760 res!944737) b!2198016))

(assert (= (and d!657760 c!350364) b!2198017))

(assert (= (and d!657760 (not c!350364)) b!2198019))

(assert (= (and b!2198019 c!350365) b!2198020))

(assert (= (and b!2198019 (not c!350365)) b!2198018))

(assert (= (or b!2198020 b!2198018) bm!132040))

(assert (= (and bm!132040 c!350366) b!2198022))

(assert (= (and bm!132040 (not c!350366)) b!2198021))

(assert (=> d!657760 m!2639141))

(assert (=> d!657760 m!2639141))

(declare-fun m!2640755 () Bool)

(assert (=> d!657760 m!2640755))

(declare-fun m!2640757 () Bool)

(assert (=> bm!132040 m!2640757))

(assert (=> b!2198021 m!2639657))

(assert (=> b!2198019 m!2639481))

(assert (=> b!2198019 m!2639483))

(assert (=> b!2198019 m!2639481))

(assert (=> b!2198019 m!2639483))

(declare-fun m!2640759 () Bool)

(assert (=> b!2198019 m!2640759))

(assert (=> b!2198019 m!2639657))

(assert (=> b!2198016 m!2639215))

(declare-fun m!2640761 () Bool)

(assert (=> b!2198017 m!2640761))

(assert (=> d!657216 d!657760))

(assert (=> b!2197260 d!657532))

(declare-fun d!657762 () Bool)

(declare-fun res!944738 () Bool)

(declare-fun e!1404670 () Bool)

(assert (=> d!657762 (=> res!944738 e!1404670)))

(assert (=> d!657762 (= res!944738 ((_ is Nil!25576) (toList!1258 z!3955)))))

(assert (=> d!657762 (= (forall!5232 (toList!1258 z!3955) lambda!82648) e!1404670)))

(declare-fun b!2198023 () Bool)

(declare-fun e!1404671 () Bool)

(assert (=> b!2198023 (= e!1404670 e!1404671)))

(declare-fun res!944739 () Bool)

(assert (=> b!2198023 (=> (not res!944739) (not e!1404671))))

(assert (=> b!2198023 (= res!944739 (dynLambda!11448 lambda!82648 (h!30977 (toList!1258 z!3955))))))

(declare-fun b!2198024 () Bool)

(assert (=> b!2198024 (= e!1404671 (forall!5232 (t!198266 (toList!1258 z!3955)) lambda!82648))))

(assert (= (and d!657762 (not res!944738)) b!2198023))

(assert (= (and b!2198023 res!944739) b!2198024))

(declare-fun b_lambda!71175 () Bool)

(assert (=> (not b_lambda!71175) (not b!2198023)))

(declare-fun m!2640763 () Bool)

(assert (=> b!2198023 m!2640763))

(declare-fun m!2640765 () Bool)

(assert (=> b!2198024 m!2640765))

(assert (=> d!657136 d!657762))

(assert (=> d!657136 d!657172))

(declare-fun d!657764 () Bool)

(declare-fun res!944742 () Bool)

(assert (=> d!657764 (= res!944742 (forall!5232 (toList!1258 z!3955) lambda!82648))))

(assert (=> d!657764 true))

(assert (=> d!657764 (= (choose!13006 z!3955 lambda!82648) res!944742)))

(declare-fun bs!449681 () Bool)

(assert (= bs!449681 d!657764))

(assert (=> bs!449681 m!2639097))

(assert (=> bs!449681 m!2639097))

(assert (=> bs!449681 m!2639469))

(assert (=> d!657136 d!657764))

(declare-fun bs!449682 () Bool)

(declare-fun d!657766 () Bool)

(assert (= bs!449682 (and d!657766 d!657262)))

(declare-fun lambda!82759 () Int)

(assert (=> bs!449682 (not (= lambda!82759 lambda!82703))))

(declare-fun bs!449683 () Bool)

(assert (= bs!449683 (and d!657766 d!657450)))

(assert (=> bs!449683 (not (= lambda!82759 lambda!82732))))

(declare-fun bs!449684 () Bool)

(assert (= bs!449684 (and d!657766 d!657528)))

(assert (=> bs!449684 (= (= lambda!82696 lambda!82703) (= lambda!82759 lambda!82735))))

(declare-fun bs!449685 () Bool)

(assert (= bs!449685 (and d!657766 d!657704)))

(assert (=> bs!449685 (= (= lambda!82696 lambda!82648) (= lambda!82759 lambda!82754))))

(declare-fun bs!449686 () Bool)

(assert (= bs!449686 (and d!657766 d!657676)))

(assert (=> bs!449686 (not (= lambda!82759 lambda!82750))))

(declare-fun bs!449687 () Bool)

(assert (= bs!449687 (and d!657766 b!2197822)))

(assert (=> bs!449687 (not (= lambda!82759 lambda!82747))))

(declare-fun bs!449688 () Bool)

(assert (= bs!449688 (and d!657766 d!657596)))

(assert (=> bs!449688 (= (= lambda!82696 lambda!82654) (= lambda!82759 lambda!82741))))

(declare-fun bs!449689 () Bool)

(assert (= bs!449689 (and d!657766 d!657520)))

(assert (=> bs!449689 (not (= lambda!82759 lambda!82734))))

(declare-fun bs!449690 () Bool)

(assert (= bs!449690 (and d!657766 d!657744)))

(assert (=> bs!449690 (not (= lambda!82759 lambda!82758))))

(declare-fun bs!449691 () Bool)

(assert (= bs!449691 (and d!657766 b!2196711)))

(assert (=> bs!449691 (not (= lambda!82759 lambda!82649))))

(declare-fun bs!449692 () Bool)

(assert (= bs!449692 (and d!657766 b!2197790)))

(assert (=> bs!449692 (not (= lambda!82759 lambda!82739))))

(declare-fun bs!449693 () Bool)

(assert (= bs!449693 (and d!657766 d!657574)))

(assert (=> bs!449693 (not (= lambda!82759 lambda!82737))))

(declare-fun bs!449694 () Bool)

(assert (= bs!449694 (and d!657766 b!2197789)))

(assert (=> bs!449694 (not (= lambda!82759 lambda!82738))))

(declare-fun bs!449695 () Bool)

(assert (= bs!449695 (and d!657766 d!657118)))

(assert (=> bs!449695 (= (= lambda!82696 lambda!82648) (= lambda!82759 lambda!82682))))

(declare-fun bs!449696 () Bool)

(assert (= bs!449696 (and d!657766 d!657576)))

(assert (=> bs!449696 (= (= lambda!82696 lambda!82635) (= lambda!82759 lambda!82740))))

(declare-fun bs!449697 () Bool)

(assert (= bs!449697 (and d!657766 d!657218)))

(assert (=> bs!449697 (not (= lambda!82759 lambda!82698))))

(declare-fun bs!449698 () Bool)

(assert (= bs!449698 (and d!657766 b!2197282)))

(assert (=> bs!449698 (not (= lambda!82759 lambda!82704))))

(declare-fun bs!449699 () Bool)

(assert (= bs!449699 (and d!657766 d!657702)))

(assert (=> bs!449699 (= (= lambda!82696 lambda!82682) (= lambda!82759 lambda!82751))))

(declare-fun bs!449700 () Bool)

(assert (= bs!449700 (and d!657766 b!2196712)))

(assert (=> bs!449700 (not (= lambda!82759 lambda!82650))))

(declare-fun bs!449701 () Bool)

(assert (= bs!449701 (and d!657766 d!657024)))

(assert (=> bs!449701 (not (= lambda!82759 lambda!82648))))

(declare-fun bs!449702 () Bool)

(assert (= bs!449702 (and d!657766 b!2197283)))

(assert (=> bs!449702 (not (= lambda!82759 lambda!82705))))

(declare-fun bs!449703 () Bool)

(assert (= bs!449703 (and d!657766 d!657718)))

(assert (=> bs!449703 (not (= lambda!82759 lambda!82755))))

(declare-fun bs!449704 () Bool)

(assert (= bs!449704 (and d!657766 d!657608)))

(assert (=> bs!449704 (not (= lambda!82759 lambda!82746))))

(declare-fun bs!449705 () Bool)

(assert (= bs!449705 (and d!657766 d!657134)))

(assert (=> bs!449705 (not (= lambda!82759 lambda!82691))))

(declare-fun bs!449706 () Bool)

(assert (= bs!449706 (and d!657766 d!657038)))

(assert (=> bs!449706 (not (= lambda!82759 lambda!82654))))

(declare-fun bs!449707 () Bool)

(assert (= bs!449707 (and d!657766 d!657022)))

(assert (=> bs!449707 (not (= lambda!82759 lambda!82635))))

(declare-fun bs!449708 () Bool)

(assert (= bs!449708 (and d!657766 b!2197823)))

(assert (=> bs!449708 (not (= lambda!82759 lambda!82748))))

(declare-fun bs!449709 () Bool)

(assert (= bs!449709 (and d!657766 d!657202)))

(assert (=> bs!449709 (= (= lambda!82696 lambda!82648) (= lambda!82759 lambda!82696))))

(declare-fun bs!449710 () Bool)

(assert (= bs!449710 (and d!657766 d!657606)))

(assert (=> bs!449710 (= (= lambda!82696 (ite c!350114 lambda!82704 lambda!82705)) (= lambda!82759 lambda!82745))))

(declare-fun bs!449711 () Bool)

(assert (= bs!449711 (and d!657766 d!657126)))

(assert (=> bs!449711 (not (= lambda!82759 lambda!82684))))

(declare-fun bs!449712 () Bool)

(assert (= bs!449712 (and d!657766 d!657220)))

(assert (=> bs!449712 (= (= lambda!82696 (ite c!349896 lambda!82649 lambda!82650)) (= lambda!82759 lambda!82701))))

(assert (=> d!657766 true))

(assert (=> d!657766 (< (dynLambda!11444 order!14811 lambda!82696) (dynLambda!11444 order!14811 lambda!82759))))

(assert (=> d!657766 (= (exists!816 lt!821814 lambda!82696) (not (forall!5232 lt!821814 lambda!82759)))))

(declare-fun bs!449713 () Bool)

(assert (= bs!449713 d!657766))

(declare-fun m!2640767 () Bool)

(assert (=> bs!449713 m!2640767))

(assert (=> d!657202 d!657766))

(declare-fun bs!449714 () Bool)

(declare-fun d!657768 () Bool)

(assert (= bs!449714 (and d!657768 d!657262)))

(declare-fun lambda!82762 () Int)

(assert (=> bs!449714 (not (= lambda!82762 lambda!82703))))

(declare-fun bs!449715 () Bool)

(assert (= bs!449715 (and d!657768 d!657450)))

(assert (=> bs!449715 (not (= lambda!82762 lambda!82732))))

(declare-fun bs!449716 () Bool)

(assert (= bs!449716 (and d!657768 d!657528)))

(assert (=> bs!449716 (= (= lambda!82648 lambda!82703) (= lambda!82762 lambda!82735))))

(declare-fun bs!449717 () Bool)

(assert (= bs!449717 (and d!657768 d!657704)))

(assert (=> bs!449717 (= lambda!82762 lambda!82754)))

(declare-fun bs!449718 () Bool)

(assert (= bs!449718 (and d!657768 d!657676)))

(assert (=> bs!449718 (not (= lambda!82762 lambda!82750))))

(declare-fun bs!449719 () Bool)

(assert (= bs!449719 (and d!657768 b!2197822)))

(assert (=> bs!449719 (not (= lambda!82762 lambda!82747))))

(declare-fun bs!449720 () Bool)

(assert (= bs!449720 (and d!657768 d!657596)))

(assert (=> bs!449720 (= (= lambda!82648 lambda!82654) (= lambda!82762 lambda!82741))))

(declare-fun bs!449721 () Bool)

(assert (= bs!449721 (and d!657768 d!657520)))

(assert (=> bs!449721 (not (= lambda!82762 lambda!82734))))

(declare-fun bs!449722 () Bool)

(assert (= bs!449722 (and d!657768 d!657744)))

(assert (=> bs!449722 (not (= lambda!82762 lambda!82758))))

(declare-fun bs!449723 () Bool)

(assert (= bs!449723 (and d!657768 b!2196711)))

(assert (=> bs!449723 (not (= lambda!82762 lambda!82649))))

(declare-fun bs!449724 () Bool)

(assert (= bs!449724 (and d!657768 b!2197790)))

(assert (=> bs!449724 (not (= lambda!82762 lambda!82739))))

(declare-fun bs!449725 () Bool)

(assert (= bs!449725 (and d!657768 d!657574)))

(assert (=> bs!449725 (not (= lambda!82762 lambda!82737))))

(declare-fun bs!449726 () Bool)

(assert (= bs!449726 (and d!657768 b!2197789)))

(assert (=> bs!449726 (not (= lambda!82762 lambda!82738))))

(declare-fun bs!449727 () Bool)

(assert (= bs!449727 (and d!657768 d!657118)))

(assert (=> bs!449727 (= lambda!82762 lambda!82682)))

(declare-fun bs!449728 () Bool)

(assert (= bs!449728 (and d!657768 d!657576)))

(assert (=> bs!449728 (= (= lambda!82648 lambda!82635) (= lambda!82762 lambda!82740))))

(declare-fun bs!449729 () Bool)

(assert (= bs!449729 (and d!657768 d!657218)))

(assert (=> bs!449729 (not (= lambda!82762 lambda!82698))))

(declare-fun bs!449730 () Bool)

(assert (= bs!449730 (and d!657768 b!2197282)))

(assert (=> bs!449730 (not (= lambda!82762 lambda!82704))))

(declare-fun bs!449731 () Bool)

(assert (= bs!449731 (and d!657768 d!657702)))

(assert (=> bs!449731 (= (= lambda!82648 lambda!82682) (= lambda!82762 lambda!82751))))

(declare-fun bs!449732 () Bool)

(assert (= bs!449732 (and d!657768 b!2196712)))

(assert (=> bs!449732 (not (= lambda!82762 lambda!82650))))

(declare-fun bs!449733 () Bool)

(assert (= bs!449733 (and d!657768 d!657024)))

(assert (=> bs!449733 (not (= lambda!82762 lambda!82648))))

(declare-fun bs!449734 () Bool)

(assert (= bs!449734 (and d!657768 b!2197283)))

(assert (=> bs!449734 (not (= lambda!82762 lambda!82705))))

(declare-fun bs!449735 () Bool)

(assert (= bs!449735 (and d!657768 d!657718)))

(assert (=> bs!449735 (not (= lambda!82762 lambda!82755))))

(declare-fun bs!449736 () Bool)

(assert (= bs!449736 (and d!657768 d!657608)))

(assert (=> bs!449736 (not (= lambda!82762 lambda!82746))))

(declare-fun bs!449737 () Bool)

(assert (= bs!449737 (and d!657768 d!657134)))

(assert (=> bs!449737 (not (= lambda!82762 lambda!82691))))

(declare-fun bs!449738 () Bool)

(assert (= bs!449738 (and d!657768 d!657038)))

(assert (=> bs!449738 (not (= lambda!82762 lambda!82654))))

(declare-fun bs!449739 () Bool)

(assert (= bs!449739 (and d!657768 d!657022)))

(assert (=> bs!449739 (not (= lambda!82762 lambda!82635))))

(declare-fun bs!449740 () Bool)

(assert (= bs!449740 (and d!657768 d!657766)))

(assert (=> bs!449740 (= (= lambda!82648 lambda!82696) (= lambda!82762 lambda!82759))))

(declare-fun bs!449741 () Bool)

(assert (= bs!449741 (and d!657768 b!2197823)))

(assert (=> bs!449741 (not (= lambda!82762 lambda!82748))))

(declare-fun bs!449742 () Bool)

(assert (= bs!449742 (and d!657768 d!657202)))

(assert (=> bs!449742 (= lambda!82762 lambda!82696)))

(declare-fun bs!449743 () Bool)

(assert (= bs!449743 (and d!657768 d!657606)))

(assert (=> bs!449743 (= (= lambda!82648 (ite c!350114 lambda!82704 lambda!82705)) (= lambda!82762 lambda!82745))))

(declare-fun bs!449744 () Bool)

(assert (= bs!449744 (and d!657768 d!657126)))

(assert (=> bs!449744 (not (= lambda!82762 lambda!82684))))

(declare-fun bs!449745 () Bool)

(assert (= bs!449745 (and d!657768 d!657220)))

(assert (=> bs!449745 (= (= lambda!82648 (ite c!349896 lambda!82649 lambda!82650)) (= lambda!82762 lambda!82701))))

(assert (=> d!657768 true))

(assert (=> d!657768 (< (dynLambda!11444 order!14811 lambda!82648) (dynLambda!11444 order!14811 lambda!82762))))

(assert (=> d!657768 (exists!816 lt!821814 lambda!82762)))

(assert (=> d!657768 true))

(declare-fun _$97!128 () Unit!38685)

(assert (=> d!657768 (= (choose!13008 lt!821814 lambda!82648) _$97!128)))

(declare-fun bs!449746 () Bool)

(assert (= bs!449746 d!657768))

(declare-fun m!2640769 () Bool)

(assert (=> bs!449746 m!2640769))

(assert (=> d!657202 d!657768))

(declare-fun d!657770 () Bool)

(declare-fun res!944743 () Bool)

(declare-fun e!1404674 () Bool)

(assert (=> d!657770 (=> res!944743 e!1404674)))

(assert (=> d!657770 (= res!944743 ((_ is Nil!25576) lt!821814))))

(assert (=> d!657770 (= (forall!5232 lt!821814 lambda!82648) e!1404674)))

(declare-fun b!2198025 () Bool)

(declare-fun e!1404675 () Bool)

(assert (=> b!2198025 (= e!1404674 e!1404675)))

(declare-fun res!944744 () Bool)

(assert (=> b!2198025 (=> (not res!944744) (not e!1404675))))

(assert (=> b!2198025 (= res!944744 (dynLambda!11448 lambda!82648 (h!30977 lt!821814)))))

(declare-fun b!2198026 () Bool)

(assert (=> b!2198026 (= e!1404675 (forall!5232 (t!198266 lt!821814) lambda!82648))))

(assert (= (and d!657770 (not res!944743)) b!2198025))

(assert (= (and b!2198025 res!944744) b!2198026))

(declare-fun b_lambda!71177 () Bool)

(assert (=> (not b_lambda!71177) (not b!2198025)))

(declare-fun m!2640771 () Bool)

(assert (=> b!2198025 m!2640771))

(declare-fun m!2640773 () Bool)

(assert (=> b!2198026 m!2640773))

(assert (=> d!657202 d!657770))

(declare-fun b!2198039 () Bool)

(declare-fun e!1404684 () C!12516)

(declare-fun call!132048 () C!12516)

(assert (=> b!2198039 (= e!1404684 call!132048)))

(declare-fun b!2198040 () Bool)

(declare-fun e!1404687 () Bool)

(assert (=> b!2198040 (= e!1404687 (appendIndex!252 (t!198264 (list!9836 (left!19636 (c!349872 totalInput!923)))) (list!9836 (right!19966 (c!349872 totalInput!923))) (- from!1114 1)))))

(declare-fun bm!132043 () Bool)

(declare-fun c!350372 () Bool)

(declare-fun e!1404685 () Int)

(assert (=> bm!132043 (= call!132048 (apply!6258 (ite c!350372 (list!9836 (left!19636 (c!349872 totalInput!923))) (list!9836 (right!19966 (c!349872 totalInput!923)))) e!1404685))))

(declare-fun c!350371 () Bool)

(assert (=> bm!132043 (= c!350371 c!350372)))

(declare-fun b!2198041 () Bool)

(assert (=> b!2198041 (= e!1404685 (- from!1114 (size!19938 (list!9836 (left!19636 (c!349872 totalInput!923))))))))

(declare-fun b!2198042 () Bool)

(assert (=> b!2198042 (= e!1404684 call!132048)))

(declare-fun b!2198043 () Bool)

(assert (=> b!2198043 (= e!1404685 from!1114)))

(declare-fun d!657772 () Bool)

(assert (=> d!657772 (= (apply!6258 (++!6423 (list!9836 (left!19636 (c!349872 totalInput!923))) (list!9836 (right!19966 (c!349872 totalInput!923)))) from!1114) e!1404684)))

(assert (=> d!657772 (= c!350372 (< from!1114 (size!19938 (list!9836 (left!19636 (c!349872 totalInput!923))))))))

(declare-fun lt!822157 () Bool)

(assert (=> d!657772 (= lt!822157 e!1404687)))

(declare-fun res!944749 () Bool)

(assert (=> d!657772 (=> res!944749 e!1404687)))

(assert (=> d!657772 (= res!944749 (or ((_ is Nil!25574) (list!9836 (left!19636 (c!349872 totalInput!923)))) (= from!1114 0)))))

(declare-fun e!1404686 () Bool)

(assert (=> d!657772 e!1404686))

(declare-fun res!944750 () Bool)

(assert (=> d!657772 (=> (not res!944750) (not e!1404686))))

(assert (=> d!657772 (= res!944750 (<= 0 from!1114))))

(assert (=> d!657772 (= (appendIndex!252 (list!9836 (left!19636 (c!349872 totalInput!923))) (list!9836 (right!19966 (c!349872 totalInput!923))) from!1114) true)))

(declare-fun b!2198044 () Bool)

(assert (=> b!2198044 (= e!1404686 (< from!1114 (+ (size!19938 (list!9836 (left!19636 (c!349872 totalInput!923)))) (size!19938 (list!9836 (right!19966 (c!349872 totalInput!923)))))))))

(assert (= (and d!657772 res!944750) b!2198044))

(assert (= (and d!657772 (not res!944749)) b!2198040))

(assert (= (and d!657772 c!350372) b!2198039))

(assert (= (and d!657772 (not c!350372)) b!2198042))

(assert (= (or b!2198039 b!2198042) bm!132043))

(assert (= (and bm!132043 c!350371) b!2198043))

(assert (= (and bm!132043 (not c!350371)) b!2198041))

(assert (=> d!657772 m!2639481))

(assert (=> d!657772 m!2639483))

(assert (=> d!657772 m!2639485))

(assert (=> d!657772 m!2639485))

(declare-fun m!2640775 () Bool)

(assert (=> d!657772 m!2640775))

(assert (=> d!657772 m!2639481))

(assert (=> d!657772 m!2640229))

(declare-fun m!2640777 () Bool)

(assert (=> bm!132043 m!2640777))

(assert (=> b!2198044 m!2639481))

(assert (=> b!2198044 m!2640229))

(assert (=> b!2198044 m!2639483))

(assert (=> b!2198044 m!2640231))

(assert (=> b!2198040 m!2639483))

(declare-fun m!2640779 () Bool)

(assert (=> b!2198040 m!2640779))

(assert (=> b!2198041 m!2639481))

(assert (=> b!2198041 m!2640229))

(assert (=> b!2197228 d!657772))

(assert (=> b!2197228 d!657494))

(assert (=> b!2197228 d!657496))

(assert (=> b!2197228 d!657560))

(declare-fun bs!449747 () Bool)

(declare-fun d!657774 () Bool)

(assert (= bs!449747 (and d!657774 d!657262)))

(declare-fun lambda!82763 () Int)

(assert (=> bs!449747 (not (= lambda!82763 lambda!82703))))

(declare-fun bs!449748 () Bool)

(assert (= bs!449748 (and d!657774 d!657450)))

(assert (=> bs!449748 (not (= lambda!82763 lambda!82732))))

(declare-fun bs!449749 () Bool)

(assert (= bs!449749 (and d!657774 d!657528)))

(assert (=> bs!449749 (= lambda!82763 lambda!82735)))

(declare-fun bs!449750 () Bool)

(assert (= bs!449750 (and d!657774 d!657704)))

(assert (=> bs!449750 (= (= lambda!82703 lambda!82648) (= lambda!82763 lambda!82754))))

(declare-fun bs!449751 () Bool)

(assert (= bs!449751 (and d!657774 d!657676)))

(assert (=> bs!449751 (not (= lambda!82763 lambda!82750))))

(declare-fun bs!449752 () Bool)

(assert (= bs!449752 (and d!657774 b!2197822)))

(assert (=> bs!449752 (not (= lambda!82763 lambda!82747))))

(declare-fun bs!449753 () Bool)

(assert (= bs!449753 (and d!657774 d!657596)))

(assert (=> bs!449753 (= (= lambda!82703 lambda!82654) (= lambda!82763 lambda!82741))))

(declare-fun bs!449754 () Bool)

(assert (= bs!449754 (and d!657774 d!657520)))

(assert (=> bs!449754 (not (= lambda!82763 lambda!82734))))

(declare-fun bs!449755 () Bool)

(assert (= bs!449755 (and d!657774 d!657744)))

(assert (=> bs!449755 (not (= lambda!82763 lambda!82758))))

(declare-fun bs!449756 () Bool)

(assert (= bs!449756 (and d!657774 b!2196711)))

(assert (=> bs!449756 (not (= lambda!82763 lambda!82649))))

(declare-fun bs!449757 () Bool)

(assert (= bs!449757 (and d!657774 d!657574)))

(assert (=> bs!449757 (not (= lambda!82763 lambda!82737))))

(declare-fun bs!449758 () Bool)

(assert (= bs!449758 (and d!657774 b!2197789)))

(assert (=> bs!449758 (not (= lambda!82763 lambda!82738))))

(declare-fun bs!449759 () Bool)

(assert (= bs!449759 (and d!657774 d!657118)))

(assert (=> bs!449759 (= (= lambda!82703 lambda!82648) (= lambda!82763 lambda!82682))))

(declare-fun bs!449760 () Bool)

(assert (= bs!449760 (and d!657774 d!657576)))

(assert (=> bs!449760 (= (= lambda!82703 lambda!82635) (= lambda!82763 lambda!82740))))

(declare-fun bs!449761 () Bool)

(assert (= bs!449761 (and d!657774 d!657218)))

(assert (=> bs!449761 (not (= lambda!82763 lambda!82698))))

(declare-fun bs!449762 () Bool)

(assert (= bs!449762 (and d!657774 b!2197282)))

(assert (=> bs!449762 (not (= lambda!82763 lambda!82704))))

(declare-fun bs!449763 () Bool)

(assert (= bs!449763 (and d!657774 d!657702)))

(assert (=> bs!449763 (= (= lambda!82703 lambda!82682) (= lambda!82763 lambda!82751))))

(declare-fun bs!449764 () Bool)

(assert (= bs!449764 (and d!657774 b!2196712)))

(assert (=> bs!449764 (not (= lambda!82763 lambda!82650))))

(declare-fun bs!449765 () Bool)

(assert (= bs!449765 (and d!657774 d!657024)))

(assert (=> bs!449765 (not (= lambda!82763 lambda!82648))))

(declare-fun bs!449766 () Bool)

(assert (= bs!449766 (and d!657774 b!2197283)))

(assert (=> bs!449766 (not (= lambda!82763 lambda!82705))))

(declare-fun bs!449767 () Bool)

(assert (= bs!449767 (and d!657774 d!657718)))

(assert (=> bs!449767 (not (= lambda!82763 lambda!82755))))

(declare-fun bs!449768 () Bool)

(assert (= bs!449768 (and d!657774 d!657608)))

(assert (=> bs!449768 (not (= lambda!82763 lambda!82746))))

(declare-fun bs!449769 () Bool)

(assert (= bs!449769 (and d!657774 d!657134)))

(assert (=> bs!449769 (not (= lambda!82763 lambda!82691))))

(declare-fun bs!449770 () Bool)

(assert (= bs!449770 (and d!657774 d!657038)))

(assert (=> bs!449770 (not (= lambda!82763 lambda!82654))))

(declare-fun bs!449771 () Bool)

(assert (= bs!449771 (and d!657774 d!657022)))

(assert (=> bs!449771 (not (= lambda!82763 lambda!82635))))

(declare-fun bs!449772 () Bool)

(assert (= bs!449772 (and d!657774 d!657766)))

(assert (=> bs!449772 (= (= lambda!82703 lambda!82696) (= lambda!82763 lambda!82759))))

(declare-fun bs!449773 () Bool)

(assert (= bs!449773 (and d!657774 b!2197823)))

(assert (=> bs!449773 (not (= lambda!82763 lambda!82748))))

(declare-fun bs!449774 () Bool)

(assert (= bs!449774 (and d!657774 d!657202)))

(assert (=> bs!449774 (= (= lambda!82703 lambda!82648) (= lambda!82763 lambda!82696))))

(declare-fun bs!449775 () Bool)

(assert (= bs!449775 (and d!657774 d!657606)))

(assert (=> bs!449775 (= (= lambda!82703 (ite c!350114 lambda!82704 lambda!82705)) (= lambda!82763 lambda!82745))))

(declare-fun bs!449776 () Bool)

(assert (= bs!449776 (and d!657774 d!657126)))

(assert (=> bs!449776 (not (= lambda!82763 lambda!82684))))

(declare-fun bs!449777 () Bool)

(assert (= bs!449777 (and d!657774 d!657220)))

(assert (=> bs!449777 (= (= lambda!82703 (ite c!349896 lambda!82649 lambda!82650)) (= lambda!82763 lambda!82701))))

(declare-fun bs!449778 () Bool)

(assert (= bs!449778 (and d!657774 b!2197790)))

(assert (=> bs!449778 (not (= lambda!82763 lambda!82739))))

(declare-fun bs!449779 () Bool)

(assert (= bs!449779 (and d!657774 d!657768)))

(assert (=> bs!449779 (= (= lambda!82703 lambda!82648) (= lambda!82763 lambda!82762))))

(assert (=> d!657774 true))

(assert (=> d!657774 (< (dynLambda!11444 order!14811 lambda!82703) (dynLambda!11444 order!14811 lambda!82763))))

(assert (=> d!657774 (exists!816 lt!821973 lambda!82763)))

(declare-fun lt!822158 () Unit!38685)

(assert (=> d!657774 (= lt!822158 (choose!13008 lt!821973 lambda!82703))))

(assert (=> d!657774 (not (forall!5232 lt!821973 lambda!82703))))

(assert (=> d!657774 (= (lemmaNotForallThenExists!47 lt!821973 lambda!82703) lt!822158)))

(declare-fun bs!449780 () Bool)

(assert (= bs!449780 d!657774))

(declare-fun m!2640781 () Bool)

(assert (=> bs!449780 m!2640781))

(declare-fun m!2640783 () Bool)

(assert (=> bs!449780 m!2640783))

(declare-fun m!2640785 () Bool)

(assert (=> bs!449780 m!2640785))

(assert (=> b!2197282 d!657774))

(declare-fun d!657776 () Bool)

(assert (=> d!657776 (= (flatMap!153 z!3955 lambda!82702) (choose!13010 z!3955 lambda!82702))))

(declare-fun bs!449781 () Bool)

(assert (= bs!449781 d!657776))

(declare-fun m!2640787 () Bool)

(assert (=> bs!449781 m!2640787))

(assert (=> d!657230 d!657776))

(declare-fun lt!822160 () Int)

(declare-fun d!657778 () Bool)

(assert (=> d!657778 (and (>= lt!822160 (- 1)) (< lt!822160 lt!821763) (>= lt!822160 e!1404199) (or (= lt!822160 e!1404199) (>= lt!822160 (+ 1 from!1114 1 1))))))

(declare-fun e!1404689 () Int)

(assert (=> d!657778 (= lt!822160 e!1404689)))

(declare-fun c!350373 () Bool)

(declare-fun e!1404690 () Bool)

(assert (=> d!657778 (= c!350373 e!1404690)))

(declare-fun res!944751 () Bool)

(assert (=> d!657778 (=> res!944751 e!1404690)))

(assert (=> d!657778 (= res!944751 (= (+ 1 from!1114 1 1) lt!821763))))

(assert (=> d!657778 (and (>= (+ 1 from!1114 1 1) 0) (<= (+ 1 from!1114 1 1) lt!821763))))

(assert (=> d!657778 (= (furthestNullablePosition!353 lt!821950 (+ 1 from!1114 1 1) totalInput!923 lt!821763 e!1404199) lt!822160)))

(declare-fun e!1404688 () Int)

(declare-fun b!2198045 () Bool)

(declare-fun lt!822159 () (InoxSet Context!3510))

(assert (=> b!2198045 (= e!1404689 (furthestNullablePosition!353 lt!822159 (+ 1 from!1114 1 1 1) totalInput!923 lt!821763 e!1404688))))

(assert (=> b!2198045 (= lt!822159 (derivationStepZipper!257 lt!821950 (apply!6259 totalInput!923 (+ 1 from!1114 1 1))))))

(declare-fun c!350374 () Bool)

(assert (=> b!2198045 (= c!350374 (nullableZipper!465 lt!822159))))

(declare-fun b!2198046 () Bool)

(assert (=> b!2198046 (= e!1404689 e!1404199)))

(declare-fun b!2198047 () Bool)

(assert (=> b!2198047 (= e!1404690 (lostCauseZipper!301 lt!821950))))

(declare-fun b!2198048 () Bool)

(assert (=> b!2198048 (= e!1404688 (+ 1 from!1114 1 1))))

(declare-fun b!2198049 () Bool)

(assert (=> b!2198049 (= e!1404688 e!1404199)))

(assert (= (and d!657778 (not res!944751)) b!2198047))

(assert (= (and d!657778 c!350373) b!2198046))

(assert (= (and d!657778 (not c!350373)) b!2198045))

(assert (= (and b!2198045 c!350374) b!2198048))

(assert (= (and b!2198045 (not c!350374)) b!2198049))

(declare-fun m!2640789 () Bool)

(assert (=> b!2198045 m!2640789))

(declare-fun m!2640791 () Bool)

(assert (=> b!2198045 m!2640791))

(assert (=> b!2198045 m!2640791))

(declare-fun m!2640793 () Bool)

(assert (=> b!2198045 m!2640793))

(declare-fun m!2640795 () Bool)

(assert (=> b!2198045 m!2640795))

(declare-fun m!2640797 () Bool)

(assert (=> b!2198047 m!2640797))

(assert (=> b!2197202 d!657778))

(declare-fun bs!449782 () Bool)

(declare-fun d!657780 () Bool)

(assert (= bs!449782 (and d!657780 d!657544)))

(declare-fun lambda!82764 () Int)

(assert (=> bs!449782 (= (= (apply!6259 totalInput!923 (+ 1 from!1114 1)) (head!4687 (tail!3159 (take!363 lt!821768 lt!821767)))) (= lambda!82764 lambda!82736))))

(declare-fun bs!449783 () Bool)

(assert (= bs!449783 (and d!657780 d!657010)))

(assert (=> bs!449783 (= (= (apply!6259 totalInput!923 (+ 1 from!1114 1)) lt!821772) (= lambda!82764 lambda!82632))))

(declare-fun bs!449784 () Bool)

(assert (= bs!449784 (and d!657780 d!657740)))

(assert (=> bs!449784 (= (= (apply!6259 totalInput!923 (+ 1 from!1114 1)) (apply!6259 totalInput!923 (+ from!1114 1))) (= lambda!82764 lambda!82757))))

(declare-fun bs!449785 () Bool)

(assert (= bs!449785 (and d!657780 d!657124)))

(assert (=> bs!449785 (= (= (apply!6259 totalInput!923 (+ 1 from!1114 1)) (apply!6259 totalInput!923 from!1114)) (= lambda!82764 lambda!82683))))

(declare-fun bs!449786 () Bool)

(assert (= bs!449786 (and d!657780 d!657472)))

(assert (=> bs!449786 (= (= (apply!6259 totalInput!923 (+ 1 from!1114 1)) (head!4687 (tail!3159 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774)))) (= lambda!82764 lambda!82733))))

(declare-fun bs!449787 () Bool)

(assert (= bs!449787 (and d!657780 d!657230)))

(assert (=> bs!449787 (= (= (apply!6259 totalInput!923 (+ 1 from!1114 1)) (head!4687 (take!363 lt!821768 lt!821767))) (= lambda!82764 lambda!82702))))

(declare-fun bs!449788 () Bool)

(assert (= bs!449788 (and d!657780 d!657724)))

(assert (=> bs!449788 (= (= (apply!6259 totalInput!923 (+ 1 from!1114 1)) (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821839))) (= lambda!82764 lambda!82756))))

(declare-fun bs!449789 () Bool)

(assert (= bs!449789 (and d!657780 d!657184)))

(assert (=> bs!449789 (= (= (apply!6259 totalInput!923 (+ 1 from!1114 1)) (head!4687 (take!363 (drop!1373 (list!9835 totalInput!923) (+ 1 from!1114)) lt!821774))) (= lambda!82764 lambda!82692))))

(declare-fun bs!449790 () Bool)

(assert (= bs!449790 (and d!657780 d!657214)))

(assert (=> bs!449790 (= (= (apply!6259 totalInput!923 (+ 1 from!1114 1)) (apply!6259 totalInput!923 (+ 1 from!1114))) (= lambda!82764 lambda!82697))))

(assert (=> d!657780 true))

(assert (=> d!657780 (= (derivationStepZipper!257 lt!821789 (apply!6259 totalInput!923 (+ 1 from!1114 1))) (flatMap!153 lt!821789 lambda!82764))))

(declare-fun bs!449791 () Bool)

(assert (= bs!449791 d!657780))

(declare-fun m!2640799 () Bool)

(assert (=> bs!449791 m!2640799))

(assert (=> b!2197202 d!657780))

(declare-fun d!657782 () Bool)

(declare-fun lt!822161 () C!12516)

(assert (=> d!657782 (= lt!822161 (apply!6258 (list!9835 totalInput!923) (+ 1 from!1114 1)))))

(assert (=> d!657782 (= lt!822161 (apply!6260 (c!349872 totalInput!923) (+ 1 from!1114 1)))))

(declare-fun e!1404691 () Bool)

(assert (=> d!657782 e!1404691))

(declare-fun res!944752 () Bool)

(assert (=> d!657782 (=> (not res!944752) (not e!1404691))))

(assert (=> d!657782 (= res!944752 (<= 0 (+ 1 from!1114 1)))))

(assert (=> d!657782 (= (apply!6259 totalInput!923 (+ 1 from!1114 1)) lt!822161)))

(declare-fun b!2198050 () Bool)

(assert (=> b!2198050 (= e!1404691 (< (+ 1 from!1114 1) (size!19937 totalInput!923)))))

(assert (= (and d!657782 res!944752) b!2198050))

(assert (=> d!657782 m!2639029))

(assert (=> d!657782 m!2639029))

(declare-fun m!2640801 () Bool)

(assert (=> d!657782 m!2640801))

(declare-fun m!2640803 () Bool)

(assert (=> d!657782 m!2640803))

(assert (=> b!2198050 m!2639059))

(assert (=> b!2197202 d!657782))

(declare-fun bs!449792 () Bool)

(declare-fun d!657784 () Bool)

(assert (= bs!449792 (and d!657784 d!657262)))

(declare-fun lambda!82765 () Int)

(assert (=> bs!449792 (not (= lambda!82765 lambda!82703))))

(declare-fun bs!449793 () Bool)

(assert (= bs!449793 (and d!657784 d!657450)))

(assert (=> bs!449793 (= lambda!82765 lambda!82732)))

(declare-fun bs!449794 () Bool)

(assert (= bs!449794 (and d!657784 d!657528)))

(assert (=> bs!449794 (not (= lambda!82765 lambda!82735))))

(declare-fun bs!449795 () Bool)

(assert (= bs!449795 (and d!657784 d!657704)))

(assert (=> bs!449795 (not (= lambda!82765 lambda!82754))))

(declare-fun bs!449796 () Bool)

(assert (= bs!449796 (and d!657784 d!657676)))

(assert (=> bs!449796 (not (= lambda!82765 lambda!82750))))

(declare-fun bs!449797 () Bool)

(assert (= bs!449797 (and d!657784 b!2197822)))

(assert (=> bs!449797 (not (= lambda!82765 lambda!82747))))

(declare-fun bs!449798 () Bool)

(assert (= bs!449798 (and d!657784 d!657596)))

(assert (=> bs!449798 (not (= lambda!82765 lambda!82741))))

(declare-fun bs!449799 () Bool)

(assert (= bs!449799 (and d!657784 d!657520)))

(assert (=> bs!449799 (= lambda!82765 lambda!82734)))

(declare-fun bs!449800 () Bool)

(assert (= bs!449800 (and d!657784 d!657744)))

(assert (=> bs!449800 (= lambda!82765 lambda!82758)))

(declare-fun bs!449801 () Bool)

(assert (= bs!449801 (and d!657784 b!2196711)))

(assert (=> bs!449801 (not (= lambda!82765 lambda!82649))))

(declare-fun bs!449802 () Bool)

(assert (= bs!449802 (and d!657784 d!657774)))

(assert (=> bs!449802 (not (= lambda!82765 lambda!82763))))

(declare-fun bs!449803 () Bool)

(assert (= bs!449803 (and d!657784 d!657574)))

(assert (=> bs!449803 (not (= lambda!82765 lambda!82737))))

(declare-fun bs!449804 () Bool)

(assert (= bs!449804 (and d!657784 b!2197789)))

(assert (=> bs!449804 (not (= lambda!82765 lambda!82738))))

(declare-fun bs!449805 () Bool)

(assert (= bs!449805 (and d!657784 d!657118)))

(assert (=> bs!449805 (not (= lambda!82765 lambda!82682))))

(declare-fun bs!449806 () Bool)

(assert (= bs!449806 (and d!657784 d!657576)))

(assert (=> bs!449806 (not (= lambda!82765 lambda!82740))))

(declare-fun bs!449807 () Bool)

(assert (= bs!449807 (and d!657784 d!657218)))

(assert (=> bs!449807 (= lambda!82765 lambda!82698)))

(declare-fun bs!449808 () Bool)

(assert (= bs!449808 (and d!657784 b!2197282)))

(assert (=> bs!449808 (not (= lambda!82765 lambda!82704))))

(declare-fun bs!449809 () Bool)

(assert (= bs!449809 (and d!657784 d!657702)))

(assert (=> bs!449809 (not (= lambda!82765 lambda!82751))))

(declare-fun bs!449810 () Bool)

(assert (= bs!449810 (and d!657784 b!2196712)))

(assert (=> bs!449810 (not (= lambda!82765 lambda!82650))))

(declare-fun bs!449811 () Bool)

(assert (= bs!449811 (and d!657784 d!657024)))

(assert (=> bs!449811 (not (= lambda!82765 lambda!82648))))

(declare-fun bs!449812 () Bool)

(assert (= bs!449812 (and d!657784 b!2197283)))

(assert (=> bs!449812 (not (= lambda!82765 lambda!82705))))

(declare-fun bs!449813 () Bool)

(assert (= bs!449813 (and d!657784 d!657718)))

(assert (=> bs!449813 (= lambda!82765 lambda!82755)))

(declare-fun bs!449814 () Bool)

(assert (= bs!449814 (and d!657784 d!657608)))

(assert (=> bs!449814 (not (= lambda!82765 lambda!82746))))

(declare-fun bs!449815 () Bool)

(assert (= bs!449815 (and d!657784 d!657134)))

(assert (=> bs!449815 (not (= lambda!82765 lambda!82691))))

(declare-fun bs!449816 () Bool)

(assert (= bs!449816 (and d!657784 d!657038)))

(assert (=> bs!449816 (= lambda!82765 lambda!82654)))

(declare-fun bs!449817 () Bool)

(assert (= bs!449817 (and d!657784 d!657022)))

(assert (=> bs!449817 (= lambda!82765 lambda!82635)))

(declare-fun bs!449818 () Bool)

(assert (= bs!449818 (and d!657784 d!657766)))

(assert (=> bs!449818 (not (= lambda!82765 lambda!82759))))

(declare-fun bs!449819 () Bool)

(assert (= bs!449819 (and d!657784 b!2197823)))

(assert (=> bs!449819 (not (= lambda!82765 lambda!82748))))

(declare-fun bs!449820 () Bool)

(assert (= bs!449820 (and d!657784 d!657202)))

(assert (=> bs!449820 (not (= lambda!82765 lambda!82696))))

(declare-fun bs!449821 () Bool)

(assert (= bs!449821 (and d!657784 d!657606)))

(assert (=> bs!449821 (not (= lambda!82765 lambda!82745))))

(declare-fun bs!449822 () Bool)

(assert (= bs!449822 (and d!657784 d!657126)))

(assert (=> bs!449822 (= lambda!82765 lambda!82684)))

(declare-fun bs!449823 () Bool)

(assert (= bs!449823 (and d!657784 d!657220)))

(assert (=> bs!449823 (not (= lambda!82765 lambda!82701))))

(declare-fun bs!449824 () Bool)

(assert (= bs!449824 (and d!657784 b!2197790)))

(assert (=> bs!449824 (not (= lambda!82765 lambda!82739))))

(declare-fun bs!449825 () Bool)

(assert (= bs!449825 (and d!657784 d!657768)))

(assert (=> bs!449825 (not (= lambda!82765 lambda!82762))))

(assert (=> d!657784 (= (nullableZipper!465 lt!821950) (exists!815 lt!821950 lambda!82765))))

(declare-fun bs!449826 () Bool)

(assert (= bs!449826 d!657784))

(declare-fun m!2640805 () Bool)

(assert (=> bs!449826 m!2640805))

(assert (=> b!2197202 d!657784))

(declare-fun b!2198053 () Bool)

(declare-fun e!1404692 () Bool)

(declare-fun tp!684271 () Bool)

(assert (=> b!2198053 (= e!1404692 tp!684271)))

(declare-fun b!2198052 () Bool)

(declare-fun tp!684269 () Bool)

(declare-fun tp!684273 () Bool)

(assert (=> b!2198052 (= e!1404692 (and tp!684269 tp!684273))))

(declare-fun b!2198054 () Bool)

(declare-fun tp!684272 () Bool)

(declare-fun tp!684270 () Bool)

(assert (=> b!2198054 (= e!1404692 (and tp!684272 tp!684270))))

(declare-fun b!2198051 () Bool)

(assert (=> b!2198051 (= e!1404692 tp_is_empty!9731)))

(assert (=> b!2197305 (= tp!684202 e!1404692)))

(assert (= (and b!2197305 ((_ is ElementMatch!6185) (h!30976 (exprs!2255 setElem!18833)))) b!2198051))

(assert (= (and b!2197305 ((_ is Concat!10487) (h!30976 (exprs!2255 setElem!18833)))) b!2198052))

(assert (= (and b!2197305 ((_ is Star!6185) (h!30976 (exprs!2255 setElem!18833)))) b!2198053))

(assert (= (and b!2197305 ((_ is Union!6185) (h!30976 (exprs!2255 setElem!18833)))) b!2198054))

(declare-fun b!2198055 () Bool)

(declare-fun e!1404693 () Bool)

(declare-fun tp!684274 () Bool)

(declare-fun tp!684275 () Bool)

(assert (=> b!2198055 (= e!1404693 (and tp!684274 tp!684275))))

(assert (=> b!2197305 (= tp!684203 e!1404693)))

(assert (= (and b!2197305 ((_ is Cons!25575) (t!198265 (exprs!2255 setElem!18833)))) b!2198055))

(declare-fun b!2198056 () Bool)

(declare-fun e!1404694 () Bool)

(declare-fun tp!684276 () Bool)

(assert (=> b!2198056 (= e!1404694 (and tp_is_empty!9731 tp!684276))))

(assert (=> b!2197326 (= tp!684225 e!1404694)))

(assert (= (and b!2197326 ((_ is Cons!25574) (innerList!8381 (xs!11263 (right!19966 (c!349872 totalInput!923)))))) b!2198056))

(declare-fun b!2198059 () Bool)

(declare-fun e!1404695 () Bool)

(declare-fun tp!684279 () Bool)

(assert (=> b!2198059 (= e!1404695 tp!684279)))

(declare-fun b!2198058 () Bool)

(declare-fun tp!684277 () Bool)

(declare-fun tp!684281 () Bool)

(assert (=> b!2198058 (= e!1404695 (and tp!684277 tp!684281))))

(declare-fun b!2198060 () Bool)

(declare-fun tp!684280 () Bool)

(declare-fun tp!684278 () Bool)

(assert (=> b!2198060 (= e!1404695 (and tp!684280 tp!684278))))

(declare-fun b!2198057 () Bool)

(assert (=> b!2198057 (= e!1404695 tp_is_empty!9731)))

(assert (=> b!2197320 (= tp!684219 e!1404695)))

(assert (= (and b!2197320 ((_ is ElementMatch!6185) (h!30976 (t!198265 (exprs!2255 setElem!18830))))) b!2198057))

(assert (= (and b!2197320 ((_ is Concat!10487) (h!30976 (t!198265 (exprs!2255 setElem!18830))))) b!2198058))

(assert (= (and b!2197320 ((_ is Star!6185) (h!30976 (t!198265 (exprs!2255 setElem!18830))))) b!2198059))

(assert (= (and b!2197320 ((_ is Union!6185) (h!30976 (t!198265 (exprs!2255 setElem!18830))))) b!2198060))

(declare-fun b!2198061 () Bool)

(declare-fun e!1404696 () Bool)

(declare-fun tp!684282 () Bool)

(declare-fun tp!684283 () Bool)

(assert (=> b!2198061 (= e!1404696 (and tp!684282 tp!684283))))

(assert (=> b!2197320 (= tp!684220 e!1404696)))

(assert (= (and b!2197320 ((_ is Cons!25575) (t!198265 (t!198265 (exprs!2255 setElem!18830))))) b!2198061))

(declare-fun tp!684284 () Bool)

(declare-fun e!1404697 () Bool)

(declare-fun b!2198062 () Bool)

(declare-fun tp!684286 () Bool)

(assert (=> b!2198062 (= e!1404697 (and (inv!34276 (left!19636 (left!19636 (right!19966 (c!349872 totalInput!923))))) tp!684286 (inv!34276 (right!19966 (left!19636 (right!19966 (c!349872 totalInput!923))))) tp!684284))))

(declare-fun b!2198064 () Bool)

(declare-fun e!1404698 () Bool)

(declare-fun tp!684285 () Bool)

(assert (=> b!2198064 (= e!1404698 tp!684285)))

(declare-fun b!2198063 () Bool)

(assert (=> b!2198063 (= e!1404697 (and (inv!34283 (xs!11263 (left!19636 (right!19966 (c!349872 totalInput!923))))) e!1404698))))

(assert (=> b!2197324 (= tp!684226 (and (inv!34276 (left!19636 (right!19966 (c!349872 totalInput!923)))) e!1404697))))

(assert (= (and b!2197324 ((_ is Node!8321) (left!19636 (right!19966 (c!349872 totalInput!923))))) b!2198062))

(assert (= b!2198063 b!2198064))

(assert (= (and b!2197324 ((_ is Leaf!12181) (left!19636 (right!19966 (c!349872 totalInput!923))))) b!2198063))

(declare-fun m!2640807 () Bool)

(assert (=> b!2198062 m!2640807))

(declare-fun m!2640809 () Bool)

(assert (=> b!2198062 m!2640809))

(declare-fun m!2640811 () Bool)

(assert (=> b!2198063 m!2640811))

(assert (=> b!2197324 m!2639759))

(declare-fun tp!684289 () Bool)

(declare-fun b!2198065 () Bool)

(declare-fun e!1404699 () Bool)

(declare-fun tp!684287 () Bool)

(assert (=> b!2198065 (= e!1404699 (and (inv!34276 (left!19636 (right!19966 (right!19966 (c!349872 totalInput!923))))) tp!684289 (inv!34276 (right!19966 (right!19966 (right!19966 (c!349872 totalInput!923))))) tp!684287))))

(declare-fun b!2198067 () Bool)

(declare-fun e!1404700 () Bool)

(declare-fun tp!684288 () Bool)

(assert (=> b!2198067 (= e!1404700 tp!684288)))

(declare-fun b!2198066 () Bool)

(assert (=> b!2198066 (= e!1404699 (and (inv!34283 (xs!11263 (right!19966 (right!19966 (c!349872 totalInput!923))))) e!1404700))))

(assert (=> b!2197324 (= tp!684224 (and (inv!34276 (right!19966 (right!19966 (c!349872 totalInput!923)))) e!1404699))))

(assert (= (and b!2197324 ((_ is Node!8321) (right!19966 (right!19966 (c!349872 totalInput!923))))) b!2198065))

(assert (= b!2198066 b!2198067))

(assert (= (and b!2197324 ((_ is Leaf!12181) (right!19966 (right!19966 (c!349872 totalInput!923))))) b!2198066))

(declare-fun m!2640813 () Bool)

(assert (=> b!2198065 m!2640813))

(declare-fun m!2640815 () Bool)

(assert (=> b!2198065 m!2640815))

(declare-fun m!2640817 () Bool)

(assert (=> b!2198066 m!2640817))

(assert (=> b!2197324 m!2639761))

(declare-fun b!2198068 () Bool)

(declare-fun e!1404701 () Bool)

(declare-fun tp!684290 () Bool)

(declare-fun tp!684291 () Bool)

(assert (=> b!2198068 (= e!1404701 (and tp!684290 tp!684291))))

(assert (=> b!2197304 (= tp!684201 e!1404701)))

(assert (= (and b!2197304 ((_ is Cons!25575) (exprs!2255 setElem!18837))) b!2198068))

(declare-fun b!2198069 () Bool)

(declare-fun e!1404702 () Bool)

(declare-fun tp!684292 () Bool)

(assert (=> b!2198069 (= e!1404702 (and tp_is_empty!9731 tp!684292))))

(assert (=> b!2197323 (= tp!684222 e!1404702)))

(assert (= (and b!2197323 ((_ is Cons!25574) (innerList!8381 (xs!11263 (left!19636 (c!349872 totalInput!923)))))) b!2198069))

(declare-fun b!2198070 () Bool)

(declare-fun e!1404703 () Bool)

(declare-fun tp!684293 () Bool)

(assert (=> b!2198070 (= e!1404703 (and tp_is_empty!9731 tp!684293))))

(assert (=> b!2197303 (= tp!684199 e!1404703)))

(assert (= (and b!2197303 ((_ is Cons!25574) (t!198264 (innerList!8381 (xs!11263 (c!349872 totalInput!923)))))) b!2198070))

(declare-fun condSetEmpty!18842 () Bool)

(assert (=> setNonEmpty!18837 (= condSetEmpty!18842 (= setRest!18837 ((as const (Array Context!3510 Bool)) false)))))

(declare-fun setRes!18842 () Bool)

(assert (=> setNonEmpty!18837 (= tp!684200 setRes!18842)))

(declare-fun setIsEmpty!18842 () Bool)

(assert (=> setIsEmpty!18842 setRes!18842))

(declare-fun tp!684294 () Bool)

(declare-fun setNonEmpty!18842 () Bool)

(declare-fun e!1404704 () Bool)

(declare-fun setElem!18842 () Context!3510)

(assert (=> setNonEmpty!18842 (= setRes!18842 (and tp!684294 (inv!34278 setElem!18842) e!1404704))))

(declare-fun setRest!18842 () (InoxSet Context!3510))

(assert (=> setNonEmpty!18842 (= setRest!18837 ((_ map or) (store ((as const (Array Context!3510 Bool)) false) setElem!18842 true) setRest!18842))))

(declare-fun b!2198071 () Bool)

(declare-fun tp!684295 () Bool)

(assert (=> b!2198071 (= e!1404704 tp!684295)))

(assert (= (and setNonEmpty!18837 condSetEmpty!18842) setIsEmpty!18842))

(assert (= (and setNonEmpty!18837 (not condSetEmpty!18842)) setNonEmpty!18842))

(assert (= setNonEmpty!18842 b!2198071))

(declare-fun m!2640819 () Bool)

(assert (=> setNonEmpty!18842 m!2640819))

(declare-fun tp!684298 () Bool)

(declare-fun b!2198072 () Bool)

(declare-fun e!1404705 () Bool)

(declare-fun tp!684296 () Bool)

(assert (=> b!2198072 (= e!1404705 (and (inv!34276 (left!19636 (left!19636 (left!19636 (c!349872 totalInput!923))))) tp!684298 (inv!34276 (right!19966 (left!19636 (left!19636 (c!349872 totalInput!923))))) tp!684296))))

(declare-fun b!2198074 () Bool)

(declare-fun e!1404706 () Bool)

(declare-fun tp!684297 () Bool)

(assert (=> b!2198074 (= e!1404706 tp!684297)))

(declare-fun b!2198073 () Bool)

(assert (=> b!2198073 (= e!1404705 (and (inv!34283 (xs!11263 (left!19636 (left!19636 (c!349872 totalInput!923))))) e!1404706))))

(assert (=> b!2197321 (= tp!684223 (and (inv!34276 (left!19636 (left!19636 (c!349872 totalInput!923)))) e!1404705))))

(assert (= (and b!2197321 ((_ is Node!8321) (left!19636 (left!19636 (c!349872 totalInput!923))))) b!2198072))

(assert (= b!2198073 b!2198074))

(assert (= (and b!2197321 ((_ is Leaf!12181) (left!19636 (left!19636 (c!349872 totalInput!923))))) b!2198073))

(declare-fun m!2640821 () Bool)

(assert (=> b!2198072 m!2640821))

(declare-fun m!2640823 () Bool)

(assert (=> b!2198072 m!2640823))

(declare-fun m!2640825 () Bool)

(assert (=> b!2198073 m!2640825))

(assert (=> b!2197321 m!2639753))

(declare-fun tp!684301 () Bool)

(declare-fun b!2198075 () Bool)

(declare-fun tp!684299 () Bool)

(declare-fun e!1404707 () Bool)

(assert (=> b!2198075 (= e!1404707 (and (inv!34276 (left!19636 (right!19966 (left!19636 (c!349872 totalInput!923))))) tp!684301 (inv!34276 (right!19966 (right!19966 (left!19636 (c!349872 totalInput!923))))) tp!684299))))

(declare-fun b!2198077 () Bool)

(declare-fun e!1404708 () Bool)

(declare-fun tp!684300 () Bool)

(assert (=> b!2198077 (= e!1404708 tp!684300)))

(declare-fun b!2198076 () Bool)

(assert (=> b!2198076 (= e!1404707 (and (inv!34283 (xs!11263 (right!19966 (left!19636 (c!349872 totalInput!923))))) e!1404708))))

(assert (=> b!2197321 (= tp!684221 (and (inv!34276 (right!19966 (left!19636 (c!349872 totalInput!923)))) e!1404707))))

(assert (= (and b!2197321 ((_ is Node!8321) (right!19966 (left!19636 (c!349872 totalInput!923))))) b!2198075))

(assert (= b!2198076 b!2198077))

(assert (= (and b!2197321 ((_ is Leaf!12181) (right!19966 (left!19636 (c!349872 totalInput!923))))) b!2198076))

(declare-fun m!2640827 () Bool)

(assert (=> b!2198075 m!2640827))

(declare-fun m!2640829 () Bool)

(assert (=> b!2198075 m!2640829))

(declare-fun m!2640831 () Bool)

(assert (=> b!2198076 m!2640831))

(assert (=> b!2197321 m!2639755))

(declare-fun b!2198080 () Bool)

(declare-fun e!1404709 () Bool)

(declare-fun tp!684304 () Bool)

(assert (=> b!2198080 (= e!1404709 tp!684304)))

(declare-fun b!2198079 () Bool)

(declare-fun tp!684302 () Bool)

(declare-fun tp!684306 () Bool)

(assert (=> b!2198079 (= e!1404709 (and tp!684302 tp!684306))))

(declare-fun b!2198081 () Bool)

(declare-fun tp!684305 () Bool)

(declare-fun tp!684303 () Bool)

(assert (=> b!2198081 (= e!1404709 (and tp!684305 tp!684303))))

(declare-fun b!2198078 () Bool)

(assert (=> b!2198078 (= e!1404709 tp_is_empty!9731)))

(assert (=> b!2197319 (= tp!684217 e!1404709)))

(assert (= (and b!2197319 ((_ is ElementMatch!6185) (regOne!12883 (h!30976 (exprs!2255 setElem!18830))))) b!2198078))

(assert (= (and b!2197319 ((_ is Concat!10487) (regOne!12883 (h!30976 (exprs!2255 setElem!18830))))) b!2198079))

(assert (= (and b!2197319 ((_ is Star!6185) (regOne!12883 (h!30976 (exprs!2255 setElem!18830))))) b!2198080))

(assert (= (and b!2197319 ((_ is Union!6185) (regOne!12883 (h!30976 (exprs!2255 setElem!18830))))) b!2198081))

(declare-fun b!2198084 () Bool)

(declare-fun e!1404710 () Bool)

(declare-fun tp!684309 () Bool)

(assert (=> b!2198084 (= e!1404710 tp!684309)))

(declare-fun b!2198083 () Bool)

(declare-fun tp!684307 () Bool)

(declare-fun tp!684311 () Bool)

(assert (=> b!2198083 (= e!1404710 (and tp!684307 tp!684311))))

(declare-fun b!2198085 () Bool)

(declare-fun tp!684310 () Bool)

(declare-fun tp!684308 () Bool)

(assert (=> b!2198085 (= e!1404710 (and tp!684310 tp!684308))))

(declare-fun b!2198082 () Bool)

(assert (=> b!2198082 (= e!1404710 tp_is_empty!9731)))

(assert (=> b!2197319 (= tp!684215 e!1404710)))

(assert (= (and b!2197319 ((_ is ElementMatch!6185) (regTwo!12883 (h!30976 (exprs!2255 setElem!18830))))) b!2198082))

(assert (= (and b!2197319 ((_ is Concat!10487) (regTwo!12883 (h!30976 (exprs!2255 setElem!18830))))) b!2198083))

(assert (= (and b!2197319 ((_ is Star!6185) (regTwo!12883 (h!30976 (exprs!2255 setElem!18830))))) b!2198084))

(assert (= (and b!2197319 ((_ is Union!6185) (regTwo!12883 (h!30976 (exprs!2255 setElem!18830))))) b!2198085))

(declare-fun b!2198088 () Bool)

(declare-fun e!1404711 () Bool)

(declare-fun tp!684314 () Bool)

(assert (=> b!2198088 (= e!1404711 tp!684314)))

(declare-fun b!2198087 () Bool)

(declare-fun tp!684312 () Bool)

(declare-fun tp!684316 () Bool)

(assert (=> b!2198087 (= e!1404711 (and tp!684312 tp!684316))))

(declare-fun b!2198089 () Bool)

(declare-fun tp!684315 () Bool)

(declare-fun tp!684313 () Bool)

(assert (=> b!2198089 (= e!1404711 (and tp!684315 tp!684313))))

(declare-fun b!2198086 () Bool)

(assert (=> b!2198086 (= e!1404711 tp_is_empty!9731)))

(assert (=> b!2197317 (= tp!684214 e!1404711)))

(assert (= (and b!2197317 ((_ is ElementMatch!6185) (regOne!12882 (h!30976 (exprs!2255 setElem!18830))))) b!2198086))

(assert (= (and b!2197317 ((_ is Concat!10487) (regOne!12882 (h!30976 (exprs!2255 setElem!18830))))) b!2198087))

(assert (= (and b!2197317 ((_ is Star!6185) (regOne!12882 (h!30976 (exprs!2255 setElem!18830))))) b!2198088))

(assert (= (and b!2197317 ((_ is Union!6185) (regOne!12882 (h!30976 (exprs!2255 setElem!18830))))) b!2198089))

(declare-fun b!2198092 () Bool)

(declare-fun e!1404712 () Bool)

(declare-fun tp!684319 () Bool)

(assert (=> b!2198092 (= e!1404712 tp!684319)))

(declare-fun b!2198091 () Bool)

(declare-fun tp!684317 () Bool)

(declare-fun tp!684321 () Bool)

(assert (=> b!2198091 (= e!1404712 (and tp!684317 tp!684321))))

(declare-fun b!2198093 () Bool)

(declare-fun tp!684320 () Bool)

(declare-fun tp!684318 () Bool)

(assert (=> b!2198093 (= e!1404712 (and tp!684320 tp!684318))))

(declare-fun b!2198090 () Bool)

(assert (=> b!2198090 (= e!1404712 tp_is_empty!9731)))

(assert (=> b!2197317 (= tp!684218 e!1404712)))

(assert (= (and b!2197317 ((_ is ElementMatch!6185) (regTwo!12882 (h!30976 (exprs!2255 setElem!18830))))) b!2198090))

(assert (= (and b!2197317 ((_ is Concat!10487) (regTwo!12882 (h!30976 (exprs!2255 setElem!18830))))) b!2198091))

(assert (= (and b!2197317 ((_ is Star!6185) (regTwo!12882 (h!30976 (exprs!2255 setElem!18830))))) b!2198092))

(assert (= (and b!2197317 ((_ is Union!6185) (regTwo!12882 (h!30976 (exprs!2255 setElem!18830))))) b!2198093))

(declare-fun b!2198096 () Bool)

(declare-fun e!1404713 () Bool)

(declare-fun tp!684324 () Bool)

(assert (=> b!2198096 (= e!1404713 tp!684324)))

(declare-fun b!2198095 () Bool)

(declare-fun tp!684322 () Bool)

(declare-fun tp!684326 () Bool)

(assert (=> b!2198095 (= e!1404713 (and tp!684322 tp!684326))))

(declare-fun b!2198097 () Bool)

(declare-fun tp!684325 () Bool)

(declare-fun tp!684323 () Bool)

(assert (=> b!2198097 (= e!1404713 (and tp!684325 tp!684323))))

(declare-fun b!2198094 () Bool)

(assert (=> b!2198094 (= e!1404713 tp_is_empty!9731)))

(assert (=> b!2197318 (= tp!684216 e!1404713)))

(assert (= (and b!2197318 ((_ is ElementMatch!6185) (reg!6514 (h!30976 (exprs!2255 setElem!18830))))) b!2198094))

(assert (= (and b!2197318 ((_ is Concat!10487) (reg!6514 (h!30976 (exprs!2255 setElem!18830))))) b!2198095))

(assert (= (and b!2197318 ((_ is Star!6185) (reg!6514 (h!30976 (exprs!2255 setElem!18830))))) b!2198096))

(assert (= (and b!2197318 ((_ is Union!6185) (reg!6514 (h!30976 (exprs!2255 setElem!18830))))) b!2198097))

(declare-fun b_lambda!71179 () Bool)

(assert (= b_lambda!71177 (or d!657024 b_lambda!71179)))

(declare-fun bs!449827 () Bool)

(declare-fun d!657786 () Bool)

(assert (= bs!449827 (and d!657786 d!657024)))

(declare-fun lostCause!688 (Context!3510) Bool)

(assert (=> bs!449827 (= (dynLambda!11448 lambda!82648 (h!30977 lt!821814)) (lostCause!688 (h!30977 lt!821814)))))

(declare-fun m!2640833 () Bool)

(assert (=> bs!449827 m!2640833))

(assert (=> b!2198025 d!657786))

(declare-fun b_lambda!71181 () Bool)

(assert (= b_lambda!71171 (or d!657220 b_lambda!71181)))

(declare-fun bs!449828 () Bool)

(declare-fun d!657788 () Bool)

(assert (= bs!449828 (and d!657788 d!657220)))

(assert (=> bs!449828 (= (dynLambda!11448 lambda!82701 (h!30977 (ite c!349896 lt!821814 lt!821810))) (not (dynLambda!11448 (ite c!349896 lambda!82649 lambda!82650) (h!30977 (ite c!349896 lt!821814 lt!821810)))))))

(declare-fun b_lambda!71193 () Bool)

(assert (=> (not b_lambda!71193) (not bs!449828)))

(declare-fun m!2640835 () Bool)

(assert (=> bs!449828 m!2640835))

(assert (=> b!2197848 d!657788))

(declare-fun b_lambda!71183 () Bool)

(assert (= b_lambda!71169 (or d!657134 b_lambda!71183)))

(declare-fun bs!449829 () Bool)

(declare-fun d!657790 () Bool)

(assert (= bs!449829 (and d!657790 d!657134)))

(assert (=> bs!449829 (= (dynLambda!11448 lambda!82691 lt!822117) (not (lostCause!688 lt!822117)))))

(declare-fun m!2640837 () Bool)

(assert (=> bs!449829 m!2640837))

(assert (=> d!657604 d!657790))

(declare-fun b_lambda!71185 () Bool)

(assert (= b_lambda!71165 (or d!657194 b_lambda!71185)))

(declare-fun bs!449830 () Bool)

(declare-fun d!657792 () Bool)

(assert (= bs!449830 (and d!657792 d!657194)))

(assert (=> bs!449830 (= (dynLambda!11445 lambda!82693 (h!30976 (exprs!2255 setElem!18833))) (validRegex!2338 (h!30976 (exprs!2255 setElem!18833))))))

(declare-fun m!2640839 () Bool)

(assert (=> bs!449830 m!2640839))

(assert (=> b!2197749 d!657792))

(declare-fun b_lambda!71187 () Bool)

(assert (= b_lambda!71175 (or d!657024 b_lambda!71187)))

(declare-fun bs!449831 () Bool)

(declare-fun d!657794 () Bool)

(assert (= bs!449831 (and d!657794 d!657024)))

(assert (=> bs!449831 (= (dynLambda!11448 lambda!82648 (h!30977 (toList!1258 z!3955))) (lostCause!688 (h!30977 (toList!1258 z!3955))))))

(declare-fun m!2640841 () Bool)

(assert (=> bs!449831 m!2640841))

(assert (=> b!2198023 d!657794))

(declare-fun b_lambda!71189 () Bool)

(assert (= b_lambda!71173 (or d!657024 b_lambda!71189)))

(declare-fun bs!449832 () Bool)

(declare-fun d!657796 () Bool)

(assert (= bs!449832 (and d!657796 d!657024)))

(assert (=> bs!449832 (= (dynLambda!11448 lambda!82648 (h!30977 lt!821810)) (lostCause!688 (h!30977 lt!821810)))))

(declare-fun m!2640843 () Bool)

(assert (=> bs!449832 m!2640843))

(assert (=> b!2197962 d!657796))

(declare-fun b_lambda!71191 () Bool)

(assert (= b_lambda!71167 (or d!657026 b_lambda!71191)))

(declare-fun bs!449833 () Bool)

(declare-fun d!657798 () Bool)

(assert (= bs!449833 (and d!657798 d!657026)))

(assert (=> bs!449833 (= (dynLambda!11445 lambda!82653 (h!30976 (t!198265 (exprs!2255 setElem!18830)))) (validRegex!2338 (h!30976 (t!198265 (exprs!2255 setElem!18830)))))))

(declare-fun m!2640845 () Bool)

(assert (=> bs!449833 m!2640845))

(assert (=> b!2197774 d!657798))

(check-sat (not b!2197640) (not b!2198070) (not b!2197879) (not d!657742) (not b!2197669) (not b!2197630) (not b!2197921) (not b!2197642) (not d!657576) (not b!2197948) (not b!2198064) (not d!657724) (not b!2198016) (not b!2198026) (not b!2197884) (not b!2197986) (not b!2198040) (not b!2198005) (not b!2198080) (not b!2197894) (not b!2197837) (not bs!449832) (not b!2198041) (not b!2197649) (not b!2197735) (not b!2197952) (not d!657598) (not d!657502) (not b!2198060) (not d!657704) (not d!657482) (not b!2197910) (not b!2197775) (not b!2197711) (not b!2197843) (not b!2197667) (not b!2197625) (not b!2198084) (not b!2197778) (not b!2198014) (not b!2198056) (not b!2197950) (not b!2197729) (not d!657608) (not b!2197789) (not b!2197629) (not d!657744) (not b!2197905) (not d!657658) (not b!2197918) (not b!2198017) (not b!2197646) (not b!2197796) (not d!657606) (not b!2197984) (not b!2197828) (not b!2197839) (not b!2197998) (not b!2198009) (not d!657782) (not b!2198073) (not b!2197794) (not d!657520) (not b!2197942) (not d!657568) (not d!657766) (not b!2198079) (not b!2197798) (not b!2198089) (not d!657714) (not b!2197680) (not b!2197694) (not b!2198063) (not b!2197909) (not b!2197831) (not b!2197771) (not d!657650) (not b!2198081) (not d!657454) (not b!2198066) (not b!2197937) (not d!657672) (not d!657578) (not d!657586) (not b!2197693) (not b!2198088) (not b!2197724) (not b!2197939) (not d!657670) (not b!2197968) (not b!2198062) (not b!2198095) (not b!2197627) (not b!2198047) (not b!2197758) (not d!657764) (not b!2197835) (not b!2197978) (not b!2197947) (not d!657676) (not b!2197679) (not b!2197961) (not b!2197739) (not b!2197760) (not b!2197756) (not setNonEmpty!18841) (not b!2197946) (not b_lambda!71179) (not b_lambda!71181) (not d!657760) (not d!657660) (not b!2197324) (not b!2198071) (not b!2197823) (not b!2198061) (not b!2198053) (not b!2198083) (not b!2197958) (not d!657596) (not b!2198044) (not b!2197708) (not b!2197822) (not b!2197989) (not bs!449827) (not b!2197715) (not d!657684) (not b_lambda!71159) (not b!2197892) (not b!2197786) (not d!657774) (not b!2197826) (not b!2197829) (not b!2197977) (not d!657696) (not d!657504) (not b_lambda!71193) (not b!2197684) (not b!2197997) (not b!2197704) (not b!2198077) (not b_lambda!71191) (not d!657556) (not b!2197757) (not b!2197981) (not d!657722) (not d!657542) (not b!2197737) (not b!2198096) (not d!657784) (not b!2198000) (not b!2197890) (not b!2197883) (not b!2198075) (not b!2197750) (not b!2198085) (not bs!449833) (not b!2198093) (not d!657562) (not b!2197643) (not b!2197993) (not b!2197738) (not b!2197896) (not d!657748) (not b!2197982) (not b!2197833) (not b!2197752) (not d!657528) (not b!2197881) (not b!2197941) (not b!2198067) (not bs!449830) (not d!657500) (not b!2197991) (not b!2197825) (not d!657488) (not d!657602) (not b!2197788) (not d!657544) (not b!2198092) (not b!2197800) (not b!2197851) (not d!657492) (not b!2198013) (not d!657710) (not b!2197641) (not d!657718) (not b!2197746) (not d!657472) (not b!2197748) (not bm!132026) (not b!2197651) (not bm!132037) (not b!2197767) (not b!2197895) (not b!2198069) (not b!2197899) (not b!2198054) (not b!2197792) (not b!2197655) (not b_lambda!71187) (not d!657566) (not b!2197956) (not b!2198097) (not b!2197945) (not b!2198072) (not b_lambda!71183) (not b!2198050) (not b!2197815) (not b!2197925) (not d!657772) (not setNonEmpty!18842) (not b!2197755) (not b!2197969) (not b!2197790) (not bs!449829) (not d!657648) (not bm!132039) (not d!657768) (not b!2197688) (not d!657604) (not d!657664) (not d!657780) (not b!2197990) (not d!657534) (not d!657776) (not b!2198059) (not b!2197906) (not b!2197781) (not b!2198065) (not d!657574) (not b!2197980) (not b!2197707) (not b!2197782) (not d!657552) (not b!2197741) (not b!2197902) (not b!2197653) (not bm!132043) (not b!2197920) (not b!2197963) (not b!2197923) (not b!2197766) (not d!657662) (not b!2197710) (not bm!132022) (not b!2197685) (not b!2197888) (not b!2197652) (not d!657740) (not bm!132023) (not d!657688) (not b!2197777) (not d!657682) (not d!657678) (not d!657506) (not b!2197882) tp_is_empty!9731 (not d!657560) (not d!657554) (not d!657702) (not bm!132034) (not b!2197689) (not b!2197765) (not b!2198003) (not d!657470) (not b_lambda!71189) (not b!2197717) (not b!2197770) (not bm!132024) (not d!657758) (not b!2197761) (not b!2197728) (not b!2198058) (not b!2197720) (not b!2198055) (not b!2197849) (not d!657588) (not b!2197764) (not b!2197995) (not d!657458) (not b!2197985) (not b!2197886) (not d!657550) (not b!2197979) (not b!2198021) (not d!657450) (not b!2198019) (not b!2198068) (not b!2197631) (not b!2198074) (not b!2197814) (not bm!132036) (not b!2197928) (not b!2197987) (not d!657580) (not b!2198076) (not b!2197719) (not b!2198011) (not b!2197321) (not b!2197875) (not b!2198015) (not b!2198007) (not b!2198091) (not b!2197754) (not b!2197706) (not b!2198052) (not b!2197903) (not b!2197661) (not d!657526) (not b!2198087) (not b!2197665) (not b!2197983) (not b!2197953) (not b!2197816) (not b!2197731) (not b!2197645) (not b!2198045) (not b!2197841) (not b!2197662) (not d!657652) (not d!657510) (not b_lambda!71185) (not d!657698) (not b!2197716) (not b!2197692) (not b!2197742) (not b!2197898) (not bs!449831) (not bm!132025) (not b!2197779) (not b!2198024) (not b!2197726) (not bm!132040) (not b!2197976) (not bm!132038) (not d!657464) (not b!2197954) (not d!657756) (not b!2197768) (not b!2197927) (not b!2197880) (not bm!132027))
(check-sat)
