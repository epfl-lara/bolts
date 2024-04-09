; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68352 () Bool)

(assert start!68352)

(declare-fun b!793723 () Bool)

(declare-fun res!538412 () Bool)

(declare-fun e!440854 () Bool)

(assert (=> b!793723 (=> (not res!538412) (not e!440854))))

(declare-datatypes ((array!43093 0))(
  ( (array!43094 (arr!20623 (Array (_ BitVec 32) (_ BitVec 64))) (size!21044 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43093)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43093 (_ BitVec 32)) Bool)

(assert (=> b!793723 (= res!538412 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!538416 () Bool)

(declare-fun e!440852 () Bool)

(assert (=> start!68352 (=> (not res!538416) (not e!440852))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68352 (= res!538416 (validMask!0 mask!3266))))

(assert (=> start!68352 e!440852))

(assert (=> start!68352 true))

(declare-fun array_inv!16397 (array!43093) Bool)

(assert (=> start!68352 (array_inv!16397 a!3170)))

(declare-fun b!793724 () Bool)

(assert (=> b!793724 (= e!440852 e!440854)))

(declare-fun res!538413 () Bool)

(assert (=> b!793724 (=> (not res!538413) (not e!440854))))

(declare-datatypes ((SeekEntryResult!8221 0))(
  ( (MissingZero!8221 (index!35251 (_ BitVec 32))) (Found!8221 (index!35252 (_ BitVec 32))) (Intermediate!8221 (undefined!9033 Bool) (index!35253 (_ BitVec 32)) (x!66212 (_ BitVec 32))) (Undefined!8221) (MissingVacant!8221 (index!35254 (_ BitVec 32))) )
))
(declare-fun lt!353847 () SeekEntryResult!8221)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!793724 (= res!538413 (or (= lt!353847 (MissingZero!8221 i!1163)) (= lt!353847 (MissingVacant!8221 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43093 (_ BitVec 32)) SeekEntryResult!8221)

(assert (=> b!793724 (= lt!353847 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!793725 () Bool)

(assert (=> b!793725 (= e!440854 false)))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!353845 () array!43093)

(declare-fun lt!353846 () SeekEntryResult!8221)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!353848 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43093 (_ BitVec 32)) SeekEntryResult!8221)

(assert (=> b!793725 (= lt!353846 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!353848 lt!353845 mask!3266))))

(declare-fun lt!353844 () SeekEntryResult!8221)

(assert (=> b!793725 (= lt!353844 (seekEntryOrOpen!0 lt!353848 lt!353845 mask!3266))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!793725 (= lt!353848 (select (store (arr!20623 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!793725 (= lt!353845 (array!43094 (store (arr!20623 a!3170) i!1163 k0!2044) (size!21044 a!3170)))))

(declare-fun b!793726 () Bool)

(declare-fun res!538417 () Bool)

(assert (=> b!793726 (=> (not res!538417) (not e!440852))))

(assert (=> b!793726 (= res!538417 (and (= (size!21044 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21044 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21044 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793727 () Bool)

(declare-fun res!538420 () Bool)

(assert (=> b!793727 (=> (not res!538420) (not e!440852))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793727 (= res!538420 (validKeyInArray!0 k0!2044))))

(declare-fun b!793728 () Bool)

(declare-fun res!538414 () Bool)

(assert (=> b!793728 (=> (not res!538414) (not e!440852))))

(declare-fun arrayContainsKey!0 (array!43093 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793728 (= res!538414 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!793729 () Bool)

(declare-fun res!538419 () Bool)

(assert (=> b!793729 (=> (not res!538419) (not e!440854))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!793729 (= res!538419 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21044 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20623 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21044 a!3170)) (= (select (arr!20623 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!793730 () Bool)

(declare-fun res!538418 () Bool)

(assert (=> b!793730 (=> (not res!538418) (not e!440852))))

(assert (=> b!793730 (= res!538418 (validKeyInArray!0 (select (arr!20623 a!3170) j!153)))))

(declare-fun b!793731 () Bool)

(declare-fun res!538415 () Bool)

(assert (=> b!793731 (=> (not res!538415) (not e!440854))))

(declare-datatypes ((List!14639 0))(
  ( (Nil!14636) (Cons!14635 (h!15764 (_ BitVec 64)) (t!20962 List!14639)) )
))
(declare-fun arrayNoDuplicates!0 (array!43093 (_ BitVec 32) List!14639) Bool)

(assert (=> b!793731 (= res!538415 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14636))))

(assert (= (and start!68352 res!538416) b!793726))

(assert (= (and b!793726 res!538417) b!793730))

(assert (= (and b!793730 res!538418) b!793727))

(assert (= (and b!793727 res!538420) b!793728))

(assert (= (and b!793728 res!538414) b!793724))

(assert (= (and b!793724 res!538413) b!793723))

(assert (= (and b!793723 res!538412) b!793731))

(assert (= (and b!793731 res!538415) b!793729))

(assert (= (and b!793729 res!538419) b!793725))

(declare-fun m!734323 () Bool)

(assert (=> start!68352 m!734323))

(declare-fun m!734325 () Bool)

(assert (=> start!68352 m!734325))

(declare-fun m!734327 () Bool)

(assert (=> b!793724 m!734327))

(declare-fun m!734329 () Bool)

(assert (=> b!793730 m!734329))

(assert (=> b!793730 m!734329))

(declare-fun m!734331 () Bool)

(assert (=> b!793730 m!734331))

(declare-fun m!734333 () Bool)

(assert (=> b!793723 m!734333))

(declare-fun m!734335 () Bool)

(assert (=> b!793728 m!734335))

(declare-fun m!734337 () Bool)

(assert (=> b!793727 m!734337))

(declare-fun m!734339 () Bool)

(assert (=> b!793729 m!734339))

(declare-fun m!734341 () Bool)

(assert (=> b!793729 m!734341))

(declare-fun m!734343 () Bool)

(assert (=> b!793725 m!734343))

(declare-fun m!734345 () Bool)

(assert (=> b!793725 m!734345))

(declare-fun m!734347 () Bool)

(assert (=> b!793725 m!734347))

(declare-fun m!734349 () Bool)

(assert (=> b!793725 m!734349))

(declare-fun m!734351 () Bool)

(assert (=> b!793731 m!734351))

(check-sat (not b!793730) (not b!793727) (not start!68352) (not b!793724) (not b!793723) (not b!793728) (not b!793725) (not b!793731))
(check-sat)
