; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!759048 () Bool)

(assert start!759048)

(declare-fun b!8056975 () Bool)

(declare-fun res!3187011 () Bool)

(declare-fun e!4747972 () Bool)

(assert (=> b!8056975 (=> (not res!3187011) (not e!4747972))))

(declare-datatypes ((K!22903 0))(
  ( (K!22904 (val!32995 Int)) )
))
(declare-datatypes ((V!23157 0))(
  ( (V!23158 (val!32996 Int)) )
))
(declare-datatypes ((tuple2!70960 0))(
  ( (tuple2!70961 (_1!38783 K!22903) (_2!38783 V!23157)) )
))
(declare-datatypes ((List!75728 0))(
  ( (Nil!75602) (Cons!75602 (h!82050 tuple2!70960) (t!391500 List!75728)) )
))
(declare-fun l!15222 () List!75728)

(declare-fun key!6986 () K!22903)

(declare-fun containsKey!4909 (List!75728 K!22903) Bool)

(assert (=> b!8056975 (= res!3187011 (not (containsKey!4909 (t!391500 l!15222) key!6986)))))

(declare-fun b!8056976 () Bool)

(declare-fun lt!2730741 () tuple2!70960)

(declare-fun contains!21276 (List!75728 tuple2!70960) Bool)

(assert (=> b!8056976 (= e!4747972 (not (not (contains!21276 l!15222 lt!2730741))))))

(assert (=> b!8056976 (not (contains!21276 (t!391500 l!15222) lt!2730741))))

(declare-fun v!11745 () V!23157)

(assert (=> b!8056976 (= lt!2730741 (tuple2!70961 key!6986 v!11745))))

(declare-datatypes ((Unit!172556 0))(
  ( (Unit!172557) )
))
(declare-fun lt!2730742 () Unit!172556)

(declare-fun lemmaNotContainsKeyThenCannotContainPair!36 (List!75728 K!22903 V!23157) Unit!172556)

(assert (=> b!8056976 (= lt!2730742 (lemmaNotContainsKeyThenCannotContainPair!36 (t!391500 l!15222) key!6986 v!11745))))

(declare-fun res!3187012 () Bool)

(assert (=> start!759048 (=> (not res!3187012) (not e!4747972))))

(assert (=> start!759048 (= res!3187012 (not (containsKey!4909 l!15222 key!6986)))))

(assert (=> start!759048 e!4747972))

(declare-fun e!4747971 () Bool)

(assert (=> start!759048 e!4747971))

(declare-fun tp_is_empty!55043 () Bool)

(assert (=> start!759048 tp_is_empty!55043))

(declare-fun tp_is_empty!55045 () Bool)

(assert (=> start!759048 tp_is_empty!55045))

(declare-fun tp!2414023 () Bool)

(declare-fun b!8056977 () Bool)

(assert (=> b!8056977 (= e!4747971 (and tp_is_empty!55043 tp_is_empty!55045 tp!2414023))))

(declare-fun b!8056974 () Bool)

(declare-fun res!3187013 () Bool)

(assert (=> b!8056974 (=> (not res!3187013) (not e!4747972))))

(get-info :version)

(assert (=> b!8056974 (= res!3187013 (and (or (not ((_ is Cons!75602) l!15222)) (not (= (_1!38783 (h!82050 l!15222)) key!6986))) ((_ is Cons!75602) l!15222)))))

(assert (= (and start!759048 res!3187012) b!8056974))

(assert (= (and b!8056974 res!3187013) b!8056975))

(assert (= (and b!8056975 res!3187011) b!8056976))

(assert (= (and start!759048 ((_ is Cons!75602) l!15222)) b!8056977))

(declare-fun m!8410166 () Bool)

(assert (=> b!8056975 m!8410166))

(declare-fun m!8410168 () Bool)

(assert (=> b!8056976 m!8410168))

(declare-fun m!8410170 () Bool)

(assert (=> b!8056976 m!8410170))

(declare-fun m!8410172 () Bool)

(assert (=> b!8056976 m!8410172))

(declare-fun m!8410174 () Bool)

