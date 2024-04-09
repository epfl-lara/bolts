; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44630 () Bool)

(assert start!44630)

(declare-fun b!489267 () Bool)

(declare-fun e!287767 () Bool)

(declare-fun e!287765 () Bool)

(assert (=> b!489267 (= e!287767 e!287765)))

(declare-fun res!292359 () Bool)

(assert (=> b!489267 (=> (not res!292359) (not e!287765))))

(declare-datatypes ((SeekEntryResult!3683 0))(
  ( (MissingZero!3683 (index!16911 (_ BitVec 32))) (Found!3683 (index!16912 (_ BitVec 32))) (Intermediate!3683 (undefined!4495 Bool) (index!16913 (_ BitVec 32)) (x!46048 (_ BitVec 32))) (Undefined!3683) (MissingVacant!3683 (index!16914 (_ BitVec 32))) )
))
(declare-fun lt!220805 () SeekEntryResult!3683)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!489267 (= res!292359 (or (= lt!220805 (MissingZero!3683 i!1204)) (= lt!220805 (MissingVacant!3683 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31649 0))(
  ( (array!31650 (arr!15209 (Array (_ BitVec 32) (_ BitVec 64))) (size!15573 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31649)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31649 (_ BitVec 32)) SeekEntryResult!3683)

(assert (=> b!489267 (= lt!220805 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!489268 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!287764 () Bool)

(assert (=> b!489268 (= e!287764 (= (seekEntryOrOpen!0 (select (arr!15209 a!3235) j!176) a!3235 mask!3524) (Found!3683 j!176)))))

(declare-fun res!292361 () Bool)

(assert (=> start!44630 (=> (not res!292361) (not e!287767))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44630 (= res!292361 (validMask!0 mask!3524))))

(assert (=> start!44630 e!287767))

(assert (=> start!44630 true))

(declare-fun array_inv!10983 (array!31649) Bool)

(assert (=> start!44630 (array_inv!10983 a!3235)))

(declare-fun b!489269 () Bool)

(declare-fun res!292354 () Bool)

(assert (=> b!489269 (=> (not res!292354) (not e!287765))))

(declare-datatypes ((List!9420 0))(
  ( (Nil!9417) (Cons!9416 (h!10278 (_ BitVec 64)) (t!15656 List!9420)) )
))
(declare-fun arrayNoDuplicates!0 (array!31649 (_ BitVec 32) List!9420) Bool)

(assert (=> b!489269 (= res!292354 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9417))))

(declare-fun b!489270 () Bool)

(declare-fun res!292357 () Bool)

(assert (=> b!489270 (=> (not res!292357) (not e!287765))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31649 (_ BitVec 32)) Bool)

(assert (=> b!489270 (= res!292357 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489271 () Bool)

(declare-fun res!292353 () Bool)

(assert (=> b!489271 (=> (not res!292353) (not e!287767))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489271 (= res!292353 (validKeyInArray!0 k!2280))))

(declare-fun b!489272 () Bool)

(declare-fun res!292356 () Bool)

(assert (=> b!489272 (=> (not res!292356) (not e!287767))))

(assert (=> b!489272 (= res!292356 (and (= (size!15573 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15573 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15573 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!489273 () Bool)

(declare-fun res!292360 () Bool)

(assert (=> b!489273 (=> (not res!292360) (not e!287767))))

(assert (=> b!489273 (= res!292360 (validKeyInArray!0 (select (arr!15209 a!3235) j!176)))))

(declare-fun b!489274 () Bool)

(assert (=> b!489274 (= e!287765 (not true))))

(declare-fun lt!220807 () SeekEntryResult!3683)

(declare-fun lt!220804 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31649 (_ BitVec 32)) SeekEntryResult!3683)

(assert (=> b!489274 (= lt!220807 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220804 (select (store (arr!15209 a!3235) i!1204 k!2280) j!176) (array!31650 (store (arr!15209 a!3235) i!1204 k!2280) (size!15573 a!3235)) mask!3524))))

(declare-fun lt!220808 () SeekEntryResult!3683)

(declare-fun lt!220806 () (_ BitVec 32))

(assert (=> b!489274 (= lt!220808 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220806 (select (arr!15209 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489274 (= lt!220804 (toIndex!0 (select (store (arr!15209 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!489274 (= lt!220806 (toIndex!0 (select (arr!15209 a!3235) j!176) mask!3524))))

(assert (=> b!489274 e!287764))

(declare-fun res!292355 () Bool)

(assert (=> b!489274 (=> (not res!292355) (not e!287764))))

(assert (=> b!489274 (= res!292355 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14304 0))(
  ( (Unit!14305) )
))
(declare-fun lt!220803 () Unit!14304)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31649 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14304)

(assert (=> b!489274 (= lt!220803 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!489275 () Bool)

(declare-fun res!292358 () Bool)

(assert (=> b!489275 (=> (not res!292358) (not e!287767))))

(declare-fun arrayContainsKey!0 (array!31649 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489275 (= res!292358 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44630 res!292361) b!489272))

(assert (= (and b!489272 res!292356) b!489273))

(assert (= (and b!489273 res!292360) b!489271))

(assert (= (and b!489271 res!292353) b!489275))

(assert (= (and b!489275 res!292358) b!489267))

(assert (= (and b!489267 res!292359) b!489270))

(assert (= (and b!489270 res!292357) b!489269))

(assert (= (and b!489269 res!292354) b!489274))

(assert (= (and b!489274 res!292355) b!489268))

(declare-fun m!469087 () Bool)

(assert (=> b!489271 m!469087))

(declare-fun m!469089 () Bool)

(assert (=> b!489267 m!469089))

(declare-fun m!469091 () Bool)

(assert (=> b!489270 m!469091))

(declare-fun m!469093 () Bool)

(assert (=> b!489269 m!469093))

(declare-fun m!469095 () Bool)

(assert (=> b!489273 m!469095))

(assert (=> b!489273 m!469095))

(declare-fun m!469097 () Bool)

(assert (=> b!489273 m!469097))

(declare-fun m!469099 () Bool)

(assert (=> start!44630 m!469099))

(declare-fun m!469101 () Bool)

(assert (=> start!44630 m!469101))

(assert (=> b!489268 m!469095))

(assert (=> b!489268 m!469095))

(declare-fun m!469103 () Bool)

(assert (=> b!489268 m!469103))

(declare-fun m!469105 () Bool)

(assert (=> b!489275 m!469105))

(assert (=> b!489274 m!469095))

(declare-fun m!469107 () Bool)

(assert (=> b!489274 m!469107))

(declare-fun m!469109 () Bool)

(assert (=> b!489274 m!469109))

(declare-fun m!469111 () Bool)

(assert (=> b!489274 m!469111))

(declare-fun m!469113 () Bool)

(assert (=> b!489274 m!469113))

(assert (=> b!489274 m!469095))

(declare-fun m!469115 () Bool)

(assert (=> b!489274 m!469115))

(assert (=> b!489274 m!469095))

(assert (=> b!489274 m!469113))

(declare-fun m!469117 () Bool)

(assert (=> b!489274 m!469117))

(declare-fun m!469119 () Bool)

(assert (=> b!489274 m!469119))

(assert (=> b!489274 m!469113))

(declare-fun m!469121 () Bool)

(assert (=> b!489274 m!469121))

(push 1)

