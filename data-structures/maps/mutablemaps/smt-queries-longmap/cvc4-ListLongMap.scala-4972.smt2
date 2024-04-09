; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68366 () Bool)

(assert start!68366)

(declare-fun b!793921 () Bool)

(declare-fun e!440924 () Bool)

(assert (=> b!793921 (= e!440924 false)))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!353934 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8228 0))(
  ( (MissingZero!8228 (index!35279 (_ BitVec 32))) (Found!8228 (index!35280 (_ BitVec 32))) (Intermediate!8228 (undefined!9040 Bool) (index!35281 (_ BitVec 32)) (x!66235 (_ BitVec 32))) (Undefined!8228) (MissingVacant!8228 (index!35282 (_ BitVec 32))) )
))
(declare-fun lt!353931 () SeekEntryResult!8228)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((array!43107 0))(
  ( (array!43108 (arr!20630 (Array (_ BitVec 32) (_ BitVec 64))) (size!21051 (_ BitVec 32))) )
))
(declare-fun lt!353932 () array!43107)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43107 (_ BitVec 32)) SeekEntryResult!8228)

(assert (=> b!793921 (= lt!353931 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!353934 lt!353932 mask!3266))))

(declare-fun lt!353933 () SeekEntryResult!8228)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43107 (_ BitVec 32)) SeekEntryResult!8228)

(assert (=> b!793921 (= lt!353933 (seekEntryOrOpen!0 lt!353934 lt!353932 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun a!3170 () array!43107)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!793921 (= lt!353934 (select (store (arr!20630 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!793921 (= lt!353932 (array!43108 (store (arr!20630 a!3170) i!1163 k!2044) (size!21051 a!3170)))))

(declare-fun b!793922 () Bool)

(declare-fun res!538616 () Bool)

(assert (=> b!793922 (=> (not res!538616) (not e!440924))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43107 (_ BitVec 32)) Bool)

(assert (=> b!793922 (= res!538616 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!793923 () Bool)

(declare-fun res!538611 () Bool)

(declare-fun e!440926 () Bool)

(assert (=> b!793923 (=> (not res!538611) (not e!440926))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793923 (= res!538611 (validKeyInArray!0 k!2044))))

(declare-fun res!538613 () Bool)

(assert (=> start!68366 (=> (not res!538613) (not e!440926))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68366 (= res!538613 (validMask!0 mask!3266))))

(assert (=> start!68366 e!440926))

(assert (=> start!68366 true))

(declare-fun array_inv!16404 (array!43107) Bool)

(assert (=> start!68366 (array_inv!16404 a!3170)))

(declare-fun b!793924 () Bool)

(declare-fun res!538612 () Bool)

(assert (=> b!793924 (=> (not res!538612) (not e!440926))))

(assert (=> b!793924 (= res!538612 (and (= (size!21051 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21051 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21051 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793925 () Bool)

(declare-fun res!538610 () Bool)

(assert (=> b!793925 (=> (not res!538610) (not e!440924))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!793925 (= res!538610 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21051 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20630 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21051 a!3170)) (= (select (arr!20630 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!793926 () Bool)

(declare-fun res!538615 () Bool)

(assert (=> b!793926 (=> (not res!538615) (not e!440926))))

(declare-fun arrayContainsKey!0 (array!43107 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793926 (= res!538615 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!793927 () Bool)

(assert (=> b!793927 (= e!440926 e!440924)))

(declare-fun res!538614 () Bool)

(assert (=> b!793927 (=> (not res!538614) (not e!440924))))

(declare-fun lt!353935 () SeekEntryResult!8228)

(assert (=> b!793927 (= res!538614 (or (= lt!353935 (MissingZero!8228 i!1163)) (= lt!353935 (MissingVacant!8228 i!1163))))))

(assert (=> b!793927 (= lt!353935 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!793928 () Bool)

(declare-fun res!538617 () Bool)

(assert (=> b!793928 (=> (not res!538617) (not e!440926))))

(assert (=> b!793928 (= res!538617 (validKeyInArray!0 (select (arr!20630 a!3170) j!153)))))

(declare-fun b!793929 () Bool)

(declare-fun res!538618 () Bool)

(assert (=> b!793929 (=> (not res!538618) (not e!440924))))

(declare-datatypes ((List!14646 0))(
  ( (Nil!14643) (Cons!14642 (h!15771 (_ BitVec 64)) (t!20969 List!14646)) )
))
(declare-fun arrayNoDuplicates!0 (array!43107 (_ BitVec 32) List!14646) Bool)

(assert (=> b!793929 (= res!538618 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14643))))

(assert (= (and start!68366 res!538613) b!793924))

(assert (= (and b!793924 res!538612) b!793928))

(assert (= (and b!793928 res!538617) b!793923))

(assert (= (and b!793923 res!538611) b!793926))

(assert (= (and b!793926 res!538615) b!793927))

(assert (= (and b!793927 res!538614) b!793922))

(assert (= (and b!793922 res!538616) b!793929))

(assert (= (and b!793929 res!538618) b!793925))

(assert (= (and b!793925 res!538610) b!793921))

(declare-fun m!734533 () Bool)

(assert (=> start!68366 m!734533))

(declare-fun m!734535 () Bool)

(assert (=> start!68366 m!734535))

(declare-fun m!734537 () Bool)

(assert (=> b!793929 m!734537))

(declare-fun m!734539 () Bool)

(assert (=> b!793925 m!734539))

(declare-fun m!734541 () Bool)

(assert (=> b!793925 m!734541))

(declare-fun m!734543 () Bool)

(assert (=> b!793926 m!734543))

(declare-fun m!734545 () Bool)

(assert (=> b!793927 m!734545))

(declare-fun m!734547 () Bool)

(assert (=> b!793921 m!734547))

(declare-fun m!734549 () Bool)

(assert (=> b!793921 m!734549))

(declare-fun m!734551 () Bool)

(assert (=> b!793921 m!734551))

(declare-fun m!734553 () Bool)

(assert (=> b!793921 m!734553))

(declare-fun m!734555 () Bool)

(assert (=> b!793923 m!734555))

(declare-fun m!734557 () Bool)

(assert (=> b!793928 m!734557))

(assert (=> b!793928 m!734557))

(declare-fun m!734559 () Bool)

(assert (=> b!793928 m!734559))

(declare-fun m!734561 () Bool)

(assert (=> b!793922 m!734561))

(push 1)

(assert (not b!793926))

(assert (not b!793923))

(assert (not b!793921))

(assert (not start!68366))

