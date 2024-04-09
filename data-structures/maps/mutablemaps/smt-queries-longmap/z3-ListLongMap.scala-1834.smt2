; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33224 () Bool)

(assert start!33224)

(declare-fun res!181983 () Bool)

(declare-fun e!202678 () Bool)

(assert (=> start!33224 (=> (not res!181983) (not e!202678))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33224 (= res!181983 (validMask!0 mask!3777))))

(assert (=> start!33224 e!202678))

(declare-datatypes ((array!16879 0))(
  ( (array!16880 (arr!7979 (Array (_ BitVec 32) (_ BitVec 64))) (size!8331 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16879)

(declare-fun array_inv!5933 (array!16879) Bool)

(assert (=> start!33224 (array_inv!5933 a!3305)))

(assert (=> start!33224 true))

(declare-fun b!330111 () Bool)

(declare-fun res!181985 () Bool)

(declare-fun e!202676 () Bool)

(assert (=> b!330111 (=> (not res!181985) (not e!202676))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!330111 (= res!181985 (and (= (select (arr!7979 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8331 a!3305))))))

(declare-fun b!330112 () Bool)

(declare-datatypes ((Unit!10266 0))(
  ( (Unit!10267) )
))
(declare-fun e!202677 () Unit!10266)

(declare-fun Unit!10268 () Unit!10266)

(assert (=> b!330112 (= e!202677 Unit!10268)))

(declare-fun b!330113 () Bool)

(declare-fun res!181986 () Bool)

(assert (=> b!330113 (=> (not res!181986) (not e!202678))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16879 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!330113 (= res!181986 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!330114 () Bool)

(declare-fun res!181980 () Bool)

(assert (=> b!330114 (=> (not res!181980) (not e!202678))))

(declare-datatypes ((SeekEntryResult!3121 0))(
  ( (MissingZero!3121 (index!14660 (_ BitVec 32))) (Found!3121 (index!14661 (_ BitVec 32))) (Intermediate!3121 (undefined!3933 Bool) (index!14662 (_ BitVec 32)) (x!32907 (_ BitVec 32))) (Undefined!3121) (MissingVacant!3121 (index!14663 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16879 (_ BitVec 32)) SeekEntryResult!3121)

(assert (=> b!330114 (= res!181980 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3121 i!1250)))))

(declare-fun b!330115 () Bool)

(declare-fun Unit!10269 () Unit!10266)

(assert (=> b!330115 (= e!202677 Unit!10269)))

(assert (=> b!330115 false))

(declare-fun b!330116 () Bool)

(assert (=> b!330116 false))

(declare-fun e!202673 () Unit!10266)

(declare-fun Unit!10270 () Unit!10266)

(assert (=> b!330116 (= e!202673 Unit!10270)))

(declare-fun b!330117 () Bool)

(assert (=> b!330117 (= e!202676 (not (= (select (arr!7979 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!330117 (= index!1840 resIndex!58)))

(declare-fun lt!158448 () Unit!10266)

(declare-fun e!202674 () Unit!10266)

(assert (=> b!330117 (= lt!158448 e!202674)))

(declare-fun c!51708 () Bool)

(assert (=> b!330117 (= c!51708 (not (= resIndex!58 index!1840)))))

(declare-fun b!330118 () Bool)

(declare-fun Unit!10271 () Unit!10266)

(assert (=> b!330118 (= e!202674 Unit!10271)))

(declare-fun b!330119 () Bool)

(declare-fun res!181981 () Bool)

(assert (=> b!330119 (=> (not res!181981) (not e!202678))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!330119 (= res!181981 (validKeyInArray!0 k0!2497))))

(declare-fun b!330120 () Bool)

(declare-fun res!181984 () Bool)

(assert (=> b!330120 (=> (not res!181984) (not e!202676))))

(assert (=> b!330120 (= res!181984 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7979 a!3305) index!1840) k0!2497)) (= x!1490 resX!58)))))

(declare-fun b!330121 () Bool)

(declare-fun res!181989 () Bool)

(assert (=> b!330121 (=> (not res!181989) (not e!202678))))

(assert (=> b!330121 (= res!181989 (and (= (size!8331 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8331 a!3305))))))

(declare-fun b!330122 () Bool)

(assert (=> b!330122 (= e!202678 e!202676)))

(declare-fun res!181988 () Bool)

(assert (=> b!330122 (=> (not res!181988) (not e!202676))))

(declare-fun lt!158449 () SeekEntryResult!3121)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16879 (_ BitVec 32)) SeekEntryResult!3121)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330122 (= res!181988 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!158449))))

(assert (=> b!330122 (= lt!158449 (Intermediate!3121 false resIndex!58 resX!58))))

(declare-fun b!330123 () Bool)

(declare-fun res!181982 () Bool)

(assert (=> b!330123 (=> (not res!181982) (not e!202678))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16879 (_ BitVec 32)) Bool)

(assert (=> b!330123 (= res!181982 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!330124 () Bool)

(assert (=> b!330124 (= e!202674 e!202673)))

(declare-fun c!51710 () Bool)

(assert (=> b!330124 (= c!51710 (or (= (select (arr!7979 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7979 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!330125 () Bool)

(assert (=> b!330125 false))

(declare-fun lt!158450 () Unit!10266)

(assert (=> b!330125 (= lt!158450 e!202677)))

(declare-fun c!51709 () Bool)

(get-info :version)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330125 (= c!51709 ((_ is Intermediate!3121) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777)))))

(declare-fun Unit!10272 () Unit!10266)

(assert (=> b!330125 (= e!202673 Unit!10272)))

(declare-fun b!330126 () Bool)

(declare-fun res!181987 () Bool)

(assert (=> b!330126 (=> (not res!181987) (not e!202676))))

(assert (=> b!330126 (= res!181987 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!158449))))

(assert (= (and start!33224 res!181983) b!330121))

(assert (= (and b!330121 res!181989) b!330119))

(assert (= (and b!330119 res!181981) b!330113))

(assert (= (and b!330113 res!181986) b!330114))

(assert (= (and b!330114 res!181980) b!330123))

(assert (= (and b!330123 res!181982) b!330122))

(assert (= (and b!330122 res!181988) b!330111))

(assert (= (and b!330111 res!181985) b!330126))

(assert (= (and b!330126 res!181987) b!330120))

(assert (= (and b!330120 res!181984) b!330117))

(assert (= (and b!330117 c!51708) b!330124))

(assert (= (and b!330117 (not c!51708)) b!330118))

(assert (= (and b!330124 c!51710) b!330116))

(assert (= (and b!330124 (not c!51710)) b!330125))

(assert (= (and b!330125 c!51709) b!330112))

(assert (= (and b!330125 (not c!51709)) b!330115))

(declare-fun m!335445 () Bool)

(assert (=> start!33224 m!335445))

(declare-fun m!335447 () Bool)

(assert (=> start!33224 m!335447))

(declare-fun m!335449 () Bool)

(assert (=> b!330126 m!335449))

(declare-fun m!335451 () Bool)

(assert (=> b!330114 m!335451))

(declare-fun m!335453 () Bool)

(assert (=> b!330125 m!335453))

(assert (=> b!330125 m!335453))

(declare-fun m!335455 () Bool)

(assert (=> b!330125 m!335455))

(declare-fun m!335457 () Bool)

(assert (=> b!330119 m!335457))

(declare-fun m!335459 () Bool)

(assert (=> b!330117 m!335459))

(declare-fun m!335461 () Bool)

(assert (=> b!330123 m!335461))

(declare-fun m!335463 () Bool)

(assert (=> b!330113 m!335463))

(assert (=> b!330120 m!335459))

(declare-fun m!335465 () Bool)

(assert (=> b!330122 m!335465))

(assert (=> b!330122 m!335465))

(declare-fun m!335467 () Bool)

(assert (=> b!330122 m!335467))

(declare-fun m!335469 () Bool)

(assert (=> b!330111 m!335469))

(assert (=> b!330124 m!335459))

(check-sat (not b!330125) (not b!330114) (not start!33224) (not b!330122) (not b!330119) (not b!330126) (not b!330123) (not b!330113))
(check-sat)
