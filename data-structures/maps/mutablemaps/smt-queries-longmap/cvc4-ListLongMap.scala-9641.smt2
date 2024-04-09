; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114024 () Bool)

(assert start!114024)

(declare-fun res!897809 () Bool)

(declare-fun e!768784 () Bool)

(assert (=> start!114024 (=> (not res!897809) (not e!768784))))

(declare-datatypes ((array!92129 0))(
  ( (array!92130 (arr!44508 (Array (_ BitVec 32) (_ BitVec 64))) (size!45059 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92129)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114024 (= res!897809 (and (bvslt (size!45059 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45059 a!3742))))))

(assert (=> start!114024 e!768784))

(assert (=> start!114024 true))

(declare-fun array_inv!33453 (array!92129) Bool)

(assert (=> start!114024 (array_inv!33453 a!3742)))

(declare-fun b!1352349 () Bool)

(declare-fun res!897806 () Bool)

(assert (=> b!1352349 (=> (not res!897806) (not e!768784))))

(declare-datatypes ((List!31729 0))(
  ( (Nil!31726) (Cons!31725 (h!32934 (_ BitVec 64)) (t!46394 List!31729)) )
))
(declare-fun arrayNoDuplicates!0 (array!92129 (_ BitVec 32) List!31729) Bool)

(assert (=> b!1352349 (= res!897806 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31726))))

(declare-fun b!1352350 () Bool)

(declare-datatypes ((Unit!44288 0))(
  ( (Unit!44289) )
))
(declare-fun e!768787 () Unit!44288)

(declare-fun Unit!44290 () Unit!44288)

(assert (=> b!1352350 (= e!768787 Unit!44290)))

(declare-fun b!1352351 () Bool)

(declare-fun res!897812 () Bool)

(assert (=> b!1352351 (=> (not res!897812) (not e!768784))))

(declare-fun acc!759 () List!31729)

(assert (=> b!1352351 (= res!897812 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1352352 () Bool)

(declare-fun res!897807 () Bool)

(assert (=> b!1352352 (=> (not res!897807) (not e!768784))))

(declare-fun contains!9294 (List!31729 (_ BitVec 64)) Bool)

(assert (=> b!1352352 (= res!897807 (not (contains!9294 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352353 () Bool)

(declare-fun res!897804 () Bool)

(assert (=> b!1352353 (=> (not res!897804) (not e!768784))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1352353 (= res!897804 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45059 a!3742))))))

(declare-fun b!1352354 () Bool)

(declare-fun res!897811 () Bool)

(assert (=> b!1352354 (=> (not res!897811) (not e!768784))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1352354 (= res!897811 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1352355 () Bool)

(declare-fun res!897813 () Bool)

(assert (=> b!1352355 (=> (not res!897813) (not e!768784))))

(declare-fun noDuplicate!2173 (List!31729) Bool)

(assert (=> b!1352355 (= res!897813 (noDuplicate!2173 acc!759))))

(declare-fun b!1352356 () Bool)

(declare-fun e!768785 () Bool)

(assert (=> b!1352356 (= e!768785 false)))

(declare-fun lt!597480 () Bool)

(assert (=> b!1352356 (= lt!597480 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352357 () Bool)

(declare-fun lt!597479 () Unit!44288)

(assert (=> b!1352357 (= e!768787 lt!597479)))

(declare-fun lt!597481 () Unit!44288)

(declare-fun lemmaListSubSeqRefl!0 (List!31729) Unit!44288)

(assert (=> b!1352357 (= lt!597481 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!703 (List!31729 List!31729) Bool)

(assert (=> b!1352357 (subseq!703 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92129 List!31729 List!31729 (_ BitVec 32)) Unit!44288)

(declare-fun $colon$colon!720 (List!31729 (_ BitVec 64)) List!31729)

(assert (=> b!1352357 (= lt!597479 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!720 acc!759 (select (arr!44508 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1352357 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1352358 () Bool)

(assert (=> b!1352358 (= e!768784 e!768785)))

(declare-fun res!897808 () Bool)

(assert (=> b!1352358 (=> (not res!897808) (not e!768785))))

(assert (=> b!1352358 (= res!897808 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!597482 () Unit!44288)

(assert (=> b!1352358 (= lt!597482 e!768787)))

(declare-fun c!126715 () Bool)

(assert (=> b!1352358 (= c!126715 (validKeyInArray!0 (select (arr!44508 a!3742) from!3120)))))

(declare-fun b!1352359 () Bool)

(declare-fun res!897810 () Bool)

(assert (=> b!1352359 (=> (not res!897810) (not e!768784))))

(assert (=> b!1352359 (= res!897810 (not (contains!9294 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352360 () Bool)

(declare-fun res!897805 () Bool)

(assert (=> b!1352360 (=> (not res!897805) (not e!768784))))

(assert (=> b!1352360 (= res!897805 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45059 a!3742)))))

(assert (= (and start!114024 res!897809) b!1352355))

(assert (= (and b!1352355 res!897813) b!1352352))

(assert (= (and b!1352352 res!897807) b!1352359))

(assert (= (and b!1352359 res!897810) b!1352349))

(assert (= (and b!1352349 res!897806) b!1352351))

(assert (= (and b!1352351 res!897812) b!1352353))

(assert (= (and b!1352353 res!897804) b!1352354))

(assert (= (and b!1352354 res!897811) b!1352360))

(assert (= (and b!1352360 res!897805) b!1352358))

(assert (= (and b!1352358 c!126715) b!1352357))

(assert (= (and b!1352358 (not c!126715)) b!1352350))

(assert (= (and b!1352358 res!897808) b!1352356))

(declare-fun m!1239201 () Bool)

(assert (=> b!1352357 m!1239201))

(declare-fun m!1239203 () Bool)

(assert (=> b!1352357 m!1239203))

(declare-fun m!1239205 () Bool)

(assert (=> b!1352357 m!1239205))

(declare-fun m!1239207 () Bool)

(assert (=> b!1352357 m!1239207))

(declare-fun m!1239209 () Bool)

(assert (=> b!1352357 m!1239209))

(assert (=> b!1352357 m!1239203))

(assert (=> b!1352357 m!1239205))

(declare-fun m!1239211 () Bool)

(assert (=> b!1352357 m!1239211))

(declare-fun m!1239213 () Bool)

(assert (=> b!1352352 m!1239213))

(declare-fun m!1239215 () Bool)

(assert (=> b!1352355 m!1239215))

(assert (=> b!1352356 m!1239209))

(assert (=> b!1352358 m!1239203))

(assert (=> b!1352358 m!1239203))

(declare-fun m!1239217 () Bool)

(assert (=> b!1352358 m!1239217))

(declare-fun m!1239219 () Bool)

(assert (=> start!114024 m!1239219))

(declare-fun m!1239221 () Bool)

(assert (=> b!1352354 m!1239221))

(declare-fun m!1239223 () Bool)

(assert (=> b!1352351 m!1239223))

(declare-fun m!1239225 () Bool)

(assert (=> b!1352359 m!1239225))

(declare-fun m!1239227 () Bool)

(assert (=> b!1352349 m!1239227))

(push 1)

