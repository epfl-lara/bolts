; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106458 () Bool)

(assert start!106458)

(declare-fun res!842622 () Bool)

(declare-fun e!720679 () Bool)

(assert (=> start!106458 (=> (not res!842622) (not e!720679))))

(declare-datatypes ((B!1972 0))(
  ( (B!1973 (val!16321 Int)) )
))
(declare-datatypes ((tuple2!21310 0))(
  ( (tuple2!21311 (_1!10665 (_ BitVec 64)) (_2!10665 B!1972)) )
))
(declare-datatypes ((List!28488 0))(
  ( (Nil!28485) (Cons!28484 (h!29693 tuple2!21310) (t!42016 List!28488)) )
))
(declare-fun l!706 () List!28488)

(declare-fun isStrictlySorted!784 (List!28488) Bool)

(assert (=> start!106458 (= res!842622 (isStrictlySorted!784 l!706))))

(assert (=> start!106458 e!720679))

(declare-fun e!720678 () Bool)

(assert (=> start!106458 e!720678))

(assert (=> start!106458 true))

(declare-fun b!1265427 () Bool)

(declare-fun res!842623 () Bool)

(assert (=> b!1265427 (=> (not res!842623) (not e!720679))))

(declare-fun key1!31 () (_ BitVec 64))

(declare-fun containsKey!645 (List!28488 (_ BitVec 64)) Bool)

(assert (=> b!1265427 (= res!842623 (not (containsKey!645 l!706 key1!31)))))

(declare-fun b!1265428 () Bool)

(declare-fun ListPrimitiveSize!152 (List!28488) Int)

(assert (=> b!1265428 (= e!720679 (< (ListPrimitiveSize!152 l!706) 0))))

(declare-fun b!1265429 () Bool)

(declare-fun tp_is_empty!32505 () Bool)

(declare-fun tp!96342 () Bool)

(assert (=> b!1265429 (= e!720678 (and tp_is_empty!32505 tp!96342))))

(assert (= (and start!106458 res!842622) b!1265427))

(assert (= (and b!1265427 res!842623) b!1265428))

(get-info :version)

(assert (= (and start!106458 ((_ is Cons!28484) l!706)) b!1265429))

(declare-fun m!1165599 () Bool)

(assert (=> start!106458 m!1165599))

(declare-fun m!1165601 () Bool)

(assert (=> b!1265427 m!1165601))

(declare-fun m!1165603 () Bool)

(assert (=> b!1265428 m!1165603))

(check-sat (not start!106458) (not b!1265429) (not b!1265427) (not b!1265428) tp_is_empty!32505)
(check-sat)
(get-model)

(declare-fun d!138847 () Bool)

(declare-fun lt!573989 () Int)

(assert (=> d!138847 (>= lt!573989 0)))

(declare-fun e!720696 () Int)

(assert (=> d!138847 (= lt!573989 e!720696)))

(declare-fun c!123265 () Bool)

(assert (=> d!138847 (= c!123265 ((_ is Nil!28485) l!706))))

(assert (=> d!138847 (= (ListPrimitiveSize!152 l!706) lt!573989)))

(declare-fun b!1265449 () Bool)

(assert (=> b!1265449 (= e!720696 0)))

(declare-fun b!1265450 () Bool)

(assert (=> b!1265450 (= e!720696 (+ 1 (ListPrimitiveSize!152 (t!42016 l!706))))))

(assert (= (and d!138847 c!123265) b!1265449))

(assert (= (and d!138847 (not c!123265)) b!1265450))

(declare-fun m!1165611 () Bool)

(assert (=> b!1265450 m!1165611))

(assert (=> b!1265428 d!138847))

(declare-fun d!138851 () Bool)

(declare-fun res!842650 () Bool)

(declare-fun e!720711 () Bool)

(assert (=> d!138851 (=> res!842650 e!720711)))

(assert (=> d!138851 (= res!842650 (or ((_ is Nil!28485) l!706) ((_ is Nil!28485) (t!42016 l!706))))))

(assert (=> d!138851 (= (isStrictlySorted!784 l!706) e!720711)))

(declare-fun b!1265469 () Bool)

(declare-fun e!720712 () Bool)

(assert (=> b!1265469 (= e!720711 e!720712)))

(declare-fun res!842651 () Bool)

(assert (=> b!1265469 (=> (not res!842651) (not e!720712))))

(assert (=> b!1265469 (= res!842651 (bvslt (_1!10665 (h!29693 l!706)) (_1!10665 (h!29693 (t!42016 l!706)))))))

(declare-fun b!1265470 () Bool)

(assert (=> b!1265470 (= e!720712 (isStrictlySorted!784 (t!42016 l!706)))))

(assert (= (and d!138851 (not res!842650)) b!1265469))

(assert (= (and b!1265469 res!842651) b!1265470))

(declare-fun m!1165617 () Bool)

(assert (=> b!1265470 m!1165617))

(assert (=> start!106458 d!138851))

(declare-fun d!138857 () Bool)

(declare-fun res!842662 () Bool)

(declare-fun e!720726 () Bool)

(assert (=> d!138857 (=> res!842662 e!720726)))

(assert (=> d!138857 (= res!842662 (and ((_ is Cons!28484) l!706) (= (_1!10665 (h!29693 l!706)) key1!31)))))

(assert (=> d!138857 (= (containsKey!645 l!706 key1!31) e!720726)))

(declare-fun b!1265487 () Bool)

(declare-fun e!720727 () Bool)

(assert (=> b!1265487 (= e!720726 e!720727)))

(declare-fun res!842663 () Bool)

(assert (=> b!1265487 (=> (not res!842663) (not e!720727))))

(assert (=> b!1265487 (= res!842663 (and (or (not ((_ is Cons!28484) l!706)) (bvsle (_1!10665 (h!29693 l!706)) key1!31)) ((_ is Cons!28484) l!706) (bvslt (_1!10665 (h!29693 l!706)) key1!31)))))

(declare-fun b!1265488 () Bool)

(assert (=> b!1265488 (= e!720727 (containsKey!645 (t!42016 l!706) key1!31))))

(assert (= (and d!138857 (not res!842662)) b!1265487))

(assert (= (and b!1265487 res!842663) b!1265488))

(declare-fun m!1165623 () Bool)

(assert (=> b!1265488 m!1165623))

(assert (=> b!1265427 d!138857))

(declare-fun b!1265505 () Bool)

(declare-fun e!720737 () Bool)

(declare-fun tp!96352 () Bool)

(assert (=> b!1265505 (= e!720737 (and tp_is_empty!32505 tp!96352))))

(assert (=> b!1265429 (= tp!96342 e!720737)))

(assert (= (and b!1265429 ((_ is Cons!28484) (t!42016 l!706))) b!1265505))

(check-sat (not b!1265488) (not b!1265470) tp_is_empty!32505 (not b!1265505) (not b!1265450))
(check-sat)
