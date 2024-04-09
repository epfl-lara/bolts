; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48948 () Bool)

(assert start!48948)

(declare-fun b!539197 () Bool)

(declare-fun e!312549 () Bool)

(declare-fun x!1030 () (_ BitVec 32))

(assert (=> b!539197 (= e!312549 (bvslt (bvsub #b01111111111111111111111111111110 x!1030) #b00000000000000000000000000000000))))

(declare-fun b!539198 () Bool)

(declare-fun e!312550 () Bool)

(declare-fun e!312547 () Bool)

(assert (=> b!539198 (= e!312550 e!312547)))

(declare-fun res!334554 () Bool)

(assert (=> b!539198 (=> (not res!334554) (not e!312547))))

(declare-datatypes ((SeekEntryResult!4858 0))(
  ( (MissingZero!4858 (index!21656 (_ BitVec 32))) (Found!4858 (index!21657 (_ BitVec 32))) (Intermediate!4858 (undefined!5670 Bool) (index!21658 (_ BitVec 32)) (x!50596 (_ BitVec 32))) (Undefined!4858) (MissingVacant!4858 (index!21659 (_ BitVec 32))) )
))
(declare-fun lt!247090 () SeekEntryResult!4858)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!539198 (= res!334554 (or (= lt!247090 (MissingZero!4858 i!1153)) (= lt!247090 (MissingVacant!4858 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-datatypes ((array!34116 0))(
  ( (array!34117 (arr!16393 (Array (_ BitVec 32) (_ BitVec 64))) (size!16757 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34116)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34116 (_ BitVec 32)) SeekEntryResult!4858)

(assert (=> b!539198 (= lt!247090 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!539199 () Bool)

(declare-fun res!334556 () Bool)

(assert (=> b!539199 (=> (not res!334556) (not e!312547))))

(declare-datatypes ((List!10565 0))(
  ( (Nil!10562) (Cons!10561 (h!11504 (_ BitVec 64)) (t!16801 List!10565)) )
))
(declare-fun arrayNoDuplicates!0 (array!34116 (_ BitVec 32) List!10565) Bool)

(assert (=> b!539199 (= res!334556 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10562))))

(declare-fun b!539200 () Bool)

(declare-fun res!334553 () Bool)

(assert (=> b!539200 (=> (not res!334553) (not e!312550))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!539200 (= res!334553 (validKeyInArray!0 (select (arr!16393 a!3154) j!147)))))

(declare-fun b!539201 () Bool)

(assert (=> b!539201 (= e!312547 e!312549)))

(declare-fun res!334557 () Bool)

(assert (=> b!539201 (=> (not res!334557) (not e!312549))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun lt!247091 () SeekEntryResult!4858)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!539201 (= res!334557 (= lt!247091 (Intermediate!4858 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34116 (_ BitVec 32)) SeekEntryResult!4858)

(assert (=> b!539201 (= lt!247091 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16393 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!539202 () Bool)

(declare-fun res!334560 () Bool)

(assert (=> b!539202 (=> (not res!334560) (not e!312547))))

(assert (=> b!539202 (= res!334560 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16757 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16757 a!3154)) (= (select (arr!16393 a!3154) resIndex!32) (select (arr!16393 a!3154) j!147))))))

(declare-fun b!539203 () Bool)

(declare-fun res!334561 () Bool)

(assert (=> b!539203 (=> (not res!334561) (not e!312549))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!539203 (= res!334561 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16393 a!3154) j!147) mask!3216) (select (arr!16393 a!3154) j!147) a!3154 mask!3216) lt!247091))))

(declare-fun res!334559 () Bool)

(assert (=> start!48948 (=> (not res!334559) (not e!312550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48948 (= res!334559 (validMask!0 mask!3216))))

(assert (=> start!48948 e!312550))

(assert (=> start!48948 true))

(declare-fun array_inv!12167 (array!34116) Bool)

(assert (=> start!48948 (array_inv!12167 a!3154)))

(declare-fun b!539204 () Bool)

(declare-fun res!334555 () Bool)

(assert (=> b!539204 (=> (not res!334555) (not e!312547))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34116 (_ BitVec 32)) Bool)

(assert (=> b!539204 (= res!334555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!539205 () Bool)

(declare-fun res!334558 () Bool)

(assert (=> b!539205 (=> (not res!334558) (not e!312550))))

(assert (=> b!539205 (= res!334558 (validKeyInArray!0 k0!1998))))

(declare-fun b!539206 () Bool)

(declare-fun res!334562 () Bool)

(assert (=> b!539206 (=> (not res!334562) (not e!312550))))

(declare-fun arrayContainsKey!0 (array!34116 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!539206 (= res!334562 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!539207 () Bool)

(declare-fun res!334552 () Bool)

(assert (=> b!539207 (=> (not res!334552) (not e!312550))))

(assert (=> b!539207 (= res!334552 (and (= (size!16757 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16757 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16757 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48948 res!334559) b!539207))

(assert (= (and b!539207 res!334552) b!539200))

(assert (= (and b!539200 res!334553) b!539205))

(assert (= (and b!539205 res!334558) b!539206))

(assert (= (and b!539206 res!334562) b!539198))

(assert (= (and b!539198 res!334554) b!539204))

(assert (= (and b!539204 res!334555) b!539199))

(assert (= (and b!539199 res!334556) b!539202))

(assert (= (and b!539202 res!334560) b!539201))

(assert (= (and b!539201 res!334557) b!539203))

(assert (= (and b!539203 res!334561) b!539197))

(declare-fun m!518265 () Bool)

(assert (=> b!539200 m!518265))

(assert (=> b!539200 m!518265))

(declare-fun m!518267 () Bool)

(assert (=> b!539200 m!518267))

(declare-fun m!518269 () Bool)

(assert (=> b!539205 m!518269))

(declare-fun m!518271 () Bool)

(assert (=> b!539202 m!518271))

(assert (=> b!539202 m!518265))

(declare-fun m!518273 () Bool)

(assert (=> b!539199 m!518273))

(assert (=> b!539201 m!518265))

(assert (=> b!539201 m!518265))

(declare-fun m!518275 () Bool)

(assert (=> b!539201 m!518275))

(assert (=> b!539203 m!518265))

(assert (=> b!539203 m!518265))

(declare-fun m!518277 () Bool)

(assert (=> b!539203 m!518277))

(assert (=> b!539203 m!518277))

(assert (=> b!539203 m!518265))

(declare-fun m!518279 () Bool)

(assert (=> b!539203 m!518279))

(declare-fun m!518281 () Bool)

(assert (=> start!48948 m!518281))

(declare-fun m!518283 () Bool)

(assert (=> start!48948 m!518283))

(declare-fun m!518285 () Bool)

(assert (=> b!539204 m!518285))

(declare-fun m!518287 () Bool)

(assert (=> b!539198 m!518287))

(declare-fun m!518289 () Bool)

(assert (=> b!539206 m!518289))

(check-sat (not b!539205) (not start!48948) (not b!539198) (not b!539206) (not b!539201) (not b!539204) (not b!539199) (not b!539203) (not b!539200))
(check-sat)
