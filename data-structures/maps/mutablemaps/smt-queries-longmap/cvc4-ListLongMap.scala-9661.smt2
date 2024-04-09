; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114144 () Bool)

(assert start!114144)

(declare-fun b!1355049 () Bool)

(declare-datatypes ((Unit!44468 0))(
  ( (Unit!44469) )
))
(declare-fun e!769622 () Unit!44468)

(declare-fun lt!598445 () Unit!44468)

(assert (=> b!1355049 (= e!769622 lt!598445)))

(declare-fun lt!598441 () Unit!44468)

(declare-datatypes ((List!31789 0))(
  ( (Nil!31786) (Cons!31785 (h!32994 (_ BitVec 64)) (t!46454 List!31789)) )
))
(declare-fun acc!759 () List!31789)

(declare-fun lemmaListSubSeqRefl!0 (List!31789) Unit!44468)

(assert (=> b!1355049 (= lt!598441 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!763 (List!31789 List!31789) Bool)

(assert (=> b!1355049 (subseq!763 acc!759 acc!759)))

(declare-datatypes ((array!92249 0))(
  ( (array!92250 (arr!44568 (Array (_ BitVec 32) (_ BitVec 64))) (size!45119 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92249)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92249 List!31789 List!31789 (_ BitVec 32)) Unit!44468)

(declare-fun $colon$colon!780 (List!31789 (_ BitVec 64)) List!31789)

(assert (=> b!1355049 (= lt!598445 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!780 acc!759 (select (arr!44568 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92249 (_ BitVec 32) List!31789) Bool)

(assert (=> b!1355049 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1355050 () Bool)

(declare-fun e!769624 () Bool)

(declare-fun e!769621 () Bool)

(assert (=> b!1355050 (= e!769624 e!769621)))

(declare-fun res!900153 () Bool)

(assert (=> b!1355050 (=> (not res!900153) (not e!769621))))

(declare-fun lt!598444 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1355050 (= res!900153 (and (not (= from!3120 i!1404)) (not lt!598444) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!598442 () Unit!44468)

(assert (=> b!1355050 (= lt!598442 e!769622)))

(declare-fun c!126895 () Bool)

(assert (=> b!1355050 (= c!126895 lt!598444)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1355050 (= lt!598444 (validKeyInArray!0 (select (arr!44568 a!3742) from!3120)))))

(declare-fun b!1355051 () Bool)

(assert (=> b!1355051 (= e!769621 false)))

(declare-fun lt!598443 () Bool)

(assert (=> b!1355051 (= lt!598443 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1355052 () Bool)

(declare-fun res!900144 () Bool)

(assert (=> b!1355052 (=> (not res!900144) (not e!769624))))

(assert (=> b!1355052 (= res!900144 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45119 a!3742))))))

(declare-fun b!1355053 () Bool)

(declare-fun res!900146 () Bool)

(assert (=> b!1355053 (=> (not res!900146) (not e!769624))))

(assert (=> b!1355053 (= res!900146 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1355054 () Bool)

(declare-fun res!900152 () Bool)

(assert (=> b!1355054 (=> (not res!900152) (not e!769624))))

(declare-fun contains!9354 (List!31789 (_ BitVec 64)) Bool)

(assert (=> b!1355054 (= res!900152 (not (contains!9354 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!900147 () Bool)

(assert (=> start!114144 (=> (not res!900147) (not e!769624))))

(assert (=> start!114144 (= res!900147 (and (bvslt (size!45119 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45119 a!3742))))))

(assert (=> start!114144 e!769624))

(assert (=> start!114144 true))

(declare-fun array_inv!33513 (array!92249) Bool)

(assert (=> start!114144 (array_inv!33513 a!3742)))

(declare-fun b!1355055 () Bool)

(declare-fun res!900145 () Bool)

(assert (=> b!1355055 (=> (not res!900145) (not e!769624))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1355055 (= res!900145 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1355056 () Bool)

(declare-fun res!900149 () Bool)

(assert (=> b!1355056 (=> (not res!900149) (not e!769624))))

(assert (=> b!1355056 (= res!900149 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45119 a!3742)))))

(declare-fun b!1355057 () Bool)

(declare-fun Unit!44470 () Unit!44468)

(assert (=> b!1355057 (= e!769622 Unit!44470)))

(declare-fun b!1355058 () Bool)

(declare-fun res!900150 () Bool)

(assert (=> b!1355058 (=> (not res!900150) (not e!769624))))

(assert (=> b!1355058 (= res!900150 (not (contains!9354 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355059 () Bool)

(declare-fun res!900148 () Bool)

(assert (=> b!1355059 (=> (not res!900148) (not e!769624))))

(assert (=> b!1355059 (= res!900148 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31786))))

(declare-fun b!1355060 () Bool)

(declare-fun res!900151 () Bool)

(assert (=> b!1355060 (=> (not res!900151) (not e!769624))))

(declare-fun noDuplicate!2233 (List!31789) Bool)

(assert (=> b!1355060 (= res!900151 (noDuplicate!2233 acc!759))))

(assert (= (and start!114144 res!900147) b!1355060))

(assert (= (and b!1355060 res!900151) b!1355054))

(assert (= (and b!1355054 res!900152) b!1355058))

(assert (= (and b!1355058 res!900150) b!1355059))

(assert (= (and b!1355059 res!900148) b!1355053))

(assert (= (and b!1355053 res!900146) b!1355052))

(assert (= (and b!1355052 res!900144) b!1355055))

(assert (= (and b!1355055 res!900145) b!1355056))

(assert (= (and b!1355056 res!900149) b!1355050))

(assert (= (and b!1355050 c!126895) b!1355049))

(assert (= (and b!1355050 (not c!126895)) b!1355057))

(assert (= (and b!1355050 res!900153) b!1355051))

(declare-fun m!1241337 () Bool)

(assert (=> b!1355060 m!1241337))

(declare-fun m!1241339 () Bool)

(assert (=> b!1355050 m!1241339))

(assert (=> b!1355050 m!1241339))

(declare-fun m!1241341 () Bool)

(assert (=> b!1355050 m!1241341))

(declare-fun m!1241343 () Bool)

(assert (=> b!1355058 m!1241343))

(declare-fun m!1241345 () Bool)

(assert (=> start!114144 m!1241345))

(declare-fun m!1241347 () Bool)

(assert (=> b!1355051 m!1241347))

(declare-fun m!1241349 () Bool)

(assert (=> b!1355059 m!1241349))

(declare-fun m!1241351 () Bool)

(assert (=> b!1355053 m!1241351))

(declare-fun m!1241353 () Bool)

(assert (=> b!1355049 m!1241353))

(assert (=> b!1355049 m!1241339))

(declare-fun m!1241355 () Bool)

(assert (=> b!1355049 m!1241355))

(declare-fun m!1241357 () Bool)

(assert (=> b!1355049 m!1241357))

(assert (=> b!1355049 m!1241347))

(assert (=> b!1355049 m!1241339))

(assert (=> b!1355049 m!1241355))

(declare-fun m!1241359 () Bool)

(assert (=> b!1355049 m!1241359))

(declare-fun m!1241361 () Bool)

(assert (=> b!1355055 m!1241361))

(declare-fun m!1241363 () Bool)

(assert (=> b!1355054 m!1241363))

(push 1)

