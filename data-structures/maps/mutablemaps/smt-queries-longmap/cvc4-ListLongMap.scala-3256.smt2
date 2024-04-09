; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45422 () Bool)

(assert start!45422)

(declare-fun res!301179 () Bool)

(declare-fun e!292452 () Bool)

(assert (=> start!45422 (=> (not res!301179) (not e!292452))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45422 (= res!301179 (validMask!0 mask!3524))))

(assert (=> start!45422 e!292452))

(assert (=> start!45422 true))

(declare-datatypes ((array!32207 0))(
  ( (array!32208 (arr!15482 (Array (_ BitVec 32) (_ BitVec 64))) (size!15846 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32207)

(declare-fun array_inv!11256 (array!32207) Bool)

(assert (=> start!45422 (array_inv!11256 a!3235)))

(declare-fun b!499038 () Bool)

(declare-fun res!301189 () Bool)

(declare-fun e!292454 () Bool)

(assert (=> b!499038 (=> (not res!301189) (not e!292454))))

(declare-datatypes ((List!9693 0))(
  ( (Nil!9690) (Cons!9689 (h!10563 (_ BitVec 64)) (t!15929 List!9693)) )
))
(declare-fun arrayNoDuplicates!0 (array!32207 (_ BitVec 32) List!9693) Bool)

(assert (=> b!499038 (= res!301189 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9690))))

(declare-fun b!499039 () Bool)

(declare-fun e!292453 () Bool)

(declare-fun e!292459 () Bool)

(assert (=> b!499039 (= e!292453 e!292459)))

(declare-fun res!301188 () Bool)

(assert (=> b!499039 (=> res!301188 e!292459)))

(declare-fun lt!226277 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3956 0))(
  ( (MissingZero!3956 (index!18006 (_ BitVec 32))) (Found!3956 (index!18007 (_ BitVec 32))) (Intermediate!3956 (undefined!4768 Bool) (index!18008 (_ BitVec 32)) (x!47076 (_ BitVec 32))) (Undefined!3956) (MissingVacant!3956 (index!18009 (_ BitVec 32))) )
))
(declare-fun lt!226280 () SeekEntryResult!3956)

(assert (=> b!499039 (= res!301188 (or (bvsgt #b00000000000000000000000000000000 (x!47076 lt!226280)) (bvsgt (x!47076 lt!226280) #b01111111111111111111111111111110) (bvslt lt!226277 #b00000000000000000000000000000000) (bvsge lt!226277 (size!15846 a!3235)) (bvslt (index!18008 lt!226280) #b00000000000000000000000000000000) (bvsge (index!18008 lt!226280) (size!15846 a!3235)) (not (= lt!226280 (Intermediate!3956 false (index!18008 lt!226280) (x!47076 lt!226280))))))))

(assert (=> b!499039 (and (or (= (select (arr!15482 a!3235) (index!18008 lt!226280)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15482 a!3235) (index!18008 lt!226280)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15482 a!3235) (index!18008 lt!226280)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15482 a!3235) (index!18008 lt!226280)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!14914 0))(
  ( (Unit!14915) )
))
(declare-fun lt!226272 () Unit!14914)

(declare-fun e!292457 () Unit!14914)

(assert (=> b!499039 (= lt!226272 e!292457)))

(declare-fun c!59207 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!499039 (= c!59207 (= (select (arr!15482 a!3235) (index!18008 lt!226280)) (select (arr!15482 a!3235) j!176)))))

(assert (=> b!499039 (and (bvslt (x!47076 lt!226280) #b01111111111111111111111111111110) (or (= (select (arr!15482 a!3235) (index!18008 lt!226280)) (select (arr!15482 a!3235) j!176)) (= (select (arr!15482 a!3235) (index!18008 lt!226280)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15482 a!3235) (index!18008 lt!226280)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!499040 () Bool)

(declare-fun res!301185 () Bool)

(assert (=> b!499040 (=> (not res!301185) (not e!292452))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!499040 (= res!301185 (validKeyInArray!0 (select (arr!15482 a!3235) j!176)))))

(declare-fun b!499041 () Bool)

(declare-fun res!301184 () Bool)

(assert (=> b!499041 (=> (not res!301184) (not e!292454))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32207 (_ BitVec 32)) Bool)

(assert (=> b!499041 (= res!301184 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!499042 () Bool)

(declare-fun res!301186 () Bool)

(assert (=> b!499042 (=> (not res!301186) (not e!292452))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!499042 (= res!301186 (validKeyInArray!0 k!2280))))

(declare-fun b!499043 () Bool)

(declare-fun Unit!14916 () Unit!14914)

(assert (=> b!499043 (= e!292457 Unit!14916)))

(declare-fun b!499044 () Bool)

(assert (=> b!499044 (= e!292459 true)))

(declare-fun lt!226278 () array!32207)

(declare-fun lt!226275 () (_ BitVec 64))

(declare-fun lt!226273 () SeekEntryResult!3956)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32207 (_ BitVec 32)) SeekEntryResult!3956)

(assert (=> b!499044 (= lt!226273 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226277 lt!226275 lt!226278 mask!3524))))

(declare-fun b!499045 () Bool)

(declare-fun res!301183 () Bool)

(assert (=> b!499045 (=> res!301183 e!292453)))

(assert (=> b!499045 (= res!301183 (or (undefined!4768 lt!226280) (not (is-Intermediate!3956 lt!226280))))))

(declare-fun b!499046 () Bool)

(declare-fun res!301190 () Bool)

(assert (=> b!499046 (=> (not res!301190) (not e!292452))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!499046 (= res!301190 (and (= (size!15846 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15846 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15846 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!499047 () Bool)

(declare-fun Unit!14917 () Unit!14914)

(assert (=> b!499047 (= e!292457 Unit!14917)))

(declare-fun lt!226271 () Unit!14914)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32207 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14914)

(assert (=> b!499047 (= lt!226271 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!226277 #b00000000000000000000000000000000 (index!18008 lt!226280) (x!47076 lt!226280) mask!3524))))

(declare-fun res!301182 () Bool)

(assert (=> b!499047 (= res!301182 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226277 lt!226275 lt!226278 mask!3524) (Intermediate!3956 false (index!18008 lt!226280) (x!47076 lt!226280))))))

(declare-fun e!292458 () Bool)

(assert (=> b!499047 (=> (not res!301182) (not e!292458))))

(assert (=> b!499047 e!292458))

(declare-fun b!499048 () Bool)

(assert (=> b!499048 (= e!292454 (not e!292453))))

(declare-fun res!301180 () Bool)

(assert (=> b!499048 (=> res!301180 e!292453)))

(declare-fun lt!226279 () (_ BitVec 32))

(assert (=> b!499048 (= res!301180 (= lt!226280 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226279 lt!226275 lt!226278 mask!3524)))))

(assert (=> b!499048 (= lt!226280 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226277 (select (arr!15482 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!499048 (= lt!226279 (toIndex!0 lt!226275 mask!3524))))

(assert (=> b!499048 (= lt!226275 (select (store (arr!15482 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!499048 (= lt!226277 (toIndex!0 (select (arr!15482 a!3235) j!176) mask!3524))))

(assert (=> b!499048 (= lt!226278 (array!32208 (store (arr!15482 a!3235) i!1204 k!2280) (size!15846 a!3235)))))

(declare-fun e!292456 () Bool)

(assert (=> b!499048 e!292456))

(declare-fun res!301187 () Bool)

(assert (=> b!499048 (=> (not res!301187) (not e!292456))))

(assert (=> b!499048 (= res!301187 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!226274 () Unit!14914)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32207 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14914)

(assert (=> b!499048 (= lt!226274 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!499049 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32207 (_ BitVec 32)) SeekEntryResult!3956)

(assert (=> b!499049 (= e!292456 (= (seekEntryOrOpen!0 (select (arr!15482 a!3235) j!176) a!3235 mask!3524) (Found!3956 j!176)))))

(declare-fun b!499050 () Bool)

(assert (=> b!499050 (= e!292452 e!292454)))

(declare-fun res!301181 () Bool)

(assert (=> b!499050 (=> (not res!301181) (not e!292454))))

(declare-fun lt!226276 () SeekEntryResult!3956)

(assert (=> b!499050 (= res!301181 (or (= lt!226276 (MissingZero!3956 i!1204)) (= lt!226276 (MissingVacant!3956 i!1204))))))

(assert (=> b!499050 (= lt!226276 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!499051 () Bool)

(declare-fun res!301178 () Bool)

(assert (=> b!499051 (=> (not res!301178) (not e!292452))))

(declare-fun arrayContainsKey!0 (array!32207 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!499051 (= res!301178 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!499052 () Bool)

(assert (=> b!499052 (= e!292458 false)))

(assert (= (and start!45422 res!301179) b!499046))

(assert (= (and b!499046 res!301190) b!499040))

(assert (= (and b!499040 res!301185) b!499042))

(assert (= (and b!499042 res!301186) b!499051))

(assert (= (and b!499051 res!301178) b!499050))

(assert (= (and b!499050 res!301181) b!499041))

(assert (= (and b!499041 res!301184) b!499038))

(assert (= (and b!499038 res!301189) b!499048))

(assert (= (and b!499048 res!301187) b!499049))

(assert (= (and b!499048 (not res!301180)) b!499045))

(assert (= (and b!499045 (not res!301183)) b!499039))

(assert (= (and b!499039 c!59207) b!499047))

(assert (= (and b!499039 (not c!59207)) b!499043))

(assert (= (and b!499047 res!301182) b!499052))

(assert (= (and b!499039 (not res!301188)) b!499044))

(declare-fun m!480289 () Bool)

(assert (=> b!499047 m!480289))

(declare-fun m!480291 () Bool)

(assert (=> b!499047 m!480291))

(declare-fun m!480293 () Bool)

(assert (=> b!499039 m!480293))

(declare-fun m!480295 () Bool)

(assert (=> b!499039 m!480295))

(declare-fun m!480297 () Bool)

(assert (=> b!499051 m!480297))

(assert (=> b!499044 m!480291))

(declare-fun m!480299 () Bool)

(assert (=> b!499048 m!480299))

(declare-fun m!480301 () Bool)

(assert (=> b!499048 m!480301))

(declare-fun m!480303 () Bool)

(assert (=> b!499048 m!480303))

(declare-fun m!480305 () Bool)

(assert (=> b!499048 m!480305))

(declare-fun m!480307 () Bool)

(assert (=> b!499048 m!480307))

(assert (=> b!499048 m!480295))

(declare-fun m!480309 () Bool)

(assert (=> b!499048 m!480309))

(declare-fun m!480311 () Bool)

(assert (=> b!499048 m!480311))

(assert (=> b!499048 m!480295))

(declare-fun m!480313 () Bool)

(assert (=> b!499048 m!480313))

(assert (=> b!499048 m!480295))

(declare-fun m!480315 () Bool)

(assert (=> b!499038 m!480315))

(declare-fun m!480317 () Bool)

(assert (=> b!499042 m!480317))

(declare-fun m!480319 () Bool)

(assert (=> start!45422 m!480319))

(declare-fun m!480321 () Bool)

(assert (=> start!45422 m!480321))

(declare-fun m!480323 () Bool)

(assert (=> b!499041 m!480323))

(assert (=> b!499040 m!480295))

(assert (=> b!499040 m!480295))

(declare-fun m!480325 () Bool)

(assert (=> b!499040 m!480325))

(declare-fun m!480327 () Bool)

(assert (=> b!499050 m!480327))

(assert (=> b!499049 m!480295))

(assert (=> b!499049 m!480295))

(declare-fun m!480329 () Bool)

(assert (=> b!499049 m!480329))

(push 1)

