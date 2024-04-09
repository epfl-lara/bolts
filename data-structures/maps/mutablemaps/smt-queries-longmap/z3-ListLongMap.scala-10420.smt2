; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122724 () Bool)

(assert start!122724)

(declare-fun b!1421165 () Bool)

(declare-fun res!956715 () Bool)

(declare-fun e!803657 () Bool)

(assert (=> b!1421165 (=> (not res!956715) (not e!803657))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97007 0))(
  ( (array!97008 (arr!46817 (Array (_ BitVec 32) (_ BitVec 64))) (size!47368 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97007)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1421165 (= res!956715 (and (= (size!47368 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47368 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47368 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1421166 () Bool)

(declare-fun e!803656 () Bool)

(declare-fun e!803655 () Bool)

(assert (=> b!1421166 (= e!803656 e!803655)))

(declare-fun res!956709 () Bool)

(assert (=> b!1421166 (=> (not res!956709) (not e!803655))))

(declare-datatypes ((SeekEntryResult!11124 0))(
  ( (MissingZero!11124 (index!46887 (_ BitVec 32))) (Found!11124 (index!46888 (_ BitVec 32))) (Intermediate!11124 (undefined!11936 Bool) (index!46889 (_ BitVec 32)) (x!128545 (_ BitVec 32))) (Undefined!11124) (MissingVacant!11124 (index!46890 (_ BitVec 32))) )
))
(declare-fun lt!626127 () SeekEntryResult!11124)

(declare-fun lt!626126 () array!97007)

(declare-fun lt!626124 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97007 (_ BitVec 32)) SeekEntryResult!11124)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1421166 (= res!956709 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626124 mask!2608) lt!626124 lt!626126 mask!2608) lt!626127))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1421166 (= lt!626127 (Intermediate!11124 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1421166 (= lt!626124 (select (store (arr!46817 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1421166 (= lt!626126 (array!97008 (store (arr!46817 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47368 a!2831)))))

(declare-fun b!1421167 () Bool)

(declare-fun res!956714 () Bool)

(assert (=> b!1421167 (=> (not res!956714) (not e!803655))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1421167 (= res!956714 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626124 lt!626126 mask!2608) lt!626127))))

(declare-fun b!1421168 () Bool)

(declare-fun res!956711 () Bool)

(assert (=> b!1421168 (=> (not res!956711) (not e!803657))))

(declare-datatypes ((List!33507 0))(
  ( (Nil!33504) (Cons!33503 (h!34805 (_ BitVec 64)) (t!48208 List!33507)) )
))
(declare-fun arrayNoDuplicates!0 (array!97007 (_ BitVec 32) List!33507) Bool)

(assert (=> b!1421168 (= res!956711 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33504))))

(declare-fun b!1421169 () Bool)

(declare-fun res!956718 () Bool)

(assert (=> b!1421169 (=> (not res!956718) (not e!803657))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1421169 (= res!956718 (validKeyInArray!0 (select (arr!46817 a!2831) j!81)))))

(declare-fun b!1421170 () Bool)

(declare-fun res!956713 () Bool)

(assert (=> b!1421170 (=> (not res!956713) (not e!803657))))

(assert (=> b!1421170 (= res!956713 (validKeyInArray!0 (select (arr!46817 a!2831) i!982)))))

(declare-fun b!1421171 () Bool)

(assert (=> b!1421171 (= e!803657 e!803656)))

(declare-fun res!956712 () Bool)

(assert (=> b!1421171 (=> (not res!956712) (not e!803656))))

(declare-fun lt!626125 () SeekEntryResult!11124)

(assert (=> b!1421171 (= res!956712 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46817 a!2831) j!81) mask!2608) (select (arr!46817 a!2831) j!81) a!2831 mask!2608) lt!626125))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1421171 (= lt!626125 (Intermediate!11124 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1421173 () Bool)

(declare-fun res!956708 () Bool)

(assert (=> b!1421173 (=> (not res!956708) (not e!803657))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97007 (_ BitVec 32)) Bool)

(assert (=> b!1421173 (= res!956708 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1421174 () Bool)

(declare-fun res!956717 () Bool)

(assert (=> b!1421174 (=> (not res!956717) (not e!803655))))

(assert (=> b!1421174 (= res!956717 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46817 a!2831) j!81) a!2831 mask!2608) lt!626125))))

