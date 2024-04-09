; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51760 () Bool)

(assert start!51760)

(declare-fun b!565928 () Bool)

(declare-fun res!357052 () Bool)

(declare-fun e!325728 () Bool)

(assert (=> b!565928 (=> (not res!357052) (not e!325728))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!565928 (= res!357052 (validKeyInArray!0 k0!1914))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun e!325726 () Bool)

(declare-datatypes ((array!35522 0))(
  ( (array!35523 (arr!17056 (Array (_ BitVec 32) (_ BitVec 64))) (size!17420 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35522)

(declare-fun b!565930 () Bool)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5512 0))(
  ( (MissingZero!5512 (index!24275 (_ BitVec 32))) (Found!5512 (index!24276 (_ BitVec 32))) (Intermediate!5512 (undefined!6324 Bool) (index!24277 (_ BitVec 32)) (x!53168 (_ BitVec 32))) (Undefined!5512) (MissingVacant!5512 (index!24278 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35522 (_ BitVec 32)) SeekEntryResult!5512)

(assert (=> b!565930 (= e!325726 (= (seekEntryOrOpen!0 (select (arr!17056 a!3118) j!142) a!3118 mask!3119) (Found!5512 j!142)))))

(declare-fun b!565931 () Bool)

(declare-fun res!357053 () Bool)

(assert (=> b!565931 (=> (not res!357053) (not e!325728))))

(declare-fun arrayContainsKey!0 (array!35522 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!565931 (= res!357053 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!565932 () Bool)

(declare-fun e!325729 () Bool)

(assert (=> b!565932 (= e!325728 e!325729)))

(declare-fun res!357055 () Bool)

(assert (=> b!565932 (=> (not res!357055) (not e!325729))))

(declare-fun lt!257986 () SeekEntryResult!5512)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!565932 (= res!357055 (or (= lt!257986 (MissingZero!5512 i!1132)) (= lt!257986 (MissingVacant!5512 i!1132))))))

(assert (=> b!565932 (= lt!257986 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!565933 () Bool)

(declare-fun res!357048 () Bool)

(assert (=> b!565933 (=> (not res!357048) (not e!325728))))

(assert (=> b!565933 (= res!357048 (and (= (size!17420 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17420 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17420 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!565934 () Bool)

(declare-fun res!357054 () Bool)

(assert (=> b!565934 (=> (not res!357054) (not e!325729))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35522 (_ BitVec 32)) Bool)

(assert (=> b!565934 (= res!357054 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!565935 () Bool)

(declare-fun res!357049 () Bool)

(assert (=> b!565935 (=> (not res!357049) (not e!325729))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35522 (_ BitVec 32)) SeekEntryResult!5512)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565935 (= res!357049 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17056 a!3118) j!142) mask!3119) (select (arr!17056 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17056 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!17056 a!3118) i!1132 k0!1914) j!142) (array!35523 (store (arr!17056 a!3118) i!1132 k0!1914) (size!17420 a!3118)) mask!3119)))))

(declare-fun b!565936 () Bool)

(declare-fun res!357051 () Bool)

(assert (=> b!565936 (=> (not res!357051) (not e!325728))))

(assert (=> b!565936 (= res!357051 (validKeyInArray!0 (select (arr!17056 a!3118) j!142)))))

(declare-fun b!565937 () Bool)

(declare-fun res!357056 () Bool)

(assert (=> b!565937 (=> (not res!357056) (not e!325729))))

(declare-datatypes ((List!11189 0))(
  ( (Nil!11186) (Cons!11185 (h!12191 (_ BitVec 64)) (t!17425 List!11189)) )
))
(declare-fun arrayNoDuplicates!0 (array!35522 (_ BitVec 32) List!11189) Bool)

(assert (=> b!565937 (= res!357056 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11186))))

(declare-fun b!565929 () Bool)

(assert (=> b!565929 (= e!325729 (not true))))

(assert (=> b!565929 e!325726))

(declare-fun res!357050 () Bool)

(assert (=> b!565929 (=> (not res!357050) (not e!325726))))

(assert (=> b!565929 (= res!357050 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17726 0))(
  ( (Unit!17727) )
))
(declare-fun lt!257987 () Unit!17726)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35522 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17726)

(assert (=> b!565929 (= lt!257987 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!357047 () Bool)

(assert (=> start!51760 (=> (not res!357047) (not e!325728))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51760 (= res!357047 (validMask!0 mask!3119))))

(assert (=> start!51760 e!325728))

(assert (=> start!51760 true))

(declare-fun array_inv!12830 (array!35522) Bool)

(assert (=> start!51760 (array_inv!12830 a!3118)))

(assert (= (and start!51760 res!357047) b!565933))

(assert (= (and b!565933 res!357048) b!565936))

(assert (= (and b!565936 res!357051) b!565928))

(assert (= (and b!565928 res!357052) b!565931))

(assert (= (and b!565931 res!357053) b!565932))

(assert (= (and b!565932 res!357055) b!565934))

(assert (= (and b!565934 res!357054) b!565937))

(assert (= (and b!565937 res!357056) b!565935))

(assert (= (and b!565935 res!357049) b!565929))

(assert (= (and b!565929 res!357050) b!565930))

(declare-fun m!544561 () Bool)

(assert (=> b!565937 m!544561))

(declare-fun m!544563 () Bool)

(assert (=> b!565929 m!544563))

(declare-fun m!544565 () Bool)

(assert (=> b!565929 m!544565))

(declare-fun m!544567 () Bool)

(assert (=> b!565936 m!544567))

(assert (=> b!565936 m!544567))

(declare-fun m!544569 () Bool)

(assert (=> b!565936 m!544569))

(declare-fun m!544571 () Bool)

(assert (=> b!565928 m!544571))

(declare-fun m!544573 () Bool)

(assert (=> b!565934 m!544573))

(assert (=> b!565930 m!544567))

(assert (=> b!565930 m!544567))

(declare-fun m!544575 () Bool)

(assert (=> b!565930 m!544575))

(declare-fun m!544577 () Bool)

(assert (=> b!565931 m!544577))

(declare-fun m!544579 () Bool)

(assert (=> start!51760 m!544579))

(declare-fun m!544581 () Bool)

(assert (=> start!51760 m!544581))

(declare-fun m!544583 () Bool)

(assert (=> b!565932 m!544583))

(assert (=> b!565935 m!544567))

(declare-fun m!544585 () Bool)

(assert (=> b!565935 m!544585))

(assert (=> b!565935 m!544567))

(declare-fun m!544587 () Bool)

(assert (=> b!565935 m!544587))

(declare-fun m!544589 () Bool)

(assert (=> b!565935 m!544589))

(assert (=> b!565935 m!544587))

(declare-fun m!544591 () Bool)

(assert (=> b!565935 m!544591))

(assert (=> b!565935 m!544585))

(assert (=> b!565935 m!544567))

(declare-fun m!544593 () Bool)

(assert (=> b!565935 m!544593))

(declare-fun m!544595 () Bool)

(assert (=> b!565935 m!544595))

(assert (=> b!565935 m!544587))

(assert (=> b!565935 m!544589))

(check-sat (not b!565930) (not b!565929) (not b!565931) (not b!565937) (not b!565934) (not b!565936) (not b!565928) (not start!51760) (not b!565935) (not b!565932))
(check-sat)
