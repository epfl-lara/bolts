; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50428 () Bool)

(assert start!50428)

(declare-fun b!551078 () Bool)

(declare-fun res!344010 () Bool)

(declare-fun e!318088 () Bool)

(assert (=> b!551078 (=> (not res!344010) (not e!318088))))

(declare-datatypes ((array!34721 0))(
  ( (array!34722 (arr!16669 (Array (_ BitVec 32) (_ BitVec 64))) (size!17033 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34721)

(declare-datatypes ((List!10802 0))(
  ( (Nil!10799) (Cons!10798 (h!11777 (_ BitVec 64)) (t!17038 List!10802)) )
))
(declare-fun arrayNoDuplicates!0 (array!34721 (_ BitVec 32) List!10802) Bool)

(assert (=> b!551078 (= res!344010 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10799))))

(declare-fun b!551079 () Bool)

(declare-fun res!344014 () Bool)

(declare-fun e!318087 () Bool)

(assert (=> b!551079 (=> (not res!344014) (not e!318087))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!551079 (= res!344014 (validKeyInArray!0 (select (arr!16669 a!3118) j!142)))))

(declare-fun b!551080 () Bool)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun e!318085 () Bool)

(declare-datatypes ((SeekEntryResult!5125 0))(
  ( (MissingZero!5125 (index!22727 (_ BitVec 32))) (Found!5125 (index!22728 (_ BitVec 32))) (Intermediate!5125 (undefined!5937 Bool) (index!22729 (_ BitVec 32)) (x!51686 (_ BitVec 32))) (Undefined!5125) (MissingVacant!5125 (index!22730 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34721 (_ BitVec 32)) SeekEntryResult!5125)

(assert (=> b!551080 (= e!318085 (= (seekEntryOrOpen!0 (select (arr!16669 a!3118) j!142) a!3118 mask!3119) (Found!5125 j!142)))))

(declare-fun b!551081 () Bool)

(assert (=> b!551081 (= e!318088 (not true))))

(assert (=> b!551081 e!318085))

(declare-fun res!344012 () Bool)

(assert (=> b!551081 (=> (not res!344012) (not e!318085))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34721 (_ BitVec 32)) Bool)

(assert (=> b!551081 (= res!344012 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17024 0))(
  ( (Unit!17025) )
))
(declare-fun lt!250759 () Unit!17024)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34721 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17024)

(assert (=> b!551081 (= lt!250759 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!551082 () Bool)

(declare-fun res!344006 () Bool)

(assert (=> b!551082 (=> (not res!344006) (not e!318088))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34721 (_ BitVec 32)) SeekEntryResult!5125)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!551082 (= res!344006 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16669 a!3118) j!142) mask!3119) (select (arr!16669 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16669 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16669 a!3118) i!1132 k0!1914) j!142) (array!34722 (store (arr!16669 a!3118) i!1132 k0!1914) (size!17033 a!3118)) mask!3119)))))

(declare-fun res!344013 () Bool)

(assert (=> start!50428 (=> (not res!344013) (not e!318087))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50428 (= res!344013 (validMask!0 mask!3119))))

(assert (=> start!50428 e!318087))

(assert (=> start!50428 true))

(declare-fun array_inv!12443 (array!34721) Bool)

(assert (=> start!50428 (array_inv!12443 a!3118)))

(declare-fun b!551083 () Bool)

(assert (=> b!551083 (= e!318087 e!318088)))

(declare-fun res!344011 () Bool)

(assert (=> b!551083 (=> (not res!344011) (not e!318088))))

(declare-fun lt!250760 () SeekEntryResult!5125)

(assert (=> b!551083 (= res!344011 (or (= lt!250760 (MissingZero!5125 i!1132)) (= lt!250760 (MissingVacant!5125 i!1132))))))

(assert (=> b!551083 (= lt!250760 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!551084 () Bool)

(declare-fun res!344007 () Bool)

(assert (=> b!551084 (=> (not res!344007) (not e!318087))))

(declare-fun arrayContainsKey!0 (array!34721 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!551084 (= res!344007 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!551085 () Bool)

(declare-fun res!344015 () Bool)

(assert (=> b!551085 (=> (not res!344015) (not e!318088))))

(assert (=> b!551085 (= res!344015 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!551086 () Bool)

(declare-fun res!344009 () Bool)

(assert (=> b!551086 (=> (not res!344009) (not e!318087))))

(assert (=> b!551086 (= res!344009 (validKeyInArray!0 k0!1914))))

(declare-fun b!551087 () Bool)

(declare-fun res!344008 () Bool)

(assert (=> b!551087 (=> (not res!344008) (not e!318087))))

(assert (=> b!551087 (= res!344008 (and (= (size!17033 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17033 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17033 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!50428 res!344013) b!551087))

(assert (= (and b!551087 res!344008) b!551079))

(assert (= (and b!551079 res!344014) b!551086))

(assert (= (and b!551086 res!344009) b!551084))

(assert (= (and b!551084 res!344007) b!551083))

(assert (= (and b!551083 res!344011) b!551085))

(assert (= (and b!551085 res!344015) b!551078))

(assert (= (and b!551078 res!344010) b!551082))

(assert (= (and b!551082 res!344006) b!551081))

(assert (= (and b!551081 res!344012) b!551080))

(declare-fun m!528067 () Bool)

(assert (=> b!551086 m!528067))

(declare-fun m!528069 () Bool)

(assert (=> start!50428 m!528069))

(declare-fun m!528071 () Bool)

(assert (=> start!50428 m!528071))

(declare-fun m!528073 () Bool)

(assert (=> b!551082 m!528073))

(declare-fun m!528075 () Bool)

(assert (=> b!551082 m!528075))

(assert (=> b!551082 m!528073))

(declare-fun m!528077 () Bool)

(assert (=> b!551082 m!528077))

(declare-fun m!528079 () Bool)

(assert (=> b!551082 m!528079))

(assert (=> b!551082 m!528077))

(declare-fun m!528081 () Bool)

(assert (=> b!551082 m!528081))

(assert (=> b!551082 m!528075))

(assert (=> b!551082 m!528073))

(declare-fun m!528083 () Bool)

(assert (=> b!551082 m!528083))

(declare-fun m!528085 () Bool)

(assert (=> b!551082 m!528085))

(assert (=> b!551082 m!528077))

(assert (=> b!551082 m!528079))

(declare-fun m!528087 () Bool)

(assert (=> b!551085 m!528087))

(declare-fun m!528089 () Bool)

(assert (=> b!551084 m!528089))

(declare-fun m!528091 () Bool)

(assert (=> b!551078 m!528091))

(assert (=> b!551080 m!528073))

(assert (=> b!551080 m!528073))

(declare-fun m!528093 () Bool)

(assert (=> b!551080 m!528093))

(declare-fun m!528095 () Bool)

(assert (=> b!551081 m!528095))

(declare-fun m!528097 () Bool)

(assert (=> b!551081 m!528097))

(assert (=> b!551079 m!528073))

(assert (=> b!551079 m!528073))

(declare-fun m!528099 () Bool)

(assert (=> b!551079 m!528099))

(declare-fun m!528101 () Bool)

(assert (=> b!551083 m!528101))

(check-sat (not b!551084) (not b!551082) (not start!50428) (not b!551081) (not b!551086) (not b!551080) (not b!551079) (not b!551083) (not b!551085) (not b!551078))
(check-sat)
