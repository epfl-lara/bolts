; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120340 () Bool)

(assert start!120340)

(declare-fun b!1399872 () Bool)

(declare-fun res!938495 () Bool)

(declare-fun e!792577 () Bool)

(assert (=> b!1399872 (=> (not res!938495) (not e!792577))))

(declare-datatypes ((array!95667 0))(
  ( (array!95668 (arr!46180 (Array (_ BitVec 32) (_ BitVec 64))) (size!46731 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95667)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1399872 (= res!938495 (validKeyInArray!0 (select (arr!46180 a!2901) j!112)))))

(declare-fun b!1399873 () Bool)

(declare-fun res!938498 () Bool)

(assert (=> b!1399873 (=> (not res!938498) (not e!792577))))

(declare-datatypes ((List!32879 0))(
  ( (Nil!32876) (Cons!32875 (h!34123 (_ BitVec 64)) (t!47580 List!32879)) )
))
(declare-fun arrayNoDuplicates!0 (array!95667 (_ BitVec 32) List!32879) Bool)

(assert (=> b!1399873 (= res!938498 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32876))))

(declare-fun b!1399874 () Bool)

(declare-fun e!792575 () Bool)

(assert (=> b!1399874 (= e!792575 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!615794 () array!95667)

(declare-datatypes ((SeekEntryResult!10519 0))(
  ( (MissingZero!10519 (index!44452 (_ BitVec 32))) (Found!10519 (index!44453 (_ BitVec 32))) (Intermediate!10519 (undefined!11331 Bool) (index!44454 (_ BitVec 32)) (x!126109 (_ BitVec 32))) (Undefined!10519) (MissingVacant!10519 (index!44455 (_ BitVec 32))) )
))
(declare-fun lt!615792 () SeekEntryResult!10519)

(declare-fun lt!615793 () (_ BitVec 64))

(declare-fun lt!615796 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95667 (_ BitVec 32)) SeekEntryResult!10519)

(assert (=> b!1399874 (= lt!615792 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615796 lt!615793 lt!615794 mask!2840))))

(declare-fun lt!615797 () SeekEntryResult!10519)

(declare-fun b!1399875 () Bool)

(declare-fun e!792578 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95667 (_ BitVec 32)) SeekEntryResult!10519)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95667 (_ BitVec 32)) SeekEntryResult!10519)

(assert (=> b!1399875 (= e!792578 (= (seekEntryOrOpen!0 lt!615793 lt!615794 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126109 lt!615797) (index!44454 lt!615797) (index!44454 lt!615797) (select (arr!46180 a!2901) j!112) lt!615794 mask!2840)))))

(declare-fun res!938492 () Bool)

(assert (=> start!120340 (=> (not res!938492) (not e!792577))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120340 (= res!938492 (validMask!0 mask!2840))))

(assert (=> start!120340 e!792577))

(assert (=> start!120340 true))

(declare-fun array_inv!35125 (array!95667) Bool)

(assert (=> start!120340 (array_inv!35125 a!2901)))

(declare-fun b!1399876 () Bool)

(declare-fun e!792574 () Bool)

(assert (=> b!1399876 (= e!792574 e!792575)))

(declare-fun res!938497 () Bool)

(assert (=> b!1399876 (=> res!938497 e!792575)))

(declare-fun lt!615799 () SeekEntryResult!10519)

