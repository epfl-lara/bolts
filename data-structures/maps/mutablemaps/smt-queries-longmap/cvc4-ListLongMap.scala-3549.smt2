; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48884 () Bool)

(assert start!48884)

(declare-fun b!538211 () Bool)

(declare-fun res!333571 () Bool)

(declare-fun e!312101 () Bool)

(assert (=> b!538211 (=> (not res!333571) (not e!312101))))

(declare-datatypes ((array!34052 0))(
  ( (array!34053 (arr!16361 (Array (_ BitVec 32) (_ BitVec 64))) (size!16725 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34052)

(declare-datatypes ((List!10533 0))(
  ( (Nil!10530) (Cons!10529 (h!11472 (_ BitVec 64)) (t!16769 List!10533)) )
))
(declare-fun arrayNoDuplicates!0 (array!34052 (_ BitVec 32) List!10533) Bool)

(assert (=> b!538211 (= res!333571 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10530))))

(declare-fun res!333574 () Bool)

(declare-fun e!312098 () Bool)

(assert (=> start!48884 (=> (not res!333574) (not e!312098))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48884 (= res!333574 (validMask!0 mask!3216))))

(assert (=> start!48884 e!312098))

(assert (=> start!48884 true))

(declare-fun array_inv!12135 (array!34052) Bool)

(assert (=> start!48884 (array_inv!12135 a!3154)))

(declare-fun b!538212 () Bool)

(declare-fun res!333568 () Bool)

(assert (=> b!538212 (=> (not res!333568) (not e!312101))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!538212 (= res!333568 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16725 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16725 a!3154)) (= (select (arr!16361 a!3154) resIndex!32) (select (arr!16361 a!3154) j!147))))))

(declare-fun b!538213 () Bool)

(declare-fun res!333567 () Bool)

(assert (=> b!538213 (=> (not res!333567) (not e!312098))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538213 (= res!333567 (validKeyInArray!0 (select (arr!16361 a!3154) j!147)))))

(declare-fun b!538214 () Bool)

(declare-fun e!312100 () Bool)

(assert (=> b!538214 (= e!312100 (not (bvsge mask!3216 #b00000000000000000000000000000000)))))

(declare-fun lt!246715 () (_ BitVec 32))

(declare-fun k!1998 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4826 0))(
  ( (MissingZero!4826 (index!21528 (_ BitVec 32))) (Found!4826 (index!21529 (_ BitVec 32))) (Intermediate!4826 (undefined!5638 Bool) (index!21530 (_ BitVec 32)) (x!50476 (_ BitVec 32))) (Undefined!4826) (MissingVacant!4826 (index!21531 (_ BitVec 32))) )
))
(declare-fun lt!246716 () SeekEntryResult!4826)

(declare-fun i!1153 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34052 (_ BitVec 32)) SeekEntryResult!4826)

(assert (=> b!538214 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246715 (select (store (arr!16361 a!3154) i!1153 k!1998) j!147) (array!34053 (store (arr!16361 a!3154) i!1153 k!1998) (size!16725 a!3154)) mask!3216) lt!246716)))

(declare-datatypes ((Unit!16830 0))(
  ( (Unit!16831) )
))
(declare-fun lt!246718 () Unit!16830)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34052 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16830)

