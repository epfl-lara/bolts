; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101952 () Bool)

(assert start!101952)

(declare-fun b!1227052 () Bool)

(declare-fun res!815807 () Bool)

(declare-fun e!696819 () Bool)

(assert (=> b!1227052 (=> (not res!815807) (not e!696819))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1227052 (= res!815807 (validKeyInArray!0 k0!2913))))

(declare-fun b!1227053 () Bool)

(declare-fun e!696820 () Bool)

(assert (=> b!1227053 (= e!696819 e!696820)))

(declare-fun res!815800 () Bool)

(assert (=> b!1227053 (=> (not res!815800) (not e!696820))))

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1227053 (= res!815800 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(declare-datatypes ((List!27172 0))(
  ( (Nil!27169) (Cons!27168 (h!28377 (_ BitVec 64)) (t!40642 List!27172)) )
))
(declare-fun lt!558821 () List!27172)

(declare-datatypes ((array!79201 0))(
  ( (array!79202 (arr!38221 (Array (_ BitVec 32) (_ BitVec 64))) (size!38758 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79201)

(declare-fun acc!823 () List!27172)

(assert (=> b!1227053 (= lt!558821 (Cons!27168 (select (arr!38221 a!3806) from!3184) acc!823))))

(declare-fun b!1227054 () Bool)

(declare-fun res!815802 () Bool)

(assert (=> b!1227054 (=> (not res!815802) (not e!696820))))

(declare-fun noDuplicate!1694 (List!27172) Bool)

(assert (=> b!1227054 (= res!815802 (noDuplicate!1694 lt!558821))))

(declare-fun b!1227055 () Bool)

(declare-fun res!815804 () Bool)

(assert (=> b!1227055 (=> (not res!815804) (not e!696819))))

(declare-fun contains!7087 (List!27172 (_ BitVec 64)) Bool)

(assert (=> b!1227055 (= res!815804 (not (contains!7087 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227056 () Bool)

(declare-fun res!815801 () Bool)

(assert (=> b!1227056 (=> (not res!815801) (not e!696819))))

(assert (=> b!1227056 (= res!815801 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38758 a!3806)) (bvslt from!3184 (size!38758 a!3806))))))

(declare-fun b!1227057 () Bool)

(declare-fun res!815803 () Bool)

(assert (=> b!1227057 (=> (not res!815803) (not e!696819))))

(assert (=> b!1227057 (= res!815803 (validKeyInArray!0 (select (arr!38221 a!3806) from!3184)))))

(declare-fun b!1227058 () Bool)

(declare-fun res!815805 () Bool)

(assert (=> b!1227058 (=> (not res!815805) (not e!696819))))

(declare-fun arrayNoDuplicates!0 (array!79201 (_ BitVec 32) List!27172) Bool)

(assert (=> b!1227058 (= res!815805 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun res!815799 () Bool)

(assert (=> start!101952 (=> (not res!815799) (not e!696819))))

(assert (=> start!101952 (= res!815799 (bvslt (size!38758 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101952 e!696819))

(declare-fun array_inv!28997 (array!79201) Bool)

(assert (=> start!101952 (array_inv!28997 a!3806)))

(assert (=> start!101952 true))

(declare-fun b!1227059 () Bool)

(declare-fun res!815810 () Bool)

(assert (=> b!1227059 (=> (not res!815810) (not e!696819))))

(assert (=> b!1227059 (= res!815810 (not (contains!7087 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227060 () Bool)

(declare-fun res!815809 () Bool)

(assert (=> b!1227060 (=> (not res!815809) (not e!696819))))

(assert (=> b!1227060 (= res!815809 (noDuplicate!1694 acc!823))))

(declare-fun b!1227061 () Bool)

(declare-fun e!696818 () Bool)

(assert (=> b!1227061 (= e!696818 (contains!7087 lt!558821 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227062 () Bool)

(declare-fun res!815808 () Bool)

(assert (=> b!1227062 (=> (not res!815808) (not e!696819))))

(declare-fun arrayContainsKey!0 (array!79201 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1227062 (= res!815808 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1227063 () Bool)

(assert (=> b!1227063 (= e!696820 e!696818)))

(declare-fun res!815806 () Bool)

(assert (=> b!1227063 (=> res!815806 e!696818)))

(assert (=> b!1227063 (= res!815806 (contains!7087 lt!558821 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!101952 res!815799) b!1227052))

(assert (= (and b!1227052 res!815807) b!1227056))

(assert (= (and b!1227056 res!815801) b!1227060))

(assert (= (and b!1227060 res!815809) b!1227055))

(assert (= (and b!1227055 res!815804) b!1227059))

(assert (= (and b!1227059 res!815810) b!1227062))

(assert (= (and b!1227062 res!815808) b!1227058))

(assert (= (and b!1227058 res!815805) b!1227057))

(assert (= (and b!1227057 res!815803) b!1227053))

(assert (= (and b!1227053 res!815800) b!1227054))

(assert (= (and b!1227054 res!815802) b!1227063))

(assert (= (and b!1227063 (not res!815806)) b!1227061))

(declare-fun m!1131953 () Bool)

(assert (=> b!1227054 m!1131953))

(declare-fun m!1131955 () Bool)

(assert (=> b!1227053 m!1131955))

(declare-fun m!1131957 () Bool)

(assert (=> b!1227055 m!1131957))

(declare-fun m!1131959 () Bool)

(assert (=> b!1227058 m!1131959))

(declare-fun m!1131961 () Bool)

(assert (=> b!1227059 m!1131961))

(declare-fun m!1131963 () Bool)

(assert (=> b!1227060 m!1131963))

(assert (=> b!1227057 m!1131955))

(assert (=> b!1227057 m!1131955))

(declare-fun m!1131965 () Bool)

(assert (=> b!1227057 m!1131965))

(declare-fun m!1131967 () Bool)

(assert (=> start!101952 m!1131967))

(declare-fun m!1131969 () Bool)

(assert (=> b!1227061 m!1131969))

(declare-fun m!1131971 () Bool)

(assert (=> b!1227062 m!1131971))

(declare-fun m!1131973 () Bool)

(assert (=> b!1227063 m!1131973))

(declare-fun m!1131975 () Bool)

(assert (=> b!1227052 m!1131975))

(check-sat (not b!1227062) (not b!1227060) (not b!1227063) (not b!1227055) (not b!1227052) (not b!1227054) (not b!1227058) (not b!1227061) (not start!101952) (not b!1227059) (not b!1227057))
(check-sat)
(get-model)

(declare-fun d!134043 () Bool)

(declare-fun lt!558827 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!555 (List!27172) (InoxSet (_ BitVec 64)))

(assert (=> d!134043 (= lt!558827 (select (content!555 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!696837 () Bool)

(assert (=> d!134043 (= lt!558827 e!696837)))

(declare-fun res!815852 () Bool)

(assert (=> d!134043 (=> (not res!815852) (not e!696837))))

(get-info :version)

(assert (=> d!134043 (= res!815852 ((_ is Cons!27168) acc!823))))

(assert (=> d!134043 (= (contains!7087 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000) lt!558827)))

(declare-fun b!1227104 () Bool)

(declare-fun e!696838 () Bool)

(assert (=> b!1227104 (= e!696837 e!696838)))

(declare-fun res!815851 () Bool)

(assert (=> b!1227104 (=> res!815851 e!696838)))

(assert (=> b!1227104 (= res!815851 (= (h!28377 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227105 () Bool)

(assert (=> b!1227105 (= e!696838 (contains!7087 (t!40642 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134043 res!815852) b!1227104))

(assert (= (and b!1227104 (not res!815851)) b!1227105))

(declare-fun m!1132001 () Bool)

(assert (=> d!134043 m!1132001))

(declare-fun m!1132003 () Bool)

(assert (=> d!134043 m!1132003))

(declare-fun m!1132005 () Bool)

(assert (=> b!1227105 m!1132005))

(assert (=> b!1227059 d!134043))

(declare-fun d!134045 () Bool)

(declare-fun res!815857 () Bool)

(declare-fun e!696843 () Bool)

(assert (=> d!134045 (=> res!815857 e!696843)))

(assert (=> d!134045 (= res!815857 ((_ is Nil!27169) lt!558821))))

(assert (=> d!134045 (= (noDuplicate!1694 lt!558821) e!696843)))

(declare-fun b!1227110 () Bool)

(declare-fun e!696844 () Bool)

(assert (=> b!1227110 (= e!696843 e!696844)))

(declare-fun res!815858 () Bool)

(assert (=> b!1227110 (=> (not res!815858) (not e!696844))))

(assert (=> b!1227110 (= res!815858 (not (contains!7087 (t!40642 lt!558821) (h!28377 lt!558821))))))

(declare-fun b!1227111 () Bool)

(assert (=> b!1227111 (= e!696844 (noDuplicate!1694 (t!40642 lt!558821)))))

(assert (= (and d!134045 (not res!815857)) b!1227110))

(assert (= (and b!1227110 res!815858) b!1227111))

(declare-fun m!1132007 () Bool)

(assert (=> b!1227110 m!1132007))

(declare-fun m!1132009 () Bool)

(assert (=> b!1227111 m!1132009))

(assert (=> b!1227054 d!134045))

(declare-fun d!134049 () Bool)

(declare-fun res!815859 () Bool)

(declare-fun e!696845 () Bool)

(assert (=> d!134049 (=> res!815859 e!696845)))

(assert (=> d!134049 (= res!815859 ((_ is Nil!27169) acc!823))))

(assert (=> d!134049 (= (noDuplicate!1694 acc!823) e!696845)))

(declare-fun b!1227112 () Bool)

(declare-fun e!696846 () Bool)

(assert (=> b!1227112 (= e!696845 e!696846)))

(declare-fun res!815860 () Bool)

(assert (=> b!1227112 (=> (not res!815860) (not e!696846))))

(assert (=> b!1227112 (= res!815860 (not (contains!7087 (t!40642 acc!823) (h!28377 acc!823))))))

(declare-fun b!1227113 () Bool)

(assert (=> b!1227113 (= e!696846 (noDuplicate!1694 (t!40642 acc!823)))))

(assert (= (and d!134049 (not res!815859)) b!1227112))

(assert (= (and b!1227112 res!815860) b!1227113))

(declare-fun m!1132011 () Bool)

(assert (=> b!1227112 m!1132011))

(declare-fun m!1132013 () Bool)

(assert (=> b!1227113 m!1132013))

(assert (=> b!1227060 d!134049))

(declare-fun d!134051 () Bool)

(declare-fun lt!558828 () Bool)

(assert (=> d!134051 (= lt!558828 (select (content!555 lt!558821) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!696847 () Bool)

(assert (=> d!134051 (= lt!558828 e!696847)))

(declare-fun res!815862 () Bool)

(assert (=> d!134051 (=> (not res!815862) (not e!696847))))

(assert (=> d!134051 (= res!815862 ((_ is Cons!27168) lt!558821))))

(assert (=> d!134051 (= (contains!7087 lt!558821 #b0000000000000000000000000000000000000000000000000000000000000000) lt!558828)))

(declare-fun b!1227114 () Bool)

(declare-fun e!696848 () Bool)

(assert (=> b!1227114 (= e!696847 e!696848)))

(declare-fun res!815861 () Bool)

(assert (=> b!1227114 (=> res!815861 e!696848)))

(assert (=> b!1227114 (= res!815861 (= (h!28377 lt!558821) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227115 () Bool)

(assert (=> b!1227115 (= e!696848 (contains!7087 (t!40642 lt!558821) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134051 res!815862) b!1227114))

(assert (= (and b!1227114 (not res!815861)) b!1227115))

(declare-fun m!1132015 () Bool)

(assert (=> d!134051 m!1132015))

(declare-fun m!1132017 () Bool)

(assert (=> d!134051 m!1132017))

(declare-fun m!1132019 () Bool)

(assert (=> b!1227115 m!1132019))

(assert (=> b!1227063 d!134051))

(declare-fun b!1227146 () Bool)

(declare-fun e!696878 () Bool)

(declare-fun call!60800 () Bool)

(assert (=> b!1227146 (= e!696878 call!60800)))

(declare-fun b!1227147 () Bool)

(declare-fun e!696880 () Bool)

(assert (=> b!1227147 (= e!696880 e!696878)))

(declare-fun c!120491 () Bool)

(assert (=> b!1227147 (= c!120491 (validKeyInArray!0 (select (arr!38221 a!3806) from!3184)))))

(declare-fun bm!60797 () Bool)

(assert (=> bm!60797 (= call!60800 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120491 (Cons!27168 (select (arr!38221 a!3806) from!3184) acc!823) acc!823)))))

(declare-fun b!1227148 () Bool)

(declare-fun e!696879 () Bool)

(assert (=> b!1227148 (= e!696879 (contains!7087 acc!823 (select (arr!38221 a!3806) from!3184)))))

(declare-fun d!134053 () Bool)

(declare-fun res!815891 () Bool)

(declare-fun e!696877 () Bool)

(assert (=> d!134053 (=> res!815891 e!696877)))

(assert (=> d!134053 (= res!815891 (bvsge from!3184 (size!38758 a!3806)))))

(assert (=> d!134053 (= (arrayNoDuplicates!0 a!3806 from!3184 acc!823) e!696877)))

(declare-fun b!1227149 () Bool)

(assert (=> b!1227149 (= e!696878 call!60800)))

(declare-fun b!1227150 () Bool)

(assert (=> b!1227150 (= e!696877 e!696880)))

(declare-fun res!815889 () Bool)

(assert (=> b!1227150 (=> (not res!815889) (not e!696880))))

(assert (=> b!1227150 (= res!815889 (not e!696879))))

(declare-fun res!815890 () Bool)

(assert (=> b!1227150 (=> (not res!815890) (not e!696879))))

(assert (=> b!1227150 (= res!815890 (validKeyInArray!0 (select (arr!38221 a!3806) from!3184)))))

(assert (= (and d!134053 (not res!815891)) b!1227150))

(assert (= (and b!1227150 res!815890) b!1227148))

(assert (= (and b!1227150 res!815889) b!1227147))

(assert (= (and b!1227147 c!120491) b!1227146))

(assert (= (and b!1227147 (not c!120491)) b!1227149))

(assert (= (or b!1227146 b!1227149) bm!60797))

(assert (=> b!1227147 m!1131955))

(assert (=> b!1227147 m!1131955))

(assert (=> b!1227147 m!1131965))

(assert (=> bm!60797 m!1131955))

(declare-fun m!1132045 () Bool)

(assert (=> bm!60797 m!1132045))

(assert (=> b!1227148 m!1131955))

(assert (=> b!1227148 m!1131955))

(declare-fun m!1132047 () Bool)

(assert (=> b!1227148 m!1132047))

(assert (=> b!1227150 m!1131955))

(assert (=> b!1227150 m!1131955))

(assert (=> b!1227150 m!1131965))

(assert (=> b!1227058 d!134053))

(declare-fun d!134071 () Bool)

(declare-fun res!815912 () Bool)

(declare-fun e!696901 () Bool)

(assert (=> d!134071 (=> res!815912 e!696901)))

(assert (=> d!134071 (= res!815912 (= (select (arr!38221 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) k0!2913))))

(assert (=> d!134071 (= (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)) e!696901)))

(declare-fun b!1227171 () Bool)

(declare-fun e!696902 () Bool)

(assert (=> b!1227171 (= e!696901 e!696902)))

(declare-fun res!815913 () Bool)

(assert (=> b!1227171 (=> (not res!815913) (not e!696902))))

(assert (=> b!1227171 (= res!815913 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38758 a!3806)))))

(declare-fun b!1227172 () Bool)

(assert (=> b!1227172 (= e!696902 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)))))

(assert (= (and d!134071 (not res!815912)) b!1227171))

(assert (= (and b!1227171 res!815913) b!1227172))

(declare-fun m!1132057 () Bool)

(assert (=> d!134071 m!1132057))

(declare-fun m!1132059 () Bool)

(assert (=> b!1227172 m!1132059))

(assert (=> b!1227062 d!134071))

(declare-fun d!134079 () Bool)

(assert (=> d!134079 (= (validKeyInArray!0 (select (arr!38221 a!3806) from!3184)) (and (not (= (select (arr!38221 a!3806) from!3184) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38221 a!3806) from!3184) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1227057 d!134079))

(declare-fun d!134081 () Bool)

(assert (=> d!134081 (= (validKeyInArray!0 k0!2913) (and (not (= k0!2913 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2913 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1227052 d!134081))

(declare-fun d!134083 () Bool)

(declare-fun lt!558836 () Bool)

(assert (=> d!134083 (= lt!558836 (select (content!555 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!696907 () Bool)

(assert (=> d!134083 (= lt!558836 e!696907)))

(declare-fun res!815919 () Bool)

(assert (=> d!134083 (=> (not res!815919) (not e!696907))))

(assert (=> d!134083 (= res!815919 ((_ is Cons!27168) acc!823))))

(assert (=> d!134083 (= (contains!7087 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000) lt!558836)))

(declare-fun b!1227177 () Bool)

(declare-fun e!696908 () Bool)

(assert (=> b!1227177 (= e!696907 e!696908)))

(declare-fun res!815918 () Bool)

(assert (=> b!1227177 (=> res!815918 e!696908)))

(assert (=> b!1227177 (= res!815918 (= (h!28377 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227178 () Bool)

(assert (=> b!1227178 (= e!696908 (contains!7087 (t!40642 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134083 res!815919) b!1227177))

(assert (= (and b!1227177 (not res!815918)) b!1227178))

(assert (=> d!134083 m!1132001))

(declare-fun m!1132067 () Bool)

(assert (=> d!134083 m!1132067))

(declare-fun m!1132071 () Bool)

(assert (=> b!1227178 m!1132071))

(assert (=> b!1227055 d!134083))

(declare-fun d!134087 () Bool)

(declare-fun lt!558838 () Bool)

(assert (=> d!134087 (= lt!558838 (select (content!555 lt!558821) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!696911 () Bool)

(assert (=> d!134087 (= lt!558838 e!696911)))

(declare-fun res!815923 () Bool)

(assert (=> d!134087 (=> (not res!815923) (not e!696911))))

(assert (=> d!134087 (= res!815923 ((_ is Cons!27168) lt!558821))))

(assert (=> d!134087 (= (contains!7087 lt!558821 #b1000000000000000000000000000000000000000000000000000000000000000) lt!558838)))

(declare-fun b!1227181 () Bool)

(declare-fun e!696912 () Bool)

(assert (=> b!1227181 (= e!696911 e!696912)))

(declare-fun res!815922 () Bool)

(assert (=> b!1227181 (=> res!815922 e!696912)))

(assert (=> b!1227181 (= res!815922 (= (h!28377 lt!558821) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227182 () Bool)

(assert (=> b!1227182 (= e!696912 (contains!7087 (t!40642 lt!558821) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134087 res!815923) b!1227181))

(assert (= (and b!1227181 (not res!815922)) b!1227182))

(assert (=> d!134087 m!1132015))

(declare-fun m!1132075 () Bool)

(assert (=> d!134087 m!1132075))

(declare-fun m!1132077 () Bool)

(assert (=> b!1227182 m!1132077))

(assert (=> b!1227061 d!134087))

(declare-fun d!134091 () Bool)

(assert (=> d!134091 (= (array_inv!28997 a!3806) (bvsge (size!38758 a!3806) #b00000000000000000000000000000000))))

(assert (=> start!101952 d!134091))

(check-sat (not b!1227150) (not b!1227105) (not b!1227112) (not d!134087) (not b!1227115) (not b!1227172) (not d!134043) (not b!1227148) (not bm!60797) (not d!134083) (not b!1227113) (not d!134051) (not b!1227182) (not b!1227178) (not b!1227110) (not b!1227147) (not b!1227111))
(check-sat)
