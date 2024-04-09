; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2040 () Bool)

(assert start!2040)

(declare-fun b!13799 () Bool)

(assert (=> b!13799 true))

(declare-fun b!13797 () Bool)

(declare-fun e!8230 () Bool)

(declare-datatypes ((B!514 0))(
  ( (B!515 (val!355 Int)) )
))
(declare-datatypes ((tuple2!492 0))(
  ( (tuple2!493 (_1!246 (_ BitVec 64)) (_2!246 B!514)) )
))
(declare-datatypes ((List!405 0))(
  ( (Nil!402) (Cons!401 (h!967 tuple2!492) (t!2801 List!405)) )
))
(declare-fun lt!3540 () List!405)

(assert (=> b!13797 (= e!8230 (= lt!3540 Nil!402))))

(declare-fun b!13798 () Bool)

(declare-fun e!8232 () Bool)

(declare-fun tp_is_empty!693 () Bool)

(declare-fun tp!2239 () Bool)

(assert (=> b!13798 (= e!8232 (and tp_is_empty!693 tp!2239))))

(declare-fun res!10820 () Bool)

(assert (=> b!13799 (=> (not res!10820) (not e!8230))))

(declare-fun lambda!119 () Int)

(declare-fun forall!87 (List!405 Int) Bool)

(assert (=> b!13799 (= res!10820 (forall!87 lt!3540 lambda!119))))

(declare-fun res!10824 () Bool)

(declare-fun e!8231 () Bool)

(assert (=> start!2040 (=> (not res!10824) (not e!8231))))

(declare-fun l!522 () List!405)

(declare-fun isStrictlySorted!96 (List!405) Bool)

(assert (=> start!2040 (= res!10824 (isStrictlySorted!96 l!522))))

(assert (=> start!2040 e!8231))

(assert (=> start!2040 e!8232))

(assert (=> start!2040 tp_is_empty!693))

(declare-fun b!13800 () Bool)

(declare-fun res!10825 () Bool)

(assert (=> b!13800 (=> (not res!10825) (not e!8230))))

(declare-fun isEmpty!94 (List!405) Bool)

(assert (=> b!13800 (= res!10825 (not (isEmpty!94 l!522)))))

(declare-fun b!13801 () Bool)

(declare-fun res!10821 () Bool)

(assert (=> b!13801 (=> (not res!10821) (not e!8231))))

(declare-fun value!159 () B!514)

(get-info :version)

(assert (=> b!13801 (= res!10821 (and (or (not ((_ is Cons!401) l!522)) (not (= (_2!246 (h!967 l!522)) value!159))) (or (not ((_ is Cons!401) l!522)) (= (_2!246 (h!967 l!522)) value!159)) (not ((_ is Nil!402) l!522))))))

(declare-fun b!13802 () Bool)

(assert (=> b!13802 (= e!8231 e!8230)))

(declare-fun res!10823 () Bool)

(assert (=> b!13802 (=> (not res!10823) (not e!8230))))

(assert (=> b!13802 (= res!10823 (isStrictlySorted!96 lt!3540))))

(declare-fun err!7 () List!405)

(assert (=> b!13802 (= lt!3540 err!7)))

(assert (=> b!13802 true))

(declare-fun e!8233 () Bool)

(assert (=> b!13802 e!8233))

(declare-fun b!13803 () Bool)

(declare-fun tp!2240 () Bool)

(assert (=> b!13803 (= e!8233 (and tp_is_empty!693 tp!2240))))

(declare-fun b!13804 () Bool)

(declare-fun res!10822 () Bool)

(assert (=> b!13804 (=> (not res!10822) (not e!8230))))

(assert (=> b!13804 (= res!10822 (not (isEmpty!94 lt!3540)))))

(assert (= (and start!2040 res!10824) b!13801))

(assert (= (and b!13801 res!10821) b!13802))

(assert (= (and b!13802 ((_ is Cons!401) err!7)) b!13803))

(assert (= (and b!13802 res!10823) b!13799))

(assert (= (and b!13799 res!10820) b!13800))

(assert (= (and b!13800 res!10825) b!13804))

(assert (= (and b!13804 res!10822) b!13797))

(assert (= (and start!2040 ((_ is Cons!401) l!522)) b!13798))

(declare-fun m!9281 () Bool)

(assert (=> b!13804 m!9281))

(declare-fun m!9283 () Bool)

(assert (=> b!13799 m!9283))

(declare-fun m!9285 () Bool)

(assert (=> start!2040 m!9285))

(declare-fun m!9287 () Bool)

(assert (=> b!13802 m!9287))

(declare-fun m!9289 () Bool)

(assert (=> b!13800 m!9289))

(check-sat tp_is_empty!693 (not b!13800) (not b!13798) (not b!13804) (not b!13799) (not b!13802) (not start!2040) (not b!13803))
(check-sat)
