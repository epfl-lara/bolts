; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48932 () Bool)

(assert start!48932)

(declare-fun res!334317 () Bool)

(declare-fun e!312471 () Bool)

(assert (=> start!48932 (=> (not res!334317) (not e!312471))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48932 (= res!334317 (validMask!0 mask!3216))))

(assert (=> start!48932 e!312471))

(assert (=> start!48932 true))

(declare-datatypes ((array!34100 0))(
  ( (array!34101 (arr!16385 (Array (_ BitVec 32) (_ BitVec 64))) (size!16749 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34100)

(declare-fun array_inv!12159 (array!34100) Bool)

(assert (=> start!48932 (array_inv!12159 a!3154)))

(declare-fun b!538962 () Bool)

(declare-fun res!334322 () Bool)

(assert (=> b!538962 (=> (not res!334322) (not e!312471))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538962 (= res!334322 (validKeyInArray!0 (select (arr!16385 a!3154) j!147)))))

(declare-fun b!538963 () Bool)

(declare-fun e!312470 () Bool)

(assert (=> b!538963 (= e!312470 false)))

(declare-fun x!1030 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4850 0))(
  ( (MissingZero!4850 (index!21624 (_ BitVec 32))) (Found!4850 (index!21625 (_ BitVec 32))) (Intermediate!4850 (undefined!5662 Bool) (index!21626 (_ BitVec 32)) (x!50564 (_ BitVec 32))) (Undefined!4850) (MissingVacant!4850 (index!21627 (_ BitVec 32))) )
))
(declare-fun lt!247042 () SeekEntryResult!4850)

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34100 (_ BitVec 32)) SeekEntryResult!4850)

(assert (=> b!538963 (= lt!247042 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16385 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538964 () Bool)

(declare-fun res!334321 () Bool)

(assert (=> b!538964 (=> (not res!334321) (not e!312470))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34100 (_ BitVec 32)) Bool)

(assert (=> b!538964 (= res!334321 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!538965 () Bool)

(declare-fun res!334319 () Bool)

(assert (=> b!538965 (=> (not res!334319) (not e!312470))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!538965 (= res!334319 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16749 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16749 a!3154)) (= (select (arr!16385 a!3154) resIndex!32) (select (arr!16385 a!3154) j!147))))))

(declare-fun b!538966 () Bool)

(assert (=> b!538966 (= e!312471 e!312470)))

(declare-fun res!334323 () Bool)

(assert (=> b!538966 (=> (not res!334323) (not e!312470))))

(declare-fun lt!247043 () SeekEntryResult!4850)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!538966 (= res!334323 (or (= lt!247043 (MissingZero!4850 i!1153)) (= lt!247043 (MissingVacant!4850 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34100 (_ BitVec 32)) SeekEntryResult!4850)

(assert (=> b!538966 (= lt!247043 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!538967 () Bool)

(declare-fun res!334325 () Bool)

(assert (=> b!538967 (=> (not res!334325) (not e!312470))))

(declare-datatypes ((List!10557 0))(
  ( (Nil!10554) (Cons!10553 (h!11496 (_ BitVec 64)) (t!16793 List!10557)) )
))
(declare-fun arrayNoDuplicates!0 (array!34100 (_ BitVec 32) List!10557) Bool)

(assert (=> b!538967 (= res!334325 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10554))))

(declare-fun b!538968 () Bool)

(declare-fun res!334318 () Bool)

(assert (=> b!538968 (=> (not res!334318) (not e!312471))))

(assert (=> b!538968 (= res!334318 (validKeyInArray!0 k!1998))))

(declare-fun b!538969 () Bool)

(declare-fun res!334324 () Bool)

(assert (=> b!538969 (=> (not res!334324) (not e!312471))))

(declare-fun arrayContainsKey!0 (array!34100 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538969 (= res!334324 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!538970 () Bool)

(declare-fun res!334320 () Bool)

(assert (=> b!538970 (=> (not res!334320) (not e!312471))))

(assert (=> b!538970 (= res!334320 (and (= (size!16749 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16749 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16749 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48932 res!334317) b!538970))

(assert (= (and b!538970 res!334320) b!538962))

(assert (= (and b!538962 res!334322) b!538968))

(assert (= (and b!538968 res!334318) b!538969))

(assert (= (and b!538969 res!334324) b!538966))

(assert (= (and b!538966 res!334323) b!538964))

(assert (= (and b!538964 res!334321) b!538967))

(assert (= (and b!538967 res!334325) b!538965))

(assert (= (and b!538965 res!334319) b!538963))

(declare-fun m!518079 () Bool)

(assert (=> b!538964 m!518079))

(declare-fun m!518081 () Bool)

(assert (=> start!48932 m!518081))

(declare-fun m!518083 () Bool)

(assert (=> start!48932 m!518083))

(declare-fun m!518085 () Bool)

(assert (=> b!538966 m!518085))

(declare-fun m!518087 () Bool)

(assert (=> b!538967 m!518087))

(declare-fun m!518089 () Bool)

(assert (=> b!538969 m!518089))

(declare-fun m!518091 () Bool)

(assert (=> b!538968 m!518091))

(declare-fun m!518093 () Bool)

(assert (=> b!538962 m!518093))

(assert (=> b!538962 m!518093))

(declare-fun m!518095 () Bool)

(assert (=> b!538962 m!518095))

(assert (=> b!538963 m!518093))

(assert (=> b!538963 m!518093))

(declare-fun m!518097 () Bool)

(assert (=> b!538963 m!518097))

(declare-fun m!518099 () Bool)

(assert (=> b!538965 m!518099))

(assert (=> b!538965 m!518093))

(push 1)

(assert (not b!538966))

(assert (not b!538962))

(assert (not b!538963))

(assert (not b!538967))

(assert (not b!538964))

(assert (not b!538969))

(assert (not start!48932))

(assert (not b!538968))

