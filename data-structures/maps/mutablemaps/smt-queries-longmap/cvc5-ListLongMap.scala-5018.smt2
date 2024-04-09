; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68638 () Bool)

(assert start!68638)

(declare-fun b!798315 () Bool)

(declare-fun res!543010 () Bool)

(declare-fun e!442843 () Bool)

(assert (=> b!798315 (=> (not res!543010) (not e!442843))))

(declare-datatypes ((array!43379 0))(
  ( (array!43380 (arr!20766 (Array (_ BitVec 32) (_ BitVec 64))) (size!21187 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43379)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43379 (_ BitVec 32)) Bool)

(assert (=> b!798315 (= res!543010 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!798316 () Bool)

(declare-fun res!543004 () Bool)

(declare-fun e!442845 () Bool)

(assert (=> b!798316 (=> (not res!543004) (not e!442845))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798316 (= res!543004 (validKeyInArray!0 k!2044))))

(declare-fun b!798317 () Bool)

(declare-fun res!543007 () Bool)

(assert (=> b!798317 (=> (not res!543007) (not e!442843))))

(declare-datatypes ((List!14782 0))(
  ( (Nil!14779) (Cons!14778 (h!15907 (_ BitVec 64)) (t!21105 List!14782)) )
))
(declare-fun arrayNoDuplicates!0 (array!43379 (_ BitVec 32) List!14782) Bool)

(assert (=> b!798317 (= res!543007 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14779))))

(declare-fun b!798318 () Bool)

(declare-fun res!543012 () Bool)

(assert (=> b!798318 (=> (not res!543012) (not e!442845))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!798318 (= res!543012 (and (= (size!21187 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21187 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21187 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!798319 () Bool)

(declare-fun res!543008 () Bool)

(assert (=> b!798319 (=> (not res!543008) (not e!442845))))

(declare-fun arrayContainsKey!0 (array!43379 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!798319 (= res!543008 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!543011 () Bool)

(assert (=> start!68638 (=> (not res!543011) (not e!442845))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68638 (= res!543011 (validMask!0 mask!3266))))

(assert (=> start!68638 e!442845))

(assert (=> start!68638 true))

(declare-fun array_inv!16540 (array!43379) Bool)

(assert (=> start!68638 (array_inv!16540 a!3170)))

(declare-fun b!798320 () Bool)

(assert (=> b!798320 (= e!442845 e!442843)))

(declare-fun res!543005 () Bool)

(assert (=> b!798320 (=> (not res!543005) (not e!442843))))

(declare-datatypes ((SeekEntryResult!8364 0))(
  ( (MissingZero!8364 (index!35823 (_ BitVec 32))) (Found!8364 (index!35824 (_ BitVec 32))) (Intermediate!8364 (undefined!9176 Bool) (index!35825 (_ BitVec 32)) (x!66739 (_ BitVec 32))) (Undefined!8364) (MissingVacant!8364 (index!35826 (_ BitVec 32))) )
))
(declare-fun lt!356386 () SeekEntryResult!8364)

(assert (=> b!798320 (= res!543005 (or (= lt!356386 (MissingZero!8364 i!1163)) (= lt!356386 (MissingVacant!8364 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43379 (_ BitVec 32)) SeekEntryResult!8364)

(assert (=> b!798320 (= lt!356386 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!798321 () Bool)

(declare-fun res!543006 () Bool)

(assert (=> b!798321 (=> (not res!543006) (not e!442843))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!798321 (= res!543006 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21187 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20766 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21187 a!3170)) (= (select (arr!20766 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!798322 () Bool)

(declare-fun e!442846 () Bool)

(assert (=> b!798322 (= e!442846 false)))

(declare-fun lt!356385 () SeekEntryResult!8364)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43379 (_ BitVec 32)) SeekEntryResult!8364)

(assert (=> b!798322 (= lt!356385 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20766 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!356387 () SeekEntryResult!8364)

(assert (=> b!798322 (= lt!356387 (seekEntryOrOpen!0 (select (arr!20766 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798323 () Bool)

(declare-fun res!543013 () Bool)

(assert (=> b!798323 (=> (not res!543013) (not e!442845))))

(assert (=> b!798323 (= res!543013 (validKeyInArray!0 (select (arr!20766 a!3170) j!153)))))

(declare-fun b!798324 () Bool)

(assert (=> b!798324 (= e!442843 e!442846)))

(declare-fun res!543009 () Bool)

(assert (=> b!798324 (=> (not res!543009) (not e!442846))))

(declare-fun lt!356389 () (_ BitVec 64))

(declare-fun lt!356388 () array!43379)

(assert (=> b!798324 (= res!543009 (= (seekEntryOrOpen!0 lt!356389 lt!356388 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356389 lt!356388 mask!3266)))))

(assert (=> b!798324 (= lt!356389 (select (store (arr!20766 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!798324 (= lt!356388 (array!43380 (store (arr!20766 a!3170) i!1163 k!2044) (size!21187 a!3170)))))

(assert (= (and start!68638 res!543011) b!798318))

(assert (= (and b!798318 res!543012) b!798323))

(assert (= (and b!798323 res!543013) b!798316))

(assert (= (and b!798316 res!543004) b!798319))

(assert (= (and b!798319 res!543008) b!798320))

(assert (= (and b!798320 res!543005) b!798315))

(assert (= (and b!798315 res!543010) b!798317))

(assert (= (and b!798317 res!543007) b!798321))

(assert (= (and b!798321 res!543006) b!798324))

(assert (= (and b!798324 res!543009) b!798322))

(declare-fun m!739321 () Bool)

(assert (=> b!798322 m!739321))

(assert (=> b!798322 m!739321))

(declare-fun m!739323 () Bool)

(assert (=> b!798322 m!739323))

(assert (=> b!798322 m!739321))

(declare-fun m!739325 () Bool)

(assert (=> b!798322 m!739325))

(declare-fun m!739327 () Bool)

(assert (=> start!68638 m!739327))

(declare-fun m!739329 () Bool)

(assert (=> start!68638 m!739329))

(declare-fun m!739331 () Bool)

(assert (=> b!798320 m!739331))

(declare-fun m!739333 () Bool)

(assert (=> b!798319 m!739333))

(declare-fun m!739335 () Bool)

(assert (=> b!798316 m!739335))

(declare-fun m!739337 () Bool)

(assert (=> b!798321 m!739337))

(declare-fun m!739339 () Bool)

(assert (=> b!798321 m!739339))

(declare-fun m!739341 () Bool)

(assert (=> b!798315 m!739341))

(declare-fun m!739343 () Bool)

(assert (=> b!798324 m!739343))

(declare-fun m!739345 () Bool)

(assert (=> b!798324 m!739345))

(declare-fun m!739347 () Bool)

(assert (=> b!798324 m!739347))

(declare-fun m!739349 () Bool)

(assert (=> b!798324 m!739349))

(assert (=> b!798323 m!739321))

(assert (=> b!798323 m!739321))

(declare-fun m!739351 () Bool)

(assert (=> b!798323 m!739351))

(declare-fun m!739353 () Bool)

(assert (=> b!798317 m!739353))

(push 1)

