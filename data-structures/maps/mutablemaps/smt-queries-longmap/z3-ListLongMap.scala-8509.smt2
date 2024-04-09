; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103760 () Bool)

(assert start!103760)

(declare-fun b!1241843 () Bool)

(declare-fun res!828384 () Bool)

(declare-fun e!703955 () Bool)

(assert (=> b!1241843 (=> (not res!828384) (not e!703955))))

(declare-datatypes ((B!1882 0))(
  ( (B!1883 (val!15703 Int)) )
))
(declare-datatypes ((tuple2!20434 0))(
  ( (tuple2!20435 (_1!10227 (_ BitVec 64)) (_2!10227 B!1882)) )
))
(declare-datatypes ((List!27532 0))(
  ( (Nil!27529) (Cons!27528 (h!28737 tuple2!20434) (t!41002 List!27532)) )
))
(declare-fun l!644 () List!27532)

(get-info :version)

(assert (=> b!1241843 (= res!828384 ((_ is Cons!27528) l!644))))

(declare-fun b!1241844 () Bool)

(declare-fun res!828383 () Bool)

(assert (=> b!1241844 (=> (not res!828383) (not e!703955))))

(declare-fun isStrictlySorted!757 (List!27532) Bool)

(assert (=> b!1241844 (= res!828383 (isStrictlySorted!757 (t!41002 l!644)))))

(declare-fun b!1241845 () Bool)

(declare-fun res!828385 () Bool)

(assert (=> b!1241845 (=> (not res!828385) (not e!703955))))

(assert (=> b!1241845 (= res!828385 (isStrictlySorted!757 l!644))))

(declare-fun b!1241846 () Bool)

(declare-fun ListPrimitiveSize!149 (List!27532) Int)

(assert (=> b!1241846 (= e!703955 (>= (ListPrimitiveSize!149 (t!41002 l!644)) (ListPrimitiveSize!149 l!644)))))

(declare-fun b!1241847 () Bool)

(declare-fun e!703954 () Bool)

(declare-fun tp_is_empty!31281 () Bool)

(declare-fun tp!92730 () Bool)

(assert (=> b!1241847 (= e!703954 (and tp_is_empty!31281 tp!92730))))

(declare-fun res!828382 () Bool)

(assert (=> start!103760 (=> (not res!828382) (not e!703955))))

(declare-fun key1!25 () (_ BitVec 64))

(declare-fun key2!15 () (_ BitVec 64))

(assert (=> start!103760 (= res!828382 (not (= key1!25 key2!15)))))

(assert (=> start!103760 e!703955))

(assert (=> start!103760 true))

(assert (=> start!103760 e!703954))

(assert (= (and start!103760 res!828382) b!1241845))

(assert (= (and b!1241845 res!828385) b!1241843))

(assert (= (and b!1241843 res!828384) b!1241844))

(assert (= (and b!1241844 res!828383) b!1241846))

(assert (= (and start!103760 ((_ is Cons!27528) l!644)) b!1241847))

(declare-fun m!1144651 () Bool)

(assert (=> b!1241844 m!1144651))

(declare-fun m!1144653 () Bool)

(assert (=> b!1241845 m!1144653))

(declare-fun m!1144655 () Bool)

(assert (=> b!1241846 m!1144655))

(declare-fun m!1144657 () Bool)

(assert (=> b!1241846 m!1144657))

(check-sat (not b!1241846) (not b!1241845) tp_is_empty!31281 (not b!1241847) (not b!1241844))
(check-sat)
(get-model)

(declare-fun d!136469 () Bool)

(declare-fun res!828406 () Bool)

(declare-fun e!703974 () Bool)

(assert (=> d!136469 (=> res!828406 e!703974)))

(assert (=> d!136469 (= res!828406 (or ((_ is Nil!27529) (t!41002 l!644)) ((_ is Nil!27529) (t!41002 (t!41002 l!644)))))))

(assert (=> d!136469 (= (isStrictlySorted!757 (t!41002 l!644)) e!703974)))

(declare-fun b!1241879 () Bool)

(declare-fun e!703975 () Bool)

(assert (=> b!1241879 (= e!703974 e!703975)))

(declare-fun res!828407 () Bool)

(assert (=> b!1241879 (=> (not res!828407) (not e!703975))))

(assert (=> b!1241879 (= res!828407 (bvslt (_1!10227 (h!28737 (t!41002 l!644))) (_1!10227 (h!28737 (t!41002 (t!41002 l!644))))))))

