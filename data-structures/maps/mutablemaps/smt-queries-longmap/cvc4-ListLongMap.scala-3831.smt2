; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52560 () Bool)

(assert start!52560)

(declare-fun b!573431 () Bool)

(declare-fun res!362817 () Bool)

(declare-fun e!329896 () Bool)

(assert (=> b!573431 (=> (not res!362817) (not e!329896))))

(declare-datatypes ((array!35848 0))(
  ( (array!35849 (arr!17207 (Array (_ BitVec 32) (_ BitVec 64))) (size!17571 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35848)

(declare-datatypes ((List!11340 0))(
  ( (Nil!11337) (Cons!11336 (h!12366 (_ BitVec 64)) (t!17576 List!11340)) )
))
(declare-fun arrayNoDuplicates!0 (array!35848 (_ BitVec 32) List!11340) Bool)

(assert (=> b!573431 (= res!362817 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11337))))

(declare-fun b!573432 () Bool)

(declare-fun res!362824 () Bool)

(declare-fun e!329902 () Bool)

(assert (=> b!573432 (=> (not res!362824) (not e!329902))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!573432 (= res!362824 (and (= (size!17571 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17571 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17571 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!362827 () Bool)

(assert (=> start!52560 (=> (not res!362827) (not e!329902))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52560 (= res!362827 (validMask!0 mask!3119))))

(assert (=> start!52560 e!329902))

(assert (=> start!52560 true))

(declare-fun array_inv!12981 (array!35848) Bool)

(assert (=> start!52560 (array_inv!12981 a!3118)))

(declare-fun b!573433 () Bool)

(declare-fun res!362816 () Bool)

(assert (=> b!573433 (=> (not res!362816) (not e!329902))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!573433 (= res!362816 (validKeyInArray!0 k!1914))))

(declare-fun b!573434 () Bool)

(declare-fun res!362820 () Bool)

(assert (=> b!573434 (=> (not res!362820) (not e!329902))))

(assert (=> b!573434 (= res!362820 (validKeyInArray!0 (select (arr!17207 a!3118) j!142)))))

(declare-fun b!573435 () Bool)

(assert (=> b!573435 (= e!329902 e!329896)))

(declare-fun res!362823 () Bool)

(assert (=> b!573435 (=> (not res!362823) (not e!329896))))

(declare-datatypes ((SeekEntryResult!5663 0))(
  ( (MissingZero!5663 (index!24879 (_ BitVec 32))) (Found!5663 (index!24880 (_ BitVec 32))) (Intermediate!5663 (undefined!6475 Bool) (index!24881 (_ BitVec 32)) (x!53776 (_ BitVec 32))) (Undefined!5663) (MissingVacant!5663 (index!24882 (_ BitVec 32))) )
))
(declare-fun lt!261919 () SeekEntryResult!5663)

(assert (=> b!573435 (= res!362823 (or (= lt!261919 (MissingZero!5663 i!1132)) (= lt!261919 (MissingVacant!5663 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35848 (_ BitVec 32)) SeekEntryResult!5663)

(assert (=> b!573435 (= lt!261919 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!573436 () Bool)

(declare-fun res!362818 () Bool)

(assert (=> b!573436 (=> (not res!362818) (not e!329902))))

(declare-fun arrayContainsKey!0 (array!35848 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!573436 (= res!362818 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!573437 () Bool)

(declare-fun e!329897 () Bool)

(declare-fun e!329900 () Bool)

(assert (=> b!573437 (= e!329897 e!329900)))

(declare-fun res!362819 () Bool)

(assert (=> b!573437 (=> res!362819 e!329900)))

(declare-fun lt!261924 () (_ BitVec 64))

(assert (=> b!573437 (= res!362819 (or (= lt!261924 (select (arr!17207 a!3118) j!142)) (= lt!261924 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!261921 () SeekEntryResult!5663)

(assert (=> b!573437 (= lt!261924 (select (arr!17207 a!3118) (index!24881 lt!261921)))))

(declare-fun b!573438 () Bool)

(declare-fun e!329901 () Bool)

(assert (=> b!573438 (= e!329901 e!329897)))

(declare-fun res!362825 () Bool)

(assert (=> b!573438 (=> res!362825 e!329897)))

(assert (=> b!573438 (= res!362825 (or (undefined!6475 lt!261921) (not (is-Intermediate!5663 lt!261921))))))

(declare-fun b!573439 () Bool)

(declare-fun res!362828 () Bool)

(assert (=> b!573439 (=> (not res!362828) (not e!329896))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35848 (_ BitVec 32)) Bool)

(assert (=> b!573439 (= res!362828 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun e!329895 () Bool)

(declare-fun lt!261923 () array!35848)

(declare-fun lt!261926 () (_ BitVec 64))

(declare-fun b!573440 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35848 (_ BitVec 32)) SeekEntryResult!5663)

(assert (=> b!573440 (= e!329895 (= (seekEntryOrOpen!0 lt!261926 lt!261923 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53776 lt!261921) (index!24881 lt!261921) (index!24881 lt!261921) lt!261926 lt!261923 mask!3119)))))

(declare-fun b!573441 () Bool)

(assert (=> b!573441 (= e!329900 e!329895)))

(declare-fun res!362826 () Bool)

(assert (=> b!573441 (=> (not res!362826) (not e!329895))))

(declare-fun lt!261920 () SeekEntryResult!5663)

(assert (=> b!573441 (= res!362826 (= lt!261920 (seekKeyOrZeroReturnVacant!0 (x!53776 lt!261921) (index!24881 lt!261921) (index!24881 lt!261921) (select (arr!17207 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!573442 () Bool)

(declare-fun e!329899 () Bool)

(assert (=> b!573442 (= e!329896 e!329899)))

(declare-fun res!362822 () Bool)

(assert (=> b!573442 (=> (not res!362822) (not e!329899))))

(declare-fun lt!261918 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35848 (_ BitVec 32)) SeekEntryResult!5663)

(assert (=> b!573442 (= res!362822 (= lt!261921 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261918 lt!261926 lt!261923 mask!3119)))))

(declare-fun lt!261922 () (_ BitVec 32))

(assert (=> b!573442 (= lt!261921 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261922 (select (arr!17207 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!573442 (= lt!261918 (toIndex!0 lt!261926 mask!3119))))

(assert (=> b!573442 (= lt!261926 (select (store (arr!17207 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!573442 (= lt!261922 (toIndex!0 (select (arr!17207 a!3118) j!142) mask!3119))))

(assert (=> b!573442 (= lt!261923 (array!35849 (store (arr!17207 a!3118) i!1132 k!1914) (size!17571 a!3118)))))

(declare-fun b!573443 () Bool)

(assert (=> b!573443 (= e!329899 (not (or (undefined!6475 lt!261921) (not (is-Intermediate!5663 lt!261921)) (let ((bdg!17977 (select (arr!17207 a!3118) (index!24881 lt!261921)))) (or (= bdg!17977 (select (arr!17207 a!3118) j!142)) (= bdg!17977 #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt (index!24881 lt!261921) #b00000000000000000000000000000000) (bvsge (index!24881 lt!261921) (bvadd #b00000000000000000000000000000001 mask!3119)) (and (bvsle (x!53776 lt!261921) #b01111111111111111111111111111110) (bvsge (x!53776 lt!261921) #b00000000000000000000000000000000)))))))))

(assert (=> b!573443 e!329901))

(declare-fun res!362821 () Bool)

(assert (=> b!573443 (=> (not res!362821) (not e!329901))))

(assert (=> b!573443 (= res!362821 (= lt!261920 (Found!5663 j!142)))))

(assert (=> b!573443 (= lt!261920 (seekEntryOrOpen!0 (select (arr!17207 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!573443 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18028 0))(
  ( (Unit!18029) )
))
(declare-fun lt!261925 () Unit!18028)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35848 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18028)

(assert (=> b!573443 (= lt!261925 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!52560 res!362827) b!573432))

(assert (= (and b!573432 res!362824) b!573434))

(assert (= (and b!573434 res!362820) b!573433))

(assert (= (and b!573433 res!362816) b!573436))

(assert (= (and b!573436 res!362818) b!573435))

(assert (= (and b!573435 res!362823) b!573439))

(assert (= (and b!573439 res!362828) b!573431))

(assert (= (and b!573431 res!362817) b!573442))

(assert (= (and b!573442 res!362822) b!573443))

(assert (= (and b!573443 res!362821) b!573438))

(assert (= (and b!573438 (not res!362825)) b!573437))

(assert (= (and b!573437 (not res!362819)) b!573441))

(assert (= (and b!573441 res!362826) b!573440))

(declare-fun m!552455 () Bool)

(assert (=> b!573437 m!552455))

(declare-fun m!552457 () Bool)

(assert (=> b!573437 m!552457))

(declare-fun m!552459 () Bool)

(assert (=> b!573435 m!552459))

(declare-fun m!552461 () Bool)

(assert (=> b!573433 m!552461))

(declare-fun m!552463 () Bool)

(assert (=> b!573439 m!552463))

(assert (=> b!573434 m!552455))

(assert (=> b!573434 m!552455))

(declare-fun m!552465 () Bool)

(assert (=> b!573434 m!552465))

(declare-fun m!552467 () Bool)

(assert (=> start!52560 m!552467))

(declare-fun m!552469 () Bool)

(assert (=> start!52560 m!552469))

(declare-fun m!552471 () Bool)

(assert (=> b!573440 m!552471))

(declare-fun m!552473 () Bool)

(assert (=> b!573440 m!552473))

(assert (=> b!573441 m!552455))

(assert (=> b!573441 m!552455))

(declare-fun m!552475 () Bool)

(assert (=> b!573441 m!552475))

(declare-fun m!552477 () Bool)

(assert (=> b!573436 m!552477))

(declare-fun m!552479 () Bool)

(assert (=> b!573431 m!552479))

(assert (=> b!573443 m!552457))

(assert (=> b!573443 m!552455))

(declare-fun m!552481 () Bool)

(assert (=> b!573443 m!552481))

(declare-fun m!552483 () Bool)

(assert (=> b!573443 m!552483))

(assert (=> b!573443 m!552455))

(declare-fun m!552485 () Bool)

(assert (=> b!573443 m!552485))

(assert (=> b!573442 m!552455))

(declare-fun m!552487 () Bool)

(assert (=> b!573442 m!552487))

(assert (=> b!573442 m!552455))

(declare-fun m!552489 () Bool)

(assert (=> b!573442 m!552489))

(declare-fun m!552491 () Bool)

(assert (=> b!573442 m!552491))

(assert (=> b!573442 m!552455))

(declare-fun m!552493 () Bool)

(assert (=> b!573442 m!552493))

(declare-fun m!552495 () Bool)

(assert (=> b!573442 m!552495))

(declare-fun m!552497 () Bool)

(assert (=> b!573442 m!552497))

(push 1)

(assert (not b!573440))

(assert (not start!52560))

(assert (not b!573443))

(assert (not b!573441))

(assert (not b!573435))

(assert (not b!573436))

(assert (not b!573433))

(assert (not b!573442))

(assert (not b!573434))

(assert (not b!573439))

(assert (not b!573431))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!573555 () Bool)

(declare-fun c!65708 () Bool)

(declare-fun lt!261968 () (_ BitVec 64))

(assert (=> b!573555 (= c!65708 (= lt!261968 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!329972 () SeekEntryResult!5663)

(declare-fun e!329971 () SeekEntryResult!5663)

(assert (=> b!573555 (= e!329972 e!329971)))

(declare-fun b!573556 () Bool)

(declare-fun e!329973 () SeekEntryResult!5663)

(assert (=> b!573556 (= e!329973 Undefined!5663)))

(declare-fun lt!261970 () SeekEntryResult!5663)

(declare-fun b!573557 () Bool)

(assert (=> b!573557 (= e!329971 (seekKeyOrZeroReturnVacant!0 (x!53776 lt!261970) (index!24881 lt!261970) (index!24881 lt!261970) k!1914 a!3118 mask!3119))))

(declare-fun d!84861 () Bool)

(declare-fun lt!261969 () SeekEntryResult!5663)

(assert (=> d!84861 (and (or (is-Undefined!5663 lt!261969) (not (is-Found!5663 lt!261969)) (and (bvsge (index!24880 lt!261969) #b00000000000000000000000000000000) (bvslt (index!24880 lt!261969) (size!17571 a!3118)))) (or (is-Undefined!5663 lt!261969) (is-Found!5663 lt!261969) (not (is-MissingZero!5663 lt!261969)) (and (bvsge (index!24879 lt!261969) #b00000000000000000000000000000000) (bvslt (index!24879 lt!261969) (size!17571 a!3118)))) (or (is-Undefined!5663 lt!261969) (is-Found!5663 lt!261969) (is-MissingZero!5663 lt!261969) (not (is-MissingVacant!5663 lt!261969)) (and (bvsge (index!24882 lt!261969) #b00000000000000000000000000000000) (bvslt (index!24882 lt!261969) (size!17571 a!3118)))) (or (is-Undefined!5663 lt!261969) (ite (is-Found!5663 lt!261969) (= (select (arr!17207 a!3118) (index!24880 lt!261969)) k!1914) (ite (is-MissingZero!5663 lt!261969) (= (select (arr!17207 a!3118) (index!24879 lt!261969)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5663 lt!261969) (= (select (arr!17207 a!3118) (index!24882 lt!261969)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84861 (= lt!261969 e!329973)))

(declare-fun c!65706 () Bool)

(assert (=> d!84861 (= c!65706 (and (is-Intermediate!5663 lt!261970) (undefined!6475 lt!261970)))))

(assert (=> d!84861 (= lt!261970 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!84861 (validMask!0 mask!3119)))

(assert (=> d!84861 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!261969)))

(declare-fun b!573558 () Bool)

(assert (=> b!573558 (= e!329972 (Found!5663 (index!24881 lt!261970)))))

(declare-fun b!573559 () Bool)

(assert (=> b!573559 (= e!329973 e!329972)))

(assert (=> b!573559 (= lt!261968 (select (arr!17207 a!3118) (index!24881 lt!261970)))))

(declare-fun c!65707 () Bool)

(assert (=> b!573559 (= c!65707 (= lt!261968 k!1914))))

(declare-fun b!573560 () Bool)

(assert (=> b!573560 (= e!329971 (MissingZero!5663 (index!24881 lt!261970)))))

(assert (= (and d!84861 c!65706) b!573556))

(assert (= (and d!84861 (not c!65706)) b!573559))

(assert (= (and b!573559 c!65707) b!573558))

(assert (= (and b!573559 (not c!65707)) b!573555))

(assert (= (and b!573555 c!65708) b!573560))

(assert (= (and b!573555 (not c!65708)) b!573557))

(declare-fun m!552573 () Bool)

(assert (=> b!573557 m!552573))

(declare-fun m!552575 () Bool)

(assert (=> d!84861 m!552575))

(assert (=> d!84861 m!552575))

(declare-fun m!552577 () Bool)

(assert (=> d!84861 m!552577))

(assert (=> d!84861 m!552467))

(declare-fun m!552579 () Bool)

(assert (=> d!84861 m!552579))

(declare-fun m!552581 () Bool)

(assert (=> d!84861 m!552581))

(declare-fun m!552583 () Bool)

(assert (=> d!84861 m!552583))

(declare-fun m!552585 () Bool)

(assert (=> b!573559 m!552585))

(assert (=> b!573435 d!84861))

(declare-fun b!573573 () Bool)

(declare-fun c!65717 () Bool)

(declare-fun lt!261975 () (_ BitVec 64))

(assert (=> b!573573 (= c!65717 (= lt!261975 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!329981 () SeekEntryResult!5663)

(declare-fun e!329980 () SeekEntryResult!5663)

(assert (=> b!573573 (= e!329981 e!329980)))

(declare-fun b!573574 () Bool)

(declare-fun e!329982 () SeekEntryResult!5663)

(assert (=> b!573574 (= e!329982 Undefined!5663)))

(declare-fun b!573575 () Bool)

(declare-fun lt!261977 () SeekEntryResult!5663)

(assert (=> b!573575 (= e!329980 (seekKeyOrZeroReturnVacant!0 (x!53776 lt!261977) (index!24881 lt!261977) (index!24881 lt!261977) lt!261926 lt!261923 mask!3119))))

(declare-fun d!84873 () Bool)

(declare-fun lt!261976 () SeekEntryResult!5663)

(assert (=> d!84873 (and (or (is-Undefined!5663 lt!261976) (not (is-Found!5663 lt!261976)) (and (bvsge (index!24880 lt!261976) #b00000000000000000000000000000000) (bvslt (index!24880 lt!261976) (size!17571 lt!261923)))) (or (is-Undefined!5663 lt!261976) (is-Found!5663 lt!261976) (not (is-MissingZero!5663 lt!261976)) (and (bvsge (index!24879 lt!261976) #b00000000000000000000000000000000) (bvslt (index!24879 lt!261976) (size!17571 lt!261923)))) (or (is-Undefined!5663 lt!261976) (is-Found!5663 lt!261976) (is-MissingZero!5663 lt!261976) (not (is-MissingVacant!5663 lt!261976)) (and (bvsge (index!24882 lt!261976) #b00000000000000000000000000000000) (bvslt (index!24882 lt!261976) (size!17571 lt!261923)))) (or (is-Undefined!5663 lt!261976) (ite (is-Found!5663 lt!261976) (= (select (arr!17207 lt!261923) (index!24880 lt!261976)) lt!261926) (ite (is-MissingZero!5663 lt!261976) (= (select (arr!17207 lt!261923) (index!24879 lt!261976)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5663 lt!261976) (= (select (arr!17207 lt!261923) (index!24882 lt!261976)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84873 (= lt!261976 e!329982)))

(declare-fun c!65715 () Bool)

(assert (=> d!84873 (= c!65715 (and (is-Intermediate!5663 lt!261977) (undefined!6475 lt!261977)))))

(assert (=> d!84873 (= lt!261977 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!261926 mask!3119) lt!261926 lt!261923 mask!3119))))

(assert (=> d!84873 (validMask!0 mask!3119)))

(assert (=> d!84873 (= (seekEntryOrOpen!0 lt!261926 lt!261923 mask!3119) lt!261976)))

(declare-fun b!573576 () Bool)

(assert (=> b!573576 (= e!329981 (Found!5663 (index!24881 lt!261977)))))

(declare-fun b!573577 () Bool)

(assert (=> b!573577 (= e!329982 e!329981)))

(assert (=> b!573577 (= lt!261975 (select (arr!17207 lt!261923) (index!24881 lt!261977)))))

(declare-fun c!65716 () Bool)

(assert (=> b!573577 (= c!65716 (= lt!261975 lt!261926))))

(declare-fun b!573578 () Bool)

(assert (=> b!573578 (= e!329980 (MissingZero!5663 (index!24881 lt!261977)))))

(assert (= (and d!84873 c!65715) b!573574))

(assert (= (and d!84873 (not c!65715)) b!573577))

(assert (= (and b!573577 c!65716) b!573576))

(assert (= (and b!573577 (not c!65716)) b!573573))

(assert (= (and b!573573 c!65717) b!573578))

(assert (= (and b!573573 (not c!65717)) b!573575))

(declare-fun m!552587 () Bool)

(assert (=> b!573575 m!552587))

(assert (=> d!84873 m!552491))

(assert (=> d!84873 m!552491))

(declare-fun m!552589 () Bool)

(assert (=> d!84873 m!552589))

(assert (=> d!84873 m!552467))

(declare-fun m!552591 () Bool)

(assert (=> d!84873 m!552591))

(declare-fun m!552593 () Bool)

(assert (=> d!84873 m!552593))

(declare-fun m!552595 () Bool)

(assert (=> d!84873 m!552595))

(declare-fun m!552597 () Bool)

(assert (=> b!573577 m!552597))

(assert (=> b!573440 d!84873))

(declare-fun b!573615 () Bool)

(declare-fun e!330009 () SeekEntryResult!5663)

(assert (=> b!573615 (= e!330009 Undefined!5663)))

(declare-fun e!330007 () SeekEntryResult!5663)

(declare-fun b!573616 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!573616 (= e!330007 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53776 lt!261921) #b00000000000000000000000000000001) (nextIndex!0 (index!24881 lt!261921) (x!53776 lt!261921) mask!3119) (index!24881 lt!261921) lt!261926 lt!261923 mask!3119))))

(declare-fun b!573617 () Bool)

(declare-fun c!65731 () Bool)

(declare-fun lt!262002 () (_ BitVec 64))

(assert (=> b!573617 (= c!65731 (= lt!262002 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!330008 () SeekEntryResult!5663)

(assert (=> b!573617 (= e!330008 e!330007)))

(declare-fun b!573618 () Bool)

(assert (=> b!573618 (= e!330008 (Found!5663 (index!24881 lt!261921)))))

(declare-fun b!573619 () Bool)

(assert (=> b!573619 (= e!330009 e!330008)))

(declare-fun c!65732 () Bool)

(assert (=> b!573619 (= c!65732 (= lt!262002 lt!261926))))

(declare-fun b!573620 () Bool)

(assert (=> b!573620 (= e!330007 (MissingVacant!5663 (index!24881 lt!261921)))))

(declare-fun lt!262001 () SeekEntryResult!5663)

(declare-fun d!84875 () Bool)

(assert (=> d!84875 (and (or (is-Undefined!5663 lt!262001) (not (is-Found!5663 lt!262001)) (and (bvsge (index!24880 lt!262001) #b00000000000000000000000000000000) (bvslt (index!24880 lt!262001) (size!17571 lt!261923)))) (or (is-Undefined!5663 lt!262001) (is-Found!5663 lt!262001) (not (is-MissingVacant!5663 lt!262001)) (not (= (index!24882 lt!262001) (index!24881 lt!261921))) (and (bvsge (index!24882 lt!262001) #b00000000000000000000000000000000) (bvslt (index!24882 lt!262001) (size!17571 lt!261923)))) (or (is-Undefined!5663 lt!262001) (ite (is-Found!5663 lt!262001) (= (select (arr!17207 lt!261923) (index!24880 lt!262001)) lt!261926) (and (is-MissingVacant!5663 lt!262001) (= (index!24882 lt!262001) (index!24881 lt!261921)) (= (select (arr!17207 lt!261923) (index!24882 lt!262001)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!84875 (= lt!262001 e!330009)))

(declare-fun c!65730 () Bool)

(assert (=> d!84875 (= c!65730 (bvsge (x!53776 lt!261921) #b01111111111111111111111111111110))))

(assert (=> d!84875 (= lt!262002 (select (arr!17207 lt!261923) (index!24881 lt!261921)))))

(assert (=> d!84875 (validMask!0 mask!3119)))

(assert (=> d!84875 (= (seekKeyOrZeroReturnVacant!0 (x!53776 lt!261921) (index!24881 lt!261921) (index!24881 lt!261921) lt!261926 lt!261923 mask!3119) lt!262001)))

(assert (= (and d!84875 c!65730) b!573615))

(assert (= (and d!84875 (not c!65730)) b!573619))

(assert (= (and b!573619 c!65732) b!573618))

(assert (= (and b!573619 (not c!65732)) b!573617))

(assert (= (and b!573617 c!65731) b!573620))

(assert (= (and b!573617 (not c!65731)) b!573616))

(declare-fun m!552621 () Bool)

(assert (=> b!573616 m!552621))

(assert (=> b!573616 m!552621))

(declare-fun m!552623 () Bool)

(assert (=> b!573616 m!552623))

(declare-fun m!552625 () Bool)

(assert (=> d!84875 m!552625))

(declare-fun m!552627 () Bool)

(assert (=> d!84875 m!552627))

(declare-fun m!552629 () Bool)

(assert (=> d!84875 m!552629))

(assert (=> d!84875 m!552467))

(assert (=> b!573440 d!84875))

(declare-fun d!84893 () Bool)

(assert (=> d!84893 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!52560 d!84893))

(declare-fun d!84901 () Bool)

(assert (=> d!84901 (= (array_inv!12981 a!3118) (bvsge (size!17571 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!52560 d!84901))

(declare-fun b!573721 () Bool)

(declare-fun e!330064 () Bool)

(declare-fun e!330066 () Bool)

(assert (=> b!573721 (= e!330064 e!330066)))

(declare-fun res!362897 () Bool)

(declare-fun lt!262043 () SeekEntryResult!5663)

(assert (=> b!573721 (= res!362897 (and (is-Intermediate!5663 lt!262043) (not (undefined!6475 lt!262043)) (bvslt (x!53776 lt!262043) #b01111111111111111111111111111110) (bvsge (x!53776 lt!262043) #b00000000000000000000000000000000) (bvsge (x!53776 lt!262043) #b00000000000000000000000000000000)))))

(assert (=> b!573721 (=> (not res!362897) (not e!330066))))

(declare-fun d!84903 () Bool)

(assert (=> d!84903 e!330064))

(declare-fun c!65774 () Bool)

(assert (=> d!84903 (= c!65774 (and (is-Intermediate!5663 lt!262043) (undefined!6475 lt!262043)))))

(declare-fun e!330065 () SeekEntryResult!5663)

(assert (=> d!84903 (= lt!262043 e!330065)))

(declare-fun c!65775 () Bool)

(assert (=> d!84903 (= c!65775 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!262044 () (_ BitVec 64))

(assert (=> d!84903 (= lt!262044 (select (arr!17207 lt!261923) lt!261918))))

(assert (=> d!84903 (validMask!0 mask!3119)))

(assert (=> d!84903 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261918 lt!261926 lt!261923 mask!3119) lt!262043)))

(declare-fun b!573722 () Bool)

(assert (=> b!573722 (and (bvsge (index!24881 lt!262043) #b00000000000000000000000000000000) (bvslt (index!24881 lt!262043) (size!17571 lt!261923)))))

(declare-fun res!362898 () Bool)

(assert (=> b!573722 (= res!362898 (= (select (arr!17207 lt!261923) (index!24881 lt!262043)) lt!261926))))

(declare-fun e!330068 () Bool)

(assert (=> b!573722 (=> res!362898 e!330068)))

(assert (=> b!573722 (= e!330066 e!330068)))

(declare-fun b!573723 () Bool)

(assert (=> b!573723 (= e!330064 (bvsge (x!53776 lt!262043) #b01111111111111111111111111111110))))

(declare-fun b!573724 () Bool)

(declare-fun e!330067 () SeekEntryResult!5663)

(assert (=> b!573724 (= e!330067 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!261918 #b00000000000000000000000000000000 mask!3119) lt!261926 lt!261923 mask!3119))))

(declare-fun b!573725 () Bool)

(assert (=> b!573725 (= e!330067 (Intermediate!5663 false lt!261918 #b00000000000000000000000000000000))))

(declare-fun b!573726 () Bool)

(assert (=> b!573726 (and (bvsge (index!24881 lt!262043) #b00000000000000000000000000000000) (bvslt (index!24881 lt!262043) (size!17571 lt!261923)))))

(declare-fun res!362896 () Bool)

(assert (=> b!573726 (= res!362896 (= (select (arr!17207 lt!261923) (index!24881 lt!262043)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!573726 (=> res!362896 e!330068)))

(declare-fun b!573727 () Bool)

(assert (=> b!573727 (and (bvsge (index!24881 lt!262043) #b00000000000000000000000000000000) (bvslt (index!24881 lt!262043) (size!17571 lt!261923)))))

(assert (=> b!573727 (= e!330068 (= (select (arr!17207 lt!261923) (index!24881 lt!262043)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!573728 () Bool)

(assert (=> b!573728 (= e!330065 (Intermediate!5663 true lt!261918 #b00000000000000000000000000000000))))

(declare-fun b!573729 () Bool)

(assert (=> b!573729 (= e!330065 e!330067)))

(declare-fun c!65773 () Bool)

(assert (=> b!573729 (= c!65773 (or (= lt!262044 lt!261926) (= (bvadd lt!262044 lt!262044) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!84903 c!65775) b!573728))

(assert (= (and d!84903 (not c!65775)) b!573729))

(assert (= (and b!573729 c!65773) b!573725))

(assert (= (and b!573729 (not c!65773)) b!573724))

(assert (= (and d!84903 c!65774) b!573723))

(assert (= (and d!84903 (not c!65774)) b!573721))

(assert (= (and b!573721 res!362897) b!573722))

(assert (= (and b!573722 (not res!362898)) b!573726))

(assert (= (and b!573726 (not res!362896)) b!573727))

(declare-fun m!552683 () Bool)

(assert (=> b!573726 m!552683))

(declare-fun m!552685 () Bool)

(assert (=> b!573724 m!552685))

(assert (=> b!573724 m!552685))

(declare-fun m!552687 () Bool)

(assert (=> b!573724 m!552687))

(declare-fun m!552689 () Bool)

(assert (=> d!84903 m!552689))

(assert (=> d!84903 m!552467))

(assert (=> b!573722 m!552683))

(assert (=> b!573727 m!552683))

(assert (=> b!573442 d!84903))

(declare-fun b!573736 () Bool)

(declare-fun e!330072 () Bool)

(declare-fun e!330074 () Bool)

(assert (=> b!573736 (= e!330072 e!330074)))

(declare-fun res!362900 () Bool)

(declare-fun lt!262048 () SeekEntryResult!5663)

(assert (=> b!573736 (= res!362900 (and (is-Intermediate!5663 lt!262048) (not (undefined!6475 lt!262048)) (bvslt (x!53776 lt!262048) #b01111111111111111111111111111110) (bvsge (x!53776 lt!262048) #b00000000000000000000000000000000) (bvsge (x!53776 lt!262048) #b00000000000000000000000000000000)))))

(assert (=> b!573736 (=> (not res!362900) (not e!330074))))

(declare-fun d!84917 () Bool)

(assert (=> d!84917 e!330072))

(declare-fun c!65780 () Bool)

(assert (=> d!84917 (= c!65780 (and (is-Intermediate!5663 lt!262048) (undefined!6475 lt!262048)))))

(declare-fun e!330073 () SeekEntryResult!5663)

(assert (=> d!84917 (= lt!262048 e!330073)))

(declare-fun c!65781 () Bool)

(assert (=> d!84917 (= c!65781 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!262049 () (_ BitVec 64))

(assert (=> d!84917 (= lt!262049 (select (arr!17207 a!3118) lt!261922))))

(assert (=> d!84917 (validMask!0 mask!3119)))

(assert (=> d!84917 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261922 (select (arr!17207 a!3118) j!142) a!3118 mask!3119) lt!262048)))

(declare-fun b!573737 () Bool)

(assert (=> b!573737 (and (bvsge (index!24881 lt!262048) #b00000000000000000000000000000000) (bvslt (index!24881 lt!262048) (size!17571 a!3118)))))

(declare-fun res!362901 () Bool)

(assert (=> b!573737 (= res!362901 (= (select (arr!17207 a!3118) (index!24881 lt!262048)) (select (arr!17207 a!3118) j!142)))))

(declare-fun e!330076 () Bool)

(assert (=> b!573737 (=> res!362901 e!330076)))

(assert (=> b!573737 (= e!330074 e!330076)))

(declare-fun b!573738 () Bool)

(assert (=> b!573738 (= e!330072 (bvsge (x!53776 lt!262048) #b01111111111111111111111111111110))))

(declare-fun b!573739 () Bool)

(declare-fun e!330075 () SeekEntryResult!5663)

(assert (=> b!573739 (= e!330075 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!261922 #b00000000000000000000000000000000 mask!3119) (select (arr!17207 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!573740 () Bool)

(assert (=> b!573740 (= e!330075 (Intermediate!5663 false lt!261922 #b00000000000000000000000000000000))))

(declare-fun b!573741 () Bool)

(assert (=> b!573741 (and (bvsge (index!24881 lt!262048) #b00000000000000000000000000000000) (bvslt (index!24881 lt!262048) (size!17571 a!3118)))))

(declare-fun res!362899 () Bool)

(assert (=> b!573741 (= res!362899 (= (select (arr!17207 a!3118) (index!24881 lt!262048)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!573741 (=> res!362899 e!330076)))

(declare-fun b!573742 () Bool)

(assert (=> b!573742 (and (bvsge (index!24881 lt!262048) #b00000000000000000000000000000000) (bvslt (index!24881 lt!262048) (size!17571 a!3118)))))

(assert (=> b!573742 (= e!330076 (= (select (arr!17207 a!3118) (index!24881 lt!262048)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!573743 () Bool)

(assert (=> b!573743 (= e!330073 (Intermediate!5663 true lt!261922 #b00000000000000000000000000000000))))

(declare-fun b!573744 () Bool)

(assert (=> b!573744 (= e!330073 e!330075)))

(declare-fun c!65779 () Bool)

(assert (=> b!573744 (= c!65779 (or (= lt!262049 (select (arr!17207 a!3118) j!142)) (= (bvadd lt!262049 lt!262049) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!84917 c!65781) b!573743))

(assert (= (and d!84917 (not c!65781)) b!573744))

(assert (= (and b!573744 c!65779) b!573740))

(assert (= (and b!573744 (not c!65779)) b!573739))

(assert (= (and d!84917 c!65780) b!573738))

(assert (= (and d!84917 (not c!65780)) b!573736))

(assert (= (and b!573736 res!362900) b!573737))

(assert (= (and b!573737 (not res!362901)) b!573741))

(assert (= (and b!573741 (not res!362899)) b!573742))

(declare-fun m!552705 () Bool)

(assert (=> b!573741 m!552705))

(declare-fun m!552707 () Bool)

(assert (=> b!573739 m!552707))

(assert (=> b!573739 m!552707))

(assert (=> b!573739 m!552455))

(declare-fun m!552709 () Bool)

(assert (=> b!573739 m!552709))

(declare-fun m!552711 () Bool)

(assert (=> d!84917 m!552711))

(assert (=> d!84917 m!552467))

(assert (=> b!573737 m!552705))

(assert (=> b!573742 m!552705))

(assert (=> b!573442 d!84917))

(declare-fun d!84921 () Bool)

(declare-fun lt!262055 () (_ BitVec 32))

(declare-fun lt!262054 () (_ BitVec 32))

(assert (=> d!84921 (= lt!262055 (bvmul (bvxor lt!262054 (bvlshr lt!262054 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84921 (= lt!262054 ((_ extract 31 0) (bvand (bvxor lt!261926 (bvlshr lt!261926 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84921 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!362902 (let ((h!12369 ((_ extract 31 0) (bvand (bvxor lt!261926 (bvlshr lt!261926 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53785 (bvmul (bvxor h!12369 (bvlshr h!12369 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53785 (bvlshr x!53785 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!362902 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!362902 #b00000000000000000000000000000000))))))

(assert (=> d!84921 (= (toIndex!0 lt!261926 mask!3119) (bvand (bvxor lt!262055 (bvlshr lt!262055 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!573442 d!84921))

(declare-fun d!84923 () Bool)

(declare-fun lt!262057 () (_ BitVec 32))

(declare-fun lt!262056 () (_ BitVec 32))

(assert (=> d!84923 (= lt!262057 (bvmul (bvxor lt!262056 (bvlshr lt!262056 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84923 (= lt!262056 ((_ extract 31 0) (bvand (bvxor (select (arr!17207 a!3118) j!142) (bvlshr (select (arr!17207 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84923 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!362902 (let ((h!12369 ((_ extract 31 0) (bvand (bvxor (select (arr!17207 a!3118) j!142) (bvlshr (select (arr!17207 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53785 (bvmul (bvxor h!12369 (bvlshr h!12369 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53785 (bvlshr x!53785 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!362902 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!362902 #b00000000000000000000000000000000))))))

(assert (=> d!84923 (= (toIndex!0 (select (arr!17207 a!3118) j!142) mask!3119) (bvand (bvxor lt!262057 (bvlshr lt!262057 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!573442 d!84923))

(declare-fun b!573786 () Bool)

(declare-fun e!330109 () Bool)

(declare-fun e!330107 () Bool)

(assert (=> b!573786 (= e!330109 e!330107)))

(declare-fun res!362921 () Bool)

(assert (=> b!573786 (=> (not res!362921) (not e!330107))))

(declare-fun e!330106 () Bool)

(assert (=> b!573786 (= res!362921 (not e!330106))))

(declare-fun res!362920 () Bool)

(assert (=> b!573786 (=> (not res!362920) (not e!330106))))

(assert (=> b!573786 (= res!362920 (validKeyInArray!0 (select (arr!17207 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!84925 () Bool)

(declare-fun res!362922 () Bool)

(assert (=> d!84925 (=> res!362922 e!330109)))

(assert (=> d!84925 (= res!362922 (bvsge #b00000000000000000000000000000000 (size!17571 a!3118)))))

(assert (=> d!84925 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11337) e!330109)))

(declare-fun b!573787 () Bool)

(declare-fun e!330108 () Bool)

(declare-fun call!32659 () Bool)

(assert (=> b!573787 (= e!330108 call!32659)))

(declare-fun bm!32656 () Bool)

