; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45890 () Bool)

(assert start!45890)

(declare-fun b!507985 () Bool)

(declare-fun res!309097 () Bool)

(declare-fun e!297222 () Bool)

(assert (=> b!507985 (=> (not res!309097) (not e!297222))))

(declare-datatypes ((array!32606 0))(
  ( (array!32607 (arr!15680 (Array (_ BitVec 32) (_ BitVec 64))) (size!16044 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32606)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32606 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507985 (= res!309097 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!507986 () Bool)

(declare-fun res!309100 () Bool)

(declare-fun e!297223 () Bool)

(assert (=> b!507986 (=> (not res!309100) (not e!297223))))

(declare-datatypes ((List!9891 0))(
  ( (Nil!9888) (Cons!9887 (h!10764 (_ BitVec 64)) (t!16127 List!9891)) )
))
(declare-fun arrayNoDuplicates!0 (array!32606 (_ BitVec 32) List!9891) Bool)

(assert (=> b!507986 (= res!309100 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9888))))

(declare-fun b!507987 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!507987 (= e!297223 (and (bvsle #b00000000000000000000000000000000 (size!16044 a!3235)) (bvsgt j!176 (size!16044 a!3235))))))

(declare-fun b!507988 () Bool)

(declare-fun res!309094 () Bool)

(assert (=> b!507988 (=> (not res!309094) (not e!297222))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507988 (= res!309094 (and (= (size!16044 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16044 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16044 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!507989 () Bool)

(declare-fun res!309096 () Bool)

(assert (=> b!507989 (=> (not res!309096) (not e!297222))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507989 (= res!309096 (validKeyInArray!0 k!2280))))

(declare-fun res!309095 () Bool)

(assert (=> start!45890 (=> (not res!309095) (not e!297222))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45890 (= res!309095 (validMask!0 mask!3524))))

(assert (=> start!45890 e!297222))

(assert (=> start!45890 true))

(declare-fun array_inv!11454 (array!32606) Bool)

(assert (=> start!45890 (array_inv!11454 a!3235)))

(declare-fun b!507990 () Bool)

(declare-fun res!309101 () Bool)

(assert (=> b!507990 (=> (not res!309101) (not e!297222))))

(assert (=> b!507990 (= res!309101 (validKeyInArray!0 (select (arr!15680 a!3235) j!176)))))

(declare-fun b!507991 () Bool)

(declare-fun res!309098 () Bool)

(assert (=> b!507991 (=> (not res!309098) (not e!297223))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32606 (_ BitVec 32)) Bool)

(assert (=> b!507991 (= res!309098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!507992 () Bool)

(assert (=> b!507992 (= e!297222 e!297223)))

(declare-fun res!309099 () Bool)

(assert (=> b!507992 (=> (not res!309099) (not e!297223))))

(declare-datatypes ((SeekEntryResult!4154 0))(
  ( (MissingZero!4154 (index!18804 (_ BitVec 32))) (Found!4154 (index!18805 (_ BitVec 32))) (Intermediate!4154 (undefined!4966 Bool) (index!18806 (_ BitVec 32)) (x!47814 (_ BitVec 32))) (Undefined!4154) (MissingVacant!4154 (index!18807 (_ BitVec 32))) )
))
(declare-fun lt!232130 () SeekEntryResult!4154)

(assert (=> b!507992 (= res!309099 (or (= lt!232130 (MissingZero!4154 i!1204)) (= lt!232130 (MissingVacant!4154 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32606 (_ BitVec 32)) SeekEntryResult!4154)

(assert (=> b!507992 (= lt!232130 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!45890 res!309095) b!507988))

(assert (= (and b!507988 res!309094) b!507990))

(assert (= (and b!507990 res!309101) b!507989))

(assert (= (and b!507989 res!309096) b!507985))

(assert (= (and b!507985 res!309097) b!507992))

(assert (= (and b!507992 res!309099) b!507991))

(assert (= (and b!507991 res!309098) b!507986))

(assert (= (and b!507986 res!309100) b!507987))

(declare-fun m!488827 () Bool)

(assert (=> b!507989 m!488827))

(declare-fun m!488829 () Bool)

(assert (=> b!507990 m!488829))

(assert (=> b!507990 m!488829))

(declare-fun m!488831 () Bool)

(assert (=> b!507990 m!488831))

(declare-fun m!488833 () Bool)

(assert (=> b!507986 m!488833))

(declare-fun m!488835 () Bool)

(assert (=> b!507992 m!488835))

(declare-fun m!488837 () Bool)

(assert (=> b!507991 m!488837))

(declare-fun m!488839 () Bool)

(assert (=> b!507985 m!488839))

(declare-fun m!488841 () Bool)

(assert (=> start!45890 m!488841))

(declare-fun m!488843 () Bool)

(assert (=> start!45890 m!488843))

(push 1)

(assert (not b!507992))

(assert (not b!507986))

(assert (not b!507985))

(assert (not b!507989))

(assert (not b!507990))

(assert (not b!507991))

(assert (not start!45890))

(check-sat)

(pop 1)

(push 1)

(check-sat)

