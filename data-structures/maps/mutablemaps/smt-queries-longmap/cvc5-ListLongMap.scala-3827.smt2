; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52466 () Bool)

(assert start!52466)

(declare-fun b!572504 () Bool)

(declare-fun e!329328 () Bool)

(assert (=> b!572504 (= e!329328 (not true))))

(declare-fun e!329333 () Bool)

(assert (=> b!572504 e!329333))

(declare-fun res!362164 () Bool)

(assert (=> b!572504 (=> (not res!362164) (not e!329333))))

(declare-datatypes ((SeekEntryResult!5649 0))(
  ( (MissingZero!5649 (index!24823 (_ BitVec 32))) (Found!5649 (index!24824 (_ BitVec 32))) (Intermediate!5649 (undefined!6461 Bool) (index!24825 (_ BitVec 32)) (x!53721 (_ BitVec 32))) (Undefined!5649) (MissingVacant!5649 (index!24826 (_ BitVec 32))) )
))
(declare-fun lt!261383 () SeekEntryResult!5649)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!572504 (= res!362164 (= lt!261383 (Found!5649 j!142)))))

(declare-datatypes ((array!35817 0))(
  ( (array!35818 (arr!17193 (Array (_ BitVec 32) (_ BitVec 64))) (size!17557 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35817)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35817 (_ BitVec 32)) SeekEntryResult!5649)

(assert (=> b!572504 (= lt!261383 (seekEntryOrOpen!0 (select (arr!17193 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35817 (_ BitVec 32)) Bool)

(assert (=> b!572504 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18000 0))(
  ( (Unit!18001) )
))
(declare-fun lt!261381 () Unit!18000)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35817 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18000)

(assert (=> b!572504 (= lt!261381 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!572505 () Bool)

(declare-fun res!362167 () Bool)

(declare-fun e!329335 () Bool)

(assert (=> b!572505 (=> (not res!362167) (not e!329335))))

(assert (=> b!572505 (= res!362167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!572506 () Bool)

(assert (=> b!572506 (= e!329335 e!329328)))

(declare-fun res!362173 () Bool)

(assert (=> b!572506 (=> (not res!362173) (not e!329328))))

(declare-fun lt!261385 () (_ BitVec 64))

(declare-fun lt!261382 () (_ BitVec 32))

(declare-fun lt!261379 () array!35817)

(declare-fun lt!261380 () SeekEntryResult!5649)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35817 (_ BitVec 32)) SeekEntryResult!5649)

(assert (=> b!572506 (= res!362173 (= lt!261380 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261382 lt!261385 lt!261379 mask!3119)))))

(declare-fun lt!261378 () (_ BitVec 32))

(assert (=> b!572506 (= lt!261380 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261378 (select (arr!17193 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!572506 (= lt!261382 (toIndex!0 lt!261385 mask!3119))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!572506 (= lt!261385 (select (store (arr!17193 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!572506 (= lt!261378 (toIndex!0 (select (arr!17193 a!3118) j!142) mask!3119))))

(assert (=> b!572506 (= lt!261379 (array!35818 (store (arr!17193 a!3118) i!1132 k!1914) (size!17557 a!3118)))))

(declare-fun b!572507 () Bool)

(declare-fun e!329331 () Bool)

(declare-fun e!329334 () Bool)

(assert (=> b!572507 (= e!329331 e!329334)))

(declare-fun res!362162 () Bool)

(assert (=> b!572507 (=> res!362162 e!329334)))

(declare-fun lt!261386 () (_ BitVec 64))

(assert (=> b!572507 (= res!362162 (or (= lt!261386 (select (arr!17193 a!3118) j!142)) (= lt!261386 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!572507 (= lt!261386 (select (arr!17193 a!3118) (index!24825 lt!261380)))))

(declare-fun b!572508 () Bool)

(declare-fun e!329329 () Bool)

(assert (=> b!572508 (= e!329334 e!329329)))

(declare-fun res!362171 () Bool)

(assert (=> b!572508 (=> (not res!362171) (not e!329329))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35817 (_ BitVec 32)) SeekEntryResult!5649)

(assert (=> b!572508 (= res!362171 (= lt!261383 (seekKeyOrZeroReturnVacant!0 (x!53721 lt!261380) (index!24825 lt!261380) (index!24825 lt!261380) (select (arr!17193 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!572509 () Bool)

(declare-fun e!329332 () Bool)

(assert (=> b!572509 (= e!329332 e!329335)))

(declare-fun res!362165 () Bool)

(assert (=> b!572509 (=> (not res!362165) (not e!329335))))

(declare-fun lt!261384 () SeekEntryResult!5649)

(assert (=> b!572509 (= res!362165 (or (= lt!261384 (MissingZero!5649 i!1132)) (= lt!261384 (MissingVacant!5649 i!1132))))))

(assert (=> b!572509 (= lt!261384 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!572510 () Bool)

(declare-fun res!362163 () Bool)

(assert (=> b!572510 (=> (not res!362163) (not e!329332))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!572510 (= res!362163 (validKeyInArray!0 (select (arr!17193 a!3118) j!142)))))

(declare-fun b!572512 () Bool)

(declare-fun res!362174 () Bool)

(assert (=> b!572512 (=> (not res!362174) (not e!329332))))

(assert (=> b!572512 (= res!362174 (validKeyInArray!0 k!1914))))

(declare-fun b!572513 () Bool)

(declare-fun res!362168 () Bool)

(assert (=> b!572513 (=> (not res!362168) (not e!329332))))

(declare-fun arrayContainsKey!0 (array!35817 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!572513 (= res!362168 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!572514 () Bool)

(declare-fun res!362170 () Bool)

(assert (=> b!572514 (=> (not res!362170) (not e!329332))))

(assert (=> b!572514 (= res!362170 (and (= (size!17557 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17557 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17557 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!572515 () Bool)

(assert (=> b!572515 (= e!329329 (= (seekEntryOrOpen!0 lt!261385 lt!261379 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53721 lt!261380) (index!24825 lt!261380) (index!24825 lt!261380) lt!261385 lt!261379 mask!3119)))))

(declare-fun b!572516 () Bool)

(assert (=> b!572516 (= e!329333 e!329331)))

(declare-fun res!362166 () Bool)

(assert (=> b!572516 (=> res!362166 e!329331)))

(assert (=> b!572516 (= res!362166 (or (undefined!6461 lt!261380) (not (is-Intermediate!5649 lt!261380))))))

(declare-fun res!362169 () Bool)

(assert (=> start!52466 (=> (not res!362169) (not e!329332))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52466 (= res!362169 (validMask!0 mask!3119))))

(assert (=> start!52466 e!329332))

(assert (=> start!52466 true))

(declare-fun array_inv!12967 (array!35817) Bool)

(assert (=> start!52466 (array_inv!12967 a!3118)))

(declare-fun b!572511 () Bool)

(declare-fun res!362172 () Bool)

(assert (=> b!572511 (=> (not res!362172) (not e!329335))))

(declare-datatypes ((List!11326 0))(
  ( (Nil!11323) (Cons!11322 (h!12349 (_ BitVec 64)) (t!17562 List!11326)) )
))
(declare-fun arrayNoDuplicates!0 (array!35817 (_ BitVec 32) List!11326) Bool)

(assert (=> b!572511 (= res!362172 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11323))))

(assert (= (and start!52466 res!362169) b!572514))

(assert (= (and b!572514 res!362170) b!572510))

(assert (= (and b!572510 res!362163) b!572512))

(assert (= (and b!572512 res!362174) b!572513))

(assert (= (and b!572513 res!362168) b!572509))

(assert (= (and b!572509 res!362165) b!572505))

(assert (= (and b!572505 res!362167) b!572511))

(assert (= (and b!572511 res!362172) b!572506))

(assert (= (and b!572506 res!362173) b!572504))

(assert (= (and b!572504 res!362164) b!572516))

(assert (= (and b!572516 (not res!362166)) b!572507))

(assert (= (and b!572507 (not res!362162)) b!572508))

(assert (= (and b!572508 res!362171) b!572515))

(declare-fun m!551551 () Bool)

(assert (=> b!572515 m!551551))

(declare-fun m!551553 () Bool)

(assert (=> b!572515 m!551553))

(declare-fun m!551555 () Bool)

(assert (=> b!572513 m!551555))

(declare-fun m!551557 () Bool)

(assert (=> b!572512 m!551557))

(declare-fun m!551559 () Bool)

(assert (=> b!572509 m!551559))

(declare-fun m!551561 () Bool)

(assert (=> b!572510 m!551561))

(assert (=> b!572510 m!551561))

(declare-fun m!551563 () Bool)

(assert (=> b!572510 m!551563))

(assert (=> b!572508 m!551561))

(assert (=> b!572508 m!551561))

(declare-fun m!551565 () Bool)

(assert (=> b!572508 m!551565))

(declare-fun m!551567 () Bool)

(assert (=> b!572505 m!551567))

(assert (=> b!572506 m!551561))

(declare-fun m!551569 () Bool)

(assert (=> b!572506 m!551569))

(assert (=> b!572506 m!551561))

(declare-fun m!551571 () Bool)

(assert (=> b!572506 m!551571))

(declare-fun m!551573 () Bool)

(assert (=> b!572506 m!551573))

(assert (=> b!572506 m!551561))

(declare-fun m!551575 () Bool)

(assert (=> b!572506 m!551575))

(declare-fun m!551577 () Bool)

(assert (=> b!572506 m!551577))

(declare-fun m!551579 () Bool)

(assert (=> b!572506 m!551579))

(declare-fun m!551581 () Bool)

(assert (=> b!572511 m!551581))

(declare-fun m!551583 () Bool)

(assert (=> start!52466 m!551583))

(declare-fun m!551585 () Bool)

(assert (=> start!52466 m!551585))

(assert (=> b!572507 m!551561))

(declare-fun m!551587 () Bool)

(assert (=> b!572507 m!551587))

(assert (=> b!572504 m!551561))

(assert (=> b!572504 m!551561))

(declare-fun m!551589 () Bool)

(assert (=> b!572504 m!551589))

(declare-fun m!551591 () Bool)

(assert (=> b!572504 m!551591))

(declare-fun m!551593 () Bool)

(assert (=> b!572504 m!551593))

(push 1)

