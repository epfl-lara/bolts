; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45600 () Bool)

(assert start!45600)

(declare-fun b!501778 () Bool)

(declare-fun e!293944 () Bool)

(declare-fun e!293940 () Bool)

(assert (=> b!501778 (= e!293944 e!293940)))

(declare-fun res!303404 () Bool)

(assert (=> b!501778 (=> res!303404 e!293940)))

(declare-fun lt!228042 () (_ BitVec 32))

(declare-datatypes ((array!32316 0))(
  ( (array!32317 (arr!15535 (Array (_ BitVec 32) (_ BitVec 64))) (size!15899 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32316)

(declare-datatypes ((SeekEntryResult!4009 0))(
  ( (MissingZero!4009 (index!18224 (_ BitVec 32))) (Found!4009 (index!18225 (_ BitVec 32))) (Intermediate!4009 (undefined!4821 Bool) (index!18226 (_ BitVec 32)) (x!47285 (_ BitVec 32))) (Undefined!4009) (MissingVacant!4009 (index!18227 (_ BitVec 32))) )
))
(declare-fun lt!228043 () SeekEntryResult!4009)

(assert (=> b!501778 (= res!303404 (or (bvsgt (x!47285 lt!228043) #b01111111111111111111111111111110) (bvslt lt!228042 #b00000000000000000000000000000000) (bvsge lt!228042 (size!15899 a!3235)) (bvslt (index!18226 lt!228043) #b00000000000000000000000000000000) (bvsge (index!18226 lt!228043) (size!15899 a!3235)) (not (= lt!228043 (Intermediate!4009 false (index!18226 lt!228043) (x!47285 lt!228043))))))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!501778 (= (index!18226 lt!228043) i!1204)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((Unit!15126 0))(
  ( (Unit!15127) )
))
(declare-fun lt!228040 () Unit!15126)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32316 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15126)

(assert (=> b!501778 (= lt!228040 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!228042 #b00000000000000000000000000000000 (index!18226 lt!228043) (x!47285 lt!228043) mask!3524))))

(assert (=> b!501778 (and (or (= (select (arr!15535 a!3235) (index!18226 lt!228043)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15535 a!3235) (index!18226 lt!228043)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15535 a!3235) (index!18226 lt!228043)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15535 a!3235) (index!18226 lt!228043)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228039 () Unit!15126)

(declare-fun e!293939 () Unit!15126)

(assert (=> b!501778 (= lt!228039 e!293939)))

(declare-fun c!59468 () Bool)

(assert (=> b!501778 (= c!59468 (= (select (arr!15535 a!3235) (index!18226 lt!228043)) (select (arr!15535 a!3235) j!176)))))

(assert (=> b!501778 (and (bvslt (x!47285 lt!228043) #b01111111111111111111111111111110) (or (= (select (arr!15535 a!3235) (index!18226 lt!228043)) (select (arr!15535 a!3235) j!176)) (= (select (arr!15535 a!3235) (index!18226 lt!228043)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15535 a!3235) (index!18226 lt!228043)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!303400 () Bool)

(declare-fun e!293946 () Bool)

(assert (=> start!45600 (=> (not res!303400) (not e!293946))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45600 (= res!303400 (validMask!0 mask!3524))))

(assert (=> start!45600 e!293946))

(assert (=> start!45600 true))

(declare-fun array_inv!11309 (array!32316) Bool)

(assert (=> start!45600 (array_inv!11309 a!3235)))

(declare-fun b!501779 () Bool)

(assert (=> b!501779 (= e!293940 true)))

(declare-fun lt!228047 () array!32316)

(declare-fun lt!228037 () SeekEntryResult!4009)

(declare-fun lt!228046 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32316 (_ BitVec 32)) SeekEntryResult!4009)

(assert (=> b!501779 (= lt!228037 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228042 lt!228046 lt!228047 mask!3524))))

(declare-fun e!293947 () Bool)

(declare-fun b!501780 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32316 (_ BitVec 32)) SeekEntryResult!4009)

(assert (=> b!501780 (= e!293947 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228042 (index!18226 lt!228043) (select (arr!15535 a!3235) j!176) a!3235 mask!3524) (Found!4009 j!176))))))

(declare-fun b!501781 () Bool)

(declare-fun Unit!15128 () Unit!15126)

(assert (=> b!501781 (= e!293939 Unit!15128)))

(declare-fun lt!228041 () Unit!15126)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32316 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15126)

(assert (=> b!501781 (= lt!228041 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!228042 #b00000000000000000000000000000000 (index!18226 lt!228043) (x!47285 lt!228043) mask!3524))))

(declare-fun res!303411 () Bool)

(assert (=> b!501781 (= res!303411 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228042 lt!228046 lt!228047 mask!3524) (Intermediate!4009 false (index!18226 lt!228043) (x!47285 lt!228043))))))

(declare-fun e!293942 () Bool)

(assert (=> b!501781 (=> (not res!303411) (not e!293942))))

(assert (=> b!501781 e!293942))

(declare-fun b!501782 () Bool)

(declare-fun e!293941 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32316 (_ BitVec 32)) SeekEntryResult!4009)

(assert (=> b!501782 (= e!293941 (= (seekEntryOrOpen!0 (select (arr!15535 a!3235) j!176) a!3235 mask!3524) (Found!4009 j!176)))))

(declare-fun b!501783 () Bool)

(assert (=> b!501783 (= e!293942 false)))

(declare-fun b!501784 () Bool)

(declare-fun Unit!15129 () Unit!15126)

(assert (=> b!501784 (= e!293939 Unit!15129)))

(declare-fun b!501785 () Bool)

(declare-fun res!303406 () Bool)

(declare-fun e!293943 () Bool)

(assert (=> b!501785 (=> (not res!303406) (not e!293943))))

(declare-datatypes ((List!9746 0))(
  ( (Nil!9743) (Cons!9742 (h!10619 (_ BitVec 64)) (t!15982 List!9746)) )
))
(declare-fun arrayNoDuplicates!0 (array!32316 (_ BitVec 32) List!9746) Bool)

(assert (=> b!501785 (= res!303406 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9743))))

(declare-fun b!501786 () Bool)

(assert (=> b!501786 (= e!293946 e!293943)))

(declare-fun res!303407 () Bool)

(assert (=> b!501786 (=> (not res!303407) (not e!293943))))

(declare-fun lt!228044 () SeekEntryResult!4009)

(assert (=> b!501786 (= res!303407 (or (= lt!228044 (MissingZero!4009 i!1204)) (= lt!228044 (MissingVacant!4009 i!1204))))))

(assert (=> b!501786 (= lt!228044 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!501787 () Bool)

(declare-fun res!303399 () Bool)

(assert (=> b!501787 (=> (not res!303399) (not e!293946))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!501787 (= res!303399 (validKeyInArray!0 (select (arr!15535 a!3235) j!176)))))

(declare-fun b!501788 () Bool)

(declare-fun res!303403 () Bool)

(assert (=> b!501788 (=> res!303403 e!293940)))

(assert (=> b!501788 (= res!303403 e!293947)))

(declare-fun res!303412 () Bool)

(assert (=> b!501788 (=> (not res!303412) (not e!293947))))

(assert (=> b!501788 (= res!303412 (bvsgt #b00000000000000000000000000000000 (x!47285 lt!228043)))))

(declare-fun b!501789 () Bool)

(declare-fun res!303410 () Bool)

(assert (=> b!501789 (=> res!303410 e!293944)))

(get-info :version)

(assert (=> b!501789 (= res!303410 (or (undefined!4821 lt!228043) (not ((_ is Intermediate!4009) lt!228043))))))

(declare-fun b!501790 () Bool)

(declare-fun res!303409 () Bool)

(assert (=> b!501790 (=> (not res!303409) (not e!293943))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32316 (_ BitVec 32)) Bool)

(assert (=> b!501790 (= res!303409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!501791 () Bool)

(declare-fun res!303402 () Bool)

(assert (=> b!501791 (=> (not res!303402) (not e!293946))))

(assert (=> b!501791 (= res!303402 (validKeyInArray!0 k0!2280))))

(declare-fun b!501792 () Bool)

(assert (=> b!501792 (= e!293943 (not e!293944))))

(declare-fun res!303413 () Bool)

(assert (=> b!501792 (=> res!303413 e!293944)))

(declare-fun lt!228038 () (_ BitVec 32))

(assert (=> b!501792 (= res!303413 (= lt!228043 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228038 lt!228046 lt!228047 mask!3524)))))

(assert (=> b!501792 (= lt!228043 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228042 (select (arr!15535 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!501792 (= lt!228038 (toIndex!0 lt!228046 mask!3524))))

(assert (=> b!501792 (= lt!228046 (select (store (arr!15535 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!501792 (= lt!228042 (toIndex!0 (select (arr!15535 a!3235) j!176) mask!3524))))

(assert (=> b!501792 (= lt!228047 (array!32317 (store (arr!15535 a!3235) i!1204 k0!2280) (size!15899 a!3235)))))

(assert (=> b!501792 e!293941))

(declare-fun res!303408 () Bool)

(assert (=> b!501792 (=> (not res!303408) (not e!293941))))

(assert (=> b!501792 (= res!303408 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!228045 () Unit!15126)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32316 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15126)

(assert (=> b!501792 (= lt!228045 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!501793 () Bool)

(declare-fun res!303401 () Bool)

(assert (=> b!501793 (=> (not res!303401) (not e!293946))))

(declare-fun arrayContainsKey!0 (array!32316 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!501793 (= res!303401 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!501794 () Bool)

(declare-fun res!303405 () Bool)

(assert (=> b!501794 (=> (not res!303405) (not e!293946))))

(assert (=> b!501794 (= res!303405 (and (= (size!15899 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15899 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15899 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45600 res!303400) b!501794))

(assert (= (and b!501794 res!303405) b!501787))

(assert (= (and b!501787 res!303399) b!501791))

(assert (= (and b!501791 res!303402) b!501793))

(assert (= (and b!501793 res!303401) b!501786))

(assert (= (and b!501786 res!303407) b!501790))

(assert (= (and b!501790 res!303409) b!501785))

(assert (= (and b!501785 res!303406) b!501792))

(assert (= (and b!501792 res!303408) b!501782))

(assert (= (and b!501792 (not res!303413)) b!501789))

(assert (= (and b!501789 (not res!303410)) b!501778))

(assert (= (and b!501778 c!59468) b!501781))

(assert (= (and b!501778 (not c!59468)) b!501784))

(assert (= (and b!501781 res!303411) b!501783))

(assert (= (and b!501778 (not res!303404)) b!501788))

(assert (= (and b!501788 res!303412) b!501780))

(assert (= (and b!501788 (not res!303403)) b!501779))

(declare-fun m!482795 () Bool)

(assert (=> b!501781 m!482795))

(declare-fun m!482797 () Bool)

(assert (=> b!501781 m!482797))

(declare-fun m!482799 () Bool)

(assert (=> b!501785 m!482799))

(declare-fun m!482801 () Bool)

(assert (=> b!501778 m!482801))

(declare-fun m!482803 () Bool)

(assert (=> b!501778 m!482803))

(declare-fun m!482805 () Bool)

(assert (=> b!501778 m!482805))

(assert (=> b!501792 m!482805))

(declare-fun m!482807 () Bool)

(assert (=> b!501792 m!482807))

(declare-fun m!482809 () Bool)

(assert (=> b!501792 m!482809))

(declare-fun m!482811 () Bool)

(assert (=> b!501792 m!482811))

(declare-fun m!482813 () Bool)

(assert (=> b!501792 m!482813))

(declare-fun m!482815 () Bool)

(assert (=> b!501792 m!482815))

(assert (=> b!501792 m!482805))

(declare-fun m!482817 () Bool)

(assert (=> b!501792 m!482817))

(assert (=> b!501792 m!482805))

(declare-fun m!482819 () Bool)

(assert (=> b!501792 m!482819))

(declare-fun m!482821 () Bool)

(assert (=> b!501792 m!482821))

(declare-fun m!482823 () Bool)

(assert (=> b!501791 m!482823))

(assert (=> b!501780 m!482805))

(assert (=> b!501780 m!482805))

(declare-fun m!482825 () Bool)

(assert (=> b!501780 m!482825))

(assert (=> b!501782 m!482805))

(assert (=> b!501782 m!482805))

(declare-fun m!482827 () Bool)

(assert (=> b!501782 m!482827))

(assert (=> b!501787 m!482805))

(assert (=> b!501787 m!482805))

(declare-fun m!482829 () Bool)

(assert (=> b!501787 m!482829))

(declare-fun m!482831 () Bool)

(assert (=> b!501790 m!482831))

(assert (=> b!501779 m!482797))

(declare-fun m!482833 () Bool)

(assert (=> b!501786 m!482833))

(declare-fun m!482835 () Bool)

(assert (=> b!501793 m!482835))

(declare-fun m!482837 () Bool)

(assert (=> start!45600 m!482837))

(declare-fun m!482839 () Bool)

(assert (=> start!45600 m!482839))

(check-sat (not b!501786) (not b!501787) (not b!501780) (not b!501781) (not b!501779) (not b!501792) (not b!501778) (not b!501790) (not b!501793) (not b!501785) (not start!45600) (not b!501791) (not b!501782))
(check-sat)
