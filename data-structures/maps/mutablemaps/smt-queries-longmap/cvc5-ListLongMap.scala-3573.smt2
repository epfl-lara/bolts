; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49132 () Bool)

(assert start!49132)

(declare-fun b!540881 () Bool)

(declare-fun res!335927 () Bool)

(declare-fun e!313249 () Bool)

(assert (=> b!540881 (=> (not res!335927) (not e!313249))))

(declare-datatypes ((array!34198 0))(
  ( (array!34199 (arr!16431 (Array (_ BitVec 32) (_ BitVec 64))) (size!16795 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34198)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34198 (_ BitVec 32)) Bool)

(assert (=> b!540881 (= res!335927 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!540882 () Bool)

(assert (=> b!540882 (= e!313249 false)))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4896 0))(
  ( (MissingZero!4896 (index!21808 (_ BitVec 32))) (Found!4896 (index!21809 (_ BitVec 32))) (Intermediate!4896 (undefined!5708 Bool) (index!21810 (_ BitVec 32)) (x!50750 (_ BitVec 32))) (Undefined!4896) (MissingVacant!4896 (index!21811 (_ BitVec 32))) )
))
(declare-fun lt!247511 () SeekEntryResult!4896)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34198 (_ BitVec 32)) SeekEntryResult!4896)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!540882 (= lt!247511 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16431 a!3154) j!147) mask!3216) (select (arr!16431 a!3154) j!147) a!3154 mask!3216))))

(declare-fun res!335924 () Bool)

(declare-fun e!313248 () Bool)

(assert (=> start!49132 (=> (not res!335924) (not e!313248))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49132 (= res!335924 (validMask!0 mask!3216))))

(assert (=> start!49132 e!313248))

(assert (=> start!49132 true))

(declare-fun array_inv!12205 (array!34198) Bool)

(assert (=> start!49132 (array_inv!12205 a!3154)))

(declare-fun b!540883 () Bool)

(declare-fun res!335922 () Bool)

(assert (=> b!540883 (=> (not res!335922) (not e!313248))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!540883 (= res!335922 (and (= (size!16795 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16795 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16795 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!540884 () Bool)

(declare-fun res!335926 () Bool)

(assert (=> b!540884 (=> (not res!335926) (not e!313248))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!540884 (= res!335926 (validKeyInArray!0 k!1998))))

(declare-fun b!540885 () Bool)

(declare-fun res!335921 () Bool)

(assert (=> b!540885 (=> (not res!335921) (not e!313249))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!540885 (= res!335921 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16431 a!3154) j!147) a!3154 mask!3216) (Intermediate!4896 false resIndex!32 resX!32)))))

(declare-fun b!540886 () Bool)

(assert (=> b!540886 (= e!313248 e!313249)))

(declare-fun res!335920 () Bool)

(assert (=> b!540886 (=> (not res!335920) (not e!313249))))

(declare-fun lt!247510 () SeekEntryResult!4896)

(assert (=> b!540886 (= res!335920 (or (= lt!247510 (MissingZero!4896 i!1153)) (= lt!247510 (MissingVacant!4896 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34198 (_ BitVec 32)) SeekEntryResult!4896)

(assert (=> b!540886 (= lt!247510 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!540887 () Bool)

(declare-fun res!335918 () Bool)

(assert (=> b!540887 (=> (not res!335918) (not e!313248))))

(declare-fun arrayContainsKey!0 (array!34198 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!540887 (= res!335918 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!540888 () Bool)

(declare-fun res!335919 () Bool)

(assert (=> b!540888 (=> (not res!335919) (not e!313248))))

(assert (=> b!540888 (= res!335919 (validKeyInArray!0 (select (arr!16431 a!3154) j!147)))))

(declare-fun b!540889 () Bool)

(declare-fun res!335925 () Bool)

(assert (=> b!540889 (=> (not res!335925) (not e!313249))))

(declare-datatypes ((List!10603 0))(
  ( (Nil!10600) (Cons!10599 (h!11548 (_ BitVec 64)) (t!16839 List!10603)) )
))
(declare-fun arrayNoDuplicates!0 (array!34198 (_ BitVec 32) List!10603) Bool)

(assert (=> b!540889 (= res!335925 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10600))))

(declare-fun b!540890 () Bool)

(declare-fun res!335923 () Bool)

(assert (=> b!540890 (=> (not res!335923) (not e!313249))))

(assert (=> b!540890 (= res!335923 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16795 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16795 a!3154)) (= (select (arr!16431 a!3154) resIndex!32) (select (arr!16431 a!3154) j!147))))))

(assert (= (and start!49132 res!335924) b!540883))

(assert (= (and b!540883 res!335922) b!540888))

(assert (= (and b!540888 res!335919) b!540884))

(assert (= (and b!540884 res!335926) b!540887))

(assert (= (and b!540887 res!335918) b!540886))

(assert (= (and b!540886 res!335920) b!540881))

(assert (= (and b!540881 res!335927) b!540889))

(assert (= (and b!540889 res!335925) b!540890))

(assert (= (and b!540890 res!335923) b!540885))

(assert (= (and b!540885 res!335921) b!540882))

(declare-fun m!519541 () Bool)

(assert (=> start!49132 m!519541))

(declare-fun m!519543 () Bool)

(assert (=> start!49132 m!519543))

(declare-fun m!519545 () Bool)

(assert (=> b!540881 m!519545))

(declare-fun m!519547 () Bool)

(assert (=> b!540889 m!519547))

(declare-fun m!519549 () Bool)

(assert (=> b!540885 m!519549))

(assert (=> b!540885 m!519549))

(declare-fun m!519551 () Bool)

(assert (=> b!540885 m!519551))

(assert (=> b!540882 m!519549))

(assert (=> b!540882 m!519549))

(declare-fun m!519553 () Bool)

(assert (=> b!540882 m!519553))

(assert (=> b!540882 m!519553))

(assert (=> b!540882 m!519549))

(declare-fun m!519555 () Bool)

(assert (=> b!540882 m!519555))

(declare-fun m!519557 () Bool)

(assert (=> b!540886 m!519557))

(declare-fun m!519559 () Bool)

(assert (=> b!540887 m!519559))

(assert (=> b!540888 m!519549))

(assert (=> b!540888 m!519549))

(declare-fun m!519561 () Bool)

(assert (=> b!540888 m!519561))

(declare-fun m!519563 () Bool)

(assert (=> b!540884 m!519563))

(declare-fun m!519565 () Bool)

(assert (=> b!540890 m!519565))

(assert (=> b!540890 m!519549))

(push 1)

