; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28586 () Bool)

(assert start!28586)

(declare-fun b!292109 () Bool)

(declare-fun res!153204 () Bool)

(declare-fun e!184837 () Bool)

(assert (=> b!292109 (=> (not res!153204) (not e!184837))))

(declare-datatypes ((array!14754 0))(
  ( (array!14755 (arr!6999 (Array (_ BitVec 32) (_ BitVec 64))) (size!7351 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14754)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14754 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292109 (= res!153204 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292110 () Bool)

(declare-fun e!184836 () Bool)

(assert (=> b!292110 (= e!184836 (not true))))

(declare-datatypes ((Unit!9149 0))(
  ( (Unit!9150) )
))
(declare-fun lt!144632 () Unit!9149)

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2159 0))(
  ( (MissingZero!2159 (index!10806 (_ BitVec 32))) (Found!2159 (index!10807 (_ BitVec 32))) (Intermediate!2159 (undefined!2971 Bool) (index!10808 (_ BitVec 32)) (x!28966 (_ BitVec 32))) (Undefined!2159) (MissingVacant!2159 (index!10809 (_ BitVec 32))) )
))
(declare-fun lt!144630 () SeekEntryResult!2159)

(declare-fun lt!144628 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!14754 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9149)

(assert (=> b!292110 (= lt!144632 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!144628 (index!10808 lt!144630) (x!28966 lt!144630) mask!3809))))

(assert (=> b!292110 (= (index!10808 lt!144630) i!1256)))

(declare-fun b!292111 () Bool)

(declare-fun e!184835 () Bool)

(assert (=> b!292111 (= e!184835 e!184836)))

(declare-fun res!153207 () Bool)

(assert (=> b!292111 (=> (not res!153207) (not e!184836))))

(declare-fun lt!144631 () Bool)

(assert (=> b!292111 (= res!153207 (and (or lt!144631 (not (undefined!2971 lt!144630))) (not lt!144631) (= (select (arr!6999 a!3312) (index!10808 lt!144630)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!292111 (= lt!144631 (not (is-Intermediate!2159 lt!144630)))))

(declare-fun b!292112 () Bool)

(declare-fun e!184834 () Bool)

(assert (=> b!292112 (= e!184837 e!184834)))

(declare-fun res!153206 () Bool)

(assert (=> b!292112 (=> (not res!153206) (not e!184834))))

(declare-fun lt!144627 () Bool)

(declare-fun lt!144629 () SeekEntryResult!2159)

(assert (=> b!292112 (= res!153206 (or lt!144627 (= lt!144629 (MissingVacant!2159 i!1256))))))

(assert (=> b!292112 (= lt!144627 (= lt!144629 (MissingZero!2159 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14754 (_ BitVec 32)) SeekEntryResult!2159)

(assert (=> b!292112 (= lt!144629 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!292113 () Bool)

(declare-fun res!153203 () Bool)

(assert (=> b!292113 (=> (not res!153203) (not e!184834))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14754 (_ BitVec 32)) Bool)

(assert (=> b!292113 (= res!153203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!153209 () Bool)

(assert (=> start!28586 (=> (not res!153209) (not e!184837))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28586 (= res!153209 (validMask!0 mask!3809))))

(assert (=> start!28586 e!184837))

(assert (=> start!28586 true))

(declare-fun array_inv!4953 (array!14754) Bool)

(assert (=> start!28586 (array_inv!4953 a!3312)))

(declare-fun b!292114 () Bool)

(assert (=> b!292114 (= e!184834 e!184835)))

(declare-fun res!153210 () Bool)

(assert (=> b!292114 (=> (not res!153210) (not e!184835))))

(assert (=> b!292114 (= res!153210 (and (not lt!144627) (= lt!144629 (MissingVacant!2159 i!1256))))))

(declare-fun lt!144626 () SeekEntryResult!2159)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14754 (_ BitVec 32)) SeekEntryResult!2159)

(assert (=> b!292114 (= lt!144626 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144628 k!2524 (array!14755 (store (arr!6999 a!3312) i!1256 k!2524) (size!7351 a!3312)) mask!3809))))

(assert (=> b!292114 (= lt!144630 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144628 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292114 (= lt!144628 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!292115 () Bool)

(declare-fun res!153205 () Bool)

(assert (=> b!292115 (=> (not res!153205) (not e!184837))))

(assert (=> b!292115 (= res!153205 (and (= (size!7351 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7351 a!3312))))))

(declare-fun b!292116 () Bool)

(declare-fun res!153208 () Bool)

(assert (=> b!292116 (=> (not res!153208) (not e!184837))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292116 (= res!153208 (validKeyInArray!0 k!2524))))

(assert (= (and start!28586 res!153209) b!292115))

(assert (= (and b!292115 res!153205) b!292116))

(assert (= (and b!292116 res!153208) b!292109))

(assert (= (and b!292109 res!153204) b!292112))

(assert (= (and b!292112 res!153206) b!292113))

(assert (= (and b!292113 res!153203) b!292114))

(assert (= (and b!292114 res!153210) b!292111))

(assert (= (and b!292111 res!153207) b!292110))

(declare-fun m!305875 () Bool)

(assert (=> b!292110 m!305875))

(declare-fun m!305877 () Bool)

(assert (=> b!292112 m!305877))

(declare-fun m!305879 () Bool)

(assert (=> start!28586 m!305879))

(declare-fun m!305881 () Bool)

(assert (=> start!28586 m!305881))

(declare-fun m!305883 () Bool)

(assert (=> b!292114 m!305883))

(declare-fun m!305885 () Bool)

(assert (=> b!292114 m!305885))

(declare-fun m!305887 () Bool)

(assert (=> b!292114 m!305887))

(declare-fun m!305889 () Bool)

(assert (=> b!292114 m!305889))

(declare-fun m!305891 () Bool)

(assert (=> b!292109 m!305891))

(declare-fun m!305893 () Bool)

(assert (=> b!292111 m!305893))

(declare-fun m!305895 () Bool)

(assert (=> b!292113 m!305895))

(declare-fun m!305897 () Bool)

(assert (=> b!292116 m!305897))

(push 1)

(assert (not b!292110))

(assert (not b!292116))

(assert (not b!292114))

(assert (not b!292109))

(assert (not b!292112))

(assert (not start!28586))

(assert (not b!292113))

