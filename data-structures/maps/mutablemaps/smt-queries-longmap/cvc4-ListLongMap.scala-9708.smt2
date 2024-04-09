; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114846 () Bool)

(assert start!114846)

(declare-fun b!1361133 () Bool)

(declare-fun res!905422 () Bool)

(declare-fun e!772245 () Bool)

(assert (=> b!1361133 (=> (not res!905422) (not e!772245))))

(declare-datatypes ((array!92555 0))(
  ( (array!92556 (arr!44709 (Array (_ BitVec 32) (_ BitVec 64))) (size!45260 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92555)

(declare-datatypes ((List!31930 0))(
  ( (Nil!31927) (Cons!31926 (h!33135 (_ BitVec 64)) (t!46619 List!31930)) )
))
(declare-fun arrayNoDuplicates!0 (array!92555 (_ BitVec 32) List!31930) Bool)

(assert (=> b!1361133 (= res!905422 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31927))))

(declare-fun b!1361134 () Bool)

(declare-fun e!772244 () Bool)

(assert (=> b!1361134 (= e!772245 e!772244)))

(declare-fun res!905425 () Bool)

(assert (=> b!1361134 (=> (not res!905425) (not e!772244))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lt!600049 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1361134 (= res!905425 (and (not (= from!3120 i!1404)) lt!600049))))

(declare-datatypes ((Unit!44810 0))(
  ( (Unit!44811) )
))
(declare-fun lt!600048 () Unit!44810)

(declare-fun e!772242 () Unit!44810)

(assert (=> b!1361134 (= lt!600048 e!772242)))

(declare-fun c!127300 () Bool)

(assert (=> b!1361134 (= c!127300 lt!600049)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1361134 (= lt!600049 (validKeyInArray!0 (select (arr!44709 a!3742) from!3120)))))

(declare-fun b!1361135 () Bool)

(declare-fun res!905418 () Bool)

(assert (=> b!1361135 (=> (not res!905418) (not e!772245))))

(declare-fun acc!759 () List!31930)

(assert (=> b!1361135 (= res!905418 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1361136 () Bool)

(declare-fun res!905428 () Bool)

(assert (=> b!1361136 (=> (not res!905428) (not e!772245))))

(assert (=> b!1361136 (= res!905428 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45260 a!3742))))))

(declare-fun b!1361137 () Bool)

(declare-fun res!905424 () Bool)

(declare-fun e!772246 () Bool)

(assert (=> b!1361137 (=> (not res!905424) (not e!772246))))

(declare-fun lt!600046 () List!31930)

(declare-fun noDuplicate!2374 (List!31930) Bool)

(assert (=> b!1361137 (= res!905424 (noDuplicate!2374 lt!600046))))

(declare-fun b!1361138 () Bool)

(declare-fun res!905427 () Bool)

(assert (=> b!1361138 (=> (not res!905427) (not e!772245))))

(assert (=> b!1361138 (= res!905427 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45260 a!3742)))))

(declare-fun b!1361139 () Bool)

(declare-fun res!905421 () Bool)

(assert (=> b!1361139 (=> (not res!905421) (not e!772246))))

(declare-fun contains!9495 (List!31930 (_ BitVec 64)) Bool)

