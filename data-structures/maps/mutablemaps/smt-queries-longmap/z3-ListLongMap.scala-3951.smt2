; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53736 () Bool)

(assert start!53736)

(declare-fun res!373589 () Bool)

(declare-fun e!334985 () Bool)

(assert (=> start!53736 (=> (not res!373589) (not e!334985))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53736 (= res!373589 (validMask!0 mask!3053))))

(assert (=> start!53736 e!334985))

(assert (=> start!53736 true))

(declare-datatypes ((array!36591 0))(
  ( (array!36592 (arr!17566 (Array (_ BitVec 32) (_ BitVec 64))) (size!17930 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36591)

(declare-fun array_inv!13340 (array!36591) Bool)

(assert (=> start!53736 (array_inv!13340 a!2986)))

(declare-fun b!585616 () Bool)

(declare-fun res!373592 () Bool)

(assert (=> b!585616 (=> (not res!373592) (not e!334985))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!585616 (= res!373592 (validKeyInArray!0 (select (arr!17566 a!2986) j!136)))))

(declare-fun b!585617 () Bool)

(declare-fun res!373591 () Bool)

(declare-fun e!334987 () Bool)

(assert (=> b!585617 (=> (not res!373591) (not e!334987))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6013 0))(
  ( (MissingZero!6013 (index!26279 (_ BitVec 32))) (Found!6013 (index!26280 (_ BitVec 32))) (Intermediate!6013 (undefined!6825 Bool) (index!26281 (_ BitVec 32)) (x!55125 (_ BitVec 32))) (Undefined!6013) (MissingVacant!6013 (index!26282 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36591 (_ BitVec 32)) SeekEntryResult!6013)

(assert (=> b!585617 (= res!373591 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17566 a!2986) j!136) a!2986 mask!3053) (Found!6013 j!136)))))

(declare-fun b!585618 () Bool)

(declare-fun res!373588 () Bool)

(assert (=> b!585618 (=> (not res!373588) (not e!334987))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!585618 (= res!373588 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17566 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17566 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!585619 () Bool)

(declare-fun res!373590 () Bool)

(assert (=> b!585619 (=> (not res!373590) (not e!334985))))

(declare-fun arrayContainsKey!0 (array!36591 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!585619 (= res!373590 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!585620 () Bool)

(assert (=> b!585620 (= e!334985 e!334987)))

(declare-fun res!373584 () Bool)

(assert (=> b!585620 (=> (not res!373584) (not e!334987))))

(declare-fun lt!265885 () SeekEntryResult!6013)

(assert (=> b!585620 (= res!373584 (or (= lt!265885 (MissingZero!6013 i!1108)) (= lt!265885 (MissingVacant!6013 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36591 (_ BitVec 32)) SeekEntryResult!6013)

(assert (=> b!585620 (= lt!265885 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!585621 () Bool)

(declare-fun res!373585 () Bool)

(assert (=> b!585621 (=> (not res!373585) (not e!334987))))

(assert (=> b!585621 (= res!373585 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17566 a!2986) index!984) (select (arr!17566 a!2986) j!136))) (not (= (select (arr!17566 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!585622 () Bool)

(declare-fun res!373586 () Bool)

(assert (=> b!585622 (=> (not res!373586) (not e!334985))))

(assert (=> b!585622 (= res!373586 (validKeyInArray!0 k0!1786))))

(declare-fun b!585623 () Bool)

(declare-fun res!373587 () Bool)

(assert (=> b!585623 (=> (not res!373587) (not e!334985))))

(assert (=> b!585623 (= res!373587 (and (= (size!17930 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17930 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17930 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!585624 () Bool)

(declare-fun res!373583 () Bool)

(assert (=> b!585624 (=> (not res!373583) (not e!334987))))

(declare-datatypes ((List!11660 0))(
  ( (Nil!11657) (Cons!11656 (h!12701 (_ BitVec 64)) (t!17896 List!11660)) )
))
(declare-fun arrayNoDuplicates!0 (array!36591 (_ BitVec 32) List!11660) Bool)

(assert (=> b!585624 (= res!373583 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11657))))

(declare-fun b!585625 () Bool)

(assert (=> b!585625 (= e!334987 (not true))))

(declare-fun lt!265884 () (_ BitVec 32))

(assert (=> b!585625 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265884 vacantSpotIndex!68 (select (arr!17566 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265884 vacantSpotIndex!68 (select (store (arr!17566 a!2986) i!1108 k0!1786) j!136) (array!36592 (store (arr!17566 a!2986) i!1108 k0!1786) (size!17930 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18150 0))(
  ( (Unit!18151) )
))
(declare-fun lt!265886 () Unit!18150)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36591 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18150)

(assert (=> b!585625 (= lt!265886 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!265884 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585625 (= lt!265884 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!585626 () Bool)

(declare-fun res!373582 () Bool)

(assert (=> b!585626 (=> (not res!373582) (not e!334987))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36591 (_ BitVec 32)) Bool)

(assert (=> b!585626 (= res!373582 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53736 res!373589) b!585623))

(assert (= (and b!585623 res!373587) b!585616))

(assert (= (and b!585616 res!373592) b!585622))

(assert (= (and b!585622 res!373586) b!585619))

(assert (= (and b!585619 res!373590) b!585620))

(assert (= (and b!585620 res!373584) b!585626))

(assert (= (and b!585626 res!373582) b!585624))

(assert (= (and b!585624 res!373583) b!585618))

(assert (= (and b!585618 res!373588) b!585617))

(assert (= (and b!585617 res!373591) b!585621))

(assert (= (and b!585621 res!373585) b!585625))

(declare-fun m!563931 () Bool)

(assert (=> start!53736 m!563931))

(declare-fun m!563933 () Bool)

(assert (=> start!53736 m!563933))

(declare-fun m!563935 () Bool)

(assert (=> b!585624 m!563935))

(declare-fun m!563937 () Bool)

(assert (=> b!585620 m!563937))

(declare-fun m!563939 () Bool)

(assert (=> b!585625 m!563939))

(declare-fun m!563941 () Bool)

(assert (=> b!585625 m!563941))

(declare-fun m!563943 () Bool)

(assert (=> b!585625 m!563943))

(declare-fun m!563945 () Bool)

(assert (=> b!585625 m!563945))

(assert (=> b!585625 m!563941))

(declare-fun m!563947 () Bool)

(assert (=> b!585625 m!563947))

(declare-fun m!563949 () Bool)

(assert (=> b!585625 m!563949))

(assert (=> b!585625 m!563943))

(declare-fun m!563951 () Bool)

(assert (=> b!585625 m!563951))

(declare-fun m!563953 () Bool)

(assert (=> b!585626 m!563953))

(declare-fun m!563955 () Bool)

(assert (=> b!585621 m!563955))

(assert (=> b!585621 m!563943))

(declare-fun m!563957 () Bool)

(assert (=> b!585619 m!563957))

(declare-fun m!563959 () Bool)

(assert (=> b!585622 m!563959))

(declare-fun m!563961 () Bool)

(assert (=> b!585618 m!563961))

(assert (=> b!585618 m!563945))

(declare-fun m!563963 () Bool)

(assert (=> b!585618 m!563963))

(assert (=> b!585616 m!563943))

(assert (=> b!585616 m!563943))

(declare-fun m!563965 () Bool)

(assert (=> b!585616 m!563965))

(assert (=> b!585617 m!563943))

(assert (=> b!585617 m!563943))

(declare-fun m!563967 () Bool)

(assert (=> b!585617 m!563967))

(check-sat (not b!585617) (not b!585619) (not b!585626) (not start!53736) (not b!585616) (not b!585624) (not b!585620) (not b!585625) (not b!585622))
(check-sat)
