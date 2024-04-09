; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137316 () Bool)

(assert start!137316)

(declare-fun res!1080018 () Bool)

(declare-fun e!881980 () Bool)

(assert (=> start!137316 (=> (not res!1080018) (not e!881980))))

(declare-datatypes ((B!2680 0))(
  ( (B!2681 (val!19702 Int)) )
))
(declare-datatypes ((tuple2!25708 0))(
  ( (tuple2!25709 (_1!12864 (_ BitVec 64)) (_2!12864 B!2680)) )
))
(declare-datatypes ((List!36983 0))(
  ( (Nil!36980) (Cons!36979 (h!38523 tuple2!25708) (t!51904 List!36983)) )
))
(declare-fun l!1390 () List!36983)

(declare-fun isStrictlySorted!1078 (List!36983) Bool)

(assert (=> start!137316 (= res!1080018 (isStrictlySorted!1078 l!1390))))

(assert (=> start!137316 e!881980))

(declare-fun e!881982 () Bool)

(assert (=> start!137316 e!881982))

(assert (=> start!137316 true))

(declare-fun tp_is_empty!39225 () Bool)

(assert (=> start!137316 tp_is_empty!39225))

(declare-fun b!1580781 () Bool)

(declare-fun tp!114529 () Bool)

(assert (=> b!1580781 (= e!881982 (and tp_is_empty!39225 tp!114529))))

(declare-fun b!1580782 () Bool)

(declare-fun res!1080021 () Bool)

(declare-fun e!881979 () Bool)

(assert (=> b!1580782 (=> (not res!1080021) (not e!881979))))

(declare-fun key!405 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1580782 (= res!1080021 (and ((_ is Cons!36979) l!1390) (= (_1!12864 (h!38523 l!1390)) key!405)))))

(declare-fun b!1580783 () Bool)

(declare-fun e!881978 () Bool)

(assert (=> b!1580783 (= e!881980 e!881978)))

(declare-fun res!1080023 () Bool)

(assert (=> b!1580783 (=> (not res!1080023) (not e!881978))))

(declare-fun lt!676761 () tuple2!25708)

(declare-fun contains!10511 (List!36983 tuple2!25708) Bool)

(assert (=> b!1580783 (= res!1080023 (contains!10511 l!1390 lt!676761))))

(declare-fun value!194 () B!2680)

(assert (=> b!1580783 (= lt!676761 (tuple2!25709 key!405 value!194))))

(declare-fun b!1580784 () Bool)

(declare-fun e!881981 () Bool)

(declare-datatypes ((tuple2!25710 0))(
  ( (tuple2!25711 (_1!12865 tuple2!25708) (_2!12865 List!36983)) )
))
(declare-datatypes ((Option!914 0))(
  ( (Some!913 (v!22416 tuple2!25710)) (None!912) )
))
(declare-fun lt!676760 () Option!914)

(declare-fun get!26832 (Option!914) tuple2!25710)

(assert (=> b!1580784 (= e!881981 (not ((_ is Nil!36980) (_2!12865 (get!26832 lt!676760)))))))

(declare-fun b!1580785 () Bool)

(declare-fun res!1080016 () Bool)

(assert (=> b!1580785 (=> (not res!1080016) (not e!881979))))

(declare-fun containsKey!924 (List!36983 (_ BitVec 64)) Bool)

(assert (=> b!1580785 (= res!1080016 (not (containsKey!924 (t!51904 l!1390) key!405)))))

(declare-fun b!1580786 () Bool)

(declare-datatypes ((Option!915 0))(
  ( (Some!914 (v!22417 B!2680)) (None!913) )
))
(declare-fun getValueByKey!820 (List!36983 (_ BitVec 64)) Option!915)

(assert (=> b!1580786 (= e!881979 (not (= (getValueByKey!820 l!1390 key!405) (Some!914 value!194))))))

(assert (=> b!1580786 (not (contains!10511 (t!51904 l!1390) lt!676761))))

(declare-datatypes ((Unit!52186 0))(
  ( (Unit!52187) )
))
(declare-fun lt!676762 () Unit!52186)

(declare-fun lemmaNotContainsKeyThenNotContainsTuple!5 (List!36983 (_ BitVec 64) B!2680) Unit!52186)

