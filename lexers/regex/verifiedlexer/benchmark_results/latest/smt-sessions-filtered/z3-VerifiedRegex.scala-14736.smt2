; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!758536 () Bool)

(assert start!758536)

(declare-fun b!8053430 () Bool)

(declare-fun e!4745537 () Bool)

(declare-fun e!4745544 () Bool)

(assert (=> b!8053430 (= e!4745537 e!4745544)))

(declare-fun res!3184788 () Bool)

(assert (=> b!8053430 (=> (not res!3184788) (not e!4745544))))

(declare-datatypes ((K!22813 0))(
  ( (K!22814 (val!32923 Int)) )
))
(declare-datatypes ((V!23067 0))(
  ( (V!23068 (val!32924 Int)) )
))
(declare-datatypes ((tuple2!70888 0))(
  ( (tuple2!70889 (_1!38747 K!22813) (_2!38747 V!23067)) )
))
(declare-datatypes ((List!75672 0))(
  ( (Nil!75546) (Cons!75546 (h!81994 tuple2!70888) (t!391444 List!75672)) )
))
(declare-fun l!14636 () List!75672)

(declare-fun key!6222 () K!22813)

(declare-fun containsKey!4853 (List!75672 K!22813) Bool)

(assert (=> b!8053430 (= res!3184788 (containsKey!4853 l!14636 key!6222))))

(declare-fun res!3184792 () Bool)

(declare-fun e!4745540 () Bool)

(assert (=> start!758536 (=> (not res!3184792) (not e!4745540))))

(declare-fun noDuplicateKeys!2706 (List!75672) Bool)

(assert (=> start!758536 (= res!3184792 (noDuplicateKeys!2706 l!14636))))

(assert (=> start!758536 e!4745540))

(declare-fun e!4745539 () Bool)

(assert (=> start!758536 e!4745539))

(declare-datatypes ((ListMap!7291 0))(
  ( (ListMap!7292 (toList!11920 List!75672)) )
))
(declare-fun acc!1298 () ListMap!7291)

(declare-fun e!4745543 () Bool)

(declare-fun inv!97302 (ListMap!7291) Bool)

(assert (=> start!758536 (and (inv!97302 acc!1298) e!4745543)))

(declare-fun tp_is_empty!54899 () Bool)

(assert (=> start!758536 tp_is_empty!54899))

(declare-fun tp_is_empty!54901 () Bool)

(assert (=> start!758536 tp_is_empty!54901))

(declare-fun b!8053431 () Bool)

(declare-fun res!3184793 () Bool)

(assert (=> b!8053431 (=> (not res!3184793) (not e!4745540))))

(declare-fun contains!21209 (ListMap!7291 K!22813) Bool)

(declare-fun addToMapMapFromBucket!1987 (List!75672 ListMap!7291) ListMap!7291)

(assert (=> b!8053431 (= res!3184793 (contains!21209 (addToMapMapFromBucket!1987 l!14636 acc!1298) key!6222))))

(declare-fun b!8053432 () Bool)

(declare-fun e!4745542 () Bool)

(declare-fun e!4745541 () Bool)

(assert (=> b!8053432 (= e!4745542 e!4745541)))

(declare-fun res!3184797 () Bool)

(assert (=> b!8053432 (=> (not res!3184797) (not e!4745541))))

(declare-fun lt!2727182 () Bool)

(assert (=> b!8053432 (= res!3184797 (and (not (= (_1!38747 (h!81994 l!14636)) key!6222)) (not lt!2727182)))))

(declare-fun lt!2727181 () ListMap!7291)

(declare-fun lt!2727179 () ListMap!7291)

(assert (=> b!8053432 (= lt!2727181 (addToMapMapFromBucket!1987 (t!391444 l!14636) lt!2727179))))

(declare-fun +!2671 (ListMap!7291 tuple2!70888) ListMap!7291)

(assert (=> b!8053432 (= lt!2727179 (+!2671 acc!1298 (h!81994 l!14636)))))

(declare-fun b!8053433 () Bool)

(assert (=> b!8053433 (= e!4745540 e!4745542)))

(declare-fun res!3184790 () Bool)

(assert (=> b!8053433 (=> (not res!3184790) (not e!4745542))))

(assert (=> b!8053433 (= res!3184790 e!4745537)))

(declare-fun res!3184789 () Bool)

(assert (=> b!8053433 (=> res!3184789 e!4745537)))

(declare-fun e!4745538 () Bool)

(assert (=> b!8053433 (= res!3184789 e!4745538)))

(declare-fun res!3184795 () Bool)

(assert (=> b!8053433 (=> (not res!3184795) (not e!4745538))))

(assert (=> b!8053433 (= res!3184795 (not lt!2727182))))

(declare-fun lt!2727180 () Bool)

(assert (=> b!8053433 (= lt!2727182 (not lt!2727180))))

