; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2022 () Bool)

(assert start!2022)

(declare-fun b!13626 () Bool)

(assert (=> b!13626 true))

(declare-fun b!13621 () Bool)

(declare-fun res!10698 () Bool)

(declare-fun e!8164 () Bool)

(assert (=> b!13621 (=> (not res!10698) (not e!8164))))

(declare-datatypes ((B!496 0))(
  ( (B!497 (val!346 Int)) )
))
(declare-datatypes ((tuple2!474 0))(
  ( (tuple2!475 (_1!237 (_ BitVec 64)) (_2!237 B!496)) )
))
(declare-datatypes ((List!396 0))(
  ( (Nil!393) (Cons!392 (h!958 tuple2!474) (t!2792 List!396)) )
))
(declare-fun l!522 () List!396)

(declare-fun value!159 () B!496)

(get-info :version)

(assert (=> b!13621 (= res!10698 (and (not (= (_2!237 (h!958 l!522)) value!159)) ((_ is Cons!392) l!522)))))

(declare-fun b!13622 () Bool)

(declare-fun e!8163 () Bool)

(assert (=> b!13622 (= e!8164 e!8163)))

(declare-fun res!10696 () Bool)

(assert (=> b!13622 (=> (not res!10696) (not e!8163))))

(declare-fun lt!3531 () List!396)

(declare-fun isStrictlySorted!87 (List!396) Bool)

(assert (=> b!13622 (= res!10696 (isStrictlySorted!87 lt!3531))))

(declare-fun filterByValue!11 (List!396 B!496) List!396)

(assert (=> b!13622 (= lt!3531 (filterByValue!11 (t!2792 l!522) value!159))))

(declare-fun b!13624 () Bool)

(assert (=> b!13624 (= e!8163 (= l!522 Nil!393))))

(declare-fun b!13625 () Bool)

(declare-fun res!10699 () Bool)

(assert (=> b!13625 (=> (not res!10699) (not e!8163))))

(declare-fun isEmpty!85 (List!396) Bool)

(assert (=> b!13625 (= res!10699 (not (isEmpty!85 lt!3531)))))

(declare-fun res!10695 () Bool)

(assert (=> b!13626 (=> (not res!10695) (not e!8163))))

(declare-fun lambda!92 () Int)

(declare-fun forall!78 (List!396 Int) Bool)

(assert (=> b!13626 (= res!10695 (forall!78 lt!3531 lambda!92))))

(declare-fun b!13627 () Bool)

(declare-fun e!8162 () Bool)

(declare-fun tp_is_empty!675 () Bool)

(declare-fun tp!2207 () Bool)

(assert (=> b!13627 (= e!8162 (and tp_is_empty!675 tp!2207))))

(declare-fun res!10697 () Bool)

(assert (=> start!2022 (=> (not res!10697) (not e!8164))))

(assert (=> start!2022 (= res!10697 (isStrictlySorted!87 l!522))))

(assert (=> start!2022 e!8164))

(assert (=> start!2022 e!8162))

(assert (=> start!2022 tp_is_empty!675))

(declare-fun b!13623 () Bool)

(declare-fun res!10694 () Bool)

(assert (=> b!13623 (=> (not res!10694) (not e!8163))))

(assert (=> b!13623 (= res!10694 (not (isEmpty!85 l!522)))))

(assert (= (and start!2022 res!10697) b!13621))

(assert (= (and b!13621 res!10698) b!13622))

(assert (= (and b!13622 res!10696) b!13626))

(assert (= (and b!13626 res!10695) b!13623))

(assert (= (and b!13623 res!10694) b!13625))

(assert (= (and b!13625 res!10699) b!13624))

(assert (= (and start!2022 ((_ is Cons!392) l!522)) b!13627))

(declare-fun m!9211 () Bool)

(assert (=> start!2022 m!9211))

(declare-fun m!9213 () Bool)

(assert (=> b!13625 m!9213))

(declare-fun m!9215 () Bool)

(assert (=> b!13622 m!9215))

(declare-fun m!9217 () Bool)

(assert (=> b!13622 m!9217))

(declare-fun m!9219 () Bool)

(assert (=> b!13623 m!9219))

(declare-fun m!9221 () Bool)

(assert (=> b!13626 m!9221))

(check-sat tp_is_empty!675 (not b!13622) (not b!13625) (not b!13626) (not b!13623) (not start!2022) (not b!13627))
(check-sat)
