; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!506252 () Bool)

(assert start!506252)

(declare-fun res!2070679 () Bool)

(declare-fun e!3032691 () Bool)

(assert (=> start!506252 (=> (not res!2070679) (not e!3032691))))

(declare-datatypes ((K!17414 0))(
  ( (K!17415 (val!22237 Int)) )
))
(declare-datatypes ((V!17660 0))(
  ( (V!17661 (val!22238 Int)) )
))
(declare-datatypes ((tuple2!59344 0))(
  ( (tuple2!59345 (_1!32966 K!17414) (_2!32966 V!17660)) )
))
(declare-datatypes ((List!55729 0))(
  ( (Nil!55605) (Cons!55605 (h!62042 tuple2!59344) (t!363225 List!55729)) )
))
(declare-fun l!15167 () List!55729)

(declare-fun noDuplicateKeys!2606 (List!55729) Bool)

(assert (=> start!506252 (= res!2070679 (noDuplicateKeys!2606 l!15167))))

(assert (=> start!506252 e!3032691))

(declare-fun e!3032692 () Bool)

(assert (=> start!506252 e!3032692))

(declare-fun tp_is_empty!35265 () Bool)

(assert (=> start!506252 tp_is_empty!35265))

(declare-fun b!4851223 () Bool)

(declare-fun res!2070681 () Bool)

(assert (=> b!4851223 (=> (not res!2070681) (not e!3032691))))

(declare-fun key!6935 () K!17414)

(declare-datatypes ((Option!13711 0))(
  ( (None!13710) (Some!13710 (v!49504 tuple2!59344)) )
))
(declare-fun isDefined!10801 (Option!13711) Bool)

(declare-fun getPair!1114 (List!55729 K!17414) Option!13711)

(assert (=> b!4851223 (= res!2070681 (isDefined!10801 (getPair!1114 l!15167 key!6935)))))

(declare-fun b!4851224 () Bool)

(declare-fun res!2070678 () Bool)

(assert (=> b!4851224 (=> (not res!2070678) (not e!3032691))))

(assert (=> b!4851224 (= res!2070678 (noDuplicateKeys!2606 (t!363225 l!15167)))))

(declare-fun b!4851225 () Bool)

(assert (=> b!4851225 (= e!3032691 false)))

(declare-fun lt!1990040 () Option!13711)

(assert (=> b!4851225 (= lt!1990040 (getPair!1114 (t!363225 l!15167) key!6935))))

(declare-fun tp!1364884 () Bool)

(declare-fun b!4851226 () Bool)

(declare-fun tp_is_empty!35267 () Bool)

(assert (=> b!4851226 (= e!3032692 (and tp_is_empty!35265 tp_is_empty!35267 tp!1364884))))

(declare-fun b!4851227 () Bool)

(declare-fun res!2070680 () Bool)

(assert (=> b!4851227 (=> (not res!2070680) (not e!3032691))))

(get-info :version)

(assert (=> b!4851227 (= res!2070680 (and (or (not ((_ is Cons!55605) l!15167)) (not (= (_1!32966 (h!62042 l!15167)) key!6935))) ((_ is Cons!55605) l!15167)))))

(assert (= (and start!506252 res!2070679) b!4851223))

(assert (= (and b!4851223 res!2070681) b!4851227))

(assert (= (and b!4851227 res!2070680) b!4851224))

(assert (= (and b!4851224 res!2070678) b!4851225))

(assert (= (and start!506252 ((_ is Cons!55605) l!15167)) b!4851226))

(declare-fun m!5849838 () Bool)

(assert (=> start!506252 m!5849838))

(declare-fun m!5849840 () Bool)

(assert (=> b!4851223 m!5849840))

(assert (=> b!4851223 m!5849840))

(declare-fun m!5849842 () Bool)

(assert (=> b!4851223 m!5849842))

(declare-fun m!5849844 () Bool)

(assert (=> b!4851224 m!5849844))

(declare-fun m!5849846 () Bool)

(assert (=> b!4851225 m!5849846))

(check-sat tp_is_empty!35265 (not b!4851226) (not b!4851223) tp_is_empty!35267 (not start!506252) (not b!4851225) (not b!4851224))
(check-sat)
