; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49458 () Bool)

(assert start!49458)

(declare-fun b!544218 () Bool)

(declare-fun res!338632 () Bool)

(declare-fun e!314662 () Bool)

(assert (=> b!544218 (=> (not res!338632) (not e!314662))))

(declare-datatypes ((array!34341 0))(
  ( (array!34342 (arr!16498 (Array (_ BitVec 32) (_ BitVec 64))) (size!16862 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34341)

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34341 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!544218 (= res!338632 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!544219 () Bool)

(declare-fun res!338634 () Bool)

(declare-fun e!314660 () Bool)

(assert (=> b!544219 (=> (not res!338634) (not e!314660))))

(declare-datatypes ((List!10670 0))(
  ( (Nil!10667) (Cons!10666 (h!11624 (_ BitVec 64)) (t!16906 List!10670)) )
))
(declare-fun arrayNoDuplicates!0 (array!34341 (_ BitVec 32) List!10670) Bool)

(assert (=> b!544219 (= res!338634 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10667))))

(declare-fun b!544220 () Bool)

(declare-fun res!338641 () Bool)

(declare-fun e!314661 () Bool)

(assert (=> b!544220 (=> (not res!338641) (not e!314661))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4963 0))(
  ( (MissingZero!4963 (index!22076 (_ BitVec 32))) (Found!4963 (index!22077 (_ BitVec 32))) (Intermediate!4963 (undefined!5775 Bool) (index!22078 (_ BitVec 32)) (x!51020 (_ BitVec 32))) (Undefined!4963) (MissingVacant!4963 (index!22079 (_ BitVec 32))) )
))
(declare-fun lt!248446 () SeekEntryResult!4963)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34341 (_ BitVec 32)) SeekEntryResult!4963)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544220 (= res!338641 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16498 a!3154) j!147) mask!3216) (select (arr!16498 a!3154) j!147) a!3154 mask!3216) lt!248446))))

(declare-fun b!544221 () Bool)

(declare-fun res!338636 () Bool)

(assert (=> b!544221 (=> (not res!338636) (not e!314660))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!544221 (= res!338636 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16862 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16862 a!3154)) (= (select (arr!16498 a!3154) resIndex!32) (select (arr!16498 a!3154) j!147))))))

(declare-fun b!544222 () Bool)

(declare-fun res!338635 () Bool)

(assert (=> b!544222 (=> (not res!338635) (not e!314662))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!544222 (= res!338635 (validKeyInArray!0 k0!1998))))

(declare-fun b!544223 () Bool)

(assert (=> b!544223 (= e!314662 e!314660)))

(declare-fun res!338638 () Bool)

(assert (=> b!544223 (=> (not res!338638) (not e!314660))))

(declare-fun lt!248447 () SeekEntryResult!4963)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!544223 (= res!338638 (or (= lt!248447 (MissingZero!4963 i!1153)) (= lt!248447 (MissingVacant!4963 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34341 (_ BitVec 32)) SeekEntryResult!4963)

(assert (=> b!544223 (= lt!248447 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!544224 () Bool)

(declare-fun res!338642 () Bool)

(assert (=> b!544224 (=> (not res!338642) (not e!314660))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34341 (_ BitVec 32)) Bool)

(assert (=> b!544224 (= res!338642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!544225 () Bool)

(assert (=> b!544225 (= e!314660 e!314661)))

(declare-fun res!338639 () Bool)

(assert (=> b!544225 (=> (not res!338639) (not e!314661))))

(assert (=> b!544225 (= res!338639 (= lt!248446 (Intermediate!4963 false resIndex!32 resX!32)))))

(assert (=> b!544225 (= lt!248446 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16498 a!3154) j!147) a!3154 mask!3216))))

(declare-fun res!338640 () Bool)

(assert (=> start!49458 (=> (not res!338640) (not e!314662))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49458 (= res!338640 (validMask!0 mask!3216))))

(assert (=> start!49458 e!314662))

(assert (=> start!49458 true))

(declare-fun array_inv!12272 (array!34341) Bool)

(assert (=> start!49458 (array_inv!12272 a!3154)))

(declare-fun b!544226 () Bool)

(declare-fun res!338633 () Bool)

(assert (=> b!544226 (=> (not res!338633) (not e!314661))))

(assert (=> b!544226 (= res!338633 (and (not (= (select (arr!16498 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16498 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16498 a!3154) index!1177) (select (arr!16498 a!3154) j!147)))))))

(declare-fun b!544227 () Bool)

(declare-fun res!338637 () Bool)

(assert (=> b!544227 (=> (not res!338637) (not e!314662))))

(assert (=> b!544227 (= res!338637 (validKeyInArray!0 (select (arr!16498 a!3154) j!147)))))

(declare-fun b!544228 () Bool)

(assert (=> b!544228 (= e!314661 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvslt (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000)))))

(declare-fun lt!248445 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544228 (= lt!248445 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!544229 () Bool)

(declare-fun res!338631 () Bool)

(assert (=> b!544229 (=> (not res!338631) (not e!314662))))

(assert (=> b!544229 (= res!338631 (and (= (size!16862 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16862 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16862 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!49458 res!338640) b!544229))

(assert (= (and b!544229 res!338631) b!544227))

(assert (= (and b!544227 res!338637) b!544222))

(assert (= (and b!544222 res!338635) b!544218))

(assert (= (and b!544218 res!338632) b!544223))

(assert (= (and b!544223 res!338638) b!544224))

(assert (= (and b!544224 res!338642) b!544219))

(assert (= (and b!544219 res!338634) b!544221))

(assert (= (and b!544221 res!338636) b!544225))

(assert (= (and b!544225 res!338639) b!544220))

(assert (= (and b!544220 res!338641) b!544226))

(assert (= (and b!544226 res!338633) b!544228))

(declare-fun m!522157 () Bool)

(assert (=> b!544220 m!522157))

(assert (=> b!544220 m!522157))

(declare-fun m!522159 () Bool)

(assert (=> b!544220 m!522159))

(assert (=> b!544220 m!522159))

(assert (=> b!544220 m!522157))

(declare-fun m!522161 () Bool)

(assert (=> b!544220 m!522161))

(declare-fun m!522163 () Bool)

(assert (=> b!544219 m!522163))

(declare-fun m!522165 () Bool)

(assert (=> b!544226 m!522165))

(assert (=> b!544226 m!522157))

(assert (=> b!544227 m!522157))

(assert (=> b!544227 m!522157))

(declare-fun m!522167 () Bool)

(assert (=> b!544227 m!522167))

(declare-fun m!522169 () Bool)

(assert (=> b!544222 m!522169))

(declare-fun m!522171 () Bool)

(assert (=> b!544224 m!522171))

(assert (=> b!544225 m!522157))

(assert (=> b!544225 m!522157))

(declare-fun m!522173 () Bool)

(assert (=> b!544225 m!522173))

(declare-fun m!522175 () Bool)

(assert (=> b!544223 m!522175))

(declare-fun m!522177 () Bool)

(assert (=> b!544218 m!522177))

(declare-fun m!522179 () Bool)

(assert (=> start!49458 m!522179))

(declare-fun m!522181 () Bool)

(assert (=> start!49458 m!522181))

(declare-fun m!522183 () Bool)

(assert (=> b!544228 m!522183))

(declare-fun m!522185 () Bool)

(assert (=> b!544221 m!522185))

(assert (=> b!544221 m!522157))

(check-sat (not b!544219) (not start!49458) (not b!544222) (not b!544228) (not b!544225) (not b!544223) (not b!544224) (not b!544220) (not b!544227) (not b!544218))
(check-sat)
