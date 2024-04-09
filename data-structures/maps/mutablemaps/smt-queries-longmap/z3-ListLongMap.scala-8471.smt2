; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103160 () Bool)

(assert start!103160)

(declare-fun b!1238227 () Bool)

(declare-datatypes ((array!79795 0))(
  ( (array!79796 (arr!38497 (Array (_ BitVec 32) (_ BitVec 64))) (size!39034 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79795)

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((List!27448 0))(
  ( (Nil!27445) (Cons!27444 (h!28653 (_ BitVec 64)) (t!40918 List!27448)) )
))
(declare-fun lt!561215 () List!27448)

(declare-fun e!701769 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79795 (_ BitVec 32) List!27448) Bool)

(assert (=> b!1238227 (= e!701769 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!561215))))

(declare-datatypes ((Unit!41048 0))(
  ( (Unit!41049) )
))
(declare-fun lt!561217 () Unit!41048)

(declare-fun acc!846 () List!27448)

(declare-fun noDuplicateSubseq!81 (List!27448 List!27448) Unit!41048)

(assert (=> b!1238227 (= lt!561217 (noDuplicateSubseq!81 acc!846 lt!561215))))

(declare-fun b!1238228 () Bool)

(declare-fun res!826079 () Bool)

(assert (=> b!1238228 (=> res!826079 e!701769)))

(declare-fun noDuplicate!1970 (List!27448) Bool)

(assert (=> b!1238228 (= res!826079 (not (noDuplicate!1970 lt!561215)))))

(declare-fun b!1238229 () Bool)

(declare-fun res!826077 () Bool)

(declare-fun e!701770 () Bool)

(assert (=> b!1238229 (=> (not res!826077) (not e!701770))))

(assert (=> b!1238229 (= res!826077 (noDuplicate!1970 acc!846))))

(declare-fun b!1238230 () Bool)

(declare-fun res!826081 () Bool)

(assert (=> b!1238230 (=> (not res!826081) (not e!701770))))

(declare-fun contains!7363 (List!27448 (_ BitVec 64)) Bool)

(assert (=> b!1238230 (= res!826081 (not (contains!7363 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238231 () Bool)

(declare-fun res!826083 () Bool)

(assert (=> b!1238231 (=> (not res!826083) (not e!701770))))

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1238231 (= res!826083 (contains!7363 acc!846 k0!2925))))

(declare-fun b!1238232 () Bool)

(assert (=> b!1238232 (= e!701770 (not e!701769))))

(declare-fun res!826082 () Bool)

(assert (=> b!1238232 (=> res!826082 e!701769)))

(assert (=> b!1238232 (= res!826082 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!600 (List!27448 List!27448) Bool)

(assert (=> b!1238232 (subseq!600 acc!846 lt!561215)))

(declare-fun lt!561214 () Unit!41048)

(declare-fun subseqTail!87 (List!27448 List!27448) Unit!41048)

(assert (=> b!1238232 (= lt!561214 (subseqTail!87 lt!561215 lt!561215))))

(assert (=> b!1238232 (subseq!600 lt!561215 lt!561215)))

(declare-fun lt!561216 () Unit!41048)

(declare-fun lemmaListSubSeqRefl!0 (List!27448) Unit!41048)

(assert (=> b!1238232 (= lt!561216 (lemmaListSubSeqRefl!0 lt!561215))))

(assert (=> b!1238232 (= lt!561215 (Cons!27444 (select (arr!38497 a!3835) from!3213) acc!846))))

(declare-fun b!1238233 () Bool)

(declare-fun res!826087 () Bool)

(assert (=> b!1238233 (=> (not res!826087) (not e!701770))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1238233 (= res!826087 (validKeyInArray!0 (select (arr!38497 a!3835) from!3213)))))

(declare-fun b!1238234 () Bool)

(declare-fun res!826084 () Bool)

(assert (=> b!1238234 (=> res!826084 e!701769)))

(assert (=> b!1238234 (= res!826084 (contains!7363 lt!561215 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1238235 () Bool)

(declare-fun res!826086 () Bool)

(assert (=> b!1238235 (=> (not res!826086) (not e!701770))))

(assert (=> b!1238235 (= res!826086 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun res!826078 () Bool)

(assert (=> start!103160 (=> (not res!826078) (not e!701770))))

(assert (=> start!103160 (= res!826078 (and (bvslt (size!39034 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39034 a!3835))))))

(assert (=> start!103160 e!701770))

(declare-fun array_inv!29273 (array!79795) Bool)

(assert (=> start!103160 (array_inv!29273 a!3835)))

(assert (=> start!103160 true))

(declare-fun b!1238236 () Bool)

(declare-fun res!826085 () Bool)

(assert (=> b!1238236 (=> res!826085 e!701769)))

(assert (=> b!1238236 (= res!826085 (contains!7363 lt!561215 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1238237 () Bool)

(declare-fun res!826080 () Bool)

(assert (=> b!1238237 (=> (not res!826080) (not e!701770))))

(assert (=> b!1238237 (= res!826080 (not (= from!3213 (bvsub (size!39034 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1238238 () Bool)

(declare-fun res!826076 () Bool)

(assert (=> b!1238238 (=> (not res!826076) (not e!701770))))

(assert (=> b!1238238 (= res!826076 (not (contains!7363 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!103160 res!826078) b!1238229))

(assert (= (and b!1238229 res!826077) b!1238238))

(assert (= (and b!1238238 res!826076) b!1238230))

(assert (= (and b!1238230 res!826081) b!1238235))

(assert (= (and b!1238235 res!826086) b!1238231))

(assert (= (and b!1238231 res!826083) b!1238237))

(assert (= (and b!1238237 res!826080) b!1238233))

(assert (= (and b!1238233 res!826087) b!1238232))

(assert (= (and b!1238232 (not res!826082)) b!1238228))

(assert (= (and b!1238228 (not res!826079)) b!1238236))

(assert (= (and b!1238236 (not res!826085)) b!1238234))

(assert (= (and b!1238234 (not res!826084)) b!1238227))

(declare-fun m!1141815 () Bool)

(assert (=> b!1238231 m!1141815))

(declare-fun m!1141817 () Bool)

(assert (=> b!1238234 m!1141817))

(declare-fun m!1141819 () Bool)

(assert (=> b!1238233 m!1141819))

(assert (=> b!1238233 m!1141819))

(declare-fun m!1141821 () Bool)

(assert (=> b!1238233 m!1141821))

(declare-fun m!1141823 () Bool)

(assert (=> b!1238235 m!1141823))

(declare-fun m!1141825 () Bool)

(assert (=> b!1238227 m!1141825))

(declare-fun m!1141827 () Bool)

(assert (=> b!1238227 m!1141827))

(declare-fun m!1141829 () Bool)

(assert (=> b!1238228 m!1141829))

(declare-fun m!1141831 () Bool)

(assert (=> b!1238230 m!1141831))

(declare-fun m!1141833 () Bool)

(assert (=> b!1238236 m!1141833))

(declare-fun m!1141835 () Bool)

(assert (=> b!1238232 m!1141835))

(declare-fun m!1141837 () Bool)

(assert (=> b!1238232 m!1141837))

(declare-fun m!1141839 () Bool)

(assert (=> b!1238232 m!1141839))

(declare-fun m!1141841 () Bool)

(assert (=> b!1238232 m!1141841))

(assert (=> b!1238232 m!1141819))

(declare-fun m!1141843 () Bool)

(assert (=> start!103160 m!1141843))

(declare-fun m!1141845 () Bool)

(assert (=> b!1238238 m!1141845))

(declare-fun m!1141847 () Bool)

(assert (=> b!1238229 m!1141847))

(check-sat (not b!1238232) (not b!1238230) (not b!1238236) (not b!1238227) (not b!1238229) (not b!1238231) (not b!1238235) (not b!1238234) (not start!103160) (not b!1238228) (not b!1238233) (not b!1238238))
(check-sat)
(get-model)

(declare-fun d!135757 () Bool)

(declare-fun lt!561232 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!596 (List!27448) (InoxSet (_ BitVec 64)))

(assert (=> d!135757 (= lt!561232 (select (content!596 lt!561215) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!701786 () Bool)

(assert (=> d!135757 (= lt!561232 e!701786)))

(declare-fun res!826128 () Bool)

(assert (=> d!135757 (=> (not res!826128) (not e!701786))))

(get-info :version)

(assert (=> d!135757 (= res!826128 ((_ is Cons!27444) lt!561215))))

(assert (=> d!135757 (= (contains!7363 lt!561215 #b0000000000000000000000000000000000000000000000000000000000000000) lt!561232)))

(declare-fun b!1238279 () Bool)

(declare-fun e!701785 () Bool)

(assert (=> b!1238279 (= e!701786 e!701785)))

(declare-fun res!826129 () Bool)

(assert (=> b!1238279 (=> res!826129 e!701785)))

(assert (=> b!1238279 (= res!826129 (= (h!28653 lt!561215) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1238280 () Bool)

(assert (=> b!1238280 (= e!701785 (contains!7363 (t!40918 lt!561215) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135757 res!826128) b!1238279))

(assert (= (and b!1238279 (not res!826129)) b!1238280))

(declare-fun m!1141883 () Bool)

(assert (=> d!135757 m!1141883))

(declare-fun m!1141885 () Bool)

(assert (=> d!135757 m!1141885))

(declare-fun m!1141887 () Bool)

(assert (=> b!1238280 m!1141887))

(assert (=> b!1238236 d!135757))

(declare-fun b!1238306 () Bool)

(declare-fun e!701809 () Bool)

(declare-fun e!701808 () Bool)

(assert (=> b!1238306 (= e!701809 e!701808)))

(declare-fun res!826146 () Bool)

(assert (=> b!1238306 (=> (not res!826146) (not e!701808))))

(declare-fun e!701810 () Bool)

(assert (=> b!1238306 (= res!826146 (not e!701810))))

(declare-fun res!826147 () Bool)

(assert (=> b!1238306 (=> (not res!826147) (not e!701810))))

(assert (=> b!1238306 (= res!826147 (validKeyInArray!0 (select (arr!38497 a!3835) from!3213)))))

(declare-fun d!135759 () Bool)

(declare-fun res!826145 () Bool)

(assert (=> d!135759 (=> res!826145 e!701809)))

(assert (=> d!135759 (= res!826145 (bvsge from!3213 (size!39034 a!3835)))))

(assert (=> d!135759 (= (arrayNoDuplicates!0 a!3835 from!3213 acc!846) e!701809)))

(declare-fun b!1238307 () Bool)

(assert (=> b!1238307 (= e!701810 (contains!7363 acc!846 (select (arr!38497 a!3835) from!3213)))))

(declare-fun b!1238308 () Bool)

(declare-fun e!701807 () Bool)

(declare-fun call!61056 () Bool)

(assert (=> b!1238308 (= e!701807 call!61056)))

(declare-fun b!1238309 () Bool)

(assert (=> b!1238309 (= e!701808 e!701807)))

(declare-fun c!120943 () Bool)

(assert (=> b!1238309 (= c!120943 (validKeyInArray!0 (select (arr!38497 a!3835) from!3213)))))

(declare-fun b!1238310 () Bool)

(assert (=> b!1238310 (= e!701807 call!61056)))

(declare-fun bm!61053 () Bool)

(assert (=> bm!61053 (= call!61056 (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001) (ite c!120943 (Cons!27444 (select (arr!38497 a!3835) from!3213) acc!846) acc!846)))))

(assert (= (and d!135759 (not res!826145)) b!1238306))

(assert (= (and b!1238306 res!826147) b!1238307))

(assert (= (and b!1238306 res!826146) b!1238309))

(assert (= (and b!1238309 c!120943) b!1238308))

(assert (= (and b!1238309 (not c!120943)) b!1238310))

(assert (= (or b!1238308 b!1238310) bm!61053))

(assert (=> b!1238306 m!1141819))

(assert (=> b!1238306 m!1141819))

(assert (=> b!1238306 m!1141821))

(assert (=> b!1238307 m!1141819))

(assert (=> b!1238307 m!1141819))

(declare-fun m!1141897 () Bool)

(assert (=> b!1238307 m!1141897))

(assert (=> b!1238309 m!1141819))

(assert (=> b!1238309 m!1141819))

(assert (=> b!1238309 m!1141821))

(assert (=> bm!61053 m!1141819))

(declare-fun m!1141899 () Bool)

(assert (=> bm!61053 m!1141899))

(assert (=> b!1238235 d!135759))

(declare-fun d!135767 () Bool)

(declare-fun res!826161 () Bool)

(declare-fun e!701826 () Bool)

(assert (=> d!135767 (=> res!826161 e!701826)))

(assert (=> d!135767 (= res!826161 ((_ is Nil!27445) lt!561215))))

(assert (=> d!135767 (= (noDuplicate!1970 lt!561215) e!701826)))

(declare-fun b!1238328 () Bool)

(declare-fun e!701827 () Bool)

(assert (=> b!1238328 (= e!701826 e!701827)))

(declare-fun res!826162 () Bool)

(assert (=> b!1238328 (=> (not res!826162) (not e!701827))))

(assert (=> b!1238328 (= res!826162 (not (contains!7363 (t!40918 lt!561215) (h!28653 lt!561215))))))

(declare-fun b!1238329 () Bool)

(assert (=> b!1238329 (= e!701827 (noDuplicate!1970 (t!40918 lt!561215)))))

(assert (= (and d!135767 (not res!826161)) b!1238328))

(assert (= (and b!1238328 res!826162) b!1238329))

(declare-fun m!1141903 () Bool)

(assert (=> b!1238328 m!1141903))

(declare-fun m!1141905 () Bool)

(assert (=> b!1238329 m!1141905))

(assert (=> b!1238228 d!135767))

(declare-fun b!1238330 () Bool)

(declare-fun e!701830 () Bool)

(declare-fun e!701829 () Bool)

(assert (=> b!1238330 (= e!701830 e!701829)))

(declare-fun res!826164 () Bool)

(assert (=> b!1238330 (=> (not res!826164) (not e!701829))))

(declare-fun e!701831 () Bool)

(assert (=> b!1238330 (= res!826164 (not e!701831))))

(declare-fun res!826165 () Bool)

(assert (=> b!1238330 (=> (not res!826165) (not e!701831))))

(assert (=> b!1238330 (= res!826165 (validKeyInArray!0 (select (arr!38497 a!3835) (bvadd #b00000000000000000000000000000001 from!3213))))))

(declare-fun d!135771 () Bool)

(declare-fun res!826163 () Bool)

(assert (=> d!135771 (=> res!826163 e!701830)))

(assert (=> d!135771 (= res!826163 (bvsge (bvadd #b00000000000000000000000000000001 from!3213) (size!39034 a!3835)))))

(assert (=> d!135771 (= (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!561215) e!701830)))

(declare-fun b!1238331 () Bool)

(assert (=> b!1238331 (= e!701831 (contains!7363 lt!561215 (select (arr!38497 a!3835) (bvadd #b00000000000000000000000000000001 from!3213))))))

(declare-fun b!1238332 () Bool)

(declare-fun e!701828 () Bool)

(declare-fun call!61059 () Bool)

(assert (=> b!1238332 (= e!701828 call!61059)))

(declare-fun b!1238333 () Bool)

(assert (=> b!1238333 (= e!701829 e!701828)))

(declare-fun c!120946 () Bool)

(assert (=> b!1238333 (= c!120946 (validKeyInArray!0 (select (arr!38497 a!3835) (bvadd #b00000000000000000000000000000001 from!3213))))))

(declare-fun b!1238334 () Bool)

(assert (=> b!1238334 (= e!701828 call!61059)))

(declare-fun bm!61056 () Bool)

(assert (=> bm!61056 (= call!61059 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213 #b00000000000000000000000000000001) (ite c!120946 (Cons!27444 (select (arr!38497 a!3835) (bvadd #b00000000000000000000000000000001 from!3213)) lt!561215) lt!561215)))))

(assert (= (and d!135771 (not res!826163)) b!1238330))

(assert (= (and b!1238330 res!826165) b!1238331))

(assert (= (and b!1238330 res!826164) b!1238333))

(assert (= (and b!1238333 c!120946) b!1238332))

(assert (= (and b!1238333 (not c!120946)) b!1238334))

(assert (= (or b!1238332 b!1238334) bm!61056))

(declare-fun m!1141907 () Bool)

(assert (=> b!1238330 m!1141907))

(assert (=> b!1238330 m!1141907))

(declare-fun m!1141909 () Bool)

(assert (=> b!1238330 m!1141909))

(assert (=> b!1238331 m!1141907))

(assert (=> b!1238331 m!1141907))

(declare-fun m!1141911 () Bool)

(assert (=> b!1238331 m!1141911))

(assert (=> b!1238333 m!1141907))

(assert (=> b!1238333 m!1141907))

(assert (=> b!1238333 m!1141909))

(assert (=> bm!61056 m!1141907))

(declare-fun m!1141913 () Bool)

(assert (=> bm!61056 m!1141913))

(assert (=> b!1238227 d!135771))

(declare-fun d!135773 () Bool)

(assert (=> d!135773 (noDuplicate!1970 acc!846)))

(declare-fun lt!561240 () Unit!41048)

(declare-fun choose!1838 (List!27448 List!27448) Unit!41048)

(assert (=> d!135773 (= lt!561240 (choose!1838 acc!846 lt!561215))))

(declare-fun e!701850 () Bool)

(assert (=> d!135773 e!701850))

(declare-fun res!826183 () Bool)

(assert (=> d!135773 (=> (not res!826183) (not e!701850))))

(assert (=> d!135773 (= res!826183 (subseq!600 acc!846 lt!561215))))

(assert (=> d!135773 (= (noDuplicateSubseq!81 acc!846 lt!561215) lt!561240)))

(declare-fun b!1238354 () Bool)

(assert (=> b!1238354 (= e!701850 (noDuplicate!1970 lt!561215))))

(assert (= (and d!135773 res!826183) b!1238354))

(assert (=> d!135773 m!1141847))

(declare-fun m!1141923 () Bool)

(assert (=> d!135773 m!1141923))

(assert (=> d!135773 m!1141839))

(assert (=> b!1238354 m!1141829))

(assert (=> b!1238227 d!135773))

(declare-fun d!135779 () Bool)

(declare-fun lt!561241 () Bool)

(assert (=> d!135779 (= lt!561241 (select (content!596 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!701854 () Bool)

(assert (=> d!135779 (= lt!561241 e!701854)))

(declare-fun res!826186 () Bool)

(assert (=> d!135779 (=> (not res!826186) (not e!701854))))

(assert (=> d!135779 (= res!826186 ((_ is Cons!27444) acc!846))))

(assert (=> d!135779 (= (contains!7363 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000) lt!561241)))

(declare-fun b!1238357 () Bool)

(declare-fun e!701853 () Bool)

(assert (=> b!1238357 (= e!701854 e!701853)))

(declare-fun res!826187 () Bool)

(assert (=> b!1238357 (=> res!826187 e!701853)))

(assert (=> b!1238357 (= res!826187 (= (h!28653 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1238358 () Bool)

(assert (=> b!1238358 (= e!701853 (contains!7363 (t!40918 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135779 res!826186) b!1238357))

(assert (= (and b!1238357 (not res!826187)) b!1238358))

(declare-fun m!1141925 () Bool)

(assert (=> d!135779 m!1141925))

(declare-fun m!1141927 () Bool)

(assert (=> d!135779 m!1141927))

(declare-fun m!1141929 () Bool)

(assert (=> b!1238358 m!1141929))

(assert (=> b!1238238 d!135779))

(declare-fun d!135781 () Bool)

(assert (=> d!135781 (= (array_inv!29273 a!3835) (bvsge (size!39034 a!3835) #b00000000000000000000000000000000))))

(assert (=> start!103160 d!135781))

(declare-fun d!135785 () Bool)

(declare-fun lt!561243 () Bool)

(assert (=> d!135785 (= lt!561243 (select (content!596 acc!846) k0!2925))))

(declare-fun e!701860 () Bool)

(assert (=> d!135785 (= lt!561243 e!701860)))

(declare-fun res!826192 () Bool)

(assert (=> d!135785 (=> (not res!826192) (not e!701860))))

(assert (=> d!135785 (= res!826192 ((_ is Cons!27444) acc!846))))

(assert (=> d!135785 (= (contains!7363 acc!846 k0!2925) lt!561243)))

(declare-fun b!1238363 () Bool)

(declare-fun e!701859 () Bool)

(assert (=> b!1238363 (= e!701860 e!701859)))

(declare-fun res!826193 () Bool)

(assert (=> b!1238363 (=> res!826193 e!701859)))

(assert (=> b!1238363 (= res!826193 (= (h!28653 acc!846) k0!2925))))

(declare-fun b!1238364 () Bool)

(assert (=> b!1238364 (= e!701859 (contains!7363 (t!40918 acc!846) k0!2925))))

(assert (= (and d!135785 res!826192) b!1238363))

(assert (= (and b!1238363 (not res!826193)) b!1238364))

(assert (=> d!135785 m!1141925))

(declare-fun m!1141941 () Bool)

(assert (=> d!135785 m!1141941))

(declare-fun m!1141943 () Bool)

(assert (=> b!1238364 m!1141943))

(assert (=> b!1238231 d!135785))

(declare-fun d!135789 () Bool)

(declare-fun res!826196 () Bool)

(declare-fun e!701863 () Bool)

(assert (=> d!135789 (=> res!826196 e!701863)))

(assert (=> d!135789 (= res!826196 ((_ is Nil!27445) acc!846))))

(assert (=> d!135789 (= (noDuplicate!1970 acc!846) e!701863)))

(declare-fun b!1238367 () Bool)

(declare-fun e!701864 () Bool)

(assert (=> b!1238367 (= e!701863 e!701864)))

(declare-fun res!826197 () Bool)

(assert (=> b!1238367 (=> (not res!826197) (not e!701864))))

(assert (=> b!1238367 (= res!826197 (not (contains!7363 (t!40918 acc!846) (h!28653 acc!846))))))

(declare-fun b!1238368 () Bool)

(assert (=> b!1238368 (= e!701864 (noDuplicate!1970 (t!40918 acc!846)))))

(assert (= (and d!135789 (not res!826196)) b!1238367))

(assert (= (and b!1238367 res!826197) b!1238368))

(declare-fun m!1141951 () Bool)

(assert (=> b!1238367 m!1141951))

(declare-fun m!1141953 () Bool)

(assert (=> b!1238368 m!1141953))

(assert (=> b!1238229 d!135789))

(declare-fun d!135793 () Bool)

(declare-fun lt!561246 () Bool)

(assert (=> d!135793 (= lt!561246 (select (content!596 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!701868 () Bool)

(assert (=> d!135793 (= lt!561246 e!701868)))

(declare-fun res!826200 () Bool)

(assert (=> d!135793 (=> (not res!826200) (not e!701868))))

(assert (=> d!135793 (= res!826200 ((_ is Cons!27444) acc!846))))

(assert (=> d!135793 (= (contains!7363 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000) lt!561246)))

(declare-fun b!1238371 () Bool)

(declare-fun e!701867 () Bool)

(assert (=> b!1238371 (= e!701868 e!701867)))

(declare-fun res!826201 () Bool)

(assert (=> b!1238371 (=> res!826201 e!701867)))

(assert (=> b!1238371 (= res!826201 (= (h!28653 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1238372 () Bool)

(assert (=> b!1238372 (= e!701867 (contains!7363 (t!40918 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135793 res!826200) b!1238371))

(assert (= (and b!1238371 (not res!826201)) b!1238372))

(assert (=> d!135793 m!1141925))

(declare-fun m!1141959 () Bool)

(assert (=> d!135793 m!1141959))

(declare-fun m!1141961 () Bool)

(assert (=> b!1238372 m!1141961))

(assert (=> b!1238230 d!135793))

(declare-fun d!135797 () Bool)

(assert (=> d!135797 (= (validKeyInArray!0 (select (arr!38497 a!3835) from!3213)) (and (not (= (select (arr!38497 a!3835) from!3213) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38497 a!3835) from!3213) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1238233 d!135797))

(declare-fun d!135801 () Bool)

(declare-fun lt!561247 () Bool)

(assert (=> d!135801 (= lt!561247 (select (content!596 lt!561215) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!701882 () Bool)

(assert (=> d!135801 (= lt!561247 e!701882)))

(declare-fun res!826213 () Bool)

(assert (=> d!135801 (=> (not res!826213) (not e!701882))))

(assert (=> d!135801 (= res!826213 ((_ is Cons!27444) lt!561215))))

(assert (=> d!135801 (= (contains!7363 lt!561215 #b1000000000000000000000000000000000000000000000000000000000000000) lt!561247)))

(declare-fun b!1238386 () Bool)

(declare-fun e!701881 () Bool)

(assert (=> b!1238386 (= e!701882 e!701881)))

(declare-fun res!826214 () Bool)

(assert (=> b!1238386 (=> res!826214 e!701881)))

(assert (=> b!1238386 (= res!826214 (= (h!28653 lt!561215) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1238387 () Bool)

(assert (=> b!1238387 (= e!701881 (contains!7363 (t!40918 lt!561215) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135801 res!826213) b!1238386))

(assert (= (and b!1238386 (not res!826214)) b!1238387))

(assert (=> d!135801 m!1141883))

(declare-fun m!1141967 () Bool)

(assert (=> d!135801 m!1141967))

(declare-fun m!1141969 () Bool)

(assert (=> b!1238387 m!1141969))

(assert (=> b!1238234 d!135801))

(declare-fun d!135803 () Bool)

(declare-fun res!826242 () Bool)

(declare-fun e!701910 () Bool)

(assert (=> d!135803 (=> res!826242 e!701910)))

(assert (=> d!135803 (= res!826242 ((_ is Nil!27445) acc!846))))

(assert (=> d!135803 (= (subseq!600 acc!846 lt!561215) e!701910)))

(declare-fun b!1238412 () Bool)

(declare-fun e!701909 () Bool)

(assert (=> b!1238412 (= e!701910 e!701909)))

(declare-fun res!826239 () Bool)

(assert (=> b!1238412 (=> (not res!826239) (not e!701909))))

(assert (=> b!1238412 (= res!826239 ((_ is Cons!27444) lt!561215))))

(declare-fun b!1238414 () Bool)

(declare-fun e!701908 () Bool)

(assert (=> b!1238414 (= e!701908 (subseq!600 (t!40918 acc!846) (t!40918 lt!561215)))))

(declare-fun b!1238413 () Bool)

(declare-fun e!701907 () Bool)

(assert (=> b!1238413 (= e!701909 e!701907)))

(declare-fun res!826240 () Bool)

(assert (=> b!1238413 (=> res!826240 e!701907)))

(assert (=> b!1238413 (= res!826240 e!701908)))

(declare-fun res!826241 () Bool)

(assert (=> b!1238413 (=> (not res!826241) (not e!701908))))

(assert (=> b!1238413 (= res!826241 (= (h!28653 acc!846) (h!28653 lt!561215)))))

(declare-fun b!1238415 () Bool)

(assert (=> b!1238415 (= e!701907 (subseq!600 acc!846 (t!40918 lt!561215)))))

(assert (= (and d!135803 (not res!826242)) b!1238412))

(assert (= (and b!1238412 res!826239) b!1238413))

(assert (= (and b!1238413 res!826241) b!1238414))

(assert (= (and b!1238413 (not res!826240)) b!1238415))

(declare-fun m!1141979 () Bool)

(assert (=> b!1238414 m!1141979))

(declare-fun m!1141981 () Bool)

(assert (=> b!1238415 m!1141981))

(assert (=> b!1238232 d!135803))

(declare-fun b!1238478 () Bool)

(declare-fun e!701951 () Unit!41048)

(declare-fun call!61070 () Unit!41048)

(assert (=> b!1238478 (= e!701951 call!61070)))

(declare-fun b!1238479 () Bool)

(declare-fun Unit!41055 () Unit!41048)

(assert (=> b!1238479 (= e!701951 Unit!41055)))

(declare-fun d!135809 () Bool)

(declare-fun tail!166 (List!27448) List!27448)

(assert (=> d!135809 (subseq!600 (tail!166 lt!561215) lt!561215)))

(declare-fun lt!561259 () Unit!41048)

(declare-fun e!701949 () Unit!41048)

(assert (=> d!135809 (= lt!561259 e!701949)))

(declare-fun c!120975 () Bool)

(assert (=> d!135809 (= c!120975 (and ((_ is Cons!27444) lt!561215) ((_ is Cons!27444) lt!561215)))))

(declare-fun e!701950 () Bool)

(assert (=> d!135809 e!701950))

(declare-fun res!826257 () Bool)

(assert (=> d!135809 (=> (not res!826257) (not e!701950))))

(declare-fun isEmpty!1018 (List!27448) Bool)

(assert (=> d!135809 (= res!826257 (not (isEmpty!1018 lt!561215)))))

(assert (=> d!135809 (= (subseqTail!87 lt!561215 lt!561215) lt!561259)))

(declare-fun b!1238480 () Bool)

(declare-fun e!701952 () Unit!41048)

(assert (=> b!1238480 (= e!701949 e!701952)))

(declare-fun c!120974 () Bool)

(assert (=> b!1238480 (= c!120974 (subseq!600 lt!561215 (t!40918 lt!561215)))))

(declare-fun b!1238481 () Bool)

(declare-fun c!120973 () Bool)

(assert (=> b!1238481 (= c!120973 (not (isEmpty!1018 (t!40918 lt!561215))))))

(assert (=> b!1238481 (= e!701952 e!701951)))

(declare-fun b!1238482 () Bool)

(declare-fun Unit!41056 () Unit!41048)

(assert (=> b!1238482 (= e!701949 Unit!41056)))

(declare-fun b!1238483 () Bool)

(assert (=> b!1238483 (= e!701952 call!61070)))

(declare-fun b!1238484 () Bool)

(assert (=> b!1238484 (= e!701950 (subseq!600 lt!561215 lt!561215))))

(declare-fun bm!61067 () Bool)

(assert (=> bm!61067 (= call!61070 (subseqTail!87 (ite c!120974 lt!561215 (t!40918 lt!561215)) (t!40918 lt!561215)))))

(assert (= (and d!135809 res!826257) b!1238484))

(assert (= (and d!135809 c!120975) b!1238480))

(assert (= (and d!135809 (not c!120975)) b!1238482))

(assert (= (and b!1238480 c!120974) b!1238483))

(assert (= (and b!1238480 (not c!120974)) b!1238481))

(assert (= (and b!1238481 c!120973) b!1238478))

(assert (= (and b!1238481 (not c!120973)) b!1238479))

(assert (= (or b!1238483 b!1238478) bm!61067))

(declare-fun m!1142015 () Bool)

(assert (=> b!1238481 m!1142015))

(declare-fun m!1142019 () Bool)

(assert (=> bm!61067 m!1142019))

(declare-fun m!1142021 () Bool)

(assert (=> b!1238480 m!1142021))

(declare-fun m!1142023 () Bool)

(assert (=> d!135809 m!1142023))

(assert (=> d!135809 m!1142023))

(declare-fun m!1142025 () Bool)

(assert (=> d!135809 m!1142025))

(declare-fun m!1142027 () Bool)

(assert (=> d!135809 m!1142027))

(assert (=> b!1238484 m!1141841))

(assert (=> b!1238232 d!135809))

(declare-fun d!135825 () Bool)

(declare-fun res!826265 () Bool)

(declare-fun e!701960 () Bool)

(assert (=> d!135825 (=> res!826265 e!701960)))

(assert (=> d!135825 (= res!826265 ((_ is Nil!27445) lt!561215))))

(assert (=> d!135825 (= (subseq!600 lt!561215 lt!561215) e!701960)))

(declare-fun b!1238489 () Bool)

(declare-fun e!701959 () Bool)

(assert (=> b!1238489 (= e!701960 e!701959)))

(declare-fun res!826262 () Bool)

(assert (=> b!1238489 (=> (not res!826262) (not e!701959))))

(assert (=> b!1238489 (= res!826262 ((_ is Cons!27444) lt!561215))))

(declare-fun b!1238491 () Bool)

(declare-fun e!701958 () Bool)

(assert (=> b!1238491 (= e!701958 (subseq!600 (t!40918 lt!561215) (t!40918 lt!561215)))))

(declare-fun b!1238490 () Bool)

(declare-fun e!701957 () Bool)

(assert (=> b!1238490 (= e!701959 e!701957)))

(declare-fun res!826263 () Bool)

(assert (=> b!1238490 (=> res!826263 e!701957)))

(assert (=> b!1238490 (= res!826263 e!701958)))

(declare-fun res!826264 () Bool)

(assert (=> b!1238490 (=> (not res!826264) (not e!701958))))

(assert (=> b!1238490 (= res!826264 (= (h!28653 lt!561215) (h!28653 lt!561215)))))

(declare-fun b!1238492 () Bool)

(assert (=> b!1238492 (= e!701957 (subseq!600 lt!561215 (t!40918 lt!561215)))))

(assert (= (and d!135825 (not res!826265)) b!1238489))

(assert (= (and b!1238489 res!826262) b!1238490))

(assert (= (and b!1238490 res!826264) b!1238491))

(assert (= (and b!1238490 (not res!826263)) b!1238492))

(declare-fun m!1142029 () Bool)

(assert (=> b!1238491 m!1142029))

(assert (=> b!1238492 m!1142021))

(assert (=> b!1238232 d!135825))

(declare-fun d!135827 () Bool)

(assert (=> d!135827 (subseq!600 lt!561215 lt!561215)))

(declare-fun lt!561265 () Unit!41048)

(declare-fun choose!36 (List!27448) Unit!41048)

(assert (=> d!135827 (= lt!561265 (choose!36 lt!561215))))

(assert (=> d!135827 (= (lemmaListSubSeqRefl!0 lt!561215) lt!561265)))

(declare-fun bs!34815 () Bool)

(assert (= bs!34815 d!135827))

(assert (=> bs!34815 m!1141841))

(declare-fun m!1142033 () Bool)

(assert (=> bs!34815 m!1142033))

(assert (=> b!1238232 d!135827))

(check-sat (not b!1238331) (not b!1238330) (not b!1238415) (not b!1238387) (not d!135785) (not b!1238333) (not b!1238358) (not b!1238368) (not b!1238309) (not b!1238364) (not d!135757) (not b!1238480) (not b!1238367) (not d!135773) (not b!1238372) (not b!1238280) (not b!1238328) (not b!1238492) (not bm!61056) (not d!135827) (not b!1238329) (not b!1238491) (not d!135801) (not b!1238306) (not b!1238481) (not b!1238414) (not b!1238307) (not b!1238354) (not b!1238484) (not bm!61067) (not bm!61053) (not d!135793) (not d!135809) (not d!135779))
(check-sat)
