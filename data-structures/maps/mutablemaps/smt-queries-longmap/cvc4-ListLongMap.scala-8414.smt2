; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102422 () Bool)

(assert start!102422)

(declare-fun b!1231738 () Bool)

(declare-fun res!820262 () Bool)

(declare-fun e!698737 () Bool)

(assert (=> b!1231738 (=> (not res!820262) (not e!698737))))

(declare-datatypes ((List!27278 0))(
  ( (Nil!27275) (Cons!27274 (h!28483 (_ BitVec 64)) (t!40748 List!27278)) )
))
(declare-fun acc!823 () List!27278)

(declare-fun contains!7193 (List!27278 (_ BitVec 64)) Bool)

(assert (=> b!1231738 (= res!820262 (not (contains!7193 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231739 () Bool)

(declare-fun res!820257 () Bool)

(assert (=> b!1231739 (=> (not res!820257) (not e!698737))))

(declare-datatypes ((array!79431 0))(
  ( (array!79432 (arr!38327 (Array (_ BitVec 32) (_ BitVec 64))) (size!38864 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79431)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1231739 (= res!820257 (validKeyInArray!0 (select (arr!38327 a!3806) from!3184)))))

(declare-fun b!1231740 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79431 (_ BitVec 32) List!27278) Bool)

(assert (=> b!1231740 (= e!698737 (not (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27274 (select (arr!38327 a!3806) from!3184) Nil!27275))))))

(assert (=> b!1231740 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27275)))

(declare-datatypes ((Unit!40734 0))(
  ( (Unit!40735) )
))
(declare-fun lt!559391 () Unit!40734)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79431 List!27278 List!27278 (_ BitVec 32)) Unit!40734)

(assert (=> b!1231740 (= lt!559391 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27275 from!3184))))

(assert (=> b!1231740 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27274 (select (arr!38327 a!3806) from!3184) acc!823))))

(declare-fun b!1231741 () Bool)

(declare-fun res!820264 () Bool)

(assert (=> b!1231741 (=> (not res!820264) (not e!698737))))

(declare-fun k!2913 () (_ BitVec 64))

(assert (=> b!1231741 (= res!820264 (validKeyInArray!0 k!2913))))

(declare-fun res!820259 () Bool)

(assert (=> start!102422 (=> (not res!820259) (not e!698737))))

(assert (=> start!102422 (= res!820259 (bvslt (size!38864 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102422 e!698737))

(declare-fun array_inv!29103 (array!79431) Bool)

(assert (=> start!102422 (array_inv!29103 a!3806)))

(assert (=> start!102422 true))

(declare-fun b!1231742 () Bool)

(declare-fun res!820260 () Bool)

(assert (=> b!1231742 (=> (not res!820260) (not e!698737))))

(assert (=> b!1231742 (= res!820260 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1231743 () Bool)

(declare-fun res!820261 () Bool)

(assert (=> b!1231743 (=> (not res!820261) (not e!698737))))

(declare-fun arrayContainsKey!0 (array!79431 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1231743 (= res!820261 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1231744 () Bool)

(declare-fun res!820258 () Bool)

(assert (=> b!1231744 (=> (not res!820258) (not e!698737))))

(assert (=> b!1231744 (= res!820258 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38864 a!3806)) (bvslt from!3184 (size!38864 a!3806))))))

(declare-fun b!1231745 () Bool)

(declare-fun res!820263 () Bool)

(assert (=> b!1231745 (=> (not res!820263) (not e!698737))))

(declare-fun noDuplicate!1800 (List!27278) Bool)

(assert (=> b!1231745 (= res!820263 (noDuplicate!1800 acc!823))))

(declare-fun b!1231746 () Bool)

(declare-fun res!820265 () Bool)

(assert (=> b!1231746 (=> (not res!820265) (not e!698737))))

(assert (=> b!1231746 (= res!820265 (not (contains!7193 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102422 res!820259) b!1231741))

(assert (= (and b!1231741 res!820264) b!1231744))

(assert (= (and b!1231744 res!820258) b!1231745))

(assert (= (and b!1231745 res!820263) b!1231746))

(assert (= (and b!1231746 res!820265) b!1231738))

(assert (= (and b!1231738 res!820262) b!1231743))

(assert (= (and b!1231743 res!820261) b!1231742))

(assert (= (and b!1231742 res!820260) b!1231739))

(assert (= (and b!1231739 res!820257) b!1231740))

(declare-fun m!1135899 () Bool)

(assert (=> b!1231741 m!1135899))

(declare-fun m!1135901 () Bool)

(assert (=> b!1231746 m!1135901))

(declare-fun m!1135903 () Bool)

(assert (=> start!102422 m!1135903))

(declare-fun m!1135905 () Bool)

(assert (=> b!1231745 m!1135905))

(declare-fun m!1135907 () Bool)

(assert (=> b!1231742 m!1135907))

(declare-fun m!1135909 () Bool)

(assert (=> b!1231740 m!1135909))

(declare-fun m!1135911 () Bool)

(assert (=> b!1231740 m!1135911))

(declare-fun m!1135913 () Bool)

(assert (=> b!1231740 m!1135913))

(declare-fun m!1135915 () Bool)

(assert (=> b!1231740 m!1135915))

(declare-fun m!1135917 () Bool)

(assert (=> b!1231740 m!1135917))

(assert (=> b!1231739 m!1135913))

(assert (=> b!1231739 m!1135913))

(declare-fun m!1135919 () Bool)

(assert (=> b!1231739 m!1135919))

(declare-fun m!1135921 () Bool)

(assert (=> b!1231743 m!1135921))

(declare-fun m!1135923 () Bool)

(assert (=> b!1231738 m!1135923))

(push 1)

(assert (not b!1231745))

(assert (not b!1231741))

(assert (not b!1231738))

(assert (not b!1231740))

(assert (not start!102422))

(assert (not b!1231743))

(assert (not b!1231742))

(assert (not b!1231739))

(assert (not b!1231746))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!134745 () Bool)

(declare-fun res!820293 () Bool)

(declare-fun e!698770 () Bool)

(assert (=> d!134745 (=> res!820293 e!698770)))

(assert (=> d!134745 (= res!820293 (= (select (arr!38327 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) k!2913))))

(assert (=> d!134745 (= (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)) e!698770)))

(declare-fun b!1231783 () Bool)

(declare-fun e!698771 () Bool)

(assert (=> b!1231783 (= e!698770 e!698771)))

(declare-fun res!820294 () Bool)

(assert (=> b!1231783 (=> (not res!820294) (not e!698771))))

(assert (=> b!1231783 (= res!820294 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38864 a!3806)))))

(declare-fun b!1231785 () Bool)

(assert (=> b!1231785 (= e!698771 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)))))

(assert (= (and d!134745 (not res!820293)) b!1231783))

(assert (= (and b!1231783 res!820294) b!1231785))

(declare-fun m!1135935 () Bool)

(assert (=> d!134745 m!1135935))

(declare-fun m!1135937 () Bool)

(assert (=> b!1231785 m!1135937))

(assert (=> b!1231743 d!134745))

(declare-fun call!60902 () Bool)

(declare-fun c!120614 () Bool)

(declare-fun bm!60899 () Bool)

(assert (=> bm!60899 (= call!60902 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120614 (Cons!27274 (select (arr!38327 a!3806) from!3184) acc!823) acc!823)))))

