; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120564 () Bool)

(assert start!120564)

(declare-fun b!1403328 () Bool)

(declare-fun res!941955 () Bool)

(declare-fun e!794615 () Bool)

(assert (=> b!1403328 (=> (not res!941955) (not e!794615))))

(declare-datatypes ((array!95891 0))(
  ( (array!95892 (arr!46292 (Array (_ BitVec 32) (_ BitVec 64))) (size!46843 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95891)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403328 (= res!941955 (validKeyInArray!0 (select (arr!46292 a!2901) j!112)))))

(declare-fun b!1403329 () Bool)

(declare-fun res!941951 () Bool)

(assert (=> b!1403329 (=> (not res!941951) (not e!794615))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1403329 (= res!941951 (and (= (size!46843 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46843 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46843 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!941948 () Bool)

(assert (=> start!120564 (=> (not res!941948) (not e!794615))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120564 (= res!941948 (validMask!0 mask!2840))))

(assert (=> start!120564 e!794615))

(assert (=> start!120564 true))

(declare-fun array_inv!35237 (array!95891) Bool)

(assert (=> start!120564 (array_inv!35237 a!2901)))

(declare-fun b!1403330 () Bool)

(declare-fun res!941954 () Bool)

(assert (=> b!1403330 (=> (not res!941954) (not e!794615))))

(declare-datatypes ((List!32991 0))(
  ( (Nil!32988) (Cons!32987 (h!34235 (_ BitVec 64)) (t!47692 List!32991)) )
))
(declare-fun arrayNoDuplicates!0 (array!95891 (_ BitVec 32) List!32991) Bool)

(assert (=> b!1403330 (= res!941954 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32988))))

(declare-fun b!1403331 () Bool)

(declare-fun res!941952 () Bool)

(assert (=> b!1403331 (=> (not res!941952) (not e!794615))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95891 (_ BitVec 32)) Bool)

(assert (=> b!1403331 (= res!941952 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403332 () Bool)

(declare-fun e!794613 () Bool)

(declare-datatypes ((SeekEntryResult!10631 0))(
  ( (MissingZero!10631 (index!44900 (_ BitVec 32))) (Found!10631 (index!44901 (_ BitVec 32))) (Intermediate!10631 (undefined!11443 Bool) (index!44902 (_ BitVec 32)) (x!126517 (_ BitVec 32))) (Undefined!10631) (MissingVacant!10631 (index!44903 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95891 (_ BitVec 32)) SeekEntryResult!10631)

(assert (=> b!1403332 (= e!794613 (= (seekEntryOrOpen!0 (select (arr!46292 a!2901) j!112) a!2901 mask!2840) (Found!10631 j!112)))))

(declare-fun b!1403333 () Bool)

(declare-fun e!794612 () Bool)

(assert (=> b!1403333 (= e!794615 (not e!794612))))

(declare-fun res!941950 () Bool)

(assert (=> b!1403333 (=> res!941950 e!794612)))

(declare-fun lt!618329 () SeekEntryResult!10631)

(get-info :version)

(assert (=> b!1403333 (= res!941950 (or (not ((_ is Intermediate!10631) lt!618329)) (undefined!11443 lt!618329)))))

(assert (=> b!1403333 e!794613))

(declare-fun res!941949 () Bool)

(assert (=> b!1403333 (=> (not res!941949) (not e!794613))))

(assert (=> b!1403333 (= res!941949 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47216 0))(
  ( (Unit!47217) )
))
(declare-fun lt!618330 () Unit!47216)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95891 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47216)

(assert (=> b!1403333 (= lt!618330 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95891 (_ BitVec 32)) SeekEntryResult!10631)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403333 (= lt!618329 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46292 a!2901) j!112) mask!2840) (select (arr!46292 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403334 () Bool)

(declare-fun res!941953 () Bool)

(assert (=> b!1403334 (=> (not res!941953) (not e!794615))))

(assert (=> b!1403334 (= res!941953 (validKeyInArray!0 (select (arr!46292 a!2901) i!1037)))))

(declare-fun b!1403335 () Bool)

(assert (=> b!1403335 (= e!794612 true)))

(declare-fun lt!618331 () SeekEntryResult!10631)

(assert (=> b!1403335 (= lt!618331 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46292 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46292 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95892 (store (arr!46292 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46843 a!2901)) mask!2840))))

(assert (= (and start!120564 res!941948) b!1403329))

(assert (= (and b!1403329 res!941951) b!1403334))

(assert (= (and b!1403334 res!941953) b!1403328))

(assert (= (and b!1403328 res!941955) b!1403331))

(assert (= (and b!1403331 res!941952) b!1403330))

(assert (= (and b!1403330 res!941954) b!1403333))

(assert (= (and b!1403333 res!941949) b!1403332))

(assert (= (and b!1403333 (not res!941950)) b!1403335))

(declare-fun m!1292013 () Bool)

(assert (=> b!1403331 m!1292013))

(declare-fun m!1292015 () Bool)

(assert (=> b!1403330 m!1292015))

(declare-fun m!1292017 () Bool)

(assert (=> b!1403335 m!1292017))

(declare-fun m!1292019 () Bool)

(assert (=> b!1403335 m!1292019))

(assert (=> b!1403335 m!1292019))

(declare-fun m!1292021 () Bool)

(assert (=> b!1403335 m!1292021))

(assert (=> b!1403335 m!1292021))

(assert (=> b!1403335 m!1292019))

(declare-fun m!1292023 () Bool)

(assert (=> b!1403335 m!1292023))

(declare-fun m!1292025 () Bool)

(assert (=> b!1403333 m!1292025))

(declare-fun m!1292027 () Bool)

(assert (=> b!1403333 m!1292027))

(assert (=> b!1403333 m!1292025))

(declare-fun m!1292029 () Bool)

(assert (=> b!1403333 m!1292029))

(assert (=> b!1403333 m!1292027))

(assert (=> b!1403333 m!1292025))

(declare-fun m!1292031 () Bool)

(assert (=> b!1403333 m!1292031))

(declare-fun m!1292033 () Bool)

(assert (=> b!1403333 m!1292033))

(assert (=> b!1403332 m!1292025))

(assert (=> b!1403332 m!1292025))

(declare-fun m!1292035 () Bool)

(assert (=> b!1403332 m!1292035))

(assert (=> b!1403328 m!1292025))

(assert (=> b!1403328 m!1292025))

(declare-fun m!1292037 () Bool)

(assert (=> b!1403328 m!1292037))

(declare-fun m!1292039 () Bool)

(assert (=> b!1403334 m!1292039))

(assert (=> b!1403334 m!1292039))

(declare-fun m!1292041 () Bool)

(assert (=> b!1403334 m!1292041))

(declare-fun m!1292043 () Bool)

(assert (=> start!120564 m!1292043))

(declare-fun m!1292045 () Bool)

(assert (=> start!120564 m!1292045))

(check-sat (not b!1403328) (not b!1403331) (not b!1403332) (not start!120564) (not b!1403333) (not b!1403335) (not b!1403334) (not b!1403330))
