; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120010 () Bool)

(assert start!120010)

(declare-fun b!1396469 () Bool)

(declare-fun res!935496 () Bool)

(declare-fun e!790624 () Bool)

(assert (=> b!1396469 (=> (not res!935496) (not e!790624))))

(declare-datatypes ((array!95457 0))(
  ( (array!95458 (arr!46078 (Array (_ BitVec 32) (_ BitVec 64))) (size!46629 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95457)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1396469 (= res!935496 (validKeyInArray!0 (select (arr!46078 a!2901) j!112)))))

(declare-fun b!1396470 () Bool)

(declare-fun res!935494 () Bool)

(assert (=> b!1396470 (=> (not res!935494) (not e!790624))))

(declare-datatypes ((List!32777 0))(
  ( (Nil!32774) (Cons!32773 (h!34015 (_ BitVec 64)) (t!47478 List!32777)) )
))
(declare-fun arrayNoDuplicates!0 (array!95457 (_ BitVec 32) List!32777) Bool)

(assert (=> b!1396470 (= res!935494 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32774))))

(declare-fun b!1396471 () Bool)

(declare-fun res!935499 () Bool)

(assert (=> b!1396471 (=> (not res!935499) (not e!790624))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1396471 (= res!935499 (validKeyInArray!0 (select (arr!46078 a!2901) i!1037)))))

(declare-fun b!1396472 () Bool)

(declare-fun res!935492 () Bool)

(assert (=> b!1396472 (=> (not res!935492) (not e!790624))))

(declare-fun mask!2840 () (_ BitVec 32))

(assert (=> b!1396472 (= res!935492 (and (= (size!46629 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46629 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46629 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1396473 () Bool)

(declare-fun e!790623 () Bool)

(declare-fun e!790622 () Bool)

(assert (=> b!1396473 (= e!790623 e!790622)))

(declare-fun res!935491 () Bool)

(assert (=> b!1396473 (=> res!935491 e!790622)))

(declare-datatypes ((SeekEntryResult!10417 0))(
  ( (MissingZero!10417 (index!44038 (_ BitVec 32))) (Found!10417 (index!44039 (_ BitVec 32))) (Intermediate!10417 (undefined!11229 Bool) (index!44040 (_ BitVec 32)) (x!125714 (_ BitVec 32))) (Undefined!10417) (MissingVacant!10417 (index!44041 (_ BitVec 32))) )
))
(declare-fun lt!613456 () SeekEntryResult!10417)

(declare-fun lt!613457 () SeekEntryResult!10417)

(declare-fun lt!613458 () (_ BitVec 32))

(assert (=> b!1396473 (= res!935491 (or (= lt!613456 lt!613457) (not (is-Intermediate!10417 lt!613457)) (bvslt (x!125714 lt!613456) #b00000000000000000000000000000000) (bvsgt (x!125714 lt!613456) #b01111111111111111111111111111110) (bvslt lt!613458 #b00000000000000000000000000000000) (bvsge lt!613458 (size!46629 a!2901)) (bvslt (index!44040 lt!613456) #b00000000000000000000000000000000) (bvsge (index!44040 lt!613456) (size!46629 a!2901)) (not (= lt!613456 (Intermediate!10417 false (index!44040 lt!613456) (x!125714 lt!613456)))) (not (= lt!613457 (Intermediate!10417 (undefined!11229 lt!613457) (index!44040 lt!613457) (x!125714 lt!613457))))))))

(declare-fun lt!613455 () (_ BitVec 64))

(declare-fun lt!613453 () array!95457)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95457 (_ BitVec 32)) SeekEntryResult!10417)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396473 (= lt!613457 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613455 mask!2840) lt!613455 lt!613453 mask!2840))))

(assert (=> b!1396473 (= lt!613455 (select (store (arr!46078 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1396473 (= lt!613453 (array!95458 (store (arr!46078 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46629 a!2901)))))

(declare-fun b!1396474 () Bool)

(assert (=> b!1396474 (= e!790624 (not e!790623))))

(declare-fun res!935498 () Bool)

(assert (=> b!1396474 (=> res!935498 e!790623)))

(assert (=> b!1396474 (= res!935498 (or (not (is-Intermediate!10417 lt!613456)) (undefined!11229 lt!613456)))))

(declare-fun e!790621 () Bool)

(assert (=> b!1396474 e!790621))

(declare-fun res!935493 () Bool)

(assert (=> b!1396474 (=> (not res!935493) (not e!790621))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95457 (_ BitVec 32)) Bool)

(assert (=> b!1396474 (= res!935493 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46788 0))(
  ( (Unit!46789) )
))
(declare-fun lt!613454 () Unit!46788)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95457 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46788)

(assert (=> b!1396474 (= lt!613454 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1396474 (= lt!613456 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613458 (select (arr!46078 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1396474 (= lt!613458 (toIndex!0 (select (arr!46078 a!2901) j!112) mask!2840))))

(declare-fun b!1396476 () Bool)

(declare-fun res!935495 () Bool)

(assert (=> b!1396476 (=> (not res!935495) (not e!790624))))

(assert (=> b!1396476 (= res!935495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1396477 () Bool)

(assert (=> b!1396477 (= e!790622 true)))

(declare-fun lt!613459 () SeekEntryResult!10417)

(assert (=> b!1396477 (= lt!613459 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613458 lt!613455 lt!613453 mask!2840))))

(declare-fun b!1396475 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95457 (_ BitVec 32)) SeekEntryResult!10417)

(assert (=> b!1396475 (= e!790621 (= (seekEntryOrOpen!0 (select (arr!46078 a!2901) j!112) a!2901 mask!2840) (Found!10417 j!112)))))

(declare-fun res!935497 () Bool)

(assert (=> start!120010 (=> (not res!935497) (not e!790624))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120010 (= res!935497 (validMask!0 mask!2840))))

(assert (=> start!120010 e!790624))

(assert (=> start!120010 true))

(declare-fun array_inv!35023 (array!95457) Bool)

(assert (=> start!120010 (array_inv!35023 a!2901)))

(assert (= (and start!120010 res!935497) b!1396472))

(assert (= (and b!1396472 res!935492) b!1396471))

(assert (= (and b!1396471 res!935499) b!1396469))

(assert (= (and b!1396469 res!935496) b!1396476))

(assert (= (and b!1396476 res!935495) b!1396470))

(assert (= (and b!1396470 res!935494) b!1396474))

(assert (= (and b!1396474 res!935493) b!1396475))

(assert (= (and b!1396474 (not res!935498)) b!1396473))

(assert (= (and b!1396473 (not res!935491)) b!1396477))

(declare-fun m!1283003 () Bool)

(assert (=> b!1396473 m!1283003))

(assert (=> b!1396473 m!1283003))

(declare-fun m!1283005 () Bool)

(assert (=> b!1396473 m!1283005))

(declare-fun m!1283007 () Bool)

(assert (=> b!1396473 m!1283007))

(declare-fun m!1283009 () Bool)

(assert (=> b!1396473 m!1283009))

(declare-fun m!1283011 () Bool)

(assert (=> b!1396469 m!1283011))

(assert (=> b!1396469 m!1283011))

(declare-fun m!1283013 () Bool)

(assert (=> b!1396469 m!1283013))

(declare-fun m!1283015 () Bool)

(assert (=> b!1396471 m!1283015))

(assert (=> b!1396471 m!1283015))

(declare-fun m!1283017 () Bool)

(assert (=> b!1396471 m!1283017))

(declare-fun m!1283019 () Bool)

(assert (=> b!1396476 m!1283019))

(assert (=> b!1396474 m!1283011))

(declare-fun m!1283021 () Bool)

(assert (=> b!1396474 m!1283021))

(assert (=> b!1396474 m!1283011))

(declare-fun m!1283023 () Bool)

(assert (=> b!1396474 m!1283023))

(assert (=> b!1396474 m!1283011))

(declare-fun m!1283025 () Bool)

(assert (=> b!1396474 m!1283025))

(declare-fun m!1283027 () Bool)

(assert (=> b!1396474 m!1283027))

(declare-fun m!1283029 () Bool)

(assert (=> b!1396477 m!1283029))

(declare-fun m!1283031 () Bool)

(assert (=> b!1396470 m!1283031))

(assert (=> b!1396475 m!1283011))

(assert (=> b!1396475 m!1283011))

(declare-fun m!1283033 () Bool)

(assert (=> b!1396475 m!1283033))

(declare-fun m!1283035 () Bool)

(assert (=> start!120010 m!1283035))

(declare-fun m!1283037 () Bool)

(assert (=> start!120010 m!1283037))

(push 1)

