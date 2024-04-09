; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115192 () Bool)

(assert start!115192)

(declare-fun e!773602 () Bool)

(declare-fun b!1364154 () Bool)

(declare-fun l!3587 () (_ BitVec 64))

(declare-datatypes ((List!31989 0))(
  ( (Nil!31986) (Cons!31985 (h!33194 (_ BitVec 64)) (t!46690 List!31989)) )
))
(declare-fun acc!759 () List!31989)

(declare-fun i!1404 () (_ BitVec 32))

(declare-datatypes ((array!92685 0))(
  ( (array!92686 (arr!44768 (Array (_ BitVec 32) (_ BitVec 64))) (size!45319 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92685)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92685 (_ BitVec 32) List!31989) Bool)

(assert (=> b!1364154 (= e!773602 (not (arrayNoDuplicates!0 (array!92686 (store (arr!44768 a!3742) i!1404 l!3587) (size!45319 a!3742)) from!3120 acc!759)))))

(declare-fun res!907959 () Bool)

(assert (=> start!115192 (=> (not res!907959) (not e!773602))))

(assert (=> start!115192 (= res!907959 (and (bvslt (size!45319 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45319 a!3742))))))

(assert (=> start!115192 e!773602))

(assert (=> start!115192 true))

(declare-fun array_inv!33713 (array!92685) Bool)

(assert (=> start!115192 (array_inv!33713 a!3742)))

(declare-fun b!1364155 () Bool)

(declare-fun res!907960 () Bool)

(assert (=> b!1364155 (=> (not res!907960) (not e!773602))))

(assert (=> b!1364155 (= res!907960 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45319 a!3742))))))

(declare-fun b!1364156 () Bool)

(declare-fun res!907965 () Bool)

(assert (=> b!1364156 (=> (not res!907965) (not e!773602))))

(declare-fun contains!9554 (List!31989 (_ BitVec 64)) Bool)

