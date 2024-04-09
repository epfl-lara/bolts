; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48878 () Bool)

(assert start!48878)

(declare-fun b!538094 () Bool)

(declare-fun res!333453 () Bool)

(declare-fun e!312039 () Bool)

(assert (=> b!538094 (=> (not res!333453) (not e!312039))))

(declare-datatypes ((array!34046 0))(
  ( (array!34047 (arr!16358 (Array (_ BitVec 32) (_ BitVec 64))) (size!16722 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34046)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538094 (= res!333453 (validKeyInArray!0 (select (arr!16358 a!3154) j!147)))))

(declare-fun b!538095 () Bool)

(declare-fun e!312035 () Bool)

(assert (=> b!538095 (= e!312035 (not true))))

(declare-datatypes ((SeekEntryResult!4823 0))(
  ( (MissingZero!4823 (index!21516 (_ BitVec 32))) (Found!4823 (index!21517 (_ BitVec 32))) (Intermediate!4823 (undefined!5635 Bool) (index!21518 (_ BitVec 32)) (x!50465 (_ BitVec 32))) (Undefined!4823) (MissingVacant!4823 (index!21519 (_ BitVec 32))) )
))
(declare-fun lt!246652 () SeekEntryResult!4823)

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(declare-fun lt!246656 () (_ BitVec 32))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34046 (_ BitVec 32)) SeekEntryResult!4823)

(assert (=> b!538095 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246656 (select (store (arr!16358 a!3154) i!1153 k!1998) j!147) (array!34047 (store (arr!16358 a!3154) i!1153 k!1998) (size!16722 a!3154)) mask!3216) lt!246652)))

(declare-datatypes ((Unit!16824 0))(
  ( (Unit!16825) )
))
(declare-fun lt!246654 () Unit!16824)

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34046 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16824)

