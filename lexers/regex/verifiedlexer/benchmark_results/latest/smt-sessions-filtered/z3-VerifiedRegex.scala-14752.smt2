; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!759028 () Bool)

(assert start!759028)

(declare-fun res!3186945 () Bool)

(declare-fun e!4747895 () Bool)

(assert (=> start!759028 (=> (not res!3186945) (not e!4747895))))

(declare-datatypes ((K!22893 0))(
  ( (K!22894 (val!32987 Int)) )
))
(declare-datatypes ((V!23147 0))(
  ( (V!23148 (val!32988 Int)) )
))
(declare-datatypes ((tuple2!70952 0))(
  ( (tuple2!70953 (_1!38779 K!22893) (_2!38779 V!23147)) )
))
(declare-datatypes ((List!75724 0))(
  ( (Nil!75598) (Cons!75598 (h!82046 tuple2!70952) (t!391496 List!75724)) )
))
(declare-fun l!15222 () List!75724)

(declare-fun key!6986 () K!22893)

(declare-fun containsKey!4905 (List!75724 K!22893) Bool)

(assert (=> start!759028 (= res!3186945 (not (containsKey!4905 l!15222 key!6986)))))

(assert (=> start!759028 e!4747895))

(declare-fun e!4747896 () Bool)

(assert (=> start!759028 e!4747896))

(declare-fun tp_is_empty!55027 () Bool)

(assert (=> start!759028 tp_is_empty!55027))

(declare-fun b!8056859 () Bool)

(declare-fun res!3186944 () Bool)

(assert (=> b!8056859 (=> (not res!3186944) (not e!4747895))))

(get-info :version)

(assert (=> b!8056859 (= res!3186944 (and (or (not ((_ is Cons!75598) l!15222)) (not (= (_1!38779 (h!82046 l!15222)) key!6986))) ((_ is Cons!75598) l!15222)))))

(declare-fun b!8056860 () Bool)

(assert (=> b!8056860 (= e!4747895 (containsKey!4905 (t!391496 l!15222) key!6986))))

(declare-fun tp_is_empty!55029 () Bool)

(declare-fun b!8056861 () Bool)

(declare-fun tp!2413999 () Bool)

(assert (=> b!8056861 (= e!4747896 (and tp_is_empty!55027 tp_is_empty!55029 tp!2413999))))

(assert (= (and start!759028 res!3186945) b!8056859))

(assert (= (and b!8056859 res!3186944) b!8056860))

(assert (= (and start!759028 ((_ is Cons!75598) l!15222)) b!8056861))

(declare-fun m!8410124 () Bool)

(assert (=> start!759028 m!8410124))

(declare-fun m!8410126 () Bool)

(assert (=> b!8056860 m!8410126))

(check-sat tp_is_empty!55029 (not b!8056860) (not start!759028) (not b!8056861) tp_is_empty!55027)
(check-sat)
(get-model)

(declare-fun d!2398741 () Bool)

(declare-fun res!3186956 () Bool)

(declare-fun e!4747907 () Bool)

(assert (=> d!2398741 (=> res!3186956 e!4747907)))

(assert (=> d!2398741 (= res!3186956 (and ((_ is Cons!75598) l!15222) (= (_1!38779 (h!82046 l!15222)) key!6986)))))

(assert (=> d!2398741 (= (containsKey!4905 l!15222 key!6986) e!4747907)))

(declare-fun b!8056872 () Bool)

(declare-fun e!4747908 () Bool)

(assert (=> b!8056872 (= e!4747907 e!4747908)))

(declare-fun res!3186957 () Bool)

(assert (=> b!8056872 (=> (not res!3186957) (not e!4747908))))

(assert (=> b!8056872 (= res!3186957 ((_ is Cons!75598) l!15222))))

(declare-fun b!8056873 () Bool)

(assert (=> b!8056873 (= e!4747908 (containsKey!4905 (t!391496 l!15222) key!6986))))

(assert (= (and d!2398741 (not res!3186956)) b!8056872))

(assert (= (and b!8056872 res!3186957) b!8056873))

(assert (=> b!8056873 m!8410126))

(assert (=> start!759028 d!2398741))

(declare-fun d!2398747 () Bool)

(declare-fun res!3186960 () Bool)

(declare-fun e!4747913 () Bool)

(assert (=> d!2398747 (=> res!3186960 e!4747913)))

(assert (=> d!2398747 (= res!3186960 (and ((_ is Cons!75598) (t!391496 l!15222)) (= (_1!38779 (h!82046 (t!391496 l!15222))) key!6986)))))

(assert (=> d!2398747 (= (containsKey!4905 (t!391496 l!15222) key!6986) e!4747913)))

(declare-fun b!8056880 () Bool)

(declare-fun e!4747914 () Bool)

(assert (=> b!8056880 (= e!4747913 e!4747914)))

(declare-fun res!3186961 () Bool)

(assert (=> b!8056880 (=> (not res!3186961) (not e!4747914))))

(assert (=> b!8056880 (= res!3186961 ((_ is Cons!75598) (t!391496 l!15222)))))

(declare-fun b!8056881 () Bool)

(assert (=> b!8056881 (= e!4747914 (containsKey!4905 (t!391496 (t!391496 l!15222)) key!6986))))

(assert (= (and d!2398747 (not res!3186960)) b!8056880))

(assert (= (and b!8056880 res!3186961) b!8056881))

(declare-fun m!8410130 () Bool)

(assert (=> b!8056881 m!8410130))

(assert (=> b!8056860 d!2398747))

(declare-fun tp!2414005 () Bool)

(declare-fun b!8056887 () Bool)

(declare-fun e!4747918 () Bool)

(assert (=> b!8056887 (= e!4747918 (and tp_is_empty!55027 tp_is_empty!55029 tp!2414005))))

(assert (=> b!8056861 (= tp!2413999 e!4747918)))

(assert (= (and b!8056861 ((_ is Cons!75598) (t!391496 l!15222))) b!8056887))

(check-sat (not b!8056881) tp_is_empty!55029 tp_is_empty!55027 (not b!8056873) (not b!8056887))
(check-sat)
