; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502326 () Bool)

(assert start!502326)

(declare-fun b!4833076 () Bool)

(declare-fun res!2058790 () Bool)

(declare-fun e!3020215 () Bool)

(assert (=> b!4833076 (=> res!2058790 e!3020215)))

(declare-fun lt!1978613 () Bool)

(declare-datatypes ((K!16797 0))(
  ( (K!16798 (val!21743 Int)) )
))
(declare-datatypes ((V!17043 0))(
  ( (V!17044 (val!21744 Int)) )
))
(declare-datatypes ((tuple2!58398 0))(
  ( (tuple2!58399 (_1!32493 K!16797) (_2!32493 V!17043)) )
))
(declare-datatypes ((List!55218 0))(
  ( (Nil!55094) (Cons!55094 (h!61528 tuple2!58398) (t!362714 List!55218)) )
))
(declare-fun l!14180 () List!55218)

(declare-fun key!5666 () K!16797)

(assert (=> b!4833076 (= res!2058790 (or (= (_1!32493 (h!61528 l!14180)) key!5666) lt!1978613))))

(declare-fun b!4833077 () Bool)

(declare-fun res!2058789 () Bool)

(declare-fun e!3020214 () Bool)

(assert (=> b!4833077 (=> (not res!2058789) (not e!3020214))))

(assert (=> b!4833077 (= res!2058789 (not (is-Nil!55094 l!14180)))))

(declare-fun b!4833078 () Bool)

(declare-fun e!3020213 () Bool)

(declare-datatypes ((ListMap!6959 0))(
  ( (ListMap!6960 (toList!7575 List!55218)) )
))
(declare-fun lt!1978614 () ListMap!6959)

(declare-fun contains!18906 (ListMap!6959 K!16797) Bool)

(assert (=> b!4833078 (= e!3020213 (contains!18906 lt!1978614 key!5666))))

(declare-fun b!4833079 () Bool)

(assert (=> b!4833079 (= e!3020215 true)))

(declare-fun lt!1978617 () Bool)

(assert (=> b!4833079 (not lt!1978617)))

(declare-datatypes ((Unit!144121 0))(
  ( (Unit!144122) )
))
(declare-fun lt!1978616 () Unit!144121)

(declare-fun acc!1183 () ListMap!6959)

(declare-fun addStillNotContains!4 (ListMap!6959 K!16797 V!17043 K!16797) Unit!144121)

(assert (=> b!4833079 (= lt!1978616 (addStillNotContains!4 acc!1183 (_1!32493 (h!61528 l!14180)) (_2!32493 (h!61528 l!14180)) key!5666))))

(declare-fun lt!1978618 () Bool)

(assert (=> b!4833079 (= lt!1978618 lt!1978617)))

(assert (=> b!4833079 (= lt!1978617 (contains!18906 lt!1978614 key!5666))))

(declare-fun b!4833080 () Bool)

(declare-fun e!3020217 () Bool)

(declare-fun tp!1363059 () Bool)

(assert (=> b!4833080 (= e!3020217 tp!1363059)))

(declare-fun b!4833081 () Bool)

(assert (=> b!4833081 (= e!3020214 (not e!3020215))))

(declare-fun res!2058786 () Bool)

(assert (=> b!4833081 (=> res!2058786 e!3020215)))

(assert (=> b!4833081 (= res!2058786 (contains!18906 acc!1183 key!5666))))

(assert (=> b!4833081 (= lt!1978618 e!3020213)))

(declare-fun res!2058788 () Bool)

(assert (=> b!4833081 (=> res!2058788 e!3020213)))

(assert (=> b!4833081 (= res!2058788 lt!1978613)))

(declare-fun lt!1978612 () ListMap!6959)

(assert (=> b!4833081 (= lt!1978618 (contains!18906 lt!1978612 key!5666))))

(declare-fun containsKey!4459 (List!55218 K!16797) Bool)

(assert (=> b!4833081 (= lt!1978613 (containsKey!4459 (t!362714 l!14180) key!5666))))

(declare-fun lt!1978615 () Unit!144121)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!63 (List!55218 ListMap!6959 K!16797) Unit!144121)

(assert (=> b!4833081 (= lt!1978615 (lemmaAddToMapFromBucketContainsIIFInAccOrL!63 (t!362714 l!14180) lt!1978614 key!5666))))

(declare-fun addToMapMapFromBucket!1844 (List!55218 ListMap!6959) ListMap!6959)

(assert (=> b!4833081 (= lt!1978612 (addToMapMapFromBucket!1844 (t!362714 l!14180) lt!1978614))))

(declare-fun +!2568 (ListMap!6959 tuple2!58398) ListMap!6959)

(assert (=> b!4833081 (= lt!1978614 (+!2568 acc!1183 (h!61528 l!14180)))))

(declare-fun res!2058787 () Bool)

(assert (=> start!502326 (=> (not res!2058787) (not e!3020214))))

(declare-fun noDuplicateKeys!2489 (List!55218) Bool)

(assert (=> start!502326 (= res!2058787 (noDuplicateKeys!2489 l!14180))))

(assert (=> start!502326 e!3020214))

(declare-fun e!3020216 () Bool)

(assert (=> start!502326 e!3020216))

(declare-fun inv!70698 (ListMap!6959) Bool)

(assert (=> start!502326 (and (inv!70698 acc!1183) e!3020217)))

(declare-fun tp_is_empty!34637 () Bool)

(assert (=> start!502326 tp_is_empty!34637))

(declare-fun b!4833082 () Bool)

(declare-fun tp!1363060 () Bool)

(declare-fun tp_is_empty!34639 () Bool)

(assert (=> b!4833082 (= e!3020216 (and tp_is_empty!34637 tp_is_empty!34639 tp!1363060))))

(assert (= (and start!502326 res!2058787) b!4833077))

(assert (= (and b!4833077 res!2058789) b!4833081))

(assert (= (and b!4833081 (not res!2058788)) b!4833078))

(assert (= (and b!4833081 (not res!2058786)) b!4833076))

(assert (= (and b!4833076 (not res!2058790)) b!4833079))

(assert (= (and start!502326 (is-Cons!55094 l!14180)) b!4833082))

(assert (= start!502326 b!4833080))

(declare-fun m!5827498 () Bool)

(assert (=> b!4833078 m!5827498))

(declare-fun m!5827500 () Bool)

(assert (=> b!4833079 m!5827500))

(assert (=> b!4833079 m!5827498))

(declare-fun m!5827502 () Bool)

(assert (=> b!4833081 m!5827502))

(declare-fun m!5827504 () Bool)

(assert (=> b!4833081 m!5827504))

(declare-fun m!5827506 () Bool)

(assert (=> b!4833081 m!5827506))

(declare-fun m!5827508 () Bool)

(assert (=> b!4833081 m!5827508))

(declare-fun m!5827510 () Bool)

(assert (=> b!4833081 m!5827510))

(declare-fun m!5827512 () Bool)

(assert (=> b!4833081 m!5827512))

(declare-fun m!5827514 () Bool)

(assert (=> start!502326 m!5827514))

(declare-fun m!5827516 () Bool)

(assert (=> start!502326 m!5827516))

(push 1)

(assert (not b!4833078))

(assert tp_is_empty!34639)

(assert tp_is_empty!34637)

(assert (not b!4833082))

(assert (not b!4833081))

(assert (not b!4833080))

(assert (not start!502326))

(assert (not b!4833079))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

