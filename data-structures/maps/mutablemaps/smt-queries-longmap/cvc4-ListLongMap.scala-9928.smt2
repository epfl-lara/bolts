; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117426 () Bool)

(assert start!117426)

(declare-fun res!922251 () Bool)

(declare-fun e!781780 () Bool)

(assert (=> start!117426 (=> (not res!922251) (not e!781780))))

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93902 0))(
  ( (array!93903 (arr!45342 (Array (_ BitVec 32) (_ BitVec 64))) (size!45893 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93902)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117426 (= res!922251 (and (bvslt (size!45893 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45893 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvsge pivot!64 to!184)))))

(assert (=> start!117426 e!781780))

(declare-fun array_inv!34287 (array!93902) Bool)

(assert (=> start!117426 (array_inv!34287 a!4010)))

(assert (=> start!117426 true))

(declare-fun b!1379812 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93902 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379812 (= e!781780 (not (= (bvadd (arrayCountValidKeys!0 a!4010 from!3388 pivot!64) (arrayCountValidKeys!0 a!4010 pivot!64 to!184)) (arrayCountValidKeys!0 a!4010 from!3388 to!184))))))

(assert (= (and start!117426 res!922251) b!1379812))

(declare-fun m!1265101 () Bool)

(assert (=> start!117426 m!1265101))

(declare-fun m!1265103 () Bool)

(assert (=> b!1379812 m!1265103))

(declare-fun m!1265105 () Bool)

(assert (=> b!1379812 m!1265105))

(declare-fun m!1265107 () Bool)

(assert (=> b!1379812 m!1265107))

(push 1)

(assert (not b!1379812))

(assert (not start!117426))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1379861 () Bool)

(declare-fun e!781806 () (_ BitVec 32))

(declare-fun e!781807 () (_ BitVec 32))

(assert (=> b!1379861 (= e!781806 e!781807)))

(declare-fun c!128247 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379861 (= c!128247 (validKeyInArray!0 (select (arr!45342 a!4010) from!3388)))))

(declare-fun d!148631 () Bool)

(declare-fun lt!607739 () (_ BitVec 32))

