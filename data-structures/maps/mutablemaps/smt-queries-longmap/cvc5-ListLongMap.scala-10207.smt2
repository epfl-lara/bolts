; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120334 () Bool)

(assert start!120334)

(declare-fun b!1399773 () Bool)

(declare-fun res!938403 () Bool)

(declare-fun e!792512 () Bool)

(assert (=> b!1399773 (=> (not res!938403) (not e!792512))))

(declare-datatypes ((array!95661 0))(
  ( (array!95662 (arr!46177 (Array (_ BitVec 32) (_ BitVec 64))) (size!46728 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95661)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1399773 (= res!938403 (validKeyInArray!0 (select (arr!46177 a!2901) i!1037)))))

(declare-fun b!1399774 () Bool)

(declare-fun res!938394 () Bool)

(assert (=> b!1399774 (=> (not res!938394) (not e!792512))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1399774 (= res!938394 (validKeyInArray!0 (select (arr!46177 a!2901) j!112)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!615721 () (_ BitVec 64))

(declare-fun b!1399775 () Bool)

(declare-datatypes ((SeekEntryResult!10516 0))(
  ( (MissingZero!10516 (index!44440 (_ BitVec 32))) (Found!10516 (index!44441 (_ BitVec 32))) (Intermediate!10516 (undefined!11328 Bool) (index!44442 (_ BitVec 32)) (x!126098 (_ BitVec 32))) (Undefined!10516) (MissingVacant!10516 (index!44443 (_ BitVec 32))) )
))
(declare-fun lt!615726 () SeekEntryResult!10516)

(declare-fun e!792513 () Bool)

(declare-fun lt!615727 () array!95661)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95661 (_ BitVec 32)) SeekEntryResult!10516)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95661 (_ BitVec 32)) SeekEntryResult!10516)

(assert (=> b!1399775 (= e!792513 (= (seekEntryOrOpen!0 lt!615721 lt!615727 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126098 lt!615726) (index!44442 lt!615726) (index!44442 lt!615726) (select (arr!46177 a!2901) j!112) lt!615727 mask!2840)))))

(declare-fun b!1399777 () Bool)

(declare-fun e!792511 () Bool)

(assert (=> b!1399777 (= e!792511 true)))

(declare-fun lt!615722 () (_ BitVec 32))

(declare-fun lt!615720 () SeekEntryResult!10516)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95661 (_ BitVec 32)) SeekEntryResult!10516)

(assert (=> b!1399777 (= lt!615720 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615722 lt!615721 lt!615727 mask!2840))))

(declare-fun b!1399778 () Bool)

(declare-fun e!792515 () Bool)

(assert (=> b!1399778 (= e!792515 e!792511)))

(declare-fun res!938402 () Bool)

(assert (=> b!1399778 (=> res!938402 e!792511)))

(declare-fun lt!615725 () SeekEntryResult!10516)

