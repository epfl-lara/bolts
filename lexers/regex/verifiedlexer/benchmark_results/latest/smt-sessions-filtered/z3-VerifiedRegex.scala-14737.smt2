; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!758540 () Bool)

(assert start!758540)

(declare-fun b!8053502 () Bool)

(declare-fun res!3184848 () Bool)

(declare-fun e!4745587 () Bool)

(assert (=> b!8053502 (=> (not res!3184848) (not e!4745587))))

(declare-datatypes ((K!22818 0))(
  ( (K!22819 (val!32927 Int)) )
))
(declare-fun key!6222 () K!22818)

(declare-datatypes ((V!23072 0))(
  ( (V!23073 (val!32928 Int)) )
))
(declare-datatypes ((tuple2!70892 0))(
  ( (tuple2!70893 (_1!38749 K!22818) (_2!38749 V!23072)) )
))
(declare-datatypes ((List!75674 0))(
  ( (Nil!75548) (Cons!75548 (h!81996 tuple2!70892) (t!391446 List!75674)) )
))
(declare-fun l!14636 () List!75674)

(declare-datatypes ((ListMap!7295 0))(
  ( (ListMap!7296 (toList!11922 List!75674)) )
))
(declare-fun acc!1298 () ListMap!7295)

(declare-fun contains!21213 (ListMap!7295 K!22818) Bool)

(declare-fun addToMapMapFromBucket!1989 (List!75674 ListMap!7295) ListMap!7295)

(assert (=> b!8053502 (= res!3184848 (contains!21213 (addToMapMapFromBucket!1989 l!14636 acc!1298) key!6222))))

(declare-fun b!8053503 () Bool)

(declare-fun e!4745591 () Bool)

(declare-fun tp!2413756 () Bool)

(assert (=> b!8053503 (= e!4745591 tp!2413756)))

(declare-fun b!8053504 () Bool)

(declare-fun e!4745588 () Bool)

(declare-fun lt!2727217 () Bool)

(assert (=> b!8053504 (= e!4745588 (not lt!2727217))))

(declare-fun b!8053505 () Bool)

(declare-fun e!4745586 () Bool)

(declare-fun containsKey!4855 (List!75674 K!22818) Bool)

(assert (=> b!8053505 (= e!4745586 (not (not (containsKey!4855 l!14636 key!6222))))))

(declare-fun lt!2727218 () ListMap!7295)

(declare-fun apply!14435 (ListMap!7295 K!22818) V!23072)

(assert (=> b!8053505 (= (apply!14435 lt!2727218 key!6222) (apply!14435 acc!1298 key!6222))))

(declare-datatypes ((Unit!171923 0))(
  ( (Unit!171924) )
))
(declare-fun lt!2727213 () Unit!171923)

(declare-fun addApplyDifferent!15 (ListMap!7295 K!22818 V!23072 K!22818) Unit!171923)

(assert (=> b!8053505 (= lt!2727213 (addApplyDifferent!15 acc!1298 (_1!38749 (h!81996 l!14636)) (_2!38749 (h!81996 l!14636)) key!6222))))

(assert (=> b!8053505 (contains!21213 lt!2727218 key!6222)))

(declare-fun lt!2727215 () Unit!171923)

(declare-fun addStillContains!41 (ListMap!7295 K!22818 V!23072 K!22818) Unit!171923)

(assert (=> b!8053505 (= lt!2727215 (addStillContains!41 acc!1298 (_1!38749 (h!81996 l!14636)) (_2!38749 (h!81996 l!14636)) key!6222))))

(declare-fun e!4745589 () Bool)

(declare-fun b!8053506 () Bool)

(declare-fun tp_is_empty!54907 () Bool)

(declare-fun tp_is_empty!54909 () Bool)

(declare-fun tp!2413757 () Bool)

(assert (=> b!8053506 (= e!4745589 (and tp_is_empty!54907 tp_is_empty!54909 tp!2413757))))

(declare-fun b!8053507 () Bool)

(declare-fun e!4745592 () Bool)

(assert (=> b!8053507 (= e!4745592 e!4745588)))

(declare-fun res!3184852 () Bool)

(assert (=> b!8053507 (=> (not res!3184852) (not e!4745588))))

(assert (=> b!8053507 (= res!3184852 (containsKey!4855 l!14636 key!6222))))

(declare-fun b!8053508 () Bool)

(declare-fun res!3184850 () Bool)

(assert (=> b!8053508 (=> (not res!3184850) (not e!4745588))))

(declare-fun value!3131 () V!23072)

(declare-fun contains!21214 (List!75674 tuple2!70892) Bool)

(assert (=> b!8053508 (= res!3184850 (contains!21214 l!14636 (tuple2!70893 key!6222 value!3131)))))

(declare-fun b!8053509 () Bool)

(declare-fun e!4745585 () Bool)

(assert (=> b!8053509 (= e!4745585 e!4745586)))

(declare-fun res!3184855 () Bool)

(assert (=> b!8053509 (=> (not res!3184855) (not e!4745586))))

(declare-fun lt!2727216 () Bool)

(assert (=> b!8053509 (= res!3184855 (and (not (= (_1!38749 (h!81996 l!14636)) key!6222)) (not lt!2727216)))))

(declare-fun lt!2727214 () ListMap!7295)

