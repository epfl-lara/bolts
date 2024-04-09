; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49356 () Bool)

(assert start!49356)

(declare-fun res!338128 () Bool)

(declare-fun e!314252 () Bool)

(assert (=> start!49356 (=> (not res!338128) (not e!314252))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49356 (= res!338128 (validMask!0 mask!3216))))

(assert (=> start!49356 e!314252))

(assert (=> start!49356 true))

(declare-datatypes ((array!34320 0))(
  ( (array!34321 (arr!16489 (Array (_ BitVec 32) (_ BitVec 64))) (size!16853 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34320)

(declare-fun array_inv!12263 (array!34320) Bool)

(assert (=> start!49356 (array_inv!12263 a!3154)))

(declare-fun b!543423 () Bool)

(declare-fun res!338133 () Bool)

(assert (=> b!543423 (=> (not res!338133) (not e!314252))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!543423 (= res!338133 (validKeyInArray!0 (select (arr!16489 a!3154) j!147)))))

(declare-fun b!543424 () Bool)

(declare-fun res!338131 () Bool)

(declare-fun e!314254 () Bool)

(assert (=> b!543424 (=> (not res!338131) (not e!314254))))

(declare-datatypes ((SeekEntryResult!4954 0))(
  ( (MissingZero!4954 (index!22040 (_ BitVec 32))) (Found!4954 (index!22041 (_ BitVec 32))) (Intermediate!4954 (undefined!5766 Bool) (index!22042 (_ BitVec 32)) (x!50972 (_ BitVec 32))) (Undefined!4954) (MissingVacant!4954 (index!22043 (_ BitVec 32))) )
))
(declare-fun lt!248180 () SeekEntryResult!4954)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34320 (_ BitVec 32)) SeekEntryResult!4954)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543424 (= res!338131 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16489 a!3154) j!147) mask!3216) (select (arr!16489 a!3154) j!147) a!3154 mask!3216) lt!248180))))

(declare-fun b!543425 () Bool)

(declare-fun res!338135 () Bool)

(assert (=> b!543425 (=> (not res!338135) (not e!314252))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!543425 (= res!338135 (and (= (size!16853 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16853 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16853 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!543426 () Bool)

(declare-fun res!338127 () Bool)

(assert (=> b!543426 (=> (not res!338127) (not e!314252))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34320 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!543426 (= res!338127 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!543427 () Bool)

(declare-fun e!314253 () Bool)

(assert (=> b!543427 (= e!314252 e!314253)))

(declare-fun res!338125 () Bool)

(assert (=> b!543427 (=> (not res!338125) (not e!314253))))

(declare-fun lt!248179 () SeekEntryResult!4954)

(assert (=> b!543427 (= res!338125 (or (= lt!248179 (MissingZero!4954 i!1153)) (= lt!248179 (MissingVacant!4954 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34320 (_ BitVec 32)) SeekEntryResult!4954)

(assert (=> b!543427 (= lt!248179 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!543428 () Bool)

(assert (=> b!543428 (= e!314254 false)))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!248178 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543428 (= lt!248178 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!543429 () Bool)

(declare-fun res!338134 () Bool)

(assert (=> b!543429 (=> (not res!338134) (not e!314253))))

(declare-datatypes ((List!10661 0))(
  ( (Nil!10658) (Cons!10657 (h!11612 (_ BitVec 64)) (t!16897 List!10661)) )
))
(declare-fun arrayNoDuplicates!0 (array!34320 (_ BitVec 32) List!10661) Bool)

(assert (=> b!543429 (= res!338134 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10658))))

(declare-fun b!543430 () Bool)

(assert (=> b!543430 (= e!314253 e!314254)))

(declare-fun res!338129 () Bool)

(assert (=> b!543430 (=> (not res!338129) (not e!314254))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!543430 (= res!338129 (= lt!248180 (Intermediate!4954 false resIndex!32 resX!32)))))

(assert (=> b!543430 (= lt!248180 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16489 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!543431 () Bool)

(declare-fun res!338132 () Bool)

(assert (=> b!543431 (=> (not res!338132) (not e!314253))))

(assert (=> b!543431 (= res!338132 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16853 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16853 a!3154)) (= (select (arr!16489 a!3154) resIndex!32) (select (arr!16489 a!3154) j!147))))))

(declare-fun b!543432 () Bool)

(declare-fun res!338130 () Bool)

(assert (=> b!543432 (=> (not res!338130) (not e!314253))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34320 (_ BitVec 32)) Bool)

(assert (=> b!543432 (= res!338130 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!543433 () Bool)

(declare-fun res!338126 () Bool)

(assert (=> b!543433 (=> (not res!338126) (not e!314252))))

(assert (=> b!543433 (= res!338126 (validKeyInArray!0 k0!1998))))

(declare-fun b!543434 () Bool)

(declare-fun res!338124 () Bool)

(assert (=> b!543434 (=> (not res!338124) (not e!314254))))

(assert (=> b!543434 (= res!338124 (and (not (= (select (arr!16489 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16489 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16489 a!3154) index!1177) (select (arr!16489 a!3154) j!147)))))))

(assert (= (and start!49356 res!338128) b!543425))

(assert (= (and b!543425 res!338135) b!543423))

(assert (= (and b!543423 res!338133) b!543433))

(assert (= (and b!543433 res!338126) b!543426))

(assert (= (and b!543426 res!338127) b!543427))

(assert (= (and b!543427 res!338125) b!543432))

(assert (= (and b!543432 res!338130) b!543429))

(assert (= (and b!543429 res!338134) b!543431))

(assert (= (and b!543431 res!338132) b!543430))

(assert (= (and b!543430 res!338129) b!543424))

(assert (= (and b!543424 res!338131) b!543434))

(assert (= (and b!543434 res!338124) b!543428))

(declare-fun m!521521 () Bool)

(assert (=> b!543433 m!521521))

(declare-fun m!521523 () Bool)

(assert (=> b!543427 m!521523))

(declare-fun m!521525 () Bool)

(assert (=> b!543426 m!521525))

(declare-fun m!521527 () Bool)

(assert (=> start!49356 m!521527))

(declare-fun m!521529 () Bool)

(assert (=> start!49356 m!521529))

(declare-fun m!521531 () Bool)

(assert (=> b!543432 m!521531))

(declare-fun m!521533 () Bool)

(assert (=> b!543429 m!521533))

(declare-fun m!521535 () Bool)

(assert (=> b!543431 m!521535))

(declare-fun m!521537 () Bool)

(assert (=> b!543431 m!521537))

(assert (=> b!543424 m!521537))

(assert (=> b!543424 m!521537))

(declare-fun m!521539 () Bool)

(assert (=> b!543424 m!521539))

(assert (=> b!543424 m!521539))

(assert (=> b!543424 m!521537))

(declare-fun m!521541 () Bool)

(assert (=> b!543424 m!521541))

(declare-fun m!521543 () Bool)

(assert (=> b!543428 m!521543))

(declare-fun m!521545 () Bool)

(assert (=> b!543434 m!521545))

(assert (=> b!543434 m!521537))

(assert (=> b!543423 m!521537))

(assert (=> b!543423 m!521537))

(declare-fun m!521547 () Bool)

(assert (=> b!543423 m!521547))

(assert (=> b!543430 m!521537))

(assert (=> b!543430 m!521537))

(declare-fun m!521549 () Bool)

(assert (=> b!543430 m!521549))

(check-sat (not b!543428) (not b!543430) (not b!543432) (not b!543426) (not b!543423) (not start!49356) (not b!543433) (not b!543429) (not b!543427) (not b!543424))
(check-sat)
