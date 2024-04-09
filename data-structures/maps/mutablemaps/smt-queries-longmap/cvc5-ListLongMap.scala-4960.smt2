; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68290 () Bool)

(assert start!68290)

(declare-fun res!537629 () Bool)

(declare-fun e!440566 () Bool)

(assert (=> start!68290 (=> (not res!537629) (not e!440566))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68290 (= res!537629 (validMask!0 mask!3266))))

(assert (=> start!68290 e!440566))

(assert (=> start!68290 true))

(declare-datatypes ((array!43031 0))(
  ( (array!43032 (arr!20592 (Array (_ BitVec 32) (_ BitVec 64))) (size!21013 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43031)

(declare-fun array_inv!16366 (array!43031) Bool)

(assert (=> start!68290 (array_inv!16366 a!3170)))

(declare-fun b!792936 () Bool)

(declare-fun e!440564 () Bool)

(assert (=> b!792936 (= e!440564 false)))

(declare-fun lt!353590 () Bool)

(declare-datatypes ((List!14608 0))(
  ( (Nil!14605) (Cons!14604 (h!15733 (_ BitVec 64)) (t!20931 List!14608)) )
))
(declare-fun arrayNoDuplicates!0 (array!43031 (_ BitVec 32) List!14608) Bool)

(assert (=> b!792936 (= lt!353590 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14605))))

(declare-fun b!792937 () Bool)

(declare-fun res!537626 () Bool)

(assert (=> b!792937 (=> (not res!537626) (not e!440564))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43031 (_ BitVec 32)) Bool)

(assert (=> b!792937 (= res!537626 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!792938 () Bool)

(declare-fun res!537630 () Bool)

(assert (=> b!792938 (=> (not res!537630) (not e!440566))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!792938 (= res!537630 (validKeyInArray!0 (select (arr!20592 a!3170) j!153)))))

(declare-fun b!792939 () Bool)

(declare-fun res!537627 () Bool)

(assert (=> b!792939 (=> (not res!537627) (not e!440566))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43031 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!792939 (= res!537627 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!792940 () Bool)

(declare-fun res!537631 () Bool)

(assert (=> b!792940 (=> (not res!537631) (not e!440566))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!792940 (= res!537631 (and (= (size!21013 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21013 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21013 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!792941 () Bool)

(assert (=> b!792941 (= e!440566 e!440564)))

(declare-fun res!537625 () Bool)

(assert (=> b!792941 (=> (not res!537625) (not e!440564))))

(declare-datatypes ((SeekEntryResult!8190 0))(
  ( (MissingZero!8190 (index!35127 (_ BitVec 32))) (Found!8190 (index!35128 (_ BitVec 32))) (Intermediate!8190 (undefined!9002 Bool) (index!35129 (_ BitVec 32)) (x!66101 (_ BitVec 32))) (Undefined!8190) (MissingVacant!8190 (index!35130 (_ BitVec 32))) )
))
(declare-fun lt!353589 () SeekEntryResult!8190)

(assert (=> b!792941 (= res!537625 (or (= lt!353589 (MissingZero!8190 i!1163)) (= lt!353589 (MissingVacant!8190 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43031 (_ BitVec 32)) SeekEntryResult!8190)

(assert (=> b!792941 (= lt!353589 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!792942 () Bool)

(declare-fun res!537628 () Bool)

(assert (=> b!792942 (=> (not res!537628) (not e!440566))))

(assert (=> b!792942 (= res!537628 (validKeyInArray!0 k!2044))))

(assert (= (and start!68290 res!537629) b!792940))

(assert (= (and b!792940 res!537631) b!792938))

(assert (= (and b!792938 res!537630) b!792942))

(assert (= (and b!792942 res!537628) b!792939))

(assert (= (and b!792939 res!537627) b!792941))

(assert (= (and b!792941 res!537625) b!792937))

(assert (= (and b!792937 res!537626) b!792936))

(declare-fun m!733525 () Bool)

(assert (=> b!792936 m!733525))

(declare-fun m!733527 () Bool)

(assert (=> b!792938 m!733527))

(assert (=> b!792938 m!733527))

(declare-fun m!733529 () Bool)

(assert (=> b!792938 m!733529))

(declare-fun m!733531 () Bool)

(assert (=> b!792937 m!733531))

(declare-fun m!733533 () Bool)

(assert (=> b!792942 m!733533))

(declare-fun m!733535 () Bool)

(assert (=> start!68290 m!733535))

(declare-fun m!733537 () Bool)

(assert (=> start!68290 m!733537))

(declare-fun m!733539 () Bool)

(assert (=> b!792939 m!733539))

(declare-fun m!733541 () Bool)

(assert (=> b!792941 m!733541))

(push 1)

