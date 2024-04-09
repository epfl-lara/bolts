; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52422 () Bool)

(assert start!52422)

(declare-fun b!571646 () Bool)

(declare-fun e!328803 () Bool)

(declare-fun e!328802 () Bool)

(assert (=> b!571646 (= e!328803 e!328802)))

(declare-fun res!361316 () Bool)

(assert (=> b!571646 (=> (not res!361316) (not e!328802))))

(declare-datatypes ((SeekEntryResult!5627 0))(
  ( (MissingZero!5627 (index!24735 (_ BitVec 32))) (Found!5627 (index!24736 (_ BitVec 32))) (Intermediate!5627 (undefined!6439 Bool) (index!24737 (_ BitVec 32)) (x!53635 (_ BitVec 32))) (Undefined!5627) (MissingVacant!5627 (index!24738 (_ BitVec 32))) )
))
(declare-fun lt!260787 () SeekEntryResult!5627)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!571646 (= res!361316 (or (= lt!260787 (MissingZero!5627 i!1132)) (= lt!260787 (MissingVacant!5627 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!35773 0))(
  ( (array!35774 (arr!17171 (Array (_ BitVec 32) (_ BitVec 64))) (size!17535 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35773)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35773 (_ BitVec 32)) SeekEntryResult!5627)

(assert (=> b!571646 (= lt!260787 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!571647 () Bool)

(declare-fun res!361309 () Bool)

(assert (=> b!571647 (=> (not res!361309) (not e!328803))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!571647 (= res!361309 (validKeyInArray!0 (select (arr!17171 a!3118) j!142)))))

(declare-fun b!571648 () Bool)

(declare-fun e!328806 () Bool)

(declare-fun e!328804 () Bool)

(assert (=> b!571648 (= e!328806 e!328804)))

(declare-fun res!361313 () Bool)

(assert (=> b!571648 (=> (not res!361313) (not e!328804))))

(declare-fun lt!260792 () SeekEntryResult!5627)

(declare-fun lt!260785 () SeekEntryResult!5627)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35773 (_ BitVec 32)) SeekEntryResult!5627)

(assert (=> b!571648 (= res!361313 (= lt!260792 (seekKeyOrZeroReturnVacant!0 (x!53635 lt!260785) (index!24737 lt!260785) (index!24737 lt!260785) (select (arr!17171 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!571649 () Bool)

(declare-fun e!328805 () Bool)

(assert (=> b!571649 (= e!328802 e!328805)))

(declare-fun res!361310 () Bool)

(assert (=> b!571649 (=> (not res!361310) (not e!328805))))

(declare-fun lt!260791 () (_ BitVec 64))

(declare-fun lt!260784 () (_ BitVec 32))

(declare-fun lt!260789 () array!35773)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35773 (_ BitVec 32)) SeekEntryResult!5627)

(assert (=> b!571649 (= res!361310 (= lt!260785 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260784 lt!260791 lt!260789 mask!3119)))))

(declare-fun lt!260790 () (_ BitVec 32))

(assert (=> b!571649 (= lt!260785 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260790 (select (arr!17171 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!571649 (= lt!260784 (toIndex!0 lt!260791 mask!3119))))

(assert (=> b!571649 (= lt!260791 (select (store (arr!17171 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!571649 (= lt!260790 (toIndex!0 (select (arr!17171 a!3118) j!142) mask!3119))))

(assert (=> b!571649 (= lt!260789 (array!35774 (store (arr!17171 a!3118) i!1132 k!1914) (size!17535 a!3118)))))

(declare-fun res!361315 () Bool)

(assert (=> start!52422 (=> (not res!361315) (not e!328803))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52422 (= res!361315 (validMask!0 mask!3119))))

(assert (=> start!52422 e!328803))

(assert (=> start!52422 true))

(declare-fun array_inv!12945 (array!35773) Bool)

(assert (=> start!52422 (array_inv!12945 a!3118)))

(declare-fun b!571650 () Bool)

(declare-fun e!328807 () Bool)

(assert (=> b!571650 (= e!328807 e!328806)))

(declare-fun res!361305 () Bool)

(assert (=> b!571650 (=> res!361305 e!328806)))

(declare-fun lt!260786 () (_ BitVec 64))

(assert (=> b!571650 (= res!361305 (or (= lt!260786 (select (arr!17171 a!3118) j!142)) (= lt!260786 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!571650 (= lt!260786 (select (arr!17171 a!3118) (index!24737 lt!260785)))))

(declare-fun b!571651 () Bool)

(declare-fun res!361307 () Bool)

(assert (=> b!571651 (=> (not res!361307) (not e!328803))))

(assert (=> b!571651 (= res!361307 (and (= (size!17535 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17535 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17535 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!571652 () Bool)

(declare-fun res!361304 () Bool)

(assert (=> b!571652 (=> (not res!361304) (not e!328803))))

(assert (=> b!571652 (= res!361304 (validKeyInArray!0 k!1914))))

(declare-fun b!571653 () Bool)

(assert (=> b!571653 (= e!328804 (= (seekEntryOrOpen!0 lt!260791 lt!260789 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53635 lt!260785) (index!24737 lt!260785) (index!24737 lt!260785) lt!260791 lt!260789 mask!3119)))))

(declare-fun b!571654 () Bool)

(declare-fun res!361314 () Bool)

(assert (=> b!571654 (=> (not res!361314) (not e!328802))))

(declare-datatypes ((List!11304 0))(
  ( (Nil!11301) (Cons!11300 (h!12327 (_ BitVec 64)) (t!17540 List!11304)) )
))
(declare-fun arrayNoDuplicates!0 (array!35773 (_ BitVec 32) List!11304) Bool)

(assert (=> b!571654 (= res!361314 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11301))))

(declare-fun b!571655 () Bool)

(declare-fun res!361311 () Bool)

(assert (=> b!571655 (=> (not res!361311) (not e!328802))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35773 (_ BitVec 32)) Bool)

(assert (=> b!571655 (= res!361311 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!571656 () Bool)

(declare-fun e!328800 () Bool)

(assert (=> b!571656 (= e!328800 e!328807)))

(declare-fun res!361308 () Bool)

(assert (=> b!571656 (=> res!361308 e!328807)))

(assert (=> b!571656 (= res!361308 (or (undefined!6439 lt!260785) (not (is-Intermediate!5627 lt!260785))))))

(declare-fun b!571657 () Bool)

(declare-fun res!361312 () Bool)

(assert (=> b!571657 (=> (not res!361312) (not e!328803))))

(declare-fun arrayContainsKey!0 (array!35773 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!571657 (= res!361312 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!571658 () Bool)

(assert (=> b!571658 (= e!328805 (not true))))

(assert (=> b!571658 e!328800))

(declare-fun res!361306 () Bool)

(assert (=> b!571658 (=> (not res!361306) (not e!328800))))

(assert (=> b!571658 (= res!361306 (= lt!260792 (Found!5627 j!142)))))

(assert (=> b!571658 (= lt!260792 (seekEntryOrOpen!0 (select (arr!17171 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!571658 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17956 0))(
  ( (Unit!17957) )
))
(declare-fun lt!260788 () Unit!17956)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35773 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17956)

(assert (=> b!571658 (= lt!260788 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!52422 res!361315) b!571651))

(assert (= (and b!571651 res!361307) b!571647))

(assert (= (and b!571647 res!361309) b!571652))

(assert (= (and b!571652 res!361304) b!571657))

(assert (= (and b!571657 res!361312) b!571646))

(assert (= (and b!571646 res!361316) b!571655))

(assert (= (and b!571655 res!361311) b!571654))

(assert (= (and b!571654 res!361314) b!571649))

(assert (= (and b!571649 res!361310) b!571658))

(assert (= (and b!571658 res!361306) b!571656))

(assert (= (and b!571656 (not res!361308)) b!571650))

(assert (= (and b!571650 (not res!361305)) b!571648))

(assert (= (and b!571648 res!361313) b!571653))

(declare-fun m!550583 () Bool)

(assert (=> b!571646 m!550583))

(declare-fun m!550585 () Bool)

(assert (=> b!571649 m!550585))

(declare-fun m!550587 () Bool)

(assert (=> b!571649 m!550587))

(declare-fun m!550589 () Bool)

(assert (=> b!571649 m!550589))

(assert (=> b!571649 m!550585))

(declare-fun m!550591 () Bool)

(assert (=> b!571649 m!550591))

(assert (=> b!571649 m!550585))

(declare-fun m!550593 () Bool)

(assert (=> b!571649 m!550593))

(declare-fun m!550595 () Bool)

(assert (=> b!571649 m!550595))

(declare-fun m!550597 () Bool)

(assert (=> b!571649 m!550597))

(declare-fun m!550599 () Bool)

(assert (=> b!571654 m!550599))

(assert (=> b!571650 m!550585))

(declare-fun m!550601 () Bool)

(assert (=> b!571650 m!550601))

(declare-fun m!550603 () Bool)

(assert (=> b!571655 m!550603))

(assert (=> b!571648 m!550585))

(assert (=> b!571648 m!550585))

(declare-fun m!550605 () Bool)

(assert (=> b!571648 m!550605))

(declare-fun m!550607 () Bool)

(assert (=> b!571652 m!550607))

(declare-fun m!550609 () Bool)

(assert (=> start!52422 m!550609))

(declare-fun m!550611 () Bool)

(assert (=> start!52422 m!550611))

(assert (=> b!571658 m!550585))

(assert (=> b!571658 m!550585))

(declare-fun m!550613 () Bool)

(assert (=> b!571658 m!550613))

(declare-fun m!550615 () Bool)

(assert (=> b!571658 m!550615))

(declare-fun m!550617 () Bool)

(assert (=> b!571658 m!550617))

(declare-fun m!550619 () Bool)

(assert (=> b!571657 m!550619))

(assert (=> b!571647 m!550585))

(assert (=> b!571647 m!550585))

(declare-fun m!550621 () Bool)

(assert (=> b!571647 m!550621))

(declare-fun m!550623 () Bool)

(assert (=> b!571653 m!550623))

(declare-fun m!550625 () Bool)

(assert (=> b!571653 m!550625))

(push 1)

