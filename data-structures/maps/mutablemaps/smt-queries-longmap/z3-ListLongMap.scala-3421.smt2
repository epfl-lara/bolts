; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47460 () Bool)

(assert start!47460)

(declare-fun b!522223 () Bool)

(declare-fun res!320038 () Bool)

(declare-fun e!304601 () Bool)

(assert (=> b!522223 (=> (not res!320038) (not e!304601))))

(declare-datatypes ((array!33246 0))(
  ( (array!33247 (arr!15976 (Array (_ BitVec 32) (_ BitVec 64))) (size!16340 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33246)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33246 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!522223 (= res!320038 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!522224 () Bool)

(declare-datatypes ((Unit!16266 0))(
  ( (Unit!16267) )
))
(declare-fun e!304603 () Unit!16266)

(declare-fun Unit!16268 () Unit!16266)

(assert (=> b!522224 (= e!304603 Unit!16268)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!239556 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4450 0))(
  ( (MissingZero!4450 (index!20003 (_ BitVec 32))) (Found!4450 (index!20004 (_ BitVec 32))) (Intermediate!4450 (undefined!5262 Bool) (index!20005 (_ BitVec 32)) (x!49007 (_ BitVec 32))) (Undefined!4450) (MissingVacant!4450 (index!20006 (_ BitVec 32))) )
))
(declare-fun lt!239558 () SeekEntryResult!4450)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!239555 () Unit!16266)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33246 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16266)

(assert (=> b!522224 (= lt!239555 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!239556 #b00000000000000000000000000000000 (index!20005 lt!239558) (x!49007 lt!239558) mask!3524))))

(declare-fun res!320034 () Bool)

(declare-fun lt!239554 () (_ BitVec 64))

(declare-fun lt!239551 () array!33246)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33246 (_ BitVec 32)) SeekEntryResult!4450)

(assert (=> b!522224 (= res!320034 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239556 lt!239554 lt!239551 mask!3524) (Intermediate!4450 false (index!20005 lt!239558) (x!49007 lt!239558))))))

(declare-fun e!304598 () Bool)

(assert (=> b!522224 (=> (not res!320034) (not e!304598))))

(assert (=> b!522224 e!304598))

(declare-fun b!522225 () Bool)

(declare-fun res!320033 () Bool)

(assert (=> b!522225 (=> (not res!320033) (not e!304601))))