(assert (=> b!1364156 (= res!907965 (not (contains!9554 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364157 () Bool)

(declare-fun res!907964 () Bool)

(assert (=> b!1364157 (=> (not res!907964) (not e!773602))))

(assert (=> b!1364157 (= res!907964 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45319 a!3742)))))

(declare-fun b!1364158 () Bool)

(declare-fun res!907961 () Bool)

(assert (=> b!1364158 (=> (not res!907961) (not e!773602))))

(assert (=> b!1364158 (= res!907961 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31986))))

(declare-fun b!1364159 () Bool)

(declare-fun res!907958 () Bool)

(assert (=> b!1364159 (=> (not res!907958) (not e!773602))))

(declare-fun noDuplicate!2433 (List!31989) Bool)

(assert (=> b!1364159 (= res!907958 (noDuplicate!2433 acc!759))))

(declare-fun b!1364160 () Bool)

(declare-fun res!907963 () Bool)

(assert (=> b!1364160 (=> (not res!907963) (not e!773602))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1364160 (= res!907963 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1364161 () Bool)

(declare-fun res!907962 () Bool)

(assert (=> b!1364161 (=> (not res!907962) (not e!773602))))

(assert (=> b!1364161 (= res!907962 (not (contains!9554 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364162 () Bool)

(declare-fun res!907957 () Bool)

(assert (=> b!1364162 (=> (not res!907957) (not e!773602))))

(assert (=> b!1364162 (= res!907957 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(assert (= (and start!115192 res!907959) b!1364159))

(assert (= (and b!1364159 res!907958) b!1364156))

(assert (= (and b!1364156 res!907965) b!1364161))

(assert (= (and b!1364161 res!907962) b!1364158))

(assert (= (and b!1364158 res!907961) b!1364162))

(assert (= (and b!1364162 res!907957) b!1364155))

(assert (= (and b!1364155 res!907960) b!1364160))

(assert (= (and b!1364160 res!907963) b!1364157))

(assert (= (and b!1364157 res!907964) b!1364154))

(declare-fun m!1248883 () Bool)

(assert (=> b!1364159 m!1248883))

(declare-fun m!1248885 () Bool)

(assert (=> start!115192 m!1248885))

(declare-fun m!1248887 () Bool)

(assert (=> b!1364162 m!1248887))

(declare-fun m!1248889 () Bool)

(assert (=> b!1364160 m!1248889))

(declare-fun m!1248891 () Bool)

(assert (=> b!1364154 m!1248891))

(declare-fun m!1248893 () Bool)

(assert (=> b!1364154 m!1248893))

(declare-fun m!1248895 () Bool)

(assert (=> b!1364156 m!1248895))

(declare-fun m!1248897 () Bool)

(assert (=> b!1364158 m!1248897))

(declare-fun m!1248899 () Bool)

(assert (=> b!1364161 m!1248899))

(check-sat (not b!1364160) (not b!1364158) (not b!1364162) (not b!1364154) (not b!1364159) (not b!1364156) (not start!115192) (not b!1364161))
(check-sat)
(get-model)

(declare-fun d!146189 () Bool)

(declare-fun res!907999 () Bool)

(declare-fun e!773620 () Bool)

(assert (=> d!146189 (=> res!907999 e!773620)))

(assert (=> d!146189 (= res!907999 (bvsge #b00000000000000000000000000000000 (size!45319 a!3742)))))

(assert (=> d!146189 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31986) e!773620)))

(declare-fun b!1364200 () Bool)

(declare-fun e!773619 () Bool)

(assert (=> b!1364200 (= e!773619 (contains!9554 Nil!31986 (select (arr!44768 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1364201 () Bool)

(declare-fun e!773618 () Bool)

(declare-fun call!65434 () Bool)

(assert (=> b!1364201 (= e!773618 call!65434)))

(declare-fun b!1364202 () Bool)

(assert (=> b!1364202 (= e!773618 call!65434)))

(declare-fun b!1364203 () Bool)

(declare-fun e!773617 () Bool)

(assert (=> b!1364203 (= e!773620 e!773617)))

(declare-fun res!908000 () Bool)

(assert (=> b!1364203 (=> (not res!908000) (not e!773617))))

(assert (=> b!1364203 (= res!908000 (not e!773619))))

(declare-fun res!908001 () Bool)

(assert (=> b!1364203 (=> (not res!908001) (not e!773619))))

(assert (=> b!1364203 (= res!908001 (validKeyInArray!0 (select (arr!44768 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1364204 () Bool)

(assert (=> b!1364204 (= e!773617 e!773618)))

(declare-fun c!127543 () Bool)

(assert (=> b!1364204 (= c!127543 (validKeyInArray!0 (select (arr!44768 a!3742) #b00000000000000000000000000000000)))))

(declare-fun bm!65431 () Bool)

(assert (=> bm!65431 (= call!65434 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127543 (Cons!31985 (select (arr!44768 a!3742) #b00000000000000000000000000000000) Nil!31986) Nil!31986)))))

(assert (= (and d!146189 (not res!907999)) b!1364203))

(assert (= (and b!1364203 res!908001) b!1364200))

(assert (= (and b!1364203 res!908000) b!1364204))

(assert (= (and b!1364204 c!127543) b!1364202))

(assert (= (and b!1364204 (not c!127543)) b!1364201))

(assert (= (or b!1364202 b!1364201) bm!65431))

(declare-fun m!1248919 () Bool)

(assert (=> b!1364200 m!1248919))

(assert (=> b!1364200 m!1248919))

(declare-fun m!1248921 () Bool)

(assert (=> b!1364200 m!1248921))

(assert (=> b!1364203 m!1248919))

(assert (=> b!1364203 m!1248919))

(declare-fun m!1248923 () Bool)

(assert (=> b!1364203 m!1248923))

(assert (=> b!1364204 m!1248919))

(assert (=> b!1364204 m!1248919))

(assert (=> b!1364204 m!1248923))

(assert (=> bm!65431 m!1248919))

(declare-fun m!1248925 () Bool)

(assert (=> bm!65431 m!1248925))

(assert (=> b!1364158 d!146189))

(declare-fun d!146191 () Bool)

(declare-fun lt!600959 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!715 (List!31989) (InoxSet (_ BitVec 64)))

(assert (=> d!146191 (= lt!600959 (select (content!715 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!773625 () Bool)

(assert (=> d!146191 (= lt!600959 e!773625)))

(declare-fun res!908007 () Bool)

(assert (=> d!146191 (=> (not res!908007) (not e!773625))))

(get-info :version)

(assert (=> d!146191 (= res!908007 ((_ is Cons!31985) acc!759))))

(assert (=> d!146191 (= (contains!9554 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!600959)))

(declare-fun b!1364209 () Bool)

(declare-fun e!773626 () Bool)

(assert (=> b!1364209 (= e!773625 e!773626)))

(declare-fun res!908006 () Bool)

(assert (=> b!1364209 (=> res!908006 e!773626)))

(assert (=> b!1364209 (= res!908006 (= (h!33194 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1364210 () Bool)

(assert (=> b!1364210 (= e!773626 (contains!9554 (t!46690 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146191 res!908007) b!1364209))

(assert (= (and b!1364209 (not res!908006)) b!1364210))

(declare-fun m!1248927 () Bool)

(assert (=> d!146191 m!1248927))

(declare-fun m!1248929 () Bool)

(assert (=> d!146191 m!1248929))

(declare-fun m!1248931 () Bool)

(assert (=> b!1364210 m!1248931))

(assert (=> b!1364161 d!146191))

(declare-fun d!146197 () Bool)

(declare-fun lt!600962 () Bool)

(assert (=> d!146197 (= lt!600962 (select (content!715 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!773631 () Bool)

(assert (=> d!146197 (= lt!600962 e!773631)))

(declare-fun res!908013 () Bool)

(assert (=> d!146197 (=> (not res!908013) (not e!773631))))

(assert (=> d!146197 (= res!908013 ((_ is Cons!31985) acc!759))))

(assert (=> d!146197 (= (contains!9554 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!600962)))

(declare-fun b!1364215 () Bool)

(declare-fun e!773632 () Bool)

(assert (=> b!1364215 (= e!773631 e!773632)))

(declare-fun res!908012 () Bool)

(assert (=> b!1364215 (=> res!908012 e!773632)))

(assert (=> b!1364215 (= res!908012 (= (h!33194 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1364216 () Bool)

(assert (=> b!1364216 (= e!773632 (contains!9554 (t!46690 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146197 res!908013) b!1364215))

(assert (= (and b!1364215 (not res!908012)) b!1364216))

(assert (=> d!146197 m!1248927))

(declare-fun m!1248933 () Bool)

(assert (=> d!146197 m!1248933))

(declare-fun m!1248935 () Bool)

(assert (=> b!1364216 m!1248935))

(assert (=> b!1364156 d!146197))

(declare-fun d!146199 () Bool)

(declare-fun res!908014 () Bool)

(declare-fun e!773636 () Bool)

(assert (=> d!146199 (=> res!908014 e!773636)))

(assert (=> d!146199 (= res!908014 (bvsge from!3120 (size!45319 a!3742)))))

(assert (=> d!146199 (= (arrayNoDuplicates!0 a!3742 from!3120 acc!759) e!773636)))

(declare-fun b!1364217 () Bool)

(declare-fun e!773635 () Bool)

(assert (=> b!1364217 (= e!773635 (contains!9554 acc!759 (select (arr!44768 a!3742) from!3120)))))

(declare-fun b!1364218 () Bool)

(declare-fun e!773634 () Bool)

(declare-fun call!65435 () Bool)

(assert (=> b!1364218 (= e!773634 call!65435)))

(declare-fun b!1364219 () Bool)

(assert (=> b!1364219 (= e!773634 call!65435)))

(declare-fun b!1364220 () Bool)

(declare-fun e!773633 () Bool)

(assert (=> b!1364220 (= e!773636 e!773633)))

(declare-fun res!908015 () Bool)

(assert (=> b!1364220 (=> (not res!908015) (not e!773633))))

(assert (=> b!1364220 (= res!908015 (not e!773635))))

(declare-fun res!908016 () Bool)

(assert (=> b!1364220 (=> (not res!908016) (not e!773635))))

(assert (=> b!1364220 (= res!908016 (validKeyInArray!0 (select (arr!44768 a!3742) from!3120)))))

(declare-fun b!1364221 () Bool)

(assert (=> b!1364221 (= e!773633 e!773634)))

(declare-fun c!127544 () Bool)

(assert (=> b!1364221 (= c!127544 (validKeyInArray!0 (select (arr!44768 a!3742) from!3120)))))

(declare-fun bm!65432 () Bool)

(assert (=> bm!65432 (= call!65435 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127544 (Cons!31985 (select (arr!44768 a!3742) from!3120) acc!759) acc!759)))))

(assert (= (and d!146199 (not res!908014)) b!1364220))

(assert (= (and b!1364220 res!908016) b!1364217))

(assert (= (and b!1364220 res!908015) b!1364221))

(assert (= (and b!1364221 c!127544) b!1364219))

(assert (= (and b!1364221 (not c!127544)) b!1364218))

(assert (= (or b!1364219 b!1364218) bm!65432))

(declare-fun m!1248937 () Bool)

(assert (=> b!1364217 m!1248937))

(assert (=> b!1364217 m!1248937))

(declare-fun m!1248939 () Bool)

(assert (=> b!1364217 m!1248939))

(assert (=> b!1364220 m!1248937))

(assert (=> b!1364220 m!1248937))

(declare-fun m!1248941 () Bool)

(assert (=> b!1364220 m!1248941))

(assert (=> b!1364221 m!1248937))

(assert (=> b!1364221 m!1248937))

(assert (=> b!1364221 m!1248941))

(assert (=> bm!65432 m!1248937))

(declare-fun m!1248943 () Bool)

(assert (=> bm!65432 m!1248943))

(assert (=> b!1364162 d!146199))

(declare-fun d!146203 () Bool)

(assert (=> d!146203 (= (validKeyInArray!0 l!3587) (and (not (= l!3587 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= l!3587 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1364160 d!146203))

(declare-fun d!146207 () Bool)

(assert (=> d!146207 (= (array_inv!33713 a!3742) (bvsge (size!45319 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!115192 d!146207))

(declare-fun d!146209 () Bool)

(declare-fun res!908037 () Bool)

(declare-fun e!773657 () Bool)

(assert (=> d!146209 (=> res!908037 e!773657)))

(assert (=> d!146209 (= res!908037 ((_ is Nil!31986) acc!759))))

(assert (=> d!146209 (= (noDuplicate!2433 acc!759) e!773657)))

(declare-fun b!1364242 () Bool)

(declare-fun e!773658 () Bool)

(assert (=> b!1364242 (= e!773657 e!773658)))

(declare-fun res!908038 () Bool)

(assert (=> b!1364242 (=> (not res!908038) (not e!773658))))

(assert (=> b!1364242 (= res!908038 (not (contains!9554 (t!46690 acc!759) (h!33194 acc!759))))))

(declare-fun b!1364243 () Bool)

(assert (=> b!1364243 (= e!773658 (noDuplicate!2433 (t!46690 acc!759)))))

(assert (= (and d!146209 (not res!908037)) b!1364242))

(assert (= (and b!1364242 res!908038) b!1364243))

(declare-fun m!1248965 () Bool)

(assert (=> b!1364242 m!1248965))

(declare-fun m!1248967 () Bool)

(assert (=> b!1364243 m!1248967))

(assert (=> b!1364159 d!146209))

(declare-fun d!146217 () Bool)

(declare-fun res!908039 () Bool)

(declare-fun e!773662 () Bool)

(assert (=> d!146217 (=> res!908039 e!773662)))

(assert (=> d!146217 (= res!908039 (bvsge from!3120 (size!45319 (array!92686 (store (arr!44768 a!3742) i!1404 l!3587) (size!45319 a!3742)))))))

(assert (=> d!146217 (= (arrayNoDuplicates!0 (array!92686 (store (arr!44768 a!3742) i!1404 l!3587) (size!45319 a!3742)) from!3120 acc!759) e!773662)))

(declare-fun b!1364244 () Bool)

(declare-fun e!773661 () Bool)

(assert (=> b!1364244 (= e!773661 (contains!9554 acc!759 (select (arr!44768 (array!92686 (store (arr!44768 a!3742) i!1404 l!3587) (size!45319 a!3742))) from!3120)))))

(declare-fun b!1364245 () Bool)

(declare-fun e!773660 () Bool)

(declare-fun call!65436 () Bool)

(assert (=> b!1364245 (= e!773660 call!65436)))

(declare-fun b!1364246 () Bool)

(assert (=> b!1364246 (= e!773660 call!65436)))

(declare-fun b!1364247 () Bool)

(declare-fun e!773659 () Bool)

(assert (=> b!1364247 (= e!773662 e!773659)))

(declare-fun res!908040 () Bool)

(assert (=> b!1364247 (=> (not res!908040) (not e!773659))))

(assert (=> b!1364247 (= res!908040 (not e!773661))))

(declare-fun res!908041 () Bool)

(assert (=> b!1364247 (=> (not res!908041) (not e!773661))))

(assert (=> b!1364247 (= res!908041 (validKeyInArray!0 (select (arr!44768 (array!92686 (store (arr!44768 a!3742) i!1404 l!3587) (size!45319 a!3742))) from!3120)))))

(declare-fun b!1364248 () Bool)

(assert (=> b!1364248 (= e!773659 e!773660)))

(declare-fun c!127545 () Bool)

(assert (=> b!1364248 (= c!127545 (validKeyInArray!0 (select (arr!44768 (array!92686 (store (arr!44768 a!3742) i!1404 l!3587) (size!45319 a!3742))) from!3120)))))

(declare-fun bm!65433 () Bool)

(assert (=> bm!65433 (= call!65436 (arrayNoDuplicates!0 (array!92686 (store (arr!44768 a!3742) i!1404 l!3587) (size!45319 a!3742)) (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127545 (Cons!31985 (select (arr!44768 (array!92686 (store (arr!44768 a!3742) i!1404 l!3587) (size!45319 a!3742))) from!3120) acc!759) acc!759)))))

(assert (= (and d!146217 (not res!908039)) b!1364247))

(assert (= (and b!1364247 res!908041) b!1364244))

(assert (= (and b!1364247 res!908040) b!1364248))

(assert (= (and b!1364248 c!127545) b!1364246))

(assert (= (and b!1364248 (not c!127545)) b!1364245))

(assert (= (or b!1364246 b!1364245) bm!65433))

(declare-fun m!1248969 () Bool)

(assert (=> b!1364244 m!1248969))

(assert (=> b!1364244 m!1248969))

(declare-fun m!1248971 () Bool)

(assert (=> b!1364244 m!1248971))

(assert (=> b!1364247 m!1248969))

(assert (=> b!1364247 m!1248969))

(declare-fun m!1248973 () Bool)

(assert (=> b!1364247 m!1248973))

(assert (=> b!1364248 m!1248969))

(assert (=> b!1364248 m!1248969))

(assert (=> b!1364248 m!1248973))

(assert (=> bm!65433 m!1248969))

(declare-fun m!1248975 () Bool)

(assert (=> bm!65433 m!1248975))

(assert (=> b!1364154 d!146217))

(check-sat (not b!1364244) (not b!1364242) (not b!1364203) (not bm!65432) (not b!1364247) (not bm!65433) (not b!1364204) (not b!1364217) (not bm!65431) (not d!146191) (not b!1364220) (not b!1364200) (not d!146197) (not b!1364210) (not b!1364248) (not b!1364221) (not b!1364243) (not b!1364216))
(check-sat)
(get-model)

(declare-fun d!146237 () Bool)

(declare-fun res!908080 () Bool)

(declare-fun e!773714 () Bool)

(assert (=> d!146237 (=> res!908080 e!773714)))

(assert (=> d!146237 (= res!908080 (bvsge (bvadd from!3120 #b00000000000000000000000000000001) (size!45319 (array!92686 (store (arr!44768 a!3742) i!1404 l!3587) (size!45319 a!3742)))))))

(assert (=> d!146237 (= (arrayNoDuplicates!0 (array!92686 (store (arr!44768 a!3742) i!1404 l!3587) (size!45319 a!3742)) (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127545 (Cons!31985 (select (arr!44768 (array!92686 (store (arr!44768 a!3742) i!1404 l!3587) (size!45319 a!3742))) from!3120) acc!759) acc!759)) e!773714)))

(declare-fun e!773713 () Bool)

(declare-fun b!1364307 () Bool)

(assert (=> b!1364307 (= e!773713 (contains!9554 (ite c!127545 (Cons!31985 (select (arr!44768 (array!92686 (store (arr!44768 a!3742) i!1404 l!3587) (size!45319 a!3742))) from!3120) acc!759) acc!759) (select (arr!44768 (array!92686 (store (arr!44768 a!3742) i!1404 l!3587) (size!45319 a!3742))) (bvadd from!3120 #b00000000000000000000000000000001))))))

(declare-fun b!1364308 () Bool)

(declare-fun e!773712 () Bool)

(declare-fun call!65447 () Bool)

(assert (=> b!1364308 (= e!773712 call!65447)))

(declare-fun b!1364309 () Bool)

(assert (=> b!1364309 (= e!773712 call!65447)))

(declare-fun b!1364310 () Bool)

(declare-fun e!773711 () Bool)

(assert (=> b!1364310 (= e!773714 e!773711)))

(declare-fun res!908081 () Bool)

(assert (=> b!1364310 (=> (not res!908081) (not e!773711))))

(assert (=> b!1364310 (= res!908081 (not e!773713))))

(declare-fun res!908082 () Bool)

(assert (=> b!1364310 (=> (not res!908082) (not e!773713))))

(assert (=> b!1364310 (= res!908082 (validKeyInArray!0 (select (arr!44768 (array!92686 (store (arr!44768 a!3742) i!1404 l!3587) (size!45319 a!3742))) (bvadd from!3120 #b00000000000000000000000000000001))))))

(declare-fun b!1364311 () Bool)

(assert (=> b!1364311 (= e!773711 e!773712)))

(declare-fun c!127556 () Bool)

(assert (=> b!1364311 (= c!127556 (validKeyInArray!0 (select (arr!44768 (array!92686 (store (arr!44768 a!3742) i!1404 l!3587) (size!45319 a!3742))) (bvadd from!3120 #b00000000000000000000000000000001))))))

(declare-fun bm!65444 () Bool)

(assert (=> bm!65444 (= call!65447 (arrayNoDuplicates!0 (array!92686 (store (arr!44768 a!3742) i!1404 l!3587) (size!45319 a!3742)) (bvadd from!3120 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!127556 (Cons!31985 (select (arr!44768 (array!92686 (store (arr!44768 a!3742) i!1404 l!3587) (size!45319 a!3742))) (bvadd from!3120 #b00000000000000000000000000000001)) (ite c!127545 (Cons!31985 (select (arr!44768 (array!92686 (store (arr!44768 a!3742) i!1404 l!3587) (size!45319 a!3742))) from!3120) acc!759) acc!759)) (ite c!127545 (Cons!31985 (select (arr!44768 (array!92686 (store (arr!44768 a!3742) i!1404 l!3587) (size!45319 a!3742))) from!3120) acc!759) acc!759))))))

(assert (= (and d!146237 (not res!908080)) b!1364310))

(assert (= (and b!1364310 res!908082) b!1364307))

(assert (= (and b!1364310 res!908081) b!1364311))

(assert (= (and b!1364311 c!127556) b!1364309))

(assert (= (and b!1364311 (not c!127556)) b!1364308))

(assert (= (or b!1364309 b!1364308) bm!65444))

(declare-fun m!1249033 () Bool)

(assert (=> b!1364307 m!1249033))

(assert (=> b!1364307 m!1249033))

(declare-fun m!1249035 () Bool)

(assert (=> b!1364307 m!1249035))

(assert (=> b!1364310 m!1249033))

(assert (=> b!1364310 m!1249033))

(declare-fun m!1249037 () Bool)

(assert (=> b!1364310 m!1249037))

(assert (=> b!1364311 m!1249033))

(assert (=> b!1364311 m!1249033))

(assert (=> b!1364311 m!1249037))

(assert (=> bm!65444 m!1249033))

(declare-fun m!1249039 () Bool)

(assert (=> bm!65444 m!1249039))

(assert (=> bm!65433 d!146237))

(declare-fun d!146239 () Bool)

(declare-fun res!908083 () Bool)

(declare-fun e!773715 () Bool)

(assert (=> d!146239 (=> res!908083 e!773715)))

(assert (=> d!146239 (= res!908083 ((_ is Nil!31986) (t!46690 acc!759)))))

(assert (=> d!146239 (= (noDuplicate!2433 (t!46690 acc!759)) e!773715)))

(declare-fun b!1364312 () Bool)

(declare-fun e!773716 () Bool)

(assert (=> b!1364312 (= e!773715 e!773716)))

(declare-fun res!908084 () Bool)

(assert (=> b!1364312 (=> (not res!908084) (not e!773716))))

(assert (=> b!1364312 (= res!908084 (not (contains!9554 (t!46690 (t!46690 acc!759)) (h!33194 (t!46690 acc!759)))))))

(declare-fun b!1364313 () Bool)

(assert (=> b!1364313 (= e!773716 (noDuplicate!2433 (t!46690 (t!46690 acc!759))))))

(assert (= (and d!146239 (not res!908083)) b!1364312))

(assert (= (and b!1364312 res!908084) b!1364313))

(declare-fun m!1249041 () Bool)

(assert (=> b!1364312 m!1249041))

(declare-fun m!1249043 () Bool)

(assert (=> b!1364313 m!1249043))

(assert (=> b!1364243 d!146239))

(declare-fun d!146241 () Bool)

(assert (=> d!146241 (= (validKeyInArray!0 (select (arr!44768 (array!92686 (store (arr!44768 a!3742) i!1404 l!3587) (size!45319 a!3742))) from!3120)) (and (not (= (select (arr!44768 (array!92686 (store (arr!44768 a!3742) i!1404 l!3587) (size!45319 a!3742))) from!3120) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44768 (array!92686 (store (arr!44768 a!3742) i!1404 l!3587) (size!45319 a!3742))) from!3120) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1364248 d!146241))

(declare-fun d!146243 () Bool)

(declare-fun lt!600969 () Bool)

(assert (=> d!146243 (= lt!600969 (select (content!715 (t!46690 acc!759)) (h!33194 acc!759)))))

(declare-fun e!773717 () Bool)

(assert (=> d!146243 (= lt!600969 e!773717)))

(declare-fun res!908086 () Bool)

(assert (=> d!146243 (=> (not res!908086) (not e!773717))))

(assert (=> d!146243 (= res!908086 ((_ is Cons!31985) (t!46690 acc!759)))))

(assert (=> d!146243 (= (contains!9554 (t!46690 acc!759) (h!33194 acc!759)) lt!600969)))

(declare-fun b!1364314 () Bool)

(declare-fun e!773718 () Bool)

(assert (=> b!1364314 (= e!773717 e!773718)))

(declare-fun res!908085 () Bool)

(assert (=> b!1364314 (=> res!908085 e!773718)))

(assert (=> b!1364314 (= res!908085 (= (h!33194 (t!46690 acc!759)) (h!33194 acc!759)))))

(declare-fun b!1364315 () Bool)

(assert (=> b!1364315 (= e!773718 (contains!9554 (t!46690 (t!46690 acc!759)) (h!33194 acc!759)))))

(assert (= (and d!146243 res!908086) b!1364314))

(assert (= (and b!1364314 (not res!908085)) b!1364315))

(declare-fun m!1249045 () Bool)

(assert (=> d!146243 m!1249045))

(declare-fun m!1249047 () Bool)

(assert (=> d!146243 m!1249047))

(declare-fun m!1249049 () Bool)

(assert (=> b!1364315 m!1249049))

(assert (=> b!1364242 d!146243))

(declare-fun d!146245 () Bool)

(declare-fun lt!600970 () Bool)

(assert (=> d!146245 (= lt!600970 (select (content!715 Nil!31986) (select (arr!44768 a!3742) #b00000000000000000000000000000000)))))

(declare-fun e!773719 () Bool)

(assert (=> d!146245 (= lt!600970 e!773719)))

(declare-fun res!908088 () Bool)

(assert (=> d!146245 (=> (not res!908088) (not e!773719))))

(assert (=> d!146245 (= res!908088 ((_ is Cons!31985) Nil!31986))))

(assert (=> d!146245 (= (contains!9554 Nil!31986 (select (arr!44768 a!3742) #b00000000000000000000000000000000)) lt!600970)))

(declare-fun b!1364316 () Bool)

(declare-fun e!773720 () Bool)

(assert (=> b!1364316 (= e!773719 e!773720)))

(declare-fun res!908087 () Bool)

(assert (=> b!1364316 (=> res!908087 e!773720)))

(assert (=> b!1364316 (= res!908087 (= (h!33194 Nil!31986) (select (arr!44768 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1364317 () Bool)

(assert (=> b!1364317 (= e!773720 (contains!9554 (t!46690 Nil!31986) (select (arr!44768 a!3742) #b00000000000000000000000000000000)))))

(assert (= (and d!146245 res!908088) b!1364316))

(assert (= (and b!1364316 (not res!908087)) b!1364317))

(declare-fun m!1249051 () Bool)

(assert (=> d!146245 m!1249051))

(assert (=> d!146245 m!1248919))

(declare-fun m!1249053 () Bool)

(assert (=> d!146245 m!1249053))

(assert (=> b!1364317 m!1248919))

(declare-fun m!1249055 () Bool)

(assert (=> b!1364317 m!1249055))

(assert (=> b!1364200 d!146245))

(declare-fun d!146247 () Bool)

(declare-fun c!127559 () Bool)

(assert (=> d!146247 (= c!127559 ((_ is Nil!31986) acc!759))))

(declare-fun e!773723 () (InoxSet (_ BitVec 64)))

(assert (=> d!146247 (= (content!715 acc!759) e!773723)))

(declare-fun b!1364322 () Bool)

(assert (=> b!1364322 (= e!773723 ((as const (Array (_ BitVec 64) Bool)) false))))

(declare-fun b!1364323 () Bool)

(assert (=> b!1364323 (= e!773723 ((_ map or) (store ((as const (Array (_ BitVec 64) Bool)) false) (h!33194 acc!759) true) (content!715 (t!46690 acc!759))))))

(assert (= (and d!146247 c!127559) b!1364322))

(assert (= (and d!146247 (not c!127559)) b!1364323))

(declare-fun m!1249057 () Bool)

(assert (=> b!1364323 m!1249057))

(assert (=> b!1364323 m!1249045))

(assert (=> d!146197 d!146247))

(declare-fun lt!600971 () Bool)

(declare-fun d!146249 () Bool)

(assert (=> d!146249 (= lt!600971 (select (content!715 acc!759) (select (arr!44768 a!3742) from!3120)))))

(declare-fun e!773724 () Bool)

(assert (=> d!146249 (= lt!600971 e!773724)))

(declare-fun res!908090 () Bool)

(assert (=> d!146249 (=> (not res!908090) (not e!773724))))

(assert (=> d!146249 (= res!908090 ((_ is Cons!31985) acc!759))))

(assert (=> d!146249 (= (contains!9554 acc!759 (select (arr!44768 a!3742) from!3120)) lt!600971)))

(declare-fun b!1364324 () Bool)

(declare-fun e!773725 () Bool)

(assert (=> b!1364324 (= e!773724 e!773725)))

(declare-fun res!908089 () Bool)

(assert (=> b!1364324 (=> res!908089 e!773725)))

(assert (=> b!1364324 (= res!908089 (= (h!33194 acc!759) (select (arr!44768 a!3742) from!3120)))))

(declare-fun b!1364325 () Bool)

(assert (=> b!1364325 (= e!773725 (contains!9554 (t!46690 acc!759) (select (arr!44768 a!3742) from!3120)))))

(assert (= (and d!146249 res!908090) b!1364324))

(assert (= (and b!1364324 (not res!908089)) b!1364325))

(assert (=> d!146249 m!1248927))

(assert (=> d!146249 m!1248937))

(declare-fun m!1249059 () Bool)

(assert (=> d!146249 m!1249059))

(assert (=> b!1364325 m!1248937))

(declare-fun m!1249061 () Bool)

(assert (=> b!1364325 m!1249061))

(assert (=> b!1364217 d!146249))

(declare-fun d!146251 () Bool)

(declare-fun lt!600972 () Bool)

(assert (=> d!146251 (= lt!600972 (select (content!715 (t!46690 acc!759)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!773726 () Bool)

(assert (=> d!146251 (= lt!600972 e!773726)))

(declare-fun res!908092 () Bool)

(assert (=> d!146251 (=> (not res!908092) (not e!773726))))

(assert (=> d!146251 (= res!908092 ((_ is Cons!31985) (t!46690 acc!759)))))

(assert (=> d!146251 (= (contains!9554 (t!46690 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000) lt!600972)))

(declare-fun b!1364326 () Bool)

(declare-fun e!773727 () Bool)

(assert (=> b!1364326 (= e!773726 e!773727)))

(declare-fun res!908091 () Bool)

(assert (=> b!1364326 (=> res!908091 e!773727)))

(assert (=> b!1364326 (= res!908091 (= (h!33194 (t!46690 acc!759)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1364327 () Bool)

(assert (=> b!1364327 (= e!773727 (contains!9554 (t!46690 (t!46690 acc!759)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146251 res!908092) b!1364326))

(assert (= (and b!1364326 (not res!908091)) b!1364327))

(assert (=> d!146251 m!1249045))

(declare-fun m!1249063 () Bool)

(assert (=> d!146251 m!1249063))

(declare-fun m!1249065 () Bool)

(assert (=> b!1364327 m!1249065))

(assert (=> b!1364216 d!146251))

(declare-fun d!146253 () Bool)

(declare-fun lt!600973 () Bool)

(assert (=> d!146253 (= lt!600973 (select (content!715 acc!759) (select (arr!44768 (array!92686 (store (arr!44768 a!3742) i!1404 l!3587) (size!45319 a!3742))) from!3120)))))

(declare-fun e!773728 () Bool)

(assert (=> d!146253 (= lt!600973 e!773728)))

(declare-fun res!908094 () Bool)

(assert (=> d!146253 (=> (not res!908094) (not e!773728))))

(assert (=> d!146253 (= res!908094 ((_ is Cons!31985) acc!759))))

(assert (=> d!146253 (= (contains!9554 acc!759 (select (arr!44768 (array!92686 (store (arr!44768 a!3742) i!1404 l!3587) (size!45319 a!3742))) from!3120)) lt!600973)))

(declare-fun b!1364328 () Bool)

(declare-fun e!773729 () Bool)

(assert (=> b!1364328 (= e!773728 e!773729)))

(declare-fun res!908093 () Bool)

(assert (=> b!1364328 (=> res!908093 e!773729)))

(assert (=> b!1364328 (= res!908093 (= (h!33194 acc!759) (select (arr!44768 (array!92686 (store (arr!44768 a!3742) i!1404 l!3587) (size!45319 a!3742))) from!3120)))))

(declare-fun b!1364329 () Bool)

(assert (=> b!1364329 (= e!773729 (contains!9554 (t!46690 acc!759) (select (arr!44768 (array!92686 (store (arr!44768 a!3742) i!1404 l!3587) (size!45319 a!3742))) from!3120)))))

(assert (= (and d!146253 res!908094) b!1364328))

(assert (= (and b!1364328 (not res!908093)) b!1364329))

(assert (=> d!146253 m!1248927))

(assert (=> d!146253 m!1248969))

(declare-fun m!1249067 () Bool)

(assert (=> d!146253 m!1249067))

(assert (=> b!1364329 m!1248969))

(declare-fun m!1249069 () Bool)

(assert (=> b!1364329 m!1249069))

(assert (=> b!1364244 d!146253))

(declare-fun d!146255 () Bool)

(assert (=> d!146255 (= (validKeyInArray!0 (select (arr!44768 a!3742) #b00000000000000000000000000000000)) (and (not (= (select (arr!44768 a!3742) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44768 a!3742) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1364203 d!146255))

(declare-fun d!146257 () Bool)

(assert (=> d!146257 (= (validKeyInArray!0 (select (arr!44768 a!3742) from!3120)) (and (not (= (select (arr!44768 a!3742) from!3120) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44768 a!3742) from!3120) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1364220 d!146257))

(declare-fun d!146259 () Bool)

(declare-fun lt!600974 () Bool)

(assert (=> d!146259 (= lt!600974 (select (content!715 (t!46690 acc!759)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!773730 () Bool)

(assert (=> d!146259 (= lt!600974 e!773730)))

(declare-fun res!908096 () Bool)

(assert (=> d!146259 (=> (not res!908096) (not e!773730))))

(assert (=> d!146259 (= res!908096 ((_ is Cons!31985) (t!46690 acc!759)))))

(assert (=> d!146259 (= (contains!9554 (t!46690 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000) lt!600974)))

(declare-fun b!1364330 () Bool)

(declare-fun e!773731 () Bool)

(assert (=> b!1364330 (= e!773730 e!773731)))

(declare-fun res!908095 () Bool)

(assert (=> b!1364330 (=> res!908095 e!773731)))

(assert (=> b!1364330 (= res!908095 (= (h!33194 (t!46690 acc!759)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1364331 () Bool)

(assert (=> b!1364331 (= e!773731 (contains!9554 (t!46690 (t!46690 acc!759)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146259 res!908096) b!1364330))

(assert (= (and b!1364330 (not res!908095)) b!1364331))

(assert (=> d!146259 m!1249045))

(declare-fun m!1249071 () Bool)

(assert (=> d!146259 m!1249071))

(declare-fun m!1249073 () Bool)

(assert (=> b!1364331 m!1249073))

(assert (=> b!1364210 d!146259))

(declare-fun d!146261 () Bool)

(declare-fun res!908097 () Bool)

(declare-fun e!773735 () Bool)

(assert (=> d!146261 (=> res!908097 e!773735)))

(assert (=> d!146261 (= res!908097 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!45319 a!3742)))))

(assert (=> d!146261 (= (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127543 (Cons!31985 (select (arr!44768 a!3742) #b00000000000000000000000000000000) Nil!31986) Nil!31986)) e!773735)))

(declare-fun b!1364332 () Bool)

(declare-fun e!773734 () Bool)

(assert (=> b!1364332 (= e!773734 (contains!9554 (ite c!127543 (Cons!31985 (select (arr!44768 a!3742) #b00000000000000000000000000000000) Nil!31986) Nil!31986) (select (arr!44768 a!3742) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1364333 () Bool)

(declare-fun e!773733 () Bool)

(declare-fun call!65448 () Bool)

(assert (=> b!1364333 (= e!773733 call!65448)))

(declare-fun b!1364334 () Bool)

(assert (=> b!1364334 (= e!773733 call!65448)))

(declare-fun b!1364335 () Bool)

(declare-fun e!773732 () Bool)

(assert (=> b!1364335 (= e!773735 e!773732)))

(declare-fun res!908098 () Bool)

(assert (=> b!1364335 (=> (not res!908098) (not e!773732))))

(assert (=> b!1364335 (= res!908098 (not e!773734))))

(declare-fun res!908099 () Bool)

(assert (=> b!1364335 (=> (not res!908099) (not e!773734))))

(assert (=> b!1364335 (= res!908099 (validKeyInArray!0 (select (arr!44768 a!3742) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1364336 () Bool)

(assert (=> b!1364336 (= e!773732 e!773733)))

(declare-fun c!127560 () Bool)

(assert (=> b!1364336 (= c!127560 (validKeyInArray!0 (select (arr!44768 a!3742) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!65445 () Bool)

(assert (=> bm!65445 (= call!65448 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!127560 (Cons!31985 (select (arr!44768 a!3742) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!127543 (Cons!31985 (select (arr!44768 a!3742) #b00000000000000000000000000000000) Nil!31986) Nil!31986)) (ite c!127543 (Cons!31985 (select (arr!44768 a!3742) #b00000000000000000000000000000000) Nil!31986) Nil!31986))))))

(assert (= (and d!146261 (not res!908097)) b!1364335))

(assert (= (and b!1364335 res!908099) b!1364332))

(assert (= (and b!1364335 res!908098) b!1364336))

(assert (= (and b!1364336 c!127560) b!1364334))

(assert (= (and b!1364336 (not c!127560)) b!1364333))

(assert (= (or b!1364334 b!1364333) bm!65445))

(declare-fun m!1249075 () Bool)

(assert (=> b!1364332 m!1249075))

(assert (=> b!1364332 m!1249075))

(declare-fun m!1249077 () Bool)

(assert (=> b!1364332 m!1249077))

(assert (=> b!1364335 m!1249075))

(assert (=> b!1364335 m!1249075))

(declare-fun m!1249079 () Bool)

(assert (=> b!1364335 m!1249079))

(assert (=> b!1364336 m!1249075))

(assert (=> b!1364336 m!1249075))

(assert (=> b!1364336 m!1249079))

(assert (=> bm!65445 m!1249075))

(declare-fun m!1249081 () Bool)

(assert (=> bm!65445 m!1249081))

(assert (=> bm!65431 d!146261))

(declare-fun d!146263 () Bool)

(declare-fun res!908100 () Bool)

(declare-fun e!773739 () Bool)

(assert (=> d!146263 (=> res!908100 e!773739)))

(assert (=> d!146263 (= res!908100 (bvsge (bvadd from!3120 #b00000000000000000000000000000001) (size!45319 a!3742)))))

(assert (=> d!146263 (= (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127544 (Cons!31985 (select (arr!44768 a!3742) from!3120) acc!759) acc!759)) e!773739)))

(declare-fun e!773738 () Bool)

(declare-fun b!1364337 () Bool)

(assert (=> b!1364337 (= e!773738 (contains!9554 (ite c!127544 (Cons!31985 (select (arr!44768 a!3742) from!3120) acc!759) acc!759) (select (arr!44768 a!3742) (bvadd from!3120 #b00000000000000000000000000000001))))))

(declare-fun b!1364338 () Bool)

(declare-fun e!773737 () Bool)

(declare-fun call!65449 () Bool)

(assert (=> b!1364338 (= e!773737 call!65449)))

(declare-fun b!1364339 () Bool)

(assert (=> b!1364339 (= e!773737 call!65449)))

(declare-fun b!1364340 () Bool)

(declare-fun e!773736 () Bool)

(assert (=> b!1364340 (= e!773739 e!773736)))

(declare-fun res!908101 () Bool)

(assert (=> b!1364340 (=> (not res!908101) (not e!773736))))

(assert (=> b!1364340 (= res!908101 (not e!773738))))

(declare-fun res!908102 () Bool)

(assert (=> b!1364340 (=> (not res!908102) (not e!773738))))

(assert (=> b!1364340 (= res!908102 (validKeyInArray!0 (select (arr!44768 a!3742) (bvadd from!3120 #b00000000000000000000000000000001))))))

(declare-fun b!1364341 () Bool)

(assert (=> b!1364341 (= e!773736 e!773737)))

(declare-fun c!127561 () Bool)

(assert (=> b!1364341 (= c!127561 (validKeyInArray!0 (select (arr!44768 a!3742) (bvadd from!3120 #b00000000000000000000000000000001))))))

(declare-fun bm!65446 () Bool)

(assert (=> bm!65446 (= call!65449 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!127561 (Cons!31985 (select (arr!44768 a!3742) (bvadd from!3120 #b00000000000000000000000000000001)) (ite c!127544 (Cons!31985 (select (arr!44768 a!3742) from!3120) acc!759) acc!759)) (ite c!127544 (Cons!31985 (select (arr!44768 a!3742) from!3120) acc!759) acc!759))))))

(assert (= (and d!146263 (not res!908100)) b!1364340))

(assert (= (and b!1364340 res!908102) b!1364337))

(assert (= (and b!1364340 res!908101) b!1364341))

(assert (= (and b!1364341 c!127561) b!1364339))

(assert (= (and b!1364341 (not c!127561)) b!1364338))

(assert (= (or b!1364339 b!1364338) bm!65446))

(declare-fun m!1249083 () Bool)

(assert (=> b!1364337 m!1249083))

(assert (=> b!1364337 m!1249083))

(declare-fun m!1249085 () Bool)

(assert (=> b!1364337 m!1249085))

(assert (=> b!1364340 m!1249083))

(assert (=> b!1364340 m!1249083))

(declare-fun m!1249087 () Bool)

(assert (=> b!1364340 m!1249087))

(assert (=> b!1364341 m!1249083))

(assert (=> b!1364341 m!1249083))

(assert (=> b!1364341 m!1249087))

(assert (=> bm!65446 m!1249083))

(declare-fun m!1249089 () Bool)

(assert (=> bm!65446 m!1249089))

(assert (=> bm!65432 d!146263))

(assert (=> b!1364247 d!146241))

(assert (=> b!1364204 d!146255))

(assert (=> b!1364221 d!146257))

(assert (=> d!146191 d!146247))

(check-sat (not b!1364310) (not b!1364340) (not bm!65444) (not b!1364341) (not d!146249) (not b!1364332) (not b!1364331) (not b!1364315) (not b!1364312) (not d!146245) (not b!1364323) (not b!1364317) (not bm!65445) (not b!1364336) (not b!1364325) (not b!1364335) (not b!1364307) (not bm!65446) (not b!1364337) (not b!1364327) (not b!1364329) (not b!1364311) (not b!1364313) (not d!146259) (not d!146253) (not d!146243) (not d!146251))
(check-sat)
