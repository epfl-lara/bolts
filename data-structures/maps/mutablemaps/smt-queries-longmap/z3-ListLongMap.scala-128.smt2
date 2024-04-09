; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2226 () Bool)

(assert start!2226)

(declare-fun b!14901 () Bool)

(assert (=> b!14901 true))

(declare-fun b!14894 () Bool)

(declare-fun e!8971 () Bool)

(declare-fun e!8966 () Bool)

(assert (=> b!14894 (= e!8971 e!8966)))

(declare-fun res!11418 () Bool)

(assert (=> b!14894 (=> res!11418 e!8966)))

(declare-datatypes ((B!568 0))(
  ( (B!569 (val!382 Int)) )
))
(declare-datatypes ((tuple2!546 0))(
  ( (tuple2!547 (_1!273 (_ BitVec 64)) (_2!273 B!568)) )
))
(declare-datatypes ((List!432 0))(
  ( (Nil!429) (Cons!428 (h!994 tuple2!546) (t!2834 List!432)) )
))
(declare-fun lt!3633 () List!432)

(declare-fun isStrictlySorted!123 (List!432) Bool)

(assert (=> b!14894 (= res!11418 (not (isStrictlySorted!123 lt!3633)))))

(declare-fun err!31 () List!432)

(assert (=> b!14894 (= lt!3633 err!31)))

(assert (=> b!14894 true))

(declare-fun e!8969 () Bool)

(assert (=> b!14894 e!8969))

(declare-fun b!14895 () Bool)

(declare-fun e!8968 () Bool)

(declare-fun e!8967 () Bool)

(assert (=> b!14895 (= e!8968 e!8967)))

(declare-fun res!11420 () Bool)

(declare-fun call!455 () Bool)

(assert (=> b!14895 (= res!11420 (not call!455))))

(assert (=> b!14895 (=> (not res!11420) (not e!8967))))

(declare-fun res!11419 () Bool)

(assert (=> start!2226 (=> (not res!11419) (not e!8971))))

(declare-fun l!522 () List!432)

(assert (=> start!2226 (= res!11419 (isStrictlySorted!123 l!522))))

(assert (=> start!2226 e!8971))

(declare-fun e!8970 () Bool)

(assert (=> start!2226 e!8970))

(declare-fun tp_is_empty!747 () Bool)

(assert (=> start!2226 tp_is_empty!747))

(declare-fun b!14896 () Bool)

(declare-fun res!11422 () Bool)

(assert (=> b!14896 (=> (not res!11422) (not e!8971))))

(declare-fun value!159 () B!568)

(get-info :version)

(assert (=> b!14896 (= res!11422 (and (or (not ((_ is Cons!428) l!522)) (not (= (_2!273 (h!994 l!522)) value!159))) (or (not ((_ is Cons!428) l!522)) (= (_2!273 (h!994 l!522)) value!159)) (not ((_ is Nil!429) l!522))))))

(declare-fun b!14897 () Bool)

(assert (=> b!14897 (= e!8968 (not call!455))))

(declare-fun b!14898 () Bool)

(declare-fun tp!2398 () Bool)

(assert (=> b!14898 (= e!8969 (and tp_is_empty!747 tp!2398))))

(declare-fun bm!452 () Bool)

(declare-fun isEmpty!109 (List!432) Bool)

(assert (=> bm!452 (= call!455 (isEmpty!109 lt!3633))))

(declare-fun b!14899 () Bool)

(declare-fun tp!2399 () Bool)

(assert (=> b!14899 (= e!8970 (and tp_is_empty!747 tp!2399))))

(declare-fun b!14900 () Bool)

(assert (=> b!14900 (= e!8966 e!8968)))

(declare-fun c!1406 () Bool)

(assert (=> b!14900 (= c!1406 (isEmpty!109 l!522))))

(declare-fun res!11421 () Bool)

(assert (=> b!14901 (=> res!11421 e!8966)))

(declare-fun lambda!188 () Int)

(declare-fun forall!102 (List!432 Int) Bool)

(assert (=> b!14901 (= res!11421 (not (forall!102 lt!3633 lambda!188)))))

(declare-fun b!14902 () Bool)

(declare-fun head!798 (List!432) tuple2!546)

(assert (=> b!14902 (= e!8967 (bvslt (_1!273 (head!798 lt!3633)) (_1!273 (head!798 l!522))))))

(assert (= (and start!2226 res!11419) b!14896))

(assert (= (and b!14896 res!11422) b!14894))

(assert (= (and b!14894 ((_ is Cons!428) err!31)) b!14898))

(assert (= (and b!14894 (not res!11418)) b!14901))

(assert (= (and b!14901 (not res!11421)) b!14900))

(assert (= (and b!14900 c!1406) b!14897))

(assert (= (and b!14900 (not c!1406)) b!14895))

(assert (= (and b!14895 res!11420) b!14902))

(assert (= (or b!14897 b!14895) bm!452))

(assert (= (and start!2226 ((_ is Cons!428) l!522)) b!14899))

(declare-fun m!9909 () Bool)

(assert (=> b!14901 m!9909))

(declare-fun m!9911 () Bool)

(assert (=> b!14902 m!9911))

(declare-fun m!9913 () Bool)

(assert (=> b!14902 m!9913))

(declare-fun m!9915 () Bool)

(assert (=> b!14894 m!9915))

(declare-fun m!9917 () Bool)

(assert (=> bm!452 m!9917))

(declare-fun m!9919 () Bool)

(assert (=> b!14900 m!9919))

(declare-fun m!9921 () Bool)

(assert (=> start!2226 m!9921))

(check-sat tp_is_empty!747 (not b!14901) (not b!14900) (not bm!452) (not b!14899) (not b!14898) (not b!14902) (not start!2226) (not b!14894))
(check-sat)
