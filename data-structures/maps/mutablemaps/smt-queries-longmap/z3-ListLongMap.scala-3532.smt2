; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48780 () Bool)

(assert start!48780)

(declare-fun b!536183 () Bool)

(declare-fun res!331548 () Bool)

(declare-fun e!311284 () Bool)

(assert (=> b!536183 (=> (not res!331548) (not e!311284))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33948 0))(
  ( (array!33949 (arr!16309 (Array (_ BitVec 32) (_ BitVec 64))) (size!16673 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33948)

(assert (=> b!536183 (= res!331548 (and (not (= (select (arr!16309 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16309 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16309 a!3154) index!1177) (select (arr!16309 a!3154) j!147)))))))

(declare-fun res!331538 () Bool)

(declare-fun e!311285 () Bool)

(assert (=> start!48780 (=> (not res!331538) (not e!311285))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48780 (= res!331538 (validMask!0 mask!3216))))

(assert (=> start!48780 e!311285))

(assert (=> start!48780 true))

(declare-fun array_inv!12083 (array!33948) Bool)

(assert (=> start!48780 (array_inv!12083 a!3154)))

(declare-fun b!536184 () Bool)

(declare-fun res!331544 () Bool)

(assert (=> b!536184 (=> (not res!331544) (not e!311285))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!536184 (= res!331544 (validKeyInArray!0 k0!1998))))

(declare-fun b!536185 () Bool)

(declare-fun res!331542 () Bool)

(assert (=> b!536185 (=> (not res!331542) (not e!311284))))

(declare-datatypes ((SeekEntryResult!4774 0))(
  ( (MissingZero!4774 (index!21320 (_ BitVec 32))) (Found!4774 (index!21321 (_ BitVec 32))) (Intermediate!4774 (undefined!5586 Bool) (index!21322 (_ BitVec 32)) (x!50288 (_ BitVec 32))) (Undefined!4774) (MissingVacant!4774 (index!21323 (_ BitVec 32))) )
))
(declare-fun lt!246038 () SeekEntryResult!4774)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33948 (_ BitVec 32)) SeekEntryResult!4774)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536185 (= res!331542 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16309 a!3154) j!147) mask!3216) (select (arr!16309 a!3154) j!147) a!3154 mask!3216) lt!246038))))

(declare-fun b!536186 () Bool)

(declare-fun res!331540 () Bool)

(assert (=> b!536186 (=> (not res!331540) (not e!311285))))

