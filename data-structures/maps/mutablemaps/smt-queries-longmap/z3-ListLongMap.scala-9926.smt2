; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117370 () Bool)

(assert start!117370)

(declare-fun res!922212 () Bool)

(declare-fun e!781675 () Bool)

(assert (=> start!117370 (=> (not res!922212) (not e!781675))))

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93882 0))(
  ( (array!93883 (arr!45335 (Array (_ BitVec 32) (_ BitVec 64))) (size!45886 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93882)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117370 (= res!922212 (and (bvslt (size!45886 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45886 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvslt pivot!64 to!184)))))

(assert (=> start!117370 e!781675))

(declare-fun array_inv!34280 (array!93882) Bool)

(assert (=> start!117370 (array_inv!34280 a!4010)))

(assert (=> start!117370 true))

(declare-fun b!1379665 () Bool)

(declare-fun isPivot!0 (array!93882 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379665 (= e!781675 (not (isPivot!0 a!4010 from!3388 to!184 from!3388)))))

(assert (= (and start!117370 res!922212) b!1379665))

(declare-fun m!1264945 () Bool)

(assert (=> start!117370 m!1264945))

(declare-fun m!1264947 () Bool)

(assert (=> b!1379665 m!1264947))

(check-sat (not b!1379665) (not start!117370))
(check-sat)
(get-model)

(declare-fun d!148553 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93882 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!148553 (= (isPivot!0 a!4010 from!3388 to!184 from!3388) (= (bvadd (arrayCountValidKeys!0 a!4010 from!3388 from!3388) (arrayCountValidKeys!0 a!4010 from!3388 to!184)) (arrayCountValidKeys!0 a!4010 from!3388 to!184)))))

(declare-fun bs!39776 () Bool)

(assert (= bs!39776 d!148553))

(declare-fun m!1264953 () Bool)

(assert (=> bs!39776 m!1264953))

(declare-fun m!1264955 () Bool)

(assert (=> bs!39776 m!1264955))

(assert (=> bs!39776 m!1264955))

(assert (=> b!1379665 d!148553))

(declare-fun d!148555 () Bool)

(assert (=> d!148555 (= (array_inv!34280 a!4010) (bvsge (size!45886 a!4010) #b00000000000000000000000000000000))))

(assert (=> start!117370 d!148555))

(check-sat (not d!148553))
(check-sat)
(get-model)

(declare-fun b!1379677 () Bool)

(declare-fun e!781687 () (_ BitVec 32))

(declare-fun call!66087 () (_ BitVec 32))

(assert (=> b!1379677 (= e!781687 call!66087)))

(declare-fun b!1379678 () Bool)

(declare-fun e!781688 () (_ BitVec 32))

(assert (=> b!1379678 (= e!781688 e!781687)))

(declare-fun c!128173 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379678 (= c!128173 (validKeyInArray!0 (select (arr!45335 a!4010) from!3388)))))

(declare-fun b!1379679 () Bool)

(assert (=> b!1379679 (= e!781688 #b00000000000000000000000000000000)))

(declare-fun bm!66084 () Bool)

(assert (=> bm!66084 (= call!66087 (arrayCountValidKeys!0 a!4010 (bvadd from!3388 #b00000000000000000000000000000001) from!3388))))

(declare-fun d!148565 () Bool)

(declare-fun lt!607684 () (_ BitVec 32))

(assert (=> d!148565 (and (bvsge lt!607684 #b00000000000000000000000000000000) (bvsle lt!607684 (bvsub (size!45886 a!4010) from!3388)))))

(assert (=> d!148565 (= lt!607684 e!781688)))

(declare-fun c!128174 () Bool)

(assert (=> d!148565 (= c!128174 (bvsge from!3388 from!3388))))

(assert (=> d!148565 (and (bvsle from!3388 from!3388) (bvsge from!3388 #b00000000000000000000000000000000) (bvsle from!3388 (size!45886 a!4010)))))

(assert (=> d!148565 (= (arrayCountValidKeys!0 a!4010 from!3388 from!3388) lt!607684)))

(declare-fun b!1379680 () Bool)

(assert (=> b!1379680 (= e!781687 (bvadd #b00000000000000000000000000000001 call!66087))))

(assert (= (and d!148565 c!128174) b!1379679))

(assert (= (and d!148565 (not c!128174)) b!1379678))

(assert (= (and b!1379678 c!128173) b!1379680))

(assert (= (and b!1379678 (not c!128173)) b!1379677))

(assert (= (or b!1379680 b!1379677) bm!66084))

(declare-fun m!1264965 () Bool)

(assert (=> b!1379678 m!1264965))

(assert (=> b!1379678 m!1264965))

(declare-fun m!1264967 () Bool)

(assert (=> b!1379678 m!1264967))

(declare-fun m!1264969 () Bool)

(assert (=> bm!66084 m!1264969))

(assert (=> d!148553 d!148565))

(declare-fun b!1379681 () Bool)

(declare-fun e!781689 () (_ BitVec 32))

(declare-fun call!66088 () (_ BitVec 32))

(assert (=> b!1379681 (= e!781689 call!66088)))

(declare-fun b!1379682 () Bool)

(declare-fun e!781690 () (_ BitVec 32))

(assert (=> b!1379682 (= e!781690 e!781689)))

(declare-fun c!128175 () Bool)

(assert (=> b!1379682 (= c!128175 (validKeyInArray!0 (select (arr!45335 a!4010) from!3388)))))

(declare-fun b!1379683 () Bool)

(assert (=> b!1379683 (= e!781690 #b00000000000000000000000000000000)))

(declare-fun bm!66085 () Bool)

(assert (=> bm!66085 (= call!66088 (arrayCountValidKeys!0 a!4010 (bvadd from!3388 #b00000000000000000000000000000001) to!184))))

(declare-fun d!148569 () Bool)

(declare-fun lt!607685 () (_ BitVec 32))

(assert (=> d!148569 (and (bvsge lt!607685 #b00000000000000000000000000000000) (bvsle lt!607685 (bvsub (size!45886 a!4010) from!3388)))))

(assert (=> d!148569 (= lt!607685 e!781690)))

(declare-fun c!128176 () Bool)

(assert (=> d!148569 (= c!128176 (bvsge from!3388 to!184))))

(assert (=> d!148569 (and (bvsle from!3388 to!184) (bvsge from!3388 #b00000000000000000000000000000000) (bvsle to!184 (size!45886 a!4010)))))

(assert (=> d!148569 (= (arrayCountValidKeys!0 a!4010 from!3388 to!184) lt!607685)))

(declare-fun b!1379684 () Bool)

(assert (=> b!1379684 (= e!781689 (bvadd #b00000000000000000000000000000001 call!66088))))

(assert (= (and d!148569 c!128176) b!1379683))

(assert (= (and d!148569 (not c!128176)) b!1379682))

(assert (= (and b!1379682 c!128175) b!1379684))

(assert (= (and b!1379682 (not c!128175)) b!1379681))

(assert (= (or b!1379684 b!1379681) bm!66085))

(assert (=> b!1379682 m!1264965))

(assert (=> b!1379682 m!1264965))

(assert (=> b!1379682 m!1264967))

(declare-fun m!1264971 () Bool)

(assert (=> bm!66085 m!1264971))

(assert (=> d!148553 d!148569))

(check-sat (not b!1379682) (not bm!66084) (not b!1379678) (not bm!66085))
(check-sat)
