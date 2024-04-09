; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124872 () Bool)

(assert start!124872)

(declare-fun b!1448797 () Bool)

(declare-fun res!980417 () Bool)

(declare-fun e!815934 () Bool)

(assert (=> b!1448797 (=> (not res!980417) (not e!815934))))

(declare-datatypes ((array!98237 0))(
  ( (array!98238 (arr!47402 (Array (_ BitVec 32) (_ BitVec 64))) (size!47953 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98237)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1448797 (= res!980417 (validKeyInArray!0 (select (arr!47402 a!2862) i!1006)))))

(declare-fun b!1448798 () Bool)

(declare-fun res!980412 () Bool)

(assert (=> b!1448798 (=> (not res!980412) (not e!815934))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1448798 (= res!980412 (validKeyInArray!0 (select (arr!47402 a!2862) j!93)))))

(declare-fun b!1448799 () Bool)

(declare-fun e!815931 () Bool)

(declare-fun e!815933 () Bool)

(assert (=> b!1448799 (= e!815931 e!815933)))

(declare-fun res!980406 () Bool)

(assert (=> b!1448799 (=> (not res!980406) (not e!815933))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11677 0))(
  ( (MissingZero!11677 (index!49099 (_ BitVec 32))) (Found!11677 (index!49100 (_ BitVec 32))) (Intermediate!11677 (undefined!12489 Bool) (index!49101 (_ BitVec 32)) (x!130769 (_ BitVec 32))) (Undefined!11677) (MissingVacant!11677 (index!49102 (_ BitVec 32))) )
))
(declare-fun lt!635636 () SeekEntryResult!11677)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1448799 (= res!980406 (= lt!635636 (Intermediate!11677 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!635632 () array!98237)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!635633 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98237 (_ BitVec 32)) SeekEntryResult!11677)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1448799 (= lt!635636 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635633 mask!2687) lt!635633 lt!635632 mask!2687))))

(assert (=> b!1448799 (= lt!635633 (select (store (arr!47402 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1448800 () Bool)

(declare-fun res!980414 () Bool)

(assert (=> b!1448800 (=> (not res!980414) (not e!815931))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!635634 () SeekEntryResult!11677)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1448800 (= res!980414 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47402 a!2862) j!93) a!2862 mask!2687) lt!635634))))

(declare-fun b!1448801 () Bool)

(declare-fun res!980419 () Bool)

