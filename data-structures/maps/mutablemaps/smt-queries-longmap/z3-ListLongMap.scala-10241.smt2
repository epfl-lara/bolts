; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120540 () Bool)

(assert start!120540)

(declare-fun res!941663 () Bool)

(declare-fun e!794470 () Bool)

(assert (=> start!120540 (=> (not res!941663) (not e!794470))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120540 (= res!941663 (validMask!0 mask!2840))))

(assert (=> start!120540 e!794470))

(assert (=> start!120540 true))

(declare-datatypes ((array!95867 0))(
  ( (array!95868 (arr!46280 (Array (_ BitVec 32) (_ BitVec 64))) (size!46831 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95867)

(declare-fun array_inv!35225 (array!95867) Bool)

(assert (=> start!120540 (array_inv!35225 a!2901)))

(declare-fun b!1403040 () Bool)

(declare-fun e!794469 () Bool)

(assert (=> b!1403040 (= e!794469 true)))

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10619 0))(
  ( (MissingZero!10619 (index!44852 (_ BitVec 32))) (Found!10619 (index!44853 (_ BitVec 32))) (Intermediate!10619 (undefined!11431 Bool) (index!44854 (_ BitVec 32)) (x!126473 (_ BitVec 32))) (Undefined!10619) (MissingVacant!10619 (index!44855 (_ BitVec 32))) )
))
(declare-fun lt!618222 () SeekEntryResult!10619)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95867 (_ BitVec 32)) SeekEntryResult!10619)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403040 (= lt!618222 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46280 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46280 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95868 (store (arr!46280 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46831 a!2901)) mask!2840))))

(declare-fun b!1403041 () Bool)

(declare-fun e!794468 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95867 (_ BitVec 32)) SeekEntryResult!10619)

(assert (=> b!1403041 (= e!794468 (= (seekEntryOrOpen!0 (select (arr!46280 a!2901) j!112) a!2901 mask!2840) (Found!10619 j!112)))))

(declare-fun b!1403042 () Bool)

(declare-fun res!941660 () Bool)

(assert (=> b!1403042 (=> (not res!941660) (not e!794470))))

(assert (=> b!1403042 (= res!941660 (and (= (size!46831 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46831 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46831 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403043 () Bool)

(assert (=> b!1403043 (= e!794470 (not e!794469))))

(declare-fun res!941664 () Bool)

(assert (=> b!1403043 (=> res!941664 e!794469)))

(declare-fun lt!618221 () SeekEntryResult!10619)

(get-info :version)

(assert (=> b!1403043 (= res!941664 (or (not ((_ is Intermediate!10619) lt!618221)) (undefined!11431 lt!618221)))))

(assert (=> b!1403043 e!794468))

(declare-fun res!941665 () Bool)

(assert (=> b!1403043 (=> (not res!941665) (not e!794468))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95867 (_ BitVec 32)) Bool)

(assert (=> b!1403043 (= res!941665 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47192 0))(
  ( (Unit!47193) )
))
(declare-fun lt!618223 () Unit!47192)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95867 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47192)

(assert (=> b!1403043 (= lt!618223 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1403043 (= lt!618221 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46280 a!2901) j!112) mask!2840) (select (arr!46280 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403044 () Bool)

(declare-fun res!941661 () Bool)

(assert (=> b!1403044 (=> (not res!941661) (not e!794470))))

(declare-datatypes ((List!32979 0))(
  ( (Nil!32976) (Cons!32975 (h!34223 (_ BitVec 64)) (t!47680 List!32979)) )
))
(declare-fun arrayNoDuplicates!0 (array!95867 (_ BitVec 32) List!32979) Bool)

(assert (=> b!1403044 (= res!941661 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32976))))

(declare-fun b!1403045 () Bool)

(declare-fun res!941662 () Bool)

(assert (=> b!1403045 (=> (not res!941662) (not e!794470))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403045 (= res!941662 (validKeyInArray!0 (select (arr!46280 a!2901) i!1037)))))

(declare-fun b!1403046 () Bool)

(declare-fun res!941666 () Bool)

(assert (=> b!1403046 (=> (not res!941666) (not e!794470))))

(assert (=> b!1403046 (= res!941666 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403047 () Bool)

(declare-fun res!941667 () Bool)

(assert (=> b!1403047 (=> (not res!941667) (not e!794470))))

(assert (=> b!1403047 (= res!941667 (validKeyInArray!0 (select (arr!46280 a!2901) j!112)))))

(assert (= (and start!120540 res!941663) b!1403042))

(assert (= (and b!1403042 res!941660) b!1403045))

(assert (= (and b!1403045 res!941662) b!1403047))

(assert (= (and b!1403047 res!941667) b!1403046))

(assert (= (and b!1403046 res!941666) b!1403044))

(assert (= (and b!1403044 res!941661) b!1403043))

(assert (= (and b!1403043 res!941665) b!1403041))

(assert (= (and b!1403043 (not res!941664)) b!1403040))

(declare-fun m!1291605 () Bool)

(assert (=> b!1403047 m!1291605))

(assert (=> b!1403047 m!1291605))

(declare-fun m!1291607 () Bool)

(assert (=> b!1403047 m!1291607))

(assert (=> b!1403043 m!1291605))

(declare-fun m!1291609 () Bool)

(assert (=> b!1403043 m!1291609))

(assert (=> b!1403043 m!1291605))

(declare-fun m!1291611 () Bool)

(assert (=> b!1403043 m!1291611))

(assert (=> b!1403043 m!1291609))

(assert (=> b!1403043 m!1291605))

(declare-fun m!1291613 () Bool)

(assert (=> b!1403043 m!1291613))

(declare-fun m!1291615 () Bool)

(assert (=> b!1403043 m!1291615))

(declare-fun m!1291617 () Bool)

(assert (=> b!1403040 m!1291617))

(declare-fun m!1291619 () Bool)

(assert (=> b!1403040 m!1291619))

(assert (=> b!1403040 m!1291619))

(declare-fun m!1291621 () Bool)

(assert (=> b!1403040 m!1291621))

(assert (=> b!1403040 m!1291621))

(assert (=> b!1403040 m!1291619))

(declare-fun m!1291623 () Bool)

(assert (=> b!1403040 m!1291623))

(declare-fun m!1291625 () Bool)

(assert (=> start!120540 m!1291625))

(declare-fun m!1291627 () Bool)

(assert (=> start!120540 m!1291627))

(declare-fun m!1291629 () Bool)

(assert (=> b!1403046 m!1291629))

(declare-fun m!1291631 () Bool)

(assert (=> b!1403044 m!1291631))

(declare-fun m!1291633 () Bool)

(assert (=> b!1403045 m!1291633))

(assert (=> b!1403045 m!1291633))

(declare-fun m!1291635 () Bool)

(assert (=> b!1403045 m!1291635))

(assert (=> b!1403041 m!1291605))

(assert (=> b!1403041 m!1291605))

(declare-fun m!1291637 () Bool)

(assert (=> b!1403041 m!1291637))

(check-sat (not b!1403047) (not b!1403046) (not b!1403044) (not start!120540) (not b!1403045) (not b!1403040) (not b!1403043) (not b!1403041))
