; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51488 () Bool)

(assert start!51488)

(declare-fun b!562623 () Bool)

(declare-fun e!324250 () Bool)

(declare-fun e!324253 () Bool)

(assert (=> b!562623 (= e!324250 e!324253)))

(declare-fun res!353928 () Bool)

(assert (=> b!562623 (=> (not res!353928) (not e!324253))))

(declare-datatypes ((SeekEntryResult!5406 0))(
  ( (MissingZero!5406 (index!23851 (_ BitVec 32))) (Found!5406 (index!23852 (_ BitVec 32))) (Intermediate!5406 (undefined!6218 Bool) (index!23853 (_ BitVec 32)) (x!52776 (_ BitVec 32))) (Undefined!5406) (MissingVacant!5406 (index!23854 (_ BitVec 32))) )
))
(declare-fun lt!256643 () SeekEntryResult!5406)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!562623 (= res!353928 (or (= lt!256643 (MissingZero!5406 i!1132)) (= lt!256643 (MissingVacant!5406 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!35307 0))(
  ( (array!35308 (arr!16950 (Array (_ BitVec 32) (_ BitVec 64))) (size!17314 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35307)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35307 (_ BitVec 32)) SeekEntryResult!5406)

(assert (=> b!562623 (= lt!256643 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!562625 () Bool)

(declare-fun res!353930 () Bool)

(assert (=> b!562625 (=> (not res!353930) (not e!324253))))

(declare-datatypes ((List!11083 0))(
  ( (Nil!11080) (Cons!11079 (h!12082 (_ BitVec 64)) (t!17319 List!11083)) )
))
(declare-fun arrayNoDuplicates!0 (array!35307 (_ BitVec 32) List!11083) Bool)

(assert (=> b!562625 (= res!353930 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11080))))

(declare-fun b!562626 () Bool)

(declare-fun res!353927 () Bool)

(assert (=> b!562626 (=> (not res!353927) (not e!324250))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!562626 (= res!353927 (validKeyInArray!0 (select (arr!16950 a!3118) j!142)))))

(declare-fun b!562627 () Bool)

(declare-fun res!353934 () Bool)

(assert (=> b!562627 (=> (not res!353934) (not e!324250))))

(declare-fun arrayContainsKey!0 (array!35307 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!562627 (= res!353934 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!562628 () Bool)

(declare-fun res!353925 () Bool)

(assert (=> b!562628 (=> (not res!353925) (not e!324250))))

(assert (=> b!562628 (= res!353925 (validKeyInArray!0 k!1914))))

(declare-fun b!562629 () Bool)

(declare-fun e!324252 () Bool)

(assert (=> b!562629 (= e!324252 true)))

(declare-fun lt!256652 () SeekEntryResult!5406)

(declare-fun lt!256645 () SeekEntryResult!5406)

(assert (=> b!562629 (= lt!256652 lt!256645)))

(declare-datatypes ((Unit!17586 0))(
  ( (Unit!17587) )
))
(declare-fun lt!256653 () Unit!17586)

(declare-fun lt!256647 () SeekEntryResult!5406)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35307 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17586)

(assert (=> b!562629 (= lt!256653 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k!1914 j!142 (x!52776 lt!256647) (index!23853 lt!256647) (index!23853 lt!256647) mask!3119))))

(declare-fun b!562630 () Bool)

(declare-fun res!353926 () Bool)

(assert (=> b!562630 (=> (not res!353926) (not e!324250))))

(assert (=> b!562630 (= res!353926 (and (= (size!17314 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17314 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17314 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!562631 () Bool)

(declare-fun e!324247 () Bool)

(declare-fun e!324248 () Bool)

(assert (=> b!562631 (= e!324247 (not e!324248))))

(declare-fun res!353932 () Bool)

(assert (=> b!562631 (=> res!353932 e!324248)))

(assert (=> b!562631 (= res!353932 (or (undefined!6218 lt!256647) (not (is-Intermediate!5406 lt!256647))))))

(declare-fun lt!256654 () SeekEntryResult!5406)

(declare-fun lt!256646 () SeekEntryResult!5406)

(assert (=> b!562631 (= lt!256654 lt!256646)))

(assert (=> b!562631 (= lt!256646 (Found!5406 j!142))))

(assert (=> b!562631 (= lt!256654 (seekEntryOrOpen!0 (select (arr!16950 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35307 (_ BitVec 32)) Bool)

(assert (=> b!562631 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!256655 () Unit!17586)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35307 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17586)

(assert (=> b!562631 (= lt!256655 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!562632 () Bool)

(declare-fun e!324251 () Bool)

(assert (=> b!562632 (= e!324248 e!324251)))

(declare-fun res!353933 () Bool)

(assert (=> b!562632 (=> res!353933 e!324251)))

(declare-fun lt!256649 () (_ BitVec 64))

(assert (=> b!562632 (= res!353933 (or (= lt!256649 (select (arr!16950 a!3118) j!142)) (= lt!256649 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!562632 (= lt!256649 (select (arr!16950 a!3118) (index!23853 lt!256647)))))

(declare-fun b!562624 () Bool)

(assert (=> b!562624 (= e!324251 e!324252)))

(declare-fun res!353935 () Bool)

(assert (=> b!562624 (=> res!353935 e!324252)))

(assert (=> b!562624 (= res!353935 (or (bvslt (index!23853 lt!256647) #b00000000000000000000000000000000) (bvsge (index!23853 lt!256647) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52776 lt!256647) #b01111111111111111111111111111110) (bvslt (x!52776 lt!256647) #b00000000000000000000000000000000) (not (= lt!256649 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!16950 a!3118) i!1132 k!1914) (index!23853 lt!256647)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!256652 lt!256646))))))

(declare-fun lt!256650 () SeekEntryResult!5406)

(assert (=> b!562624 (= lt!256650 lt!256645)))

(declare-fun lt!256642 () (_ BitVec 64))

(declare-fun lt!256651 () array!35307)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35307 (_ BitVec 32)) SeekEntryResult!5406)

(assert (=> b!562624 (= lt!256645 (seekKeyOrZeroReturnVacant!0 (x!52776 lt!256647) (index!23853 lt!256647) (index!23853 lt!256647) lt!256642 lt!256651 mask!3119))))

(assert (=> b!562624 (= lt!256650 (seekEntryOrOpen!0 lt!256642 lt!256651 mask!3119))))

(assert (=> b!562624 (= lt!256654 lt!256652)))

(assert (=> b!562624 (= lt!256652 (seekKeyOrZeroReturnVacant!0 (x!52776 lt!256647) (index!23853 lt!256647) (index!23853 lt!256647) (select (arr!16950 a!3118) j!142) a!3118 mask!3119))))

(declare-fun res!353931 () Bool)

(assert (=> start!51488 (=> (not res!353931) (not e!324250))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51488 (= res!353931 (validMask!0 mask!3119))))

(assert (=> start!51488 e!324250))

(assert (=> start!51488 true))

(declare-fun array_inv!12724 (array!35307) Bool)

(assert (=> start!51488 (array_inv!12724 a!3118)))

(declare-fun b!562633 () Bool)

(declare-fun res!353929 () Bool)

(assert (=> b!562633 (=> (not res!353929) (not e!324253))))

(assert (=> b!562633 (= res!353929 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!562634 () Bool)

(assert (=> b!562634 (= e!324253 e!324247)))

(declare-fun res!353936 () Bool)

(assert (=> b!562634 (=> (not res!353936) (not e!324247))))

(declare-fun lt!256644 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35307 (_ BitVec 32)) SeekEntryResult!5406)

(assert (=> b!562634 (= res!353936 (= lt!256647 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256644 lt!256642 lt!256651 mask!3119)))))

(declare-fun lt!256648 () (_ BitVec 32))

(assert (=> b!562634 (= lt!256647 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256648 (select (arr!16950 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!562634 (= lt!256644 (toIndex!0 lt!256642 mask!3119))))

(assert (=> b!562634 (= lt!256642 (select (store (arr!16950 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!562634 (= lt!256648 (toIndex!0 (select (arr!16950 a!3118) j!142) mask!3119))))

(assert (=> b!562634 (= lt!256651 (array!35308 (store (arr!16950 a!3118) i!1132 k!1914) (size!17314 a!3118)))))

(assert (= (and start!51488 res!353931) b!562630))

(assert (= (and b!562630 res!353926) b!562626))

(assert (= (and b!562626 res!353927) b!562628))

(assert (= (and b!562628 res!353925) b!562627))

(assert (= (and b!562627 res!353934) b!562623))

(assert (= (and b!562623 res!353928) b!562633))

(assert (= (and b!562633 res!353929) b!562625))

(assert (= (and b!562625 res!353930) b!562634))

(assert (= (and b!562634 res!353936) b!562631))

(assert (= (and b!562631 (not res!353932)) b!562632))

(assert (= (and b!562632 (not res!353933)) b!562624))

(assert (= (and b!562624 (not res!353935)) b!562629))

(declare-fun m!540823 () Bool)

(assert (=> b!562623 m!540823))

(declare-fun m!540825 () Bool)

(assert (=> start!51488 m!540825))

(declare-fun m!540827 () Bool)

(assert (=> start!51488 m!540827))

(declare-fun m!540829 () Bool)

(assert (=> b!562624 m!540829))

(declare-fun m!540831 () Bool)

(assert (=> b!562624 m!540831))

(declare-fun m!540833 () Bool)

(assert (=> b!562624 m!540833))

(declare-fun m!540835 () Bool)

(assert (=> b!562624 m!540835))

(declare-fun m!540837 () Bool)

(assert (=> b!562624 m!540837))

(assert (=> b!562624 m!540831))

(declare-fun m!540839 () Bool)

(assert (=> b!562624 m!540839))

(declare-fun m!540841 () Bool)

(assert (=> b!562633 m!540841))

(declare-fun m!540843 () Bool)

(assert (=> b!562625 m!540843))

(assert (=> b!562634 m!540831))

(declare-fun m!540845 () Bool)

(assert (=> b!562634 m!540845))

(assert (=> b!562634 m!540831))

(declare-fun m!540847 () Bool)

(assert (=> b!562634 m!540847))

(assert (=> b!562634 m!540831))

(declare-fun m!540849 () Bool)

(assert (=> b!562634 m!540849))

(declare-fun m!540851 () Bool)

(assert (=> b!562634 m!540851))

(assert (=> b!562634 m!540837))

(declare-fun m!540853 () Bool)

(assert (=> b!562634 m!540853))

(assert (=> b!562626 m!540831))

(assert (=> b!562626 m!540831))

(declare-fun m!540855 () Bool)

(assert (=> b!562626 m!540855))

(declare-fun m!540857 () Bool)

(assert (=> b!562627 m!540857))

(declare-fun m!540859 () Bool)

(assert (=> b!562629 m!540859))

(assert (=> b!562632 m!540831))

(declare-fun m!540861 () Bool)

(assert (=> b!562632 m!540861))

(assert (=> b!562631 m!540831))

(assert (=> b!562631 m!540831))

(declare-fun m!540863 () Bool)

(assert (=> b!562631 m!540863))

(declare-fun m!540865 () Bool)

(assert (=> b!562631 m!540865))

(declare-fun m!540867 () Bool)

(assert (=> b!562631 m!540867))

(declare-fun m!540869 () Bool)

(assert (=> b!562628 m!540869))

(push 1)

