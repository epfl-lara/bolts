; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68346 () Bool)

(assert start!68346)

(declare-fun b!793642 () Bool)

(declare-fun res!538331 () Bool)

(declare-fun e!440826 () Bool)

(assert (=> b!793642 (=> (not res!538331) (not e!440826))))

(declare-datatypes ((array!43087 0))(
  ( (array!43088 (arr!20620 (Array (_ BitVec 32) (_ BitVec 64))) (size!21041 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43087)

(declare-datatypes ((List!14636 0))(
  ( (Nil!14633) (Cons!14632 (h!15761 (_ BitVec 64)) (t!20959 List!14636)) )
))
(declare-fun arrayNoDuplicates!0 (array!43087 (_ BitVec 32) List!14636) Bool)

(assert (=> b!793642 (= res!538331 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14633))))

(declare-fun b!793643 () Bool)

(declare-fun res!538338 () Bool)

(assert (=> b!793643 (=> (not res!538338) (not e!440826))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!793643 (= res!538338 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21041 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20620 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21041 a!3170)) (= (select (arr!20620 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!793644 () Bool)

(declare-fun res!538335 () Bool)

(declare-fun e!440827 () Bool)

(assert (=> b!793644 (=> (not res!538335) (not e!440827))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793644 (= res!538335 (validKeyInArray!0 k0!2044))))

(declare-fun b!793645 () Bool)

(declare-fun res!538332 () Bool)

(assert (=> b!793645 (=> (not res!538332) (not e!440827))))

(declare-fun arrayContainsKey!0 (array!43087 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793645 (= res!538332 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!793646 () Bool)

(declare-fun res!538333 () Bool)

(assert (=> b!793646 (=> (not res!538333) (not e!440826))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43087 (_ BitVec 32)) Bool)

(assert (=> b!793646 (= res!538333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!793647 () Bool)

(assert (=> b!793647 (= e!440827 e!440826)))

(declare-fun res!538339 () Bool)

(assert (=> b!793647 (=> (not res!538339) (not e!440826))))

(declare-datatypes ((SeekEntryResult!8218 0))(
  ( (MissingZero!8218 (index!35239 (_ BitVec 32))) (Found!8218 (index!35240 (_ BitVec 32))) (Intermediate!8218 (undefined!9030 Bool) (index!35241 (_ BitVec 32)) (x!66201 (_ BitVec 32))) (Undefined!8218) (MissingVacant!8218 (index!35242 (_ BitVec 32))) )
))
(declare-fun lt!353800 () SeekEntryResult!8218)

(assert (=> b!793647 (= res!538339 (or (= lt!353800 (MissingZero!8218 i!1163)) (= lt!353800 (MissingVacant!8218 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43087 (_ BitVec 32)) SeekEntryResult!8218)

(assert (=> b!793647 (= lt!353800 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun res!538334 () Bool)

(assert (=> start!68346 (=> (not res!538334) (not e!440827))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68346 (= res!538334 (validMask!0 mask!3266))))

(assert (=> start!68346 e!440827))

(assert (=> start!68346 true))

(declare-fun array_inv!16394 (array!43087) Bool)

(assert (=> start!68346 (array_inv!16394 a!3170)))

(declare-fun b!793648 () Bool)

(assert (=> b!793648 (= e!440826 false)))

(declare-fun lt!353802 () (_ BitVec 64))

(declare-fun lt!353801 () SeekEntryResult!8218)

(declare-fun lt!353799 () array!43087)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43087 (_ BitVec 32)) SeekEntryResult!8218)

(assert (=> b!793648 (= lt!353801 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!353802 lt!353799 mask!3266))))

(declare-fun lt!353803 () SeekEntryResult!8218)

(assert (=> b!793648 (= lt!353803 (seekEntryOrOpen!0 lt!353802 lt!353799 mask!3266))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!793648 (= lt!353802 (select (store (arr!20620 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!793648 (= lt!353799 (array!43088 (store (arr!20620 a!3170) i!1163 k0!2044) (size!21041 a!3170)))))

(declare-fun b!793649 () Bool)

(declare-fun res!538337 () Bool)

(assert (=> b!793649 (=> (not res!538337) (not e!440827))))

(assert (=> b!793649 (= res!538337 (and (= (size!21041 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21041 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21041 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793650 () Bool)

(declare-fun res!538336 () Bool)

(assert (=> b!793650 (=> (not res!538336) (not e!440827))))

(assert (=> b!793650 (= res!538336 (validKeyInArray!0 (select (arr!20620 a!3170) j!153)))))

(assert (= (and start!68346 res!538334) b!793649))

(assert (= (and b!793649 res!538337) b!793650))

(assert (= (and b!793650 res!538336) b!793644))

(assert (= (and b!793644 res!538335) b!793645))

(assert (= (and b!793645 res!538332) b!793647))

(assert (= (and b!793647 res!538339) b!793646))

(assert (= (and b!793646 res!538333) b!793642))

(assert (= (and b!793642 res!538331) b!793643))

(assert (= (and b!793643 res!538338) b!793648))

(declare-fun m!734233 () Bool)

(assert (=> b!793650 m!734233))

(assert (=> b!793650 m!734233))

(declare-fun m!734235 () Bool)

(assert (=> b!793650 m!734235))

(declare-fun m!734237 () Bool)

(assert (=> b!793647 m!734237))

(declare-fun m!734239 () Bool)

(assert (=> b!793643 m!734239))

(declare-fun m!734241 () Bool)

(assert (=> b!793643 m!734241))

(declare-fun m!734243 () Bool)

(assert (=> b!793648 m!734243))

(declare-fun m!734245 () Bool)

(assert (=> b!793648 m!734245))

(declare-fun m!734247 () Bool)

(assert (=> b!793648 m!734247))

(declare-fun m!734249 () Bool)

(assert (=> b!793648 m!734249))

(declare-fun m!734251 () Bool)

(assert (=> b!793645 m!734251))

(declare-fun m!734253 () Bool)

(assert (=> b!793646 m!734253))

(declare-fun m!734255 () Bool)

(assert (=> b!793642 m!734255))

(declare-fun m!734257 () Bool)

(assert (=> start!68346 m!734257))

(declare-fun m!734259 () Bool)

(assert (=> start!68346 m!734259))

(declare-fun m!734261 () Bool)

(assert (=> b!793644 m!734261))

(check-sat (not b!793650) (not b!793644) (not b!793645) (not b!793646) (not b!793647) (not b!793648) (not start!68346) (not b!793642))
(check-sat)
