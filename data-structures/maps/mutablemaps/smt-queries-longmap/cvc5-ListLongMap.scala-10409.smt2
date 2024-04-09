; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122656 () Bool)

(assert start!122656)

(declare-fun b!1420126 () Bool)

(declare-fun res!955672 () Bool)

(declare-fun e!803307 () Bool)

(assert (=> b!1420126 (=> (not res!955672) (not e!803307))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun i!982 () (_ BitVec 32))

(declare-datatypes ((array!96939 0))(
  ( (array!96940 (arr!46783 (Array (_ BitVec 32) (_ BitVec 64))) (size!47334 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96939)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11090 0))(
  ( (MissingZero!11090 (index!46751 (_ BitVec 32))) (Found!11090 (index!46752 (_ BitVec 32))) (Intermediate!11090 (undefined!11902 Bool) (index!46753 (_ BitVec 32)) (x!128423 (_ BitVec 32))) (Undefined!11090) (MissingVacant!11090 (index!46754 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96939 (_ BitVec 32)) SeekEntryResult!11090)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420126 (= res!955672 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46783 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46783 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96940 (store (arr!46783 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47334 a!2831)) mask!2608) (Intermediate!11090 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun b!1420127 () Bool)

(declare-fun res!955668 () Bool)

(declare-fun e!803308 () Bool)

(assert (=> b!1420127 (=> (not res!955668) (not e!803308))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1420127 (= res!955668 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47334 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47334 a!2831))))))

(declare-fun b!1420128 () Bool)

(declare-fun res!955676 () Bool)

(assert (=> b!1420128 (=> (not res!955676) (not e!803308))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96939 (_ BitVec 32)) Bool)

(assert (=> b!1420128 (= res!955676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1420129 () Bool)

(declare-fun res!955673 () Bool)

(assert (=> b!1420129 (=> (not res!955673) (not e!803308))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420129 (= res!955673 (validKeyInArray!0 (select (arr!46783 a!2831) j!81)))))

(declare-fun b!1420130 () Bool)

(declare-fun res!955669 () Bool)

(assert (=> b!1420130 (=> (not res!955669) (not e!803308))))

(assert (=> b!1420130 (= res!955669 (validKeyInArray!0 (select (arr!46783 a!2831) i!982)))))

(declare-fun res!955677 () Bool)

(assert (=> start!122656 (=> (not res!955677) (not e!803308))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122656 (= res!955677 (validMask!0 mask!2608))))

(assert (=> start!122656 e!803308))

(assert (=> start!122656 true))

(declare-fun array_inv!35728 (array!96939) Bool)

(assert (=> start!122656 (array_inv!35728 a!2831)))

(declare-fun b!1420131 () Bool)

(declare-fun res!955671 () Bool)

(assert (=> b!1420131 (=> (not res!955671) (not e!803307))))

(declare-fun lt!625831 () SeekEntryResult!11090)

(assert (=> b!1420131 (= res!955671 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46783 a!2831) j!81) a!2831 mask!2608) lt!625831))))

(declare-fun b!1420132 () Bool)

(assert (=> b!1420132 (= e!803308 e!803307)))

(declare-fun res!955670 () Bool)

(assert (=> b!1420132 (=> (not res!955670) (not e!803307))))

(assert (=> b!1420132 (= res!955670 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46783 a!2831) j!81) mask!2608) (select (arr!46783 a!2831) j!81) a!2831 mask!2608) lt!625831))))

(assert (=> b!1420132 (= lt!625831 (Intermediate!11090 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1420133 () Bool)

(declare-fun res!955674 () Bool)

(assert (=> b!1420133 (=> (not res!955674) (not e!803308))))

(assert (=> b!1420133 (= res!955674 (and (= (size!47334 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47334 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47334 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1420134 () Bool)

(assert (=> b!1420134 (= e!803307 (bvslt mask!2608 #b00000000000000000000000000000000))))

(declare-fun b!1420135 () Bool)

(declare-fun res!955675 () Bool)

(assert (=> b!1420135 (=> (not res!955675) (not e!803308))))

(declare-datatypes ((List!33473 0))(
  ( (Nil!33470) (Cons!33469 (h!34771 (_ BitVec 64)) (t!48174 List!33473)) )
))
(declare-fun arrayNoDuplicates!0 (array!96939 (_ BitVec 32) List!33473) Bool)

(assert (=> b!1420135 (= res!955675 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33470))))

(assert (= (and start!122656 res!955677) b!1420133))

(assert (= (and b!1420133 res!955674) b!1420130))

(assert (= (and b!1420130 res!955669) b!1420129))

(assert (= (and b!1420129 res!955673) b!1420128))

(assert (= (and b!1420128 res!955676) b!1420135))

(assert (= (and b!1420135 res!955675) b!1420127))

(assert (= (and b!1420127 res!955668) b!1420132))

(assert (= (and b!1420132 res!955670) b!1420126))

(assert (= (and b!1420126 res!955672) b!1420131))

(assert (= (and b!1420131 res!955671) b!1420134))

(declare-fun m!1310687 () Bool)

(assert (=> b!1420132 m!1310687))

(assert (=> b!1420132 m!1310687))

(declare-fun m!1310689 () Bool)

(assert (=> b!1420132 m!1310689))

(assert (=> b!1420132 m!1310689))

(assert (=> b!1420132 m!1310687))

(declare-fun m!1310691 () Bool)

(assert (=> b!1420132 m!1310691))

(declare-fun m!1310693 () Bool)

(assert (=> b!1420130 m!1310693))

(assert (=> b!1420130 m!1310693))

(declare-fun m!1310695 () Bool)

(assert (=> b!1420130 m!1310695))

(declare-fun m!1310697 () Bool)

(assert (=> b!1420126 m!1310697))

(declare-fun m!1310699 () Bool)

(assert (=> b!1420126 m!1310699))

(assert (=> b!1420126 m!1310699))

(declare-fun m!1310701 () Bool)

(assert (=> b!1420126 m!1310701))

(assert (=> b!1420126 m!1310701))

(assert (=> b!1420126 m!1310699))

(declare-fun m!1310703 () Bool)

(assert (=> b!1420126 m!1310703))

(assert (=> b!1420131 m!1310687))

(assert (=> b!1420131 m!1310687))

(declare-fun m!1310705 () Bool)

(assert (=> b!1420131 m!1310705))

(declare-fun m!1310707 () Bool)

(assert (=> b!1420135 m!1310707))

(declare-fun m!1310709 () Bool)

(assert (=> start!122656 m!1310709))

(declare-fun m!1310711 () Bool)

(assert (=> start!122656 m!1310711))

(declare-fun m!1310713 () Bool)

(assert (=> b!1420128 m!1310713))

(assert (=> b!1420129 m!1310687))

(assert (=> b!1420129 m!1310687))

(declare-fun m!1310715 () Bool)

(assert (=> b!1420129 m!1310715))

(push 1)