(assert (=> b!538214 (= lt!246718 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k!1998 j!147 lt!246715 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(declare-fun b!538215 () Bool)

(declare-fun e!312103 () Bool)

(assert (=> b!538215 (= e!312101 e!312103)))

(declare-fun res!333575 () Bool)

(assert (=> b!538215 (=> (not res!333575) (not e!312103))))

(declare-fun lt!246714 () SeekEntryResult!4826)

(assert (=> b!538215 (= res!333575 (= lt!246714 lt!246716))))

(assert (=> b!538215 (= lt!246716 (Intermediate!4826 false resIndex!32 resX!32))))

(assert (=> b!538215 (= lt!246714 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16361 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538216 () Bool)

(declare-fun e!312099 () Bool)

(assert (=> b!538216 (= e!312099 e!312100)))

(declare-fun res!333572 () Bool)

(assert (=> b!538216 (=> (not res!333572) (not e!312100))))

(declare-fun lt!246719 () SeekEntryResult!4826)

(declare-fun lt!246713 () SeekEntryResult!4826)

(assert (=> b!538216 (= res!333572 (and (= lt!246719 lt!246716) (= lt!246713 lt!246719)))))

(assert (=> b!538216 (= lt!246719 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246715 (select (arr!16361 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538217 () Bool)

(declare-fun res!333569 () Bool)

(assert (=> b!538217 (=> (not res!333569) (not e!312098))))

(assert (=> b!538217 (= res!333569 (and (= (size!16725 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16725 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16725 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!538218 () Bool)

(assert (=> b!538218 (= e!312098 e!312101)))

(declare-fun res!333577 () Bool)

(assert (=> b!538218 (=> (not res!333577) (not e!312101))))

(declare-fun lt!246717 () SeekEntryResult!4826)

(assert (=> b!538218 (= res!333577 (or (= lt!246717 (MissingZero!4826 i!1153)) (= lt!246717 (MissingVacant!4826 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34052 (_ BitVec 32)) SeekEntryResult!4826)

(assert (=> b!538218 (= lt!246717 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!538219 () Bool)

(declare-fun res!333576 () Bool)

(assert (=> b!538219 (=> (not res!333576) (not e!312098))))

(assert (=> b!538219 (= res!333576 (validKeyInArray!0 k!1998))))

(declare-fun b!538220 () Bool)

(declare-fun e!312102 () Bool)

(assert (=> b!538220 (= e!312102 e!312099)))

(declare-fun res!333573 () Bool)

(assert (=> b!538220 (=> (not res!333573) (not e!312099))))

(assert (=> b!538220 (= res!333573 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246715 #b00000000000000000000000000000000) (bvslt lt!246715 (size!16725 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538220 (= lt!246715 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!538221 () Bool)

(assert (=> b!538221 (= e!312103 e!312102)))

(declare-fun res!333570 () Bool)

(assert (=> b!538221 (=> (not res!333570) (not e!312102))))

(assert (=> b!538221 (= res!333570 (and (= lt!246713 lt!246714) (not (= (select (arr!16361 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16361 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16361 a!3154) index!1177) (select (arr!16361 a!3154) j!147)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538221 (= lt!246713 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16361 a!3154) j!147) mask!3216) (select (arr!16361 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538222 () Bool)

(declare-fun res!333578 () Bool)

(assert (=> b!538222 (=> (not res!333578) (not e!312098))))

(declare-fun arrayContainsKey!0 (array!34052 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538222 (= res!333578 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!538223 () Bool)

(declare-fun res!333566 () Bool)

(assert (=> b!538223 (=> (not res!333566) (not e!312101))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34052 (_ BitVec 32)) Bool)

(assert (=> b!538223 (= res!333566 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(assert (= (and start!48884 res!333574) b!538217))

(assert (= (and b!538217 res!333569) b!538213))

(assert (= (and b!538213 res!333567) b!538219))

(assert (= (and b!538219 res!333576) b!538222))

(assert (= (and b!538222 res!333578) b!538218))

(assert (= (and b!538218 res!333577) b!538223))

(assert (= (and b!538223 res!333566) b!538211))

(assert (= (and b!538211 res!333571) b!538212))

(assert (= (and b!538212 res!333568) b!538215))

(assert (= (and b!538215 res!333575) b!538221))

(assert (= (and b!538221 res!333570) b!538220))

(assert (= (and b!538220 res!333573) b!538216))

(assert (= (and b!538216 res!333572) b!538214))

(declare-fun m!517347 () Bool)

(assert (=> b!538218 m!517347))

(declare-fun m!517349 () Bool)

(assert (=> b!538216 m!517349))

(assert (=> b!538216 m!517349))

(declare-fun m!517351 () Bool)

(assert (=> b!538216 m!517351))

(declare-fun m!517353 () Bool)

(assert (=> b!538212 m!517353))

(assert (=> b!538212 m!517349))

(declare-fun m!517355 () Bool)

(assert (=> b!538222 m!517355))

(declare-fun m!517357 () Bool)

(assert (=> b!538214 m!517357))

(declare-fun m!517359 () Bool)

(assert (=> b!538214 m!517359))

(assert (=> b!538214 m!517359))

(declare-fun m!517361 () Bool)

(assert (=> b!538214 m!517361))

(declare-fun m!517363 () Bool)

(assert (=> b!538214 m!517363))

(declare-fun m!517365 () Bool)

(assert (=> b!538221 m!517365))

(assert (=> b!538221 m!517349))

(assert (=> b!538221 m!517349))

(declare-fun m!517367 () Bool)

(assert (=> b!538221 m!517367))

(assert (=> b!538221 m!517367))

(assert (=> b!538221 m!517349))

(declare-fun m!517369 () Bool)

(assert (=> b!538221 m!517369))

(declare-fun m!517371 () Bool)

(assert (=> b!538223 m!517371))

(declare-fun m!517373 () Bool)

(assert (=> b!538220 m!517373))

(assert (=> b!538213 m!517349))

(assert (=> b!538213 m!517349))

(declare-fun m!517375 () Bool)

(assert (=> b!538213 m!517375))

(declare-fun m!517377 () Bool)

(assert (=> start!48884 m!517377))

(declare-fun m!517379 () Bool)

(assert (=> start!48884 m!517379))

(assert (=> b!538215 m!517349))

(assert (=> b!538215 m!517349))

(declare-fun m!517381 () Bool)

(assert (=> b!538215 m!517381))

(declare-fun m!517383 () Bool)

(assert (=> b!538219 m!517383))

(declare-fun m!517385 () Bool)

(assert (=> b!538211 m!517385))

(push 1)

(assert (not b!538218))

(assert (not b!538214))

(assert (not b!538223))

