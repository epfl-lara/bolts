; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115978 () Bool)

(assert start!115978)

(declare-fun b!1370242 () Bool)

(declare-fun res!913818 () Bool)

(declare-fun e!776157 () Bool)

(assert (=> b!1370242 (=> (not res!913818) (not e!776157))))

(declare-datatypes ((List!32151 0))(
  ( (Nil!32148) (Cons!32147 (h!33356 (_ BitVec 64)) (t!46852 List!32151)) )
))
(declare-fun newAcc!98 () List!32151)

(declare-fun contains!9689 (List!32151 (_ BitVec 64)) Bool)

(assert (=> b!1370242 (= res!913818 (not (contains!9689 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1370243 () Bool)

(declare-fun res!913808 () Bool)

(assert (=> b!1370243 (=> (not res!913808) (not e!776157))))

(declare-fun acc!866 () List!32151)

(assert (=> b!1370243 (= res!913808 (not (contains!9689 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1370244 () Bool)

(declare-fun res!913817 () Bool)

(declare-fun e!776161 () Bool)

(assert (=> b!1370244 (=> (not res!913817) (not e!776161))))

(declare-fun lt!602357 () List!32151)

(declare-fun noDuplicate!2568 (List!32151) Bool)

(assert (=> b!1370244 (= res!913817 (noDuplicate!2568 lt!602357))))

(declare-fun b!1370245 () Bool)

(declare-fun res!913809 () Bool)

(assert (=> b!1370245 (=> (not res!913809) (not e!776157))))

(assert (=> b!1370245 (= res!913809 (noDuplicate!2568 acc!866))))

(declare-fun b!1370246 () Bool)

(declare-fun e!776158 () Bool)

(assert (=> b!1370246 (= e!776157 e!776158)))

(declare-fun res!913815 () Bool)

(assert (=> b!1370246 (=> (not res!913815) (not e!776158))))

(declare-datatypes ((array!92976 0))(
  ( (array!92977 (arr!44903 (Array (_ BitVec 32) (_ BitVec 64))) (size!45454 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92976)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92976 (_ BitVec 32) List!32151) Bool)

(assert (=> b!1370246 (= res!913815 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45241 0))(
  ( (Unit!45242) )
))
(declare-fun lt!602356 () Unit!45241)

(declare-fun noDuplicateSubseq!267 (List!32151 List!32151) Unit!45241)

(assert (=> b!1370246 (= lt!602356 (noDuplicateSubseq!267 newAcc!98 acc!866))))

(declare-fun b!1370247 () Bool)

(declare-fun res!913810 () Bool)

(assert (=> b!1370247 (=> (not res!913810) (not e!776157))))

(declare-fun subseq!1080 (List!32151 List!32151) Bool)

(assert (=> b!1370247 (= res!913810 (subseq!1080 newAcc!98 acc!866))))

(declare-fun b!1370248 () Bool)

(declare-fun res!913806 () Bool)

(assert (=> b!1370248 (=> (not res!913806) (not e!776157))))

(assert (=> b!1370248 (= res!913806 (not (contains!9689 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!913812 () Bool)

(assert (=> start!115978 (=> (not res!913812) (not e!776157))))

(assert (=> start!115978 (= res!913812 (and (bvslt (size!45454 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45454 a!3861))))))

(assert (=> start!115978 e!776157))

(declare-fun array_inv!33848 (array!92976) Bool)

(assert (=> start!115978 (array_inv!33848 a!3861)))

(assert (=> start!115978 true))

(declare-fun b!1370249 () Bool)

(declare-fun e!776159 () Bool)

(assert (=> b!1370249 (= e!776161 e!776159)))

(declare-fun res!913805 () Bool)

(assert (=> b!1370249 (=> res!913805 e!776159)))

(assert (=> b!1370249 (= res!913805 (contains!9689 lt!602357 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370250 () Bool)

(declare-fun res!913807 () Bool)

(assert (=> b!1370250 (=> (not res!913807) (not e!776158))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1370250 (= res!913807 (validKeyInArray!0 (select (arr!44903 a!3861) from!3239)))))

(declare-fun b!1370251 () Bool)

(assert (=> b!1370251 (= e!776158 e!776161)))

(declare-fun res!913811 () Bool)

(assert (=> b!1370251 (=> (not res!913811) (not e!776161))))

(assert (=> b!1370251 (= res!913811 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(assert (=> b!1370251 (= lt!602357 (Cons!32147 (select (arr!44903 a!3861) from!3239) acc!866))))

(declare-fun b!1370252 () Bool)

(declare-fun res!913814 () Bool)

(assert (=> b!1370252 (=> (not res!913814) (not e!776158))))

(assert (=> b!1370252 (= res!913814 (bvslt from!3239 (size!45454 a!3861)))))

(declare-fun b!1370253 () Bool)

(assert (=> b!1370253 (= e!776159 (contains!9689 lt!602357 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370254 () Bool)

(declare-fun res!913813 () Bool)

(assert (=> b!1370254 (=> (not res!913813) (not e!776157))))

(assert (=> b!1370254 (= res!913813 (not (contains!9689 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1370255 () Bool)

(declare-fun res!913816 () Bool)

(assert (=> b!1370255 (=> (not res!913816) (not e!776158))))

(assert (=> b!1370255 (= res!913816 (not (contains!9689 acc!866 (select (arr!44903 a!3861) from!3239))))))

(assert (= (and start!115978 res!913812) b!1370245))

(assert (= (and b!1370245 res!913809) b!1370243))

(assert (= (and b!1370243 res!913808) b!1370254))

(assert (= (and b!1370254 res!913813) b!1370242))

(assert (= (and b!1370242 res!913818) b!1370248))

(assert (= (and b!1370248 res!913806) b!1370247))

(assert (= (and b!1370247 res!913810) b!1370246))

(assert (= (and b!1370246 res!913815) b!1370252))

(assert (= (and b!1370252 res!913814) b!1370250))

(assert (= (and b!1370250 res!913807) b!1370255))

(assert (= (and b!1370255 res!913816) b!1370251))

(assert (= (and b!1370251 res!913811) b!1370244))

(assert (= (and b!1370244 res!913817) b!1370249))

(assert (= (and b!1370249 (not res!913805)) b!1370253))

(declare-fun m!1253863 () Bool)

(assert (=> b!1370245 m!1253863))

(declare-fun m!1253865 () Bool)

(assert (=> b!1370253 m!1253865))

(declare-fun m!1253867 () Bool)

(assert (=> b!1370246 m!1253867))

(declare-fun m!1253869 () Bool)

(assert (=> b!1370246 m!1253869))

(declare-fun m!1253871 () Bool)

(assert (=> b!1370243 m!1253871))

(declare-fun m!1253873 () Bool)

(assert (=> b!1370247 m!1253873))

(declare-fun m!1253875 () Bool)

(assert (=> start!115978 m!1253875))

(declare-fun m!1253877 () Bool)

(assert (=> b!1370254 m!1253877))

(declare-fun m!1253879 () Bool)

(assert (=> b!1370248 m!1253879))

(declare-fun m!1253881 () Bool)

(assert (=> b!1370244 m!1253881))

(declare-fun m!1253883 () Bool)

(assert (=> b!1370242 m!1253883))

(declare-fun m!1253885 () Bool)

(assert (=> b!1370251 m!1253885))

(assert (=> b!1370250 m!1253885))

(assert (=> b!1370250 m!1253885))

(declare-fun m!1253887 () Bool)

(assert (=> b!1370250 m!1253887))

(assert (=> b!1370255 m!1253885))

(assert (=> b!1370255 m!1253885))

(declare-fun m!1253889 () Bool)

(assert (=> b!1370255 m!1253889))

(declare-fun m!1253891 () Bool)

(assert (=> b!1370249 m!1253891))

(check-sat (not b!1370247) (not start!115978) (not b!1370249) (not b!1370245) (not b!1370254) (not b!1370253) (not b!1370242) (not b!1370250) (not b!1370246) (not b!1370243) (not b!1370248) (not b!1370255) (not b!1370244))
(check-sat)
(get-model)

(declare-fun d!147071 () Bool)

(declare-fun lt!602366 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!735 (List!32151) (InoxSet (_ BitVec 64)))

(assert (=> d!147071 (= lt!602366 (select (content!735 lt!602357) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!776182 () Bool)

(assert (=> d!147071 (= lt!602366 e!776182)))

(declare-fun res!913866 () Bool)

(assert (=> d!147071 (=> (not res!913866) (not e!776182))))

(get-info :version)

(assert (=> d!147071 (= res!913866 ((_ is Cons!32147) lt!602357))))

(assert (=> d!147071 (= (contains!9689 lt!602357 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602366)))

(declare-fun b!1370302 () Bool)

(declare-fun e!776181 () Bool)

(assert (=> b!1370302 (= e!776182 e!776181)))

(declare-fun res!913865 () Bool)

(assert (=> b!1370302 (=> res!913865 e!776181)))

(assert (=> b!1370302 (= res!913865 (= (h!33356 lt!602357) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370303 () Bool)

(assert (=> b!1370303 (= e!776181 (contains!9689 (t!46852 lt!602357) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147071 res!913866) b!1370302))

(assert (= (and b!1370302 (not res!913865)) b!1370303))

(declare-fun m!1253923 () Bool)

(assert (=> d!147071 m!1253923))

(declare-fun m!1253925 () Bool)

(assert (=> d!147071 m!1253925))

(declare-fun m!1253927 () Bool)

(assert (=> b!1370303 m!1253927))

(assert (=> b!1370249 d!147071))

(declare-fun d!147073 () Bool)

(assert (=> d!147073 (= (validKeyInArray!0 (select (arr!44903 a!3861) from!3239)) (and (not (= (select (arr!44903 a!3861) from!3239) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44903 a!3861) from!3239) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1370250 d!147073))

(declare-fun d!147075 () Bool)

(declare-fun lt!602367 () Bool)

(assert (=> d!147075 (= lt!602367 (select (content!735 lt!602357) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!776184 () Bool)

(assert (=> d!147075 (= lt!602367 e!776184)))

(declare-fun res!913868 () Bool)

(assert (=> d!147075 (=> (not res!913868) (not e!776184))))

(assert (=> d!147075 (= res!913868 ((_ is Cons!32147) lt!602357))))

(assert (=> d!147075 (= (contains!9689 lt!602357 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602367)))

(declare-fun b!1370304 () Bool)

(declare-fun e!776183 () Bool)

(assert (=> b!1370304 (= e!776184 e!776183)))

(declare-fun res!913867 () Bool)

(assert (=> b!1370304 (=> res!913867 e!776183)))

(assert (=> b!1370304 (= res!913867 (= (h!33356 lt!602357) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370305 () Bool)

(assert (=> b!1370305 (= e!776183 (contains!9689 (t!46852 lt!602357) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147075 res!913868) b!1370304))

(assert (= (and b!1370304 (not res!913867)) b!1370305))

(assert (=> d!147075 m!1253923))

(declare-fun m!1253929 () Bool)

(assert (=> d!147075 m!1253929))

(declare-fun m!1253931 () Bool)

(assert (=> b!1370305 m!1253931))

(assert (=> b!1370253 d!147075))

(declare-fun d!147077 () Bool)

(declare-fun lt!602368 () Bool)

(assert (=> d!147077 (= lt!602368 (select (content!735 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!776186 () Bool)

(assert (=> d!147077 (= lt!602368 e!776186)))

(declare-fun res!913870 () Bool)

(assert (=> d!147077 (=> (not res!913870) (not e!776186))))

(assert (=> d!147077 (= res!913870 ((_ is Cons!32147) acc!866))))

(assert (=> d!147077 (= (contains!9689 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602368)))

(declare-fun b!1370306 () Bool)

(declare-fun e!776185 () Bool)

(assert (=> b!1370306 (= e!776186 e!776185)))

(declare-fun res!913869 () Bool)

(assert (=> b!1370306 (=> res!913869 e!776185)))

(assert (=> b!1370306 (= res!913869 (= (h!33356 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370307 () Bool)

(assert (=> b!1370307 (= e!776185 (contains!9689 (t!46852 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147077 res!913870) b!1370306))

(assert (= (and b!1370306 (not res!913869)) b!1370307))

(declare-fun m!1253933 () Bool)

(assert (=> d!147077 m!1253933))

(declare-fun m!1253935 () Bool)

(assert (=> d!147077 m!1253935))

(declare-fun m!1253937 () Bool)

(assert (=> b!1370307 m!1253937))

(assert (=> b!1370254 d!147077))

(declare-fun d!147079 () Bool)

(declare-fun lt!602369 () Bool)

(assert (=> d!147079 (= lt!602369 (select (content!735 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!776188 () Bool)

(assert (=> d!147079 (= lt!602369 e!776188)))

(declare-fun res!913872 () Bool)

(assert (=> d!147079 (=> (not res!913872) (not e!776188))))

(assert (=> d!147079 (= res!913872 ((_ is Cons!32147) acc!866))))

(assert (=> d!147079 (= (contains!9689 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602369)))

(declare-fun b!1370308 () Bool)

(declare-fun e!776187 () Bool)

(assert (=> b!1370308 (= e!776188 e!776187)))

(declare-fun res!913871 () Bool)

(assert (=> b!1370308 (=> res!913871 e!776187)))

(assert (=> b!1370308 (= res!913871 (= (h!33356 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370309 () Bool)

(assert (=> b!1370309 (= e!776187 (contains!9689 (t!46852 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147079 res!913872) b!1370308))

(assert (= (and b!1370308 (not res!913871)) b!1370309))

(assert (=> d!147079 m!1253933))

(declare-fun m!1253939 () Bool)

(assert (=> d!147079 m!1253939))

(declare-fun m!1253941 () Bool)

(assert (=> b!1370309 m!1253941))

(assert (=> b!1370243 d!147079))

(declare-fun d!147081 () Bool)

(declare-fun lt!602370 () Bool)

(assert (=> d!147081 (= lt!602370 (select (content!735 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!776190 () Bool)

(assert (=> d!147081 (= lt!602370 e!776190)))

(declare-fun res!913874 () Bool)

(assert (=> d!147081 (=> (not res!913874) (not e!776190))))

(assert (=> d!147081 (= res!913874 ((_ is Cons!32147) newAcc!98))))

(assert (=> d!147081 (= (contains!9689 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602370)))

(declare-fun b!1370310 () Bool)

(declare-fun e!776189 () Bool)

(assert (=> b!1370310 (= e!776190 e!776189)))

(declare-fun res!913873 () Bool)

(assert (=> b!1370310 (=> res!913873 e!776189)))

(assert (=> b!1370310 (= res!913873 (= (h!33356 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370311 () Bool)

(assert (=> b!1370311 (= e!776189 (contains!9689 (t!46852 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147081 res!913874) b!1370310))

(assert (= (and b!1370310 (not res!913873)) b!1370311))

(declare-fun m!1253943 () Bool)

(assert (=> d!147081 m!1253943))

(declare-fun m!1253945 () Bool)

(assert (=> d!147081 m!1253945))

(declare-fun m!1253947 () Bool)

(assert (=> b!1370311 m!1253947))

(assert (=> b!1370242 d!147081))

(declare-fun d!147083 () Bool)

(declare-fun res!913879 () Bool)

(declare-fun e!776195 () Bool)

(assert (=> d!147083 (=> res!913879 e!776195)))

(assert (=> d!147083 (= res!913879 ((_ is Nil!32148) acc!866))))

(assert (=> d!147083 (= (noDuplicate!2568 acc!866) e!776195)))

(declare-fun b!1370316 () Bool)

(declare-fun e!776196 () Bool)

(assert (=> b!1370316 (= e!776195 e!776196)))

(declare-fun res!913880 () Bool)

(assert (=> b!1370316 (=> (not res!913880) (not e!776196))))

(assert (=> b!1370316 (= res!913880 (not (contains!9689 (t!46852 acc!866) (h!33356 acc!866))))))

(declare-fun b!1370317 () Bool)

(assert (=> b!1370317 (= e!776196 (noDuplicate!2568 (t!46852 acc!866)))))

(assert (= (and d!147083 (not res!913879)) b!1370316))

(assert (= (and b!1370316 res!913880) b!1370317))

(declare-fun m!1253949 () Bool)

(assert (=> b!1370316 m!1253949))

(declare-fun m!1253951 () Bool)

(assert (=> b!1370317 m!1253951))

(assert (=> b!1370245 d!147083))

(declare-fun d!147085 () Bool)

(assert (=> d!147085 (= (array_inv!33848 a!3861) (bvsge (size!45454 a!3861) #b00000000000000000000000000000000))))

(assert (=> start!115978 d!147085))

(declare-fun d!147091 () Bool)

(declare-fun res!913908 () Bool)

(declare-fun e!776232 () Bool)

(assert (=> d!147091 (=> res!913908 e!776232)))

(assert (=> d!147091 (= res!913908 (bvsge from!3239 (size!45454 a!3861)))))

(assert (=> d!147091 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!776232)))

(declare-fun b!1370355 () Bool)

(declare-fun e!776230 () Bool)

(assert (=> b!1370355 (= e!776230 (contains!9689 acc!866 (select (arr!44903 a!3861) from!3239)))))

(declare-fun b!1370356 () Bool)

(declare-fun e!776231 () Bool)

(declare-fun e!776229 () Bool)

(assert (=> b!1370356 (= e!776231 e!776229)))

(declare-fun c!127666 () Bool)

(assert (=> b!1370356 (= c!127666 (validKeyInArray!0 (select (arr!44903 a!3861) from!3239)))))

(declare-fun b!1370357 () Bool)

(declare-fun call!65527 () Bool)

(assert (=> b!1370357 (= e!776229 call!65527)))

(declare-fun bm!65524 () Bool)

(assert (=> bm!65524 (= call!65527 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127666 (Cons!32147 (select (arr!44903 a!3861) from!3239) acc!866) acc!866)))))

(declare-fun b!1370358 () Bool)

(assert (=> b!1370358 (= e!776229 call!65527)))

(declare-fun b!1370359 () Bool)

(assert (=> b!1370359 (= e!776232 e!776231)))

(declare-fun res!913909 () Bool)

(assert (=> b!1370359 (=> (not res!913909) (not e!776231))))

(assert (=> b!1370359 (= res!913909 (not e!776230))))

(declare-fun res!913910 () Bool)

(assert (=> b!1370359 (=> (not res!913910) (not e!776230))))

(assert (=> b!1370359 (= res!913910 (validKeyInArray!0 (select (arr!44903 a!3861) from!3239)))))

(assert (= (and d!147091 (not res!913908)) b!1370359))

(assert (= (and b!1370359 res!913910) b!1370355))

(assert (= (and b!1370359 res!913909) b!1370356))

(assert (= (and b!1370356 c!127666) b!1370358))

(assert (= (and b!1370356 (not c!127666)) b!1370357))

(assert (= (or b!1370358 b!1370357) bm!65524))

(assert (=> b!1370355 m!1253885))

(assert (=> b!1370355 m!1253885))

(assert (=> b!1370355 m!1253889))

(assert (=> b!1370356 m!1253885))

(assert (=> b!1370356 m!1253885))

(assert (=> b!1370356 m!1253887))

(assert (=> bm!65524 m!1253885))

(declare-fun m!1253959 () Bool)

(assert (=> bm!65524 m!1253959))

(assert (=> b!1370359 m!1253885))

(assert (=> b!1370359 m!1253885))

(assert (=> b!1370359 m!1253887))

(assert (=> b!1370246 d!147091))

(declare-fun d!147099 () Bool)

(assert (=> d!147099 (noDuplicate!2568 newAcc!98)))

(declare-fun lt!602383 () Unit!45241)

(declare-fun choose!2014 (List!32151 List!32151) Unit!45241)

(assert (=> d!147099 (= lt!602383 (choose!2014 newAcc!98 acc!866))))

(declare-fun e!776252 () Bool)

(assert (=> d!147099 e!776252))

(declare-fun res!913930 () Bool)

(assert (=> d!147099 (=> (not res!913930) (not e!776252))))

(assert (=> d!147099 (= res!913930 (subseq!1080 newAcc!98 acc!866))))

(assert (=> d!147099 (= (noDuplicateSubseq!267 newAcc!98 acc!866) lt!602383)))

(declare-fun b!1370379 () Bool)

(assert (=> b!1370379 (= e!776252 (noDuplicate!2568 acc!866))))

(assert (= (and d!147099 res!913930) b!1370379))

(declare-fun m!1253991 () Bool)

(assert (=> d!147099 m!1253991))

(declare-fun m!1253993 () Bool)

(assert (=> d!147099 m!1253993))

(assert (=> d!147099 m!1253873))

(assert (=> b!1370379 m!1253863))

(assert (=> b!1370246 d!147099))

(declare-fun d!147113 () Bool)

(declare-fun res!913931 () Bool)

(declare-fun e!776253 () Bool)

(assert (=> d!147113 (=> res!913931 e!776253)))

(assert (=> d!147113 (= res!913931 ((_ is Nil!32148) lt!602357))))

(assert (=> d!147113 (= (noDuplicate!2568 lt!602357) e!776253)))

(declare-fun b!1370380 () Bool)

(declare-fun e!776254 () Bool)

(assert (=> b!1370380 (= e!776253 e!776254)))

(declare-fun res!913932 () Bool)

(assert (=> b!1370380 (=> (not res!913932) (not e!776254))))

(assert (=> b!1370380 (= res!913932 (not (contains!9689 (t!46852 lt!602357) (h!33356 lt!602357))))))

(declare-fun b!1370381 () Bool)

(assert (=> b!1370381 (= e!776254 (noDuplicate!2568 (t!46852 lt!602357)))))

(assert (= (and d!147113 (not res!913931)) b!1370380))

(assert (= (and b!1370380 res!913932) b!1370381))

(declare-fun m!1253995 () Bool)

(assert (=> b!1370380 m!1253995))

(declare-fun m!1253997 () Bool)

(assert (=> b!1370381 m!1253997))

(assert (=> b!1370244 d!147113))

(declare-fun lt!602384 () Bool)

(declare-fun d!147115 () Bool)

(assert (=> d!147115 (= lt!602384 (select (content!735 acc!866) (select (arr!44903 a!3861) from!3239)))))

(declare-fun e!776256 () Bool)

(assert (=> d!147115 (= lt!602384 e!776256)))

(declare-fun res!913934 () Bool)

(assert (=> d!147115 (=> (not res!913934) (not e!776256))))

(assert (=> d!147115 (= res!913934 ((_ is Cons!32147) acc!866))))

(assert (=> d!147115 (= (contains!9689 acc!866 (select (arr!44903 a!3861) from!3239)) lt!602384)))

(declare-fun b!1370382 () Bool)

(declare-fun e!776255 () Bool)

(assert (=> b!1370382 (= e!776256 e!776255)))

(declare-fun res!913933 () Bool)

(assert (=> b!1370382 (=> res!913933 e!776255)))

(assert (=> b!1370382 (= res!913933 (= (h!33356 acc!866) (select (arr!44903 a!3861) from!3239)))))

(declare-fun b!1370383 () Bool)

(assert (=> b!1370383 (= e!776255 (contains!9689 (t!46852 acc!866) (select (arr!44903 a!3861) from!3239)))))

(assert (= (and d!147115 res!913934) b!1370382))

(assert (= (and b!1370382 (not res!913933)) b!1370383))

(assert (=> d!147115 m!1253933))

(assert (=> d!147115 m!1253885))

(declare-fun m!1253999 () Bool)

(assert (=> d!147115 m!1253999))

(assert (=> b!1370383 m!1253885))

(declare-fun m!1254001 () Bool)

(assert (=> b!1370383 m!1254001))

(assert (=> b!1370255 d!147115))

(declare-fun d!147117 () Bool)

(declare-fun lt!602385 () Bool)

(assert (=> d!147117 (= lt!602385 (select (content!735 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!776262 () Bool)

(assert (=> d!147117 (= lt!602385 e!776262)))

(declare-fun res!913940 () Bool)

(assert (=> d!147117 (=> (not res!913940) (not e!776262))))

(assert (=> d!147117 (= res!913940 ((_ is Cons!32147) newAcc!98))))

(assert (=> d!147117 (= (contains!9689 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602385)))

(declare-fun b!1370388 () Bool)

(declare-fun e!776261 () Bool)

(assert (=> b!1370388 (= e!776262 e!776261)))

(declare-fun res!913939 () Bool)

(assert (=> b!1370388 (=> res!913939 e!776261)))

(assert (=> b!1370388 (= res!913939 (= (h!33356 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370389 () Bool)

(assert (=> b!1370389 (= e!776261 (contains!9689 (t!46852 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147117 res!913940) b!1370388))

(assert (= (and b!1370388 (not res!913939)) b!1370389))

(assert (=> d!147117 m!1253943))

(declare-fun m!1254003 () Bool)

(assert (=> d!147117 m!1254003))

(declare-fun m!1254005 () Bool)

(assert (=> b!1370389 m!1254005))

(assert (=> b!1370248 d!147117))

(declare-fun b!1370413 () Bool)

(declare-fun e!776285 () Bool)

(declare-fun e!776288 () Bool)

(assert (=> b!1370413 (= e!776285 e!776288)))

(declare-fun res!913965 () Bool)

(assert (=> b!1370413 (=> res!913965 e!776288)))

(declare-fun e!776287 () Bool)

(assert (=> b!1370413 (= res!913965 e!776287)))

(declare-fun res!913964 () Bool)

(assert (=> b!1370413 (=> (not res!913964) (not e!776287))))

(assert (=> b!1370413 (= res!913964 (= (h!33356 newAcc!98) (h!33356 acc!866)))))

(declare-fun b!1370412 () Bool)

(declare-fun e!776286 () Bool)

(assert (=> b!1370412 (= e!776286 e!776285)))

(declare-fun res!913966 () Bool)

(assert (=> b!1370412 (=> (not res!913966) (not e!776285))))

(assert (=> b!1370412 (= res!913966 ((_ is Cons!32147) acc!866))))

(declare-fun b!1370415 () Bool)

(assert (=> b!1370415 (= e!776288 (subseq!1080 newAcc!98 (t!46852 acc!866)))))

(declare-fun d!147119 () Bool)

(declare-fun res!913963 () Bool)

(assert (=> d!147119 (=> res!913963 e!776286)))

(assert (=> d!147119 (= res!913963 ((_ is Nil!32148) newAcc!98))))

(assert (=> d!147119 (= (subseq!1080 newAcc!98 acc!866) e!776286)))

(declare-fun b!1370414 () Bool)

(assert (=> b!1370414 (= e!776287 (subseq!1080 (t!46852 newAcc!98) (t!46852 acc!866)))))

(assert (= (and d!147119 (not res!913963)) b!1370412))

(assert (= (and b!1370412 res!913966) b!1370413))

(assert (= (and b!1370413 res!913964) b!1370414))

(assert (= (and b!1370413 (not res!913965)) b!1370415))

(declare-fun m!1254031 () Bool)

(assert (=> b!1370415 m!1254031))

(declare-fun m!1254033 () Bool)

(assert (=> b!1370414 m!1254033))

(assert (=> b!1370247 d!147119))

(check-sat (not b!1370303) (not d!147117) (not d!147115) (not d!147081) (not b!1370311) (not b!1370355) (not b!1370414) (not d!147079) (not d!147077) (not d!147075) (not b!1370383) (not b!1370317) (not b!1370415) (not b!1370380) (not b!1370316) (not b!1370379) (not b!1370307) (not b!1370356) (not d!147071) (not b!1370389) (not b!1370381) (not b!1370305) (not bm!65524) (not d!147099) (not b!1370359) (not b!1370309))
(check-sat)
