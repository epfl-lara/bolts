; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46064 () Bool)

(assert start!46064)

(declare-fun b!509832 () Bool)

(declare-fun e!298078 () Bool)

(assert (=> b!509832 (= e!298078 (not true))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32735 0))(
  ( (array!32736 (arr!15743 (Array (_ BitVec 32) (_ BitVec 64))) (size!16107 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32735)

(declare-datatypes ((SeekEntryResult!4217 0))(
  ( (MissingZero!4217 (index!19056 (_ BitVec 32))) (Found!4217 (index!19057 (_ BitVec 32))) (Intermediate!4217 (undefined!5029 Bool) (index!19058 (_ BitVec 32)) (x!48045 (_ BitVec 32))) (Undefined!4217) (MissingVacant!4217 (index!19059 (_ BitVec 32))) )
))
(declare-fun lt!233073 () SeekEntryResult!4217)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!233075 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32735 (_ BitVec 32)) SeekEntryResult!4217)

(assert (=> b!509832 (= lt!233073 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233075 (select (store (arr!15743 a!3235) i!1204 k!2280) j!176) (array!32736 (store (arr!15743 a!3235) i!1204 k!2280) (size!16107 a!3235)) mask!3524))))

(declare-fun lt!233072 () (_ BitVec 32))

(declare-fun lt!233071 () SeekEntryResult!4217)

(assert (=> b!509832 (= lt!233071 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233072 (select (arr!15743 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509832 (= lt!233075 (toIndex!0 (select (store (arr!15743 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!509832 (= lt!233072 (toIndex!0 (select (arr!15743 a!3235) j!176) mask!3524))))

(declare-fun e!298077 () Bool)

(assert (=> b!509832 e!298077))

(declare-fun res!310833 () Bool)

(assert (=> b!509832 (=> (not res!310833) (not e!298077))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32735 (_ BitVec 32)) Bool)

(assert (=> b!509832 (= res!310833 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15684 0))(
  ( (Unit!15685) )
))
(declare-fun lt!233070 () Unit!15684)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32735 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15684)

(assert (=> b!509832 (= lt!233070 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!509833 () Bool)

(declare-fun res!310830 () Bool)

(assert (=> b!509833 (=> (not res!310830) (not e!298078))))

(assert (=> b!509833 (= res!310830 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509834 () Bool)

(declare-fun res!310835 () Bool)

(declare-fun e!298076 () Bool)

(assert (=> b!509834 (=> (not res!310835) (not e!298076))))

(declare-fun arrayContainsKey!0 (array!32735 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509834 (= res!310835 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!509835 () Bool)

(declare-fun res!310831 () Bool)

(assert (=> b!509835 (=> (not res!310831) (not e!298076))))

(assert (=> b!509835 (= res!310831 (and (= (size!16107 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16107 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16107 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509836 () Bool)

(declare-fun res!310827 () Bool)

(assert (=> b!509836 (=> (not res!310827) (not e!298076))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509836 (= res!310827 (validKeyInArray!0 k!2280))))

(declare-fun b!509837 () Bool)

(assert (=> b!509837 (= e!298076 e!298078)))

(declare-fun res!310829 () Bool)

(assert (=> b!509837 (=> (not res!310829) (not e!298078))))

(declare-fun lt!233074 () SeekEntryResult!4217)

(assert (=> b!509837 (= res!310829 (or (= lt!233074 (MissingZero!4217 i!1204)) (= lt!233074 (MissingVacant!4217 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32735 (_ BitVec 32)) SeekEntryResult!4217)

(assert (=> b!509837 (= lt!233074 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!310832 () Bool)

(assert (=> start!46064 (=> (not res!310832) (not e!298076))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46064 (= res!310832 (validMask!0 mask!3524))))

(assert (=> start!46064 e!298076))

(assert (=> start!46064 true))

(declare-fun array_inv!11517 (array!32735) Bool)

(assert (=> start!46064 (array_inv!11517 a!3235)))

(declare-fun b!509838 () Bool)

(declare-fun res!310828 () Bool)

(assert (=> b!509838 (=> (not res!310828) (not e!298076))))

(assert (=> b!509838 (= res!310828 (validKeyInArray!0 (select (arr!15743 a!3235) j!176)))))

(declare-fun b!509839 () Bool)

(declare-fun res!310834 () Bool)

(assert (=> b!509839 (=> (not res!310834) (not e!298078))))

(declare-datatypes ((List!9954 0))(
  ( (Nil!9951) (Cons!9950 (h!10827 (_ BitVec 64)) (t!16190 List!9954)) )
))
(declare-fun arrayNoDuplicates!0 (array!32735 (_ BitVec 32) List!9954) Bool)

(assert (=> b!509839 (= res!310834 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9951))))

(declare-fun b!509840 () Bool)

(assert (=> b!509840 (= e!298077 (= (seekEntryOrOpen!0 (select (arr!15743 a!3235) j!176) a!3235 mask!3524) (Found!4217 j!176)))))

(assert (= (and start!46064 res!310832) b!509835))

(assert (= (and b!509835 res!310831) b!509838))

(assert (= (and b!509838 res!310828) b!509836))

(assert (= (and b!509836 res!310827) b!509834))

(assert (= (and b!509834 res!310835) b!509837))

(assert (= (and b!509837 res!310829) b!509833))

(assert (= (and b!509833 res!310830) b!509839))

(assert (= (and b!509839 res!310834) b!509832))

(assert (= (and b!509832 res!310833) b!509840))

(declare-fun m!490951 () Bool)

(assert (=> b!509836 m!490951))

(declare-fun m!490953 () Bool)

(assert (=> b!509839 m!490953))

(declare-fun m!490955 () Bool)

(assert (=> b!509840 m!490955))

(assert (=> b!509840 m!490955))

(declare-fun m!490957 () Bool)

(assert (=> b!509840 m!490957))

(declare-fun m!490959 () Bool)

(assert (=> b!509837 m!490959))

(declare-fun m!490961 () Bool)

(assert (=> start!46064 m!490961))

(declare-fun m!490963 () Bool)

(assert (=> start!46064 m!490963))

(declare-fun m!490965 () Bool)

(assert (=> b!509832 m!490965))

(declare-fun m!490967 () Bool)

(assert (=> b!509832 m!490967))

(declare-fun m!490969 () Bool)

(assert (=> b!509832 m!490969))

(declare-fun m!490971 () Bool)

(assert (=> b!509832 m!490971))

(assert (=> b!509832 m!490965))

(assert (=> b!509832 m!490955))

(declare-fun m!490973 () Bool)

(assert (=> b!509832 m!490973))

(assert (=> b!509832 m!490955))

(declare-fun m!490975 () Bool)

(assert (=> b!509832 m!490975))

(assert (=> b!509832 m!490955))

(declare-fun m!490977 () Bool)

(assert (=> b!509832 m!490977))

(assert (=> b!509832 m!490965))

(declare-fun m!490979 () Bool)

(assert (=> b!509832 m!490979))

(assert (=> b!509838 m!490955))

(assert (=> b!509838 m!490955))

(declare-fun m!490981 () Bool)

(assert (=> b!509838 m!490981))

(declare-fun m!490983 () Bool)

(assert (=> b!509834 m!490983))

(declare-fun m!490985 () Bool)

(assert (=> b!509833 m!490985))

(push 1)