(assert (=> start!759048 m!8410174))

(check-sat tp_is_empty!55043 tp_is_empty!55045 (not b!8056975) (not b!8056977) (not b!8056976) (not start!759048))
(check-sat)
(get-model)

(declare-fun d!2398769 () Bool)

(declare-fun lt!2730747 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16129 (List!75728) (InoxSet tuple2!70960))

(assert (=> d!2398769 (= lt!2730747 (select (content!16129 l!15222) lt!2730741))))

(declare-fun e!4747988 () Bool)

(assert (=> d!2398769 (= lt!2730747 e!4747988)))

(declare-fun res!3187029 () Bool)

(assert (=> d!2398769 (=> (not res!3187029) (not e!4747988))))

(assert (=> d!2398769 (= res!3187029 ((_ is Cons!75602) l!15222))))

(assert (=> d!2398769 (= (contains!21276 l!15222 lt!2730741) lt!2730747)))

(declare-fun b!8056992 () Bool)

(declare-fun e!4747987 () Bool)

(assert (=> b!8056992 (= e!4747988 e!4747987)))

(declare-fun res!3187028 () Bool)

(assert (=> b!8056992 (=> res!3187028 e!4747987)))

(assert (=> b!8056992 (= res!3187028 (= (h!82050 l!15222) lt!2730741))))

(declare-fun b!8056993 () Bool)

(assert (=> b!8056993 (= e!4747987 (contains!21276 (t!391500 l!15222) lt!2730741))))

(assert (= (and d!2398769 res!3187029) b!8056992))

(assert (= (and b!8056992 (not res!3187028)) b!8056993))

(declare-fun m!8410178 () Bool)

(assert (=> d!2398769 m!8410178))

(declare-fun m!8410180 () Bool)

(assert (=> d!2398769 m!8410180))

(assert (=> b!8056993 m!8410170))

(assert (=> b!8056976 d!2398769))

(declare-fun d!2398775 () Bool)

(declare-fun lt!2730748 () Bool)

(assert (=> d!2398775 (= lt!2730748 (select (content!16129 (t!391500 l!15222)) lt!2730741))))

(declare-fun e!4747992 () Bool)

(assert (=> d!2398775 (= lt!2730748 e!4747992)))

(declare-fun res!3187033 () Bool)

(assert (=> d!2398775 (=> (not res!3187033) (not e!4747992))))

(assert (=> d!2398775 (= res!3187033 ((_ is Cons!75602) (t!391500 l!15222)))))

(assert (=> d!2398775 (= (contains!21276 (t!391500 l!15222) lt!2730741) lt!2730748)))

(declare-fun b!8056996 () Bool)

(declare-fun e!4747991 () Bool)

(assert (=> b!8056996 (= e!4747992 e!4747991)))

(declare-fun res!3187032 () Bool)

(assert (=> b!8056996 (=> res!3187032 e!4747991)))

(assert (=> b!8056996 (= res!3187032 (= (h!82050 (t!391500 l!15222)) lt!2730741))))

(declare-fun b!8056997 () Bool)

(assert (=> b!8056997 (= e!4747991 (contains!21276 (t!391500 (t!391500 l!15222)) lt!2730741))))

(assert (= (and d!2398775 res!3187033) b!8056996))

(assert (= (and b!8056996 (not res!3187032)) b!8056997))

(declare-fun m!8410182 () Bool)

(assert (=> d!2398775 m!8410182))

(declare-fun m!8410184 () Bool)

(assert (=> d!2398775 m!8410184))

(declare-fun m!8410186 () Bool)

(assert (=> b!8056997 m!8410186))

(assert (=> b!8056976 d!2398775))

(declare-fun d!2398777 () Bool)

(assert (=> d!2398777 (not (contains!21276 (t!391500 l!15222) (tuple2!70961 key!6986 v!11745)))))

(declare-fun lt!2730753 () Unit!172556)

(declare-fun choose!60562 (List!75728 K!22903 V!23157) Unit!172556)

(assert (=> d!2398777 (= lt!2730753 (choose!60562 (t!391500 l!15222) key!6986 v!11745))))