(assert (=> b!1580786 (= lt!676762 (lemmaNotContainsKeyThenNotContainsTuple!5 (t!51904 l!1390) key!405 value!194))))

(declare-fun b!1580787 () Bool)

(declare-fun res!1080022 () Bool)

(assert (=> b!1580787 (=> (not res!1080022) (not e!881979))))

(assert (=> b!1580787 (= res!1080022 (isStrictlySorted!1078 (t!51904 l!1390)))))

(declare-fun b!1580788 () Bool)

(declare-fun res!1080019 () Bool)

(assert (=> b!1580788 (=> (not res!1080019) (not e!881980))))

(assert (=> b!1580788 (= res!1080019 (containsKey!924 l!1390 key!405))))

(declare-fun b!1580789 () Bool)

(assert (=> b!1580789 (= e!881978 e!881979)))

(declare-fun res!1080017 () Bool)

(assert (=> b!1580789 (=> (not res!1080017) (not e!881979))))

(assert (=> b!1580789 (= res!1080017 e!881981)))

(declare-fun res!1080020 () Bool)

(assert (=> b!1580789 (=> res!1080020 e!881981)))

(declare-fun isEmpty!1175 (Option!914) Bool)

(assert (=> b!1580789 (= res!1080020 (isEmpty!1175 lt!676760))))

(declare-fun unapply!89 (List!36983) Option!914)

(assert (=> b!1580789 (= lt!676760 (unapply!89 l!1390))))

(assert (= (and start!137316 res!1080018) b!1580788))

(assert (= (and b!1580788 res!1080019) b!1580783))

(assert (= (and b!1580783 res!1080023) b!1580789))

(assert (= (and b!1580789 (not res!1080020)) b!1580784))

(assert (= (and b!1580789 res!1080017) b!1580782))

(assert (= (and b!1580782 res!1080021) b!1580787))

(assert (= (and b!1580787 res!1080022) b!1580785))

(assert (= (and b!1580785 res!1080016) b!1580786))

(assert (= (and start!137316 ((_ is Cons!36979) l!1390)) b!1580781))

(declare-fun m!1452027 () Bool)

(assert (=> b!1580785 m!1452027))

(declare-fun m!1452029 () Bool)

(assert (=> start!137316 m!1452029))

(declare-fun m!1452031 () Bool)

(assert (=> b!1580783 m!1452031))

(declare-fun m!1452033 () Bool)

(assert (=> b!1580784 m!1452033))

(declare-fun m!1452035 () Bool)

(assert (=> b!1580787 m!1452035))

(declare-fun m!1452037 () Bool)

(assert (=> b!1580788 m!1452037))

(declare-fun m!1452039 () Bool)

(assert (=> b!1580786 m!1452039))

(declare-fun m!1452041 () Bool)

(assert (=> b!1580786 m!1452041))

(declare-fun m!1452043 () Bool)

(assert (=> b!1580786 m!1452043))

(declare-fun m!1452045 () Bool)

(assert (=> b!1580789 m!1452045))

(declare-fun m!1452047 () Bool)

(assert (=> b!1580789 m!1452047))

(check-sat (not b!1580789) (not b!1580786) tp_is_empty!39225 (not b!1580781) (not b!1580787) (not start!137316) (not b!1580784) (not b!1580783) (not b!1580785) (not b!1580788))
(check-sat)
(get-model)

(declare-fun d!166491 () Bool)

(declare-fun res!1080052 () Bool)

(declare-fun e!882002 () Bool)

(assert (=> d!166491 (=> res!1080052 e!882002)))

(assert (=> d!166491 (= res!1080052 (or ((_ is Nil!36980) l!1390) ((_ is Nil!36980) (t!51904 l!1390))))))

(assert (=> d!166491 (= (isStrictlySorted!1078 l!1390) e!882002)))

(declare-fun b!1580821 () Bool)

(declare-fun e!882003 () Bool)

(assert (=> b!1580821 (= e!882002 e!882003)))

(declare-fun res!1080053 () Bool)

(assert (=> b!1580821 (=> (not res!1080053) (not e!882003))))

(assert (=> b!1580821 (= res!1080053 (bvslt (_1!12864 (h!38523 l!1390)) (_1!12864 (h!38523 (t!51904 l!1390)))))))

