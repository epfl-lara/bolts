; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120400 () Bool)

(assert start!120400)

(declare-fun b!1400862 () Bool)

(declare-fun e!793204 () Bool)

(assert (=> b!1400862 (= e!793204 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95727 0))(
  ( (array!95728 (arr!46210 (Array (_ BitVec 32) (_ BitVec 64))) (size!46761 (_ BitVec 32))) )
))
(declare-fun lt!616518 () array!95727)

(declare-fun lt!616516 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!10549 0))(
  ( (MissingZero!10549 (index!44572 (_ BitVec 32))) (Found!10549 (index!44573 (_ BitVec 32))) (Intermediate!10549 (undefined!11361 Bool) (index!44574 (_ BitVec 32)) (x!126219 (_ BitVec 32))) (Undefined!10549) (MissingVacant!10549 (index!44575 (_ BitVec 32))) )
))
(declare-fun lt!616512 () SeekEntryResult!10549)

(declare-fun lt!616514 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95727 (_ BitVec 32)) SeekEntryResult!10549)

(assert (=> b!1400862 (= lt!616512 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616514 lt!616516 lt!616518 mask!2840))))

(declare-fun a!2901 () array!95727)

(declare-fun e!793203 () Bool)

(declare-fun b!1400863 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95727 (_ BitVec 32)) SeekEntryResult!10549)

(assert (=> b!1400863 (= e!793203 (= (seekEntryOrOpen!0 (select (arr!46210 a!2901) j!112) a!2901 mask!2840) (Found!10549 j!112)))))

(declare-fun b!1400864 () Bool)

(declare-fun res!939485 () Bool)

(declare-fun e!793206 () Bool)