(declare-fun b!1231816 () Bool)

(declare-fun e!698796 () Bool)

(assert (=> b!1231816 (= e!698796 call!60902)))

(declare-fun b!1231817 () Bool)

(declare-fun e!698798 () Bool)

(assert (=> b!1231817 (= e!698798 (contains!7193 acc!823 (select (arr!38327 a!3806) from!3184)))))

(declare-fun b!1231819 () Bool)

(assert (=> b!1231819 (= e!698796 call!60902)))

(declare-fun b!1231820 () Bool)

(declare-fun e!698797 () Bool)

(assert (=> b!1231820 (= e!698797 e!698796)))

(assert (=> b!1231820 (= c!120614 (validKeyInArray!0 (select (arr!38327 a!3806) from!3184)))))

(declare-fun d!134747 () Bool)

(declare-fun res!820313 () Bool)

(declare-fun e!698799 () Bool)

(assert (=> d!134747 (=> res!820313 e!698799)))

(assert (=> d!134747 (= res!820313 (bvsge from!3184 (size!38864 a!3806)))))

(assert (=> d!134747 (= (arrayNoDuplicates!0 a!3806 from!3184 acc!823) e!698799)))

(declare-fun b!1231818 () Bool)

(assert (=> b!1231818 (= e!698799 e!698797)))

(declare-fun res!820315 () Bool)

(assert (=> b!1231818 (=> (not res!820315) (not e!698797))))

(assert (=> b!1231818 (= res!820315 (not e!698798))))

(declare-fun res!820314 () Bool)

(assert (=> b!1231818 (=> (not res!820314) (not e!698798))))

(assert (=> b!1231818 (= res!820314 (validKeyInArray!0 (select (arr!38327 a!3806) from!3184)))))

(assert (= (and d!134747 (not res!820313)) b!1231818))

(assert (= (and b!1231818 res!820314) b!1231817))

(assert (= (and b!1231818 res!820315) b!1231820))

(assert (= (and b!1231820 c!120614) b!1231816))

(assert (= (and b!1231820 (not c!120614)) b!1231819))

(assert (= (or b!1231816 b!1231819) bm!60899))

(assert (=> bm!60899 m!1135913))

(declare-fun m!1135971 () Bool)

(assert (=> bm!60899 m!1135971))

(assert (=> b!1231817 m!1135913))

(assert (=> b!1231817 m!1135913))

