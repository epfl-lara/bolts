; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48952 () Bool)

(assert start!48952)

(declare-fun b!539261 () Bool)

(declare-fun res!334616 () Bool)

(declare-fun e!312569 () Bool)

(assert (=> b!539261 (=> (not res!334616) (not e!312569))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34120 0))(
  ( (array!34121 (arr!16395 (Array (_ BitVec 32) (_ BitVec 64))) (size!16759 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34120)

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4860 0))(
  ( (MissingZero!4860 (index!21664 (_ BitVec 32))) (Found!4860 (index!21665 (_ BitVec 32))) (Intermediate!4860 (undefined!5672 Bool) (index!21666 (_ BitVec 32)) (x!50606 (_ BitVec 32))) (Undefined!4860) (MissingVacant!4860 (index!21667 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34120 (_ BitVec 32)) SeekEntryResult!4860)

(assert (=> b!539261 (= res!334616 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16395 a!3154) j!147) a!3154 mask!3216) (Intermediate!4860 false resIndex!32 resX!32)))))

(declare-fun b!539262 () Bool)

(declare-fun e!312570 () Bool)

(assert (=> b!539262 (= e!312570 e!312569)))

(declare-fun res!334617 () Bool)

(assert (=> b!539262 (=> (not res!334617) (not e!312569))))

(declare-fun lt!247103 () SeekEntryResult!4860)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!539262 (= res!334617 (or (= lt!247103 (MissingZero!4860 i!1153)) (= lt!247103 (MissingVacant!4860 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34120 (_ BitVec 32)) SeekEntryResult!4860)

(assert (=> b!539262 (= lt!247103 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!539263 () Bool)

(declare-fun res!334623 () Bool)

(assert (=> b!539263 (=> (not res!334623) (not e!312570))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!539263 (= res!334623 (validKeyInArray!0 (select (arr!16395 a!3154) j!147)))))

(declare-fun b!539264 () Bool)

(declare-fun res!334624 () Bool)

(assert (=> b!539264 (=> (not res!334624) (not e!312570))))

(assert (=> b!539264 (= res!334624 (validKeyInArray!0 k!1998))))

(declare-fun res!334620 () Bool)

(assert (=> start!48952 (=> (not res!334620) (not e!312570))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48952 (= res!334620 (validMask!0 mask!3216))))

(assert (=> start!48952 e!312570))

(assert (=> start!48952 true))

(declare-fun array_inv!12169 (array!34120) Bool)

(assert (=> start!48952 (array_inv!12169 a!3154)))

(declare-fun b!539265 () Bool)

(assert (=> b!539265 (= e!312569 false)))

(declare-fun lt!247102 () SeekEntryResult!4860)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!539265 (= lt!247102 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16395 a!3154) j!147) mask!3216) (select (arr!16395 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!539266 () Bool)

(declare-fun res!334621 () Bool)

(assert (=> b!539266 (=> (not res!334621) (not e!312569))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34120 (_ BitVec 32)) Bool)

(assert (=> b!539266 (= res!334621 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!539267 () Bool)

(declare-fun res!334618 () Bool)

(assert (=> b!539267 (=> (not res!334618) (not e!312569))))

(declare-datatypes ((List!10567 0))(
  ( (Nil!10564) (Cons!10563 (h!11506 (_ BitVec 64)) (t!16803 List!10567)) )
))
(declare-fun arrayNoDuplicates!0 (array!34120 (_ BitVec 32) List!10567) Bool)

(assert (=> b!539267 (= res!334618 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10564))))

(declare-fun b!539268 () Bool)

(declare-fun res!334622 () Bool)

(assert (=> b!539268 (=> (not res!334622) (not e!312570))))

(declare-fun arrayContainsKey!0 (array!34120 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!539268 (= res!334622 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!539269 () Bool)

(declare-fun res!334619 () Bool)

(assert (=> b!539269 (=> (not res!334619) (not e!312570))))

(assert (=> b!539269 (= res!334619 (and (= (size!16759 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16759 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16759 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!539270 () Bool)

(declare-fun res!334625 () Bool)

(assert (=> b!539270 (=> (not res!334625) (not e!312569))))

(assert (=> b!539270 (= res!334625 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16759 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16759 a!3154)) (= (select (arr!16395 a!3154) resIndex!32) (select (arr!16395 a!3154) j!147))))))

(assert (= (and start!48952 res!334620) b!539269))

(assert (= (and b!539269 res!334619) b!539263))

(assert (= (and b!539263 res!334623) b!539264))

(assert (= (and b!539264 res!334624) b!539268))

(assert (= (and b!539268 res!334622) b!539262))

(assert (= (and b!539262 res!334617) b!539266))

(assert (= (and b!539266 res!334621) b!539267))

(assert (= (and b!539267 res!334618) b!539270))

(assert (= (and b!539270 res!334625) b!539261))

(assert (= (and b!539261 res!334616) b!539265))

(declare-fun m!518317 () Bool)

(assert (=> b!539263 m!518317))

(assert (=> b!539263 m!518317))

(declare-fun m!518319 () Bool)

(assert (=> b!539263 m!518319))

(assert (=> b!539265 m!518317))

(assert (=> b!539265 m!518317))

(declare-fun m!518321 () Bool)

(assert (=> b!539265 m!518321))

(assert (=> b!539265 m!518321))

(assert (=> b!539265 m!518317))

(declare-fun m!518323 () Bool)

(assert (=> b!539265 m!518323))

(declare-fun m!518325 () Bool)

(assert (=> b!539264 m!518325))

(declare-fun m!518327 () Bool)

(assert (=> b!539268 m!518327))

(declare-fun m!518329 () Bool)

(assert (=> b!539270 m!518329))

(assert (=> b!539270 m!518317))

(assert (=> b!539261 m!518317))

(assert (=> b!539261 m!518317))

(declare-fun m!518331 () Bool)

(assert (=> b!539261 m!518331))

(declare-fun m!518333 () Bool)

(assert (=> b!539262 m!518333))

(declare-fun m!518335 () Bool)

(assert (=> start!48952 m!518335))

(declare-fun m!518337 () Bool)

(assert (=> start!48952 m!518337))

(declare-fun m!518339 () Bool)

(assert (=> b!539266 m!518339))

(declare-fun m!518341 () Bool)

(assert (=> b!539267 m!518341))

(push 1)