(assert (=> b!1399876 (= res!938497 (or (bvslt (x!126109 lt!615799) #b00000000000000000000000000000000) (bvsgt (x!126109 lt!615799) #b01111111111111111111111111111110) (bvslt (x!126109 lt!615797) #b00000000000000000000000000000000) (bvsgt (x!126109 lt!615797) #b01111111111111111111111111111110) (bvslt lt!615796 #b00000000000000000000000000000000) (bvsge lt!615796 (size!46731 a!2901)) (bvslt (index!44454 lt!615799) #b00000000000000000000000000000000) (bvsge (index!44454 lt!615799) (size!46731 a!2901)) (bvslt (index!44454 lt!615797) #b00000000000000000000000000000000) (bvsge (index!44454 lt!615797) (size!46731 a!2901)) (not (= lt!615799 (Intermediate!10519 false (index!44454 lt!615799) (x!126109 lt!615799)))) (not (= lt!615797 (Intermediate!10519 false (index!44454 lt!615797) (x!126109 lt!615797))))))))

(assert (=> b!1399876 e!792578))

(declare-fun res!938499 () Bool)

(assert (=> b!1399876 (=> (not res!938499) (not e!792578))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1399876 (= res!938499 (and (not (undefined!11331 lt!615797)) (= (index!44454 lt!615797) i!1037) (bvslt (x!126109 lt!615797) (x!126109 lt!615799)) (= (select (store (arr!46180 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44454 lt!615797)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!46992 0))(
  ( (Unit!46993) )
))
(declare-fun lt!615798 () Unit!46992)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95667 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46992)

(assert (=> b!1399876 (= lt!615798 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615796 (x!126109 lt!615799) (index!44454 lt!615799) (x!126109 lt!615797) (index!44454 lt!615797) (undefined!11331 lt!615797) mask!2840))))

(declare-fun b!1399877 () Bool)

(declare-fun res!938496 () Bool)

(assert (=> b!1399877 (=> (not res!938496) (not e!792577))))

(assert (=> b!1399877 (= res!938496 (validKeyInArray!0 (select (arr!46180 a!2901) i!1037)))))

(declare-fun b!1399878 () Bool)

(declare-fun e!792576 () Bool)

(assert (=> b!1399878 (= e!792577 (not e!792576))))

(declare-fun res!938493 () Bool)

(assert (=> b!1399878 (=> res!938493 e!792576)))

(assert (=> b!1399878 (= res!938493 (or (not (is-Intermediate!10519 lt!615799)) (undefined!11331 lt!615799)))))

(declare-fun e!792572 () Bool)

(assert (=> b!1399878 e!792572))

(declare-fun res!938501 () Bool)

(assert (=> b!1399878 (=> (not res!938501) (not e!792572))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95667 (_ BitVec 32)) Bool)

(assert (=> b!1399878 (= res!938501 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!615795 () Unit!46992)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95667 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46992)

(assert (=> b!1399878 (= lt!615795 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1399878 (= lt!615799 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615796 (select (arr!46180 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1399878 (= lt!615796 (toIndex!0 (select (arr!46180 a!2901) j!112) mask!2840))))

(declare-fun b!1399879 () Bool)

(declare-fun res!938494 () Bool)

(assert (=> b!1399879 (=> (not res!938494) (not e!792577))))

(assert (=> b!1399879 (= res!938494 (and (= (size!46731 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46731 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46731 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1399880 () Bool)

(assert (=> b!1399880 (= e!792576 e!792574)))

(declare-fun res!938500 () Bool)

(assert (=> b!1399880 (=> res!938500 e!792574)))

(assert (=> b!1399880 (= res!938500 (or (= lt!615799 lt!615797) (not (is-Intermediate!10519 lt!615797))))))

(assert (=> b!1399880 (= lt!615797 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615793 mask!2840) lt!615793 lt!615794 mask!2840))))

(assert (=> b!1399880 (= lt!615793 (select (store (arr!46180 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1399880 (= lt!615794 (array!95668 (store (arr!46180 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46731 a!2901)))))

(declare-fun b!1399881 () Bool)

(assert (=> b!1399881 (= e!792572 (= (seekEntryOrOpen!0 (select (arr!46180 a!2901) j!112) a!2901 mask!2840) (Found!10519 j!112)))))

(declare-fun b!1399882 () Bool)

(declare-fun res!938502 () Bool)

(assert (=> b!1399882 (=> (not res!938502) (not e!792577))))

(assert (=> b!1399882 (= res!938502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120340 res!938492) b!1399879))

(assert (= (and b!1399879 res!938494) b!1399877))

(assert (= (and b!1399877 res!938496) b!1399872))

(assert (= (and b!1399872 res!938495) b!1399882))

(assert (= (and b!1399882 res!938502) b!1399873))

(assert (= (and b!1399873 res!938498) b!1399878))

(assert (= (and b!1399878 res!938501) b!1399881))

(assert (= (and b!1399878 (not res!938493)) b!1399880))

(assert (= (and b!1399880 (not res!938500)) b!1399876))

(assert (= (and b!1399876 res!938499) b!1399875))

(assert (= (and b!1399876 (not res!938497)) b!1399874))

(declare-fun m!1287221 () Bool)

(assert (=> b!1399876 m!1287221))

(declare-fun m!1287223 () Bool)

(assert (=> b!1399876 m!1287223))

(declare-fun m!1287225 () Bool)

(assert (=> b!1399876 m!1287225))

(declare-fun m!1287227 () Bool)

(assert (=> start!120340 m!1287227))

(declare-fun m!1287229 () Bool)

(assert (=> start!120340 m!1287229))

(declare-fun m!1287231 () Bool)

(assert (=> b!1399882 m!1287231))

(declare-fun m!1287233 () Bool)

(assert (=> b!1399877 m!1287233))

(assert (=> b!1399877 m!1287233))

(declare-fun m!1287235 () Bool)

(assert (=> b!1399877 m!1287235))

(declare-fun m!1287237 () Bool)

(assert (=> b!1399880 m!1287237))

(assert (=> b!1399880 m!1287237))

(declare-fun m!1287239 () Bool)

(assert (=> b!1399880 m!1287239))

(assert (=> b!1399880 m!1287221))

(declare-fun m!1287241 () Bool)

(assert (=> b!1399880 m!1287241))

(declare-fun m!1287243 () Bool)

(assert (=> b!1399875 m!1287243))

(declare-fun m!1287245 () Bool)

(assert (=> b!1399875 m!1287245))

(assert (=> b!1399875 m!1287245))

(declare-fun m!1287247 () Bool)

(assert (=> b!1399875 m!1287247))

(declare-fun m!1287249 () Bool)

(assert (=> b!1399874 m!1287249))

(assert (=> b!1399881 m!1287245))

(assert (=> b!1399881 m!1287245))

(declare-fun m!1287251 () Bool)

(assert (=> b!1399881 m!1287251))

(assert (=> b!1399878 m!1287245))

(declare-fun m!1287253 () Bool)

(assert (=> b!1399878 m!1287253))

(assert (=> b!1399878 m!1287245))

(declare-fun m!1287255 () Bool)

(assert (=> b!1399878 m!1287255))

(assert (=> b!1399878 m!1287245))

(declare-fun m!1287257 () Bool)

(assert (=> b!1399878 m!1287257))

(declare-fun m!1287259 () Bool)

(assert (=> b!1399878 m!1287259))

(assert (=> b!1399872 m!1287245))

(assert (=> b!1399872 m!1287245))

(declare-fun m!1287261 () Bool)

(assert (=> b!1399872 m!1287261))

(declare-fun m!1287263 () Bool)

(assert (=> b!1399873 m!1287263))

(push 1)

