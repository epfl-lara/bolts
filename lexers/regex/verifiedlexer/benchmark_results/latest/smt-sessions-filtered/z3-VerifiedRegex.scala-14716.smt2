; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!758038 () Bool)

(assert start!758038)

(declare-fun b!8049177 () Bool)

(declare-fun res!3181967 () Bool)

(declare-fun e!4742703 () Bool)

(assert (=> b!8049177 (=> (not res!3181967) (not e!4742703))))

(declare-datatypes ((K!22713 0))(
  ( (K!22714 (val!32843 Int)) )
))
(declare-fun key!6222 () K!22713)

(declare-datatypes ((V!22967 0))(
  ( (V!22968 (val!32844 Int)) )
))
(declare-fun value!3131 () V!22967)

(declare-datatypes ((tuple2!70808 0))(
  ( (tuple2!70809 (_1!38707 K!22713) (_2!38707 V!22967)) )
))
(declare-datatypes ((List!75613 0))(
  ( (Nil!75487) (Cons!75487 (h!81935 tuple2!70808) (t!391385 List!75613)) )
))
(declare-datatypes ((ListMap!7211 0))(
  ( (ListMap!7212 (toList!11880 List!75613)) )
))
(declare-fun lt!2723538 () ListMap!7211)

(declare-fun apply!14393 (ListMap!7211 K!22713) V!22967)

(assert (=> b!8049177 (= res!3181967 (= (apply!14393 lt!2723538 key!6222) value!3131))))

(declare-fun b!8049178 () Bool)

(declare-fun e!4742694 () Bool)

(declare-fun tp!2413420 () Bool)

(assert (=> b!8049178 (= e!4742694 tp!2413420)))

(declare-fun b!8049179 () Bool)

(declare-fun e!4742697 () Bool)

(declare-fun lt!2723534 () Bool)

(assert (=> b!8049179 (= e!4742697 (not lt!2723534))))

(declare-fun b!8049180 () Bool)

(declare-fun e!4742702 () Bool)

(declare-fun l!14636 () List!75613)

(declare-fun containsKey!4794 (List!75613 K!22713) Bool)

(assert (=> b!8049180 (= e!4742702 (not (containsKey!4794 l!14636 key!6222)))))

(declare-fun b!8049181 () Bool)

(declare-fun res!3181975 () Bool)

(assert (=> b!8049181 (=> (not res!3181975) (not e!4742697))))

(declare-fun contains!21110 (List!75613 tuple2!70808) Bool)

(assert (=> b!8049181 (= res!3181975 (contains!21110 l!14636 (tuple2!70809 key!6222 value!3131)))))

(declare-fun b!8049183 () Bool)

(declare-fun res!3181971 () Bool)

(declare-fun e!4742700 () Bool)

(assert (=> b!8049183 (=> res!3181971 e!4742700)))

(declare-fun noDuplicateKeys!2666 (List!75613) Bool)

(assert (=> b!8049183 (= res!3181971 (not (noDuplicateKeys!2666 (t!391385 l!14636))))))

(declare-fun b!8049184 () Bool)

(assert (=> b!8049184 (= e!4742703 (not (containsKey!4794 (t!391385 l!14636) key!6222)))))

(declare-fun b!8049185 () Bool)

(declare-fun e!4742698 () Bool)

(assert (=> b!8049185 (= e!4742698 (not e!4742700))))

(declare-fun res!3181974 () Bool)

(assert (=> b!8049185 (=> res!3181974 e!4742700)))

(assert (=> b!8049185 (= res!3181974 (not (= (_2!38707 (h!81935 l!14636)) value!3131)))))

(assert (=> b!8049185 (not (contains!21110 (t!391385 l!14636) (tuple2!70809 key!6222 value!3131)))))

(declare-datatypes ((Unit!171260 0))(
  ( (Unit!171261) )
))
(declare-fun lt!2723533 () Unit!171260)

(declare-fun lemmaNotContainsKeyThenCannotContainPair!6 (List!75613 K!22713 V!22967) Unit!171260)

(assert (=> b!8049185 (= lt!2723533 (lemmaNotContainsKeyThenCannotContainPair!6 (t!391385 l!14636) key!6222 value!3131))))

(declare-fun b!8049186 () Bool)

(declare-fun e!4742701 () Bool)

(declare-fun e!4742704 () Bool)

