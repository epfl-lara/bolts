; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130908 () Bool)

(assert start!130908)

(declare-fun b!1534846 () Bool)

(declare-fun res!1052073 () Bool)

(declare-fun e!854610 () Bool)

(assert (=> b!1534846 (=> (not res!1052073) (not e!854610))))

(declare-datatypes ((array!101933 0))(
  ( (array!101934 (arr!49178 (Array (_ BitVec 32) (_ BitVec 64))) (size!49729 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101933)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1534846 (= res!1052073 (not (= (select (arr!49178 a!2792) index!463) (select (arr!49178 a!2792) j!64))))))

(declare-fun b!1534847 () Bool)

(declare-fun res!1052076 () Bool)

(assert (=> b!1534847 (=> (not res!1052076) (not e!854610))))

(declare-datatypes ((List!35832 0))(
  ( (Nil!35829) (Cons!35828 (h!37274 (_ BitVec 64)) (t!50533 List!35832)) )
))
(declare-fun arrayNoDuplicates!0 (array!101933 (_ BitVec 32) List!35832) Bool)

(assert (=> b!1534847 (= res!1052076 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35829))))

(declare-fun b!1534848 () Bool)

(declare-fun res!1052079 () Bool)

(assert (=> b!1534848 (=> (not res!1052079) (not e!854610))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101933 (_ BitVec 32)) Bool)

(assert (=> b!1534848 (= res!1052079 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1052072 () Bool)

(assert (=> start!130908 (=> (not res!1052072) (not e!854610))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130908 (= res!1052072 (validMask!0 mask!2480))))

(assert (=> start!130908 e!854610))

(assert (=> start!130908 true))

(declare-fun array_inv!38123 (array!101933) Bool)

(assert (=> start!130908 (array_inv!38123 a!2792)))

(declare-fun b!1534849 () Bool)

(declare-fun res!1052074 () Bool)

(assert (=> b!1534849 (=> (not res!1052074) (not e!854610))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534849 (= res!1052074 (validKeyInArray!0 (select (arr!49178 a!2792) j!64)))))

(declare-fun b!1534850 () Bool)

(declare-fun res!1052078 () Bool)

(assert (=> b!1534850 (=> (not res!1052078) (not e!854610))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1534850 (= res!1052078 (validKeyInArray!0 (select (arr!49178 a!2792) i!951)))))

(declare-fun b!1534851 () Bool)

(declare-fun res!1052071 () Bool)

(assert (=> b!1534851 (=> (not res!1052071) (not e!854610))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13333 0))(
  ( (MissingZero!13333 (index!55726 (_ BitVec 32))) (Found!13333 (index!55727 (_ BitVec 32))) (Intermediate!13333 (undefined!14145 Bool) (index!55728 (_ BitVec 32)) (x!137482 (_ BitVec 32))) (Undefined!13333) (MissingVacant!13333 (index!55729 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101933 (_ BitVec 32)) SeekEntryResult!13333)

(assert (=> b!1534851 (= res!1052071 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49178 a!2792) j!64) a!2792 mask!2480) (Found!13333 j!64)))))

(declare-fun b!1534852 () Bool)

(declare-fun e!854612 () Bool)

(assert (=> b!1534852 (= e!854610 e!854612)))

(declare-fun res!1052075 () Bool)

(assert (=> b!1534852 (=> (not res!1052075) (not e!854612))))

(declare-fun lt!663888 () (_ BitVec 32))

(assert (=> b!1534852 (= res!1052075 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663888 #b00000000000000000000000000000000) (bvslt lt!663888 (size!49729 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1534852 (= lt!663888 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1534853 () Bool)

(declare-fun res!1052077 () Bool)

(assert (=> b!1534853 (=> (not res!1052077) (not e!854610))))

(assert (=> b!1534853 (= res!1052077 (and (= (size!49729 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49729 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49729 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1534854 () Bool)

(assert (=> b!1534854 (= e!854612 false)))

(declare-fun lt!663889 () SeekEntryResult!13333)

(assert (=> b!1534854 (= lt!663889 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663888 vacantIndex!5 (select (arr!49178 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1534855 () Bool)

(declare-fun res!1052070 () Bool)

(assert (=> b!1534855 (=> (not res!1052070) (not e!854610))))

(assert (=> b!1534855 (= res!1052070 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49729 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49729 a!2792)) (= (select (arr!49178 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!130908 res!1052072) b!1534853))

(assert (= (and b!1534853 res!1052077) b!1534850))

(assert (= (and b!1534850 res!1052078) b!1534849))

(assert (= (and b!1534849 res!1052074) b!1534848))

(assert (= (and b!1534848 res!1052079) b!1534847))

(assert (= (and b!1534847 res!1052076) b!1534855))

(assert (= (and b!1534855 res!1052070) b!1534851))

(assert (= (and b!1534851 res!1052071) b!1534846))

(assert (= (and b!1534846 res!1052073) b!1534852))

(assert (= (and b!1534852 res!1052075) b!1534854))

(declare-fun m!1417475 () Bool)

(assert (=> b!1534851 m!1417475))

(assert (=> b!1534851 m!1417475))

(declare-fun m!1417477 () Bool)

(assert (=> b!1534851 m!1417477))

(declare-fun m!1417479 () Bool)

(assert (=> b!1534852 m!1417479))

(assert (=> b!1534854 m!1417475))

(assert (=> b!1534854 m!1417475))

(declare-fun m!1417481 () Bool)

(assert (=> b!1534854 m!1417481))

(declare-fun m!1417483 () Bool)

(assert (=> b!1534847 m!1417483))

(declare-fun m!1417485 () Bool)

(assert (=> start!130908 m!1417485))

(declare-fun m!1417487 () Bool)

(assert (=> start!130908 m!1417487))

(declare-fun m!1417489 () Bool)

(assert (=> b!1534850 m!1417489))

(assert (=> b!1534850 m!1417489))

(declare-fun m!1417491 () Bool)

(assert (=> b!1534850 m!1417491))

(declare-fun m!1417493 () Bool)

(assert (=> b!1534855 m!1417493))

(assert (=> b!1534849 m!1417475))

(assert (=> b!1534849 m!1417475))

(declare-fun m!1417495 () Bool)

(assert (=> b!1534849 m!1417495))

(declare-fun m!1417497 () Bool)

(assert (=> b!1534848 m!1417497))

(declare-fun m!1417499 () Bool)

(assert (=> b!1534846 m!1417499))

(assert (=> b!1534846 m!1417475))

(check-sat (not b!1534851) (not b!1534852) (not b!1534847) (not b!1534850) (not b!1534848) (not b!1534849) (not start!130908) (not b!1534854))
(check-sat)
