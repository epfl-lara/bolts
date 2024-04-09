; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120380 () Bool)

(assert start!120380)

(declare-fun b!1400532 () Bool)

(declare-fun res!939152 () Bool)

(declare-fun e!792995 () Bool)

(assert (=> b!1400532 (=> (not res!939152) (not e!792995))))

(declare-datatypes ((array!95707 0))(
  ( (array!95708 (arr!46200 (Array (_ BitVec 32) (_ BitVec 64))) (size!46751 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95707)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95707 (_ BitVec 32)) Bool)

(assert (=> b!1400532 (= res!939152 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun b!1400533 () Bool)

(declare-fun e!792998 () Bool)

(declare-datatypes ((SeekEntryResult!10539 0))(
  ( (MissingZero!10539 (index!44532 (_ BitVec 32))) (Found!10539 (index!44533 (_ BitVec 32))) (Intermediate!10539 (undefined!11351 Bool) (index!44534 (_ BitVec 32)) (x!126177 (_ BitVec 32))) (Undefined!10539) (MissingVacant!10539 (index!44535 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95707 (_ BitVec 32)) SeekEntryResult!10539)

(assert (=> b!1400533 (= e!792998 (= (seekEntryOrOpen!0 (select (arr!46200 a!2901) j!112) a!2901 mask!2840) (Found!10539 j!112)))))

(declare-fun b!1400534 () Bool)

(declare-fun e!792997 () Bool)

(declare-fun e!792992 () Bool)

(assert (=> b!1400534 (= e!792997 e!792992)))

(declare-fun res!939155 () Bool)

(assert (=> b!1400534 (=> res!939155 e!792992)))

(declare-fun lt!616278 () SeekEntryResult!10539)

(declare-fun lt!616272 () SeekEntryResult!10539)

(assert (=> b!1400534 (= res!939155 (or (= lt!616278 lt!616272) (not (is-Intermediate!10539 lt!616272))))))

(declare-fun lt!616275 () (_ BitVec 64))

(declare-fun lt!616276 () array!95707)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95707 (_ BitVec 32)) SeekEntryResult!10539)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400534 (= lt!616272 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616275 mask!2840) lt!616275 lt!616276 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1400534 (= lt!616275 (select (store (arr!46200 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400534 (= lt!616276 (array!95708 (store (arr!46200 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46751 a!2901)))))

(declare-fun b!1400535 () Bool)

(declare-fun e!792993 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95707 (_ BitVec 32)) SeekEntryResult!10539)

(assert (=> b!1400535 (= e!792993 (= (seekEntryOrOpen!0 lt!616275 lt!616276 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126177 lt!616272) (index!44534 lt!616272) (index!44534 lt!616272) (select (arr!46200 a!2901) j!112) lt!616276 mask!2840)))))

(declare-fun b!1400536 () Bool)

(declare-fun res!939162 () Bool)

(assert (=> b!1400536 (=> (not res!939162) (not e!792995))))

(declare-datatypes ((List!32899 0))(
  ( (Nil!32896) (Cons!32895 (h!34143 (_ BitVec 64)) (t!47600 List!32899)) )
))
(declare-fun arrayNoDuplicates!0 (array!95707 (_ BitVec 32) List!32899) Bool)

(assert (=> b!1400536 (= res!939162 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32896))))

(declare-fun res!939159 () Bool)

(assert (=> start!120380 (=> (not res!939159) (not e!792995))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120380 (= res!939159 (validMask!0 mask!2840))))

(assert (=> start!120380 e!792995))

(assert (=> start!120380 true))

(declare-fun array_inv!35145 (array!95707) Bool)

(assert (=> start!120380 (array_inv!35145 a!2901)))

(declare-fun b!1400537 () Bool)

(declare-fun res!939156 () Bool)

(assert (=> b!1400537 (=> (not res!939156) (not e!792995))))

(assert (=> b!1400537 (= res!939156 (and (= (size!46751 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46751 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46751 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1400538 () Bool)

(declare-fun e!792996 () Bool)

(assert (=> b!1400538 (= e!792992 e!792996)))

(declare-fun res!939154 () Bool)

(assert (=> b!1400538 (=> res!939154 e!792996)))

(declare-fun lt!616273 () (_ BitVec 32))

(assert (=> b!1400538 (= res!939154 (or (bvslt (x!126177 lt!616278) #b00000000000000000000000000000000) (bvsgt (x!126177 lt!616278) #b01111111111111111111111111111110) (bvslt (x!126177 lt!616272) #b00000000000000000000000000000000) (bvsgt (x!126177 lt!616272) #b01111111111111111111111111111110) (bvslt lt!616273 #b00000000000000000000000000000000) (bvsge lt!616273 (size!46751 a!2901)) (bvslt (index!44534 lt!616278) #b00000000000000000000000000000000) (bvsge (index!44534 lt!616278) (size!46751 a!2901)) (bvslt (index!44534 lt!616272) #b00000000000000000000000000000000) (bvsge (index!44534 lt!616272) (size!46751 a!2901)) (not (= lt!616278 (Intermediate!10539 false (index!44534 lt!616278) (x!126177 lt!616278)))) (not (= lt!616272 (Intermediate!10539 false (index!44534 lt!616272) (x!126177 lt!616272))))))))

(assert (=> b!1400538 e!792993))

(declare-fun res!939153 () Bool)

(assert (=> b!1400538 (=> (not res!939153) (not e!792993))))

(assert (=> b!1400538 (= res!939153 (and (not (undefined!11351 lt!616272)) (= (index!44534 lt!616272) i!1037) (bvslt (x!126177 lt!616272) (x!126177 lt!616278)) (= (select (store (arr!46200 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44534 lt!616272)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47032 0))(
  ( (Unit!47033) )
))
(declare-fun lt!616279 () Unit!47032)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95707 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47032)

(assert (=> b!1400538 (= lt!616279 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616273 (x!126177 lt!616278) (index!44534 lt!616278) (x!126177 lt!616272) (index!44534 lt!616272) (undefined!11351 lt!616272) mask!2840))))

(declare-fun b!1400539 () Bool)

(declare-fun res!939157 () Bool)

(assert (=> b!1400539 (=> (not res!939157) (not e!792995))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400539 (= res!939157 (validKeyInArray!0 (select (arr!46200 a!2901) j!112)))))

(declare-fun b!1400540 () Bool)

(assert (=> b!1400540 (= e!792995 (not e!792997))))

(declare-fun res!939160 () Bool)

(assert (=> b!1400540 (=> res!939160 e!792997)))

(assert (=> b!1400540 (= res!939160 (or (not (is-Intermediate!10539 lt!616278)) (undefined!11351 lt!616278)))))

(assert (=> b!1400540 e!792998))

(declare-fun res!939158 () Bool)

(assert (=> b!1400540 (=> (not res!939158) (not e!792998))))

(assert (=> b!1400540 (= res!939158 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!616274 () Unit!47032)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95707 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47032)

(assert (=> b!1400540 (= lt!616274 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1400540 (= lt!616278 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616273 (select (arr!46200 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1400540 (= lt!616273 (toIndex!0 (select (arr!46200 a!2901) j!112) mask!2840))))

(declare-fun b!1400541 () Bool)

(assert (=> b!1400541 (= e!792996 true)))

(declare-fun lt!616277 () SeekEntryResult!10539)

(assert (=> b!1400541 (= lt!616277 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616273 lt!616275 lt!616276 mask!2840))))

(declare-fun b!1400542 () Bool)

(declare-fun res!939161 () Bool)

(assert (=> b!1400542 (=> (not res!939161) (not e!792995))))

(assert (=> b!1400542 (= res!939161 (validKeyInArray!0 (select (arr!46200 a!2901) i!1037)))))

(assert (= (and start!120380 res!939159) b!1400537))

(assert (= (and b!1400537 res!939156) b!1400542))

(assert (= (and b!1400542 res!939161) b!1400539))

(assert (= (and b!1400539 res!939157) b!1400532))

(assert (= (and b!1400532 res!939152) b!1400536))

(assert (= (and b!1400536 res!939162) b!1400540))

(assert (= (and b!1400540 res!939158) b!1400533))

(assert (= (and b!1400540 (not res!939160)) b!1400534))

(assert (= (and b!1400534 (not res!939155)) b!1400538))

(assert (= (and b!1400538 res!939153) b!1400535))

(assert (= (and b!1400538 (not res!939154)) b!1400541))

(declare-fun m!1288101 () Bool)

(assert (=> b!1400542 m!1288101))

(assert (=> b!1400542 m!1288101))

(declare-fun m!1288103 () Bool)

(assert (=> b!1400542 m!1288103))

(declare-fun m!1288105 () Bool)

(assert (=> b!1400533 m!1288105))

(assert (=> b!1400533 m!1288105))

(declare-fun m!1288107 () Bool)

(assert (=> b!1400533 m!1288107))

(declare-fun m!1288109 () Bool)

(assert (=> b!1400541 m!1288109))

(assert (=> b!1400539 m!1288105))

(assert (=> b!1400539 m!1288105))

(declare-fun m!1288111 () Bool)

(assert (=> b!1400539 m!1288111))

(declare-fun m!1288113 () Bool)

(assert (=> b!1400536 m!1288113))

(declare-fun m!1288115 () Bool)

(assert (=> b!1400538 m!1288115))

(declare-fun m!1288117 () Bool)

(assert (=> b!1400538 m!1288117))

(declare-fun m!1288119 () Bool)

(assert (=> b!1400538 m!1288119))

(declare-fun m!1288121 () Bool)

(assert (=> b!1400534 m!1288121))

(assert (=> b!1400534 m!1288121))

(declare-fun m!1288123 () Bool)

(assert (=> b!1400534 m!1288123))

(assert (=> b!1400534 m!1288115))

(declare-fun m!1288125 () Bool)

(assert (=> b!1400534 m!1288125))

(assert (=> b!1400540 m!1288105))

(declare-fun m!1288127 () Bool)

(assert (=> b!1400540 m!1288127))

(assert (=> b!1400540 m!1288105))

(assert (=> b!1400540 m!1288105))

(declare-fun m!1288129 () Bool)

(assert (=> b!1400540 m!1288129))

(declare-fun m!1288131 () Bool)

(assert (=> b!1400540 m!1288131))

(declare-fun m!1288133 () Bool)

(assert (=> b!1400540 m!1288133))

(declare-fun m!1288135 () Bool)

(assert (=> start!120380 m!1288135))

(declare-fun m!1288137 () Bool)

(assert (=> start!120380 m!1288137))

(declare-fun m!1288139 () Bool)

(assert (=> b!1400532 m!1288139))

(declare-fun m!1288141 () Bool)

(assert (=> b!1400535 m!1288141))

(assert (=> b!1400535 m!1288105))

(assert (=> b!1400535 m!1288105))

(declare-fun m!1288143 () Bool)

(assert (=> b!1400535 m!1288143))

(push 1)

