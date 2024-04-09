; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52434 () Bool)

(assert start!52434)

(declare-fun b!571880 () Bool)

(declare-fun res!361550 () Bool)

(declare-fun e!328944 () Bool)

(assert (=> b!571880 (=> (not res!361550) (not e!328944))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!571880 (= res!361550 (validKeyInArray!0 k!1914))))

(declare-fun b!571881 () Bool)

(declare-fun e!328946 () Bool)

(declare-fun e!328951 () Bool)

(assert (=> b!571881 (= e!328946 e!328951)))

(declare-fun res!361539 () Bool)

(assert (=> b!571881 (=> res!361539 e!328951)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!260952 () (_ BitVec 64))

(declare-datatypes ((array!35785 0))(
  ( (array!35786 (arr!17177 (Array (_ BitVec 32) (_ BitVec 64))) (size!17541 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35785)

(assert (=> b!571881 (= res!361539 (or (= lt!260952 (select (arr!17177 a!3118) j!142)) (= lt!260952 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5633 0))(
  ( (MissingZero!5633 (index!24759 (_ BitVec 32))) (Found!5633 (index!24760 (_ BitVec 32))) (Intermediate!5633 (undefined!6445 Bool) (index!24761 (_ BitVec 32)) (x!53657 (_ BitVec 32))) (Undefined!5633) (MissingVacant!5633 (index!24762 (_ BitVec 32))) )
))
(declare-fun lt!260950 () SeekEntryResult!5633)

(assert (=> b!571881 (= lt!260952 (select (arr!17177 a!3118) (index!24761 lt!260950)))))

(declare-fun b!571882 () Bool)

(declare-fun e!328947 () Bool)

(assert (=> b!571882 (= e!328947 e!328946)))

(declare-fun res!361547 () Bool)

(assert (=> b!571882 (=> res!361547 e!328946)))

(assert (=> b!571882 (= res!361547 (or (undefined!6445 lt!260950) (not (is-Intermediate!5633 lt!260950))))))

(declare-fun res!361544 () Bool)

(assert (=> start!52434 (=> (not res!361544) (not e!328944))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52434 (= res!361544 (validMask!0 mask!3119))))

(assert (=> start!52434 e!328944))

(assert (=> start!52434 true))

(declare-fun array_inv!12951 (array!35785) Bool)

(assert (=> start!52434 (array_inv!12951 a!3118)))

(declare-fun b!571883 () Bool)

(declare-fun e!328949 () Bool)

(assert (=> b!571883 (= e!328944 e!328949)))

(declare-fun res!361549 () Bool)

(assert (=> b!571883 (=> (not res!361549) (not e!328949))))

(declare-fun lt!260951 () SeekEntryResult!5633)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!571883 (= res!361549 (or (= lt!260951 (MissingZero!5633 i!1132)) (= lt!260951 (MissingVacant!5633 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35785 (_ BitVec 32)) SeekEntryResult!5633)

(assert (=> b!571883 (= lt!260951 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!571884 () Bool)

(declare-fun e!328945 () Bool)

(assert (=> b!571884 (= e!328945 (not true))))

(assert (=> b!571884 e!328947))

(declare-fun res!361542 () Bool)

(assert (=> b!571884 (=> (not res!361542) (not e!328947))))

(declare-fun lt!260949 () SeekEntryResult!5633)

(assert (=> b!571884 (= res!361542 (= lt!260949 (Found!5633 j!142)))))

(assert (=> b!571884 (= lt!260949 (seekEntryOrOpen!0 (select (arr!17177 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35785 (_ BitVec 32)) Bool)

(assert (=> b!571884 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17968 0))(
  ( (Unit!17969) )
))
(declare-fun lt!260953 () Unit!17968)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35785 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17968)

(assert (=> b!571884 (= lt!260953 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!571885 () Bool)

(declare-fun res!361546 () Bool)

(assert (=> b!571885 (=> (not res!361546) (not e!328944))))

(assert (=> b!571885 (= res!361546 (validKeyInArray!0 (select (arr!17177 a!3118) j!142)))))

(declare-fun b!571886 () Bool)

(declare-fun res!361548 () Bool)

(assert (=> b!571886 (=> (not res!361548) (not e!328949))))

(assert (=> b!571886 (= res!361548 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!571887 () Bool)

(declare-fun res!361540 () Bool)

(assert (=> b!571887 (=> (not res!361540) (not e!328944))))

(declare-fun arrayContainsKey!0 (array!35785 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!571887 (= res!361540 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!571888 () Bool)

(declare-fun res!361545 () Bool)

(assert (=> b!571888 (=> (not res!361545) (not e!328944))))

(assert (=> b!571888 (= res!361545 (and (= (size!17541 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17541 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17541 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!571889 () Bool)

(declare-fun res!361543 () Bool)

(assert (=> b!571889 (=> (not res!361543) (not e!328949))))

(declare-datatypes ((List!11310 0))(
  ( (Nil!11307) (Cons!11306 (h!12333 (_ BitVec 64)) (t!17546 List!11310)) )
))
(declare-fun arrayNoDuplicates!0 (array!35785 (_ BitVec 32) List!11310) Bool)

(assert (=> b!571889 (= res!361543 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11307))))

(declare-fun b!571890 () Bool)

(assert (=> b!571890 (= e!328949 e!328945)))

(declare-fun res!361538 () Bool)

(assert (=> b!571890 (=> (not res!361538) (not e!328945))))

(declare-fun lt!260947 () (_ BitVec 32))

(declare-fun lt!260948 () array!35785)

(declare-fun lt!260946 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35785 (_ BitVec 32)) SeekEntryResult!5633)

(assert (=> b!571890 (= res!361538 (= lt!260950 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260947 lt!260946 lt!260948 mask!3119)))))

(declare-fun lt!260954 () (_ BitVec 32))

(assert (=> b!571890 (= lt!260950 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260954 (select (arr!17177 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!571890 (= lt!260947 (toIndex!0 lt!260946 mask!3119))))

(assert (=> b!571890 (= lt!260946 (select (store (arr!17177 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!571890 (= lt!260954 (toIndex!0 (select (arr!17177 a!3118) j!142) mask!3119))))

(assert (=> b!571890 (= lt!260948 (array!35786 (store (arr!17177 a!3118) i!1132 k!1914) (size!17541 a!3118)))))

(declare-fun b!571891 () Bool)

(declare-fun e!328948 () Bool)

(assert (=> b!571891 (= e!328951 e!328948)))

(declare-fun res!361541 () Bool)

(assert (=> b!571891 (=> (not res!361541) (not e!328948))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35785 (_ BitVec 32)) SeekEntryResult!5633)

(assert (=> b!571891 (= res!361541 (= lt!260949 (seekKeyOrZeroReturnVacant!0 (x!53657 lt!260950) (index!24761 lt!260950) (index!24761 lt!260950) (select (arr!17177 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!571892 () Bool)

(assert (=> b!571892 (= e!328948 (= (seekEntryOrOpen!0 lt!260946 lt!260948 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53657 lt!260950) (index!24761 lt!260950) (index!24761 lt!260950) lt!260946 lt!260948 mask!3119)))))

(assert (= (and start!52434 res!361544) b!571888))

(assert (= (and b!571888 res!361545) b!571885))

(assert (= (and b!571885 res!361546) b!571880))

(assert (= (and b!571880 res!361550) b!571887))

(assert (= (and b!571887 res!361540) b!571883))

(assert (= (and b!571883 res!361549) b!571886))

(assert (= (and b!571886 res!361548) b!571889))

(assert (= (and b!571889 res!361543) b!571890))

(assert (= (and b!571890 res!361538) b!571884))

(assert (= (and b!571884 res!361542) b!571882))

(assert (= (and b!571882 (not res!361547)) b!571881))

(assert (= (and b!571881 (not res!361539)) b!571891))

(assert (= (and b!571891 res!361541) b!571892))

(declare-fun m!550847 () Bool)

(assert (=> b!571881 m!550847))

(declare-fun m!550849 () Bool)

(assert (=> b!571881 m!550849))

(declare-fun m!550851 () Bool)

(assert (=> b!571889 m!550851))

(assert (=> b!571885 m!550847))

(assert (=> b!571885 m!550847))

(declare-fun m!550853 () Bool)

(assert (=> b!571885 m!550853))

(declare-fun m!550855 () Bool)

(assert (=> b!571886 m!550855))

(assert (=> b!571890 m!550847))

(declare-fun m!550857 () Bool)

(assert (=> b!571890 m!550857))

(assert (=> b!571890 m!550847))

(declare-fun m!550859 () Bool)

(assert (=> b!571890 m!550859))

(assert (=> b!571890 m!550847))

(declare-fun m!550861 () Bool)

(assert (=> b!571890 m!550861))

(declare-fun m!550863 () Bool)

(assert (=> b!571890 m!550863))

(declare-fun m!550865 () Bool)

(assert (=> b!571890 m!550865))

(declare-fun m!550867 () Bool)

(assert (=> b!571890 m!550867))

(assert (=> b!571884 m!550847))

(assert (=> b!571884 m!550847))

(declare-fun m!550869 () Bool)

(assert (=> b!571884 m!550869))

(declare-fun m!550871 () Bool)

(assert (=> b!571884 m!550871))

(declare-fun m!550873 () Bool)

(assert (=> b!571884 m!550873))

(declare-fun m!550875 () Bool)

(assert (=> start!52434 m!550875))

(declare-fun m!550877 () Bool)

(assert (=> start!52434 m!550877))

(declare-fun m!550879 () Bool)

(assert (=> b!571880 m!550879))

(declare-fun m!550881 () Bool)

(assert (=> b!571892 m!550881))

(declare-fun m!550883 () Bool)

(assert (=> b!571892 m!550883))

(assert (=> b!571891 m!550847))

(assert (=> b!571891 m!550847))

(declare-fun m!550885 () Bool)

(assert (=> b!571891 m!550885))

(declare-fun m!550887 () Bool)

(assert (=> b!571883 m!550887))

(declare-fun m!550889 () Bool)

(assert (=> b!571887 m!550889))

(push 1)

