; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44876 () Bool)

(assert start!44876)

(declare-fun b!492105 () Bool)

(declare-fun res!295009 () Bool)

(declare-fun e!289104 () Bool)

(assert (=> b!492105 (=> (not res!295009) (not e!289104))))

(declare-datatypes ((array!31838 0))(
  ( (array!31839 (arr!15302 (Array (_ BitVec 32) (_ BitVec 64))) (size!15666 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31838)

(declare-datatypes ((List!9513 0))(
  ( (Nil!9510) (Cons!9509 (h!10374 (_ BitVec 64)) (t!15749 List!9513)) )
))
(declare-fun arrayNoDuplicates!0 (array!31838 (_ BitVec 32) List!9513) Bool)

(assert (=> b!492105 (= res!295009 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9510))))

(declare-fun b!492106 () Bool)

(declare-fun res!295010 () Bool)

(declare-fun e!289102 () Bool)

(assert (=> b!492106 (=> (not res!295010) (not e!289102))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!492106 (= res!295010 (and (= (size!15666 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15666 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15666 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!492107 () Bool)

(declare-fun res!295013 () Bool)

(assert (=> b!492107 (=> (not res!295013) (not e!289102))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!492107 (= res!295013 (validKeyInArray!0 k!2280))))

(declare-fun b!492109 () Bool)

(declare-fun res!295012 () Bool)

(assert (=> b!492109 (=> (not res!295012) (not e!289102))))

(declare-fun arrayContainsKey!0 (array!31838 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!492109 (= res!295012 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!492110 () Bool)

(assert (=> b!492110 (= e!289104 (not true))))

(declare-fun lt!222538 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3776 0))(
  ( (MissingZero!3776 (index!17283 (_ BitVec 32))) (Found!3776 (index!17284 (_ BitVec 32))) (Intermediate!3776 (undefined!4588 Bool) (index!17285 (_ BitVec 32)) (x!46395 (_ BitVec 32))) (Undefined!3776) (MissingVacant!3776 (index!17286 (_ BitVec 32))) )
))
(declare-fun lt!222537 () SeekEntryResult!3776)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31838 (_ BitVec 32)) SeekEntryResult!3776)

(assert (=> b!492110 (= lt!222537 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222538 (select (store (arr!15302 a!3235) i!1204 k!2280) j!176) (array!31839 (store (arr!15302 a!3235) i!1204 k!2280) (size!15666 a!3235)) mask!3524))))

(declare-fun lt!222535 () SeekEntryResult!3776)

(declare-fun lt!222536 () (_ BitVec 32))

(assert (=> b!492110 (= lt!222535 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222536 (select (arr!15302 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!492110 (= lt!222538 (toIndex!0 (select (store (arr!15302 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!492110 (= lt!222536 (toIndex!0 (select (arr!15302 a!3235) j!176) mask!3524))))

(declare-fun e!289105 () Bool)

(assert (=> b!492110 e!289105))

(declare-fun res!295008 () Bool)

(assert (=> b!492110 (=> (not res!295008) (not e!289105))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31838 (_ BitVec 32)) Bool)

(assert (=> b!492110 (= res!295008 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14490 0))(
  ( (Unit!14491) )
))
(declare-fun lt!222539 () Unit!14490)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31838 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14490)

(assert (=> b!492110 (= lt!222539 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!492111 () Bool)

(declare-fun res!295014 () Bool)

(assert (=> b!492111 (=> (not res!295014) (not e!289104))))

(assert (=> b!492111 (= res!295014 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!295015 () Bool)

(assert (=> start!44876 (=> (not res!295015) (not e!289102))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44876 (= res!295015 (validMask!0 mask!3524))))

(assert (=> start!44876 e!289102))

(assert (=> start!44876 true))

(declare-fun array_inv!11076 (array!31838) Bool)

(assert (=> start!44876 (array_inv!11076 a!3235)))

(declare-fun b!492108 () Bool)

(assert (=> b!492108 (= e!289102 e!289104)))

(declare-fun res!295011 () Bool)

(assert (=> b!492108 (=> (not res!295011) (not e!289104))))

(declare-fun lt!222534 () SeekEntryResult!3776)

(assert (=> b!492108 (= res!295011 (or (= lt!222534 (MissingZero!3776 i!1204)) (= lt!222534 (MissingVacant!3776 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31838 (_ BitVec 32)) SeekEntryResult!3776)

(assert (=> b!492108 (= lt!222534 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!492112 () Bool)

(declare-fun res!295016 () Bool)

(assert (=> b!492112 (=> (not res!295016) (not e!289102))))

(assert (=> b!492112 (= res!295016 (validKeyInArray!0 (select (arr!15302 a!3235) j!176)))))

(declare-fun b!492113 () Bool)

(assert (=> b!492113 (= e!289105 (= (seekEntryOrOpen!0 (select (arr!15302 a!3235) j!176) a!3235 mask!3524) (Found!3776 j!176)))))

(assert (= (and start!44876 res!295015) b!492106))

(assert (= (and b!492106 res!295010) b!492112))

(assert (= (and b!492112 res!295016) b!492107))

(assert (= (and b!492107 res!295013) b!492109))

(assert (= (and b!492109 res!295012) b!492108))

(assert (= (and b!492108 res!295011) b!492111))

(assert (= (and b!492111 res!295014) b!492105))

(assert (= (and b!492105 res!295009) b!492110))

(assert (= (and b!492110 res!295008) b!492113))

(declare-fun m!472837 () Bool)

(assert (=> b!492112 m!472837))

(assert (=> b!492112 m!472837))

(declare-fun m!472839 () Bool)

(assert (=> b!492112 m!472839))

(declare-fun m!472841 () Bool)

(assert (=> b!492108 m!472841))

(declare-fun m!472843 () Bool)

(assert (=> b!492107 m!472843))

(declare-fun m!472845 () Bool)

(assert (=> b!492109 m!472845))

(assert (=> b!492113 m!472837))

(assert (=> b!492113 m!472837))

(declare-fun m!472847 () Bool)

(assert (=> b!492113 m!472847))

(declare-fun m!472849 () Bool)

(assert (=> b!492111 m!472849))

(declare-fun m!472851 () Bool)

(assert (=> start!44876 m!472851))

(declare-fun m!472853 () Bool)

(assert (=> start!44876 m!472853))

(declare-fun m!472855 () Bool)

(assert (=> b!492105 m!472855))

(declare-fun m!472857 () Bool)

(assert (=> b!492110 m!472857))

(assert (=> b!492110 m!472837))

(declare-fun m!472859 () Bool)

(assert (=> b!492110 m!472859))

(declare-fun m!472861 () Bool)

(assert (=> b!492110 m!472861))

(declare-fun m!472863 () Bool)

(assert (=> b!492110 m!472863))

(assert (=> b!492110 m!472837))

(declare-fun m!472865 () Bool)

(assert (=> b!492110 m!472865))

(assert (=> b!492110 m!472837))

(declare-fun m!472867 () Bool)

(assert (=> b!492110 m!472867))

(assert (=> b!492110 m!472863))

(declare-fun m!472869 () Bool)

(assert (=> b!492110 m!472869))

(assert (=> b!492110 m!472863))

(declare-fun m!472871 () Bool)

(assert (=> b!492110 m!472871))

(push 1)

