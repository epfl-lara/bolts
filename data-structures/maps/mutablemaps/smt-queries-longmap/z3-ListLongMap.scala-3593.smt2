; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49362 () Bool)

(assert start!49362)

(declare-fun b!543531 () Bool)

(declare-fun res!338233 () Bool)

(declare-fun e!314289 () Bool)

(assert (=> b!543531 (=> (not res!338233) (not e!314289))))

(declare-datatypes ((array!34326 0))(
  ( (array!34327 (arr!16492 (Array (_ BitVec 32) (_ BitVec 64))) (size!16856 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34326)

(declare-datatypes ((List!10664 0))(
  ( (Nil!10661) (Cons!10660 (h!11615 (_ BitVec 64)) (t!16900 List!10664)) )
))
(declare-fun arrayNoDuplicates!0 (array!34326 (_ BitVec 32) List!10664) Bool)

(assert (=> b!543531 (= res!338233 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10661))))

(declare-fun b!543532 () Bool)

(declare-fun res!338239 () Bool)

(assert (=> b!543532 (=> (not res!338239) (not e!314289))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34326 (_ BitVec 32)) Bool)

(assert (=> b!543532 (= res!338239 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!543533 () Bool)

(declare-fun res!338235 () Bool)

(declare-fun e!314288 () Bool)

(assert (=> b!543533 (=> (not res!338235) (not e!314288))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!543533 (= res!338235 (validKeyInArray!0 (select (arr!16492 a!3154) j!147)))))

(declare-fun b!543534 () Bool)

(assert (=> b!543534 (= e!314288 e!314289)))

(declare-fun res!338234 () Bool)

(assert (=> b!543534 (=> (not res!338234) (not e!314289))))

(declare-datatypes ((SeekEntryResult!4957 0))(
  ( (MissingZero!4957 (index!22052 (_ BitVec 32))) (Found!4957 (index!22053 (_ BitVec 32))) (Intermediate!4957 (undefined!5769 Bool) (index!22054 (_ BitVec 32)) (x!50983 (_ BitVec 32))) (Undefined!4957) (MissingVacant!4957 (index!22055 (_ BitVec 32))) )
))
(declare-fun lt!248206 () SeekEntryResult!4957)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!543534 (= res!338234 (or (= lt!248206 (MissingZero!4957 i!1153)) (= lt!248206 (MissingVacant!4957 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34326 (_ BitVec 32)) SeekEntryResult!4957)

(assert (=> b!543534 (= lt!248206 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!543535 () Bool)

(declare-fun res!338241 () Bool)

(assert (=> b!543535 (=> (not res!338241) (not e!314289))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun index!1177 () (_ BitVec 32))

(assert (=> b!543535 (= res!338241 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16856 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16856 a!3154)) (= (select (arr!16492 a!3154) resIndex!32) (select (arr!16492 a!3154) j!147))))))

(declare-fun res!338232 () Bool)

(assert (=> start!49362 (=> (not res!338232) (not e!314288))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49362 (= res!338232 (validMask!0 mask!3216))))

(assert (=> start!49362 e!314288))

(assert (=> start!49362 true))

(declare-fun array_inv!12266 (array!34326) Bool)

(assert (=> start!49362 (array_inv!12266 a!3154)))

(declare-fun b!543536 () Bool)

(declare-fun res!338243 () Bool)

(assert (=> b!543536 (=> (not res!338243) (not e!314288))))

(assert (=> b!543536 (= res!338243 (validKeyInArray!0 k0!1998))))

(declare-fun b!543537 () Bool)

(declare-fun e!314287 () Bool)

(assert (=> b!543537 (= e!314289 e!314287)))

(declare-fun res!338242 () Bool)

(assert (=> b!543537 (=> (not res!338242) (not e!314287))))

(declare-fun lt!248205 () SeekEntryResult!4957)

(assert (=> b!543537 (= res!338242 (= lt!248205 (Intermediate!4957 false resIndex!32 resX!32)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34326 (_ BitVec 32)) SeekEntryResult!4957)

(assert (=> b!543537 (= lt!248205 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16492 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!543538 () Bool)

(declare-fun res!338238 () Bool)

(assert (=> b!543538 (=> (not res!338238) (not e!314287))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543538 (= res!338238 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16492 a!3154) j!147) mask!3216) (select (arr!16492 a!3154) j!147) a!3154 mask!3216) lt!248205))))

(declare-fun b!543539 () Bool)

(declare-fun res!338237 () Bool)

(assert (=> b!543539 (=> (not res!338237) (not e!314288))))

(assert (=> b!543539 (= res!338237 (and (= (size!16856 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16856 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16856 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!543540 () Bool)

(declare-fun res!338240 () Bool)

(assert (=> b!543540 (=> (not res!338240) (not e!314288))))

(declare-fun arrayContainsKey!0 (array!34326 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!543540 (= res!338240 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!543541 () Bool)

(declare-fun res!338236 () Bool)

(assert (=> b!543541 (=> (not res!338236) (not e!314287))))

(assert (=> b!543541 (= res!338236 (and (not (= (select (arr!16492 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16492 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16492 a!3154) index!1177) (select (arr!16492 a!3154) j!147)))))))

(declare-fun b!543542 () Bool)

(assert (=> b!543542 (= e!314287 false)))

(declare-fun lt!248207 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543542 (= lt!248207 (nextIndex!0 index!1177 x!1030 mask!3216))))

(assert (= (and start!49362 res!338232) b!543539))

(assert (= (and b!543539 res!338237) b!543533))

(assert (= (and b!543533 res!338235) b!543536))

(assert (= (and b!543536 res!338243) b!543540))

(assert (= (and b!543540 res!338240) b!543534))

(assert (= (and b!543534 res!338234) b!543532))

(assert (= (and b!543532 res!338239) b!543531))

(assert (= (and b!543531 res!338233) b!543535))

(assert (= (and b!543535 res!338241) b!543537))

(assert (= (and b!543537 res!338242) b!543538))

(assert (= (and b!543538 res!338238) b!543541))

(assert (= (and b!543541 res!338236) b!543542))

(declare-fun m!521611 () Bool)

(assert (=> b!543535 m!521611))

(declare-fun m!521613 () Bool)

(assert (=> b!543535 m!521613))

(declare-fun m!521615 () Bool)

(assert (=> b!543541 m!521615))

(assert (=> b!543541 m!521613))

(declare-fun m!521617 () Bool)

(assert (=> b!543531 m!521617))

(declare-fun m!521619 () Bool)

(assert (=> start!49362 m!521619))

(declare-fun m!521621 () Bool)

(assert (=> start!49362 m!521621))

(declare-fun m!521623 () Bool)

(assert (=> b!543540 m!521623))

(assert (=> b!543537 m!521613))

(assert (=> b!543537 m!521613))

(declare-fun m!521625 () Bool)

(assert (=> b!543537 m!521625))

(assert (=> b!543538 m!521613))

(assert (=> b!543538 m!521613))

(declare-fun m!521627 () Bool)

(assert (=> b!543538 m!521627))

(assert (=> b!543538 m!521627))

(assert (=> b!543538 m!521613))

(declare-fun m!521629 () Bool)

(assert (=> b!543538 m!521629))

(declare-fun m!521631 () Bool)

(assert (=> b!543542 m!521631))

(declare-fun m!521633 () Bool)

(assert (=> b!543534 m!521633))

(declare-fun m!521635 () Bool)

(assert (=> b!543536 m!521635))

(assert (=> b!543533 m!521613))

(assert (=> b!543533 m!521613))

(declare-fun m!521637 () Bool)

(assert (=> b!543533 m!521637))

(declare-fun m!521639 () Bool)

(assert (=> b!543532 m!521639))

(check-sat (not b!543533) (not b!543532) (not b!543537) (not start!49362) (not b!543534) (not b!543538) (not b!543536) (not b!543540) (not b!543542) (not b!543531))
(check-sat)
