; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45698 () Bool)

(assert start!45698)

(declare-fun b!504277 () Bool)

(declare-fun e!295269 () Bool)

(declare-fun e!295264 () Bool)

(assert (=> b!504277 (= e!295269 e!295264)))

(declare-fun res!305616 () Bool)

(assert (=> b!504277 (=> res!305616 e!295264)))

(declare-datatypes ((SeekEntryResult!4058 0))(
  ( (MissingZero!4058 (index!18420 (_ BitVec 32))) (Found!4058 (index!18421 (_ BitVec 32))) (Intermediate!4058 (undefined!4870 Bool) (index!18422 (_ BitVec 32)) (x!47462 (_ BitVec 32))) (Undefined!4058) (MissingVacant!4058 (index!18423 (_ BitVec 32))) )
))
(declare-fun lt!229654 () SeekEntryResult!4058)

(declare-datatypes ((array!32414 0))(
  ( (array!32415 (arr!15584 (Array (_ BitVec 32) (_ BitVec 64))) (size!15948 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32414)

(declare-fun lt!229659 () (_ BitVec 32))

(assert (=> b!504277 (= res!305616 (or (bvsgt (x!47462 lt!229654) #b01111111111111111111111111111110) (bvslt lt!229659 #b00000000000000000000000000000000) (bvsge lt!229659 (size!15948 a!3235)) (bvslt (index!18422 lt!229654) #b00000000000000000000000000000000) (bvsge (index!18422 lt!229654) (size!15948 a!3235)) (not (= lt!229654 (Intermediate!4058 false (index!18422 lt!229654) (x!47462 lt!229654))))))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!504277 (= (index!18422 lt!229654) i!1204)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((Unit!15322 0))(
  ( (Unit!15323) )
))
(declare-fun lt!229661 () Unit!15322)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32414 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15322)

(assert (=> b!504277 (= lt!229661 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!229659 #b00000000000000000000000000000000 (index!18422 lt!229654) (x!47462 lt!229654) mask!3524))))

(assert (=> b!504277 (and (or (= (select (arr!15584 a!3235) (index!18422 lt!229654)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15584 a!3235) (index!18422 lt!229654)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15584 a!3235) (index!18422 lt!229654)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15584 a!3235) (index!18422 lt!229654)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229660 () Unit!15322)

(declare-fun e!295267 () Unit!15322)

(assert (=> b!504277 (= lt!229660 e!295267)))

(declare-fun c!59615 () Bool)

(assert (=> b!504277 (= c!59615 (= (select (arr!15584 a!3235) (index!18422 lt!229654)) (select (arr!15584 a!3235) j!176)))))

(assert (=> b!504277 (and (bvslt (x!47462 lt!229654) #b01111111111111111111111111111110) (or (= (select (arr!15584 a!3235) (index!18422 lt!229654)) (select (arr!15584 a!3235) j!176)) (= (select (arr!15584 a!3235) (index!18422 lt!229654)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15584 a!3235) (index!18422 lt!229654)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!504278 () Bool)

(declare-fun e!295265 () Bool)

(assert (=> b!504278 (= e!295265 (not e!295269))))

(declare-fun res!305605 () Bool)

(assert (=> b!504278 (=> res!305605 e!295269)))

(declare-fun lt!229662 () (_ BitVec 64))

(declare-fun lt!229663 () array!32414)

(declare-fun lt!229656 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32414 (_ BitVec 32)) SeekEntryResult!4058)

(assert (=> b!504278 (= res!305605 (= lt!229654 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229656 lt!229662 lt!229663 mask!3524)))))

(assert (=> b!504278 (= lt!229654 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229659 (select (arr!15584 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!504278 (= lt!229656 (toIndex!0 lt!229662 mask!3524))))

(assert (=> b!504278 (= lt!229662 (select (store (arr!15584 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!504278 (= lt!229659 (toIndex!0 (select (arr!15584 a!3235) j!176) mask!3524))))

(assert (=> b!504278 (= lt!229663 (array!32415 (store (arr!15584 a!3235) i!1204 k!2280) (size!15948 a!3235)))))

(declare-fun e!295263 () Bool)

(assert (=> b!504278 e!295263))

(declare-fun res!305613 () Bool)

(assert (=> b!504278 (=> (not res!305613) (not e!295263))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32414 (_ BitVec 32)) Bool)

(assert (=> b!504278 (= res!305613 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!229655 () Unit!15322)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32414 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15322)

(assert (=> b!504278 (= lt!229655 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!504279 () Bool)

(declare-fun res!305611 () Bool)

(assert (=> b!504279 (=> (not res!305611) (not e!295265))))

(declare-datatypes ((List!9795 0))(
  ( (Nil!9792) (Cons!9791 (h!10668 (_ BitVec 64)) (t!16031 List!9795)) )
))
(declare-fun arrayNoDuplicates!0 (array!32414 (_ BitVec 32) List!9795) Bool)

(assert (=> b!504279 (= res!305611 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9792))))

(declare-fun b!504280 () Bool)

(declare-fun e!295268 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32414 (_ BitVec 32)) SeekEntryResult!4058)

(assert (=> b!504280 (= e!295268 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229659 (index!18422 lt!229654) (select (arr!15584 a!3235) j!176) a!3235 mask!3524) (Found!4058 j!176))))))

(declare-fun b!504281 () Bool)

(declare-fun res!305614 () Bool)

(declare-fun e!295262 () Bool)

(assert (=> b!504281 (=> (not res!305614) (not e!295262))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!504281 (= res!305614 (validKeyInArray!0 (select (arr!15584 a!3235) j!176)))))

(declare-fun b!504282 () Bool)

(declare-fun res!305618 () Bool)

(assert (=> b!504282 (=> (not res!305618) (not e!295262))))

(assert (=> b!504282 (= res!305618 (and (= (size!15948 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15948 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15948 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!504283 () Bool)

(declare-fun Unit!15324 () Unit!15322)

(assert (=> b!504283 (= e!295267 Unit!15324)))

(declare-fun b!504284 () Bool)

(declare-fun res!305609 () Bool)

(assert (=> b!504284 (=> res!305609 e!295264)))

(assert (=> b!504284 (= res!305609 e!295268)))

(declare-fun res!305617 () Bool)

(assert (=> b!504284 (=> (not res!305617) (not e!295268))))

(assert (=> b!504284 (= res!305617 (bvsgt #b00000000000000000000000000000000 (x!47462 lt!229654)))))

(declare-fun b!504285 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32414 (_ BitVec 32)) SeekEntryResult!4058)

(assert (=> b!504285 (= e!295263 (= (seekEntryOrOpen!0 (select (arr!15584 a!3235) j!176) a!3235 mask!3524) (Found!4058 j!176)))))

(declare-fun b!504286 () Bool)

(assert (=> b!504286 (= e!295262 e!295265)))

(declare-fun res!305610 () Bool)

(assert (=> b!504286 (=> (not res!305610) (not e!295265))))

(declare-fun lt!229657 () SeekEntryResult!4058)

(assert (=> b!504286 (= res!305610 (or (= lt!229657 (MissingZero!4058 i!1204)) (= lt!229657 (MissingVacant!4058 i!1204))))))

(assert (=> b!504286 (= lt!229657 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!504287 () Bool)

(declare-fun Unit!15325 () Unit!15322)

(assert (=> b!504287 (= e!295267 Unit!15325)))

(declare-fun lt!229664 () Unit!15322)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32414 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15322)

(assert (=> b!504287 (= lt!229664 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!229659 #b00000000000000000000000000000000 (index!18422 lt!229654) (x!47462 lt!229654) mask!3524))))

(declare-fun res!305612 () Bool)

(assert (=> b!504287 (= res!305612 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229659 lt!229662 lt!229663 mask!3524) (Intermediate!4058 false (index!18422 lt!229654) (x!47462 lt!229654))))))

(declare-fun e!295270 () Bool)

(assert (=> b!504287 (=> (not res!305612) (not e!295270))))

(assert (=> b!504287 e!295270))

(declare-fun b!504288 () Bool)

(declare-fun res!305608 () Bool)

(assert (=> b!504288 (=> (not res!305608) (not e!295262))))

(declare-fun arrayContainsKey!0 (array!32414 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!504288 (= res!305608 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!504289 () Bool)

(assert (=> b!504289 (= e!295264 true)))

(declare-fun lt!229658 () SeekEntryResult!4058)

(assert (=> b!504289 (= lt!229658 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229659 lt!229662 lt!229663 mask!3524))))

(declare-fun res!305615 () Bool)

(assert (=> start!45698 (=> (not res!305615) (not e!295262))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45698 (= res!305615 (validMask!0 mask!3524))))

(assert (=> start!45698 e!295262))

(assert (=> start!45698 true))

(declare-fun array_inv!11358 (array!32414) Bool)

(assert (=> start!45698 (array_inv!11358 a!3235)))

(declare-fun b!504290 () Bool)

(assert (=> b!504290 (= e!295270 false)))

(declare-fun b!504291 () Bool)

(declare-fun res!305604 () Bool)

(assert (=> b!504291 (=> res!305604 e!295269)))

(assert (=> b!504291 (= res!305604 (or (undefined!4870 lt!229654) (not (is-Intermediate!4058 lt!229654))))))

(declare-fun b!504292 () Bool)

(declare-fun res!305606 () Bool)

(assert (=> b!504292 (=> (not res!305606) (not e!295262))))

(assert (=> b!504292 (= res!305606 (validKeyInArray!0 k!2280))))

(declare-fun b!504293 () Bool)

(declare-fun res!305607 () Bool)

(assert (=> b!504293 (=> (not res!305607) (not e!295265))))

(assert (=> b!504293 (= res!305607 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!45698 res!305615) b!504282))

(assert (= (and b!504282 res!305618) b!504281))

(assert (= (and b!504281 res!305614) b!504292))

(assert (= (and b!504292 res!305606) b!504288))

(assert (= (and b!504288 res!305608) b!504286))

(assert (= (and b!504286 res!305610) b!504293))

(assert (= (and b!504293 res!305607) b!504279))

(assert (= (and b!504279 res!305611) b!504278))

(assert (= (and b!504278 res!305613) b!504285))

(assert (= (and b!504278 (not res!305605)) b!504291))

(assert (= (and b!504291 (not res!305604)) b!504277))

(assert (= (and b!504277 c!59615) b!504287))

(assert (= (and b!504277 (not c!59615)) b!504283))

(assert (= (and b!504287 res!305612) b!504290))

(assert (= (and b!504277 (not res!305616)) b!504284))

(assert (= (and b!504284 res!305617) b!504280))

(assert (= (and b!504284 (not res!305609)) b!504289))

(declare-fun m!485049 () Bool)

(assert (=> b!504278 m!485049))

(declare-fun m!485051 () Bool)

(assert (=> b!504278 m!485051))

(declare-fun m!485053 () Bool)

(assert (=> b!504278 m!485053))

(declare-fun m!485055 () Bool)

(assert (=> b!504278 m!485055))

(declare-fun m!485057 () Bool)

(assert (=> b!504278 m!485057))

(declare-fun m!485059 () Bool)

(assert (=> b!504278 m!485059))

(assert (=> b!504278 m!485055))

(declare-fun m!485061 () Bool)

(assert (=> b!504278 m!485061))

(assert (=> b!504278 m!485055))

(declare-fun m!485063 () Bool)

(assert (=> b!504278 m!485063))

(declare-fun m!485065 () Bool)

(assert (=> b!504278 m!485065))

(declare-fun m!485067 () Bool)

(assert (=> b!504286 m!485067))

(declare-fun m!485069 () Bool)

(assert (=> b!504279 m!485069))

(declare-fun m!485071 () Bool)

(assert (=> b!504292 m!485071))

(declare-fun m!485073 () Bool)

(assert (=> b!504288 m!485073))

(declare-fun m!485075 () Bool)

(assert (=> b!504277 m!485075))

(declare-fun m!485077 () Bool)

(assert (=> b!504277 m!485077))

(assert (=> b!504277 m!485055))

(assert (=> b!504281 m!485055))

(assert (=> b!504281 m!485055))

(declare-fun m!485079 () Bool)

(assert (=> b!504281 m!485079))

(assert (=> b!504285 m!485055))

(assert (=> b!504285 m!485055))

(declare-fun m!485081 () Bool)

(assert (=> b!504285 m!485081))

(declare-fun m!485083 () Bool)

(assert (=> b!504289 m!485083))

(declare-fun m!485085 () Bool)

(assert (=> b!504293 m!485085))

(declare-fun m!485087 () Bool)

(assert (=> start!45698 m!485087))

(declare-fun m!485089 () Bool)

(assert (=> start!45698 m!485089))

(assert (=> b!504280 m!485055))

(assert (=> b!504280 m!485055))

(declare-fun m!485091 () Bool)

(assert (=> b!504280 m!485091))

(declare-fun m!485093 () Bool)

(assert (=> b!504287 m!485093))

(assert (=> b!504287 m!485083))

(push 1)

