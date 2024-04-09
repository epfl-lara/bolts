; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72168 () Bool)

(assert start!72168)

(declare-fun res!569224 () Bool)

(declare-fun e!466871 () Bool)

(assert (=> start!72168 (=> (not res!569224) (not e!466871))))

(declare-datatypes ((List!16061 0))(
  ( (Nil!16058) (Cons!16057 (h!17188 (_ BitVec 64)) (t!22440 List!16061)) )
))
(declare-fun l!632 () List!16061)

(get-info :version)

(assert (=> start!72168 (= res!569224 (and (not ((_ is Nil!16058) l!632)) (not ((_ is Nil!16058) (t!22440 l!632))) (bvslt (h!17188 l!632) (h!17188 (t!22440 l!632)))))))

(assert (=> start!72168 e!466871))

(assert (=> start!72168 true))

(declare-fun b!836645 () Bool)

(declare-fun ListPrimitiveSize!77 (List!16061) Int)

(assert (=> b!836645 (= e!466871 (>= (ListPrimitiveSize!77 (t!22440 l!632)) (ListPrimitiveSize!77 l!632)))))

(assert (= (and start!72168 res!569224) b!836645))

(declare-fun m!781871 () Bool)

(assert (=> b!836645 m!781871))

(declare-fun m!781873 () Bool)

(assert (=> b!836645 m!781873))

(check-sat (not b!836645))
(check-sat)
(get-model)

(declare-fun d!107645 () Bool)

(declare-fun lt!380418 () Int)

(assert (=> d!107645 (>= lt!380418 0)))

(declare-fun e!466877 () Int)

(assert (=> d!107645 (= lt!380418 e!466877)))

(declare-fun c!91024 () Bool)

(assert (=> d!107645 (= c!91024 ((_ is Nil!16058) (t!22440 l!632)))))

(assert (=> d!107645 (= (ListPrimitiveSize!77 (t!22440 l!632)) lt!380418)))

(declare-fun b!836653 () Bool)

(assert (=> b!836653 (= e!466877 0)))

(declare-fun b!836654 () Bool)

(assert (=> b!836654 (= e!466877 (+ 1 (ListPrimitiveSize!77 (t!22440 (t!22440 l!632)))))))

(assert (= (and d!107645 c!91024) b!836653))

(assert (= (and d!107645 (not c!91024)) b!836654))

(declare-fun m!781879 () Bool)

(assert (=> b!836654 m!781879))

(assert (=> b!836645 d!107645))

(declare-fun d!107649 () Bool)

(declare-fun lt!380419 () Int)

(assert (=> d!107649 (>= lt!380419 0)))

(declare-fun e!466878 () Int)

(assert (=> d!107649 (= lt!380419 e!466878)))

(declare-fun c!91025 () Bool)

(assert (=> d!107649 (= c!91025 ((_ is Nil!16058) l!632))))

(assert (=> d!107649 (= (ListPrimitiveSize!77 l!632) lt!380419)))

(declare-fun b!836655 () Bool)

(assert (=> b!836655 (= e!466878 0)))

(declare-fun b!836656 () Bool)

(assert (=> b!836656 (= e!466878 (+ 1 (ListPrimitiveSize!77 (t!22440 l!632))))))

(assert (= (and d!107649 c!91025) b!836655))

(assert (= (and d!107649 (not c!91025)) b!836656))

(assert (=> b!836656 m!781871))

(assert (=> b!836645 d!107649))

(check-sat (not b!836654) (not b!836656))
(check-sat)
