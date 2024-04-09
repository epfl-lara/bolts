; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46068 () Bool)

(assert start!46068)

(declare-fun b!509886 () Bool)

(declare-fun res!310883 () Bool)

(declare-fun e!298099 () Bool)

(assert (=> b!509886 (=> (not res!310883) (not e!298099))))

(declare-datatypes ((array!32739 0))(
  ( (array!32740 (arr!15745 (Array (_ BitVec 32) (_ BitVec 64))) (size!16109 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32739)

(declare-datatypes ((List!9956 0))(
  ( (Nil!9953) (Cons!9952 (h!10829 (_ BitVec 64)) (t!16192 List!9956)) )
))
(declare-fun arrayNoDuplicates!0 (array!32739 (_ BitVec 32) List!9956) Bool)

(assert (=> b!509886 (= res!310883 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9953))))

(declare-fun b!509887 () Bool)

(declare-fun res!310889 () Bool)

(declare-fun e!298102 () Bool)

(assert (=> b!509887 (=> (not res!310889) (not e!298102))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32739 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509887 (= res!310889 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!509888 () Bool)

(declare-fun res!310882 () Bool)

(assert (=> b!509888 (=> (not res!310882) (not e!298102))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(assert (=> b!509888 (= res!310882 (and (= (size!16109 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16109 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16109 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509889 () Bool)

(assert (=> b!509889 (= e!298099 (not true))))

(declare-fun lt!233111 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4219 0))(
  ( (MissingZero!4219 (index!19064 (_ BitVec 32))) (Found!4219 (index!19065 (_ BitVec 32))) (Intermediate!4219 (undefined!5031 Bool) (index!19066 (_ BitVec 32)) (x!48055 (_ BitVec 32))) (Undefined!4219) (MissingVacant!4219 (index!19067 (_ BitVec 32))) )
))
(declare-fun lt!233110 () SeekEntryResult!4219)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32739 (_ BitVec 32)) SeekEntryResult!4219)

(assert (=> b!509889 (= lt!233110 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233111 (select (store (arr!15745 a!3235) i!1204 k0!2280) j!176) (array!32740 (store (arr!15745 a!3235) i!1204 k0!2280) (size!16109 a!3235)) mask!3524))))

(declare-fun lt!233106 () (_ BitVec 32))

(declare-fun lt!233107 () SeekEntryResult!4219)

(assert (=> b!509889 (= lt!233107 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233106 (select (arr!15745 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509889 (= lt!233111 (toIndex!0 (select (store (arr!15745 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!509889 (= lt!233106 (toIndex!0 (select (arr!15745 a!3235) j!176) mask!3524))))

(declare-fun e!298100 () Bool)

(assert (=> b!509889 e!298100))

(declare-fun res!310885 () Bool)

(assert (=> b!509889 (=> (not res!310885) (not e!298100))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32739 (_ BitVec 32)) Bool)

(assert (=> b!509889 (= res!310885 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15688 0))(
  ( (Unit!15689) )
))
(declare-fun lt!233109 () Unit!15688)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32739 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15688)

(assert (=> b!509889 (= lt!233109 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!509890 () Bool)

(declare-fun res!310887 () Bool)

(assert (=> b!509890 (=> (not res!310887) (not e!298102))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509890 (= res!310887 (validKeyInArray!0 (select (arr!15745 a!3235) j!176)))))

(declare-fun b!509891 () Bool)

(declare-fun res!310884 () Bool)

(assert (=> b!509891 (=> (not res!310884) (not e!298099))))

(assert (=> b!509891 (= res!310884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509892 () Bool)

(assert (=> b!509892 (= e!298102 e!298099)))

(declare-fun res!310888 () Bool)

(assert (=> b!509892 (=> (not res!310888) (not e!298099))))

(declare-fun lt!233108 () SeekEntryResult!4219)

(assert (=> b!509892 (= res!310888 (or (= lt!233108 (MissingZero!4219 i!1204)) (= lt!233108 (MissingVacant!4219 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32739 (_ BitVec 32)) SeekEntryResult!4219)

(assert (=> b!509892 (= lt!233108 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!509893 () Bool)

(assert (=> b!509893 (= e!298100 (= (seekEntryOrOpen!0 (select (arr!15745 a!3235) j!176) a!3235 mask!3524) (Found!4219 j!176)))))

(declare-fun b!509894 () Bool)

(declare-fun res!310886 () Bool)

(assert (=> b!509894 (=> (not res!310886) (not e!298102))))

(assert (=> b!509894 (= res!310886 (validKeyInArray!0 k0!2280))))

(declare-fun res!310881 () Bool)

(assert (=> start!46068 (=> (not res!310881) (not e!298102))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46068 (= res!310881 (validMask!0 mask!3524))))

(assert (=> start!46068 e!298102))

(assert (=> start!46068 true))

(declare-fun array_inv!11519 (array!32739) Bool)

(assert (=> start!46068 (array_inv!11519 a!3235)))

(assert (= (and start!46068 res!310881) b!509888))

(assert (= (and b!509888 res!310882) b!509890))

(assert (= (and b!509890 res!310887) b!509894))

(assert (= (and b!509894 res!310886) b!509887))

(assert (= (and b!509887 res!310889) b!509892))

(assert (= (and b!509892 res!310888) b!509891))

(assert (= (and b!509891 res!310884) b!509886))

(assert (= (and b!509886 res!310883) b!509889))

(assert (= (and b!509889 res!310885) b!509893))

(declare-fun m!491023 () Bool)

(assert (=> b!509887 m!491023))

(declare-fun m!491025 () Bool)

(assert (=> start!46068 m!491025))

(declare-fun m!491027 () Bool)

(assert (=> start!46068 m!491027))

(declare-fun m!491029 () Bool)

(assert (=> b!509889 m!491029))

(declare-fun m!491031 () Bool)

(assert (=> b!509889 m!491031))

(declare-fun m!491033 () Bool)

(assert (=> b!509889 m!491033))

(declare-fun m!491035 () Bool)

(assert (=> b!509889 m!491035))

(declare-fun m!491037 () Bool)

(assert (=> b!509889 m!491037))

(assert (=> b!509889 m!491037))

(declare-fun m!491039 () Bool)

(assert (=> b!509889 m!491039))

(assert (=> b!509889 m!491029))

(declare-fun m!491041 () Bool)

(assert (=> b!509889 m!491041))

(assert (=> b!509889 m!491029))

(declare-fun m!491043 () Bool)

(assert (=> b!509889 m!491043))

(assert (=> b!509889 m!491037))

(declare-fun m!491045 () Bool)

(assert (=> b!509889 m!491045))

(declare-fun m!491047 () Bool)

(assert (=> b!509891 m!491047))

(assert (=> b!509890 m!491029))

(assert (=> b!509890 m!491029))

(declare-fun m!491049 () Bool)

(assert (=> b!509890 m!491049))

(declare-fun m!491051 () Bool)

(assert (=> b!509892 m!491051))

(declare-fun m!491053 () Bool)

(assert (=> b!509886 m!491053))

(assert (=> b!509893 m!491029))

(assert (=> b!509893 m!491029))

(declare-fun m!491055 () Bool)

(assert (=> b!509893 m!491055))

(declare-fun m!491057 () Bool)

(assert (=> b!509894 m!491057))

(check-sat (not b!509889) (not start!46068) (not b!509892) (not b!509886) (not b!509890) (not b!509887) (not b!509894) (not b!509891) (not b!509893))
(check-sat)
