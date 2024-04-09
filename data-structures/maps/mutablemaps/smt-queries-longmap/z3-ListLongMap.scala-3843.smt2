; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52888 () Bool)

(assert start!52888)

(declare-fun b!576107 () Bool)

(declare-fun res!364491 () Bool)

(declare-fun e!331477 () Bool)

(assert (=> b!576107 (=> (not res!364491) (not e!331477))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35930 0))(
  ( (array!35931 (arr!17242 (Array (_ BitVec 32) (_ BitVec 64))) (size!17606 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35930)

(assert (=> b!576107 (= res!364491 (and (= (size!17606 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17606 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17606 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!576108 () Bool)

(declare-fun res!364494 () Bool)

(declare-fun e!331478 () Bool)

(assert (=> b!576108 (=> (not res!364494) (not e!331478))))

(declare-datatypes ((List!11375 0))(
  ( (Nil!11372) (Cons!11371 (h!12413 (_ BitVec 64)) (t!17611 List!11375)) )
))
(declare-fun arrayNoDuplicates!0 (array!35930 (_ BitVec 32) List!11375) Bool)

(assert (=> b!576108 (= res!364494 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11372))))

(declare-fun b!576109 () Bool)

(assert (=> b!576109 (= e!331477 e!331478)))

(declare-fun res!364490 () Bool)

(assert (=> b!576109 (=> (not res!364490) (not e!331478))))

(declare-datatypes ((SeekEntryResult!5698 0))(
  ( (MissingZero!5698 (index!25019 (_ BitVec 32))) (Found!5698 (index!25020 (_ BitVec 32))) (Intermediate!5698 (undefined!6510 Bool) (index!25021 (_ BitVec 32)) (x!53940 (_ BitVec 32))) (Undefined!5698) (MissingVacant!5698 (index!25022 (_ BitVec 32))) )
))
(declare-fun lt!263596 () SeekEntryResult!5698)

(assert (=> b!576109 (= res!364490 (or (= lt!263596 (MissingZero!5698 i!1132)) (= lt!263596 (MissingVacant!5698 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35930 (_ BitVec 32)) SeekEntryResult!5698)

(assert (=> b!576109 (= lt!263596 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!576110 () Bool)

(declare-fun res!364499 () Bool)

(assert (=> b!576110 (=> (not res!364499) (not e!331477))))

(declare-fun arrayContainsKey!0 (array!35930 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!576110 (= res!364499 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!364495 () Bool)

(assert (=> start!52888 (=> (not res!364495) (not e!331477))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52888 (= res!364495 (validMask!0 mask!3119))))

(assert (=> start!52888 e!331477))

(assert (=> start!52888 true))

(declare-fun array_inv!13016 (array!35930) Bool)

(assert (=> start!52888 (array_inv!13016 a!3118)))

(declare-fun b!576111 () Bool)

(declare-fun res!364498 () Bool)

(assert (=> b!576111 (=> (not res!364498) (not e!331477))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576111 (= res!364498 (validKeyInArray!0 (select (arr!17242 a!3118) j!142)))))

(declare-fun b!576112 () Bool)

(assert (=> b!576112 (= e!331478 (not true))))

(declare-fun e!331479 () Bool)

(assert (=> b!576112 e!331479))

(declare-fun res!364496 () Bool)

(assert (=> b!576112 (=> (not res!364496) (not e!331479))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35930 (_ BitVec 32)) Bool)

(assert (=> b!576112 (= res!364496 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!18098 0))(
  ( (Unit!18099) )
))
(declare-fun lt!263597 () Unit!18098)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35930 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18098)

(assert (=> b!576112 (= lt!263597 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!576113 () Bool)

(declare-fun res!364493 () Bool)

(assert (=> b!576113 (=> (not res!364493) (not e!331478))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35930 (_ BitVec 32)) SeekEntryResult!5698)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!576113 (= res!364493 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17242 a!3118) j!142) mask!3119) (select (arr!17242 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17242 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!17242 a!3118) i!1132 k0!1914) j!142) (array!35931 (store (arr!17242 a!3118) i!1132 k0!1914) (size!17606 a!3118)) mask!3119)))))

(declare-fun b!576114 () Bool)

(declare-fun res!364492 () Bool)

(assert (=> b!576114 (=> (not res!364492) (not e!331477))))

(assert (=> b!576114 (= res!364492 (validKeyInArray!0 k0!1914))))

(declare-fun b!576115 () Bool)

(declare-fun res!364497 () Bool)

(assert (=> b!576115 (=> (not res!364497) (not e!331478))))

(assert (=> b!576115 (= res!364497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!576116 () Bool)

(assert (=> b!576116 (= e!331479 (= (seekEntryOrOpen!0 (select (arr!17242 a!3118) j!142) a!3118 mask!3119) (Found!5698 j!142)))))

(assert (= (and start!52888 res!364495) b!576107))

(assert (= (and b!576107 res!364491) b!576111))

(assert (= (and b!576111 res!364498) b!576114))

(assert (= (and b!576114 res!364492) b!576110))

(assert (= (and b!576110 res!364499) b!576109))

(assert (= (and b!576109 res!364490) b!576115))

(assert (= (and b!576115 res!364497) b!576108))

(assert (= (and b!576108 res!364494) b!576113))

(assert (= (and b!576113 res!364493) b!576112))

(assert (= (and b!576112 res!364496) b!576116))

(declare-fun m!555079 () Bool)

(assert (=> b!576108 m!555079))

(declare-fun m!555081 () Bool)

(assert (=> b!576114 m!555081))

(declare-fun m!555083 () Bool)

(assert (=> b!576109 m!555083))

(declare-fun m!555085 () Bool)

(assert (=> b!576111 m!555085))

(assert (=> b!576111 m!555085))

(declare-fun m!555087 () Bool)

(assert (=> b!576111 m!555087))

(assert (=> b!576116 m!555085))

(assert (=> b!576116 m!555085))

(declare-fun m!555089 () Bool)

(assert (=> b!576116 m!555089))

(declare-fun m!555091 () Bool)

(assert (=> b!576112 m!555091))

(declare-fun m!555093 () Bool)

(assert (=> b!576112 m!555093))

(declare-fun m!555095 () Bool)

(assert (=> b!576110 m!555095))

(declare-fun m!555097 () Bool)

(assert (=> start!52888 m!555097))

(declare-fun m!555099 () Bool)

(assert (=> start!52888 m!555099))

(declare-fun m!555101 () Bool)

(assert (=> b!576115 m!555101))

(assert (=> b!576113 m!555085))

(declare-fun m!555103 () Bool)

(assert (=> b!576113 m!555103))

(assert (=> b!576113 m!555085))

(declare-fun m!555105 () Bool)

(assert (=> b!576113 m!555105))

(declare-fun m!555107 () Bool)

(assert (=> b!576113 m!555107))

(assert (=> b!576113 m!555105))

(declare-fun m!555109 () Bool)

(assert (=> b!576113 m!555109))

(assert (=> b!576113 m!555103))

(assert (=> b!576113 m!555085))

(declare-fun m!555111 () Bool)

(assert (=> b!576113 m!555111))

(declare-fun m!555113 () Bool)

(assert (=> b!576113 m!555113))

(assert (=> b!576113 m!555105))

(assert (=> b!576113 m!555107))

(check-sat (not b!576108) (not start!52888) (not b!576116) (not b!576110) (not b!576112) (not b!576109) (not b!576115) (not b!576114) (not b!576113) (not b!576111))
(check-sat)
