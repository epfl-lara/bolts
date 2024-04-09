; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44778 () Bool)

(assert start!44778)

(declare-fun b!491274 () Bool)

(declare-fun res!294365 () Bool)

(declare-fun e!288661 () Bool)

(assert (=> b!491274 (=> (not res!294365) (not e!288661))))

(declare-datatypes ((array!31797 0))(
  ( (array!31798 (arr!15283 (Array (_ BitVec 32) (_ BitVec 64))) (size!15647 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31797)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31797 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!491274 (= res!294365 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!491275 () Bool)

(declare-fun e!288662 () Bool)

(assert (=> b!491275 (= e!288661 e!288662)))

(declare-fun res!294368 () Bool)

(assert (=> b!491275 (=> (not res!294368) (not e!288662))))

(declare-datatypes ((SeekEntryResult!3757 0))(
  ( (MissingZero!3757 (index!17207 (_ BitVec 32))) (Found!3757 (index!17208 (_ BitVec 32))) (Intermediate!3757 (undefined!4569 Bool) (index!17209 (_ BitVec 32)) (x!46322 (_ BitVec 32))) (Undefined!3757) (MissingVacant!3757 (index!17210 (_ BitVec 32))) )
))
(declare-fun lt!222138 () SeekEntryResult!3757)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!491275 (= res!294368 (or (= lt!222138 (MissingZero!3757 i!1204)) (= lt!222138 (MissingVacant!3757 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31797 (_ BitVec 32)) SeekEntryResult!3757)

(assert (=> b!491275 (= lt!222138 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!491276 () Bool)

(declare-fun res!294363 () Bool)

(assert (=> b!491276 (=> (not res!294363) (not e!288662))))

(declare-datatypes ((List!9494 0))(
  ( (Nil!9491) (Cons!9490 (h!10352 (_ BitVec 64)) (t!15730 List!9494)) )
))
(declare-fun arrayNoDuplicates!0 (array!31797 (_ BitVec 32) List!9494) Bool)

(assert (=> b!491276 (= res!294363 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9491))))

(declare-fun b!491277 () Bool)

(declare-fun e!288664 () Bool)

(assert (=> b!491277 (= e!288662 (not e!288664))))

(declare-fun res!294362 () Bool)

(assert (=> b!491277 (=> res!294362 e!288664)))

(declare-fun lt!222136 () (_ BitVec 64))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!222140 () array!31797)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31797 (_ BitVec 32)) SeekEntryResult!3757)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!491277 (= res!294362 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15283 a!3235) j!176) mask!3524) (select (arr!15283 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!222136 mask!3524) lt!222136 lt!222140 mask!3524))))))

