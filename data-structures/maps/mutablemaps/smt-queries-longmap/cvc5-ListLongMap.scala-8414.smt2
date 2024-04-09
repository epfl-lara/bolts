; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102418 () Bool)

(assert start!102418)

(declare-fun b!1231684 () Bool)

(declare-fun res!820203 () Bool)

(declare-fun e!698724 () Bool)

(assert (=> b!1231684 (=> (not res!820203) (not e!698724))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79427 0))(
  ( (array!79428 (arr!38325 (Array (_ BitVec 32) (_ BitVec 64))) (size!38862 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79427)

(assert (=> b!1231684 (= res!820203 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38862 a!3806)) (bvslt from!3184 (size!38862 a!3806))))))

(declare-fun b!1231685 () Bool)

(declare-fun res!820210 () Bool)

(assert (=> b!1231685 (=> (not res!820210) (not e!698724))))

(declare-datatypes ((List!27276 0))(
  ( (Nil!27273) (Cons!27272 (h!28481 (_ BitVec 64)) (t!40746 List!27276)) )
))
(declare-fun acc!823 () List!27276)

(declare-fun contains!7191 (List!27276 (_ BitVec 64)) Bool)

(assert (=> b!1231685 (= res!820210 (not (contains!7191 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231686 () Bool)

(declare-fun res!820204 () Bool)

(assert (=> b!1231686 (=> (not res!820204) (not e!698724))))

(declare-fun noDuplicate!1798 (List!27276) Bool)

(assert (=> b!1231686 (= res!820204 (noDuplicate!1798 acc!823))))

(declare-fun res!820206 () Bool)

(assert (=> start!102418 (=> (not res!820206) (not e!698724))))

(assert (=> start!102418 (= res!820206 (bvslt (size!38862 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102418 e!698724))

(declare-fun array_inv!29101 (array!79427) Bool)

(assert (=> start!102418 (array_inv!29101 a!3806)))

(assert (=> start!102418 true))

(declare-fun b!1231687 () Bool)

(declare-fun res!820211 () Bool)

(assert (=> b!1231687 (=> (not res!820211) (not e!698724))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79427 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1231687 (= res!820211 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1231688 () Bool)

(declare-fun res!820205 () Bool)

(assert (=> b!1231688 (=> (not res!820205) (not e!698724))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1231688 (= res!820205 (validKeyInArray!0 k!2913))))

(declare-fun b!1231689 () Bool)

(declare-fun res!820209 () Bool)

(assert (=> b!1231689 (=> (not res!820209) (not e!698724))))

(assert (=> b!1231689 (= res!820209 (validKeyInArray!0 (select (arr!38325 a!3806) from!3184)))))

(declare-fun b!1231690 () Bool)

(declare-fun res!820208 () Bool)

(assert (=> b!1231690 (=> (not res!820208) (not e!698724))))

(declare-fun arrayNoDuplicates!0 (array!79427 (_ BitVec 32) List!27276) Bool)

(assert (=> b!1231690 (= res!820208 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1231691 () Bool)

(assert (=> b!1231691 (= e!698724 (not (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27272 (select (arr!38325 a!3806) from!3184) Nil!27273))))))

(assert (=> b!1231691 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27273)))

(declare-datatypes ((Unit!40730 0))(
  ( (Unit!40731) )
))
(declare-fun lt!559385 () Unit!40730)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79427 List!27276 List!27276 (_ BitVec 32)) Unit!40730)

(assert (=> b!1231691 (= lt!559385 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27273 from!3184))))

(assert (=> b!1231691 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27272 (select (arr!38325 a!3806) from!3184) acc!823))))

(declare-fun b!1231692 () Bool)

(declare-fun res!820207 () Bool)

(assert (=> b!1231692 (=> (not res!820207) (not e!698724))))

(assert (=> b!1231692 (= res!820207 (not (contains!7191 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102418 res!820206) b!1231688))

(assert (= (and b!1231688 res!820205) b!1231684))

(assert (= (and b!1231684 res!820203) b!1231686))

(assert (= (and b!1231686 res!820204) b!1231685))

(assert (= (and b!1231685 res!820210) b!1231692))

(assert (= (and b!1231692 res!820207) b!1231687))

(assert (= (and b!1231687 res!820211) b!1231690))

(assert (= (and b!1231690 res!820208) b!1231689))

(assert (= (and b!1231689 res!820209) b!1231691))

(declare-fun m!1135847 () Bool)

(assert (=> b!1231689 m!1135847))

(assert (=> b!1231689 m!1135847))

(declare-fun m!1135849 () Bool)

(assert (=> b!1231689 m!1135849))

(declare-fun m!1135851 () Bool)

(assert (=> start!102418 m!1135851))

(declare-fun m!1135853 () Bool)

(assert (=> b!1231692 m!1135853))

(declare-fun m!1135855 () Bool)

(assert (=> b!1231688 m!1135855))

(declare-fun m!1135857 () Bool)

(assert (=> b!1231686 m!1135857))

(declare-fun m!1135859 () Bool)

(assert (=> b!1231691 m!1135859))

(declare-fun m!1135861 () Bool)

(assert (=> b!1231691 m!1135861))

(assert (=> b!1231691 m!1135847))

(declare-fun m!1135863 () Bool)

(assert (=> b!1231691 m!1135863))

(declare-fun m!1135865 () Bool)

(assert (=> b!1231691 m!1135865))

(declare-fun m!1135867 () Bool)

(assert (=> b!1231690 m!1135867))

(declare-fun m!1135869 () Bool)

(assert (=> b!1231687 m!1135869))

(declare-fun m!1135871 () Bool)

(assert (=> b!1231685 m!1135871))

(push 1)

(assert (not b!1231689))

(assert (not b!1231687))

(assert (not b!1231692))

(assert (not b!1231688))

(assert (not start!102418))

(assert (not b!1231685))

(assert (not b!1231686))

(assert (not b!1231690))

(assert (not b!1231691))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1231791 () Bool)

(declare-fun e!698778 () Bool)

(declare-fun call!60897 () Bool)

(assert (=> b!1231791 (= e!698778 call!60897)))

(declare-fun d!134743 () Bool)

(declare-fun res!820299 () Bool)

(declare-fun e!698779 () Bool)

(assert (=> d!134743 (=> res!820299 e!698779)))

(assert (=> d!134743 (= res!820299 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38862 a!3806)))))

(assert (=> d!134743 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27272 (select (arr!38325 a!3806) from!3184) Nil!27273)) e!698779)))

