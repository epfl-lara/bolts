; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86424 () Bool)

(assert start!86424)

(declare-fun b!999714 () Bool)

(declare-fun res!669358 () Bool)

(declare-fun e!563654 () Bool)

(assert (=> b!999714 (=> (not res!669358) (not e!563654))))

(declare-datatypes ((array!63177 0))(
  ( (array!63178 (arr!30410 (Array (_ BitVec 32) (_ BitVec 64))) (size!30913 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63177)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9342 0))(
  ( (MissingZero!9342 (index!39738 (_ BitVec 32))) (Found!9342 (index!39739 (_ BitVec 32))) (Intermediate!9342 (undefined!10154 Bool) (index!39740 (_ BitVec 32)) (x!87203 (_ BitVec 32))) (Undefined!9342) (MissingVacant!9342 (index!39741 (_ BitVec 32))) )
))
(declare-fun lt!442082 () SeekEntryResult!9342)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63177 (_ BitVec 32)) SeekEntryResult!9342)

(assert (=> b!999714 (= res!669358 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30410 a!3219) j!170) a!3219 mask!3464) lt!442082))))

(declare-fun b!999715 () Bool)

(declare-fun res!669348 () Bool)

(declare-fun e!563655 () Bool)

(assert (=> b!999715 (=> (not res!669348) (not e!563655))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!999715 (= res!669348 (and (= (size!30913 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30913 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30913 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!999716 () Bool)

(declare-fun res!669350 () Bool)

(assert (=> b!999716 (=> (not res!669350) (not e!563655))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!999716 (= res!669350 (validKeyInArray!0 (select (arr!30410 a!3219) j!170)))))

(declare-fun res!669349 () Bool)

(assert (=> start!86424 (=> (not res!669349) (not e!563655))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86424 (= res!669349 (validMask!0 mask!3464))))

(assert (=> start!86424 e!563655))

(declare-fun array_inv!23400 (array!63177) Bool)

(assert (=> start!86424 (array_inv!23400 a!3219)))

(assert (=> start!86424 true))

(declare-fun b!999717 () Bool)

(declare-fun res!669352 () Bool)

(declare-fun e!563656 () Bool)

(assert (=> b!999717 (=> (not res!669352) (not e!563656))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!999717 (= res!669352 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30913 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30913 a!3219))))))

(declare-fun b!999718 () Bool)

(assert (=> b!999718 (= e!563656 e!563654)))

(declare-fun res!669356 () Bool)

(assert (=> b!999718 (=> (not res!669356) (not e!563654))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!999718 (= res!669356 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30410 a!3219) j!170) mask!3464) (select (arr!30410 a!3219) j!170) a!3219 mask!3464) lt!442082))))

(assert (=> b!999718 (= lt!442082 (Intermediate!9342 false resIndex!38 resX!38))))

(declare-fun b!999719 () Bool)

(assert (=> b!999719 (= e!563655 e!563656)))

(declare-fun res!669355 () Bool)

(assert (=> b!999719 (=> (not res!669355) (not e!563656))))

(declare-fun lt!442083 () SeekEntryResult!9342)

(assert (=> b!999719 (= res!669355 (or (= lt!442083 (MissingVacant!9342 i!1194)) (= lt!442083 (MissingZero!9342 i!1194))))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63177 (_ BitVec 32)) SeekEntryResult!9342)

(assert (=> b!999719 (= lt!442083 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!999720 () Bool)

(assert (=> b!999720 (= e!563654 false)))

(declare-fun lt!442081 () SeekEntryResult!9342)

(assert (=> b!999720 (= lt!442081 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30410 a!3219) i!1194 k0!2224) j!170) mask!3464) (select (store (arr!30410 a!3219) i!1194 k0!2224) j!170) (array!63178 (store (arr!30410 a!3219) i!1194 k0!2224) (size!30913 a!3219)) mask!3464))))

