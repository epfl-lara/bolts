; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121234 () Bool)

(assert start!121234)

(declare-fun b!1409088 () Bool)

(declare-fun res!946924 () Bool)

(declare-fun e!797446 () Bool)

(assert (=> b!1409088 (=> (not res!946924) (not e!797446))))

(declare-datatypes ((array!96306 0))(
  ( (array!96307 (arr!46492 (Array (_ BitVec 32) (_ BitVec 64))) (size!47043 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96306)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409088 (= res!946924 (validKeyInArray!0 (select (arr!46492 a!2901) j!112)))))

(declare-fun b!1409089 () Bool)

(declare-fun res!946921 () Bool)

(assert (=> b!1409089 (=> (not res!946921) (not e!797446))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96306 (_ BitVec 32)) Bool)

(assert (=> b!1409089 (= res!946921 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!946926 () Bool)

(assert (=> start!121234 (=> (not res!946926) (not e!797446))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121234 (= res!946926 (validMask!0 mask!2840))))

(assert (=> start!121234 e!797446))

(assert (=> start!121234 true))

(declare-fun array_inv!35437 (array!96306) Bool)

(assert (=> start!121234 (array_inv!35437 a!2901)))

(declare-fun b!1409090 () Bool)

(declare-fun res!946923 () Bool)

(assert (=> b!1409090 (=> (not res!946923) (not e!797446))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1409090 (= res!946923 (and (= (size!47043 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47043 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47043 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1409091 () Bool)

(declare-fun e!797444 () Bool)

(assert (=> b!1409091 (= e!797446 (not e!797444))))

(declare-fun res!946919 () Bool)

(assert (=> b!1409091 (=> res!946919 e!797444)))

(declare-datatypes ((SeekEntryResult!10825 0))(
  ( (MissingZero!10825 (index!45676 (_ BitVec 32))) (Found!10825 (index!45677 (_ BitVec 32))) (Intermediate!10825 (undefined!11637 Bool) (index!45678 (_ BitVec 32)) (x!127277 (_ BitVec 32))) (Undefined!10825) (MissingVacant!10825 (index!45679 (_ BitVec 32))) )
))
(declare-fun lt!620563 () SeekEntryResult!10825)

(assert (=> b!1409091 (= res!946919 (or (not (is-Intermediate!10825 lt!620563)) (undefined!11637 lt!620563)))))

(declare-fun e!797445 () Bool)

(assert (=> b!1409091 e!797445))

(declare-fun res!946925 () Bool)

(assert (=> b!1409091 (=> (not res!946925) (not e!797445))))

(assert (=> b!1409091 (= res!946925 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47574 0))(
  ( (Unit!47575) )
))
(declare-fun lt!620562 () Unit!47574)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96306 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47574)

(assert (=> b!1409091 (= lt!620562 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96306 (_ BitVec 32)) SeekEntryResult!10825)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409091 (= lt!620563 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46492 a!2901) j!112) mask!2840) (select (arr!46492 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1409092 () Bool)

(declare-fun res!946922 () Bool)

(assert (=> b!1409092 (=> (not res!946922) (not e!797446))))

(assert (=> b!1409092 (= res!946922 (validKeyInArray!0 (select (arr!46492 a!2901) i!1037)))))

(declare-fun b!1409093 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96306 (_ BitVec 32)) SeekEntryResult!10825)

(assert (=> b!1409093 (= e!797445 (= (seekEntryOrOpen!0 (select (arr!46492 a!2901) j!112) a!2901 mask!2840) (Found!10825 j!112)))))

(declare-fun b!1409094 () Bool)

(assert (=> b!1409094 (= e!797444 true)))

(declare-fun lt!620561 () SeekEntryResult!10825)

(assert (=> b!1409094 (= lt!620561 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46492 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46492 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96307 (store (arr!46492 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47043 a!2901)) mask!2840))))

(declare-fun b!1409095 () Bool)

(declare-fun res!946920 () Bool)

(assert (=> b!1409095 (=> (not res!946920) (not e!797446))))

(declare-datatypes ((List!33191 0))(
  ( (Nil!33188) (Cons!33187 (h!34450 (_ BitVec 64)) (t!47892 List!33191)) )
))
(declare-fun arrayNoDuplicates!0 (array!96306 (_ BitVec 32) List!33191) Bool)

(assert (=> b!1409095 (= res!946920 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33188))))

(assert (= (and start!121234 res!946926) b!1409090))

(assert (= (and b!1409090 res!946923) b!1409092))

(assert (= (and b!1409092 res!946922) b!1409088))

(assert (= (and b!1409088 res!946924) b!1409089))

(assert (= (and b!1409089 res!946921) b!1409095))

(assert (= (and b!1409095 res!946920) b!1409091))

(assert (= (and b!1409091 res!946925) b!1409093))

(assert (= (and b!1409091 (not res!946919)) b!1409094))

(declare-fun m!1298753 () Bool)

(assert (=> b!1409093 m!1298753))

(assert (=> b!1409093 m!1298753))

(declare-fun m!1298755 () Bool)

(assert (=> b!1409093 m!1298755))

(assert (=> b!1409091 m!1298753))

(declare-fun m!1298757 () Bool)

(assert (=> b!1409091 m!1298757))

(assert (=> b!1409091 m!1298753))

(declare-fun m!1298759 () Bool)

(assert (=> b!1409091 m!1298759))

(assert (=> b!1409091 m!1298757))

(assert (=> b!1409091 m!1298753))

(declare-fun m!1298761 () Bool)

(assert (=> b!1409091 m!1298761))

(declare-fun m!1298763 () Bool)

(assert (=> b!1409091 m!1298763))

(declare-fun m!1298765 () Bool)

(assert (=> b!1409095 m!1298765))

(declare-fun m!1298767 () Bool)

(assert (=> b!1409094 m!1298767))

(declare-fun m!1298769 () Bool)

(assert (=> b!1409094 m!1298769))

(assert (=> b!1409094 m!1298769))

(declare-fun m!1298771 () Bool)

(assert (=> b!1409094 m!1298771))

(assert (=> b!1409094 m!1298771))

(assert (=> b!1409094 m!1298769))

(declare-fun m!1298773 () Bool)

(assert (=> b!1409094 m!1298773))

(assert (=> b!1409088 m!1298753))

(assert (=> b!1409088 m!1298753))

(declare-fun m!1298775 () Bool)

(assert (=> b!1409088 m!1298775))

(declare-fun m!1298777 () Bool)

(assert (=> b!1409092 m!1298777))

(assert (=> b!1409092 m!1298777))

(declare-fun m!1298779 () Bool)

(assert (=> b!1409092 m!1298779))

(declare-fun m!1298781 () Bool)

(assert (=> b!1409089 m!1298781))

(declare-fun m!1298783 () Bool)

(assert (=> start!121234 m!1298783))

(declare-fun m!1298785 () Bool)

(assert (=> start!121234 m!1298785))

(push 1)

(assert (not b!1409093))

(assert (not b!1409092))

(assert (not b!1409091))

(assert (not b!1409088))

(assert (not b!1409095))

(assert (not b!1409094))

(assert (not start!121234))

(assert (not b!1409089))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