(assert (=> b!1399778 (= res!938402 (or (bvslt (x!126098 lt!615725) #b00000000000000000000000000000000) (bvsgt (x!126098 lt!615725) #b01111111111111111111111111111110) (bvslt (x!126098 lt!615726) #b00000000000000000000000000000000) (bvsgt (x!126098 lt!615726) #b01111111111111111111111111111110) (bvslt lt!615722 #b00000000000000000000000000000000) (bvsge lt!615722 (size!46728 a!2901)) (bvslt (index!44442 lt!615725) #b00000000000000000000000000000000) (bvsge (index!44442 lt!615725) (size!46728 a!2901)) (bvslt (index!44442 lt!615726) #b00000000000000000000000000000000) (bvsge (index!44442 lt!615726) (size!46728 a!2901)) (not (= lt!615725 (Intermediate!10516 false (index!44442 lt!615725) (x!126098 lt!615725)))) (not (= lt!615726 (Intermediate!10516 false (index!44442 lt!615726) (x!126098 lt!615726))))))))

(assert (=> b!1399778 e!792513))

(declare-fun res!938396 () Bool)

(assert (=> b!1399778 (=> (not res!938396) (not e!792513))))

(assert (=> b!1399778 (= res!938396 (and (not (undefined!11328 lt!615726)) (= (index!44442 lt!615726) i!1037) (bvslt (x!126098 lt!615726) (x!126098 lt!615725)) (= (select (store (arr!46177 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44442 lt!615726)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!46986 0))(
  ( (Unit!46987) )
))
(declare-fun lt!615724 () Unit!46986)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95661 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46986)

(assert (=> b!1399778 (= lt!615724 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615722 (x!126098 lt!615725) (index!44442 lt!615725) (x!126098 lt!615726) (index!44442 lt!615726) (undefined!11328 lt!615726) mask!2840))))

(declare-fun b!1399779 () Bool)

(declare-fun res!938399 () Bool)

(assert (=> b!1399779 (=> (not res!938399) (not e!792512))))

(assert (=> b!1399779 (= res!938399 (and (= (size!46728 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46728 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46728 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1399780 () Bool)

(declare-fun e!792510 () Bool)

(assert (=> b!1399780 (= e!792510 (= (seekEntryOrOpen!0 (select (arr!46177 a!2901) j!112) a!2901 mask!2840) (Found!10516 j!112)))))

(declare-fun b!1399781 () Bool)

(declare-fun res!938395 () Bool)

(assert (=> b!1399781 (=> (not res!938395) (not e!792512))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95661 (_ BitVec 32)) Bool)

(assert (=> b!1399781 (= res!938395 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1399776 () Bool)

(declare-fun e!792514 () Bool)

(assert (=> b!1399776 (= e!792514 e!792515)))

(declare-fun res!938400 () Bool)

(assert (=> b!1399776 (=> res!938400 e!792515)))

(assert (=> b!1399776 (= res!938400 (or (= lt!615725 lt!615726) (not (is-Intermediate!10516 lt!615726))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1399776 (= lt!615726 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615721 mask!2840) lt!615721 lt!615727 mask!2840))))

(assert (=> b!1399776 (= lt!615721 (select (store (arr!46177 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1399776 (= lt!615727 (array!95662 (store (arr!46177 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46728 a!2901)))))

(declare-fun res!938397 () Bool)

(assert (=> start!120334 (=> (not res!938397) (not e!792512))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120334 (= res!938397 (validMask!0 mask!2840))))

(assert (=> start!120334 e!792512))

(assert (=> start!120334 true))

(declare-fun array_inv!35122 (array!95661) Bool)

(assert (=> start!120334 (array_inv!35122 a!2901)))

(declare-fun b!1399782 () Bool)

(assert (=> b!1399782 (= e!792512 (not e!792514))))

(declare-fun res!938398 () Bool)

(assert (=> b!1399782 (=> res!938398 e!792514)))

(assert (=> b!1399782 (= res!938398 (or (not (is-Intermediate!10516 lt!615725)) (undefined!11328 lt!615725)))))

(assert (=> b!1399782 e!792510))

(declare-fun res!938393 () Bool)

(assert (=> b!1399782 (=> (not res!938393) (not e!792510))))

(assert (=> b!1399782 (= res!938393 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!615723 () Unit!46986)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95661 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46986)

(assert (=> b!1399782 (= lt!615723 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1399782 (= lt!615725 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615722 (select (arr!46177 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1399782 (= lt!615722 (toIndex!0 (select (arr!46177 a!2901) j!112) mask!2840))))

(declare-fun b!1399783 () Bool)

(declare-fun res!938401 () Bool)

(assert (=> b!1399783 (=> (not res!938401) (not e!792512))))

(declare-datatypes ((List!32876 0))(
  ( (Nil!32873) (Cons!32872 (h!34120 (_ BitVec 64)) (t!47577 List!32876)) )
))
(declare-fun arrayNoDuplicates!0 (array!95661 (_ BitVec 32) List!32876) Bool)

(assert (=> b!1399783 (= res!938401 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32873))))

(assert (= (and start!120334 res!938397) b!1399779))

(assert (= (and b!1399779 res!938399) b!1399773))

(assert (= (and b!1399773 res!938403) b!1399774))

(assert (= (and b!1399774 res!938394) b!1399781))

(assert (= (and b!1399781 res!938395) b!1399783))

(assert (= (and b!1399783 res!938401) b!1399782))

(assert (= (and b!1399782 res!938393) b!1399780))

(assert (= (and b!1399782 (not res!938398)) b!1399776))

(assert (= (and b!1399776 (not res!938400)) b!1399778))

(assert (= (and b!1399778 res!938396) b!1399775))

(assert (= (and b!1399778 (not res!938402)) b!1399777))

(declare-fun m!1287089 () Bool)

(assert (=> b!1399781 m!1287089))

(declare-fun m!1287091 () Bool)

(assert (=> b!1399776 m!1287091))

(assert (=> b!1399776 m!1287091))

(declare-fun m!1287093 () Bool)

(assert (=> b!1399776 m!1287093))

(declare-fun m!1287095 () Bool)

(assert (=> b!1399776 m!1287095))

(declare-fun m!1287097 () Bool)

(assert (=> b!1399776 m!1287097))

(declare-fun m!1287099 () Bool)

(assert (=> b!1399782 m!1287099))

(declare-fun m!1287101 () Bool)

(assert (=> b!1399782 m!1287101))

(assert (=> b!1399782 m!1287099))

(assert (=> b!1399782 m!1287099))

(declare-fun m!1287103 () Bool)

(assert (=> b!1399782 m!1287103))

(declare-fun m!1287105 () Bool)

(assert (=> b!1399782 m!1287105))

(declare-fun m!1287107 () Bool)

(assert (=> b!1399782 m!1287107))

(assert (=> b!1399778 m!1287095))

(declare-fun m!1287109 () Bool)

(assert (=> b!1399778 m!1287109))

(declare-fun m!1287111 () Bool)

(assert (=> b!1399778 m!1287111))

(assert (=> b!1399774 m!1287099))

(assert (=> b!1399774 m!1287099))

(declare-fun m!1287113 () Bool)

(assert (=> b!1399774 m!1287113))

(declare-fun m!1287115 () Bool)

(assert (=> start!120334 m!1287115))

(declare-fun m!1287117 () Bool)

(assert (=> start!120334 m!1287117))

(declare-fun m!1287119 () Bool)

(assert (=> b!1399783 m!1287119))

(declare-fun m!1287121 () Bool)

(assert (=> b!1399773 m!1287121))

(assert (=> b!1399773 m!1287121))

(declare-fun m!1287123 () Bool)

(assert (=> b!1399773 m!1287123))

(declare-fun m!1287125 () Bool)

(assert (=> b!1399777 m!1287125))

(declare-fun m!1287127 () Bool)

(assert (=> b!1399775 m!1287127))

(assert (=> b!1399775 m!1287099))

(assert (=> b!1399775 m!1287099))

(declare-fun m!1287129 () Bool)

(assert (=> b!1399775 m!1287129))

(assert (=> b!1399780 m!1287099))

(assert (=> b!1399780 m!1287099))

(declare-fun m!1287131 () Bool)

(assert (=> b!1399780 m!1287131))

(push 1)

