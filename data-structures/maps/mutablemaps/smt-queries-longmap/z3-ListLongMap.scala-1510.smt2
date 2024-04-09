; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28602 () Bool)

(assert start!28602)

(declare-fun b!292301 () Bool)

(declare-fun e!184957 () Bool)

(declare-fun e!184953 () Bool)

(assert (=> b!292301 (= e!184957 e!184953)))

(declare-fun res!153399 () Bool)

(assert (=> b!292301 (=> (not res!153399) (not e!184953))))

(declare-datatypes ((SeekEntryResult!2167 0))(
  ( (MissingZero!2167 (index!10838 (_ BitVec 32))) (Found!2167 (index!10839 (_ BitVec 32))) (Intermediate!2167 (undefined!2979 Bool) (index!10840 (_ BitVec 32)) (x!28998 (_ BitVec 32))) (Undefined!2167) (MissingVacant!2167 (index!10841 (_ BitVec 32))) )
))
(declare-fun lt!144798 () SeekEntryResult!2167)

(declare-datatypes ((array!14770 0))(
  ( (array!14771 (arr!7007 (Array (_ BitVec 32) (_ BitVec 64))) (size!7359 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14770)

(declare-fun lt!144797 () Bool)

(assert (=> b!292301 (= res!153399 (and (or lt!144797 (not (undefined!2979 lt!144798))) (not lt!144797) (= (select (arr!7007 a!3312) (index!10840 lt!144798)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(get-info :version)

(assert (=> b!292301 (= lt!144797 (not ((_ is Intermediate!2167) lt!144798)))))

(declare-fun b!292302 () Bool)

(declare-fun res!153395 () Bool)

(declare-fun e!184955 () Bool)

(assert (=> b!292302 (=> (not res!153395) (not e!184955))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292302 (= res!153395 (validKeyInArray!0 k0!2524))))

(declare-fun b!292303 () Bool)

(declare-fun res!153401 () Bool)

(assert (=> b!292303 (=> (not res!153401) (not e!184955))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!292303 (= res!153401 (and (= (size!7359 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7359 a!3312))))))

(declare-fun res!153397 () Bool)

(assert (=> start!28602 (=> (not res!153397) (not e!184955))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28602 (= res!153397 (validMask!0 mask!3809))))

(assert (=> start!28602 e!184955))

(assert (=> start!28602 true))

(declare-fun array_inv!4961 (array!14770) Bool)

(assert (=> start!28602 (array_inv!4961 a!3312)))

(declare-fun b!292304 () Bool)

(assert (=> b!292304 (= e!184953 (not true))))

(declare-fun lt!144799 () (_ BitVec 32))

(declare-datatypes ((Unit!9165 0))(
  ( (Unit!9166) )
))
(declare-fun lt!144794 () Unit!9165)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!14770 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9165)

(assert (=> b!292304 (= lt!144794 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3312 i!1256 k0!2524 #b00000000000000000000000000000000 lt!144799 (index!10840 lt!144798) (x!28998 lt!144798) mask!3809))))

(assert (=> b!292304 (= (index!10840 lt!144798) i!1256)))

(declare-fun b!292305 () Bool)

(declare-fun res!153398 () Bool)

(declare-fun e!184956 () Bool)

(assert (=> b!292305 (=> (not res!153398) (not e!184956))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14770 (_ BitVec 32)) Bool)

(assert (=> b!292305 (= res!153398 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292306 () Bool)

(declare-fun res!153402 () Bool)

(assert (=> b!292306 (=> (not res!153402) (not e!184955))))

(declare-fun arrayContainsKey!0 (array!14770 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292306 (= res!153402 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292307 () Bool)

(assert (=> b!292307 (= e!184956 e!184957)))

(declare-fun res!153396 () Bool)

(assert (=> b!292307 (=> (not res!153396) (not e!184957))))

(declare-fun lt!144800 () SeekEntryResult!2167)

(declare-fun lt!144795 () Bool)

(assert (=> b!292307 (= res!153396 (and (not lt!144795) (= lt!144800 (MissingVacant!2167 i!1256))))))

(declare-fun lt!144796 () SeekEntryResult!2167)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14770 (_ BitVec 32)) SeekEntryResult!2167)

(assert (=> b!292307 (= lt!144796 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144799 k0!2524 (array!14771 (store (arr!7007 a!3312) i!1256 k0!2524) (size!7359 a!3312)) mask!3809))))

(assert (=> b!292307 (= lt!144798 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144799 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292307 (= lt!144799 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!292308 () Bool)

(assert (=> b!292308 (= e!184955 e!184956)))

(declare-fun res!153400 () Bool)

(assert (=> b!292308 (=> (not res!153400) (not e!184956))))

(assert (=> b!292308 (= res!153400 (or lt!144795 (= lt!144800 (MissingVacant!2167 i!1256))))))

(assert (=> b!292308 (= lt!144795 (= lt!144800 (MissingZero!2167 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14770 (_ BitVec 32)) SeekEntryResult!2167)

(assert (=> b!292308 (= lt!144800 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(assert (= (and start!28602 res!153397) b!292303))

(assert (= (and b!292303 res!153401) b!292302))

(assert (= (and b!292302 res!153395) b!292306))

(assert (= (and b!292306 res!153402) b!292308))

(assert (= (and b!292308 res!153400) b!292305))

(assert (= (and b!292305 res!153398) b!292307))

(assert (= (and b!292307 res!153396) b!292301))

(assert (= (and b!292301 res!153399) b!292304))

(declare-fun m!306067 () Bool)

(assert (=> b!292306 m!306067))

(declare-fun m!306069 () Bool)

(assert (=> b!292302 m!306069))

(declare-fun m!306071 () Bool)

(assert (=> b!292304 m!306071))

(declare-fun m!306073 () Bool)

(assert (=> start!28602 m!306073))

(declare-fun m!306075 () Bool)

(assert (=> start!28602 m!306075))

(declare-fun m!306077 () Bool)

(assert (=> b!292305 m!306077))

(declare-fun m!306079 () Bool)

(assert (=> b!292307 m!306079))

(declare-fun m!306081 () Bool)

(assert (=> b!292307 m!306081))

(declare-fun m!306083 () Bool)

(assert (=> b!292307 m!306083))

(declare-fun m!306085 () Bool)

(assert (=> b!292307 m!306085))

(declare-fun m!306087 () Bool)

(assert (=> b!292308 m!306087))

(declare-fun m!306089 () Bool)

(assert (=> b!292301 m!306089))

(check-sat (not b!292308) (not b!292306) (not start!28602) (not b!292304) (not b!292307) (not b!292305) (not b!292302))
(check-sat)