(assert (=> b!538095 (= lt!246654 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k!1998 j!147 lt!246656 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(declare-fun b!538096 () Bool)

(declare-fun res!333452 () Bool)

(declare-fun e!312036 () Bool)

(assert (=> b!538096 (=> (not res!333452) (not e!312036))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34046 (_ BitVec 32)) Bool)

(assert (=> b!538096 (= res!333452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!538097 () Bool)

(declare-fun e!312040 () Bool)

(declare-fun e!312034 () Bool)

(assert (=> b!538097 (= e!312040 e!312034)))

(declare-fun res!333450 () Bool)

(assert (=> b!538097 (=> (not res!333450) (not e!312034))))

(assert (=> b!538097 (= res!333450 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246656 #b00000000000000000000000000000000) (bvslt lt!246656 (size!16722 a!3154))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538097 (= lt!246656 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!538098 () Bool)

(declare-fun res!333454 () Bool)

(assert (=> b!538098 (=> (not res!333454) (not e!312039))))

(assert (=> b!538098 (= res!333454 (validKeyInArray!0 k!1998))))

(declare-fun res!333460 () Bool)

(assert (=> start!48878 (=> (not res!333460) (not e!312039))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48878 (= res!333460 (validMask!0 mask!3216))))

(assert (=> start!48878 e!312039))

(assert (=> start!48878 true))

(declare-fun array_inv!12132 (array!34046) Bool)

(assert (=> start!48878 (array_inv!12132 a!3154)))

(declare-fun b!538099 () Bool)

(declare-fun res!333459 () Bool)

(assert (=> b!538099 (=> (not res!333459) (not e!312036))))

(declare-datatypes ((List!10530 0))(
  ( (Nil!10527) (Cons!10526 (h!11469 (_ BitVec 64)) (t!16766 List!10530)) )
))
(declare-fun arrayNoDuplicates!0 (array!34046 (_ BitVec 32) List!10530) Bool)

(assert (=> b!538099 (= res!333459 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10527))))

(declare-fun b!538100 () Bool)

(declare-fun res!333456 () Bool)

(assert (=> b!538100 (=> (not res!333456) (not e!312036))))

(assert (=> b!538100 (= res!333456 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16722 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16722 a!3154)) (= (select (arr!16358 a!3154) resIndex!32) (select (arr!16358 a!3154) j!147))))))

(declare-fun b!538101 () Bool)

(declare-fun e!312037 () Bool)

(assert (=> b!538101 (= e!312037 e!312040)))

(declare-fun res!333451 () Bool)

(assert (=> b!538101 (=> (not res!333451) (not e!312040))))

(declare-fun lt!246651 () SeekEntryResult!4823)

(declare-fun lt!246650 () SeekEntryResult!4823)

(assert (=> b!538101 (= res!333451 (and (= lt!246650 lt!246651) (not (= (select (arr!16358 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16358 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16358 a!3154) index!1177) (select (arr!16358 a!3154) j!147)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538101 (= lt!246650 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16358 a!3154) j!147) mask!3216) (select (arr!16358 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538102 () Bool)

(declare-fun res!333457 () Bool)

(assert (=> b!538102 (=> (not res!333457) (not e!312039))))

(declare-fun arrayContainsKey!0 (array!34046 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538102 (= res!333457 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!538103 () Bool)

(assert (=> b!538103 (= e!312039 e!312036)))

(declare-fun res!333458 () Bool)

(assert (=> b!538103 (=> (not res!333458) (not e!312036))))

(declare-fun lt!246655 () SeekEntryResult!4823)

(assert (=> b!538103 (= res!333458 (or (= lt!246655 (MissingZero!4823 i!1153)) (= lt!246655 (MissingVacant!4823 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34046 (_ BitVec 32)) SeekEntryResult!4823)

(assert (=> b!538103 (= lt!246655 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!538104 () Bool)

(declare-fun res!333455 () Bool)

(assert (=> b!538104 (=> (not res!333455) (not e!312039))))

(assert (=> b!538104 (= res!333455 (and (= (size!16722 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16722 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16722 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!538105 () Bool)

(assert (=> b!538105 (= e!312036 e!312037)))

(declare-fun res!333449 () Bool)

(assert (=> b!538105 (=> (not res!333449) (not e!312037))))

(assert (=> b!538105 (= res!333449 (= lt!246651 lt!246652))))

(assert (=> b!538105 (= lt!246652 (Intermediate!4823 false resIndex!32 resX!32))))

(assert (=> b!538105 (= lt!246651 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16358 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538106 () Bool)

(assert (=> b!538106 (= e!312034 e!312035)))

(declare-fun res!333461 () Bool)

(assert (=> b!538106 (=> (not res!333461) (not e!312035))))

(declare-fun lt!246653 () SeekEntryResult!4823)

(assert (=> b!538106 (= res!333461 (and (= lt!246653 lt!246652) (= lt!246650 lt!246653)))))

(assert (=> b!538106 (= lt!246653 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246656 (select (arr!16358 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48878 res!333460) b!538104))

(assert (= (and b!538104 res!333455) b!538094))

(assert (= (and b!538094 res!333453) b!538098))

(assert (= (and b!538098 res!333454) b!538102))

(assert (= (and b!538102 res!333457) b!538103))

(assert (= (and b!538103 res!333458) b!538096))

(assert (= (and b!538096 res!333452) b!538099))

(assert (= (and b!538099 res!333459) b!538100))

(assert (= (and b!538100 res!333456) b!538105))

(assert (= (and b!538105 res!333449) b!538101))

(assert (= (and b!538101 res!333451) b!538097))

(assert (= (and b!538097 res!333450) b!538106))

(assert (= (and b!538106 res!333461) b!538095))

(declare-fun m!517227 () Bool)

(assert (=> b!538095 m!517227))

(declare-fun m!517229 () Bool)

(assert (=> b!538095 m!517229))

(assert (=> b!538095 m!517229))

(declare-fun m!517231 () Bool)

(assert (=> b!538095 m!517231))

(declare-fun m!517233 () Bool)

(assert (=> b!538095 m!517233))

(declare-fun m!517235 () Bool)

(assert (=> b!538097 m!517235))

(declare-fun m!517237 () Bool)

(assert (=> b!538099 m!517237))

(declare-fun m!517239 () Bool)

(assert (=> b!538101 m!517239))

(declare-fun m!517241 () Bool)

(assert (=> b!538101 m!517241))

(assert (=> b!538101 m!517241))

(declare-fun m!517243 () Bool)

(assert (=> b!538101 m!517243))

(assert (=> b!538101 m!517243))

(assert (=> b!538101 m!517241))

(declare-fun m!517245 () Bool)

(assert (=> b!538101 m!517245))

(assert (=> b!538106 m!517241))

(assert (=> b!538106 m!517241))

(declare-fun m!517247 () Bool)

(assert (=> b!538106 m!517247))

(declare-fun m!517249 () Bool)

(assert (=> b!538102 m!517249))

(assert (=> b!538094 m!517241))

(assert (=> b!538094 m!517241))

(declare-fun m!517251 () Bool)

(assert (=> b!538094 m!517251))

(declare-fun m!517253 () Bool)

(assert (=> start!48878 m!517253))

(declare-fun m!517255 () Bool)

(assert (=> start!48878 m!517255))

(declare-fun m!517257 () Bool)

(assert (=> b!538098 m!517257))

(assert (=> b!538105 m!517241))

(assert (=> b!538105 m!517241))

(declare-fun m!517259 () Bool)

(assert (=> b!538105 m!517259))

(declare-fun m!517261 () Bool)

(assert (=> b!538103 m!517261))

(declare-fun m!517263 () Bool)

(assert (=> b!538096 m!517263))

(declare-fun m!517265 () Bool)

(assert (=> b!538100 m!517265))

(assert (=> b!538100 m!517241))

(push 1)

