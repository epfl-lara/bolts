; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118108 () Bool)

(assert start!118108)

(declare-fun b!1382376 () Bool)

(declare-fun e!783565 () Bool)

(declare-datatypes ((array!94388 0))(
  ( (array!94389 (arr!45571 (Array (_ BitVec 32) (_ BitVec 64))) (size!46122 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94388)

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1382376 (= e!783565 (and (not (= (select (arr!45571 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45571 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge #b00000000000000000000000000000000 (size!46122 a!2971))))))

(declare-fun b!1382377 () Bool)

(declare-fun res!924080 () Bool)

(assert (=> b!1382377 (=> (not res!924080) (not e!783565))))

(declare-datatypes ((List!32285 0))(
  ( (Nil!32282) (Cons!32281 (h!33490 (_ BitVec 64)) (t!46986 List!32285)) )
))
(declare-fun arrayNoDuplicates!0 (array!94388 (_ BitVec 32) List!32285) Bool)

(assert (=> b!1382377 (= res!924080 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32282))))

(declare-fun b!1382378 () Bool)

(declare-fun res!924079 () Bool)

(assert (=> b!1382378 (=> (not res!924079) (not e!783565))))

(declare-fun mask!3034 () (_ BitVec 32))

(assert (=> b!1382378 (= res!924079 (and (= (size!46122 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46122 a!2971))))))

(declare-fun b!1382379 () Bool)

(declare-fun res!924078 () Bool)

(assert (=> b!1382379 (=> (not res!924078) (not e!783565))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382379 (= res!924078 (validKeyInArray!0 (select (arr!45571 a!2971) i!1094)))))

(declare-fun b!1382380 () Bool)

(declare-fun res!924077 () Bool)

(assert (=> b!1382380 (=> (not res!924077) (not e!783565))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94388 (_ BitVec 32)) Bool)

(assert (=> b!1382380 (= res!924077 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun res!924081 () Bool)

(assert (=> start!118108 (=> (not res!924081) (not e!783565))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118108 (= res!924081 (validMask!0 mask!3034))))

(assert (=> start!118108 e!783565))

(assert (=> start!118108 true))

(declare-fun array_inv!34516 (array!94388) Bool)

(assert (=> start!118108 (array_inv!34516 a!2971)))

(assert (= (and start!118108 res!924081) b!1382378))

(assert (= (and b!1382378 res!924079) b!1382379))

(assert (= (and b!1382379 res!924078) b!1382377))

(assert (= (and b!1382377 res!924080) b!1382380))

(assert (= (and b!1382380 res!924077) b!1382376))

(declare-fun m!1267575 () Bool)

(assert (=> b!1382377 m!1267575))

(declare-fun m!1267577 () Bool)

(assert (=> b!1382380 m!1267577))

(declare-fun m!1267579 () Bool)

(assert (=> b!1382379 m!1267579))

(assert (=> b!1382379 m!1267579))

(declare-fun m!1267581 () Bool)

(assert (=> b!1382379 m!1267581))

(declare-fun m!1267583 () Bool)

(assert (=> start!118108 m!1267583))

(declare-fun m!1267585 () Bool)

(assert (=> start!118108 m!1267585))

(assert (=> b!1382376 m!1267579))

(push 1)

(assert (not b!1382377))

