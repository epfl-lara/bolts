; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85772 () Bool)

(assert start!85772)

(declare-fun b!994710 () Bool)

(declare-fun res!665373 () Bool)

(declare-fun e!561346 () Bool)

(assert (=> b!994710 (=> (not res!665373) (not e!561346))))

(declare-datatypes ((array!62929 0))(
  ( (array!62930 (arr!30299 (Array (_ BitVec 32) (_ BitVec 64))) (size!30802 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62929)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(assert (=> b!994710 (= res!665373 (and (= (size!30802 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30802 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30802 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!994711 () Bool)

(declare-fun res!665376 () Bool)

(assert (=> b!994711 (=> (not res!665376) (not e!561346))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994711 (= res!665376 (validKeyInArray!0 (select (arr!30299 a!3219) j!170)))))

(declare-fun res!665374 () Bool)

(assert (=> start!85772 (=> (not res!665374) (not e!561346))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85772 (= res!665374 (validMask!0 mask!3464))))

(assert (=> start!85772 e!561346))

(declare-fun array_inv!23289 (array!62929) Bool)

(assert (=> start!85772 (array_inv!23289 a!3219)))

(assert (=> start!85772 true))

(declare-fun b!994712 () Bool)

(declare-fun res!665377 () Bool)

(assert (=> b!994712 (=> (not res!665377) (not e!561346))))

(declare-fun k0!2224 () (_ BitVec 64))

(assert (=> b!994712 (= res!665377 (validKeyInArray!0 k0!2224))))

(declare-fun b!994713 () Bool)

(declare-fun res!665375 () Bool)

(assert (=> b!994713 (=> (not res!665375) (not e!561346))))

(declare-fun arrayContainsKey!0 (array!62929 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994713 (= res!665375 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!9231 0))(
  ( (MissingZero!9231 (index!39294 (_ BitVec 32))) (Found!9231 (index!39295 (_ BitVec 32))) (Intermediate!9231 (undefined!10043 Bool) (index!39296 (_ BitVec 32)) (x!86769 (_ BitVec 32))) (Undefined!9231) (MissingVacant!9231 (index!39297 (_ BitVec 32))) )
))
(declare-fun lt!440724 () SeekEntryResult!9231)

(declare-fun b!994714 () Bool)

(assert (=> b!994714 (= e!561346 (and (or (= lt!440724 (MissingVacant!9231 i!1194)) (= lt!440724 (MissingZero!9231 i!1194))) (bvsgt #b00000000000000000000000000000000 (size!30802 a!3219))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62929 (_ BitVec 32)) SeekEntryResult!9231)

(assert (=> b!994714 (= lt!440724 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(assert (= (and start!85772 res!665374) b!994710))

(assert (= (and b!994710 res!665373) b!994711))

(assert (= (and b!994711 res!665376) b!994712))

(assert (= (and b!994712 res!665377) b!994713))

(assert (= (and b!994713 res!665375) b!994714))

(declare-fun m!922375 () Bool)

(assert (=> b!994711 m!922375))

(assert (=> b!994711 m!922375))

(declare-fun m!922377 () Bool)

(assert (=> b!994711 m!922377))

(declare-fun m!922379 () Bool)

(assert (=> start!85772 m!922379))

(declare-fun m!922381 () Bool)

(assert (=> start!85772 m!922381))

(declare-fun m!922383 () Bool)

(assert (=> b!994712 m!922383))

(declare-fun m!922385 () Bool)

(assert (=> b!994713 m!922385))

(declare-fun m!922387 () Bool)

(assert (=> b!994714 m!922387))

(check-sat (not b!994713) (not b!994714) (not b!994712) (not b!994711) (not start!85772))
(check-sat)
