; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86448 () Bool)

(assert start!86448)

(declare-fun b!1000128 () Bool)

(declare-fun e!563798 () Bool)

(declare-fun e!563800 () Bool)

(assert (=> b!1000128 (= e!563798 e!563800)))

(declare-fun res!669762 () Bool)

(assert (=> b!1000128 (=> (not res!669762) (not e!563800))))

(declare-datatypes ((SeekEntryResult!9354 0))(
  ( (MissingZero!9354 (index!39786 (_ BitVec 32))) (Found!9354 (index!39787 (_ BitVec 32))) (Intermediate!9354 (undefined!10166 Bool) (index!39788 (_ BitVec 32)) (x!87247 (_ BitVec 32))) (Undefined!9354) (MissingVacant!9354 (index!39789 (_ BitVec 32))) )
))
(declare-fun lt!442190 () SeekEntryResult!9354)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1000128 (= res!669762 (or (= lt!442190 (MissingVacant!9354 i!1194)) (= lt!442190 (MissingZero!9354 i!1194))))))

(declare-datatypes ((array!63201 0))(
  ( (array!63202 (arr!30422 (Array (_ BitVec 32) (_ BitVec 64))) (size!30925 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63201)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63201 (_ BitVec 32)) SeekEntryResult!9354)

(assert (=> b!1000128 (= lt!442190 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1000129 () Bool)

(declare-fun e!563799 () Bool)

(assert (=> b!1000129 (= e!563799 false)))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun lt!442191 () SeekEntryResult!9354)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63201 (_ BitVec 32)) SeekEntryResult!9354)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1000129 (= lt!442191 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30422 a!3219) i!1194 k0!2224) j!170) mask!3464) (select (store (arr!30422 a!3219) i!1194 k0!2224) j!170) (array!63202 (store (arr!30422 a!3219) i!1194 k0!2224) (size!30925 a!3219)) mask!3464))))

(declare-fun b!1000130 () Bool)

(declare-fun res!669772 () Bool)

(assert (=> b!1000130 (=> (not res!669772) (not e!563799))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun lt!442189 () SeekEntryResult!9354)

(assert (=> b!1000130 (= res!669772 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30422 a!3219) j!170) a!3219 mask!3464) lt!442189))))

(declare-fun b!1000131 () Bool)

(declare-fun res!669765 () Bool)

(assert (=> b!1000131 (=> (not res!669765) (not e!563798))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1000131 (= res!669765 (validKeyInArray!0 (select (arr!30422 a!3219) j!170)))))

(declare-fun b!1000132 () Bool)

(assert (=> b!1000132 (= e!563800 e!563799)))

(declare-fun res!669767 () Bool)

(assert (=> b!1000132 (=> (not res!669767) (not e!563799))))

(assert (=> b!1000132 (= res!669767 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30422 a!3219) j!170) mask!3464) (select (arr!30422 a!3219) j!170) a!3219 mask!3464) lt!442189))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1000132 (= lt!442189 (Intermediate!9354 false resIndex!38 resX!38))))

(declare-fun b!1000133 () Bool)

(declare-fun res!669766 () Bool)

(assert (=> b!1000133 (=> (not res!669766) (not e!563798))))