(declare-fun b!999721 () Bool)

(declare-fun res!669351 () Bool)

(assert (=> b!999721 (=> (not res!669351) (not e!563655))))

(declare-fun arrayContainsKey!0 (array!63177 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!999721 (= res!669351 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!999722 () Bool)

(declare-fun res!669354 () Bool)

(assert (=> b!999722 (=> (not res!669354) (not e!563656))))

(declare-datatypes ((List!21212 0))(
  ( (Nil!21209) (Cons!21208 (h!22385 (_ BitVec 64)) (t!30221 List!21212)) )
))
(declare-fun arrayNoDuplicates!0 (array!63177 (_ BitVec 32) List!21212) Bool)

(assert (=> b!999722 (= res!669354 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21209))))

(declare-fun b!999723 () Bool)

(declare-fun res!669357 () Bool)

(assert (=> b!999723 (=> (not res!669357) (not e!563656))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63177 (_ BitVec 32)) Bool)

(assert (=> b!999723 (= res!669357 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!999724 () Bool)

(declare-fun res!669353 () Bool)

(assert (=> b!999724 (=> (not res!669353) (not e!563655))))

(assert (=> b!999724 (= res!669353 (validKeyInArray!0 k0!2224))))

(assert (= (and start!86424 res!669349) b!999715))

(assert (= (and b!999715 res!669348) b!999716))

(assert (= (and b!999716 res!669350) b!999724))

(assert (= (and b!999724 res!669353) b!999721))

(assert (= (and b!999721 res!669351) b!999719))

(assert (= (and b!999719 res!669355) b!999723))

(assert (= (and b!999723 res!669357) b!999722))

(assert (= (and b!999722 res!669354) b!999717))

(assert (= (and b!999717 res!669352) b!999718))

(assert (= (and b!999718 res!669356) b!999714))

(assert (= (and b!999714 res!669358) b!999720))

(declare-fun m!926039 () Bool)

(assert (=> b!999718 m!926039))

(assert (=> b!999718 m!926039))

(declare-fun m!926041 () Bool)

(assert (=> b!999718 m!926041))

(assert (=> b!999718 m!926041))

(assert (=> b!999718 m!926039))

(declare-fun m!926043 () Bool)

(assert (=> b!999718 m!926043))

(declare-fun m!926045 () Bool)

(assert (=> b!999724 m!926045))

(assert (=> b!999716 m!926039))

(assert (=> b!999716 m!926039))

(declare-fun m!926047 () Bool)

(assert (=> b!999716 m!926047))

(declare-fun m!926049 () Bool)

(assert (=> b!999721 m!926049))

(declare-fun m!926051 () Bool)

(assert (=> start!86424 m!926051))

(declare-fun m!926053 () Bool)

(assert (=> start!86424 m!926053))

(declare-fun m!926055 () Bool)

(assert (=> b!999723 m!926055))

(declare-fun m!926057 () Bool)

(assert (=> b!999720 m!926057))

(declare-fun m!926059 () Bool)

(assert (=> b!999720 m!926059))

(assert (=> b!999720 m!926059))

(declare-fun m!926061 () Bool)

(assert (=> b!999720 m!926061))

(assert (=> b!999720 m!926061))

(assert (=> b!999720 m!926059))

(declare-fun m!926063 () Bool)

(assert (=> b!999720 m!926063))

(declare-fun m!926065 () Bool)

(assert (=> b!999722 m!926065))

(declare-fun m!926067 () Bool)

(assert (=> b!999719 m!926067))

(assert (=> b!999714 m!926039))

(assert (=> b!999714 m!926039))

(declare-fun m!926069 () Bool)

(assert (=> b!999714 m!926069))

(check-sat (not b!999724) (not b!999719) (not start!86424) (not b!999718) (not b!999723) (not b!999716) (not b!999721) (not b!999714) (not b!999722) (not b!999720))
(check-sat)
