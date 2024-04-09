; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48656 () Bool)

(assert start!48656)

(declare-fun b!534101 () Bool)

(declare-fun res!329457 () Bool)

(declare-fun e!310563 () Bool)

(assert (=> b!534101 (=> (not res!329457) (not e!310563))))

(declare-datatypes ((array!33824 0))(
  ( (array!33825 (arr!16247 (Array (_ BitVec 32) (_ BitVec 64))) (size!16611 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33824)

(declare-datatypes ((List!10419 0))(
  ( (Nil!10416) (Cons!10415 (h!11358 (_ BitVec 64)) (t!16655 List!10419)) )
))
(declare-fun arrayNoDuplicates!0 (array!33824 (_ BitVec 32) List!10419) Bool)

(assert (=> b!534101 (= res!329457 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10416))))

(declare-fun b!534102 () Bool)

(declare-fun res!329462 () Bool)

(assert (=> b!534102 (=> (not res!329462) (not e!310563))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33824 (_ BitVec 32)) Bool)

(assert (=> b!534102 (= res!329462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!534103 () Bool)

(declare-fun res!329461 () Bool)

(assert (=> b!534103 (=> (not res!329461) (not e!310563))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!534103 (= res!329461 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16611 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16611 a!3154)) (= (select (arr!16247 a!3154) resIndex!32) (select (arr!16247 a!3154) j!147))))))

(declare-fun res!329465 () Bool)

(declare-fun e!310562 () Bool)

(assert (=> start!48656 (=> (not res!329465) (not e!310562))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48656 (= res!329465 (validMask!0 mask!3216))))

(assert (=> start!48656 e!310562))

(assert (=> start!48656 true))

(declare-fun array_inv!12021 (array!33824) Bool)

(assert (=> start!48656 (array_inv!12021 a!3154)))

(declare-fun b!534104 () Bool)

(assert (=> b!534104 (= e!310563 false)))

(declare-datatypes ((SeekEntryResult!4712 0))(
  ( (MissingZero!4712 (index!21072 (_ BitVec 32))) (Found!4712 (index!21073 (_ BitVec 32))) (Intermediate!4712 (undefined!5524 Bool) (index!21074 (_ BitVec 32)) (x!50058 (_ BitVec 32))) (Undefined!4712) (MissingVacant!4712 (index!21075 (_ BitVec 32))) )
))
(declare-fun lt!245566 () SeekEntryResult!4712)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33824 (_ BitVec 32)) SeekEntryResult!4712)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534104 (= lt!245566 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16247 a!3154) j!147) mask!3216) (select (arr!16247 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!534105 () Bool)

(assert (=> b!534105 (= e!310562 e!310563)))

(declare-fun res!329460 () Bool)

(assert (=> b!534105 (=> (not res!329460) (not e!310563))))

(declare-fun lt!245567 () SeekEntryResult!4712)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534105 (= res!329460 (or (= lt!245567 (MissingZero!4712 i!1153)) (= lt!245567 (MissingVacant!4712 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33824 (_ BitVec 32)) SeekEntryResult!4712)

(assert (=> b!534105 (= lt!245567 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!534106 () Bool)

(declare-fun res!329463 () Bool)

(assert (=> b!534106 (=> (not res!329463) (not e!310562))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534106 (= res!329463 (validKeyInArray!0 k!1998))))

(declare-fun b!534107 () Bool)

(declare-fun res!329464 () Bool)

(assert (=> b!534107 (=> (not res!329464) (not e!310562))))

(assert (=> b!534107 (= res!329464 (validKeyInArray!0 (select (arr!16247 a!3154) j!147)))))

(declare-fun b!534108 () Bool)

(declare-fun res!329456 () Bool)

(assert (=> b!534108 (=> (not res!329456) (not e!310562))))

(assert (=> b!534108 (= res!329456 (and (= (size!16611 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16611 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16611 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!534109 () Bool)

(declare-fun res!329458 () Bool)

(assert (=> b!534109 (=> (not res!329458) (not e!310562))))

(declare-fun arrayContainsKey!0 (array!33824 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534109 (= res!329458 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!534110 () Bool)

(declare-fun res!329459 () Bool)

(assert (=> b!534110 (=> (not res!329459) (not e!310563))))

(assert (=> b!534110 (= res!329459 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16247 a!3154) j!147) a!3154 mask!3216) (Intermediate!4712 false resIndex!32 resX!32)))))

(assert (= (and start!48656 res!329465) b!534108))

(assert (= (and b!534108 res!329456) b!534107))

(assert (= (and b!534107 res!329464) b!534106))

(assert (= (and b!534106 res!329463) b!534109))

(assert (= (and b!534109 res!329458) b!534105))

(assert (= (and b!534105 res!329460) b!534102))

(assert (= (and b!534102 res!329462) b!534101))

(assert (= (and b!534101 res!329457) b!534103))

(assert (= (and b!534103 res!329461) b!534110))

(assert (= (and b!534110 res!329459) b!534104))

(declare-fun m!513875 () Bool)

(assert (=> b!534105 m!513875))

(declare-fun m!513877 () Bool)

(assert (=> b!534109 m!513877))

(declare-fun m!513879 () Bool)

(assert (=> b!534103 m!513879))

(declare-fun m!513881 () Bool)

(assert (=> b!534103 m!513881))

(assert (=> b!534104 m!513881))

(assert (=> b!534104 m!513881))

(declare-fun m!513883 () Bool)

(assert (=> b!534104 m!513883))

(assert (=> b!534104 m!513883))

(assert (=> b!534104 m!513881))

(declare-fun m!513885 () Bool)

(assert (=> b!534104 m!513885))

(assert (=> b!534107 m!513881))

(assert (=> b!534107 m!513881))

(declare-fun m!513887 () Bool)

(assert (=> b!534107 m!513887))

(assert (=> b!534110 m!513881))

(assert (=> b!534110 m!513881))

(declare-fun m!513889 () Bool)

(assert (=> b!534110 m!513889))

(declare-fun m!513891 () Bool)

(assert (=> b!534101 m!513891))

(declare-fun m!513893 () Bool)

(assert (=> start!48656 m!513893))

(declare-fun m!513895 () Bool)

(assert (=> start!48656 m!513895))

(declare-fun m!513897 () Bool)

(assert (=> b!534102 m!513897))

(declare-fun m!513899 () Bool)

(assert (=> b!534106 m!513899))

(push 1)