(assert (=> b!491277 (= lt!222136 (select (store (arr!15283 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!491277 (= lt!222140 (array!31798 (store (arr!15283 a!3235) i!1204 k0!2280) (size!15647 a!3235)))))

(declare-fun lt!222137 () SeekEntryResult!3757)

(assert (=> b!491277 (= lt!222137 (Found!3757 j!176))))

(assert (=> b!491277 (= lt!222137 (seekEntryOrOpen!0 (select (arr!15283 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31797 (_ BitVec 32)) Bool)

(assert (=> b!491277 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14452 0))(
  ( (Unit!14453) )
))
(declare-fun lt!222139 () Unit!14452)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31797 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14452)

(assert (=> b!491277 (= lt!222139 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!491278 () Bool)

(declare-fun res!294366 () Bool)

(assert (=> b!491278 (=> (not res!294366) (not e!288661))))

(assert (=> b!491278 (= res!294366 (and (= (size!15647 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15647 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15647 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!491280 () Bool)

(declare-fun res!294361 () Bool)

(assert (=> b!491280 (=> (not res!294361) (not e!288661))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!491280 (= res!294361 (validKeyInArray!0 k0!2280))))

(declare-fun b!491281 () Bool)

(declare-fun res!294367 () Bool)

(assert (=> b!491281 (=> (not res!294367) (not e!288661))))

(assert (=> b!491281 (= res!294367 (validKeyInArray!0 (select (arr!15283 a!3235) j!176)))))

(declare-fun b!491282 () Bool)

(declare-fun res!294364 () Bool)

(assert (=> b!491282 (=> (not res!294364) (not e!288662))))

(assert (=> b!491282 (= res!294364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!491279 () Bool)

(assert (=> b!491279 (= e!288664 true)))

(assert (=> b!491279 (= lt!222137 (seekEntryOrOpen!0 lt!222136 lt!222140 mask!3524))))

(declare-fun lt!222135 () Unit!14452)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31797 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14452)

(assert (=> b!491279 (= lt!222135 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k0!2280 j!176 mask!3524))))

(declare-fun res!294360 () Bool)

(assert (=> start!44778 (=> (not res!294360) (not e!288661))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44778 (= res!294360 (validMask!0 mask!3524))))

(assert (=> start!44778 e!288661))

(assert (=> start!44778 true))

(declare-fun array_inv!11057 (array!31797) Bool)

(assert (=> start!44778 (array_inv!11057 a!3235)))

(assert (= (and start!44778 res!294360) b!491278))

(assert (= (and b!491278 res!294366) b!491281))

(assert (= (and b!491281 res!294367) b!491280))

(assert (= (and b!491280 res!294361) b!491274))

(assert (= (and b!491274 res!294365) b!491275))

(assert (= (and b!491275 res!294368) b!491282))

(assert (= (and b!491282 res!294364) b!491276))

(assert (= (and b!491276 res!294363) b!491277))

(assert (= (and b!491277 (not res!294362)) b!491279))

(declare-fun m!471905 () Bool)

(assert (=> b!491279 m!471905))

(declare-fun m!471907 () Bool)

(assert (=> b!491279 m!471907))

(declare-fun m!471909 () Bool)

(assert (=> b!491281 m!471909))

(assert (=> b!491281 m!471909))

(declare-fun m!471911 () Bool)

(assert (=> b!491281 m!471911))

(declare-fun m!471913 () Bool)

(assert (=> b!491277 m!471913))

(declare-fun m!471915 () Bool)

(assert (=> b!491277 m!471915))

(declare-fun m!471917 () Bool)

(assert (=> b!491277 m!471917))

(declare-fun m!471919 () Bool)

(assert (=> b!491277 m!471919))

(assert (=> b!491277 m!471909))

(declare-fun m!471921 () Bool)

(assert (=> b!491277 m!471921))

(assert (=> b!491277 m!471909))

(declare-fun m!471923 () Bool)

(assert (=> b!491277 m!471923))

(assert (=> b!491277 m!471909))

(declare-fun m!471925 () Bool)

(assert (=> b!491277 m!471925))

(assert (=> b!491277 m!471921))

(assert (=> b!491277 m!471909))

(declare-fun m!471927 () Bool)

(assert (=> b!491277 m!471927))

(assert (=> b!491277 m!471915))

(declare-fun m!471929 () Bool)

(assert (=> b!491277 m!471929))

(declare-fun m!471931 () Bool)

(assert (=> b!491282 m!471931))

(declare-fun m!471933 () Bool)

(assert (=> b!491280 m!471933))

(declare-fun m!471935 () Bool)

(assert (=> b!491276 m!471935))

(declare-fun m!471937 () Bool)

(assert (=> start!44778 m!471937))

(declare-fun m!471939 () Bool)

(assert (=> start!44778 m!471939))

(declare-fun m!471941 () Bool)

(assert (=> b!491275 m!471941))

(declare-fun m!471943 () Bool)

(assert (=> b!491274 m!471943))

(check-sat (not b!491280) (not b!491281) (not b!491279) (not b!491274) (not start!44778) (not b!491277) (not b!491275) (not b!491276) (not b!491282))
(check-sat)
