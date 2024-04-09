; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28682 () Bool)

(assert start!28682)

(declare-fun b!293029 () Bool)

(declare-fun e!185323 () Bool)

(declare-fun e!185322 () Bool)

(assert (=> b!293029 (= e!185323 e!185322)))

(declare-fun res!154127 () Bool)

(assert (=> b!293029 (=> (not res!154127) (not e!185322))))

(declare-datatypes ((SeekEntryResult!2207 0))(
  ( (MissingZero!2207 (index!10998 (_ BitVec 32))) (Found!2207 (index!10999 (_ BitVec 32))) (Intermediate!2207 (undefined!3019 Bool) (index!11000 (_ BitVec 32)) (x!29142 (_ BitVec 32))) (Undefined!2207) (MissingVacant!2207 (index!11001 (_ BitVec 32))) )
))
(declare-fun lt!145289 () SeekEntryResult!2207)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!293029 (= res!154127 (or (= lt!145289 (MissingZero!2207 i!1256)) (= lt!145289 (MissingVacant!2207 i!1256))))))

(declare-datatypes ((array!14850 0))(
  ( (array!14851 (arr!7047 (Array (_ BitVec 32) (_ BitVec 64))) (size!7399 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14850)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14850 (_ BitVec 32)) SeekEntryResult!2207)

(assert (=> b!293029 (= lt!145289 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!293030 () Bool)

(assert (=> b!293030 (= e!185322 false)))

(declare-fun lt!145288 () (_ BitVec 32))

(declare-fun lt!145287 () SeekEntryResult!2207)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14850 (_ BitVec 32)) SeekEntryResult!2207)

(assert (=> b!293030 (= lt!145287 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145288 k!2524 (array!14851 (store (arr!7047 a!3312) i!1256 k!2524) (size!7399 a!3312)) mask!3809))))

(declare-fun lt!145286 () SeekEntryResult!2207)

(assert (=> b!293030 (= lt!145286 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145288 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!293030 (= lt!145288 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!293031 () Bool)

(declare-fun res!154123 () Bool)

(assert (=> b!293031 (=> (not res!154123) (not e!185323))))

(declare-fun arrayContainsKey!0 (array!14850 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!293031 (= res!154123 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!293032 () Bool)

(declare-fun res!154125 () Bool)

(assert (=> b!293032 (=> (not res!154125) (not e!185323))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!293032 (= res!154125 (validKeyInArray!0 k!2524))))

(declare-fun b!293033 () Bool)

(declare-fun res!154128 () Bool)

(assert (=> b!293033 (=> (not res!154128) (not e!185323))))

(assert (=> b!293033 (= res!154128 (and (= (size!7399 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7399 a!3312))))))

(declare-fun b!293034 () Bool)

(declare-fun res!154126 () Bool)

(assert (=> b!293034 (=> (not res!154126) (not e!185322))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14850 (_ BitVec 32)) Bool)

(assert (=> b!293034 (= res!154126 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!154124 () Bool)

(assert (=> start!28682 (=> (not res!154124) (not e!185323))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28682 (= res!154124 (validMask!0 mask!3809))))

(assert (=> start!28682 e!185323))

(assert (=> start!28682 true))

(declare-fun array_inv!5001 (array!14850) Bool)

(assert (=> start!28682 (array_inv!5001 a!3312)))

(assert (= (and start!28682 res!154124) b!293033))

(assert (= (and b!293033 res!154128) b!293032))

(assert (= (and b!293032 res!154125) b!293031))

(assert (= (and b!293031 res!154123) b!293029))

(assert (= (and b!293029 res!154127) b!293034))

(assert (= (and b!293034 res!154126) b!293030))

(declare-fun m!306875 () Bool)

(assert (=> b!293030 m!306875))

(declare-fun m!306877 () Bool)

(assert (=> b!293030 m!306877))

(declare-fun m!306879 () Bool)

(assert (=> b!293030 m!306879))

(declare-fun m!306881 () Bool)

(assert (=> b!293030 m!306881))

(declare-fun m!306883 () Bool)

(assert (=> b!293029 m!306883))

(declare-fun m!306885 () Bool)

(assert (=> b!293032 m!306885))

(declare-fun m!306887 () Bool)

(assert (=> b!293031 m!306887))

(declare-fun m!306889 () Bool)

(assert (=> start!28682 m!306889))

(declare-fun m!306891 () Bool)

(assert (=> start!28682 m!306891))

(declare-fun m!306893 () Bool)

(assert (=> b!293034 m!306893))

(push 1)

(assert (not b!293029))

(assert (not start!28682))

(assert (not b!293032))

