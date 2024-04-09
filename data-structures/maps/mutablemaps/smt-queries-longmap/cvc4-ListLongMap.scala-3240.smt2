; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45260 () Bool)

(assert start!45260)

(declare-fun b!496753 () Bool)

(declare-fun res!299300 () Bool)

(declare-fun e!291249 () Bool)

(assert (=> b!496753 (=> (not res!299300) (not e!291249))))

(declare-datatypes ((array!32108 0))(
  ( (array!32109 (arr!15434 (Array (_ BitVec 32) (_ BitVec 64))) (size!15798 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32108)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32108 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496753 (= res!299300 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!496754 () Bool)

(declare-fun res!299298 () Bool)

(declare-fun e!291248 () Bool)

(assert (=> b!496754 (=> (not res!299298) (not e!291248))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32108 (_ BitVec 32)) Bool)

(assert (=> b!496754 (= res!299298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496755 () Bool)

(declare-fun res!299295 () Bool)

(assert (=> b!496755 (=> (not res!299295) (not e!291248))))

(declare-datatypes ((List!9645 0))(
  ( (Nil!9642) (Cons!9641 (h!10512 (_ BitVec 64)) (t!15881 List!9645)) )
))
(declare-fun arrayNoDuplicates!0 (array!32108 (_ BitVec 32) List!9645) Bool)

(assert (=> b!496755 (= res!299295 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9642))))

(declare-fun b!496756 () Bool)

(declare-fun res!299294 () Bool)

(assert (=> b!496756 (=> (not res!299294) (not e!291249))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496756 (= res!299294 (validKeyInArray!0 (select (arr!15434 a!3235) j!176)))))

(declare-fun b!496757 () Bool)

(declare-fun res!299297 () Bool)

(declare-fun e!291246 () Bool)

(assert (=> b!496757 (=> res!299297 e!291246)))

(declare-datatypes ((SeekEntryResult!3908 0))(
  ( (MissingZero!3908 (index!17811 (_ BitVec 32))) (Found!3908 (index!17812 (_ BitVec 32))) (Intermediate!3908 (undefined!4720 Bool) (index!17813 (_ BitVec 32)) (x!46891 (_ BitVec 32))) (Undefined!3908) (MissingVacant!3908 (index!17814 (_ BitVec 32))) )
))
(declare-fun lt!224939 () SeekEntryResult!3908)

(assert (=> b!496757 (= res!299297 (or (undefined!4720 lt!224939) (not (is-Intermediate!3908 lt!224939))))))

(declare-fun b!496758 () Bool)

(assert (=> b!496758 (= e!291249 e!291248)))

(declare-fun res!299291 () Bool)

(assert (=> b!496758 (=> (not res!299291) (not e!291248))))

(declare-fun lt!224937 () SeekEntryResult!3908)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!496758 (= res!299291 (or (= lt!224937 (MissingZero!3908 i!1204)) (= lt!224937 (MissingVacant!3908 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32108 (_ BitVec 32)) SeekEntryResult!3908)

(assert (=> b!496758 (= lt!224937 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!299290 () Bool)

(assert (=> start!45260 (=> (not res!299290) (not e!291249))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45260 (= res!299290 (validMask!0 mask!3524))))

(assert (=> start!45260 e!291249))

(assert (=> start!45260 true))

(declare-fun array_inv!11208 (array!32108) Bool)

(assert (=> start!45260 (array_inv!11208 a!3235)))

(declare-fun b!496759 () Bool)

(assert (=> b!496759 (= e!291248 (not e!291246))))

(declare-fun res!299299 () Bool)

(assert (=> b!496759 (=> res!299299 e!291246)))

(declare-fun lt!224938 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32108 (_ BitVec 32)) SeekEntryResult!3908)

(assert (=> b!496759 (= res!299299 (= lt!224939 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224938 (select (store (arr!15434 a!3235) i!1204 k!2280) j!176) (array!32109 (store (arr!15434 a!3235) i!1204 k!2280) (size!15798 a!3235)) mask!3524)))))

(declare-fun lt!224936 () (_ BitVec 32))

(assert (=> b!496759 (= lt!224939 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224936 (select (arr!15434 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496759 (= lt!224938 (toIndex!0 (select (store (arr!15434 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!496759 (= lt!224936 (toIndex!0 (select (arr!15434 a!3235) j!176) mask!3524))))

(declare-fun e!291247 () Bool)

(assert (=> b!496759 e!291247))

(declare-fun res!299296 () Bool)

(assert (=> b!496759 (=> (not res!299296) (not e!291247))))

(assert (=> b!496759 (= res!299296 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14754 0))(
  ( (Unit!14755) )
))
(declare-fun lt!224935 () Unit!14754)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32108 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14754)

(assert (=> b!496759 (= lt!224935 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!496760 () Bool)

(declare-fun res!299292 () Bool)

(assert (=> b!496760 (=> (not res!299292) (not e!291249))))

(assert (=> b!496760 (= res!299292 (validKeyInArray!0 k!2280))))

(declare-fun b!496761 () Bool)

(assert (=> b!496761 (= e!291246 true)))

(assert (=> b!496761 (and (bvslt (x!46891 lt!224939) #b01111111111111111111111111111110) (or (= (select (arr!15434 a!3235) (index!17813 lt!224939)) (select (arr!15434 a!3235) j!176)) (= (select (arr!15434 a!3235) (index!17813 lt!224939)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15434 a!3235) (index!17813 lt!224939)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!496762 () Bool)

(assert (=> b!496762 (= e!291247 (= (seekEntryOrOpen!0 (select (arr!15434 a!3235) j!176) a!3235 mask!3524) (Found!3908 j!176)))))

(declare-fun b!496763 () Bool)

(declare-fun res!299293 () Bool)

(assert (=> b!496763 (=> (not res!299293) (not e!291249))))

(assert (=> b!496763 (= res!299293 (and (= (size!15798 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15798 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15798 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45260 res!299290) b!496763))

(assert (= (and b!496763 res!299293) b!496756))

(assert (= (and b!496756 res!299294) b!496760))

(assert (= (and b!496760 res!299292) b!496753))

(assert (= (and b!496753 res!299300) b!496758))

(assert (= (and b!496758 res!299291) b!496754))

(assert (= (and b!496754 res!299298) b!496755))

(assert (= (and b!496755 res!299295) b!496759))

(assert (= (and b!496759 res!299296) b!496762))

(assert (= (and b!496759 (not res!299299)) b!496757))

(assert (= (and b!496757 (not res!299297)) b!496761))

(declare-fun m!478103 () Bool)

(assert (=> b!496758 m!478103))

(declare-fun m!478105 () Bool)

(assert (=> b!496760 m!478105))

(declare-fun m!478107 () Bool)

(assert (=> b!496754 m!478107))

(declare-fun m!478109 () Bool)

(assert (=> b!496759 m!478109))

(declare-fun m!478111 () Bool)

(assert (=> b!496759 m!478111))

(declare-fun m!478113 () Bool)

(assert (=> b!496759 m!478113))

(declare-fun m!478115 () Bool)

(assert (=> b!496759 m!478115))

(declare-fun m!478117 () Bool)

(assert (=> b!496759 m!478117))

(assert (=> b!496759 m!478115))

(declare-fun m!478119 () Bool)

(assert (=> b!496759 m!478119))

(assert (=> b!496759 m!478115))

(declare-fun m!478121 () Bool)

(assert (=> b!496759 m!478121))

(assert (=> b!496759 m!478113))

(declare-fun m!478123 () Bool)

(assert (=> b!496759 m!478123))

(assert (=> b!496759 m!478113))

(declare-fun m!478125 () Bool)

(assert (=> b!496759 m!478125))

(declare-fun m!478127 () Bool)

(assert (=> b!496755 m!478127))

(declare-fun m!478129 () Bool)

(assert (=> b!496761 m!478129))

(assert (=> b!496761 m!478115))

(declare-fun m!478131 () Bool)

(assert (=> b!496753 m!478131))

(assert (=> b!496756 m!478115))

(assert (=> b!496756 m!478115))

(declare-fun m!478133 () Bool)

(assert (=> b!496756 m!478133))

(assert (=> b!496762 m!478115))

(assert (=> b!496762 m!478115))

(declare-fun m!478135 () Bool)

(assert (=> b!496762 m!478135))

(declare-fun m!478137 () Bool)

(assert (=> start!45260 m!478137))

(declare-fun m!478139 () Bool)

(assert (=> start!45260 m!478139))

(push 1)

