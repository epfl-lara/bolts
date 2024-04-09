; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114018 () Bool)

(assert start!114018)

(declare-fun b!1352241 () Bool)

(declare-datatypes ((Unit!44279 0))(
  ( (Unit!44280) )
))
(declare-fun e!768751 () Unit!44279)

(declare-fun lt!597443 () Unit!44279)

(assert (=> b!1352241 (= e!768751 lt!597443)))

(declare-fun lt!597444 () Unit!44279)

(declare-datatypes ((List!31726 0))(
  ( (Nil!31723) (Cons!31722 (h!32931 (_ BitVec 64)) (t!46391 List!31726)) )
))
(declare-fun acc!759 () List!31726)

(declare-fun lemmaListSubSeqRefl!0 (List!31726) Unit!44279)

(assert (=> b!1352241 (= lt!597444 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!700 (List!31726 List!31726) Bool)

(assert (=> b!1352241 (subseq!700 acc!759 acc!759)))

(declare-datatypes ((array!92123 0))(
  ( (array!92124 (arr!44505 (Array (_ BitVec 32) (_ BitVec 64))) (size!45056 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92123)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92123 List!31726 List!31726 (_ BitVec 32)) Unit!44279)

(declare-fun $colon$colon!717 (List!31726 (_ BitVec 64)) List!31726)

(assert (=> b!1352241 (= lt!597443 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!717 acc!759 (select (arr!44505 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92123 (_ BitVec 32) List!31726) Bool)

(assert (=> b!1352241 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun res!897715 () Bool)

(declare-fun e!768748 () Bool)

(assert (=> start!114018 (=> (not res!897715) (not e!768748))))

(assert (=> start!114018 (= res!897715 (and (bvslt (size!45056 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45056 a!3742))))))

(assert (=> start!114018 e!768748))

(assert (=> start!114018 true))

(declare-fun array_inv!33450 (array!92123) Bool)

(assert (=> start!114018 (array_inv!33450 a!3742)))

(declare-fun b!1352242 () Bool)

(declare-fun res!897723 () Bool)

(assert (=> b!1352242 (=> (not res!897723) (not e!768748))))

(assert (=> b!1352242 (= res!897723 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31723))))

(declare-fun b!1352243 () Bool)

(declare-fun res!897719 () Bool)

(assert (=> b!1352243 (=> (not res!897719) (not e!768748))))

(assert (=> b!1352243 (= res!897719 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1352244 () Bool)

(declare-fun res!897720 () Bool)

(assert (=> b!1352244 (=> (not res!897720) (not e!768748))))

(assert (=> b!1352244 (= res!897720 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45056 a!3742)))))

(declare-fun b!1352245 () Bool)

(declare-fun e!768749 () Bool)

(assert (=> b!1352245 (= e!768749 false)))

(declare-fun lt!597446 () Bool)

(assert (=> b!1352245 (= lt!597446 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352246 () Bool)

(declare-fun res!897717 () Bool)

(assert (=> b!1352246 (=> (not res!897717) (not e!768748))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1352246 (= res!897717 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1352247 () Bool)

(declare-fun res!897716 () Bool)

(assert (=> b!1352247 (=> (not res!897716) (not e!768748))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1352247 (= res!897716 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45056 a!3742))))))

(declare-fun b!1352248 () Bool)

(declare-fun res!897718 () Bool)

(assert (=> b!1352248 (=> (not res!897718) (not e!768748))))

(declare-fun contains!9291 (List!31726 (_ BitVec 64)) Bool)

(assert (=> b!1352248 (= res!897718 (not (contains!9291 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352249 () Bool)

(assert (=> b!1352249 (= e!768748 e!768749)))

(declare-fun res!897722 () Bool)

(assert (=> b!1352249 (=> (not res!897722) (not e!768749))))

(assert (=> b!1352249 (= res!897722 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!597445 () Unit!44279)

(assert (=> b!1352249 (= lt!597445 e!768751)))

(declare-fun c!126706 () Bool)

(assert (=> b!1352249 (= c!126706 (validKeyInArray!0 (select (arr!44505 a!3742) from!3120)))))

(declare-fun b!1352250 () Bool)

(declare-fun res!897714 () Bool)

(assert (=> b!1352250 (=> (not res!897714) (not e!768748))))

(assert (=> b!1352250 (= res!897714 (not (contains!9291 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352251 () Bool)

(declare-fun Unit!44281 () Unit!44279)

(assert (=> b!1352251 (= e!768751 Unit!44281)))

(declare-fun b!1352252 () Bool)

(declare-fun res!897721 () Bool)

(assert (=> b!1352252 (=> (not res!897721) (not e!768748))))

(declare-fun noDuplicate!2170 (List!31726) Bool)

(assert (=> b!1352252 (= res!897721 (noDuplicate!2170 acc!759))))

(assert (= (and start!114018 res!897715) b!1352252))

(assert (= (and b!1352252 res!897721) b!1352248))

(assert (= (and b!1352248 res!897718) b!1352250))

(assert (= (and b!1352250 res!897714) b!1352242))

(assert (= (and b!1352242 res!897723) b!1352243))

(assert (= (and b!1352243 res!897719) b!1352247))

(assert (= (and b!1352247 res!897716) b!1352246))

(assert (= (and b!1352246 res!897717) b!1352244))

(assert (= (and b!1352244 res!897720) b!1352249))

(assert (= (and b!1352249 c!126706) b!1352241))

(assert (= (and b!1352249 (not c!126706)) b!1352251))

(assert (= (and b!1352249 res!897722) b!1352245))

(declare-fun m!1239117 () Bool)

(assert (=> b!1352250 m!1239117))

(declare-fun m!1239119 () Bool)

(assert (=> b!1352243 m!1239119))

(declare-fun m!1239121 () Bool)

(assert (=> b!1352245 m!1239121))

(declare-fun m!1239123 () Bool)

(assert (=> b!1352242 m!1239123))

(declare-fun m!1239125 () Bool)

(assert (=> start!114018 m!1239125))

(declare-fun m!1239127 () Bool)

(assert (=> b!1352249 m!1239127))

(assert (=> b!1352249 m!1239127))

(declare-fun m!1239129 () Bool)

(assert (=> b!1352249 m!1239129))

(declare-fun m!1239131 () Bool)

(assert (=> b!1352246 m!1239131))

(declare-fun m!1239133 () Bool)

(assert (=> b!1352241 m!1239133))

(assert (=> b!1352241 m!1239127))

(declare-fun m!1239135 () Bool)

(assert (=> b!1352241 m!1239135))

(declare-fun m!1239137 () Bool)

(assert (=> b!1352241 m!1239137))

(assert (=> b!1352241 m!1239121))

(assert (=> b!1352241 m!1239127))

(assert (=> b!1352241 m!1239135))

(declare-fun m!1239139 () Bool)

(assert (=> b!1352241 m!1239139))

(declare-fun m!1239141 () Bool)

(assert (=> b!1352248 m!1239141))

(declare-fun m!1239143 () Bool)

(assert (=> b!1352252 m!1239143))

(push 1)

(assert (not b!1352242))

(assert (not b!1352243))

(assert (not b!1352250))

(assert (not b!1352245))

(assert (not b!1352252))

(assert (not b!1352248))

(assert (not start!114018))

(assert (not b!1352241))

(assert (not b!1352249))

(assert (not b!1352246))

(check-sat)

