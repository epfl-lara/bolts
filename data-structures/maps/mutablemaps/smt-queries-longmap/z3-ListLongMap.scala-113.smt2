; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1974 () Bool)

(assert start!1974)

(declare-fun b!13285 () Bool)

(assert (=> b!13285 true))

(declare-fun b!13279 () Bool)

(declare-fun e!7961 () Bool)

(declare-fun e!7963 () Bool)

(assert (=> b!13279 (= e!7961 e!7963)))

(declare-fun res!10480 () Bool)

(assert (=> b!13279 (=> (not res!10480) (not e!7963))))

(declare-datatypes ((B!478 0))(
  ( (B!479 (val!337 Int)) )
))
(declare-datatypes ((tuple2!456 0))(
  ( (tuple2!457 (_1!228 (_ BitVec 64)) (_2!228 B!478)) )
))
(declare-datatypes ((List!387 0))(
  ( (Nil!384) (Cons!383 (h!949 tuple2!456) (t!2783 List!387)) )
))
(declare-fun lt!3504 () List!387)

(declare-fun isStrictlySorted!78 (List!387) Bool)

(assert (=> b!13279 (= res!10480 (isStrictlySorted!78 lt!3504))))

(declare-fun l!522 () List!387)

(declare-fun value!159 () B!478)

(declare-fun $colon$colon!13 (List!387 tuple2!456) List!387)

(declare-fun filterByValue!5 (List!387 B!478) List!387)

(assert (=> b!13279 (= lt!3504 ($colon$colon!13 (filterByValue!5 (t!2783 l!522) value!159) (h!949 l!522)))))

(declare-fun b!13280 () Bool)

(declare-fun res!10479 () Bool)

(assert (=> b!13280 (=> (not res!10479) (not e!7963))))

(declare-fun isEmpty!79 (List!387) Bool)

(assert (=> b!13280 (= res!10479 (not (isEmpty!79 l!522)))))

(declare-fun b!13281 () Bool)

(declare-fun e!7962 () Bool)

(declare-fun tp_is_empty!657 () Bool)

(declare-fun tp!2162 () Bool)

(assert (=> b!13281 (= e!7962 (and tp_is_empty!657 tp!2162))))

(declare-fun b!13282 () Bool)

(declare-fun res!10475 () Bool)

(assert (=> b!13282 (=> (not res!10475) (not e!7961))))

(get-info :version)

(assert (=> b!13282 (= res!10475 (and ((_ is Cons!383) l!522) (= (_2!228 (h!949 l!522)) value!159)))))

(declare-fun b!13283 () Bool)

(assert (=> b!13283 (= e!7963 (= l!522 Nil!384))))

(declare-fun b!13284 () Bool)

(declare-fun res!10477 () Bool)

(assert (=> b!13284 (=> (not res!10477) (not e!7963))))

(assert (=> b!13284 (= res!10477 (not (isEmpty!79 lt!3504)))))

(declare-fun res!10478 () Bool)

(assert (=> start!1974 (=> (not res!10478) (not e!7961))))

(assert (=> start!1974 (= res!10478 (isStrictlySorted!78 l!522))))

(assert (=> start!1974 e!7961))

(assert (=> start!1974 e!7962))

(assert (=> start!1974 tp_is_empty!657))

(declare-fun res!10476 () Bool)

(assert (=> b!13285 (=> (not res!10476) (not e!7963))))

(declare-fun lambda!65 () Int)

(declare-fun forall!72 (List!387 Int) Bool)

(assert (=> b!13285 (= res!10476 (forall!72 lt!3504 lambda!65))))

(assert (= (and start!1974 res!10478) b!13282))

(assert (= (and b!13282 res!10475) b!13279))

(assert (= (and b!13279 res!10480) b!13285))

(assert (= (and b!13285 res!10476) b!13280))

(assert (= (and b!13280 res!10479) b!13284))

(assert (= (and b!13284 res!10477) b!13283))

(assert (= (and start!1974 ((_ is Cons!383) l!522)) b!13281))

(declare-fun m!9045 () Bool)

(assert (=> b!13280 m!9045))

(declare-fun m!9047 () Bool)

(assert (=> start!1974 m!9047))

(declare-fun m!9049 () Bool)

(assert (=> b!13279 m!9049))

(declare-fun m!9051 () Bool)

(assert (=> b!13279 m!9051))

(assert (=> b!13279 m!9051))

(declare-fun m!9053 () Bool)

(assert (=> b!13279 m!9053))

(declare-fun m!9055 () Bool)

(assert (=> b!13284 m!9055))

(declare-fun m!9057 () Bool)

(assert (=> b!13285 m!9057))

(check-sat (not b!13281) tp_is_empty!657 (not b!13279) (not b!13280) (not start!1974) (not b!13284) (not b!13285))
(check-sat)
