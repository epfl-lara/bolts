; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86562 () Bool)

(assert start!86562)

(declare-fun b!1002547 () Bool)

(declare-fun res!672192 () Bool)

(declare-fun e!564805 () Bool)

(assert (=> b!1002547 (=> (not res!672192) (not e!564805))))

(declare-datatypes ((array!63315 0))(
  ( (array!63316 (arr!30479 (Array (_ BitVec 32) (_ BitVec 64))) (size!30982 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63315)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1002547 (= res!672192 (and (= (size!30982 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30982 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30982 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1002548 () Bool)

(declare-fun e!564807 () Bool)

(declare-fun e!564804 () Bool)

(assert (=> b!1002548 (= e!564807 e!564804)))

(declare-fun res!672191 () Bool)

(assert (=> b!1002548 (=> (not res!672191) (not e!564804))))

(declare-datatypes ((SeekEntryResult!9411 0))(
  ( (MissingZero!9411 (index!40014 (_ BitVec 32))) (Found!9411 (index!40015 (_ BitVec 32))) (Intermediate!9411 (undefined!10223 Bool) (index!40016 (_ BitVec 32)) (x!87456 (_ BitVec 32))) (Undefined!9411) (MissingVacant!9411 (index!40017 (_ BitVec 32))) )
))
(declare-fun lt!443245 () SeekEntryResult!9411)

(declare-fun lt!443240 () array!63315)

(declare-fun lt!443241 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63315 (_ BitVec 32)) SeekEntryResult!9411)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002548 (= res!672191 (not (= lt!443245 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443241 mask!3464) lt!443241 lt!443240 mask!3464))))))

(declare-fun k0!2224 () (_ BitVec 64))

(assert (=> b!1002548 (= lt!443241 (select (store (arr!30479 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1002548 (= lt!443240 (array!63316 (store (arr!30479 a!3219) i!1194 k0!2224) (size!30982 a!3219)))))

(declare-fun b!1002549 () Bool)

(declare-fun e!564809 () Bool)

(assert (=> b!1002549 (= e!564809 e!564807)))

(declare-fun res!672184 () Bool)

(assert (=> b!1002549 (=> (not res!672184) (not e!564807))))

(declare-fun lt!443242 () SeekEntryResult!9411)

(declare-fun lt!443247 () SeekEntryResult!9411)

(assert (=> b!1002549 (= res!672184 (= lt!443242 lt!443247))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1002549 (= lt!443242 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30479 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002550 () Bool)

(declare-fun e!564803 () Bool)

(assert (=> b!1002550 (= e!564805 e!564803)))

(declare-fun res!672187 () Bool)

(assert (=> b!1002550 (=> (not res!672187) (not e!564803))))

(declare-fun lt!443244 () SeekEntryResult!9411)

(assert (=> b!1002550 (= res!672187 (or (= lt!443244 (MissingVacant!9411 i!1194)) (= lt!443244 (MissingZero!9411 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63315 (_ BitVec 32)) SeekEntryResult!9411)

(assert (=> b!1002550 (= lt!443244 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1002551 () Bool)

(declare-fun res!672188 () Bool)

(assert (=> b!1002551 (=> (not res!672188) (not e!564804))))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1002551 (= res!672188 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1002552 () Bool)

(declare-fun res!672195 () Bool)

(assert (=> b!1002552 (=> (not res!672195) (not e!564805))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1002552 (= res!672195 (validKeyInArray!0 (select (arr!30479 a!3219) j!170)))))

(declare-fun b!1002553 () Bool)

(declare-fun res!672186 () Bool)

(assert (=> b!1002553 (=> (not res!672186) (not e!564803))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1002553 (= res!672186 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30982 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30982 a!3219))))))

(declare-fun b!1002554 () Bool)

(declare-fun res!672196 () Bool)

(assert (=> b!1002554 (=> (not res!672196) (not e!564803))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63315 (_ BitVec 32)) Bool)

(assert (=> b!1002554 (= res!672196 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1002555 () Bool)

(declare-fun e!564808 () Bool)

(assert (=> b!1002555 (= e!564808 false)))

(declare-fun lt!443246 () SeekEntryResult!9411)

(declare-fun lt!443243 () (_ BitVec 32))

(assert (=> b!1002555 (= lt!443246 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443243 lt!443241 lt!443240 mask!3464))))

(declare-fun b!1002556 () Bool)

(declare-fun res!672190 () Bool)

(assert (=> b!1002556 (=> (not res!672190) (not e!564805))))

(declare-fun arrayContainsKey!0 (array!63315 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1002556 (= res!672190 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1002557 () Bool)

(declare-fun res!672193 () Bool)

(assert (=> b!1002557 (=> (not res!672193) (not e!564803))))

(declare-datatypes ((List!21281 0))(
  ( (Nil!21278) (Cons!21277 (h!22454 (_ BitVec 64)) (t!30290 List!21281)) )
))
(declare-fun arrayNoDuplicates!0 (array!63315 (_ BitVec 32) List!21281) Bool)

(assert (=> b!1002557 (= res!672193 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21278))))

(declare-fun b!1002558 () Bool)

(declare-fun res!672182 () Bool)

(assert (=> b!1002558 (=> (not res!672182) (not e!564804))))

(assert (=> b!1002558 (= res!672182 (not (= lt!443242 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443241 lt!443240 mask!3464))))))

(declare-fun b!1002559 () Bool)

(assert (=> b!1002559 (= e!564804 e!564808)))

(declare-fun res!672181 () Bool)

(assert (=> b!1002559 (=> (not res!672181) (not e!564808))))

(assert (=> b!1002559 (= res!672181 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443243 #b00000000000000000000000000000000) (bvslt lt!443243 (size!30982 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002559 (= lt!443243 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1002560 () Bool)

(declare-fun res!672183 () Bool)

(assert (=> b!1002560 (=> (not res!672183) (not e!564808))))

(assert (=> b!1002560 (= res!672183 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443243 (select (arr!30479 a!3219) j!170) a!3219 mask!3464) lt!443247))))

(declare-fun b!1002561 () Bool)

(assert (=> b!1002561 (= e!564803 e!564809)))

(declare-fun res!672194 () Bool)

(assert (=> b!1002561 (=> (not res!672194) (not e!564809))))

(assert (=> b!1002561 (= res!672194 (= lt!443245 lt!443247))))

(assert (=> b!1002561 (= lt!443247 (Intermediate!9411 false resIndex!38 resX!38))))

(assert (=> b!1002561 (= lt!443245 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30479 a!3219) j!170) mask!3464) (select (arr!30479 a!3219) j!170) a!3219 mask!3464))))

(declare-fun res!672189 () Bool)

(assert (=> start!86562 (=> (not res!672189) (not e!564805))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86562 (= res!672189 (validMask!0 mask!3464))))

(assert (=> start!86562 e!564805))

(declare-fun array_inv!23469 (array!63315) Bool)

(assert (=> start!86562 (array_inv!23469 a!3219)))

(assert (=> start!86562 true))

(declare-fun b!1002562 () Bool)

(declare-fun res!672185 () Bool)

(assert (=> b!1002562 (=> (not res!672185) (not e!564805))))

(assert (=> b!1002562 (= res!672185 (validKeyInArray!0 k0!2224))))

(assert (= (and start!86562 res!672189) b!1002547))

(assert (= (and b!1002547 res!672192) b!1002552))

(assert (= (and b!1002552 res!672195) b!1002562))

(assert (= (and b!1002562 res!672185) b!1002556))

(assert (= (and b!1002556 res!672190) b!1002550))

(assert (= (and b!1002550 res!672187) b!1002554))

(assert (= (and b!1002554 res!672196) b!1002557))

(assert (= (and b!1002557 res!672193) b!1002553))

(assert (= (and b!1002553 res!672186) b!1002561))

(assert (= (and b!1002561 res!672194) b!1002549))

(assert (= (and b!1002549 res!672184) b!1002548))

(assert (= (and b!1002548 res!672191) b!1002558))

(assert (= (and b!1002558 res!672182) b!1002551))

(assert (= (and b!1002551 res!672188) b!1002559))

(assert (= (and b!1002559 res!672181) b!1002560))

(assert (= (and b!1002560 res!672183) b!1002555))

(declare-fun m!928501 () Bool)

(assert (=> b!1002550 m!928501))

(declare-fun m!928503 () Bool)

(assert (=> b!1002549 m!928503))

(assert (=> b!1002549 m!928503))

(declare-fun m!928505 () Bool)

(assert (=> b!1002549 m!928505))

(declare-fun m!928507 () Bool)

(assert (=> b!1002558 m!928507))

(declare-fun m!928509 () Bool)

(assert (=> b!1002556 m!928509))

(declare-fun m!928511 () Bool)

(assert (=> b!1002557 m!928511))

(assert (=> b!1002560 m!928503))

(assert (=> b!1002560 m!928503))

(declare-fun m!928513 () Bool)

(assert (=> b!1002560 m!928513))

(declare-fun m!928515 () Bool)

(assert (=> b!1002562 m!928515))

(declare-fun m!928517 () Bool)

(assert (=> b!1002559 m!928517))

(declare-fun m!928519 () Bool)

(assert (=> b!1002548 m!928519))

(assert (=> b!1002548 m!928519))

(declare-fun m!928521 () Bool)

(assert (=> b!1002548 m!928521))

(declare-fun m!928523 () Bool)

(assert (=> b!1002548 m!928523))

(declare-fun m!928525 () Bool)

(assert (=> b!1002548 m!928525))

(declare-fun m!928527 () Bool)

(assert (=> b!1002554 m!928527))

(assert (=> b!1002561 m!928503))

(assert (=> b!1002561 m!928503))

(declare-fun m!928529 () Bool)

(assert (=> b!1002561 m!928529))

(assert (=> b!1002561 m!928529))

(assert (=> b!1002561 m!928503))

(declare-fun m!928531 () Bool)

(assert (=> b!1002561 m!928531))

(declare-fun m!928533 () Bool)

(assert (=> b!1002555 m!928533))

(declare-fun m!928535 () Bool)

(assert (=> start!86562 m!928535))

(declare-fun m!928537 () Bool)

(assert (=> start!86562 m!928537))

(assert (=> b!1002552 m!928503))

(assert (=> b!1002552 m!928503))

(declare-fun m!928539 () Bool)

(assert (=> b!1002552 m!928539))

(check-sat (not b!1002549) (not start!86562) (not b!1002562) (not b!1002555) (not b!1002552) (not b!1002559) (not b!1002556) (not b!1002560) (not b!1002554) (not b!1002561) (not b!1002557) (not b!1002558) (not b!1002548) (not b!1002550))
(check-sat)
