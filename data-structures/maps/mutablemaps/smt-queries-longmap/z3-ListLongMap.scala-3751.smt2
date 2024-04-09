; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51520 () Bool)

(assert start!51520)

(declare-fun b!563180 () Bool)

(declare-fun res!354482 () Bool)

(declare-fun e!324559 () Bool)

(assert (=> b!563180 (=> (not res!354482) (not e!324559))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35339 0))(
  ( (array!35340 (arr!16966 (Array (_ BitVec 32) (_ BitVec 64))) (size!17330 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35339)

(assert (=> b!563180 (= res!354482 (and (= (size!17330 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17330 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17330 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!354488 () Bool)

(assert (=> start!51520 (=> (not res!354488) (not e!324559))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51520 (= res!354488 (validMask!0 mask!3119))))

(assert (=> start!51520 e!324559))

(assert (=> start!51520 true))

(declare-fun array_inv!12740 (array!35339) Bool)

(assert (=> start!51520 (array_inv!12740 a!3118)))

(declare-fun lt!257166 () Bool)

(declare-fun e!324557 () Bool)

(declare-datatypes ((SeekEntryResult!5422 0))(
  ( (MissingZero!5422 (index!23915 (_ BitVec 32))) (Found!5422 (index!23916 (_ BitVec 32))) (Intermediate!5422 (undefined!6234 Bool) (index!23917 (_ BitVec 32)) (x!52832 (_ BitVec 32))) (Undefined!5422) (MissingVacant!5422 (index!23918 (_ BitVec 32))) )
))
(declare-fun lt!257170 () SeekEntryResult!5422)

(declare-fun b!563181 () Bool)

(assert (=> b!563181 (= e!324557 (not (or (and (not lt!257166) (undefined!6234 lt!257170)) (and (not lt!257166) (not (undefined!6234 lt!257170))) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(get-info :version)

(assert (=> b!563181 (= lt!257166 (not ((_ is Intermediate!5422) lt!257170)))))

(declare-fun e!324558 () Bool)

(assert (=> b!563181 e!324558))

(declare-fun res!354490 () Bool)

(assert (=> b!563181 (=> (not res!354490) (not e!324558))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35339 (_ BitVec 32)) Bool)

(assert (=> b!563181 (= res!354490 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17618 0))(
  ( (Unit!17619) )
))
(declare-fun lt!257169 () Unit!17618)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35339 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17618)

(assert (=> b!563181 (= lt!257169 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!563182 () Bool)

(declare-fun e!324556 () Bool)

(assert (=> b!563182 (= e!324559 e!324556)))

(declare-fun res!354485 () Bool)

(assert (=> b!563182 (=> (not res!354485) (not e!324556))))

(declare-fun lt!257171 () SeekEntryResult!5422)

(assert (=> b!563182 (= res!354485 (or (= lt!257171 (MissingZero!5422 i!1132)) (= lt!257171 (MissingVacant!5422 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35339 (_ BitVec 32)) SeekEntryResult!5422)

(assert (=> b!563182 (= lt!257171 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!563183 () Bool)

(declare-fun res!354483 () Bool)

(assert (=> b!563183 (=> (not res!354483) (not e!324559))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563183 (= res!354483 (validKeyInArray!0 k0!1914))))

(declare-fun b!563184 () Bool)

(declare-fun res!354491 () Bool)

(assert (=> b!563184 (=> (not res!354491) (not e!324556))))

(declare-datatypes ((List!11099 0))(
  ( (Nil!11096) (Cons!11095 (h!12098 (_ BitVec 64)) (t!17335 List!11099)) )
))
(declare-fun arrayNoDuplicates!0 (array!35339 (_ BitVec 32) List!11099) Bool)

(assert (=> b!563184 (= res!354491 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11096))))

(declare-fun b!563185 () Bool)

(declare-fun res!354486 () Bool)

(assert (=> b!563185 (=> (not res!354486) (not e!324559))))

(assert (=> b!563185 (= res!354486 (validKeyInArray!0 (select (arr!16966 a!3118) j!142)))))

(declare-fun b!563186 () Bool)

(assert (=> b!563186 (= e!324556 e!324557)))

(declare-fun res!354484 () Bool)

(assert (=> b!563186 (=> (not res!354484) (not e!324557))))

(declare-fun lt!257168 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35339 (_ BitVec 32)) SeekEntryResult!5422)

(assert (=> b!563186 (= res!354484 (= lt!257170 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257168 (select (store (arr!16966 a!3118) i!1132 k0!1914) j!142) (array!35340 (store (arr!16966 a!3118) i!1132 k0!1914) (size!17330 a!3118)) mask!3119)))))

(declare-fun lt!257167 () (_ BitVec 32))

(assert (=> b!563186 (= lt!257170 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257167 (select (arr!16966 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!563186 (= lt!257168 (toIndex!0 (select (store (arr!16966 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!563186 (= lt!257167 (toIndex!0 (select (arr!16966 a!3118) j!142) mask!3119))))

(declare-fun b!563187 () Bool)

(declare-fun res!354489 () Bool)

(assert (=> b!563187 (=> (not res!354489) (not e!324559))))

(declare-fun arrayContainsKey!0 (array!35339 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563187 (= res!354489 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!563188 () Bool)

(declare-fun res!354487 () Bool)

(assert (=> b!563188 (=> (not res!354487) (not e!324556))))

(assert (=> b!563188 (= res!354487 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!563189 () Bool)

(assert (=> b!563189 (= e!324558 (= (seekEntryOrOpen!0 (select (arr!16966 a!3118) j!142) a!3118 mask!3119) (Found!5422 j!142)))))

(assert (= (and start!51520 res!354488) b!563180))

(assert (= (and b!563180 res!354482) b!563185))

(assert (= (and b!563185 res!354486) b!563183))

(assert (= (and b!563183 res!354483) b!563187))

(assert (= (and b!563187 res!354489) b!563182))

(assert (= (and b!563182 res!354485) b!563188))

(assert (= (and b!563188 res!354487) b!563184))

(assert (= (and b!563184 res!354491) b!563186))

(assert (= (and b!563186 res!354484) b!563181))

(assert (= (and b!563181 res!354490) b!563189))

(declare-fun m!541549 () Bool)

(assert (=> b!563189 m!541549))

(assert (=> b!563189 m!541549))

(declare-fun m!541551 () Bool)

(assert (=> b!563189 m!541551))

(assert (=> b!563185 m!541549))

(assert (=> b!563185 m!541549))

(declare-fun m!541553 () Bool)

(assert (=> b!563185 m!541553))

(declare-fun m!541555 () Bool)

(assert (=> b!563183 m!541555))

(assert (=> b!563186 m!541549))

(declare-fun m!541557 () Bool)

(assert (=> b!563186 m!541557))

(declare-fun m!541559 () Bool)

(assert (=> b!563186 m!541559))

(declare-fun m!541561 () Bool)

(assert (=> b!563186 m!541561))

(assert (=> b!563186 m!541549))

(assert (=> b!563186 m!541559))

(assert (=> b!563186 m!541549))

(declare-fun m!541563 () Bool)

(assert (=> b!563186 m!541563))

(declare-fun m!541565 () Bool)

(assert (=> b!563186 m!541565))

(assert (=> b!563186 m!541559))

(declare-fun m!541567 () Bool)

(assert (=> b!563186 m!541567))

(declare-fun m!541569 () Bool)

(assert (=> b!563184 m!541569))

(declare-fun m!541571 () Bool)

(assert (=> start!51520 m!541571))

(declare-fun m!541573 () Bool)

(assert (=> start!51520 m!541573))

(declare-fun m!541575 () Bool)

(assert (=> b!563182 m!541575))

(declare-fun m!541577 () Bool)

(assert (=> b!563181 m!541577))

(declare-fun m!541579 () Bool)

(assert (=> b!563181 m!541579))

(declare-fun m!541581 () Bool)

(assert (=> b!563188 m!541581))

(declare-fun m!541583 () Bool)

(assert (=> b!563187 m!541583))

(check-sat (not b!563183) (not b!563185) (not b!563184) (not b!563189) (not b!563182) (not b!563181) (not b!563186) (not b!563187) (not b!563188) (not start!51520))
(check-sat)