(assert (=> b!8053509 (= lt!2727214 (addToMapMapFromBucket!1989 (t!391446 l!14636) lt!2727218))))

(declare-fun +!2673 (ListMap!7295 tuple2!70892) ListMap!7295)

(assert (=> b!8053509 (= lt!2727218 (+!2673 acc!1298 (h!81996 l!14636)))))

(declare-fun b!8053510 () Bool)

(declare-fun res!3184849 () Bool)

(declare-fun e!4745590 () Bool)

(assert (=> b!8053510 (=> (not res!3184849) (not e!4745590))))

(assert (=> b!8053510 (= res!3184849 (= (apply!14435 acc!1298 key!6222) value!3131))))

(declare-fun b!8053511 () Bool)

(assert (=> b!8053511 (= e!4745590 (not (containsKey!4855 l!14636 key!6222)))))

(declare-fun b!8053512 () Bool)

(declare-fun res!3184857 () Bool)

(assert (=> b!8053512 (=> (not res!3184857) (not e!4745585))))

(get-info :version)

(assert (=> b!8053512 (= res!3184857 (not ((_ is Nil!75548) l!14636)))))

(declare-fun res!3184853 () Bool)

(assert (=> start!758540 (=> (not res!3184853) (not e!4745587))))

(declare-fun noDuplicateKeys!2708 (List!75674) Bool)

(assert (=> start!758540 (= res!3184853 (noDuplicateKeys!2708 l!14636))))

(assert (=> start!758540 e!4745587))

(assert (=> start!758540 e!4745589))

(declare-fun inv!97307 (ListMap!7295) Bool)

(assert (=> start!758540 (and (inv!97307 acc!1298) e!4745591)))

(assert (=> start!758540 tp_is_empty!54907))

(assert (=> start!758540 tp_is_empty!54909))

(declare-fun b!8053513 () Bool)

(assert (=> b!8053513 (= e!4745587 e!4745585)))

(declare-fun res!3184854 () Bool)

(assert (=> b!8053513 (=> (not res!3184854) (not e!4745585))))

(assert (=> b!8053513 (= res!3184854 e!4745592)))

(declare-fun res!3184856 () Bool)

(assert (=> b!8053513 (=> res!3184856 e!4745592)))

(assert (=> b!8053513 (= res!3184856 e!4745590)))

(declare-fun res!3184851 () Bool)

(assert (=> b!8053513 (=> (not res!3184851) (not e!4745590))))

(assert (=> b!8053513 (= res!3184851 (not lt!2727216))))

(assert (=> b!8053513 (= lt!2727216 (not lt!2727217))))

(assert (=> b!8053513 (= lt!2727217 (contains!21213 acc!1298 key!6222))))

(assert (= (and start!758540 res!3184853) b!8053502))

(assert (= (and b!8053502 res!3184848) b!8053513))

(assert (= (and b!8053513 res!3184851) b!8053510))

(assert (= (and b!8053510 res!3184849) b!8053511))

(assert (= (and b!8053513 (not res!3184856)) b!8053507))

(assert (= (and b!8053507 res!3184852) b!8053508))

(assert (= (and b!8053508 res!3184850) b!8053504))

(assert (= (and b!8053513 res!3184854) b!8053512))

(assert (= (and b!8053512 res!3184857) b!8053509))

(assert (= (and b!8053509 res!3184855) b!8053505))

(assert (= (and start!758540 ((_ is Cons!75548) l!14636)) b!8053506))

(assert (= start!758540 b!8053503))

(declare-fun m!8405594 () Bool)

(assert (=> b!8053511 m!8405594))

(declare-fun m!8405596 () Bool)

(assert (=> b!8053508 m!8405596))

(declare-fun m!8405598 () Bool)

(assert (=> b!8053505 m!8405598))

(declare-fun m!8405600 () Bool)

(assert (=> b!8053505 m!8405600))

(assert (=> b!8053505 m!8405594))

(declare-fun m!8405602 () Bool)

(assert (=> b!8053505 m!8405602))

(declare-fun m!8405604 () Bool)

(assert (=> b!8053505 m!8405604))

(declare-fun m!8405606 () Bool)

(assert (=> b!8053505 m!8405606))

(assert (=> b!8053507 m!8405594))

(declare-fun m!8405608 () Bool)

(assert (=> b!8053509 m!8405608))

(declare-fun m!8405610 () Bool)

(assert (=> b!8053509 m!8405610))

(declare-fun m!8405612 () Bool)

(assert (=> b!8053502 m!8405612))

(assert (=> b!8053502 m!8405612))

(declare-fun m!8405614 () Bool)

(assert (=> b!8053502 m!8405614))

(assert (=> b!8053510 m!8405606))

(declare-fun m!8405616 () Bool)

(assert (=> b!8053513 m!8405616))

(declare-fun m!8405618 () Bool)

(assert (=> start!758540 m!8405618))

(declare-fun m!8405620 () Bool)

(assert (=> start!758540 m!8405620))

(check-sat (not b!8053508) tp_is_empty!54907 (not b!8053502) (not b!8053510) (not b!8053505) (not start!758540) tp_is_empty!54909 (not b!8053513) (not b!8053509) (not b!8053507) (not b!8053503) (not b!8053506) (not b!8053511))
(check-sat)