(declare-fun b!1580822 () Bool)

(assert (=> b!1580822 (= e!882003 (isStrictlySorted!1078 (t!51904 l!1390)))))

(assert (= (and d!166491 (not res!1080052)) b!1580821))

(assert (= (and b!1580821 res!1080053) b!1580822))

(assert (=> b!1580822 m!1452035))

(assert (=> start!137316 d!166491))

(declare-fun d!166493 () Bool)

(assert (=> d!166493 (= (isEmpty!1175 lt!676760) (not ((_ is Some!913) lt!676760)))))

(assert (=> b!1580789 d!166493))

(declare-fun d!166495 () Bool)

(assert (=> d!166495 (= (unapply!89 l!1390) (ite ((_ is Nil!36980) l!1390) None!912 (Some!913 (tuple2!25711 (h!38523 l!1390) (t!51904 l!1390)))))))

(assert (=> b!1580789 d!166495))

(declare-fun d!166497 () Bool)

(assert (=> d!166497 (= (get!26832 lt!676760) (v!22416 lt!676760))))

(assert (=> b!1580784 d!166497))

(declare-fun d!166501 () Bool)

(declare-fun res!1080058 () Bool)

(declare-fun e!882012 () Bool)

(assert (=> d!166501 (=> res!1080058 e!882012)))

(assert (=> d!166501 (= res!1080058 (and ((_ is Cons!36979) l!1390) (= (_1!12864 (h!38523 l!1390)) key!405)))))

(assert (=> d!166501 (= (containsKey!924 l!1390 key!405) e!882012)))

(declare-fun b!1580835 () Bool)

(declare-fun e!882013 () Bool)

(assert (=> b!1580835 (= e!882012 e!882013)))

(declare-fun res!1080059 () Bool)

(assert (=> b!1580835 (=> (not res!1080059) (not e!882013))))

(assert (=> b!1580835 (= res!1080059 (and (or (not ((_ is Cons!36979) l!1390)) (bvsle (_1!12864 (h!38523 l!1390)) key!405)) ((_ is Cons!36979) l!1390) (bvslt (_1!12864 (h!38523 l!1390)) key!405)))))

(declare-fun b!1580836 () Bool)

(assert (=> b!1580836 (= e!882013 (containsKey!924 (t!51904 l!1390) key!405))))

(assert (= (and d!166501 (not res!1080058)) b!1580835))

(assert (= (and b!1580835 res!1080059) b!1580836))

(assert (=> b!1580836 m!1452027))

(assert (=> b!1580788 d!166501))

(declare-fun d!166507 () Bool)

(declare-fun lt!676774 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!844 (List!36983) (InoxSet tuple2!25708))

(assert (=> d!166507 (= lt!676774 (select (content!844 l!1390) lt!676761))))

(declare-fun e!882027 () Bool)

(assert (=> d!166507 (= lt!676774 e!882027)))

(declare-fun res!1080070 () Bool)

(assert (=> d!166507 (=> (not res!1080070) (not e!882027))))

(assert (=> d!166507 (= res!1080070 ((_ is Cons!36979) l!1390))))

(assert (=> d!166507 (= (contains!10511 l!1390 lt!676761) lt!676774)))

(declare-fun b!1580851 () Bool)

(declare-fun e!882026 () Bool)

(assert (=> b!1580851 (= e!882027 e!882026)))

(declare-fun res!1080071 () Bool)

(assert (=> b!1580851 (=> res!1080071 e!882026)))

(assert (=> b!1580851 (= res!1080071 (= (h!38523 l!1390) lt!676761))))

(declare-fun b!1580852 () Bool)

(assert (=> b!1580852 (= e!882026 (contains!10511 (t!51904 l!1390) lt!676761))))

(assert (= (and d!166507 res!1080070) b!1580851))

(assert (= (and b!1580851 (not res!1080071)) b!1580852))

(declare-fun m!1452073 () Bool)

(assert (=> d!166507 m!1452073))

(declare-fun m!1452075 () Bool)

(assert (=> d!166507 m!1452075))

(assert (=> b!1580852 m!1452041))

(assert (=> b!1580783 d!166507))

(declare-fun d!166513 () Bool)

