; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68958 () Bool)

(assert start!68958)

(declare-fun res!548731 () Bool)

(declare-fun e!445489 () Bool)

(assert (=> start!68958 (=> (not res!548731) (not e!445489))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68958 (= res!548731 (validMask!0 mask!3266))))

(assert (=> start!68958 e!445489))

(assert (=> start!68958 true))

(declare-datatypes ((array!43699 0))(
  ( (array!43700 (arr!20926 (Array (_ BitVec 32) (_ BitVec 64))) (size!21347 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43699)

(declare-fun array_inv!16700 (array!43699) Bool)

(assert (=> start!68958 (array_inv!16700 a!3170)))

(declare-fun b!804036 () Bool)

(declare-fun e!445487 () Bool)

(assert (=> b!804036 (= e!445489 e!445487)))

(declare-fun res!548729 () Bool)

(assert (=> b!804036 (=> (not res!548729) (not e!445487))))

(declare-datatypes ((SeekEntryResult!8524 0))(
  ( (MissingZero!8524 (index!36463 (_ BitVec 32))) (Found!8524 (index!36464 (_ BitVec 32))) (Intermediate!8524 (undefined!9336 Bool) (index!36465 (_ BitVec 32)) (x!67323 (_ BitVec 32))) (Undefined!8524) (MissingVacant!8524 (index!36466 (_ BitVec 32))) )
))
(declare-fun lt!360030 () SeekEntryResult!8524)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!804036 (= res!548729 (or (= lt!360030 (MissingZero!8524 i!1163)) (= lt!360030 (MissingVacant!8524 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43699 (_ BitVec 32)) SeekEntryResult!8524)

(assert (=> b!804036 (= lt!360030 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!804037 () Bool)

(assert (=> b!804037 (= e!445487 false)))

(declare-fun lt!360031 () Bool)

(declare-datatypes ((List!14942 0))(
  ( (Nil!14939) (Cons!14938 (h!16067 (_ BitVec 64)) (t!21265 List!14942)) )
))
(declare-fun arrayNoDuplicates!0 (array!43699 (_ BitVec 32) List!14942) Bool)

(assert (=> b!804037 (= lt!360031 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14939))))

(declare-fun b!804038 () Bool)

(declare-fun res!548728 () Bool)

(assert (=> b!804038 (=> (not res!548728) (not e!445489))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804038 (= res!548728 (validKeyInArray!0 k0!2044))))

(declare-fun b!804039 () Bool)

(declare-fun res!548725 () Bool)

(assert (=> b!804039 (=> (not res!548725) (not e!445487))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43699 (_ BitVec 32)) Bool)

(assert (=> b!804039 (= res!548725 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804040 () Bool)

(declare-fun res!548730 () Bool)

(assert (=> b!804040 (=> (not res!548730) (not e!445489))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!804040 (= res!548730 (validKeyInArray!0 (select (arr!20926 a!3170) j!153)))))

(declare-fun b!804041 () Bool)

(declare-fun res!548727 () Bool)

(assert (=> b!804041 (=> (not res!548727) (not e!445489))))

(declare-fun arrayContainsKey!0 (array!43699 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804041 (= res!548727 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804042 () Bool)

(declare-fun res!548726 () Bool)

(assert (=> b!804042 (=> (not res!548726) (not e!445489))))

(assert (=> b!804042 (= res!548726 (and (= (size!21347 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21347 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21347 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68958 res!548731) b!804042))

(assert (= (and b!804042 res!548726) b!804040))

(assert (= (and b!804040 res!548730) b!804038))

(assert (= (and b!804038 res!548728) b!804041))

(assert (= (and b!804041 res!548727) b!804036))

(assert (= (and b!804036 res!548729) b!804039))

(assert (= (and b!804039 res!548725) b!804037))

(declare-fun m!746041 () Bool)

(assert (=> b!804038 m!746041))

(declare-fun m!746043 () Bool)

(assert (=> start!68958 m!746043))

(declare-fun m!746045 () Bool)

(assert (=> start!68958 m!746045))

(declare-fun m!746047 () Bool)

(assert (=> b!804036 m!746047))

(declare-fun m!746049 () Bool)

(assert (=> b!804040 m!746049))

(assert (=> b!804040 m!746049))

(declare-fun m!746051 () Bool)

(assert (=> b!804040 m!746051))

(declare-fun m!746053 () Bool)

(assert (=> b!804041 m!746053))

(declare-fun m!746055 () Bool)

(assert (=> b!804037 m!746055))

(declare-fun m!746057 () Bool)

(assert (=> b!804039 m!746057))

(check-sat (not start!68958) (not b!804041) (not b!804038) (not b!804039) (not b!804037) (not b!804040) (not b!804036))
(check-sat)
