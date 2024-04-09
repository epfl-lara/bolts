; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46208 () Bool)

(assert start!46208)

(declare-fun b!511265 () Bool)

(declare-fun res!312080 () Bool)

(declare-fun e!298768 () Bool)

(assert (=> b!511265 (=> (not res!312080) (not e!298768))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32822 0))(
  ( (array!32823 (arr!15785 (Array (_ BitVec 32) (_ BitVec 64))) (size!16149 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32822)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!511265 (= res!312080 (and (= (size!16149 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16149 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16149 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!312085 () Bool)

(assert (=> start!46208 (=> (not res!312085) (not e!298768))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46208 (= res!312085 (validMask!0 mask!3524))))

(assert (=> start!46208 e!298768))

(assert (=> start!46208 true))

(declare-fun array_inv!11559 (array!32822) Bool)

(assert (=> start!46208 (array_inv!11559 a!3235)))

(declare-fun b!511266 () Bool)

(declare-fun res!312077 () Bool)

(assert (=> b!511266 (=> (not res!312077) (not e!298768))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!511266 (= res!312077 (validKeyInArray!0 k!2280))))

(declare-fun b!511267 () Bool)

(declare-fun res!312086 () Bool)

(assert (=> b!511267 (=> (not res!312086) (not e!298768))))

(assert (=> b!511267 (= res!312086 (validKeyInArray!0 (select (arr!15785 a!3235) j!176)))))

(declare-fun b!511268 () Bool)

(declare-fun res!312081 () Bool)

(assert (=> b!511268 (=> (not res!312081) (not e!298768))))

(declare-fun arrayContainsKey!0 (array!32822 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!511268 (= res!312081 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!511269 () Bool)

(declare-fun e!298767 () Bool)

(assert (=> b!511269 (= e!298767 true)))

(declare-datatypes ((SeekEntryResult!4259 0))(
  ( (MissingZero!4259 (index!19224 (_ BitVec 32))) (Found!4259 (index!19225 (_ BitVec 32))) (Intermediate!4259 (undefined!5071 Bool) (index!19226 (_ BitVec 32)) (x!48205 (_ BitVec 32))) (Undefined!4259) (MissingVacant!4259 (index!19227 (_ BitVec 32))) )
))
(declare-fun lt!233957 () SeekEntryResult!4259)

(assert (=> b!511269 (= lt!233957 Undefined!4259)))

(declare-fun b!511270 () Bool)

(declare-fun res!312083 () Bool)

(declare-fun e!298766 () Bool)

(assert (=> b!511270 (=> (not res!312083) (not e!298766))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32822 (_ BitVec 32)) Bool)

(assert (=> b!511270 (= res!312083 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!511271 () Bool)

(assert (=> b!511271 (= e!298766 (not e!298767))))

(declare-fun res!312082 () Bool)

(assert (=> b!511271 (=> res!312082 e!298767)))

(declare-fun lt!233955 () SeekEntryResult!4259)

(declare-fun lt!233960 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32822 (_ BitVec 32)) SeekEntryResult!4259)

(assert (=> b!511271 (= res!312082 (= lt!233955 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233960 (select (store (arr!15785 a!3235) i!1204 k!2280) j!176) (array!32823 (store (arr!15785 a!3235) i!1204 k!2280) (size!16149 a!3235)) mask!3524)))))

(declare-fun lt!233959 () (_ BitVec 32))

(assert (=> b!511271 (= lt!233955 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233959 (select (arr!15785 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!511271 (= lt!233960 (toIndex!0 (select (store (arr!15785 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!511271 (= lt!233959 (toIndex!0 (select (arr!15785 a!3235) j!176) mask!3524))))

(assert (=> b!511271 (= lt!233957 (Found!4259 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32822 (_ BitVec 32)) SeekEntryResult!4259)

(assert (=> b!511271 (= lt!233957 (seekEntryOrOpen!0 (select (arr!15785 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!511271 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15768 0))(
  ( (Unit!15769) )
))
(declare-fun lt!233956 () Unit!15768)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32822 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15768)

(assert (=> b!511271 (= lt!233956 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!511272 () Bool)

(assert (=> b!511272 (= e!298768 e!298766)))

(declare-fun res!312084 () Bool)

(assert (=> b!511272 (=> (not res!312084) (not e!298766))))

(declare-fun lt!233958 () SeekEntryResult!4259)

(assert (=> b!511272 (= res!312084 (or (= lt!233958 (MissingZero!4259 i!1204)) (= lt!233958 (MissingVacant!4259 i!1204))))))

(assert (=> b!511272 (= lt!233958 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!511273 () Bool)

(declare-fun res!312078 () Bool)

(assert (=> b!511273 (=> res!312078 e!298767)))

(assert (=> b!511273 (= res!312078 (or (not (is-Intermediate!4259 lt!233955)) (not (undefined!5071 lt!233955))))))

(declare-fun b!511274 () Bool)

(declare-fun res!312079 () Bool)

(assert (=> b!511274 (=> (not res!312079) (not e!298766))))

(declare-datatypes ((List!9996 0))(
  ( (Nil!9993) (Cons!9992 (h!10872 (_ BitVec 64)) (t!16232 List!9996)) )
))
(declare-fun arrayNoDuplicates!0 (array!32822 (_ BitVec 32) List!9996) Bool)

(assert (=> b!511274 (= res!312079 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9993))))

(assert (= (and start!46208 res!312085) b!511265))

(assert (= (and b!511265 res!312080) b!511267))

(assert (= (and b!511267 res!312086) b!511266))

(assert (= (and b!511266 res!312077) b!511268))

(assert (= (and b!511268 res!312081) b!511272))

(assert (= (and b!511272 res!312084) b!511270))

(assert (= (and b!511270 res!312083) b!511274))

(assert (= (and b!511274 res!312079) b!511271))

(assert (= (and b!511271 (not res!312082)) b!511273))

(assert (= (and b!511273 (not res!312078)) b!511269))

(declare-fun m!492763 () Bool)

(assert (=> start!46208 m!492763))

(declare-fun m!492765 () Bool)

(assert (=> start!46208 m!492765))

(declare-fun m!492767 () Bool)

(assert (=> b!511268 m!492767))

(declare-fun m!492769 () Bool)

(assert (=> b!511270 m!492769))

(declare-fun m!492771 () Bool)

(assert (=> b!511272 m!492771))

(declare-fun m!492773 () Bool)

(assert (=> b!511266 m!492773))

(declare-fun m!492775 () Bool)

(assert (=> b!511274 m!492775))

(declare-fun m!492777 () Bool)

(assert (=> b!511271 m!492777))

(declare-fun m!492779 () Bool)

(assert (=> b!511271 m!492779))

(declare-fun m!492781 () Bool)

(assert (=> b!511271 m!492781))

(declare-fun m!492783 () Bool)

(assert (=> b!511271 m!492783))

(declare-fun m!492785 () Bool)

(assert (=> b!511271 m!492785))

(assert (=> b!511271 m!492779))

(declare-fun m!492787 () Bool)

(assert (=> b!511271 m!492787))

(assert (=> b!511271 m!492779))

(declare-fun m!492789 () Bool)

(assert (=> b!511271 m!492789))

(assert (=> b!511271 m!492785))

(declare-fun m!492791 () Bool)

(assert (=> b!511271 m!492791))

(assert (=> b!511271 m!492779))

(declare-fun m!492793 () Bool)

(assert (=> b!511271 m!492793))

(assert (=> b!511271 m!492785))

(declare-fun m!492795 () Bool)

(assert (=> b!511271 m!492795))

(assert (=> b!511267 m!492779))

(assert (=> b!511267 m!492779))

(declare-fun m!492797 () Bool)

(assert (=> b!511267 m!492797))

(push 1)