(declare-fun res!1080072 () Bool)

(declare-fun e!882028 () Bool)

(assert (=> d!166513 (=> res!1080072 e!882028)))

(assert (=> d!166513 (= res!1080072 (or ((_ is Nil!36980) (t!51904 l!1390)) ((_ is Nil!36980) (t!51904 (t!51904 l!1390)))))))

(assert (=> d!166513 (= (isStrictlySorted!1078 (t!51904 l!1390)) e!882028)))

(declare-fun b!1580853 () Bool)

(declare-fun e!882029 () Bool)

(assert (=> b!1580853 (= e!882028 e!882029)))

(declare-fun res!1080073 () Bool)

(assert (=> b!1580853 (=> (not res!1080073) (not e!882029))))

(assert (=> b!1580853 (= res!1080073 (bvslt (_1!12864 (h!38523 (t!51904 l!1390))) (_1!12864 (h!38523 (t!51904 (t!51904 l!1390))))))))

(declare-fun b!1580854 () Bool)

(assert (=> b!1580854 (= e!882029 (isStrictlySorted!1078 (t!51904 (t!51904 l!1390))))))

(assert (= (and d!166513 (not res!1080072)) b!1580853))

(assert (= (and b!1580853 res!1080073) b!1580854))

(declare-fun m!1452077 () Bool)

(assert (=> b!1580854 m!1452077))

(assert (=> b!1580787 d!166513))

(declare-fun d!166515 () Bool)

(declare-fun res!1080074 () Bool)

(declare-fun e!882030 () Bool)

(assert (=> d!166515 (=> res!1080074 e!882030)))

(assert (=> d!166515 (= res!1080074 (and ((_ is Cons!36979) (t!51904 l!1390)) (= (_1!12864 (h!38523 (t!51904 l!1390))) key!405)))))

(assert (=> d!166515 (= (containsKey!924 (t!51904 l!1390) key!405) e!882030)))

(declare-fun b!1580855 () Bool)

(declare-fun e!882031 () Bool)

(assert (=> b!1580855 (= e!882030 e!882031)))

(declare-fun res!1080075 () Bool)

(assert (=> b!1580855 (=> (not res!1080075) (not e!882031))))

(assert (=> b!1580855 (= res!1080075 (and (or (not ((_ is Cons!36979) (t!51904 l!1390))) (bvsle (_1!12864 (h!38523 (t!51904 l!1390))) key!405)) ((_ is Cons!36979) (t!51904 l!1390)) (bvslt (_1!12864 (h!38523 (t!51904 l!1390))) key!405)))))

(declare-fun b!1580856 () Bool)

(assert (=> b!1580856 (= e!882031 (containsKey!924 (t!51904 (t!51904 l!1390)) key!405))))

(assert (= (and d!166515 (not res!1080074)) b!1580855))

(assert (= (and b!1580855 res!1080075) b!1580856))

(declare-fun m!1452079 () Bool)

(assert (=> b!1580856 m!1452079))

(assert (=> b!1580785 d!166515))

(declare-fun b!1580884 () Bool)

(declare-fun e!882048 () Option!915)

(declare-fun e!882049 () Option!915)

(assert (=> b!1580884 (= e!882048 e!882049)))

(declare-fun c!146517 () Bool)

(assert (=> b!1580884 (= c!146517 (and ((_ is Cons!36979) l!1390) (not (= (_1!12864 (h!38523 l!1390)) key!405))))))

(declare-fun b!1580883 () Bool)

(assert (=> b!1580883 (= e!882048 (Some!914 (_2!12864 (h!38523 l!1390))))))

(declare-fun d!166517 () Bool)

(declare-fun c!146516 () Bool)

(assert (=> d!166517 (= c!146516 (and ((_ is Cons!36979) l!1390) (= (_1!12864 (h!38523 l!1390)) key!405)))))

(assert (=> d!166517 (= (getValueByKey!820 l!1390 key!405) e!882048)))

(declare-fun b!1580885 () Bool)

(assert (=> b!1580885 (= e!882049 (getValueByKey!820 (t!51904 l!1390) key!405))))

(declare-fun b!1580886 () Bool)

(assert (=> b!1580886 (= e!882049 None!913)))

(assert (= (and d!166517 c!146516) b!1580883))

