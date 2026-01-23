; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!251216 () Bool)

(assert start!251216)

(declare-fun res!1090147 () Bool)

(declare-fun e!1635339 () Bool)

(assert (=> start!251216 (=> (not res!1090147) (not e!1635339))))

(declare-datatypes ((B!2053 0))(
  ( (B!2054 (val!9494 Int)) )
))
(declare-datatypes ((List!29927 0))(
  ( (Nil!29827) (Cons!29827 (h!35247 B!2053) (t!212940 List!29927)) )
))
(declare-fun l!3230 () List!29927)

(declare-fun noDuplicate!375 (List!29927) Bool)

(assert (=> start!251216 (= res!1090147 (noDuplicate!375 l!3230))))

(assert (=> start!251216 e!1635339))

(declare-fun e!1635338 () Bool)

(assert (=> start!251216 e!1635338))

(declare-fun b!2592187 () Bool)

(declare-fun res!1090146 () Bool)

(assert (=> b!2592187 (=> (not res!1090146) (not e!1635339))))

(get-info :version)

(assert (=> b!2592187 (= res!1090146 ((_ is Cons!29827) l!3230))))

(declare-fun b!2592188 () Bool)

(assert (=> b!2592188 (= e!1635339 (not (noDuplicate!375 (t!212940 l!3230))))))

(declare-fun b!2592189 () Bool)

(declare-fun tp_is_empty!13333 () Bool)

(declare-fun tp!822758 () Bool)

(assert (=> b!2592189 (= e!1635338 (and tp_is_empty!13333 tp!822758))))

(assert (= (and start!251216 res!1090147) b!2592187))

(assert (= (and b!2592187 res!1090146) b!2592188))

(assert (= (and start!251216 ((_ is Cons!29827) l!3230)) b!2592189))

(declare-fun m!2928309 () Bool)

(assert (=> start!251216 m!2928309))

(declare-fun m!2928311 () Bool)

(assert (=> b!2592188 m!2928311))

(check-sat (not start!251216) (not b!2592188) (not b!2592189) tp_is_empty!13333)
(check-sat)
(get-model)

(declare-fun d!734355 () Bool)

(declare-fun res!1090156 () Bool)

(declare-fun e!1635348 () Bool)

(assert (=> d!734355 (=> res!1090156 e!1635348)))

(assert (=> d!734355 (= res!1090156 ((_ is Nil!29827) l!3230))))

(assert (=> d!734355 (= (noDuplicate!375 l!3230) e!1635348)))

(declare-fun b!2592198 () Bool)

(declare-fun e!1635349 () Bool)

(assert (=> b!2592198 (= e!1635348 e!1635349)))

(declare-fun res!1090157 () Bool)

(assert (=> b!2592198 (=> (not res!1090157) (not e!1635349))))

(declare-fun contains!5376 (List!29927 B!2053) Bool)

(assert (=> b!2592198 (= res!1090157 (not (contains!5376 (t!212940 l!3230) (h!35247 l!3230))))))

(declare-fun b!2592199 () Bool)

(assert (=> b!2592199 (= e!1635349 (noDuplicate!375 (t!212940 l!3230)))))

(assert (= (and d!734355 (not res!1090156)) b!2592198))

(assert (= (and b!2592198 res!1090157) b!2592199))

(declare-fun m!2928313 () Bool)

(assert (=> b!2592198 m!2928313))

(assert (=> b!2592199 m!2928311))

(assert (=> start!251216 d!734355))

(declare-fun d!734357 () Bool)

(declare-fun res!1090158 () Bool)

(declare-fun e!1635350 () Bool)

(assert (=> d!734357 (=> res!1090158 e!1635350)))

(assert (=> d!734357 (= res!1090158 ((_ is Nil!29827) (t!212940 l!3230)))))

(assert (=> d!734357 (= (noDuplicate!375 (t!212940 l!3230)) e!1635350)))

(declare-fun b!2592200 () Bool)

(declare-fun e!1635351 () Bool)

(assert (=> b!2592200 (= e!1635350 e!1635351)))

(declare-fun res!1090159 () Bool)

(assert (=> b!2592200 (=> (not res!1090159) (not e!1635351))))

(assert (=> b!2592200 (= res!1090159 (not (contains!5376 (t!212940 (t!212940 l!3230)) (h!35247 (t!212940 l!3230)))))))

(declare-fun b!2592201 () Bool)

(assert (=> b!2592201 (= e!1635351 (noDuplicate!375 (t!212940 (t!212940 l!3230))))))

(assert (= (and d!734357 (not res!1090158)) b!2592200))

(assert (= (and b!2592200 res!1090159) b!2592201))

(declare-fun m!2928315 () Bool)

(assert (=> b!2592200 m!2928315))

(declare-fun m!2928317 () Bool)

(assert (=> b!2592201 m!2928317))

(assert (=> b!2592188 d!734357))

(declare-fun b!2592208 () Bool)

(declare-fun e!1635356 () Bool)

(declare-fun tp!822761 () Bool)

(assert (=> b!2592208 (= e!1635356 (and tp_is_empty!13333 tp!822761))))

(assert (=> b!2592189 (= tp!822758 e!1635356)))

(assert (= (and b!2592189 ((_ is Cons!29827) (t!212940 l!3230))) b!2592208))

(check-sat (not b!2592198) (not b!2592200) (not b!2592201) (not b!2592208) tp_is_empty!13333 (not b!2592199))
(check-sat)
