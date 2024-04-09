; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68270 () Bool)

(assert start!68270)

(declare-fun b!792699 () Bool)

(declare-fun res!537391 () Bool)

(declare-fun e!440474 () Bool)

(assert (=> b!792699 (=> (not res!537391) (not e!440474))))

(declare-datatypes ((array!43011 0))(
  ( (array!43012 (arr!20582 (Array (_ BitVec 32) (_ BitVec 64))) (size!21003 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43011)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43011 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!792699 (= res!537391 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!792700 () Bool)

(declare-fun res!537394 () Bool)

(assert (=> b!792700 (=> (not res!537394) (not e!440474))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!792700 (= res!537394 (validKeyInArray!0 k!2044))))

(declare-fun b!792701 () Bool)

(declare-fun e!440475 () Bool)

(assert (=> b!792701 (= e!440475 false)))

(declare-fun lt!353548 () Bool)

(declare-datatypes ((List!14598 0))(
  ( (Nil!14595) (Cons!14594 (h!15723 (_ BitVec 64)) (t!20921 List!14598)) )
))
(declare-fun arrayNoDuplicates!0 (array!43011 (_ BitVec 32) List!14598) Bool)

(assert (=> b!792701 (= lt!353548 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14595))))

(declare-fun b!792702 () Bool)

(assert (=> b!792702 (= e!440474 e!440475)))

(declare-fun res!537393 () Bool)

(assert (=> b!792702 (=> (not res!537393) (not e!440475))))

(declare-datatypes ((SeekEntryResult!8180 0))(
  ( (MissingZero!8180 (index!35087 (_ BitVec 32))) (Found!8180 (index!35088 (_ BitVec 32))) (Intermediate!8180 (undefined!8992 Bool) (index!35089 (_ BitVec 32)) (x!66059 (_ BitVec 32))) (Undefined!8180) (MissingVacant!8180 (index!35090 (_ BitVec 32))) )
))
(declare-fun lt!353547 () SeekEntryResult!8180)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!792702 (= res!537393 (or (= lt!353547 (MissingZero!8180 i!1163)) (= lt!353547 (MissingVacant!8180 i!1163))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43011 (_ BitVec 32)) SeekEntryResult!8180)

(assert (=> b!792702 (= lt!353547 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!792703 () Bool)

(declare-fun res!537388 () Bool)

(assert (=> b!792703 (=> (not res!537388) (not e!440474))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!792703 (= res!537388 (and (= (size!21003 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21003 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21003 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!792704 () Bool)

(declare-fun res!537392 () Bool)

(assert (=> b!792704 (=> (not res!537392) (not e!440474))))

(assert (=> b!792704 (= res!537392 (validKeyInArray!0 (select (arr!20582 a!3170) j!153)))))

(declare-fun res!537390 () Bool)

(assert (=> start!68270 (=> (not res!537390) (not e!440474))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68270 (= res!537390 (validMask!0 mask!3266))))

(assert (=> start!68270 e!440474))

(assert (=> start!68270 true))

(declare-fun array_inv!16356 (array!43011) Bool)

(assert (=> start!68270 (array_inv!16356 a!3170)))

(declare-fun b!792705 () Bool)

(declare-fun res!537389 () Bool)

(assert (=> b!792705 (=> (not res!537389) (not e!440475))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43011 (_ BitVec 32)) Bool)

(assert (=> b!792705 (= res!537389 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(assert (= (and start!68270 res!537390) b!792703))

(assert (= (and b!792703 res!537388) b!792704))

(assert (= (and b!792704 res!537392) b!792700))

(assert (= (and b!792700 res!537394) b!792699))

(assert (= (and b!792699 res!537391) b!792702))

(assert (= (and b!792702 res!537393) b!792705))

(assert (= (and b!792705 res!537389) b!792701))

(declare-fun m!733303 () Bool)

(assert (=> b!792705 m!733303))

(declare-fun m!733305 () Bool)

(assert (=> b!792701 m!733305))

(declare-fun m!733307 () Bool)

(assert (=> b!792699 m!733307))

(declare-fun m!733309 () Bool)

(assert (=> start!68270 m!733309))

(declare-fun m!733311 () Bool)

(assert (=> start!68270 m!733311))

(declare-fun m!733313 () Bool)

(assert (=> b!792700 m!733313))

(declare-fun m!733315 () Bool)

(assert (=> b!792704 m!733315))

(assert (=> b!792704 m!733315))

(declare-fun m!733317 () Bool)

(assert (=> b!792704 m!733317))

(declare-fun m!733319 () Bool)

(assert (=> b!792702 m!733319))

(push 1)

(assert (not b!792699))

(assert (not b!792700))

(assert (not b!792702))

(assert (not b!792704))

