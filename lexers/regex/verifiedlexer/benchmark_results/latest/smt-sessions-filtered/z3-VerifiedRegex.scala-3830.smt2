; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212570 () Bool)

(assert start!212570)

(declare-fun b!2192162 () Bool)

(declare-fun res!942450 () Bool)

(declare-fun e!1400937 () Bool)

(assert (=> b!2192162 (=> (not res!942450) (not e!1400937))))

(declare-fun e!1400932 () Bool)

(assert (=> b!2192162 (= res!942450 e!1400932)))

(declare-fun res!942447 () Bool)

(assert (=> b!2192162 (=> res!942447 e!1400932)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12400 0))(
  ( (C!12401 (val!7186 Int)) )
))
(declare-datatypes ((Regex!6127 0))(
  ( (ElementMatch!6127 (c!348668 C!12400)) (Concat!10429 (regOne!12766 Regex!6127) (regTwo!12766 Regex!6127)) (EmptyExpr!6127) (Star!6127 (reg!6456 Regex!6127)) (EmptyLang!6127) (Union!6127 (regOne!12767 Regex!6127) (regTwo!12767 Regex!6127)) )
))
(declare-datatypes ((List!25527 0))(
  ( (Nil!25443) (Cons!25443 (h!30844 Regex!6127) (t!198125 List!25527)) )
))
(declare-datatypes ((Context!3394 0))(
  ( (Context!3395 (exprs!2197 List!25527)) )
))
(declare-fun z!3955 () (InoxSet Context!3394))

(declare-fun nullableZipper!407 ((InoxSet Context!3394)) Bool)

(assert (=> b!2192162 (= res!942447 (not (nullableZipper!407 z!3955)))))

(declare-fun setRes!18606 () Bool)

(declare-fun tp!683236 () Bool)

(declare-fun setElem!18606 () Context!3394)

(declare-fun setNonEmpty!18606 () Bool)

(declare-fun e!1400929 () Bool)

(declare-fun inv!33972 (Context!3394) Bool)

(assert (=> setNonEmpty!18606 (= setRes!18606 (and tp!683236 (inv!33972 setElem!18606) e!1400929))))

(declare-fun setRest!18606 () (InoxSet Context!3394))

(assert (=> setNonEmpty!18606 (= z!3955 ((_ map or) (store ((as const (Array Context!3394 Bool)) false) setElem!18606 true) setRest!18606))))

(declare-fun b!2192163 () Bool)

(declare-fun lastNullablePos!193 () Int)

(declare-fun from!1114 () Int)

