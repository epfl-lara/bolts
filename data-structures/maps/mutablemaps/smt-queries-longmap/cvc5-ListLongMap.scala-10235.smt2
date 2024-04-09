; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120502 () Bool)

(assert start!120502)

(declare-fun b!1402507 () Bool)

(declare-fun e!794201 () Bool)

(declare-fun e!794200 () Bool)

(assert (=> b!1402507 (= e!794201 e!794200)))

(declare-fun res!941130 () Bool)

(assert (=> b!1402507 (=> res!941130 e!794200)))

(declare-datatypes ((SeekEntryResult!10600 0))(
  ( (MissingZero!10600 (index!44776 (_ BitVec 32))) (Found!10600 (index!44777 (_ BitVec 32))) (Intermediate!10600 (undefined!11412 Bool) (index!44778 (_ BitVec 32)) (x!126406 (_ BitVec 32))) (Undefined!10600) (MissingVacant!10600 (index!44779 (_ BitVec 32))) )
))
(declare-fun lt!617812 () SeekEntryResult!10600)

(declare-datatypes ((array!95829 0))(
  ( (array!95830 (arr!46261 (Array (_ BitVec 32) (_ BitVec 64))) (size!46812 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95829)

(declare-fun lt!617815 () SeekEntryResult!10600)

(declare-fun lt!617818 () (_ BitVec 32))

(assert (=> b!1402507 (= res!941130 (or (bvslt (x!126406 lt!617812) #b00000000000000000000000000000000) (bvsgt (x!126406 lt!617812) #b01111111111111111111111111111110) (bvslt (x!126406 lt!617815) #b00000000000000000000000000000000) (bvsgt (x!126406 lt!617815) #b01111111111111111111111111111110) (bvslt lt!617818 #b00000000000000000000000000000000) (bvsge lt!617818 (size!46812 a!2901)) (bvslt (index!44778 lt!617812) #b00000000000000000000000000000000) (bvsge (index!44778 lt!617812) (size!46812 a!2901)) (bvslt (index!44778 lt!617815) #b00000000000000000000000000000000) (bvsge (index!44778 lt!617815) (size!46812 a!2901)) (not (= lt!617812 (Intermediate!10600 false (index!44778 lt!617812) (x!126406 lt!617812)))) (not (= lt!617815 (Intermediate!10600 false (index!44778 lt!617815) (x!126406 lt!617815))))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!617813 () array!95829)

(declare-fun lt!617820 () SeekEntryResult!10600)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95829 (_ BitVec 32)) SeekEntryResult!10600)

(assert (=> b!1402507 (= lt!617820 (seekKeyOrZeroReturnVacant!0 (x!126406 lt!617815) (index!44778 lt!617815) (index!44778 lt!617815) (select (arr!46261 a!2901) j!112) lt!617813 mask!2840))))

(declare-fun lt!617816 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95829 (_ BitVec 32)) SeekEntryResult!10600)

(assert (=> b!1402507 (= lt!617820 (seekEntryOrOpen!0 lt!617816 lt!617813 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1402507 (and (not (undefined!11412 lt!617815)) (= (index!44778 lt!617815) i!1037) (bvslt (x!126406 lt!617815) (x!126406 lt!617812)) (= (select (store (arr!46261 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44778 lt!617815)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!47154 0))(
  ( (Unit!47155) )
))
(declare-fun lt!617821 () Unit!47154)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95829 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47154)

(assert (=> b!1402507 (= lt!617821 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617818 (x!126406 lt!617812) (index!44778 lt!617812) (x!126406 lt!617815) (index!44778 lt!617815) (undefined!11412 lt!617815) mask!2840))))

(declare-fun b!1402508 () Bool)

(declare-fun res!941131 () Bool)

(declare-fun e!794197 () Bool)

(assert (=> b!1402508 (=> (not res!941131) (not e!794197))))

(assert (=> b!1402508 (= res!941131 (and (= (size!46812 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46812 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46812 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1402509 () Bool)

(declare-fun res!941129 () Bool)

(assert (=> b!1402509 (=> (not res!941129) (not e!794197))))

(declare-datatypes ((List!32960 0))(
  ( (Nil!32957) (Cons!32956 (h!34204 (_ BitVec 64)) (t!47661 List!32960)) )
))
(declare-fun arrayNoDuplicates!0 (array!95829 (_ BitVec 32) List!32960) Bool)

(assert (=> b!1402509 (= res!941129 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32957))))

(declare-fun b!1402510 () Bool)

(declare-fun res!941132 () Bool)

(assert (=> b!1402510 (=> (not res!941132) (not e!794197))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402510 (= res!941132 (validKeyInArray!0 (select (arr!46261 a!2901) j!112)))))

(declare-fun b!1402511 () Bool)

(declare-fun res!941134 () Bool)

(assert (=> b!1402511 (=> (not res!941134) (not e!794197))))

(assert (=> b!1402511 (= res!941134 (validKeyInArray!0 (select (arr!46261 a!2901) i!1037)))))

(declare-fun b!1402512 () Bool)

(declare-fun e!794198 () Bool)

(assert (=> b!1402512 (= e!794197 (not e!794198))))

(declare-fun res!941128 () Bool)

(assert (=> b!1402512 (=> res!941128 e!794198)))

(assert (=> b!1402512 (= res!941128 (or (not (is-Intermediate!10600 lt!617812)) (undefined!11412 lt!617812)))))

(declare-fun lt!617819 () SeekEntryResult!10600)

(assert (=> b!1402512 (= lt!617819 (Found!10600 j!112))))

(assert (=> b!1402512 (= lt!617819 (seekEntryOrOpen!0 (select (arr!46261 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95829 (_ BitVec 32)) Bool)

(assert (=> b!1402512 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!617817 () Unit!47154)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95829 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47154)

(assert (=> b!1402512 (= lt!617817 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95829 (_ BitVec 32)) SeekEntryResult!10600)

(assert (=> b!1402512 (= lt!617812 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617818 (select (arr!46261 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402512 (= lt!617818 (toIndex!0 (select (arr!46261 a!2901) j!112) mask!2840))))

(declare-fun res!941135 () Bool)

(assert (=> start!120502 (=> (not res!941135) (not e!794197))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120502 (= res!941135 (validMask!0 mask!2840))))

(assert (=> start!120502 e!794197))

(assert (=> start!120502 true))

(declare-fun array_inv!35206 (array!95829) Bool)

(assert (=> start!120502 (array_inv!35206 a!2901)))

(declare-fun b!1402513 () Bool)

(declare-fun res!941136 () Bool)

(assert (=> b!1402513 (=> res!941136 e!794200)))

(assert (=> b!1402513 (= res!941136 (not (= lt!617815 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617818 lt!617816 lt!617813 mask!2840))))))

(declare-fun b!1402514 () Bool)

(assert (=> b!1402514 (= e!794198 e!794201)))

(declare-fun res!941127 () Bool)

(assert (=> b!1402514 (=> res!941127 e!794201)))

(assert (=> b!1402514 (= res!941127 (or (= lt!617812 lt!617815) (not (is-Intermediate!10600 lt!617815))))))

(assert (=> b!1402514 (= lt!617815 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617816 mask!2840) lt!617816 lt!617813 mask!2840))))

(assert (=> b!1402514 (= lt!617816 (select (store (arr!46261 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1402514 (= lt!617813 (array!95830 (store (arr!46261 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46812 a!2901)))))

(declare-fun b!1402515 () Bool)

(assert (=> b!1402515 (= e!794200 true)))

(assert (=> b!1402515 (= lt!617819 lt!617820)))

(declare-fun lt!617814 () Unit!47154)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!95829 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47154)

(assert (=> b!1402515 (= lt!617814 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617818 (x!126406 lt!617812) (index!44778 lt!617812) (x!126406 lt!617815) (index!44778 lt!617815) mask!2840))))

(declare-fun b!1402516 () Bool)

(declare-fun res!941133 () Bool)

(assert (=> b!1402516 (=> (not res!941133) (not e!794197))))

(assert (=> b!1402516 (= res!941133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120502 res!941135) b!1402508))

(assert (= (and b!1402508 res!941131) b!1402511))

(assert (= (and b!1402511 res!941134) b!1402510))

(assert (= (and b!1402510 res!941132) b!1402516))

(assert (= (and b!1402516 res!941133) b!1402509))

(assert (= (and b!1402509 res!941129) b!1402512))

(assert (= (and b!1402512 (not res!941128)) b!1402514))

(assert (= (and b!1402514 (not res!941127)) b!1402507))

(assert (= (and b!1402507 (not res!941130)) b!1402513))

(assert (= (and b!1402513 (not res!941136)) b!1402515))

(declare-fun m!1290809 () Bool)

(assert (=> b!1402509 m!1290809))

(declare-fun m!1290811 () Bool)

(assert (=> b!1402512 m!1290811))

(declare-fun m!1290813 () Bool)

(assert (=> b!1402512 m!1290813))

(assert (=> b!1402512 m!1290811))

(declare-fun m!1290815 () Bool)

(assert (=> b!1402512 m!1290815))

(assert (=> b!1402512 m!1290811))

(declare-fun m!1290817 () Bool)

(assert (=> b!1402512 m!1290817))

(assert (=> b!1402512 m!1290811))

(declare-fun m!1290819 () Bool)

(assert (=> b!1402512 m!1290819))

(declare-fun m!1290821 () Bool)

(assert (=> b!1402512 m!1290821))

(declare-fun m!1290823 () Bool)

(assert (=> b!1402515 m!1290823))

(declare-fun m!1290825 () Bool)

(assert (=> start!120502 m!1290825))

(declare-fun m!1290827 () Bool)

(assert (=> start!120502 m!1290827))

(assert (=> b!1402507 m!1290811))

(declare-fun m!1290829 () Bool)

(assert (=> b!1402507 m!1290829))

(assert (=> b!1402507 m!1290811))

(declare-fun m!1290831 () Bool)

(assert (=> b!1402507 m!1290831))

(declare-fun m!1290833 () Bool)

(assert (=> b!1402507 m!1290833))

(declare-fun m!1290835 () Bool)

(assert (=> b!1402507 m!1290835))

(declare-fun m!1290837 () Bool)

(assert (=> b!1402507 m!1290837))

(declare-fun m!1290839 () Bool)

(assert (=> b!1402513 m!1290839))

(declare-fun m!1290841 () Bool)

(assert (=> b!1402511 m!1290841))

(assert (=> b!1402511 m!1290841))

(declare-fun m!1290843 () Bool)

(assert (=> b!1402511 m!1290843))

(declare-fun m!1290845 () Bool)

(assert (=> b!1402514 m!1290845))

(assert (=> b!1402514 m!1290845))

(declare-fun m!1290847 () Bool)

(assert (=> b!1402514 m!1290847))

(assert (=> b!1402514 m!1290837))

(declare-fun m!1290849 () Bool)

(assert (=> b!1402514 m!1290849))

(assert (=> b!1402510 m!1290811))

(assert (=> b!1402510 m!1290811))

(declare-fun m!1290851 () Bool)

(assert (=> b!1402510 m!1290851))

(declare-fun m!1290853 () Bool)

(assert (=> b!1402516 m!1290853))

(push 1)

