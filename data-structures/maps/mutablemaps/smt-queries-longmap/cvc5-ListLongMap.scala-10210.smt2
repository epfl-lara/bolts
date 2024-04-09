; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120352 () Bool)

(assert start!120352)

(declare-fun b!1400070 () Bool)

(declare-fun res!938697 () Bool)

(declare-fun e!792702 () Bool)

(assert (=> b!1400070 (=> (not res!938697) (not e!792702))))

(declare-datatypes ((array!95679 0))(
  ( (array!95680 (arr!46186 (Array (_ BitVec 32) (_ BitVec 64))) (size!46737 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95679)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400070 (= res!938697 (validKeyInArray!0 (select (arr!46186 a!2901) i!1037)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!615943 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!10525 0))(
  ( (MissingZero!10525 (index!44476 (_ BitVec 32))) (Found!10525 (index!44477 (_ BitVec 32))) (Intermediate!10525 (undefined!11337 Bool) (index!44478 (_ BitVec 32)) (x!126131 (_ BitVec 32))) (Undefined!10525) (MissingVacant!10525 (index!44479 (_ BitVec 32))) )
))
(declare-fun lt!615941 () SeekEntryResult!10525)

(declare-fun e!792703 () Bool)

(declare-fun b!1400071 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lt!615938 () array!95679)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95679 (_ BitVec 32)) SeekEntryResult!10525)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95679 (_ BitVec 32)) SeekEntryResult!10525)

(assert (=> b!1400071 (= e!792703 (= (seekEntryOrOpen!0 lt!615943 lt!615938 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126131 lt!615941) (index!44478 lt!615941) (index!44478 lt!615941) (select (arr!46186 a!2901) j!112) lt!615938 mask!2840)))))

(declare-fun res!938693 () Bool)

(assert (=> start!120352 (=> (not res!938693) (not e!792702))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120352 (= res!938693 (validMask!0 mask!2840))))

(assert (=> start!120352 e!792702))

(assert (=> start!120352 true))

(declare-fun array_inv!35131 (array!95679) Bool)

(assert (=> start!120352 (array_inv!35131 a!2901)))

(declare-fun b!1400072 () Bool)

(declare-fun res!938690 () Bool)

(assert (=> b!1400072 (=> (not res!938690) (not e!792702))))

(declare-datatypes ((List!32885 0))(
  ( (Nil!32882) (Cons!32881 (h!34129 (_ BitVec 64)) (t!47586 List!32885)) )
))
(declare-fun arrayNoDuplicates!0 (array!95679 (_ BitVec 32) List!32885) Bool)

(assert (=> b!1400072 (= res!938690 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32882))))

(declare-fun b!1400073 () Bool)

(declare-fun res!938692 () Bool)

(assert (=> b!1400073 (=> (not res!938692) (not e!792702))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95679 (_ BitVec 32)) Bool)

