; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119928 () Bool)

(assert start!119928)

(declare-fun b!1395850 () Bool)

(declare-fun e!790271 () Bool)

(declare-fun e!790273 () Bool)

(assert (=> b!1395850 (= e!790271 e!790273)))

(declare-fun res!935043 () Bool)

(assert (=> b!1395850 (=> res!935043 e!790273)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95426 0))(
  ( (array!95427 (arr!46064 (Array (_ BitVec 32) (_ BitVec 64))) (size!46615 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95426)

(declare-fun lt!613129 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10403 0))(
  ( (MissingZero!10403 (index!43982 (_ BitVec 32))) (Found!10403 (index!43983 (_ BitVec 32))) (Intermediate!10403 (undefined!11215 Bool) (index!43984 (_ BitVec 32)) (x!125654 (_ BitVec 32))) (Undefined!10403) (MissingVacant!10403 (index!43985 (_ BitVec 32))) )
))
(declare-fun lt!613127 () SeekEntryResult!10403)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95426 (_ BitVec 32)) SeekEntryResult!10403)

(assert (=> b!1395850 (= res!935043 (= lt!613127 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613129 (select (store (arr!46064 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95427 (store (arr!46064 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46615 a!2901)) mask!2840)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1395850 (= lt!613129 (toIndex!0 (select (store (arr!46064 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(declare-fun res!935045 () Bool)

(declare-fun e!790272 () Bool)

(assert (=> start!119928 (=> (not res!935045) (not e!790272))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119928 (= res!935045 (validMask!0 mask!2840))))

(assert (=> start!119928 e!790272))

(assert (=> start!119928 true))

(declare-fun array_inv!35009 (array!95426) Bool)

(assert (=> start!119928 (array_inv!35009 a!2901)))

(declare-fun b!1395851 () Bool)

(assert (=> b!1395851 (= e!790272 (not e!790271))))

(declare-fun res!935038 () Bool)

(assert (=> b!1395851 (=> res!935038 e!790271)))

(get-info :version)

(assert (=> b!1395851 (= res!935038 (or (not ((_ is Intermediate!10403) lt!613127)) (undefined!11215 lt!613127)))))

(declare-fun e!790270 () Bool)

(assert (=> b!1395851 e!790270))

(declare-fun res!935037 () Bool)

(assert (=> b!1395851 (=> (not res!935037) (not e!790270))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95426 (_ BitVec 32)) Bool)

(assert (=> b!1395851 (= res!935037 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46760 0))(
  ( (Unit!46761) )
))
(declare-fun lt!613128 () Unit!46760)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95426 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46760)

(assert (=> b!1395851 (= lt!613128 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1395851 (= lt!613127 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46064 a!2901) j!112) mask!2840) (select (arr!46064 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1395852 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1395852 (= e!790273 (validKeyInArray!0 (select (store (arr!46064 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(declare-fun b!1395853 () Bool)

(declare-fun res!935041 () Bool)

(assert (=> b!1395853 (=> (not res!935041) (not e!790272))))

(declare-datatypes ((List!32763 0))(
  ( (Nil!32760) (Cons!32759 (h!33998 (_ BitVec 64)) (t!47464 List!32763)) )
))
(declare-fun arrayNoDuplicates!0 (array!95426 (_ BitVec 32) List!32763) Bool)

(assert (=> b!1395853 (= res!935041 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32760))))

(declare-fun b!1395854 () Bool)

(declare-fun res!935040 () Bool)

(assert (=> b!1395854 (=> (not res!935040) (not e!790272))))

(assert (=> b!1395854 (= res!935040 (and (= (size!46615 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46615 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46615 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1395855 () Bool)

(declare-fun res!935042 () Bool)

(assert (=> b!1395855 (=> (not res!935042) (not e!790272))))

(assert (=> b!1395855 (= res!935042 (validKeyInArray!0 (select (arr!46064 a!2901) i!1037)))))

(declare-fun b!1395856 () Bool)

(declare-fun res!935039 () Bool)

(assert (=> b!1395856 (=> (not res!935039) (not e!790272))))

(assert (=> b!1395856 (= res!935039 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1395857 () Bool)

(declare-fun res!935046 () Bool)

(assert (=> b!1395857 (=> res!935046 e!790273)))

(assert (=> b!1395857 (= res!935046 (or (bvslt mask!2840 #b00000000000000000000000000000000) (bvslt lt!613129 #b00000000000000000000000000000000) (bvsge lt!613129 (bvadd #b00000000000000000000000000000001 mask!2840))))))

(declare-fun b!1395858 () Bool)

(declare-fun res!935044 () Bool)

(assert (=> b!1395858 (=> (not res!935044) (not e!790272))))

(assert (=> b!1395858 (= res!935044 (validKeyInArray!0 (select (arr!46064 a!2901) j!112)))))

(declare-fun b!1395859 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95426 (_ BitVec 32)) SeekEntryResult!10403)

(assert (=> b!1395859 (= e!790270 (= (seekEntryOrOpen!0 (select (arr!46064 a!2901) j!112) a!2901 mask!2840) (Found!10403 j!112)))))

(assert (= (and start!119928 res!935045) b!1395854))

(assert (= (and b!1395854 res!935040) b!1395855))

(assert (= (and b!1395855 res!935042) b!1395858))

(assert (= (and b!1395858 res!935044) b!1395856))

(assert (= (and b!1395856 res!935039) b!1395853))

(assert (= (and b!1395853 res!935041) b!1395851))

(assert (= (and b!1395851 res!935037) b!1395859))

(assert (= (and b!1395851 (not res!935038)) b!1395850))

(assert (= (and b!1395850 (not res!935043)) b!1395857))

(assert (= (and b!1395857 (not res!935046)) b!1395852))

(declare-fun m!1282361 () Bool)

(assert (=> b!1395859 m!1282361))

(assert (=> b!1395859 m!1282361))

(declare-fun m!1282363 () Bool)

(assert (=> b!1395859 m!1282363))

(declare-fun m!1282365 () Bool)

(assert (=> start!119928 m!1282365))

(declare-fun m!1282367 () Bool)

(assert (=> start!119928 m!1282367))

(declare-fun m!1282369 () Bool)

(assert (=> b!1395852 m!1282369))

(declare-fun m!1282371 () Bool)

(assert (=> b!1395852 m!1282371))

(assert (=> b!1395852 m!1282371))

(declare-fun m!1282373 () Bool)

(assert (=> b!1395852 m!1282373))

(declare-fun m!1282375 () Bool)

(assert (=> b!1395856 m!1282375))

(declare-fun m!1282377 () Bool)

(assert (=> b!1395853 m!1282377))

(assert (=> b!1395851 m!1282361))

(declare-fun m!1282379 () Bool)

(assert (=> b!1395851 m!1282379))

(assert (=> b!1395851 m!1282361))

(declare-fun m!1282381 () Bool)

(assert (=> b!1395851 m!1282381))

(assert (=> b!1395851 m!1282379))

(assert (=> b!1395851 m!1282361))

(declare-fun m!1282383 () Bool)

(assert (=> b!1395851 m!1282383))

(declare-fun m!1282385 () Bool)

(assert (=> b!1395851 m!1282385))

(declare-fun m!1282387 () Bool)

(assert (=> b!1395855 m!1282387))

(assert (=> b!1395855 m!1282387))

(declare-fun m!1282389 () Bool)

(assert (=> b!1395855 m!1282389))

(assert (=> b!1395858 m!1282361))

(assert (=> b!1395858 m!1282361))

(declare-fun m!1282391 () Bool)

(assert (=> b!1395858 m!1282391))

(assert (=> b!1395850 m!1282369))

(assert (=> b!1395850 m!1282371))

(assert (=> b!1395850 m!1282371))

(declare-fun m!1282393 () Bool)

(assert (=> b!1395850 m!1282393))

(assert (=> b!1395850 m!1282371))

(declare-fun m!1282395 () Bool)

(assert (=> b!1395850 m!1282395))

(check-sat (not b!1395856) (not b!1395855) (not b!1395852) (not b!1395851) (not b!1395853) (not b!1395850) (not b!1395858) (not b!1395859) (not start!119928))
