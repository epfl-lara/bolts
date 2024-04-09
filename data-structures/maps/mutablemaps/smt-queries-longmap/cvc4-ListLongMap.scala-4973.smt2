; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68372 () Bool)

(assert start!68372)

(declare-fun b!794010 () Bool)

(declare-fun res!538700 () Bool)

(declare-fun e!440962 () Bool)

(assert (=> b!794010 (=> (not res!538700) (not e!440962))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43113 0))(
  ( (array!43114 (arr!20633 (Array (_ BitVec 32) (_ BitVec 64))) (size!21054 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43113)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!794010 (= res!538700 (and (= (size!21054 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21054 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21054 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!794011 () Bool)

(declare-fun res!538707 () Bool)

(declare-fun e!440961 () Bool)

(assert (=> b!794011 (=> (not res!538707) (not e!440961))))

(declare-datatypes ((List!14649 0))(
  ( (Nil!14646) (Cons!14645 (h!15774 (_ BitVec 64)) (t!20972 List!14649)) )
))
(declare-fun arrayNoDuplicates!0 (array!43113 (_ BitVec 32) List!14649) Bool)

(assert (=> b!794011 (= res!538707 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14646))))

(declare-fun b!794012 () Bool)

(declare-fun e!440959 () Bool)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!794012 (= e!440959 (and (bvsge mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266))))))

(declare-fun b!794013 () Bool)

(declare-fun res!538699 () Bool)

(assert (=> b!794013 (=> (not res!538699) (not e!440961))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43113 (_ BitVec 32)) Bool)

(assert (=> b!794013 (= res!538699 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!794014 () Bool)

(declare-fun res!538703 () Bool)

(assert (=> b!794014 (=> (not res!538703) (not e!440961))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!794014 (= res!538703 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21054 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20633 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21054 a!3170)) (= (select (arr!20633 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794015 () Bool)

(declare-fun res!538702 () Bool)

(assert (=> b!794015 (=> (not res!538702) (not e!440962))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794015 (= res!538702 (validKeyInArray!0 (select (arr!20633 a!3170) j!153)))))

(declare-fun b!794016 () Bool)

(declare-fun res!538701 () Bool)

(assert (=> b!794016 (=> (not res!538701) (not e!440962))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43113 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794016 (= res!538701 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!794017 () Bool)

(assert (=> b!794017 (= e!440961 e!440959)))

(declare-fun res!538704 () Bool)

(assert (=> b!794017 (=> (not res!538704) (not e!440959))))

(declare-fun lt!353962 () array!43113)

(declare-fun lt!353961 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8231 0))(
  ( (MissingZero!8231 (index!35291 (_ BitVec 32))) (Found!8231 (index!35292 (_ BitVec 32))) (Intermediate!8231 (undefined!9043 Bool) (index!35293 (_ BitVec 32)) (x!66246 (_ BitVec 32))) (Undefined!8231) (MissingVacant!8231 (index!35294 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43113 (_ BitVec 32)) SeekEntryResult!8231)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43113 (_ BitVec 32)) SeekEntryResult!8231)

(assert (=> b!794017 (= res!538704 (= (seekEntryOrOpen!0 lt!353961 lt!353962 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!353961 lt!353962 mask!3266)))))

(assert (=> b!794017 (= lt!353961 (select (store (arr!20633 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!794017 (= lt!353962 (array!43114 (store (arr!20633 a!3170) i!1163 k!2044) (size!21054 a!3170)))))

(declare-fun res!538706 () Bool)

(assert (=> start!68372 (=> (not res!538706) (not e!440962))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68372 (= res!538706 (validMask!0 mask!3266))))

(assert (=> start!68372 e!440962))

(assert (=> start!68372 true))

(declare-fun array_inv!16407 (array!43113) Bool)

(assert (=> start!68372 (array_inv!16407 a!3170)))

(declare-fun b!794018 () Bool)

(assert (=> b!794018 (= e!440962 e!440961)))

(declare-fun res!538708 () Bool)

(assert (=> b!794018 (=> (not res!538708) (not e!440961))))

(declare-fun lt!353960 () SeekEntryResult!8231)

(assert (=> b!794018 (= res!538708 (or (= lt!353960 (MissingZero!8231 i!1163)) (= lt!353960 (MissingVacant!8231 i!1163))))))

(assert (=> b!794018 (= lt!353960 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!794019 () Bool)

(declare-fun res!538705 () Bool)

(assert (=> b!794019 (=> (not res!538705) (not e!440962))))

(assert (=> b!794019 (= res!538705 (validKeyInArray!0 k!2044))))

(assert (= (and start!68372 res!538706) b!794010))

(assert (= (and b!794010 res!538700) b!794015))

(assert (= (and b!794015 res!538702) b!794019))

(assert (= (and b!794019 res!538705) b!794016))

(assert (= (and b!794016 res!538701) b!794018))

(assert (= (and b!794018 res!538708) b!794013))

(assert (= (and b!794013 res!538699) b!794011))

(assert (= (and b!794011 res!538707) b!794014))

(assert (= (and b!794014 res!538703) b!794017))

(assert (= (and b!794017 res!538704) b!794012))

(declare-fun m!734623 () Bool)

(assert (=> b!794018 m!734623))

(declare-fun m!734625 () Bool)

(assert (=> b!794017 m!734625))

(declare-fun m!734627 () Bool)

(assert (=> b!794017 m!734627))

(declare-fun m!734629 () Bool)

(assert (=> b!794017 m!734629))

(declare-fun m!734631 () Bool)

(assert (=> b!794017 m!734631))

(declare-fun m!734633 () Bool)

(assert (=> b!794011 m!734633))

(declare-fun m!734635 () Bool)

(assert (=> b!794019 m!734635))

(declare-fun m!734637 () Bool)

(assert (=> b!794013 m!734637))

(declare-fun m!734639 () Bool)

(assert (=> b!794014 m!734639))

(declare-fun m!734641 () Bool)

(assert (=> b!794014 m!734641))

(declare-fun m!734643 () Bool)

(assert (=> b!794016 m!734643))

(declare-fun m!734645 () Bool)

(assert (=> b!794015 m!734645))

(assert (=> b!794015 m!734645))

(declare-fun m!734647 () Bool)

(assert (=> b!794015 m!734647))

(declare-fun m!734649 () Bool)

(assert (=> start!68372 m!734649))

(declare-fun m!734651 () Bool)

(assert (=> start!68372 m!734651))

(push 1)

(assert (not b!794016))

(assert (not b!794015))

(assert (not b!794019))

(assert (not start!68372))

(assert (not b!794011))

(assert (not b!794017))

(assert (not b!794018))

(assert (not b!794013))

(check-sat)

(pop 1)

(push 1)

(check-sat)

