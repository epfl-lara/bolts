; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!759036 () Bool)

(assert start!759036)

(declare-fun b!8056910 () Bool)

(declare-fun e!4747929 () Bool)

(declare-datatypes ((K!22898 0))(
  ( (K!22899 (val!32991 Int)) )
))
(declare-datatypes ((V!23152 0))(
  ( (V!23153 (val!32992 Int)) )
))
(declare-datatypes ((tuple2!70956 0))(
  ( (tuple2!70957 (_1!38781 K!22898) (_2!38781 V!23152)) )
))
(declare-datatypes ((List!75726 0))(
  ( (Nil!75600) (Cons!75600 (h!82048 tuple2!70956) (t!391498 List!75726)) )
))
(declare-fun l!15222 () List!75726)

(declare-fun ListPrimitiveSize!558 (List!75726) Int)

(assert (=> b!8056910 (= e!4747929 (>= (ListPrimitiveSize!558 (t!391498 l!15222)) (ListPrimitiveSize!558 l!15222)))))

(declare-fun b!8056908 () Bool)

(declare-fun res!3186979 () Bool)

(assert (=> b!8056908 (=> (not res!3186979) (not e!4747929))))

(declare-fun key!6986 () K!22898)

(get-info :version)

(assert (=> b!8056908 (= res!3186979 (and (or (not ((_ is Cons!75600) l!15222)) (not (= (_1!38781 (h!82048 l!15222)) key!6986))) ((_ is Cons!75600) l!15222)))))

(declare-fun tp_is_empty!55035 () Bool)

(declare-fun e!4747930 () Bool)

(declare-fun b!8056911 () Bool)

(declare-fun tp_is_empty!55037 () Bool)

(declare-fun tp!2414011 () Bool)

(assert (=> b!8056911 (= e!4747930 (and tp_is_empty!55035 tp_is_empty!55037 tp!2414011))))

(declare-fun res!3186977 () Bool)

(assert (=> start!759036 (=> (not res!3186977) (not e!4747929))))

(declare-fun containsKey!4907 (List!75726 K!22898) Bool)

(assert (=> start!759036 (= res!3186977 (not (containsKey!4907 l!15222 key!6986)))))

(assert (=> start!759036 e!4747929))

(assert (=> start!759036 e!4747930))

(assert (=> start!759036 tp_is_empty!55035))

(declare-fun b!8056909 () Bool)

(declare-fun res!3186978 () Bool)

(assert (=> b!8056909 (=> (not res!3186978) (not e!4747929))))

(assert (=> b!8056909 (= res!3186978 (not (containsKey!4907 (t!391498 l!15222) key!6986)))))

(assert (= (and start!759036 res!3186977) b!8056908))

(assert (= (and b!8056908 res!3186979) b!8056909))

(assert (= (and b!8056909 res!3186978) b!8056910))

(assert (= (and start!759036 ((_ is Cons!75600) l!15222)) b!8056911))

(declare-fun m!8410140 () Bool)

(assert (=> b!8056910 m!8410140))

(declare-fun m!8410142 () Bool)

(assert (=> b!8056910 m!8410142))

(declare-fun m!8410144 () Bool)

(assert (=> start!759036 m!8410144))

(declare-fun m!8410146 () Bool)

(assert (=> b!8056909 m!8410146))

(check-sat tp_is_empty!55035 (not b!8056910) (not start!759036) tp_is_empty!55037 (not b!8056909) (not b!8056911))
(check-sat)
(get-model)

(declare-fun d!2398750 () Bool)

(declare-fun res!3186988 () Bool)

(declare-fun e!4747939 () Bool)

(assert (=> d!2398750 (=> res!3186988 e!4747939)))

(assert (=> d!2398750 (= res!3186988 (and ((_ is Cons!75600) (t!391498 l!15222)) (= (_1!38781 (h!82048 (t!391498 l!15222))) key!6986)))))

(assert (=> d!2398750 (= (containsKey!4907 (t!391498 l!15222) key!6986) e!4747939)))

(declare-fun b!8056918 () Bool)

(declare-fun e!4747940 () Bool)

(assert (=> b!8056918 (= e!4747939 e!4747940)))

(declare-fun res!3186989 () Bool)

(assert (=> b!8056918 (=> (not res!3186989) (not e!4747940))))

(assert (=> b!8056918 (= res!3186989 ((_ is Cons!75600) (t!391498 l!15222)))))

(declare-fun b!8056919 () Bool)

