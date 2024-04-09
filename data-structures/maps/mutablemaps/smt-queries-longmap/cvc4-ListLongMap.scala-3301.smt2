; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45764 () Bool)

(assert start!45764)

(declare-fun b!505960 () Bool)

(declare-fun e!296156 () Bool)

(declare-fun e!296154 () Bool)

(assert (=> b!505960 (= e!296156 e!296154)))

(declare-fun res!307093 () Bool)

(assert (=> b!505960 (=> (not res!307093) (not e!296154))))

(declare-datatypes ((SeekEntryResult!4091 0))(
  ( (MissingZero!4091 (index!18552 (_ BitVec 32))) (Found!4091 (index!18553 (_ BitVec 32))) (Intermediate!4091 (undefined!4903 Bool) (index!18554 (_ BitVec 32)) (x!47583 (_ BitVec 32))) (Undefined!4091) (MissingVacant!4091 (index!18555 (_ BitVec 32))) )
))
(declare-fun lt!230868 () SeekEntryResult!4091)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!505960 (= res!307093 (or (= lt!230868 (MissingZero!4091 i!1204)) (= lt!230868 (MissingVacant!4091 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32480 0))(
  ( (array!32481 (arr!15617 (Array (_ BitVec 32) (_ BitVec 64))) (size!15981 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32480)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32480 (_ BitVec 32)) SeekEntryResult!4091)

(assert (=> b!505960 (= lt!230868 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!505961 () Bool)

(declare-fun res!307103 () Bool)

(assert (=> b!505961 (=> (not res!307103) (not e!296156))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!505961 (= res!307103 (validKeyInArray!0 (select (arr!15617 a!3235) j!176)))))

(declare-fun b!505962 () Bool)

(declare-datatypes ((Unit!15454 0))(
  ( (Unit!15455) )
))
(declare-fun e!296157 () Unit!15454)

(declare-fun Unit!15456 () Unit!15454)

(assert (=> b!505962 (= e!296157 Unit!15456)))

(declare-fun b!505963 () Bool)

(declare-fun e!296155 () Bool)

(assert (=> b!505963 (= e!296155 false)))

(declare-fun b!505964 () Bool)

(declare-fun res!307092 () Bool)

(assert (=> b!505964 (=> (not res!307092) (not e!296156))))

(assert (=> b!505964 (= res!307092 (validKeyInArray!0 k!2280))))

(declare-fun b!505965 () Bool)

(declare-fun res!307100 () Bool)

(assert (=> b!505965 (=> (not res!307100) (not e!296154))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32480 (_ BitVec 32)) Bool)

(assert (=> b!505965 (= res!307100 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!505966 () Bool)

(declare-fun e!296160 () Bool)

(assert (=> b!505966 (= e!296160 true)))

(declare-fun lt!230872 () SeekEntryResult!4091)

(declare-fun lt!230875 () array!32480)

(declare-fun lt!230870 () (_ BitVec 64))

(assert (=> b!505966 (= (seekEntryOrOpen!0 lt!230870 lt!230875 mask!3524) lt!230872)))

(declare-fun lt!230871 () Unit!15454)

(declare-fun lt!230878 () (_ BitVec 32))

(declare-fun lt!230877 () SeekEntryResult!4091)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!32480 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15454)

(assert (=> b!505966 (= lt!230871 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k!2280 j!176 lt!230878 #b00000000000000000000000000000000 (index!18554 lt!230877) (x!47583 lt!230877) mask!3524))))

(declare-fun b!505967 () Bool)

(declare-fun res!307095 () Bool)

(assert (=> b!505967 (=> res!307095 e!296160)))

(declare-fun lt!230874 () SeekEntryResult!4091)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32480 (_ BitVec 32)) SeekEntryResult!4091)

(assert (=> b!505967 (= res!307095 (not (= lt!230874 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230878 lt!230870 lt!230875 mask!3524))))))

(declare-fun res!307097 () Bool)

(assert (=> start!45764 (=> (not res!307097) (not e!296156))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45764 (= res!307097 (validMask!0 mask!3524))))

(assert (=> start!45764 e!296156))

(assert (=> start!45764 true))

(declare-fun array_inv!11391 (array!32480) Bool)

(assert (=> start!45764 (array_inv!11391 a!3235)))

(declare-fun b!505968 () Bool)

(declare-fun Unit!15457 () Unit!15454)

(assert (=> b!505968 (= e!296157 Unit!15457)))

(declare-fun lt!230873 () Unit!15454)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32480 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15454)

(assert (=> b!505968 (= lt!230873 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!230878 #b00000000000000000000000000000000 (index!18554 lt!230877) (x!47583 lt!230877) mask!3524))))

(declare-fun res!307091 () Bool)

(assert (=> b!505968 (= res!307091 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230878 lt!230870 lt!230875 mask!3524) (Intermediate!4091 false (index!18554 lt!230877) (x!47583 lt!230877))))))

(assert (=> b!505968 (=> (not res!307091) (not e!296155))))

(assert (=> b!505968 e!296155))

(declare-fun b!505969 () Bool)

(declare-fun e!296158 () Bool)

(assert (=> b!505969 (= e!296158 e!296160)))

(declare-fun res!307090 () Bool)

(assert (=> b!505969 (=> res!307090 e!296160)))

(assert (=> b!505969 (= res!307090 (or (bvsgt (x!47583 lt!230877) #b01111111111111111111111111111110) (bvslt lt!230878 #b00000000000000000000000000000000) (bvsge lt!230878 (size!15981 a!3235)) (bvslt (index!18554 lt!230877) #b00000000000000000000000000000000) (bvsge (index!18554 lt!230877) (size!15981 a!3235)) (not (= lt!230877 (Intermediate!4091 false (index!18554 lt!230877) (x!47583 lt!230877))))))))

(assert (=> b!505969 (= (index!18554 lt!230877) i!1204)))

(declare-fun lt!230876 () Unit!15454)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32480 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15454)

(assert (=> b!505969 (= lt!230876 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!230878 #b00000000000000000000000000000000 (index!18554 lt!230877) (x!47583 lt!230877) mask!3524))))

(assert (=> b!505969 (and (or (= (select (arr!15617 a!3235) (index!18554 lt!230877)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15617 a!3235) (index!18554 lt!230877)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15617 a!3235) (index!18554 lt!230877)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15617 a!3235) (index!18554 lt!230877)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!230869 () Unit!15454)

(assert (=> b!505969 (= lt!230869 e!296157)))

(declare-fun c!59714 () Bool)

(assert (=> b!505969 (= c!59714 (= (select (arr!15617 a!3235) (index!18554 lt!230877)) (select (arr!15617 a!3235) j!176)))))

(assert (=> b!505969 (and (bvslt (x!47583 lt!230877) #b01111111111111111111111111111110) (or (= (select (arr!15617 a!3235) (index!18554 lt!230877)) (select (arr!15617 a!3235) j!176)) (= (select (arr!15617 a!3235) (index!18554 lt!230877)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15617 a!3235) (index!18554 lt!230877)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!505970 () Bool)

(declare-fun res!307089 () Bool)

(assert (=> b!505970 (=> (not res!307089) (not e!296154))))

(declare-datatypes ((List!9828 0))(
  ( (Nil!9825) (Cons!9824 (h!10701 (_ BitVec 64)) (t!16064 List!9828)) )
))
(declare-fun arrayNoDuplicates!0 (array!32480 (_ BitVec 32) List!9828) Bool)

(assert (=> b!505970 (= res!307089 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9825))))

(declare-fun b!505971 () Bool)

(declare-fun res!307094 () Bool)

(assert (=> b!505971 (=> (not res!307094) (not e!296156))))

(assert (=> b!505971 (= res!307094 (and (= (size!15981 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15981 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15981 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!505972 () Bool)

(declare-fun res!307098 () Bool)

(assert (=> b!505972 (=> (not res!307098) (not e!296156))))

(declare-fun arrayContainsKey!0 (array!32480 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!505972 (= res!307098 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun e!296159 () Bool)

(declare-fun b!505973 () Bool)

(assert (=> b!505973 (= e!296159 (= (seekEntryOrOpen!0 (select (arr!15617 a!3235) j!176) a!3235 mask!3524) (Found!4091 j!176)))))

(declare-fun b!505974 () Bool)

(declare-fun res!307099 () Bool)

(assert (=> b!505974 (=> res!307099 e!296160)))

(declare-fun e!296153 () Bool)

(assert (=> b!505974 (= res!307099 e!296153)))

(declare-fun res!307096 () Bool)

(assert (=> b!505974 (=> (not res!307096) (not e!296153))))

(assert (=> b!505974 (= res!307096 (bvsgt #b00000000000000000000000000000000 (x!47583 lt!230877)))))

(declare-fun b!505975 () Bool)

(assert (=> b!505975 (= e!296154 (not e!296158))))

(declare-fun res!307101 () Bool)

(assert (=> b!505975 (=> res!307101 e!296158)))

(assert (=> b!505975 (= res!307101 (or (= lt!230877 lt!230874) (undefined!4903 lt!230877) (not (is-Intermediate!4091 lt!230877))))))

(declare-fun lt!230879 () (_ BitVec 32))

(assert (=> b!505975 (= lt!230874 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230879 lt!230870 lt!230875 mask!3524))))

(assert (=> b!505975 (= lt!230877 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230878 (select (arr!15617 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!505975 (= lt!230879 (toIndex!0 lt!230870 mask!3524))))

(assert (=> b!505975 (= lt!230870 (select (store (arr!15617 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!505975 (= lt!230878 (toIndex!0 (select (arr!15617 a!3235) j!176) mask!3524))))

(assert (=> b!505975 (= lt!230875 (array!32481 (store (arr!15617 a!3235) i!1204 k!2280) (size!15981 a!3235)))))

(assert (=> b!505975 (= lt!230872 (Found!4091 j!176))))

(assert (=> b!505975 e!296159))

(declare-fun res!307102 () Bool)

(assert (=> b!505975 (=> (not res!307102) (not e!296159))))

(assert (=> b!505975 (= res!307102 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!230867 () Unit!15454)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32480 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15454)

(assert (=> b!505975 (= lt!230867 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!505976 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32480 (_ BitVec 32)) SeekEntryResult!4091)

(assert (=> b!505976 (= e!296153 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!230878 (index!18554 lt!230877) (select (arr!15617 a!3235) j!176) a!3235 mask!3524) lt!230872)))))

(assert (= (and start!45764 res!307097) b!505971))

(assert (= (and b!505971 res!307094) b!505961))

(assert (= (and b!505961 res!307103) b!505964))

(assert (= (and b!505964 res!307092) b!505972))

(assert (= (and b!505972 res!307098) b!505960))

(assert (= (and b!505960 res!307093) b!505965))

(assert (= (and b!505965 res!307100) b!505970))

(assert (= (and b!505970 res!307089) b!505975))

(assert (= (and b!505975 res!307102) b!505973))

(assert (= (and b!505975 (not res!307101)) b!505969))

(assert (= (and b!505969 c!59714) b!505968))

(assert (= (and b!505969 (not c!59714)) b!505962))

(assert (= (and b!505968 res!307091) b!505963))

(assert (= (and b!505969 (not res!307090)) b!505974))

(assert (= (and b!505974 res!307096) b!505976))

(assert (= (and b!505974 (not res!307099)) b!505967))

(assert (= (and b!505967 (not res!307095)) b!505966))

(declare-fun m!486647 () Bool)

(assert (=> b!505970 m!486647))

(declare-fun m!486649 () Bool)

(assert (=> b!505964 m!486649))

(declare-fun m!486651 () Bool)

(assert (=> b!505960 m!486651))

(declare-fun m!486653 () Bool)

(assert (=> b!505966 m!486653))

(declare-fun m!486655 () Bool)

(assert (=> b!505966 m!486655))

(declare-fun m!486657 () Bool)

(assert (=> b!505972 m!486657))

(declare-fun m!486659 () Bool)

(assert (=> b!505969 m!486659))

(declare-fun m!486661 () Bool)

(assert (=> b!505969 m!486661))

(declare-fun m!486663 () Bool)

(assert (=> b!505969 m!486663))

(assert (=> b!505961 m!486663))

(assert (=> b!505961 m!486663))

(declare-fun m!486665 () Bool)

(assert (=> b!505961 m!486665))

(declare-fun m!486667 () Bool)

(assert (=> b!505975 m!486667))

(declare-fun m!486669 () Bool)

(assert (=> b!505975 m!486669))

(declare-fun m!486671 () Bool)

(assert (=> b!505975 m!486671))

(declare-fun m!486673 () Bool)

(assert (=> b!505975 m!486673))

(declare-fun m!486675 () Bool)

(assert (=> b!505975 m!486675))

(assert (=> b!505975 m!486663))

(declare-fun m!486677 () Bool)

(assert (=> b!505975 m!486677))

(assert (=> b!505975 m!486663))

(declare-fun m!486679 () Bool)

(assert (=> b!505975 m!486679))

(assert (=> b!505975 m!486663))

(declare-fun m!486681 () Bool)

(assert (=> b!505975 m!486681))

(declare-fun m!486683 () Bool)

(assert (=> start!45764 m!486683))

(declare-fun m!486685 () Bool)

(assert (=> start!45764 m!486685))

(assert (=> b!505973 m!486663))

(assert (=> b!505973 m!486663))

(declare-fun m!486687 () Bool)

(assert (=> b!505973 m!486687))

(assert (=> b!505976 m!486663))

(assert (=> b!505976 m!486663))

(declare-fun m!486689 () Bool)

(assert (=> b!505976 m!486689))

(declare-fun m!486691 () Bool)

(assert (=> b!505968 m!486691))

(declare-fun m!486693 () Bool)

(assert (=> b!505968 m!486693))

(assert (=> b!505967 m!486693))

(declare-fun m!486695 () Bool)

(assert (=> b!505965 m!486695))

(push 1)

