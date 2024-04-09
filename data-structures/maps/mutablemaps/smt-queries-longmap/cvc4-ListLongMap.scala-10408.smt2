; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122654 () Bool)

(assert start!122654)

(declare-fun b!1420097 () Bool)

(declare-fun res!955645 () Bool)

(declare-fun e!803300 () Bool)

(assert (=> b!1420097 (=> (not res!955645) (not e!803300))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun i!982 () (_ BitVec 32))

(declare-datatypes ((array!96937 0))(
  ( (array!96938 (arr!46782 (Array (_ BitVec 32) (_ BitVec 64))) (size!47333 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96937)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11089 0))(
  ( (MissingZero!11089 (index!46747 (_ BitVec 32))) (Found!11089 (index!46748 (_ BitVec 32))) (Intermediate!11089 (undefined!11901 Bool) (index!46749 (_ BitVec 32)) (x!128414 (_ BitVec 32))) (Undefined!11089) (MissingVacant!11089 (index!46750 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96937 (_ BitVec 32)) SeekEntryResult!11089)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420097 (= res!955645 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46782 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46782 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96938 (store (arr!46782 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47333 a!2831)) mask!2608) (Intermediate!11089 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun b!1420098 () Bool)

(declare-fun res!955640 () Bool)

(assert (=> b!1420098 (=> (not res!955640) (not e!803300))))

(assert (=> b!1420098 (= res!955640 (and (= (size!47333 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47333 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47333 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1420099 () Bool)

(declare-fun res!955647 () Bool)

(assert (=> b!1420099 (=> (not res!955647) (not e!803300))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420099 (= res!955647 (validKeyInArray!0 (select (arr!46782 a!2831) j!81)))))

(declare-fun b!1420100 () Bool)

(declare-fun res!955641 () Bool)

(assert (=> b!1420100 (=> (not res!955641) (not e!803300))))

(assert (=> b!1420100 (= res!955641 (validKeyInArray!0 (select (arr!46782 a!2831) i!982)))))

(declare-fun b!1420101 () Bool)

(declare-fun res!955643 () Bool)

(assert (=> b!1420101 (=> (not res!955643) (not e!803300))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1420101 (= res!955643 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46782 a!2831) j!81) mask!2608) (select (arr!46782 a!2831) j!81) a!2831 mask!2608) (Intermediate!11089 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1420102 () Bool)

(assert (=> b!1420102 (= e!803300 false)))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun lt!625828 () SeekEntryResult!11089)

(assert (=> b!1420102 (= lt!625828 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46782 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1420103 () Bool)

(declare-fun res!955639 () Bool)

(assert (=> b!1420103 (=> (not res!955639) (not e!803300))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96937 (_ BitVec 32)) Bool)

(assert (=> b!1420103 (= res!955639 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1420104 () Bool)

(declare-fun res!955642 () Bool)

(assert (=> b!1420104 (=> (not res!955642) (not e!803300))))

(declare-datatypes ((List!33472 0))(
  ( (Nil!33469) (Cons!33468 (h!34770 (_ BitVec 64)) (t!48173 List!33472)) )
))
(declare-fun arrayNoDuplicates!0 (array!96937 (_ BitVec 32) List!33472) Bool)

(assert (=> b!1420104 (= res!955642 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33469))))

(declare-fun res!955644 () Bool)

(assert (=> start!122654 (=> (not res!955644) (not e!803300))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122654 (= res!955644 (validMask!0 mask!2608))))

(assert (=> start!122654 e!803300))

(assert (=> start!122654 true))

(declare-fun array_inv!35727 (array!96937) Bool)

(assert (=> start!122654 (array_inv!35727 a!2831)))

(declare-fun b!1420105 () Bool)

(declare-fun res!955646 () Bool)

(assert (=> b!1420105 (=> (not res!955646) (not e!803300))))

(assert (=> b!1420105 (= res!955646 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47333 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47333 a!2831))))))

(assert (= (and start!122654 res!955644) b!1420098))

(assert (= (and b!1420098 res!955640) b!1420100))

(assert (= (and b!1420100 res!955641) b!1420099))

(assert (= (and b!1420099 res!955647) b!1420103))

(assert (= (and b!1420103 res!955639) b!1420104))

(assert (= (and b!1420104 res!955642) b!1420105))

(assert (= (and b!1420105 res!955646) b!1420101))

(assert (= (and b!1420101 res!955643) b!1420097))

(assert (= (and b!1420097 res!955645) b!1420102))

(declare-fun m!1310657 () Bool)

(assert (=> start!122654 m!1310657))

(declare-fun m!1310659 () Bool)

(assert (=> start!122654 m!1310659))

(declare-fun m!1310661 () Bool)

(assert (=> b!1420097 m!1310661))

(declare-fun m!1310663 () Bool)

(assert (=> b!1420097 m!1310663))

(assert (=> b!1420097 m!1310663))

(declare-fun m!1310665 () Bool)

(assert (=> b!1420097 m!1310665))

(assert (=> b!1420097 m!1310665))

(assert (=> b!1420097 m!1310663))

(declare-fun m!1310667 () Bool)

(assert (=> b!1420097 m!1310667))

(declare-fun m!1310669 () Bool)

(assert (=> b!1420103 m!1310669))

(declare-fun m!1310671 () Bool)

(assert (=> b!1420102 m!1310671))

(assert (=> b!1420102 m!1310671))

(declare-fun m!1310673 () Bool)

(assert (=> b!1420102 m!1310673))

(declare-fun m!1310675 () Bool)

(assert (=> b!1420100 m!1310675))

(assert (=> b!1420100 m!1310675))

(declare-fun m!1310677 () Bool)

(assert (=> b!1420100 m!1310677))

(assert (=> b!1420099 m!1310671))

(assert (=> b!1420099 m!1310671))

(declare-fun m!1310679 () Bool)

(assert (=> b!1420099 m!1310679))

(assert (=> b!1420101 m!1310671))

(assert (=> b!1420101 m!1310671))

(declare-fun m!1310681 () Bool)

(assert (=> b!1420101 m!1310681))

(assert (=> b!1420101 m!1310681))

(assert (=> b!1420101 m!1310671))

(declare-fun m!1310683 () Bool)

(assert (=> b!1420101 m!1310683))

(declare-fun m!1310685 () Bool)

(assert (=> b!1420104 m!1310685))

(push 1)

(assert (not b!1420097))

(assert (not b!1420102))

(assert (not b!1420099))

(assert (not b!1420104))

(assert (not b!1420100))

(assert (not b!1420103))

(assert (not start!122654))

(assert (not b!1420101))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