(assert (=> b!1400864 (=> (not res!939485) (not e!793206))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1400864 (= res!939485 (and (= (size!46761 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46761 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46761 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1400865 () Bool)

(declare-fun e!793202 () Bool)

(declare-fun e!793208 () Bool)

(assert (=> b!1400865 (= e!793202 e!793208)))

(declare-fun res!939487 () Bool)

(assert (=> b!1400865 (=> res!939487 e!793208)))

(declare-fun lt!616517 () SeekEntryResult!10549)

(declare-fun lt!616513 () SeekEntryResult!10549)

(assert (=> b!1400865 (= res!939487 (or (= lt!616517 lt!616513) (not (is-Intermediate!10549 lt!616513))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400865 (= lt!616513 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616516 mask!2840) lt!616516 lt!616518 mask!2840))))

(assert (=> b!1400865 (= lt!616516 (select (store (arr!46210 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400865 (= lt!616518 (array!95728 (store (arr!46210 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46761 a!2901)))))

(declare-fun b!1400866 () Bool)

(declare-fun res!939490 () Bool)

(assert (=> b!1400866 (=> (not res!939490) (not e!793206))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95727 (_ BitVec 32)) Bool)

(assert (=> b!1400866 (= res!939490 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!939488 () Bool)

(assert (=> start!120400 (=> (not res!939488) (not e!793206))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120400 (= res!939488 (validMask!0 mask!2840))))

(assert (=> start!120400 e!793206))

(assert (=> start!120400 true))

(declare-fun array_inv!35155 (array!95727) Bool)

(assert (=> start!120400 (array_inv!35155 a!2901)))

(declare-fun e!793207 () Bool)

(declare-fun b!1400867 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95727 (_ BitVec 32)) SeekEntryResult!10549)

(assert (=> b!1400867 (= e!793207 (= (seekEntryOrOpen!0 lt!616516 lt!616518 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126219 lt!616513) (index!44574 lt!616513) (index!44574 lt!616513) (select (arr!46210 a!2901) j!112) lt!616518 mask!2840)))))

(declare-fun b!1400868 () Bool)

(declare-fun res!939483 () Bool)

(assert (=> b!1400868 (=> (not res!939483) (not e!793206))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400868 (= res!939483 (validKeyInArray!0 (select (arr!46210 a!2901) j!112)))))

(declare-fun b!1400869 () Bool)

(declare-fun res!939492 () Bool)

(assert (=> b!1400869 (=> (not res!939492) (not e!793206))))

(declare-datatypes ((List!32909 0))(
  ( (Nil!32906) (Cons!32905 (h!34153 (_ BitVec 64)) (t!47610 List!32909)) )
))
(declare-fun arrayNoDuplicates!0 (array!95727 (_ BitVec 32) List!32909) Bool)

(assert (=> b!1400869 (= res!939492 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32906))))

(declare-fun b!1400870 () Bool)

(assert (=> b!1400870 (= e!793206 (not e!793202))))

(declare-fun res!939491 () Bool)

(assert (=> b!1400870 (=> res!939491 e!793202)))

(assert (=> b!1400870 (= res!939491 (or (not (is-Intermediate!10549 lt!616517)) (undefined!11361 lt!616517)))))

(assert (=> b!1400870 e!793203))

(declare-fun res!939489 () Bool)

(assert (=> b!1400870 (=> (not res!939489) (not e!793203))))

(assert (=> b!1400870 (= res!939489 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47052 0))(
  ( (Unit!47053) )
))
(declare-fun lt!616515 () Unit!47052)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95727 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47052)

(assert (=> b!1400870 (= lt!616515 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1400870 (= lt!616517 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616514 (select (arr!46210 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1400870 (= lt!616514 (toIndex!0 (select (arr!46210 a!2901) j!112) mask!2840))))

(declare-fun b!1400871 () Bool)

(assert (=> b!1400871 (= e!793208 e!793204)))

(declare-fun res!939484 () Bool)

(assert (=> b!1400871 (=> res!939484 e!793204)))

(assert (=> b!1400871 (= res!939484 (or (bvslt (x!126219 lt!616517) #b00000000000000000000000000000000) (bvsgt (x!126219 lt!616517) #b01111111111111111111111111111110) (bvslt (x!126219 lt!616513) #b00000000000000000000000000000000) (bvsgt (x!126219 lt!616513) #b01111111111111111111111111111110) (bvslt lt!616514 #b00000000000000000000000000000000) (bvsge lt!616514 (size!46761 a!2901)) (bvslt (index!44574 lt!616517) #b00000000000000000000000000000000) (bvsge (index!44574 lt!616517) (size!46761 a!2901)) (bvslt (index!44574 lt!616513) #b00000000000000000000000000000000) (bvsge (index!44574 lt!616513) (size!46761 a!2901)) (not (= lt!616517 (Intermediate!10549 false (index!44574 lt!616517) (x!126219 lt!616517)))) (not (= lt!616513 (Intermediate!10549 false (index!44574 lt!616513) (x!126219 lt!616513))))))))

(assert (=> b!1400871 e!793207))

(declare-fun res!939486 () Bool)

(assert (=> b!1400871 (=> (not res!939486) (not e!793207))))

(assert (=> b!1400871 (= res!939486 (and (not (undefined!11361 lt!616513)) (= (index!44574 lt!616513) i!1037) (bvslt (x!126219 lt!616513) (x!126219 lt!616517)) (= (select (store (arr!46210 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44574 lt!616513)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!616519 () Unit!47052)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95727 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47052)

(assert (=> b!1400871 (= lt!616519 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616514 (x!126219 lt!616517) (index!44574 lt!616517) (x!126219 lt!616513) (index!44574 lt!616513) (undefined!11361 lt!616513) mask!2840))))

(declare-fun b!1400872 () Bool)

(declare-fun res!939482 () Bool)

(assert (=> b!1400872 (=> (not res!939482) (not e!793206))))

(assert (=> b!1400872 (= res!939482 (validKeyInArray!0 (select (arr!46210 a!2901) i!1037)))))

(assert (= (and start!120400 res!939488) b!1400864))

(assert (= (and b!1400864 res!939485) b!1400872))

(assert (= (and b!1400872 res!939482) b!1400868))

(assert (= (and b!1400868 res!939483) b!1400866))

(assert (= (and b!1400866 res!939490) b!1400869))

(assert (= (and b!1400869 res!939492) b!1400870))

(assert (= (and b!1400870 res!939489) b!1400863))

(assert (= (and b!1400870 (not res!939491)) b!1400865))

(assert (= (and b!1400865 (not res!939487)) b!1400871))

(assert (= (and b!1400871 res!939486) b!1400867))

(assert (= (and b!1400871 (not res!939484)) b!1400862))

(declare-fun m!1288541 () Bool)

(assert (=> b!1400869 m!1288541))

(declare-fun m!1288543 () Bool)

(assert (=> b!1400868 m!1288543))

(assert (=> b!1400868 m!1288543))

(declare-fun m!1288545 () Bool)

(assert (=> b!1400868 m!1288545))

(declare-fun m!1288547 () Bool)

(assert (=> b!1400866 m!1288547))

(assert (=> b!1400863 m!1288543))

(assert (=> b!1400863 m!1288543))

(declare-fun m!1288549 () Bool)

(assert (=> b!1400863 m!1288549))

(declare-fun m!1288551 () Bool)

(assert (=> start!120400 m!1288551))

(declare-fun m!1288553 () Bool)

(assert (=> start!120400 m!1288553))

(declare-fun m!1288555 () Bool)

(assert (=> b!1400865 m!1288555))

(assert (=> b!1400865 m!1288555))

(declare-fun m!1288557 () Bool)

(assert (=> b!1400865 m!1288557))

(declare-fun m!1288559 () Bool)

(assert (=> b!1400865 m!1288559))

(declare-fun m!1288561 () Bool)

(assert (=> b!1400865 m!1288561))

(declare-fun m!1288563 () Bool)

(assert (=> b!1400872 m!1288563))

(assert (=> b!1400872 m!1288563))

(declare-fun m!1288565 () Bool)

(assert (=> b!1400872 m!1288565))

(declare-fun m!1288567 () Bool)

(assert (=> b!1400867 m!1288567))

(assert (=> b!1400867 m!1288543))

(assert (=> b!1400867 m!1288543))

(declare-fun m!1288569 () Bool)

(assert (=> b!1400867 m!1288569))

(assert (=> b!1400871 m!1288559))

(declare-fun m!1288571 () Bool)

(assert (=> b!1400871 m!1288571))

(declare-fun m!1288573 () Bool)

(assert (=> b!1400871 m!1288573))

(assert (=> b!1400870 m!1288543))

(declare-fun m!1288575 () Bool)

(assert (=> b!1400870 m!1288575))

(assert (=> b!1400870 m!1288543))

(assert (=> b!1400870 m!1288543))

(declare-fun m!1288577 () Bool)

(assert (=> b!1400870 m!1288577))

(declare-fun m!1288579 () Bool)

(assert (=> b!1400870 m!1288579))

(declare-fun m!1288581 () Bool)

(assert (=> b!1400870 m!1288581))

(declare-fun m!1288583 () Bool)

(assert (=> b!1400862 m!1288583))

(push 1)

