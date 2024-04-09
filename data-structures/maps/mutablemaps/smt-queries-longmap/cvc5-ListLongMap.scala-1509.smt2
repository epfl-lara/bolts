; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28594 () Bool)

(assert start!28594)

(declare-fun b!292205 () Bool)

(declare-fun res!153303 () Bool)

(declare-fun e!184894 () Bool)

(assert (=> b!292205 (=> (not res!153303) (not e!184894))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14762 0))(
  ( (array!14763 (arr!7003 (Array (_ BitVec 32) (_ BitVec 64))) (size!7355 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14762)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!292205 (= res!153303 (and (= (size!7355 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7355 a!3312))))))

(declare-fun b!292206 () Bool)

(declare-fun e!184896 () Bool)

(assert (=> b!292206 (= e!184896 (not true))))

(declare-fun lt!144715 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2163 0))(
  ( (MissingZero!2163 (index!10822 (_ BitVec 32))) (Found!2163 (index!10823 (_ BitVec 32))) (Intermediate!2163 (undefined!2975 Bool) (index!10824 (_ BitVec 32)) (x!28986 (_ BitVec 32))) (Undefined!2163) (MissingVacant!2163 (index!10825 (_ BitVec 32))) )
))
(declare-fun lt!144716 () SeekEntryResult!2163)

(declare-datatypes ((Unit!9157 0))(
  ( (Unit!9158) )
))
(declare-fun lt!144714 () Unit!9157)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!14762 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9157)

(assert (=> b!292206 (= lt!144714 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!144715 (index!10824 lt!144716) (x!28986 lt!144716) mask!3809))))

(assert (=> b!292206 (= (index!10824 lt!144716) i!1256)))

(declare-fun b!292207 () Bool)

(declare-fun res!153305 () Bool)

(assert (=> b!292207 (=> (not res!153305) (not e!184894))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292207 (= res!153305 (validKeyInArray!0 k!2524))))

(declare-fun b!292208 () Bool)

(declare-fun e!184895 () Bool)

(assert (=> b!292208 (= e!184894 e!184895)))

(declare-fun res!153302 () Bool)

(assert (=> b!292208 (=> (not res!153302) (not e!184895))))

(declare-fun lt!144710 () SeekEntryResult!2163)

(declare-fun lt!144712 () Bool)

(assert (=> b!292208 (= res!153302 (or lt!144712 (= lt!144710 (MissingVacant!2163 i!1256))))))

(assert (=> b!292208 (= lt!144712 (= lt!144710 (MissingZero!2163 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14762 (_ BitVec 32)) SeekEntryResult!2163)

(assert (=> b!292208 (= lt!144710 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!292209 () Bool)

(declare-fun e!184897 () Bool)

(assert (=> b!292209 (= e!184897 e!184896)))

(declare-fun res!153304 () Bool)

(assert (=> b!292209 (=> (not res!153304) (not e!184896))))

(declare-fun lt!144713 () Bool)

(assert (=> b!292209 (= res!153304 (and (or lt!144713 (not (undefined!2975 lt!144716))) (not lt!144713) (= (select (arr!7003 a!3312) (index!10824 lt!144716)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!292209 (= lt!144713 (not (is-Intermediate!2163 lt!144716)))))

(declare-fun res!153300 () Bool)

(assert (=> start!28594 (=> (not res!153300) (not e!184894))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28594 (= res!153300 (validMask!0 mask!3809))))

(assert (=> start!28594 e!184894))

(assert (=> start!28594 true))

(declare-fun array_inv!4957 (array!14762) Bool)

(assert (=> start!28594 (array_inv!4957 a!3312)))

(declare-fun b!292210 () Bool)

(declare-fun res!153301 () Bool)

(assert (=> b!292210 (=> (not res!153301) (not e!184895))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14762 (_ BitVec 32)) Bool)

(assert (=> b!292210 (= res!153301 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292211 () Bool)

(assert (=> b!292211 (= e!184895 e!184897)))

(declare-fun res!153299 () Bool)

(assert (=> b!292211 (=> (not res!153299) (not e!184897))))

(assert (=> b!292211 (= res!153299 (and (not lt!144712) (= lt!144710 (MissingVacant!2163 i!1256))))))

(declare-fun lt!144711 () SeekEntryResult!2163)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14762 (_ BitVec 32)) SeekEntryResult!2163)

(assert (=> b!292211 (= lt!144711 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144715 k!2524 (array!14763 (store (arr!7003 a!3312) i!1256 k!2524) (size!7355 a!3312)) mask!3809))))

(assert (=> b!292211 (= lt!144716 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144715 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292211 (= lt!144715 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!292212 () Bool)

(declare-fun res!153306 () Bool)

(assert (=> b!292212 (=> (not res!153306) (not e!184894))))

(declare-fun arrayContainsKey!0 (array!14762 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292212 (= res!153306 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28594 res!153300) b!292205))

(assert (= (and b!292205 res!153303) b!292207))

(assert (= (and b!292207 res!153305) b!292212))

(assert (= (and b!292212 res!153306) b!292208))

(assert (= (and b!292208 res!153302) b!292210))

(assert (= (and b!292210 res!153301) b!292211))

(assert (= (and b!292211 res!153299) b!292209))

(assert (= (and b!292209 res!153304) b!292206))

(declare-fun m!305971 () Bool)

(assert (=> b!292211 m!305971))

(declare-fun m!305973 () Bool)

(assert (=> b!292211 m!305973))

(declare-fun m!305975 () Bool)

(assert (=> b!292211 m!305975))

(declare-fun m!305977 () Bool)

(assert (=> b!292211 m!305977))

(declare-fun m!305979 () Bool)

(assert (=> b!292208 m!305979))

(declare-fun m!305981 () Bool)

(assert (=> b!292207 m!305981))

(declare-fun m!305983 () Bool)

(assert (=> start!28594 m!305983))

(declare-fun m!305985 () Bool)

(assert (=> start!28594 m!305985))

(declare-fun m!305987 () Bool)

(assert (=> b!292212 m!305987))

(declare-fun m!305989 () Bool)

(assert (=> b!292206 m!305989))

(declare-fun m!305991 () Bool)

(assert (=> b!292210 m!305991))

(declare-fun m!305993 () Bool)

(assert (=> b!292209 m!305993))

(push 1)

