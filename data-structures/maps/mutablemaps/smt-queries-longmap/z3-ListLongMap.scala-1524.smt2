; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28686 () Bool)

(assert start!28686)

(declare-fun b!293065 () Bool)

(declare-fun e!185339 () Bool)

(assert (=> b!293065 (= e!185339 false)))

(declare-datatypes ((SeekEntryResult!2209 0))(
  ( (MissingZero!2209 (index!11006 (_ BitVec 32))) (Found!2209 (index!11007 (_ BitVec 32))) (Intermediate!2209 (undefined!3021 Bool) (index!11008 (_ BitVec 32)) (x!29152 (_ BitVec 32))) (Undefined!2209) (MissingVacant!2209 (index!11009 (_ BitVec 32))) )
))
(declare-fun lt!145300 () SeekEntryResult!2209)

(declare-datatypes ((array!14854 0))(
  ( (array!14855 (arr!7049 (Array (_ BitVec 32) (_ BitVec 64))) (size!7401 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14854)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14854 (_ BitVec 32)) SeekEntryResult!2209)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!293065 (= lt!145300 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun b!293066 () Bool)

(declare-fun res!154159 () Bool)

(assert (=> b!293066 (=> (not res!154159) (not e!185339))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14854 (_ BitVec 32)) Bool)

(assert (=> b!293066 (= res!154159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!293067 () Bool)

(declare-fun res!154160 () Bool)

(declare-fun e!185340 () Bool)

(assert (=> b!293067 (=> (not res!154160) (not e!185340))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!293067 (= res!154160 (validKeyInArray!0 k0!2524))))

(declare-fun b!293068 () Bool)

(declare-fun res!154163 () Bool)

(assert (=> b!293068 (=> (not res!154163) (not e!185340))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!293068 (= res!154163 (and (= (size!7401 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7401 a!3312))))))

(declare-fun b!293069 () Bool)

(assert (=> b!293069 (= e!185340 e!185339)))

(declare-fun res!154161 () Bool)

(assert (=> b!293069 (=> (not res!154161) (not e!185339))))

(declare-fun lt!145301 () SeekEntryResult!2209)

(assert (=> b!293069 (= res!154161 (or (= lt!145301 (MissingZero!2209 i!1256)) (= lt!145301 (MissingVacant!2209 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14854 (_ BitVec 32)) SeekEntryResult!2209)

(assert (=> b!293069 (= lt!145301 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun res!154162 () Bool)

(assert (=> start!28686 (=> (not res!154162) (not e!185340))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28686 (= res!154162 (validMask!0 mask!3809))))

(assert (=> start!28686 e!185340))

(assert (=> start!28686 true))

(declare-fun array_inv!5003 (array!14854) Bool)

(assert (=> start!28686 (array_inv!5003 a!3312)))

(declare-fun b!293070 () Bool)

(declare-fun res!154164 () Bool)

(assert (=> b!293070 (=> (not res!154164) (not e!185340))))

(declare-fun arrayContainsKey!0 (array!14854 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!293070 (= res!154164 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28686 res!154162) b!293068))

(assert (= (and b!293068 res!154163) b!293067))

(assert (= (and b!293067 res!154160) b!293070))

(assert (= (and b!293070 res!154164) b!293069))

(assert (= (and b!293069 res!154161) b!293066))

(assert (= (and b!293066 res!154159) b!293065))

(declare-fun m!306911 () Bool)

(assert (=> b!293067 m!306911))

(declare-fun m!306913 () Bool)

(assert (=> b!293065 m!306913))

(assert (=> b!293065 m!306913))

(declare-fun m!306915 () Bool)

(assert (=> b!293065 m!306915))

(declare-fun m!306917 () Bool)

(assert (=> b!293069 m!306917))

(declare-fun m!306919 () Bool)

(assert (=> b!293066 m!306919))

(declare-fun m!306921 () Bool)

(assert (=> start!28686 m!306921))

(declare-fun m!306923 () Bool)

(assert (=> start!28686 m!306923))

(declare-fun m!306925 () Bool)

(assert (=> b!293070 m!306925))

(check-sat (not b!293066) (not b!293070) (not start!28686) (not b!293067) (not b!293065) (not b!293069))
(check-sat)
