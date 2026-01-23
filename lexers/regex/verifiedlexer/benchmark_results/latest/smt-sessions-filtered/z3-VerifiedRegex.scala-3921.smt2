; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!215002 () Bool)

(assert start!215002)

(declare-fun b!2209081 () Bool)

(declare-fun e!1411120 () Bool)

(declare-datatypes ((C!12764 0))(
  ( (C!12765 (val!7368 Int)) )
))
(declare-datatypes ((List!25929 0))(
  ( (Nil!25845) (Cons!25845 (h!31246 C!12764) (t!198595 List!25929)) )
))
(declare-datatypes ((IArray!16895 0))(
  ( (IArray!16896 (innerList!8505 List!25929)) )
))
(declare-datatypes ((Conc!8445 0))(
  ( (Node!8445 (left!19866 Conc!8445) (right!20196 Conc!8445) (csize!17120 Int) (cheight!8656 Int)) (Leaf!12367 (xs!11387 IArray!16895) (csize!17121 Int)) (Empty!8445) )
))
(declare-datatypes ((BalanceConc!16652 0))(
  ( (BalanceConc!16653 (c!353006 Conc!8445)) )
))
(declare-fun totalInput!846 () BalanceConc!16652)

(declare-fun tp!686776 () Bool)

(declare-fun inv!34941 (Conc!8445) Bool)

(assert (=> b!2209081 (= e!1411120 (and (inv!34941 (c!353006 totalInput!846)) tp!686776))))

(declare-fun setRes!19348 () Bool)

(declare-fun e!1411121 () Bool)

(declare-fun tp!686773 () Bool)

(declare-datatypes ((Regex!6309 0))(
  ( (ElementMatch!6309 (c!353007 C!12764)) (Concat!10611 (regOne!13130 Regex!6309) (regTwo!13130 Regex!6309)) (EmptyExpr!6309) (Star!6309 (reg!6638 Regex!6309)) (EmptyLang!6309) (Union!6309 (regOne!13131 Regex!6309) (regTwo!13131 Regex!6309)) )
))
(declare-datatypes ((List!25930 0))(
  ( (Nil!25846) (Cons!25846 (h!31247 Regex!6309) (t!198596 List!25930)) )
))
(declare-datatypes ((Context!3758 0))(
  ( (Context!3759 (exprs!2379 List!25930)) )
))
(declare-fun setElem!19348 () Context!3758)

(declare-fun setNonEmpty!19348 () Bool)

(declare-fun inv!34942 (Context!3758) Bool)

