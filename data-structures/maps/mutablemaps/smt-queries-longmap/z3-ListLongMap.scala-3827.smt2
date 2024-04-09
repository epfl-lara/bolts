; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52468 () Bool)

(assert start!52468)

(declare-fun b!572543 () Bool)

(declare-fun e!329355 () Bool)

(declare-fun e!329357 () Bool)

(assert (=> b!572543 (= e!329355 e!329357)))

(declare-fun res!362210 () Bool)

(assert (=> b!572543 (=> (not res!362210) (not e!329357))))

(declare-fun lt!261405 () (_ BitVec 64))

(declare-fun lt!261406 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5650 0))(
  ( (MissingZero!5650 (index!24827 (_ BitVec 32))) (Found!5650 (index!24828 (_ BitVec 32))) (Intermediate!5650 (undefined!6462 Bool) (index!24829 (_ BitVec 32)) (x!53722 (_ BitVec 32))) (Undefined!5650) (MissingVacant!5650 (index!24830 (_ BitVec 32))) )
))
(declare-fun lt!261411 () SeekEntryResult!5650)

(declare-datatypes ((array!35819 0))(
  ( (array!35820 (arr!17194 (Array (_ BitVec 32) (_ BitVec 64))) (size!17558 (_ BitVec 32))) )
))
(declare-fun lt!261408 () array!35819)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35819 (_ BitVec 32)) SeekEntryResult!5650)

(assert (=> b!572543 (= res!362210 (= lt!261411 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261406 lt!261405 lt!261408 mask!3119)))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun a!3118 () array!35819)

(declare-fun lt!261409 () (_ BitVec 32))

