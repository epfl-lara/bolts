; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!756284 () Bool)

(assert start!756284)

(declare-fun res!3175468 () Bool)

(declare-fun e!4730265 () Bool)

(assert (=> start!756284 (=> (not res!3175468) (not e!4730265))))

(declare-datatypes ((B!4453 0))(
  ( (B!4454 (val!32626 Int)) )
))
(declare-datatypes ((List!75142 0))(
  ( (Nil!75016) (Cons!75016 (h!81464 B!4453) (t!390898 List!75142)) )
))
(declare-fun prefix!66 () List!75142)

(declare-fun l!2919 () List!75142)

(get-info :version)

(assert (=> start!756284 (= res!3175468 (and (not ((_ is Nil!75016) prefix!66)) (not ((_ is Nil!75016) l!2919))))))

(assert (=> start!756284 e!4730265))

(declare-fun e!4730267 () Bool)

(assert (=> start!756284 e!4730267))

(declare-fun e!4730266 () Bool)

(assert (=> start!756284 e!4730266))

(declare-fun b!8029104 () Bool)

(declare-fun res!3175469 () Bool)

(assert (=> b!8029104 (=> (not res!3175469) (not e!4730265))))

(declare-fun head!16499 (List!75142) B!4453)

(assert (=> b!8029104 (= res!3175469 (= (head!16499 prefix!66) (head!16499 l!2919)))))

(declare-fun b!8029105 () Bool)

(assert (=> b!8029105 (= e!4730265 (= prefix!66 Nil!75016))))

(declare-fun b!8029106 () Bool)

(declare-fun tp_is_empty!54357 () Bool)

(declare-fun tp!2402667 () Bool)

(assert (=> b!8029106 (= e!4730267 (and tp_is_empty!54357 tp!2402667))))

(declare-fun b!8029107 () Bool)

(declare-fun tp!2402666 () Bool)

(assert (=> b!8029107 (= e!4730266 (and tp_is_empty!54357 tp!2402666))))

(assert (= (and start!756284 res!3175468) b!8029104))

(assert (= (and b!8029104 res!3175469) b!8029105))

(assert (= (and start!756284 ((_ is Cons!75016) prefix!66)) b!8029106))

(assert (= (and start!756284 ((_ is Cons!75016) l!2919)) b!8029107))

(declare-fun m!8391230 () Bool)

(assert (=> b!8029104 m!8391230))

(declare-fun m!8391232 () Bool)

(assert (=> b!8029104 m!8391232))

(check-sat (not b!8029104) (not b!8029106) (not b!8029107) tp_is_empty!54357)
(check-sat)
