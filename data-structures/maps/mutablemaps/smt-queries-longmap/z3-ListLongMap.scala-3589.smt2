; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49338 () Bool)

(assert start!49338)

(declare-fun b!543099 () Bool)

(declare-fun res!337805 () Bool)

(declare-fun e!314143 () Bool)

(assert (=> b!543099 (=> (not res!337805) (not e!314143))))

(declare-datatypes ((array!34302 0))(
  ( (array!34303 (arr!16480 (Array (_ BitVec 32) (_ BitVec 64))) (size!16844 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34302)

(declare-datatypes ((List!10652 0))(
  ( (Nil!10649) (Cons!10648 (h!11603 (_ BitVec 64)) (t!16888 List!10652)) )
))
(declare-fun arrayNoDuplicates!0 (array!34302 (_ BitVec 32) List!10652) Bool)

(assert (=> b!543099 (= res!337805 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10649))))

(declare-fun b!543100 () Bool)

(declare-fun res!337801 () Bool)

(assert (=> b!543100 (=> (not res!337801) (not e!314143))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun index!1177 () (_ BitVec 32))

(assert (=> b!543100 (= res!337801 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16844 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16844 a!3154)) (= (select (arr!16480 a!3154) resIndex!32) (select (arr!16480 a!3154) j!147))))))

(declare-fun b!543101 () Bool)

(declare-fun res!337806 () Bool)

(declare-fun e!314146 () Bool)

(assert (=> b!543101 (=> (not res!337806) (not e!314146))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4945 0))(
  ( (MissingZero!4945 (index!22004 (_ BitVec 32))) (Found!4945 (index!22005 (_ BitVec 32))) (Intermediate!4945 (undefined!5757 Bool) (index!22006 (_ BitVec 32)) (x!50939 (_ BitVec 32))) (Undefined!4945) (MissingVacant!4945 (index!22007 (_ BitVec 32))) )
))
(declare-fun lt!248097 () SeekEntryResult!4945)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34302 (_ BitVec 32)) SeekEntryResult!4945)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543101 (= res!337806 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16480 a!3154) j!147) mask!3216) (select (arr!16480 a!3154) j!147) a!3154 mask!3216) lt!248097))))

(declare-fun b!543102 () Bool)

(declare-fun res!337803 () Bool)

(declare-fun e!314145 () Bool)

(assert (=> b!543102 (=> (not res!337803) (not e!314145))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!543102 (= res!337803 (validKeyInArray!0 (select (arr!16480 a!3154) j!147)))))

(declare-fun b!543103 () Bool)

(declare-fun res!337808 () Bool)

(assert (=> b!543103 (=> (not res!337808) (not e!314146))))

(assert (=> b!543103 (= res!337808 (and (not (= (select (arr!16480 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16480 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16480 a!3154) index!1177) (select (arr!16480 a!3154) j!147)))))))

(declare-fun b!543104 () Bool)

(declare-fun res!337809 () Bool)