(assert (=> b!572543 (= lt!261411 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261409 (select (arr!17194 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!572543 (= lt!261406 (toIndex!0 lt!261405 mask!3119))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!572543 (= lt!261405 (select (store (arr!17194 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!572543 (= lt!261409 (toIndex!0 (select (arr!17194 a!3118) j!142) mask!3119))))

(assert (=> b!572543 (= lt!261408 (array!35820 (store (arr!17194 a!3118) i!1132 k0!1914) (size!17558 a!3118)))))

(declare-fun b!572545 () Bool)

(declare-fun e!329353 () Bool)

(declare-fun e!329358 () Bool)

(assert (=> b!572545 (= e!329353 e!329358)))

(declare-fun res!362204 () Bool)

(assert (=> b!572545 (=> res!362204 e!329358)))

(declare-fun lt!261413 () (_ BitVec 64))

(assert (=> b!572545 (= res!362204 (or (= lt!261413 (select (arr!17194 a!3118) j!142)) (= lt!261413 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!572545 (= lt!261413 (select (arr!17194 a!3118) (index!24829 lt!261411)))))

(declare-fun e!329352 () Bool)

(declare-fun b!572546 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35819 (_ BitVec 32)) SeekEntryResult!5650)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35819 (_ BitVec 32)) SeekEntryResult!5650)

(assert (=> b!572546 (= e!329352 (= (seekEntryOrOpen!0 lt!261405 lt!261408 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53722 lt!261411) (index!24829 lt!261411) (index!24829 lt!261411) lt!261405 lt!261408 mask!3119)))))

(declare-fun b!572547 () Bool)

(declare-fun res!362209 () Bool)

(declare-fun e!329359 () Bool)

(assert (=> b!572547 (=> (not res!362209) (not e!329359))))

(declare-fun arrayContainsKey!0 (array!35819 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!572547 (= res!362209 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!572548 () Bool)

(assert (=> b!572548 (= e!329359 e!329355)))

(declare-fun res!362211 () Bool)

(assert (=> b!572548 (=> (not res!362211) (not e!329355))))

(declare-fun lt!261410 () SeekEntryResult!5650)

(assert (=> b!572548 (= res!362211 (or (= lt!261410 (MissingZero!5650 i!1132)) (= lt!261410 (MissingVacant!5650 i!1132))))))

(assert (=> b!572548 (= lt!261410 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!572549 () Bool)

(declare-fun res!362208 () Bool)

(assert (=> b!572549 (=> (not res!362208) (not e!329355))))

(declare-datatypes ((List!11327 0))(
  ( (Nil!11324) (Cons!11323 (h!12350 (_ BitVec 64)) (t!17563 List!11327)) )
))
(declare-fun arrayNoDuplicates!0 (array!35819 (_ BitVec 32) List!11327) Bool)

(assert (=> b!572549 (= res!362208 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11324))))

(declare-fun b!572550 () Bool)

(declare-fun e!329354 () Bool)

(assert (=> b!572550 (= e!329354 e!329353)))

(declare-fun res!362206 () Bool)

(assert (=> b!572550 (=> res!362206 e!329353)))

(get-info :version)

(assert (=> b!572550 (= res!362206 (or (undefined!6462 lt!261411) (not ((_ is Intermediate!5650) lt!261411))))))

(declare-fun b!572551 () Bool)

(declare-fun res!362212 () Bool)

(assert (=> b!572551 (=> (not res!362212) (not e!329359))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!572551 (= res!362212 (validKeyInArray!0 (select (arr!17194 a!3118) j!142)))))

(declare-fun b!572552 () Bool)

(assert (=> b!572552 (= e!329357 (not true))))

(assert (=> b!572552 e!329354))

(declare-fun res!362203 () Bool)

(assert (=> b!572552 (=> (not res!362203) (not e!329354))))

(declare-fun lt!261407 () SeekEntryResult!5650)

(assert (=> b!572552 (= res!362203 (= lt!261407 (Found!5650 j!142)))))

(assert (=> b!572552 (= lt!261407 (seekEntryOrOpen!0 (select (arr!17194 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35819 (_ BitVec 32)) Bool)

(assert (=> b!572552 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18002 0))(
  ( (Unit!18003) )
))
(declare-fun lt!261412 () Unit!18002)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35819 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18002)

(assert (=> b!572552 (= lt!261412 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!572553 () Bool)

(declare-fun res!362213 () Bool)

(assert (=> b!572553 (=> (not res!362213) (not e!329355))))

(assert (=> b!572553 (= res!362213 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!362202 () Bool)

(assert (=> start!52468 (=> (not res!362202) (not e!329359))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52468 (= res!362202 (validMask!0 mask!3119))))

(assert (=> start!52468 e!329359))

(assert (=> start!52468 true))

(declare-fun array_inv!12968 (array!35819) Bool)

(assert (=> start!52468 (array_inv!12968 a!3118)))

(declare-fun b!572544 () Bool)

(assert (=> b!572544 (= e!329358 e!329352)))

(declare-fun res!362205 () Bool)

(assert (=> b!572544 (=> (not res!362205) (not e!329352))))

(assert (=> b!572544 (= res!362205 (= lt!261407 (seekKeyOrZeroReturnVacant!0 (x!53722 lt!261411) (index!24829 lt!261411) (index!24829 lt!261411) (select (arr!17194 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!572554 () Bool)

(declare-fun res!362201 () Bool)

(assert (=> b!572554 (=> (not res!362201) (not e!329359))))

(assert (=> b!572554 (= res!362201 (and (= (size!17558 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17558 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17558 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!572555 () Bool)

(declare-fun res!362207 () Bool)

(assert (=> b!572555 (=> (not res!362207) (not e!329359))))

(assert (=> b!572555 (= res!362207 (validKeyInArray!0 k0!1914))))

(assert (= (and start!52468 res!362202) b!572554))

(assert (= (and b!572554 res!362201) b!572551))

(assert (= (and b!572551 res!362212) b!572555))

(assert (= (and b!572555 res!362207) b!572547))

(assert (= (and b!572547 res!362209) b!572548))

(assert (= (and b!572548 res!362211) b!572553))

(assert (= (and b!572553 res!362213) b!572549))

(assert (= (and b!572549 res!362208) b!572543))

(assert (= (and b!572543 res!362210) b!572552))

(assert (= (and b!572552 res!362203) b!572550))

(assert (= (and b!572550 (not res!362206)) b!572545))

(assert (= (and b!572545 (not res!362204)) b!572544))

(assert (= (and b!572544 res!362205) b!572546))

(declare-fun m!551595 () Bool)

(assert (=> b!572553 m!551595))

(declare-fun m!551597 () Bool)

(assert (=> start!52468 m!551597))

(declare-fun m!551599 () Bool)

(assert (=> start!52468 m!551599))

(declare-fun m!551601 () Bool)

(assert (=> b!572547 m!551601))

(declare-fun m!551603 () Bool)

(assert (=> b!572544 m!551603))

(assert (=> b!572544 m!551603))

(declare-fun m!551605 () Bool)

(assert (=> b!572544 m!551605))

(assert (=> b!572551 m!551603))

(assert (=> b!572551 m!551603))

(declare-fun m!551607 () Bool)

(assert (=> b!572551 m!551607))

(assert (=> b!572543 m!551603))

(declare-fun m!551609 () Bool)

(assert (=> b!572543 m!551609))

(assert (=> b!572543 m!551603))

(declare-fun m!551611 () Bool)

(assert (=> b!572543 m!551611))

(assert (=> b!572543 m!551603))

(declare-fun m!551613 () Bool)

(assert (=> b!572543 m!551613))

(declare-fun m!551615 () Bool)

(assert (=> b!572543 m!551615))

(declare-fun m!551617 () Bool)

(assert (=> b!572543 m!551617))

(declare-fun m!551619 () Bool)

(assert (=> b!572543 m!551619))

(declare-fun m!551621 () Bool)

(assert (=> b!572546 m!551621))

(declare-fun m!551623 () Bool)

(assert (=> b!572546 m!551623))

(declare-fun m!551625 () Bool)

(assert (=> b!572548 m!551625))

(declare-fun m!551627 () Bool)

(assert (=> b!572555 m!551627))

(declare-fun m!551629 () Bool)

(assert (=> b!572549 m!551629))

(assert (=> b!572552 m!551603))

(assert (=> b!572552 m!551603))

(declare-fun m!551631 () Bool)

(assert (=> b!572552 m!551631))

(declare-fun m!551633 () Bool)

(assert (=> b!572552 m!551633))

(declare-fun m!551635 () Bool)

(assert (=> b!572552 m!551635))

(assert (=> b!572545 m!551603))

(declare-fun m!551637 () Bool)

(assert (=> b!572545 m!551637))

(check-sat (not b!572549) (not b!572543) (not start!52468) (not b!572552) (not b!572555) (not b!572546) (not b!572551) (not b!572548) (not b!572544) (not b!572547) (not b!572553))
(check-sat)
