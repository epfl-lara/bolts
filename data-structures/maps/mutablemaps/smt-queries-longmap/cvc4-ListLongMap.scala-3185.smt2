; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44750 () Bool)

(assert start!44750)

(declare-fun b!490895 () Bool)

(declare-fun e!288496 () Bool)

(declare-fun e!288495 () Bool)

(assert (=> b!490895 (= e!288496 e!288495)))

(declare-fun res!293985 () Bool)

(assert (=> b!490895 (=> res!293985 e!288495)))

(declare-fun mask!3524 () (_ BitVec 32))

(assert (=> b!490895 (= res!293985 (bvslt mask!3524 #b00000000000000000000000000000000))))

(declare-datatypes ((array!31769 0))(
  ( (array!31770 (arr!15269 (Array (_ BitVec 32) (_ BitVec 64))) (size!15633 (_ BitVec 32))) )
))
(declare-fun lt!221884 () array!31769)

(declare-datatypes ((SeekEntryResult!3743 0))(
  ( (MissingZero!3743 (index!17151 (_ BitVec 32))) (Found!3743 (index!17152 (_ BitVec 32))) (Intermediate!3743 (undefined!4555 Bool) (index!17153 (_ BitVec 32)) (x!46268 (_ BitVec 32))) (Undefined!3743) (MissingVacant!3743 (index!17154 (_ BitVec 32))) )
))
(declare-fun lt!221887 () SeekEntryResult!3743)

(declare-fun lt!221883 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31769 (_ BitVec 32)) SeekEntryResult!3743)

(assert (=> b!490895 (= lt!221887 (seekEntryOrOpen!0 lt!221883 lt!221884 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun a!3235 () array!31769)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((Unit!14424 0))(
  ( (Unit!14425) )
))
(declare-fun lt!221886 () Unit!14424)

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31769 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14424)

(assert (=> b!490895 (= lt!221886 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!490896 () Bool)

(declare-fun e!288494 () Bool)

(declare-fun e!288493 () Bool)

(assert (=> b!490896 (= e!288494 e!288493)))

(declare-fun res!293983 () Bool)

(assert (=> b!490896 (=> (not res!293983) (not e!288493))))

(declare-fun lt!221888 () SeekEntryResult!3743)

(assert (=> b!490896 (= res!293983 (or (= lt!221888 (MissingZero!3743 i!1204)) (= lt!221888 (MissingVacant!3743 i!1204))))))

(assert (=> b!490896 (= lt!221888 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!293989 () Bool)

(assert (=> start!44750 (=> (not res!293989) (not e!288494))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44750 (= res!293989 (validMask!0 mask!3524))))

(assert (=> start!44750 e!288494))

(assert (=> start!44750 true))

(declare-fun array_inv!11043 (array!31769) Bool)

(assert (=> start!44750 (array_inv!11043 a!3235)))

(declare-fun b!490897 () Bool)

(assert (=> b!490897 (= e!288493 (not e!288496))))

(declare-fun res!293984 () Bool)

(assert (=> b!490897 (=> res!293984 e!288496)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31769 (_ BitVec 32)) SeekEntryResult!3743)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490897 (= res!293984 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15269 a!3235) j!176) mask!3524) (select (arr!15269 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221883 mask!3524) lt!221883 lt!221884 mask!3524))))))

(assert (=> b!490897 (= lt!221883 (select (store (arr!15269 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!490897 (= lt!221884 (array!31770 (store (arr!15269 a!3235) i!1204 k!2280) (size!15633 a!3235)))))

(assert (=> b!490897 (= lt!221887 (Found!3743 j!176))))

(assert (=> b!490897 (= lt!221887 (seekEntryOrOpen!0 (select (arr!15269 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31769 (_ BitVec 32)) Bool)

(assert (=> b!490897 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!221885 () Unit!14424)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31769 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14424)

(assert (=> b!490897 (= lt!221885 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490898 () Bool)

(declare-fun res!293982 () Bool)

(assert (=> b!490898 (=> (not res!293982) (not e!288494))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490898 (= res!293982 (validKeyInArray!0 (select (arr!15269 a!3235) j!176)))))

(declare-fun b!490899 () Bool)

(declare-fun res!293990 () Bool)

(assert (=> b!490899 (=> (not res!293990) (not e!288494))))

(declare-fun arrayContainsKey!0 (array!31769 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490899 (= res!293990 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!490900 () Bool)

(declare-fun res!293987 () Bool)

(assert (=> b!490900 (=> (not res!293987) (not e!288494))))

(assert (=> b!490900 (= res!293987 (validKeyInArray!0 k!2280))))

(declare-fun b!490901 () Bool)

(assert (=> b!490901 (= e!288495 (validKeyInArray!0 lt!221883))))

(declare-fun b!490902 () Bool)

(declare-fun res!293988 () Bool)

(assert (=> b!490902 (=> (not res!293988) (not e!288493))))

(assert (=> b!490902 (= res!293988 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490903 () Bool)

(declare-fun res!293981 () Bool)

(assert (=> b!490903 (=> (not res!293981) (not e!288494))))

(assert (=> b!490903 (= res!293981 (and (= (size!15633 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15633 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15633 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!490904 () Bool)

(declare-fun res!293986 () Bool)

(assert (=> b!490904 (=> (not res!293986) (not e!288493))))

(declare-datatypes ((List!9480 0))(
  ( (Nil!9477) (Cons!9476 (h!10338 (_ BitVec 64)) (t!15716 List!9480)) )
))
(declare-fun arrayNoDuplicates!0 (array!31769 (_ BitVec 32) List!9480) Bool)

(assert (=> b!490904 (= res!293986 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9477))))

(assert (= (and start!44750 res!293989) b!490903))

(assert (= (and b!490903 res!293981) b!490898))

(assert (= (and b!490898 res!293982) b!490900))

(assert (= (and b!490900 res!293987) b!490899))

(assert (= (and b!490899 res!293990) b!490896))

(assert (= (and b!490896 res!293983) b!490902))

(assert (= (and b!490902 res!293988) b!490904))

(assert (= (and b!490904 res!293986) b!490897))

(assert (= (and b!490897 (not res!293984)) b!490895))

(assert (= (and b!490895 (not res!293985)) b!490901))

(declare-fun m!471343 () Bool)

(assert (=> b!490904 m!471343))

(declare-fun m!471345 () Bool)

(assert (=> b!490895 m!471345))

(declare-fun m!471347 () Bool)

(assert (=> b!490895 m!471347))

(declare-fun m!471349 () Bool)

(assert (=> b!490900 m!471349))

(declare-fun m!471351 () Bool)

(assert (=> b!490898 m!471351))

(assert (=> b!490898 m!471351))

(declare-fun m!471353 () Bool)

(assert (=> b!490898 m!471353))

(declare-fun m!471355 () Bool)

(assert (=> b!490896 m!471355))

(declare-fun m!471357 () Bool)

(assert (=> b!490902 m!471357))

(declare-fun m!471359 () Bool)

(assert (=> b!490897 m!471359))

(declare-fun m!471361 () Bool)

(assert (=> b!490897 m!471361))

(declare-fun m!471363 () Bool)

(assert (=> b!490897 m!471363))

(declare-fun m!471365 () Bool)

(assert (=> b!490897 m!471365))

(declare-fun m!471367 () Bool)

(assert (=> b!490897 m!471367))

(assert (=> b!490897 m!471359))

(declare-fun m!471369 () Bool)

(assert (=> b!490897 m!471369))

(assert (=> b!490897 m!471351))

(declare-fun m!471371 () Bool)

(assert (=> b!490897 m!471371))

(assert (=> b!490897 m!471351))

(assert (=> b!490897 m!471369))

(assert (=> b!490897 m!471351))

(declare-fun m!471373 () Bool)

(assert (=> b!490897 m!471373))

(assert (=> b!490897 m!471351))

(declare-fun m!471375 () Bool)

(assert (=> b!490897 m!471375))

(declare-fun m!471377 () Bool)

(assert (=> b!490899 m!471377))

(declare-fun m!471379 () Bool)

(assert (=> b!490901 m!471379))

(declare-fun m!471381 () Bool)

(assert (=> start!44750 m!471381))

(declare-fun m!471383 () Bool)

(assert (=> start!44750 m!471383))

(push 1)

(assert (not start!44750))

