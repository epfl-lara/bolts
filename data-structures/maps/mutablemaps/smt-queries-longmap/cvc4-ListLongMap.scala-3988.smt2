; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54070 () Bool)

(assert start!54070)

(declare-fun b!590185 () Bool)

(declare-datatypes ((Unit!18444 0))(
  ( (Unit!18445) )
))
(declare-fun e!336949 () Unit!18444)

(declare-fun Unit!18446 () Unit!18444)

(assert (=> b!590185 (= e!336949 Unit!18446)))

(assert (=> b!590185 false))

(declare-fun b!590186 () Bool)

(declare-fun res!377596 () Bool)

(declare-fun e!336952 () Bool)

(assert (=> b!590186 (=> (not res!377596) (not e!336952))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36820 0))(
  ( (array!36821 (arr!17678 (Array (_ BitVec 32) (_ BitVec 64))) (size!18042 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36820)

(assert (=> b!590186 (= res!377596 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17678 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!590187 () Bool)

(declare-fun e!336945 () Bool)

(declare-fun e!336950 () Bool)

(assert (=> b!590187 (= e!336945 e!336950)))

(declare-fun res!377600 () Bool)

(assert (=> b!590187 (=> (not res!377600) (not e!336950))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6125 0))(
  ( (MissingZero!6125 (index!26732 (_ BitVec 32))) (Found!6125 (index!26733 (_ BitVec 32))) (Intermediate!6125 (undefined!6937 Bool) (index!26734 (_ BitVec 32)) (x!55549 (_ BitVec 32))) (Undefined!6125) (MissingVacant!6125 (index!26735 (_ BitVec 32))) )
))
(declare-fun lt!267799 () SeekEntryResult!6125)

(assert (=> b!590187 (= res!377600 (and (= lt!267799 (Found!6125 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17678 a!2986) index!984) (select (arr!17678 a!2986) j!136))) (not (= (select (arr!17678 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36820 (_ BitVec 32)) SeekEntryResult!6125)

(assert (=> b!590187 (= lt!267799 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17678 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!590188 () Bool)

(declare-fun res!377591 () Bool)

(assert (=> b!590188 (=> (not res!377591) (not e!336952))))

(declare-datatypes ((List!11772 0))(
  ( (Nil!11769) (Cons!11768 (h!12813 (_ BitVec 64)) (t!18008 List!11772)) )
))
(declare-fun arrayNoDuplicates!0 (array!36820 (_ BitVec 32) List!11772) Bool)

(assert (=> b!590188 (= res!377591 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11769))))

(declare-fun b!590189 () Bool)

(declare-fun res!377589 () Bool)

(declare-fun e!336948 () Bool)

(assert (=> b!590189 (=> (not res!377589) (not e!336948))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36820 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!590189 (= res!377589 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!590190 () Bool)

(declare-fun e!336951 () Bool)

(declare-fun e!336946 () Bool)

(assert (=> b!590190 (= e!336951 e!336946)))

(declare-fun res!377598 () Bool)

(assert (=> b!590190 (=> res!377598 e!336946)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!267795 () (_ BitVec 64))

(assert (=> b!590190 (= res!377598 (or (not (= (select (arr!17678 a!2986) j!136) lt!267795)) (not (= (select (arr!17678 a!2986) j!136) (select (store (arr!17678 a!2986) i!1108 k!1786) index!984))) (bvsge j!136 index!984)))))

(declare-fun b!590191 () Bool)

(assert (=> b!590191 (= e!336952 e!336945)))

(declare-fun res!377602 () Bool)

(assert (=> b!590191 (=> (not res!377602) (not e!336945))))

(assert (=> b!590191 (= res!377602 (= (select (store (arr!17678 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!267800 () array!36820)

(assert (=> b!590191 (= lt!267800 (array!36821 (store (arr!17678 a!2986) i!1108 k!1786) (size!18042 a!2986)))))

(declare-fun res!377597 () Bool)

(assert (=> start!54070 (=> (not res!377597) (not e!336948))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54070 (= res!377597 (validMask!0 mask!3053))))

(assert (=> start!54070 e!336948))

(assert (=> start!54070 true))

(declare-fun array_inv!13452 (array!36820) Bool)

(assert (=> start!54070 (array_inv!13452 a!2986)))

(declare-fun b!590192 () Bool)

(assert (=> b!590192 (= e!336946 (arrayContainsKey!0 lt!267800 (select (arr!17678 a!2986) j!136) j!136))))

(declare-fun b!590193 () Bool)

(declare-fun res!377594 () Bool)

(assert (=> b!590193 (=> (not res!377594) (not e!336948))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!590193 (= res!377594 (validKeyInArray!0 k!1786))))

(declare-fun b!590194 () Bool)

(declare-fun e!336944 () Bool)

(assert (=> b!590194 (= e!336950 (not e!336944))))

(declare-fun res!377590 () Bool)

(assert (=> b!590194 (=> res!377590 e!336944)))

(declare-fun lt!267797 () SeekEntryResult!6125)

(assert (=> b!590194 (= res!377590 (not (= lt!267797 (Found!6125 index!984))))))

(declare-fun lt!267793 () Unit!18444)

(assert (=> b!590194 (= lt!267793 e!336949)))

(declare-fun c!66665 () Bool)

(assert (=> b!590194 (= c!66665 (= lt!267797 Undefined!6125))))

(assert (=> b!590194 (= lt!267797 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267795 lt!267800 mask!3053))))

(declare-fun e!336943 () Bool)

(assert (=> b!590194 e!336943))

(declare-fun res!377599 () Bool)

(assert (=> b!590194 (=> (not res!377599) (not e!336943))))

(declare-fun lt!267796 () SeekEntryResult!6125)

(declare-fun lt!267794 () (_ BitVec 32))

(assert (=> b!590194 (= res!377599 (= lt!267796 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267794 vacantSpotIndex!68 lt!267795 lt!267800 mask!3053)))))

(assert (=> b!590194 (= lt!267796 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267794 vacantSpotIndex!68 (select (arr!17678 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!590194 (= lt!267795 (select (store (arr!17678 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!267798 () Unit!18444)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36820 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18444)

(assert (=> b!590194 (= lt!267798 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267794 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!590194 (= lt!267794 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!590195 () Bool)

(assert (=> b!590195 (= e!336944 true)))

(assert (=> b!590195 e!336951))

(declare-fun res!377592 () Bool)

(assert (=> b!590195 (=> (not res!377592) (not e!336951))))

(assert (=> b!590195 (= res!377592 (= (select (store (arr!17678 a!2986) i!1108 k!1786) index!984) (select (arr!17678 a!2986) j!136)))))

(declare-fun b!590196 () Bool)

(declare-fun res!377603 () Bool)

(assert (=> b!590196 (=> (not res!377603) (not e!336948))))

(assert (=> b!590196 (= res!377603 (and (= (size!18042 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18042 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18042 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!590197 () Bool)

(assert (=> b!590197 (= e!336948 e!336952)))

(declare-fun res!377593 () Bool)

(assert (=> b!590197 (=> (not res!377593) (not e!336952))))

(declare-fun lt!267801 () SeekEntryResult!6125)

(assert (=> b!590197 (= res!377593 (or (= lt!267801 (MissingZero!6125 i!1108)) (= lt!267801 (MissingVacant!6125 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36820 (_ BitVec 32)) SeekEntryResult!6125)

(assert (=> b!590197 (= lt!267801 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!590198 () Bool)

(declare-fun res!377601 () Bool)

(assert (=> b!590198 (=> (not res!377601) (not e!336948))))

(assert (=> b!590198 (= res!377601 (validKeyInArray!0 (select (arr!17678 a!2986) j!136)))))

(declare-fun b!590199 () Bool)

(assert (=> b!590199 (= e!336943 (= lt!267799 lt!267796))))

(declare-fun b!590200 () Bool)

(declare-fun res!377595 () Bool)

(assert (=> b!590200 (=> (not res!377595) (not e!336952))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36820 (_ BitVec 32)) Bool)

(assert (=> b!590200 (= res!377595 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!590201 () Bool)

(declare-fun Unit!18447 () Unit!18444)

(assert (=> b!590201 (= e!336949 Unit!18447)))

(assert (= (and start!54070 res!377597) b!590196))

(assert (= (and b!590196 res!377603) b!590198))

(assert (= (and b!590198 res!377601) b!590193))

(assert (= (and b!590193 res!377594) b!590189))

(assert (= (and b!590189 res!377589) b!590197))

(assert (= (and b!590197 res!377593) b!590200))

(assert (= (and b!590200 res!377595) b!590188))

(assert (= (and b!590188 res!377591) b!590186))

(assert (= (and b!590186 res!377596) b!590191))

(assert (= (and b!590191 res!377602) b!590187))

(assert (= (and b!590187 res!377600) b!590194))

(assert (= (and b!590194 res!377599) b!590199))

(assert (= (and b!590194 c!66665) b!590185))

(assert (= (and b!590194 (not c!66665)) b!590201))

(assert (= (and b!590194 (not res!377590)) b!590195))

(assert (= (and b!590195 res!377592) b!590190))

(assert (= (and b!590190 (not res!377598)) b!590192))

(declare-fun m!568633 () Bool)

(assert (=> b!590187 m!568633))

(declare-fun m!568635 () Bool)

(assert (=> b!590187 m!568635))

(assert (=> b!590187 m!568635))

(declare-fun m!568637 () Bool)

(assert (=> b!590187 m!568637))

(declare-fun m!568639 () Bool)

(assert (=> b!590193 m!568639))

(declare-fun m!568641 () Bool)

(assert (=> b!590188 m!568641))

(declare-fun m!568643 () Bool)

(assert (=> start!54070 m!568643))

(declare-fun m!568645 () Bool)

(assert (=> start!54070 m!568645))

(declare-fun m!568647 () Bool)

(assert (=> b!590200 m!568647))

(declare-fun m!568649 () Bool)

(assert (=> b!590194 m!568649))

(declare-fun m!568651 () Bool)

(assert (=> b!590194 m!568651))

(assert (=> b!590194 m!568635))

(declare-fun m!568653 () Bool)

(assert (=> b!590194 m!568653))

(declare-fun m!568655 () Bool)

(assert (=> b!590194 m!568655))

(declare-fun m!568657 () Bool)

(assert (=> b!590194 m!568657))

(assert (=> b!590194 m!568635))

(declare-fun m!568659 () Bool)

(assert (=> b!590194 m!568659))

(declare-fun m!568661 () Bool)

(assert (=> b!590194 m!568661))

(assert (=> b!590198 m!568635))

(assert (=> b!590198 m!568635))

(declare-fun m!568663 () Bool)

(assert (=> b!590198 m!568663))

(declare-fun m!568665 () Bool)

(assert (=> b!590186 m!568665))

(assert (=> b!590195 m!568661))

(declare-fun m!568667 () Bool)

(assert (=> b!590195 m!568667))

(assert (=> b!590195 m!568635))

(declare-fun m!568669 () Bool)

(assert (=> b!590197 m!568669))

(declare-fun m!568671 () Bool)

(assert (=> b!590189 m!568671))

(assert (=> b!590191 m!568661))

(declare-fun m!568673 () Bool)

(assert (=> b!590191 m!568673))

(assert (=> b!590192 m!568635))

(assert (=> b!590192 m!568635))

(declare-fun m!568675 () Bool)

(assert (=> b!590192 m!568675))

(assert (=> b!590190 m!568635))

(assert (=> b!590190 m!568661))

(assert (=> b!590190 m!568667))

(push 1)