(assert (=> setNonEmpty!19348 (= setRes!19348 (and tp!686773 (inv!34942 setElem!19348) e!1411121))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3830 () (InoxSet Context!3758))

(declare-fun setRest!19348 () (InoxSet Context!3758))

(assert (=> setNonEmpty!19348 (= z!3830 ((_ map or) (store ((as const (Array Context!3758 Bool)) false) setElem!19348 true) setRest!19348))))

(declare-fun res!949451 () Bool)

(declare-fun e!1411119 () Bool)

(assert (=> start!215002 (=> (not res!949451) (not e!1411119))))

(declare-fun lt!826049 () List!25929)

(declare-fun isSuffix!746 (List!25929 List!25929) Bool)

(declare-fun list!10006 (BalanceConc!16652) List!25929)

(assert (=> start!215002 (= res!949451 (isSuffix!746 lt!826049 (list!10006 totalInput!846)))))

(declare-fun input!5506 () BalanceConc!16652)

(assert (=> start!215002 (= lt!826049 (list!10006 input!5506))))

(assert (=> start!215002 e!1411119))

(declare-fun e!1411116 () Bool)

(declare-fun inv!34943 (BalanceConc!16652) Bool)

(assert (=> start!215002 (and (inv!34943 input!5506) e!1411116)))

(assert (=> start!215002 (and (inv!34943 totalInput!846) e!1411120)))

(declare-fun condSetEmpty!19348 () Bool)

(assert (=> start!215002 (= condSetEmpty!19348 (= z!3830 ((as const (Array Context!3758 Bool)) false)))))

(assert (=> start!215002 setRes!19348))

(declare-fun setIsEmpty!19348 () Bool)

(assert (=> setIsEmpty!19348 setRes!19348))

(declare-fun b!2209082 () Bool)

(declare-fun tp!686775 () Bool)

(assert (=> b!2209082 (= e!1411121 tp!686775)))

(declare-fun b!2209083 () Bool)

(declare-fun e!1411118 () Int)

(declare-fun lt!826051 () Int)

(assert (=> b!2209083 (= e!1411118 (- lt!826051 1))))

(declare-fun b!2209084 () Bool)

(assert (=> b!2209084 (= e!1411118 (- 1))))

(declare-fun b!2209085 () Bool)

(declare-fun e!1411117 () Bool)

(assert (=> b!2209085 (= e!1411119 e!1411117)))

(declare-fun res!949450 () Bool)

(assert (=> b!2209085 (=> (not res!949450) (not e!1411117))))

(declare-fun lt!826050 () Int)

(assert (=> b!2209085 (= res!949450 (>= lt!826050 0))))

(declare-fun lt!826048 () Int)

(declare-fun furthestNullablePosition!435 ((InoxSet Context!3758) Int BalanceConc!16652 Int Int) Int)

(assert (=> b!2209085 (= lt!826050 (+ 1 (- (furthestNullablePosition!435 z!3830 lt!826051 totalInput!846 lt!826048 e!1411118) lt!826051)))))

(declare-fun c!353005 () Bool)

(declare-fun nullableZipper!589 ((InoxSet Context!3758)) Bool)

(assert (=> b!2209085 (= c!353005 (nullableZipper!589 z!3830))))

(declare-fun size!20139 (BalanceConc!16652) Int)

(assert (=> b!2209085 (= lt!826051 (- lt!826048 (size!20139 input!5506)))))

(assert (=> b!2209085 (= lt!826048 (size!20139 totalInput!846))))

(declare-fun b!2209086 () Bool)

(declare-fun tp!686774 () Bool)

(assert (=> b!2209086 (= e!1411116 (and (inv!34941 (c!353006 input!5506)) tp!686774))))

(declare-fun b!2209087 () Bool)

(declare-datatypes ((tuple2!25140 0))(
  ( (tuple2!25141 (_1!14940 BalanceConc!16652) (_2!14940 BalanceConc!16652)) )
))
(declare-fun lt!826052 () tuple2!25140)

(declare-fun ++!6437 (List!25929 List!25929) List!25929)

(assert (=> b!2209087 (= e!1411117 (not (= (++!6437 (list!10006 (_1!14940 lt!826052)) (list!10006 (_2!14940 lt!826052))) lt!826049)))))

(declare-fun splitAt!67 (BalanceConc!16652 Int) tuple2!25140)

(assert (=> b!2209087 (= lt!826052 (splitAt!67 input!5506 lt!826050))))

(assert (= (and start!215002 res!949451) b!2209085))

(assert (= (and b!2209085 c!353005) b!2209083))

(assert (= (and b!2209085 (not c!353005)) b!2209084))

(assert (= (and b!2209085 res!949450) b!2209087))

(assert (= start!215002 b!2209086))

(assert (= start!215002 b!2209081))

(assert (= (and start!215002 condSetEmpty!19348) setIsEmpty!19348))

(assert (= (and start!215002 (not condSetEmpty!19348)) setNonEmpty!19348))

(assert (= setNonEmpty!19348 b!2209082))

(declare-fun m!2650743 () Bool)

(assert (=> setNonEmpty!19348 m!2650743))

(declare-fun m!2650745 () Bool)

(assert (=> b!2209085 m!2650745))

(declare-fun m!2650747 () Bool)

(assert (=> b!2209085 m!2650747))

(declare-fun m!2650749 () Bool)

(assert (=> b!2209085 m!2650749))

(declare-fun m!2650751 () Bool)

(assert (=> b!2209085 m!2650751))

(declare-fun m!2650753 () Bool)

(assert (=> start!215002 m!2650753))

(declare-fun m!2650755 () Bool)

(assert (=> start!215002 m!2650755))

(declare-fun m!2650757 () Bool)

(assert (=> start!215002 m!2650757))

(declare-fun m!2650759 () Bool)

(assert (=> start!215002 m!2650759))

(assert (=> start!215002 m!2650753))

(declare-fun m!2650761 () Bool)

(assert (=> start!215002 m!2650761))

(declare-fun m!2650763 () Bool)

(assert (=> b!2209087 m!2650763))

(declare-fun m!2650765 () Bool)

(assert (=> b!2209087 m!2650765))

(assert (=> b!2209087 m!2650763))

(assert (=> b!2209087 m!2650765))

(declare-fun m!2650767 () Bool)

(assert (=> b!2209087 m!2650767))

(declare-fun m!2650769 () Bool)

(assert (=> b!2209087 m!2650769))

(declare-fun m!2650771 () Bool)

(assert (=> b!2209086 m!2650771))

(declare-fun m!2650773 () Bool)

(assert (=> b!2209081 m!2650773))

(check-sat (not setNonEmpty!19348) (not b!2209082) (not b!2209087) (not start!215002) (not b!2209081) (not b!2209085) (not b!2209086))
(check-sat)
(get-model)

(declare-fun d!660220 () Bool)

(declare-fun c!353012 () Bool)

(get-info :version)

(assert (=> d!660220 (= c!353012 ((_ is Node!8445) (c!353006 totalInput!846)))))

(declare-fun e!1411130 () Bool)

(assert (=> d!660220 (= (inv!34941 (c!353006 totalInput!846)) e!1411130)))

(declare-fun b!2209100 () Bool)

(declare-fun inv!34947 (Conc!8445) Bool)

(assert (=> b!2209100 (= e!1411130 (inv!34947 (c!353006 totalInput!846)))))

(declare-fun b!2209101 () Bool)

(declare-fun e!1411131 () Bool)

(assert (=> b!2209101 (= e!1411130 e!1411131)))

(declare-fun res!949456 () Bool)

(assert (=> b!2209101 (= res!949456 (not ((_ is Leaf!12367) (c!353006 totalInput!846))))))

(assert (=> b!2209101 (=> res!949456 e!1411131)))

(declare-fun b!2209102 () Bool)

(declare-fun inv!34948 (Conc!8445) Bool)

(assert (=> b!2209102 (= e!1411131 (inv!34948 (c!353006 totalInput!846)))))

(assert (= (and d!660220 c!353012) b!2209100))

(assert (= (and d!660220 (not c!353012)) b!2209101))

(assert (= (and b!2209101 (not res!949456)) b!2209102))

(declare-fun m!2650775 () Bool)

(assert (=> b!2209100 m!2650775))

(declare-fun m!2650777 () Bool)

(assert (=> b!2209102 m!2650777))

(assert (=> b!2209081 d!660220))

(declare-fun d!660224 () Bool)

(declare-fun lambda!83454 () Int)

(declare-fun forall!5290 (List!25930 Int) Bool)

(assert (=> d!660224 (= (inv!34942 setElem!19348) (forall!5290 (exprs!2379 setElem!19348) lambda!83454))))

(declare-fun bs!451291 () Bool)

(assert (= bs!451291 d!660224))

(declare-fun m!2650865 () Bool)

(assert (=> bs!451291 m!2650865))

(assert (=> setNonEmpty!19348 d!660224))

(declare-fun b!2209179 () Bool)

(declare-fun e!1411178 () Int)

(assert (=> b!2209179 (= e!1411178 e!1411118)))

(declare-fun d!660256 () Bool)

(declare-fun lt!826080 () Int)

(assert (=> d!660256 (and (>= lt!826080 (- 1)) (< lt!826080 lt!826048) (>= lt!826080 e!1411118) (or (= lt!826080 e!1411118) (>= lt!826080 lt!826051)))))

(declare-fun e!1411177 () Int)

(assert (=> d!660256 (= lt!826080 e!1411177)))

(declare-fun c!353031 () Bool)

(declare-fun e!1411179 () Bool)

(assert (=> d!660256 (= c!353031 e!1411179)))

(declare-fun res!949479 () Bool)

(assert (=> d!660256 (=> res!949479 e!1411179)))

(assert (=> d!660256 (= res!949479 (= lt!826051 lt!826048))))

(assert (=> d!660256 (and (>= lt!826051 0) (<= lt!826051 lt!826048))))

(assert (=> d!660256 (= (furthestNullablePosition!435 z!3830 lt!826051 totalInput!846 lt!826048 e!1411118) lt!826080)))

(declare-fun b!2209180 () Bool)

(declare-fun lt!826079 () (InoxSet Context!3758))

(assert (=> b!2209180 (= e!1411177 (furthestNullablePosition!435 lt!826079 (+ lt!826051 1) totalInput!846 lt!826048 e!1411178))))

(declare-fun derivationStepZipper!331 ((InoxSet Context!3758) C!12764) (InoxSet Context!3758))

(declare-fun apply!6393 (BalanceConc!16652 Int) C!12764)

(assert (=> b!2209180 (= lt!826079 (derivationStepZipper!331 z!3830 (apply!6393 totalInput!846 lt!826051)))))

(declare-fun c!353030 () Bool)

(assert (=> b!2209180 (= c!353030 (nullableZipper!589 lt!826079))))

(declare-fun b!2209181 () Bool)

(declare-fun lostCauseZipper!395 ((InoxSet Context!3758)) Bool)

(assert (=> b!2209181 (= e!1411179 (lostCauseZipper!395 z!3830))))

(declare-fun b!2209182 () Bool)

(assert (=> b!2209182 (= e!1411177 e!1411118)))

(declare-fun b!2209183 () Bool)

(assert (=> b!2209183 (= e!1411178 lt!826051)))

(assert (= (and d!660256 (not res!949479)) b!2209181))

(assert (= (and d!660256 c!353031) b!2209182))

(assert (= (and d!660256 (not c!353031)) b!2209180))

(assert (= (and b!2209180 c!353030) b!2209183))

(assert (= (and b!2209180 (not c!353030)) b!2209179))

(declare-fun m!2650867 () Bool)

(assert (=> b!2209180 m!2650867))

(declare-fun m!2650869 () Bool)

(assert (=> b!2209180 m!2650869))

(assert (=> b!2209180 m!2650869))

(declare-fun m!2650871 () Bool)

(assert (=> b!2209180 m!2650871))

(declare-fun m!2650873 () Bool)

(assert (=> b!2209180 m!2650873))

(declare-fun m!2650875 () Bool)

(assert (=> b!2209181 m!2650875))

(assert (=> b!2209085 d!660256))

(declare-fun d!660258 () Bool)

(declare-fun lambda!83457 () Int)

(declare-fun exists!878 ((InoxSet Context!3758) Int) Bool)

(assert (=> d!660258 (= (nullableZipper!589 z!3830) (exists!878 z!3830 lambda!83457))))

(declare-fun bs!451292 () Bool)

(assert (= bs!451292 d!660258))

(declare-fun m!2650877 () Bool)

(assert (=> bs!451292 m!2650877))

(assert (=> b!2209085 d!660258))

(declare-fun d!660260 () Bool)

(declare-fun lt!826083 () Int)

(declare-fun size!20142 (List!25929) Int)

(assert (=> d!660260 (= lt!826083 (size!20142 (list!10006 input!5506)))))

(declare-fun size!20143 (Conc!8445) Int)

(assert (=> d!660260 (= lt!826083 (size!20143 (c!353006 input!5506)))))

(assert (=> d!660260 (= (size!20139 input!5506) lt!826083)))

(declare-fun bs!451293 () Bool)

(assert (= bs!451293 d!660260))

(assert (=> bs!451293 m!2650759))

(assert (=> bs!451293 m!2650759))

(declare-fun m!2650879 () Bool)

(assert (=> bs!451293 m!2650879))

(declare-fun m!2650881 () Bool)

(assert (=> bs!451293 m!2650881))

(assert (=> b!2209085 d!660260))

(declare-fun d!660262 () Bool)

(declare-fun lt!826084 () Int)

(assert (=> d!660262 (= lt!826084 (size!20142 (list!10006 totalInput!846)))))

(assert (=> d!660262 (= lt!826084 (size!20143 (c!353006 totalInput!846)))))

(assert (=> d!660262 (= (size!20139 totalInput!846) lt!826084)))

(declare-fun bs!451294 () Bool)

(assert (= bs!451294 d!660262))

(assert (=> bs!451294 m!2650753))

(assert (=> bs!451294 m!2650753))

(declare-fun m!2650883 () Bool)

(assert (=> bs!451294 m!2650883))

(declare-fun m!2650885 () Bool)

(assert (=> bs!451294 m!2650885))

(assert (=> b!2209085 d!660262))

(declare-fun d!660264 () Bool)

(declare-fun list!10008 (Conc!8445) List!25929)

(assert (=> d!660264 (= (list!10006 totalInput!846) (list!10008 (c!353006 totalInput!846)))))

(declare-fun bs!451295 () Bool)

(assert (= bs!451295 d!660264))

(declare-fun m!2650887 () Bool)

(assert (=> bs!451295 m!2650887))

(assert (=> start!215002 d!660264))

(declare-fun d!660266 () Bool)

(declare-fun isBalanced!2603 (Conc!8445) Bool)

(assert (=> d!660266 (= (inv!34943 totalInput!846) (isBalanced!2603 (c!353006 totalInput!846)))))

(declare-fun bs!451296 () Bool)

(assert (= bs!451296 d!660266))

(declare-fun m!2650889 () Bool)

(assert (=> bs!451296 m!2650889))

(assert (=> start!215002 d!660266))

(declare-fun d!660268 () Bool)

(declare-fun e!1411182 () Bool)

(assert (=> d!660268 e!1411182))

(declare-fun res!949482 () Bool)

(assert (=> d!660268 (=> res!949482 e!1411182)))

(declare-fun lt!826087 () Bool)

(assert (=> d!660268 (= res!949482 (not lt!826087))))

(declare-fun drop!1489 (List!25929 Int) List!25929)

(assert (=> d!660268 (= lt!826087 (= lt!826049 (drop!1489 (list!10006 totalInput!846) (- (size!20142 (list!10006 totalInput!846)) (size!20142 lt!826049)))))))

(assert (=> d!660268 (= (isSuffix!746 lt!826049 (list!10006 totalInput!846)) lt!826087)))

(declare-fun b!2209186 () Bool)

(assert (=> b!2209186 (= e!1411182 (>= (size!20142 (list!10006 totalInput!846)) (size!20142 lt!826049)))))

(assert (= (and d!660268 (not res!949482)) b!2209186))

(assert (=> d!660268 m!2650753))

(assert (=> d!660268 m!2650883))

(declare-fun m!2650891 () Bool)

(assert (=> d!660268 m!2650891))

(assert (=> d!660268 m!2650753))

(declare-fun m!2650893 () Bool)

(assert (=> d!660268 m!2650893))

(assert (=> b!2209186 m!2650753))

(assert (=> b!2209186 m!2650883))

(assert (=> b!2209186 m!2650891))

(assert (=> start!215002 d!660268))

(declare-fun d!660270 () Bool)

(assert (=> d!660270 (= (list!10006 input!5506) (list!10008 (c!353006 input!5506)))))

(declare-fun bs!451297 () Bool)

(assert (= bs!451297 d!660270))

(declare-fun m!2650895 () Bool)

(assert (=> bs!451297 m!2650895))

(assert (=> start!215002 d!660270))

(declare-fun d!660272 () Bool)

(assert (=> d!660272 (= (inv!34943 input!5506) (isBalanced!2603 (c!353006 input!5506)))))

(declare-fun bs!451298 () Bool)

(assert (= bs!451298 d!660272))

(declare-fun m!2650897 () Bool)

(assert (=> bs!451298 m!2650897))

(assert (=> start!215002 d!660272))

(declare-fun d!660274 () Bool)

(declare-fun e!1411188 () Bool)

(assert (=> d!660274 e!1411188))

(declare-fun res!949487 () Bool)

(assert (=> d!660274 (=> (not res!949487) (not e!1411188))))

(declare-fun lt!826090 () List!25929)

(declare-fun content!3508 (List!25929) (InoxSet C!12764))

(assert (=> d!660274 (= res!949487 (= (content!3508 lt!826090) ((_ map or) (content!3508 (list!10006 (_1!14940 lt!826052))) (content!3508 (list!10006 (_2!14940 lt!826052))))))))

(declare-fun e!1411187 () List!25929)

(assert (=> d!660274 (= lt!826090 e!1411187)))

(declare-fun c!353036 () Bool)

(assert (=> d!660274 (= c!353036 ((_ is Nil!25845) (list!10006 (_1!14940 lt!826052))))))

(assert (=> d!660274 (= (++!6437 (list!10006 (_1!14940 lt!826052)) (list!10006 (_2!14940 lt!826052))) lt!826090)))

(declare-fun b!2209195 () Bool)

(assert (=> b!2209195 (= e!1411187 (list!10006 (_2!14940 lt!826052)))))

(declare-fun b!2209196 () Bool)

(assert (=> b!2209196 (= e!1411187 (Cons!25845 (h!31246 (list!10006 (_1!14940 lt!826052))) (++!6437 (t!198595 (list!10006 (_1!14940 lt!826052))) (list!10006 (_2!14940 lt!826052)))))))

(declare-fun b!2209198 () Bool)

(assert (=> b!2209198 (= e!1411188 (or (not (= (list!10006 (_2!14940 lt!826052)) Nil!25845)) (= lt!826090 (list!10006 (_1!14940 lt!826052)))))))

(declare-fun b!2209197 () Bool)

(declare-fun res!949488 () Bool)

(assert (=> b!2209197 (=> (not res!949488) (not e!1411188))))

(assert (=> b!2209197 (= res!949488 (= (size!20142 lt!826090) (+ (size!20142 (list!10006 (_1!14940 lt!826052))) (size!20142 (list!10006 (_2!14940 lt!826052))))))))

(assert (= (and d!660274 c!353036) b!2209195))

(assert (= (and d!660274 (not c!353036)) b!2209196))

(assert (= (and d!660274 res!949487) b!2209197))

(assert (= (and b!2209197 res!949488) b!2209198))

(declare-fun m!2650899 () Bool)

(assert (=> d!660274 m!2650899))

(assert (=> d!660274 m!2650763))

(declare-fun m!2650901 () Bool)

(assert (=> d!660274 m!2650901))

(assert (=> d!660274 m!2650765))

(declare-fun m!2650903 () Bool)

(assert (=> d!660274 m!2650903))

(assert (=> b!2209196 m!2650765))

(declare-fun m!2650905 () Bool)

(assert (=> b!2209196 m!2650905))

(declare-fun m!2650907 () Bool)

(assert (=> b!2209197 m!2650907))

(assert (=> b!2209197 m!2650763))

(declare-fun m!2650909 () Bool)

(assert (=> b!2209197 m!2650909))

(assert (=> b!2209197 m!2650765))

(declare-fun m!2650911 () Bool)

(assert (=> b!2209197 m!2650911))

(assert (=> b!2209087 d!660274))

(declare-fun d!660276 () Bool)

(assert (=> d!660276 (= (list!10006 (_1!14940 lt!826052)) (list!10008 (c!353006 (_1!14940 lt!826052))))))

(declare-fun bs!451299 () Bool)

(assert (= bs!451299 d!660276))

(declare-fun m!2650913 () Bool)

(assert (=> bs!451299 m!2650913))

(assert (=> b!2209087 d!660276))

(declare-fun d!660278 () Bool)

(assert (=> d!660278 (= (list!10006 (_2!14940 lt!826052)) (list!10008 (c!353006 (_2!14940 lt!826052))))))

(declare-fun bs!451300 () Bool)

(assert (= bs!451300 d!660278))

(declare-fun m!2650915 () Bool)

(assert (=> bs!451300 m!2650915))

(assert (=> b!2209087 d!660278))

(declare-fun d!660280 () Bool)

(declare-fun e!1411191 () Bool)

(assert (=> d!660280 e!1411191))

(declare-fun res!949493 () Bool)

(assert (=> d!660280 (=> (not res!949493) (not e!1411191))))

(declare-fun lt!826095 () tuple2!25140)

(assert (=> d!660280 (= res!949493 (isBalanced!2603 (c!353006 (_1!14940 lt!826095))))))

(declare-datatypes ((tuple2!25146 0))(
  ( (tuple2!25147 (_1!14943 Conc!8445) (_2!14943 Conc!8445)) )
))
(declare-fun lt!826096 () tuple2!25146)

(assert (=> d!660280 (= lt!826095 (tuple2!25141 (BalanceConc!16653 (_1!14943 lt!826096)) (BalanceConc!16653 (_2!14943 lt!826096))))))

(declare-fun splitAt!69 (Conc!8445 Int) tuple2!25146)

(assert (=> d!660280 (= lt!826096 (splitAt!69 (c!353006 input!5506) lt!826050))))

(assert (=> d!660280 (isBalanced!2603 (c!353006 input!5506))))

(assert (=> d!660280 (= (splitAt!67 input!5506 lt!826050) lt!826095)))

(declare-fun b!2209203 () Bool)

(declare-fun res!949494 () Bool)

(assert (=> b!2209203 (=> (not res!949494) (not e!1411191))))

(assert (=> b!2209203 (= res!949494 (isBalanced!2603 (c!353006 (_2!14940 lt!826095))))))

(declare-fun b!2209204 () Bool)

(declare-datatypes ((tuple2!25148 0))(
  ( (tuple2!25149 (_1!14944 List!25929) (_2!14944 List!25929)) )
))
(declare-fun splitAtIndex!36 (List!25929 Int) tuple2!25148)

(assert (=> b!2209204 (= e!1411191 (= (tuple2!25149 (list!10006 (_1!14940 lt!826095)) (list!10006 (_2!14940 lt!826095))) (splitAtIndex!36 (list!10006 input!5506) lt!826050)))))

(assert (= (and d!660280 res!949493) b!2209203))

(assert (= (and b!2209203 res!949494) b!2209204))

(declare-fun m!2650917 () Bool)

(assert (=> d!660280 m!2650917))

(declare-fun m!2650919 () Bool)

(assert (=> d!660280 m!2650919))

(assert (=> d!660280 m!2650897))

(declare-fun m!2650921 () Bool)

(assert (=> b!2209203 m!2650921))

(declare-fun m!2650923 () Bool)

(assert (=> b!2209204 m!2650923))

(declare-fun m!2650925 () Bool)

(assert (=> b!2209204 m!2650925))

(assert (=> b!2209204 m!2650759))

(assert (=> b!2209204 m!2650759))

(declare-fun m!2650927 () Bool)

(assert (=> b!2209204 m!2650927))

(assert (=> b!2209087 d!660280))

(declare-fun d!660282 () Bool)

(declare-fun c!353037 () Bool)

(assert (=> d!660282 (= c!353037 ((_ is Node!8445) (c!353006 input!5506)))))

(declare-fun e!1411192 () Bool)

(assert (=> d!660282 (= (inv!34941 (c!353006 input!5506)) e!1411192)))

(declare-fun b!2209205 () Bool)

(assert (=> b!2209205 (= e!1411192 (inv!34947 (c!353006 input!5506)))))

(declare-fun b!2209206 () Bool)

(declare-fun e!1411193 () Bool)

(assert (=> b!2209206 (= e!1411192 e!1411193)))

(declare-fun res!949495 () Bool)

(assert (=> b!2209206 (= res!949495 (not ((_ is Leaf!12367) (c!353006 input!5506))))))

(assert (=> b!2209206 (=> res!949495 e!1411193)))

(declare-fun b!2209207 () Bool)

(assert (=> b!2209207 (= e!1411193 (inv!34948 (c!353006 input!5506)))))

(assert (= (and d!660282 c!353037) b!2209205))

(assert (= (and d!660282 (not c!353037)) b!2209206))

(assert (= (and b!2209206 (not res!949495)) b!2209207))

(declare-fun m!2650929 () Bool)

(assert (=> b!2209205 m!2650929))

(declare-fun m!2650931 () Bool)

(assert (=> b!2209207 m!2650931))

(assert (=> b!2209086 d!660282))

(declare-fun b!2209212 () Bool)

(declare-fun e!1411196 () Bool)

(declare-fun tp!686805 () Bool)

(declare-fun tp!686806 () Bool)

(assert (=> b!2209212 (= e!1411196 (and tp!686805 tp!686806))))

(assert (=> b!2209082 (= tp!686775 e!1411196)))

(assert (= (and b!2209082 ((_ is Cons!25846) (exprs!2379 setElem!19348))) b!2209212))

(declare-fun tp!686815 () Bool)

(declare-fun b!2209221 () Bool)

(declare-fun tp!686814 () Bool)

(declare-fun e!1411201 () Bool)

(assert (=> b!2209221 (= e!1411201 (and (inv!34941 (left!19866 (c!353006 totalInput!846))) tp!686815 (inv!34941 (right!20196 (c!353006 totalInput!846))) tp!686814))))

(declare-fun b!2209223 () Bool)

(declare-fun e!1411202 () Bool)

(declare-fun tp!686813 () Bool)

(assert (=> b!2209223 (= e!1411202 tp!686813)))

(declare-fun b!2209222 () Bool)

(declare-fun inv!34949 (IArray!16895) Bool)

(assert (=> b!2209222 (= e!1411201 (and (inv!34949 (xs!11387 (c!353006 totalInput!846))) e!1411202))))

(assert (=> b!2209081 (= tp!686776 (and (inv!34941 (c!353006 totalInput!846)) e!1411201))))

(assert (= (and b!2209081 ((_ is Node!8445) (c!353006 totalInput!846))) b!2209221))

(assert (= b!2209222 b!2209223))

(assert (= (and b!2209081 ((_ is Leaf!12367) (c!353006 totalInput!846))) b!2209222))

(declare-fun m!2650933 () Bool)

(assert (=> b!2209221 m!2650933))

(declare-fun m!2650935 () Bool)

(assert (=> b!2209221 m!2650935))

(declare-fun m!2650937 () Bool)

(assert (=> b!2209222 m!2650937))

(assert (=> b!2209081 m!2650773))

(declare-fun condSetEmpty!19354 () Bool)

(assert (=> setNonEmpty!19348 (= condSetEmpty!19354 (= setRest!19348 ((as const (Array Context!3758 Bool)) false)))))

(declare-fun setRes!19354 () Bool)

(assert (=> setNonEmpty!19348 (= tp!686773 setRes!19354)))

(declare-fun setIsEmpty!19354 () Bool)

(assert (=> setIsEmpty!19354 setRes!19354))

(declare-fun e!1411205 () Bool)

(declare-fun setElem!19354 () Context!3758)

(declare-fun setNonEmpty!19354 () Bool)

(declare-fun tp!686820 () Bool)

(assert (=> setNonEmpty!19354 (= setRes!19354 (and tp!686820 (inv!34942 setElem!19354) e!1411205))))

(declare-fun setRest!19354 () (InoxSet Context!3758))

(assert (=> setNonEmpty!19354 (= setRest!19348 ((_ map or) (store ((as const (Array Context!3758 Bool)) false) setElem!19354 true) setRest!19354))))

(declare-fun b!2209228 () Bool)

(declare-fun tp!686821 () Bool)

(assert (=> b!2209228 (= e!1411205 tp!686821)))

(assert (= (and setNonEmpty!19348 condSetEmpty!19354) setIsEmpty!19354))

(assert (= (and setNonEmpty!19348 (not condSetEmpty!19354)) setNonEmpty!19354))

(assert (= setNonEmpty!19354 b!2209228))

(declare-fun m!2650939 () Bool)

(assert (=> setNonEmpty!19354 m!2650939))

(declare-fun b!2209229 () Bool)

(declare-fun tp!686823 () Bool)

(declare-fun tp!686824 () Bool)

(declare-fun e!1411206 () Bool)

(assert (=> b!2209229 (= e!1411206 (and (inv!34941 (left!19866 (c!353006 input!5506))) tp!686824 (inv!34941 (right!20196 (c!353006 input!5506))) tp!686823))))

(declare-fun b!2209231 () Bool)

(declare-fun e!1411207 () Bool)

(declare-fun tp!686822 () Bool)

(assert (=> b!2209231 (= e!1411207 tp!686822)))

(declare-fun b!2209230 () Bool)

(assert (=> b!2209230 (= e!1411206 (and (inv!34949 (xs!11387 (c!353006 input!5506))) e!1411207))))

(assert (=> b!2209086 (= tp!686774 (and (inv!34941 (c!353006 input!5506)) e!1411206))))

(assert (= (and b!2209086 ((_ is Node!8445) (c!353006 input!5506))) b!2209229))

(assert (= b!2209230 b!2209231))

(assert (= (and b!2209086 ((_ is Leaf!12367) (c!353006 input!5506))) b!2209230))

(declare-fun m!2650941 () Bool)

(assert (=> b!2209229 m!2650941))

(declare-fun m!2650943 () Bool)

(assert (=> b!2209229 m!2650943))

(declare-fun m!2650945 () Bool)

(assert (=> b!2209230 m!2650945))

(assert (=> b!2209086 m!2650771))

(check-sat (not b!2209196) (not d!660258) (not d!660274) (not b!2209205) (not d!660266) (not b!2209180) (not d!660224) (not d!660270) (not d!660268) (not d!660260) (not b!2209197) (not b!2209102) (not b!2209086) (not b!2209221) (not d!660280) (not d!660262) (not b!2209222) (not d!660276) (not b!2209186) (not b!2209230) (not b!2209081) (not b!2209229) (not d!660278) (not d!660264) (not b!2209231) (not b!2209181) (not b!2209207) (not b!2209100) (not b!2209203) (not b!2209212) (not b!2209223) (not setNonEmpty!19354) (not d!660272) (not b!2209228) (not b!2209204))
(check-sat)
(get-model)

(declare-fun d!660318 () Bool)

(declare-fun res!949542 () Bool)

(declare-fun e!1411252 () Bool)

(assert (=> d!660318 (=> (not res!949542) (not e!1411252))))

(assert (=> d!660318 (= res!949542 (= (csize!17120 (c!353006 totalInput!846)) (+ (size!20143 (left!19866 (c!353006 totalInput!846))) (size!20143 (right!20196 (c!353006 totalInput!846))))))))

(assert (=> d!660318 (= (inv!34947 (c!353006 totalInput!846)) e!1411252)))

(declare-fun b!2209326 () Bool)

(declare-fun res!949543 () Bool)

(assert (=> b!2209326 (=> (not res!949543) (not e!1411252))))

(assert (=> b!2209326 (= res!949543 (and (not (= (left!19866 (c!353006 totalInput!846)) Empty!8445)) (not (= (right!20196 (c!353006 totalInput!846)) Empty!8445))))))

(declare-fun b!2209327 () Bool)

(declare-fun res!949544 () Bool)

(assert (=> b!2209327 (=> (not res!949544) (not e!1411252))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1269 (Conc!8445) Int)

(assert (=> b!2209327 (= res!949544 (= (cheight!8656 (c!353006 totalInput!846)) (+ (max!0 (height!1269 (left!19866 (c!353006 totalInput!846))) (height!1269 (right!20196 (c!353006 totalInput!846)))) 1)))))

(declare-fun b!2209328 () Bool)

(assert (=> b!2209328 (= e!1411252 (<= 0 (cheight!8656 (c!353006 totalInput!846))))))

(assert (= (and d!660318 res!949542) b!2209326))

(assert (= (and b!2209326 res!949543) b!2209327))

(assert (= (and b!2209327 res!949544) b!2209328))

(declare-fun m!2651037 () Bool)

(assert (=> d!660318 m!2651037))

(declare-fun m!2651039 () Bool)

(assert (=> d!660318 m!2651039))

(declare-fun m!2651041 () Bool)

(assert (=> b!2209327 m!2651041))

(declare-fun m!2651043 () Bool)

(assert (=> b!2209327 m!2651043))

(assert (=> b!2209327 m!2651041))

(assert (=> b!2209327 m!2651043))

(declare-fun m!2651045 () Bool)

(assert (=> b!2209327 m!2651045))

(assert (=> b!2209100 d!660318))

(declare-fun d!660326 () Bool)

(declare-fun res!949555 () Bool)

(declare-fun e!1411257 () Bool)

(assert (=> d!660326 (=> (not res!949555) (not e!1411257))))

(declare-fun list!10009 (IArray!16895) List!25929)

(assert (=> d!660326 (= res!949555 (<= (size!20142 (list!10009 (xs!11387 (c!353006 totalInput!846)))) 512))))

(assert (=> d!660326 (= (inv!34948 (c!353006 totalInput!846)) e!1411257)))

(declare-fun b!2209339 () Bool)

(declare-fun res!949556 () Bool)

(assert (=> b!2209339 (=> (not res!949556) (not e!1411257))))

(assert (=> b!2209339 (= res!949556 (= (csize!17121 (c!353006 totalInput!846)) (size!20142 (list!10009 (xs!11387 (c!353006 totalInput!846))))))))

(declare-fun b!2209340 () Bool)

(assert (=> b!2209340 (= e!1411257 (and (> (csize!17121 (c!353006 totalInput!846)) 0) (<= (csize!17121 (c!353006 totalInput!846)) 512)))))

(assert (= (and d!660326 res!949555) b!2209339))

(assert (= (and b!2209339 res!949556) b!2209340))

(declare-fun m!2651047 () Bool)

(assert (=> d!660326 m!2651047))

(assert (=> d!660326 m!2651047))

(declare-fun m!2651049 () Bool)

(assert (=> d!660326 m!2651049))

(assert (=> b!2209339 m!2651047))

(assert (=> b!2209339 m!2651047))

(assert (=> b!2209339 m!2651049))

(assert (=> b!2209102 d!660326))

(declare-fun d!660328 () Bool)

(declare-fun c!353062 () Bool)

(assert (=> d!660328 (= c!353062 ((_ is Node!8445) (left!19866 (c!353006 input!5506))))))

(declare-fun e!1411258 () Bool)

(assert (=> d!660328 (= (inv!34941 (left!19866 (c!353006 input!5506))) e!1411258)))

(declare-fun b!2209341 () Bool)

(assert (=> b!2209341 (= e!1411258 (inv!34947 (left!19866 (c!353006 input!5506))))))

(declare-fun b!2209342 () Bool)

(declare-fun e!1411259 () Bool)

(assert (=> b!2209342 (= e!1411258 e!1411259)))

(declare-fun res!949557 () Bool)

(assert (=> b!2209342 (= res!949557 (not ((_ is Leaf!12367) (left!19866 (c!353006 input!5506)))))))

(assert (=> b!2209342 (=> res!949557 e!1411259)))

(declare-fun b!2209343 () Bool)

(assert (=> b!2209343 (= e!1411259 (inv!34948 (left!19866 (c!353006 input!5506))))))

(assert (= (and d!660328 c!353062) b!2209341))

(assert (= (and d!660328 (not c!353062)) b!2209342))

(assert (= (and b!2209342 (not res!949557)) b!2209343))

(declare-fun m!2651051 () Bool)

(assert (=> b!2209341 m!2651051))

(declare-fun m!2651053 () Bool)

(assert (=> b!2209343 m!2651053))

(assert (=> b!2209229 d!660328))

(declare-fun d!660330 () Bool)

(declare-fun c!353063 () Bool)

(assert (=> d!660330 (= c!353063 ((_ is Node!8445) (right!20196 (c!353006 input!5506))))))

(declare-fun e!1411260 () Bool)

(assert (=> d!660330 (= (inv!34941 (right!20196 (c!353006 input!5506))) e!1411260)))

(declare-fun b!2209344 () Bool)

(assert (=> b!2209344 (= e!1411260 (inv!34947 (right!20196 (c!353006 input!5506))))))

(declare-fun b!2209345 () Bool)

(declare-fun e!1411261 () Bool)

(assert (=> b!2209345 (= e!1411260 e!1411261)))

(declare-fun res!949558 () Bool)

(assert (=> b!2209345 (= res!949558 (not ((_ is Leaf!12367) (right!20196 (c!353006 input!5506)))))))

(assert (=> b!2209345 (=> res!949558 e!1411261)))

(declare-fun b!2209346 () Bool)

(assert (=> b!2209346 (= e!1411261 (inv!34948 (right!20196 (c!353006 input!5506))))))

(assert (= (and d!660330 c!353063) b!2209344))

(assert (= (and d!660330 (not c!353063)) b!2209345))

(assert (= (and b!2209345 (not res!949558)) b!2209346))

(declare-fun m!2651055 () Bool)

(assert (=> b!2209344 m!2651055))

(declare-fun m!2651057 () Bool)

(assert (=> b!2209346 m!2651057))

(assert (=> b!2209229 d!660330))

(declare-fun b!2209383 () Bool)

(declare-fun res!949581 () Bool)

(declare-fun e!1411281 () Bool)

(assert (=> b!2209383 (=> (not res!949581) (not e!1411281))))

(declare-fun isEmpty!14779 (Conc!8445) Bool)

(assert (=> b!2209383 (= res!949581 (not (isEmpty!14779 (left!19866 (c!353006 (_1!14940 lt!826095))))))))

(declare-fun b!2209384 () Bool)

(declare-fun res!949584 () Bool)

(assert (=> b!2209384 (=> (not res!949584) (not e!1411281))))

(assert (=> b!2209384 (= res!949584 (<= (- (height!1269 (left!19866 (c!353006 (_1!14940 lt!826095)))) (height!1269 (right!20196 (c!353006 (_1!14940 lt!826095))))) 1))))

(declare-fun b!2209385 () Bool)

(declare-fun res!949582 () Bool)

(assert (=> b!2209385 (=> (not res!949582) (not e!1411281))))

(assert (=> b!2209385 (= res!949582 (isBalanced!2603 (left!19866 (c!353006 (_1!14940 lt!826095)))))))

(declare-fun b!2209386 () Bool)

(declare-fun res!949585 () Bool)

(assert (=> b!2209386 (=> (not res!949585) (not e!1411281))))

(assert (=> b!2209386 (= res!949585 (isBalanced!2603 (right!20196 (c!353006 (_1!14940 lt!826095)))))))

(declare-fun d!660332 () Bool)

(declare-fun res!949586 () Bool)

(declare-fun e!1411282 () Bool)

(assert (=> d!660332 (=> res!949586 e!1411282)))

(assert (=> d!660332 (= res!949586 (not ((_ is Node!8445) (c!353006 (_1!14940 lt!826095)))))))

(assert (=> d!660332 (= (isBalanced!2603 (c!353006 (_1!14940 lt!826095))) e!1411282)))

(declare-fun b!2209387 () Bool)

(assert (=> b!2209387 (= e!1411282 e!1411281)))

(declare-fun res!949583 () Bool)

(assert (=> b!2209387 (=> (not res!949583) (not e!1411281))))

(assert (=> b!2209387 (= res!949583 (<= (- 1) (- (height!1269 (left!19866 (c!353006 (_1!14940 lt!826095)))) (height!1269 (right!20196 (c!353006 (_1!14940 lt!826095)))))))))

(declare-fun b!2209388 () Bool)

(assert (=> b!2209388 (= e!1411281 (not (isEmpty!14779 (right!20196 (c!353006 (_1!14940 lt!826095))))))))

(assert (= (and d!660332 (not res!949586)) b!2209387))

(assert (= (and b!2209387 res!949583) b!2209384))

(assert (= (and b!2209384 res!949584) b!2209385))

(assert (= (and b!2209385 res!949582) b!2209386))

(assert (= (and b!2209386 res!949585) b!2209383))

(assert (= (and b!2209383 res!949581) b!2209388))

(declare-fun m!2651089 () Bool)

(assert (=> b!2209384 m!2651089))

(declare-fun m!2651091 () Bool)

(assert (=> b!2209384 m!2651091))

(declare-fun m!2651093 () Bool)

(assert (=> b!2209385 m!2651093))

(declare-fun m!2651095 () Bool)

(assert (=> b!2209383 m!2651095))

(declare-fun m!2651097 () Bool)

(assert (=> b!2209386 m!2651097))

(assert (=> b!2209387 m!2651089))

(assert (=> b!2209387 m!2651091))

(declare-fun m!2651099 () Bool)

(assert (=> b!2209388 m!2651099))

(assert (=> d!660280 d!660332))

(declare-fun b!2209504 () Bool)

(declare-fun c!353124 () Bool)

(assert (=> b!2209504 (= c!353124 (<= lt!826050 0))))

(declare-fun e!1411350 () tuple2!25146)

(declare-fun e!1411343 () tuple2!25146)

(assert (=> b!2209504 (= e!1411350 e!1411343)))

(declare-fun b!2209505 () Bool)

(declare-fun e!1411342 () Int)

(declare-fun call!132368 () Int)

(assert (=> b!2209505 (= e!1411342 (- lt!826050 call!132368))))

(declare-fun b!2209506 () Bool)

(declare-fun lt!826178 () tuple2!25148)

(declare-fun call!132365 () tuple2!25148)

(assert (=> b!2209506 (= lt!826178 call!132365)))

(declare-fun e!1411349 () tuple2!25148)

(declare-fun call!132367 () List!25929)

(assert (=> b!2209506 (= e!1411349 (tuple2!25149 (_1!14944 lt!826178) call!132367))))

(declare-fun b!2209507 () Bool)

(declare-fun e!1411351 () tuple2!25146)

(assert (=> b!2209507 (= e!1411351 (tuple2!25147 (c!353006 input!5506) (c!353006 input!5506)))))

(declare-fun b!2209508 () Bool)

(declare-fun e!1411348 () tuple2!25146)

(assert (=> b!2209508 (= e!1411348 (tuple2!25147 (c!353006 input!5506) Empty!8445))))

(declare-fun b!2209509 () Bool)

(assert (=> b!2209509 (= e!1411343 e!1411348)))

(declare-fun c!353128 () Bool)

(assert (=> b!2209509 (= c!353128 (= lt!826050 (csize!17121 (c!353006 input!5506))))))

(declare-fun b!2209510 () Bool)

(assert (=> b!2209510 (= e!1411342 lt!826050)))

(declare-fun b!2209511 () Bool)

(declare-datatypes ((Unit!38903 0))(
  ( (Unit!38904) )
))
(declare-fun lt!826177 () Unit!38903)

(declare-fun lt!826187 () Unit!38903)

(assert (=> b!2209511 (= lt!826177 lt!826187)))

(declare-fun lt!826182 () List!25929)

(declare-fun slice!626 (List!25929 Int Int) List!25929)

(assert (=> b!2209511 (= (drop!1489 lt!826182 lt!826050) (slice!626 lt!826182 lt!826050 call!132368))))

(declare-fun dropLemma!9 (List!25929 Int) Unit!38903)

(assert (=> b!2209511 (= lt!826187 (dropLemma!9 lt!826182 lt!826050))))

(assert (=> b!2209511 (= lt!826182 (list!10009 (xs!11387 (c!353006 input!5506))))))

(declare-fun lt!826179 () tuple2!25148)

(declare-fun call!132366 () tuple2!25148)

(assert (=> b!2209511 (= lt!826179 call!132366)))

(declare-fun slice!627 (IArray!16895 Int Int) IArray!16895)

(assert (=> b!2209511 (= e!1411348 (tuple2!25147 (Leaf!12367 (slice!627 (xs!11387 (c!353006 input!5506)) 0 lt!826050) lt!826050) (Leaf!12367 (slice!627 (xs!11387 (c!353006 input!5506)) lt!826050 (csize!17121 (c!353006 input!5506))) (- (csize!17121 (c!353006 input!5506)) lt!826050))))))

(declare-fun b!2209512 () Bool)

(assert (=> b!2209512 (= e!1411343 (tuple2!25147 Empty!8445 (c!353006 input!5506)))))

(declare-fun b!2209513 () Bool)

(declare-fun lt!826186 () tuple2!25146)

(declare-fun call!132369 () tuple2!25146)

(assert (=> b!2209513 (= lt!826186 call!132369)))

(declare-fun e!1411346 () tuple2!25146)

(declare-fun call!132370 () Conc!8445)

(assert (=> b!2209513 (= e!1411346 (tuple2!25147 call!132370 (_2!14943 lt!826186)))))

(declare-fun b!2209514 () Bool)

(declare-fun e!1411345 () Int)

(assert (=> b!2209514 (= e!1411345 lt!826050)))

(declare-fun c!353126 () Bool)

(declare-fun e!1411344 () List!25929)

(declare-fun lt!826184 () List!25929)

(declare-fun b!2209515 () Bool)

(declare-fun lt!826181 () List!25929)

(assert (=> b!2209515 (= e!1411344 (ite c!353126 lt!826181 lt!826184))))

(declare-fun bm!132360 () Bool)

(declare-fun c!353123 () Bool)

(declare-fun c!353127 () Bool)

(assert (=> bm!132360 (= c!353123 c!353127)))

(assert (=> bm!132360 (= call!132369 (splitAt!69 (ite c!353127 (left!19866 (c!353006 input!5506)) (right!20196 (c!353006 input!5506))) e!1411345))))

(declare-fun b!2209517 () Bool)

(declare-fun e!1411347 () tuple2!25148)

(assert (=> b!2209517 (= e!1411347 e!1411349)))

(assert (=> b!2209517 (= c!353126 (< lt!826050 call!132368))))

(declare-fun bm!132361 () Bool)

(declare-fun c!353122 () Bool)

(assert (=> bm!132361 (= c!353122 c!353126)))

(assert (=> bm!132361 (= call!132365 call!132366)))

(declare-fun b!2209518 () Bool)

(declare-fun c!353132 () Bool)

(assert (=> b!2209518 (= c!353132 (= (size!20143 (left!19866 (c!353006 input!5506))) lt!826050))))

(declare-fun lt!826183 () Unit!38903)

(declare-fun lt!826175 () Unit!38903)

(assert (=> b!2209518 (= lt!826183 lt!826175)))

(assert (=> b!2209518 (= (splitAtIndex!36 (++!6437 lt!826181 lt!826184) lt!826050) e!1411347)))

(declare-fun c!353129 () Bool)

(assert (=> b!2209518 (= c!353129 (= call!132368 lt!826050))))

(declare-fun splitAtLemma!9 (List!25929 List!25929 Int) Unit!38903)

(assert (=> b!2209518 (= lt!826175 (splitAtLemma!9 lt!826181 lt!826184 lt!826050))))

(assert (=> b!2209518 (= lt!826184 (list!10008 (right!20196 (c!353006 input!5506))))))

(assert (=> b!2209518 (= lt!826181 (list!10008 (left!19866 (c!353006 input!5506))))))

(declare-fun e!1411341 () tuple2!25146)

(assert (=> b!2209518 (= e!1411350 e!1411341)))

(declare-fun bm!132362 () Bool)

(declare-fun lt!826180 () tuple2!25148)

(assert (=> bm!132362 (= call!132367 (++!6437 (ite c!353126 (_2!14944 lt!826178) lt!826181) (ite c!353126 lt!826184 (_1!14944 lt!826180))))))

(declare-fun lt!826176 () tuple2!25146)

(declare-fun bm!132363 () Bool)

(declare-fun ++!6438 (Conc!8445 Conc!8445) Conc!8445)

(assert (=> bm!132363 (= call!132370 (++!6438 (ite c!353127 (_2!14943 lt!826176) (left!19866 (c!353006 input!5506))) (ite c!353127 (right!20196 (c!353006 input!5506)) (_1!14943 lt!826186))))))

(declare-fun b!2209519 () Bool)

(assert (=> b!2209519 (= e!1411341 e!1411346)))

(assert (=> b!2209519 (= c!353127 (< lt!826050 (size!20143 (left!19866 (c!353006 input!5506)))))))

(declare-fun b!2209520 () Bool)

(assert (=> b!2209520 (= e!1411345 (- lt!826050 (size!20143 (left!19866 (c!353006 input!5506)))))))

(declare-fun b!2209521 () Bool)

(assert (=> b!2209521 (= e!1411347 (tuple2!25149 lt!826181 lt!826184))))

(declare-fun b!2209522 () Bool)

(assert (=> b!2209522 (= e!1411341 (tuple2!25147 (left!19866 (c!353006 input!5506)) (right!20196 (c!353006 input!5506))))))

(declare-fun b!2209523 () Bool)

(assert (=> b!2209523 (= lt!826180 call!132365)))

(assert (=> b!2209523 (= e!1411349 (tuple2!25149 call!132367 (_2!14944 lt!826180)))))

(declare-fun b!2209524 () Bool)

(assert (=> b!2209524 (= e!1411344 (list!10009 (xs!11387 (c!353006 input!5506))))))

(declare-fun bm!132364 () Bool)

(declare-fun c!353125 () Bool)

(declare-fun c!353131 () Bool)

(assert (=> bm!132364 (= c!353125 c!353131)))

(assert (=> bm!132364 (= call!132366 (splitAtIndex!36 e!1411344 (ite c!353131 lt!826050 e!1411342)))))

(declare-fun d!660350 () Bool)

(declare-fun e!1411340 () Bool)

(assert (=> d!660350 e!1411340))

(declare-fun res!949603 () Bool)

(assert (=> d!660350 (=> (not res!949603) (not e!1411340))))

(declare-fun lt!826185 () tuple2!25146)

(assert (=> d!660350 (= res!949603 (isBalanced!2603 (_1!14943 lt!826185)))))

(assert (=> d!660350 (= lt!826185 e!1411351)))

(declare-fun c!353130 () Bool)

(assert (=> d!660350 (= c!353130 ((_ is Empty!8445) (c!353006 input!5506)))))

(assert (=> d!660350 (isBalanced!2603 (c!353006 input!5506))))

(assert (=> d!660350 (= (splitAt!69 (c!353006 input!5506) lt!826050) lt!826185)))

(declare-fun b!2209516 () Bool)

(assert (=> b!2209516 (= e!1411351 e!1411350)))

(assert (=> b!2209516 (= c!353131 ((_ is Leaf!12367) (c!353006 input!5506)))))

(declare-fun b!2209525 () Bool)

(assert (=> b!2209525 (= lt!826176 call!132369)))

(assert (=> b!2209525 (= e!1411346 (tuple2!25147 (_1!14943 lt!826176) call!132370))))

(declare-fun b!2209526 () Bool)

(declare-fun res!949602 () Bool)

(assert (=> b!2209526 (=> (not res!949602) (not e!1411340))))

(assert (=> b!2209526 (= res!949602 (isBalanced!2603 (_2!14943 lt!826185)))))

(declare-fun bm!132365 () Bool)

(assert (=> bm!132365 (= call!132368 (size!20142 (ite c!353131 lt!826182 lt!826181)))))

(declare-fun b!2209527 () Bool)

(assert (=> b!2209527 (= e!1411340 (= (tuple2!25149 (list!10008 (_1!14943 lt!826185)) (list!10008 (_2!14943 lt!826185))) (splitAtIndex!36 (list!10008 (c!353006 input!5506)) lt!826050)))))

(assert (= (and d!660350 c!353130) b!2209507))

(assert (= (and d!660350 (not c!353130)) b!2209516))

(assert (= (and b!2209516 c!353131) b!2209504))

(assert (= (and b!2209516 (not c!353131)) b!2209518))

(assert (= (and b!2209504 c!353124) b!2209512))

(assert (= (and b!2209504 (not c!353124)) b!2209509))

(assert (= (and b!2209509 c!353128) b!2209508))

(assert (= (and b!2209509 (not c!353128)) b!2209511))

(assert (= (and b!2209518 c!353129) b!2209521))

(assert (= (and b!2209518 (not c!353129)) b!2209517))

(assert (= (and b!2209517 c!353126) b!2209506))

(assert (= (and b!2209517 (not c!353126)) b!2209523))

(assert (= (or b!2209506 b!2209523) bm!132362))

(assert (= (or b!2209506 b!2209523) bm!132361))

(assert (= (and bm!132361 c!353122) b!2209510))

(assert (= (and bm!132361 (not c!353122)) b!2209505))

(assert (= (and b!2209518 c!353132) b!2209522))

(assert (= (and b!2209518 (not c!353132)) b!2209519))

(assert (= (and b!2209519 c!353127) b!2209525))

(assert (= (and b!2209519 (not c!353127)) b!2209513))

(assert (= (or b!2209525 b!2209513) bm!132363))

(assert (= (or b!2209525 b!2209513) bm!132360))

(assert (= (and bm!132360 c!353123) b!2209514))

(assert (= (and bm!132360 (not c!353123)) b!2209520))

(assert (= (or b!2209511 b!2209505 b!2209517 b!2209518) bm!132365))

(assert (= (or b!2209511 bm!132361) bm!132364))

(assert (= (and bm!132364 c!353125) b!2209524))

(assert (= (and bm!132364 (not c!353125)) b!2209515))

(assert (= (and d!660350 res!949603) b!2209526))

(assert (= (and b!2209526 res!949602) b!2209527))

(declare-fun m!2651143 () Bool)

(assert (=> b!2209511 m!2651143))

(declare-fun m!2651145 () Bool)

(assert (=> b!2209511 m!2651145))

(declare-fun m!2651147 () Bool)

(assert (=> b!2209511 m!2651147))

(declare-fun m!2651149 () Bool)

(assert (=> b!2209511 m!2651149))

(declare-fun m!2651151 () Bool)

(assert (=> b!2209511 m!2651151))

(declare-fun m!2651153 () Bool)

(assert (=> b!2209511 m!2651153))

(declare-fun m!2651155 () Bool)

(assert (=> bm!132364 m!2651155))

(declare-fun m!2651157 () Bool)

(assert (=> b!2209519 m!2651157))

(assert (=> b!2209524 m!2651151))

(declare-fun m!2651159 () Bool)

(assert (=> bm!132360 m!2651159))

(declare-fun m!2651161 () Bool)

(assert (=> b!2209518 m!2651161))

(declare-fun m!2651163 () Bool)

(assert (=> b!2209518 m!2651163))

(declare-fun m!2651165 () Bool)

(assert (=> b!2209518 m!2651165))

(assert (=> b!2209518 m!2651165))

(declare-fun m!2651167 () Bool)

(assert (=> b!2209518 m!2651167))

(assert (=> b!2209518 m!2651157))

(declare-fun m!2651169 () Bool)

(assert (=> b!2209518 m!2651169))

(declare-fun m!2651171 () Bool)

(assert (=> bm!132365 m!2651171))

(declare-fun m!2651173 () Bool)

(assert (=> bm!132363 m!2651173))

(declare-fun m!2651175 () Bool)

(assert (=> b!2209526 m!2651175))

(declare-fun m!2651177 () Bool)

(assert (=> bm!132362 m!2651177))

(assert (=> b!2209520 m!2651157))

(declare-fun m!2651179 () Bool)

(assert (=> b!2209527 m!2651179))

(declare-fun m!2651181 () Bool)

(assert (=> b!2209527 m!2651181))

(assert (=> b!2209527 m!2650895))

(assert (=> b!2209527 m!2650895))

(declare-fun m!2651183 () Bool)

(assert (=> b!2209527 m!2651183))

(declare-fun m!2651185 () Bool)

(assert (=> d!660350 m!2651185))

(assert (=> d!660350 m!2650897))

(assert (=> d!660280 d!660350))

(declare-fun b!2209532 () Bool)

(declare-fun res!949608 () Bool)

(declare-fun e!1411354 () Bool)

(assert (=> b!2209532 (=> (not res!949608) (not e!1411354))))

(assert (=> b!2209532 (= res!949608 (not (isEmpty!14779 (left!19866 (c!353006 input!5506)))))))

(declare-fun b!2209533 () Bool)

(declare-fun res!949611 () Bool)

(assert (=> b!2209533 (=> (not res!949611) (not e!1411354))))

(assert (=> b!2209533 (= res!949611 (<= (- (height!1269 (left!19866 (c!353006 input!5506))) (height!1269 (right!20196 (c!353006 input!5506)))) 1))))

(declare-fun b!2209534 () Bool)

(declare-fun res!949609 () Bool)

(assert (=> b!2209534 (=> (not res!949609) (not e!1411354))))

(assert (=> b!2209534 (= res!949609 (isBalanced!2603 (left!19866 (c!353006 input!5506))))))

(declare-fun b!2209535 () Bool)

(declare-fun res!949612 () Bool)

(assert (=> b!2209535 (=> (not res!949612) (not e!1411354))))

(assert (=> b!2209535 (= res!949612 (isBalanced!2603 (right!20196 (c!353006 input!5506))))))

(declare-fun d!660366 () Bool)

(declare-fun res!949613 () Bool)

(declare-fun e!1411355 () Bool)

(assert (=> d!660366 (=> res!949613 e!1411355)))

(assert (=> d!660366 (= res!949613 (not ((_ is Node!8445) (c!353006 input!5506))))))

(assert (=> d!660366 (= (isBalanced!2603 (c!353006 input!5506)) e!1411355)))

(declare-fun b!2209536 () Bool)

(assert (=> b!2209536 (= e!1411355 e!1411354)))

(declare-fun res!949610 () Bool)

(assert (=> b!2209536 (=> (not res!949610) (not e!1411354))))

(assert (=> b!2209536 (= res!949610 (<= (- 1) (- (height!1269 (left!19866 (c!353006 input!5506))) (height!1269 (right!20196 (c!353006 input!5506))))))))

(declare-fun b!2209537 () Bool)

(assert (=> b!2209537 (= e!1411354 (not (isEmpty!14779 (right!20196 (c!353006 input!5506)))))))

(assert (= (and d!660366 (not res!949613)) b!2209536))

(assert (= (and b!2209536 res!949610) b!2209533))

(assert (= (and b!2209533 res!949611) b!2209534))

(assert (= (and b!2209534 res!949609) b!2209535))

(assert (= (and b!2209535 res!949612) b!2209532))

(assert (= (and b!2209532 res!949608) b!2209537))

(declare-fun m!2651187 () Bool)

(assert (=> b!2209533 m!2651187))

(declare-fun m!2651189 () Bool)

(assert (=> b!2209533 m!2651189))

(declare-fun m!2651191 () Bool)

(assert (=> b!2209534 m!2651191))

(declare-fun m!2651193 () Bool)

(assert (=> b!2209532 m!2651193))

(declare-fun m!2651195 () Bool)

(assert (=> b!2209535 m!2651195))

(assert (=> b!2209536 m!2651187))

(assert (=> b!2209536 m!2651189))

(declare-fun m!2651197 () Bool)

(assert (=> b!2209537 m!2651197))

(assert (=> d!660280 d!660366))

(declare-fun bs!451313 () Bool)

(declare-fun d!660368 () Bool)

(assert (= bs!451313 (and d!660368 d!660258)))

(declare-fun lambda!83475 () Int)

(assert (=> bs!451313 (not (= lambda!83475 lambda!83457))))

(declare-fun bs!451314 () Bool)

(declare-fun b!2209572 () Bool)

(assert (= bs!451314 (and b!2209572 d!660258)))

(declare-fun lambda!83476 () Int)

(assert (=> bs!451314 (not (= lambda!83476 lambda!83457))))

(declare-fun bs!451315 () Bool)

(assert (= bs!451315 (and b!2209572 d!660368)))

(assert (=> bs!451315 (not (= lambda!83476 lambda!83475))))

(declare-fun bs!451316 () Bool)

(declare-fun b!2209573 () Bool)

(assert (= bs!451316 (and b!2209573 d!660258)))

(declare-fun lambda!83477 () Int)

(assert (=> bs!451316 (not (= lambda!83477 lambda!83457))))

(declare-fun bs!451317 () Bool)

(assert (= bs!451317 (and b!2209573 d!660368)))

(assert (=> bs!451317 (not (= lambda!83477 lambda!83475))))

(declare-fun bs!451318 () Bool)

(assert (= bs!451318 (and b!2209573 b!2209572)))

(assert (=> bs!451318 (= lambda!83477 lambda!83476)))

(declare-fun c!353154 () Bool)

(declare-datatypes ((List!25932 0))(
  ( (Nil!25848) (Cons!25848 (h!31249 Context!3758) (t!198606 List!25932)) )
))
(declare-fun lt!826221 () List!25932)

(declare-fun bm!132376 () Bool)

(declare-fun call!132382 () Bool)

(declare-fun lt!826222 () List!25932)

(declare-fun exists!880 (List!25932 Int) Bool)

(assert (=> bm!132376 (= call!132382 (exists!880 (ite c!353154 lt!826221 lt!826222) (ite c!353154 lambda!83476 lambda!83477)))))

(declare-fun lt!826219 () Bool)

(declare-datatypes ((Option!5041 0))(
  ( (None!5040) (Some!5040 (v!29439 List!25929)) )
))
(declare-fun isEmpty!14780 (Option!5041) Bool)

(declare-fun getLanguageWitness!165 ((InoxSet Context!3758)) Option!5041)

(assert (=> d!660368 (= lt!826219 (isEmpty!14780 (getLanguageWitness!165 z!3830)))))

(declare-fun forall!5291 ((InoxSet Context!3758) Int) Bool)

(assert (=> d!660368 (= lt!826219 (forall!5291 z!3830 lambda!83475))))

(declare-fun lt!826223 () Unit!38903)

(declare-fun e!1411376 () Unit!38903)

(assert (=> d!660368 (= lt!826223 e!1411376)))

(assert (=> d!660368 (= c!353154 (not (forall!5291 z!3830 lambda!83475)))))

(assert (=> d!660368 (= (lostCauseZipper!395 z!3830) lt!826219)))

(declare-fun bm!132377 () Bool)

(declare-fun call!132381 () List!25932)

(declare-fun toList!1282 ((InoxSet Context!3758)) List!25932)

(assert (=> bm!132377 (= call!132381 (toList!1282 z!3830))))

(declare-fun Unit!38905 () Unit!38903)

(assert (=> b!2209573 (= e!1411376 Unit!38905)))

(assert (=> b!2209573 (= lt!826222 call!132381)))

(declare-fun lt!826225 () Unit!38903)

(declare-fun lemmaForallThenNotExists!66 (List!25932 Int) Unit!38903)

(assert (=> b!2209573 (= lt!826225 (lemmaForallThenNotExists!66 lt!826222 lambda!83475))))

(assert (=> b!2209573 (not call!132382)))

(declare-fun lt!826218 () Unit!38903)

(assert (=> b!2209573 (= lt!826218 lt!826225)))

(declare-fun Unit!38906 () Unit!38903)

(assert (=> b!2209572 (= e!1411376 Unit!38906)))

(assert (=> b!2209572 (= lt!826221 call!132381)))

(declare-fun lt!826220 () Unit!38903)

(declare-fun lemmaNotForallThenExists!66 (List!25932 Int) Unit!38903)

(assert (=> b!2209572 (= lt!826220 (lemmaNotForallThenExists!66 lt!826221 lambda!83475))))

(assert (=> b!2209572 call!132382))

(declare-fun lt!826224 () Unit!38903)

(assert (=> b!2209572 (= lt!826224 lt!826220)))

(assert (= (and d!660368 c!353154) b!2209572))

(assert (= (and d!660368 (not c!353154)) b!2209573))

(assert (= (or b!2209572 b!2209573) bm!132376))

(assert (= (or b!2209572 b!2209573) bm!132377))

(declare-fun m!2651253 () Bool)

(assert (=> b!2209572 m!2651253))

(declare-fun m!2651255 () Bool)

(assert (=> bm!132376 m!2651255))

(declare-fun m!2651257 () Bool)

(assert (=> bm!132377 m!2651257))

(declare-fun m!2651259 () Bool)

(assert (=> d!660368 m!2651259))

(assert (=> d!660368 m!2651259))

(declare-fun m!2651261 () Bool)

(assert (=> d!660368 m!2651261))

(declare-fun m!2651263 () Bool)

(assert (=> d!660368 m!2651263))

(assert (=> d!660368 m!2651263))

(declare-fun m!2651265 () Bool)

(assert (=> b!2209573 m!2651265))

(assert (=> b!2209181 d!660368))

(declare-fun b!2209616 () Bool)

(declare-fun e!1411399 () List!25929)

(assert (=> b!2209616 (= e!1411399 (++!6437 (list!10008 (left!19866 (c!353006 (_2!14940 lt!826052)))) (list!10008 (right!20196 (c!353006 (_2!14940 lt!826052))))))))

(declare-fun d!660378 () Bool)

(declare-fun c!353173 () Bool)

(assert (=> d!660378 (= c!353173 ((_ is Empty!8445) (c!353006 (_2!14940 lt!826052))))))

(declare-fun e!1411398 () List!25929)

(assert (=> d!660378 (= (list!10008 (c!353006 (_2!14940 lt!826052))) e!1411398)))

(declare-fun b!2209615 () Bool)

(assert (=> b!2209615 (= e!1411399 (list!10009 (xs!11387 (c!353006 (_2!14940 lt!826052)))))))

(declare-fun b!2209613 () Bool)

(assert (=> b!2209613 (= e!1411398 Nil!25845)))

(declare-fun b!2209614 () Bool)

(assert (=> b!2209614 (= e!1411398 e!1411399)))

(declare-fun c!353174 () Bool)

(assert (=> b!2209614 (= c!353174 ((_ is Leaf!12367) (c!353006 (_2!14940 lt!826052))))))

(assert (= (and d!660378 c!353173) b!2209613))

(assert (= (and d!660378 (not c!353173)) b!2209614))

(assert (= (and b!2209614 c!353174) b!2209615))

(assert (= (and b!2209614 (not c!353174)) b!2209616))

(declare-fun m!2651281 () Bool)

(assert (=> b!2209616 m!2651281))

(declare-fun m!2651283 () Bool)

(assert (=> b!2209616 m!2651283))

(assert (=> b!2209616 m!2651281))

(assert (=> b!2209616 m!2651283))

(declare-fun m!2651285 () Bool)

(assert (=> b!2209616 m!2651285))

(declare-fun m!2651287 () Bool)

(assert (=> b!2209615 m!2651287))

(assert (=> d!660278 d!660378))

(assert (=> d!660272 d!660366))

(declare-fun b!2209617 () Bool)

(declare-fun res!949625 () Bool)

(declare-fun e!1411400 () Bool)

(assert (=> b!2209617 (=> (not res!949625) (not e!1411400))))

(assert (=> b!2209617 (= res!949625 (not (isEmpty!14779 (left!19866 (c!353006 (_2!14940 lt!826095))))))))

(declare-fun b!2209618 () Bool)

(declare-fun res!949628 () Bool)

(assert (=> b!2209618 (=> (not res!949628) (not e!1411400))))

(assert (=> b!2209618 (= res!949628 (<= (- (height!1269 (left!19866 (c!353006 (_2!14940 lt!826095)))) (height!1269 (right!20196 (c!353006 (_2!14940 lt!826095))))) 1))))

(declare-fun b!2209619 () Bool)

(declare-fun res!949626 () Bool)

(assert (=> b!2209619 (=> (not res!949626) (not e!1411400))))

(assert (=> b!2209619 (= res!949626 (isBalanced!2603 (left!19866 (c!353006 (_2!14940 lt!826095)))))))

(declare-fun b!2209620 () Bool)

(declare-fun res!949629 () Bool)

(assert (=> b!2209620 (=> (not res!949629) (not e!1411400))))

(assert (=> b!2209620 (= res!949629 (isBalanced!2603 (right!20196 (c!353006 (_2!14940 lt!826095)))))))

(declare-fun d!660384 () Bool)

(declare-fun res!949630 () Bool)

(declare-fun e!1411401 () Bool)

(assert (=> d!660384 (=> res!949630 e!1411401)))

(assert (=> d!660384 (= res!949630 (not ((_ is Node!8445) (c!353006 (_2!14940 lt!826095)))))))

(assert (=> d!660384 (= (isBalanced!2603 (c!353006 (_2!14940 lt!826095))) e!1411401)))

(declare-fun b!2209621 () Bool)

(assert (=> b!2209621 (= e!1411401 e!1411400)))

(declare-fun res!949627 () Bool)

(assert (=> b!2209621 (=> (not res!949627) (not e!1411400))))

(assert (=> b!2209621 (= res!949627 (<= (- 1) (- (height!1269 (left!19866 (c!353006 (_2!14940 lt!826095)))) (height!1269 (right!20196 (c!353006 (_2!14940 lt!826095)))))))))

(declare-fun b!2209622 () Bool)

(assert (=> b!2209622 (= e!1411400 (not (isEmpty!14779 (right!20196 (c!353006 (_2!14940 lt!826095))))))))

(assert (= (and d!660384 (not res!949630)) b!2209621))

(assert (= (and b!2209621 res!949627) b!2209618))

(assert (= (and b!2209618 res!949628) b!2209619))

(assert (= (and b!2209619 res!949626) b!2209620))

(assert (= (and b!2209620 res!949629) b!2209617))

(assert (= (and b!2209617 res!949625) b!2209622))

(declare-fun m!2651289 () Bool)

(assert (=> b!2209618 m!2651289))

(declare-fun m!2651291 () Bool)

(assert (=> b!2209618 m!2651291))

(declare-fun m!2651293 () Bool)

(assert (=> b!2209619 m!2651293))

(declare-fun m!2651295 () Bool)

(assert (=> b!2209617 m!2651295))

(declare-fun m!2651297 () Bool)

(assert (=> b!2209620 m!2651297))

(assert (=> b!2209621 m!2651289))

(assert (=> b!2209621 m!2651291))

(declare-fun m!2651299 () Bool)

(assert (=> b!2209622 m!2651299))

(assert (=> b!2209203 d!660384))

(assert (=> b!2209081 d!660220))

(declare-fun d!660386 () Bool)

(declare-fun res!949631 () Bool)

(declare-fun e!1411402 () Bool)

(assert (=> d!660386 (=> (not res!949631) (not e!1411402))))

(assert (=> d!660386 (= res!949631 (<= (size!20142 (list!10009 (xs!11387 (c!353006 input!5506)))) 512))))

(assert (=> d!660386 (= (inv!34948 (c!353006 input!5506)) e!1411402)))

(declare-fun b!2209623 () Bool)

(declare-fun res!949632 () Bool)

(assert (=> b!2209623 (=> (not res!949632) (not e!1411402))))

(assert (=> b!2209623 (= res!949632 (= (csize!17121 (c!353006 input!5506)) (size!20142 (list!10009 (xs!11387 (c!353006 input!5506))))))))

(declare-fun b!2209624 () Bool)

(assert (=> b!2209624 (= e!1411402 (and (> (csize!17121 (c!353006 input!5506)) 0) (<= (csize!17121 (c!353006 input!5506)) 512)))))

(assert (= (and d!660386 res!949631) b!2209623))

(assert (= (and b!2209623 res!949632) b!2209624))

(assert (=> d!660386 m!2651151))

(assert (=> d!660386 m!2651151))

(declare-fun m!2651301 () Bool)

(assert (=> d!660386 m!2651301))

(assert (=> b!2209623 m!2651151))

(assert (=> b!2209623 m!2651151))

(assert (=> b!2209623 m!2651301))

(assert (=> b!2209207 d!660386))

(declare-fun d!660388 () Bool)

(assert (=> d!660388 (= (list!10006 (_1!14940 lt!826095)) (list!10008 (c!353006 (_1!14940 lt!826095))))))

(declare-fun bs!451319 () Bool)

(assert (= bs!451319 d!660388))

(declare-fun m!2651303 () Bool)

(assert (=> bs!451319 m!2651303))

(assert (=> b!2209204 d!660388))

(declare-fun d!660390 () Bool)

(assert (=> d!660390 (= (list!10006 (_2!14940 lt!826095)) (list!10008 (c!353006 (_2!14940 lt!826095))))))

(declare-fun bs!451320 () Bool)

(assert (= bs!451320 d!660390))

(declare-fun m!2651305 () Bool)

(assert (=> bs!451320 m!2651305))

(assert (=> b!2209204 d!660390))

(declare-fun b!2209641 () Bool)

(declare-fun e!1411412 () tuple2!25148)

(assert (=> b!2209641 (= e!1411412 (tuple2!25149 Nil!25845 Nil!25845))))

(declare-fun d!660392 () Bool)

(declare-fun e!1411411 () Bool)

(assert (=> d!660392 e!1411411))

(declare-fun res!949638 () Bool)

(assert (=> d!660392 (=> (not res!949638) (not e!1411411))))

(declare-fun lt!826243 () tuple2!25148)

(assert (=> d!660392 (= res!949638 (= (++!6437 (_1!14944 lt!826243) (_2!14944 lt!826243)) (list!10006 input!5506)))))

(assert (=> d!660392 (= lt!826243 e!1411412)))

(declare-fun c!353186 () Bool)

(assert (=> d!660392 (= c!353186 ((_ is Nil!25845) (list!10006 input!5506)))))

(assert (=> d!660392 (= (splitAtIndex!36 (list!10006 input!5506) lt!826050) lt!826243)))

(declare-fun b!2209642 () Bool)

(declare-fun res!949637 () Bool)

(assert (=> b!2209642 (=> (not res!949637) (not e!1411411))))

(declare-fun take!471 (List!25929 Int) List!25929)

(assert (=> b!2209642 (= res!949637 (= (_1!14944 lt!826243) (take!471 (list!10006 input!5506) lt!826050)))))

(declare-fun b!2209643 () Bool)

(declare-fun lt!826244 () tuple2!25148)

(assert (=> b!2209643 (= lt!826244 (splitAtIndex!36 (t!198595 (list!10006 input!5506)) (- lt!826050 1)))))

(declare-fun e!1411413 () tuple2!25148)

(assert (=> b!2209643 (= e!1411413 (tuple2!25149 (Cons!25845 (h!31246 (list!10006 input!5506)) (_1!14944 lt!826244)) (_2!14944 lt!826244)))))

(declare-fun b!2209644 () Bool)

(assert (=> b!2209644 (= e!1411412 e!1411413)))

(declare-fun c!353185 () Bool)

(assert (=> b!2209644 (= c!353185 (<= lt!826050 0))))

(declare-fun b!2209645 () Bool)

(assert (=> b!2209645 (= e!1411411 (= (_2!14944 lt!826243) (drop!1489 (list!10006 input!5506) lt!826050)))))

(declare-fun b!2209646 () Bool)

(assert (=> b!2209646 (= e!1411413 (tuple2!25149 Nil!25845 (list!10006 input!5506)))))

(assert (= (and d!660392 c!353186) b!2209641))

(assert (= (and d!660392 (not c!353186)) b!2209644))

(assert (= (and b!2209644 c!353185) b!2209646))

(assert (= (and b!2209644 (not c!353185)) b!2209643))

(assert (= (and d!660392 res!949638) b!2209642))

(assert (= (and b!2209642 res!949637) b!2209645))

(declare-fun m!2651307 () Bool)

(assert (=> d!660392 m!2651307))

(assert (=> b!2209642 m!2650759))

(declare-fun m!2651309 () Bool)

(assert (=> b!2209642 m!2651309))

(declare-fun m!2651311 () Bool)

(assert (=> b!2209643 m!2651311))

(assert (=> b!2209645 m!2650759))

(declare-fun m!2651313 () Bool)

(assert (=> b!2209645 m!2651313))

(assert (=> b!2209204 d!660392))

(assert (=> b!2209204 d!660270))

(declare-fun d!660394 () Bool)

(assert (=> d!660394 (= (inv!34949 (xs!11387 (c!353006 input!5506))) (<= (size!20142 (innerList!8505 (xs!11387 (c!353006 input!5506)))) 2147483647))))

(declare-fun bs!451321 () Bool)

(assert (= bs!451321 d!660394))

(declare-fun m!2651315 () Bool)

(assert (=> bs!451321 m!2651315))

(assert (=> b!2209230 d!660394))

(declare-fun d!660396 () Bool)

(declare-fun res!949639 () Bool)

(declare-fun e!1411418 () Bool)

(assert (=> d!660396 (=> (not res!949639) (not e!1411418))))

(assert (=> d!660396 (= res!949639 (= (csize!17120 (c!353006 input!5506)) (+ (size!20143 (left!19866 (c!353006 input!5506))) (size!20143 (right!20196 (c!353006 input!5506))))))))

(assert (=> d!660396 (= (inv!34947 (c!353006 input!5506)) e!1411418)))

(declare-fun b!2209647 () Bool)

(declare-fun res!949640 () Bool)

(assert (=> b!2209647 (=> (not res!949640) (not e!1411418))))

(assert (=> b!2209647 (= res!949640 (and (not (= (left!19866 (c!353006 input!5506)) Empty!8445)) (not (= (right!20196 (c!353006 input!5506)) Empty!8445))))))

(declare-fun b!2209648 () Bool)

(declare-fun res!949641 () Bool)

(assert (=> b!2209648 (=> (not res!949641) (not e!1411418))))

(assert (=> b!2209648 (= res!949641 (= (cheight!8656 (c!353006 input!5506)) (+ (max!0 (height!1269 (left!19866 (c!353006 input!5506))) (height!1269 (right!20196 (c!353006 input!5506)))) 1)))))

(declare-fun b!2209649 () Bool)

(assert (=> b!2209649 (= e!1411418 (<= 0 (cheight!8656 (c!353006 input!5506))))))

(assert (= (and d!660396 res!949639) b!2209647))

(assert (= (and b!2209647 res!949640) b!2209648))

(assert (= (and b!2209648 res!949641) b!2209649))

(assert (=> d!660396 m!2651157))

(declare-fun m!2651317 () Bool)

(assert (=> d!660396 m!2651317))

(assert (=> b!2209648 m!2651187))

(assert (=> b!2209648 m!2651189))

(assert (=> b!2209648 m!2651187))

(assert (=> b!2209648 m!2651189))

(declare-fun m!2651319 () Bool)

(assert (=> b!2209648 m!2651319))

(assert (=> b!2209205 d!660396))

(declare-fun b!2209650 () Bool)

(declare-fun res!949642 () Bool)

(declare-fun e!1411419 () Bool)

(assert (=> b!2209650 (=> (not res!949642) (not e!1411419))))

(assert (=> b!2209650 (= res!949642 (not (isEmpty!14779 (left!19866 (c!353006 totalInput!846)))))))

(declare-fun b!2209651 () Bool)

(declare-fun res!949645 () Bool)

(assert (=> b!2209651 (=> (not res!949645) (not e!1411419))))

(assert (=> b!2209651 (= res!949645 (<= (- (height!1269 (left!19866 (c!353006 totalInput!846))) (height!1269 (right!20196 (c!353006 totalInput!846)))) 1))))

(declare-fun b!2209652 () Bool)

(declare-fun res!949643 () Bool)

(assert (=> b!2209652 (=> (not res!949643) (not e!1411419))))

(assert (=> b!2209652 (= res!949643 (isBalanced!2603 (left!19866 (c!353006 totalInput!846))))))

(declare-fun b!2209653 () Bool)

(declare-fun res!949646 () Bool)

(assert (=> b!2209653 (=> (not res!949646) (not e!1411419))))

(assert (=> b!2209653 (= res!949646 (isBalanced!2603 (right!20196 (c!353006 totalInput!846))))))

(declare-fun d!660398 () Bool)

(declare-fun res!949647 () Bool)

(declare-fun e!1411420 () Bool)

(assert (=> d!660398 (=> res!949647 e!1411420)))

(assert (=> d!660398 (= res!949647 (not ((_ is Node!8445) (c!353006 totalInput!846))))))

(assert (=> d!660398 (= (isBalanced!2603 (c!353006 totalInput!846)) e!1411420)))

(declare-fun b!2209654 () Bool)

(assert (=> b!2209654 (= e!1411420 e!1411419)))

(declare-fun res!949644 () Bool)

(assert (=> b!2209654 (=> (not res!949644) (not e!1411419))))

(assert (=> b!2209654 (= res!949644 (<= (- 1) (- (height!1269 (left!19866 (c!353006 totalInput!846))) (height!1269 (right!20196 (c!353006 totalInput!846))))))))

(declare-fun b!2209655 () Bool)

(assert (=> b!2209655 (= e!1411419 (not (isEmpty!14779 (right!20196 (c!353006 totalInput!846)))))))

(assert (= (and d!660398 (not res!949647)) b!2209654))

(assert (= (and b!2209654 res!949644) b!2209651))

(assert (= (and b!2209651 res!949645) b!2209652))

(assert (= (and b!2209652 res!949643) b!2209653))

(assert (= (and b!2209653 res!949646) b!2209650))

(assert (= (and b!2209650 res!949642) b!2209655))

(assert (=> b!2209651 m!2651041))

(assert (=> b!2209651 m!2651043))

(declare-fun m!2651321 () Bool)

(assert (=> b!2209652 m!2651321))

(declare-fun m!2651323 () Bool)

(assert (=> b!2209650 m!2651323))

(declare-fun m!2651325 () Bool)

(assert (=> b!2209653 m!2651325))

(assert (=> b!2209654 m!2651041))

(assert (=> b!2209654 m!2651043))

(declare-fun m!2651327 () Bool)

(assert (=> b!2209655 m!2651327))

(assert (=> d!660266 d!660398))

(declare-fun d!660400 () Bool)

(declare-fun c!353193 () Bool)

(assert (=> d!660400 (= c!353193 ((_ is Nil!25845) lt!826090))))

(declare-fun e!1411423 () (InoxSet C!12764))

(assert (=> d!660400 (= (content!3508 lt!826090) e!1411423)))

(declare-fun b!2209660 () Bool)

(assert (=> b!2209660 (= e!1411423 ((as const (Array C!12764 Bool)) false))))

(declare-fun b!2209661 () Bool)

(assert (=> b!2209661 (= e!1411423 ((_ map or) (store ((as const (Array C!12764 Bool)) false) (h!31246 lt!826090) true) (content!3508 (t!198595 lt!826090))))))

(assert (= (and d!660400 c!353193) b!2209660))

(assert (= (and d!660400 (not c!353193)) b!2209661))

(declare-fun m!2651329 () Bool)

(assert (=> b!2209661 m!2651329))

(declare-fun m!2651331 () Bool)

(assert (=> b!2209661 m!2651331))

(assert (=> d!660274 d!660400))

(declare-fun d!660402 () Bool)

(declare-fun c!353194 () Bool)

(assert (=> d!660402 (= c!353194 ((_ is Nil!25845) (list!10006 (_1!14940 lt!826052))))))

(declare-fun e!1411424 () (InoxSet C!12764))

(assert (=> d!660402 (= (content!3508 (list!10006 (_1!14940 lt!826052))) e!1411424)))

(declare-fun b!2209662 () Bool)

(assert (=> b!2209662 (= e!1411424 ((as const (Array C!12764 Bool)) false))))

(declare-fun b!2209663 () Bool)

(assert (=> b!2209663 (= e!1411424 ((_ map or) (store ((as const (Array C!12764 Bool)) false) (h!31246 (list!10006 (_1!14940 lt!826052))) true) (content!3508 (t!198595 (list!10006 (_1!14940 lt!826052))))))))

(assert (= (and d!660402 c!353194) b!2209662))

(assert (= (and d!660402 (not c!353194)) b!2209663))

(declare-fun m!2651333 () Bool)

(assert (=> b!2209663 m!2651333))

(declare-fun m!2651335 () Bool)

(assert (=> b!2209663 m!2651335))

(assert (=> d!660274 d!660402))

(declare-fun d!660404 () Bool)

(declare-fun c!353195 () Bool)

(assert (=> d!660404 (= c!353195 ((_ is Nil!25845) (list!10006 (_2!14940 lt!826052))))))

(declare-fun e!1411425 () (InoxSet C!12764))

(assert (=> d!660404 (= (content!3508 (list!10006 (_2!14940 lt!826052))) e!1411425)))

(declare-fun b!2209664 () Bool)

(assert (=> b!2209664 (= e!1411425 ((as const (Array C!12764 Bool)) false))))

(declare-fun b!2209665 () Bool)

(assert (=> b!2209665 (= e!1411425 ((_ map or) (store ((as const (Array C!12764 Bool)) false) (h!31246 (list!10006 (_2!14940 lt!826052))) true) (content!3508 (t!198595 (list!10006 (_2!14940 lt!826052))))))))

(assert (= (and d!660404 c!353195) b!2209664))

(assert (= (and d!660404 (not c!353195)) b!2209665))

(declare-fun m!2651337 () Bool)

(assert (=> b!2209665 m!2651337))

(declare-fun m!2651339 () Bool)

(assert (=> b!2209665 m!2651339))

(assert (=> d!660274 d!660404))

(declare-fun d!660406 () Bool)

(declare-fun lt!826261 () Int)

(assert (=> d!660406 (>= lt!826261 0)))

(declare-fun e!1411429 () Int)

(assert (=> d!660406 (= lt!826261 e!1411429)))

(declare-fun c!353199 () Bool)

(assert (=> d!660406 (= c!353199 ((_ is Nil!25845) (list!10006 input!5506)))))

(assert (=> d!660406 (= (size!20142 (list!10006 input!5506)) lt!826261)))

(declare-fun b!2209672 () Bool)

(assert (=> b!2209672 (= e!1411429 0)))

(declare-fun b!2209673 () Bool)

(assert (=> b!2209673 (= e!1411429 (+ 1 (size!20142 (t!198595 (list!10006 input!5506)))))))

(assert (= (and d!660406 c!353199) b!2209672))

(assert (= (and d!660406 (not c!353199)) b!2209673))

(declare-fun m!2651341 () Bool)

(assert (=> b!2209673 m!2651341))

(assert (=> d!660260 d!660406))

(assert (=> d!660260 d!660270))

(declare-fun d!660408 () Bool)

(declare-fun lt!826264 () Int)

(assert (=> d!660408 (= lt!826264 (size!20142 (list!10008 (c!353006 input!5506))))))

(assert (=> d!660408 (= lt!826264 (ite ((_ is Empty!8445) (c!353006 input!5506)) 0 (ite ((_ is Leaf!12367) (c!353006 input!5506)) (csize!17121 (c!353006 input!5506)) (csize!17120 (c!353006 input!5506)))))))

(assert (=> d!660408 (= (size!20143 (c!353006 input!5506)) lt!826264)))

(declare-fun bs!451331 () Bool)

(assert (= bs!451331 d!660408))

(assert (=> bs!451331 m!2650895))

(assert (=> bs!451331 m!2650895))

(declare-fun m!2651363 () Bool)

(assert (=> bs!451331 m!2651363))

(assert (=> d!660260 d!660408))

(declare-fun b!2209687 () Bool)

(declare-fun e!1411436 () List!25929)

(assert (=> b!2209687 (= e!1411436 (++!6437 (list!10008 (left!19866 (c!353006 (_1!14940 lt!826052)))) (list!10008 (right!20196 (c!353006 (_1!14940 lt!826052))))))))

(declare-fun d!660414 () Bool)

(declare-fun c!353200 () Bool)

(assert (=> d!660414 (= c!353200 ((_ is Empty!8445) (c!353006 (_1!14940 lt!826052))))))

(declare-fun e!1411435 () List!25929)

(assert (=> d!660414 (= (list!10008 (c!353006 (_1!14940 lt!826052))) e!1411435)))

(declare-fun b!2209686 () Bool)

(assert (=> b!2209686 (= e!1411436 (list!10009 (xs!11387 (c!353006 (_1!14940 lt!826052)))))))

(declare-fun b!2209684 () Bool)

(assert (=> b!2209684 (= e!1411435 Nil!25845)))

(declare-fun b!2209685 () Bool)

(assert (=> b!2209685 (= e!1411435 e!1411436)))

(declare-fun c!353201 () Bool)

(assert (=> b!2209685 (= c!353201 ((_ is Leaf!12367) (c!353006 (_1!14940 lt!826052))))))

(assert (= (and d!660414 c!353200) b!2209684))

(assert (= (and d!660414 (not c!353200)) b!2209685))

(assert (= (and b!2209685 c!353201) b!2209686))

(assert (= (and b!2209685 (not c!353201)) b!2209687))

(declare-fun m!2651365 () Bool)

(assert (=> b!2209687 m!2651365))

(declare-fun m!2651367 () Bool)

(assert (=> b!2209687 m!2651367))

(assert (=> b!2209687 m!2651365))

(assert (=> b!2209687 m!2651367))

(declare-fun m!2651369 () Bool)

(assert (=> b!2209687 m!2651369))

(declare-fun m!2651371 () Bool)

(assert (=> b!2209686 m!2651371))

(assert (=> d!660276 d!660414))

(declare-fun b!2209736 () Bool)

(declare-fun e!1411465 () Int)

(assert (=> b!2209736 (= e!1411465 0)))

(declare-fun b!2209737 () Bool)

(declare-fun e!1411463 () Bool)

(declare-fun lt!826267 () List!25929)

(declare-fun e!1411462 () Int)

(assert (=> b!2209737 (= e!1411463 (= (size!20142 lt!826267) e!1411462))))

(declare-fun c!353212 () Bool)

(assert (=> b!2209737 (= c!353212 (<= (- (size!20142 (list!10006 totalInput!846)) (size!20142 lt!826049)) 0))))

(declare-fun bm!132389 () Bool)

(declare-fun call!132394 () Int)

(assert (=> bm!132389 (= call!132394 (size!20142 (list!10006 totalInput!846)))))

(declare-fun b!2209738 () Bool)

(declare-fun e!1411466 () List!25929)

(declare-fun e!1411464 () List!25929)

(assert (=> b!2209738 (= e!1411466 e!1411464)))

(declare-fun c!353211 () Bool)

(assert (=> b!2209738 (= c!353211 (<= (- (size!20142 (list!10006 totalInput!846)) (size!20142 lt!826049)) 0))))

(declare-fun b!2209739 () Bool)

(assert (=> b!2209739 (= e!1411465 (- call!132394 (- (size!20142 (list!10006 totalInput!846)) (size!20142 lt!826049))))))

(declare-fun b!2209741 () Bool)

(assert (=> b!2209741 (= e!1411464 (drop!1489 (t!198595 (list!10006 totalInput!846)) (- (- (size!20142 (list!10006 totalInput!846)) (size!20142 lt!826049)) 1)))))

(declare-fun b!2209742 () Bool)

(assert (=> b!2209742 (= e!1411462 call!132394)))

(declare-fun b!2209743 () Bool)

(assert (=> b!2209743 (= e!1411466 Nil!25845)))

(declare-fun b!2209744 () Bool)

(assert (=> b!2209744 (= e!1411462 e!1411465)))

(declare-fun c!353213 () Bool)

(assert (=> b!2209744 (= c!353213 (>= (- (size!20142 (list!10006 totalInput!846)) (size!20142 lt!826049)) call!132394))))

(declare-fun b!2209740 () Bool)

(assert (=> b!2209740 (= e!1411464 (list!10006 totalInput!846))))

(declare-fun d!660416 () Bool)

(assert (=> d!660416 e!1411463))

(declare-fun res!949655 () Bool)

(assert (=> d!660416 (=> (not res!949655) (not e!1411463))))

(assert (=> d!660416 (= res!949655 (= ((_ map implies) (content!3508 lt!826267) (content!3508 (list!10006 totalInput!846))) ((as const (InoxSet C!12764)) true)))))

(assert (=> d!660416 (= lt!826267 e!1411466)))

(declare-fun c!353210 () Bool)

(assert (=> d!660416 (= c!353210 ((_ is Nil!25845) (list!10006 totalInput!846)))))

(assert (=> d!660416 (= (drop!1489 (list!10006 totalInput!846) (- (size!20142 (list!10006 totalInput!846)) (size!20142 lt!826049))) lt!826267)))

(assert (= (and d!660416 c!353210) b!2209743))

(assert (= (and d!660416 (not c!353210)) b!2209738))

(assert (= (and b!2209738 c!353211) b!2209740))

(assert (= (and b!2209738 (not c!353211)) b!2209741))

(assert (= (and d!660416 res!949655) b!2209737))

(assert (= (and b!2209737 c!353212) b!2209742))

(assert (= (and b!2209737 (not c!353212)) b!2209744))

(assert (= (and b!2209744 c!353213) b!2209736))

(assert (= (and b!2209744 (not c!353213)) b!2209739))

(assert (= (or b!2209742 b!2209744 b!2209739) bm!132389))

(declare-fun m!2651399 () Bool)

(assert (=> b!2209737 m!2651399))

(assert (=> bm!132389 m!2650753))

(assert (=> bm!132389 m!2650883))

(declare-fun m!2651401 () Bool)

(assert (=> b!2209741 m!2651401))

(declare-fun m!2651403 () Bool)

(assert (=> d!660416 m!2651403))

(assert (=> d!660416 m!2650753))

(declare-fun m!2651405 () Bool)

(assert (=> d!660416 m!2651405))

(assert (=> d!660268 d!660416))

(declare-fun d!660420 () Bool)

(declare-fun lt!826268 () Int)

(assert (=> d!660420 (>= lt!826268 0)))

(declare-fun e!1411467 () Int)

(assert (=> d!660420 (= lt!826268 e!1411467)))

(declare-fun c!353214 () Bool)

(assert (=> d!660420 (= c!353214 ((_ is Nil!25845) (list!10006 totalInput!846)))))

(assert (=> d!660420 (= (size!20142 (list!10006 totalInput!846)) lt!826268)))

(declare-fun b!2209745 () Bool)

(assert (=> b!2209745 (= e!1411467 0)))

(declare-fun b!2209746 () Bool)

(assert (=> b!2209746 (= e!1411467 (+ 1 (size!20142 (t!198595 (list!10006 totalInput!846)))))))

(assert (= (and d!660420 c!353214) b!2209745))

(assert (= (and d!660420 (not c!353214)) b!2209746))

(declare-fun m!2651407 () Bool)

(assert (=> b!2209746 m!2651407))

(assert (=> d!660268 d!660420))

(declare-fun d!660422 () Bool)

(declare-fun lt!826269 () Int)

(assert (=> d!660422 (>= lt!826269 0)))

(declare-fun e!1411468 () Int)

(assert (=> d!660422 (= lt!826269 e!1411468)))

(declare-fun c!353215 () Bool)

(assert (=> d!660422 (= c!353215 ((_ is Nil!25845) lt!826049))))

(assert (=> d!660422 (= (size!20142 lt!826049) lt!826269)))

(declare-fun b!2209747 () Bool)

(assert (=> b!2209747 (= e!1411468 0)))

(declare-fun b!2209748 () Bool)

(assert (=> b!2209748 (= e!1411468 (+ 1 (size!20142 (t!198595 lt!826049))))))

(assert (= (and d!660422 c!353215) b!2209747))

(assert (= (and d!660422 (not c!353215)) b!2209748))

(declare-fun m!2651409 () Bool)

(assert (=> b!2209748 m!2651409))

(assert (=> d!660268 d!660422))

(declare-fun d!660424 () Bool)

(declare-fun lt!826272 () Bool)

(assert (=> d!660424 (= lt!826272 (exists!880 (toList!1282 z!3830) lambda!83457))))

(declare-fun choose!13044 ((InoxSet Context!3758) Int) Bool)

(assert (=> d!660424 (= lt!826272 (choose!13044 z!3830 lambda!83457))))

(assert (=> d!660424 (= (exists!878 z!3830 lambda!83457) lt!826272)))

(declare-fun bs!451333 () Bool)

(assert (= bs!451333 d!660424))

(assert (=> bs!451333 m!2651257))

(assert (=> bs!451333 m!2651257))

(declare-fun m!2651411 () Bool)

(assert (=> bs!451333 m!2651411))

(declare-fun m!2651413 () Bool)

(assert (=> bs!451333 m!2651413))

(assert (=> d!660258 d!660424))

(declare-fun d!660426 () Bool)

(declare-fun res!949660 () Bool)

(declare-fun e!1411473 () Bool)

(assert (=> d!660426 (=> res!949660 e!1411473)))

(assert (=> d!660426 (= res!949660 ((_ is Nil!25846) (exprs!2379 setElem!19348)))))

(assert (=> d!660426 (= (forall!5290 (exprs!2379 setElem!19348) lambda!83454) e!1411473)))

(declare-fun b!2209753 () Bool)

(declare-fun e!1411474 () Bool)

(assert (=> b!2209753 (= e!1411473 e!1411474)))

(declare-fun res!949661 () Bool)

(assert (=> b!2209753 (=> (not res!949661) (not e!1411474))))

(declare-fun dynLambda!11461 (Int Regex!6309) Bool)

(assert (=> b!2209753 (= res!949661 (dynLambda!11461 lambda!83454 (h!31247 (exprs!2379 setElem!19348))))))

(declare-fun b!2209754 () Bool)

(assert (=> b!2209754 (= e!1411474 (forall!5290 (t!198596 (exprs!2379 setElem!19348)) lambda!83454))))

(assert (= (and d!660426 (not res!949660)) b!2209753))

(assert (= (and b!2209753 res!949661) b!2209754))

(declare-fun b_lambda!71269 () Bool)

(assert (=> (not b_lambda!71269) (not b!2209753)))

(declare-fun m!2651415 () Bool)

(assert (=> b!2209753 m!2651415))

(declare-fun m!2651417 () Bool)

(assert (=> b!2209754 m!2651417))

(assert (=> d!660224 d!660426))

(assert (=> d!660262 d!660420))

(assert (=> d!660262 d!660264))

(declare-fun d!660428 () Bool)

(declare-fun lt!826273 () Int)

(assert (=> d!660428 (= lt!826273 (size!20142 (list!10008 (c!353006 totalInput!846))))))

(assert (=> d!660428 (= lt!826273 (ite ((_ is Empty!8445) (c!353006 totalInput!846)) 0 (ite ((_ is Leaf!12367) (c!353006 totalInput!846)) (csize!17121 (c!353006 totalInput!846)) (csize!17120 (c!353006 totalInput!846)))))))

(assert (=> d!660428 (= (size!20143 (c!353006 totalInput!846)) lt!826273)))

(declare-fun bs!451334 () Bool)

(assert (= bs!451334 d!660428))

(assert (=> bs!451334 m!2650887))

(assert (=> bs!451334 m!2650887))

(declare-fun m!2651419 () Bool)

(assert (=> bs!451334 m!2651419))

(assert (=> d!660262 d!660428))

(assert (=> b!2209186 d!660420))

(assert (=> b!2209186 d!660422))

(declare-fun d!660430 () Bool)

(declare-fun lt!826274 () Int)

(assert (=> d!660430 (>= lt!826274 0)))

(declare-fun e!1411475 () Int)

(assert (=> d!660430 (= lt!826274 e!1411475)))

(declare-fun c!353216 () Bool)

(assert (=> d!660430 (= c!353216 ((_ is Nil!25845) lt!826090))))

(assert (=> d!660430 (= (size!20142 lt!826090) lt!826274)))

(declare-fun b!2209755 () Bool)

(assert (=> b!2209755 (= e!1411475 0)))

(declare-fun b!2209756 () Bool)

(assert (=> b!2209756 (= e!1411475 (+ 1 (size!20142 (t!198595 lt!826090))))))

(assert (= (and d!660430 c!353216) b!2209755))

(assert (= (and d!660430 (not c!353216)) b!2209756))

(declare-fun m!2651421 () Bool)

(assert (=> b!2209756 m!2651421))

(assert (=> b!2209197 d!660430))

(declare-fun d!660432 () Bool)

(declare-fun lt!826275 () Int)

(assert (=> d!660432 (>= lt!826275 0)))

(declare-fun e!1411476 () Int)

(assert (=> d!660432 (= lt!826275 e!1411476)))

(declare-fun c!353217 () Bool)

(assert (=> d!660432 (= c!353217 ((_ is Nil!25845) (list!10006 (_1!14940 lt!826052))))))

(assert (=> d!660432 (= (size!20142 (list!10006 (_1!14940 lt!826052))) lt!826275)))

(declare-fun b!2209757 () Bool)

(assert (=> b!2209757 (= e!1411476 0)))

(declare-fun b!2209758 () Bool)

(assert (=> b!2209758 (= e!1411476 (+ 1 (size!20142 (t!198595 (list!10006 (_1!14940 lt!826052))))))))

(assert (= (and d!660432 c!353217) b!2209757))

(assert (= (and d!660432 (not c!353217)) b!2209758))

(declare-fun m!2651423 () Bool)

(assert (=> b!2209758 m!2651423))

(assert (=> b!2209197 d!660432))

(declare-fun d!660434 () Bool)

(declare-fun lt!826276 () Int)

(assert (=> d!660434 (>= lt!826276 0)))

(declare-fun e!1411477 () Int)

(assert (=> d!660434 (= lt!826276 e!1411477)))

(declare-fun c!353218 () Bool)

(assert (=> d!660434 (= c!353218 ((_ is Nil!25845) (list!10006 (_2!14940 lt!826052))))))

(assert (=> d!660434 (= (size!20142 (list!10006 (_2!14940 lt!826052))) lt!826276)))

(declare-fun b!2209759 () Bool)

(assert (=> b!2209759 (= e!1411477 0)))

(declare-fun b!2209760 () Bool)

(assert (=> b!2209760 (= e!1411477 (+ 1 (size!20142 (t!198595 (list!10006 (_2!14940 lt!826052))))))))

(assert (= (and d!660434 c!353218) b!2209759))

(assert (= (and d!660434 (not c!353218)) b!2209760))

(declare-fun m!2651425 () Bool)

(assert (=> b!2209760 m!2651425))

(assert (=> b!2209197 d!660434))

(declare-fun d!660436 () Bool)

(declare-fun e!1411479 () Bool)

(assert (=> d!660436 e!1411479))

(declare-fun res!949662 () Bool)

(assert (=> d!660436 (=> (not res!949662) (not e!1411479))))

(declare-fun lt!826277 () List!25929)

(assert (=> d!660436 (= res!949662 (= (content!3508 lt!826277) ((_ map or) (content!3508 (t!198595 (list!10006 (_1!14940 lt!826052)))) (content!3508 (list!10006 (_2!14940 lt!826052))))))))

(declare-fun e!1411478 () List!25929)

(assert (=> d!660436 (= lt!826277 e!1411478)))

(declare-fun c!353219 () Bool)

(assert (=> d!660436 (= c!353219 ((_ is Nil!25845) (t!198595 (list!10006 (_1!14940 lt!826052)))))))

(assert (=> d!660436 (= (++!6437 (t!198595 (list!10006 (_1!14940 lt!826052))) (list!10006 (_2!14940 lt!826052))) lt!826277)))

(declare-fun b!2209761 () Bool)

(assert (=> b!2209761 (= e!1411478 (list!10006 (_2!14940 lt!826052)))))

(declare-fun b!2209762 () Bool)

(assert (=> b!2209762 (= e!1411478 (Cons!25845 (h!31246 (t!198595 (list!10006 (_1!14940 lt!826052)))) (++!6437 (t!198595 (t!198595 (list!10006 (_1!14940 lt!826052)))) (list!10006 (_2!14940 lt!826052)))))))

(declare-fun b!2209764 () Bool)

(assert (=> b!2209764 (= e!1411479 (or (not (= (list!10006 (_2!14940 lt!826052)) Nil!25845)) (= lt!826277 (t!198595 (list!10006 (_1!14940 lt!826052))))))))

(declare-fun b!2209763 () Bool)

(declare-fun res!949663 () Bool)

(assert (=> b!2209763 (=> (not res!949663) (not e!1411479))))

(assert (=> b!2209763 (= res!949663 (= (size!20142 lt!826277) (+ (size!20142 (t!198595 (list!10006 (_1!14940 lt!826052)))) (size!20142 (list!10006 (_2!14940 lt!826052))))))))

(assert (= (and d!660436 c!353219) b!2209761))

(assert (= (and d!660436 (not c!353219)) b!2209762))

(assert (= (and d!660436 res!949662) b!2209763))

(assert (= (and b!2209763 res!949663) b!2209764))

(declare-fun m!2651427 () Bool)

(assert (=> d!660436 m!2651427))

(assert (=> d!660436 m!2651335))

(assert (=> d!660436 m!2650765))

(assert (=> d!660436 m!2650903))

(assert (=> b!2209762 m!2650765))

(declare-fun m!2651429 () Bool)

(assert (=> b!2209762 m!2651429))

(declare-fun m!2651431 () Bool)

(assert (=> b!2209763 m!2651431))

(assert (=> b!2209763 m!2651423))

(assert (=> b!2209763 m!2650765))

(assert (=> b!2209763 m!2650911))

(assert (=> b!2209196 d!660436))

(declare-fun b!2209765 () Bool)

(declare-fun e!1411481 () Int)

(assert (=> b!2209765 (= e!1411481 e!1411178)))

(declare-fun d!660438 () Bool)

(declare-fun lt!826279 () Int)

(assert (=> d!660438 (and (>= lt!826279 (- 1)) (< lt!826279 lt!826048) (>= lt!826279 e!1411178) (or (= lt!826279 e!1411178) (>= lt!826279 (+ lt!826051 1))))))

(declare-fun e!1411480 () Int)

(assert (=> d!660438 (= lt!826279 e!1411480)))

(declare-fun c!353221 () Bool)

(declare-fun e!1411482 () Bool)

(assert (=> d!660438 (= c!353221 e!1411482)))

(declare-fun res!949664 () Bool)

(assert (=> d!660438 (=> res!949664 e!1411482)))

(assert (=> d!660438 (= res!949664 (= (+ lt!826051 1) lt!826048))))

(assert (=> d!660438 (and (>= (+ lt!826051 1) 0) (<= (+ lt!826051 1) lt!826048))))

(assert (=> d!660438 (= (furthestNullablePosition!435 lt!826079 (+ lt!826051 1) totalInput!846 lt!826048 e!1411178) lt!826279)))

(declare-fun b!2209766 () Bool)

(declare-fun lt!826278 () (InoxSet Context!3758))

(assert (=> b!2209766 (= e!1411480 (furthestNullablePosition!435 lt!826278 (+ lt!826051 1 1) totalInput!846 lt!826048 e!1411481))))

(assert (=> b!2209766 (= lt!826278 (derivationStepZipper!331 lt!826079 (apply!6393 totalInput!846 (+ lt!826051 1))))))

(declare-fun c!353220 () Bool)

(assert (=> b!2209766 (= c!353220 (nullableZipper!589 lt!826278))))

(declare-fun b!2209767 () Bool)

(assert (=> b!2209767 (= e!1411482 (lostCauseZipper!395 lt!826079))))

(declare-fun b!2209768 () Bool)

(assert (=> b!2209768 (= e!1411480 e!1411178)))

(declare-fun b!2209769 () Bool)

(assert (=> b!2209769 (= e!1411481 (+ lt!826051 1))))

(assert (= (and d!660438 (not res!949664)) b!2209767))

(assert (= (and d!660438 c!353221) b!2209768))

(assert (= (and d!660438 (not c!353221)) b!2209766))

(assert (= (and b!2209766 c!353220) b!2209769))

(assert (= (and b!2209766 (not c!353220)) b!2209765))

(declare-fun m!2651433 () Bool)

(assert (=> b!2209766 m!2651433))

(declare-fun m!2651435 () Bool)

(assert (=> b!2209766 m!2651435))

(assert (=> b!2209766 m!2651435))

(declare-fun m!2651437 () Bool)

(assert (=> b!2209766 m!2651437))

(declare-fun m!2651439 () Bool)

(assert (=> b!2209766 m!2651439))

(declare-fun m!2651441 () Bool)

(assert (=> b!2209767 m!2651441))

(assert (=> b!2209180 d!660438))

(declare-fun d!660440 () Bool)

(assert (=> d!660440 true))

(declare-fun lambda!83495 () Int)

(declare-fun flatMap!173 ((InoxSet Context!3758) Int) (InoxSet Context!3758))

(assert (=> d!660440 (= (derivationStepZipper!331 z!3830 (apply!6393 totalInput!846 lt!826051)) (flatMap!173 z!3830 lambda!83495))))

(declare-fun bs!451335 () Bool)

(assert (= bs!451335 d!660440))

(declare-fun m!2651443 () Bool)

(assert (=> bs!451335 m!2651443))

(assert (=> b!2209180 d!660440))

(declare-fun d!660442 () Bool)

(declare-fun lt!826282 () C!12764)

(declare-fun apply!6396 (List!25929 Int) C!12764)

(assert (=> d!660442 (= lt!826282 (apply!6396 (list!10006 totalInput!846) lt!826051))))

(declare-fun apply!6397 (Conc!8445 Int) C!12764)

(assert (=> d!660442 (= lt!826282 (apply!6397 (c!353006 totalInput!846) lt!826051))))

(declare-fun e!1411485 () Bool)

(assert (=> d!660442 e!1411485))

(declare-fun res!949667 () Bool)

(assert (=> d!660442 (=> (not res!949667) (not e!1411485))))

(assert (=> d!660442 (= res!949667 (<= 0 lt!826051))))

(assert (=> d!660442 (= (apply!6393 totalInput!846 lt!826051) lt!826282)))

(declare-fun b!2209774 () Bool)

(assert (=> b!2209774 (= e!1411485 (< lt!826051 (size!20139 totalInput!846)))))

(assert (= (and d!660442 res!949667) b!2209774))

(assert (=> d!660442 m!2650753))

(assert (=> d!660442 m!2650753))

(declare-fun m!2651445 () Bool)

(assert (=> d!660442 m!2651445))

(declare-fun m!2651447 () Bool)

(assert (=> d!660442 m!2651447))

(assert (=> b!2209774 m!2650751))

(assert (=> b!2209180 d!660442))

(declare-fun bs!451336 () Bool)

(declare-fun d!660444 () Bool)

(assert (= bs!451336 (and d!660444 d!660258)))

(declare-fun lambda!83496 () Int)

(assert (=> bs!451336 (= lambda!83496 lambda!83457)))

(declare-fun bs!451337 () Bool)

(assert (= bs!451337 (and d!660444 d!660368)))

(assert (=> bs!451337 (not (= lambda!83496 lambda!83475))))

(declare-fun bs!451338 () Bool)

(assert (= bs!451338 (and d!660444 b!2209572)))

(assert (=> bs!451338 (not (= lambda!83496 lambda!83476))))

(declare-fun bs!451339 () Bool)

(assert (= bs!451339 (and d!660444 b!2209573)))

(assert (=> bs!451339 (not (= lambda!83496 lambda!83477))))

(assert (=> d!660444 (= (nullableZipper!589 lt!826079) (exists!878 lt!826079 lambda!83496))))

(declare-fun bs!451340 () Bool)

(assert (= bs!451340 d!660444))

(declare-fun m!2651449 () Bool)

(assert (=> bs!451340 m!2651449))

(assert (=> b!2209180 d!660444))

(declare-fun b!2209778 () Bool)

(declare-fun e!1411487 () List!25929)

(assert (=> b!2209778 (= e!1411487 (++!6437 (list!10008 (left!19866 (c!353006 totalInput!846))) (list!10008 (right!20196 (c!353006 totalInput!846)))))))

(declare-fun d!660446 () Bool)

(declare-fun c!353224 () Bool)

(assert (=> d!660446 (= c!353224 ((_ is Empty!8445) (c!353006 totalInput!846)))))

(declare-fun e!1411486 () List!25929)

(assert (=> d!660446 (= (list!10008 (c!353006 totalInput!846)) e!1411486)))

(declare-fun b!2209777 () Bool)

(assert (=> b!2209777 (= e!1411487 (list!10009 (xs!11387 (c!353006 totalInput!846))))))

(declare-fun b!2209775 () Bool)

(assert (=> b!2209775 (= e!1411486 Nil!25845)))

(declare-fun b!2209776 () Bool)

(assert (=> b!2209776 (= e!1411486 e!1411487)))

(declare-fun c!353225 () Bool)

(assert (=> b!2209776 (= c!353225 ((_ is Leaf!12367) (c!353006 totalInput!846)))))

(assert (= (and d!660446 c!353224) b!2209775))

(assert (= (and d!660446 (not c!353224)) b!2209776))

(assert (= (and b!2209776 c!353225) b!2209777))

(assert (= (and b!2209776 (not c!353225)) b!2209778))

(declare-fun m!2651451 () Bool)

(assert (=> b!2209778 m!2651451))

(declare-fun m!2651453 () Bool)

(assert (=> b!2209778 m!2651453))

(assert (=> b!2209778 m!2651451))

(assert (=> b!2209778 m!2651453))

(declare-fun m!2651455 () Bool)

(assert (=> b!2209778 m!2651455))

(assert (=> b!2209777 m!2651047))

(assert (=> d!660264 d!660446))

(declare-fun d!660448 () Bool)

(declare-fun c!353226 () Bool)

(assert (=> d!660448 (= c!353226 ((_ is Node!8445) (left!19866 (c!353006 totalInput!846))))))

(declare-fun e!1411488 () Bool)

(assert (=> d!660448 (= (inv!34941 (left!19866 (c!353006 totalInput!846))) e!1411488)))

(declare-fun b!2209779 () Bool)

(assert (=> b!2209779 (= e!1411488 (inv!34947 (left!19866 (c!353006 totalInput!846))))))

(declare-fun b!2209780 () Bool)

(declare-fun e!1411489 () Bool)

(assert (=> b!2209780 (= e!1411488 e!1411489)))

(declare-fun res!949668 () Bool)

(assert (=> b!2209780 (= res!949668 (not ((_ is Leaf!12367) (left!19866 (c!353006 totalInput!846)))))))

(assert (=> b!2209780 (=> res!949668 e!1411489)))

(declare-fun b!2209781 () Bool)

(assert (=> b!2209781 (= e!1411489 (inv!34948 (left!19866 (c!353006 totalInput!846))))))

(assert (= (and d!660448 c!353226) b!2209779))

(assert (= (and d!660448 (not c!353226)) b!2209780))

(assert (= (and b!2209780 (not res!949668)) b!2209781))

(declare-fun m!2651457 () Bool)

(assert (=> b!2209779 m!2651457))

(declare-fun m!2651459 () Bool)

(assert (=> b!2209781 m!2651459))

(assert (=> b!2209221 d!660448))

(declare-fun d!660450 () Bool)

(declare-fun c!353227 () Bool)

(assert (=> d!660450 (= c!353227 ((_ is Node!8445) (right!20196 (c!353006 totalInput!846))))))

(declare-fun e!1411490 () Bool)

(assert (=> d!660450 (= (inv!34941 (right!20196 (c!353006 totalInput!846))) e!1411490)))

(declare-fun b!2209782 () Bool)

(assert (=> b!2209782 (= e!1411490 (inv!34947 (right!20196 (c!353006 totalInput!846))))))

(declare-fun b!2209783 () Bool)

(declare-fun e!1411491 () Bool)

(assert (=> b!2209783 (= e!1411490 e!1411491)))

(declare-fun res!949669 () Bool)

(assert (=> b!2209783 (= res!949669 (not ((_ is Leaf!12367) (right!20196 (c!353006 totalInput!846)))))))

(assert (=> b!2209783 (=> res!949669 e!1411491)))

(declare-fun b!2209784 () Bool)

(assert (=> b!2209784 (= e!1411491 (inv!34948 (right!20196 (c!353006 totalInput!846))))))

(assert (= (and d!660450 c!353227) b!2209782))

(assert (= (and d!660450 (not c!353227)) b!2209783))

(assert (= (and b!2209783 (not res!949669)) b!2209784))

(declare-fun m!2651461 () Bool)

(assert (=> b!2209782 m!2651461))

(declare-fun m!2651463 () Bool)

(assert (=> b!2209784 m!2651463))

(assert (=> b!2209221 d!660450))

(declare-fun bs!451341 () Bool)

(declare-fun d!660452 () Bool)

(assert (= bs!451341 (and d!660452 d!660224)))

(declare-fun lambda!83497 () Int)

(assert (=> bs!451341 (= lambda!83497 lambda!83454)))

(assert (=> d!660452 (= (inv!34942 setElem!19354) (forall!5290 (exprs!2379 setElem!19354) lambda!83497))))

(declare-fun bs!451342 () Bool)

(assert (= bs!451342 d!660452))

(declare-fun m!2651465 () Bool)

(assert (=> bs!451342 m!2651465))

(assert (=> setNonEmpty!19354 d!660452))

(declare-fun b!2209788 () Bool)

(declare-fun e!1411493 () List!25929)

(assert (=> b!2209788 (= e!1411493 (++!6437 (list!10008 (left!19866 (c!353006 input!5506))) (list!10008 (right!20196 (c!353006 input!5506)))))))

(declare-fun d!660454 () Bool)

(declare-fun c!353228 () Bool)

(assert (=> d!660454 (= c!353228 ((_ is Empty!8445) (c!353006 input!5506)))))

(declare-fun e!1411492 () List!25929)

(assert (=> d!660454 (= (list!10008 (c!353006 input!5506)) e!1411492)))

(declare-fun b!2209787 () Bool)

(assert (=> b!2209787 (= e!1411493 (list!10009 (xs!11387 (c!353006 input!5506))))))

(declare-fun b!2209785 () Bool)

(assert (=> b!2209785 (= e!1411492 Nil!25845)))

(declare-fun b!2209786 () Bool)

(assert (=> b!2209786 (= e!1411492 e!1411493)))

(declare-fun c!353229 () Bool)

(assert (=> b!2209786 (= c!353229 ((_ is Leaf!12367) (c!353006 input!5506)))))

(assert (= (and d!660454 c!353228) b!2209785))

(assert (= (and d!660454 (not c!353228)) b!2209786))

(assert (= (and b!2209786 c!353229) b!2209787))

(assert (= (and b!2209786 (not c!353229)) b!2209788))

(assert (=> b!2209788 m!2651161))

(assert (=> b!2209788 m!2651169))

(assert (=> b!2209788 m!2651161))

(assert (=> b!2209788 m!2651169))

(declare-fun m!2651467 () Bool)

(assert (=> b!2209788 m!2651467))

(assert (=> b!2209787 m!2651151))

(assert (=> d!660270 d!660454))

(assert (=> b!2209086 d!660282))

(declare-fun d!660456 () Bool)

(assert (=> d!660456 (= (inv!34949 (xs!11387 (c!353006 totalInput!846))) (<= (size!20142 (innerList!8505 (xs!11387 (c!353006 totalInput!846)))) 2147483647))))

(declare-fun bs!451343 () Bool)

(assert (= bs!451343 d!660456))

(declare-fun m!2651469 () Bool)

(assert (=> bs!451343 m!2651469))

(assert (=> b!2209222 d!660456))

(declare-fun b!2209793 () Bool)

(declare-fun e!1411496 () Bool)

(declare-fun tp_is_empty!9757 () Bool)

(declare-fun tp!686864 () Bool)

(assert (=> b!2209793 (= e!1411496 (and tp_is_empty!9757 tp!686864))))

(assert (=> b!2209223 (= tp!686813 e!1411496)))

(assert (= (and b!2209223 ((_ is Cons!25845) (innerList!8505 (xs!11387 (c!353006 totalInput!846))))) b!2209793))

(declare-fun b!2209807 () Bool)

(declare-fun e!1411499 () Bool)

(declare-fun tp!686878 () Bool)

(declare-fun tp!686876 () Bool)

(assert (=> b!2209807 (= e!1411499 (and tp!686878 tp!686876))))

(declare-fun b!2209805 () Bool)

(declare-fun tp!686877 () Bool)

(declare-fun tp!686879 () Bool)

(assert (=> b!2209805 (= e!1411499 (and tp!686877 tp!686879))))

(declare-fun b!2209806 () Bool)

(declare-fun tp!686875 () Bool)

(assert (=> b!2209806 (= e!1411499 tp!686875)))

(assert (=> b!2209212 (= tp!686805 e!1411499)))

(declare-fun b!2209804 () Bool)

(assert (=> b!2209804 (= e!1411499 tp_is_empty!9757)))

(assert (= (and b!2209212 ((_ is ElementMatch!6309) (h!31247 (exprs!2379 setElem!19348)))) b!2209804))

(assert (= (and b!2209212 ((_ is Concat!10611) (h!31247 (exprs!2379 setElem!19348)))) b!2209805))

(assert (= (and b!2209212 ((_ is Star!6309) (h!31247 (exprs!2379 setElem!19348)))) b!2209806))

(assert (= (and b!2209212 ((_ is Union!6309) (h!31247 (exprs!2379 setElem!19348)))) b!2209807))

(declare-fun b!2209808 () Bool)

(declare-fun e!1411500 () Bool)

(declare-fun tp!686880 () Bool)

(declare-fun tp!686881 () Bool)

(assert (=> b!2209808 (= e!1411500 (and tp!686880 tp!686881))))

(assert (=> b!2209212 (= tp!686806 e!1411500)))

(assert (= (and b!2209212 ((_ is Cons!25846) (t!198596 (exprs!2379 setElem!19348)))) b!2209808))

(declare-fun e!1411501 () Bool)

(declare-fun tp!686883 () Bool)

(declare-fun tp!686884 () Bool)

(declare-fun b!2209809 () Bool)

(assert (=> b!2209809 (= e!1411501 (and (inv!34941 (left!19866 (left!19866 (c!353006 input!5506)))) tp!686884 (inv!34941 (right!20196 (left!19866 (c!353006 input!5506)))) tp!686883))))

(declare-fun b!2209811 () Bool)

(declare-fun e!1411502 () Bool)

(declare-fun tp!686882 () Bool)

(assert (=> b!2209811 (= e!1411502 tp!686882)))

(declare-fun b!2209810 () Bool)

(assert (=> b!2209810 (= e!1411501 (and (inv!34949 (xs!11387 (left!19866 (c!353006 input!5506)))) e!1411502))))

(assert (=> b!2209229 (= tp!686824 (and (inv!34941 (left!19866 (c!353006 input!5506))) e!1411501))))

(assert (= (and b!2209229 ((_ is Node!8445) (left!19866 (c!353006 input!5506)))) b!2209809))

(assert (= b!2209810 b!2209811))

(assert (= (and b!2209229 ((_ is Leaf!12367) (left!19866 (c!353006 input!5506)))) b!2209810))

(declare-fun m!2651471 () Bool)

(assert (=> b!2209809 m!2651471))

(declare-fun m!2651473 () Bool)

(assert (=> b!2209809 m!2651473))

(declare-fun m!2651475 () Bool)

(assert (=> b!2209810 m!2651475))

(assert (=> b!2209229 m!2650941))

(declare-fun e!1411503 () Bool)

(declare-fun b!2209812 () Bool)

(declare-fun tp!686886 () Bool)

(declare-fun tp!686887 () Bool)

(assert (=> b!2209812 (= e!1411503 (and (inv!34941 (left!19866 (right!20196 (c!353006 input!5506)))) tp!686887 (inv!34941 (right!20196 (right!20196 (c!353006 input!5506)))) tp!686886))))

(declare-fun b!2209814 () Bool)

(declare-fun e!1411504 () Bool)

(declare-fun tp!686885 () Bool)

(assert (=> b!2209814 (= e!1411504 tp!686885)))

(declare-fun b!2209813 () Bool)

(assert (=> b!2209813 (= e!1411503 (and (inv!34949 (xs!11387 (right!20196 (c!353006 input!5506)))) e!1411504))))

(assert (=> b!2209229 (= tp!686823 (and (inv!34941 (right!20196 (c!353006 input!5506))) e!1411503))))

(assert (= (and b!2209229 ((_ is Node!8445) (right!20196 (c!353006 input!5506)))) b!2209812))

(assert (= b!2209813 b!2209814))

(assert (= (and b!2209229 ((_ is Leaf!12367) (right!20196 (c!353006 input!5506)))) b!2209813))

(declare-fun m!2651477 () Bool)

(assert (=> b!2209812 m!2651477))

(declare-fun m!2651479 () Bool)

(assert (=> b!2209812 m!2651479))

(declare-fun m!2651481 () Bool)

(assert (=> b!2209813 m!2651481))

(assert (=> b!2209229 m!2650943))

(declare-fun b!2209815 () Bool)

(declare-fun tp!686889 () Bool)

(declare-fun e!1411505 () Bool)

(declare-fun tp!686890 () Bool)

(assert (=> b!2209815 (= e!1411505 (and (inv!34941 (left!19866 (left!19866 (c!353006 totalInput!846)))) tp!686890 (inv!34941 (right!20196 (left!19866 (c!353006 totalInput!846)))) tp!686889))))

(declare-fun b!2209817 () Bool)

(declare-fun e!1411506 () Bool)

(declare-fun tp!686888 () Bool)

(assert (=> b!2209817 (= e!1411506 tp!686888)))

(declare-fun b!2209816 () Bool)

(assert (=> b!2209816 (= e!1411505 (and (inv!34949 (xs!11387 (left!19866 (c!353006 totalInput!846)))) e!1411506))))

(assert (=> b!2209221 (= tp!686815 (and (inv!34941 (left!19866 (c!353006 totalInput!846))) e!1411505))))

(assert (= (and b!2209221 ((_ is Node!8445) (left!19866 (c!353006 totalInput!846)))) b!2209815))

(assert (= b!2209816 b!2209817))

(assert (= (and b!2209221 ((_ is Leaf!12367) (left!19866 (c!353006 totalInput!846)))) b!2209816))

(declare-fun m!2651483 () Bool)

(assert (=> b!2209815 m!2651483))

(declare-fun m!2651485 () Bool)

(assert (=> b!2209815 m!2651485))

(declare-fun m!2651487 () Bool)

(assert (=> b!2209816 m!2651487))

(assert (=> b!2209221 m!2650933))

(declare-fun e!1411507 () Bool)

(declare-fun tp!686892 () Bool)

(declare-fun tp!686893 () Bool)

(declare-fun b!2209818 () Bool)

(assert (=> b!2209818 (= e!1411507 (and (inv!34941 (left!19866 (right!20196 (c!353006 totalInput!846)))) tp!686893 (inv!34941 (right!20196 (right!20196 (c!353006 totalInput!846)))) tp!686892))))

(declare-fun b!2209820 () Bool)

(declare-fun e!1411508 () Bool)

(declare-fun tp!686891 () Bool)

(assert (=> b!2209820 (= e!1411508 tp!686891)))

(declare-fun b!2209819 () Bool)

(assert (=> b!2209819 (= e!1411507 (and (inv!34949 (xs!11387 (right!20196 (c!353006 totalInput!846)))) e!1411508))))

(assert (=> b!2209221 (= tp!686814 (and (inv!34941 (right!20196 (c!353006 totalInput!846))) e!1411507))))

(assert (= (and b!2209221 ((_ is Node!8445) (right!20196 (c!353006 totalInput!846)))) b!2209818))

(assert (= b!2209819 b!2209820))

(assert (= (and b!2209221 ((_ is Leaf!12367) (right!20196 (c!353006 totalInput!846)))) b!2209819))

(declare-fun m!2651489 () Bool)

(assert (=> b!2209818 m!2651489))

(declare-fun m!2651491 () Bool)

(assert (=> b!2209818 m!2651491))

(declare-fun m!2651493 () Bool)

(assert (=> b!2209819 m!2651493))

(assert (=> b!2209221 m!2650935))

(declare-fun condSetEmpty!19356 () Bool)

(assert (=> setNonEmpty!19354 (= condSetEmpty!19356 (= setRest!19354 ((as const (Array Context!3758 Bool)) false)))))

(declare-fun setRes!19356 () Bool)

(assert (=> setNonEmpty!19354 (= tp!686820 setRes!19356)))

(declare-fun setIsEmpty!19356 () Bool)

(assert (=> setIsEmpty!19356 setRes!19356))

(declare-fun tp!686894 () Bool)

(declare-fun setElem!19356 () Context!3758)

(declare-fun e!1411509 () Bool)

(declare-fun setNonEmpty!19356 () Bool)

(assert (=> setNonEmpty!19356 (= setRes!19356 (and tp!686894 (inv!34942 setElem!19356) e!1411509))))

(declare-fun setRest!19356 () (InoxSet Context!3758))

(assert (=> setNonEmpty!19356 (= setRest!19354 ((_ map or) (store ((as const (Array Context!3758 Bool)) false) setElem!19356 true) setRest!19356))))

(declare-fun b!2209821 () Bool)

(declare-fun tp!686895 () Bool)

(assert (=> b!2209821 (= e!1411509 tp!686895)))

(assert (= (and setNonEmpty!19354 condSetEmpty!19356) setIsEmpty!19356))

(assert (= (and setNonEmpty!19354 (not condSetEmpty!19356)) setNonEmpty!19356))

(assert (= setNonEmpty!19356 b!2209821))

(declare-fun m!2651495 () Bool)

(assert (=> setNonEmpty!19356 m!2651495))

(declare-fun b!2209822 () Bool)

(declare-fun e!1411510 () Bool)

(declare-fun tp!686896 () Bool)

(declare-fun tp!686897 () Bool)

(assert (=> b!2209822 (= e!1411510 (and tp!686896 tp!686897))))

(assert (=> b!2209228 (= tp!686821 e!1411510)))

(assert (= (and b!2209228 ((_ is Cons!25846) (exprs!2379 setElem!19354))) b!2209822))

(declare-fun b!2209823 () Bool)

(declare-fun e!1411511 () Bool)

(declare-fun tp!686898 () Bool)

(assert (=> b!2209823 (= e!1411511 (and tp_is_empty!9757 tp!686898))))

(assert (=> b!2209231 (= tp!686822 e!1411511)))

(assert (= (and b!2209231 ((_ is Cons!25845) (innerList!8505 (xs!11387 (c!353006 input!5506))))) b!2209823))

(declare-fun b_lambda!71271 () Bool)

(assert (= b_lambda!71269 (or d!660224 b_lambda!71271)))

(declare-fun bs!451344 () Bool)

(declare-fun d!660458 () Bool)

(assert (= bs!451344 (and d!660458 d!660224)))

(declare-fun validRegex!2348 (Regex!6309) Bool)

(assert (=> bs!451344 (= (dynLambda!11461 lambda!83454 (h!31247 (exprs!2379 setElem!19348))) (validRegex!2348 (h!31247 (exprs!2379 setElem!19348))))))

(declare-fun m!2651497 () Bool)

(assert (=> bs!451344 m!2651497))

(assert (=> b!2209753 d!660458))

(check-sat (not b!2209537) (not b!2209817) (not b_lambda!71271) (not b!2209821) (not b!2209520) (not b!2209654) (not b!2209645) (not b!2209661) (not b!2209819) (not b!2209781) (not b!2209767) (not b!2209648) (not b!2209327) (not b!2209344) tp_is_empty!9757 (not b!2209386) (not b!2209642) (not b!2209652) (not d!660452) (not b!2209808) (not b!2209343) (not b!2209809) (not b!2209621) (not b!2209793) (not bm!132360) (not b!2209527) (not b!2209511) (not b!2209748) (not b!2209618) (not b!2209805) (not b!2209806) (not d!660396) (not b!2209816) (not b!2209746) (not b!2209387) (not b!2209787) (not bm!132389) (not b!2209774) (not b!2209651) (not b!2209811) (not d!660408) (not b!2209535) (not b!2209762) (not bm!132362) (not bm!132364) (not b!2209673) (not b!2209756) (not b!2209533) (not b!2209534) (not b!2209815) (not b!2209665) (not b!2209653) (not b!2209788) (not b!2209383) (not b!2209384) (not bs!451344) (not bm!132376) (not b!2209622) (not b!2209818) (not b!2209737) (not b!2209339) (not b!2209812) (not d!660368) (not b!2209526) (not b!2209813) (not b!2209519) (not d!660388) (not b!2209810) (not b!2209650) (not d!660390) (not b!2209643) (not bm!132363) (not b!2209524) (not b!2209572) (not b!2209778) (not d!660436) (not b!2209663) (not b!2209619) (not d!660424) (not b!2209807) (not b!2209777) (not b!2209822) (not setNonEmpty!19356) (not b!2209754) (not b!2209779) (not d!660392) (not b!2209763) (not b!2209573) (not d!660394) (not b!2209346) (not d!660442) (not b!2209388) (not b!2209229) (not b!2209620) (not b!2209615) (not d!660440) (not b!2209341) (not d!660350) (not b!2209655) (not bm!132365) (not b!2209623) (not b!2209616) (not d!660318) (not b!2209820) (not b!2209532) (not d!660428) (not d!660326) (not b!2209536) (not d!660444) (not b!2209221) (not b!2209741) (not d!660386) (not b!2209617) (not b!2209687) (not bm!132377) (not d!660456) (not b!2209823) (not d!660416) (not b!2209784) (not b!2209782) (not b!2209758) (not b!2209385) (not b!2209760) (not b!2209766) (not b!2209814) (not b!2209686) (not b!2209518))
(check-sat)
