; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68266 () Bool)

(assert start!68266)

(declare-fun b!792657 () Bool)

(declare-fun res!537348 () Bool)

(declare-fun e!440457 () Bool)

(assert (=> b!792657 (=> (not res!537348) (not e!440457))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43007 0))(
  ( (array!43008 (arr!20580 (Array (_ BitVec 32) (_ BitVec 64))) (size!21001 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43007)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!792657 (= res!537348 (and (= (size!21001 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21001 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21001 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!792659 () Bool)

(declare-fun res!537346 () Bool)

(assert (=> b!792659 (=> (not res!537346) (not e!440457))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43007 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!792659 (= res!537346 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!792660 () Bool)

(declare-fun res!537351 () Bool)

(declare-fun e!440456 () Bool)

(assert (=> b!792660 (=> (not res!537351) (not e!440456))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43007 (_ BitVec 32)) Bool)

(assert (=> b!792660 (= res!537351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!792661 () Bool)

(assert (=> b!792661 (= e!440457 e!440456)))

(declare-fun res!537349 () Bool)

(assert (=> b!792661 (=> (not res!537349) (not e!440456))))

(declare-datatypes ((SeekEntryResult!8178 0))(
  ( (MissingZero!8178 (index!35079 (_ BitVec 32))) (Found!8178 (index!35080 (_ BitVec 32))) (Intermediate!8178 (undefined!8990 Bool) (index!35081 (_ BitVec 32)) (x!66057 (_ BitVec 32))) (Undefined!8178) (MissingVacant!8178 (index!35082 (_ BitVec 32))) )
))
(declare-fun lt!353535 () SeekEntryResult!8178)

(assert (=> b!792661 (= res!537349 (or (= lt!353535 (MissingZero!8178 i!1163)) (= lt!353535 (MissingVacant!8178 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43007 (_ BitVec 32)) SeekEntryResult!8178)

(assert (=> b!792661 (= lt!353535 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!537352 () Bool)

(assert (=> start!68266 (=> (not res!537352) (not e!440457))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68266 (= res!537352 (validMask!0 mask!3266))))

(assert (=> start!68266 e!440457))

(assert (=> start!68266 true))

(declare-fun array_inv!16354 (array!43007) Bool)

(assert (=> start!68266 (array_inv!16354 a!3170)))

(declare-fun b!792658 () Bool)

(declare-fun res!537347 () Bool)

(assert (=> b!792658 (=> (not res!537347) (not e!440457))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!792658 (= res!537347 (validKeyInArray!0 (select (arr!20580 a!3170) j!153)))))

(declare-fun b!792662 () Bool)

(declare-fun res!537350 () Bool)

(assert (=> b!792662 (=> (not res!537350) (not e!440457))))

(assert (=> b!792662 (= res!537350 (validKeyInArray!0 k!2044))))

(declare-fun b!792663 () Bool)

(assert (=> b!792663 (= e!440456 false)))

(declare-fun lt!353536 () Bool)

(declare-datatypes ((List!14596 0))(
  ( (Nil!14593) (Cons!14592 (h!15721 (_ BitVec 64)) (t!20919 List!14596)) )
))
(declare-fun arrayNoDuplicates!0 (array!43007 (_ BitVec 32) List!14596) Bool)

(assert (=> b!792663 (= lt!353536 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14593))))

(assert (= (and start!68266 res!537352) b!792657))

(assert (= (and b!792657 res!537348) b!792658))

(assert (= (and b!792658 res!537347) b!792662))

(assert (= (and b!792662 res!537350) b!792659))

(assert (= (and b!792659 res!537346) b!792661))

(assert (= (and b!792661 res!537349) b!792660))

(assert (= (and b!792660 res!537351) b!792663))

(declare-fun m!733267 () Bool)

(assert (=> b!792659 m!733267))

(declare-fun m!733269 () Bool)

(assert (=> b!792660 m!733269))

(declare-fun m!733271 () Bool)

(assert (=> b!792661 m!733271))

(declare-fun m!733273 () Bool)

(assert (=> b!792663 m!733273))

(declare-fun m!733275 () Bool)

(assert (=> start!68266 m!733275))

(declare-fun m!733277 () Bool)

(assert (=> start!68266 m!733277))

(declare-fun m!733279 () Bool)

(assert (=> b!792658 m!733279))

(assert (=> b!792658 m!733279))

(declare-fun m!733281 () Bool)

(assert (=> b!792658 m!733281))

(declare-fun m!733283 () Bool)

(assert (=> b!792662 m!733283))

(push 1)