(assert (=> b!1448801 (=> (not res!980419) (not e!815934))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1448801 (= res!980419 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47953 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47953 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47953 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1448802 () Bool)

(declare-fun res!980421 () Bool)

(assert (=> b!1448802 (=> (not res!980421) (not e!815933))))

(declare-fun e!815927 () Bool)

(assert (=> b!1448802 (= res!980421 e!815927)))

(declare-fun c!133709 () Bool)

(assert (=> b!1448802 (= c!133709 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1448804 () Bool)

(declare-fun res!980409 () Bool)

(assert (=> b!1448804 (=> (not res!980409) (not e!815934))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98237 (_ BitVec 32)) Bool)

(assert (=> b!1448804 (= res!980409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1448805 () Bool)

(assert (=> b!1448805 (= e!815927 (= lt!635636 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635633 lt!635632 mask!2687)))))

(declare-fun b!1448806 () Bool)

(declare-fun e!815932 () Bool)

(declare-fun e!815935 () Bool)

(assert (=> b!1448806 (= e!815932 e!815935)))

(declare-fun res!980410 () Bool)

(assert (=> b!1448806 (=> (not res!980410) (not e!815935))))

(declare-fun lt!635638 () SeekEntryResult!11677)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98237 (_ BitVec 32)) SeekEntryResult!11677)

(assert (=> b!1448806 (= res!980410 (= lt!635638 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47402 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1448807 () Bool)

(declare-fun res!980416 () Bool)

(assert (=> b!1448807 (=> (not res!980416) (not e!815934))))

(declare-datatypes ((List!34083 0))(
  ( (Nil!34080) (Cons!34079 (h!35429 (_ BitVec 64)) (t!48784 List!34083)) )
))
(declare-fun arrayNoDuplicates!0 (array!98237 (_ BitVec 32) List!34083) Bool)

(assert (=> b!1448807 (= res!980416 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34080))))

(declare-fun b!1448808 () Bool)

(assert (=> b!1448808 (= e!815935 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1448809 () Bool)

(declare-fun e!815928 () Bool)

(assert (=> b!1448809 (= e!815933 (not e!815928))))

(declare-fun res!980418 () Bool)

(assert (=> b!1448809 (=> res!980418 e!815928)))

(assert (=> b!1448809 (= res!980418 (or (and (= (select (arr!47402 a!2862) index!646) (select (store (arr!47402 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47402 a!2862) index!646) (select (arr!47402 a!2862) j!93))) (not (= (select (arr!47402 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47402 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!815930 () Bool)

(assert (=> b!1448809 e!815930))

(declare-fun res!980411 () Bool)

(assert (=> b!1448809 (=> (not res!980411) (not e!815930))))

(assert (=> b!1448809 (= res!980411 (and (= lt!635638 (Found!11677 j!93)) (or (= (select (arr!47402 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47402 a!2862) intermediateBeforeIndex!19) (select (arr!47402 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98237 (_ BitVec 32)) SeekEntryResult!11677)

(assert (=> b!1448809 (= lt!635638 (seekEntryOrOpen!0 (select (arr!47402 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1448809 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48798 0))(
  ( (Unit!48799) )
))
(declare-fun lt!635635 () Unit!48798)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98237 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48798)

(assert (=> b!1448809 (= lt!635635 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1448810 () Bool)

(declare-fun e!815936 () Bool)

(assert (=> b!1448810 (= e!815936 e!815931)))

(declare-fun res!980413 () Bool)

(assert (=> b!1448810 (=> (not res!980413) (not e!815931))))

(assert (=> b!1448810 (= res!980413 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47402 a!2862) j!93) mask!2687) (select (arr!47402 a!2862) j!93) a!2862 mask!2687) lt!635634))))

(assert (=> b!1448810 (= lt!635634 (Intermediate!11677 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1448811 () Bool)

(assert (=> b!1448811 (= e!815928 true)))

(declare-fun lt!635637 () SeekEntryResult!11677)

(assert (=> b!1448811 (= lt!635637 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47402 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1448812 () Bool)

(assert (=> b!1448812 (= e!815930 e!815932)))

(declare-fun res!980408 () Bool)

(assert (=> b!1448812 (=> res!980408 e!815932)))

(assert (=> b!1448812 (= res!980408 (or (and (= (select (arr!47402 a!2862) index!646) (select (store (arr!47402 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47402 a!2862) index!646) (select (arr!47402 a!2862) j!93))) (not (= (select (arr!47402 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1448813 () Bool)

(declare-fun res!980415 () Bool)

(assert (=> b!1448813 (=> (not res!980415) (not e!815934))))

(assert (=> b!1448813 (= res!980415 (and (= (size!47953 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47953 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47953 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1448814 () Bool)

(assert (=> b!1448814 (= e!815934 e!815936)))

(declare-fun res!980420 () Bool)

(assert (=> b!1448814 (=> (not res!980420) (not e!815936))))

(assert (=> b!1448814 (= res!980420 (= (select (store (arr!47402 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1448814 (= lt!635632 (array!98238 (store (arr!47402 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47953 a!2862)))))

(declare-fun b!1448815 () Bool)

(declare-fun res!980407 () Bool)

(assert (=> b!1448815 (=> (not res!980407) (not e!815933))))

(assert (=> b!1448815 (= res!980407 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!980405 () Bool)

(assert (=> start!124872 (=> (not res!980405) (not e!815934))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124872 (= res!980405 (validMask!0 mask!2687))))

(assert (=> start!124872 e!815934))

(assert (=> start!124872 true))

(declare-fun array_inv!36347 (array!98237) Bool)

(assert (=> start!124872 (array_inv!36347 a!2862)))

(declare-fun b!1448803 () Bool)

(assert (=> b!1448803 (= e!815927 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635633 lt!635632 mask!2687) (seekEntryOrOpen!0 lt!635633 lt!635632 mask!2687)))))

(assert (= (and start!124872 res!980405) b!1448813))

(assert (= (and b!1448813 res!980415) b!1448797))

(assert (= (and b!1448797 res!980417) b!1448798))

(assert (= (and b!1448798 res!980412) b!1448804))

(assert (= (and b!1448804 res!980409) b!1448807))

(assert (= (and b!1448807 res!980416) b!1448801))

(assert (= (and b!1448801 res!980419) b!1448814))

(assert (= (and b!1448814 res!980420) b!1448810))

(assert (= (and b!1448810 res!980413) b!1448800))

(assert (= (and b!1448800 res!980414) b!1448799))

(assert (= (and b!1448799 res!980406) b!1448802))

(assert (= (and b!1448802 c!133709) b!1448805))

(assert (= (and b!1448802 (not c!133709)) b!1448803))

(assert (= (and b!1448802 res!980421) b!1448815))

(assert (= (and b!1448815 res!980407) b!1448809))

(assert (= (and b!1448809 res!980411) b!1448812))

(assert (= (and b!1448812 (not res!980408)) b!1448806))

(assert (= (and b!1448806 res!980410) b!1448808))

(assert (= (and b!1448809 (not res!980418)) b!1448811))

(declare-fun m!1337595 () Bool)

(assert (=> b!1448799 m!1337595))

(assert (=> b!1448799 m!1337595))

(declare-fun m!1337597 () Bool)

(assert (=> b!1448799 m!1337597))

(declare-fun m!1337599 () Bool)

(assert (=> b!1448799 m!1337599))

(declare-fun m!1337601 () Bool)

(assert (=> b!1448799 m!1337601))

(declare-fun m!1337603 () Bool)

(assert (=> b!1448800 m!1337603))

(assert (=> b!1448800 m!1337603))

(declare-fun m!1337605 () Bool)

(assert (=> b!1448800 m!1337605))

(declare-fun m!1337607 () Bool)

(assert (=> start!124872 m!1337607))

(declare-fun m!1337609 () Bool)

(assert (=> start!124872 m!1337609))

(assert (=> b!1448814 m!1337599))

(declare-fun m!1337611 () Bool)

(assert (=> b!1448814 m!1337611))

(declare-fun m!1337613 () Bool)

(assert (=> b!1448807 m!1337613))

(assert (=> b!1448810 m!1337603))

(assert (=> b!1448810 m!1337603))

(declare-fun m!1337615 () Bool)

(assert (=> b!1448810 m!1337615))

(assert (=> b!1448810 m!1337615))

(assert (=> b!1448810 m!1337603))

(declare-fun m!1337617 () Bool)

(assert (=> b!1448810 m!1337617))

(assert (=> b!1448798 m!1337603))

(assert (=> b!1448798 m!1337603))

(declare-fun m!1337619 () Bool)

(assert (=> b!1448798 m!1337619))

(declare-fun m!1337621 () Bool)

(assert (=> b!1448804 m!1337621))

(declare-fun m!1337623 () Bool)

(assert (=> b!1448812 m!1337623))

(assert (=> b!1448812 m!1337599))

(declare-fun m!1337625 () Bool)

(assert (=> b!1448812 m!1337625))

(assert (=> b!1448812 m!1337603))

(assert (=> b!1448806 m!1337603))

(assert (=> b!1448806 m!1337603))

(declare-fun m!1337627 () Bool)

(assert (=> b!1448806 m!1337627))

(declare-fun m!1337629 () Bool)

(assert (=> b!1448803 m!1337629))

(declare-fun m!1337631 () Bool)

(assert (=> b!1448803 m!1337631))

(declare-fun m!1337633 () Bool)

(assert (=> b!1448809 m!1337633))

(assert (=> b!1448809 m!1337599))

(declare-fun m!1337635 () Bool)

(assert (=> b!1448809 m!1337635))

(assert (=> b!1448809 m!1337625))

(assert (=> b!1448809 m!1337623))

(assert (=> b!1448809 m!1337603))

(declare-fun m!1337637 () Bool)

(assert (=> b!1448809 m!1337637))

(declare-fun m!1337639 () Bool)

(assert (=> b!1448809 m!1337639))

(assert (=> b!1448809 m!1337603))

(declare-fun m!1337641 () Bool)

(assert (=> b!1448797 m!1337641))

(assert (=> b!1448797 m!1337641))

(declare-fun m!1337643 () Bool)

(assert (=> b!1448797 m!1337643))

(assert (=> b!1448811 m!1337603))

(assert (=> b!1448811 m!1337603))

(declare-fun m!1337645 () Bool)

(assert (=> b!1448811 m!1337645))

(declare-fun m!1337647 () Bool)

(assert (=> b!1448805 m!1337647))

(check-sat (not b!1448798) (not b!1448799) (not b!1448809) (not b!1448797) (not b!1448811) (not b!1448806) (not start!124872) (not b!1448800) (not b!1448805) (not b!1448804) (not b!1448803) (not b!1448810) (not b!1448807))
(check-sat)