(declare-fun m!1135973 () Bool)

(assert (=> b!1231817 m!1135973))

(assert (=> b!1231820 m!1135913))

(assert (=> b!1231820 m!1135913))

(assert (=> b!1231820 m!1135919))

(assert (=> b!1231818 m!1135913))

(assert (=> b!1231818 m!1135913))

(assert (=> b!1231818 m!1135919))

(assert (=> b!1231742 d!134747))

(declare-fun d!134765 () Bool)

(assert (=> d!134765 (= (array_inv!29103 a!3806) (bvsge (size!38864 a!3806) #b00000000000000000000000000000000))))

(assert (=> start!102422 d!134765))

(declare-fun d!134773 () Bool)

(declare-fun lt!559406 () Bool)

(declare-fun content!574 (List!27278) (Set (_ BitVec 64)))

(assert (=> d!134773 (= lt!559406 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!574 acc!823)))))

(declare-fun e!698826 () Bool)

(assert (=> d!134773 (= lt!559406 e!698826)))

(declare-fun res!820340 () Bool)

(assert (=> d!134773 (=> (not res!820340) (not e!698826))))

(assert (=> d!134773 (= res!820340 (is-Cons!27274 acc!823))))

(assert (=> d!134773 (= (contains!7193 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559406)))

(declare-fun b!1231850 () Bool)

(declare-fun e!698827 () Bool)

(assert (=> b!1231850 (= e!698826 e!698827)))

(declare-fun res!820339 () Bool)

(assert (=> b!1231850 (=> res!820339 e!698827)))

(assert (=> b!1231850 (= res!820339 (= (h!28483 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1231851 () Bool)

(assert (=> b!1231851 (= e!698827 (contains!7193 (t!40748 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134773 res!820340) b!1231850))

(assert (= (and b!1231850 (not res!820339)) b!1231851))

(declare-fun m!1135991 () Bool)

(assert (=> d!134773 m!1135991))

(declare-fun m!1135993 () Bool)

(assert (=> d!134773 m!1135993))

(declare-fun m!1135995 () Bool)

(assert (=> b!1231851 m!1135995))

(assert (=> b!1231746 d!134773))

(declare-fun d!134781 () Bool)

(assert (=> d!134781 (= (validKeyInArray!0 k!2913) (and (not (= k!2913 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2913 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1231741 d!134781))

(declare-fun bm!60903 () Bool)

(declare-fun c!120618 () Bool)

(declare-fun call!60906 () Bool)

(assert (=> bm!60903 (= call!60906 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120618 (Cons!27274 (select (arr!38327 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27274 (select (arr!38327 a!3806) from!3184) Nil!27275)) (Cons!27274 (select (arr!38327 a!3806) from!3184) Nil!27275))))))

(declare-fun b!1231858 () Bool)

(declare-fun e!698834 () Bool)

(assert (=> b!1231858 (= e!698834 call!60906)))

(declare-fun b!1231859 () Bool)

(declare-fun e!698836 () Bool)

(assert (=> b!1231859 (= e!698836 (contains!7193 (Cons!27274 (select (arr!38327 a!3806) from!3184) Nil!27275) (select (arr!38327 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1231861 () Bool)

(assert (=> b!1231861 (= e!698834 call!60906)))

(declare-fun b!1231862 () Bool)

(declare-fun e!698835 () Bool)

(assert (=> b!1231862 (= e!698835 e!698834)))

(assert (=> b!1231862 (= c!120618 (validKeyInArray!0 (select (arr!38327 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun d!134785 () Bool)

(declare-fun res!820347 () Bool)

(declare-fun e!698837 () Bool)

(assert (=> d!134785 (=> res!820347 e!698837)))

(assert (=> d!134785 (= res!820347 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38864 a!3806)))))

(assert (=> d!134785 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27274 (select (arr!38327 a!3806) from!3184) Nil!27275)) e!698837)))

(declare-fun b!1231860 () Bool)

(assert (=> b!1231860 (= e!698837 e!698835)))

(declare-fun res!820349 () Bool)

(assert (=> b!1231860 (=> (not res!820349) (not e!698835))))

(assert (=> b!1231860 (= res!820349 (not e!698836))))

(declare-fun res!820348 () Bool)

(assert (=> b!1231860 (=> (not res!820348) (not e!698836))))

(assert (=> b!1231860 (= res!820348 (validKeyInArray!0 (select (arr!38327 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!134785 (not res!820347)) b!1231860))

(assert (= (and b!1231860 res!820348) b!1231859))

(assert (= (and b!1231860 res!820349) b!1231862))

(assert (= (and b!1231862 c!120618) b!1231858))

(assert (= (and b!1231862 (not c!120618)) b!1231861))

(assert (= (or b!1231858 b!1231861) bm!60903))

(assert (=> bm!60903 m!1135935))

(declare-fun m!1136003 () Bool)

(assert (=> bm!60903 m!1136003))

