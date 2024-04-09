; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117816 () Bool)

(assert start!117816)

(declare-fun res!922862 () Bool)

(declare-fun e!782887 () Bool)

(assert (=> start!117816 (=> (not res!922862) (not e!782887))))

(declare-fun from!2839 () (_ BitVec 32))

(declare-fun to!94 () (_ BitVec 32))

(declare-datatypes ((array!94199 0))(
  ( (array!94200 (arr!45483 (Array (_ BitVec 32) (_ BitVec 64))) (size!46034 (_ BitVec 32))) )
))
(declare-fun a!3464 () array!94199)

(assert (=> start!117816 (= res!922862 (and (bvsle from!2839 to!94) (bvsge from!2839 #b00000000000000000000000000000000) (bvsle to!94 (size!46034 a!3464)) (bvslt (size!46034 a!3464) #b01111111111111111111111111111111) (bvslt from!2839 to!94)))))

(assert (=> start!117816 e!782887))

(assert (=> start!117816 true))

(declare-fun array_inv!34428 (array!94199) Bool)

(assert (=> start!117816 (array_inv!34428 a!3464)))

(declare-fun b!1381089 () Bool)

(declare-fun res!922863 () Bool)

(assert (=> b!1381089 (=> (not res!922863) (not e!782887))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381089 (= res!922863 (not (validKeyInArray!0 (select (arr!45483 a!3464) from!2839))))))

(declare-fun lt!608113 () (_ BitVec 32))

(declare-fun b!1381090 () Bool)

(assert (=> b!1381090 (= e!782887 (or (bvslt lt!608113 #b00000000000000000000000000000000) (bvsgt lt!608113 (bvsub (size!46034 a!3464) from!2839))))))

(declare-fun arrayCountValidKeys!0 (array!94199 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1381090 (= lt!608113 (arrayCountValidKeys!0 a!3464 (bvadd #b00000000000000000000000000000001 from!2839) to!94))))

(assert (= (and start!117816 res!922862) b!1381089))

(assert (= (and b!1381089 res!922863) b!1381090))

(declare-fun m!1266379 () Bool)

(assert (=> start!117816 m!1266379))

(declare-fun m!1266381 () Bool)

(assert (=> b!1381089 m!1266381))

(assert (=> b!1381089 m!1266381))

(declare-fun m!1266383 () Bool)

(assert (=> b!1381089 m!1266383))

(declare-fun m!1266385 () Bool)

(assert (=> b!1381090 m!1266385))

(push 1)

(assert (not b!1381089))

(assert (not b!1381090))

(assert (not start!117816))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!148951 () Bool)

(assert (=> d!148951 (= (validKeyInArray!0 (select (arr!45483 a!3464) from!2839)) (and (not (= (select (arr!45483 a!3464) from!2839) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45483 a!3464) from!2839) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1381089 d!148951))

(declare-fun d!148953 () Bool)

(declare-fun lt!608122 () (_ BitVec 32))

(assert (=> d!148953 (and (bvsge lt!608122 #b00000000000000000000000000000000) (bvsle lt!608122 (bvsub (size!46034 a!3464) (bvadd #b00000000000000000000000000000001 from!2839))))))

(declare-fun e!782906 () (_ BitVec 32))

(assert (=> d!148953 (= lt!608122 e!782906)))

(declare-fun c!128573 () Bool)

(assert (=> d!148953 (= c!128573 (bvsge (bvadd #b00000000000000000000000000000001 from!2839) to!94))))

(assert (=> d!148953 (and (bvsle (bvadd #b00000000000000000000000000000001 from!2839) to!94) (bvsge (bvadd #b00000000000000000000000000000001 from!2839) #b00000000000000000000000000000000) (bvsle to!94 (size!46034 a!3464)))))

(assert (=> d!148953 (= (arrayCountValidKeys!0 a!3464 (bvadd #b00000000000000000000000000000001 from!2839) to!94) lt!608122)))

(declare-fun b!1381123 () Bool)

(declare-fun e!782905 () (_ BitVec 32))

(declare-fun call!66516 () (_ BitVec 32))

(assert (=> b!1381123 (= e!782905 (bvadd #b00000000000000000000000000000001 call!66516))))

(declare-fun b!1381124 () Bool)

(assert (=> b!1381124 (= e!782906 e!782905)))

(declare-fun c!128572 () Bool)

(assert (=> b!1381124 (= c!128572 (validKeyInArray!0 (select (arr!45483 a!3464) (bvadd #b00000000000000000000000000000001 from!2839))))))

(declare-fun b!1381125 () Bool)

(assert (=> b!1381125 (= e!782906 #b00000000000000000000000000000000)))

(declare-fun b!1381126 () Bool)

(assert (=> b!1381126 (= e!782905 call!66516)))

(declare-fun bm!66513 () Bool)

(assert (=> bm!66513 (= call!66516 (arrayCountValidKeys!0 a!3464 (bvadd #b00000000000000000000000000000001 from!2839 #b00000000000000000000000000000001) to!94))))

(assert (= (and d!148953 c!128573) b!1381125))

(assert (= (and d!148953 (not c!128573)) b!1381124))

(assert (= (and b!1381124 c!128572) b!1381123))

(assert (= (and b!1381124 (not c!128572)) b!1381126))

(assert (= (or b!1381123 b!1381126) bm!66513))

(declare-fun m!1266399 () Bool)

(assert (=> b!1381124 m!1266399))

(assert (=> b!1381124 m!1266399))

(declare-fun m!1266401 () Bool)

(assert (=> b!1381124 m!1266401))

(declare-fun m!1266403 () Bool)

(assert (=> bm!66513 m!1266403))

(assert (=> b!1381090 d!148953))

(declare-fun d!148955 () Bool)

(assert (=> d!148955 (= (array_inv!34428 a!3464) (bvsge (size!46034 a!3464) #b00000000000000000000000000000000))))

(assert (=> start!117816 d!148955))

(push 1)

(assert (not bm!66513))

(assert (not b!1381124))

(check-sat)

