; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68264 () Bool)

(assert start!68264)

(declare-fun b!792635 () Bool)

(declare-fun res!537331 () Bool)

(declare-fun e!440447 () Bool)

(assert (=> b!792635 (=> (not res!537331) (not e!440447))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!792635 (= res!537331 (validKeyInArray!0 k!2044))))

(declare-fun b!792636 () Bool)

(declare-fun res!537325 () Bool)

(assert (=> b!792636 (=> (not res!537325) (not e!440447))))

(declare-datatypes ((array!43005 0))(
  ( (array!43006 (arr!20579 (Array (_ BitVec 32) (_ BitVec 64))) (size!21000 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43005)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!792636 (= res!537325 (validKeyInArray!0 (select (arr!20579 a!3170) j!153)))))

(declare-fun b!792637 () Bool)

(declare-fun res!537329 () Bool)

(assert (=> b!792637 (=> (not res!537329) (not e!440447))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!792637 (= res!537329 (and (= (size!21000 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21000 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21000 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!792638 () Bool)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun e!440449 () Bool)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!792638 (= e!440449 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21000 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20579 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21000 a!3170)) (= (select (arr!20579 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23)) (bvslt mask!3266 #b00000000000000000000000000000000)))))

(declare-fun b!792639 () Bool)

(declare-fun res!537324 () Bool)

(assert (=> b!792639 (=> (not res!537324) (not e!440449))))

(declare-datatypes ((List!14595 0))(
  ( (Nil!14592) (Cons!14591 (h!15720 (_ BitVec 64)) (t!20918 List!14595)) )
))
(declare-fun arrayNoDuplicates!0 (array!43005 (_ BitVec 32) List!14595) Bool)

(assert (=> b!792639 (= res!537324 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14592))))

(declare-fun b!792640 () Bool)

(assert (=> b!792640 (= e!440447 e!440449)))

(declare-fun res!537327 () Bool)

(assert (=> b!792640 (=> (not res!537327) (not e!440449))))

(declare-datatypes ((SeekEntryResult!8177 0))(
  ( (MissingZero!8177 (index!35075 (_ BitVec 32))) (Found!8177 (index!35076 (_ BitVec 32))) (Intermediate!8177 (undefined!8989 Bool) (index!35077 (_ BitVec 32)) (x!66048 (_ BitVec 32))) (Undefined!8177) (MissingVacant!8177 (index!35078 (_ BitVec 32))) )
))
(declare-fun lt!353530 () SeekEntryResult!8177)

(assert (=> b!792640 (= res!537327 (or (= lt!353530 (MissingZero!8177 i!1163)) (= lt!353530 (MissingVacant!8177 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43005 (_ BitVec 32)) SeekEntryResult!8177)

(assert (=> b!792640 (= lt!353530 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!537330 () Bool)

(assert (=> start!68264 (=> (not res!537330) (not e!440447))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68264 (= res!537330 (validMask!0 mask!3266))))

(assert (=> start!68264 e!440447))

(assert (=> start!68264 true))

(declare-fun array_inv!16353 (array!43005) Bool)

(assert (=> start!68264 (array_inv!16353 a!3170)))

(declare-fun b!792641 () Bool)

(declare-fun res!537326 () Bool)

(assert (=> b!792641 (=> (not res!537326) (not e!440447))))

(declare-fun arrayContainsKey!0 (array!43005 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!792641 (= res!537326 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!792642 () Bool)

(declare-fun res!537328 () Bool)

(assert (=> b!792642 (=> (not res!537328) (not e!440449))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43005 (_ BitVec 32)) Bool)

(assert (=> b!792642 (= res!537328 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(assert (= (and start!68264 res!537330) b!792637))

(assert (= (and b!792637 res!537329) b!792636))

(assert (= (and b!792636 res!537325) b!792635))

(assert (= (and b!792635 res!537331) b!792641))

(assert (= (and b!792641 res!537326) b!792640))

(assert (= (and b!792640 res!537327) b!792642))

(assert (= (and b!792642 res!537328) b!792639))

(assert (= (and b!792639 res!537324) b!792638))

(declare-fun m!733245 () Bool)

(assert (=> b!792639 m!733245))

(declare-fun m!733247 () Bool)

(assert (=> b!792642 m!733247))

(declare-fun m!733249 () Bool)

(assert (=> b!792635 m!733249))

(declare-fun m!733251 () Bool)

(assert (=> start!68264 m!733251))

(declare-fun m!733253 () Bool)

(assert (=> start!68264 m!733253))

(declare-fun m!733255 () Bool)

(assert (=> b!792636 m!733255))

(assert (=> b!792636 m!733255))

(declare-fun m!733257 () Bool)

(assert (=> b!792636 m!733257))

(declare-fun m!733259 () Bool)

(assert (=> b!792641 m!733259))

(declare-fun m!733261 () Bool)

(assert (=> b!792638 m!733261))

(declare-fun m!733263 () Bool)

(assert (=> b!792638 m!733263))

(declare-fun m!733265 () Bool)

(assert (=> b!792640 m!733265))

(push 1)

(assert (not b!792639))

(assert (not start!68264))

(assert (not b!792635))

(assert (not b!792641))

(assert (not b!792642))

(assert (not b!792640))

(assert (not b!792636))

(check-sat)

(pop 1)

(push 1)

(check-sat)