(assert (=> b!522225 (= res!320033 (and (= (size!16340 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16340 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16340 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!522226 () Bool)

(declare-fun res!320041 () Bool)

(assert (=> b!522226 (=> (not res!320041) (not e!304601))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!522226 (= res!320041 (validKeyInArray!0 (select (arr!15976 a!3235) j!176)))))

(declare-fun b!522227 () Bool)

(declare-fun res!320037 () Bool)

(assert (=> b!522227 (=> (not res!320037) (not e!304601))))

(assert (=> b!522227 (= res!320037 (validKeyInArray!0 k0!2280))))

(declare-fun res!320040 () Bool)

(assert (=> start!47460 (=> (not res!320040) (not e!304601))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47460 (= res!320040 (validMask!0 mask!3524))))

(assert (=> start!47460 e!304601))

(assert (=> start!47460 true))

(declare-fun array_inv!11750 (array!33246) Bool)

(assert (=> start!47460 (array_inv!11750 a!3235)))

(declare-fun b!522228 () Bool)

(declare-fun Unit!16269 () Unit!16266)

(assert (=> b!522228 (= e!304603 Unit!16269)))

(declare-fun b!522229 () Bool)

(declare-fun e!304599 () Bool)

(declare-fun e!304600 () Bool)

(assert (=> b!522229 (= e!304599 (not e!304600))))

(declare-fun res!320042 () Bool)

(assert (=> b!522229 (=> res!320042 e!304600)))

(declare-fun lt!239552 () (_ BitVec 32))

(assert (=> b!522229 (= res!320042 (= lt!239558 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239552 lt!239554 lt!239551 mask!3524)))))

(assert (=> b!522229 (= lt!239558 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239556 (select (arr!15976 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!522229 (= lt!239552 (toIndex!0 lt!239554 mask!3524))))

(assert (=> b!522229 (= lt!239554 (select (store (arr!15976 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!522229 (= lt!239556 (toIndex!0 (select (arr!15976 a!3235) j!176) mask!3524))))

(assert (=> b!522229 (= lt!239551 (array!33247 (store (arr!15976 a!3235) i!1204 k0!2280) (size!16340 a!3235)))))

(declare-fun e!304597 () Bool)

(assert (=> b!522229 e!304597))

(declare-fun res!320039 () Bool)

(assert (=> b!522229 (=> (not res!320039) (not e!304597))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33246 (_ BitVec 32)) Bool)

(assert (=> b!522229 (= res!320039 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!239553 () Unit!16266)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33246 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16266)

(assert (=> b!522229 (= lt!239553 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!522230 () Bool)

(assert (=> b!522230 (= e!304600 true)))

(assert (=> b!522230 (and (or (= (select (arr!15976 a!3235) (index!20005 lt!239558)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15976 a!3235) (index!20005 lt!239558)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15976 a!3235) (index!20005 lt!239558)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15976 a!3235) (index!20005 lt!239558)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!239557 () Unit!16266)

(assert (=> b!522230 (= lt!239557 e!304603)))

(declare-fun c!61397 () Bool)

(assert (=> b!522230 (= c!61397 (= (select (arr!15976 a!3235) (index!20005 lt!239558)) (select (arr!15976 a!3235) j!176)))))

(assert (=> b!522230 (and (bvslt (x!49007 lt!239558) #b01111111111111111111111111111110) (or (= (select (arr!15976 a!3235) (index!20005 lt!239558)) (select (arr!15976 a!3235) j!176)) (= (select (arr!15976 a!3235) (index!20005 lt!239558)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15976 a!3235) (index!20005 lt!239558)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!522231 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33246 (_ BitVec 32)) SeekEntryResult!4450)

(assert (=> b!522231 (= e!304597 (= (seekEntryOrOpen!0 (select (arr!15976 a!3235) j!176) a!3235 mask!3524) (Found!4450 j!176)))))

(declare-fun b!522232 () Bool)

(declare-fun res!320032 () Bool)

(assert (=> b!522232 (=> res!320032 e!304600)))

(get-info :version)

(assert (=> b!522232 (= res!320032 (or (undefined!5262 lt!239558) (not ((_ is Intermediate!4450) lt!239558))))))

(declare-fun b!522233 () Bool)

(assert (=> b!522233 (= e!304601 e!304599)))

(declare-fun res!320036 () Bool)

(assert (=> b!522233 (=> (not res!320036) (not e!304599))))

(declare-fun lt!239550 () SeekEntryResult!4450)

(assert (=> b!522233 (= res!320036 (or (= lt!239550 (MissingZero!4450 i!1204)) (= lt!239550 (MissingVacant!4450 i!1204))))))

(assert (=> b!522233 (= lt!239550 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!522234 () Bool)

(declare-fun res!320031 () Bool)

(assert (=> b!522234 (=> (not res!320031) (not e!304599))))

(assert (=> b!522234 (= res!320031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!522235 () Bool)

(declare-fun res!320035 () Bool)

(assert (=> b!522235 (=> (not res!320035) (not e!304599))))

(declare-datatypes ((List!10187 0))(
  ( (Nil!10184) (Cons!10183 (h!11105 (_ BitVec 64)) (t!16423 List!10187)) )
))
(declare-fun arrayNoDuplicates!0 (array!33246 (_ BitVec 32) List!10187) Bool)

(assert (=> b!522235 (= res!320035 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10184))))

(declare-fun b!522236 () Bool)

(assert (=> b!522236 (= e!304598 false)))

(assert (= (and start!47460 res!320040) b!522225))

(assert (= (and b!522225 res!320033) b!522226))

(assert (= (and b!522226 res!320041) b!522227))

(assert (= (and b!522227 res!320037) b!522223))

(assert (= (and b!522223 res!320038) b!522233))

(assert (= (and b!522233 res!320036) b!522234))

(assert (= (and b!522234 res!320031) b!522235))

(assert (= (and b!522235 res!320035) b!522229))

(assert (= (and b!522229 res!320039) b!522231))

(assert (= (and b!522229 (not res!320042)) b!522232))

(assert (= (and b!522232 (not res!320032)) b!522230))

(assert (= (and b!522230 c!61397) b!522224))

(assert (= (and b!522230 (not c!61397)) b!522228))

(assert (= (and b!522224 res!320034) b!522236))

(declare-fun m!503173 () Bool)

(assert (=> b!522227 m!503173))

(declare-fun m!503175 () Bool)

(assert (=> start!47460 m!503175))

(declare-fun m!503177 () Bool)

(assert (=> start!47460 m!503177))

(declare-fun m!503179 () Bool)

(assert (=> b!522230 m!503179))

(declare-fun m!503181 () Bool)

(assert (=> b!522230 m!503181))

(assert (=> b!522231 m!503181))

(assert (=> b!522231 m!503181))

(declare-fun m!503183 () Bool)

(assert (=> b!522231 m!503183))

(assert (=> b!522226 m!503181))

(assert (=> b!522226 m!503181))

(declare-fun m!503185 () Bool)

(assert (=> b!522226 m!503185))

(declare-fun m!503187 () Bool)

(assert (=> b!522224 m!503187))

(declare-fun m!503189 () Bool)

(assert (=> b!522224 m!503189))

(declare-fun m!503191 () Bool)

(assert (=> b!522229 m!503191))

(declare-fun m!503193 () Bool)

(assert (=> b!522229 m!503193))

(declare-fun m!503195 () Bool)

(assert (=> b!522229 m!503195))

(declare-fun m!503197 () Bool)

(assert (=> b!522229 m!503197))

(assert (=> b!522229 m!503181))

(declare-fun m!503199 () Bool)

(assert (=> b!522229 m!503199))

(assert (=> b!522229 m!503181))

(assert (=> b!522229 m!503181))

(declare-fun m!503201 () Bool)

(assert (=> b!522229 m!503201))

(declare-fun m!503203 () Bool)

(assert (=> b!522229 m!503203))

(declare-fun m!503205 () Bool)

(assert (=> b!522229 m!503205))

(declare-fun m!503207 () Bool)

(assert (=> b!522234 m!503207))

(declare-fun m!503209 () Bool)

(assert (=> b!522235 m!503209))

(declare-fun m!503211 () Bool)

(assert (=> b!522233 m!503211))

(declare-fun m!503213 () Bool)

(assert (=> b!522223 m!503213))

(check-sat (not b!522231) (not b!522233) (not b!522234) (not b!522235) (not start!47460) (not b!522227) (not b!522224) (not b!522229) (not b!522223) (not b!522226))
(check-sat)
