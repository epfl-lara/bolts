; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101954 () Bool)

(assert start!101954)

(declare-fun b!1227088 () Bool)

(declare-fun e!696832 () Bool)

(declare-datatypes ((List!27173 0))(
  ( (Nil!27170) (Cons!27169 (h!28378 (_ BitVec 64)) (t!40643 List!27173)) )
))
(declare-fun lt!558824 () List!27173)

(declare-fun contains!7088 (List!27173 (_ BitVec 64)) Bool)

(assert (=> b!1227088 (= e!696832 (contains!7088 lt!558824 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227089 () Bool)

(declare-fun res!815840 () Bool)

(declare-fun e!696831 () Bool)

(assert (=> b!1227089 (=> (not res!815840) (not e!696831))))

(declare-datatypes ((array!79203 0))(
  ( (array!79204 (arr!38222 (Array (_ BitVec 32) (_ BitVec 64))) (size!38759 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79203)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1227089 (= res!815840 (validKeyInArray!0 (select (arr!38222 a!3806) from!3184)))))

(declare-fun b!1227090 () Bool)

(declare-fun res!815839 () Bool)

(assert (=> b!1227090 (=> (not res!815839) (not e!696831))))

(declare-fun acc!823 () List!27173)

(assert (=> b!1227090 (= res!815839 (not (contains!7088 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227091 () Bool)

(declare-fun e!696829 () Bool)

(assert (=> b!1227091 (= e!696831 e!696829)))

(declare-fun res!815843 () Bool)

(assert (=> b!1227091 (=> (not res!815843) (not e!696829))))

(assert (=> b!1227091 (= res!815843 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (=> b!1227091 (= lt!558824 (Cons!27169 (select (arr!38222 a!3806) from!3184) acc!823))))

(declare-fun b!1227092 () Bool)

(declare-fun res!815842 () Bool)

(assert (=> b!1227092 (=> (not res!815842) (not e!696831))))

(declare-fun arrayNoDuplicates!0 (array!79203 (_ BitVec 32) List!27173) Bool)

(assert (=> b!1227092 (= res!815842 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1227093 () Bool)

(declare-fun res!815846 () Bool)

(assert (=> b!1227093 (=> (not res!815846) (not e!696829))))

(declare-fun noDuplicate!1695 (List!27173) Bool)

(assert (=> b!1227093 (= res!815846 (noDuplicate!1695 lt!558824))))

(declare-fun b!1227094 () Bool)

(declare-fun res!815837 () Bool)

(assert (=> b!1227094 (=> (not res!815837) (not e!696831))))

(assert (=> b!1227094 (= res!815837 (not (contains!7088 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227095 () Bool)

(assert (=> b!1227095 (= e!696829 e!696832)))

(declare-fun res!815836 () Bool)

(assert (=> b!1227095 (=> res!815836 e!696832)))

(assert (=> b!1227095 (= res!815836 (contains!7088 lt!558824 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!815844 () Bool)

(assert (=> start!101954 (=> (not res!815844) (not e!696831))))

(assert (=> start!101954 (= res!815844 (bvslt (size!38759 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101954 e!696831))

(declare-fun array_inv!28998 (array!79203) Bool)

(assert (=> start!101954 (array_inv!28998 a!3806)))

(assert (=> start!101954 true))

(declare-fun b!1227096 () Bool)

(declare-fun res!815841 () Bool)

(assert (=> b!1227096 (=> (not res!815841) (not e!696831))))

(assert (=> b!1227096 (= res!815841 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38759 a!3806)) (bvslt from!3184 (size!38759 a!3806))))))

(declare-fun b!1227097 () Bool)

(declare-fun res!815845 () Bool)

(assert (=> b!1227097 (=> (not res!815845) (not e!696831))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79203 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1227097 (= res!815845 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1227098 () Bool)

(declare-fun res!815838 () Bool)

(assert (=> b!1227098 (=> (not res!815838) (not e!696831))))

(assert (=> b!1227098 (= res!815838 (validKeyInArray!0 k!2913))))

(declare-fun b!1227099 () Bool)

(declare-fun res!815835 () Bool)

(assert (=> b!1227099 (=> (not res!815835) (not e!696831))))

(assert (=> b!1227099 (= res!815835 (noDuplicate!1695 acc!823))))

(assert (= (and start!101954 res!815844) b!1227098))

(assert (= (and b!1227098 res!815838) b!1227096))

(assert (= (and b!1227096 res!815841) b!1227099))

(assert (= (and b!1227099 res!815835) b!1227094))

(assert (= (and b!1227094 res!815837) b!1227090))

(assert (= (and b!1227090 res!815839) b!1227097))

(assert (= (and b!1227097 res!815845) b!1227092))

(assert (= (and b!1227092 res!815842) b!1227089))

(assert (= (and b!1227089 res!815840) b!1227091))

(assert (= (and b!1227091 res!815843) b!1227093))

(assert (= (and b!1227093 res!815846) b!1227095))

(assert (= (and b!1227095 (not res!815836)) b!1227088))

(declare-fun m!1131977 () Bool)

(assert (=> b!1227098 m!1131977))

(declare-fun m!1131979 () Bool)

(assert (=> b!1227092 m!1131979))

(declare-fun m!1131981 () Bool)

(assert (=> b!1227091 m!1131981))

(declare-fun m!1131983 () Bool)

(assert (=> start!101954 m!1131983))

(declare-fun m!1131985 () Bool)

(assert (=> b!1227088 m!1131985))

(declare-fun m!1131987 () Bool)

(assert (=> b!1227097 m!1131987))

(declare-fun m!1131989 () Bool)

(assert (=> b!1227093 m!1131989))

(declare-fun m!1131991 () Bool)

(assert (=> b!1227099 m!1131991))

(declare-fun m!1131993 () Bool)

(assert (=> b!1227095 m!1131993))

(assert (=> b!1227089 m!1131981))

(assert (=> b!1227089 m!1131981))

(declare-fun m!1131995 () Bool)

(assert (=> b!1227089 m!1131995))

(declare-fun m!1131997 () Bool)

(assert (=> b!1227094 m!1131997))

(declare-fun m!1131999 () Bool)

(assert (=> b!1227090 m!1131999))

(push 1)

(assert (not start!101954))

(assert (not b!1227098))

(assert (not b!1227089))

(assert (not b!1227090))

(assert (not b!1227093))

(assert (not b!1227099))

(assert (not b!1227094))

(assert (not b!1227097))

(assert (not b!1227092))

(assert (not b!1227088))

(assert (not b!1227095))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!134047 () Bool)

(assert (=> d!134047 (= (validKeyInArray!0 k!2913) (and (not (= k!2913 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2913 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1227098 d!134047))

(declare-fun d!134055 () Bool)

(declare-fun res!815867 () Bool)

(declare-fun e!696853 () Bool)

(assert (=> d!134055 (=> res!815867 e!696853)))

(assert (=> d!134055 (= res!815867 (is-Nil!27170 lt!558824))))

(assert (=> d!134055 (= (noDuplicate!1695 lt!558824) e!696853)))

(declare-fun b!1227120 () Bool)

(declare-fun e!696854 () Bool)

(assert (=> b!1227120 (= e!696853 e!696854)))

(declare-fun res!815868 () Bool)

(assert (=> b!1227120 (=> (not res!815868) (not e!696854))))

(assert (=> b!1227120 (= res!815868 (not (contains!7088 (t!40643 lt!558824) (h!28378 lt!558824))))))

(declare-fun b!1227121 () Bool)

(assert (=> b!1227121 (= e!696854 (noDuplicate!1695 (t!40643 lt!558824)))))

(assert (= (and d!134055 (not res!815867)) b!1227120))

(assert (= (and b!1227120 res!815868) b!1227121))

(declare-fun m!1132021 () Bool)

(assert (=> b!1227120 m!1132021))

(declare-fun m!1132023 () Bool)

(assert (=> b!1227121 m!1132023))

(assert (=> b!1227093 d!134055))

(declare-fun d!134061 () Bool)

(declare-fun lt!558835 () Bool)

(declare-fun content!557 (List!27173) (Set (_ BitVec 64)))

(assert (=> d!134061 (= lt!558835 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!557 lt!558824)))))

(declare-fun e!696875 () Bool)

(assert (=> d!134061 (= lt!558835 e!696875)))

(declare-fun res!815888 () Bool)

(assert (=> d!134061 (=> (not res!815888) (not e!696875))))

(assert (=> d!134061 (= res!815888 (is-Cons!27169 lt!558824))))

(assert (=> d!134061 (= (contains!7088 lt!558824 #b1000000000000000000000000000000000000000000000000000000000000000) lt!558835)))

(declare-fun b!1227144 () Bool)

(declare-fun e!696876 () Bool)

(assert (=> b!1227144 (= e!696875 e!696876)))

(declare-fun res!815887 () Bool)

(assert (=> b!1227144 (=> res!815887 e!696876)))

(assert (=> b!1227144 (= res!815887 (= (h!28378 lt!558824) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227145 () Bool)

(assert (=> b!1227145 (= e!696876 (contains!7088 (t!40643 lt!558824) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134061 res!815888) b!1227144))

(assert (= (and b!1227144 (not res!815887)) b!1227145))

(declare-fun m!1132035 () Bool)

(assert (=> d!134061 m!1132035))

(declare-fun m!1132037 () Bool)

(assert (=> d!134061 m!1132037))

(declare-fun m!1132039 () Bool)

(assert (=> b!1227145 m!1132039))

(assert (=> b!1227088 d!134061))

(declare-fun d!134067 () Bool)

(declare-fun res!815892 () Bool)

(declare-fun e!696881 () Bool)

(assert (=> d!134067 (=> res!815892 e!696881)))

(assert (=> d!134067 (= res!815892 (is-Nil!27170 acc!823))))

(assert (=> d!134067 (= (noDuplicate!1695 acc!823) e!696881)))

(declare-fun b!1227151 () Bool)

(declare-fun e!696882 () Bool)

(assert (=> b!1227151 (= e!696881 e!696882)))

(declare-fun res!815893 () Bool)

(assert (=> b!1227151 (=> (not res!815893) (not e!696882))))

(assert (=> b!1227151 (= res!815893 (not (contains!7088 (t!40643 acc!823) (h!28378 acc!823))))))

(declare-fun b!1227152 () Bool)

(assert (=> b!1227152 (= e!696882 (noDuplicate!1695 (t!40643 acc!823)))))

(assert (= (and d!134067 (not res!815892)) b!1227151))

(assert (= (and b!1227151 res!815893) b!1227152))

(declare-fun m!1132041 () Bool)

(assert (=> b!1227151 m!1132041))

(declare-fun m!1132043 () Bool)

(assert (=> b!1227152 m!1132043))

(assert (=> b!1227099 d!134067))

(declare-fun d!134069 () Bool)

(declare-fun res!815908 () Bool)

(declare-fun e!696897 () Bool)

(assert (=> d!134069 (=> res!815908 e!696897)))

(assert (=> d!134069 (= res!815908 (= (select (arr!38222 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) k!2913))))

(assert (=> d!134069 (= (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)) e!696897)))

(declare-fun b!1227167 () Bool)

(declare-fun e!696898 () Bool)

(assert (=> b!1227167 (= e!696897 e!696898)))

(declare-fun res!815909 () Bool)

(assert (=> b!1227167 (=> (not res!815909) (not e!696898))))

(assert (=> b!1227167 (= res!815909 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38759 a!3806)))))

(declare-fun b!1227168 () Bool)

(assert (=> b!1227168 (= e!696898 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)))))

(assert (= (and d!134069 (not res!815908)) b!1227167))

(assert (= (and b!1227167 res!815909) b!1227168))

(declare-fun m!1132053 () Bool)

(assert (=> d!134069 m!1132053))

(declare-fun m!1132055 () Bool)

(assert (=> b!1227168 m!1132055))

(assert (=> b!1227097 d!134069))

(declare-fun d!134075 () Bool)

(assert (=> d!134075 (= (array_inv!28998 a!3806) (bvsge (size!38759 a!3806) #b00000000000000000000000000000000))))

(assert (=> start!101954 d!134075))

(declare-fun b!1227203 () Bool)

(declare-fun e!696931 () Bool)

(declare-fun e!696932 () Bool)

(assert (=> b!1227203 (= e!696931 e!696932)))

(declare-fun res!815936 () Bool)

(assert (=> b!1227203 (=> (not res!815936) (not e!696932))))

(declare-fun e!696929 () Bool)

(assert (=> b!1227203 (= res!815936 (not e!696929))))

(declare-fun res!815938 () Bool)

(assert (=> b!1227203 (=> (not res!815938) (not e!696929))))

(assert (=> b!1227203 (= res!815938 (validKeyInArray!0 (select (arr!38222 a!3806) from!3184)))))

(declare-fun d!134077 () Bool)

(declare-fun res!815937 () Bool)

(assert (=> d!134077 (=> res!815937 e!696931)))

(assert (=> d!134077 (= res!815937 (bvsge from!3184 (size!38759 a!3806)))))

(assert (=> d!134077 (= (arrayNoDuplicates!0 a!3806 from!3184 acc!823) e!696931)))

(declare-fun b!1227204 () Bool)

(declare-fun e!696930 () Bool)

(declare-fun call!60805 () Bool)

(assert (=> b!1227204 (= e!696930 call!60805)))

(declare-fun b!1227205 () Bool)

(assert (=> b!1227205 (= e!696932 e!696930)))

(declare-fun c!120496 () Bool)

(assert (=> b!1227205 (= c!120496 (validKeyInArray!0 (select (arr!38222 a!3806) from!3184)))))

(declare-fun bm!60802 () Bool)

(assert (=> bm!60802 (= call!60805 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120496 (Cons!27169 (select (arr!38222 a!3806) from!3184) acc!823) acc!823)))))

(declare-fun b!1227206 () Bool)

(assert (=> b!1227206 (= e!696929 (contains!7088 acc!823 (select (arr!38222 a!3806) from!3184)))))

(declare-fun b!1227207 () Bool)

(assert (=> b!1227207 (= e!696930 call!60805)))

(assert (= (and d!134077 (not res!815937)) b!1227203))

(assert (= (and b!1227203 res!815938) b!1227206))

(assert (= (and b!1227203 res!815936) b!1227205))

(assert (= (and b!1227205 c!120496) b!1227204))

(assert (= (and b!1227205 (not c!120496)) b!1227207))

(assert (= (or b!1227204 b!1227207) bm!60802))

(assert (=> b!1227203 m!1131981))

(assert (=> b!1227203 m!1131981))

(assert (=> b!1227203 m!1131995))

