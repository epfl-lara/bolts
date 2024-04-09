; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48956 () Bool)

(assert start!48956)

(declare-fun b!539321 () Bool)

(declare-fun res!334679 () Bool)

(declare-fun e!312587 () Bool)

(assert (=> b!539321 (=> (not res!334679) (not e!312587))))

(declare-datatypes ((array!34124 0))(
  ( (array!34125 (arr!16397 (Array (_ BitVec 32) (_ BitVec 64))) (size!16761 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34124)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34124 (_ BitVec 32)) Bool)

(assert (=> b!539321 (= res!334679 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!539322 () Bool)

(declare-fun res!334678 () Bool)

(assert (=> b!539322 (=> (not res!334678) (not e!312587))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(assert (=> b!539322 (= res!334678 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16761 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16761 a!3154)) (= (select (arr!16397 a!3154) resIndex!32) (select (arr!16397 a!3154) j!147))))))

(declare-fun b!539323 () Bool)

(declare-fun res!334680 () Bool)

(declare-fun e!312589 () Bool)

(assert (=> b!539323 (=> (not res!334680) (not e!312589))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34124 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!539323 (= res!334680 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!539324 () Bool)

(declare-fun res!334681 () Bool)

(assert (=> b!539324 (=> (not res!334681) (not e!312589))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!539324 (= res!334681 (and (= (size!16761 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16761 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16761 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!539325 () Bool)

(assert (=> b!539325 (= e!312587 false)))

(declare-datatypes ((SeekEntryResult!4862 0))(
  ( (MissingZero!4862 (index!21672 (_ BitVec 32))) (Found!4862 (index!21673 (_ BitVec 32))) (Intermediate!4862 (undefined!5674 Bool) (index!21674 (_ BitVec 32)) (x!50608 (_ BitVec 32))) (Undefined!4862) (MissingVacant!4862 (index!21675 (_ BitVec 32))) )
))
(declare-fun lt!247115 () SeekEntryResult!4862)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34124 (_ BitVec 32)) SeekEntryResult!4862)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!539325 (= lt!247115 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16397 a!3154) j!147) mask!3216) (select (arr!16397 a!3154) j!147) a!3154 mask!3216))))

(declare-fun res!334683 () Bool)

(assert (=> start!48956 (=> (not res!334683) (not e!312589))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48956 (= res!334683 (validMask!0 mask!3216))))

(assert (=> start!48956 e!312589))

(assert (=> start!48956 true))

(declare-fun array_inv!12171 (array!34124) Bool)

(assert (=> start!48956 (array_inv!12171 a!3154)))

(declare-fun b!539326 () Bool)

(declare-fun res!334685 () Bool)

(assert (=> b!539326 (=> (not res!334685) (not e!312589))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!539326 (= res!334685 (validKeyInArray!0 k!1998))))

(declare-fun b!539327 () Bool)

(declare-fun res!334677 () Bool)

(assert (=> b!539327 (=> (not res!334677) (not e!312587))))

(assert (=> b!539327 (= res!334677 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16397 a!3154) j!147) a!3154 mask!3216) (Intermediate!4862 false resIndex!32 resX!32)))))

(declare-fun b!539328 () Bool)

(assert (=> b!539328 (= e!312589 e!312587)))

(declare-fun res!334676 () Bool)

(assert (=> b!539328 (=> (not res!334676) (not e!312587))))

(declare-fun lt!247114 () SeekEntryResult!4862)

(assert (=> b!539328 (= res!334676 (or (= lt!247114 (MissingZero!4862 i!1153)) (= lt!247114 (MissingVacant!4862 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34124 (_ BitVec 32)) SeekEntryResult!4862)

(assert (=> b!539328 (= lt!247114 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!539329 () Bool)

(declare-fun res!334682 () Bool)

(assert (=> b!539329 (=> (not res!334682) (not e!312589))))

(assert (=> b!539329 (= res!334682 (validKeyInArray!0 (select (arr!16397 a!3154) j!147)))))

(declare-fun b!539330 () Bool)

(declare-fun res!334684 () Bool)

(assert (=> b!539330 (=> (not res!334684) (not e!312587))))

(declare-datatypes ((List!10569 0))(
  ( (Nil!10566) (Cons!10565 (h!11508 (_ BitVec 64)) (t!16805 List!10569)) )
))
(declare-fun arrayNoDuplicates!0 (array!34124 (_ BitVec 32) List!10569) Bool)

(assert (=> b!539330 (= res!334684 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10566))))

(assert (= (and start!48956 res!334683) b!539324))

(assert (= (and b!539324 res!334681) b!539329))

(assert (= (and b!539329 res!334682) b!539326))

(assert (= (and b!539326 res!334685) b!539323))

(assert (= (and b!539323 res!334680) b!539328))

(assert (= (and b!539328 res!334676) b!539321))

(assert (= (and b!539321 res!334679) b!539330))

(assert (= (and b!539330 res!334684) b!539322))

(assert (= (and b!539322 res!334678) b!539327))

(assert (= (and b!539327 res!334677) b!539325))

(declare-fun m!518369 () Bool)

(assert (=> b!539322 m!518369))

(declare-fun m!518371 () Bool)

(assert (=> b!539322 m!518371))

(assert (=> b!539325 m!518371))

(assert (=> b!539325 m!518371))

(declare-fun m!518373 () Bool)

(assert (=> b!539325 m!518373))

(assert (=> b!539325 m!518373))

(assert (=> b!539325 m!518371))

(declare-fun m!518375 () Bool)

(assert (=> b!539325 m!518375))

(declare-fun m!518377 () Bool)

(assert (=> b!539328 m!518377))

(assert (=> b!539329 m!518371))

(assert (=> b!539329 m!518371))

(declare-fun m!518379 () Bool)

(assert (=> b!539329 m!518379))

(declare-fun m!518381 () Bool)

(assert (=> b!539321 m!518381))

(assert (=> b!539327 m!518371))

(assert (=> b!539327 m!518371))

(declare-fun m!518383 () Bool)

(assert (=> b!539327 m!518383))

(declare-fun m!518385 () Bool)

(assert (=> b!539330 m!518385))

(declare-fun m!518387 () Bool)

(assert (=> start!48956 m!518387))

(declare-fun m!518389 () Bool)

(assert (=> start!48956 m!518389))

(declare-fun m!518391 () Bool)

(assert (=> b!539326 m!518391))

(declare-fun m!518393 () Bool)

(assert (=> b!539323 m!518393))

(push 1)

(assert (not b!539327))

(assert (not b!539329))

(assert (not start!48956))

(assert (not b!539323))

(assert (not b!539321))

(assert (not b!539325))

(assert (not b!539328))

(assert (not b!539326))

(assert (not b!539330))

