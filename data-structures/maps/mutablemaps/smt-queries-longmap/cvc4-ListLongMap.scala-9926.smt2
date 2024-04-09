; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117372 () Bool)

(assert start!117372)

(declare-fun res!922215 () Bool)

(declare-fun e!781681 () Bool)

(assert (=> start!117372 (=> (not res!922215) (not e!781681))))

(declare-datatypes ((array!93884 0))(
  ( (array!93885 (arr!45336 (Array (_ BitVec 32) (_ BitVec 64))) (size!45887 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93884)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(declare-fun from!3388 () (_ BitVec 32))

(assert (=> start!117372 (= res!922215 (and (bvslt (size!45887 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45887 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvslt pivot!64 to!184)))))

(assert (=> start!117372 e!781681))

(declare-fun array_inv!34281 (array!93884) Bool)

(assert (=> start!117372 (array_inv!34281 a!4010)))

(assert (=> start!117372 true))

(declare-fun b!1379668 () Bool)

(declare-fun isPivot!0 (array!93884 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379668 (= e!781681 (not (isPivot!0 a!4010 from!3388 to!184 from!3388)))))

(assert (= (and start!117372 res!922215) b!1379668))

(declare-fun m!1264949 () Bool)

(assert (=> start!117372 m!1264949))

(declare-fun m!1264951 () Bool)

(assert (=> b!1379668 m!1264951))

(push 1)

(assert (not start!117372))

(assert (not b!1379668))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!148561 () Bool)

(assert (=> d!148561 (= (array_inv!34281 a!4010) (bvsge (size!45887 a!4010) #b00000000000000000000000000000000))))

(assert (=> start!117372 d!148561))

(declare-fun d!148563 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93884 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!148563 (= (isPivot!0 a!4010 from!3388 to!184 from!3388) (= (bvadd (arrayCountValidKeys!0 a!4010 from!3388 from!3388) (arrayCountValidKeys!0 a!4010 from!3388 to!184)) (arrayCountValidKeys!0 a!4010 from!3388 to!184)))))

(declare-fun bs!39778 () Bool)

(assert (= bs!39778 d!148563))

(declare-fun m!1264961 () Bool)

(assert (=> bs!39778 m!1264961))

(declare-fun m!1264963 () Bool)

(assert (=> bs!39778 m!1264963))

(assert (=> bs!39778 m!1264963))

(assert (=> b!1379668 d!148563))

(push 1)

(assert (not d!148563))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1379709 () Bool)

(declare-fun e!781703 () (_ BitVec 32))

(assert (=> b!1379709 (= e!781703 #b00000000000000000000000000000000)))

(declare-fun bm!66092 () Bool)

(declare-fun call!66095 () (_ BitVec 32))

(assert (=> bm!66092 (= call!66095 (arrayCountValidKeys!0 a!4010 (bvadd from!3388 #b00000000000000000000000000000001) from!3388))))

(declare-fun b!1379710 () Bool)

(declare-fun e!781704 () (_ BitVec 32))

(assert (=> b!1379710 (= e!781703 e!781704)))

(declare-fun c!128189 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379710 (= c!128189 (validKeyInArray!0 (select (arr!45336 a!4010) from!3388)))))

(declare-fun d!148571 () Bool)

(declare-fun lt!607692 () (_ BitVec 32))

(assert (=> d!148571 (and (bvsge lt!607692 #b00000000000000000000000000000000) (bvsle lt!607692 (bvsub (size!45887 a!4010) from!3388)))))

(assert (=> d!148571 (= lt!607692 e!781703)))

(declare-fun c!128190 () Bool)

(assert (=> d!148571 (= c!128190 (bvsge from!3388 from!3388))))

(assert (=> d!148571 (and (bvsle from!3388 from!3388) (bvsge from!3388 #b00000000000000000000000000000000) (bvsle from!3388 (size!45887 a!4010)))))

(assert (=> d!148571 (= (arrayCountValidKeys!0 a!4010 from!3388 from!3388) lt!607692)))

(declare-fun b!1379711 () Bool)

(assert (=> b!1379711 (= e!781704 call!66095)))

(declare-fun b!1379712 () Bool)

(assert (=> b!1379712 (= e!781704 (bvadd #b00000000000000000000000000000001 call!66095))))

(assert (= (and d!148571 c!128190) b!1379709))

(assert (= (and d!148571 (not c!128190)) b!1379710))

(assert (= (and b!1379710 c!128189) b!1379712))

(assert (= (and b!1379710 (not c!128189)) b!1379711))

(assert (= (or b!1379712 b!1379711) bm!66092))

(declare-fun m!1264981 () Bool)

(assert (=> bm!66092 m!1264981))

(declare-fun m!1264983 () Bool)

(assert (=> b!1379710 m!1264983))

