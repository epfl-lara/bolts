; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115852 () Bool)

(assert start!115852)

(declare-fun b!1369236 () Bool)

(declare-fun res!912838 () Bool)

(declare-fun e!775662 () Bool)

(assert (=> b!1369236 (=> (not res!912838) (not e!775662))))

(declare-datatypes ((List!32127 0))(
  ( (Nil!32124) (Cons!32123 (h!33332 (_ BitVec 64)) (t!46828 List!32127)) )
))
(declare-fun newAcc!98 () List!32127)

(declare-fun contains!9665 (List!32127 (_ BitVec 64)) Bool)

(assert (=> b!1369236 (= res!912838 (not (contains!9665 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369237 () Bool)

(declare-fun e!775663 () Bool)

(declare-fun noDuplicate!2544 (List!32127) Bool)

(assert (=> b!1369237 (= e!775663 (not (noDuplicate!2544 newAcc!98)))))

(declare-fun b!1369238 () Bool)

(declare-fun res!912841 () Bool)

(assert (=> b!1369238 (=> (not res!912841) (not e!775662))))

(assert (=> b!1369238 (= res!912841 (not (contains!9665 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369239 () Bool)

(declare-fun res!912843 () Bool)

(assert (=> b!1369239 (=> (not res!912843) (not e!775662))))

(declare-fun acc!866 () List!32127)

(assert (=> b!1369239 (= res!912843 (noDuplicate!2544 acc!866))))

(declare-fun b!1369240 () Bool)

(declare-fun res!912835 () Bool)

(assert (=> b!1369240 (=> (not res!912835) (not e!775662))))

(assert (=> b!1369240 (= res!912835 (not (contains!9665 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369241 () Bool)

(declare-fun res!912837 () Bool)

(assert (=> b!1369241 (=> (not res!912837) (not e!775662))))

(declare-fun subseq!1056 (List!32127 List!32127) Bool)

(assert (=> b!1369241 (= res!912837 (subseq!1056 newAcc!98 acc!866))))

(declare-fun res!912836 () Bool)

(assert (=> start!115852 (=> (not res!912836) (not e!775662))))

(declare-datatypes ((array!92922 0))(
  ( (array!92923 (arr!44879 (Array (_ BitVec 32) (_ BitVec 64))) (size!45430 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92922)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115852 (= res!912836 (and (bvslt (size!45430 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45430 a!3861))))))

(assert (=> start!115852 e!775662))

(declare-fun array_inv!33824 (array!92922) Bool)

(assert (=> start!115852 (array_inv!33824 a!3861)))

(assert (=> start!115852 true))

(declare-fun b!1369242 () Bool)

(declare-fun res!912839 () Bool)

(assert (=> b!1369242 (=> (not res!912839) (not e!775662))))

(assert (=> b!1369242 (= res!912839 (not (contains!9665 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369243 () Bool)

(declare-fun res!912842 () Bool)

(assert (=> b!1369243 (=> (not res!912842) (not e!775663))))

(assert (=> b!1369243 (= res!912842 (bvsge from!3239 (size!45430 a!3861)))))

(declare-fun b!1369244 () Bool)

(assert (=> b!1369244 (= e!775662 e!775663)))

(declare-fun res!912840 () Bool)

(assert (=> b!1369244 (=> (not res!912840) (not e!775663))))

(declare-fun arrayNoDuplicates!0 (array!92922 (_ BitVec 32) List!32127) Bool)

(assert (=> b!1369244 (= res!912840 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45193 0))(
  ( (Unit!45194) )
))
(declare-fun lt!602177 () Unit!45193)

(declare-fun noDuplicateSubseq!243 (List!32127 List!32127) Unit!45193)

(assert (=> b!1369244 (= lt!602177 (noDuplicateSubseq!243 newAcc!98 acc!866))))

(assert (= (and start!115852 res!912836) b!1369239))

(assert (= (and b!1369239 res!912843) b!1369240))

(assert (= (and b!1369240 res!912835) b!1369242))

(assert (= (and b!1369242 res!912839) b!1369236))

(assert (= (and b!1369236 res!912838) b!1369238))

(assert (= (and b!1369238 res!912841) b!1369241))

(assert (= (and b!1369241 res!912837) b!1369244))

(assert (= (and b!1369244 res!912840) b!1369243))

(assert (= (and b!1369243 res!912842) b!1369237))

(declare-fun m!1253079 () Bool)

(assert (=> b!1369238 m!1253079))

(declare-fun m!1253081 () Bool)

(assert (=> b!1369237 m!1253081))

(declare-fun m!1253083 () Bool)

(assert (=> b!1369244 m!1253083))

(declare-fun m!1253085 () Bool)

(assert (=> b!1369244 m!1253085))

(declare-fun m!1253087 () Bool)

(assert (=> start!115852 m!1253087))

(declare-fun m!1253089 () Bool)

(assert (=> b!1369236 m!1253089))

(declare-fun m!1253091 () Bool)

(assert (=> b!1369242 m!1253091))

(declare-fun m!1253093 () Bool)

(assert (=> b!1369241 m!1253093))

(declare-fun m!1253095 () Bool)

(assert (=> b!1369239 m!1253095))

(declare-fun m!1253097 () Bool)

(assert (=> b!1369240 m!1253097))

(check-sat (not b!1369244) (not b!1369240) (not b!1369239) (not b!1369238) (not b!1369241) (not b!1369237) (not start!115852) (not b!1369236) (not b!1369242))
(check-sat)
(get-model)

(declare-fun d!146923 () Bool)

(declare-fun res!912878 () Bool)

(declare-fun e!775682 () Bool)

(assert (=> d!146923 (=> res!912878 e!775682)))

(assert (=> d!146923 (= res!912878 (bvsge from!3239 (size!45430 a!3861)))))

(assert (=> d!146923 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!775682)))

(declare-fun b!1369282 () Bool)

(declare-fun e!775684 () Bool)

(assert (=> b!1369282 (= e!775684 (contains!9665 acc!866 (select (arr!44879 a!3861) from!3239)))))

(declare-fun b!1369283 () Bool)

(declare-fun e!775683 () Bool)

(declare-fun call!65506 () Bool)

(assert (=> b!1369283 (= e!775683 call!65506)))

(declare-fun b!1369284 () Bool)

(assert (=> b!1369284 (= e!775683 call!65506)))

(declare-fun b!1369285 () Bool)

(declare-fun e!775681 () Bool)

(assert (=> b!1369285 (= e!775682 e!775681)))

(declare-fun res!912877 () Bool)

(assert (=> b!1369285 (=> (not res!912877) (not e!775681))))

(assert (=> b!1369285 (= res!912877 (not e!775684))))

(declare-fun res!912879 () Bool)

(assert (=> b!1369285 (=> (not res!912879) (not e!775684))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1369285 (= res!912879 (validKeyInArray!0 (select (arr!44879 a!3861) from!3239)))))

(declare-fun c!127645 () Bool)

(declare-fun bm!65503 () Bool)

(assert (=> bm!65503 (= call!65506 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127645 (Cons!32123 (select (arr!44879 a!3861) from!3239) acc!866) acc!866)))))

(declare-fun b!1369286 () Bool)

(assert (=> b!1369286 (= e!775681 e!775683)))

(assert (=> b!1369286 (= c!127645 (validKeyInArray!0 (select (arr!44879 a!3861) from!3239)))))

(assert (= (and d!146923 (not res!912878)) b!1369285))

(assert (= (and b!1369285 res!912879) b!1369282))

(assert (= (and b!1369285 res!912877) b!1369286))

(assert (= (and b!1369286 c!127645) b!1369283))

(assert (= (and b!1369286 (not c!127645)) b!1369284))

(assert (= (or b!1369283 b!1369284) bm!65503))

(declare-fun m!1253119 () Bool)

(assert (=> b!1369282 m!1253119))

(assert (=> b!1369282 m!1253119))

(declare-fun m!1253121 () Bool)

(assert (=> b!1369282 m!1253121))

(assert (=> b!1369285 m!1253119))

(assert (=> b!1369285 m!1253119))

(declare-fun m!1253123 () Bool)

(assert (=> b!1369285 m!1253123))

(assert (=> bm!65503 m!1253119))

(declare-fun m!1253125 () Bool)

(assert (=> bm!65503 m!1253125))

(assert (=> b!1369286 m!1253119))

(assert (=> b!1369286 m!1253119))

(assert (=> b!1369286 m!1253123))

(assert (=> b!1369244 d!146923))

(declare-fun d!146929 () Bool)

(assert (=> d!146929 (noDuplicate!2544 newAcc!98)))

(declare-fun lt!602191 () Unit!45193)

(declare-fun choose!2009 (List!32127 List!32127) Unit!45193)

(assert (=> d!146929 (= lt!602191 (choose!2009 newAcc!98 acc!866))))

(declare-fun e!775703 () Bool)

(assert (=> d!146929 e!775703))

(declare-fun res!912898 () Bool)

(assert (=> d!146929 (=> (not res!912898) (not e!775703))))

(assert (=> d!146929 (= res!912898 (subseq!1056 newAcc!98 acc!866))))

(assert (=> d!146929 (= (noDuplicateSubseq!243 newAcc!98 acc!866) lt!602191)))

(declare-fun b!1369305 () Bool)

(assert (=> b!1369305 (= e!775703 (noDuplicate!2544 acc!866))))

(assert (= (and d!146929 res!912898) b!1369305))

(assert (=> d!146929 m!1253081))

(declare-fun m!1253145 () Bool)

(assert (=> d!146929 m!1253145))

(assert (=> d!146929 m!1253093))

(assert (=> b!1369305 m!1253095))

(assert (=> b!1369244 d!146929))

(declare-fun d!146939 () Bool)

(declare-fun lt!602194 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!730 (List!32127) (InoxSet (_ BitVec 64)))

(assert (=> d!146939 (= lt!602194 (select (content!730 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!775719 () Bool)

(assert (=> d!146939 (= lt!602194 e!775719)))

(declare-fun res!912914 () Bool)

(assert (=> d!146939 (=> (not res!912914) (not e!775719))))

(get-info :version)

(assert (=> d!146939 (= res!912914 ((_ is Cons!32123) newAcc!98))))

(assert (=> d!146939 (= (contains!9665 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602194)))

(declare-fun b!1369320 () Bool)

(declare-fun e!775718 () Bool)

(assert (=> b!1369320 (= e!775719 e!775718)))

(declare-fun res!912913 () Bool)

(assert (=> b!1369320 (=> res!912913 e!775718)))

(assert (=> b!1369320 (= res!912913 (= (h!33332 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1369321 () Bool)

(assert (=> b!1369321 (= e!775718 (contains!9665 (t!46828 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146939 res!912914) b!1369320))

(assert (= (and b!1369320 (not res!912913)) b!1369321))

(declare-fun m!1253159 () Bool)

(assert (=> d!146939 m!1253159))

(declare-fun m!1253161 () Bool)

(assert (=> d!146939 m!1253161))

(declare-fun m!1253163 () Bool)

(assert (=> b!1369321 m!1253163))

(assert (=> b!1369238 d!146939))

(declare-fun d!146947 () Bool)

(declare-fun lt!602195 () Bool)

(assert (=> d!146947 (= lt!602195 (select (content!730 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!775727 () Bool)

(assert (=> d!146947 (= lt!602195 e!775727)))

(declare-fun res!912920 () Bool)

(assert (=> d!146947 (=> (not res!912920) (not e!775727))))

(assert (=> d!146947 (= res!912920 ((_ is Cons!32123) acc!866))))

(assert (=> d!146947 (= (contains!9665 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602195)))

(declare-fun b!1369330 () Bool)

(declare-fun e!775726 () Bool)

(assert (=> b!1369330 (= e!775727 e!775726)))

(declare-fun res!912919 () Bool)

(assert (=> b!1369330 (=> res!912919 e!775726)))

(assert (=> b!1369330 (= res!912919 (= (h!33332 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1369331 () Bool)

(assert (=> b!1369331 (= e!775726 (contains!9665 (t!46828 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146947 res!912920) b!1369330))

(assert (= (and b!1369330 (not res!912919)) b!1369331))

(declare-fun m!1253165 () Bool)

(assert (=> d!146947 m!1253165))

(declare-fun m!1253167 () Bool)

(assert (=> d!146947 m!1253167))

(declare-fun m!1253169 () Bool)

(assert (=> b!1369331 m!1253169))

(assert (=> b!1369240 d!146947))

(declare-fun d!146949 () Bool)

(declare-fun res!912931 () Bool)

(declare-fun e!775739 () Bool)

(assert (=> d!146949 (=> res!912931 e!775739)))

(assert (=> d!146949 (= res!912931 ((_ is Nil!32124) acc!866))))

(assert (=> d!146949 (= (noDuplicate!2544 acc!866) e!775739)))

(declare-fun b!1369346 () Bool)

(declare-fun e!775741 () Bool)

(assert (=> b!1369346 (= e!775739 e!775741)))

(declare-fun res!912932 () Bool)

(assert (=> b!1369346 (=> (not res!912932) (not e!775741))))

(assert (=> b!1369346 (= res!912932 (not (contains!9665 (t!46828 acc!866) (h!33332 acc!866))))))

(declare-fun b!1369347 () Bool)

(assert (=> b!1369347 (= e!775741 (noDuplicate!2544 (t!46828 acc!866)))))

(assert (= (and d!146949 (not res!912931)) b!1369346))

(assert (= (and b!1369346 res!912932) b!1369347))

(declare-fun m!1253171 () Bool)

(assert (=> b!1369346 m!1253171))

(declare-fun m!1253173 () Bool)

(assert (=> b!1369347 m!1253173))

(assert (=> b!1369239 d!146949))

(declare-fun b!1369372 () Bool)

(declare-fun e!775763 () Bool)

(declare-fun e!775765 () Bool)

(assert (=> b!1369372 (= e!775763 e!775765)))

(declare-fun res!912952 () Bool)

(assert (=> b!1369372 (=> res!912952 e!775765)))

(declare-fun e!775764 () Bool)

(assert (=> b!1369372 (= res!912952 e!775764)))

(declare-fun res!912954 () Bool)

(assert (=> b!1369372 (=> (not res!912954) (not e!775764))))

(assert (=> b!1369372 (= res!912954 (= (h!33332 newAcc!98) (h!33332 acc!866)))))

(declare-fun b!1369371 () Bool)

(declare-fun e!775766 () Bool)

(assert (=> b!1369371 (= e!775766 e!775763)))

(declare-fun res!912953 () Bool)

(assert (=> b!1369371 (=> (not res!912953) (not e!775763))))

(assert (=> b!1369371 (= res!912953 ((_ is Cons!32123) acc!866))))

(declare-fun d!146951 () Bool)

(declare-fun res!912955 () Bool)

(assert (=> d!146951 (=> res!912955 e!775766)))

(assert (=> d!146951 (= res!912955 ((_ is Nil!32124) newAcc!98))))

(assert (=> d!146951 (= (subseq!1056 newAcc!98 acc!866) e!775766)))

(declare-fun b!1369374 () Bool)

(assert (=> b!1369374 (= e!775765 (subseq!1056 newAcc!98 (t!46828 acc!866)))))

(declare-fun b!1369373 () Bool)

(assert (=> b!1369373 (= e!775764 (subseq!1056 (t!46828 newAcc!98) (t!46828 acc!866)))))

(assert (= (and d!146951 (not res!912955)) b!1369371))

(assert (= (and b!1369371 res!912953) b!1369372))

(assert (= (and b!1369372 res!912954) b!1369373))

(assert (= (and b!1369372 (not res!912952)) b!1369374))

(declare-fun m!1253197 () Bool)

(assert (=> b!1369374 m!1253197))

(declare-fun m!1253199 () Bool)

(assert (=> b!1369373 m!1253199))

(assert (=> b!1369241 d!146951))

(declare-fun d!146961 () Bool)

(declare-fun lt!602200 () Bool)

(assert (=> d!146961 (= lt!602200 (select (content!730 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!775768 () Bool)

(assert (=> d!146961 (= lt!602200 e!775768)))

(declare-fun res!912957 () Bool)

(assert (=> d!146961 (=> (not res!912957) (not e!775768))))

(assert (=> d!146961 (= res!912957 ((_ is Cons!32123) newAcc!98))))

(assert (=> d!146961 (= (contains!9665 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602200)))

(declare-fun b!1369375 () Bool)

(declare-fun e!775767 () Bool)

(assert (=> b!1369375 (= e!775768 e!775767)))

(declare-fun res!912956 () Bool)

(assert (=> b!1369375 (=> res!912956 e!775767)))

(assert (=> b!1369375 (= res!912956 (= (h!33332 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1369376 () Bool)

(assert (=> b!1369376 (= e!775767 (contains!9665 (t!46828 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146961 res!912957) b!1369375))

(assert (= (and b!1369375 (not res!912956)) b!1369376))

(assert (=> d!146961 m!1253159))

(declare-fun m!1253201 () Bool)

(assert (=> d!146961 m!1253201))

(declare-fun m!1253203 () Bool)

(assert (=> b!1369376 m!1253203))

(assert (=> b!1369236 d!146961))

(declare-fun d!146963 () Bool)

(declare-fun res!912958 () Bool)

(declare-fun e!775769 () Bool)

(assert (=> d!146963 (=> res!912958 e!775769)))

(assert (=> d!146963 (= res!912958 ((_ is Nil!32124) newAcc!98))))

(assert (=> d!146963 (= (noDuplicate!2544 newAcc!98) e!775769)))

(declare-fun b!1369377 () Bool)

(declare-fun e!775770 () Bool)

(assert (=> b!1369377 (= e!775769 e!775770)))

(declare-fun res!912959 () Bool)

(assert (=> b!1369377 (=> (not res!912959) (not e!775770))))

(assert (=> b!1369377 (= res!912959 (not (contains!9665 (t!46828 newAcc!98) (h!33332 newAcc!98))))))

(declare-fun b!1369378 () Bool)

(assert (=> b!1369378 (= e!775770 (noDuplicate!2544 (t!46828 newAcc!98)))))

(assert (= (and d!146963 (not res!912958)) b!1369377))

(assert (= (and b!1369377 res!912959) b!1369378))

(declare-fun m!1253205 () Bool)

(assert (=> b!1369377 m!1253205))

(declare-fun m!1253207 () Bool)

(assert (=> b!1369378 m!1253207))

(assert (=> b!1369237 d!146963))

(declare-fun d!146967 () Bool)

(assert (=> d!146967 (= (array_inv!33824 a!3861) (bvsge (size!45430 a!3861) #b00000000000000000000000000000000))))

(assert (=> start!115852 d!146967))

(declare-fun d!146969 () Bool)

(declare-fun lt!602203 () Bool)

(assert (=> d!146969 (= lt!602203 (select (content!730 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!775774 () Bool)

(assert (=> d!146969 (= lt!602203 e!775774)))

(declare-fun res!912963 () Bool)

(assert (=> d!146969 (=> (not res!912963) (not e!775774))))

(assert (=> d!146969 (= res!912963 ((_ is Cons!32123) acc!866))))

(assert (=> d!146969 (= (contains!9665 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602203)))

(declare-fun b!1369381 () Bool)

(declare-fun e!775773 () Bool)

(assert (=> b!1369381 (= e!775774 e!775773)))

(declare-fun res!912962 () Bool)

(assert (=> b!1369381 (=> res!912962 e!775773)))

(assert (=> b!1369381 (= res!912962 (= (h!33332 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1369382 () Bool)

(assert (=> b!1369382 (= e!775773 (contains!9665 (t!46828 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146969 res!912963) b!1369381))

(assert (= (and b!1369381 (not res!912962)) b!1369382))

(assert (=> d!146969 m!1253165))

(declare-fun m!1253209 () Bool)

(assert (=> d!146969 m!1253209))

(declare-fun m!1253211 () Bool)

(assert (=> b!1369382 m!1253211))

(assert (=> b!1369242 d!146969))

(check-sat (not d!146947) (not b!1369282) (not b!1369347) (not b!1369305) (not b!1369331) (not d!146969) (not b!1369285) (not d!146929) (not b!1369346) (not b!1369376) (not d!146961) (not b!1369374) (not b!1369321) (not b!1369286) (not bm!65503) (not b!1369378) (not b!1369382) (not b!1369373) (not b!1369377) (not d!146939))
(check-sat)
