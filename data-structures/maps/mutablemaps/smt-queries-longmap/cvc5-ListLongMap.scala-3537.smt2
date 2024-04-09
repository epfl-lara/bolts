; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48808 () Bool)

(assert start!48808)

(declare-fun b!536729 () Bool)

(declare-fun e!311496 () Bool)

(declare-fun e!311493 () Bool)

(assert (=> b!536729 (= e!311496 e!311493)))

(declare-fun res!332096 () Bool)

(assert (=> b!536729 (=> (not res!332096) (not e!311493))))

(declare-fun lt!246209 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-datatypes ((array!33976 0))(
  ( (array!33977 (arr!16323 (Array (_ BitVec 32) (_ BitVec 64))) (size!16687 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33976)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!536729 (= res!332096 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246209 #b00000000000000000000000000000000) (bvslt lt!246209 (size!16687 a!3154))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536729 (= lt!246209 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!536730 () Bool)

(declare-fun res!332091 () Bool)

(declare-fun e!311497 () Bool)

(assert (=> b!536730 (=> (not res!332091) (not e!311497))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!536730 (= res!332091 (validKeyInArray!0 (select (arr!16323 a!3154) j!147)))))

(declare-fun b!536731 () Bool)

(declare-fun res!332087 () Bool)

(assert (=> b!536731 (=> (not res!332087) (not e!311497))))

(declare-fun k!1998 () (_ BitVec 64))

(assert (=> b!536731 (= res!332087 (validKeyInArray!0 k!1998))))

(declare-fun res!332088 () Bool)

(assert (=> start!48808 (=> (not res!332088) (not e!311497))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48808 (= res!332088 (validMask!0 mask!3216))))

(assert (=> start!48808 e!311497))

(assert (=> start!48808 true))

(declare-fun array_inv!12097 (array!33976) Bool)

(assert (=> start!48808 (array_inv!12097 a!3154)))

(declare-fun b!536732 () Bool)

(assert (=> b!536732 (= e!311493 false)))

(declare-datatypes ((SeekEntryResult!4788 0))(
  ( (MissingZero!4788 (index!21376 (_ BitVec 32))) (Found!4788 (index!21377 (_ BitVec 32))) (Intermediate!4788 (undefined!5600 Bool) (index!21378 (_ BitVec 32)) (x!50342 (_ BitVec 32))) (Undefined!4788) (MissingVacant!4788 (index!21379 (_ BitVec 32))) )
))
(declare-fun lt!246208 () SeekEntryResult!4788)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33976 (_ BitVec 32)) SeekEntryResult!4788)

(assert (=> b!536732 (= lt!246208 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246209 (select (arr!16323 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536733 () Bool)

(declare-fun e!311494 () Bool)

(assert (=> b!536733 (= e!311497 e!311494)))

(declare-fun res!332095 () Bool)

(assert (=> b!536733 (=> (not res!332095) (not e!311494))))

(declare-fun lt!246206 () SeekEntryResult!4788)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!536733 (= res!332095 (or (= lt!246206 (MissingZero!4788 i!1153)) (= lt!246206 (MissingVacant!4788 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33976 (_ BitVec 32)) SeekEntryResult!4788)

(assert (=> b!536733 (= lt!246206 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!536734 () Bool)

(declare-fun res!332093 () Bool)

(assert (=> b!536734 (=> (not res!332093) (not e!311494))))

(declare-datatypes ((List!10495 0))(
  ( (Nil!10492) (Cons!10491 (h!11434 (_ BitVec 64)) (t!16731 List!10495)) )
))
(declare-fun arrayNoDuplicates!0 (array!33976 (_ BitVec 32) List!10495) Bool)

(assert (=> b!536734 (= res!332093 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10492))))

(declare-fun b!536735 () Bool)

(declare-fun res!332090 () Bool)

(assert (=> b!536735 (=> (not res!332090) (not e!311497))))

(declare-fun arrayContainsKey!0 (array!33976 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!536735 (= res!332090 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!536736 () Bool)

(declare-fun res!332094 () Bool)

(assert (=> b!536736 (=> (not res!332094) (not e!311496))))

(declare-fun lt!246207 () SeekEntryResult!4788)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536736 (= res!332094 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16323 a!3154) j!147) mask!3216) (select (arr!16323 a!3154) j!147) a!3154 mask!3216) lt!246207))))

(declare-fun b!536737 () Bool)

(declare-fun res!332085 () Bool)

(assert (=> b!536737 (=> (not res!332085) (not e!311497))))

(assert (=> b!536737 (= res!332085 (and (= (size!16687 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16687 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16687 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!536738 () Bool)

(declare-fun res!332092 () Bool)

(assert (=> b!536738 (=> (not res!332092) (not e!311494))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33976 (_ BitVec 32)) Bool)

(assert (=> b!536738 (= res!332092 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!536739 () Bool)

(declare-fun res!332084 () Bool)

(assert (=> b!536739 (=> (not res!332084) (not e!311496))))

(assert (=> b!536739 (= res!332084 (and (not (= (select (arr!16323 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16323 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16323 a!3154) index!1177) (select (arr!16323 a!3154) j!147)))))))

(declare-fun b!536740 () Bool)

(declare-fun res!332086 () Bool)

(assert (=> b!536740 (=> (not res!332086) (not e!311494))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!536740 (= res!332086 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16687 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16687 a!3154)) (= (select (arr!16323 a!3154) resIndex!32) (select (arr!16323 a!3154) j!147))))))

(declare-fun b!536741 () Bool)

(assert (=> b!536741 (= e!311494 e!311496)))

(declare-fun res!332089 () Bool)

(assert (=> b!536741 (=> (not res!332089) (not e!311496))))

(assert (=> b!536741 (= res!332089 (= lt!246207 (Intermediate!4788 false resIndex!32 resX!32)))))

(assert (=> b!536741 (= lt!246207 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16323 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48808 res!332088) b!536737))

(assert (= (and b!536737 res!332085) b!536730))

(assert (= (and b!536730 res!332091) b!536731))

(assert (= (and b!536731 res!332087) b!536735))

(assert (= (and b!536735 res!332090) b!536733))

(assert (= (and b!536733 res!332095) b!536738))

(assert (= (and b!536738 res!332092) b!536734))

(assert (= (and b!536734 res!332093) b!536740))

(assert (= (and b!536740 res!332086) b!536741))

(assert (= (and b!536741 res!332089) b!536736))

(assert (= (and b!536736 res!332094) b!536739))

(assert (= (and b!536739 res!332084) b!536729))

(assert (= (and b!536729 res!332096) b!536732))

(declare-fun m!516091 () Bool)

(assert (=> b!536729 m!516091))

(declare-fun m!516093 () Bool)

(assert (=> b!536739 m!516093))

(declare-fun m!516095 () Bool)

(assert (=> b!536739 m!516095))

(declare-fun m!516097 () Bool)

(assert (=> b!536733 m!516097))

(declare-fun m!516099 () Bool)

(assert (=> b!536740 m!516099))

(assert (=> b!536740 m!516095))

(declare-fun m!516101 () Bool)

(assert (=> b!536735 m!516101))

(assert (=> b!536732 m!516095))

(assert (=> b!536732 m!516095))

(declare-fun m!516103 () Bool)

(assert (=> b!536732 m!516103))

(assert (=> b!536741 m!516095))

(assert (=> b!536741 m!516095))

(declare-fun m!516105 () Bool)

(assert (=> b!536741 m!516105))

(assert (=> b!536730 m!516095))

(assert (=> b!536730 m!516095))

(declare-fun m!516107 () Bool)

(assert (=> b!536730 m!516107))

(assert (=> b!536736 m!516095))

(assert (=> b!536736 m!516095))

(declare-fun m!516109 () Bool)

(assert (=> b!536736 m!516109))

(assert (=> b!536736 m!516109))

(assert (=> b!536736 m!516095))

(declare-fun m!516111 () Bool)

(assert (=> b!536736 m!516111))

(declare-fun m!516113 () Bool)

(assert (=> start!48808 m!516113))

(declare-fun m!516115 () Bool)

(assert (=> start!48808 m!516115))

(declare-fun m!516117 () Bool)

(assert (=> b!536738 m!516117))

(declare-fun m!516119 () Bool)

(assert (=> b!536731 m!516119))

(declare-fun m!516121 () Bool)

(assert (=> b!536734 m!516121))

(push 1)

