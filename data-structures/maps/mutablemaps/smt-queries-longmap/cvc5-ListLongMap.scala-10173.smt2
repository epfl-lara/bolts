; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120004 () Bool)

(assert start!120004)

(declare-fun b!1396388 () Bool)

(declare-fun res!935418 () Bool)

(declare-fun e!790576 () Bool)

(assert (=> b!1396388 (=> (not res!935418) (not e!790576))))

(declare-datatypes ((array!95451 0))(
  ( (array!95452 (arr!46075 (Array (_ BitVec 32) (_ BitVec 64))) (size!46626 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95451)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95451 (_ BitVec 32)) Bool)

(assert (=> b!1396388 (= res!935418 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1396389 () Bool)

(declare-fun e!790577 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10414 0))(
  ( (MissingZero!10414 (index!44026 (_ BitVec 32))) (Found!10414 (index!44027 (_ BitVec 32))) (Intermediate!10414 (undefined!11226 Bool) (index!44028 (_ BitVec 32)) (x!125703 (_ BitVec 32))) (Undefined!10414) (MissingVacant!10414 (index!44029 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95451 (_ BitVec 32)) SeekEntryResult!10414)

(assert (=> b!1396389 (= e!790577 (= (seekEntryOrOpen!0 (select (arr!46075 a!2901) j!112) a!2901 mask!2840) (Found!10414 j!112)))))

(declare-fun b!1396390 () Bool)

(declare-fun e!790579 () Bool)

(assert (=> b!1396390 (= e!790579 true)))

(declare-fun lt!613394 () SeekEntryResult!10414)

(declare-fun lt!613391 () (_ BitVec 64))

(declare-fun lt!613395 () (_ BitVec 32))

(declare-fun lt!613393 () array!95451)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95451 (_ BitVec 32)) SeekEntryResult!10414)

(assert (=> b!1396390 (= lt!613394 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613395 lt!613391 lt!613393 mask!2840))))

(declare-fun b!1396391 () Bool)

(declare-fun res!935416 () Bool)

(assert (=> b!1396391 (=> (not res!935416) (not e!790576))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1396391 (= res!935416 (and (= (size!46626 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46626 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46626 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1396392 () Bool)

(declare-fun res!935415 () Bool)

(assert (=> b!1396392 (=> (not res!935415) (not e!790576))))

(declare-datatypes ((List!32774 0))(
  ( (Nil!32771) (Cons!32770 (h!34012 (_ BitVec 64)) (t!47475 List!32774)) )
))
(declare-fun arrayNoDuplicates!0 (array!95451 (_ BitVec 32) List!32774) Bool)

(assert (=> b!1396392 (= res!935415 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32771))))

(declare-fun res!935413 () Bool)

(assert (=> start!120004 (=> (not res!935413) (not e!790576))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120004 (= res!935413 (validMask!0 mask!2840))))

(assert (=> start!120004 e!790576))

(assert (=> start!120004 true))

(declare-fun array_inv!35020 (array!95451) Bool)

(assert (=> start!120004 (array_inv!35020 a!2901)))

(declare-fun b!1396393 () Bool)

(declare-fun e!790580 () Bool)

(assert (=> b!1396393 (= e!790576 (not e!790580))))

(declare-fun res!935412 () Bool)

(assert (=> b!1396393 (=> res!935412 e!790580)))

(declare-fun lt!613390 () SeekEntryResult!10414)

(assert (=> b!1396393 (= res!935412 (or (not (is-Intermediate!10414 lt!613390)) (undefined!11226 lt!613390)))))

(assert (=> b!1396393 e!790577))

(declare-fun res!935414 () Bool)

(assert (=> b!1396393 (=> (not res!935414) (not e!790577))))

(assert (=> b!1396393 (= res!935414 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46782 0))(
  ( (Unit!46783) )
))
(declare-fun lt!613396 () Unit!46782)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95451 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46782)

(assert (=> b!1396393 (= lt!613396 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1396393 (= lt!613390 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613395 (select (arr!46075 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396393 (= lt!613395 (toIndex!0 (select (arr!46075 a!2901) j!112) mask!2840))))

(declare-fun b!1396394 () Bool)

(declare-fun res!935411 () Bool)

(assert (=> b!1396394 (=> (not res!935411) (not e!790576))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1396394 (= res!935411 (validKeyInArray!0 (select (arr!46075 a!2901) i!1037)))))

(declare-fun b!1396395 () Bool)

(assert (=> b!1396395 (= e!790580 e!790579)))

(declare-fun res!935417 () Bool)

(assert (=> b!1396395 (=> res!935417 e!790579)))

(declare-fun lt!613392 () SeekEntryResult!10414)

(assert (=> b!1396395 (= res!935417 (or (= lt!613390 lt!613392) (not (is-Intermediate!10414 lt!613392)) (bvslt (x!125703 lt!613390) #b00000000000000000000000000000000) (bvsgt (x!125703 lt!613390) #b01111111111111111111111111111110) (bvslt lt!613395 #b00000000000000000000000000000000) (bvsge lt!613395 (size!46626 a!2901)) (bvslt (index!44028 lt!613390) #b00000000000000000000000000000000) (bvsge (index!44028 lt!613390) (size!46626 a!2901)) (not (= lt!613390 (Intermediate!10414 false (index!44028 lt!613390) (x!125703 lt!613390)))) (not (= lt!613392 (Intermediate!10414 (undefined!11226 lt!613392) (index!44028 lt!613392) (x!125703 lt!613392))))))))

(assert (=> b!1396395 (= lt!613392 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613391 mask!2840) lt!613391 lt!613393 mask!2840))))

(assert (=> b!1396395 (= lt!613391 (select (store (arr!46075 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1396395 (= lt!613393 (array!95452 (store (arr!46075 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46626 a!2901)))))

(declare-fun b!1396396 () Bool)

(declare-fun res!935410 () Bool)

(assert (=> b!1396396 (=> (not res!935410) (not e!790576))))

(assert (=> b!1396396 (= res!935410 (validKeyInArray!0 (select (arr!46075 a!2901) j!112)))))

(assert (= (and start!120004 res!935413) b!1396391))

(assert (= (and b!1396391 res!935416) b!1396394))

(assert (= (and b!1396394 res!935411) b!1396396))

(assert (= (and b!1396396 res!935410) b!1396388))

(assert (= (and b!1396388 res!935418) b!1396392))

(assert (= (and b!1396392 res!935415) b!1396393))

(assert (= (and b!1396393 res!935414) b!1396389))

(assert (= (and b!1396393 (not res!935412)) b!1396395))

(assert (= (and b!1396395 (not res!935417)) b!1396390))

(declare-fun m!1282895 () Bool)

(assert (=> start!120004 m!1282895))

(declare-fun m!1282897 () Bool)

(assert (=> start!120004 m!1282897))

(declare-fun m!1282899 () Bool)

(assert (=> b!1396392 m!1282899))

(declare-fun m!1282901 () Bool)

(assert (=> b!1396388 m!1282901))

(declare-fun m!1282903 () Bool)

(assert (=> b!1396389 m!1282903))

(assert (=> b!1396389 m!1282903))

(declare-fun m!1282905 () Bool)

(assert (=> b!1396389 m!1282905))

(assert (=> b!1396396 m!1282903))

(assert (=> b!1396396 m!1282903))

(declare-fun m!1282907 () Bool)

(assert (=> b!1396396 m!1282907))

(assert (=> b!1396393 m!1282903))

(declare-fun m!1282909 () Bool)

(assert (=> b!1396393 m!1282909))

(assert (=> b!1396393 m!1282903))

(declare-fun m!1282911 () Bool)

(assert (=> b!1396393 m!1282911))

(assert (=> b!1396393 m!1282903))

(declare-fun m!1282913 () Bool)

(assert (=> b!1396393 m!1282913))

(declare-fun m!1282915 () Bool)

(assert (=> b!1396393 m!1282915))

(declare-fun m!1282917 () Bool)

(assert (=> b!1396395 m!1282917))

(assert (=> b!1396395 m!1282917))

(declare-fun m!1282919 () Bool)

(assert (=> b!1396395 m!1282919))

(declare-fun m!1282921 () Bool)

(assert (=> b!1396395 m!1282921))

(declare-fun m!1282923 () Bool)

(assert (=> b!1396395 m!1282923))

(declare-fun m!1282925 () Bool)

(assert (=> b!1396390 m!1282925))

(declare-fun m!1282927 () Bool)

(assert (=> b!1396394 m!1282927))

(assert (=> b!1396394 m!1282927))

(declare-fun m!1282929 () Bool)

(assert (=> b!1396394 m!1282929))

(push 1)

