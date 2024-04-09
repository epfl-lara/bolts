; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103682 () Bool)

(assert start!103682)

(declare-fun res!828163 () Bool)

(declare-fun e!703658 () Bool)

(assert (=> start!103682 (=> (not res!828163) (not e!703658))))

(declare-fun key1!25 () (_ BitVec 64))

(declare-fun key2!15 () (_ BitVec 64))

(assert (=> start!103682 (= res!828163 (not (= key1!25 key2!15)))))

(assert (=> start!103682 e!703658))

(assert (=> start!103682 true))

(declare-fun e!703657 () Bool)

(assert (=> start!103682 e!703657))

(declare-fun b!1241382 () Bool)

(declare-fun res!828161 () Bool)

(assert (=> b!1241382 (=> (not res!828161) (not e!703658))))

(declare-datatypes ((B!1846 0))(
  ( (B!1847 (val!15685 Int)) )
))
(declare-datatypes ((tuple2!20398 0))(
  ( (tuple2!20399 (_1!10209 (_ BitVec 64)) (_2!10209 B!1846)) )
))
(declare-datatypes ((List!27514 0))(
  ( (Nil!27511) (Cons!27510 (h!28719 tuple2!20398) (t!40984 List!27514)) )
))
(declare-fun l!644 () List!27514)

(declare-fun isStrictlySorted!745 (List!27514) Bool)

(assert (=> b!1241382 (= res!828161 (isStrictlySorted!745 l!644))))

(declare-fun b!1241385 () Bool)

(declare-fun tp_is_empty!31245 () Bool)

(declare-fun tp!92640 () Bool)

(assert (=> b!1241385 (= e!703657 (and tp_is_empty!31245 tp!92640))))

(declare-fun b!1241383 () Bool)

(declare-fun res!828162 () Bool)

(assert (=> b!1241383 (=> (not res!828162) (not e!703658))))

(get-info :version)

(assert (=> b!1241383 (= res!828162 (not ((_ is Cons!27510) l!644)))))

(declare-fun b!1241384 () Bool)

(declare-fun removeStrictlySorted!129 (List!27514 (_ BitVec 64)) List!27514)

(assert (=> b!1241384 (= e!703658 (not (isStrictlySorted!745 (removeStrictlySorted!129 l!644 key2!15))))))

(assert (= (and start!103682 res!828163) b!1241382))

(assert (= (and b!1241382 res!828161) b!1241383))

(assert (= (and b!1241383 res!828162) b!1241384))

(assert (= (and start!103682 ((_ is Cons!27510) l!644)) b!1241385))

(declare-fun m!1144493 () Bool)

(assert (=> b!1241382 m!1144493))

(declare-fun m!1144495 () Bool)

(assert (=> b!1241384 m!1144495))

(assert (=> b!1241384 m!1144495))

(declare-fun m!1144497 () Bool)

(assert (=> b!1241384 m!1144497))

(check-sat (not b!1241384) (not b!1241382) (not b!1241385) tp_is_empty!31245)
(check-sat)
(get-model)

(declare-fun d!136399 () Bool)

(declare-fun res!828185 () Bool)

(declare-fun e!703677 () Bool)

(assert (=> d!136399 (=> res!828185 e!703677)))

(assert (=> d!136399 (= res!828185 (or ((_ is Nil!27511) (removeStrictlySorted!129 l!644 key2!15)) ((_ is Nil!27511) (t!40984 (removeStrictlySorted!129 l!644 key2!15)))))))

(assert (=> d!136399 (= (isStrictlySorted!745 (removeStrictlySorted!129 l!644 key2!15)) e!703677)))

(declare-fun b!1241410 () Bool)

(declare-fun e!703680 () Bool)

(assert (=> b!1241410 (= e!703677 e!703680)))

(declare-fun res!828187 () Bool)

(assert (=> b!1241410 (=> (not res!828187) (not e!703680))))

(assert (=> b!1241410 (= res!828187 (bvslt (_1!10209 (h!28719 (removeStrictlySorted!129 l!644 key2!15))) (_1!10209 (h!28719 (t!40984 (removeStrictlySorted!129 l!644 key2!15))))))))

(declare-fun b!1241411 () Bool)

(assert (=> b!1241411 (= e!703680 (isStrictlySorted!745 (t!40984 (removeStrictlySorted!129 l!644 key2!15))))))

(assert (= (and d!136399 (not res!828185)) b!1241410))

(assert (= (and b!1241410 res!828187) b!1241411))

(declare-fun m!1144507 () Bool)

(assert (=> b!1241411 m!1144507))

(assert (=> b!1241384 d!136399))

(declare-fun b!1241448 () Bool)

(declare-fun e!703705 () List!27514)

