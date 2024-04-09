; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68964 () Bool)

(assert start!68964)

(declare-fun b!804099 () Bool)

(declare-fun res!548790 () Bool)

(declare-fun e!445515 () Bool)

(assert (=> b!804099 (=> (not res!548790) (not e!445515))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804099 (= res!548790 (validKeyInArray!0 k0!2044))))

(declare-fun b!804100 () Bool)

(declare-fun res!548794 () Bool)

(assert (=> b!804100 (=> (not res!548794) (not e!445515))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43705 0))(
  ( (array!43706 (arr!20929 (Array (_ BitVec 32) (_ BitVec 64))) (size!21350 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43705)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!804100 (= res!548794 (and (= (size!21350 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21350 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21350 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804101 () Bool)

(declare-fun res!548789 () Bool)

(assert (=> b!804101 (=> (not res!548789) (not e!445515))))

(declare-fun arrayContainsKey!0 (array!43705 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804101 (= res!548789 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804102 () Bool)

(declare-fun res!548788 () Bool)

(assert (=> b!804102 (=> (not res!548788) (not e!445515))))

(assert (=> b!804102 (= res!548788 (validKeyInArray!0 (select (arr!20929 a!3170) j!153)))))

(declare-fun b!804103 () Bool)

(declare-fun e!445514 () Bool)

(assert (=> b!804103 (= e!445515 e!445514)))

(declare-fun res!548792 () Bool)

(assert (=> b!804103 (=> (not res!548792) (not e!445514))))

(declare-datatypes ((SeekEntryResult!8527 0))(
  ( (MissingZero!8527 (index!36475 (_ BitVec 32))) (Found!8527 (index!36476 (_ BitVec 32))) (Intermediate!8527 (undefined!9339 Bool) (index!36477 (_ BitVec 32)) (x!67334 (_ BitVec 32))) (Undefined!8527) (MissingVacant!8527 (index!36478 (_ BitVec 32))) )
))
(declare-fun lt!360048 () SeekEntryResult!8527)

(assert (=> b!804103 (= res!548792 (or (= lt!360048 (MissingZero!8527 i!1163)) (= lt!360048 (MissingVacant!8527 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43705 (_ BitVec 32)) SeekEntryResult!8527)

(assert (=> b!804103 (= lt!360048 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun res!548791 () Bool)

(assert (=> start!68964 (=> (not res!548791) (not e!445515))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68964 (= res!548791 (validMask!0 mask!3266))))

(assert (=> start!68964 e!445515))

(assert (=> start!68964 true))

(declare-fun array_inv!16703 (array!43705) Bool)

(assert (=> start!68964 (array_inv!16703 a!3170)))

(declare-fun b!804104 () Bool)

(declare-fun res!548793 () Bool)

(assert (=> b!804104 (=> (not res!548793) (not e!445514))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43705 (_ BitVec 32)) Bool)

(assert (=> b!804104 (= res!548793 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804105 () Bool)

(assert (=> b!804105 (= e!445514 false)))

(declare-fun lt!360049 () Bool)

(declare-datatypes ((List!14945 0))(
  ( (Nil!14942) (Cons!14941 (h!16070 (_ BitVec 64)) (t!21268 List!14945)) )
))
(declare-fun arrayNoDuplicates!0 (array!43705 (_ BitVec 32) List!14945) Bool)

(assert (=> b!804105 (= lt!360049 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14942))))

(assert (= (and start!68964 res!548791) b!804100))

(assert (= (and b!804100 res!548794) b!804102))

(assert (= (and b!804102 res!548788) b!804099))

(assert (= (and b!804099 res!548790) b!804101))

(assert (= (and b!804101 res!548789) b!804103))

(assert (= (and b!804103 res!548792) b!804104))

(assert (= (and b!804104 res!548793) b!804105))

(declare-fun m!746095 () Bool)

(assert (=> b!804105 m!746095))

(declare-fun m!746097 () Bool)

(assert (=> b!804099 m!746097))

(declare-fun m!746099 () Bool)

(assert (=> b!804103 m!746099))

(declare-fun m!746101 () Bool)

(assert (=> b!804104 m!746101))

(declare-fun m!746103 () Bool)

(assert (=> b!804101 m!746103))

(declare-fun m!746105 () Bool)

(assert (=> start!68964 m!746105))

(declare-fun m!746107 () Bool)

(assert (=> start!68964 m!746107))

(declare-fun m!746109 () Bool)

(assert (=> b!804102 m!746109))

(assert (=> b!804102 m!746109))

(declare-fun m!746111 () Bool)

(assert (=> b!804102 m!746111))

(check-sat (not b!804101) (not b!804105) (not b!804099) (not b!804104) (not start!68964) (not b!804103) (not b!804102))
(check-sat)