(assert (=> b!2192163 (= e!1400932 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2192164 () Bool)

(declare-fun e!1400931 () Bool)

(assert (=> b!2192164 (= e!1400931 e!1400937)))

(declare-fun res!942454 () Bool)

(assert (=> b!2192164 (=> (not res!942454) (not e!1400937))))

(declare-fun lt!819568 () Int)

(assert (=> b!2192164 (= res!942454 (and (<= from!1114 lt!819568) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-datatypes ((List!25528 0))(
  ( (Nil!25444) (Cons!25444 (h!30845 C!12400) (t!198126 List!25528)) )
))
(declare-datatypes ((IArray!16531 0))(
  ( (IArray!16532 (innerList!8323 List!25528)) )
))
(declare-datatypes ((Conc!8263 0))(
  ( (Node!8263 (left!19521 Conc!8263) (right!19851 Conc!8263) (csize!16756 Int) (cheight!8474 Int)) (Leaf!12094 (xs!11205 IArray!16531) (csize!16757 Int)) (Empty!8263) )
))
(declare-datatypes ((BalanceConc!16288 0))(
  ( (BalanceConc!16289 (c!348669 Conc!8263)) )
))
(declare-fun totalInput!923 () BalanceConc!16288)

(declare-fun size!19847 (BalanceConc!16288) Int)

(assert (=> b!2192164 (= lt!819568 (size!19847 totalInput!923))))

(declare-fun b!2192165 () Bool)

(declare-fun e!1400941 () Int)

(assert (=> b!2192165 (= e!1400941 lastNullablePos!193)))

(declare-fun res!942456 () Bool)

(assert (=> start!212570 (=> (not res!942456) (not e!1400931))))

(assert (=> start!212570 (= res!942456 (>= from!1114 0))))

(assert (=> start!212570 e!1400931))

(assert (=> start!212570 true))

(declare-fun e!1400934 () Bool)

(declare-fun inv!33973 (BalanceConc!16288) Bool)

(assert (=> start!212570 (and (inv!33973 totalInput!923) e!1400934)))

(declare-fun condSetEmpty!18606 () Bool)

(assert (=> start!212570 (= condSetEmpty!18606 (= z!3955 ((as const (Array Context!3394 Bool)) false)))))

(assert (=> start!212570 setRes!18606))

(declare-fun b!2192166 () Bool)

(declare-fun tp!683235 () Bool)

(declare-fun inv!33974 (Conc!8263) Bool)

(assert (=> b!2192166 (= e!1400934 (and (inv!33974 (c!348669 totalInput!923)) tp!683235))))

(declare-fun b!2192167 () Bool)

(declare-fun e!1400930 () Bool)

(declare-fun e!1400939 () Bool)

(assert (=> b!2192167 (= e!1400930 e!1400939)))

(declare-fun res!942453 () Bool)

(assert (=> b!2192167 (=> res!942453 e!1400939)))

(declare-fun lt!819574 () Int)

(declare-fun lt!819565 () Int)

(assert (=> b!2192167 (= res!942453 (not (= lt!819574 lt!819565)))))

(declare-fun lt!819567 () Int)

(assert (=> b!2192167 (= lt!819574 (+ 1 (- lt!819567 from!1114)))))

(declare-fun b!2192168 () Bool)

(declare-fun res!942446 () Bool)

(assert (=> b!2192168 (=> (not res!942446) (not e!1400937))))

(assert (=> b!2192168 (= res!942446 (not (= from!1114 lt!819568)))))

(declare-fun b!2192169 () Bool)

(declare-fun tp!683234 () Bool)

(assert (=> b!2192169 (= e!1400929 tp!683234)))

(declare-fun b!2192170 () Bool)

(declare-fun e!1400936 () Bool)

(declare-fun e!1400938 () Bool)

(assert (=> b!2192170 (= e!1400936 e!1400938)))

(declare-fun res!942457 () Bool)

(assert (=> b!2192170 (=> res!942457 e!1400938)))

(declare-fun lt!819580 () (InoxSet Context!3394))

(declare-fun lt!819570 () List!25528)

(declare-fun matchZipper!227 ((InoxSet Context!3394) List!25528) Bool)

(assert (=> b!2192170 (= res!942457 (not (matchZipper!227 lt!819580 lt!819570)))))

(declare-fun lt!819566 () List!25528)

(declare-fun lt!819573 () Int)

(declare-fun take!319 (List!25528 Int) List!25528)

(declare-fun drop!1329 (List!25528 Int) List!25528)

(assert (=> b!2192170 (= lt!819570 (take!319 (drop!1329 lt!819566 (+ 1 from!1114)) lt!819573))))

(declare-fun list!9774 (BalanceConc!16288) List!25528)

(assert (=> b!2192170 (= lt!819566 (list!9774 totalInput!923))))

(declare-fun b!2192171 () Bool)

(declare-fun res!942451 () Bool)

(assert (=> b!2192171 (=> (not res!942451) (not e!1400937))))

(declare-fun lostCauseZipper!245 ((InoxSet Context!3394)) Bool)

(assert (=> b!2192171 (= res!942451 (not (lostCauseZipper!245 z!3955)))))

(declare-fun b!2192172 () Bool)

(declare-fun e!1400940 () Bool)

(assert (=> b!2192172 (= e!1400940 e!1400930)))

(declare-fun res!942449 () Bool)

(assert (=> b!2192172 (=> res!942449 e!1400930)))

(declare-fun lt!819583 () List!25528)

(declare-fun lt!819578 () List!25528)

(assert (=> b!2192172 (= res!942449 (not (= lt!819583 lt!819578)))))

(declare-fun lt!819572 () C!12400)

(assert (=> b!2192172 (= (Cons!25444 lt!819572 lt!819570) lt!819578)))

(declare-fun lt!819577 () List!25528)

(assert (=> b!2192172 (= lt!819578 (take!319 lt!819577 lt!819565))))

(declare-fun lt!819584 () Int)

(assert (=> b!2192172 (= lt!819565 (+ 2 lt!819584))))

(assert (=> b!2192172 (= lt!819577 (drop!1329 lt!819566 from!1114))))

(declare-fun apply!6171 (List!25528 Int) C!12400)

(assert (=> b!2192172 (= lt!819572 (apply!6171 lt!819566 from!1114))))

(declare-datatypes ((Unit!38557 0))(
  ( (Unit!38558) )
))
(declare-fun lt!819569 () Unit!38557)

(declare-fun lemmaDropTakeAddOneLeft!12 (List!25528 Int Int) Unit!38557)

(assert (=> b!2192172 (= lt!819569 (lemmaDropTakeAddOneLeft!12 lt!819566 from!1114 lt!819573))))

(declare-fun b!2192173 () Bool)

(assert (=> b!2192173 (= e!1400939 true)))

(declare-fun lt!819571 () Bool)

(declare-fun e!1400935 () Bool)

(assert (=> b!2192173 (= lt!819571 e!1400935)))

(declare-fun res!942459 () Bool)

(assert (=> b!2192173 (=> res!942459 e!1400935)))

(assert (=> b!2192173 (= res!942459 (<= lt!819574 0))))

(declare-fun b!2192174 () Bool)

(declare-fun e!1400928 () Bool)

(assert (=> b!2192174 (= e!1400928 (not e!1400936))))

(declare-fun res!942452 () Bool)

(assert (=> b!2192174 (=> res!942452 e!1400936)))

(declare-fun lt!819576 () Bool)

(assert (=> b!2192174 (= res!942452 lt!819576)))

(declare-fun e!1400933 () Bool)

(assert (=> b!2192174 e!1400933))

(declare-fun res!942455 () Bool)

(assert (=> b!2192174 (=> res!942455 e!1400933)))

(assert (=> b!2192174 (= res!942455 lt!819576)))

(assert (=> b!2192174 (= lt!819576 (<= lt!819573 0))))

(assert (=> b!2192174 (= lt!819573 (+ 1 lt!819584))))

(declare-fun lt!819581 () Int)

(assert (=> b!2192174 (= lt!819584 (- lt!819581 (+ 1 from!1114)))))

(declare-fun lt!819579 () Unit!38557)

(declare-fun lt!819575 () Int)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!132 ((InoxSet Context!3394) Int BalanceConc!16288 Int) Unit!38557)

(assert (=> b!2192174 (= lt!819579 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!132 lt!819580 (+ 1 from!1114) totalInput!923 lt!819575))))

(declare-fun b!2192175 () Bool)

(assert (=> b!2192175 (= e!1400933 (matchZipper!227 lt!819580 (take!319 (drop!1329 (list!9774 totalInput!923) (+ 1 from!1114)) lt!819573)))))

(declare-fun b!2192176 () Bool)

(assert (=> b!2192176 (= e!1400935 (matchZipper!227 z!3955 (take!319 lt!819577 lt!819574)))))

(declare-fun b!2192177 () Bool)

(assert (=> b!2192177 (= e!1400937 e!1400928)))

(declare-fun res!942448 () Bool)

(assert (=> b!2192177 (=> (not res!942448) (not e!1400928))))

(assert (=> b!2192177 (= res!942448 (= lt!819567 lt!819581))))

(declare-fun furthestNullablePosition!297 ((InoxSet Context!3394) Int BalanceConc!16288 Int Int) Int)

(assert (=> b!2192177 (= lt!819581 (furthestNullablePosition!297 lt!819580 (+ 1 from!1114) totalInput!923 lt!819568 lt!819575))))

(assert (=> b!2192177 (= lt!819567 (furthestNullablePosition!297 z!3955 from!1114 totalInput!923 lt!819568 lastNullablePos!193))))

(assert (=> b!2192177 (= lt!819575 e!1400941)))

(declare-fun c!348667 () Bool)

(assert (=> b!2192177 (= c!348667 (nullableZipper!407 lt!819580))))

(declare-fun lt!819582 () C!12400)

(declare-fun derivationStepZipper!204 ((InoxSet Context!3394) C!12400) (InoxSet Context!3394))

(assert (=> b!2192177 (= lt!819580 (derivationStepZipper!204 z!3955 lt!819582))))

(declare-fun apply!6172 (BalanceConc!16288 Int) C!12400)

(assert (=> b!2192177 (= lt!819582 (apply!6172 totalInput!923 from!1114))))

(declare-fun b!2192178 () Bool)

(assert (=> b!2192178 (= e!1400938 e!1400940)))

(declare-fun res!942458 () Bool)

(assert (=> b!2192178 (=> res!942458 e!1400940)))

(assert (=> b!2192178 (= res!942458 (not (matchZipper!227 z!3955 lt!819583)))))

(assert (=> b!2192178 (= lt!819583 (Cons!25444 lt!819582 lt!819570))))

(declare-fun b!2192179 () Bool)

(assert (=> b!2192179 (= e!1400941 from!1114)))

(declare-fun setIsEmpty!18606 () Bool)

(assert (=> setIsEmpty!18606 setRes!18606))

(assert (= (and start!212570 res!942456) b!2192164))

(assert (= (and b!2192164 res!942454) b!2192162))

(assert (= (and b!2192162 (not res!942447)) b!2192163))

(assert (= (and b!2192162 res!942450) b!2192168))

(assert (= (and b!2192168 res!942446) b!2192171))

(assert (= (and b!2192171 res!942451) b!2192177))

(assert (= (and b!2192177 c!348667) b!2192179))

(assert (= (and b!2192177 (not c!348667)) b!2192165))

(assert (= (and b!2192177 res!942448) b!2192174))

(assert (= (and b!2192174 (not res!942455)) b!2192175))

(assert (= (and b!2192174 (not res!942452)) b!2192170))

(assert (= (and b!2192170 (not res!942457)) b!2192178))

(assert (= (and b!2192178 (not res!942458)) b!2192172))

(assert (= (and b!2192172 (not res!942449)) b!2192167))

(assert (= (and b!2192167 (not res!942453)) b!2192173))

(assert (= (and b!2192173 (not res!942459)) b!2192176))

(assert (= start!212570 b!2192166))

(assert (= (and start!212570 condSetEmpty!18606) setIsEmpty!18606))

(assert (= (and start!212570 (not condSetEmpty!18606)) setNonEmpty!18606))

(assert (= setNonEmpty!18606 b!2192169))

(declare-fun m!2634895 () Bool)

(assert (=> b!2192176 m!2634895))

(assert (=> b!2192176 m!2634895))

(declare-fun m!2634897 () Bool)

(assert (=> b!2192176 m!2634897))

(declare-fun m!2634899 () Bool)

(assert (=> b!2192175 m!2634899))

(assert (=> b!2192175 m!2634899))

(declare-fun m!2634901 () Bool)

(assert (=> b!2192175 m!2634901))

(assert (=> b!2192175 m!2634901))

(declare-fun m!2634903 () Bool)

(assert (=> b!2192175 m!2634903))

(assert (=> b!2192175 m!2634903))

(declare-fun m!2634905 () Bool)

(assert (=> b!2192175 m!2634905))

(declare-fun m!2634907 () Bool)

(assert (=> start!212570 m!2634907))

(declare-fun m!2634909 () Bool)

(assert (=> b!2192171 m!2634909))

(declare-fun m!2634911 () Bool)

(assert (=> b!2192164 m!2634911))

(declare-fun m!2634913 () Bool)

(assert (=> b!2192162 m!2634913))

(declare-fun m!2634915 () Bool)

(assert (=> b!2192174 m!2634915))

(declare-fun m!2634917 () Bool)

(assert (=> setNonEmpty!18606 m!2634917))

(declare-fun m!2634919 () Bool)

(assert (=> b!2192177 m!2634919))

(declare-fun m!2634921 () Bool)

(assert (=> b!2192177 m!2634921))

(declare-fun m!2634923 () Bool)

(assert (=> b!2192177 m!2634923))

(declare-fun m!2634925 () Bool)

(assert (=> b!2192177 m!2634925))

(declare-fun m!2634927 () Bool)

(assert (=> b!2192177 m!2634927))

(declare-fun m!2634929 () Bool)

(assert (=> b!2192170 m!2634929))

(declare-fun m!2634931 () Bool)

(assert (=> b!2192170 m!2634931))

(assert (=> b!2192170 m!2634931))

(declare-fun m!2634933 () Bool)

(assert (=> b!2192170 m!2634933))

(assert (=> b!2192170 m!2634899))

(declare-fun m!2634935 () Bool)

(assert (=> b!2192172 m!2634935))

(declare-fun m!2634937 () Bool)

(assert (=> b!2192172 m!2634937))

(declare-fun m!2634939 () Bool)

(assert (=> b!2192172 m!2634939))

(declare-fun m!2634941 () Bool)

(assert (=> b!2192172 m!2634941))

(declare-fun m!2634943 () Bool)

(assert (=> b!2192166 m!2634943))

(declare-fun m!2634945 () Bool)

(assert (=> b!2192178 m!2634945))

(check-sat (not start!212570) (not b!2192169) (not b!2192171) (not b!2192177) (not setNonEmpty!18606) (not b!2192174) (not b!2192164) (not b!2192172) (not b!2192162) (not b!2192166) (not b!2192170) (not b!2192175) (not b!2192176) (not b!2192178))
(check-sat)
