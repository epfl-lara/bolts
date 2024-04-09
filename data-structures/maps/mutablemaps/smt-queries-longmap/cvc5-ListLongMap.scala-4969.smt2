; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68344 () Bool)

(assert start!68344)

(declare-fun b!793615 () Bool)

(declare-fun res!538312 () Bool)

(declare-fun e!440816 () Bool)

(assert (=> b!793615 (=> (not res!538312) (not e!440816))))

(declare-datatypes ((array!43085 0))(
  ( (array!43086 (arr!20619 (Array (_ BitVec 32) (_ BitVec 64))) (size!21040 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43085)

(declare-datatypes ((List!14635 0))(
  ( (Nil!14632) (Cons!14631 (h!15760 (_ BitVec 64)) (t!20958 List!14635)) )
))
(declare-fun arrayNoDuplicates!0 (array!43085 (_ BitVec 32) List!14635) Bool)

(assert (=> b!793615 (= res!538312 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14632))))

(declare-fun b!793616 () Bool)

(declare-fun res!538308 () Bool)

(declare-fun e!440817 () Bool)

(assert (=> b!793616 (=> (not res!538308) (not e!440817))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!793616 (= res!538308 (and (= (size!21040 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21040 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21040 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793617 () Bool)

(assert (=> b!793617 (= e!440816 false)))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!353788 () array!43085)

(declare-datatypes ((SeekEntryResult!8217 0))(
  ( (MissingZero!8217 (index!35235 (_ BitVec 32))) (Found!8217 (index!35236 (_ BitVec 32))) (Intermediate!8217 (undefined!9029 Bool) (index!35237 (_ BitVec 32)) (x!66200 (_ BitVec 32))) (Undefined!8217) (MissingVacant!8217 (index!35238 (_ BitVec 32))) )
))
(declare-fun lt!353785 () SeekEntryResult!8217)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!353786 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43085 (_ BitVec 32)) SeekEntryResult!8217)

(assert (=> b!793617 (= lt!353785 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!353786 lt!353788 mask!3266))))

(declare-fun lt!353787 () SeekEntryResult!8217)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43085 (_ BitVec 32)) SeekEntryResult!8217)

(assert (=> b!793617 (= lt!353787 (seekEntryOrOpen!0 lt!353786 lt!353788 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!793617 (= lt!353786 (select (store (arr!20619 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!793617 (= lt!353788 (array!43086 (store (arr!20619 a!3170) i!1163 k!2044) (size!21040 a!3170)))))

(declare-fun b!793618 () Bool)

(declare-fun res!538310 () Bool)

(assert (=> b!793618 (=> (not res!538310) (not e!440817))))

(declare-fun arrayContainsKey!0 (array!43085 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793618 (= res!538310 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!793619 () Bool)

(declare-fun res!538307 () Bool)

(assert (=> b!793619 (=> (not res!538307) (not e!440817))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793619 (= res!538307 (validKeyInArray!0 (select (arr!20619 a!3170) j!153)))))

(declare-fun res!538311 () Bool)

(assert (=> start!68344 (=> (not res!538311) (not e!440817))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68344 (= res!538311 (validMask!0 mask!3266))))

(assert (=> start!68344 e!440817))

(assert (=> start!68344 true))

(declare-fun array_inv!16393 (array!43085) Bool)

(assert (=> start!68344 (array_inv!16393 a!3170)))

(declare-fun b!793620 () Bool)

(declare-fun res!538306 () Bool)

(assert (=> b!793620 (=> (not res!538306) (not e!440816))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43085 (_ BitVec 32)) Bool)

(assert (=> b!793620 (= res!538306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!793621 () Bool)

(declare-fun res!538309 () Bool)

(assert (=> b!793621 (=> (not res!538309) (not e!440816))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!793621 (= res!538309 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21040 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20619 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21040 a!3170)) (= (select (arr!20619 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!793622 () Bool)

(assert (=> b!793622 (= e!440817 e!440816)))

(declare-fun res!538304 () Bool)

(assert (=> b!793622 (=> (not res!538304) (not e!440816))))

(declare-fun lt!353784 () SeekEntryResult!8217)

(assert (=> b!793622 (= res!538304 (or (= lt!353784 (MissingZero!8217 i!1163)) (= lt!353784 (MissingVacant!8217 i!1163))))))

(assert (=> b!793622 (= lt!353784 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!793623 () Bool)

(declare-fun res!538305 () Bool)

(assert (=> b!793623 (=> (not res!538305) (not e!440817))))

(assert (=> b!793623 (= res!538305 (validKeyInArray!0 k!2044))))

(assert (= (and start!68344 res!538311) b!793616))

(assert (= (and b!793616 res!538308) b!793619))

(assert (= (and b!793619 res!538307) b!793623))

(assert (= (and b!793623 res!538305) b!793618))

(assert (= (and b!793618 res!538310) b!793622))

(assert (= (and b!793622 res!538304) b!793620))

(assert (= (and b!793620 res!538306) b!793615))

(assert (= (and b!793615 res!538312) b!793621))

(assert (= (and b!793621 res!538309) b!793617))

(declare-fun m!734203 () Bool)

(assert (=> b!793617 m!734203))

(declare-fun m!734205 () Bool)

(assert (=> b!793617 m!734205))

(declare-fun m!734207 () Bool)

(assert (=> b!793617 m!734207))

(declare-fun m!734209 () Bool)

(assert (=> b!793617 m!734209))

(declare-fun m!734211 () Bool)

(assert (=> b!793615 m!734211))

(declare-fun m!734213 () Bool)

(assert (=> b!793619 m!734213))

(assert (=> b!793619 m!734213))

(declare-fun m!734215 () Bool)

(assert (=> b!793619 m!734215))

(declare-fun m!734217 () Bool)

(assert (=> b!793620 m!734217))

(declare-fun m!734219 () Bool)

(assert (=> start!68344 m!734219))

(declare-fun m!734221 () Bool)

(assert (=> start!68344 m!734221))

(declare-fun m!734223 () Bool)

(assert (=> b!793623 m!734223))

(declare-fun m!734225 () Bool)

(assert (=> b!793618 m!734225))

(declare-fun m!734227 () Bool)

(assert (=> b!793622 m!734227))

(declare-fun m!734229 () Bool)

(assert (=> b!793621 m!734229))

(declare-fun m!734231 () Bool)

(assert (=> b!793621 m!734231))

(push 1)