(assert (=> b!543104 (=> (not res!337809) (not e!314145))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34302 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!543104 (= res!337809 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!543105 () Bool)

(declare-fun res!337802 () Bool)

(assert (=> b!543105 (=> (not res!337802) (not e!314145))))

(assert (=> b!543105 (= res!337802 (validKeyInArray!0 k0!1998))))

(declare-fun res!337810 () Bool)

(assert (=> start!49338 (=> (not res!337810) (not e!314145))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49338 (= res!337810 (validMask!0 mask!3216))))

(assert (=> start!49338 e!314145))

(assert (=> start!49338 true))

(declare-fun array_inv!12254 (array!34302) Bool)

(assert (=> start!49338 (array_inv!12254 a!3154)))

(declare-fun b!543106 () Bool)

(declare-fun res!337804 () Bool)

(assert (=> b!543106 (=> (not res!337804) (not e!314145))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!543106 (= res!337804 (and (= (size!16844 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16844 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16844 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!543107 () Bool)

(assert (=> b!543107 (= e!314143 e!314146)))

(declare-fun res!337807 () Bool)

(assert (=> b!543107 (=> (not res!337807) (not e!314146))))

(assert (=> b!543107 (= res!337807 (= lt!248097 (Intermediate!4945 false resIndex!32 resX!32)))))

(assert (=> b!543107 (= lt!248097 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16480 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!543108 () Bool)

(assert (=> b!543108 (= e!314146 false)))

(declare-fun lt!248098 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543108 (= lt!248098 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!543109 () Bool)

(assert (=> b!543109 (= e!314145 e!314143)))

(declare-fun res!337811 () Bool)

(assert (=> b!543109 (=> (not res!337811) (not e!314143))))

(declare-fun lt!248099 () SeekEntryResult!4945)

(assert (=> b!543109 (= res!337811 (or (= lt!248099 (MissingZero!4945 i!1153)) (= lt!248099 (MissingVacant!4945 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34302 (_ BitVec 32)) SeekEntryResult!4945)

(assert (=> b!543109 (= lt!248099 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!543110 () Bool)

(declare-fun res!337800 () Bool)

(assert (=> b!543110 (=> (not res!337800) (not e!314143))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34302 (_ BitVec 32)) Bool)

(assert (=> b!543110 (= res!337800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(assert (= (and start!49338 res!337810) b!543106))

(assert (= (and b!543106 res!337804) b!543102))

(assert (= (and b!543102 res!337803) b!543105))

(assert (= (and b!543105 res!337802) b!543104))

(assert (= (and b!543104 res!337809) b!543109))

(assert (= (and b!543109 res!337811) b!543110))

(assert (= (and b!543110 res!337800) b!543099))

(assert (= (and b!543099 res!337805) b!543100))

(assert (= (and b!543100 res!337801) b!543107))

(assert (= (and b!543107 res!337807) b!543101))

(assert (= (and b!543101 res!337806) b!543103))

(assert (= (and b!543103 res!337808) b!543108))

(declare-fun m!521251 () Bool)

(assert (=> b!543108 m!521251))

(declare-fun m!521253 () Bool)

(assert (=> b!543102 m!521253))

(assert (=> b!543102 m!521253))

(declare-fun m!521255 () Bool)

(assert (=> b!543102 m!521255))

(assert (=> b!543101 m!521253))

(assert (=> b!543101 m!521253))

(declare-fun m!521257 () Bool)

(assert (=> b!543101 m!521257))

(assert (=> b!543101 m!521257))

(assert (=> b!543101 m!521253))

(declare-fun m!521259 () Bool)

(assert (=> b!543101 m!521259))

(declare-fun m!521261 () Bool)

(assert (=> b!543110 m!521261))

(declare-fun m!521263 () Bool)

(assert (=> b!543099 m!521263))

(declare-fun m!521265 () Bool)

(assert (=> b!543103 m!521265))

(assert (=> b!543103 m!521253))

(declare-fun m!521267 () Bool)

(assert (=> b!543104 m!521267))

(declare-fun m!521269 () Bool)

(assert (=> start!49338 m!521269))

(declare-fun m!521271 () Bool)

(assert (=> start!49338 m!521271))

(declare-fun m!521273 () Bool)

(assert (=> b!543109 m!521273))

(declare-fun m!521275 () Bool)

(assert (=> b!543105 m!521275))

(declare-fun m!521277 () Bool)

(assert (=> b!543100 m!521277))

(assert (=> b!543100 m!521253))

(assert (=> b!543107 m!521253))

(assert (=> b!543107 m!521253))

(declare-fun m!521279 () Bool)

(assert (=> b!543107 m!521279))

(check-sat (not b!543101) (not b!543108) (not start!49338) (not b!543107) (not b!543110) (not b!543104) (not b!543102) (not b!543109) (not b!543105) (not b!543099))
(check-sat)
