; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118360 () Bool)

(assert start!118360)

(declare-fun b!1383758 () Bool)

(declare-fun e!784217 () Bool)

(declare-datatypes ((array!94581 0))(
  ( (array!94582 (arr!45664 (Array (_ BitVec 32) (_ BitVec 64))) (size!46215 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94581)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383758 (= e!784217 (validKeyInArray!0 (select (arr!45664 a!2938) startIndex!16)))))

(declare-fun b!1383759 () Bool)

(declare-fun res!925443 () Bool)

(declare-fun e!784215 () Bool)

(assert (=> b!1383759 (=> (not res!925443) (not e!784215))))

(declare-datatypes ((List!32372 0))(
  ( (Nil!32369) (Cons!32368 (h!33577 (_ BitVec 64)) (t!47073 List!32372)) )
))
(declare-fun arrayNoDuplicates!0 (array!94581 (_ BitVec 32) List!32372) Bool)

(assert (=> b!1383759 (= res!925443 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32369))))

(declare-fun b!1383760 () Bool)

(declare-fun res!925440 () Bool)

(assert (=> b!1383760 (=> (not res!925440) (not e!784215))))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1383760 (= res!925440 (validKeyInArray!0 (select (arr!45664 a!2938) i!1065)))))

(declare-fun b!1383761 () Bool)

(declare-fun res!925442 () Bool)

(assert (=> b!1383761 (=> (not res!925442) (not e!784215))))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1383761 (= res!925442 (and (= (size!46215 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46215 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46215 a!2938))))))

(declare-fun b!1383762 () Bool)

(declare-datatypes ((Unit!46050 0))(
  ( (Unit!46051) )
))
(declare-fun e!784216 () Unit!46050)

(declare-fun Unit!46052 () Unit!46050)

(assert (=> b!1383762 (= e!784216 Unit!46052)))

(declare-fun res!925441 () Bool)

(assert (=> start!118360 (=> (not res!925441) (not e!784215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118360 (= res!925441 (validMask!0 mask!2987))))

(assert (=> start!118360 e!784215))

(assert (=> start!118360 true))

(declare-fun array_inv!34609 (array!94581) Bool)

(assert (=> start!118360 (array_inv!34609 a!2938)))

(declare-fun b!1383763 () Bool)

(declare-fun res!925438 () Bool)

(assert (=> b!1383763 (=> (not res!925438) (not e!784215))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94581 (_ BitVec 32)) Bool)

(assert (=> b!1383763 (= res!925438 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383764 () Bool)

(declare-fun lt!608630 () Unit!46050)

(assert (=> b!1383764 (= e!784216 lt!608630)))

(declare-fun lt!608631 () Unit!46050)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94581 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46050)

(assert (=> b!1383764 (= lt!608631 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10078 0))(
  ( (MissingZero!10078 (index!42682 (_ BitVec 32))) (Found!10078 (index!42683 (_ BitVec 32))) (Intermediate!10078 (undefined!10890 Bool) (index!42684 (_ BitVec 32)) (x!124202 (_ BitVec 32))) (Undefined!10078) (MissingVacant!10078 (index!42685 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94581 (_ BitVec 32)) SeekEntryResult!10078)

(assert (=> b!1383764 (= (seekEntryOrOpen!0 (select (arr!45664 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45664 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94582 (store (arr!45664 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46215 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94581 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46050)

(assert (=> b!1383764 (= lt!608630 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1383764 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1383765 () Bool)

(assert (=> b!1383765 (= e!784215 false)))

(declare-fun lt!608632 () Unit!46050)

(assert (=> b!1383765 (= lt!608632 e!784216)))

(declare-fun c!128603 () Bool)

(assert (=> b!1383765 (= c!128603 e!784217)))

(declare-fun res!925439 () Bool)

(assert (=> b!1383765 (=> (not res!925439) (not e!784217))))

(assert (=> b!1383765 (= res!925439 (not (= startIndex!16 i!1065)))))

(declare-fun b!1383766 () Bool)

(declare-fun res!925437 () Bool)

(assert (=> b!1383766 (=> (not res!925437) (not e!784215))))

(assert (=> b!1383766 (= res!925437 (and (not (= (select (arr!45664 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45664 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!118360 res!925441) b!1383761))

(assert (= (and b!1383761 res!925442) b!1383760))

(assert (= (and b!1383760 res!925440) b!1383759))

(assert (= (and b!1383759 res!925443) b!1383763))

(assert (= (and b!1383763 res!925438) b!1383766))

(assert (= (and b!1383766 res!925437) b!1383765))

(assert (= (and b!1383765 res!925439) b!1383758))

(assert (= (and b!1383765 c!128603) b!1383764))

(assert (= (and b!1383765 (not c!128603)) b!1383762))

(declare-fun m!1268993 () Bool)

(assert (=> b!1383764 m!1268993))

(declare-fun m!1268995 () Bool)

(assert (=> b!1383764 m!1268995))

(assert (=> b!1383764 m!1268995))

(declare-fun m!1268997 () Bool)

(assert (=> b!1383764 m!1268997))

(declare-fun m!1268999 () Bool)

(assert (=> b!1383764 m!1268999))

(declare-fun m!1269001 () Bool)

(assert (=> b!1383764 m!1269001))

(declare-fun m!1269003 () Bool)

(assert (=> b!1383764 m!1269003))

(declare-fun m!1269005 () Bool)

(assert (=> b!1383764 m!1269005))

(assert (=> b!1383764 m!1269003))

(declare-fun m!1269007 () Bool)

(assert (=> b!1383764 m!1269007))

(declare-fun m!1269009 () Bool)

(assert (=> b!1383763 m!1269009))

(declare-fun m!1269011 () Bool)

(assert (=> start!118360 m!1269011))

(declare-fun m!1269013 () Bool)

(assert (=> start!118360 m!1269013))

(declare-fun m!1269015 () Bool)

(assert (=> b!1383760 m!1269015))

(assert (=> b!1383760 m!1269015))

(declare-fun m!1269017 () Bool)

(assert (=> b!1383760 m!1269017))

(assert (=> b!1383766 m!1269015))

(assert (=> b!1383758 m!1269003))

(assert (=> b!1383758 m!1269003))

(declare-fun m!1269019 () Bool)

(assert (=> b!1383758 m!1269019))

(declare-fun m!1269021 () Bool)

(assert (=> b!1383759 m!1269021))

(push 1)

(assert (not b!1383764))

(assert (not b!1383760))

(assert (not start!118360))

(assert (not b!1383758))

(assert (not b!1383759))

(assert (not b!1383763))

(check-sat)

(pop 1)

