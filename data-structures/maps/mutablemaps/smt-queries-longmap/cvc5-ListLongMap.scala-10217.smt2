; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120394 () Bool)

(assert start!120394)

(declare-fun b!1400763 () Bool)

(declare-fun res!939393 () Bool)

(declare-fun e!793142 () Bool)

(assert (=> b!1400763 (=> (not res!939393) (not e!793142))))

(declare-datatypes ((array!95721 0))(
  ( (array!95722 (arr!46207 (Array (_ BitVec 32) (_ BitVec 64))) (size!46758 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95721)

(declare-datatypes ((List!32906 0))(
  ( (Nil!32903) (Cons!32902 (h!34150 (_ BitVec 64)) (t!47607 List!32906)) )
))
(declare-fun arrayNoDuplicates!0 (array!95721 (_ BitVec 32) List!32906) Bool)

(assert (=> b!1400763 (= res!939393 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32903))))

(declare-fun b!1400764 () Bool)

(declare-fun res!939391 () Bool)

(assert (=> b!1400764 (=> (not res!939391) (not e!793142))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400764 (= res!939391 (validKeyInArray!0 (select (arr!46207 a!2901) j!112)))))

(declare-fun b!1400765 () Bool)

(declare-fun e!793145 () Bool)

(declare-fun e!793139 () Bool)

(assert (=> b!1400765 (= e!793145 e!793139)))

(declare-fun res!939389 () Bool)

(assert (=> b!1400765 (=> res!939389 e!793139)))

(declare-datatypes ((SeekEntryResult!10546 0))(
  ( (MissingZero!10546 (index!44560 (_ BitVec 32))) (Found!10546 (index!44561 (_ BitVec 32))) (Intermediate!10546 (undefined!11358 Bool) (index!44562 (_ BitVec 32)) (x!126208 (_ BitVec 32))) (Undefined!10546) (MissingVacant!10546 (index!44563 (_ BitVec 32))) )
))
(declare-fun lt!616440 () SeekEntryResult!10546)

(declare-fun lt!616444 () SeekEntryResult!10546)

(assert (=> b!1400765 (= res!939389 (or (= lt!616440 lt!616444) (not (is-Intermediate!10546 lt!616444))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!616441 () (_ BitVec 64))

(declare-fun lt!616446 () array!95721)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95721 (_ BitVec 32)) SeekEntryResult!10546)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400765 (= lt!616444 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616441 mask!2840) lt!616441 lt!616446 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1400765 (= lt!616441 (select (store (arr!46207 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400765 (= lt!616446 (array!95722 (store (arr!46207 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46758 a!2901)))))

(declare-fun b!1400766 () Bool)

(assert (=> b!1400766 (= e!793142 (not e!793145))))

(declare-fun res!939384 () Bool)

(assert (=> b!1400766 (=> res!939384 e!793145)))

(assert (=> b!1400766 (= res!939384 (or (not (is-Intermediate!10546 lt!616440)) (undefined!11358 lt!616440)))))

(declare-fun e!793144 () Bool)

(assert (=> b!1400766 e!793144))

(declare-fun res!939387 () Bool)

(assert (=> b!1400766 (=> (not res!939387) (not e!793144))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95721 (_ BitVec 32)) Bool)

(assert (=> b!1400766 (= res!939387 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47046 0))(
  ( (Unit!47047) )
))
(declare-fun lt!616447 () Unit!47046)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95721 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47046)

(assert (=> b!1400766 (= lt!616447 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!616442 () (_ BitVec 32))

(assert (=> b!1400766 (= lt!616440 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616442 (select (arr!46207 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1400766 (= lt!616442 (toIndex!0 (select (arr!46207 a!2901) j!112) mask!2840))))

(declare-fun b!1400767 () Bool)

(declare-fun e!793141 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95721 (_ BitVec 32)) SeekEntryResult!10546)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95721 (_ BitVec 32)) SeekEntryResult!10546)

(assert (=> b!1400767 (= e!793141 (= (seekEntryOrOpen!0 lt!616441 lt!616446 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126208 lt!616444) (index!44562 lt!616444) (index!44562 lt!616444) (select (arr!46207 a!2901) j!112) lt!616446 mask!2840)))))

(declare-fun b!1400768 () Bool)

(declare-fun e!793140 () Bool)

(assert (=> b!1400768 (= e!793139 e!793140)))

(declare-fun res!939385 () Bool)

(assert (=> b!1400768 (=> res!939385 e!793140)))

(assert (=> b!1400768 (= res!939385 (or (bvslt (x!126208 lt!616440) #b00000000000000000000000000000000) (bvsgt (x!126208 lt!616440) #b01111111111111111111111111111110) (bvslt (x!126208 lt!616444) #b00000000000000000000000000000000) (bvsgt (x!126208 lt!616444) #b01111111111111111111111111111110) (bvslt lt!616442 #b00000000000000000000000000000000) (bvsge lt!616442 (size!46758 a!2901)) (bvslt (index!44562 lt!616440) #b00000000000000000000000000000000) (bvsge (index!44562 lt!616440) (size!46758 a!2901)) (bvslt (index!44562 lt!616444) #b00000000000000000000000000000000) (bvsge (index!44562 lt!616444) (size!46758 a!2901)) (not (= lt!616440 (Intermediate!10546 false (index!44562 lt!616440) (x!126208 lt!616440)))) (not (= lt!616444 (Intermediate!10546 false (index!44562 lt!616444) (x!126208 lt!616444))))))))

(assert (=> b!1400768 e!793141))

(declare-fun res!939383 () Bool)

(assert (=> b!1400768 (=> (not res!939383) (not e!793141))))

(assert (=> b!1400768 (= res!939383 (and (not (undefined!11358 lt!616444)) (= (index!44562 lt!616444) i!1037) (bvslt (x!126208 lt!616444) (x!126208 lt!616440)) (= (select (store (arr!46207 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44562 lt!616444)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!616443 () Unit!47046)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95721 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47046)

(assert (=> b!1400768 (= lt!616443 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616442 (x!126208 lt!616440) (index!44562 lt!616440) (x!126208 lt!616444) (index!44562 lt!616444) (undefined!11358 lt!616444) mask!2840))))

(declare-fun b!1400769 () Bool)

(assert (=> b!1400769 (= e!793144 (= (seekEntryOrOpen!0 (select (arr!46207 a!2901) j!112) a!2901 mask!2840) (Found!10546 j!112)))))

(declare-fun b!1400770 () Bool)

(declare-fun res!939388 () Bool)

(assert (=> b!1400770 (=> (not res!939388) (not e!793142))))

(assert (=> b!1400770 (= res!939388 (validKeyInArray!0 (select (arr!46207 a!2901) i!1037)))))

(declare-fun b!1400771 () Bool)

(assert (=> b!1400771 (= e!793140 true)))

(declare-fun lt!616445 () SeekEntryResult!10546)

(assert (=> b!1400771 (= lt!616445 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616442 lt!616441 lt!616446 mask!2840))))

(declare-fun b!1400772 () Bool)

(declare-fun res!939386 () Bool)

(assert (=> b!1400772 (=> (not res!939386) (not e!793142))))

(assert (=> b!1400772 (= res!939386 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1400773 () Bool)

(declare-fun res!939390 () Bool)

(assert (=> b!1400773 (=> (not res!939390) (not e!793142))))

(assert (=> b!1400773 (= res!939390 (and (= (size!46758 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46758 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46758 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!939392 () Bool)

(assert (=> start!120394 (=> (not res!939392) (not e!793142))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120394 (= res!939392 (validMask!0 mask!2840))))

(assert (=> start!120394 e!793142))

(assert (=> start!120394 true))

(declare-fun array_inv!35152 (array!95721) Bool)

(assert (=> start!120394 (array_inv!35152 a!2901)))

(assert (= (and start!120394 res!939392) b!1400773))

(assert (= (and b!1400773 res!939390) b!1400770))

(assert (= (and b!1400770 res!939388) b!1400764))

(assert (= (and b!1400764 res!939391) b!1400772))

(assert (= (and b!1400772 res!939386) b!1400763))

(assert (= (and b!1400763 res!939393) b!1400766))

(assert (= (and b!1400766 res!939387) b!1400769))

(assert (= (and b!1400766 (not res!939384)) b!1400765))

(assert (= (and b!1400765 (not res!939389)) b!1400768))

(assert (= (and b!1400768 res!939383) b!1400767))

(assert (= (and b!1400768 (not res!939385)) b!1400771))

(declare-fun m!1288409 () Bool)

(assert (=> start!120394 m!1288409))

(declare-fun m!1288411 () Bool)

(assert (=> start!120394 m!1288411))

(declare-fun m!1288413 () Bool)

(assert (=> b!1400772 m!1288413))

(declare-fun m!1288415 () Bool)

(assert (=> b!1400767 m!1288415))

(declare-fun m!1288417 () Bool)

(assert (=> b!1400767 m!1288417))

(assert (=> b!1400767 m!1288417))

(declare-fun m!1288419 () Bool)

(assert (=> b!1400767 m!1288419))

(assert (=> b!1400766 m!1288417))

(declare-fun m!1288421 () Bool)

(assert (=> b!1400766 m!1288421))

(assert (=> b!1400766 m!1288417))

(declare-fun m!1288423 () Bool)

(assert (=> b!1400766 m!1288423))

(declare-fun m!1288425 () Bool)

(assert (=> b!1400766 m!1288425))

(assert (=> b!1400766 m!1288417))

(declare-fun m!1288427 () Bool)

(assert (=> b!1400766 m!1288427))

(declare-fun m!1288429 () Bool)

(assert (=> b!1400768 m!1288429))

(declare-fun m!1288431 () Bool)

(assert (=> b!1400768 m!1288431))

(declare-fun m!1288433 () Bool)

(assert (=> b!1400768 m!1288433))

(assert (=> b!1400764 m!1288417))

(assert (=> b!1400764 m!1288417))

(declare-fun m!1288435 () Bool)

(assert (=> b!1400764 m!1288435))

(declare-fun m!1288437 () Bool)

(assert (=> b!1400763 m!1288437))

(declare-fun m!1288439 () Bool)

(assert (=> b!1400771 m!1288439))

(assert (=> b!1400769 m!1288417))

(assert (=> b!1400769 m!1288417))

(declare-fun m!1288441 () Bool)

(assert (=> b!1400769 m!1288441))

(declare-fun m!1288443 () Bool)

(assert (=> b!1400765 m!1288443))

(assert (=> b!1400765 m!1288443))

(declare-fun m!1288445 () Bool)

(assert (=> b!1400765 m!1288445))

(assert (=> b!1400765 m!1288429))

(declare-fun m!1288447 () Bool)

(assert (=> b!1400765 m!1288447))

(declare-fun m!1288449 () Bool)

(assert (=> b!1400770 m!1288449))

(assert (=> b!1400770 m!1288449))

(declare-fun m!1288451 () Bool)

(assert (=> b!1400770 m!1288451))

(push 1)

