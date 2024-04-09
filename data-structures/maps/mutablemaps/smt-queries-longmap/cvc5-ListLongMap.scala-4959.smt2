; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68284 () Bool)

(assert start!68284)

(declare-fun b!792866 () Bool)

(declare-fun res!537557 () Bool)

(declare-fun e!440539 () Bool)

(assert (=> b!792866 (=> (not res!537557) (not e!440539))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!792866 (= res!537557 (validKeyInArray!0 k!2044))))

(declare-fun b!792867 () Bool)

(declare-fun res!537560 () Bool)

(assert (=> b!792867 (=> (not res!537560) (not e!440539))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43025 0))(
  ( (array!43026 (arr!20589 (Array (_ BitVec 32) (_ BitVec 64))) (size!21010 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43025)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!792867 (= res!537560 (and (= (size!21010 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21010 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21010 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!792868 () Bool)

(declare-fun res!537558 () Bool)

(assert (=> b!792868 (=> (not res!537558) (not e!440539))))

(declare-fun arrayContainsKey!0 (array!43025 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!792868 (= res!537558 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun e!440537 () Bool)

(declare-fun b!792869 () Bool)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!792869 (= e!440537 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21010 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20589 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21010 a!3170)) (= (select (arr!20589 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23)) (bvslt mask!3266 #b00000000000000000000000000000000)))))

(declare-fun b!792870 () Bool)

(assert (=> b!792870 (= e!440539 e!440537)))

(declare-fun res!537556 () Bool)

(assert (=> b!792870 (=> (not res!537556) (not e!440537))))

(declare-datatypes ((SeekEntryResult!8187 0))(
  ( (MissingZero!8187 (index!35115 (_ BitVec 32))) (Found!8187 (index!35116 (_ BitVec 32))) (Intermediate!8187 (undefined!8999 Bool) (index!35117 (_ BitVec 32)) (x!66090 (_ BitVec 32))) (Undefined!8187) (MissingVacant!8187 (index!35118 (_ BitVec 32))) )
))
(declare-fun lt!353578 () SeekEntryResult!8187)

(assert (=> b!792870 (= res!537556 (or (= lt!353578 (MissingZero!8187 i!1163)) (= lt!353578 (MissingVacant!8187 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43025 (_ BitVec 32)) SeekEntryResult!8187)

(assert (=> b!792870 (= lt!353578 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!537561 () Bool)

(assert (=> start!68284 (=> (not res!537561) (not e!440539))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68284 (= res!537561 (validMask!0 mask!3266))))

(assert (=> start!68284 e!440539))

(assert (=> start!68284 true))

(declare-fun array_inv!16363 (array!43025) Bool)

(assert (=> start!68284 (array_inv!16363 a!3170)))

(declare-fun b!792871 () Bool)

(declare-fun res!537559 () Bool)

(assert (=> b!792871 (=> (not res!537559) (not e!440537))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43025 (_ BitVec 32)) Bool)

(assert (=> b!792871 (= res!537559 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!792872 () Bool)

(declare-fun res!537555 () Bool)

(assert (=> b!792872 (=> (not res!537555) (not e!440537))))

(declare-datatypes ((List!14605 0))(
  ( (Nil!14602) (Cons!14601 (h!15730 (_ BitVec 64)) (t!20928 List!14605)) )
))
(declare-fun arrayNoDuplicates!0 (array!43025 (_ BitVec 32) List!14605) Bool)

(assert (=> b!792872 (= res!537555 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14602))))

(declare-fun b!792873 () Bool)

(declare-fun res!537562 () Bool)

(assert (=> b!792873 (=> (not res!537562) (not e!440539))))

(assert (=> b!792873 (= res!537562 (validKeyInArray!0 (select (arr!20589 a!3170) j!153)))))

(assert (= (and start!68284 res!537561) b!792867))

(assert (= (and b!792867 res!537560) b!792873))

(assert (= (and b!792873 res!537562) b!792866))

(assert (= (and b!792866 res!537557) b!792868))

(assert (= (and b!792868 res!537558) b!792870))

(assert (= (and b!792870 res!537556) b!792871))

(assert (= (and b!792871 res!537559) b!792872))

(assert (= (and b!792872 res!537555) b!792869))

(declare-fun m!733459 () Bool)

(assert (=> b!792866 m!733459))

(declare-fun m!733461 () Bool)

(assert (=> b!792869 m!733461))

(declare-fun m!733463 () Bool)

(assert (=> b!792869 m!733463))

(declare-fun m!733465 () Bool)

(assert (=> b!792872 m!733465))

(declare-fun m!733467 () Bool)

(assert (=> b!792873 m!733467))

(assert (=> b!792873 m!733467))

(declare-fun m!733469 () Bool)

(assert (=> b!792873 m!733469))

(declare-fun m!733471 () Bool)

(assert (=> b!792871 m!733471))

(declare-fun m!733473 () Bool)

(assert (=> start!68284 m!733473))

(declare-fun m!733475 () Bool)

(assert (=> start!68284 m!733475))

(declare-fun m!733477 () Bool)

(assert (=> b!792870 m!733477))

(declare-fun m!733479 () Bool)

(assert (=> b!792868 m!733479))

(push 1)

(assert (not start!68284))

(assert (not b!792872))

(assert (not b!792866))

(assert (not b!792873))

(assert (not b!792868))

(assert (not b!792871))

(assert (not b!792870))

(check-sat)