(assert (=> b!8056919 (= e!4747940 (containsKey!4907 (t!391498 (t!391498 l!15222)) key!6986))))

(assert (= (and d!2398750 (not res!3186988)) b!8056918))

(assert (= (and b!8056918 res!3186989) b!8056919))

(declare-fun m!8410148 () Bool)

(assert (=> b!8056919 m!8410148))

(assert (=> b!8056909 d!2398750))

(declare-fun d!2398754 () Bool)

(declare-fun lt!2730725 () Int)

(assert (=> d!2398754 (>= lt!2730725 0)))

(declare-fun e!4747945 () Int)

(assert (=> d!2398754 (= lt!2730725 e!4747945)))

(declare-fun c!1476664 () Bool)

(assert (=> d!2398754 (= c!1476664 ((_ is Nil!75600) (t!391498 l!15222)))))

(assert (=> d!2398754 (= (ListPrimitiveSize!558 (t!391498 l!15222)) lt!2730725)))

(declare-fun b!8056928 () Bool)

(assert (=> b!8056928 (= e!4747945 0)))

(declare-fun b!8056929 () Bool)

(assert (=> b!8056929 (= e!4747945 (+ 1 (ListPrimitiveSize!558 (t!391498 (t!391498 l!15222)))))))

(assert (= (and d!2398754 c!1476664) b!8056928))

(assert (= (and d!2398754 (not c!1476664)) b!8056929))

(declare-fun m!8410152 () Bool)

(assert (=> b!8056929 m!8410152))

(assert (=> b!8056910 d!2398754))

(declare-fun d!2398758 () Bool)

(declare-fun lt!2730726 () Int)

(assert (=> d!2398758 (>= lt!2730726 0)))

(declare-fun e!4747948 () Int)

(assert (=> d!2398758 (= lt!2730726 e!4747948)))

(declare-fun c!1476665 () Bool)

(assert (=> d!2398758 (= c!1476665 ((_ is Nil!75600) l!15222))))

(assert (=> d!2398758 (= (ListPrimitiveSize!558 l!15222) lt!2730726)))

(declare-fun b!8056932 () Bool)

(assert (=> b!8056932 (= e!4747948 0)))

(declare-fun b!8056933 () Bool)

(assert (=> b!8056933 (= e!4747948 (+ 1 (ListPrimitiveSize!558 (t!391498 l!15222))))))

(assert (= (and d!2398758 c!1476665) b!8056932))

(assert (= (and d!2398758 (not c!1476665)) b!8056933))

(assert (=> b!8056933 m!8410140))

(assert (=> b!8056910 d!2398758))

(declare-fun d!2398760 () Bool)

(declare-fun res!3186994 () Bool)

(declare-fun e!4747949 () Bool)

(assert (=> d!2398760 (=> res!3186994 e!4747949)))

(assert (=> d!2398760 (= res!3186994 (and ((_ is Cons!75600) l!15222) (= (_1!38781 (h!82048 l!15222)) key!6986)))))

(assert (=> d!2398760 (= (containsKey!4907 l!15222 key!6986) e!4747949)))

(declare-fun b!8056934 () Bool)

(declare-fun e!4747950 () Bool)

(assert (=> b!8056934 (= e!4747949 e!4747950)))

(declare-fun res!3186995 () Bool)

(assert (=> b!8056934 (=> (not res!3186995) (not e!4747950))))

(assert (=> b!8056934 (= res!3186995 ((_ is Cons!75600) l!15222))))

(declare-fun b!8056935 () Bool)

(assert (=> b!8056935 (= e!4747950 (containsKey!4907 (t!391498 l!15222) key!6986))))

(assert (= (and d!2398760 (not res!3186994)) b!8056934))

(assert (= (and b!8056934 res!3186995) b!8056935))

(assert (=> b!8056935 m!8410146))

(assert (=> start!759036 d!2398760))

(declare-fun tp!2414014 () Bool)

(declare-fun b!8056940 () Bool)

(declare-fun e!4747953 () Bool)

(assert (=> b!8056940 (= e!4747953 (and tp_is_empty!55035 tp_is_empty!55037 tp!2414014))))

(assert (=> b!8056911 (= tp!2414011 e!4747953)))

(assert (= (and b!8056911 ((_ is Cons!75600) (t!391498 l!15222))) b!8056940))

(check-sat tp_is_empty!55035 (not b!8056940) tp_is_empty!55037 (not b!8056933) (not b!8056935) (not b!8056929) (not b!8056919))
(check-sat)
