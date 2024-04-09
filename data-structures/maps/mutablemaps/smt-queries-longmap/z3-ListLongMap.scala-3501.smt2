; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48594 () Bool)

(assert start!48594)

(declare-fun b!533184 () Bool)

(declare-fun res!328539 () Bool)

(declare-fun e!310285 () Bool)

(assert (=> b!533184 (=> (not res!328539) (not e!310285))))

(declare-datatypes ((array!33762 0))(
  ( (array!33763 (arr!16216 (Array (_ BitVec 32) (_ BitVec 64))) (size!16580 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33762)

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33762 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533184 (= res!328539 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!533185 () Bool)

(declare-fun res!328544 () Bool)

(assert (=> b!533185 (=> (not res!328544) (not e!310285))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533185 (= res!328544 (validKeyInArray!0 k0!1998))))

(declare-fun b!533186 () Bool)

(declare-fun res!328542 () Bool)

(declare-fun e!310284 () Bool)

(assert (=> b!533186 (=> (not res!328542) (not e!310284))))

(declare-datatypes ((List!10388 0))(
  ( (Nil!10385) (Cons!10384 (h!11327 (_ BitVec 64)) (t!16624 List!10388)) )
))
(declare-fun arrayNoDuplicates!0 (array!33762 (_ BitVec 32) List!10388) Bool)

(assert (=> b!533186 (= res!328542 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10385))))

(declare-fun b!533187 () Bool)

(declare-fun res!328540 () Bool)

(assert (=> b!533187 (=> (not res!328540) (not e!310284))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33762 (_ BitVec 32)) Bool)

(assert (=> b!533187 (= res!328540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!533188 () Bool)

(assert (=> b!533188 (= e!310285 e!310284)))

(declare-fun res!328547 () Bool)

(assert (=> b!533188 (=> (not res!328547) (not e!310284))))

(declare-datatypes ((SeekEntryResult!4681 0))(
  ( (MissingZero!4681 (index!20948 (_ BitVec 32))) (Found!4681 (index!20949 (_ BitVec 32))) (Intermediate!4681 (undefined!5493 Bool) (index!20950 (_ BitVec 32)) (x!49947 (_ BitVec 32))) (Undefined!4681) (MissingVacant!4681 (index!20951 (_ BitVec 32))) )
))
(declare-fun lt!245398 () SeekEntryResult!4681)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533188 (= res!328547 (or (= lt!245398 (MissingZero!4681 i!1153)) (= lt!245398 (MissingVacant!4681 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33762 (_ BitVec 32)) SeekEntryResult!4681)

(assert (=> b!533188 (= lt!245398 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!533189 () Bool)

(declare-fun res!328546 () Bool)

(assert (=> b!533189 (=> (not res!328546) (not e!310285))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!533189 (= res!328546 (and (= (size!16580 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16580 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16580 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533190 () Bool)

(declare-fun res!328545 () Bool)

(assert (=> b!533190 (=> (not res!328545) (not e!310284))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!533190 (= res!328545 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16580 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16580 a!3154)) (= (select (arr!16216 a!3154) resIndex!32) (select (arr!16216 a!3154) j!147))))))

(declare-fun b!533191 () Bool)

(declare-fun res!328541 () Bool)

(assert (=> b!533191 (=> (not res!328541) (not e!310285))))

(assert (=> b!533191 (= res!328541 (validKeyInArray!0 (select (arr!16216 a!3154) j!147)))))

(declare-fun res!328543 () Bool)

(assert (=> start!48594 (=> (not res!328543) (not e!310285))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48594 (= res!328543 (validMask!0 mask!3216))))

(assert (=> start!48594 e!310285))

(assert (=> start!48594 true))

(declare-fun array_inv!11990 (array!33762) Bool)

(assert (=> start!48594 (array_inv!11990 a!3154)))

(declare-fun b!533192 () Bool)

(assert (=> b!533192 (= e!310284 false)))

(declare-fun lt!245399 () SeekEntryResult!4681)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33762 (_ BitVec 32)) SeekEntryResult!4681)

(assert (=> b!533192 (= lt!245399 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16216 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48594 res!328543) b!533189))

(assert (= (and b!533189 res!328546) b!533191))

(assert (= (and b!533191 res!328541) b!533185))

(assert (= (and b!533185 res!328544) b!533184))

(assert (= (and b!533184 res!328539) b!533188))

(assert (= (and b!533188 res!328547) b!533187))

(assert (= (and b!533187 res!328540) b!533186))

(assert (= (and b!533186 res!328542) b!533190))

(assert (= (and b!533190 res!328545) b!533192))

(declare-fun m!513113 () Bool)

(assert (=> b!533186 m!513113))

(declare-fun m!513115 () Bool)

(assert (=> b!533188 m!513115))

(declare-fun m!513117 () Bool)

(assert (=> b!533187 m!513117))

(declare-fun m!513119 () Bool)

(assert (=> b!533192 m!513119))

(assert (=> b!533192 m!513119))

(declare-fun m!513121 () Bool)

(assert (=> b!533192 m!513121))

(declare-fun m!513123 () Bool)

(assert (=> start!48594 m!513123))

(declare-fun m!513125 () Bool)

(assert (=> start!48594 m!513125))

(declare-fun m!513127 () Bool)

(assert (=> b!533190 m!513127))

(assert (=> b!533190 m!513119))

(declare-fun m!513129 () Bool)

(assert (=> b!533185 m!513129))

(assert (=> b!533191 m!513119))

(assert (=> b!533191 m!513119))

(declare-fun m!513131 () Bool)

(assert (=> b!533191 m!513131))

(declare-fun m!513133 () Bool)

(assert (=> b!533184 m!513133))

(check-sat (not start!48594) (not b!533184) (not b!533187) (not b!533185) (not b!533186) (not b!533191) (not b!533192) (not b!533188))
(check-sat)
