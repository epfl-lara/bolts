; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120544 () Bool)

(assert start!120544)

(declare-fun b!1403088 () Bool)

(declare-fun res!941713 () Bool)

(declare-fun e!794494 () Bool)

(assert (=> b!1403088 (=> (not res!941713) (not e!794494))))

(declare-datatypes ((array!95871 0))(
  ( (array!95872 (arr!46282 (Array (_ BitVec 32) (_ BitVec 64))) (size!46833 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95871)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95871 (_ BitVec 32)) Bool)

(assert (=> b!1403088 (= res!941713 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403089 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun e!794493 () Bool)

(declare-datatypes ((SeekEntryResult!10621 0))(
  ( (MissingZero!10621 (index!44860 (_ BitVec 32))) (Found!10621 (index!44861 (_ BitVec 32))) (Intermediate!10621 (undefined!11433 Bool) (index!44862 (_ BitVec 32)) (x!126483 (_ BitVec 32))) (Undefined!10621) (MissingVacant!10621 (index!44863 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95871 (_ BitVec 32)) SeekEntryResult!10621)

(assert (=> b!1403089 (= e!794493 (= (seekEntryOrOpen!0 (select (arr!46282 a!2901) j!112) a!2901 mask!2840) (Found!10621 j!112)))))

(declare-fun b!1403090 () Bool)

(declare-fun res!941710 () Bool)

(assert (=> b!1403090 (=> (not res!941710) (not e!794494))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1403090 (= res!941710 (and (= (size!46833 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46833 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46833 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403091 () Bool)

(declare-fun e!794495 () Bool)

(assert (=> b!1403091 (= e!794495 true)))

(declare-fun lt!618239 () SeekEntryResult!10621)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95871 (_ BitVec 32)) SeekEntryResult!10621)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403091 (= lt!618239 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46282 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46282 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95872 (store (arr!46282 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46833 a!2901)) mask!2840))))

(declare-fun b!1403092 () Bool)

(assert (=> b!1403092 (= e!794494 (not e!794495))))

(declare-fun res!941712 () Bool)

(assert (=> b!1403092 (=> res!941712 e!794495)))

(declare-fun lt!618241 () SeekEntryResult!10621)

(assert (=> b!1403092 (= res!941712 (or (not (is-Intermediate!10621 lt!618241)) (undefined!11433 lt!618241)))))

(assert (=> b!1403092 e!794493))

(declare-fun res!941709 () Bool)

(assert (=> b!1403092 (=> (not res!941709) (not e!794493))))

(assert (=> b!1403092 (= res!941709 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47196 0))(
  ( (Unit!47197) )
))
(declare-fun lt!618240 () Unit!47196)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95871 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47196)

(assert (=> b!1403092 (= lt!618240 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1403092 (= lt!618241 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46282 a!2901) j!112) mask!2840) (select (arr!46282 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403093 () Bool)

(declare-fun res!941708 () Bool)

(assert (=> b!1403093 (=> (not res!941708) (not e!794494))))

(declare-datatypes ((List!32981 0))(
  ( (Nil!32978) (Cons!32977 (h!34225 (_ BitVec 64)) (t!47682 List!32981)) )
))
(declare-fun arrayNoDuplicates!0 (array!95871 (_ BitVec 32) List!32981) Bool)

(assert (=> b!1403093 (= res!941708 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32978))))

(declare-fun b!1403094 () Bool)

(declare-fun res!941714 () Bool)

(assert (=> b!1403094 (=> (not res!941714) (not e!794494))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403094 (= res!941714 (validKeyInArray!0 (select (arr!46282 a!2901) i!1037)))))

(declare-fun b!1403095 () Bool)

(declare-fun res!941715 () Bool)

(assert (=> b!1403095 (=> (not res!941715) (not e!794494))))

(assert (=> b!1403095 (= res!941715 (validKeyInArray!0 (select (arr!46282 a!2901) j!112)))))

(declare-fun res!941711 () Bool)

(assert (=> start!120544 (=> (not res!941711) (not e!794494))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120544 (= res!941711 (validMask!0 mask!2840))))

(assert (=> start!120544 e!794494))

(assert (=> start!120544 true))

(declare-fun array_inv!35227 (array!95871) Bool)

(assert (=> start!120544 (array_inv!35227 a!2901)))

(assert (= (and start!120544 res!941711) b!1403090))

(assert (= (and b!1403090 res!941710) b!1403094))

(assert (= (and b!1403094 res!941714) b!1403095))

(assert (= (and b!1403095 res!941715) b!1403088))

(assert (= (and b!1403088 res!941713) b!1403093))

(assert (= (and b!1403093 res!941708) b!1403092))

(assert (= (and b!1403092 res!941709) b!1403089))

(assert (= (and b!1403092 (not res!941712)) b!1403091))

(declare-fun m!1291673 () Bool)

(assert (=> b!1403094 m!1291673))

(assert (=> b!1403094 m!1291673))

(declare-fun m!1291675 () Bool)

(assert (=> b!1403094 m!1291675))

(declare-fun m!1291677 () Bool)

(assert (=> b!1403088 m!1291677))

(declare-fun m!1291679 () Bool)

(assert (=> b!1403092 m!1291679))

(declare-fun m!1291681 () Bool)

(assert (=> b!1403092 m!1291681))

(assert (=> b!1403092 m!1291679))

(declare-fun m!1291683 () Bool)

(assert (=> b!1403092 m!1291683))

(assert (=> b!1403092 m!1291681))

(assert (=> b!1403092 m!1291679))

(declare-fun m!1291685 () Bool)

(assert (=> b!1403092 m!1291685))

(declare-fun m!1291687 () Bool)

(assert (=> b!1403092 m!1291687))

(declare-fun m!1291689 () Bool)

(assert (=> start!120544 m!1291689))

(declare-fun m!1291691 () Bool)

(assert (=> start!120544 m!1291691))

(assert (=> b!1403089 m!1291679))

(assert (=> b!1403089 m!1291679))

(declare-fun m!1291693 () Bool)

(assert (=> b!1403089 m!1291693))

(declare-fun m!1291695 () Bool)

(assert (=> b!1403091 m!1291695))

(declare-fun m!1291697 () Bool)

(assert (=> b!1403091 m!1291697))

(assert (=> b!1403091 m!1291697))

(declare-fun m!1291699 () Bool)

(assert (=> b!1403091 m!1291699))

(assert (=> b!1403091 m!1291699))

(assert (=> b!1403091 m!1291697))

(declare-fun m!1291701 () Bool)

(assert (=> b!1403091 m!1291701))

(declare-fun m!1291703 () Bool)

(assert (=> b!1403093 m!1291703))

(assert (=> b!1403095 m!1291679))

(assert (=> b!1403095 m!1291679))

(declare-fun m!1291705 () Bool)

(assert (=> b!1403095 m!1291705))

(push 1)

(assert (not b!1403093))

(assert (not b!1403089))

(assert (not start!120544))

(assert (not b!1403095))

(assert (not b!1403094))

(assert (not b!1403092))

(assert (not b!1403091))

(assert (not b!1403088))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