(declare-fun arrayContainsKey!0 (array!63201 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1000133 (= res!669766 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun res!669769 () Bool)

(assert (=> start!86448 (=> (not res!669769) (not e!563798))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86448 (= res!669769 (validMask!0 mask!3464))))

(assert (=> start!86448 e!563798))

(declare-fun array_inv!23412 (array!63201) Bool)

(assert (=> start!86448 (array_inv!23412 a!3219)))

(assert (=> start!86448 true))

(declare-fun b!1000134 () Bool)

(declare-fun res!669763 () Bool)

(assert (=> b!1000134 (=> (not res!669763) (not e!563800))))

(declare-datatypes ((List!21224 0))(
  ( (Nil!21221) (Cons!21220 (h!22397 (_ BitVec 64)) (t!30233 List!21224)) )
))
(declare-fun arrayNoDuplicates!0 (array!63201 (_ BitVec 32) List!21224) Bool)

(assert (=> b!1000134 (= res!669763 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21221))))

(declare-fun b!1000135 () Bool)

(declare-fun res!669764 () Bool)

(assert (=> b!1000135 (=> (not res!669764) (not e!563800))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63201 (_ BitVec 32)) Bool)

(assert (=> b!1000135 (= res!669764 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1000136 () Bool)

(declare-fun res!669770 () Bool)

(assert (=> b!1000136 (=> (not res!669770) (not e!563798))))

(assert (=> b!1000136 (= res!669770 (validKeyInArray!0 k0!2224))))

(declare-fun b!1000137 () Bool)

(declare-fun res!669768 () Bool)

(assert (=> b!1000137 (=> (not res!669768) (not e!563798))))

(assert (=> b!1000137 (= res!669768 (and (= (size!30925 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30925 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30925 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1000138 () Bool)

(declare-fun res!669771 () Bool)

(assert (=> b!1000138 (=> (not res!669771) (not e!563800))))

(assert (=> b!1000138 (= res!669771 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30925 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30925 a!3219))))))

(assert (= (and start!86448 res!669769) b!1000137))

(assert (= (and b!1000137 res!669768) b!1000131))

(assert (= (and b!1000131 res!669765) b!1000136))

(assert (= (and b!1000136 res!669770) b!1000133))

(assert (= (and b!1000133 res!669766) b!1000128))

(assert (= (and b!1000128 res!669762) b!1000135))

(assert (= (and b!1000135 res!669764) b!1000134))

(assert (= (and b!1000134 res!669763) b!1000138))

(assert (= (and b!1000138 res!669771) b!1000132))

(assert (= (and b!1000132 res!669767) b!1000130))

(assert (= (and b!1000130 res!669772) b!1000129))

(declare-fun m!926423 () Bool)

(assert (=> b!1000131 m!926423))

(assert (=> b!1000131 m!926423))

(declare-fun m!926425 () Bool)

(assert (=> b!1000131 m!926425))

(assert (=> b!1000130 m!926423))

(assert (=> b!1000130 m!926423))

(declare-fun m!926427 () Bool)

(assert (=> b!1000130 m!926427))

(declare-fun m!926429 () Bool)

(assert (=> b!1000136 m!926429))

(declare-fun m!926431 () Bool)

(assert (=> start!86448 m!926431))

(declare-fun m!926433 () Bool)

(assert (=> start!86448 m!926433))

(declare-fun m!926435 () Bool)

(assert (=> b!1000135 m!926435))

(declare-fun m!926437 () Bool)

(assert (=> b!1000128 m!926437))

(assert (=> b!1000132 m!926423))

(assert (=> b!1000132 m!926423))

(declare-fun m!926439 () Bool)

(assert (=> b!1000132 m!926439))

(assert (=> b!1000132 m!926439))

(assert (=> b!1000132 m!926423))

(declare-fun m!926441 () Bool)

(assert (=> b!1000132 m!926441))

(declare-fun m!926443 () Bool)

(assert (=> b!1000133 m!926443))

(declare-fun m!926445 () Bool)

(assert (=> b!1000134 m!926445))

(declare-fun m!926447 () Bool)

(assert (=> b!1000129 m!926447))

(declare-fun m!926449 () Bool)

(assert (=> b!1000129 m!926449))

(assert (=> b!1000129 m!926449))

(declare-fun m!926451 () Bool)

(assert (=> b!1000129 m!926451))

(assert (=> b!1000129 m!926451))

(assert (=> b!1000129 m!926449))

(declare-fun m!926453 () Bool)

(assert (=> b!1000129 m!926453))

(check-sat (not b!1000133) (not b!1000132) (not b!1000131) (not start!86448) (not b!1000134) (not b!1000130) (not b!1000135) (not b!1000128) (not b!1000129) (not b!1000136))
(check-sat)