(declare-fun $colon$colon!623 (List!27514 tuple2!20398) List!27514)

(assert (=> b!1241448 (= e!703705 ($colon$colon!623 (removeStrictlySorted!129 (t!40984 l!644) key2!15) (h!28719 l!644)))))

(declare-fun b!1241449 () Bool)

(assert (=> b!1241449 (= e!703705 Nil!27511)))

(declare-fun b!1241450 () Bool)

(declare-fun e!703704 () List!27514)

(assert (=> b!1241450 (= e!703704 e!703705)))

(declare-fun c!121404 () Bool)

(assert (=> b!1241450 (= c!121404 (and ((_ is Cons!27510) l!644) (not (= (_1!10209 (h!28719 l!644)) key2!15))))))

(declare-fun d!136405 () Bool)

(declare-fun e!703703 () Bool)

(assert (=> d!136405 e!703703))

(declare-fun res!828199 () Bool)

(assert (=> d!136405 (=> (not res!828199) (not e!703703))))

(declare-fun lt!562085 () List!27514)

(assert (=> d!136405 (= res!828199 (isStrictlySorted!745 lt!562085))))

(assert (=> d!136405 (= lt!562085 e!703704)))

(declare-fun c!121403 () Bool)

(assert (=> d!136405 (= c!121403 (and ((_ is Cons!27510) l!644) (= (_1!10209 (h!28719 l!644)) key2!15)))))

(assert (=> d!136405 (isStrictlySorted!745 l!644)))

(assert (=> d!136405 (= (removeStrictlySorted!129 l!644 key2!15) lt!562085)))

(declare-fun b!1241451 () Bool)

(declare-fun containsKey!607 (List!27514 (_ BitVec 64)) Bool)

(assert (=> b!1241451 (= e!703703 (not (containsKey!607 lt!562085 key2!15)))))

(declare-fun b!1241452 () Bool)

(assert (=> b!1241452 (= e!703704 (t!40984 l!644))))

(assert (= (and d!136405 c!121403) b!1241452))

(assert (= (and d!136405 (not c!121403)) b!1241450))

(assert (= (and b!1241450 c!121404) b!1241448))

(assert (= (and b!1241450 (not c!121404)) b!1241449))

(assert (= (and d!136405 res!828199) b!1241451))

(declare-fun m!1144513 () Bool)

(assert (=> b!1241448 m!1144513))

(assert (=> b!1241448 m!1144513))

(declare-fun m!1144515 () Bool)

(assert (=> b!1241448 m!1144515))

(declare-fun m!1144519 () Bool)

(assert (=> d!136405 m!1144519))

(assert (=> d!136405 m!1144493))

(declare-fun m!1144521 () Bool)

(assert (=> b!1241451 m!1144521))

(assert (=> b!1241384 d!136405))

(declare-fun d!136411 () Bool)

(declare-fun res!828201 () Bool)

(declare-fun e!703709 () Bool)

(assert (=> d!136411 (=> res!828201 e!703709)))

(assert (=> d!136411 (= res!828201 (or ((_ is Nil!27511) l!644) ((_ is Nil!27511) (t!40984 l!644))))))

(assert (=> d!136411 (= (isStrictlySorted!745 l!644) e!703709)))

(declare-fun b!1241458 () Bool)

(declare-fun e!703710 () Bool)

(assert (=> b!1241458 (= e!703709 e!703710)))

(declare-fun res!828202 () Bool)

(assert (=> b!1241458 (=> (not res!828202) (not e!703710))))

(assert (=> b!1241458 (= res!828202 (bvslt (_1!10209 (h!28719 l!644)) (_1!10209 (h!28719 (t!40984 l!644)))))))

(declare-fun b!1241459 () Bool)

(assert (=> b!1241459 (= e!703710 (isStrictlySorted!745 (t!40984 l!644)))))

(assert (= (and d!136411 (not res!828201)) b!1241458))

(assert (= (and b!1241458 res!828202) b!1241459))

(declare-fun m!1144529 () Bool)

(assert (=> b!1241459 m!1144529))

(assert (=> b!1241382 d!136411))

(declare-fun b!1241476 () Bool)

(declare-fun e!703721 () Bool)

(declare-fun tp!92649 () Bool)

(assert (=> b!1241476 (= e!703721 (and tp_is_empty!31245 tp!92649))))

(assert (=> b!1241385 (= tp!92640 e!703721)))

(assert (= (and b!1241385 ((_ is Cons!27510) (t!40984 l!644))) b!1241476))

(check-sat (not b!1241476) (not b!1241448) tp_is_empty!31245 (not b!1241411) (not b!1241459) (not d!136405) (not b!1241451))
(check-sat)
