; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119464 () Bool)

(assert start!119464)

(declare-fun b!1391727 () Bool)

(declare-fun res!931562 () Bool)

(declare-fun e!788130 () Bool)

(assert (=> b!1391727 (=> (not res!931562) (not e!788130))))

(declare-datatypes ((array!95166 0))(
  ( (array!95167 (arr!45940 (Array (_ BitVec 32) (_ BitVec 64))) (size!46491 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95166)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1391727 (= res!931562 (validKeyInArray!0 (select (arr!45940 a!2901) j!112)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!788131 () Bool)

(declare-fun b!1391728 () Bool)

(declare-datatypes ((SeekEntryResult!10279 0))(
  ( (MissingZero!10279 (index!43486 (_ BitVec 32))) (Found!10279 (index!43487 (_ BitVec 32))) (Intermediate!10279 (undefined!11091 Bool) (index!43488 (_ BitVec 32)) (x!125178 (_ BitVec 32))) (Undefined!10279) (MissingVacant!10279 (index!43489 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95166 (_ BitVec 32)) SeekEntryResult!10279)

(assert (=> b!1391728 (= e!788131 (= (seekEntryOrOpen!0 (select (arr!45940 a!2901) j!112) a!2901 mask!2840) (Found!10279 j!112)))))

(declare-fun res!931559 () Bool)

(assert (=> start!119464 (=> (not res!931559) (not e!788130))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119464 (= res!931559 (validMask!0 mask!2840))))

(assert (=> start!119464 e!788130))

(assert (=> start!119464 true))

(declare-fun array_inv!34885 (array!95166) Bool)

(assert (=> start!119464 (array_inv!34885 a!2901)))

(declare-fun b!1391729 () Bool)

(declare-fun res!931563 () Bool)

(assert (=> b!1391729 (=> (not res!931563) (not e!788130))))

(declare-datatypes ((List!32639 0))(
  ( (Nil!32636) (Cons!32635 (h!33862 (_ BitVec 64)) (t!47340 List!32639)) )
))
(declare-fun arrayNoDuplicates!0 (array!95166 (_ BitVec 32) List!32639) Bool)

(assert (=> b!1391729 (= res!931563 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32636))))

(declare-fun b!1391730 () Bool)

(declare-fun res!931561 () Bool)

(assert (=> b!1391730 (=> (not res!931561) (not e!788130))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1391730 (= res!931561 (and (= (size!46491 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46491 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46491 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1391731 () Bool)

(declare-fun e!788132 () Bool)

(assert (=> b!1391731 (= e!788130 (not e!788132))))

(declare-fun res!931560 () Bool)

(assert (=> b!1391731 (=> res!931560 e!788132)))

(declare-fun lt!611295 () SeekEntryResult!10279)

(assert (=> b!1391731 (= res!931560 (or (not (is-Intermediate!10279 lt!611295)) (undefined!11091 lt!611295)))))

(assert (=> b!1391731 e!788131))

(declare-fun res!931557 () Bool)

(assert (=> b!1391731 (=> (not res!931557) (not e!788131))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95166 (_ BitVec 32)) Bool)

(assert (=> b!1391731 (= res!931557 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46512 0))(
  ( (Unit!46513) )
))
(declare-fun lt!611294 () Unit!46512)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95166 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46512)

(assert (=> b!1391731 (= lt!611294 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95166 (_ BitVec 32)) SeekEntryResult!10279)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391731 (= lt!611295 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45940 a!2901) j!112) mask!2840) (select (arr!45940 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1391732 () Bool)

(declare-fun res!931558 () Bool)

(assert (=> b!1391732 (=> (not res!931558) (not e!788130))))

(assert (=> b!1391732 (= res!931558 (validKeyInArray!0 (select (arr!45940 a!2901) i!1037)))))

(declare-fun b!1391733 () Bool)

(assert (=> b!1391733 (= e!788132 true)))

(declare-fun lt!611296 () (_ BitVec 32))

(assert (=> b!1391733 (= lt!611296 (toIndex!0 (select (store (arr!45940 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(declare-fun b!1391734 () Bool)

(declare-fun res!931556 () Bool)

(assert (=> b!1391734 (=> (not res!931556) (not e!788130))))

(assert (=> b!1391734 (= res!931556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!119464 res!931559) b!1391730))

(assert (= (and b!1391730 res!931561) b!1391732))

(assert (= (and b!1391732 res!931558) b!1391727))

(assert (= (and b!1391727 res!931562) b!1391734))

(assert (= (and b!1391734 res!931556) b!1391729))

(assert (= (and b!1391729 res!931563) b!1391731))

(assert (= (and b!1391731 res!931557) b!1391728))

(assert (= (and b!1391731 (not res!931560)) b!1391733))

(declare-fun m!1277495 () Bool)

(assert (=> b!1391728 m!1277495))

(assert (=> b!1391728 m!1277495))

(declare-fun m!1277497 () Bool)

(assert (=> b!1391728 m!1277497))

(declare-fun m!1277499 () Bool)

(assert (=> start!119464 m!1277499))

(declare-fun m!1277501 () Bool)

(assert (=> start!119464 m!1277501))

(assert (=> b!1391731 m!1277495))

(declare-fun m!1277503 () Bool)

(assert (=> b!1391731 m!1277503))

(assert (=> b!1391731 m!1277495))

(declare-fun m!1277505 () Bool)

(assert (=> b!1391731 m!1277505))

(assert (=> b!1391731 m!1277503))

(assert (=> b!1391731 m!1277495))

(declare-fun m!1277507 () Bool)

(assert (=> b!1391731 m!1277507))

(declare-fun m!1277509 () Bool)

(assert (=> b!1391731 m!1277509))

(declare-fun m!1277511 () Bool)

(assert (=> b!1391732 m!1277511))

(assert (=> b!1391732 m!1277511))

(declare-fun m!1277513 () Bool)

(assert (=> b!1391732 m!1277513))

(assert (=> b!1391727 m!1277495))

(assert (=> b!1391727 m!1277495))

(declare-fun m!1277515 () Bool)

(assert (=> b!1391727 m!1277515))

(declare-fun m!1277517 () Bool)

(assert (=> b!1391734 m!1277517))

(declare-fun m!1277519 () Bool)

(assert (=> b!1391733 m!1277519))

(declare-fun m!1277521 () Bool)

(assert (=> b!1391733 m!1277521))

(assert (=> b!1391733 m!1277521))

(declare-fun m!1277523 () Bool)

(assert (=> b!1391733 m!1277523))

(declare-fun m!1277525 () Bool)

(assert (=> b!1391729 m!1277525))

(push 1)

(assert (not b!1391732))

(assert (not b!1391727))

(assert (not b!1391728))

(assert (not b!1391731))

(assert (not start!119464))

(assert (not b!1391734))

(assert (not b!1391729))

(assert (not b!1391733))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

