; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119174 () Bool)

(assert start!119174)

(declare-fun b!1389725 () Bool)

(declare-fun e!787147 () Bool)

(assert (=> b!1389725 (= e!787147 (not true))))

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((array!95029 0))(
  ( (array!95030 (arr!45876 (Array (_ BitVec 32) (_ BitVec 64))) (size!46427 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95029)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95029 (_ BitVec 32)) Bool)

(assert (=> b!1389725 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!46384 0))(
  ( (Unit!46385) )
))
(declare-fun lt!610576 () Unit!46384)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95029 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46384)

(assert (=> b!1389725 (= lt!610576 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10215 0))(
  ( (MissingZero!10215 (index!43230 (_ BitVec 32))) (Found!10215 (index!43231 (_ BitVec 32))) (Intermediate!10215 (undefined!11027 Bool) (index!43232 (_ BitVec 32)) (x!124920 (_ BitVec 32))) (Undefined!10215) (MissingVacant!10215 (index!43233 (_ BitVec 32))) )
))
(declare-fun lt!610575 () SeekEntryResult!10215)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95029 (_ BitVec 32)) SeekEntryResult!10215)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389725 (= lt!610575 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45876 a!2901) j!112) mask!2840) (select (arr!45876 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!929995 () Bool)

(assert (=> start!119174 (=> (not res!929995) (not e!787147))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119174 (= res!929995 (validMask!0 mask!2840))))

(assert (=> start!119174 e!787147))

(assert (=> start!119174 true))

(declare-fun array_inv!34821 (array!95029) Bool)

(assert (=> start!119174 (array_inv!34821 a!2901)))

(declare-fun b!1389726 () Bool)

(declare-fun res!929997 () Bool)

(assert (=> b!1389726 (=> (not res!929997) (not e!787147))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389726 (= res!929997 (validKeyInArray!0 (select (arr!45876 a!2901) j!112)))))

(declare-fun b!1389727 () Bool)

(declare-fun res!929999 () Bool)

(assert (=> b!1389727 (=> (not res!929999) (not e!787147))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1389727 (= res!929999 (validKeyInArray!0 (select (arr!45876 a!2901) i!1037)))))

(declare-fun b!1389728 () Bool)

(declare-fun res!930000 () Bool)

(assert (=> b!1389728 (=> (not res!930000) (not e!787147))))

(assert (=> b!1389728 (= res!930000 (and (= (size!46427 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46427 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46427 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389729 () Bool)

(declare-fun res!929998 () Bool)

(assert (=> b!1389729 (=> (not res!929998) (not e!787147))))

(assert (=> b!1389729 (= res!929998 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389730 () Bool)

(declare-fun res!929996 () Bool)

(assert (=> b!1389730 (=> (not res!929996) (not e!787147))))

(declare-datatypes ((List!32575 0))(
  ( (Nil!32572) (Cons!32571 (h!33789 (_ BitVec 64)) (t!47276 List!32575)) )
))
(declare-fun arrayNoDuplicates!0 (array!95029 (_ BitVec 32) List!32575) Bool)

(assert (=> b!1389730 (= res!929996 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32572))))

(assert (= (and start!119174 res!929995) b!1389728))

(assert (= (and b!1389728 res!930000) b!1389727))

(assert (= (and b!1389727 res!929999) b!1389726))

(assert (= (and b!1389726 res!929997) b!1389729))

(assert (= (and b!1389729 res!929998) b!1389730))

(assert (= (and b!1389730 res!929996) b!1389725))

(declare-fun m!1275467 () Bool)

(assert (=> start!119174 m!1275467))

(declare-fun m!1275469 () Bool)

(assert (=> start!119174 m!1275469))

(declare-fun m!1275471 () Bool)

(assert (=> b!1389729 m!1275471))

(declare-fun m!1275473 () Bool)

(assert (=> b!1389725 m!1275473))

(declare-fun m!1275475 () Bool)

(assert (=> b!1389725 m!1275475))

(assert (=> b!1389725 m!1275473))

(declare-fun m!1275477 () Bool)

(assert (=> b!1389725 m!1275477))

(assert (=> b!1389725 m!1275475))

(assert (=> b!1389725 m!1275473))

(declare-fun m!1275479 () Bool)

(assert (=> b!1389725 m!1275479))

(declare-fun m!1275481 () Bool)

(assert (=> b!1389725 m!1275481))

(declare-fun m!1275483 () Bool)

(assert (=> b!1389730 m!1275483))

(assert (=> b!1389726 m!1275473))

(assert (=> b!1389726 m!1275473))

(declare-fun m!1275485 () Bool)

(assert (=> b!1389726 m!1275485))

(declare-fun m!1275487 () Bool)

(assert (=> b!1389727 m!1275487))

(assert (=> b!1389727 m!1275487))

(declare-fun m!1275489 () Bool)

(assert (=> b!1389727 m!1275489))

(push 1)

(assert (not b!1389726))

(assert (not b!1389725))

(assert (not b!1389730))

(assert (not b!1389727))

(assert (not b!1389729))

(assert (not start!119174))

(check-sat)

(pop 1)

(push 1)

(check-sat)