(assert (= (and d!166517 (not c!146516)) b!1580884))

(assert (= (and b!1580884 c!146517) b!1580885))

(assert (= (and b!1580884 (not c!146517)) b!1580886))

(declare-fun m!1452089 () Bool)

(assert (=> b!1580885 m!1452089))

(assert (=> b!1580786 d!166517))

(declare-fun d!166523 () Bool)

(declare-fun lt!676778 () Bool)

(assert (=> d!166523 (= lt!676778 (select (content!844 (t!51904 l!1390)) lt!676761))))

(declare-fun e!882051 () Bool)

(assert (=> d!166523 (= lt!676778 e!882051)))

(declare-fun res!1080082 () Bool)

(assert (=> d!166523 (=> (not res!1080082) (not e!882051))))

(assert (=> d!166523 (= res!1080082 ((_ is Cons!36979) (t!51904 l!1390)))))

(assert (=> d!166523 (= (contains!10511 (t!51904 l!1390) lt!676761) lt!676778)))

(declare-fun b!1580887 () Bool)

(declare-fun e!882050 () Bool)

(assert (=> b!1580887 (= e!882051 e!882050)))

(declare-fun res!1080083 () Bool)

(assert (=> b!1580887 (=> res!1080083 e!882050)))

(assert (=> b!1580887 (= res!1080083 (= (h!38523 (t!51904 l!1390)) lt!676761))))

(declare-fun b!1580888 () Bool)

(assert (=> b!1580888 (= e!882050 (contains!10511 (t!51904 (t!51904 l!1390)) lt!676761))))

(assert (= (and d!166523 res!1080082) b!1580887))

(assert (= (and b!1580887 (not res!1080083)) b!1580888))

(declare-fun m!1452091 () Bool)

(assert (=> d!166523 m!1452091))

(declare-fun m!1452093 () Bool)

(assert (=> d!166523 m!1452093))

(declare-fun m!1452095 () Bool)

(assert (=> b!1580888 m!1452095))

(assert (=> b!1580786 d!166523))

(declare-fun d!166525 () Bool)

(assert (=> d!166525 (not (contains!10511 (t!51904 l!1390) (tuple2!25709 key!405 value!194)))))

(declare-fun lt!676785 () Unit!52186)

(declare-fun choose!2099 (List!36983 (_ BitVec 64) B!2680) Unit!52186)

(assert (=> d!166525 (= lt!676785 (choose!2099 (t!51904 l!1390) key!405 value!194))))

(declare-fun e!882060 () Bool)

(assert (=> d!166525 e!882060))

(declare-fun res!1080092 () Bool)

(assert (=> d!166525 (=> (not res!1080092) (not e!882060))))

(assert (=> d!166525 (= res!1080092 (isStrictlySorted!1078 (t!51904 l!1390)))))

(assert (=> d!166525 (= (lemmaNotContainsKeyThenNotContainsTuple!5 (t!51904 l!1390) key!405 value!194) lt!676785)))

(declare-fun b!1580897 () Bool)

(assert (=> b!1580897 (= e!882060 (not (containsKey!924 (t!51904 l!1390) key!405)))))

(assert (= (and d!166525 res!1080092) b!1580897))

(declare-fun m!1452097 () Bool)

(assert (=> d!166525 m!1452097))

(declare-fun m!1452099 () Bool)

(assert (=> d!166525 m!1452099))

(assert (=> d!166525 m!1452035))

(assert (=> b!1580897 m!1452027))

(assert (=> b!1580786 d!166525))

(declare-fun b!1580902 () Bool)

(declare-fun e!882063 () Bool)

(declare-fun tp!114535 () Bool)

(assert (=> b!1580902 (= e!882063 (and tp_is_empty!39225 tp!114535))))

(assert (=> b!1580781 (= tp!114529 e!882063)))

(assert (= (and b!1580781 ((_ is Cons!36979) (t!51904 l!1390))) b!1580902))

(check-sat (not b!1580888) (not b!1580885) tp_is_empty!39225 (not d!166507) (not b!1580836) (not b!1580856) (not b!1580902) (not b!1580854) (not b!1580897) (not b!1580852) (not d!166523) (not b!1580822) (not d!166525))
(check-sat)
