; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86604 () Bool)

(assert start!86604)

(declare-fun b!1003555 () Bool)

(declare-fun e!565249 () Bool)

(declare-fun e!565244 () Bool)

(assert (=> b!1003555 (= e!565249 e!565244)))

(declare-fun res!673190 () Bool)

(assert (=> b!1003555 (=> (not res!673190) (not e!565244))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9432 0))(
  ( (MissingZero!9432 (index!40098 (_ BitVec 32))) (Found!9432 (index!40099 (_ BitVec 32))) (Intermediate!9432 (undefined!10244 Bool) (index!40100 (_ BitVec 32)) (x!87533 (_ BitVec 32))) (Undefined!9432) (MissingVacant!9432 (index!40101 (_ BitVec 32))) )
))
(declare-fun lt!443744 () SeekEntryResult!9432)

(declare-datatypes ((array!63357 0))(
  ( (array!63358 (arr!30500 (Array (_ BitVec 32) (_ BitVec 64))) (size!31003 (_ BitVec 32))) )
))
(declare-fun lt!443750 () array!63357)

(declare-fun lt!443749 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63357 (_ BitVec 32)) SeekEntryResult!9432)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003555 (= res!673190 (not (= lt!443744 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443749 mask!3464) lt!443749 lt!443750 mask!3464))))))

