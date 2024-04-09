; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45222 () Bool)

(assert start!45222)

(declare-fun b!496126 () Bool)

(declare-fun res!298667 () Bool)

(declare-fun e!290964 () Bool)

(assert (=> b!496126 (=> (not res!298667) (not e!290964))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496126 (= res!298667 (validKeyInArray!0 k0!2280))))

(declare-fun b!496128 () Bool)

(declare-fun res!298668 () Bool)

(declare-fun e!290961 () Bool)

(assert (=> b!496128 (=> res!298668 e!290961)))

(declare-datatypes ((SeekEntryResult!3889 0))(
  ( (MissingZero!3889 (index!17735 (_ BitVec 32))) (Found!3889 (index!17736 (_ BitVec 32))) (Intermediate!3889 (undefined!4701 Bool) (index!17737 (_ BitVec 32)) (x!46824 (_ BitVec 32))) (Undefined!3889) (MissingVacant!3889 (index!17738 (_ BitVec 32))) )
))
(declare-fun lt!224650 () SeekEntryResult!3889)

(get-info :version)

(assert (=> b!496128 (= res!298668 (or (undefined!4701 lt!224650) (not ((_ is Intermediate!3889) lt!224650))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!290963 () Bool)

(declare-fun b!496129 () Bool)

(declare-datatypes ((array!32070 0))(
  ( (array!32071 (arr!15415 (Array (_ BitVec 32) (_ BitVec 64))) (size!15779 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32070)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32070 (_ BitVec 32)) SeekEntryResult!3889)

(assert (=> b!496129 (= e!290963 (= (seekEntryOrOpen!0 (select (arr!15415 a!3235) j!176) a!3235 mask!3524) (Found!3889 j!176)))))

(declare-fun b!496130 () Bool)

(declare-fun res!298671 () Bool)

(assert (=> b!496130 (=> (not res!298671) (not e!290964))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!496130 (= res!298671 (and (= (size!15779 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15779 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15779 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!496131 () Bool)

(declare-fun res!298663 () Bool)

(assert (=> b!496131 (=> (not res!298663) (not e!290964))))

(declare-fun arrayContainsKey!0 (array!32070 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496131 (= res!298663 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!496132 () Bool)

(declare-fun res!298670 () Bool)

(declare-fun e!290965 () Bool)

(assert (=> b!496132 (=> (not res!298670) (not e!290965))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32070 (_ BitVec 32)) Bool)

(assert (=> b!496132 (= res!298670 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496127 () Bool)

(assert (=> b!496127 (= e!290965 (not e!290961))))

(declare-fun res!298666 () Bool)

(assert (=> b!496127 (=> res!298666 e!290961)))

(declare-fun lt!224652 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32070 (_ BitVec 32)) SeekEntryResult!3889)

(assert (=> b!496127 (= res!298666 (= lt!224650 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224652 (select (store (arr!15415 a!3235) i!1204 k0!2280) j!176) (array!32071 (store (arr!15415 a!3235) i!1204 k0!2280) (size!15779 a!3235)) mask!3524)))))

(declare-fun lt!224653 () (_ BitVec 32))

(assert (=> b!496127 (= lt!224650 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224653 (select (arr!15415 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496127 (= lt!224652 (toIndex!0 (select (store (arr!15415 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!496127 (= lt!224653 (toIndex!0 (select (arr!15415 a!3235) j!176) mask!3524))))

(assert (=> b!496127 e!290963))

(declare-fun res!298664 () Bool)

(assert (=> b!496127 (=> (not res!298664) (not e!290963))))

(assert (=> b!496127 (= res!298664 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14716 0))(
  ( (Unit!14717) )
))
(declare-fun lt!224651 () Unit!14716)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32070 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14716)

(assert (=> b!496127 (= lt!224651 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!298665 () Bool)

(assert (=> start!45222 (=> (not res!298665) (not e!290964))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45222 (= res!298665 (validMask!0 mask!3524))))

(assert (=> start!45222 e!290964))

(assert (=> start!45222 true))

(declare-fun array_inv!11189 (array!32070) Bool)

(assert (=> start!45222 (array_inv!11189 a!3235)))

(declare-fun b!496133 () Bool)

(assert (=> b!496133 (= e!290964 e!290965)))

(declare-fun res!298673 () Bool)

(assert (=> b!496133 (=> (not res!298673) (not e!290965))))

(declare-fun lt!224654 () SeekEntryResult!3889)

(assert (=> b!496133 (= res!298673 (or (= lt!224654 (MissingZero!3889 i!1204)) (= lt!224654 (MissingVacant!3889 i!1204))))))

(assert (=> b!496133 (= lt!224654 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!496134 () Bool)

(declare-fun res!298672 () Bool)

(assert (=> b!496134 (=> (not res!298672) (not e!290965))))

(declare-datatypes ((List!9626 0))(
  ( (Nil!9623) (Cons!9622 (h!10493 (_ BitVec 64)) (t!15862 List!9626)) )
))
(declare-fun arrayNoDuplicates!0 (array!32070 (_ BitVec 32) List!9626) Bool)

(assert (=> b!496134 (= res!298672 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9623))))

(declare-fun b!496135 () Bool)

(declare-fun res!298669 () Bool)

(assert (=> b!496135 (=> (not res!298669) (not e!290964))))

(assert (=> b!496135 (= res!298669 (validKeyInArray!0 (select (arr!15415 a!3235) j!176)))))

(declare-fun b!496136 () Bool)

(assert (=> b!496136 (= e!290961 true)))

(assert (=> b!496136 (and (bvslt (x!46824 lt!224650) #b01111111111111111111111111111110) (or (= (select (arr!15415 a!3235) (index!17737 lt!224650)) (select (arr!15415 a!3235) j!176)) (= (select (arr!15415 a!3235) (index!17737 lt!224650)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15415 a!3235) (index!17737 lt!224650)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!45222 res!298665) b!496130))

(assert (= (and b!496130 res!298671) b!496135))

(assert (= (and b!496135 res!298669) b!496126))

(assert (= (and b!496126 res!298667) b!496131))

(assert (= (and b!496131 res!298663) b!496133))

(assert (= (and b!496133 res!298673) b!496132))

(assert (= (and b!496132 res!298670) b!496134))

(assert (= (and b!496134 res!298672) b!496127))

(assert (= (and b!496127 res!298664) b!496129))

(assert (= (and b!496127 (not res!298666)) b!496128))

(assert (= (and b!496128 (not res!298668)) b!496136))

(declare-fun m!477381 () Bool)

(assert (=> b!496134 m!477381))

(declare-fun m!477383 () Bool)

(assert (=> b!496135 m!477383))

(assert (=> b!496135 m!477383))

(declare-fun m!477385 () Bool)

(assert (=> b!496135 m!477385))

(declare-fun m!477387 () Bool)

(assert (=> b!496136 m!477387))

(assert (=> b!496136 m!477383))

(declare-fun m!477389 () Bool)

(assert (=> b!496126 m!477389))

(declare-fun m!477391 () Bool)

(assert (=> b!496131 m!477391))

(declare-fun m!477393 () Bool)

(assert (=> start!45222 m!477393))

(declare-fun m!477395 () Bool)

(assert (=> start!45222 m!477395))

(declare-fun m!477397 () Bool)

(assert (=> b!496127 m!477397))

(declare-fun m!477399 () Bool)

(assert (=> b!496127 m!477399))

(declare-fun m!477401 () Bool)

(assert (=> b!496127 m!477401))

(declare-fun m!477403 () Bool)

(assert (=> b!496127 m!477403))

(assert (=> b!496127 m!477397))

(assert (=> b!496127 m!477383))

(declare-fun m!477405 () Bool)

(assert (=> b!496127 m!477405))

(assert (=> b!496127 m!477383))

(declare-fun m!477407 () Bool)

(assert (=> b!496127 m!477407))

(assert (=> b!496127 m!477397))

(declare-fun m!477409 () Bool)

(assert (=> b!496127 m!477409))

(assert (=> b!496127 m!477383))

(declare-fun m!477411 () Bool)

(assert (=> b!496127 m!477411))

(assert (=> b!496129 m!477383))

(assert (=> b!496129 m!477383))

(declare-fun m!477413 () Bool)

(assert (=> b!496129 m!477413))

(declare-fun m!477415 () Bool)

(assert (=> b!496132 m!477415))

(declare-fun m!477417 () Bool)

(assert (=> b!496133 m!477417))

(check-sat (not b!496127) (not b!496131) (not b!496132) (not start!45222) (not b!496133) (not b!496134) (not b!496126) (not b!496129) (not b!496135))
(check-sat)
