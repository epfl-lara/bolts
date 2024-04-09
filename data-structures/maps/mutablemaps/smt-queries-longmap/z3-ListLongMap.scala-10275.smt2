; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120852 () Bool)

(assert start!120852)

(declare-fun b!1405602 () Bool)

(declare-fun res!943932 () Bool)

(declare-fun e!795650 () Bool)

(assert (=> b!1405602 (=> (not res!943932) (not e!795650))))

(declare-datatypes ((array!96077 0))(
  ( (array!96078 (arr!46382 (Array (_ BitVec 32) (_ BitVec 64))) (size!46933 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96077)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405602 (= res!943932 (validKeyInArray!0 (select (arr!46382 a!2901) i!1037)))))

(declare-fun b!1405603 () Bool)

(declare-fun res!943929 () Bool)

(assert (=> b!1405603 (=> (not res!943929) (not e!795650))))

(declare-datatypes ((List!33081 0))(
  ( (Nil!33078) (Cons!33077 (h!34331 (_ BitVec 64)) (t!47782 List!33081)) )
))
(declare-fun arrayNoDuplicates!0 (array!96077 (_ BitVec 32) List!33081) Bool)

(assert (=> b!1405603 (= res!943929 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33078))))

(declare-fun b!1405604 () Bool)

(declare-fun e!795647 () Bool)

(assert (=> b!1405604 (= e!795650 (not e!795647))))

(declare-fun res!943931 () Bool)

(assert (=> b!1405604 (=> res!943931 e!795647)))

(declare-datatypes ((SeekEntryResult!10715 0))(
  ( (MissingZero!10715 (index!45236 (_ BitVec 32))) (Found!10715 (index!45237 (_ BitVec 32))) (Intermediate!10715 (undefined!11527 Bool) (index!45238 (_ BitVec 32)) (x!126853 (_ BitVec 32))) (Undefined!10715) (MissingVacant!10715 (index!45239 (_ BitVec 32))) )
))
(declare-fun lt!619040 () SeekEntryResult!10715)

(get-info :version)

(assert (=> b!1405604 (= res!943931 (or (not ((_ is Intermediate!10715) lt!619040)) (undefined!11527 lt!619040)))))

(declare-fun e!795648 () Bool)

(assert (=> b!1405604 e!795648))

(declare-fun res!943928 () Bool)

(assert (=> b!1405604 (=> (not res!943928) (not e!795648))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96077 (_ BitVec 32)) Bool)

(assert (=> b!1405604 (= res!943928 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47354 0))(
  ( (Unit!47355) )
))
(declare-fun lt!619042 () Unit!47354)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96077 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47354)

(assert (=> b!1405604 (= lt!619042 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96077 (_ BitVec 32)) SeekEntryResult!10715)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405604 (= lt!619040 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46382 a!2901) j!112) mask!2840) (select (arr!46382 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405605 () Bool)

(declare-fun res!943930 () Bool)

(assert (=> b!1405605 (=> (not res!943930) (not e!795650))))

(assert (=> b!1405605 (= res!943930 (and (= (size!46933 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46933 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46933 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405606 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96077 (_ BitVec 32)) SeekEntryResult!10715)

(assert (=> b!1405606 (= e!795648 (= (seekEntryOrOpen!0 (select (arr!46382 a!2901) j!112) a!2901 mask!2840) (Found!10715 j!112)))))

(declare-fun res!943933 () Bool)

(assert (=> start!120852 (=> (not res!943933) (not e!795650))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120852 (= res!943933 (validMask!0 mask!2840))))

(assert (=> start!120852 e!795650))

(assert (=> start!120852 true))

(declare-fun array_inv!35327 (array!96077) Bool)

(assert (=> start!120852 (array_inv!35327 a!2901)))

(declare-fun b!1405607 () Bool)

(assert (=> b!1405607 (= e!795647 true)))

(declare-fun lt!619041 () (_ BitVec 32))

(assert (=> b!1405607 (= lt!619041 (toIndex!0 (select (store (arr!46382 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(declare-fun b!1405608 () Bool)

(declare-fun res!943935 () Bool)

(assert (=> b!1405608 (=> (not res!943935) (not e!795650))))

(assert (=> b!1405608 (= res!943935 (validKeyInArray!0 (select (arr!46382 a!2901) j!112)))))

(declare-fun b!1405609 () Bool)

(declare-fun res!943934 () Bool)

(assert (=> b!1405609 (=> (not res!943934) (not e!795650))))

(assert (=> b!1405609 (= res!943934 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120852 res!943933) b!1405605))

(assert (= (and b!1405605 res!943930) b!1405602))

(assert (= (and b!1405602 res!943932) b!1405608))

(assert (= (and b!1405608 res!943935) b!1405609))

(assert (= (and b!1405609 res!943934) b!1405603))

(assert (= (and b!1405603 res!943929) b!1405604))

(assert (= (and b!1405604 res!943928) b!1405606))

(assert (= (and b!1405604 (not res!943931)) b!1405607))

(declare-fun m!1294501 () Bool)

(assert (=> b!1405607 m!1294501))

(declare-fun m!1294503 () Bool)

(assert (=> b!1405607 m!1294503))

(assert (=> b!1405607 m!1294503))

(declare-fun m!1294505 () Bool)

(assert (=> b!1405607 m!1294505))

(declare-fun m!1294507 () Bool)

(assert (=> start!120852 m!1294507))

(declare-fun m!1294509 () Bool)

(assert (=> start!120852 m!1294509))

(declare-fun m!1294511 () Bool)

(assert (=> b!1405604 m!1294511))

(declare-fun m!1294513 () Bool)

(assert (=> b!1405604 m!1294513))

(assert (=> b!1405604 m!1294511))

(declare-fun m!1294515 () Bool)

(assert (=> b!1405604 m!1294515))

(assert (=> b!1405604 m!1294513))

(assert (=> b!1405604 m!1294511))

(declare-fun m!1294517 () Bool)

(assert (=> b!1405604 m!1294517))

(declare-fun m!1294519 () Bool)

(assert (=> b!1405604 m!1294519))

(declare-fun m!1294521 () Bool)

(assert (=> b!1405609 m!1294521))

(assert (=> b!1405606 m!1294511))

(assert (=> b!1405606 m!1294511))

(declare-fun m!1294523 () Bool)

(assert (=> b!1405606 m!1294523))

(assert (=> b!1405608 m!1294511))

(assert (=> b!1405608 m!1294511))

(declare-fun m!1294525 () Bool)

(assert (=> b!1405608 m!1294525))

(declare-fun m!1294527 () Bool)

(assert (=> b!1405603 m!1294527))

(declare-fun m!1294529 () Bool)

(assert (=> b!1405602 m!1294529))

(assert (=> b!1405602 m!1294529))

(declare-fun m!1294531 () Bool)

(assert (=> b!1405602 m!1294531))

(check-sat (not b!1405602) (not start!120852) (not b!1405607) (not b!1405609) (not b!1405608) (not b!1405604) (not b!1405603) (not b!1405606))
(check-sat)