(declare-fun a!3219 () array!63357)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(assert (=> b!1003555 (= lt!443749 (select (store (arr!30500 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1003555 (= lt!443750 (array!63358 (store (arr!30500 a!3219) i!1194 k0!2224) (size!31003 a!3219)))))

(declare-fun b!1003556 () Bool)

(declare-fun res!673203 () Bool)

(declare-fun e!565245 () Bool)

(assert (=> b!1003556 (=> (not res!673203) (not e!565245))))

(assert (=> b!1003556 (= res!673203 (and (= (size!31003 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31003 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31003 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1003557 () Bool)

(declare-fun res!673204 () Bool)

(declare-fun e!565250 () Bool)

(assert (=> b!1003557 (=> (not res!673204) (not e!565250))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1003557 (= res!673204 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31003 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31003 a!3219))))))

(declare-fun res!673196 () Bool)

(assert (=> start!86604 (=> (not res!673196) (not e!565245))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86604 (= res!673196 (validMask!0 mask!3464))))

(assert (=> start!86604 e!565245))

(declare-fun array_inv!23490 (array!63357) Bool)

(assert (=> start!86604 (array_inv!23490 a!3219)))

(assert (=> start!86604 true))

(declare-fun b!1003558 () Bool)

(declare-fun res!673201 () Bool)

(assert (=> b!1003558 (=> (not res!673201) (not e!565245))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1003558 (= res!673201 (validKeyInArray!0 k0!2224))))

(declare-fun b!1003559 () Bool)

(declare-fun res!673194 () Bool)

(assert (=> b!1003559 (=> (not res!673194) (not e!565245))))

(assert (=> b!1003559 (= res!673194 (validKeyInArray!0 (select (arr!30500 a!3219) j!170)))))

(declare-fun b!1003560 () Bool)

(declare-fun res!673202 () Bool)

(declare-fun e!565248 () Bool)

(assert (=> b!1003560 (=> (not res!673202) (not e!565248))))

(declare-fun lt!443746 () SeekEntryResult!9432)

(declare-fun lt!443748 () (_ BitVec 32))

(assert (=> b!1003560 (= res!673202 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443748 (select (arr!30500 a!3219) j!170) a!3219 mask!3464) lt!443746))))

(declare-fun b!1003561 () Bool)

(declare-fun res!673193 () Bool)

(assert (=> b!1003561 (=> (not res!673193) (not e!565245))))

(declare-fun arrayContainsKey!0 (array!63357 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1003561 (= res!673193 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1003562 () Bool)

(assert (=> b!1003562 (= e!565248 false)))

(declare-fun lt!443751 () SeekEntryResult!9432)

(assert (=> b!1003562 (= lt!443751 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443748 lt!443749 lt!443750 mask!3464))))

(declare-fun b!1003563 () Bool)

(declare-fun res!673199 () Bool)

(assert (=> b!1003563 (=> (not res!673199) (not e!565244))))

(assert (=> b!1003563 (= res!673199 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1003564 () Bool)

(declare-fun res!673195 () Bool)

(assert (=> b!1003564 (=> (not res!673195) (not e!565250))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63357 (_ BitVec 32)) Bool)

(assert (=> b!1003564 (= res!673195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1003565 () Bool)

(declare-fun e!565246 () Bool)

(assert (=> b!1003565 (= e!565246 e!565249)))

(declare-fun res!673192 () Bool)

(assert (=> b!1003565 (=> (not res!673192) (not e!565249))))

(declare-fun lt!443747 () SeekEntryResult!9432)

(assert (=> b!1003565 (= res!673192 (= lt!443747 lt!443746))))

(assert (=> b!1003565 (= lt!443747 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30500 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003566 () Bool)

(declare-fun res!673198 () Bool)

(assert (=> b!1003566 (=> (not res!673198) (not e!565244))))

(assert (=> b!1003566 (= res!673198 (not (= lt!443747 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443749 lt!443750 mask!3464))))))

(declare-fun b!1003567 () Bool)

(declare-fun res!673189 () Bool)

(assert (=> b!1003567 (=> (not res!673189) (not e!565250))))

(declare-datatypes ((List!21302 0))(
  ( (Nil!21299) (Cons!21298 (h!22475 (_ BitVec 64)) (t!30311 List!21302)) )
))
(declare-fun arrayNoDuplicates!0 (array!63357 (_ BitVec 32) List!21302) Bool)

(assert (=> b!1003567 (= res!673189 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21299))))

(declare-fun b!1003568 () Bool)

(assert (=> b!1003568 (= e!565245 e!565250)))

(declare-fun res!673200 () Bool)

(assert (=> b!1003568 (=> (not res!673200) (not e!565250))))

(declare-fun lt!443745 () SeekEntryResult!9432)

(assert (=> b!1003568 (= res!673200 (or (= lt!443745 (MissingVacant!9432 i!1194)) (= lt!443745 (MissingZero!9432 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63357 (_ BitVec 32)) SeekEntryResult!9432)

(assert (=> b!1003568 (= lt!443745 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1003569 () Bool)

(assert (=> b!1003569 (= e!565250 e!565246)))

(declare-fun res!673197 () Bool)

(assert (=> b!1003569 (=> (not res!673197) (not e!565246))))

(assert (=> b!1003569 (= res!673197 (= lt!443744 lt!443746))))

(assert (=> b!1003569 (= lt!443746 (Intermediate!9432 false resIndex!38 resX!38))))

(assert (=> b!1003569 (= lt!443744 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30500 a!3219) j!170) mask!3464) (select (arr!30500 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003570 () Bool)

(assert (=> b!1003570 (= e!565244 e!565248)))

(declare-fun res!673191 () Bool)

(assert (=> b!1003570 (=> (not res!673191) (not e!565248))))

(assert (=> b!1003570 (= res!673191 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443748 #b00000000000000000000000000000000) (bvslt lt!443748 (size!31003 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003570 (= lt!443748 (nextIndex!0 index!1507 x!1245 mask!3464))))

(assert (= (and start!86604 res!673196) b!1003556))

(assert (= (and b!1003556 res!673203) b!1003559))

(assert (= (and b!1003559 res!673194) b!1003558))

(assert (= (and b!1003558 res!673201) b!1003561))

(assert (= (and b!1003561 res!673193) b!1003568))

(assert (= (and b!1003568 res!673200) b!1003564))

(assert (= (and b!1003564 res!673195) b!1003567))

(assert (= (and b!1003567 res!673189) b!1003557))

(assert (= (and b!1003557 res!673204) b!1003569))

(assert (= (and b!1003569 res!673197) b!1003565))

(assert (= (and b!1003565 res!673192) b!1003555))

(assert (= (and b!1003555 res!673190) b!1003566))

(assert (= (and b!1003566 res!673198) b!1003563))

(assert (= (and b!1003563 res!673199) b!1003570))

(assert (= (and b!1003570 res!673191) b!1003560))

(assert (= (and b!1003560 res!673202) b!1003562))

(declare-fun m!929341 () Bool)

(assert (=> b!1003555 m!929341))

(assert (=> b!1003555 m!929341))

(declare-fun m!929343 () Bool)

(assert (=> b!1003555 m!929343))

(declare-fun m!929345 () Bool)

(assert (=> b!1003555 m!929345))

(declare-fun m!929347 () Bool)

(assert (=> b!1003555 m!929347))

(declare-fun m!929349 () Bool)

(assert (=> b!1003560 m!929349))

(assert (=> b!1003560 m!929349))

(declare-fun m!929351 () Bool)

(assert (=> b!1003560 m!929351))

(declare-fun m!929353 () Bool)

(assert (=> b!1003566 m!929353))

(declare-fun m!929355 () Bool)

(assert (=> b!1003558 m!929355))

(declare-fun m!929357 () Bool)

(assert (=> b!1003570 m!929357))

(assert (=> b!1003569 m!929349))

(assert (=> b!1003569 m!929349))

(declare-fun m!929359 () Bool)

(assert (=> b!1003569 m!929359))

(assert (=> b!1003569 m!929359))

(assert (=> b!1003569 m!929349))

(declare-fun m!929361 () Bool)

(assert (=> b!1003569 m!929361))

(declare-fun m!929363 () Bool)

(assert (=> b!1003562 m!929363))

(declare-fun m!929365 () Bool)

(assert (=> b!1003564 m!929365))

(declare-fun m!929367 () Bool)

(assert (=> b!1003568 m!929367))

(declare-fun m!929369 () Bool)

(assert (=> b!1003567 m!929369))

(declare-fun m!929371 () Bool)

(assert (=> b!1003561 m!929371))

(assert (=> b!1003559 m!929349))

(assert (=> b!1003559 m!929349))

(declare-fun m!929373 () Bool)

(assert (=> b!1003559 m!929373))

(assert (=> b!1003565 m!929349))

(assert (=> b!1003565 m!929349))

(declare-fun m!929375 () Bool)

(assert (=> b!1003565 m!929375))

(declare-fun m!929377 () Bool)

(assert (=> start!86604 m!929377))

(declare-fun m!929379 () Bool)

(assert (=> start!86604 m!929379))

(check-sat (not b!1003555) (not b!1003568) (not b!1003560) (not start!86604) (not b!1003564) (not b!1003558) (not b!1003567) (not b!1003565) (not b!1003570) (not b!1003569) (not b!1003566) (not b!1003562) (not b!1003561) (not b!1003559))
(check-sat)