(declare-fun b!1421175 () Bool)

(declare-fun res!956707 () Bool)

(assert (=> b!1421175 (=> (not res!956707) (not e!803657))))

(assert (=> b!1421175 (= res!956707 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47368 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47368 a!2831))))))

(declare-fun b!1421176 () Bool)

(declare-fun res!956716 () Bool)

(assert (=> b!1421176 (=> (not res!956716) (not e!803655))))

(assert (=> b!1421176 (= res!956716 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1421172 () Bool)

(assert (=> b!1421172 (= e!803655 (not (bvsge mask!2608 #b00000000000000000000000000000000)))))

(assert (=> b!1421172 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-datatypes ((Unit!48032 0))(
  ( (Unit!48033) )
))
(declare-fun lt!626128 () Unit!48032)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97007 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48032)

(assert (=> b!1421172 (= lt!626128 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun res!956710 () Bool)

(assert (=> start!122724 (=> (not res!956710) (not e!803657))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122724 (= res!956710 (validMask!0 mask!2608))))

(assert (=> start!122724 e!803657))

(assert (=> start!122724 true))

(declare-fun array_inv!35762 (array!97007) Bool)

(assert (=> start!122724 (array_inv!35762 a!2831)))

(assert (= (and start!122724 res!956710) b!1421165))

(assert (= (and b!1421165 res!956715) b!1421170))

(assert (= (and b!1421170 res!956713) b!1421169))

(assert (= (and b!1421169 res!956718) b!1421173))

(assert (= (and b!1421173 res!956708) b!1421168))

(assert (= (and b!1421168 res!956711) b!1421175))

(assert (= (and b!1421175 res!956707) b!1421171))

(assert (= (and b!1421171 res!956712) b!1421166))

(assert (= (and b!1421166 res!956709) b!1421174))

(assert (= (and b!1421174 res!956717) b!1421167))

(assert (= (and b!1421167 res!956714) b!1421176))

(assert (= (and b!1421176 res!956716) b!1421172))

(declare-fun m!1311767 () Bool)

(assert (=> b!1421173 m!1311767))

(declare-fun m!1311769 () Bool)

(assert (=> b!1421170 m!1311769))

(assert (=> b!1421170 m!1311769))

(declare-fun m!1311771 () Bool)

(assert (=> b!1421170 m!1311771))

(declare-fun m!1311773 () Bool)

(assert (=> b!1421168 m!1311773))

(declare-fun m!1311775 () Bool)

(assert (=> b!1421172 m!1311775))

(declare-fun m!1311777 () Bool)

(assert (=> b!1421172 m!1311777))

(declare-fun m!1311779 () Bool)

(assert (=> b!1421166 m!1311779))

(assert (=> b!1421166 m!1311779))

(declare-fun m!1311781 () Bool)

(assert (=> b!1421166 m!1311781))

(declare-fun m!1311783 () Bool)

(assert (=> b!1421166 m!1311783))

(declare-fun m!1311785 () Bool)

(assert (=> b!1421166 m!1311785))

(declare-fun m!1311787 () Bool)

(assert (=> b!1421167 m!1311787))

(declare-fun m!1311789 () Bool)

(assert (=> b!1421174 m!1311789))

(assert (=> b!1421174 m!1311789))

(declare-fun m!1311791 () Bool)

(assert (=> b!1421174 m!1311791))

(declare-fun m!1311793 () Bool)

(assert (=> start!122724 m!1311793))

(declare-fun m!1311795 () Bool)

(assert (=> start!122724 m!1311795))

(assert (=> b!1421169 m!1311789))

(assert (=> b!1421169 m!1311789))

(declare-fun m!1311797 () Bool)

(assert (=> b!1421169 m!1311797))

(assert (=> b!1421171 m!1311789))

(assert (=> b!1421171 m!1311789))

(declare-fun m!1311799 () Bool)

(assert (=> b!1421171 m!1311799))

(assert (=> b!1421171 m!1311799))

(assert (=> b!1421171 m!1311789))

(declare-fun m!1311801 () Bool)

(assert (=> b!1421171 m!1311801))

(check-sat (not b!1421169) (not b!1421170) (not start!122724) (not b!1421166) (not b!1421173) (not b!1421167) (not b!1421174) (not b!1421171) (not b!1421172) (not b!1421168))
(check-sat)
