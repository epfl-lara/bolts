; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119318 () Bool)

(assert start!119318)

(declare-fun res!930994 () Bool)

(declare-fun e!787669 () Bool)

(assert (=> start!119318 (=> (not res!930994) (not e!787669))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119318 (= res!930994 (validMask!0 mask!2840))))

(assert (=> start!119318 e!787669))

(assert (=> start!119318 true))

(declare-datatypes ((array!95122 0))(
  ( (array!95123 (arr!45921 (Array (_ BitVec 32) (_ BitVec 64))) (size!46472 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95122)

(declare-fun array_inv!34866 (array!95122) Bool)

(assert (=> start!119318 (array_inv!34866 a!2901)))

(declare-fun b!1390870 () Bool)

(declare-datatypes ((SeekEntryResult!10260 0))(
  ( (MissingZero!10260 (index!43410 (_ BitVec 32))) (Found!10260 (index!43411 (_ BitVec 32))) (Intermediate!10260 (undefined!11072 Bool) (index!43412 (_ BitVec 32)) (x!125091 (_ BitVec 32))) (Undefined!10260) (MissingVacant!10260 (index!43413 (_ BitVec 32))) )
))
(declare-fun lt!610954 () SeekEntryResult!10260)

(assert (=> b!1390870 (= e!787669 (not (or (not (is-Intermediate!10260 lt!610954)) (undefined!11072 lt!610954) (bvsge mask!2840 #b00000000000000000000000000000000))))))

(declare-fun e!787670 () Bool)

(assert (=> b!1390870 e!787670))

(declare-fun res!930995 () Bool)

(assert (=> b!1390870 (=> (not res!930995) (not e!787670))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95122 (_ BitVec 32)) Bool)

(assert (=> b!1390870 (= res!930995 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46474 0))(
  ( (Unit!46475) )
))
(declare-fun lt!610953 () Unit!46474)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95122 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46474)

(assert (=> b!1390870 (= lt!610953 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95122 (_ BitVec 32)) SeekEntryResult!10260)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390870 (= lt!610954 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45921 a!2901) j!112) mask!2840) (select (arr!45921 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1390871 () Bool)

(declare-fun res!930999 () Bool)

(assert (=> b!1390871 (=> (not res!930999) (not e!787669))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390871 (= res!930999 (validKeyInArray!0 (select (arr!45921 a!2901) i!1037)))))

(declare-fun b!1390872 () Bool)

(declare-fun res!930998 () Bool)

(assert (=> b!1390872 (=> (not res!930998) (not e!787669))))

(declare-datatypes ((List!32620 0))(
  ( (Nil!32617) (Cons!32616 (h!33837 (_ BitVec 64)) (t!47321 List!32620)) )
))
(declare-fun arrayNoDuplicates!0 (array!95122 (_ BitVec 32) List!32620) Bool)

(assert (=> b!1390872 (= res!930998 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32617))))

(declare-fun b!1390873 () Bool)

(declare-fun res!930993 () Bool)

(assert (=> b!1390873 (=> (not res!930993) (not e!787669))))

(assert (=> b!1390873 (= res!930993 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1390874 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95122 (_ BitVec 32)) SeekEntryResult!10260)

(assert (=> b!1390874 (= e!787670 (= (seekEntryOrOpen!0 (select (arr!45921 a!2901) j!112) a!2901 mask!2840) (Found!10260 j!112)))))

(declare-fun b!1390875 () Bool)

(declare-fun res!930996 () Bool)

(assert (=> b!1390875 (=> (not res!930996) (not e!787669))))

(assert (=> b!1390875 (= res!930996 (validKeyInArray!0 (select (arr!45921 a!2901) j!112)))))

(declare-fun b!1390876 () Bool)

(declare-fun res!930997 () Bool)

(assert (=> b!1390876 (=> (not res!930997) (not e!787669))))

(assert (=> b!1390876 (= res!930997 (and (= (size!46472 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46472 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46472 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!119318 res!930994) b!1390876))

(assert (= (and b!1390876 res!930997) b!1390871))

(assert (= (and b!1390871 res!930999) b!1390875))

(assert (= (and b!1390875 res!930996) b!1390873))

(assert (= (and b!1390873 res!930993) b!1390872))

(assert (= (and b!1390872 res!930998) b!1390870))

(assert (= (and b!1390870 res!930995) b!1390874))

(declare-fun m!1276743 () Bool)

(assert (=> b!1390874 m!1276743))

(assert (=> b!1390874 m!1276743))

(declare-fun m!1276745 () Bool)

(assert (=> b!1390874 m!1276745))

(assert (=> b!1390870 m!1276743))

(declare-fun m!1276747 () Bool)

(assert (=> b!1390870 m!1276747))

(assert (=> b!1390870 m!1276743))

(declare-fun m!1276749 () Bool)

(assert (=> b!1390870 m!1276749))

(assert (=> b!1390870 m!1276747))

(assert (=> b!1390870 m!1276743))

(declare-fun m!1276751 () Bool)

(assert (=> b!1390870 m!1276751))

(declare-fun m!1276753 () Bool)

(assert (=> b!1390870 m!1276753))

(assert (=> b!1390875 m!1276743))

(assert (=> b!1390875 m!1276743))

(declare-fun m!1276755 () Bool)

(assert (=> b!1390875 m!1276755))

(declare-fun m!1276757 () Bool)

(assert (=> b!1390873 m!1276757))

(declare-fun m!1276759 () Bool)

(assert (=> start!119318 m!1276759))

(declare-fun m!1276761 () Bool)

(assert (=> start!119318 m!1276761))

(declare-fun m!1276763 () Bool)

(assert (=> b!1390871 m!1276763))

(assert (=> b!1390871 m!1276763))

(declare-fun m!1276765 () Bool)

(assert (=> b!1390871 m!1276765))

(declare-fun m!1276767 () Bool)

(assert (=> b!1390872 m!1276767))

(push 1)

(assert (not b!1390873))

(assert (not b!1390875))

(assert (not b!1390870))

(assert (not start!119318))

(assert (not b!1390874))

(assert (not b!1390872))

(assert (not b!1390871))

(check-sat)

(pop 1)

