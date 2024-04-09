; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49608 () Bool)

(assert start!49608)

(declare-fun b!545316 () Bool)

(declare-fun res!339395 () Bool)

(declare-fun e!315209 () Bool)

(assert (=> b!545316 (=> (not res!339395) (not e!315209))))

(declare-datatypes ((array!34377 0))(
  ( (array!34378 (arr!16513 (Array (_ BitVec 32) (_ BitVec 64))) (size!16877 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34377)

(declare-datatypes ((List!10685 0))(
  ( (Nil!10682) (Cons!10681 (h!11645 (_ BitVec 64)) (t!16921 List!10685)) )
))
(declare-fun arrayNoDuplicates!0 (array!34377 (_ BitVec 32) List!10685) Bool)

(assert (=> b!545316 (= res!339395 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10682))))

(declare-fun b!545317 () Bool)

(declare-fun e!315213 () Bool)

(declare-fun e!315211 () Bool)

(assert (=> b!545317 (= e!315213 e!315211)))

(declare-fun res!339399 () Bool)

(assert (=> b!545317 (=> (not res!339399) (not e!315211))))

(declare-datatypes ((SeekEntryResult!4978 0))(
  ( (MissingZero!4978 (index!22136 (_ BitVec 32))) (Found!4978 (index!22137 (_ BitVec 32))) (Intermediate!4978 (undefined!5790 Bool) (index!22138 (_ BitVec 32)) (x!51093 (_ BitVec 32))) (Undefined!4978) (MissingVacant!4978 (index!22139 (_ BitVec 32))) )
))
(declare-fun lt!248823 () SeekEntryResult!4978)

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun lt!248822 () SeekEntryResult!4978)

(assert (=> b!545317 (= res!339399 (and (= lt!248822 lt!248823) (not (= (select (arr!16513 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16513 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16513 a!3154) index!1177) (select (arr!16513 a!3154) j!147)))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34377 (_ BitVec 32)) SeekEntryResult!4978)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545317 (= lt!248822 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16513 a!3154) j!147) mask!3216) (select (arr!16513 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545318 () Bool)

(declare-fun res!339394 () Bool)

(declare-fun e!315210 () Bool)

(assert (=> b!545318 (=> (not res!339394) (not e!315210))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!545318 (= res!339394 (validKeyInArray!0 k0!1998))))

(declare-fun res!339398 () Bool)

(assert (=> start!49608 (=> (not res!339398) (not e!315210))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49608 (= res!339398 (validMask!0 mask!3216))))

(assert (=> start!49608 e!315210))

(assert (=> start!49608 true))

(declare-fun array_inv!12287 (array!34377) Bool)

(assert (=> start!49608 (array_inv!12287 a!3154)))

(declare-fun b!545319 () Bool)

(declare-fun e!315214 () Bool)

(assert (=> b!545319 (= e!315211 e!315214)))

(declare-fun res!339404 () Bool)

(assert (=> b!545319 (=> (not res!339404) (not e!315214))))

(declare-fun lt!248824 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!545319 (= res!339404 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!248824 #b00000000000000000000000000000000) (bvslt lt!248824 (size!16877 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545319 (= lt!248824 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun lt!248825 () SeekEntryResult!4978)

(declare-fun lt!248820 () SeekEntryResult!4978)

(declare-fun b!545320 () Bool)

(assert (=> b!545320 (= e!315214 (and (= lt!248825 lt!248820) (not (= lt!248822 lt!248825))))))

(assert (=> b!545320 (= lt!248825 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!248824 (select (arr!16513 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545321 () Bool)

(declare-fun res!339397 () Bool)

(assert (=> b!545321 (=> (not res!339397) (not e!315210))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!545321 (= res!339397 (and (= (size!16877 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16877 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16877 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!545322 () Bool)

(assert (=> b!545322 (= e!315210 e!315209)))

(declare-fun res!339402 () Bool)

(assert (=> b!545322 (=> (not res!339402) (not e!315209))))

(declare-fun lt!248821 () SeekEntryResult!4978)

(assert (=> b!545322 (= res!339402 (or (= lt!248821 (MissingZero!4978 i!1153)) (= lt!248821 (MissingVacant!4978 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34377 (_ BitVec 32)) SeekEntryResult!4978)

(assert (=> b!545322 (= lt!248821 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!545323 () Bool)

(declare-fun res!339393 () Bool)

(assert (=> b!545323 (=> (not res!339393) (not e!315210))))

(declare-fun arrayContainsKey!0 (array!34377 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!545323 (= res!339393 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!545324 () Bool)

(declare-fun res!339396 () Bool)

(assert (=> b!545324 (=> (not res!339396) (not e!315209))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34377 (_ BitVec 32)) Bool)

(assert (=> b!545324 (= res!339396 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!545325 () Bool)

(declare-fun res!339403 () Bool)

(assert (=> b!545325 (=> (not res!339403) (not e!315210))))

(assert (=> b!545325 (= res!339403 (validKeyInArray!0 (select (arr!16513 a!3154) j!147)))))

(declare-fun b!545326 () Bool)

(declare-fun res!339400 () Bool)

(assert (=> b!545326 (=> (not res!339400) (not e!315209))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!545326 (= res!339400 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16877 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16877 a!3154)) (= (select (arr!16513 a!3154) resIndex!32) (select (arr!16513 a!3154) j!147))))))

(declare-fun b!545327 () Bool)

(assert (=> b!545327 (= e!315209 e!315213)))

(declare-fun res!339401 () Bool)

(assert (=> b!545327 (=> (not res!339401) (not e!315213))))

(assert (=> b!545327 (= res!339401 (= lt!248823 lt!248820))))

(assert (=> b!545327 (= lt!248820 (Intermediate!4978 false resIndex!32 resX!32))))

(assert (=> b!545327 (= lt!248823 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16513 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!49608 res!339398) b!545321))

(assert (= (and b!545321 res!339397) b!545325))

(assert (= (and b!545325 res!339403) b!545318))

(assert (= (and b!545318 res!339394) b!545323))

(assert (= (and b!545323 res!339393) b!545322))

(assert (= (and b!545322 res!339402) b!545324))

(assert (= (and b!545324 res!339396) b!545316))

(assert (= (and b!545316 res!339395) b!545326))

(assert (= (and b!545326 res!339400) b!545327))

(assert (= (and b!545327 res!339401) b!545317))

(assert (= (and b!545317 res!339399) b!545319))

(assert (= (and b!545319 res!339404) b!545320))

(declare-fun m!522915 () Bool)

(assert (=> b!545326 m!522915))

(declare-fun m!522917 () Bool)

(assert (=> b!545326 m!522917))

(declare-fun m!522919 () Bool)

(assert (=> start!49608 m!522919))

(declare-fun m!522921 () Bool)

(assert (=> start!49608 m!522921))

(assert (=> b!545327 m!522917))

(assert (=> b!545327 m!522917))

(declare-fun m!522923 () Bool)

(assert (=> b!545327 m!522923))

(declare-fun m!522925 () Bool)

(assert (=> b!545316 m!522925))

(declare-fun m!522927 () Bool)

(assert (=> b!545317 m!522927))

(assert (=> b!545317 m!522917))

(assert (=> b!545317 m!522917))

(declare-fun m!522929 () Bool)

(assert (=> b!545317 m!522929))

(assert (=> b!545317 m!522929))

(assert (=> b!545317 m!522917))

(declare-fun m!522931 () Bool)

(assert (=> b!545317 m!522931))

(declare-fun m!522933 () Bool)

(assert (=> b!545324 m!522933))

(declare-fun m!522935 () Bool)

(assert (=> b!545323 m!522935))

(declare-fun m!522937 () Bool)

(assert (=> b!545322 m!522937))

(declare-fun m!522939 () Bool)

(assert (=> b!545319 m!522939))

(assert (=> b!545325 m!522917))

(assert (=> b!545325 m!522917))

(declare-fun m!522941 () Bool)

(assert (=> b!545325 m!522941))

(declare-fun m!522943 () Bool)

(assert (=> b!545318 m!522943))

(assert (=> b!545320 m!522917))

(assert (=> b!545320 m!522917))

(declare-fun m!522945 () Bool)

(assert (=> b!545320 m!522945))

(check-sat (not b!545325) (not start!49608) (not b!545317) (not b!545320) (not b!545324) (not b!545318) (not b!545323) (not b!545322) (not b!545327) (not b!545319) (not b!545316))
(check-sat)
