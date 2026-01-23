; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!533966 () Bool)

(assert start!533966)

(declare-fun b!5048622 () Bool)

(declare-fun res!2150244 () Bool)

(declare-fun e!3152148 () Bool)

(assert (=> b!5048622 (=> (not res!2150244) (not e!3152148))))

(declare-fun i!658 () Int)

(declare-datatypes ((T!104418 0))(
  ( (T!104419 (val!23548 Int)) )
))
(declare-datatypes ((List!58458 0))(
  ( (Nil!58334) (Cons!58334 (h!64782 T!104418) (t!371097 List!58458)) )
))
(declare-fun l!2763 () List!58458)

(declare-fun size!38959 (List!58458) Int)

(assert (=> b!5048622 (= res!2150244 (<= i!658 (size!38959 l!2763)))))

(declare-fun b!5048625 () Bool)

(declare-fun e!3152147 () Bool)

(declare-fun tp_is_empty!36851 () Bool)

(declare-fun tp!1411957 () Bool)

(assert (=> b!5048625 (= e!3152147 (and tp_is_empty!36851 tp!1411957))))

(declare-fun b!5048624 () Bool)

(assert (=> b!5048624 (= e!3152148 false)))

(declare-fun lt!2086071 () Int)

(assert (=> b!5048624 (= lt!2086071 (size!38959 (t!371097 l!2763)))))

(declare-fun res!2150245 () Bool)

(assert (=> start!533966 (=> (not res!2150245) (not e!3152148))))

(assert (=> start!533966 (= res!2150245 (<= 0 i!658))))

(assert (=> start!533966 e!3152148))

(assert (=> start!533966 true))

(assert (=> start!533966 e!3152147))

(declare-fun b!5048623 () Bool)

(declare-fun res!2150243 () Bool)

(assert (=> b!5048623 (=> (not res!2150243) (not e!3152148))))

(get-info :version)

(assert (=> b!5048623 (= res!2150243 (and (not ((_ is Nil!58334) l!2763)) (not (= i!658 0)) (<= 0 (- i!658 1))))))

(assert (= (and start!533966 res!2150245) b!5048622))

(assert (= (and b!5048622 res!2150244) b!5048623))

(assert (= (and b!5048623 res!2150243) b!5048624))

(assert (= (and start!533966 ((_ is Cons!58334) l!2763)) b!5048625))

(declare-fun m!6083806 () Bool)

(assert (=> b!5048622 m!6083806))

(declare-fun m!6083808 () Bool)

(assert (=> b!5048624 m!6083808))

(check-sat (not b!5048622) (not b!5048624) (not b!5048625) tp_is_empty!36851)
(check-sat)