(assert (=> b!8053433 (= lt!2727180 (contains!21209 acc!1298 key!6222))))

(declare-fun b!8053434 () Bool)

(declare-fun res!3184794 () Bool)

(assert (=> b!8053434 (=> (not res!3184794) (not e!4745544))))

(declare-fun value!3131 () V!23067)

(declare-fun contains!21210 (List!75672 tuple2!70888) Bool)

(assert (=> b!8053434 (= res!3184794 (contains!21210 l!14636 (tuple2!70889 key!6222 value!3131)))))

(declare-fun b!8053435 () Bool)

(declare-fun res!3184796 () Bool)

(assert (=> b!8053435 (=> (not res!3184796) (not e!4745538))))

(declare-fun apply!14433 (ListMap!7291 K!22813) V!23067)

(assert (=> b!8053435 (= res!3184796 (= (apply!14433 acc!1298 key!6222) value!3131))))

(declare-fun b!8053436 () Bool)

(declare-fun tp!2413744 () Bool)

(assert (=> b!8053436 (= e!4745543 tp!2413744)))

(declare-fun b!8053437 () Bool)

(declare-fun tp!2413745 () Bool)

(assert (=> b!8053437 (= e!4745539 (and tp_is_empty!54899 tp_is_empty!54901 tp!2413745))))

(declare-fun b!8053438 () Bool)

(assert (=> b!8053438 (= e!4745544 (not lt!2727180))))

(declare-fun b!8053439 () Bool)

(assert (=> b!8053439 (= e!4745538 (not (containsKey!4853 l!14636 key!6222)))))

(declare-fun b!8053440 () Bool)

(assert (=> b!8053440 (= e!4745541 (not (not (= key!6222 (_1!38747 (h!81994 l!14636))))))))

(assert (=> b!8053440 (contains!21209 lt!2727179 key!6222)))

(declare-datatypes ((Unit!171919 0))(
  ( (Unit!171920) )
))
(declare-fun lt!2727178 () Unit!171919)

(declare-fun addStillContains!39 (ListMap!7291 K!22813 V!23067 K!22813) Unit!171919)

(assert (=> b!8053440 (= lt!2727178 (addStillContains!39 acc!1298 (_1!38747 (h!81994 l!14636)) (_2!38747 (h!81994 l!14636)) key!6222))))

(declare-fun b!8053441 () Bool)

(declare-fun res!3184791 () Bool)

(assert (=> b!8053441 (=> (not res!3184791) (not e!4745542))))

(get-info :version)

(assert (=> b!8053441 (= res!3184791 (not ((_ is Nil!75546) l!14636)))))

(assert (= (and start!758536 res!3184792) b!8053431))

(assert (= (and b!8053431 res!3184793) b!8053433))

(assert (= (and b!8053433 res!3184795) b!8053435))

(assert (= (and b!8053435 res!3184796) b!8053439))

(assert (= (and b!8053433 (not res!3184789)) b!8053430))

(assert (= (and b!8053430 res!3184788) b!8053434))

(assert (= (and b!8053434 res!3184794) b!8053438))

(assert (= (and b!8053433 res!3184790) b!8053441))

(assert (= (and b!8053441 res!3184791) b!8053432))

(assert (= (and b!8053432 res!3184797) b!8053440))

(assert (= (and start!758536 ((_ is Cons!75546) l!14636)) b!8053437))

(assert (= start!758536 b!8053436))

(declare-fun m!8405542 () Bool)

(assert (=> b!8053435 m!8405542))

(declare-fun m!8405544 () Bool)

(assert (=> b!8053440 m!8405544))

(declare-fun m!8405546 () Bool)

(assert (=> b!8053440 m!8405546))

(declare-fun m!8405548 () Bool)

(assert (=> b!8053432 m!8405548))

(declare-fun m!8405550 () Bool)

(assert (=> b!8053432 m!8405550))

(declare-fun m!8405552 () Bool)

(assert (=> start!758536 m!8405552))

(declare-fun m!8405554 () Bool)

(assert (=> start!758536 m!8405554))

(declare-fun m!8405556 () Bool)

(assert (=> b!8053433 m!8405556))

(declare-fun m!8405558 () Bool)

(assert (=> b!8053430 m!8405558))

(declare-fun m!8405560 () Bool)

(assert (=> b!8053434 m!8405560))

(assert (=> b!8053439 m!8405558))

(declare-fun m!8405562 () Bool)

(assert (=> b!8053431 m!8405562))

(assert (=> b!8053431 m!8405562))

(declare-fun m!8405564 () Bool)

(assert (=> b!8053431 m!8405564))

(check-sat (not start!758536) (not b!8053431) (not b!8053435) (not b!8053430) (not b!8053432) (not b!8053436) (not b!8053439) (not b!8053434) (not b!8053437) (not b!8053440) (not b!8053433) tp_is_empty!54899 tp_is_empty!54901)
(check-sat)
