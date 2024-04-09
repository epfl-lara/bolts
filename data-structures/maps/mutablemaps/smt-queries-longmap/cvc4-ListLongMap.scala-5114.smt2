; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69422 () Bool)

(assert start!69422)

(declare-fun b!809048 () Bool)

(declare-fun e!447882 () Bool)

(declare-fun e!447880 () Bool)

(assert (=> b!809048 (= e!447882 e!447880)))

(declare-fun res!552952 () Bool)

(assert (=> b!809048 (=> (not res!552952) (not e!447880))))

(declare-datatypes ((SeekEntryResult!8654 0))(
  ( (MissingZero!8654 (index!36983 (_ BitVec 32))) (Found!8654 (index!36984 (_ BitVec 32))) (Intermediate!8654 (undefined!9466 Bool) (index!36985 (_ BitVec 32)) (x!67815 (_ BitVec 32))) (Undefined!8654) (MissingVacant!8654 (index!36986 (_ BitVec 32))) )
))
(declare-fun lt!362568 () SeekEntryResult!8654)

(declare-datatypes ((array!43971 0))(
  ( (array!43972 (arr!21056 (Array (_ BitVec 32) (_ BitVec 64))) (size!21477 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43971)

(declare-fun lt!362572 () SeekEntryResult!8654)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!809048 (= res!552952 (and (= lt!362572 lt!362568) (= lt!362568 (Found!8654 j!153)) (not (= (select (arr!21056 a!3170) index!1236) (select (arr!21056 a!3170) j!153)))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43971 (_ BitVec 32)) SeekEntryResult!8654)

(assert (=> b!809048 (= lt!362568 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21056 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43971 (_ BitVec 32)) SeekEntryResult!8654)

(assert (=> b!809048 (= lt!362572 (seekEntryOrOpen!0 (select (arr!21056 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!809049 () Bool)

(declare-fun res!552954 () Bool)

(declare-fun e!447879 () Bool)

(assert (=> b!809049 (=> (not res!552954) (not e!447879))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!809049 (= res!552954 (validKeyInArray!0 k!2044))))

(declare-fun b!809050 () Bool)

(declare-fun res!552945 () Bool)

(assert (=> b!809050 (=> (not res!552945) (not e!447879))))

(declare-fun arrayContainsKey!0 (array!43971 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!809050 (= res!552945 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!809051 () Bool)

(declare-fun res!552953 () Bool)

(declare-fun e!447881 () Bool)

(assert (=> b!809051 (=> (not res!552953) (not e!447881))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43971 (_ BitVec 32)) Bool)

(assert (=> b!809051 (= res!552953 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!809053 () Bool)

(declare-fun res!552947 () Bool)

(assert (=> b!809053 (=> (not res!552947) (not e!447879))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!809053 (= res!552947 (and (= (size!21477 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21477 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21477 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!809054 () Bool)

(declare-fun res!552948 () Bool)

(assert (=> b!809054 (=> (not res!552948) (not e!447879))))

(assert (=> b!809054 (= res!552948 (validKeyInArray!0 (select (arr!21056 a!3170) j!153)))))

(declare-fun b!809055 () Bool)

(declare-fun res!552955 () Bool)

(assert (=> b!809055 (=> (not res!552955) (not e!447881))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!809055 (= res!552955 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21477 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21056 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21477 a!3170)) (= (select (arr!21056 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!809056 () Bool)

(declare-fun res!552951 () Bool)

(assert (=> b!809056 (=> (not res!552951) (not e!447881))))

(declare-datatypes ((List!15072 0))(
  ( (Nil!15069) (Cons!15068 (h!16197 (_ BitVec 64)) (t!21395 List!15072)) )
))
(declare-fun arrayNoDuplicates!0 (array!43971 (_ BitVec 32) List!15072) Bool)

(assert (=> b!809056 (= res!552951 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15069))))

(declare-fun b!809052 () Bool)

(assert (=> b!809052 (= e!447880 false)))

(declare-fun lt!362570 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!809052 (= lt!362570 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun res!552950 () Bool)

(assert (=> start!69422 (=> (not res!552950) (not e!447879))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69422 (= res!552950 (validMask!0 mask!3266))))

(assert (=> start!69422 e!447879))

(assert (=> start!69422 true))

(declare-fun array_inv!16830 (array!43971) Bool)

(assert (=> start!69422 (array_inv!16830 a!3170)))

(declare-fun b!809057 () Bool)

(assert (=> b!809057 (= e!447881 e!447882)))

(declare-fun res!552949 () Bool)

(assert (=> b!809057 (=> (not res!552949) (not e!447882))))

(declare-fun lt!362571 () (_ BitVec 64))

(declare-fun lt!362569 () array!43971)

(assert (=> b!809057 (= res!552949 (= (seekEntryOrOpen!0 lt!362571 lt!362569 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362571 lt!362569 mask!3266)))))

(assert (=> b!809057 (= lt!362571 (select (store (arr!21056 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!809057 (= lt!362569 (array!43972 (store (arr!21056 a!3170) i!1163 k!2044) (size!21477 a!3170)))))

(declare-fun b!809058 () Bool)

(assert (=> b!809058 (= e!447879 e!447881)))

(declare-fun res!552946 () Bool)

(assert (=> b!809058 (=> (not res!552946) (not e!447881))))

(declare-fun lt!362567 () SeekEntryResult!8654)

(assert (=> b!809058 (= res!552946 (or (= lt!362567 (MissingZero!8654 i!1163)) (= lt!362567 (MissingVacant!8654 i!1163))))))

(assert (=> b!809058 (= lt!362567 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(assert (= (and start!69422 res!552950) b!809053))

(assert (= (and b!809053 res!552947) b!809054))

(assert (= (and b!809054 res!552948) b!809049))

(assert (= (and b!809049 res!552954) b!809050))

(assert (= (and b!809050 res!552945) b!809058))

(assert (= (and b!809058 res!552946) b!809051))

(assert (= (and b!809051 res!552953) b!809056))

(assert (= (and b!809056 res!552951) b!809055))

(assert (= (and b!809055 res!552955) b!809057))

(assert (= (and b!809057 res!552949) b!809048))

(assert (= (and b!809048 res!552952) b!809052))

(declare-fun m!751301 () Bool)

(assert (=> b!809058 m!751301))

(declare-fun m!751303 () Bool)

(assert (=> b!809051 m!751303))

(declare-fun m!751305 () Bool)

(assert (=> b!809049 m!751305))

(declare-fun m!751307 () Bool)

(assert (=> b!809056 m!751307))

(declare-fun m!751309 () Bool)

(assert (=> b!809048 m!751309))

(declare-fun m!751311 () Bool)

(assert (=> b!809048 m!751311))

(assert (=> b!809048 m!751311))

(declare-fun m!751313 () Bool)

(assert (=> b!809048 m!751313))

(assert (=> b!809048 m!751311))

(declare-fun m!751315 () Bool)

(assert (=> b!809048 m!751315))

(declare-fun m!751317 () Bool)

(assert (=> b!809050 m!751317))

(declare-fun m!751319 () Bool)

(assert (=> start!69422 m!751319))

(declare-fun m!751321 () Bool)

(assert (=> start!69422 m!751321))

(declare-fun m!751323 () Bool)

(assert (=> b!809052 m!751323))

(declare-fun m!751325 () Bool)

(assert (=> b!809055 m!751325))

(declare-fun m!751327 () Bool)

(assert (=> b!809055 m!751327))

(assert (=> b!809054 m!751311))

(assert (=> b!809054 m!751311))

(declare-fun m!751329 () Bool)

(assert (=> b!809054 m!751329))

(declare-fun m!751331 () Bool)

(assert (=> b!809057 m!751331))

(declare-fun m!751333 () Bool)

(assert (=> b!809057 m!751333))

(declare-fun m!751335 () Bool)

(assert (=> b!809057 m!751335))

(declare-fun m!751337 () Bool)

(assert (=> b!809057 m!751337))

(push 1)

(assert (not b!809056))

