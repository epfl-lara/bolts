; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120572 () Bool)

(assert start!120572)

(declare-fun res!942049 () Bool)

(declare-fun e!794660 () Bool)

(assert (=> start!120572 (=> (not res!942049) (not e!794660))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120572 (= res!942049 (validMask!0 mask!2840))))

(assert (=> start!120572 e!794660))

(assert (=> start!120572 true))

(declare-datatypes ((array!95899 0))(
  ( (array!95900 (arr!46296 (Array (_ BitVec 32) (_ BitVec 64))) (size!46847 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95899)

(declare-fun array_inv!35241 (array!95899) Bool)

(assert (=> start!120572 (array_inv!35241 a!2901)))

(declare-fun b!1403424 () Bool)

(declare-fun res!942044 () Bool)

(assert (=> b!1403424 (=> (not res!942044) (not e!794660))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95899 (_ BitVec 32)) Bool)

(assert (=> b!1403424 (= res!942044 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403425 () Bool)

(declare-fun res!942047 () Bool)

(assert (=> b!1403425 (=> (not res!942047) (not e!794660))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1403425 (= res!942047 (and (= (size!46847 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46847 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46847 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403426 () Bool)

(declare-fun e!794663 () Bool)

(assert (=> b!1403426 (= e!794660 (not e!794663))))

(declare-fun res!942046 () Bool)

(assert (=> b!1403426 (=> res!942046 e!794663)))

(declare-datatypes ((SeekEntryResult!10635 0))(
  ( (MissingZero!10635 (index!44916 (_ BitVec 32))) (Found!10635 (index!44917 (_ BitVec 32))) (Intermediate!10635 (undefined!11447 Bool) (index!44918 (_ BitVec 32)) (x!126529 (_ BitVec 32))) (Undefined!10635) (MissingVacant!10635 (index!44919 (_ BitVec 32))) )
))
(declare-fun lt!618365 () SeekEntryResult!10635)

(assert (=> b!1403426 (= res!942046 (or (not (is-Intermediate!10635 lt!618365)) (undefined!11447 lt!618365)))))

(declare-fun e!794661 () Bool)

(assert (=> b!1403426 e!794661))

(declare-fun res!942051 () Bool)

(assert (=> b!1403426 (=> (not res!942051) (not e!794661))))

(assert (=> b!1403426 (= res!942051 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47224 0))(
  ( (Unit!47225) )
))
(declare-fun lt!618367 () Unit!47224)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95899 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47224)

(assert (=> b!1403426 (= lt!618367 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95899 (_ BitVec 32)) SeekEntryResult!10635)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403426 (= lt!618365 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46296 a!2901) j!112) mask!2840) (select (arr!46296 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403427 () Bool)

(declare-fun res!942050 () Bool)

(assert (=> b!1403427 (=> (not res!942050) (not e!794660))))

(declare-datatypes ((List!32995 0))(
  ( (Nil!32992) (Cons!32991 (h!34239 (_ BitVec 64)) (t!47696 List!32995)) )
))
(declare-fun arrayNoDuplicates!0 (array!95899 (_ BitVec 32) List!32995) Bool)

(assert (=> b!1403427 (= res!942050 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32992))))

(declare-fun b!1403428 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95899 (_ BitVec 32)) SeekEntryResult!10635)

(assert (=> b!1403428 (= e!794661 (= (seekEntryOrOpen!0 (select (arr!46296 a!2901) j!112) a!2901 mask!2840) (Found!10635 j!112)))))

(declare-fun b!1403429 () Bool)

(declare-fun res!942045 () Bool)

(assert (=> b!1403429 (=> (not res!942045) (not e!794660))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403429 (= res!942045 (validKeyInArray!0 (select (arr!46296 a!2901) i!1037)))))

(declare-fun b!1403430 () Bool)

(assert (=> b!1403430 (= e!794663 true)))

(declare-fun lt!618366 () SeekEntryResult!10635)

(assert (=> b!1403430 (= lt!618366 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46296 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46296 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95900 (store (arr!46296 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46847 a!2901)) mask!2840))))

(declare-fun b!1403431 () Bool)

(declare-fun res!942048 () Bool)

(assert (=> b!1403431 (=> (not res!942048) (not e!794660))))

(assert (=> b!1403431 (= res!942048 (validKeyInArray!0 (select (arr!46296 a!2901) j!112)))))

(assert (= (and start!120572 res!942049) b!1403425))

(assert (= (and b!1403425 res!942047) b!1403429))

(assert (= (and b!1403429 res!942045) b!1403431))

(assert (= (and b!1403431 res!942048) b!1403424))

(assert (= (and b!1403424 res!942044) b!1403427))

(assert (= (and b!1403427 res!942050) b!1403426))

(assert (= (and b!1403426 res!942051) b!1403428))

(assert (= (and b!1403426 (not res!942046)) b!1403430))

(declare-fun m!1292149 () Bool)

(assert (=> b!1403427 m!1292149))

(declare-fun m!1292151 () Bool)

(assert (=> start!120572 m!1292151))

(declare-fun m!1292153 () Bool)

(assert (=> start!120572 m!1292153))

(declare-fun m!1292155 () Bool)

(assert (=> b!1403424 m!1292155))

(declare-fun m!1292157 () Bool)

(assert (=> b!1403428 m!1292157))

(assert (=> b!1403428 m!1292157))

(declare-fun m!1292159 () Bool)

(assert (=> b!1403428 m!1292159))

(declare-fun m!1292161 () Bool)

(assert (=> b!1403430 m!1292161))

(declare-fun m!1292163 () Bool)

(assert (=> b!1403430 m!1292163))

(assert (=> b!1403430 m!1292163))

(declare-fun m!1292165 () Bool)

(assert (=> b!1403430 m!1292165))

(assert (=> b!1403430 m!1292165))

(assert (=> b!1403430 m!1292163))

(declare-fun m!1292167 () Bool)

(assert (=> b!1403430 m!1292167))

(assert (=> b!1403426 m!1292157))

(declare-fun m!1292169 () Bool)

(assert (=> b!1403426 m!1292169))

(assert (=> b!1403426 m!1292157))

(declare-fun m!1292171 () Bool)

(assert (=> b!1403426 m!1292171))

(assert (=> b!1403426 m!1292169))

(assert (=> b!1403426 m!1292157))

(declare-fun m!1292173 () Bool)

(assert (=> b!1403426 m!1292173))

(declare-fun m!1292175 () Bool)

(assert (=> b!1403426 m!1292175))

(declare-fun m!1292177 () Bool)

(assert (=> b!1403429 m!1292177))

(assert (=> b!1403429 m!1292177))

(declare-fun m!1292179 () Bool)

(assert (=> b!1403429 m!1292179))

(assert (=> b!1403431 m!1292157))

(assert (=> b!1403431 m!1292157))

(declare-fun m!1292181 () Bool)

(assert (=> b!1403431 m!1292181))

(push 1)

(assert (not b!1403427))

(assert (not b!1403431))

(assert (not b!1403428))

(assert (not start!120572))

(assert (not b!1403424))

(assert (not b!1403426))

(assert (not b!1403430))

(assert (not b!1403429))

(check-sat)

(pop 1)

(push 1)

