; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102420 () Bool)

(assert start!102420)

(declare-fun b!1231711 () Bool)

(declare-fun res!820233 () Bool)

(declare-fun e!698731 () Bool)

(assert (=> b!1231711 (=> (not res!820233) (not e!698731))))

(declare-datatypes ((List!27277 0))(
  ( (Nil!27274) (Cons!27273 (h!28482 (_ BitVec 64)) (t!40747 List!27277)) )
))
(declare-fun acc!823 () List!27277)

(declare-fun noDuplicate!1799 (List!27277) Bool)

(assert (=> b!1231711 (= res!820233 (noDuplicate!1799 acc!823))))

(declare-fun b!1231712 () Bool)

(declare-fun res!820232 () Bool)

(assert (=> b!1231712 (=> (not res!820232) (not e!698731))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1231712 (= res!820232 (validKeyInArray!0 k0!2913))))

(declare-fun b!1231713 () Bool)

(declare-datatypes ((array!79429 0))(
  ( (array!79430 (arr!38326 (Array (_ BitVec 32) (_ BitVec 64))) (size!38863 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79429)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79429 (_ BitVec 32) List!27277) Bool)

(assert (=> b!1231713 (= e!698731 (not (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27273 (select (arr!38326 a!3806) from!3184) Nil!27274))))))

(assert (=> b!1231713 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27274)))

(declare-datatypes ((Unit!40732 0))(
  ( (Unit!40733) )
))
(declare-fun lt!559388 () Unit!40732)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79429 List!27277 List!27277 (_ BitVec 32)) Unit!40732)

(assert (=> b!1231713 (= lt!559388 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27274 from!3184))))

(assert (=> b!1231713 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27273 (select (arr!38326 a!3806) from!3184) acc!823))))

(declare-fun b!1231714 () Bool)

(declare-fun res!820235 () Bool)

(assert (=> b!1231714 (=> (not res!820235) (not e!698731))))

(declare-fun contains!7192 (List!27277 (_ BitVec 64)) Bool)

