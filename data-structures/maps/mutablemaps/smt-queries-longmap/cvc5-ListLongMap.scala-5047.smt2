; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68812 () Bool)

(assert start!68812)

(declare-fun res!546274 () Bool)

(declare-fun e!444332 () Bool)

(assert (=> start!68812 (=> (not res!546274) (not e!444332))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68812 (= res!546274 (validMask!0 mask!3266))))

(assert (=> start!68812 e!444332))

(assert (=> start!68812 true))

(declare-datatypes ((array!43553 0))(
  ( (array!43554 (arr!20853 (Array (_ BitVec 32) (_ BitVec 64))) (size!21274 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43553)

(declare-fun array_inv!16627 (array!43553) Bool)

(assert (=> start!68812 (array_inv!16627 a!3170)))

(declare-fun b!801584 () Bool)

(declare-fun e!444330 () Bool)

(assert (=> b!801584 (= e!444332 e!444330)))

(declare-fun res!546277 () Bool)

(assert (=> b!801584 (=> (not res!546277) (not e!444330))))

(declare-datatypes ((SeekEntryResult!8451 0))(
  ( (MissingZero!8451 (index!36171 (_ BitVec 32))) (Found!8451 (index!36172 (_ BitVec 32))) (Intermediate!8451 (undefined!9263 Bool) (index!36173 (_ BitVec 32)) (x!67058 (_ BitVec 32))) (Undefined!8451) (MissingVacant!8451 (index!36174 (_ BitVec 32))) )
))
(declare-fun lt!358364 () SeekEntryResult!8451)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!801584 (= res!546277 (or (= lt!358364 (MissingZero!8451 i!1163)) (= lt!358364 (MissingVacant!8451 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43553 (_ BitVec 32)) SeekEntryResult!8451)

(assert (=> b!801584 (= lt!358364 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!801585 () Bool)

(declare-fun res!546278 () Bool)

(assert (=> b!801585 (=> (not res!546278) (not e!444330))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!801585 (= res!546278 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21274 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20853 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21274 a!3170)) (= (select (arr!20853 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!801586 () Bool)

(declare-fun res!546279 () Bool)

(assert (=> b!801586 (=> (not res!546279) (not e!444330))))

(declare-datatypes ((List!14869 0))(
  ( (Nil!14866) (Cons!14865 (h!15994 (_ BitVec 64)) (t!21192 List!14869)) )
))
(declare-fun arrayNoDuplicates!0 (array!43553 (_ BitVec 32) List!14869) Bool)

(assert (=> b!801586 (= res!546279 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14866))))

(declare-fun b!801587 () Bool)

(declare-fun e!444331 () Bool)

(assert (=> b!801587 (= e!444331 (not (bvsge mask!3266 #b00000000000000000000000000000000)))))

(declare-fun lt!358366 () (_ BitVec 32))

(declare-fun lt!358363 () array!43553)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!358365 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43553 (_ BitVec 32)) SeekEntryResult!8451)

(assert (=> b!801587 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358366 vacantAfter!23 lt!358365 lt!358363 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358366 vacantBefore!23 (select (arr!20853 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27444 0))(
  ( (Unit!27445) )
))
(declare-fun lt!358362 () Unit!27444)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43553 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27444)

(assert (=> b!801587 (= lt!358362 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!358366 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!801587 (= lt!358366 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!801588 () Bool)

(declare-fun res!546276 () Bool)

(assert (=> b!801588 (=> (not res!546276) (not e!444332))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!801588 (= res!546276 (validKeyInArray!0 k!2044))))

(declare-fun b!801589 () Bool)

(declare-fun res!546273 () Bool)

(assert (=> b!801589 (=> (not res!546273) (not e!444332))))

(declare-fun arrayContainsKey!0 (array!43553 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!801589 (= res!546273 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!801590 () Bool)

(declare-fun res!546283 () Bool)

(assert (=> b!801590 (=> (not res!546283) (not e!444330))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43553 (_ BitVec 32)) Bool)

(assert (=> b!801590 (= res!546283 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!801591 () Bool)

(declare-fun e!444333 () Bool)

(assert (=> b!801591 (= e!444330 e!444333)))

(declare-fun res!546282 () Bool)

(assert (=> b!801591 (=> (not res!546282) (not e!444333))))

(assert (=> b!801591 (= res!546282 (= (seekEntryOrOpen!0 lt!358365 lt!358363 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358365 lt!358363 mask!3266)))))

(assert (=> b!801591 (= lt!358365 (select (store (arr!20853 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!801591 (= lt!358363 (array!43554 (store (arr!20853 a!3170) i!1163 k!2044) (size!21274 a!3170)))))

(declare-fun b!801592 () Bool)

(declare-fun res!546275 () Bool)

(assert (=> b!801592 (=> (not res!546275) (not e!444332))))

(assert (=> b!801592 (= res!546275 (validKeyInArray!0 (select (arr!20853 a!3170) j!153)))))

(declare-fun b!801593 () Bool)

(assert (=> b!801593 (= e!444333 e!444331)))

(declare-fun res!546280 () Bool)

(assert (=> b!801593 (=> (not res!546280) (not e!444331))))

(declare-fun lt!358361 () SeekEntryResult!8451)

(declare-fun lt!358360 () SeekEntryResult!8451)

(assert (=> b!801593 (= res!546280 (and (= lt!358361 lt!358360) (= lt!358360 (Found!8451 j!153)) (not (= (select (arr!20853 a!3170) index!1236) (select (arr!20853 a!3170) j!153)))))))

(assert (=> b!801593 (= lt!358360 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20853 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!801593 (= lt!358361 (seekEntryOrOpen!0 (select (arr!20853 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801594 () Bool)

(declare-fun res!546281 () Bool)

(assert (=> b!801594 (=> (not res!546281) (not e!444332))))

(assert (=> b!801594 (= res!546281 (and (= (size!21274 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21274 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21274 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68812 res!546274) b!801594))

(assert (= (and b!801594 res!546281) b!801592))

(assert (= (and b!801592 res!546275) b!801588))

(assert (= (and b!801588 res!546276) b!801589))

(assert (= (and b!801589 res!546273) b!801584))

(assert (= (and b!801584 res!546277) b!801590))

(assert (= (and b!801590 res!546283) b!801586))

(assert (= (and b!801586 res!546279) b!801585))

(assert (= (and b!801585 res!546278) b!801591))

(assert (= (and b!801591 res!546282) b!801593))

(assert (= (and b!801593 res!546280) b!801587))

(declare-fun m!742897 () Bool)

(assert (=> b!801584 m!742897))

(declare-fun m!742899 () Bool)

(assert (=> b!801589 m!742899))

(declare-fun m!742901 () Bool)

(assert (=> b!801588 m!742901))

(declare-fun m!742903 () Bool)

(assert (=> b!801592 m!742903))

(assert (=> b!801592 m!742903))

(declare-fun m!742905 () Bool)

(assert (=> b!801592 m!742905))

(declare-fun m!742907 () Bool)

(assert (=> start!68812 m!742907))

(declare-fun m!742909 () Bool)

(assert (=> start!68812 m!742909))

(declare-fun m!742911 () Bool)

(assert (=> b!801586 m!742911))

(declare-fun m!742913 () Bool)

(assert (=> b!801590 m!742913))

(assert (=> b!801587 m!742903))

(assert (=> b!801587 m!742903))

(declare-fun m!742915 () Bool)

(assert (=> b!801587 m!742915))

(declare-fun m!742917 () Bool)

(assert (=> b!801587 m!742917))

(declare-fun m!742919 () Bool)

(assert (=> b!801587 m!742919))

(declare-fun m!742921 () Bool)

(assert (=> b!801587 m!742921))

(declare-fun m!742923 () Bool)

(assert (=> b!801593 m!742923))

(assert (=> b!801593 m!742903))

(assert (=> b!801593 m!742903))

(declare-fun m!742925 () Bool)

(assert (=> b!801593 m!742925))

(assert (=> b!801593 m!742903))

(declare-fun m!742927 () Bool)

(assert (=> b!801593 m!742927))

(declare-fun m!742929 () Bool)

(assert (=> b!801585 m!742929))

(declare-fun m!742931 () Bool)

(assert (=> b!801585 m!742931))

(declare-fun m!742933 () Bool)

(assert (=> b!801591 m!742933))

(declare-fun m!742935 () Bool)

(assert (=> b!801591 m!742935))

(declare-fun m!742937 () Bool)

(assert (=> b!801591 m!742937))

(declare-fun m!742939 () Bool)

(assert (=> b!801591 m!742939))

(push 1)

