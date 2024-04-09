; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49616 () Bool)

(assert start!49616)

(declare-fun res!339537 () Bool)

(declare-fun e!315285 () Bool)

(assert (=> start!49616 (=> (not res!339537) (not e!315285))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49616 (= res!339537 (validMask!0 mask!3216))))

(assert (=> start!49616 e!315285))

(assert (=> start!49616 true))

(declare-datatypes ((array!34385 0))(
  ( (array!34386 (arr!16517 (Array (_ BitVec 32) (_ BitVec 64))) (size!16881 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34385)

(declare-fun array_inv!12291 (array!34385) Bool)

(assert (=> start!49616 (array_inv!12291 a!3154)))

(declare-fun b!545460 () Bool)

(declare-fun res!339538 () Bool)

(declare-fun e!315286 () Bool)

(assert (=> b!545460 (=> (not res!339538) (not e!315286))))

(declare-datatypes ((List!10689 0))(
  ( (Nil!10686) (Cons!10685 (h!11649 (_ BitVec 64)) (t!16925 List!10689)) )
))
(declare-fun arrayNoDuplicates!0 (array!34385 (_ BitVec 32) List!10689) Bool)

(assert (=> b!545460 (= res!339538 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10686))))

(declare-datatypes ((SeekEntryResult!4982 0))(
  ( (MissingZero!4982 (index!22152 (_ BitVec 32))) (Found!4982 (index!22153 (_ BitVec 32))) (Intermediate!4982 (undefined!5794 Bool) (index!22154 (_ BitVec 32)) (x!51105 (_ BitVec 32))) (Undefined!4982) (MissingVacant!4982 (index!22155 (_ BitVec 32))) )
))
(declare-fun lt!248892 () SeekEntryResult!4982)

(declare-fun lt!248895 () SeekEntryResult!4982)

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun e!315284 () Bool)

(declare-fun b!545461 () Bool)

(declare-fun lt!248896 () SeekEntryResult!4982)

(assert (=> b!545461 (= e!315284 (and (= lt!248892 lt!248896) (= lt!248895 lt!248892) (bvsge (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!1030)) (bvsub #b01111111111111111111111111111110 x!1030))))))

(declare-fun lt!248894 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34385 (_ BitVec 32)) SeekEntryResult!4982)

(assert (=> b!545461 (= lt!248892 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!248894 (select (arr!16517 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545462 () Bool)

(declare-fun e!315283 () Bool)

(declare-fun e!315281 () Bool)

(assert (=> b!545462 (= e!315283 e!315281)))

(declare-fun res!339546 () Bool)

(assert (=> b!545462 (=> (not res!339546) (not e!315281))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun lt!248893 () SeekEntryResult!4982)

(assert (=> b!545462 (= res!339546 (and (= lt!248895 lt!248893) (not (= (select (arr!16517 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16517 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16517 a!3154) index!1177) (select (arr!16517 a!3154) j!147)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545462 (= lt!248895 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16517 a!3154) j!147) mask!3216) (select (arr!16517 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545463 () Bool)

(assert (=> b!545463 (= e!315281 e!315284)))

(declare-fun res!339547 () Bool)

(assert (=> b!545463 (=> (not res!339547) (not e!315284))))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!545463 (= res!339547 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!248894 #b00000000000000000000000000000000) (bvslt lt!248894 (size!16881 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545463 (= lt!248894 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!545464 () Bool)

(declare-fun res!339539 () Bool)

(assert (=> b!545464 (=> (not res!339539) (not e!315285))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!545464 (= res!339539 (validKeyInArray!0 k!1998))))

(declare-fun b!545465 () Bool)

(declare-fun res!339542 () Bool)

(assert (=> b!545465 (=> (not res!339542) (not e!315285))))

(assert (=> b!545465 (= res!339542 (validKeyInArray!0 (select (arr!16517 a!3154) j!147)))))

(declare-fun b!545466 () Bool)

(assert (=> b!545466 (= e!315285 e!315286)))

(declare-fun res!339541 () Bool)

(assert (=> b!545466 (=> (not res!339541) (not e!315286))))

(declare-fun lt!248897 () SeekEntryResult!4982)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!545466 (= res!339541 (or (= lt!248897 (MissingZero!4982 i!1153)) (= lt!248897 (MissingVacant!4982 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34385 (_ BitVec 32)) SeekEntryResult!4982)

(assert (=> b!545466 (= lt!248897 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!545467 () Bool)

(declare-fun res!339548 () Bool)

(assert (=> b!545467 (=> (not res!339548) (not e!315286))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34385 (_ BitVec 32)) Bool)

(assert (=> b!545467 (= res!339548 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!545468 () Bool)

(declare-fun res!339543 () Bool)

(assert (=> b!545468 (=> (not res!339543) (not e!315285))))

(assert (=> b!545468 (= res!339543 (and (= (size!16881 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16881 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16881 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!545469 () Bool)

(declare-fun res!339544 () Bool)

(assert (=> b!545469 (=> (not res!339544) (not e!315286))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!545469 (= res!339544 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16881 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16881 a!3154)) (= (select (arr!16517 a!3154) resIndex!32) (select (arr!16517 a!3154) j!147))))))

(declare-fun b!545470 () Bool)

(assert (=> b!545470 (= e!315286 e!315283)))

(declare-fun res!339545 () Bool)

(assert (=> b!545470 (=> (not res!339545) (not e!315283))))

(assert (=> b!545470 (= res!339545 (= lt!248893 lt!248896))))

(assert (=> b!545470 (= lt!248896 (Intermediate!4982 false resIndex!32 resX!32))))

(assert (=> b!545470 (= lt!248893 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16517 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545471 () Bool)

(declare-fun res!339540 () Bool)

(assert (=> b!545471 (=> (not res!339540) (not e!315285))))

(declare-fun arrayContainsKey!0 (array!34385 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!545471 (= res!339540 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!49616 res!339537) b!545468))

(assert (= (and b!545468 res!339543) b!545465))

(assert (= (and b!545465 res!339542) b!545464))

(assert (= (and b!545464 res!339539) b!545471))

(assert (= (and b!545471 res!339540) b!545466))

(assert (= (and b!545466 res!339541) b!545467))

(assert (= (and b!545467 res!339548) b!545460))

(assert (= (and b!545460 res!339538) b!545469))

(assert (= (and b!545469 res!339544) b!545470))

(assert (= (and b!545470 res!339545) b!545462))

(assert (= (and b!545462 res!339546) b!545463))

(assert (= (and b!545463 res!339547) b!545461))

(declare-fun m!523043 () Bool)

(assert (=> start!49616 m!523043))

(declare-fun m!523045 () Bool)

(assert (=> start!49616 m!523045))

(declare-fun m!523047 () Bool)

(assert (=> b!545471 m!523047))

(declare-fun m!523049 () Bool)

(assert (=> b!545460 m!523049))

(declare-fun m!523051 () Bool)

(assert (=> b!545461 m!523051))

(assert (=> b!545461 m!523051))

(declare-fun m!523053 () Bool)

(assert (=> b!545461 m!523053))

(declare-fun m!523055 () Bool)

(assert (=> b!545464 m!523055))

(declare-fun m!523057 () Bool)

(assert (=> b!545467 m!523057))

(assert (=> b!545470 m!523051))

(assert (=> b!545470 m!523051))

(declare-fun m!523059 () Bool)

(assert (=> b!545470 m!523059))

(declare-fun m!523061 () Bool)

(assert (=> b!545466 m!523061))

(declare-fun m!523063 () Bool)

(assert (=> b!545469 m!523063))

(assert (=> b!545469 m!523051))

(assert (=> b!545465 m!523051))

(assert (=> b!545465 m!523051))

(declare-fun m!523065 () Bool)

(assert (=> b!545465 m!523065))

(declare-fun m!523067 () Bool)

(assert (=> b!545463 m!523067))

(declare-fun m!523069 () Bool)

(assert (=> b!545462 m!523069))

(assert (=> b!545462 m!523051))

(assert (=> b!545462 m!523051))

(declare-fun m!523071 () Bool)

(assert (=> b!545462 m!523071))

(assert (=> b!545462 m!523071))

(assert (=> b!545462 m!523051))

(declare-fun m!523073 () Bool)

(assert (=> b!545462 m!523073))

(push 1)

(assert (not b!545464))

(assert (not b!545463))

(assert (not b!545470))

(assert (not b!545461))

(assert (not b!545460))

(assert (not b!545471))

(assert (not start!49616))

(assert (not b!545462))

(assert (not b!545465))

(assert (not b!545467))

(assert (not b!545466))

(check-sat)

(pop 1)

(push 1)

(check-sat)

