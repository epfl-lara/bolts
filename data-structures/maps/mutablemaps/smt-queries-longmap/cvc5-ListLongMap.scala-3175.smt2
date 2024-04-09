; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44686 () Bool)

(assert start!44686)

(declare-fun b!490023 () Bool)

(declare-fun e!288100 () Bool)

(assert (=> b!490023 (= e!288100 (not true))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3711 0))(
  ( (MissingZero!3711 (index!17023 (_ BitVec 32))) (Found!3711 (index!17024 (_ BitVec 32))) (Intermediate!3711 (undefined!4523 Bool) (index!17025 (_ BitVec 32)) (x!46156 (_ BitVec 32))) (Undefined!3711) (MissingVacant!3711 (index!17026 (_ BitVec 32))) )
))
(declare-fun lt!221312 () SeekEntryResult!3711)

(declare-datatypes ((array!31705 0))(
  ( (array!31706 (arr!15237 (Array (_ BitVec 32) (_ BitVec 64))) (size!15601 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31705)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!221310 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31705 (_ BitVec 32)) SeekEntryResult!3711)

(assert (=> b!490023 (= lt!221312 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221310 (select (store (arr!15237 a!3235) i!1204 k!2280) j!176) (array!31706 (store (arr!15237 a!3235) i!1204 k!2280) (size!15601 a!3235)) mask!3524))))

(declare-fun lt!221308 () (_ BitVec 32))

(declare-fun lt!221309 () SeekEntryResult!3711)

(assert (=> b!490023 (= lt!221309 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221308 (select (arr!15237 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490023 (= lt!221310 (toIndex!0 (select (store (arr!15237 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!490023 (= lt!221308 (toIndex!0 (select (arr!15237 a!3235) j!176) mask!3524))))

(declare-fun e!288103 () Bool)

(assert (=> b!490023 e!288103))

(declare-fun res!293116 () Bool)

(assert (=> b!490023 (=> (not res!293116) (not e!288103))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31705 (_ BitVec 32)) Bool)

(assert (=> b!490023 (= res!293116 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14360 0))(
  ( (Unit!14361) )
))
(declare-fun lt!221307 () Unit!14360)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31705 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14360)

(assert (=> b!490023 (= lt!221307 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490024 () Bool)

(declare-fun res!293109 () Bool)

(declare-fun e!288101 () Bool)

(assert (=> b!490024 (=> (not res!293109) (not e!288101))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490024 (= res!293109 (validKeyInArray!0 (select (arr!15237 a!3235) j!176)))))

(declare-fun res!293115 () Bool)

(assert (=> start!44686 (=> (not res!293115) (not e!288101))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44686 (= res!293115 (validMask!0 mask!3524))))

(assert (=> start!44686 e!288101))

(assert (=> start!44686 true))

(declare-fun array_inv!11011 (array!31705) Bool)

(assert (=> start!44686 (array_inv!11011 a!3235)))

(declare-fun b!490025 () Bool)

(declare-fun res!293114 () Bool)

(assert (=> b!490025 (=> (not res!293114) (not e!288100))))

(declare-datatypes ((List!9448 0))(
  ( (Nil!9445) (Cons!9444 (h!10306 (_ BitVec 64)) (t!15684 List!9448)) )
))
(declare-fun arrayNoDuplicates!0 (array!31705 (_ BitVec 32) List!9448) Bool)

(assert (=> b!490025 (= res!293114 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9445))))

(declare-fun b!490026 () Bool)

(declare-fun res!293111 () Bool)

(assert (=> b!490026 (=> (not res!293111) (not e!288100))))

(assert (=> b!490026 (= res!293111 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490027 () Bool)

(declare-fun res!293112 () Bool)

(assert (=> b!490027 (=> (not res!293112) (not e!288101))))

(declare-fun arrayContainsKey!0 (array!31705 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490027 (= res!293112 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!490028 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31705 (_ BitVec 32)) SeekEntryResult!3711)

(assert (=> b!490028 (= e!288103 (= (seekEntryOrOpen!0 (select (arr!15237 a!3235) j!176) a!3235 mask!3524) (Found!3711 j!176)))))

(declare-fun b!490029 () Bool)

(declare-fun res!293113 () Bool)

(assert (=> b!490029 (=> (not res!293113) (not e!288101))))

(assert (=> b!490029 (= res!293113 (and (= (size!15601 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15601 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15601 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!490030 () Bool)

(assert (=> b!490030 (= e!288101 e!288100)))

(declare-fun res!293110 () Bool)

(assert (=> b!490030 (=> (not res!293110) (not e!288100))))

(declare-fun lt!221311 () SeekEntryResult!3711)

(assert (=> b!490030 (= res!293110 (or (= lt!221311 (MissingZero!3711 i!1204)) (= lt!221311 (MissingVacant!3711 i!1204))))))

(assert (=> b!490030 (= lt!221311 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!490031 () Bool)

(declare-fun res!293117 () Bool)

(assert (=> b!490031 (=> (not res!293117) (not e!288101))))

(assert (=> b!490031 (= res!293117 (validKeyInArray!0 k!2280))))

(assert (= (and start!44686 res!293115) b!490029))

(assert (= (and b!490029 res!293113) b!490024))

(assert (= (and b!490024 res!293109) b!490031))

(assert (= (and b!490031 res!293117) b!490027))

(assert (= (and b!490027 res!293112) b!490030))

(assert (= (and b!490030 res!293110) b!490026))

(assert (= (and b!490026 res!293111) b!490025))

(assert (= (and b!490025 res!293114) b!490023))

(assert (= (and b!490023 res!293116) b!490028))

(declare-fun m!470095 () Bool)

(assert (=> b!490031 m!470095))

(declare-fun m!470097 () Bool)

(assert (=> b!490023 m!470097))

(declare-fun m!470099 () Bool)

(assert (=> b!490023 m!470099))

(declare-fun m!470101 () Bool)

(assert (=> b!490023 m!470101))

(declare-fun m!470103 () Bool)

(assert (=> b!490023 m!470103))

(declare-fun m!470105 () Bool)

(assert (=> b!490023 m!470105))

(assert (=> b!490023 m!470103))

(assert (=> b!490023 m!470101))

(declare-fun m!470107 () Bool)

(assert (=> b!490023 m!470107))

(declare-fun m!470109 () Bool)

(assert (=> b!490023 m!470109))

(assert (=> b!490023 m!470103))

(declare-fun m!470111 () Bool)

(assert (=> b!490023 m!470111))

(assert (=> b!490023 m!470101))

(declare-fun m!470113 () Bool)

(assert (=> b!490023 m!470113))

(assert (=> b!490024 m!470103))

(assert (=> b!490024 m!470103))

(declare-fun m!470115 () Bool)

(assert (=> b!490024 m!470115))

(declare-fun m!470117 () Bool)

(assert (=> b!490025 m!470117))

(declare-fun m!470119 () Bool)

(assert (=> start!44686 m!470119))

(declare-fun m!470121 () Bool)

(assert (=> start!44686 m!470121))

(declare-fun m!470123 () Bool)

(assert (=> b!490027 m!470123))

(assert (=> b!490028 m!470103))

(assert (=> b!490028 m!470103))

(declare-fun m!470125 () Bool)

(assert (=> b!490028 m!470125))

(declare-fun m!470127 () Bool)

(assert (=> b!490026 m!470127))

(declare-fun m!470129 () Bool)

(assert (=> b!490030 m!470129))

(push 1)

