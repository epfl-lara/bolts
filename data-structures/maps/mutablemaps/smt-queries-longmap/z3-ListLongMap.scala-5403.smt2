; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72156 () Bool)

(assert start!72156)

(declare-datatypes ((List!16058 0))(
  ( (Nil!16055) (Cons!16054 (h!17185 (_ BitVec 64)) (t!22437 List!16058)) )
))
(declare-fun l!632 () List!16058)

(declare-fun ListPrimitiveSize!74 (List!16058) Int)

(assert (=> start!72156 (< (ListPrimitiveSize!74 l!632) 0)))

(assert (=> start!72156 true))

(declare-fun bs!23508 () Bool)

(assert (= bs!23508 start!72156))

(declare-fun m!781857 () Bool)

(assert (=> bs!23508 m!781857))

(check-sat (not start!72156))
(check-sat)
(get-model)

(declare-fun d!107639 () Bool)

(declare-fun lt!380415 () Int)

(assert (=> d!107639 (>= lt!380415 0)))

(declare-fun e!466865 () Int)

(assert (=> d!107639 (= lt!380415 e!466865)))

(declare-fun c!91021 () Bool)

(get-info :version)

(assert (=> d!107639 (= c!91021 ((_ is Nil!16055) l!632))))

(assert (=> d!107639 (= (ListPrimitiveSize!74 l!632) lt!380415)))

(declare-fun b!836638 () Bool)

(assert (=> b!836638 (= e!466865 0)))

(declare-fun b!836639 () Bool)

(assert (=> b!836639 (= e!466865 (+ 1 (ListPrimitiveSize!74 (t!22437 l!632))))))

(assert (= (and d!107639 c!91021) b!836638))

(assert (= (and d!107639 (not c!91021)) b!836639))

(declare-fun m!781865 () Bool)

(assert (=> b!836639 m!781865))

(assert (=> start!72156 d!107639))

(check-sat (not b!836639))
(check-sat)
