; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49528 () Bool)

(assert start!49528)

(declare-fun b!544659 () Bool)

(declare-fun res!338916 () Bool)

(declare-fun e!314889 () Bool)

(assert (=> b!544659 (=> (not res!338916) (not e!314889))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34354 0))(
  ( (array!34355 (arr!16503 (Array (_ BitVec 32) (_ BitVec 64))) (size!16867 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34354)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!544659 (= res!338916 (and (= (size!16867 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16867 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16867 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!544660 () Bool)

(declare-fun res!338921 () Bool)

(assert (=> b!544660 (=> (not res!338921) (not e!314889))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!544660 (= res!338921 (validKeyInArray!0 (select (arr!16503 a!3154) j!147)))))

(declare-fun b!544661 () Bool)

(declare-fun e!314887 () Bool)

(declare-fun e!314888 () Bool)

(assert (=> b!544661 (= e!314887 e!314888)))

(declare-fun res!338919 () Bool)

(assert (=> b!544661 (=> (not res!338919) (not e!314888))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4968 0))(
  ( (MissingZero!4968 (index!22096 (_ BitVec 32))) (Found!4968 (index!22097 (_ BitVec 32))) (Intermediate!4968 (undefined!5780 Bool) (index!22098 (_ BitVec 32)) (x!51050 (_ BitVec 32))) (Undefined!4968) (MissingVacant!4968 (index!22099 (_ BitVec 32))) )
))
(declare-fun lt!248596 () SeekEntryResult!4968)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!544661 (= res!338919 (= lt!248596 (Intermediate!4968 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34354 (_ BitVec 32)) SeekEntryResult!4968)

(assert (=> b!544661 (= lt!248596 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16503 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!544662 () Bool)

(assert (=> b!544662 (= e!314888 false)))

(declare-fun lt!248595 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544662 (= lt!248595 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun res!338913 () Bool)

(assert (=> start!49528 (=> (not res!338913) (not e!314889))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49528 (= res!338913 (validMask!0 mask!3216))))

(assert (=> start!49528 e!314889))

(assert (=> start!49528 true))

(declare-fun array_inv!12277 (array!34354) Bool)

(assert (=> start!49528 (array_inv!12277 a!3154)))

(declare-fun b!544663 () Bool)

(declare-fun res!338924 () Bool)

(assert (=> b!544663 (=> (not res!338924) (not e!314887))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34354 (_ BitVec 32)) Bool)

(assert (=> b!544663 (= res!338924 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!544664 () Bool)

(declare-fun res!338920 () Bool)

(assert (=> b!544664 (=> (not res!338920) (not e!314889))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34354 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!544664 (= res!338920 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!544665 () Bool)

(declare-fun res!338918 () Bool)

(assert (=> b!544665 (=> (not res!338918) (not e!314887))))

(assert (=> b!544665 (= res!338918 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16867 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16867 a!3154)) (= (select (arr!16503 a!3154) resIndex!32) (select (arr!16503 a!3154) j!147))))))

(declare-fun b!544666 () Bool)

(declare-fun res!338923 () Bool)

(assert (=> b!544666 (=> (not res!338923) (not e!314888))))

(assert (=> b!544666 (= res!338923 (and (not (= (select (arr!16503 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16503 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16503 a!3154) index!1177) (select (arr!16503 a!3154) j!147)))))))

(declare-fun b!544667 () Bool)

(declare-fun res!338922 () Bool)

(assert (=> b!544667 (=> (not res!338922) (not e!314889))))

(assert (=> b!544667 (= res!338922 (validKeyInArray!0 k!1998))))

(declare-fun b!544668 () Bool)

(assert (=> b!544668 (= e!314889 e!314887)))

(declare-fun res!338915 () Bool)

(assert (=> b!544668 (=> (not res!338915) (not e!314887))))

(declare-fun lt!248597 () SeekEntryResult!4968)

(assert (=> b!544668 (= res!338915 (or (= lt!248597 (MissingZero!4968 i!1153)) (= lt!248597 (MissingVacant!4968 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34354 (_ BitVec 32)) SeekEntryResult!4968)

(assert (=> b!544668 (= lt!248597 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!544669 () Bool)

(declare-fun res!338914 () Bool)

(assert (=> b!544669 (=> (not res!338914) (not e!314887))))

(declare-datatypes ((List!10675 0))(
  ( (Nil!10672) (Cons!10671 (h!11632 (_ BitVec 64)) (t!16911 List!10675)) )
))
(declare-fun arrayNoDuplicates!0 (array!34354 (_ BitVec 32) List!10675) Bool)

(assert (=> b!544669 (= res!338914 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10672))))

(declare-fun b!544670 () Bool)

(declare-fun res!338917 () Bool)

(assert (=> b!544670 (=> (not res!338917) (not e!314888))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544670 (= res!338917 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16503 a!3154) j!147) mask!3216) (select (arr!16503 a!3154) j!147) a!3154 mask!3216) lt!248596))))

(assert (= (and start!49528 res!338913) b!544659))

(assert (= (and b!544659 res!338916) b!544660))

(assert (= (and b!544660 res!338921) b!544667))

(assert (= (and b!544667 res!338922) b!544664))

(assert (= (and b!544664 res!338920) b!544668))

(assert (= (and b!544668 res!338915) b!544663))

(assert (= (and b!544663 res!338924) b!544669))

(assert (= (and b!544669 res!338914) b!544665))

(assert (= (and b!544665 res!338918) b!544661))

(assert (= (and b!544661 res!338919) b!544670))

(assert (= (and b!544670 res!338917) b!544666))

(assert (= (and b!544666 res!338923) b!544662))

(declare-fun m!522445 () Bool)

(assert (=> b!544662 m!522445))

(declare-fun m!522447 () Bool)

(assert (=> b!544661 m!522447))

(assert (=> b!544661 m!522447))

(declare-fun m!522449 () Bool)

(assert (=> b!544661 m!522449))

(declare-fun m!522451 () Bool)

(assert (=> b!544668 m!522451))

(declare-fun m!522453 () Bool)

(assert (=> b!544667 m!522453))

(assert (=> b!544670 m!522447))

(assert (=> b!544670 m!522447))

(declare-fun m!522455 () Bool)

(assert (=> b!544670 m!522455))

(assert (=> b!544670 m!522455))

(assert (=> b!544670 m!522447))

(declare-fun m!522457 () Bool)

(assert (=> b!544670 m!522457))

(assert (=> b!544660 m!522447))

(assert (=> b!544660 m!522447))

(declare-fun m!522459 () Bool)

(assert (=> b!544660 m!522459))

(declare-fun m!522461 () Bool)

(assert (=> b!544663 m!522461))

(declare-fun m!522463 () Bool)

(assert (=> start!49528 m!522463))

(declare-fun m!522465 () Bool)

(assert (=> start!49528 m!522465))

(declare-fun m!522467 () Bool)

(assert (=> b!544666 m!522467))

(assert (=> b!544666 m!522447))

(declare-fun m!522469 () Bool)

(assert (=> b!544664 m!522469))

(declare-fun m!522471 () Bool)

(assert (=> b!544669 m!522471))

(declare-fun m!522473 () Bool)

(assert (=> b!544665 m!522473))

(assert (=> b!544665 m!522447))

(push 1)