(declare-fun arrayContainsKey!0 (array!33948 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!536186 (= res!331540 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!536187 () Bool)

(declare-fun res!331539 () Bool)

(assert (=> b!536187 (=> (not res!331539) (not e!311285))))

(assert (=> b!536187 (= res!331539 (validKeyInArray!0 (select (arr!16309 a!3154) j!147)))))

(declare-fun b!536188 () Bool)

(declare-fun e!311286 () Bool)

(assert (=> b!536188 (= e!311286 false)))

(declare-fun lt!246040 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!246041 () SeekEntryResult!4774)

(assert (=> b!536188 (= lt!246041 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246040 (select (arr!16309 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536189 () Bool)

(declare-fun res!331547 () Bool)

(assert (=> b!536189 (=> (not res!331547) (not e!311285))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!536189 (= res!331547 (and (= (size!16673 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16673 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16673 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!536190 () Bool)

(declare-fun res!331546 () Bool)

(declare-fun e!311283 () Bool)

(assert (=> b!536190 (=> (not res!331546) (not e!311283))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!536190 (= res!331546 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16673 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16673 a!3154)) (= (select (arr!16309 a!3154) resIndex!32) (select (arr!16309 a!3154) j!147))))))

(declare-fun b!536191 () Bool)

(assert (=> b!536191 (= e!311283 e!311284)))

(declare-fun res!331543 () Bool)

(assert (=> b!536191 (=> (not res!331543) (not e!311284))))

(assert (=> b!536191 (= res!331543 (= lt!246038 (Intermediate!4774 false resIndex!32 resX!32)))))

(assert (=> b!536191 (= lt!246038 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16309 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536192 () Bool)

(assert (=> b!536192 (= e!311285 e!311283)))

(declare-fun res!331549 () Bool)

(assert (=> b!536192 (=> (not res!331549) (not e!311283))))

(declare-fun lt!246039 () SeekEntryResult!4774)

(assert (=> b!536192 (= res!331549 (or (= lt!246039 (MissingZero!4774 i!1153)) (= lt!246039 (MissingVacant!4774 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33948 (_ BitVec 32)) SeekEntryResult!4774)

(assert (=> b!536192 (= lt!246039 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!536193 () Bool)

(declare-fun res!331545 () Bool)

(assert (=> b!536193 (=> (not res!331545) (not e!311283))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33948 (_ BitVec 32)) Bool)

(assert (=> b!536193 (= res!331545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!536194 () Bool)

(declare-fun res!331550 () Bool)

(assert (=> b!536194 (=> (not res!331550) (not e!311283))))

(declare-datatypes ((List!10481 0))(
  ( (Nil!10478) (Cons!10477 (h!11420 (_ BitVec 64)) (t!16717 List!10481)) )
))
(declare-fun arrayNoDuplicates!0 (array!33948 (_ BitVec 32) List!10481) Bool)

(assert (=> b!536194 (= res!331550 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10478))))

(declare-fun b!536195 () Bool)

(assert (=> b!536195 (= e!311284 e!311286)))

(declare-fun res!331541 () Bool)

(assert (=> b!536195 (=> (not res!331541) (not e!311286))))

(assert (=> b!536195 (= res!331541 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246040 #b00000000000000000000000000000000) (bvslt lt!246040 (size!16673 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536195 (= lt!246040 (nextIndex!0 index!1177 x!1030 mask!3216))))

(assert (= (and start!48780 res!331538) b!536189))

(assert (= (and b!536189 res!331547) b!536187))

(assert (= (and b!536187 res!331539) b!536184))

(assert (= (and b!536184 res!331544) b!536186))

(assert (= (and b!536186 res!331540) b!536192))

(assert (= (and b!536192 res!331549) b!536193))

(assert (= (and b!536193 res!331545) b!536194))

(assert (= (and b!536194 res!331550) b!536190))

(assert (= (and b!536190 res!331546) b!536191))

(assert (= (and b!536191 res!331543) b!536185))

(assert (= (and b!536185 res!331542) b!536183))

(assert (= (and b!536183 res!331548) b!536195))

(assert (= (and b!536195 res!331541) b!536188))

(declare-fun m!515643 () Bool)

(assert (=> b!536185 m!515643))

(assert (=> b!536185 m!515643))

(declare-fun m!515645 () Bool)

(assert (=> b!536185 m!515645))

(assert (=> b!536185 m!515645))

(assert (=> b!536185 m!515643))

(declare-fun m!515647 () Bool)

(assert (=> b!536185 m!515647))

(declare-fun m!515649 () Bool)

(assert (=> start!48780 m!515649))

(declare-fun m!515651 () Bool)

(assert (=> start!48780 m!515651))

(declare-fun m!515653 () Bool)

(assert (=> b!536184 m!515653))

(declare-fun m!515655 () Bool)

(assert (=> b!536183 m!515655))

(assert (=> b!536183 m!515643))

(assert (=> b!536187 m!515643))

(assert (=> b!536187 m!515643))

(declare-fun m!515657 () Bool)

(assert (=> b!536187 m!515657))

(declare-fun m!515659 () Bool)

(assert (=> b!536192 m!515659))

(declare-fun m!515661 () Bool)

(assert (=> b!536193 m!515661))

(declare-fun m!515663 () Bool)

(assert (=> b!536195 m!515663))

(declare-fun m!515665 () Bool)

(assert (=> b!536190 m!515665))

(assert (=> b!536190 m!515643))

(assert (=> b!536191 m!515643))

(assert (=> b!536191 m!515643))

(declare-fun m!515667 () Bool)

(assert (=> b!536191 m!515667))

(assert (=> b!536188 m!515643))

(assert (=> b!536188 m!515643))

(declare-fun m!515669 () Bool)

(assert (=> b!536188 m!515669))

(declare-fun m!515671 () Bool)

(assert (=> b!536186 m!515671))

(declare-fun m!515673 () Bool)

(assert (=> b!536194 m!515673))

(check-sat (not b!536195) (not b!536194) (not b!536188) (not b!536187) (not b!536185) (not b!536193) (not b!536192) (not b!536186) (not b!536191) (not start!48780) (not b!536184))
(check-sat)