(assert (=> b!8049186 (= e!4742701 e!4742704)))

(declare-fun res!3181982 () Bool)

(assert (=> b!8049186 (=> (not res!3181982) (not e!4742704))))

(declare-fun e!4742695 () Bool)

(assert (=> b!8049186 (= res!3181982 e!4742695)))

(declare-fun res!3181978 () Bool)

(assert (=> b!8049186 (=> res!3181978 e!4742695)))

(assert (=> b!8049186 (= res!3181978 e!4742702)))

(declare-fun res!3181973 () Bool)

(assert (=> b!8049186 (=> (not res!3181973) (not e!4742702))))

(assert (=> b!8049186 (= res!3181973 lt!2723534)))

(declare-fun acc!1298 () ListMap!7211)

(declare-fun contains!21111 (ListMap!7211 K!22713) Bool)

(assert (=> b!8049186 (= lt!2723534 (contains!21111 acc!1298 key!6222))))

(declare-fun b!8049187 () Bool)

(assert (=> b!8049187 (= e!4742704 e!4742698)))

(declare-fun res!3181969 () Bool)

(assert (=> b!8049187 (=> (not res!3181969) (not e!4742698))))

(assert (=> b!8049187 (= res!3181969 (= (_1!38707 (h!81935 l!14636)) key!6222))))

(declare-fun lt!2723535 () ListMap!7211)

(declare-fun addToMapMapFromBucket!1947 (List!75613 ListMap!7211) ListMap!7211)

(assert (=> b!8049187 (= lt!2723535 (addToMapMapFromBucket!1947 (t!391385 l!14636) lt!2723538))))

(declare-fun +!2632 (ListMap!7211 tuple2!70808) ListMap!7211)

(assert (=> b!8049187 (= lt!2723538 (+!2632 acc!1298 (h!81935 l!14636)))))

(declare-fun b!8049188 () Bool)

(declare-fun res!3181980 () Bool)

(assert (=> b!8049188 (=> (not res!3181980) (not e!4742704))))

(get-info :version)

(assert (=> b!8049188 (= res!3181980 (not ((_ is Nil!75487) l!14636)))))

(declare-fun b!8049189 () Bool)

(assert (=> b!8049189 (= e!4742695 e!4742697)))

(declare-fun res!3181979 () Bool)

(assert (=> b!8049189 (=> (not res!3181979) (not e!4742697))))

(assert (=> b!8049189 (= res!3181979 (containsKey!4794 l!14636 key!6222))))

(declare-fun b!8049190 () Bool)

(declare-fun res!3181970 () Bool)

(assert (=> b!8049190 (=> (not res!3181970) (not e!4742701))))

(assert (=> b!8049190 (= res!3181970 (contains!21111 (addToMapMapFromBucket!1947 l!14636 acc!1298) key!6222))))

(declare-fun b!8049191 () Bool)

(declare-fun res!3181976 () Bool)

(assert (=> b!8049191 (=> res!3181976 e!4742700)))

(assert (=> b!8049191 (= res!3181976 (not (contains!21111 lt!2723535 key!6222)))))

(declare-fun b!8049192 () Bool)

(declare-fun res!3181981 () Bool)

(assert (=> b!8049192 (=> (not res!3181981) (not e!4742702))))

(assert (=> b!8049192 (= res!3181981 (= (apply!14393 acc!1298 key!6222) value!3131))))

(declare-fun e!4742699 () Bool)

(declare-fun tp_is_empty!54739 () Bool)

(declare-fun b!8049182 () Bool)

(declare-fun tp_is_empty!54741 () Bool)

(declare-fun tp!2413421 () Bool)

(assert (=> b!8049182 (= e!4742699 (and tp_is_empty!54739 tp_is_empty!54741 tp!2413421))))

(declare-fun res!3181977 () Bool)

(assert (=> start!758038 (=> (not res!3181977) (not e!4742701))))

(assert (=> start!758038 (= res!3181977 (noDuplicateKeys!2666 l!14636))))

(assert (=> start!758038 e!4742701))

(assert (=> start!758038 e!4742699))

(declare-fun inv!97202 (ListMap!7211) Bool)

(assert (=> start!758038 (and (inv!97202 acc!1298) e!4742694)))

(assert (=> start!758038 tp_is_empty!54739))

(assert (=> start!758038 tp_is_empty!54741))

