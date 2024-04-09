; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53508 () Bool)

(assert start!53508)

(declare-fun b!581970 () Bool)

(declare-fun res!369942 () Bool)

(declare-fun e!333789 () Bool)

(assert (=> b!581970 (=> (not res!369942) (not e!333789))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581970 (= res!369942 (validKeyInArray!0 k0!1786))))

(declare-fun b!581971 () Bool)

(declare-fun res!369936 () Bool)

(assert (=> b!581971 (=> (not res!369936) (not e!333789))))

(declare-datatypes ((array!36363 0))(
  ( (array!36364 (arr!17452 (Array (_ BitVec 32) (_ BitVec 64))) (size!17816 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36363)

(declare-fun arrayContainsKey!0 (array!36363 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581971 (= res!369936 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581973 () Bool)

(declare-fun res!369939 () Bool)

(declare-fun e!333790 () Bool)

(assert (=> b!581973 (=> (not res!369939) (not e!333790))))

(declare-datatypes ((List!11546 0))(
  ( (Nil!11543) (Cons!11542 (h!12587 (_ BitVec 64)) (t!17782 List!11546)) )
))
(declare-fun arrayNoDuplicates!0 (array!36363 (_ BitVec 32) List!11546) Bool)

(assert (=> b!581973 (= res!369939 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11543))))

(declare-fun b!581974 () Bool)

(declare-fun res!369944 () Bool)

(assert (=> b!581974 (=> (not res!369944) (not e!333790))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!581974 (= res!369944 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17452 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17452 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!581975 () Bool)

(assert (=> b!581975 (= e!333790 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5899 0))(
  ( (MissingZero!5899 (index!25823 (_ BitVec 32))) (Found!5899 (index!25824 (_ BitVec 32))) (Intermediate!5899 (undefined!6711 Bool) (index!25825 (_ BitVec 32)) (x!54707 (_ BitVec 32))) (Undefined!5899) (MissingVacant!5899 (index!25826 (_ BitVec 32))) )
))
(declare-fun lt!265016 () SeekEntryResult!5899)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36363 (_ BitVec 32)) SeekEntryResult!5899)

(assert (=> b!581975 (= lt!265016 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17452 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!581976 () Bool)

(declare-fun res!369943 () Bool)

(assert (=> b!581976 (=> (not res!369943) (not e!333789))))

(assert (=> b!581976 (= res!369943 (validKeyInArray!0 (select (arr!17452 a!2986) j!136)))))

(declare-fun res!369938 () Bool)

(assert (=> start!53508 (=> (not res!369938) (not e!333789))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53508 (= res!369938 (validMask!0 mask!3053))))

(assert (=> start!53508 e!333789))

(assert (=> start!53508 true))

(declare-fun array_inv!13226 (array!36363) Bool)

(assert (=> start!53508 (array_inv!13226 a!2986)))

(declare-fun b!581972 () Bool)

(declare-fun res!369941 () Bool)

(assert (=> b!581972 (=> (not res!369941) (not e!333790))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36363 (_ BitVec 32)) Bool)

(assert (=> b!581972 (= res!369941 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581977 () Bool)

(declare-fun res!369937 () Bool)

(assert (=> b!581977 (=> (not res!369937) (not e!333789))))

(assert (=> b!581977 (= res!369937 (and (= (size!17816 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17816 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17816 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581978 () Bool)

(assert (=> b!581978 (= e!333789 e!333790)))

(declare-fun res!369940 () Bool)

(assert (=> b!581978 (=> (not res!369940) (not e!333790))))

(declare-fun lt!265015 () SeekEntryResult!5899)

(assert (=> b!581978 (= res!369940 (or (= lt!265015 (MissingZero!5899 i!1108)) (= lt!265015 (MissingVacant!5899 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36363 (_ BitVec 32)) SeekEntryResult!5899)

(assert (=> b!581978 (= lt!265015 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(assert (= (and start!53508 res!369938) b!581977))

(assert (= (and b!581977 res!369937) b!581976))

(assert (= (and b!581976 res!369943) b!581970))

(assert (= (and b!581970 res!369942) b!581971))

(assert (= (and b!581971 res!369936) b!581978))

(assert (= (and b!581978 res!369940) b!581972))

(assert (= (and b!581972 res!369941) b!581973))

(assert (= (and b!581973 res!369939) b!581974))

(assert (= (and b!581974 res!369944) b!581975))

(declare-fun m!560535 () Bool)

(assert (=> b!581970 m!560535))

(declare-fun m!560537 () Bool)

(assert (=> b!581976 m!560537))

(assert (=> b!581976 m!560537))

(declare-fun m!560539 () Bool)

(assert (=> b!581976 m!560539))

(declare-fun m!560541 () Bool)

(assert (=> b!581971 m!560541))

(declare-fun m!560543 () Bool)

(assert (=> b!581974 m!560543))

(declare-fun m!560545 () Bool)

(assert (=> b!581974 m!560545))

(declare-fun m!560547 () Bool)

(assert (=> b!581974 m!560547))

(declare-fun m!560549 () Bool)

(assert (=> b!581973 m!560549))

(declare-fun m!560551 () Bool)

(assert (=> b!581972 m!560551))

(declare-fun m!560553 () Bool)

(assert (=> b!581978 m!560553))

(declare-fun m!560555 () Bool)

(assert (=> start!53508 m!560555))

(declare-fun m!560557 () Bool)

(assert (=> start!53508 m!560557))

(assert (=> b!581975 m!560537))

(assert (=> b!581975 m!560537))

(declare-fun m!560559 () Bool)

(assert (=> b!581975 m!560559))

(check-sat (not start!53508) (not b!581970) (not b!581978) (not b!581971) (not b!581976) (not b!581975) (not b!581973) (not b!581972))
(check-sat)
