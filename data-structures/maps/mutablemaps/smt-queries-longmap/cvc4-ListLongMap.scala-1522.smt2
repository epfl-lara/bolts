; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28676 () Bool)

(assert start!28676)

(declare-fun b!292975 () Bool)

(declare-fun e!185294 () Bool)

(declare-fun e!185296 () Bool)

(assert (=> b!292975 (= e!185294 e!185296)))

(declare-fun res!154073 () Bool)

(assert (=> b!292975 (=> (not res!154073) (not e!185296))))

(declare-datatypes ((SeekEntryResult!2204 0))(
  ( (MissingZero!2204 (index!10986 (_ BitVec 32))) (Found!2204 (index!10987 (_ BitVec 32))) (Intermediate!2204 (undefined!3016 Bool) (index!10988 (_ BitVec 32)) (x!29131 (_ BitVec 32))) (Undefined!2204) (MissingVacant!2204 (index!10989 (_ BitVec 32))) )
))
(declare-fun lt!145252 () SeekEntryResult!2204)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!292975 (= res!154073 (or (= lt!145252 (MissingZero!2204 i!1256)) (= lt!145252 (MissingVacant!2204 i!1256))))))

(declare-datatypes ((array!14844 0))(
  ( (array!14845 (arr!7044 (Array (_ BitVec 32) (_ BitVec 64))) (size!7396 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14844)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14844 (_ BitVec 32)) SeekEntryResult!2204)

(assert (=> b!292975 (= lt!145252 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!154074 () Bool)

(assert (=> start!28676 (=> (not res!154074) (not e!185294))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28676 (= res!154074 (validMask!0 mask!3809))))

(assert (=> start!28676 e!185294))

(assert (=> start!28676 true))

(declare-fun array_inv!4998 (array!14844) Bool)

(assert (=> start!28676 (array_inv!4998 a!3312)))

(declare-fun b!292976 () Bool)

(declare-fun res!154069 () Bool)

(assert (=> b!292976 (=> (not res!154069) (not e!185294))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292976 (= res!154069 (validKeyInArray!0 k!2524))))

(declare-fun b!292977 () Bool)

(declare-fun res!154071 () Bool)

(assert (=> b!292977 (=> (not res!154071) (not e!185296))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14844 (_ BitVec 32)) Bool)

(assert (=> b!292977 (= res!154071 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292978 () Bool)

(assert (=> b!292978 (= e!185296 false)))

(declare-fun lt!145251 () (_ BitVec 32))

(declare-fun lt!145250 () SeekEntryResult!2204)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14844 (_ BitVec 32)) SeekEntryResult!2204)

(assert (=> b!292978 (= lt!145250 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145251 k!2524 (array!14845 (store (arr!7044 a!3312) i!1256 k!2524) (size!7396 a!3312)) mask!3809))))

(declare-fun lt!145253 () SeekEntryResult!2204)

(assert (=> b!292978 (= lt!145253 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145251 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292978 (= lt!145251 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!292979 () Bool)

(declare-fun res!154070 () Bool)

(assert (=> b!292979 (=> (not res!154070) (not e!185294))))

(declare-fun arrayContainsKey!0 (array!14844 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292979 (= res!154070 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292980 () Bool)

(declare-fun res!154072 () Bool)

(assert (=> b!292980 (=> (not res!154072) (not e!185294))))

(assert (=> b!292980 (= res!154072 (and (= (size!7396 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7396 a!3312))))))

(assert (= (and start!28676 res!154074) b!292980))

(assert (= (and b!292980 res!154072) b!292976))

(assert (= (and b!292976 res!154069) b!292979))

(assert (= (and b!292979 res!154070) b!292975))

(assert (= (and b!292975 res!154073) b!292977))

(assert (= (and b!292977 res!154071) b!292978))

(declare-fun m!306815 () Bool)

(assert (=> b!292977 m!306815))

(declare-fun m!306817 () Bool)

(assert (=> start!28676 m!306817))

(declare-fun m!306819 () Bool)

(assert (=> start!28676 m!306819))

(declare-fun m!306821 () Bool)

(assert (=> b!292975 m!306821))

(declare-fun m!306823 () Bool)

(assert (=> b!292979 m!306823))

(declare-fun m!306825 () Bool)

(assert (=> b!292976 m!306825))

(declare-fun m!306827 () Bool)

(assert (=> b!292978 m!306827))

(declare-fun m!306829 () Bool)

(assert (=> b!292978 m!306829))

(declare-fun m!306831 () Bool)

(assert (=> b!292978 m!306831))

(declare-fun m!306833 () Bool)

(assert (=> b!292978 m!306833))

(push 1)

(assert (not start!28676))

(assert (not b!292978))

(assert (not b!292976))

