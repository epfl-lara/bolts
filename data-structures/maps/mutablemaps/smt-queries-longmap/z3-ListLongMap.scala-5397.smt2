; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72024 () Bool)

(assert start!72024)

(declare-fun res!569017 () Bool)

(declare-fun e!466522 () Bool)

(assert (=> start!72024 (=> (not res!569017) (not e!466522))))

(declare-datatypes ((B!1186 0))(
  ( (B!1187 (val!7675 Int)) )
))
(declare-datatypes ((tuple2!10228 0))(
  ( (tuple2!10229 (_1!5124 (_ BitVec 64)) (_2!5124 B!1186)) )
))
(declare-datatypes ((List!16034 0))(
  ( (Nil!16031) (Cons!16030 (h!17161 tuple2!10228) (t!22413 List!16034)) )
))
(declare-fun l!390 () List!16034)

(declare-fun isStrictlySorted!446 (List!16034) Bool)

(assert (=> start!72024 (= res!569017 (isStrictlySorted!446 l!390))))

(assert (=> start!72024 e!466522))

(declare-fun e!466523 () Bool)

(assert (=> start!72024 e!466523))

(declare-fun b!836167 () Bool)

(declare-fun ListPrimitiveSize!68 (List!16034) Int)

(assert (=> b!836167 (= e!466522 (< (ListPrimitiveSize!68 l!390) 0))))

(declare-fun b!836168 () Bool)

(declare-fun tp_is_empty!15255 () Bool)

(declare-fun tp!47426 () Bool)

(assert (=> b!836168 (= e!466523 (and tp_is_empty!15255 tp!47426))))

(assert (= (and start!72024 res!569017) b!836167))

(get-info :version)

(assert (= (and start!72024 ((_ is Cons!16030) l!390)) b!836168))

(declare-fun m!781613 () Bool)

(assert (=> start!72024 m!781613))

(declare-fun m!781615 () Bool)

(assert (=> b!836167 m!781615))

(check-sat (not b!836167) (not start!72024) (not b!836168) tp_is_empty!15255)
(check-sat)
(get-model)

(declare-fun d!107481 () Bool)

(declare-fun lt!380331 () Int)

(assert (=> d!107481 (>= lt!380331 0)))

(declare-fun e!466540 () Int)

(assert (=> d!107481 (= lt!380331 e!466540)))

(declare-fun c!90946 () Bool)

(assert (=> d!107481 (= c!90946 ((_ is Nil!16031) l!390))))

(assert (=> d!107481 (= (ListPrimitiveSize!68 l!390) lt!380331)))

(declare-fun b!836187 () Bool)

(assert (=> b!836187 (= e!466540 0)))

(declare-fun b!836188 () Bool)

(assert (=> b!836188 (= e!466540 (+ 1 (ListPrimitiveSize!68 (t!22413 l!390))))))

(assert (= (and d!107481 c!90946) b!836187))

(assert (= (and d!107481 (not c!90946)) b!836188))

(declare-fun m!781621 () Bool)

(assert (=> b!836188 m!781621))

(assert (=> b!836167 d!107481))

(declare-fun d!107487 () Bool)

(declare-fun res!569037 () Bool)

(declare-fun e!466553 () Bool)

(assert (=> d!107487 (=> res!569037 e!466553)))

(assert (=> d!107487 (= res!569037 (or ((_ is Nil!16031) l!390) ((_ is Nil!16031) (t!22413 l!390))))))

(assert (=> d!107487 (= (isStrictlySorted!446 l!390) e!466553)))

(declare-fun b!836205 () Bool)

(declare-fun e!466554 () Bool)

(assert (=> b!836205 (= e!466553 e!466554)))

(declare-fun res!569038 () Bool)

(assert (=> b!836205 (=> (not res!569038) (not e!466554))))

(assert (=> b!836205 (= res!569038 (bvslt (_1!5124 (h!17161 l!390)) (_1!5124 (h!17161 (t!22413 l!390)))))))

(declare-fun b!836206 () Bool)

(assert (=> b!836206 (= e!466554 (isStrictlySorted!446 (t!22413 l!390)))))

(assert (= (and d!107487 (not res!569037)) b!836205))

(assert (= (and b!836205 res!569038) b!836206))

(declare-fun m!781629 () Bool)

(assert (=> b!836206 m!781629))

(assert (=> start!72024 d!107487))

(declare-fun b!836224 () Bool)

(declare-fun e!466564 () Bool)

(declare-fun tp!47437 () Bool)

(assert (=> b!836224 (= e!466564 (and tp_is_empty!15255 tp!47437))))

(assert (=> b!836168 (= tp!47426 e!466564)))

(assert (= (and b!836168 ((_ is Cons!16030) (t!22413 l!390))) b!836224))

(check-sat (not b!836188) (not b!836206) (not b!836224) tp_is_empty!15255)
(check-sat)
