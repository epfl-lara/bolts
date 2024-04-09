; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28688 () Bool)

(assert start!28688)

(declare-fun b!293083 () Bool)

(declare-fun res!154179 () Bool)

(declare-fun e!185349 () Bool)

(assert (=> b!293083 (=> (not res!154179) (not e!185349))))

(declare-datatypes ((array!14856 0))(
  ( (array!14857 (arr!7050 (Array (_ BitVec 32) (_ BitVec 64))) (size!7402 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14856)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14856 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!293083 (= res!154179 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!293084 () Bool)

(declare-fun res!154177 () Bool)

(declare-fun e!185348 () Bool)

(assert (=> b!293084 (=> (not res!154177) (not e!185348))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14856 (_ BitVec 32)) Bool)

(assert (=> b!293084 (= res!154177 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!293085 () Bool)

(declare-fun res!154181 () Bool)

(assert (=> b!293085 (=> (not res!154181) (not e!185349))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!293085 (= res!154181 (validKeyInArray!0 k!2524))))

(declare-fun b!293086 () Bool)

(declare-fun res!154180 () Bool)

(assert (=> b!293086 (=> (not res!154180) (not e!185349))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!293086 (= res!154180 (and (= (size!7402 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7402 a!3312))))))

(declare-fun b!293087 () Bool)

(assert (=> b!293087 (= e!185349 e!185348)))

(declare-fun res!154178 () Bool)

(assert (=> b!293087 (=> (not res!154178) (not e!185348))))

(declare-datatypes ((SeekEntryResult!2210 0))(
  ( (MissingZero!2210 (index!11010 (_ BitVec 32))) (Found!2210 (index!11011 (_ BitVec 32))) (Intermediate!2210 (undefined!3022 Bool) (index!11012 (_ BitVec 32)) (x!29153 (_ BitVec 32))) (Undefined!2210) (MissingVacant!2210 (index!11013 (_ BitVec 32))) )
))
(declare-fun lt!145306 () SeekEntryResult!2210)

(assert (=> b!293087 (= res!154178 (or (= lt!145306 (MissingZero!2210 i!1256)) (= lt!145306 (MissingVacant!2210 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14856 (_ BitVec 32)) SeekEntryResult!2210)

(assert (=> b!293087 (= lt!145306 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!154182 () Bool)

(assert (=> start!28688 (=> (not res!154182) (not e!185349))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28688 (= res!154182 (validMask!0 mask!3809))))

(assert (=> start!28688 e!185349))

(assert (=> start!28688 true))

(declare-fun array_inv!5004 (array!14856) Bool)

(assert (=> start!28688 (array_inv!5004 a!3312)))

(declare-fun b!293088 () Bool)

(assert (=> b!293088 (= e!185348 false)))

(declare-fun lt!145307 () SeekEntryResult!2210)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14856 (_ BitVec 32)) SeekEntryResult!2210)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!293088 (= lt!145307 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (= (and start!28688 res!154182) b!293086))

(assert (= (and b!293086 res!154180) b!293085))

(assert (= (and b!293085 res!154181) b!293083))

(assert (= (and b!293083 res!154179) b!293087))

(assert (= (and b!293087 res!154178) b!293084))

(assert (= (and b!293084 res!154177) b!293088))

(declare-fun m!306927 () Bool)

(assert (=> b!293085 m!306927))

(declare-fun m!306929 () Bool)

(assert (=> b!293084 m!306929))

(declare-fun m!306931 () Bool)

(assert (=> b!293087 m!306931))

(declare-fun m!306933 () Bool)

(assert (=> b!293088 m!306933))

(assert (=> b!293088 m!306933))

(declare-fun m!306935 () Bool)

(assert (=> b!293088 m!306935))

(declare-fun m!306937 () Bool)

(assert (=> start!28688 m!306937))

(declare-fun m!306939 () Bool)

(assert (=> start!28688 m!306939))

(declare-fun m!306941 () Bool)

(assert (=> b!293083 m!306941))

(push 1)

(assert (not b!293088))

(assert (not b!293083))

(assert (not start!28688))

(assert (not b!293087))

(assert (not b!293084))

(assert (not b!293085))

(check-sat)

(pop 1)

