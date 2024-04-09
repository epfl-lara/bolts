; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117612 () Bool)

(assert start!117612)

(declare-fun res!922638 () Bool)

(declare-fun e!782392 () Bool)

(assert (=> start!117612 (=> (not res!922638) (not e!782392))))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((array!94046 0))(
  ( (array!94047 (arr!45411 (Array (_ BitVec 32) (_ BitVec 64))) (size!45962 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94046)

(declare-fun to!105 () (_ BitVec 32))

(assert (=> start!117612 (= res!922638 (and (bvslt (size!45962 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45962 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117612 e!782392))

(declare-fun array_inv!34356 (array!94046) Bool)

(assert (=> start!117612 (array_inv!34356 a!3931)))

(assert (=> start!117612 true))

(declare-fun b!1380575 () Bool)

(declare-fun e!782391 () Bool)

(declare-fun call!66353 () (_ BitVec 32))

(declare-fun call!66354 () (_ BitVec 32))

(assert (=> b!1380575 (= e!782391 (= call!66353 call!66354))))

(declare-fun bm!66350 () Bool)

(declare-fun arrayCountValidKeys!0 (array!94046 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66350 (= call!66353 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun bm!66351 () Bool)

(assert (=> bm!66351 (= call!66354 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun b!1380576 () Bool)

(declare-fun lt!607995 () Bool)

(assert (=> b!1380576 (= e!782392 (not (or lt!607995 (bvsle from!3309 to!105))))))

(assert (=> b!1380576 e!782391))

(declare-fun c!128411 () Bool)

(assert (=> b!1380576 (= c!128411 lt!607995)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380576 (= lt!607995 (validKeyInArray!0 (select (arr!45411 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!45951 0))(
  ( (Unit!45952) )
))
(declare-fun lt!607996 () Unit!45951)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94046 (_ BitVec 32) (_ BitVec 32)) Unit!45951)

(assert (=> b!1380576 (= lt!607996 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun b!1380577 () Bool)

(assert (=> b!1380577 (= e!782391 (= (bvadd #b00000000000000000000000000000001 call!66353) call!66354))))

(assert (= (and start!117612 res!922638) b!1380576))

(assert (= (and b!1380576 c!128411) b!1380577))

(assert (= (and b!1380576 (not c!128411)) b!1380575))

(assert (= (or b!1380577 b!1380575) bm!66351))

(assert (= (or b!1380577 b!1380575) bm!66350))

(declare-fun m!1265853 () Bool)

(assert (=> start!117612 m!1265853))

(declare-fun m!1265855 () Bool)

(assert (=> bm!66350 m!1265855))

(declare-fun m!1265857 () Bool)

(assert (=> bm!66351 m!1265857))

(declare-fun m!1265859 () Bool)

(assert (=> b!1380576 m!1265859))

(assert (=> b!1380576 m!1265859))

(declare-fun m!1265861 () Bool)

(assert (=> b!1380576 m!1265861))

(declare-fun m!1265863 () Bool)

(assert (=> b!1380576 m!1265863))

(push 1)

(assert (not start!117612))

(assert (not b!1380576))

(assert (not bm!66351))

(assert (not bm!66350))

(check-sat)

(pop 1)

(push 1)

(check-sat)

