; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48654 () Bool)

(assert start!48654)

(declare-fun b!534071 () Bool)

(declare-fun res!329432 () Bool)

(declare-fun e!310553 () Bool)

(assert (=> b!534071 (=> (not res!329432) (not e!310553))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534071 (= res!329432 (validKeyInArray!0 k0!1998))))

(declare-fun b!534072 () Bool)

(declare-fun e!310554 () Bool)

(assert (=> b!534072 (= e!310554 false)))

(declare-datatypes ((SeekEntryResult!4711 0))(
  ( (MissingZero!4711 (index!21068 (_ BitVec 32))) (Found!4711 (index!21069 (_ BitVec 32))) (Intermediate!4711 (undefined!5523 Bool) (index!21070 (_ BitVec 32)) (x!50057 (_ BitVec 32))) (Undefined!4711) (MissingVacant!4711 (index!21071 (_ BitVec 32))) )
))
(declare-fun lt!245561 () SeekEntryResult!4711)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33822 0))(
  ( (array!33823 (arr!16246 (Array (_ BitVec 32) (_ BitVec 64))) (size!16610 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33822)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33822 (_ BitVec 32)) SeekEntryResult!4711)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534072 (= lt!245561 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16246 a!3154) j!147) mask!3216) (select (arr!16246 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!534073 () Bool)

(declare-fun res!329429 () Bool)

(assert (=> b!534073 (=> (not res!329429) (not e!310553))))

(declare-fun arrayContainsKey!0 (array!33822 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534073 (= res!329429 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!534074 () Bool)

(assert (=> b!534074 (= e!310553 e!310554)))

(declare-fun res!329431 () Bool)

(assert (=> b!534074 (=> (not res!329431) (not e!310554))))

(declare-fun lt!245560 () SeekEntryResult!4711)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534074 (= res!329431 (or (= lt!245560 (MissingZero!4711 i!1153)) (= lt!245560 (MissingVacant!4711 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33822 (_ BitVec 32)) SeekEntryResult!4711)

(assert (=> b!534074 (= lt!245560 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun res!329433 () Bool)

(assert (=> start!48654 (=> (not res!329433) (not e!310553))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48654 (= res!329433 (validMask!0 mask!3216))))

(assert (=> start!48654 e!310553))

(assert (=> start!48654 true))

(declare-fun array_inv!12020 (array!33822) Bool)

(assert (=> start!48654 (array_inv!12020 a!3154)))

(declare-fun b!534075 () Bool)

(declare-fun res!329430 () Bool)

(assert (=> b!534075 (=> (not res!329430) (not e!310554))))

(declare-datatypes ((List!10418 0))(
  ( (Nil!10415) (Cons!10414 (h!11357 (_ BitVec 64)) (t!16654 List!10418)) )
))
(declare-fun arrayNoDuplicates!0 (array!33822 (_ BitVec 32) List!10418) Bool)

(assert (=> b!534075 (= res!329430 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10415))))

(declare-fun b!534076 () Bool)

(declare-fun res!329428 () Bool)

(assert (=> b!534076 (=> (not res!329428) (not e!310554))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!534076 (= res!329428 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16246 a!3154) j!147) a!3154 mask!3216) (Intermediate!4711 false resIndex!32 resX!32)))))

(declare-fun b!534077 () Bool)

(declare-fun res!329435 () Bool)

(assert (=> b!534077 (=> (not res!329435) (not e!310553))))

(assert (=> b!534077 (= res!329435 (and (= (size!16610 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16610 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16610 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!534078 () Bool)

(declare-fun res!329427 () Bool)

(assert (=> b!534078 (=> (not res!329427) (not e!310554))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33822 (_ BitVec 32)) Bool)

(assert (=> b!534078 (= res!329427 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!534079 () Bool)

(declare-fun res!329426 () Bool)

(assert (=> b!534079 (=> (not res!329426) (not e!310553))))

(assert (=> b!534079 (= res!329426 (validKeyInArray!0 (select (arr!16246 a!3154) j!147)))))

(declare-fun b!534080 () Bool)

(declare-fun res!329434 () Bool)

(assert (=> b!534080 (=> (not res!329434) (not e!310554))))

(assert (=> b!534080 (= res!329434 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16610 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16610 a!3154)) (= (select (arr!16246 a!3154) resIndex!32) (select (arr!16246 a!3154) j!147))))))

(assert (= (and start!48654 res!329433) b!534077))

(assert (= (and b!534077 res!329435) b!534079))

(assert (= (and b!534079 res!329426) b!534071))

(assert (= (and b!534071 res!329432) b!534073))

(assert (= (and b!534073 res!329429) b!534074))

(assert (= (and b!534074 res!329431) b!534078))

(assert (= (and b!534078 res!329427) b!534075))

(assert (= (and b!534075 res!329430) b!534080))

(assert (= (and b!534080 res!329434) b!534076))

(assert (= (and b!534076 res!329428) b!534072))

(declare-fun m!513849 () Bool)

(assert (=> b!534078 m!513849))

(declare-fun m!513851 () Bool)

(assert (=> b!534071 m!513851))

(declare-fun m!513853 () Bool)

(assert (=> b!534072 m!513853))

(assert (=> b!534072 m!513853))

(declare-fun m!513855 () Bool)

(assert (=> b!534072 m!513855))

(assert (=> b!534072 m!513855))

(assert (=> b!534072 m!513853))

(declare-fun m!513857 () Bool)

(assert (=> b!534072 m!513857))

(declare-fun m!513859 () Bool)

(assert (=> b!534075 m!513859))

(assert (=> b!534076 m!513853))

(assert (=> b!534076 m!513853))

(declare-fun m!513861 () Bool)

(assert (=> b!534076 m!513861))

(declare-fun m!513863 () Bool)

(assert (=> b!534074 m!513863))

(assert (=> b!534079 m!513853))

(assert (=> b!534079 m!513853))

(declare-fun m!513865 () Bool)

(assert (=> b!534079 m!513865))

(declare-fun m!513867 () Bool)

(assert (=> b!534073 m!513867))

(declare-fun m!513869 () Bool)

(assert (=> start!48654 m!513869))

(declare-fun m!513871 () Bool)

(assert (=> start!48654 m!513871))

(declare-fun m!513873 () Bool)

(assert (=> b!534080 m!513873))

(assert (=> b!534080 m!513853))

(check-sat (not b!534071) (not b!534078) (not b!534076) (not b!534073) (not b!534075) (not b!534079) (not b!534074) (not start!48654) (not b!534072))
(check-sat)
