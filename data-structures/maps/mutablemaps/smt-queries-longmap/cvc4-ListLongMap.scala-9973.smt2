; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117786 () Bool)

(assert start!117786)

(declare-fun res!922827 () Bool)

(declare-fun e!782833 () Bool)

(assert (=> start!117786 (=> (not res!922827) (not e!782833))))

(declare-fun from!2839 () (_ BitVec 32))

(declare-fun to!94 () (_ BitVec 32))

(declare-datatypes ((array!94184 0))(
  ( (array!94185 (arr!45477 (Array (_ BitVec 32) (_ BitVec 64))) (size!46028 (_ BitVec 32))) )
))
(declare-fun a!3464 () array!94184)

(assert (=> start!117786 (= res!922827 (and (bvsle from!2839 to!94) (bvsge from!2839 #b00000000000000000000000000000000) (bvsle to!94 (size!46028 a!3464)) (bvslt (size!46028 a!3464) #b01111111111111111111111111111111) (bvslt from!2839 to!94)))))

(assert (=> start!117786 e!782833))

(assert (=> start!117786 true))

(declare-fun array_inv!34422 (array!94184) Bool)

(assert (=> start!117786 (array_inv!34422 a!3464)))

(declare-fun b!1381017 () Bool)

(declare-fun res!922826 () Bool)

(assert (=> b!1381017 (=> (not res!922826) (not e!782833))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381017 (= res!922826 (validKeyInArray!0 (select (arr!45477 a!3464) from!2839)))))

(declare-fun lt!608095 () (_ BitVec 32))

(declare-fun b!1381018 () Bool)

(assert (=> b!1381018 (= e!782833 (or (bvslt lt!608095 #b00000000000000000000000000000000) (bvsgt lt!608095 (bvsub (size!46028 a!3464) from!2839))))))

(declare-fun arrayCountValidKeys!0 (array!94184 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1381018 (= lt!608095 (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!3464 (bvadd #b00000000000000000000000000000001 from!2839) to!94)))))

(assert (= (and start!117786 res!922827) b!1381017))

(assert (= (and b!1381017 res!922826) b!1381018))

(declare-fun m!1266319 () Bool)

(assert (=> start!117786 m!1266319))

(declare-fun m!1266321 () Bool)

(assert (=> b!1381017 m!1266321))

(assert (=> b!1381017 m!1266321))

(declare-fun m!1266323 () Bool)

(assert (=> b!1381017 m!1266323))

(declare-fun m!1266325 () Bool)

(assert (=> b!1381018 m!1266325))

(push 1)

(assert (not b!1381017))

(assert (not b!1381018))

(assert (not start!117786))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!148927 () Bool)

(assert (=> d!148927 (= (validKeyInArray!0 (select (arr!45477 a!3464) from!2839)) (and (not (= (select (arr!45477 a!3464) from!2839) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45477 a!3464) from!2839) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1381017 d!148927))

(declare-fun b!1381051 () Bool)

(declare-fun e!782851 () (_ BitVec 32))

(declare-fun call!66507 () (_ BitVec 32))

(assert (=> b!1381051 (= e!782851 (bvadd #b00000000000000000000000000000001 call!66507))))

(declare-fun bm!66504 () Bool)

(assert (=> bm!66504 (= call!66507 (arrayCountValidKeys!0 a!3464 (bvadd #b00000000000000000000000000000001 from!2839 #b00000000000000000000000000000001) to!94))))

(declare-fun b!1381052 () Bool)

(assert (=> b!1381052 (= e!782851 call!66507)))

(declare-fun b!1381053 () Bool)

(declare-fun e!782852 () (_ BitVec 32))

(assert (=> b!1381053 (= e!782852 e!782851)))

(declare-fun c!128554 () Bool)

(assert (=> b!1381053 (= c!128554 (validKeyInArray!0 (select (arr!45477 a!3464) (bvadd #b00000000000000000000000000000001 from!2839))))))

(declare-fun d!148931 () Bool)

(declare-fun lt!608104 () (_ BitVec 32))

(assert (=> d!148931 (and (bvsge lt!608104 #b00000000000000000000000000000000) (bvsle lt!608104 (bvsub (size!46028 a!3464) (bvadd #b00000000000000000000000000000001 from!2839))))))

(assert (=> d!148931 (= lt!608104 e!782852)))

(declare-fun c!128555 () Bool)

(assert (=> d!148931 (= c!128555 (bvsge (bvadd #b00000000000000000000000000000001 from!2839) to!94))))

(assert (=> d!148931 (and (bvsle (bvadd #b00000000000000000000000000000001 from!2839) to!94) (bvsge (bvadd #b00000000000000000000000000000001 from!2839) #b00000000000000000000000000000000) (bvsle to!94 (size!46028 a!3464)))))

(assert (=> d!148931 (= (arrayCountValidKeys!0 a!3464 (bvadd #b00000000000000000000000000000001 from!2839) to!94) lt!608104)))

(declare-fun b!1381054 () Bool)

(assert (=> b!1381054 (= e!782852 #b00000000000000000000000000000000)))

(assert (= (and d!148931 c!128555) b!1381054))

(assert (= (and d!148931 (not c!128555)) b!1381053))

(assert (= (and b!1381053 c!128554) b!1381051))

(assert (= (and b!1381053 (not c!128554)) b!1381052))

(assert (= (or b!1381051 b!1381052) bm!66504))

(declare-fun m!1266339 () Bool)

(assert (=> bm!66504 m!1266339))

(declare-fun m!1266341 () Bool)

(assert (=> b!1381053 m!1266341))

(assert (=> b!1381053 m!1266341))

(declare-fun m!1266343 () Bool)

(assert (=> b!1381053 m!1266343))

(assert (=> b!1381018 d!148931))

(declare-fun d!148933 () Bool)

(assert (=> d!148933 (= (array_inv!34422 a!3464) (bvsge (size!46028 a!3464) #b00000000000000000000000000000000))))

(assert (=> start!117786 d!148933))

(push 1)

(assert (not b!1381053))

(assert (not bm!66504))

(check-sat)

