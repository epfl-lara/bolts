; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48822 () Bool)

(assert start!48822)

(declare-fun b!537002 () Bool)

(declare-fun e!311601 () Bool)

(declare-fun e!311602 () Bool)

(assert (=> b!537002 (= e!311601 e!311602)))

(declare-fun res!332367 () Bool)

(assert (=> b!537002 (=> (not res!332367) (not e!311602))))

(declare-datatypes ((SeekEntryResult!4795 0))(
  ( (MissingZero!4795 (index!21404 (_ BitVec 32))) (Found!4795 (index!21405 (_ BitVec 32))) (Intermediate!4795 (undefined!5607 Bool) (index!21406 (_ BitVec 32)) (x!50365 (_ BitVec 32))) (Undefined!4795) (MissingVacant!4795 (index!21407 (_ BitVec 32))) )
))
(declare-fun lt!246291 () SeekEntryResult!4795)

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!537002 (= res!332367 (= lt!246291 (Intermediate!4795 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33990 0))(
  ( (array!33991 (arr!16330 (Array (_ BitVec 32) (_ BitVec 64))) (size!16694 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33990)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33990 (_ BitVec 32)) SeekEntryResult!4795)

(assert (=> b!537002 (= lt!246291 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16330 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537003 () Bool)

(declare-fun res!332359 () Bool)

(assert (=> b!537003 (=> (not res!332359) (not e!311601))))

(assert (=> b!537003 (= res!332359 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16694 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16694 a!3154)) (= (select (arr!16330 a!3154) resIndex!32) (select (arr!16330 a!3154) j!147))))))

(declare-fun b!537004 () Bool)

(declare-fun e!311599 () Bool)

(assert (=> b!537004 (= e!311599 false)))

(declare-fun lt!246293 () SeekEntryResult!4795)

(declare-fun lt!246292 () (_ BitVec 32))

(assert (=> b!537004 (= lt!246293 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246292 (select (arr!16330 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537005 () Bool)

(declare-fun res!332369 () Bool)

(assert (=> b!537005 (=> (not res!332369) (not e!311601))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33990 (_ BitVec 32)) Bool)

(assert (=> b!537005 (= res!332369 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!537006 () Bool)

(declare-fun res!332357 () Bool)

(declare-fun e!311598 () Bool)

(assert (=> b!537006 (=> (not res!332357) (not e!311598))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!537006 (= res!332357 (and (= (size!16694 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16694 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16694 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!537007 () Bool)

(declare-fun res!332365 () Bool)

(assert (=> b!537007 (=> (not res!332365) (not e!311598))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33990 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!537007 (= res!332365 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!537008 () Bool)

(declare-fun res!332358 () Bool)

(assert (=> b!537008 (=> (not res!332358) (not e!311602))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537008 (= res!332358 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16330 a!3154) j!147) mask!3216) (select (arr!16330 a!3154) j!147) a!3154 mask!3216) lt!246291))))

(declare-fun res!332368 () Bool)

(assert (=> start!48822 (=> (not res!332368) (not e!311598))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48822 (= res!332368 (validMask!0 mask!3216))))

(assert (=> start!48822 e!311598))

(assert (=> start!48822 true))

(declare-fun array_inv!12104 (array!33990) Bool)

(assert (=> start!48822 (array_inv!12104 a!3154)))

(declare-fun b!537009 () Bool)

(declare-fun res!332362 () Bool)

(assert (=> b!537009 (=> (not res!332362) (not e!311598))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!537009 (= res!332362 (validKeyInArray!0 k0!1998))))

(declare-fun b!537010 () Bool)

(declare-fun res!332364 () Bool)

(assert (=> b!537010 (=> (not res!332364) (not e!311602))))

(assert (=> b!537010 (= res!332364 (and (not (= (select (arr!16330 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16330 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16330 a!3154) index!1177) (select (arr!16330 a!3154) j!147)))))))

(declare-fun b!537011 () Bool)

(declare-fun res!332366 () Bool)

(assert (=> b!537011 (=> (not res!332366) (not e!311601))))

(declare-datatypes ((List!10502 0))(
  ( (Nil!10499) (Cons!10498 (h!11441 (_ BitVec 64)) (t!16738 List!10502)) )
))
(declare-fun arrayNoDuplicates!0 (array!33990 (_ BitVec 32) List!10502) Bool)

(assert (=> b!537011 (= res!332366 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10499))))

(declare-fun b!537012 () Bool)

(declare-fun res!332361 () Bool)

(assert (=> b!537012 (=> (not res!332361) (not e!311598))))

(assert (=> b!537012 (= res!332361 (validKeyInArray!0 (select (arr!16330 a!3154) j!147)))))

(declare-fun b!537013 () Bool)

(assert (=> b!537013 (= e!311602 e!311599)))

(declare-fun res!332363 () Bool)

(assert (=> b!537013 (=> (not res!332363) (not e!311599))))

(assert (=> b!537013 (= res!332363 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246292 #b00000000000000000000000000000000) (bvslt lt!246292 (size!16694 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537013 (= lt!246292 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!537014 () Bool)

(assert (=> b!537014 (= e!311598 e!311601)))

(declare-fun res!332360 () Bool)

(assert (=> b!537014 (=> (not res!332360) (not e!311601))))

(declare-fun lt!246290 () SeekEntryResult!4795)

(assert (=> b!537014 (= res!332360 (or (= lt!246290 (MissingZero!4795 i!1153)) (= lt!246290 (MissingVacant!4795 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33990 (_ BitVec 32)) SeekEntryResult!4795)

(assert (=> b!537014 (= lt!246290 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(assert (= (and start!48822 res!332368) b!537006))

(assert (= (and b!537006 res!332357) b!537012))

(assert (= (and b!537012 res!332361) b!537009))

(assert (= (and b!537009 res!332362) b!537007))

(assert (= (and b!537007 res!332365) b!537014))

(assert (= (and b!537014 res!332360) b!537005))

(assert (= (and b!537005 res!332369) b!537011))

(assert (= (and b!537011 res!332366) b!537003))

(assert (= (and b!537003 res!332359) b!537002))

(assert (= (and b!537002 res!332367) b!537008))

(assert (= (and b!537008 res!332358) b!537010))

(assert (= (and b!537010 res!332364) b!537013))

(assert (= (and b!537013 res!332363) b!537004))

(declare-fun m!516315 () Bool)

(assert (=> b!537007 m!516315))

(declare-fun m!516317 () Bool)

(assert (=> b!537002 m!516317))

(assert (=> b!537002 m!516317))

(declare-fun m!516319 () Bool)

(assert (=> b!537002 m!516319))

(declare-fun m!516321 () Bool)

(assert (=> b!537009 m!516321))

(declare-fun m!516323 () Bool)

(assert (=> b!537010 m!516323))

(assert (=> b!537010 m!516317))

(assert (=> b!537012 m!516317))

(assert (=> b!537012 m!516317))

(declare-fun m!516325 () Bool)

(assert (=> b!537012 m!516325))

(declare-fun m!516327 () Bool)

(assert (=> start!48822 m!516327))

(declare-fun m!516329 () Bool)

(assert (=> start!48822 m!516329))

(assert (=> b!537008 m!516317))

(assert (=> b!537008 m!516317))

(declare-fun m!516331 () Bool)

(assert (=> b!537008 m!516331))

(assert (=> b!537008 m!516331))

(assert (=> b!537008 m!516317))

(declare-fun m!516333 () Bool)

(assert (=> b!537008 m!516333))

(declare-fun m!516335 () Bool)

(assert (=> b!537013 m!516335))

(assert (=> b!537004 m!516317))

(assert (=> b!537004 m!516317))

(declare-fun m!516337 () Bool)

(assert (=> b!537004 m!516337))

(declare-fun m!516339 () Bool)

(assert (=> b!537005 m!516339))

(declare-fun m!516341 () Bool)

(assert (=> b!537003 m!516341))

(assert (=> b!537003 m!516317))

(declare-fun m!516343 () Bool)

(assert (=> b!537011 m!516343))

(declare-fun m!516345 () Bool)

(assert (=> b!537014 m!516345))

(check-sat (not b!537008) (not b!537002) (not b!537014) (not b!537012) (not b!537011) (not start!48822) (not b!537009) (not b!537004) (not b!537005) (not b!537013) (not b!537007))
(check-sat)