(assert (=> b!1400073 (= res!938692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1400074 () Bool)

(declare-fun e!792700 () Bool)

(declare-fun e!792698 () Bool)

(assert (=> b!1400074 (= e!792700 e!792698)))

(declare-fun res!938695 () Bool)

(assert (=> b!1400074 (=> res!938695 e!792698)))

(declare-fun lt!615936 () (_ BitVec 32))

(declare-fun lt!615940 () SeekEntryResult!10525)

(assert (=> b!1400074 (= res!938695 (or (bvslt (x!126131 lt!615940) #b00000000000000000000000000000000) (bvsgt (x!126131 lt!615940) #b01111111111111111111111111111110) (bvslt (x!126131 lt!615941) #b00000000000000000000000000000000) (bvsgt (x!126131 lt!615941) #b01111111111111111111111111111110) (bvslt lt!615936 #b00000000000000000000000000000000) (bvsge lt!615936 (size!46737 a!2901)) (bvslt (index!44478 lt!615940) #b00000000000000000000000000000000) (bvsge (index!44478 lt!615940) (size!46737 a!2901)) (bvslt (index!44478 lt!615941) #b00000000000000000000000000000000) (bvsge (index!44478 lt!615941) (size!46737 a!2901)) (not (= lt!615940 (Intermediate!10525 false (index!44478 lt!615940) (x!126131 lt!615940)))) (not (= lt!615941 (Intermediate!10525 false (index!44478 lt!615941) (x!126131 lt!615941))))))))

(assert (=> b!1400074 e!792703))

(declare-fun res!938691 () Bool)

(assert (=> b!1400074 (=> (not res!938691) (not e!792703))))

(assert (=> b!1400074 (= res!938691 (and (not (undefined!11337 lt!615941)) (= (index!44478 lt!615941) i!1037) (bvslt (x!126131 lt!615941) (x!126131 lt!615940)) (= (select (store (arr!46186 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44478 lt!615941)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47004 0))(
  ( (Unit!47005) )
))
(declare-fun lt!615937 () Unit!47004)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95679 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47004)

(assert (=> b!1400074 (= lt!615937 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615936 (x!126131 lt!615940) (index!44478 lt!615940) (x!126131 lt!615941) (index!44478 lt!615941) (undefined!11337 lt!615941) mask!2840))))

(declare-fun b!1400075 () Bool)

(assert (=> b!1400075 (= e!792698 true)))

(declare-fun lt!615939 () SeekEntryResult!10525)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95679 (_ BitVec 32)) SeekEntryResult!10525)

(assert (=> b!1400075 (= lt!615939 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615936 lt!615943 lt!615938 mask!2840))))

(declare-fun b!1400076 () Bool)

(declare-fun res!938698 () Bool)

(assert (=> b!1400076 (=> (not res!938698) (not e!792702))))

(assert (=> b!1400076 (= res!938698 (and (= (size!46737 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46737 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46737 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1400077 () Bool)

(declare-fun e!792704 () Bool)

(assert (=> b!1400077 (= e!792702 (not e!792704))))

(declare-fun res!938699 () Bool)

(assert (=> b!1400077 (=> res!938699 e!792704)))

(assert (=> b!1400077 (= res!938699 (or (not (is-Intermediate!10525 lt!615940)) (undefined!11337 lt!615940)))))

(declare-fun e!792701 () Bool)

(assert (=> b!1400077 e!792701))

(declare-fun res!938694 () Bool)

(assert (=> b!1400077 (=> (not res!938694) (not e!792701))))

(assert (=> b!1400077 (= res!938694 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!615942 () Unit!47004)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95679 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47004)

(assert (=> b!1400077 (= lt!615942 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1400077 (= lt!615940 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615936 (select (arr!46186 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400077 (= lt!615936 (toIndex!0 (select (arr!46186 a!2901) j!112) mask!2840))))

(declare-fun b!1400078 () Bool)

(assert (=> b!1400078 (= e!792704 e!792700)))

(declare-fun res!938696 () Bool)

(assert (=> b!1400078 (=> res!938696 e!792700)))

(assert (=> b!1400078 (= res!938696 (or (= lt!615940 lt!615941) (not (is-Intermediate!10525 lt!615941))))))

(assert (=> b!1400078 (= lt!615941 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615943 mask!2840) lt!615943 lt!615938 mask!2840))))

(assert (=> b!1400078 (= lt!615943 (select (store (arr!46186 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400078 (= lt!615938 (array!95680 (store (arr!46186 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46737 a!2901)))))

(declare-fun b!1400079 () Bool)

(assert (=> b!1400079 (= e!792701 (= (seekEntryOrOpen!0 (select (arr!46186 a!2901) j!112) a!2901 mask!2840) (Found!10525 j!112)))))

(declare-fun b!1400080 () Bool)

(declare-fun res!938700 () Bool)

(assert (=> b!1400080 (=> (not res!938700) (not e!792702))))

(assert (=> b!1400080 (= res!938700 (validKeyInArray!0 (select (arr!46186 a!2901) j!112)))))

(assert (= (and start!120352 res!938693) b!1400076))

(assert (= (and b!1400076 res!938698) b!1400070))

(assert (= (and b!1400070 res!938697) b!1400080))

(assert (= (and b!1400080 res!938700) b!1400073))

(assert (= (and b!1400073 res!938692) b!1400072))

(assert (= (and b!1400072 res!938690) b!1400077))

(assert (= (and b!1400077 res!938694) b!1400079))

(assert (= (and b!1400077 (not res!938699)) b!1400078))

(assert (= (and b!1400078 (not res!938696)) b!1400074))

(assert (= (and b!1400074 res!938691) b!1400071))

(assert (= (and b!1400074 (not res!938695)) b!1400075))

(declare-fun m!1287485 () Bool)

(assert (=> b!1400075 m!1287485))

(declare-fun m!1287487 () Bool)

(assert (=> b!1400074 m!1287487))

(declare-fun m!1287489 () Bool)

(assert (=> b!1400074 m!1287489))

(declare-fun m!1287491 () Bool)

(assert (=> b!1400074 m!1287491))

(declare-fun m!1287493 () Bool)

(assert (=> b!1400070 m!1287493))

(assert (=> b!1400070 m!1287493))

(declare-fun m!1287495 () Bool)

(assert (=> b!1400070 m!1287495))

(declare-fun m!1287497 () Bool)

(assert (=> b!1400080 m!1287497))

(assert (=> b!1400080 m!1287497))

(declare-fun m!1287499 () Bool)

(assert (=> b!1400080 m!1287499))

(declare-fun m!1287501 () Bool)

(assert (=> start!120352 m!1287501))

(declare-fun m!1287503 () Bool)

(assert (=> start!120352 m!1287503))

(assert (=> b!1400077 m!1287497))

(declare-fun m!1287505 () Bool)

(assert (=> b!1400077 m!1287505))

(assert (=> b!1400077 m!1287497))

(declare-fun m!1287507 () Bool)

(assert (=> b!1400077 m!1287507))

(assert (=> b!1400077 m!1287497))

(declare-fun m!1287509 () Bool)

(assert (=> b!1400077 m!1287509))

(declare-fun m!1287511 () Bool)

(assert (=> b!1400077 m!1287511))

(declare-fun m!1287513 () Bool)

(assert (=> b!1400078 m!1287513))

(assert (=> b!1400078 m!1287513))

(declare-fun m!1287515 () Bool)

(assert (=> b!1400078 m!1287515))

(assert (=> b!1400078 m!1287487))

(declare-fun m!1287517 () Bool)

(assert (=> b!1400078 m!1287517))

(declare-fun m!1287519 () Bool)

(assert (=> b!1400071 m!1287519))

(assert (=> b!1400071 m!1287497))

(assert (=> b!1400071 m!1287497))

(declare-fun m!1287521 () Bool)

(assert (=> b!1400071 m!1287521))

(declare-fun m!1287523 () Bool)

(assert (=> b!1400072 m!1287523))

(declare-fun m!1287525 () Bool)

(assert (=> b!1400073 m!1287525))

(assert (=> b!1400079 m!1287497))

(assert (=> b!1400079 m!1287497))

(declare-fun m!1287527 () Bool)

(assert (=> b!1400079 m!1287527))

(push 1)

