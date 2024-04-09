; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45230 () Bool)

(assert start!45230)

(declare-fun b!496258 () Bool)

(declare-fun res!298805 () Bool)

(declare-fun e!291025 () Bool)

(assert (=> b!496258 (=> (not res!298805) (not e!291025))))

(declare-datatypes ((array!32078 0))(
  ( (array!32079 (arr!15419 (Array (_ BitVec 32) (_ BitVec 64))) (size!15783 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32078)

(declare-datatypes ((List!9630 0))(
  ( (Nil!9627) (Cons!9626 (h!10497 (_ BitVec 64)) (t!15866 List!9630)) )
))
(declare-fun arrayNoDuplicates!0 (array!32078 (_ BitVec 32) List!9630) Bool)

(assert (=> b!496258 (= res!298805 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9627))))

(declare-fun b!496259 () Bool)

(declare-fun res!298803 () Bool)

(declare-fun e!291022 () Bool)

(assert (=> b!496259 (=> (not res!298803) (not e!291022))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!496259 (= res!298803 (and (= (size!15783 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15783 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15783 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!496260 () Bool)

(declare-fun res!298804 () Bool)

(assert (=> b!496260 (=> (not res!298804) (not e!291022))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496260 (= res!298804 (validKeyInArray!0 (select (arr!15419 a!3235) j!176)))))

(declare-fun b!496261 () Bool)

(declare-fun res!298799 () Bool)

(assert (=> b!496261 (=> (not res!298799) (not e!291022))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32078 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496261 (= res!298799 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!496262 () Bool)

(declare-fun e!291023 () Bool)

(assert (=> b!496262 (= e!291023 true)))

(declare-datatypes ((SeekEntryResult!3893 0))(
  ( (MissingZero!3893 (index!17751 (_ BitVec 32))) (Found!3893 (index!17752 (_ BitVec 32))) (Intermediate!3893 (undefined!4705 Bool) (index!17753 (_ BitVec 32)) (x!46836 (_ BitVec 32))) (Undefined!3893) (MissingVacant!3893 (index!17754 (_ BitVec 32))) )
))
(declare-fun lt!224710 () SeekEntryResult!3893)

(assert (=> b!496262 (and (bvslt (x!46836 lt!224710) #b01111111111111111111111111111110) (or (= (select (arr!15419 a!3235) (index!17753 lt!224710)) (select (arr!15419 a!3235) j!176)) (= (select (arr!15419 a!3235) (index!17753 lt!224710)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15419 a!3235) (index!17753 lt!224710)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!496263 () Bool)

(declare-fun res!298800 () Bool)

(assert (=> b!496263 (=> (not res!298800) (not e!291025))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32078 (_ BitVec 32)) Bool)

(assert (=> b!496263 (= res!298800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496264 () Bool)

(declare-fun e!291021 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32078 (_ BitVec 32)) SeekEntryResult!3893)

(assert (=> b!496264 (= e!291021 (= (seekEntryOrOpen!0 (select (arr!15419 a!3235) j!176) a!3235 mask!3524) (Found!3893 j!176)))))

(declare-fun b!496266 () Bool)

(declare-fun res!298796 () Bool)

(assert (=> b!496266 (=> (not res!298796) (not e!291022))))

(assert (=> b!496266 (= res!298796 (validKeyInArray!0 k!2280))))

(declare-fun b!496267 () Bool)

(assert (=> b!496267 (= e!291022 e!291025)))

(declare-fun res!298798 () Bool)

(assert (=> b!496267 (=> (not res!298798) (not e!291025))))

(declare-fun lt!224711 () SeekEntryResult!3893)

(assert (=> b!496267 (= res!298798 (or (= lt!224711 (MissingZero!3893 i!1204)) (= lt!224711 (MissingVacant!3893 i!1204))))))

(assert (=> b!496267 (= lt!224711 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!496268 () Bool)

(assert (=> b!496268 (= e!291025 (not e!291023))))

(declare-fun res!298802 () Bool)

(assert (=> b!496268 (=> res!298802 e!291023)))

(declare-fun lt!224712 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32078 (_ BitVec 32)) SeekEntryResult!3893)

(assert (=> b!496268 (= res!298802 (= lt!224710 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224712 (select (store (arr!15419 a!3235) i!1204 k!2280) j!176) (array!32079 (store (arr!15419 a!3235) i!1204 k!2280) (size!15783 a!3235)) mask!3524)))))

(declare-fun lt!224714 () (_ BitVec 32))

(assert (=> b!496268 (= lt!224710 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224714 (select (arr!15419 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496268 (= lt!224712 (toIndex!0 (select (store (arr!15419 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!496268 (= lt!224714 (toIndex!0 (select (arr!15419 a!3235) j!176) mask!3524))))

(assert (=> b!496268 e!291021))

(declare-fun res!298797 () Bool)

(assert (=> b!496268 (=> (not res!298797) (not e!291021))))

(assert (=> b!496268 (= res!298797 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14724 0))(
  ( (Unit!14725) )
))
(declare-fun lt!224713 () Unit!14724)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32078 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14724)

(assert (=> b!496268 (= lt!224713 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!298795 () Bool)

(assert (=> start!45230 (=> (not res!298795) (not e!291022))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45230 (= res!298795 (validMask!0 mask!3524))))

(assert (=> start!45230 e!291022))

(assert (=> start!45230 true))

(declare-fun array_inv!11193 (array!32078) Bool)

(assert (=> start!45230 (array_inv!11193 a!3235)))

(declare-fun b!496265 () Bool)

(declare-fun res!298801 () Bool)

(assert (=> b!496265 (=> res!298801 e!291023)))

(assert (=> b!496265 (= res!298801 (or (undefined!4705 lt!224710) (not (is-Intermediate!3893 lt!224710))))))

(assert (= (and start!45230 res!298795) b!496259))

(assert (= (and b!496259 res!298803) b!496260))

(assert (= (and b!496260 res!298804) b!496266))

(assert (= (and b!496266 res!298796) b!496261))

(assert (= (and b!496261 res!298799) b!496267))

(assert (= (and b!496267 res!298798) b!496263))

(assert (= (and b!496263 res!298800) b!496258))

(assert (= (and b!496258 res!298805) b!496268))

(assert (= (and b!496268 res!298797) b!496264))

(assert (= (and b!496268 (not res!298802)) b!496265))

(assert (= (and b!496265 (not res!298801)) b!496262))

(declare-fun m!477533 () Bool)

(assert (=> b!496267 m!477533))

(declare-fun m!477535 () Bool)

(assert (=> b!496266 m!477535))

(declare-fun m!477537 () Bool)

(assert (=> b!496261 m!477537))

(declare-fun m!477539 () Bool)

(assert (=> start!45230 m!477539))

(declare-fun m!477541 () Bool)

(assert (=> start!45230 m!477541))

(declare-fun m!477543 () Bool)

(assert (=> b!496263 m!477543))

(declare-fun m!477545 () Bool)

(assert (=> b!496264 m!477545))

(assert (=> b!496264 m!477545))

(declare-fun m!477547 () Bool)

(assert (=> b!496264 m!477547))

(assert (=> b!496260 m!477545))

(assert (=> b!496260 m!477545))

(declare-fun m!477549 () Bool)

(assert (=> b!496260 m!477549))

(declare-fun m!477551 () Bool)

(assert (=> b!496258 m!477551))

(declare-fun m!477553 () Bool)

(assert (=> b!496262 m!477553))

(assert (=> b!496262 m!477545))

(assert (=> b!496268 m!477545))

(declare-fun m!477555 () Bool)

(assert (=> b!496268 m!477555))

(declare-fun m!477557 () Bool)

(assert (=> b!496268 m!477557))

(declare-fun m!477559 () Bool)

(assert (=> b!496268 m!477559))

(declare-fun m!477561 () Bool)

(assert (=> b!496268 m!477561))

(assert (=> b!496268 m!477545))

(declare-fun m!477563 () Bool)

(assert (=> b!496268 m!477563))

(assert (=> b!496268 m!477545))

(assert (=> b!496268 m!477561))

(declare-fun m!477565 () Bool)

(assert (=> b!496268 m!477565))

(assert (=> b!496268 m!477561))

(declare-fun m!477567 () Bool)

(assert (=> b!496268 m!477567))

(declare-fun m!477569 () Bool)

(assert (=> b!496268 m!477569))

(push 1)

