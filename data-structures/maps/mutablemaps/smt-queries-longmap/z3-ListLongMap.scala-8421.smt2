; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102556 () Bool)

(assert start!102556)

(declare-fun b!1232784 () Bool)

(declare-fun res!821195 () Bool)

(declare-fun e!699307 () Bool)

(assert (=> b!1232784 (=> (not res!821195) (not e!699307))))

(declare-datatypes ((List!27298 0))(
  ( (Nil!27295) (Cons!27294 (h!28503 (_ BitVec 64)) (t!40768 List!27298)) )
))
(declare-fun acc!823 () List!27298)

(declare-fun contains!7213 (List!27298 (_ BitVec 64)) Bool)

(assert (=> b!1232784 (= res!821195 (not (contains!7213 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232785 () Bool)

(declare-fun e!699304 () Bool)

(assert (=> b!1232785 (= e!699307 (not e!699304))))

(declare-fun res!821202 () Bool)

(assert (=> b!1232785 (=> res!821202 e!699304)))

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1232785 (= res!821202 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(declare-fun lt!559519 () List!27298)

(declare-datatypes ((array!79477 0))(
  ( (array!79478 (arr!38347 (Array (_ BitVec 32) (_ BitVec 64))) (size!38884 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79477)

(assert (=> b!1232785 (= lt!559519 (Cons!27294 (select (arr!38347 a!3806) from!3184) Nil!27295))))

(declare-fun e!699303 () Bool)

(assert (=> b!1232785 e!699303))

(declare-fun res!821198 () Bool)

(assert (=> b!1232785 (=> (not res!821198) (not e!699303))))

(declare-fun arrayNoDuplicates!0 (array!79477 (_ BitVec 32) List!27298) Bool)

(assert (=> b!1232785 (= res!821198 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27295))))

(declare-datatypes ((Unit!40774 0))(
  ( (Unit!40775) )
))
(declare-fun lt!559518 () Unit!40774)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79477 List!27298 List!27298 (_ BitVec 32)) Unit!40774)

(assert (=> b!1232785 (= lt!559518 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27295 from!3184))))

(assert (=> b!1232785 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27294 (select (arr!38347 a!3806) from!3184) acc!823))))

(declare-fun b!1232786 () Bool)

(declare-fun res!821197 () Bool)

(assert (=> b!1232786 (=> res!821197 e!699304)))

(declare-fun noDuplicate!1820 (List!27298) Bool)

(assert (=> b!1232786 (= res!821197 (not (noDuplicate!1820 lt!559519)))))

(declare-fun b!1232787 () Bool)

(declare-fun res!821204 () Bool)

(assert (=> b!1232787 (=> (not res!821204) (not e!699307))))

(assert (=> b!1232787 (= res!821204 (noDuplicate!1820 acc!823))))

(declare-fun b!1232788 () Bool)

(declare-fun e!699306 () Bool)

(assert (=> b!1232788 (= e!699306 (not (contains!7213 lt!559519 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232789 () Bool)

(assert (=> b!1232789 (= e!699304 e!699306)))

(declare-fun res!821207 () Bool)

(assert (=> b!1232789 (=> (not res!821207) (not e!699306))))

(assert (=> b!1232789 (= res!821207 (not (contains!7213 lt!559519 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!821200 () Bool)

(assert (=> start!102556 (=> (not res!821200) (not e!699307))))

(assert (=> start!102556 (= res!821200 (bvslt (size!38884 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102556 e!699307))

(declare-fun array_inv!29123 (array!79477) Bool)

(assert (=> start!102556 (array_inv!29123 a!3806)))

(assert (=> start!102556 true))

(declare-fun b!1232790 () Bool)

(declare-fun res!821206 () Bool)

(assert (=> b!1232790 (=> (not res!821206) (not e!699307))))

(assert (=> b!1232790 (= res!821206 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1232791 () Bool)

(declare-fun res!821205 () Bool)

(assert (=> b!1232791 (=> (not res!821205) (not e!699307))))

(assert (=> b!1232791 (= res!821205 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38884 a!3806)) (bvslt from!3184 (size!38884 a!3806))))))

(declare-fun b!1232792 () Bool)

(declare-fun res!821201 () Bool)

(assert (=> b!1232792 (=> (not res!821201) (not e!699307))))

(assert (=> b!1232792 (= res!821201 (not (contains!7213 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232793 () Bool)

(assert (=> b!1232793 (= e!699303 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27294 (select (arr!38347 a!3806) from!3184) Nil!27295)))))

(declare-fun b!1232794 () Bool)

(declare-fun res!821199 () Bool)

(assert (=> b!1232794 (=> (not res!821199) (not e!699307))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1232794 (= res!821199 (validKeyInArray!0 (select (arr!38347 a!3806) from!3184)))))

(declare-fun b!1232795 () Bool)

(declare-fun res!821203 () Bool)

(assert (=> b!1232795 (=> (not res!821203) (not e!699307))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79477 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1232795 (= res!821203 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1232796 () Bool)

(declare-fun res!821196 () Bool)

(assert (=> b!1232796 (=> (not res!821196) (not e!699307))))

(assert (=> b!1232796 (= res!821196 (validKeyInArray!0 k0!2913))))

(assert (= (and start!102556 res!821200) b!1232796))

(assert (= (and b!1232796 res!821196) b!1232791))

(assert (= (and b!1232791 res!821205) b!1232787))

(assert (= (and b!1232787 res!821204) b!1232792))

(assert (= (and b!1232792 res!821201) b!1232784))

(assert (= (and b!1232784 res!821195) b!1232795))

(assert (= (and b!1232795 res!821203) b!1232790))

(assert (= (and b!1232790 res!821206) b!1232794))

(assert (= (and b!1232794 res!821199) b!1232785))

(assert (= (and b!1232785 res!821198) b!1232793))

(assert (= (and b!1232785 (not res!821202)) b!1232786))

(assert (= (and b!1232786 (not res!821197)) b!1232789))

(assert (= (and b!1232789 res!821207) b!1232788))

(declare-fun m!1136863 () Bool)

(assert (=> b!1232789 m!1136863))

(declare-fun m!1136865 () Bool)

(assert (=> b!1232785 m!1136865))

(declare-fun m!1136867 () Bool)

(assert (=> b!1232785 m!1136867))

(declare-fun m!1136869 () Bool)

(assert (=> b!1232785 m!1136869))

(declare-fun m!1136871 () Bool)

(assert (=> b!1232785 m!1136871))

(declare-fun m!1136873 () Bool)

(assert (=> b!1232788 m!1136873))

(declare-fun m!1136875 () Bool)

(assert (=> b!1232796 m!1136875))

(declare-fun m!1136877 () Bool)

(assert (=> b!1232784 m!1136877))

(declare-fun m!1136879 () Bool)

(assert (=> b!1232790 m!1136879))

(declare-fun m!1136881 () Bool)

(assert (=> start!102556 m!1136881))

(declare-fun m!1136883 () Bool)

(assert (=> b!1232795 m!1136883))

(assert (=> b!1232794 m!1136865))

(assert (=> b!1232794 m!1136865))

(declare-fun m!1136885 () Bool)

(assert (=> b!1232794 m!1136885))

(declare-fun m!1136887 () Bool)

(assert (=> b!1232792 m!1136887))

(assert (=> b!1232793 m!1136865))

(declare-fun m!1136889 () Bool)

(assert (=> b!1232793 m!1136889))

(declare-fun m!1136891 () Bool)

(assert (=> b!1232787 m!1136891))

(declare-fun m!1136893 () Bool)

(assert (=> b!1232786 m!1136893))

(check-sat (not b!1232784) (not b!1232786) (not b!1232789) (not b!1232794) (not b!1232796) (not b!1232788) (not b!1232785) (not b!1232795) (not b!1232790) (not start!102556) (not b!1232787) (not b!1232792) (not b!1232793))
(check-sat)
(get-model)

(declare-fun d!134989 () Bool)

(assert (=> d!134989 (= (array_inv!29123 a!3806) (bvsge (size!38884 a!3806) #b00000000000000000000000000000000))))

(assert (=> start!102556 d!134989))

(declare-fun d!134991 () Bool)

(declare-fun lt!559528 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!580 (List!27298) (InoxSet (_ BitVec 64)))

(assert (=> d!134991 (= lt!559528 (select (content!580 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!699327 () Bool)

(assert (=> d!134991 (= lt!559528 e!699327)))

(declare-fun res!821252 () Bool)

(assert (=> d!134991 (=> (not res!821252) (not e!699327))))

(get-info :version)

(assert (=> d!134991 (= res!821252 ((_ is Cons!27294) acc!823))))

(assert (=> d!134991 (= (contains!7213 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559528)))

(declare-fun b!1232840 () Bool)

(declare-fun e!699328 () Bool)

(assert (=> b!1232840 (= e!699327 e!699328)))

(declare-fun res!821251 () Bool)

(assert (=> b!1232840 (=> res!821251 e!699328)))

(assert (=> b!1232840 (= res!821251 (= (h!28503 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1232841 () Bool)

(assert (=> b!1232841 (= e!699328 (contains!7213 (t!40768 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134991 res!821252) b!1232840))

(assert (= (and b!1232840 (not res!821251)) b!1232841))

(declare-fun m!1136927 () Bool)

(assert (=> d!134991 m!1136927))

(declare-fun m!1136929 () Bool)

(assert (=> d!134991 m!1136929))

(declare-fun m!1136931 () Bool)

(assert (=> b!1232841 m!1136931))

(assert (=> b!1232792 d!134991))

(declare-fun b!1232858 () Bool)

(declare-fun e!699344 () Bool)

(declare-fun call!60938 () Bool)

(assert (=> b!1232858 (= e!699344 call!60938)))

(declare-fun b!1232859 () Bool)

(declare-fun e!699343 () Bool)

(assert (=> b!1232859 (= e!699343 (contains!7213 (Cons!27294 (select (arr!38347 a!3806) from!3184) Nil!27295) (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1232860 () Bool)

(declare-fun e!699346 () Bool)

(declare-fun e!699342 () Bool)

(assert (=> b!1232860 (= e!699346 e!699342)))

(declare-fun res!821267 () Bool)

(assert (=> b!1232860 (=> (not res!821267) (not e!699342))))

(assert (=> b!1232860 (= res!821267 (not e!699343))))

(declare-fun res!821266 () Bool)

(assert (=> b!1232860 (=> (not res!821266) (not e!699343))))

(assert (=> b!1232860 (= res!821266 (validKeyInArray!0 (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1232861 () Bool)

(assert (=> b!1232861 (= e!699342 e!699344)))

(declare-fun c!120659 () Bool)

(assert (=> b!1232861 (= c!120659 (validKeyInArray!0 (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun d!134993 () Bool)

(declare-fun res!821263 () Bool)

(assert (=> d!134993 (=> res!821263 e!699346)))

(assert (=> d!134993 (= res!821263 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38884 a!3806)))))

(assert (=> d!134993 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27294 (select (arr!38347 a!3806) from!3184) Nil!27295)) e!699346)))

(declare-fun bm!60935 () Bool)

(assert (=> bm!60935 (= call!60938 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120659 (Cons!27294 (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27294 (select (arr!38347 a!3806) from!3184) Nil!27295)) (Cons!27294 (select (arr!38347 a!3806) from!3184) Nil!27295))))))

(declare-fun b!1232862 () Bool)

(assert (=> b!1232862 (= e!699344 call!60938)))

(assert (= (and d!134993 (not res!821263)) b!1232860))

(assert (= (and b!1232860 res!821266) b!1232859))

(assert (= (and b!1232860 res!821267) b!1232861))

(assert (= (and b!1232861 c!120659) b!1232862))

(assert (= (and b!1232861 (not c!120659)) b!1232858))

(assert (= (or b!1232862 b!1232858) bm!60935))

(declare-fun m!1136939 () Bool)

(assert (=> b!1232859 m!1136939))

(assert (=> b!1232859 m!1136939))

(declare-fun m!1136941 () Bool)

(assert (=> b!1232859 m!1136941))

(assert (=> b!1232860 m!1136939))

(assert (=> b!1232860 m!1136939))

(declare-fun m!1136943 () Bool)

(assert (=> b!1232860 m!1136943))

(assert (=> b!1232861 m!1136939))

(assert (=> b!1232861 m!1136939))

(assert (=> b!1232861 m!1136943))

(assert (=> bm!60935 m!1136939))

(declare-fun m!1136945 () Bool)

(assert (=> bm!60935 m!1136945))

(assert (=> b!1232793 d!134993))

(declare-fun d!135003 () Bool)

(assert (=> d!135003 (= (validKeyInArray!0 (select (arr!38347 a!3806) from!3184)) (and (not (= (select (arr!38347 a!3806) from!3184) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38347 a!3806) from!3184) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1232794 d!135003))

(declare-fun d!135005 () Bool)

(declare-fun lt!559534 () Bool)

(assert (=> d!135005 (= lt!559534 (select (content!580 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!699355 () Bool)

(assert (=> d!135005 (= lt!559534 e!699355)))

(declare-fun res!821277 () Bool)

(assert (=> d!135005 (=> (not res!821277) (not e!699355))))

(assert (=> d!135005 (= res!821277 ((_ is Cons!27294) acc!823))))

(assert (=> d!135005 (= (contains!7213 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559534)))

(declare-fun b!1232871 () Bool)

(declare-fun e!699356 () Bool)

(assert (=> b!1232871 (= e!699355 e!699356)))

(declare-fun res!821276 () Bool)

(assert (=> b!1232871 (=> res!821276 e!699356)))

(assert (=> b!1232871 (= res!821276 (= (h!28503 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1232872 () Bool)

(assert (=> b!1232872 (= e!699356 (contains!7213 (t!40768 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135005 res!821277) b!1232871))

(assert (= (and b!1232871 (not res!821276)) b!1232872))

(assert (=> d!135005 m!1136927))

(declare-fun m!1136951 () Bool)

(assert (=> d!135005 m!1136951))

(declare-fun m!1136954 () Bool)

(assert (=> b!1232872 m!1136954))

(assert (=> b!1232784 d!135005))

(declare-fun d!135009 () Bool)

(declare-fun res!821298 () Bool)

(declare-fun e!699377 () Bool)

(assert (=> d!135009 (=> res!821298 e!699377)))

(assert (=> d!135009 (= res!821298 (= (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) k0!2913))))

(assert (=> d!135009 (= (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)) e!699377)))

(declare-fun b!1232893 () Bool)

(declare-fun e!699378 () Bool)

(assert (=> b!1232893 (= e!699377 e!699378)))

(declare-fun res!821299 () Bool)

(assert (=> b!1232893 (=> (not res!821299) (not e!699378))))

(assert (=> b!1232893 (= res!821299 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38884 a!3806)))))

(declare-fun b!1232894 () Bool)

(assert (=> b!1232894 (= e!699378 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)))))

(assert (= (and d!135009 (not res!821298)) b!1232893))

(assert (= (and b!1232893 res!821299) b!1232894))

(assert (=> d!135009 m!1136939))

(declare-fun m!1136983 () Bool)

(assert (=> b!1232894 m!1136983))

(assert (=> b!1232795 d!135009))

(declare-fun d!135027 () Bool)

(assert (=> d!135027 (= (validKeyInArray!0 k0!2913) (and (not (= k0!2913 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2913 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1232796 d!135027))

(declare-fun b!1232901 () Bool)

(declare-fun e!699387 () Bool)

(declare-fun call!60939 () Bool)

(assert (=> b!1232901 (= e!699387 call!60939)))

(declare-fun b!1232902 () Bool)

(declare-fun e!699386 () Bool)

(assert (=> b!1232902 (= e!699386 (contains!7213 Nil!27295 (select (arr!38347 a!3806) from!3184)))))

(declare-fun b!1232903 () Bool)

(declare-fun e!699388 () Bool)

(declare-fun e!699385 () Bool)

(assert (=> b!1232903 (= e!699388 e!699385)))

(declare-fun res!821308 () Bool)

(assert (=> b!1232903 (=> (not res!821308) (not e!699385))))

(assert (=> b!1232903 (= res!821308 (not e!699386))))

(declare-fun res!821307 () Bool)

(assert (=> b!1232903 (=> (not res!821307) (not e!699386))))

(assert (=> b!1232903 (= res!821307 (validKeyInArray!0 (select (arr!38347 a!3806) from!3184)))))

(declare-fun b!1232904 () Bool)

(assert (=> b!1232904 (= e!699385 e!699387)))

(declare-fun c!120660 () Bool)

(assert (=> b!1232904 (= c!120660 (validKeyInArray!0 (select (arr!38347 a!3806) from!3184)))))

(declare-fun d!135029 () Bool)

(declare-fun res!821306 () Bool)

(assert (=> d!135029 (=> res!821306 e!699388)))

(assert (=> d!135029 (= res!821306 (bvsge from!3184 (size!38884 a!3806)))))

(assert (=> d!135029 (= (arrayNoDuplicates!0 a!3806 from!3184 Nil!27295) e!699388)))

(declare-fun bm!60936 () Bool)

(assert (=> bm!60936 (= call!60939 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120660 (Cons!27294 (select (arr!38347 a!3806) from!3184) Nil!27295) Nil!27295)))))

(declare-fun b!1232905 () Bool)

(assert (=> b!1232905 (= e!699387 call!60939)))

(assert (= (and d!135029 (not res!821306)) b!1232903))

(assert (= (and b!1232903 res!821307) b!1232902))

(assert (= (and b!1232903 res!821308) b!1232904))

(assert (= (and b!1232904 c!120660) b!1232905))

(assert (= (and b!1232904 (not c!120660)) b!1232901))

(assert (= (or b!1232905 b!1232901) bm!60936))

(assert (=> b!1232902 m!1136865))

(assert (=> b!1232902 m!1136865))

(declare-fun m!1136987 () Bool)

(assert (=> b!1232902 m!1136987))

(assert (=> b!1232903 m!1136865))

(assert (=> b!1232903 m!1136865))

(assert (=> b!1232903 m!1136885))

(assert (=> b!1232904 m!1136865))

(assert (=> b!1232904 m!1136865))

(assert (=> b!1232904 m!1136885))

(assert (=> bm!60936 m!1136865))

(declare-fun m!1136989 () Bool)

(assert (=> bm!60936 m!1136989))

(assert (=> b!1232785 d!135029))

(declare-fun d!135031 () Bool)

(assert (=> d!135031 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27295)))

(declare-fun lt!559542 () Unit!40774)

(declare-fun choose!80 (array!79477 List!27298 List!27298 (_ BitVec 32)) Unit!40774)

(assert (=> d!135031 (= lt!559542 (choose!80 a!3806 acc!823 Nil!27295 from!3184))))

(assert (=> d!135031 (bvslt (size!38884 a!3806) #b01111111111111111111111111111111)))

(assert (=> d!135031 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27295 from!3184) lt!559542)))

(declare-fun bs!34640 () Bool)

(assert (= bs!34640 d!135031))

(assert (=> bs!34640 m!1136867))

(declare-fun m!1136995 () Bool)

(assert (=> bs!34640 m!1136995))

(assert (=> b!1232785 d!135031))

(declare-fun b!1232918 () Bool)

(declare-fun e!699401 () Bool)

(declare-fun call!60942 () Bool)

(assert (=> b!1232918 (= e!699401 call!60942)))

(declare-fun b!1232919 () Bool)

(declare-fun e!699400 () Bool)

(assert (=> b!1232919 (= e!699400 (contains!7213 (Cons!27294 (select (arr!38347 a!3806) from!3184) acc!823) (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1232920 () Bool)

(declare-fun e!699402 () Bool)

(declare-fun e!699399 () Bool)

(assert (=> b!1232920 (= e!699402 e!699399)))

(declare-fun res!821319 () Bool)

(assert (=> b!1232920 (=> (not res!821319) (not e!699399))))

(assert (=> b!1232920 (= res!821319 (not e!699400))))

(declare-fun res!821318 () Bool)

(assert (=> b!1232920 (=> (not res!821318) (not e!699400))))

(assert (=> b!1232920 (= res!821318 (validKeyInArray!0 (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1232921 () Bool)

(assert (=> b!1232921 (= e!699399 e!699401)))

(declare-fun c!120663 () Bool)

(assert (=> b!1232921 (= c!120663 (validKeyInArray!0 (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun d!135035 () Bool)

(declare-fun res!821317 () Bool)

(assert (=> d!135035 (=> res!821317 e!699402)))

(assert (=> d!135035 (= res!821317 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38884 a!3806)))))

(assert (=> d!135035 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27294 (select (arr!38347 a!3806) from!3184) acc!823)) e!699402)))

(declare-fun bm!60939 () Bool)

(assert (=> bm!60939 (= call!60942 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120663 (Cons!27294 (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27294 (select (arr!38347 a!3806) from!3184) acc!823)) (Cons!27294 (select (arr!38347 a!3806) from!3184) acc!823))))))

(declare-fun b!1232922 () Bool)

(assert (=> b!1232922 (= e!699401 call!60942)))

(assert (= (and d!135035 (not res!821317)) b!1232920))

(assert (= (and b!1232920 res!821318) b!1232919))

(assert (= (and b!1232920 res!821319) b!1232921))

(assert (= (and b!1232921 c!120663) b!1232922))

(assert (= (and b!1232921 (not c!120663)) b!1232918))

(assert (= (or b!1232922 b!1232918) bm!60939))

(assert (=> b!1232919 m!1136939))

(assert (=> b!1232919 m!1136939))

(declare-fun m!1137001 () Bool)

(assert (=> b!1232919 m!1137001))

(assert (=> b!1232920 m!1136939))

(assert (=> b!1232920 m!1136939))

(assert (=> b!1232920 m!1136943))

(assert (=> b!1232921 m!1136939))

(assert (=> b!1232921 m!1136939))

(assert (=> b!1232921 m!1136943))

(assert (=> bm!60939 m!1136939))

(declare-fun m!1137003 () Bool)

(assert (=> bm!60939 m!1137003))

(assert (=> b!1232785 d!135035))

(declare-fun d!135039 () Bool)

(declare-fun res!821339 () Bool)

(declare-fun e!699427 () Bool)

(assert (=> d!135039 (=> res!821339 e!699427)))

(assert (=> d!135039 (= res!821339 ((_ is Nil!27295) lt!559519))))

(assert (=> d!135039 (= (noDuplicate!1820 lt!559519) e!699427)))

(declare-fun b!1232952 () Bool)

(declare-fun e!699428 () Bool)

(assert (=> b!1232952 (= e!699427 e!699428)))

(declare-fun res!821340 () Bool)

(assert (=> b!1232952 (=> (not res!821340) (not e!699428))))

(assert (=> b!1232952 (= res!821340 (not (contains!7213 (t!40768 lt!559519) (h!28503 lt!559519))))))

(declare-fun b!1232953 () Bool)

(assert (=> b!1232953 (= e!699428 (noDuplicate!1820 (t!40768 lt!559519)))))

(assert (= (and d!135039 (not res!821339)) b!1232952))

(assert (= (and b!1232952 res!821340) b!1232953))

(declare-fun m!1137013 () Bool)

(assert (=> b!1232952 m!1137013))

(declare-fun m!1137015 () Bool)

(assert (=> b!1232953 m!1137015))

(assert (=> b!1232786 d!135039))

(declare-fun d!135045 () Bool)

(declare-fun res!821344 () Bool)

(declare-fun e!699433 () Bool)

(assert (=> d!135045 (=> res!821344 e!699433)))

(assert (=> d!135045 (= res!821344 ((_ is Nil!27295) acc!823))))

(assert (=> d!135045 (= (noDuplicate!1820 acc!823) e!699433)))

(declare-fun b!1232959 () Bool)

(declare-fun e!699434 () Bool)

(assert (=> b!1232959 (= e!699433 e!699434)))

(declare-fun res!821345 () Bool)

(assert (=> b!1232959 (=> (not res!821345) (not e!699434))))

(assert (=> b!1232959 (= res!821345 (not (contains!7213 (t!40768 acc!823) (h!28503 acc!823))))))

(declare-fun b!1232960 () Bool)

(assert (=> b!1232960 (= e!699434 (noDuplicate!1820 (t!40768 acc!823)))))

(assert (= (and d!135045 (not res!821344)) b!1232959))

(assert (= (and b!1232959 res!821345) b!1232960))

(declare-fun m!1137021 () Bool)

(assert (=> b!1232959 m!1137021))

(declare-fun m!1137023 () Bool)

(assert (=> b!1232960 m!1137023))

(assert (=> b!1232787 d!135045))

(declare-fun d!135049 () Bool)

(declare-fun lt!559546 () Bool)

(assert (=> d!135049 (= lt!559546 (select (content!580 lt!559519) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!699439 () Bool)

(assert (=> d!135049 (= lt!559546 e!699439)))

(declare-fun res!821350 () Bool)

(assert (=> d!135049 (=> (not res!821350) (not e!699439))))

(assert (=> d!135049 (= res!821350 ((_ is Cons!27294) lt!559519))))

(assert (=> d!135049 (= (contains!7213 lt!559519 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559546)))

(declare-fun b!1232966 () Bool)

(declare-fun e!699440 () Bool)

(assert (=> b!1232966 (= e!699439 e!699440)))

(declare-fun res!821349 () Bool)

(assert (=> b!1232966 (=> res!821349 e!699440)))

(assert (=> b!1232966 (= res!821349 (= (h!28503 lt!559519) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1232967 () Bool)

(assert (=> b!1232967 (= e!699440 (contains!7213 (t!40768 lt!559519) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135049 res!821350) b!1232966))

(assert (= (and b!1232966 (not res!821349)) b!1232967))

(declare-fun m!1137027 () Bool)

(assert (=> d!135049 m!1137027))

(declare-fun m!1137031 () Bool)

(assert (=> d!135049 m!1137031))

(declare-fun m!1137035 () Bool)

(assert (=> b!1232967 m!1137035))

(assert (=> b!1232788 d!135049))

(declare-fun d!135051 () Bool)

(declare-fun lt!559547 () Bool)

(assert (=> d!135051 (= lt!559547 (select (content!580 lt!559519) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!699441 () Bool)

(assert (=> d!135051 (= lt!559547 e!699441)))

(declare-fun res!821352 () Bool)

(assert (=> d!135051 (=> (not res!821352) (not e!699441))))

(assert (=> d!135051 (= res!821352 ((_ is Cons!27294) lt!559519))))

(assert (=> d!135051 (= (contains!7213 lt!559519 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559547)))

(declare-fun b!1232968 () Bool)

(declare-fun e!699442 () Bool)

(assert (=> b!1232968 (= e!699441 e!699442)))

(declare-fun res!821351 () Bool)

(assert (=> b!1232968 (=> res!821351 e!699442)))

(assert (=> b!1232968 (= res!821351 (= (h!28503 lt!559519) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1232969 () Bool)

(assert (=> b!1232969 (= e!699442 (contains!7213 (t!40768 lt!559519) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135051 res!821352) b!1232968))

(assert (= (and b!1232968 (not res!821351)) b!1232969))

(assert (=> d!135051 m!1137027))

(declare-fun m!1137047 () Bool)

(assert (=> d!135051 m!1137047))

(declare-fun m!1137049 () Bool)

(assert (=> b!1232969 m!1137049))

(assert (=> b!1232789 d!135051))

(declare-fun b!1232974 () Bool)

(declare-fun e!699449 () Bool)

(declare-fun call!60950 () Bool)

(assert (=> b!1232974 (= e!699449 call!60950)))

(declare-fun b!1232975 () Bool)

(declare-fun e!699448 () Bool)

(assert (=> b!1232975 (= e!699448 (contains!7213 acc!823 (select (arr!38347 a!3806) from!3184)))))

(declare-fun b!1232976 () Bool)

(declare-fun e!699450 () Bool)

(declare-fun e!699447 () Bool)

(assert (=> b!1232976 (= e!699450 e!699447)))

(declare-fun res!821359 () Bool)

(assert (=> b!1232976 (=> (not res!821359) (not e!699447))))

(assert (=> b!1232976 (= res!821359 (not e!699448))))

(declare-fun res!821358 () Bool)

(assert (=> b!1232976 (=> (not res!821358) (not e!699448))))

(assert (=> b!1232976 (= res!821358 (validKeyInArray!0 (select (arr!38347 a!3806) from!3184)))))

(declare-fun b!1232977 () Bool)

(assert (=> b!1232977 (= e!699447 e!699449)))

(declare-fun c!120671 () Bool)

(assert (=> b!1232977 (= c!120671 (validKeyInArray!0 (select (arr!38347 a!3806) from!3184)))))

(declare-fun d!135059 () Bool)

(declare-fun res!821357 () Bool)

(assert (=> d!135059 (=> res!821357 e!699450)))

(assert (=> d!135059 (= res!821357 (bvsge from!3184 (size!38884 a!3806)))))

(assert (=> d!135059 (= (arrayNoDuplicates!0 a!3806 from!3184 acc!823) e!699450)))

(declare-fun bm!60947 () Bool)

(assert (=> bm!60947 (= call!60950 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120671 (Cons!27294 (select (arr!38347 a!3806) from!3184) acc!823) acc!823)))))

(declare-fun b!1232978 () Bool)

(assert (=> b!1232978 (= e!699449 call!60950)))

(assert (= (and d!135059 (not res!821357)) b!1232976))

(assert (= (and b!1232976 res!821358) b!1232975))

(assert (= (and b!1232976 res!821359) b!1232977))

(assert (= (and b!1232977 c!120671) b!1232978))

(assert (= (and b!1232977 (not c!120671)) b!1232974))

(assert (= (or b!1232978 b!1232974) bm!60947))

(assert (=> b!1232975 m!1136865))

(assert (=> b!1232975 m!1136865))

(declare-fun m!1137055 () Bool)

(assert (=> b!1232975 m!1137055))

(assert (=> b!1232976 m!1136865))

(assert (=> b!1232976 m!1136865))

(assert (=> b!1232976 m!1136885))

(assert (=> b!1232977 m!1136865))

(assert (=> b!1232977 m!1136865))

(assert (=> b!1232977 m!1136885))

(assert (=> bm!60947 m!1136865))

(declare-fun m!1137057 () Bool)

(assert (=> bm!60947 m!1137057))

(assert (=> b!1232790 d!135059))

(check-sat (not b!1232919) (not d!135049) (not b!1232952) (not d!135005) (not b!1232904) (not b!1232969) (not b!1232967) (not d!134991) (not b!1232859) (not bm!60947) (not b!1232960) (not d!135051) (not b!1232841) (not b!1232921) (not bm!60939) (not bm!60936) (not b!1232975) (not b!1232860) (not b!1232902) (not b!1232861) (not b!1232903) (not d!135031) (not b!1232976) (not b!1232977) (not bm!60935) (not b!1232872) (not b!1232953) (not b!1232959) (not b!1232894) (not b!1232920))
(check-sat)
(get-model)

(declare-fun d!135079 () Bool)

(declare-fun c!120677 () Bool)

(assert (=> d!135079 (= c!120677 ((_ is Nil!27295) lt!559519))))

(declare-fun e!699475 () (InoxSet (_ BitVec 64)))

(assert (=> d!135079 (= (content!580 lt!559519) e!699475)))

(declare-fun b!1233008 () Bool)

(assert (=> b!1233008 (= e!699475 ((as const (Array (_ BitVec 64) Bool)) false))))

(declare-fun b!1233009 () Bool)

(assert (=> b!1233009 (= e!699475 ((_ map or) (store ((as const (Array (_ BitVec 64) Bool)) false) (h!28503 lt!559519) true) (content!580 (t!40768 lt!559519))))))

(assert (= (and d!135079 c!120677) b!1233008))

(assert (= (and d!135079 (not c!120677)) b!1233009))

(declare-fun m!1137083 () Bool)

(assert (=> b!1233009 m!1137083))

(declare-fun m!1137085 () Bool)

(assert (=> b!1233009 m!1137085))

(assert (=> d!135051 d!135079))

(declare-fun d!135081 () Bool)

(assert (=> d!135081 (= (validKeyInArray!0 (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))) (and (not (= (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1232920 d!135081))

(assert (=> d!135049 d!135079))

(declare-fun d!135083 () Bool)

(declare-fun res!821379 () Bool)

(declare-fun e!699476 () Bool)

(assert (=> d!135083 (=> res!821379 e!699476)))

(assert (=> d!135083 (= res!821379 (= (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)) k0!2913))))

(assert (=> d!135083 (= (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)) e!699476)))

(declare-fun b!1233010 () Bool)

(declare-fun e!699477 () Bool)

(assert (=> b!1233010 (= e!699476 e!699477)))

(declare-fun res!821380 () Bool)

(assert (=> b!1233010 (=> (not res!821380) (not e!699477))))

(assert (=> b!1233010 (= res!821380 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!38884 a!3806)))))

(declare-fun b!1233011 () Bool)

(assert (=> b!1233011 (= e!699477 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!135083 (not res!821379)) b!1233010))

(assert (= (and b!1233010 res!821380) b!1233011))

(declare-fun m!1137087 () Bool)

(assert (=> d!135083 m!1137087))

(declare-fun m!1137089 () Bool)

(assert (=> b!1233011 m!1137089))

(assert (=> b!1232894 d!135083))

(assert (=> b!1232921 d!135081))

(declare-fun b!1233012 () Bool)

(declare-fun e!699480 () Bool)

(declare-fun call!60954 () Bool)

(assert (=> b!1233012 (= e!699480 call!60954)))

(declare-fun e!699479 () Bool)

(declare-fun b!1233013 () Bool)

(assert (=> b!1233013 (= e!699479 (contains!7213 (ite c!120663 (Cons!27294 (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27294 (select (arr!38347 a!3806) from!3184) acc!823)) (Cons!27294 (select (arr!38347 a!3806) from!3184) acc!823)) (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1233014 () Bool)

(declare-fun e!699481 () Bool)

(declare-fun e!699478 () Bool)

(assert (=> b!1233014 (= e!699481 e!699478)))

(declare-fun res!821383 () Bool)

(assert (=> b!1233014 (=> (not res!821383) (not e!699478))))

(assert (=> b!1233014 (= res!821383 (not e!699479))))

(declare-fun res!821382 () Bool)

(assert (=> b!1233014 (=> (not res!821382) (not e!699479))))

(assert (=> b!1233014 (= res!821382 (validKeyInArray!0 (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1233015 () Bool)

(assert (=> b!1233015 (= e!699478 e!699480)))

(declare-fun c!120678 () Bool)

(assert (=> b!1233015 (= c!120678 (validKeyInArray!0 (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001))))))

(declare-fun d!135085 () Bool)

(declare-fun res!821381 () Bool)

(assert (=> d!135085 (=> res!821381 e!699481)))

(assert (=> d!135085 (= res!821381 (bvsge (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38884 a!3806)))))

(assert (=> d!135085 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120663 (Cons!27294 (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27294 (select (arr!38347 a!3806) from!3184) acc!823)) (Cons!27294 (select (arr!38347 a!3806) from!3184) acc!823))) e!699481)))

(declare-fun bm!60951 () Bool)

(assert (=> bm!60951 (= call!60954 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!120678 (Cons!27294 (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)) (ite c!120663 (Cons!27294 (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27294 (select (arr!38347 a!3806) from!3184) acc!823)) (Cons!27294 (select (arr!38347 a!3806) from!3184) acc!823))) (ite c!120663 (Cons!27294 (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27294 (select (arr!38347 a!3806) from!3184) acc!823)) (Cons!27294 (select (arr!38347 a!3806) from!3184) acc!823)))))))

(declare-fun b!1233016 () Bool)

(assert (=> b!1233016 (= e!699480 call!60954)))

(assert (= (and d!135085 (not res!821381)) b!1233014))

(assert (= (and b!1233014 res!821382) b!1233013))

(assert (= (and b!1233014 res!821383) b!1233015))

(assert (= (and b!1233015 c!120678) b!1233016))

(assert (= (and b!1233015 (not c!120678)) b!1233012))

(assert (= (or b!1233016 b!1233012) bm!60951))

(assert (=> b!1233013 m!1137087))

(assert (=> b!1233013 m!1137087))

(declare-fun m!1137091 () Bool)

(assert (=> b!1233013 m!1137091))

(assert (=> b!1233014 m!1137087))

(assert (=> b!1233014 m!1137087))

(declare-fun m!1137093 () Bool)

(assert (=> b!1233014 m!1137093))

(assert (=> b!1233015 m!1137087))

(assert (=> b!1233015 m!1137087))

(assert (=> b!1233015 m!1137093))

(assert (=> bm!60951 m!1137087))

(declare-fun m!1137095 () Bool)

(assert (=> bm!60951 m!1137095))

(assert (=> bm!60939 d!135085))

(declare-fun d!135087 () Bool)

(declare-fun c!120679 () Bool)

(assert (=> d!135087 (= c!120679 ((_ is Nil!27295) acc!823))))

(declare-fun e!699482 () (InoxSet (_ BitVec 64)))

(assert (=> d!135087 (= (content!580 acc!823) e!699482)))

(declare-fun b!1233017 () Bool)

(assert (=> b!1233017 (= e!699482 ((as const (Array (_ BitVec 64) Bool)) false))))

(declare-fun b!1233018 () Bool)

(assert (=> b!1233018 (= e!699482 ((_ map or) (store ((as const (Array (_ BitVec 64) Bool)) false) (h!28503 acc!823) true) (content!580 (t!40768 acc!823))))))

(assert (= (and d!135087 c!120679) b!1233017))

(assert (= (and d!135087 (not c!120679)) b!1233018))

(declare-fun m!1137097 () Bool)

(assert (=> b!1233018 m!1137097))

(declare-fun m!1137099 () Bool)

(assert (=> b!1233018 m!1137099))

(assert (=> d!134991 d!135087))

(declare-fun d!135089 () Bool)

(declare-fun lt!559553 () Bool)

(assert (=> d!135089 (= lt!559553 (select (content!580 Nil!27295) (select (arr!38347 a!3806) from!3184)))))

(declare-fun e!699483 () Bool)

(assert (=> d!135089 (= lt!559553 e!699483)))

(declare-fun res!821385 () Bool)

(assert (=> d!135089 (=> (not res!821385) (not e!699483))))

(assert (=> d!135089 (= res!821385 ((_ is Cons!27294) Nil!27295))))

(assert (=> d!135089 (= (contains!7213 Nil!27295 (select (arr!38347 a!3806) from!3184)) lt!559553)))

(declare-fun b!1233019 () Bool)

(declare-fun e!699484 () Bool)

(assert (=> b!1233019 (= e!699483 e!699484)))

(declare-fun res!821384 () Bool)

(assert (=> b!1233019 (=> res!821384 e!699484)))

(assert (=> b!1233019 (= res!821384 (= (h!28503 Nil!27295) (select (arr!38347 a!3806) from!3184)))))

(declare-fun b!1233020 () Bool)

(assert (=> b!1233020 (= e!699484 (contains!7213 (t!40768 Nil!27295) (select (arr!38347 a!3806) from!3184)))))

(assert (= (and d!135089 res!821385) b!1233019))

(assert (= (and b!1233019 (not res!821384)) b!1233020))

(declare-fun m!1137101 () Bool)

(assert (=> d!135089 m!1137101))

(assert (=> d!135089 m!1136865))

(declare-fun m!1137103 () Bool)

(assert (=> d!135089 m!1137103))

(assert (=> b!1233020 m!1136865))

(declare-fun m!1137105 () Bool)

(assert (=> b!1233020 m!1137105))

(assert (=> b!1232902 d!135089))

(assert (=> b!1232903 d!135003))

(declare-fun d!135091 () Bool)

(declare-fun lt!559554 () Bool)

(assert (=> d!135091 (= lt!559554 (select (content!580 (Cons!27294 (select (arr!38347 a!3806) from!3184) Nil!27295)) (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun e!699485 () Bool)

(assert (=> d!135091 (= lt!559554 e!699485)))

(declare-fun res!821387 () Bool)

(assert (=> d!135091 (=> (not res!821387) (not e!699485))))

(assert (=> d!135091 (= res!821387 ((_ is Cons!27294) (Cons!27294 (select (arr!38347 a!3806) from!3184) Nil!27295)))))

(assert (=> d!135091 (= (contains!7213 (Cons!27294 (select (arr!38347 a!3806) from!3184) Nil!27295) (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))) lt!559554)))

(declare-fun b!1233021 () Bool)

(declare-fun e!699486 () Bool)

(assert (=> b!1233021 (= e!699485 e!699486)))

(declare-fun res!821386 () Bool)

(assert (=> b!1233021 (=> res!821386 e!699486)))

(assert (=> b!1233021 (= res!821386 (= (h!28503 (Cons!27294 (select (arr!38347 a!3806) from!3184) Nil!27295)) (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1233022 () Bool)

(assert (=> b!1233022 (= e!699486 (contains!7213 (t!40768 (Cons!27294 (select (arr!38347 a!3806) from!3184) Nil!27295)) (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!135091 res!821387) b!1233021))

(assert (= (and b!1233021 (not res!821386)) b!1233022))

(declare-fun m!1137107 () Bool)

(assert (=> d!135091 m!1137107))

(assert (=> d!135091 m!1136939))

(declare-fun m!1137109 () Bool)

(assert (=> d!135091 m!1137109))

(assert (=> b!1233022 m!1136939))

(declare-fun m!1137111 () Bool)

(assert (=> b!1233022 m!1137111))

(assert (=> b!1232859 d!135091))

(assert (=> b!1232860 d!135081))

(assert (=> b!1232904 d!135003))

(declare-fun d!135093 () Bool)

(declare-fun lt!559555 () Bool)

(assert (=> d!135093 (= lt!559555 (select (content!580 (t!40768 acc!823)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!699487 () Bool)

(assert (=> d!135093 (= lt!559555 e!699487)))

(declare-fun res!821389 () Bool)

(assert (=> d!135093 (=> (not res!821389) (not e!699487))))

(assert (=> d!135093 (= res!821389 ((_ is Cons!27294) (t!40768 acc!823)))))

(assert (=> d!135093 (= (contains!7213 (t!40768 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000) lt!559555)))

(declare-fun b!1233023 () Bool)

(declare-fun e!699488 () Bool)

(assert (=> b!1233023 (= e!699487 e!699488)))

(declare-fun res!821388 () Bool)

(assert (=> b!1233023 (=> res!821388 e!699488)))

(assert (=> b!1233023 (= res!821388 (= (h!28503 (t!40768 acc!823)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1233024 () Bool)

(assert (=> b!1233024 (= e!699488 (contains!7213 (t!40768 (t!40768 acc!823)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135093 res!821389) b!1233023))

(assert (= (and b!1233023 (not res!821388)) b!1233024))

(assert (=> d!135093 m!1137099))

(declare-fun m!1137113 () Bool)

(assert (=> d!135093 m!1137113))

(declare-fun m!1137115 () Bool)

(assert (=> b!1233024 m!1137115))

(assert (=> b!1232872 d!135093))

(declare-fun d!135095 () Bool)

(declare-fun lt!559556 () Bool)

(assert (=> d!135095 (= lt!559556 (select (content!580 (t!40768 acc!823)) (h!28503 acc!823)))))

(declare-fun e!699489 () Bool)

(assert (=> d!135095 (= lt!559556 e!699489)))

(declare-fun res!821391 () Bool)

(assert (=> d!135095 (=> (not res!821391) (not e!699489))))

(assert (=> d!135095 (= res!821391 ((_ is Cons!27294) (t!40768 acc!823)))))

(assert (=> d!135095 (= (contains!7213 (t!40768 acc!823) (h!28503 acc!823)) lt!559556)))

(declare-fun b!1233025 () Bool)

(declare-fun e!699490 () Bool)

(assert (=> b!1233025 (= e!699489 e!699490)))

(declare-fun res!821390 () Bool)

(assert (=> b!1233025 (=> res!821390 e!699490)))

(assert (=> b!1233025 (= res!821390 (= (h!28503 (t!40768 acc!823)) (h!28503 acc!823)))))

(declare-fun b!1233026 () Bool)

(assert (=> b!1233026 (= e!699490 (contains!7213 (t!40768 (t!40768 acc!823)) (h!28503 acc!823)))))

(assert (= (and d!135095 res!821391) b!1233025))

(assert (= (and b!1233025 (not res!821390)) b!1233026))

(assert (=> d!135095 m!1137099))

(declare-fun m!1137117 () Bool)

(assert (=> d!135095 m!1137117))

(declare-fun m!1137119 () Bool)

(assert (=> b!1233026 m!1137119))

(assert (=> b!1232959 d!135095))

(declare-fun d!135097 () Bool)

(declare-fun res!821392 () Bool)

(declare-fun e!699491 () Bool)

(assert (=> d!135097 (=> res!821392 e!699491)))

(assert (=> d!135097 (= res!821392 ((_ is Nil!27295) (t!40768 acc!823)))))

(assert (=> d!135097 (= (noDuplicate!1820 (t!40768 acc!823)) e!699491)))

(declare-fun b!1233027 () Bool)

(declare-fun e!699492 () Bool)

(assert (=> b!1233027 (= e!699491 e!699492)))

(declare-fun res!821393 () Bool)

(assert (=> b!1233027 (=> (not res!821393) (not e!699492))))

(assert (=> b!1233027 (= res!821393 (not (contains!7213 (t!40768 (t!40768 acc!823)) (h!28503 (t!40768 acc!823)))))))

(declare-fun b!1233028 () Bool)

(assert (=> b!1233028 (= e!699492 (noDuplicate!1820 (t!40768 (t!40768 acc!823))))))

(assert (= (and d!135097 (not res!821392)) b!1233027))

(assert (= (and b!1233027 res!821393) b!1233028))

(declare-fun m!1137121 () Bool)

(assert (=> b!1233027 m!1137121))

(declare-fun m!1137123 () Bool)

(assert (=> b!1233028 m!1137123))

(assert (=> b!1232960 d!135097))

(assert (=> d!135031 d!135029))

(declare-fun d!135099 () Bool)

(assert (=> d!135099 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27295)))

(assert (=> d!135099 true))

(declare-fun _$70!98 () Unit!40774)

(assert (=> d!135099 (= (choose!80 a!3806 acc!823 Nil!27295 from!3184) _$70!98)))

(declare-fun bs!34643 () Bool)

(assert (= bs!34643 d!135099))

(assert (=> bs!34643 m!1136867))

(assert (=> d!135031 d!135099))

(declare-fun lt!559557 () Bool)

(declare-fun d!135101 () Bool)

(assert (=> d!135101 (= lt!559557 (select (content!580 (Cons!27294 (select (arr!38347 a!3806) from!3184) acc!823)) (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun e!699493 () Bool)

(assert (=> d!135101 (= lt!559557 e!699493)))

(declare-fun res!821395 () Bool)

(assert (=> d!135101 (=> (not res!821395) (not e!699493))))

(assert (=> d!135101 (= res!821395 ((_ is Cons!27294) (Cons!27294 (select (arr!38347 a!3806) from!3184) acc!823)))))

(assert (=> d!135101 (= (contains!7213 (Cons!27294 (select (arr!38347 a!3806) from!3184) acc!823) (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))) lt!559557)))

(declare-fun b!1233029 () Bool)

(declare-fun e!699494 () Bool)

(assert (=> b!1233029 (= e!699493 e!699494)))

(declare-fun res!821394 () Bool)

(assert (=> b!1233029 (=> res!821394 e!699494)))

(assert (=> b!1233029 (= res!821394 (= (h!28503 (Cons!27294 (select (arr!38347 a!3806) from!3184) acc!823)) (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1233030 () Bool)

(assert (=> b!1233030 (= e!699494 (contains!7213 (t!40768 (Cons!27294 (select (arr!38347 a!3806) from!3184) acc!823)) (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!135101 res!821395) b!1233029))

(assert (= (and b!1233029 (not res!821394)) b!1233030))

(declare-fun m!1137125 () Bool)

(assert (=> d!135101 m!1137125))

(assert (=> d!135101 m!1136939))

(declare-fun m!1137127 () Bool)

(assert (=> d!135101 m!1137127))

(assert (=> b!1233030 m!1136939))

(declare-fun m!1137129 () Bool)

(assert (=> b!1233030 m!1137129))

(assert (=> b!1232919 d!135101))

(declare-fun d!135103 () Bool)

(declare-fun res!821396 () Bool)

(declare-fun e!699495 () Bool)

(assert (=> d!135103 (=> res!821396 e!699495)))

(assert (=> d!135103 (= res!821396 ((_ is Nil!27295) (t!40768 lt!559519)))))

(assert (=> d!135103 (= (noDuplicate!1820 (t!40768 lt!559519)) e!699495)))

(declare-fun b!1233031 () Bool)

(declare-fun e!699496 () Bool)

(assert (=> b!1233031 (= e!699495 e!699496)))

(declare-fun res!821397 () Bool)

(assert (=> b!1233031 (=> (not res!821397) (not e!699496))))

(assert (=> b!1233031 (= res!821397 (not (contains!7213 (t!40768 (t!40768 lt!559519)) (h!28503 (t!40768 lt!559519)))))))

(declare-fun b!1233032 () Bool)

(assert (=> b!1233032 (= e!699496 (noDuplicate!1820 (t!40768 (t!40768 lt!559519))))))

(assert (= (and d!135103 (not res!821396)) b!1233031))

(assert (= (and b!1233031 res!821397) b!1233032))

(declare-fun m!1137131 () Bool)

(assert (=> b!1233031 m!1137131))

(declare-fun m!1137133 () Bool)

(assert (=> b!1233032 m!1137133))

(assert (=> b!1232953 d!135103))

(declare-fun lt!559558 () Bool)

(declare-fun d!135105 () Bool)

(assert (=> d!135105 (= lt!559558 (select (content!580 acc!823) (select (arr!38347 a!3806) from!3184)))))

(declare-fun e!699497 () Bool)

(assert (=> d!135105 (= lt!559558 e!699497)))

(declare-fun res!821399 () Bool)

(assert (=> d!135105 (=> (not res!821399) (not e!699497))))

(assert (=> d!135105 (= res!821399 ((_ is Cons!27294) acc!823))))

(assert (=> d!135105 (= (contains!7213 acc!823 (select (arr!38347 a!3806) from!3184)) lt!559558)))

(declare-fun b!1233033 () Bool)

(declare-fun e!699498 () Bool)

(assert (=> b!1233033 (= e!699497 e!699498)))

(declare-fun res!821398 () Bool)

(assert (=> b!1233033 (=> res!821398 e!699498)))

(assert (=> b!1233033 (= res!821398 (= (h!28503 acc!823) (select (arr!38347 a!3806) from!3184)))))

(declare-fun b!1233034 () Bool)

(assert (=> b!1233034 (= e!699498 (contains!7213 (t!40768 acc!823) (select (arr!38347 a!3806) from!3184)))))

(assert (= (and d!135105 res!821399) b!1233033))

(assert (= (and b!1233033 (not res!821398)) b!1233034))

(assert (=> d!135105 m!1136927))

(assert (=> d!135105 m!1136865))

(declare-fun m!1137135 () Bool)

(assert (=> d!135105 m!1137135))

(assert (=> b!1233034 m!1136865))

(declare-fun m!1137137 () Bool)

(assert (=> b!1233034 m!1137137))

(assert (=> b!1232975 d!135105))

(declare-fun d!135107 () Bool)

(declare-fun lt!559559 () Bool)

(assert (=> d!135107 (= lt!559559 (select (content!580 (t!40768 lt!559519)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!699499 () Bool)

(assert (=> d!135107 (= lt!559559 e!699499)))

(declare-fun res!821401 () Bool)

(assert (=> d!135107 (=> (not res!821401) (not e!699499))))

(assert (=> d!135107 (= res!821401 ((_ is Cons!27294) (t!40768 lt!559519)))))

(assert (=> d!135107 (= (contains!7213 (t!40768 lt!559519) #b0000000000000000000000000000000000000000000000000000000000000000) lt!559559)))

(declare-fun b!1233035 () Bool)

(declare-fun e!699500 () Bool)

(assert (=> b!1233035 (= e!699499 e!699500)))

(declare-fun res!821400 () Bool)

(assert (=> b!1233035 (=> res!821400 e!699500)))

(assert (=> b!1233035 (= res!821400 (= (h!28503 (t!40768 lt!559519)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1233036 () Bool)

(assert (=> b!1233036 (= e!699500 (contains!7213 (t!40768 (t!40768 lt!559519)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135107 res!821401) b!1233035))

(assert (= (and b!1233035 (not res!821400)) b!1233036))

(assert (=> d!135107 m!1137085))

(declare-fun m!1137139 () Bool)

(assert (=> d!135107 m!1137139))

(declare-fun m!1137141 () Bool)

(assert (=> b!1233036 m!1137141))

(assert (=> b!1232969 d!135107))

(assert (=> b!1232976 d!135003))

(assert (=> b!1232977 d!135003))

(declare-fun b!1233037 () Bool)

(declare-fun e!699503 () Bool)

(declare-fun call!60955 () Bool)

(assert (=> b!1233037 (= e!699503 call!60955)))

(declare-fun e!699502 () Bool)

(declare-fun b!1233038 () Bool)

(assert (=> b!1233038 (= e!699502 (contains!7213 (ite c!120671 (Cons!27294 (select (arr!38347 a!3806) from!3184) acc!823) acc!823) (select (arr!38347 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1233039 () Bool)

(declare-fun e!699504 () Bool)

(declare-fun e!699501 () Bool)

(assert (=> b!1233039 (= e!699504 e!699501)))

(declare-fun res!821404 () Bool)

(assert (=> b!1233039 (=> (not res!821404) (not e!699501))))

(assert (=> b!1233039 (= res!821404 (not e!699502))))

(declare-fun res!821403 () Bool)

(assert (=> b!1233039 (=> (not res!821403) (not e!699502))))

(assert (=> b!1233039 (= res!821403 (validKeyInArray!0 (select (arr!38347 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1233040 () Bool)

(assert (=> b!1233040 (= e!699501 e!699503)))

(declare-fun c!120680 () Bool)

(assert (=> b!1233040 (= c!120680 (validKeyInArray!0 (select (arr!38347 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun d!135109 () Bool)

(declare-fun res!821402 () Bool)

(assert (=> d!135109 (=> res!821402 e!699504)))

(assert (=> d!135109 (= res!821402 (bvsge (bvadd from!3184 #b00000000000000000000000000000001) (size!38884 a!3806)))))

(assert (=> d!135109 (= (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120671 (Cons!27294 (select (arr!38347 a!3806) from!3184) acc!823) acc!823)) e!699504)))

(declare-fun bm!60952 () Bool)

(assert (=> bm!60952 (= call!60955 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!120680 (Cons!27294 (select (arr!38347 a!3806) (bvadd from!3184 #b00000000000000000000000000000001)) (ite c!120671 (Cons!27294 (select (arr!38347 a!3806) from!3184) acc!823) acc!823)) (ite c!120671 (Cons!27294 (select (arr!38347 a!3806) from!3184) acc!823) acc!823))))))

(declare-fun b!1233041 () Bool)

(assert (=> b!1233041 (= e!699503 call!60955)))

(assert (= (and d!135109 (not res!821402)) b!1233039))

(assert (= (and b!1233039 res!821403) b!1233038))

(assert (= (and b!1233039 res!821404) b!1233040))

(assert (= (and b!1233040 c!120680) b!1233041))

(assert (= (and b!1233040 (not c!120680)) b!1233037))

(assert (= (or b!1233041 b!1233037) bm!60952))

(declare-fun m!1137143 () Bool)

(assert (=> b!1233038 m!1137143))

(assert (=> b!1233038 m!1137143))

(declare-fun m!1137145 () Bool)

(assert (=> b!1233038 m!1137145))

(assert (=> b!1233039 m!1137143))

(assert (=> b!1233039 m!1137143))

(declare-fun m!1137147 () Bool)

(assert (=> b!1233039 m!1137147))

(assert (=> b!1233040 m!1137143))

(assert (=> b!1233040 m!1137143))

(assert (=> b!1233040 m!1137147))

(assert (=> bm!60952 m!1137143))

(declare-fun m!1137149 () Bool)

(assert (=> bm!60952 m!1137149))

(assert (=> bm!60947 d!135109))

(declare-fun d!135111 () Bool)

(declare-fun lt!559560 () Bool)

(assert (=> d!135111 (= lt!559560 (select (content!580 (t!40768 acc!823)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!699505 () Bool)

(assert (=> d!135111 (= lt!559560 e!699505)))

(declare-fun res!821406 () Bool)

(assert (=> d!135111 (=> (not res!821406) (not e!699505))))

(assert (=> d!135111 (= res!821406 ((_ is Cons!27294) (t!40768 acc!823)))))

(assert (=> d!135111 (= (contains!7213 (t!40768 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000) lt!559560)))

(declare-fun b!1233042 () Bool)

(declare-fun e!699506 () Bool)

(assert (=> b!1233042 (= e!699505 e!699506)))

(declare-fun res!821405 () Bool)

(assert (=> b!1233042 (=> res!821405 e!699506)))

(assert (=> b!1233042 (= res!821405 (= (h!28503 (t!40768 acc!823)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1233043 () Bool)

(assert (=> b!1233043 (= e!699506 (contains!7213 (t!40768 (t!40768 acc!823)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135111 res!821406) b!1233042))

(assert (= (and b!1233042 (not res!821405)) b!1233043))

(assert (=> d!135111 m!1137099))

(declare-fun m!1137151 () Bool)

(assert (=> d!135111 m!1137151))

(declare-fun m!1137153 () Bool)

(assert (=> b!1233043 m!1137153))

(assert (=> b!1232841 d!135111))

(declare-fun b!1233044 () Bool)

(declare-fun e!699509 () Bool)

(declare-fun call!60956 () Bool)

(assert (=> b!1233044 (= e!699509 call!60956)))

(declare-fun e!699508 () Bool)

(declare-fun b!1233045 () Bool)

(assert (=> b!1233045 (= e!699508 (contains!7213 (ite c!120660 (Cons!27294 (select (arr!38347 a!3806) from!3184) Nil!27295) Nil!27295) (select (arr!38347 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1233046 () Bool)

(declare-fun e!699510 () Bool)

(declare-fun e!699507 () Bool)

(assert (=> b!1233046 (= e!699510 e!699507)))

(declare-fun res!821409 () Bool)

(assert (=> b!1233046 (=> (not res!821409) (not e!699507))))

(assert (=> b!1233046 (= res!821409 (not e!699508))))

(declare-fun res!821408 () Bool)

(assert (=> b!1233046 (=> (not res!821408) (not e!699508))))

(assert (=> b!1233046 (= res!821408 (validKeyInArray!0 (select (arr!38347 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1233047 () Bool)

(assert (=> b!1233047 (= e!699507 e!699509)))

(declare-fun c!120681 () Bool)

(assert (=> b!1233047 (= c!120681 (validKeyInArray!0 (select (arr!38347 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun d!135113 () Bool)

(declare-fun res!821407 () Bool)

(assert (=> d!135113 (=> res!821407 e!699510)))

(assert (=> d!135113 (= res!821407 (bvsge (bvadd from!3184 #b00000000000000000000000000000001) (size!38884 a!3806)))))

(assert (=> d!135113 (= (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120660 (Cons!27294 (select (arr!38347 a!3806) from!3184) Nil!27295) Nil!27295)) e!699510)))

(declare-fun bm!60953 () Bool)

(assert (=> bm!60953 (= call!60956 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!120681 (Cons!27294 (select (arr!38347 a!3806) (bvadd from!3184 #b00000000000000000000000000000001)) (ite c!120660 (Cons!27294 (select (arr!38347 a!3806) from!3184) Nil!27295) Nil!27295)) (ite c!120660 (Cons!27294 (select (arr!38347 a!3806) from!3184) Nil!27295) Nil!27295))))))

(declare-fun b!1233048 () Bool)

(assert (=> b!1233048 (= e!699509 call!60956)))

(assert (= (and d!135113 (not res!821407)) b!1233046))

(assert (= (and b!1233046 res!821408) b!1233045))

(assert (= (and b!1233046 res!821409) b!1233047))

(assert (= (and b!1233047 c!120681) b!1233048))

(assert (= (and b!1233047 (not c!120681)) b!1233044))

(assert (= (or b!1233048 b!1233044) bm!60953))

(assert (=> b!1233045 m!1137143))

(assert (=> b!1233045 m!1137143))

(declare-fun m!1137155 () Bool)

(assert (=> b!1233045 m!1137155))

(assert (=> b!1233046 m!1137143))

(assert (=> b!1233046 m!1137143))

(assert (=> b!1233046 m!1137147))

(assert (=> b!1233047 m!1137143))

(assert (=> b!1233047 m!1137143))

(assert (=> b!1233047 m!1137147))

(assert (=> bm!60953 m!1137143))

(declare-fun m!1137159 () Bool)

(assert (=> bm!60953 m!1137159))

(assert (=> bm!60936 d!135113))

(assert (=> b!1232861 d!135081))

(declare-fun b!1233051 () Bool)

(declare-fun e!699515 () Bool)

(declare-fun call!60957 () Bool)

(assert (=> b!1233051 (= e!699515 call!60957)))

(declare-fun e!699514 () Bool)

(declare-fun b!1233052 () Bool)

(assert (=> b!1233052 (= e!699514 (contains!7213 (ite c!120659 (Cons!27294 (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27294 (select (arr!38347 a!3806) from!3184) Nil!27295)) (Cons!27294 (select (arr!38347 a!3806) from!3184) Nil!27295)) (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1233053 () Bool)

(declare-fun e!699516 () Bool)

(declare-fun e!699513 () Bool)

(assert (=> b!1233053 (= e!699516 e!699513)))

(declare-fun res!821414 () Bool)

(assert (=> b!1233053 (=> (not res!821414) (not e!699513))))

(assert (=> b!1233053 (= res!821414 (not e!699514))))

(declare-fun res!821413 () Bool)

(assert (=> b!1233053 (=> (not res!821413) (not e!699514))))

(assert (=> b!1233053 (= res!821413 (validKeyInArray!0 (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1233054 () Bool)

(assert (=> b!1233054 (= e!699513 e!699515)))

(declare-fun c!120682 () Bool)

(assert (=> b!1233054 (= c!120682 (validKeyInArray!0 (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001))))))

(declare-fun d!135117 () Bool)

(declare-fun res!821412 () Bool)

(assert (=> d!135117 (=> res!821412 e!699516)))

(assert (=> d!135117 (= res!821412 (bvsge (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38884 a!3806)))))

(assert (=> d!135117 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120659 (Cons!27294 (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27294 (select (arr!38347 a!3806) from!3184) Nil!27295)) (Cons!27294 (select (arr!38347 a!3806) from!3184) Nil!27295))) e!699516)))

(declare-fun bm!60954 () Bool)

(assert (=> bm!60954 (= call!60957 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!120682 (Cons!27294 (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)) (ite c!120659 (Cons!27294 (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27294 (select (arr!38347 a!3806) from!3184) Nil!27295)) (Cons!27294 (select (arr!38347 a!3806) from!3184) Nil!27295))) (ite c!120659 (Cons!27294 (select (arr!38347 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27294 (select (arr!38347 a!3806) from!3184) Nil!27295)) (Cons!27294 (select (arr!38347 a!3806) from!3184) Nil!27295)))))))

(declare-fun b!1233055 () Bool)

(assert (=> b!1233055 (= e!699515 call!60957)))

(assert (= (and d!135117 (not res!821412)) b!1233053))

(assert (= (and b!1233053 res!821413) b!1233052))

(assert (= (and b!1233053 res!821414) b!1233054))

(assert (= (and b!1233054 c!120682) b!1233055))

(assert (= (and b!1233054 (not c!120682)) b!1233051))

(assert (= (or b!1233055 b!1233051) bm!60954))

(assert (=> b!1233052 m!1137087))

(assert (=> b!1233052 m!1137087))

(declare-fun m!1137167 () Bool)

(assert (=> b!1233052 m!1137167))

(assert (=> b!1233053 m!1137087))

(assert (=> b!1233053 m!1137087))

(assert (=> b!1233053 m!1137093))

(assert (=> b!1233054 m!1137087))

(assert (=> b!1233054 m!1137087))

(assert (=> b!1233054 m!1137093))

(assert (=> bm!60954 m!1137087))

(declare-fun m!1137174 () Bool)

(assert (=> bm!60954 m!1137174))

(assert (=> bm!60935 d!135117))

(assert (=> d!135005 d!135087))

(declare-fun d!135121 () Bool)

(declare-fun lt!559562 () Bool)

(assert (=> d!135121 (= lt!559562 (select (content!580 (t!40768 lt!559519)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!699521 () Bool)

(assert (=> d!135121 (= lt!559562 e!699521)))

(declare-fun res!821419 () Bool)

(assert (=> d!135121 (=> (not res!821419) (not e!699521))))

(assert (=> d!135121 (= res!821419 ((_ is Cons!27294) (t!40768 lt!559519)))))

(assert (=> d!135121 (= (contains!7213 (t!40768 lt!559519) #b1000000000000000000000000000000000000000000000000000000000000000) lt!559562)))

(declare-fun b!1233061 () Bool)

(declare-fun e!699522 () Bool)

(assert (=> b!1233061 (= e!699521 e!699522)))

(declare-fun res!821418 () Bool)

(assert (=> b!1233061 (=> res!821418 e!699522)))

(assert (=> b!1233061 (= res!821418 (= (h!28503 (t!40768 lt!559519)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1233062 () Bool)

(assert (=> b!1233062 (= e!699522 (contains!7213 (t!40768 (t!40768 lt!559519)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135121 res!821419) b!1233061))

(assert (= (and b!1233061 (not res!821418)) b!1233062))

(assert (=> d!135121 m!1137085))

(declare-fun m!1137177 () Bool)

(assert (=> d!135121 m!1137177))

(declare-fun m!1137179 () Bool)

(assert (=> b!1233062 m!1137179))

(assert (=> b!1232967 d!135121))

(declare-fun d!135125 () Bool)

(declare-fun lt!559564 () Bool)

(assert (=> d!135125 (= lt!559564 (select (content!580 (t!40768 lt!559519)) (h!28503 lt!559519)))))

(declare-fun e!699525 () Bool)

(assert (=> d!135125 (= lt!559564 e!699525)))

(declare-fun res!821423 () Bool)

(assert (=> d!135125 (=> (not res!821423) (not e!699525))))

(assert (=> d!135125 (= res!821423 ((_ is Cons!27294) (t!40768 lt!559519)))))

(assert (=> d!135125 (= (contains!7213 (t!40768 lt!559519) (h!28503 lt!559519)) lt!559564)))

(declare-fun b!1233065 () Bool)

(declare-fun e!699526 () Bool)

(assert (=> b!1233065 (= e!699525 e!699526)))

(declare-fun res!821422 () Bool)

(assert (=> b!1233065 (=> res!821422 e!699526)))

(assert (=> b!1233065 (= res!821422 (= (h!28503 (t!40768 lt!559519)) (h!28503 lt!559519)))))

(declare-fun b!1233066 () Bool)

(assert (=> b!1233066 (= e!699526 (contains!7213 (t!40768 (t!40768 lt!559519)) (h!28503 lt!559519)))))

(assert (= (and d!135125 res!821423) b!1233065))

(assert (= (and b!1233065 (not res!821422)) b!1233066))

(assert (=> d!135125 m!1137085))

(declare-fun m!1137185 () Bool)

(assert (=> d!135125 m!1137185))

(declare-fun m!1137187 () Bool)

(assert (=> b!1233066 m!1137187))

(assert (=> b!1232952 d!135125))

(check-sat (not d!135091) (not b!1233062) (not bm!60952) (not b!1233020) (not b!1233031) (not b!1233024) (not bm!60954) (not b!1233030) (not d!135095) (not d!135111) (not b!1233052) (not b!1233022) (not b!1233036) (not b!1233045) (not b!1233046) (not d!135099) (not b!1233032) (not b!1233034) (not b!1233053) (not bm!60951) (not b!1233043) (not b!1233038) (not d!135105) (not d!135107) (not b!1233014) (not b!1233054) (not d!135125) (not b!1233018) (not b!1233009) (not d!135093) (not b!1233026) (not b!1233040) (not d!135121) (not d!135089) (not b!1233066) (not b!1233013) (not b!1233015) (not b!1233047) (not b!1233027) (not b!1233039) (not bm!60953) (not b!1233028) (not d!135101) (not b!1233011))
(check-sat)
