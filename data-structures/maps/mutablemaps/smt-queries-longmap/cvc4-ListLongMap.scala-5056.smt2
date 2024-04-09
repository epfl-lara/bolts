; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68870 () Bool)

(assert start!68870)

(declare-fun b!802559 () Bool)

(declare-fun res!547250 () Bool)

(declare-fun e!444787 () Bool)

(assert (=> b!802559 (=> (not res!547250) (not e!444787))))

(declare-datatypes ((array!43611 0))(
  ( (array!43612 (arr!20882 (Array (_ BitVec 32) (_ BitVec 64))) (size!21303 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43611)

(declare-datatypes ((List!14898 0))(
  ( (Nil!14895) (Cons!14894 (h!16023 (_ BitVec 64)) (t!21221 List!14898)) )
))
(declare-fun arrayNoDuplicates!0 (array!43611 (_ BitVec 32) List!14898) Bool)

(assert (=> b!802559 (= res!547250 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14895))))

(declare-fun b!802560 () Bool)

(declare-fun e!444784 () Bool)

(assert (=> b!802560 (= e!444787 e!444784)))

(declare-fun res!547248 () Bool)

(assert (=> b!802560 (=> (not res!547248) (not e!444784))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!359000 () (_ BitVec 64))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!358998 () array!43611)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8480 0))(
  ( (MissingZero!8480 (index!36287 (_ BitVec 32))) (Found!8480 (index!36288 (_ BitVec 32))) (Intermediate!8480 (undefined!9292 Bool) (index!36289 (_ BitVec 32)) (x!67159 (_ BitVec 32))) (Undefined!8480) (MissingVacant!8480 (index!36290 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43611 (_ BitVec 32)) SeekEntryResult!8480)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43611 (_ BitVec 32)) SeekEntryResult!8480)

(assert (=> b!802560 (= res!547248 (= (seekEntryOrOpen!0 lt!359000 lt!358998 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359000 lt!358998 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!802560 (= lt!359000 (select (store (arr!20882 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!802560 (= lt!358998 (array!43612 (store (arr!20882 a!3170) i!1163 k!2044) (size!21303 a!3170)))))

(declare-fun b!802561 () Bool)

(declare-fun res!547252 () Bool)

(declare-fun e!444786 () Bool)

(assert (=> b!802561 (=> (not res!547252) (not e!444786))))

(assert (=> b!802561 (= res!547252 (and (= (size!21303 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21303 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21303 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!802562 () Bool)

(declare-fun res!547254 () Bool)

(assert (=> b!802562 (=> (not res!547254) (not e!444786))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!802562 (= res!547254 (validKeyInArray!0 (select (arr!20882 a!3170) j!153)))))

(declare-fun b!802564 () Bool)

(assert (=> b!802564 (= e!444786 e!444787)))

(declare-fun res!547255 () Bool)

(assert (=> b!802564 (=> (not res!547255) (not e!444787))))

(declare-fun lt!358997 () SeekEntryResult!8480)

(assert (=> b!802564 (= res!547255 (or (= lt!358997 (MissingZero!8480 i!1163)) (= lt!358997 (MissingVacant!8480 i!1163))))))

(assert (=> b!802564 (= lt!358997 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!802565 () Bool)

(declare-fun res!547258 () Bool)

(assert (=> b!802565 (=> (not res!547258) (not e!444787))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!802565 (= res!547258 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21303 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20882 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21303 a!3170)) (= (select (arr!20882 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!802566 () Bool)

(declare-fun res!547257 () Bool)

(assert (=> b!802566 (=> (not res!547257) (not e!444786))))

(declare-fun arrayContainsKey!0 (array!43611 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!802566 (= res!547257 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!802567 () Bool)

(declare-fun e!444785 () Bool)

(assert (=> b!802567 (= e!444785 (not true))))

(declare-fun lt!358996 () (_ BitVec 32))

(assert (=> b!802567 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358996 vacantAfter!23 lt!359000 lt!358998 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358996 vacantBefore!23 (select (arr!20882 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27502 0))(
  ( (Unit!27503) )
))
(declare-fun lt!359002 () Unit!27502)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43611 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27502)

(assert (=> b!802567 (= lt!359002 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!358996 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!802567 (= lt!358996 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!802568 () Bool)

(declare-fun res!547251 () Bool)

(assert (=> b!802568 (=> (not res!547251) (not e!444786))))

(assert (=> b!802568 (= res!547251 (validKeyInArray!0 k!2044))))

(declare-fun b!802569 () Bool)

(declare-fun res!547256 () Bool)

(assert (=> b!802569 (=> (not res!547256) (not e!444787))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43611 (_ BitVec 32)) Bool)

(assert (=> b!802569 (= res!547256 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!802563 () Bool)

(assert (=> b!802563 (= e!444784 e!444785)))

(declare-fun res!547253 () Bool)

(assert (=> b!802563 (=> (not res!547253) (not e!444785))))

(declare-fun lt!358999 () SeekEntryResult!8480)

(declare-fun lt!359001 () SeekEntryResult!8480)

(assert (=> b!802563 (= res!547253 (and (= lt!359001 lt!358999) (= lt!358999 (Found!8480 j!153)) (not (= (select (arr!20882 a!3170) index!1236) (select (arr!20882 a!3170) j!153)))))))

(assert (=> b!802563 (= lt!358999 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20882 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!802563 (= lt!359001 (seekEntryOrOpen!0 (select (arr!20882 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!547249 () Bool)

(assert (=> start!68870 (=> (not res!547249) (not e!444786))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68870 (= res!547249 (validMask!0 mask!3266))))

(assert (=> start!68870 e!444786))

(assert (=> start!68870 true))

(declare-fun array_inv!16656 (array!43611) Bool)

(assert (=> start!68870 (array_inv!16656 a!3170)))

(assert (= (and start!68870 res!547249) b!802561))

(assert (= (and b!802561 res!547252) b!802562))

(assert (= (and b!802562 res!547254) b!802568))

(assert (= (and b!802568 res!547251) b!802566))

(assert (= (and b!802566 res!547257) b!802564))

(assert (= (and b!802564 res!547255) b!802569))

(assert (= (and b!802569 res!547256) b!802559))

(assert (= (and b!802559 res!547250) b!802565))

(assert (= (and b!802565 res!547258) b!802560))

(assert (= (and b!802560 res!547248) b!802563))

(assert (= (and b!802563 res!547253) b!802567))

(declare-fun m!744191 () Bool)

(assert (=> b!802565 m!744191))

(declare-fun m!744193 () Bool)

(assert (=> b!802565 m!744193))

(declare-fun m!744195 () Bool)

(assert (=> b!802560 m!744195))

(declare-fun m!744197 () Bool)

(assert (=> b!802560 m!744197))

(declare-fun m!744199 () Bool)

(assert (=> b!802560 m!744199))

(declare-fun m!744201 () Bool)

(assert (=> b!802560 m!744201))

(declare-fun m!744203 () Bool)

(assert (=> b!802562 m!744203))

(assert (=> b!802562 m!744203))

(declare-fun m!744205 () Bool)

(assert (=> b!802562 m!744205))

(declare-fun m!744207 () Bool)

(assert (=> b!802563 m!744207))

(assert (=> b!802563 m!744203))

(assert (=> b!802563 m!744203))

(declare-fun m!744209 () Bool)

(assert (=> b!802563 m!744209))

(assert (=> b!802563 m!744203))

(declare-fun m!744211 () Bool)

(assert (=> b!802563 m!744211))

(declare-fun m!744213 () Bool)

(assert (=> b!802559 m!744213))

(declare-fun m!744215 () Bool)

(assert (=> b!802569 m!744215))

(declare-fun m!744217 () Bool)

(assert (=> b!802564 m!744217))

(declare-fun m!744219 () Bool)

(assert (=> b!802566 m!744219))

(declare-fun m!744221 () Bool)

(assert (=> start!68870 m!744221))

(declare-fun m!744223 () Bool)

(assert (=> start!68870 m!744223))

(assert (=> b!802567 m!744203))

(declare-fun m!744225 () Bool)

(assert (=> b!802567 m!744225))

(assert (=> b!802567 m!744203))

(declare-fun m!744227 () Bool)

(assert (=> b!802567 m!744227))

(declare-fun m!744229 () Bool)

(assert (=> b!802567 m!744229))

(declare-fun m!744231 () Bool)

(assert (=> b!802567 m!744231))

(declare-fun m!744233 () Bool)

(assert (=> b!802568 m!744233))

(push 1)

