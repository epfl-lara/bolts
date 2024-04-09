; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2052 () Bool)

(assert start!2052)

(declare-fun res!10903 () Bool)

(declare-fun e!8292 () Bool)

(assert (=> start!2052 (=> (not res!10903) (not e!8292))))

(declare-datatypes ((B!526 0))(
  ( (B!527 (val!361 Int)) )
))
(declare-datatypes ((tuple2!504 0))(
  ( (tuple2!505 (_1!252 (_ BitVec 64)) (_2!252 B!526)) )
))
(declare-datatypes ((List!411 0))(
  ( (Nil!408) (Cons!407 (h!973 tuple2!504) (t!2807 List!411)) )
))
(declare-fun l!522 () List!411)

(declare-fun isStrictlySorted!102 (List!411) Bool)

(assert (=> start!2052 (= res!10903 (isStrictlySorted!102 l!522))))

(assert (=> start!2052 e!8292))

(declare-fun e!8293 () Bool)

(assert (=> start!2052 e!8293))

(declare-fun b!13921 () Bool)

(declare-fun ListPrimitiveSize!20 (List!411) Int)

(assert (=> b!13921 (= e!8292 (< (ListPrimitiveSize!20 l!522) 0))))

(declare-fun b!13922 () Bool)

(declare-fun tp_is_empty!705 () Bool)

(declare-fun tp!2270 () Bool)

(assert (=> b!13922 (= e!8293 (and tp_is_empty!705 tp!2270))))

(assert (= (and start!2052 res!10903) b!13921))

(get-info :version)

(assert (= (and start!2052 ((_ is Cons!407) l!522)) b!13922))

(declare-fun m!9335 () Bool)

(assert (=> start!2052 m!9335))

(declare-fun m!9337 () Bool)

(assert (=> b!13921 m!9337))

(check-sat (not start!2052) (not b!13921) (not b!13922) tp_is_empty!705)
(check-sat)
(get-model)

(declare-fun d!2063 () Bool)

(declare-fun res!10911 () Bool)

(declare-fun e!8309 () Bool)

(assert (=> d!2063 (=> res!10911 e!8309)))

(assert (=> d!2063 (= res!10911 (or ((_ is Nil!408) l!522) ((_ is Nil!408) (t!2807 l!522))))))

(assert (=> d!2063 (= (isStrictlySorted!102 l!522) e!8309)))

(declare-fun b!13943 () Bool)

(declare-fun e!8310 () Bool)

(assert (=> b!13943 (= e!8309 e!8310)))

(declare-fun res!10912 () Bool)

(assert (=> b!13943 (=> (not res!10912) (not e!8310))))

(assert (=> b!13943 (= res!10912 (bvslt (_1!252 (h!973 l!522)) (_1!252 (h!973 (t!2807 l!522)))))))

(declare-fun b!13944 () Bool)

(assert (=> b!13944 (= e!8310 (isStrictlySorted!102 (t!2807 l!522)))))

(assert (= (and d!2063 (not res!10911)) b!13943))

(assert (= (and b!13943 res!10912) b!13944))

(declare-fun m!9345 () Bool)

(assert (=> b!13944 m!9345))

(assert (=> start!2052 d!2063))

(declare-fun d!2071 () Bool)

(declare-fun lt!3561 () Int)

(assert (=> d!2071 (>= lt!3561 0)))

(declare-fun e!8322 () Int)

(assert (=> d!2071 (= lt!3561 e!8322)))

(declare-fun c!1277 () Bool)

(assert (=> d!2071 (= c!1277 ((_ is Nil!408) l!522))))

(assert (=> d!2071 (= (ListPrimitiveSize!20 l!522) lt!3561)))

(declare-fun b!13959 () Bool)

(assert (=> b!13959 (= e!8322 0)))

(declare-fun b!13960 () Bool)

(assert (=> b!13960 (= e!8322 (+ 1 (ListPrimitiveSize!20 (t!2807 l!522))))))

(assert (= (and d!2071 c!1277) b!13959))

(assert (= (and d!2071 (not c!1277)) b!13960))

(declare-fun m!9349 () Bool)

(assert (=> b!13960 m!9349))

(assert (=> b!13921 d!2071))

(declare-fun b!13978 () Bool)

(declare-fun e!8334 () Bool)

(declare-fun tp!2281 () Bool)

(assert (=> b!13978 (= e!8334 (and tp_is_empty!705 tp!2281))))

(assert (=> b!13922 (= tp!2270 e!8334)))

(assert (= (and b!13922 ((_ is Cons!407) (t!2807 l!522))) b!13978))

(check-sat (not b!13960) (not b!13944) (not b!13978) tp_is_empty!705)
(check-sat)