(assert (=> d!148631 (and (bvsge lt!607739 #b00000000000000000000000000000000) (bvsle lt!607739 (bvsub (size!45893 a!4010) from!3388)))))

(assert (=> d!148631 (= lt!607739 e!781806)))

(declare-fun c!128248 () Bool)

(assert (=> d!148631 (= c!128248 (bvsge from!3388 pivot!64))))

(assert (=> d!148631 (and (bvsle from!3388 pivot!64) (bvsge from!3388 #b00000000000000000000000000000000) (bvsle pivot!64 (size!45893 a!4010)))))

(assert (=> d!148631 (= (arrayCountValidKeys!0 a!4010 from!3388 pivot!64) lt!607739)))

(declare-fun b!1379862 () Bool)

(declare-fun call!66124 () (_ BitVec 32))

(assert (=> b!1379862 (= e!781807 (bvadd #b00000000000000000000000000000001 call!66124))))

(declare-fun b!1379863 () Bool)

(assert (=> b!1379863 (= e!781807 call!66124)))

(declare-fun bm!66121 () Bool)

(assert (=> bm!66121 (= call!66124 (arrayCountValidKeys!0 a!4010 (bvadd from!3388 #b00000000000000000000000000000001) pivot!64))))

(declare-fun b!1379864 () Bool)

(assert (=> b!1379864 (= e!781806 #b00000000000000000000000000000000)))

(assert (= (and d!148631 c!128248) b!1379864))

(assert (= (and d!148631 (not c!128248)) b!1379861))

(assert (= (and b!1379861 c!128247) b!1379862))

(assert (= (and b!1379861 (not c!128247)) b!1379863))

(assert (= (or b!1379862 b!1379863) bm!66121))

(declare-fun m!1265137 () Bool)

(assert (=> b!1379861 m!1265137))

(assert (=> b!1379861 m!1265137))

(declare-fun m!1265139 () Bool)

(assert (=> b!1379861 m!1265139))

(declare-fun m!1265141 () Bool)

(assert (=> bm!66121 m!1265141))

(assert (=> b!1379812 d!148631))

(declare-fun b!1379865 () Bool)

(declare-fun e!781808 () (_ BitVec 32))

(declare-fun e!781809 () (_ BitVec 32))

(assert (=> b!1379865 (= e!781808 e!781809)))

(declare-fun c!128249 () Bool)

(assert (=> b!1379865 (= c!128249 (validKeyInArray!0 (select (arr!45342 a!4010) pivot!64)))))

(declare-fun d!148641 () Bool)

(declare-fun lt!607740 () (_ BitVec 32))

(assert (=> d!148641 (and (bvsge lt!607740 #b00000000000000000000000000000000) (bvsle lt!607740 (bvsub (size!45893 a!4010) pivot!64)))))

(assert (=> d!148641 (= lt!607740 e!781808)))

(declare-fun c!128250 () Bool)

(assert (=> d!148641 (= c!128250 (bvsge pivot!64 to!184))))

(assert (=> d!148641 (and (bvsle pivot!64 to!184) (bvsge pivot!64 #b00000000000000000000000000000000) (bvsle to!184 (size!45893 a!4010)))))

(assert (=> d!148641 (= (arrayCountValidKeys!0 a!4010 pivot!64 to!184) lt!607740)))

(declare-fun b!1379866 () Bool)

(declare-fun call!66125 () (_ BitVec 32))

(assert (=> b!1379866 (= e!781809 (bvadd #b00000000000000000000000000000001 call!66125))))

(declare-fun b!1379867 () Bool)

(assert (=> b!1379867 (= e!781809 call!66125)))

(declare-fun bm!66122 () Bool)

(assert (=> bm!66122 (= call!66125 (arrayCountValidKeys!0 a!4010 (bvadd pivot!64 #b00000000000000000000000000000001) to!184))))

(declare-fun b!1379868 () Bool)

(assert (=> b!1379868 (= e!781808 #b00000000000000000000000000000000)))

(assert (= (and d!148641 c!128250) b!1379868))

(assert (= (and d!148641 (not c!128250)) b!1379865))

(assert (= (and b!1379865 c!128249) b!1379866))

(assert (= (and b!1379865 (not c!128249)) b!1379867))

(assert (= (or b!1379866 b!1379867) bm!66122))

(declare-fun m!1265143 () Bool)

(assert (=> b!1379865 m!1265143))

(assert (=> b!1379865 m!1265143))

(declare-fun m!1265145 () Bool)

(assert (=> b!1379865 m!1265145))

(declare-fun m!1265147 () Bool)

(assert (=> bm!66122 m!1265147))

(assert (=> b!1379812 d!148641))

(declare-fun b!1379869 () Bool)

(declare-fun e!781810 () (_ BitVec 32))

(declare-fun e!781811 () (_ BitVec 32))

(assert (=> b!1379869 (= e!781810 e!781811)))

(declare-fun c!128251 () Bool)

(assert (=> b!1379869 (= c!128251 (validKeyInArray!0 (select (arr!45342 a!4010) from!3388)))))

(declare-fun d!148643 () Bool)

(declare-fun lt!607741 () (_ BitVec 32))

(assert (=> d!148643 (and (bvsge lt!607741 #b00000000000000000000000000000000) (bvsle lt!607741 (bvsub (size!45893 a!4010) from!3388)))))

(assert (=> d!148643 (= lt!607741 e!781810)))

(declare-fun c!128252 () Bool)

(assert (=> d!148643 (= c!128252 (bvsge from!3388 to!184))))

(assert (=> d!148643 (and (bvsle from!3388 to!184) (bvsge from!3388 #b00000000000000000000000000000000) (bvsle to!184 (size!45893 a!4010)))))

(assert (=> d!148643 (= (arrayCountValidKeys!0 a!4010 from!3388 to!184) lt!607741)))

(declare-fun b!1379870 () Bool)

(declare-fun call!66126 () (_ BitVec 32))

(assert (=> b!1379870 (= e!781811 (bvadd #b00000000000000000000000000000001 call!66126))))

(declare-fun b!1379871 () Bool)

(assert (=> b!1379871 (= e!781811 call!66126)))

(declare-fun bm!66123 () Bool)

(assert (=> bm!66123 (= call!66126 (arrayCountValidKeys!0 a!4010 (bvadd from!3388 #b00000000000000000000000000000001) to!184))))

(declare-fun b!1379872 () Bool)

(assert (=> b!1379872 (= e!781810 #b00000000000000000000000000000000)))

(assert (= (and d!148643 c!128252) b!1379872))

(assert (= (and d!148643 (not c!128252)) b!1379869))

(assert (= (and b!1379869 c!128251) b!1379870))

(assert (= (and b!1379869 (not c!128251)) b!1379871))

(assert (= (or b!1379870 b!1379871) bm!66123))

(assert (=> b!1379869 m!1265137))

(assert (=> b!1379869 m!1265137))

(assert (=> b!1379869 m!1265139))

(declare-fun m!1265149 () Bool)

(assert (=> bm!66123 m!1265149))

(assert (=> b!1379812 d!148643))

(declare-fun d!148645 () Bool)

(assert (=> d!148645 (= (array_inv!34287 a!4010) (bvsge (size!45893 a!4010) #b00000000000000000000000000000000))))

(assert (=> start!117426 d!148645))

(push 1)

(assert (not bm!66121))

(assert (not bm!66123))

(assert (not b!1379869))

(assert (not b!1379861))

(assert (not b!1379865))

(assert (not bm!66122))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

