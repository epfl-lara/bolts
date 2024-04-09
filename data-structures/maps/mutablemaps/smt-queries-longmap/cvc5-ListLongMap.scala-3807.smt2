; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52214 () Bool)

(assert start!52214)

(declare-fun b!569612 () Bool)

(declare-fun res!359782 () Bool)

(declare-fun e!327637 () Bool)

(assert (=> b!569612 (=> (not res!359782) (not e!327637))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35691 0))(
  ( (array!35692 (arr!17133 (Array (_ BitVec 32) (_ BitVec 64))) (size!17497 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35691)

(assert (=> b!569612 (= res!359782 (and (= (size!17497 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17497 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17497 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!569613 () Bool)

(declare-fun e!327634 () Bool)

(assert (=> b!569613 (= e!327634 (not true))))

(declare-fun e!327636 () Bool)

(assert (=> b!569613 e!327636))

(declare-fun res!359783 () Bool)

(assert (=> b!569613 (=> (not res!359783) (not e!327636))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35691 (_ BitVec 32)) Bool)

(assert (=> b!569613 (= res!359783 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17880 0))(
  ( (Unit!17881) )
))
(declare-fun lt!259742 () Unit!17880)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35691 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17880)

(assert (=> b!569613 (= lt!259742 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!569615 () Bool)

(declare-datatypes ((SeekEntryResult!5589 0))(
  ( (MissingZero!5589 (index!24583 (_ BitVec 32))) (Found!5589 (index!24584 (_ BitVec 32))) (Intermediate!5589 (undefined!6401 Bool) (index!24585 (_ BitVec 32)) (x!53483 (_ BitVec 32))) (Undefined!5589) (MissingVacant!5589 (index!24586 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35691 (_ BitVec 32)) SeekEntryResult!5589)

(assert (=> b!569615 (= e!327636 (= (seekEntryOrOpen!0 (select (arr!17133 a!3118) j!142) a!3118 mask!3119) (Found!5589 j!142)))))

(declare-fun b!569616 () Bool)

(declare-fun res!359781 () Bool)

(assert (=> b!569616 (=> (not res!359781) (not e!327637))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569616 (= res!359781 (validKeyInArray!0 k!1914))))

(declare-fun b!569617 () Bool)

(declare-fun res!359786 () Bool)

(assert (=> b!569617 (=> (not res!359786) (not e!327637))))

(declare-fun arrayContainsKey!0 (array!35691 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569617 (= res!359786 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!569618 () Bool)

(assert (=> b!569618 (= e!327637 e!327634)))

(declare-fun res!359780 () Bool)

(assert (=> b!569618 (=> (not res!359780) (not e!327634))))

(declare-fun lt!259741 () SeekEntryResult!5589)

(assert (=> b!569618 (= res!359780 (or (= lt!259741 (MissingZero!5589 i!1132)) (= lt!259741 (MissingVacant!5589 i!1132))))))

(assert (=> b!569618 (= lt!259741 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!569619 () Bool)

(declare-fun res!359789 () Bool)

(assert (=> b!569619 (=> (not res!359789) (not e!327634))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35691 (_ BitVec 32)) SeekEntryResult!5589)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569619 (= res!359789 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17133 a!3118) j!142) mask!3119) (select (arr!17133 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17133 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17133 a!3118) i!1132 k!1914) j!142) (array!35692 (store (arr!17133 a!3118) i!1132 k!1914) (size!17497 a!3118)) mask!3119)))))

(declare-fun b!569620 () Bool)

(declare-fun res!359785 () Bool)

(assert (=> b!569620 (=> (not res!359785) (not e!327637))))

(assert (=> b!569620 (= res!359785 (validKeyInArray!0 (select (arr!17133 a!3118) j!142)))))

(declare-fun b!569621 () Bool)

(declare-fun res!359787 () Bool)

(assert (=> b!569621 (=> (not res!359787) (not e!327634))))

(declare-datatypes ((List!11266 0))(
  ( (Nil!11263) (Cons!11262 (h!12283 (_ BitVec 64)) (t!17502 List!11266)) )
))
(declare-fun arrayNoDuplicates!0 (array!35691 (_ BitVec 32) List!11266) Bool)

(assert (=> b!569621 (= res!359787 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11263))))

(declare-fun res!359788 () Bool)

(assert (=> start!52214 (=> (not res!359788) (not e!327637))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52214 (= res!359788 (validMask!0 mask!3119))))

(assert (=> start!52214 e!327637))

(assert (=> start!52214 true))

(declare-fun array_inv!12907 (array!35691) Bool)

(assert (=> start!52214 (array_inv!12907 a!3118)))

(declare-fun b!569614 () Bool)

(declare-fun res!359784 () Bool)

(assert (=> b!569614 (=> (not res!359784) (not e!327634))))

(assert (=> b!569614 (= res!359784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!52214 res!359788) b!569612))

(assert (= (and b!569612 res!359782) b!569620))

(assert (= (and b!569620 res!359785) b!569616))

(assert (= (and b!569616 res!359781) b!569617))

(assert (= (and b!569617 res!359786) b!569618))

(assert (= (and b!569618 res!359780) b!569614))

(assert (= (and b!569614 res!359784) b!569621))

(assert (= (and b!569621 res!359787) b!569619))

(assert (= (and b!569619 res!359789) b!569613))

(assert (= (and b!569613 res!359783) b!569615))

(declare-fun m!548527 () Bool)

(assert (=> b!569615 m!548527))

(assert (=> b!569615 m!548527))

(declare-fun m!548529 () Bool)

(assert (=> b!569615 m!548529))

(declare-fun m!548531 () Bool)

(assert (=> b!569617 m!548531))

(declare-fun m!548533 () Bool)

(assert (=> b!569614 m!548533))

(declare-fun m!548535 () Bool)

(assert (=> start!52214 m!548535))

(declare-fun m!548537 () Bool)

(assert (=> start!52214 m!548537))

(declare-fun m!548539 () Bool)

(assert (=> b!569618 m!548539))

(assert (=> b!569619 m!548527))

(declare-fun m!548541 () Bool)

(assert (=> b!569619 m!548541))

(assert (=> b!569619 m!548527))

(declare-fun m!548543 () Bool)

(assert (=> b!569619 m!548543))

(declare-fun m!548545 () Bool)

(assert (=> b!569619 m!548545))

(assert (=> b!569619 m!548543))

(declare-fun m!548547 () Bool)

(assert (=> b!569619 m!548547))

(assert (=> b!569619 m!548541))

(assert (=> b!569619 m!548527))

(declare-fun m!548549 () Bool)

(assert (=> b!569619 m!548549))

(declare-fun m!548551 () Bool)

(assert (=> b!569619 m!548551))

(assert (=> b!569619 m!548543))

(assert (=> b!569619 m!548545))

(assert (=> b!569620 m!548527))

(assert (=> b!569620 m!548527))

(declare-fun m!548553 () Bool)

(assert (=> b!569620 m!548553))

(declare-fun m!548555 () Bool)

(assert (=> b!569616 m!548555))

(declare-fun m!548557 () Bool)

(assert (=> b!569613 m!548557))

(declare-fun m!548559 () Bool)

(assert (=> b!569613 m!548559))

(declare-fun m!548561 () Bool)

(assert (=> b!569621 m!548561))

(push 1)

