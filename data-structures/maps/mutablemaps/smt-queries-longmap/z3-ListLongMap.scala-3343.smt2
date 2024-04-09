; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46062 () Bool)

(assert start!46062)

(declare-fun b!509805 () Bool)

(declare-fun res!310807 () Bool)

(declare-fun e!298064 () Bool)

(assert (=> b!509805 (=> (not res!310807) (not e!298064))))

(declare-datatypes ((array!32733 0))(
  ( (array!32734 (arr!15742 (Array (_ BitVec 32) (_ BitVec 64))) (size!16106 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32733)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509805 (= res!310807 (validKeyInArray!0 (select (arr!15742 a!3235) j!176)))))

(declare-fun b!509806 () Bool)

(declare-fun res!310808 () Bool)

(assert (=> b!509806 (=> (not res!310808) (not e!298064))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!509806 (= res!310808 (and (= (size!16106 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16106 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16106 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509807 () Bool)

(declare-fun e!298065 () Bool)

(assert (=> b!509807 (= e!298064 e!298065)))

(declare-fun res!310804 () Bool)

(assert (=> b!509807 (=> (not res!310804) (not e!298065))))

(declare-datatypes ((SeekEntryResult!4216 0))(
  ( (MissingZero!4216 (index!19052 (_ BitVec 32))) (Found!4216 (index!19053 (_ BitVec 32))) (Intermediate!4216 (undefined!5028 Bool) (index!19054 (_ BitVec 32)) (x!48044 (_ BitVec 32))) (Undefined!4216) (MissingVacant!4216 (index!19055 (_ BitVec 32))) )
))
(declare-fun lt!233054 () SeekEntryResult!4216)

(assert (=> b!509807 (= res!310804 (or (= lt!233054 (MissingZero!4216 i!1204)) (= lt!233054 (MissingVacant!4216 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32733 (_ BitVec 32)) SeekEntryResult!4216)

(assert (=> b!509807 (= lt!233054 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!509808 () Bool)

(declare-fun res!310806 () Bool)

(assert (=> b!509808 (=> (not res!310806) (not e!298065))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32733 (_ BitVec 32)) Bool)

(assert (=> b!509808 (= res!310806 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509809 () Bool)

(declare-fun res!310805 () Bool)

(assert (=> b!509809 (=> (not res!310805) (not e!298065))))

(declare-datatypes ((List!9953 0))(
  ( (Nil!9950) (Cons!9949 (h!10826 (_ BitVec 64)) (t!16189 List!9953)) )
))
(declare-fun arrayNoDuplicates!0 (array!32733 (_ BitVec 32) List!9953) Bool)

(assert (=> b!509809 (= res!310805 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9950))))

(declare-fun e!298063 () Bool)

(declare-fun b!509810 () Bool)

(assert (=> b!509810 (= e!298063 (= (seekEntryOrOpen!0 (select (arr!15742 a!3235) j!176) a!3235 mask!3524) (Found!4216 j!176)))))

(declare-fun b!509811 () Bool)

(declare-fun res!310800 () Bool)

(assert (=> b!509811 (=> (not res!310800) (not e!298064))))

(assert (=> b!509811 (= res!310800 (validKeyInArray!0 k0!2280))))

(declare-fun res!310801 () Bool)

(assert (=> start!46062 (=> (not res!310801) (not e!298064))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46062 (= res!310801 (validMask!0 mask!3524))))

(assert (=> start!46062 e!298064))

(assert (=> start!46062 true))

(declare-fun array_inv!11516 (array!32733) Bool)

(assert (=> start!46062 (array_inv!11516 a!3235)))

(declare-fun b!509812 () Bool)

(assert (=> b!509812 (= e!298065 (not true))))

(declare-fun lt!233056 () (_ BitVec 32))

(declare-fun lt!233057 () SeekEntryResult!4216)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32733 (_ BitVec 32)) SeekEntryResult!4216)

(assert (=> b!509812 (= lt!233057 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233056 (select (store (arr!15742 a!3235) i!1204 k0!2280) j!176) (array!32734 (store (arr!15742 a!3235) i!1204 k0!2280) (size!16106 a!3235)) mask!3524))))

(declare-fun lt!233055 () (_ BitVec 32))

(declare-fun lt!233053 () SeekEntryResult!4216)

(assert (=> b!509812 (= lt!233053 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233055 (select (arr!15742 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509812 (= lt!233056 (toIndex!0 (select (store (arr!15742 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!509812 (= lt!233055 (toIndex!0 (select (arr!15742 a!3235) j!176) mask!3524))))

(assert (=> b!509812 e!298063))

(declare-fun res!310802 () Bool)

(assert (=> b!509812 (=> (not res!310802) (not e!298063))))

(assert (=> b!509812 (= res!310802 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15682 0))(
  ( (Unit!15683) )
))
(declare-fun lt!233052 () Unit!15682)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32733 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15682)

(assert (=> b!509812 (= lt!233052 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!509813 () Bool)

(declare-fun res!310803 () Bool)

(assert (=> b!509813 (=> (not res!310803) (not e!298064))))

(declare-fun arrayContainsKey!0 (array!32733 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509813 (= res!310803 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!46062 res!310801) b!509806))

(assert (= (and b!509806 res!310808) b!509805))

(assert (= (and b!509805 res!310807) b!509811))

(assert (= (and b!509811 res!310800) b!509813))

(assert (= (and b!509813 res!310803) b!509807))

(assert (= (and b!509807 res!310804) b!509808))

(assert (= (and b!509808 res!310806) b!509809))

(assert (= (and b!509809 res!310805) b!509812))

(assert (= (and b!509812 res!310802) b!509810))

(declare-fun m!490915 () Bool)

(assert (=> b!509808 m!490915))

(declare-fun m!490917 () Bool)

(assert (=> b!509810 m!490917))

(assert (=> b!509810 m!490917))

(declare-fun m!490919 () Bool)

(assert (=> b!509810 m!490919))

(declare-fun m!490921 () Bool)

(assert (=> b!509809 m!490921))

(declare-fun m!490923 () Bool)

(assert (=> start!46062 m!490923))

(declare-fun m!490925 () Bool)

(assert (=> start!46062 m!490925))

(declare-fun m!490927 () Bool)

(assert (=> b!509812 m!490927))

(declare-fun m!490929 () Bool)

(assert (=> b!509812 m!490929))

(declare-fun m!490931 () Bool)

(assert (=> b!509812 m!490931))

(assert (=> b!509812 m!490931))

(declare-fun m!490933 () Bool)

(assert (=> b!509812 m!490933))

(assert (=> b!509812 m!490917))

(declare-fun m!490935 () Bool)

(assert (=> b!509812 m!490935))

(assert (=> b!509812 m!490917))

(declare-fun m!490937 () Bool)

(assert (=> b!509812 m!490937))

(assert (=> b!509812 m!490917))

(declare-fun m!490939 () Bool)

(assert (=> b!509812 m!490939))

(assert (=> b!509812 m!490931))

(declare-fun m!490941 () Bool)

(assert (=> b!509812 m!490941))

(assert (=> b!509805 m!490917))

(assert (=> b!509805 m!490917))

(declare-fun m!490943 () Bool)

(assert (=> b!509805 m!490943))

(declare-fun m!490945 () Bool)

(assert (=> b!509811 m!490945))

(declare-fun m!490947 () Bool)

(assert (=> b!509813 m!490947))

(declare-fun m!490949 () Bool)

(assert (=> b!509807 m!490949))

(check-sat (not start!46062) (not b!509813) (not b!509809) (not b!509810) (not b!509805) (not b!509808) (not b!509811) (not b!509807) (not b!509812))
(check-sat)
