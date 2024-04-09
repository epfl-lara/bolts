; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51550 () Bool)

(assert start!51550)

(declare-fun b!563630 () Bool)

(declare-fun res!354941 () Bool)

(declare-fun e!324750 () Bool)

(assert (=> b!563630 (=> (not res!354941) (not e!324750))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35369 0))(
  ( (array!35370 (arr!16981 (Array (_ BitVec 32) (_ BitVec 64))) (size!17345 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35369)

(assert (=> b!563630 (= res!354941 (and (= (size!17345 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17345 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17345 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!563631 () Bool)

(declare-fun res!354940 () Bool)

(declare-fun e!324751 () Bool)

(assert (=> b!563631 (=> (not res!354940) (not e!324751))))

(declare-datatypes ((List!11114 0))(
  ( (Nil!11111) (Cons!11110 (h!12113 (_ BitVec 64)) (t!17350 List!11114)) )
))
(declare-fun arrayNoDuplicates!0 (array!35369 (_ BitVec 32) List!11114) Bool)

(assert (=> b!563631 (= res!354940 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11111))))

(declare-fun b!563632 () Bool)

(declare-fun res!354935 () Bool)

(assert (=> b!563632 (=> (not res!354935) (not e!324751))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5437 0))(
  ( (MissingZero!5437 (index!23975 (_ BitVec 32))) (Found!5437 (index!23976 (_ BitVec 32))) (Intermediate!5437 (undefined!6249 Bool) (index!23977 (_ BitVec 32)) (x!52887 (_ BitVec 32))) (Undefined!5437) (MissingVacant!5437 (index!23978 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35369 (_ BitVec 32)) SeekEntryResult!5437)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!563632 (= res!354935 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16981 a!3118) j!142) mask!3119) (select (arr!16981 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16981 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16981 a!3118) i!1132 k0!1914) j!142) (array!35370 (store (arr!16981 a!3118) i!1132 k0!1914) (size!17345 a!3118)) mask!3119)))))

(declare-fun b!563634 () Bool)

(declare-fun e!324748 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35369 (_ BitVec 32)) SeekEntryResult!5437)

(assert (=> b!563634 (= e!324748 (= (seekEntryOrOpen!0 (select (arr!16981 a!3118) j!142) a!3118 mask!3119) (Found!5437 j!142)))))

(declare-fun b!563635 () Bool)

(declare-fun res!354932 () Bool)

(assert (=> b!563635 (=> (not res!354932) (not e!324750))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563635 (= res!354932 (validKeyInArray!0 (select (arr!16981 a!3118) j!142)))))

(declare-fun b!563636 () Bool)

(declare-fun res!354933 () Bool)

(assert (=> b!563636 (=> (not res!354933) (not e!324750))))

(assert (=> b!563636 (= res!354933 (validKeyInArray!0 k0!1914))))

(declare-fun b!563637 () Bool)

(assert (=> b!563637 (= e!324751 (not true))))

(assert (=> b!563637 e!324748))

(declare-fun res!354938 () Bool)

(assert (=> b!563637 (=> (not res!354938) (not e!324748))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35369 (_ BitVec 32)) Bool)

(assert (=> b!563637 (= res!354938 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17648 0))(
  ( (Unit!17649) )
))
(declare-fun lt!257308 () Unit!17648)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35369 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17648)

(assert (=> b!563637 (= lt!257308 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!563638 () Bool)

(declare-fun res!354934 () Bool)

(assert (=> b!563638 (=> (not res!354934) (not e!324750))))

(declare-fun arrayContainsKey!0 (array!35369 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563638 (= res!354934 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!563639 () Bool)

(assert (=> b!563639 (= e!324750 e!324751)))

(declare-fun res!354939 () Bool)

(assert (=> b!563639 (=> (not res!354939) (not e!324751))))

(declare-fun lt!257309 () SeekEntryResult!5437)

(assert (=> b!563639 (= res!354939 (or (= lt!257309 (MissingZero!5437 i!1132)) (= lt!257309 (MissingVacant!5437 i!1132))))))

(assert (=> b!563639 (= lt!257309 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!563633 () Bool)

(declare-fun res!354937 () Bool)

(assert (=> b!563633 (=> (not res!354937) (not e!324751))))

(assert (=> b!563633 (= res!354937 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!354936 () Bool)

(assert (=> start!51550 (=> (not res!354936) (not e!324750))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51550 (= res!354936 (validMask!0 mask!3119))))

(assert (=> start!51550 e!324750))

(assert (=> start!51550 true))

(declare-fun array_inv!12755 (array!35369) Bool)

(assert (=> start!51550 (array_inv!12755 a!3118)))

(assert (= (and start!51550 res!354936) b!563630))

(assert (= (and b!563630 res!354941) b!563635))

(assert (= (and b!563635 res!354932) b!563636))

(assert (= (and b!563636 res!354933) b!563638))

(assert (= (and b!563638 res!354934) b!563639))

(assert (= (and b!563639 res!354939) b!563633))

(assert (= (and b!563633 res!354937) b!563631))

(assert (= (and b!563631 res!354940) b!563632))

(assert (= (and b!563632 res!354935) b!563637))

(assert (= (and b!563637 res!354938) b!563634))

(declare-fun m!542089 () Bool)

(assert (=> b!563636 m!542089))

(declare-fun m!542091 () Bool)

(assert (=> b!563634 m!542091))

(assert (=> b!563634 m!542091))

(declare-fun m!542093 () Bool)

(assert (=> b!563634 m!542093))

(declare-fun m!542095 () Bool)

(assert (=> b!563633 m!542095))

(declare-fun m!542097 () Bool)

(assert (=> start!51550 m!542097))

(declare-fun m!542099 () Bool)

(assert (=> start!51550 m!542099))

(assert (=> b!563635 m!542091))

(assert (=> b!563635 m!542091))

(declare-fun m!542101 () Bool)

(assert (=> b!563635 m!542101))

(declare-fun m!542103 () Bool)

(assert (=> b!563631 m!542103))

(assert (=> b!563632 m!542091))

(declare-fun m!542105 () Bool)

(assert (=> b!563632 m!542105))

(assert (=> b!563632 m!542091))

(declare-fun m!542107 () Bool)

(assert (=> b!563632 m!542107))

(declare-fun m!542109 () Bool)

(assert (=> b!563632 m!542109))

(assert (=> b!563632 m!542107))

(declare-fun m!542111 () Bool)

(assert (=> b!563632 m!542111))

(assert (=> b!563632 m!542105))

(assert (=> b!563632 m!542091))

(declare-fun m!542113 () Bool)

(assert (=> b!563632 m!542113))

(declare-fun m!542115 () Bool)

(assert (=> b!563632 m!542115))

(assert (=> b!563632 m!542107))

(assert (=> b!563632 m!542109))

(declare-fun m!542117 () Bool)

(assert (=> b!563639 m!542117))

(declare-fun m!542119 () Bool)

(assert (=> b!563637 m!542119))

(declare-fun m!542121 () Bool)

(assert (=> b!563637 m!542121))

(declare-fun m!542123 () Bool)

(assert (=> b!563638 m!542123))

(check-sat (not b!563631) (not b!563634) (not b!563637) (not b!563635) (not b!563636) (not b!563639) (not b!563638) (not b!563632) (not start!51550) (not b!563633))
(check-sat)
