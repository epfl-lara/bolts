; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48824 () Bool)

(assert start!48824)

(declare-fun b!537041 () Bool)

(declare-fun e!311613 () Bool)

(declare-fun e!311614 () Bool)

(assert (=> b!537041 (= e!311613 e!311614)))

(declare-fun res!332396 () Bool)

(assert (=> b!537041 (=> (not res!332396) (not e!311614))))

(declare-datatypes ((SeekEntryResult!4796 0))(
  ( (MissingZero!4796 (index!21408 (_ BitVec 32))) (Found!4796 (index!21409 (_ BitVec 32))) (Intermediate!4796 (undefined!5608 Bool) (index!21410 (_ BitVec 32)) (x!50366 (_ BitVec 32))) (Undefined!4796) (MissingVacant!4796 (index!21411 (_ BitVec 32))) )
))
(declare-fun lt!246305 () SeekEntryResult!4796)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!537041 (= res!332396 (or (= lt!246305 (MissingZero!4796 i!1153)) (= lt!246305 (MissingVacant!4796 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k!1998 () (_ BitVec 64))

(declare-datatypes ((array!33992 0))(
  ( (array!33993 (arr!16331 (Array (_ BitVec 32) (_ BitVec 64))) (size!16695 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33992)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33992 (_ BitVec 32)) SeekEntryResult!4796)

(assert (=> b!537041 (= lt!246305 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!537042 () Bool)

(declare-fun e!311617 () Bool)

(declare-fun e!311615 () Bool)

(assert (=> b!537042 (= e!311617 e!311615)))

(declare-fun res!332398 () Bool)

(assert (=> b!537042 (=> (not res!332398) (not e!311615))))

(declare-fun lt!246302 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!537042 (= res!332398 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246302 #b00000000000000000000000000000000) (bvslt lt!246302 (size!16695 a!3154))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537042 (= lt!246302 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!537043 () Bool)

(declare-fun res!332400 () Bool)

(assert (=> b!537043 (=> (not res!332400) (not e!311613))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!537043 (= res!332400 (validKeyInArray!0 k!1998))))

(declare-fun b!537044 () Bool)

(declare-fun res!332405 () Bool)

(assert (=> b!537044 (=> (not res!332405) (not e!311613))))

(declare-fun arrayContainsKey!0 (array!33992 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!537044 (= res!332405 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!537045 () Bool)

(assert (=> b!537045 (= e!311614 e!311617)))

(declare-fun res!332408 () Bool)

(assert (=> b!537045 (=> (not res!332408) (not e!311617))))

(declare-fun lt!246303 () SeekEntryResult!4796)

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!537045 (= res!332408 (= lt!246303 (Intermediate!4796 false resIndex!32 resX!32)))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33992 (_ BitVec 32)) SeekEntryResult!4796)

(assert (=> b!537045 (= lt!246303 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16331 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537046 () Bool)

(declare-fun res!332399 () Bool)

(assert (=> b!537046 (=> (not res!332399) (not e!311614))))

(declare-datatypes ((List!10503 0))(
  ( (Nil!10500) (Cons!10499 (h!11442 (_ BitVec 64)) (t!16739 List!10503)) )
))
(declare-fun arrayNoDuplicates!0 (array!33992 (_ BitVec 32) List!10503) Bool)

(assert (=> b!537046 (= res!332399 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10500))))

(declare-fun b!537047 () Bool)

(assert (=> b!537047 (= e!311615 false)))

(declare-fun lt!246304 () SeekEntryResult!4796)

(assert (=> b!537047 (= lt!246304 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246302 (select (arr!16331 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537048 () Bool)

(declare-fun res!332403 () Bool)

(assert (=> b!537048 (=> (not res!332403) (not e!311613))))

(assert (=> b!537048 (= res!332403 (validKeyInArray!0 (select (arr!16331 a!3154) j!147)))))

(declare-fun b!537049 () Bool)

(declare-fun res!332407 () Bool)

(assert (=> b!537049 (=> (not res!332407) (not e!311617))))

(assert (=> b!537049 (= res!332407 (and (not (= (select (arr!16331 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16331 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16331 a!3154) index!1177) (select (arr!16331 a!3154) j!147)))))))

(declare-fun b!537051 () Bool)

(declare-fun res!332397 () Bool)

(assert (=> b!537051 (=> (not res!332397) (not e!311614))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33992 (_ BitVec 32)) Bool)

(assert (=> b!537051 (= res!332397 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!537052 () Bool)

(declare-fun res!332402 () Bool)

(assert (=> b!537052 (=> (not res!332402) (not e!311617))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537052 (= res!332402 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16331 a!3154) j!147) mask!3216) (select (arr!16331 a!3154) j!147) a!3154 mask!3216) lt!246303))))

(declare-fun b!537053 () Bool)

(declare-fun res!332401 () Bool)

(assert (=> b!537053 (=> (not res!332401) (not e!311614))))

(assert (=> b!537053 (= res!332401 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16695 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16695 a!3154)) (= (select (arr!16331 a!3154) resIndex!32) (select (arr!16331 a!3154) j!147))))))

(declare-fun b!537050 () Bool)

(declare-fun res!332404 () Bool)

(assert (=> b!537050 (=> (not res!332404) (not e!311613))))

(assert (=> b!537050 (= res!332404 (and (= (size!16695 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16695 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16695 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!332406 () Bool)

(assert (=> start!48824 (=> (not res!332406) (not e!311613))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48824 (= res!332406 (validMask!0 mask!3216))))

(assert (=> start!48824 e!311613))

(assert (=> start!48824 true))

(declare-fun array_inv!12105 (array!33992) Bool)

(assert (=> start!48824 (array_inv!12105 a!3154)))

(assert (= (and start!48824 res!332406) b!537050))

(assert (= (and b!537050 res!332404) b!537048))

(assert (= (and b!537048 res!332403) b!537043))

(assert (= (and b!537043 res!332400) b!537044))

(assert (= (and b!537044 res!332405) b!537041))

(assert (= (and b!537041 res!332396) b!537051))

(assert (= (and b!537051 res!332397) b!537046))

(assert (= (and b!537046 res!332399) b!537053))

(assert (= (and b!537053 res!332401) b!537045))

(assert (= (and b!537045 res!332408) b!537052))

(assert (= (and b!537052 res!332402) b!537049))

(assert (= (and b!537049 res!332407) b!537042))

(assert (= (and b!537042 res!332398) b!537047))

(declare-fun m!516347 () Bool)

(assert (=> b!537044 m!516347))

(declare-fun m!516349 () Bool)

(assert (=> b!537042 m!516349))

(declare-fun m!516351 () Bool)

(assert (=> b!537045 m!516351))

(assert (=> b!537045 m!516351))

(declare-fun m!516353 () Bool)

(assert (=> b!537045 m!516353))

(assert (=> b!537052 m!516351))

(assert (=> b!537052 m!516351))

(declare-fun m!516355 () Bool)

(assert (=> b!537052 m!516355))

(assert (=> b!537052 m!516355))

(assert (=> b!537052 m!516351))

(declare-fun m!516357 () Bool)

(assert (=> b!537052 m!516357))

(declare-fun m!516359 () Bool)

(assert (=> b!537046 m!516359))

(assert (=> b!537048 m!516351))

(assert (=> b!537048 m!516351))

(declare-fun m!516361 () Bool)

(assert (=> b!537048 m!516361))

(assert (=> b!537047 m!516351))

(assert (=> b!537047 m!516351))

(declare-fun m!516363 () Bool)

(assert (=> b!537047 m!516363))

(declare-fun m!516365 () Bool)

(assert (=> b!537051 m!516365))

(declare-fun m!516367 () Bool)

(assert (=> b!537053 m!516367))

(assert (=> b!537053 m!516351))

(declare-fun m!516369 () Bool)

(assert (=> b!537041 m!516369))

(declare-fun m!516371 () Bool)

(assert (=> start!48824 m!516371))

(declare-fun m!516373 () Bool)

(assert (=> start!48824 m!516373))

(declare-fun m!516375 () Bool)

(assert (=> b!537049 m!516375))

(assert (=> b!537049 m!516351))

(declare-fun m!516377 () Bool)

(assert (=> b!537043 m!516377))

(push 1)

(assert (not b!537041))

(assert (not b!537044))

(assert (not b!537046))

(assert (not b!537052))

(assert (not start!48824))

(assert (not b!537048))