(assert (=> b!1231714 (= res!820235 (not (contains!7192 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231715 () Bool)

(declare-fun res!820236 () Bool)

(assert (=> b!1231715 (=> (not res!820236) (not e!698731))))

(declare-fun arrayContainsKey!0 (array!79429 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1231715 (= res!820236 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1231716 () Bool)

(declare-fun res!820230 () Bool)

(assert (=> b!1231716 (=> (not res!820230) (not e!698731))))

(assert (=> b!1231716 (= res!820230 (validKeyInArray!0 (select (arr!38326 a!3806) from!3184)))))

(declare-fun b!1231717 () Bool)

(declare-fun res!820237 () Bool)

(assert (=> b!1231717 (=> (not res!820237) (not e!698731))))

(assert (=> b!1231717 (= res!820237 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun res!820234 () Bool)

(assert (=> start!102420 (=> (not res!820234) (not e!698731))))

(assert (=> start!102420 (= res!820234 (bvslt (size!38863 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102420 e!698731))

(declare-fun array_inv!29102 (array!79429) Bool)

(assert (=> start!102420 (array_inv!29102 a!3806)))

(assert (=> start!102420 true))

(declare-fun b!1231718 () Bool)

(declare-fun res!820231 () Bool)

(assert (=> b!1231718 (=> (not res!820231) (not e!698731))))

(assert (=> b!1231718 (= res!820231 (not (contains!7192 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231719 () Bool)

(declare-fun res!820238 () Bool)

(assert (=> b!1231719 (=> (not res!820238) (not e!698731))))

(assert (=> b!1231719 (= res!820238 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38863 a!3806)) (bvslt from!3184 (size!38863 a!3806))))))

(assert (= (and start!102420 res!820234) b!1231712))

(assert (= (and b!1231712 res!820232) b!1231719))

(assert (= (and b!1231719 res!820238) b!1231711))

(assert (= (and b!1231711 res!820233) b!1231718))

(assert (= (and b!1231718 res!820231) b!1231714))

(assert (= (and b!1231714 res!820235) b!1231715))

(assert (= (and b!1231715 res!820236) b!1231717))

(assert (= (and b!1231717 res!820237) b!1231716))

(assert (= (and b!1231716 res!820230) b!1231713))

(declare-fun m!1135873 () Bool)

(assert (=> b!1231716 m!1135873))

(assert (=> b!1231716 m!1135873))

(declare-fun m!1135875 () Bool)

(assert (=> b!1231716 m!1135875))

(declare-fun m!1135877 () Bool)

(assert (=> b!1231712 m!1135877))

(declare-fun m!1135879 () Bool)

(assert (=> b!1231713 m!1135879))

(declare-fun m!1135881 () Bool)

(assert (=> b!1231713 m!1135881))

(assert (=> b!1231713 m!1135873))

(declare-fun m!1135883 () Bool)

(assert (=> b!1231713 m!1135883))

(declare-fun m!1135885 () Bool)

(assert (=> b!1231713 m!1135885))

(declare-fun m!1135887 () Bool)

(assert (=> b!1231717 m!1135887))

(declare-fun m!1135889 () Bool)

(assert (=> b!1231714 m!1135889))

(declare-fun m!1135891 () Bool)

(assert (=> b!1231718 m!1135891))

(declare-fun m!1135893 () Bool)

(assert (=> start!102420 m!1135893))

(declare-fun m!1135895 () Bool)

(assert (=> b!1231711 m!1135895))

(declare-fun m!1135897 () Bool)

(assert (=> b!1231715 m!1135897))

(check-sat (not b!1231713) (not b!1231715) (not b!1231714) (not b!1231711) (not b!1231712) (not b!1231718) (not b!1231716) (not start!102420) (not b!1231717))
(check-sat)
(get-model)

(declare-fun d!134737 () Bool)

(declare-fun lt!559394 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!573 (List!27277) (InoxSet (_ BitVec 64)))

(assert (=> d!134737 (= lt!559394 (select (content!573 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!698743 () Bool)

(assert (=> d!134737 (= lt!559394 e!698743)))

(declare-fun res!820270 () Bool)

(assert (=> d!134737 (=> (not res!820270) (not e!698743))))

(get-info :version)

(assert (=> d!134737 (= res!820270 ((_ is Cons!27273) acc!823))))

(assert (=> d!134737 (= (contains!7192 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559394)))

(declare-fun b!1231751 () Bool)

(declare-fun e!698742 () Bool)

(assert (=> b!1231751 (= e!698743 e!698742)))

(declare-fun res!820271 () Bool)

(assert (=> b!1231751 (=> res!820271 e!698742)))

(assert (=> b!1231751 (= res!820271 (= (h!28482 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1231752 () Bool)

(assert (=> b!1231752 (= e!698742 (contains!7192 (t!40747 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134737 res!820270) b!1231751))

(assert (= (and b!1231751 (not res!820271)) b!1231752))

(declare-fun m!1135925 () Bool)

(assert (=> d!134737 m!1135925))

(declare-fun m!1135927 () Bool)

(assert (=> d!134737 m!1135927))

(declare-fun m!1135929 () Bool)

(assert (=> b!1231752 m!1135929))

(assert (=> b!1231714 d!134737))

(declare-fun d!134739 () Bool)

(declare-fun lt!559395 () Bool)

(assert (=> d!134739 (= lt!559395 (select (content!573 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!698745 () Bool)

(assert (=> d!134739 (= lt!559395 e!698745)))

(declare-fun res!820272 () Bool)

(assert (=> d!134739 (=> (not res!820272) (not e!698745))))

(assert (=> d!134739 (= res!820272 ((_ is Cons!27273) acc!823))))

(assert (=> d!134739 (= (contains!7192 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559395)))

(declare-fun b!1231753 () Bool)

(declare-fun e!698744 () Bool)

(assert (=> b!1231753 (= e!698745 e!698744)))

(declare-fun res!820273 () Bool)

(assert (=> b!1231753 (=> res!820273 e!698744)))

(assert (=> b!1231753 (= res!820273 (= (h!28482 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1231754 () Bool)

(assert (=> b!1231754 (= e!698744 (contains!7192 (t!40747 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134739 res!820272) b!1231753))

(assert (= (and b!1231753 (not res!820273)) b!1231754))

(assert (=> d!134739 m!1135925))

(declare-fun m!1135931 () Bool)

(assert (=> d!134739 m!1135931))

(declare-fun m!1135933 () Bool)

(assert (=> b!1231754 m!1135933))

(assert (=> b!1231718 d!134739))

(declare-fun b!1231779 () Bool)

(declare-fun e!698768 () Bool)

(declare-fun call!60895 () Bool)

(assert (=> b!1231779 (= e!698768 call!60895)))

(declare-fun b!1231780 () Bool)

(declare-fun e!698769 () Bool)

(assert (=> b!1231780 (= e!698769 (contains!7192 (Cons!27273 (select (arr!38326 a!3806) from!3184) Nil!27274) (select (arr!38326 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1231781 () Bool)

(declare-fun e!698767 () Bool)

(assert (=> b!1231781 (= e!698767 e!698768)))

(declare-fun c!120607 () Bool)

(assert (=> b!1231781 (= c!120607 (validKeyInArray!0 (select (arr!38326 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun d!134741 () Bool)

(declare-fun res!820292 () Bool)

(declare-fun e!698766 () Bool)

(assert (=> d!134741 (=> res!820292 e!698766)))

(assert (=> d!134741 (= res!820292 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38863 a!3806)))))

(assert (=> d!134741 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27273 (select (arr!38326 a!3806) from!3184) Nil!27274)) e!698766)))

(declare-fun b!1231782 () Bool)

(assert (=> b!1231782 (= e!698768 call!60895)))

(declare-fun b!1231784 () Bool)

(assert (=> b!1231784 (= e!698766 e!698767)))

(declare-fun res!820290 () Bool)

(assert (=> b!1231784 (=> (not res!820290) (not e!698767))))

(assert (=> b!1231784 (= res!820290 (not e!698769))))

(declare-fun res!820291 () Bool)

(assert (=> b!1231784 (=> (not res!820291) (not e!698769))))

(assert (=> b!1231784 (= res!820291 (validKeyInArray!0 (select (arr!38326 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun bm!60892 () Bool)

(assert (=> bm!60892 (= call!60895 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120607 (Cons!27273 (select (arr!38326 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27273 (select (arr!38326 a!3806) from!3184) Nil!27274)) (Cons!27273 (select (arr!38326 a!3806) from!3184) Nil!27274))))))

(assert (= (and d!134741 (not res!820292)) b!1231784))

(assert (= (and b!1231784 res!820291) b!1231780))

(assert (= (and b!1231784 res!820290) b!1231781))

(assert (= (and b!1231781 c!120607) b!1231779))

(assert (= (and b!1231781 (not c!120607)) b!1231782))

(assert (= (or b!1231779 b!1231782) bm!60892))

(declare-fun m!1135939 () Bool)

(assert (=> b!1231780 m!1135939))

(assert (=> b!1231780 m!1135939))

(declare-fun m!1135941 () Bool)

(assert (=> b!1231780 m!1135941))

(assert (=> b!1231781 m!1135939))

(assert (=> b!1231781 m!1135939))

(declare-fun m!1135943 () Bool)

(assert (=> b!1231781 m!1135943))

(assert (=> b!1231784 m!1135939))

(assert (=> b!1231784 m!1135939))

(assert (=> b!1231784 m!1135943))

(assert (=> bm!60892 m!1135939))

(declare-fun m!1135945 () Bool)

(assert (=> bm!60892 m!1135945))

(assert (=> b!1231713 d!134741))

(declare-fun b!1231786 () Bool)

(declare-fun e!698774 () Bool)

(declare-fun call!60896 () Bool)

(assert (=> b!1231786 (= e!698774 call!60896)))

(declare-fun b!1231787 () Bool)

(declare-fun e!698775 () Bool)

(assert (=> b!1231787 (= e!698775 (contains!7192 Nil!27274 (select (arr!38326 a!3806) from!3184)))))

(declare-fun b!1231788 () Bool)

(declare-fun e!698773 () Bool)

(assert (=> b!1231788 (= e!698773 e!698774)))

(declare-fun c!120608 () Bool)

(assert (=> b!1231788 (= c!120608 (validKeyInArray!0 (select (arr!38326 a!3806) from!3184)))))

(declare-fun d!134749 () Bool)

(declare-fun res!820297 () Bool)

(declare-fun e!698772 () Bool)

(assert (=> d!134749 (=> res!820297 e!698772)))

(assert (=> d!134749 (= res!820297 (bvsge from!3184 (size!38863 a!3806)))))

(assert (=> d!134749 (= (arrayNoDuplicates!0 a!3806 from!3184 Nil!27274) e!698772)))

(declare-fun b!1231789 () Bool)

(assert (=> b!1231789 (= e!698774 call!60896)))

(declare-fun b!1231790 () Bool)

(assert (=> b!1231790 (= e!698772 e!698773)))

(declare-fun res!820295 () Bool)

(assert (=> b!1231790 (=> (not res!820295) (not e!698773))))

(assert (=> b!1231790 (= res!820295 (not e!698775))))

(declare-fun res!820296 () Bool)

(assert (=> b!1231790 (=> (not res!820296) (not e!698775))))

(assert (=> b!1231790 (= res!820296 (validKeyInArray!0 (select (arr!38326 a!3806) from!3184)))))

(declare-fun bm!60893 () Bool)

(assert (=> bm!60893 (= call!60896 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120608 (Cons!27273 (select (arr!38326 a!3806) from!3184) Nil!27274) Nil!27274)))))

(assert (= (and d!134749 (not res!820297)) b!1231790))

(assert (= (and b!1231790 res!820296) b!1231787))

(assert (= (and b!1231790 res!820295) b!1231788))

(assert (= (and b!1231788 c!120608) b!1231786))

(assert (= (and b!1231788 (not c!120608)) b!1231789))

(assert (= (or b!1231786 b!1231789) bm!60893))

(assert (=> b!1231787 m!1135873))

(assert (=> b!1231787 m!1135873))

(declare-fun m!1135947 () Bool)

(assert (=> b!1231787 m!1135947))

(assert (=> b!1231788 m!1135873))

(assert (=> b!1231788 m!1135873))

(assert (=> b!1231788 m!1135875))

(assert (=> b!1231790 m!1135873))

(assert (=> b!1231790 m!1135873))

(assert (=> b!1231790 m!1135875))

(assert (=> bm!60893 m!1135873))

(declare-fun m!1135949 () Bool)

(assert (=> bm!60893 m!1135949))

(assert (=> b!1231713 d!134749))

(declare-fun d!134751 () Bool)

(assert (=> d!134751 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27274)))

(declare-fun lt!559398 () Unit!40732)

(declare-fun choose!80 (array!79429 List!27277 List!27277 (_ BitVec 32)) Unit!40732)

(assert (=> d!134751 (= lt!559398 (choose!80 a!3806 acc!823 Nil!27274 from!3184))))

(assert (=> d!134751 (bvslt (size!38863 a!3806) #b01111111111111111111111111111111)))

(assert (=> d!134751 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27274 from!3184) lt!559398)))

(declare-fun bs!34611 () Bool)

(assert (= bs!34611 d!134751))

(assert (=> bs!34611 m!1135881))

(declare-fun m!1135963 () Bool)

(assert (=> bs!34611 m!1135963))

(assert (=> b!1231713 d!134751))

(declare-fun b!1231811 () Bool)

(declare-fun e!698794 () Bool)

(declare-fun call!60901 () Bool)

(assert (=> b!1231811 (= e!698794 call!60901)))

(declare-fun b!1231812 () Bool)

(declare-fun e!698795 () Bool)

(assert (=> b!1231812 (= e!698795 (contains!7192 (Cons!27273 (select (arr!38326 a!3806) from!3184) acc!823) (select (arr!38326 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1231813 () Bool)

(declare-fun e!698793 () Bool)

(assert (=> b!1231813 (= e!698793 e!698794)))

(declare-fun c!120613 () Bool)

(assert (=> b!1231813 (= c!120613 (validKeyInArray!0 (select (arr!38326 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun d!134757 () Bool)

(declare-fun res!820312 () Bool)

(declare-fun e!698792 () Bool)

(assert (=> d!134757 (=> res!820312 e!698792)))

(assert (=> d!134757 (= res!820312 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38863 a!3806)))))

(assert (=> d!134757 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27273 (select (arr!38326 a!3806) from!3184) acc!823)) e!698792)))

(declare-fun b!1231814 () Bool)

(assert (=> b!1231814 (= e!698794 call!60901)))

(declare-fun b!1231815 () Bool)

(assert (=> b!1231815 (= e!698792 e!698793)))

(declare-fun res!820310 () Bool)

(assert (=> b!1231815 (=> (not res!820310) (not e!698793))))

(assert (=> b!1231815 (= res!820310 (not e!698795))))

(declare-fun res!820311 () Bool)

(assert (=> b!1231815 (=> (not res!820311) (not e!698795))))

(assert (=> b!1231815 (= res!820311 (validKeyInArray!0 (select (arr!38326 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun bm!60898 () Bool)

(assert (=> bm!60898 (= call!60901 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120613 (Cons!27273 (select (arr!38326 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27273 (select (arr!38326 a!3806) from!3184) acc!823)) (Cons!27273 (select (arr!38326 a!3806) from!3184) acc!823))))))

(assert (= (and d!134757 (not res!820312)) b!1231815))

(assert (= (and b!1231815 res!820311) b!1231812))

(assert (= (and b!1231815 res!820310) b!1231813))

(assert (= (and b!1231813 c!120613) b!1231811))

(assert (= (and b!1231813 (not c!120613)) b!1231814))

(assert (= (or b!1231811 b!1231814) bm!60898))

(assert (=> b!1231812 m!1135939))

(assert (=> b!1231812 m!1135939))

(declare-fun m!1135965 () Bool)

(assert (=> b!1231812 m!1135965))

(assert (=> b!1231813 m!1135939))

(assert (=> b!1231813 m!1135939))

(assert (=> b!1231813 m!1135943))

(assert (=> b!1231815 m!1135939))

(assert (=> b!1231815 m!1135939))

(assert (=> b!1231815 m!1135943))

(assert (=> bm!60898 m!1135939))

(declare-fun m!1135967 () Bool)

(assert (=> bm!60898 m!1135967))

(assert (=> b!1231713 d!134757))

(declare-fun d!134759 () Bool)

(assert (=> d!134759 (= (validKeyInArray!0 k0!2913) (and (not (= k0!2913 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2913 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1231712 d!134759))

(declare-fun b!1231822 () Bool)

(declare-fun e!698804 () Bool)

(declare-fun call!60903 () Bool)

(assert (=> b!1231822 (= e!698804 call!60903)))

(declare-fun b!1231824 () Bool)

(declare-fun e!698806 () Bool)

(assert (=> b!1231824 (= e!698806 (contains!7192 acc!823 (select (arr!38326 a!3806) from!3184)))))

(declare-fun b!1231826 () Bool)

(declare-fun e!698802 () Bool)

(assert (=> b!1231826 (= e!698802 e!698804)))

(declare-fun c!120616 () Bool)

(assert (=> b!1231826 (= c!120616 (validKeyInArray!0 (select (arr!38326 a!3806) from!3184)))))

(declare-fun d!134763 () Bool)

(declare-fun res!820321 () Bool)

(declare-fun e!698800 () Bool)

(assert (=> d!134763 (=> res!820321 e!698800)))

(assert (=> d!134763 (= res!820321 (bvsge from!3184 (size!38863 a!3806)))))

(assert (=> d!134763 (= (arrayNoDuplicates!0 a!3806 from!3184 acc!823) e!698800)))

(declare-fun b!1231828 () Bool)

(assert (=> b!1231828 (= e!698804 call!60903)))

(declare-fun b!1231829 () Bool)

(assert (=> b!1231829 (= e!698800 e!698802)))

(declare-fun res!820319 () Bool)

(assert (=> b!1231829 (=> (not res!820319) (not e!698802))))

(assert (=> b!1231829 (= res!820319 (not e!698806))))

(declare-fun res!820320 () Bool)

(assert (=> b!1231829 (=> (not res!820320) (not e!698806))))

(assert (=> b!1231829 (= res!820320 (validKeyInArray!0 (select (arr!38326 a!3806) from!3184)))))

(declare-fun bm!60901 () Bool)

(assert (=> bm!60901 (= call!60903 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120616 (Cons!27273 (select (arr!38326 a!3806) from!3184) acc!823) acc!823)))))

(assert (= (and d!134763 (not res!820321)) b!1231829))

(assert (= (and b!1231829 res!820320) b!1231824))

(assert (= (and b!1231829 res!820319) b!1231826))

(assert (= (and b!1231826 c!120616) b!1231822))

(assert (= (and b!1231826 (not c!120616)) b!1231828))

(assert (= (or b!1231822 b!1231828) bm!60901))

(assert (=> b!1231824 m!1135873))

(assert (=> b!1231824 m!1135873))

(declare-fun m!1135975 () Bool)

(assert (=> b!1231824 m!1135975))

(assert (=> b!1231826 m!1135873))

(assert (=> b!1231826 m!1135873))

(assert (=> b!1231826 m!1135875))

(assert (=> b!1231829 m!1135873))

(assert (=> b!1231829 m!1135873))

(assert (=> b!1231829 m!1135875))

(assert (=> bm!60901 m!1135873))

(declare-fun m!1135979 () Bool)

(assert (=> bm!60901 m!1135979))

(assert (=> b!1231717 d!134763))

(declare-fun d!134767 () Bool)

(assert (=> d!134767 (= (validKeyInArray!0 (select (arr!38326 a!3806) from!3184)) (and (not (= (select (arr!38326 a!3806) from!3184) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38326 a!3806) from!3184) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1231716 d!134767))

(declare-fun d!134771 () Bool)

(declare-fun res!820333 () Bool)

(declare-fun e!698820 () Bool)

(assert (=> d!134771 (=> res!820333 e!698820)))

(assert (=> d!134771 (= res!820333 ((_ is Nil!27274) acc!823))))

(assert (=> d!134771 (= (noDuplicate!1799 acc!823) e!698820)))

(declare-fun b!1231844 () Bool)

(declare-fun e!698821 () Bool)

(assert (=> b!1231844 (= e!698820 e!698821)))

(declare-fun res!820334 () Bool)

(assert (=> b!1231844 (=> (not res!820334) (not e!698821))))

(assert (=> b!1231844 (= res!820334 (not (contains!7192 (t!40747 acc!823) (h!28482 acc!823))))))

(declare-fun b!1231845 () Bool)

(assert (=> b!1231845 (= e!698821 (noDuplicate!1799 (t!40747 acc!823)))))

(assert (= (and d!134771 (not res!820333)) b!1231844))

(assert (= (and b!1231844 res!820334) b!1231845))

(declare-fun m!1135987 () Bool)

(assert (=> b!1231844 m!1135987))

(declare-fun m!1135989 () Bool)

(assert (=> b!1231845 m!1135989))

(assert (=> b!1231711 d!134771))

(declare-fun d!134777 () Bool)

(assert (=> d!134777 (= (array_inv!29102 a!3806) (bvsge (size!38863 a!3806) #b00000000000000000000000000000000))))

(assert (=> start!102420 d!134777))

(declare-fun d!134779 () Bool)

(declare-fun res!820350 () Bool)

(declare-fun e!698838 () Bool)

(assert (=> d!134779 (=> res!820350 e!698838)))

(assert (=> d!134779 (= res!820350 (= (select (arr!38326 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) k0!2913))))

(assert (=> d!134779 (= (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)) e!698838)))

(declare-fun b!1231863 () Bool)

(declare-fun e!698839 () Bool)

(assert (=> b!1231863 (= e!698838 e!698839)))

(declare-fun res!820351 () Bool)

(assert (=> b!1231863 (=> (not res!820351) (not e!698839))))

(assert (=> b!1231863 (= res!820351 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38863 a!3806)))))

(declare-fun b!1231864 () Bool)

(assert (=> b!1231864 (= e!698839 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)))))

(assert (= (and d!134779 (not res!820350)) b!1231863))

(assert (= (and b!1231863 res!820351) b!1231864))

(assert (=> d!134779 m!1135939))

(declare-fun m!1136009 () Bool)

(assert (=> b!1231864 m!1136009))

(assert (=> b!1231715 d!134779))

(check-sat (not b!1231829) (not b!1231752) (not bm!60892) (not b!1231754) (not b!1231787) (not d!134737) (not b!1231812) (not b!1231781) (not b!1231815) (not b!1231790) (not b!1231788) (not bm!60898) (not b!1231826) (not b!1231844) (not bm!60901) (not b!1231845) (not b!1231784) (not b!1231864) (not b!1231813) (not b!1231824) (not b!1231780) (not d!134751) (not bm!60893) (not d!134739))
(check-sat)