(declare-fun b!8049193 () Bool)

(declare-fun e!4742696 () Bool)

(assert (=> b!8049193 (= e!4742696 false)))

(declare-fun lt!2723536 () Bool)

(assert (=> b!8049193 (= lt!2723536 (containsKey!4794 (t!391385 l!14636) key!6222))))

(declare-fun b!8049194 () Bool)

(assert (=> b!8049194 (= e!4742700 true)))

(declare-fun lt!2723537 () Bool)

(assert (=> b!8049194 (= lt!2723537 e!4742696)))

(declare-fun res!3181972 () Bool)

(assert (=> b!8049194 (=> res!3181972 e!4742696)))

(assert (=> b!8049194 (= res!3181972 e!4742703)))

(declare-fun res!3181968 () Bool)

(assert (=> b!8049194 (=> (not res!3181968) (not e!4742703))))

(assert (=> b!8049194 (= res!3181968 (contains!21111 lt!2723538 key!6222))))

(assert (= (and start!758038 res!3181977) b!8049190))

(assert (= (and b!8049190 res!3181970) b!8049186))

(assert (= (and b!8049186 res!3181973) b!8049192))

(assert (= (and b!8049192 res!3181981) b!8049180))

(assert (= (and b!8049186 (not res!3181978)) b!8049189))

(assert (= (and b!8049189 res!3181979) b!8049181))

(assert (= (and b!8049181 res!3181975) b!8049179))

(assert (= (and b!8049186 res!3181982) b!8049188))

(assert (= (and b!8049188 res!3181980) b!8049187))

(assert (= (and b!8049187 res!3181969) b!8049185))

(assert (= (and b!8049185 (not res!3181974)) b!8049183))

(assert (= (and b!8049183 (not res!3181971)) b!8049191))

(assert (= (and b!8049191 (not res!3181976)) b!8049194))

(assert (= (and b!8049194 res!3181968) b!8049177))

(assert (= (and b!8049177 res!3181967) b!8049184))

(assert (= (and b!8049194 (not res!3181972)) b!8049193))

(assert (= (and start!758038 ((_ is Cons!75487) l!14636)) b!8049182))

(assert (= start!758038 b!8049178))

(declare-fun m!8400286 () Bool)

(assert (=> b!8049193 m!8400286))

(declare-fun m!8400288 () Bool)

(assert (=> b!8049194 m!8400288))

(declare-fun m!8400290 () Bool)

(assert (=> b!8049190 m!8400290))

(assert (=> b!8049190 m!8400290))

(declare-fun m!8400292 () Bool)

(assert (=> b!8049190 m!8400292))

(declare-fun m!8400294 () Bool)

(assert (=> b!8049187 m!8400294))

(declare-fun m!8400296 () Bool)

(assert (=> b!8049187 m!8400296))

(declare-fun m!8400298 () Bool)

(assert (=> b!8049183 m!8400298))

(declare-fun m!8400300 () Bool)

(assert (=> b!8049180 m!8400300))

(declare-fun m!8400302 () Bool)

(assert (=> b!8049192 m!8400302))

(declare-fun m!8400304 () Bool)

(assert (=> b!8049185 m!8400304))

(declare-fun m!8400306 () Bool)

(assert (=> b!8049185 m!8400306))

(assert (=> b!8049184 m!8400286))

(declare-fun m!8400308 () Bool)

(assert (=> b!8049191 m!8400308))

(declare-fun m!8400310 () Bool)

(assert (=> b!8049186 m!8400310))

(declare-fun m!8400312 () Bool)

(assert (=> b!8049181 m!8400312))

(declare-fun m!8400314 () Bool)

(assert (=> b!8049177 m!8400314))

(assert (=> b!8049189 m!8400300))

(declare-fun m!8400316 () Bool)

(assert (=> start!758038 m!8400316))

(declare-fun m!8400318 () Bool)

(assert (=> start!758038 m!8400318))

(check-sat (not b!8049186) (not start!758038) tp_is_empty!54739 (not b!8049187) (not b!8049191) (not b!8049178) (not b!8049190) tp_is_empty!54741 (not b!8049185) (not b!8049182) (not b!8049194) (not b!8049181) (not b!8049189) (not b!8049177) (not b!8049184) (not b!8049180) (not b!8049183) (not b!8049192) (not b!8049193))
(check-sat)
