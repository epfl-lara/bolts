; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92352 () Bool)

(assert start!92352)

(declare-fun b!1049181 () Bool)

(declare-fun e!595281 () Bool)

(declare-fun e!595284 () Bool)

(assert (=> b!1049181 (= e!595281 e!595284)))

(declare-fun res!698422 () Bool)

(assert (=> b!1049181 (=> (not res!698422) (not e!595284))))

(declare-fun lt!463411 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1049181 (= res!698422 (not (= lt!463411 i!1381)))))

(declare-datatypes ((array!66101 0))(
  ( (array!66102 (arr!31786 (Array (_ BitVec 32) (_ BitVec 64))) (size!32323 (_ BitVec 32))) )
))
(declare-fun lt!463410 () array!66101)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66101 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049181 (= lt!463411 (arrayScanForKey!0 lt!463410 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1049182 () Bool)

(declare-fun e!595285 () Bool)

(assert (=> b!1049182 (= e!595285 true)))

(declare-fun a!3488 () array!66101)

(declare-datatypes ((List!22229 0))(
  ( (Nil!22226) (Cons!22225 (h!23434 (_ BitVec 64)) (t!31543 List!22229)) )
))
(declare-fun arrayNoDuplicates!0 (array!66101 (_ BitVec 32) List!22229) Bool)

(assert (=> b!1049182 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22226)))

(declare-datatypes ((Unit!34301 0))(
  ( (Unit!34302) )
))
(declare-fun lt!463409 () Unit!34301)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66101 (_ BitVec 32) (_ BitVec 32)) Unit!34301)

(assert (=> b!1049182 (= lt!463409 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1049183 () Bool)

(declare-fun e!595280 () Bool)

(assert (=> b!1049183 (= e!595280 e!595281)))

(declare-fun res!698416 () Bool)

(assert (=> b!1049183 (=> (not res!698416) (not e!595281))))

(declare-fun arrayContainsKey!0 (array!66101 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049183 (= res!698416 (arrayContainsKey!0 lt!463410 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1049183 (= lt!463410 (array!66102 (store (arr!31786 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32323 a!3488)))))

(declare-fun b!1049184 () Bool)

(declare-fun e!595283 () Bool)

(declare-fun e!595286 () Bool)

(assert (=> b!1049184 (= e!595283 e!595286)))

(declare-fun res!698417 () Bool)

(assert (=> b!1049184 (=> res!698417 e!595286)))

(assert (=> b!1049184 (= res!698417 (bvsle lt!463411 i!1381))))

(declare-fun b!1049185 () Bool)

(declare-fun res!698424 () Bool)

(assert (=> b!1049185 (=> (not res!698424) (not e!595280))))

(assert (=> b!1049185 (= res!698424 (= (select (arr!31786 a!3488) i!1381) k!2747))))

(declare-fun b!1049186 () Bool)

(declare-fun res!698418 () Bool)

(assert (=> b!1049186 (=> (not res!698418) (not e!595280))))

(assert (=> b!1049186 (= res!698418 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22226))))

(declare-fun b!1049187 () Bool)

(assert (=> b!1049187 (= e!595284 (not e!595285))))

(declare-fun res!698420 () Bool)

(assert (=> b!1049187 (=> res!698420 e!595285)))

(assert (=> b!1049187 (= res!698420 (bvsle lt!463411 i!1381))))

(assert (=> b!1049187 e!595283))

(declare-fun res!698423 () Bool)

(assert (=> b!1049187 (=> (not res!698423) (not e!595283))))

(assert (=> b!1049187 (= res!698423 (= (select (store (arr!31786 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463411) k!2747))))

(declare-fun b!1049188 () Bool)

(assert (=> b!1049188 (= e!595286 (arrayContainsKey!0 a!3488 k!2747 lt!463411))))

(declare-fun b!1049189 () Bool)

(declare-fun res!698421 () Bool)

(assert (=> b!1049189 (=> (not res!698421) (not e!595280))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049189 (= res!698421 (validKeyInArray!0 k!2747))))

(declare-fun res!698419 () Bool)

(assert (=> start!92352 (=> (not res!698419) (not e!595280))))

(assert (=> start!92352 (= res!698419 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32323 a!3488)) (bvslt (size!32323 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92352 e!595280))

(assert (=> start!92352 true))

(declare-fun array_inv!24408 (array!66101) Bool)

(assert (=> start!92352 (array_inv!24408 a!3488)))

(assert (= (and start!92352 res!698419) b!1049186))

(assert (= (and b!1049186 res!698418) b!1049189))

(assert (= (and b!1049189 res!698421) b!1049185))

(assert (= (and b!1049185 res!698424) b!1049183))

(assert (= (and b!1049183 res!698416) b!1049181))

(assert (= (and b!1049181 res!698422) b!1049187))

(assert (= (and b!1049187 res!698423) b!1049184))

(assert (= (and b!1049184 (not res!698417)) b!1049188))

(assert (= (and b!1049187 (not res!698420)) b!1049182))

(declare-fun m!970119 () Bool)

(assert (=> b!1049181 m!970119))

(declare-fun m!970121 () Bool)

(assert (=> b!1049185 m!970121))

(declare-fun m!970123 () Bool)

(assert (=> b!1049188 m!970123))

(declare-fun m!970125 () Bool)

(assert (=> b!1049189 m!970125))

(declare-fun m!970127 () Bool)

(assert (=> b!1049183 m!970127))

(declare-fun m!970129 () Bool)

(assert (=> b!1049183 m!970129))

(declare-fun m!970131 () Bool)

(assert (=> b!1049186 m!970131))

(declare-fun m!970133 () Bool)

(assert (=> b!1049182 m!970133))

(declare-fun m!970135 () Bool)

(assert (=> b!1049182 m!970135))

(declare-fun m!970137 () Bool)

(assert (=> start!92352 m!970137))

(assert (=> b!1049187 m!970129))

(declare-fun m!970139 () Bool)

(assert (=> b!1049187 m!970139))

(push 1)

