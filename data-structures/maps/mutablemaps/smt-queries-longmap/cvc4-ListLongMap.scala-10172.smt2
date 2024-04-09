; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120002 () Bool)

(assert start!120002)

(declare-fun b!1396361 () Bool)

(declare-fun res!935385 () Bool)

(declare-fun e!790562 () Bool)

(assert (=> b!1396361 (=> (not res!935385) (not e!790562))))

(declare-datatypes ((array!95449 0))(
  ( (array!95450 (arr!46074 (Array (_ BitVec 32) (_ BitVec 64))) (size!46625 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95449)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95449 (_ BitVec 32)) Bool)

(assert (=> b!1396361 (= res!935385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1396362 () Bool)

(declare-fun res!935391 () Bool)

(assert (=> b!1396362 (=> (not res!935391) (not e!790562))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1396362 (= res!935391 (validKeyInArray!0 (select (arr!46074 a!2901) i!1037)))))

(declare-fun e!790561 () Bool)

(declare-fun b!1396363 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10413 0))(
  ( (MissingZero!10413 (index!44022 (_ BitVec 32))) (Found!10413 (index!44023 (_ BitVec 32))) (Intermediate!10413 (undefined!11225 Bool) (index!44024 (_ BitVec 32)) (x!125694 (_ BitVec 32))) (Undefined!10413) (MissingVacant!10413 (index!44025 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95449 (_ BitVec 32)) SeekEntryResult!10413)

(assert (=> b!1396363 (= e!790561 (= (seekEntryOrOpen!0 (select (arr!46074 a!2901) j!112) a!2901 mask!2840) (Found!10413 j!112)))))

(declare-fun b!1396364 () Bool)

(declare-fun e!790563 () Bool)

(assert (=> b!1396364 (= e!790562 (not e!790563))))

(declare-fun res!935388 () Bool)

(assert (=> b!1396364 (=> res!935388 e!790563)))

(declare-fun lt!613370 () SeekEntryResult!10413)

(assert (=> b!1396364 (= res!935388 (or (not (is-Intermediate!10413 lt!613370)) (undefined!11225 lt!613370)))))

(assert (=> b!1396364 e!790561))

(declare-fun res!935387 () Bool)

(assert (=> b!1396364 (=> (not res!935387) (not e!790561))))

(assert (=> b!1396364 (= res!935387 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46780 0))(
  ( (Unit!46781) )
))
(declare-fun lt!613372 () Unit!46780)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95449 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46780)

(assert (=> b!1396364 (= lt!613372 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!613375 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95449 (_ BitVec 32)) SeekEntryResult!10413)

(assert (=> b!1396364 (= lt!613370 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613375 (select (arr!46074 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396364 (= lt!613375 (toIndex!0 (select (arr!46074 a!2901) j!112) mask!2840))))

(declare-fun b!1396365 () Bool)

(declare-fun res!935383 () Bool)

(assert (=> b!1396365 (=> (not res!935383) (not e!790562))))

(assert (=> b!1396365 (= res!935383 (validKeyInArray!0 (select (arr!46074 a!2901) j!112)))))

(declare-fun b!1396366 () Bool)

(declare-fun e!790564 () Bool)

(assert (=> b!1396366 (= e!790563 e!790564)))

(declare-fun res!935384 () Bool)

(assert (=> b!1396366 (=> res!935384 e!790564)))

(declare-fun lt!613373 () SeekEntryResult!10413)

(assert (=> b!1396366 (= res!935384 (or (= lt!613370 lt!613373) (not (is-Intermediate!10413 lt!613373)) (bvslt (x!125694 lt!613370) #b00000000000000000000000000000000) (bvsgt (x!125694 lt!613370) #b01111111111111111111111111111110) (bvslt lt!613375 #b00000000000000000000000000000000) (bvsge lt!613375 (size!46625 a!2901)) (bvslt (index!44024 lt!613370) #b00000000000000000000000000000000) (bvsge (index!44024 lt!613370) (size!46625 a!2901)) (not (= lt!613370 (Intermediate!10413 false (index!44024 lt!613370) (x!125694 lt!613370)))) (not (= lt!613373 (Intermediate!10413 (undefined!11225 lt!613373) (index!44024 lt!613373) (x!125694 lt!613373))))))))

(declare-fun lt!613369 () (_ BitVec 64))

(declare-fun lt!613374 () array!95449)

(assert (=> b!1396366 (= lt!613373 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613369 mask!2840) lt!613369 lt!613374 mask!2840))))

(assert (=> b!1396366 (= lt!613369 (select (store (arr!46074 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1396366 (= lt!613374 (array!95450 (store (arr!46074 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46625 a!2901)))))

(declare-fun b!1396368 () Bool)

(assert (=> b!1396368 (= e!790564 true)))

(declare-fun lt!613371 () SeekEntryResult!10413)

(assert (=> b!1396368 (= lt!613371 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613375 lt!613369 lt!613374 mask!2840))))

(declare-fun b!1396369 () Bool)

(declare-fun res!935389 () Bool)

(assert (=> b!1396369 (=> (not res!935389) (not e!790562))))

(declare-datatypes ((List!32773 0))(
  ( (Nil!32770) (Cons!32769 (h!34011 (_ BitVec 64)) (t!47474 List!32773)) )
))
(declare-fun arrayNoDuplicates!0 (array!95449 (_ BitVec 32) List!32773) Bool)

(assert (=> b!1396369 (= res!935389 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32770))))

(declare-fun res!935390 () Bool)

(assert (=> start!120002 (=> (not res!935390) (not e!790562))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120002 (= res!935390 (validMask!0 mask!2840))))

(assert (=> start!120002 e!790562))

(assert (=> start!120002 true))

(declare-fun array_inv!35019 (array!95449) Bool)

(assert (=> start!120002 (array_inv!35019 a!2901)))

(declare-fun b!1396367 () Bool)

(declare-fun res!935386 () Bool)

(assert (=> b!1396367 (=> (not res!935386) (not e!790562))))

(assert (=> b!1396367 (= res!935386 (and (= (size!46625 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46625 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46625 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120002 res!935390) b!1396367))

(assert (= (and b!1396367 res!935386) b!1396362))

(assert (= (and b!1396362 res!935391) b!1396365))

(assert (= (and b!1396365 res!935383) b!1396361))

(assert (= (and b!1396361 res!935385) b!1396369))

(assert (= (and b!1396369 res!935389) b!1396364))

(assert (= (and b!1396364 res!935387) b!1396363))

(assert (= (and b!1396364 (not res!935388)) b!1396366))

(assert (= (and b!1396366 (not res!935384)) b!1396368))

(declare-fun m!1282859 () Bool)

(assert (=> start!120002 m!1282859))

(declare-fun m!1282861 () Bool)

(assert (=> start!120002 m!1282861))

(declare-fun m!1282863 () Bool)

(assert (=> b!1396366 m!1282863))

(assert (=> b!1396366 m!1282863))

(declare-fun m!1282865 () Bool)

(assert (=> b!1396366 m!1282865))

(declare-fun m!1282867 () Bool)

(assert (=> b!1396366 m!1282867))

(declare-fun m!1282869 () Bool)

(assert (=> b!1396366 m!1282869))

(declare-fun m!1282871 () Bool)

(assert (=> b!1396363 m!1282871))

(assert (=> b!1396363 m!1282871))

(declare-fun m!1282873 () Bool)

(assert (=> b!1396363 m!1282873))

(assert (=> b!1396365 m!1282871))

(assert (=> b!1396365 m!1282871))

(declare-fun m!1282875 () Bool)

(assert (=> b!1396365 m!1282875))

(declare-fun m!1282877 () Bool)

(assert (=> b!1396361 m!1282877))

(declare-fun m!1282879 () Bool)

(assert (=> b!1396368 m!1282879))

(assert (=> b!1396364 m!1282871))

(declare-fun m!1282881 () Bool)

(assert (=> b!1396364 m!1282881))

(assert (=> b!1396364 m!1282871))

(declare-fun m!1282883 () Bool)

(assert (=> b!1396364 m!1282883))

(declare-fun m!1282885 () Bool)

(assert (=> b!1396364 m!1282885))

(assert (=> b!1396364 m!1282871))

(declare-fun m!1282887 () Bool)

(assert (=> b!1396364 m!1282887))

(declare-fun m!1282889 () Bool)

(assert (=> b!1396369 m!1282889))

(declare-fun m!1282891 () Bool)

(assert (=> b!1396362 m!1282891))

(assert (=> b!1396362 m!1282891))

(declare-fun m!1282893 () Bool)

(assert (=> b!1396362 m!1282893))

(push 1)