(declare-fun b!1231792 () Bool)

(assert (=> b!1231792 (= e!698778 call!60897)))

(declare-fun b!1231793 () Bool)

(declare-fun e!698777 () Bool)

(assert (=> b!1231793 (= e!698777 e!698778)))

(declare-fun c!120609 () Bool)

(assert (=> b!1231793 (= c!120609 (validKeyInArray!0 (select (arr!38325 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1231794 () Bool)

(declare-fun e!698776 () Bool)

(assert (=> b!1231794 (= e!698776 (contains!7191 (Cons!27272 (select (arr!38325 a!3806) from!3184) Nil!27273) (select (arr!38325 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun bm!60894 () Bool)

(assert (=> bm!60894 (= call!60897 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120609 (Cons!27272 (select (arr!38325 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27272 (select (arr!38325 a!3806) from!3184) Nil!27273)) (Cons!27272 (select (arr!38325 a!3806) from!3184) Nil!27273))))))

(declare-fun b!1231795 () Bool)

(assert (=> b!1231795 (= e!698779 e!698777)))

(declare-fun res!820300 () Bool)

(assert (=> b!1231795 (=> (not res!820300) (not e!698777))))

(assert (=> b!1231795 (= res!820300 (not e!698776))))

(declare-fun res!820298 () Bool)

(assert (=> b!1231795 (=> (not res!820298) (not e!698776))))

(assert (=> b!1231795 (= res!820298 (validKeyInArray!0 (select (arr!38325 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!134743 (not res!820299)) b!1231795))

(assert (= (and b!1231795 res!820298) b!1231794))

(assert (= (and b!1231795 res!820300) b!1231793))

(assert (= (and b!1231793 c!120609) b!1231791))

(assert (= (and b!1231793 (not c!120609)) b!1231792))

(assert (= (or b!1231791 b!1231792) bm!60894))

(declare-fun m!1135951 () Bool)

(assert (=> b!1231793 m!1135951))

(assert (=> b!1231793 m!1135951))

(declare-fun m!1135953 () Bool)

(assert (=> b!1231793 m!1135953))

(assert (=> b!1231794 m!1135951))

(assert (=> b!1231794 m!1135951))

(declare-fun m!1135955 () Bool)

(assert (=> b!1231794 m!1135955))

(assert (=> bm!60894 m!1135951))

(declare-fun m!1135957 () Bool)

(assert (=> bm!60894 m!1135957))

(assert (=> b!1231795 m!1135951))

(assert (=> b!1231795 m!1135951))

(assert (=> b!1231795 m!1135953))

(assert (=> b!1231691 d!134743))

(declare-fun b!1231796 () Bool)

(declare-fun e!698782 () Bool)

(declare-fun call!60898 () Bool)

(assert (=> b!1231796 (= e!698782 call!60898)))

(declare-fun d!134753 () Bool)

(declare-fun res!820302 () Bool)

(declare-fun e!698783 () Bool)

(assert (=> d!134753 (=> res!820302 e!698783)))

(assert (=> d!134753 (= res!820302 (bvsge from!3184 (size!38862 a!3806)))))

(assert (=> d!134753 (= (arrayNoDuplicates!0 a!3806 from!3184 Nil!27273) e!698783)))

(declare-fun b!1231797 () Bool)

(assert (=> b!1231797 (= e!698782 call!60898)))

(declare-fun b!1231798 () Bool)

(declare-fun e!698781 () Bool)

(assert (=> b!1231798 (= e!698781 e!698782)))

(declare-fun c!120610 () Bool)

(assert (=> b!1231798 (= c!120610 (validKeyInArray!0 (select (arr!38325 a!3806) from!3184)))))

(declare-fun b!1231799 () Bool)

(declare-fun e!698780 () Bool)

(assert (=> b!1231799 (= e!698780 (contains!7191 Nil!27273 (select (arr!38325 a!3806) from!3184)))))

(declare-fun bm!60895 () Bool)

(assert (=> bm!60895 (= call!60898 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120610 (Cons!27272 (select (arr!38325 a!3806) from!3184) Nil!27273) Nil!27273)))))

(declare-fun b!1231800 () Bool)

(assert (=> b!1231800 (= e!698783 e!698781)))

(declare-fun res!820303 () Bool)

(assert (=> b!1231800 (=> (not res!820303) (not e!698781))))

(assert (=> b!1231800 (= res!820303 (not e!698780))))

(declare-fun res!820301 () Bool)

(assert (=> b!1231800 (=> (not res!820301) (not e!698780))))

(assert (=> b!1231800 (= res!820301 (validKeyInArray!0 (select (arr!38325 a!3806) from!3184)))))

(assert (= (and d!134753 (not res!820302)) b!1231800))

(assert (= (and b!1231800 res!820301) b!1231799))

(assert (= (and b!1231800 res!820303) b!1231798))

(assert (= (and b!1231798 c!120610) b!1231796))

(assert (= (and b!1231798 (not c!120610)) b!1231797))

(assert (= (or b!1231796 b!1231797) bm!60895))

(assert (=> b!1231798 m!1135847))

(assert (=> b!1231798 m!1135847))

(assert (=> b!1231798 m!1135849))

(assert (=> b!1231799 m!1135847))

(assert (=> b!1231799 m!1135847))

(declare-fun m!1135959 () Bool)

(assert (=> b!1231799 m!1135959))

(assert (=> bm!60895 m!1135847))

(declare-fun m!1135961 () Bool)

(assert (=> bm!60895 m!1135961))

(assert (=> b!1231800 m!1135847))

(assert (=> b!1231800 m!1135847))

(assert (=> b!1231800 m!1135849))

(assert (=> b!1231691 d!134753))

(declare-fun d!134755 () Bool)

(assert (=> d!134755 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27273)))

(declare-fun lt!559401 () Unit!40730)

(declare-fun choose!80 (array!79427 List!27276 List!27276 (_ BitVec 32)) Unit!40730)

(assert (=> d!134755 (= lt!559401 (choose!80 a!3806 acc!823 Nil!27273 from!3184))))

(assert (=> d!134755 (bvslt (size!38862 a!3806) #b01111111111111111111111111111111)))

(assert (=> d!134755 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27273 from!3184) lt!559401)))

(declare-fun bs!34612 () Bool)

(assert (= bs!34612 d!134755))

(assert (=> bs!34612 m!1135861))

(declare-fun m!1135969 () Bool)

(assert (=> bs!34612 m!1135969))

(assert (=> b!1231691 d!134755))

(declare-fun b!1231821 () Bool)

(declare-fun e!698805 () Bool)

(declare-fun call!60904 () Bool)

(assert (=> b!1231821 (= e!698805 call!60904)))

(declare-fun d!134761 () Bool)

(declare-fun res!820317 () Bool)

(declare-fun e!698807 () Bool)

(assert (=> d!134761 (=> res!820317 e!698807)))

(assert (=> d!134761 (= res!820317 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38862 a!3806)))))

(assert (=> d!134761 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27272 (select (arr!38325 a!3806) from!3184) acc!823)) e!698807)))

(declare-fun b!1231823 () Bool)

(assert (=> b!1231823 (= e!698805 call!60904)))

(declare-fun b!1231825 () Bool)

(declare-fun e!698803 () Bool)

(assert (=> b!1231825 (= e!698803 e!698805)))

(declare-fun c!120615 () Bool)

(assert (=> b!1231825 (= c!120615 (validKeyInArray!0 (select (arr!38325 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun e!698801 () Bool)

(declare-fun b!1231827 () Bool)

(assert (=> b!1231827 (= e!698801 (contains!7191 (Cons!27272 (select (arr!38325 a!3806) from!3184) acc!823) (select (arr!38325 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun bm!60900 () Bool)

(assert (=> bm!60900 (= call!60904 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120615 (Cons!27272 (select (arr!38325 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27272 (select (arr!38325 a!3806) from!3184) acc!823)) (Cons!27272 (select (arr!38325 a!3806) from!3184) acc!823))))))

(declare-fun b!1231830 () Bool)

(assert (=> b!1231830 (= e!698807 e!698803)))

(declare-fun res!820318 () Bool)

(assert (=> b!1231830 (=> (not res!820318) (not e!698803))))

(assert (=> b!1231830 (= res!820318 (not e!698801))))

(declare-fun res!820316 () Bool)

(assert (=> b!1231830 (=> (not res!820316) (not e!698801))))

(assert (=> b!1231830 (= res!820316 (validKeyInArray!0 (select (arr!38325 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!134761 (not res!820317)) b!1231830))

(assert (= (and b!1231830 res!820316) b!1231827))

(assert (= (and b!1231830 res!820318) b!1231825))

(assert (= (and b!1231825 c!120615) b!1231821))

(assert (= (and b!1231825 (not c!120615)) b!1231823))

(assert (= (or b!1231821 b!1231823) bm!60900))

(assert (=> b!1231825 m!1135951))

(assert (=> b!1231825 m!1135951))

(assert (=> b!1231825 m!1135953))

(assert (=> b!1231827 m!1135951))

(assert (=> b!1231827 m!1135951))

(declare-fun m!1135977 () Bool)

(assert (=> b!1231827 m!1135977))

(assert (=> bm!60900 m!1135951))

(declare-fun m!1135981 () Bool)

(assert (=> bm!60900 m!1135981))

(assert (=> b!1231830 m!1135951))

(assert (=> b!1231830 m!1135951))

(assert (=> b!1231830 m!1135953))

(assert (=> b!1231691 d!134761))

(declare-fun b!1231831 () Bool)

(declare-fun e!698810 () Bool)

(declare-fun call!60905 () Bool)

(assert (=> b!1231831 (= e!698810 call!60905)))

(declare-fun d!134769 () Bool)

(declare-fun res!820323 () Bool)

(declare-fun e!698811 () Bool)

(assert (=> d!134769 (=> res!820323 e!698811)))

(assert (=> d!134769 (= res!820323 (bvsge from!3184 (size!38862 a!3806)))))

(assert (=> d!134769 (= (arrayNoDuplicates!0 a!3806 from!3184 acc!823) e!698811)))

(declare-fun b!1231832 () Bool)

(assert (=> b!1231832 (= e!698810 call!60905)))

(declare-fun b!1231833 () Bool)

(declare-fun e!698809 () Bool)

(assert (=> b!1231833 (= e!698809 e!698810)))

(declare-fun c!120617 () Bool)

(assert (=> b!1231833 (= c!120617 (validKeyInArray!0 (select (arr!38325 a!3806) from!3184)))))

(declare-fun b!1231834 () Bool)

(declare-fun e!698808 () Bool)

(assert (=> b!1231834 (= e!698808 (contains!7191 acc!823 (select (arr!38325 a!3806) from!3184)))))

(declare-fun bm!60902 () Bool)

(assert (=> bm!60902 (= call!60905 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120617 (Cons!27272 (select (arr!38325 a!3806) from!3184) acc!823) acc!823)))))

(declare-fun b!1231835 () Bool)

(assert (=> b!1231835 (= e!698811 e!698809)))

(declare-fun res!820324 () Bool)

(assert (=> b!1231835 (=> (not res!820324) (not e!698809))))

(assert (=> b!1231835 (= res!820324 (not e!698808))))

(declare-fun res!820322 () Bool)

(assert (=> b!1231835 (=> (not res!820322) (not e!698808))))

(assert (=> b!1231835 (= res!820322 (validKeyInArray!0 (select (arr!38325 a!3806) from!3184)))))

(assert (= (and d!134769 (not res!820323)) b!1231835))

(assert (= (and b!1231835 res!820322) b!1231834))

(assert (= (and b!1231835 res!820324) b!1231833))

(assert (= (and b!1231833 c!120617) b!1231831))

(assert (= (and b!1231833 (not c!120617)) b!1231832))

(assert (= (or b!1231831 b!1231832) bm!60902))

(assert (=> b!1231833 m!1135847))

(assert (=> b!1231833 m!1135847))

(assert (=> b!1231833 m!1135849))

(assert (=> b!1231834 m!1135847))

(assert (=> b!1231834 m!1135847))

(declare-fun m!1135983 () Bool)

(assert (=> b!1231834 m!1135983))

(assert (=> bm!60902 m!1135847))

(declare-fun m!1135985 () Bool)

(assert (=> bm!60902 m!1135985))

(assert (=> b!1231835 m!1135847))

(assert (=> b!1231835 m!1135847))

(assert (=> b!1231835 m!1135849))

(assert (=> b!1231690 d!134769))

(declare-fun d!134775 () Bool)

(declare-fun lt!559407 () Bool)

(declare-fun content!575 (List!27276) (Set (_ BitVec 64)))

(assert (=> d!134775 (= lt!559407 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!575 acc!823)))))

(declare-fun e!698828 () Bool)

(assert (=> d!134775 (= lt!559407 e!698828)))

(declare-fun res!820341 () Bool)

(assert (=> d!134775 (=> (not res!820341) (not e!698828))))

(assert (=> d!134775 (= res!820341 (is-Cons!27272 acc!823))))

(assert (=> d!134775 (= (contains!7191 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559407)))

(declare-fun b!1231852 () Bool)

(declare-fun e!698829 () Bool)

(assert (=> b!1231852 (= e!698828 e!698829)))

(declare-fun res!820342 () Bool)

(assert (=> b!1231852 (=> res!820342 e!698829)))