(assert (=> b!1361139 (= res!905421 (not (contains!9495 lt!600046 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361140 () Bool)

(declare-fun res!905429 () Bool)

(assert (=> b!1361140 (=> (not res!905429) (not e!772245))))

(assert (=> b!1361140 (= res!905429 (not (contains!9495 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361141 () Bool)

(assert (=> b!1361141 (= e!772244 e!772246)))

(declare-fun res!905419 () Bool)

(assert (=> b!1361141 (=> (not res!905419) (not e!772246))))

(assert (=> b!1361141 (= res!905419 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!891 (List!31930 (_ BitVec 64)) List!31930)

(assert (=> b!1361141 (= lt!600046 ($colon$colon!891 acc!759 (select (arr!44709 a!3742) from!3120)))))

(declare-fun res!905430 () Bool)

(assert (=> start!114846 (=> (not res!905430) (not e!772245))))

(assert (=> start!114846 (= res!905430 (and (bvslt (size!45260 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45260 a!3742))))))

(assert (=> start!114846 e!772245))

(assert (=> start!114846 true))

(declare-fun array_inv!33654 (array!92555) Bool)

(assert (=> start!114846 (array_inv!33654 a!3742)))

(declare-fun b!1361142 () Bool)

(declare-fun Unit!44812 () Unit!44810)

(assert (=> b!1361142 (= e!772242 Unit!44812)))

(declare-fun b!1361143 () Bool)

(assert (=> b!1361143 (= e!772246 false)))

(declare-fun lt!600047 () Bool)

(assert (=> b!1361143 (= lt!600047 (contains!9495 lt!600046 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1361144 () Bool)

(declare-fun res!905420 () Bool)

(assert (=> b!1361144 (=> (not res!905420) (not e!772245))))

(assert (=> b!1361144 (= res!905420 (not (contains!9495 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361145 () Bool)

(declare-fun res!905426 () Bool)

(assert (=> b!1361145 (=> (not res!905426) (not e!772245))))

(assert (=> b!1361145 (= res!905426 (noDuplicate!2374 acc!759))))

(declare-fun b!1361146 () Bool)

(declare-fun res!905423 () Bool)

(assert (=> b!1361146 (=> (not res!905423) (not e!772245))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1361146 (= res!905423 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1361147 () Bool)

(declare-fun lt!600045 () Unit!44810)

(assert (=> b!1361147 (= e!772242 lt!600045)))

(declare-fun lt!600050 () Unit!44810)

(declare-fun lemmaListSubSeqRefl!0 (List!31930) Unit!44810)

(assert (=> b!1361147 (= lt!600050 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!886 (List!31930 List!31930) Bool)

(assert (=> b!1361147 (subseq!886 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92555 List!31930 List!31930 (_ BitVec 32)) Unit!44810)

(assert (=> b!1361147 (= lt!600045 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!891 acc!759 (select (arr!44709 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1361147 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(assert (= (and start!114846 res!905430) b!1361145))

(assert (= (and b!1361145 res!905426) b!1361140))

(assert (= (and b!1361140 res!905429) b!1361144))

(assert (= (and b!1361144 res!905420) b!1361133))

(assert (= (and b!1361133 res!905422) b!1361135))

(assert (= (and b!1361135 res!905418) b!1361136))

(assert (= (and b!1361136 res!905428) b!1361146))

(assert (= (and b!1361146 res!905423) b!1361138))

(assert (= (and b!1361138 res!905427) b!1361134))

(assert (= (and b!1361134 c!127300) b!1361147))

(assert (= (and b!1361134 (not c!127300)) b!1361142))

(assert (= (and b!1361134 res!905425) b!1361141))

(assert (= (and b!1361141 res!905419) b!1361137))

(assert (= (and b!1361137 res!905424) b!1361139))

(assert (= (and b!1361139 res!905421) b!1361143))

(declare-fun m!1246323 () Bool)

(assert (=> b!1361145 m!1246323))

(declare-fun m!1246325 () Bool)

(assert (=> b!1361133 m!1246325))

(declare-fun m!1246327 () Bool)

(assert (=> b!1361140 m!1246327))

(declare-fun m!1246329 () Bool)

(assert (=> b!1361135 m!1246329))

(declare-fun m!1246331 () Bool)

(assert (=> b!1361134 m!1246331))

(assert (=> b!1361134 m!1246331))

(declare-fun m!1246333 () Bool)

(assert (=> b!1361134 m!1246333))

(declare-fun m!1246335 () Bool)

(assert (=> b!1361146 m!1246335))

(assert (=> b!1361141 m!1246331))

(assert (=> b!1361141 m!1246331))

(declare-fun m!1246337 () Bool)

(assert (=> b!1361141 m!1246337))

(declare-fun m!1246339 () Bool)

(assert (=> b!1361139 m!1246339))

(declare-fun m!1246341 () Bool)

(assert (=> b!1361147 m!1246341))

(assert (=> b!1361147 m!1246331))

(assert (=> b!1361147 m!1246337))

(declare-fun m!1246343 () Bool)

(assert (=> b!1361147 m!1246343))

(declare-fun m!1246345 () Bool)

(assert (=> b!1361147 m!1246345))

(assert (=> b!1361147 m!1246331))

(assert (=> b!1361147 m!1246337))

(declare-fun m!1246347 () Bool)

(assert (=> b!1361147 m!1246347))

(declare-fun m!1246349 () Bool)

(assert (=> b!1361144 m!1246349))

(declare-fun m!1246351 () Bool)

(assert (=> start!114846 m!1246351))

(declare-fun m!1246353 () Bool)

(assert (=> b!1361137 m!1246353))

(declare-fun m!1246355 () Bool)

(assert (=> b!1361143 m!1246355))

(push 1)

