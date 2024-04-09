; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68254 () Bool)

(assert start!68254)

(declare-fun b!792522 () Bool)

(declare-fun res!537214 () Bool)

(declare-fun e!440403 () Bool)

(assert (=> b!792522 (=> (not res!537214) (not e!440403))))

(declare-datatypes ((array!42995 0))(
  ( (array!42996 (arr!20574 (Array (_ BitVec 32) (_ BitVec 64))) (size!20995 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42995)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!792522 (= res!537214 (validKeyInArray!0 (select (arr!20574 a!3170) j!153)))))

(declare-fun b!792524 () Bool)

(declare-fun res!537212 () Bool)

(assert (=> b!792524 (=> (not res!537212) (not e!440403))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!792524 (= res!537212 (validKeyInArray!0 k!2044))))

(declare-fun b!792525 () Bool)

(declare-fun e!440402 () Bool)

(assert (=> b!792525 (= e!440402 false)))

(declare-fun lt!353509 () Bool)

(declare-datatypes ((List!14590 0))(
  ( (Nil!14587) (Cons!14586 (h!15715 (_ BitVec 64)) (t!20913 List!14590)) )
))
(declare-fun arrayNoDuplicates!0 (array!42995 (_ BitVec 32) List!14590) Bool)

(assert (=> b!792525 (= lt!353509 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14587))))

(declare-fun b!792526 () Bool)

(declare-fun res!537217 () Bool)

(assert (=> b!792526 (=> (not res!537217) (not e!440402))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42995 (_ BitVec 32)) Bool)

(assert (=> b!792526 (= res!537217 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!537213 () Bool)

(assert (=> start!68254 (=> (not res!537213) (not e!440403))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68254 (= res!537213 (validMask!0 mask!3266))))

(assert (=> start!68254 e!440403))

(assert (=> start!68254 true))

(declare-fun array_inv!16348 (array!42995) Bool)

(assert (=> start!68254 (array_inv!16348 a!3170)))

(declare-fun b!792523 () Bool)

(declare-fun res!537216 () Bool)

(assert (=> b!792523 (=> (not res!537216) (not e!440403))))

(declare-fun arrayContainsKey!0 (array!42995 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!792523 (= res!537216 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!792527 () Bool)

(assert (=> b!792527 (= e!440403 e!440402)))

(declare-fun res!537211 () Bool)

(assert (=> b!792527 (=> (not res!537211) (not e!440402))))

(declare-datatypes ((SeekEntryResult!8172 0))(
  ( (MissingZero!8172 (index!35055 (_ BitVec 32))) (Found!8172 (index!35056 (_ BitVec 32))) (Intermediate!8172 (undefined!8984 Bool) (index!35057 (_ BitVec 32)) (x!66035 (_ BitVec 32))) (Undefined!8172) (MissingVacant!8172 (index!35058 (_ BitVec 32))) )
))
(declare-fun lt!353508 () SeekEntryResult!8172)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!792527 (= res!537211 (or (= lt!353508 (MissingZero!8172 i!1163)) (= lt!353508 (MissingVacant!8172 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42995 (_ BitVec 32)) SeekEntryResult!8172)

(assert (=> b!792527 (= lt!353508 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!792528 () Bool)

(declare-fun res!537215 () Bool)

(assert (=> b!792528 (=> (not res!537215) (not e!440403))))

(assert (=> b!792528 (= res!537215 (and (= (size!20995 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20995 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20995 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68254 res!537213) b!792528))

(assert (= (and b!792528 res!537215) b!792522))

(assert (= (and b!792522 res!537214) b!792524))

(assert (= (and b!792524 res!537212) b!792523))

(assert (= (and b!792523 res!537216) b!792527))

(assert (= (and b!792527 res!537211) b!792526))

(assert (= (and b!792526 res!537217) b!792525))

(declare-fun m!733147 () Bool)

(assert (=> b!792523 m!733147))

(declare-fun m!733149 () Bool)

(assert (=> b!792525 m!733149))

(declare-fun m!733151 () Bool)

(assert (=> b!792526 m!733151))

(declare-fun m!733153 () Bool)

(assert (=> b!792527 m!733153))

(declare-fun m!733155 () Bool)

(assert (=> start!68254 m!733155))

(declare-fun m!733157 () Bool)

(assert (=> start!68254 m!733157))

(declare-fun m!733159 () Bool)

(assert (=> b!792524 m!733159))

(declare-fun m!733161 () Bool)

(assert (=> b!792522 m!733161))

(assert (=> b!792522 m!733161))

(declare-fun m!733163 () Bool)

(assert (=> b!792522 m!733163))

(push 1)

