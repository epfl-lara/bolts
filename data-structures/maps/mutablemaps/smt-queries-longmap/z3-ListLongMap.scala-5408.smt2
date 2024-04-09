; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72232 () Bool)

(assert start!72232)

(declare-fun lt!380462 () Int)

(declare-datatypes ((List!16073 0))(
  ( (Nil!16070) (Cons!16069 (h!17200 (_ BitVec 64)) (t!22452 List!16073)) )
))
(declare-fun l!404 () List!16073)

(declare-fun length!39 (List!16073) Int)

(assert (=> start!72232 (= lt!380462 (length!39 l!404))))

(assert (=> start!72232 false))

(assert (=> start!72232 true))

(declare-fun bs!23538 () Bool)

(assert (= bs!23538 start!72232))

(declare-fun m!781969 () Bool)

(assert (=> bs!23538 m!781969))

(check-sat (not start!72232))
(check-sat)
