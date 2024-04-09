; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48776 () Bool)

(assert start!48776)

(declare-fun b!536105 () Bool)

(declare-fun res!331466 () Bool)

(declare-fun e!311253 () Bool)

(assert (=> b!536105 (=> (not res!331466) (not e!311253))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33944 0))(
  ( (array!33945 (arr!16307 (Array (_ BitVec 32) (_ BitVec 64))) (size!16671 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33944)

(assert (=> b!536105 (= res!331466 (and (not (= (select (arr!16307 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16307 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16307 a!3154) index!1177) (select (arr!16307 a!3154) j!147)))))))

(declare-fun b!536106 () Bool)

(declare-fun e!311256 () Bool)

(assert (=> b!536106 (= e!311256 e!311253)))

(declare-fun res!331462 () Bool)

(assert (=> b!536106 (=> (not res!331462) (not e!311253))))

(declare-datatypes ((SeekEntryResult!4772 0))(
  ( (MissingZero!4772 (index!21312 (_ BitVec 32))) (Found!4772 (index!21313 (_ BitVec 32))) (Intermediate!4772 (undefined!5584 Bool) (index!21314 (_ BitVec 32)) (x!50278 (_ BitVec 32))) (Undefined!4772) (MissingVacant!4772 (index!21315 (_ BitVec 32))) )
))
(declare-fun lt!246014 () SeekEntryResult!4772)

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!536106 (= res!331462 (= lt!246014 (Intermediate!4772 false resIndex!32 resX!32)))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33944 (_ BitVec 32)) SeekEntryResult!4772)

(assert (=> b!536106 (= lt!246014 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16307 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536107 () Bool)

(declare-fun res!331461 () Bool)

(declare-fun e!311255 () Bool)

(assert (=> b!536107 (=> (not res!331461) (not e!311255))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!536107 (= res!331461 (validKeyInArray!0 (select (arr!16307 a!3154) j!147)))))

(declare-fun b!536108 () Bool)

(assert (=> b!536108 (= e!311255 e!311256)))

(declare-fun res!331464 () Bool)

(assert (=> b!536108 (=> (not res!331464) (not e!311256))))

(declare-fun lt!246016 () SeekEntryResult!4772)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!536108 (= res!331464 (or (= lt!246016 (MissingZero!4772 i!1153)) (= lt!246016 (MissingVacant!4772 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33944 (_ BitVec 32)) SeekEntryResult!4772)

(assert (=> b!536108 (= lt!246016 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!536109 () Bool)

(declare-fun e!311257 () Bool)

(assert (=> b!536109 (= e!311253 e!311257)))

(declare-fun res!331471 () Bool)

(assert (=> b!536109 (=> (not res!331471) (not e!311257))))

(declare-fun lt!246015 () (_ BitVec 32))

(assert (=> b!536109 (= res!331471 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246015 #b00000000000000000000000000000000) (bvslt lt!246015 (size!16671 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536109 (= lt!246015 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!536110 () Bool)

(declare-fun res!331472 () Bool)

(assert (=> b!536110 (=> (not res!331472) (not e!311255))))

(assert (=> b!536110 (= res!331472 (validKeyInArray!0 k!1998))))

(declare-fun b!536111 () Bool)

(declare-fun res!331467 () Bool)

(assert (=> b!536111 (=> (not res!331467) (not e!311256))))

(declare-datatypes ((List!10479 0))(
  ( (Nil!10476) (Cons!10475 (h!11418 (_ BitVec 64)) (t!16715 List!10479)) )
))
(declare-fun arrayNoDuplicates!0 (array!33944 (_ BitVec 32) List!10479) Bool)

(assert (=> b!536111 (= res!331467 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10476))))

(declare-fun b!536112 () Bool)

(declare-fun res!331468 () Bool)

(assert (=> b!536112 (=> (not res!331468) (not e!311253))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536112 (= res!331468 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16307 a!3154) j!147) mask!3216) (select (arr!16307 a!3154) j!147) a!3154 mask!3216) lt!246014))))

(declare-fun b!536113 () Bool)

(declare-fun res!331469 () Bool)

(assert (=> b!536113 (=> (not res!331469) (not e!311255))))

(assert (=> b!536113 (= res!331469 (and (= (size!16671 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16671 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16671 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!536114 () Bool)

(declare-fun res!331460 () Bool)

(assert (=> b!536114 (=> (not res!331460) (not e!311255))))

(declare-fun arrayContainsKey!0 (array!33944 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!536114 (= res!331460 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!536115 () Bool)

(declare-fun res!331463 () Bool)

(assert (=> b!536115 (=> (not res!331463) (not e!311256))))

(assert (=> b!536115 (= res!331463 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16671 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16671 a!3154)) (= (select (arr!16307 a!3154) resIndex!32) (select (arr!16307 a!3154) j!147))))))

(declare-fun res!331470 () Bool)

(assert (=> start!48776 (=> (not res!331470) (not e!311255))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48776 (= res!331470 (validMask!0 mask!3216))))

(assert (=> start!48776 e!311255))

(assert (=> start!48776 true))

(declare-fun array_inv!12081 (array!33944) Bool)

(assert (=> start!48776 (array_inv!12081 a!3154)))

(declare-fun b!536116 () Bool)

(assert (=> b!536116 (= e!311257 false)))

(declare-fun lt!246017 () SeekEntryResult!4772)

(assert (=> b!536116 (= lt!246017 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246015 (select (arr!16307 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536117 () Bool)

(declare-fun res!331465 () Bool)

(assert (=> b!536117 (=> (not res!331465) (not e!311256))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33944 (_ BitVec 32)) Bool)

(assert (=> b!536117 (= res!331465 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(assert (= (and start!48776 res!331470) b!536113))

(assert (= (and b!536113 res!331469) b!536107))

(assert (= (and b!536107 res!331461) b!536110))

(assert (= (and b!536110 res!331472) b!536114))

(assert (= (and b!536114 res!331460) b!536108))

(assert (= (and b!536108 res!331464) b!536117))

(assert (= (and b!536117 res!331465) b!536111))

(assert (= (and b!536111 res!331467) b!536115))

(assert (= (and b!536115 res!331463) b!536106))

(assert (= (and b!536106 res!331462) b!536112))

(assert (= (and b!536112 res!331468) b!536105))

(assert (= (and b!536105 res!331466) b!536109))

(assert (= (and b!536109 res!331471) b!536116))

(declare-fun m!515579 () Bool)

(assert (=> b!536115 m!515579))

(declare-fun m!515581 () Bool)

(assert (=> b!536115 m!515581))

(declare-fun m!515583 () Bool)

(assert (=> b!536111 m!515583))

(declare-fun m!515585 () Bool)

(assert (=> start!48776 m!515585))

(declare-fun m!515587 () Bool)

(assert (=> start!48776 m!515587))

(declare-fun m!515589 () Bool)

(assert (=> b!536110 m!515589))

(declare-fun m!515591 () Bool)

(assert (=> b!536117 m!515591))

(declare-fun m!515593 () Bool)

(assert (=> b!536108 m!515593))

(declare-fun m!515595 () Bool)

(assert (=> b!536109 m!515595))

(assert (=> b!536107 m!515581))

(assert (=> b!536107 m!515581))

(declare-fun m!515597 () Bool)

(assert (=> b!536107 m!515597))

(declare-fun m!515599 () Bool)

(assert (=> b!536105 m!515599))

(assert (=> b!536105 m!515581))

(declare-fun m!515601 () Bool)

(assert (=> b!536114 m!515601))

(assert (=> b!536106 m!515581))

(assert (=> b!536106 m!515581))

(declare-fun m!515603 () Bool)

(assert (=> b!536106 m!515603))

(assert (=> b!536116 m!515581))

(assert (=> b!536116 m!515581))

(declare-fun m!515605 () Bool)

(assert (=> b!536116 m!515605))

(assert (=> b!536112 m!515581))

(assert (=> b!536112 m!515581))

(declare-fun m!515607 () Bool)

(assert (=> b!536112 m!515607))

(assert (=> b!536112 m!515607))

(assert (=> b!536112 m!515581))

(declare-fun m!515609 () Bool)

(assert (=> b!536112 m!515609))

(push 1)

(assert (not b!536111))

(assert (not b!536108))

(assert (not b!536116))

(assert (not start!48776))

(assert (not b!536112))

(assert (not b!536117))

(assert (not b!536109))

(assert (not b!536106))

(assert (not b!536107))

(assert (not b!536110))

(assert (not b!536114))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