(declare-fun b!1241880 () Bool)

(assert (=> b!1241880 (= e!703975 (isStrictlySorted!757 (t!41002 (t!41002 l!644))))))

(assert (= (and d!136469 (not res!828406)) b!1241879))

(assert (= (and b!1241879 res!828407) b!1241880))

(declare-fun m!1144669 () Bool)

(assert (=> b!1241880 m!1144669))

(assert (=> b!1241844 d!136469))

(declare-fun d!136479 () Bool)

(declare-fun res!828410 () Bool)

(declare-fun e!703978 () Bool)

(assert (=> d!136479 (=> res!828410 e!703978)))

(assert (=> d!136479 (= res!828410 (or ((_ is Nil!27529) l!644) ((_ is Nil!27529) (t!41002 l!644))))))

(assert (=> d!136479 (= (isStrictlySorted!757 l!644) e!703978)))

(declare-fun b!1241883 () Bool)

(declare-fun e!703979 () Bool)

(assert (=> b!1241883 (= e!703978 e!703979)))

(declare-fun res!828411 () Bool)

(assert (=> b!1241883 (=> (not res!828411) (not e!703979))))

(assert (=> b!1241883 (= res!828411 (bvslt (_1!10227 (h!28737 l!644)) (_1!10227 (h!28737 (t!41002 l!644)))))))

(declare-fun b!1241884 () Bool)

(assert (=> b!1241884 (= e!703979 (isStrictlySorted!757 (t!41002 l!644)))))

(assert (= (and d!136479 (not res!828410)) b!1241883))

(assert (= (and b!1241883 res!828411) b!1241884))

(assert (=> b!1241884 m!1144651))

(assert (=> b!1241845 d!136479))

(declare-fun d!136483 () Bool)

(declare-fun lt!562114 () Int)

(assert (=> d!136483 (>= lt!562114 0)))

(declare-fun e!703997 () Int)

(assert (=> d!136483 (= lt!562114 e!703997)))

(declare-fun c!121462 () Bool)

(assert (=> d!136483 (= c!121462 ((_ is Nil!27529) (t!41002 l!644)))))

(assert (=> d!136483 (= (ListPrimitiveSize!149 (t!41002 l!644)) lt!562114)))

(declare-fun b!1241908 () Bool)

(assert (=> b!1241908 (= e!703997 0)))

(declare-fun b!1241909 () Bool)

(assert (=> b!1241909 (= e!703997 (+ 1 (ListPrimitiveSize!149 (t!41002 (t!41002 l!644)))))))

(assert (= (and d!136483 c!121462) b!1241908))

(assert (= (and d!136483 (not c!121462)) b!1241909))

(declare-fun m!1144675 () Bool)

(assert (=> b!1241909 m!1144675))

(assert (=> b!1241846 d!136483))

(declare-fun d!136489 () Bool)

(declare-fun lt!562116 () Int)

(assert (=> d!136489 (>= lt!562116 0)))

(declare-fun e!703999 () Int)

(assert (=> d!136489 (= lt!562116 e!703999)))

(declare-fun c!121464 () Bool)

(assert (=> d!136489 (= c!121464 ((_ is Nil!27529) l!644))))

(assert (=> d!136489 (= (ListPrimitiveSize!149 l!644) lt!562116)))

(declare-fun b!1241912 () Bool)

(assert (=> b!1241912 (= e!703999 0)))

(declare-fun b!1241913 () Bool)

(assert (=> b!1241913 (= e!703999 (+ 1 (ListPrimitiveSize!149 (t!41002 l!644))))))

(assert (= (and d!136489 c!121464) b!1241912))

(assert (= (and d!136489 (not c!121464)) b!1241913))

(assert (=> b!1241913 m!1144655))

(assert (=> b!1241846 d!136489))

(declare-fun b!1241924 () Bool)

(declare-fun e!704005 () Bool)

(declare-fun tp!92741 () Bool)

(assert (=> b!1241924 (= e!704005 (and tp_is_empty!31281 tp!92741))))

(assert (=> b!1241847 (= tp!92730 e!704005)))

(assert (= (and b!1241847 ((_ is Cons!27528) (t!41002 l!644))) b!1241924))

(check-sat (not b!1241880) (not b!1241909) (not b!1241924) tp_is_empty!31281 (not b!1241884) (not b!1241913))
(check-sat)
