; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!759572 () Bool)

(assert start!759572)

(declare-fun res!3188614 () Bool)

(declare-fun e!4749829 () Bool)

(assert (=> start!759572 (=> (not res!3188614) (not e!4749829))))

(declare-datatypes ((B!4529 0))(
  ( (B!4530 (val!33123 Int)) )
))
(declare-datatypes ((K!23063 0))(
  ( (K!23064 (val!33124 Int)) )
))
(declare-datatypes ((tuple2!71088 0))(
  ( (tuple2!71089 (_1!38847 K!23063) (_2!38847 B!4529)) )
))
(declare-datatypes ((List!75809 0))(
  ( (Nil!75683) (Cons!75683 (h!82131 tuple2!71088) (t!391581 List!75809)) )
))
(declare-datatypes ((ListMap!7451 0))(
  ( (ListMap!7452 (toList!12000 List!75809)) )
))
(declare-fun thiss!41813 () ListMap!7451)

(declare-fun key!1573 () K!23063)

(declare-fun containsKey!4953 (List!75809 K!23063) Bool)

(assert (=> start!759572 (= res!3188614 (containsKey!4953 (toList!12000 thiss!41813) key!1573))))

(assert (=> start!759572 e!4749829))

(declare-fun e!4749830 () Bool)

(declare-fun inv!97532 (ListMap!7451) Bool)

(assert (=> start!759572 (and (inv!97532 thiss!41813) e!4749830)))

(declare-fun tp_is_empty!55277 () Bool)

(assert (=> start!759572 tp_is_empty!55277))

(declare-fun b!8059834 () Bool)

(declare-fun invariantList!1988 (List!75809) Bool)

(assert (=> b!8059834 (= e!4749829 (not (invariantList!1988 (toList!12000 thiss!41813))))))

(declare-fun b!8059835 () Bool)

(declare-fun tp!2414454 () Bool)

(assert (=> b!8059835 (= e!4749830 tp!2414454)))

(assert (= (and start!759572 res!3188614) b!8059834))

(assert (= start!759572 b!8059835))

(declare-fun m!8412990 () Bool)

(assert (=> start!759572 m!8412990))

(declare-fun m!8412992 () Bool)

(assert (=> start!759572 m!8412992))

(declare-fun m!8412994 () Bool)

(assert (=> b!8059834 m!8412994))

(check-sat (not start!759572) (not b!8059834) (not b!8059835) tp_is_empty!55277)
(check-sat)
(get-model)

(declare-fun d!2399415 () Bool)

(declare-fun res!3188625 () Bool)

(declare-fun e!4749841 () Bool)

(assert (=> d!2399415 (=> res!3188625 e!4749841)))

(get-info :version)

(assert (=> d!2399415 (= res!3188625 (and ((_ is Cons!75683) (toList!12000 thiss!41813)) (= (_1!38847 (h!82131 (toList!12000 thiss!41813))) key!1573)))))

(assert (=> d!2399415 (= (containsKey!4953 (toList!12000 thiss!41813) key!1573) e!4749841)))

(declare-fun b!8059846 () Bool)

(declare-fun e!4749842 () Bool)

(assert (=> b!8059846 (= e!4749841 e!4749842)))

(declare-fun res!3188626 () Bool)

(assert (=> b!8059846 (=> (not res!3188626) (not e!4749842))))

(assert (=> b!8059846 (= res!3188626 ((_ is Cons!75683) (toList!12000 thiss!41813)))))

(declare-fun b!8059847 () Bool)

(assert (=> b!8059847 (= e!4749842 (containsKey!4953 (t!391581 (toList!12000 thiss!41813)) key!1573))))

(assert (= (and d!2399415 (not res!3188625)) b!8059846))

(assert (= (and b!8059846 res!3188626) b!8059847))

(declare-fun m!8412998 () Bool)

(assert (=> b!8059847 m!8412998))

(assert (=> start!759572 d!2399415))

(declare-fun d!2399419 () Bool)

(assert (=> d!2399419 (= (inv!97532 thiss!41813) (invariantList!1988 (toList!12000 thiss!41813)))))

(declare-fun bs!1973587 () Bool)

(assert (= bs!1973587 d!2399419))

(assert (=> bs!1973587 m!8412994))

(assert (=> start!759572 d!2399419))

(declare-fun d!2399423 () Bool)

(declare-fun noDuplicatedKeys!524 (List!75809) Bool)

(assert (=> d!2399423 (= (invariantList!1988 (toList!12000 thiss!41813)) (noDuplicatedKeys!524 (toList!12000 thiss!41813)))))

(declare-fun bs!1973588 () Bool)

(assert (= bs!1973588 d!2399423))

(declare-fun m!8413002 () Bool)

(assert (=> bs!1973588 m!8413002))

(assert (=> b!8059834 d!2399423))

(declare-fun e!4749848 () Bool)

(declare-fun tp!2414460 () Bool)

(declare-fun b!8059857 () Bool)

(declare-fun tp_is_empty!55281 () Bool)

(assert (=> b!8059857 (= e!4749848 (and tp_is_empty!55277 tp_is_empty!55281 tp!2414460))))

(assert (=> b!8059835 (= tp!2414454 e!4749848)))

(assert (= (and b!8059835 ((_ is Cons!75683) (toList!12000 thiss!41813))) b!8059857))

(check-sat (not b!8059857) (not b!8059847) (not d!2399423) tp_is_empty!55281 tp_is_empty!55277 (not d!2399419))
(check-sat)