(assert (=> d!2398777 (not (containsKey!4909 (t!391500 l!15222) key!6986))))

(assert (=> d!2398777 (= (lemmaNotContainsKeyThenCannotContainPair!36 (t!391500 l!15222) key!6986 v!11745) lt!2730753)))

(declare-fun bs!1973193 () Bool)

(assert (= bs!1973193 d!2398777))

(declare-fun m!8410198 () Bool)

(assert (=> bs!1973193 m!8410198))

(declare-fun m!8410200 () Bool)

(assert (=> bs!1973193 m!8410200))

(assert (=> bs!1973193 m!8410166))

(assert (=> b!8056976 d!2398777))

(declare-fun d!2398783 () Bool)

(declare-fun res!3187042 () Bool)

(declare-fun e!4748004 () Bool)

(assert (=> d!2398783 (=> res!3187042 e!4748004)))

(assert (=> d!2398783 (= res!3187042 (and ((_ is Cons!75602) (t!391500 l!15222)) (= (_1!38783 (h!82050 (t!391500 l!15222))) key!6986)))))

(assert (=> d!2398783 (= (containsKey!4909 (t!391500 l!15222) key!6986) e!4748004)))

(declare-fun b!8057011 () Bool)

(declare-fun e!4748005 () Bool)

(assert (=> b!8057011 (= e!4748004 e!4748005)))

(declare-fun res!3187043 () Bool)

(assert (=> b!8057011 (=> (not res!3187043) (not e!4748005))))

(assert (=> b!8057011 (= res!3187043 ((_ is Cons!75602) (t!391500 l!15222)))))

(declare-fun b!8057012 () Bool)

(assert (=> b!8057012 (= e!4748005 (containsKey!4909 (t!391500 (t!391500 l!15222)) key!6986))))

(assert (= (and d!2398783 (not res!3187042)) b!8057011))

(assert (= (and b!8057011 res!3187043) b!8057012))

(declare-fun m!8410206 () Bool)

(assert (=> b!8057012 m!8410206))

(assert (=> b!8056975 d!2398783))

(declare-fun d!2398785 () Bool)

(declare-fun res!3187044 () Bool)

(declare-fun e!4748006 () Bool)

(assert (=> d!2398785 (=> res!3187044 e!4748006)))

(assert (=> d!2398785 (= res!3187044 (and ((_ is Cons!75602) l!15222) (= (_1!38783 (h!82050 l!15222)) key!6986)))))

(assert (=> d!2398785 (= (containsKey!4909 l!15222 key!6986) e!4748006)))

(declare-fun b!8057013 () Bool)

(declare-fun e!4748007 () Bool)

(assert (=> b!8057013 (= e!4748006 e!4748007)))

(declare-fun res!3187045 () Bool)

(assert (=> b!8057013 (=> (not res!3187045) (not e!4748007))))

(assert (=> b!8057013 (= res!3187045 ((_ is Cons!75602) l!15222))))

(declare-fun b!8057014 () Bool)

(assert (=> b!8057014 (= e!4748007 (containsKey!4909 (t!391500 l!15222) key!6986))))

(assert (= (and d!2398785 (not res!3187044)) b!8057013))

(assert (= (and b!8057013 res!3187045) b!8057014))

(assert (=> b!8057014 m!8410166))

(assert (=> start!759048 d!2398785))

(declare-fun tp!2414029 () Bool)

(declare-fun b!8057019 () Bool)

(declare-fun e!4748010 () Bool)

(assert (=> b!8057019 (= e!4748010 (and tp_is_empty!55043 tp_is_empty!55045 tp!2414029))))

(assert (=> b!8056977 (= tp!2414023 e!4748010)))

(assert (= (and b!8056977 ((_ is Cons!75602) (t!391500 l!15222))) b!8057019))

(check-sat (not b!8056993) (not b!8057014) tp_is_empty!55045 (not d!2398777) (not b!8057012) (not b!8057019) (not b!8056997) tp_is_empty!55043 (not d!2398775) (not d!2398769))
(check-sat)
