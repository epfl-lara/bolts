; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29826 () Bool)

(assert start!29826)

(declare-fun b!299992 () Bool)

(declare-fun res!158184 () Bool)

(declare-fun e!189465 () Bool)

(assert (=> b!299992 (=> (not res!158184) (not e!189465))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!15152 0))(
  ( (array!15153 (arr!7171 (Array (_ BitVec 32) (_ BitVec 64))) (size!7523 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15152)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!299992 (= res!158184 (and (= (size!7523 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7523 a!3312))))))

(declare-fun res!158183 () Bool)

(assert (=> start!29826 (=> (not res!158183) (not e!189465))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29826 (= res!158183 (validMask!0 mask!3809))))

(assert (=> start!29826 e!189465))

(assert (=> start!29826 true))

(declare-fun array_inv!5125 (array!15152) Bool)

(assert (=> start!29826 (array_inv!5125 a!3312)))

(declare-fun b!299993 () Bool)

(declare-fun res!158186 () Bool)

(assert (=> b!299993 (=> (not res!158186) (not e!189465))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!299993 (= res!158186 (validKeyInArray!0 k!2524))))

(declare-fun b!299994 () Bool)

(declare-fun e!189466 () Bool)

(assert (=> b!299994 (= e!189466 false)))

(declare-datatypes ((SeekEntryResult!2331 0))(
  ( (MissingZero!2331 (index!11500 (_ BitVec 32))) (Found!2331 (index!11501 (_ BitVec 32))) (Intermediate!2331 (undefined!3143 Bool) (index!11502 (_ BitVec 32)) (x!29722 (_ BitVec 32))) (Undefined!2331) (MissingVacant!2331 (index!11503 (_ BitVec 32))) )
))
(declare-fun lt!149270 () SeekEntryResult!2331)

(declare-fun lt!149271 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15152 (_ BitVec 32)) SeekEntryResult!2331)

(assert (=> b!299994 (= lt!149270 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149271 k!2524 (array!15153 (store (arr!7171 a!3312) i!1256 k!2524) (size!7523 a!3312)) mask!3809))))

(declare-fun lt!149272 () SeekEntryResult!2331)

(assert (=> b!299994 (= lt!149272 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149271 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!299994 (= lt!149271 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!299995 () Bool)

(assert (=> b!299995 (= e!189465 e!189466)))

(declare-fun res!158182 () Bool)

(assert (=> b!299995 (=> (not res!158182) (not e!189466))))

(declare-fun lt!149273 () SeekEntryResult!2331)

(assert (=> b!299995 (= res!158182 (or (= lt!149273 (MissingZero!2331 i!1256)) (= lt!149273 (MissingVacant!2331 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15152 (_ BitVec 32)) SeekEntryResult!2331)

(assert (=> b!299995 (= lt!149273 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!299996 () Bool)

(declare-fun res!158187 () Bool)

(assert (=> b!299996 (=> (not res!158187) (not e!189466))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15152 (_ BitVec 32)) Bool)

(assert (=> b!299996 (= res!158187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!299997 () Bool)

(declare-fun res!158185 () Bool)

(assert (=> b!299997 (=> (not res!158185) (not e!189465))))

(declare-fun arrayContainsKey!0 (array!15152 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!299997 (= res!158185 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!29826 res!158183) b!299992))

(assert (= (and b!299992 res!158184) b!299993))

(assert (= (and b!299993 res!158186) b!299997))

(assert (= (and b!299997 res!158185) b!299995))

(assert (= (and b!299995 res!158182) b!299996))

(assert (= (and b!299996 res!158187) b!299994))

(declare-fun m!312073 () Bool)

(assert (=> start!29826 m!312073))

(declare-fun m!312075 () Bool)

(assert (=> start!29826 m!312075))

(declare-fun m!312077 () Bool)

(assert (=> b!299996 m!312077))

(declare-fun m!312079 () Bool)

(assert (=> b!299993 m!312079))

(declare-fun m!312081 () Bool)

(assert (=> b!299997 m!312081))

(declare-fun m!312083 () Bool)

(assert (=> b!299995 m!312083))

(declare-fun m!312085 () Bool)

(assert (=> b!299994 m!312085))

(declare-fun m!312087 () Bool)

(assert (=> b!299994 m!312087))

(declare-fun m!312089 () Bool)

(assert (=> b!299994 m!312089))

(declare-fun m!312091 () Bool)

(assert (=> b!299994 m!312091))

(push 1)

