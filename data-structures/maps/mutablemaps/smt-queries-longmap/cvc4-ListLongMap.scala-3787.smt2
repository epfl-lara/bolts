; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51918 () Bool)

(assert start!51918)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun e!326354 () Bool)

(declare-fun b!567098 () Bool)

(declare-datatypes ((array!35566 0))(
  ( (array!35567 (arr!17075 (Array (_ BitVec 32) (_ BitVec 64))) (size!17439 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35566)

(declare-datatypes ((SeekEntryResult!5531 0))(
  ( (MissingZero!5531 (index!24351 (_ BitVec 32))) (Found!5531 (index!24352 (_ BitVec 32))) (Intermediate!5531 (undefined!6343 Bool) (index!24353 (_ BitVec 32)) (x!53247 (_ BitVec 32))) (Undefined!5531) (MissingVacant!5531 (index!24354 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35566 (_ BitVec 32)) SeekEntryResult!5531)

(assert (=> b!567098 (= e!326354 (= (seekEntryOrOpen!0 (select (arr!17075 a!3118) j!142) a!3118 mask!3119) (Found!5531 j!142)))))

(declare-fun b!567099 () Bool)

(declare-fun res!357839 () Bool)

(declare-fun e!326353 () Bool)

(assert (=> b!567099 (=> (not res!357839) (not e!326353))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!567099 (= res!357839 (validKeyInArray!0 (select (arr!17075 a!3118) j!142)))))

(declare-fun b!567100 () Bool)

(declare-fun res!357840 () Bool)

(declare-fun e!326355 () Bool)

(assert (=> b!567100 (=> (not res!357840) (not e!326355))))

(declare-datatypes ((List!11208 0))(
  ( (Nil!11205) (Cons!11204 (h!12216 (_ BitVec 64)) (t!17444 List!11208)) )
))
(declare-fun arrayNoDuplicates!0 (array!35566 (_ BitVec 32) List!11208) Bool)

(assert (=> b!567100 (= res!357840 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11205))))

(declare-fun b!567101 () Bool)

(declare-fun res!357833 () Bool)

(assert (=> b!567101 (=> (not res!357833) (not e!326353))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35566 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!567101 (= res!357833 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!567102 () Bool)

(assert (=> b!567102 (= e!326353 e!326355)))

(declare-fun res!357837 () Bool)

(assert (=> b!567102 (=> (not res!357837) (not e!326355))))

(declare-fun lt!258448 () SeekEntryResult!5531)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!567102 (= res!357837 (or (= lt!258448 (MissingZero!5531 i!1132)) (= lt!258448 (MissingVacant!5531 i!1132))))))

(assert (=> b!567102 (= lt!258448 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!567104 () Bool)

(declare-fun res!357842 () Bool)

(assert (=> b!567104 (=> (not res!357842) (not e!326353))))

(assert (=> b!567104 (= res!357842 (validKeyInArray!0 k!1914))))

(declare-fun b!567105 () Bool)

(declare-fun res!357836 () Bool)

(assert (=> b!567105 (=> (not res!357836) (not e!326355))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35566 (_ BitVec 32)) SeekEntryResult!5531)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!567105 (= res!357836 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17075 a!3118) j!142) mask!3119) (select (arr!17075 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17075 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17075 a!3118) i!1132 k!1914) j!142) (array!35567 (store (arr!17075 a!3118) i!1132 k!1914) (size!17439 a!3118)) mask!3119)))))

(declare-fun b!567106 () Bool)

(declare-fun res!357838 () Bool)

(assert (=> b!567106 (=> (not res!357838) (not e!326355))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35566 (_ BitVec 32)) Bool)

(assert (=> b!567106 (= res!357838 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!567107 () Bool)

(declare-fun res!357835 () Bool)

(assert (=> b!567107 (=> (not res!357835) (not e!326353))))

(assert (=> b!567107 (= res!357835 (and (= (size!17439 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17439 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17439 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!357834 () Bool)

(assert (=> start!51918 (=> (not res!357834) (not e!326353))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51918 (= res!357834 (validMask!0 mask!3119))))

(assert (=> start!51918 e!326353))

(assert (=> start!51918 true))

(declare-fun array_inv!12849 (array!35566) Bool)

(assert (=> start!51918 (array_inv!12849 a!3118)))

(declare-fun b!567103 () Bool)

(assert (=> b!567103 (= e!326355 (not true))))

(assert (=> b!567103 e!326354))

(declare-fun res!357841 () Bool)

(assert (=> b!567103 (=> (not res!357841) (not e!326354))))

(assert (=> b!567103 (= res!357841 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17764 0))(
  ( (Unit!17765) )
))
(declare-fun lt!258449 () Unit!17764)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35566 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17764)

(assert (=> b!567103 (= lt!258449 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!51918 res!357834) b!567107))

(assert (= (and b!567107 res!357835) b!567099))

(assert (= (and b!567099 res!357839) b!567104))

(assert (= (and b!567104 res!357842) b!567101))

(assert (= (and b!567101 res!357833) b!567102))

(assert (= (and b!567102 res!357837) b!567106))

(assert (= (and b!567106 res!357838) b!567100))

(assert (= (and b!567100 res!357840) b!567105))

(assert (= (and b!567105 res!357836) b!567103))

(assert (= (and b!567103 res!357841) b!567098))

(declare-fun m!545695 () Bool)

(assert (=> b!567106 m!545695))

(declare-fun m!545697 () Bool)

(assert (=> start!51918 m!545697))

(declare-fun m!545699 () Bool)

(assert (=> start!51918 m!545699))

(declare-fun m!545701 () Bool)

(assert (=> b!567103 m!545701))

(declare-fun m!545703 () Bool)

(assert (=> b!567103 m!545703))

(declare-fun m!545705 () Bool)

(assert (=> b!567100 m!545705))

(declare-fun m!545707 () Bool)

(assert (=> b!567098 m!545707))

(assert (=> b!567098 m!545707))

(declare-fun m!545709 () Bool)

(assert (=> b!567098 m!545709))

(assert (=> b!567105 m!545707))

(declare-fun m!545711 () Bool)

(assert (=> b!567105 m!545711))

(assert (=> b!567105 m!545707))

(declare-fun m!545713 () Bool)

(assert (=> b!567105 m!545713))

(declare-fun m!545715 () Bool)

(assert (=> b!567105 m!545715))

(assert (=> b!567105 m!545713))

(declare-fun m!545717 () Bool)

(assert (=> b!567105 m!545717))

(assert (=> b!567105 m!545711))

(assert (=> b!567105 m!545707))

(declare-fun m!545719 () Bool)

(assert (=> b!567105 m!545719))

(declare-fun m!545721 () Bool)

(assert (=> b!567105 m!545721))

(assert (=> b!567105 m!545713))

(assert (=> b!567105 m!545715))

(declare-fun m!545723 () Bool)

(assert (=> b!567102 m!545723))

(assert (=> b!567099 m!545707))

(assert (=> b!567099 m!545707))

(declare-fun m!545725 () Bool)

(assert (=> b!567099 m!545725))

(declare-fun m!545727 () Bool)

(assert (=> b!567104 m!545727))

(declare-fun m!545729 () Bool)

(assert (=> b!567101 m!545729))

(push 1)

