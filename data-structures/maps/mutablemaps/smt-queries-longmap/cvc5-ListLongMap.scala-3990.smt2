; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54078 () Bool)

(assert start!54078)

(declare-fun b!590389 () Bool)

(declare-fun e!337069 () Bool)

(declare-fun e!337066 () Bool)

(assert (=> b!590389 (= e!337069 e!337066)))

(declare-fun res!377774 () Bool)

(assert (=> b!590389 (=> (not res!377774) (not e!337066))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!36828 0))(
  ( (array!36829 (arr!17682 (Array (_ BitVec 32) (_ BitVec 64))) (size!18046 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36828)

(assert (=> b!590389 (= res!377774 (= (select (store (arr!17682 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!267907 () array!36828)

(assert (=> b!590389 (= lt!267907 (array!36829 (store (arr!17682 a!2986) i!1108 k!1786) (size!18046 a!2986)))))

(declare-fun b!590390 () Bool)

(declare-fun e!337070 () Bool)

(declare-datatypes ((SeekEntryResult!6129 0))(
  ( (MissingZero!6129 (index!26748 (_ BitVec 32))) (Found!6129 (index!26749 (_ BitVec 32))) (Intermediate!6129 (undefined!6941 Bool) (index!26750 (_ BitVec 32)) (x!55569 (_ BitVec 32))) (Undefined!6129) (MissingVacant!6129 (index!26751 (_ BitVec 32))) )
))
(declare-fun lt!267905 () SeekEntryResult!6129)

(declare-fun lt!267909 () SeekEntryResult!6129)

(assert (=> b!590390 (= e!337070 (= lt!267905 lt!267909))))

(declare-fun b!590391 () Bool)

(declare-fun e!337064 () Bool)

(assert (=> b!590391 (= e!337066 e!337064)))

(declare-fun res!377780 () Bool)

(assert (=> b!590391 (=> (not res!377780) (not e!337064))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!590391 (= res!377780 (and (= lt!267905 (Found!6129 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17682 a!2986) index!984) (select (arr!17682 a!2986) j!136))) (not (= (select (arr!17682 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36828 (_ BitVec 32)) SeekEntryResult!6129)

(assert (=> b!590391 (= lt!267905 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17682 a!2986) j!136) a!2986 mask!3053))))

(declare-fun e!337065 () Bool)

(declare-fun b!590392 () Bool)

(declare-fun arrayContainsKey!0 (array!36828 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!590392 (= e!337065 (arrayContainsKey!0 lt!267907 (select (arr!17682 a!2986) j!136) j!136))))

(declare-fun b!590393 () Bool)

(declare-fun res!377783 () Bool)

(declare-fun e!337067 () Bool)

(assert (=> b!590393 (=> (not res!377783) (not e!337067))))

(assert (=> b!590393 (= res!377783 (and (= (size!18046 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18046 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18046 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!590394 () Bool)

(declare-fun res!377775 () Bool)

(assert (=> b!590394 (=> (not res!377775) (not e!337067))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!590394 (= res!377775 (validKeyInArray!0 (select (arr!17682 a!2986) j!136)))))

(declare-fun res!377773 () Bool)

(assert (=> start!54078 (=> (not res!377773) (not e!337067))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54078 (= res!377773 (validMask!0 mask!3053))))

(assert (=> start!54078 e!337067))

(assert (=> start!54078 true))

(declare-fun array_inv!13456 (array!36828) Bool)

(assert (=> start!54078 (array_inv!13456 a!2986)))

(declare-fun b!590395 () Bool)

(declare-fun e!337063 () Bool)

(assert (=> b!590395 (= e!337064 (not e!337063))))

(declare-fun res!377779 () Bool)

(assert (=> b!590395 (=> res!377779 e!337063)))

(declare-fun lt!267908 () SeekEntryResult!6129)

(assert (=> b!590395 (= res!377779 (not (= lt!267908 (Found!6129 index!984))))))

(declare-datatypes ((Unit!18460 0))(
  ( (Unit!18461) )
))
(declare-fun lt!267903 () Unit!18460)

(declare-fun e!337072 () Unit!18460)

(assert (=> b!590395 (= lt!267903 e!337072)))

(declare-fun c!66677 () Bool)

(assert (=> b!590395 (= c!66677 (= lt!267908 Undefined!6129))))

(declare-fun lt!267906 () (_ BitVec 64))

(assert (=> b!590395 (= lt!267908 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267906 lt!267907 mask!3053))))

(assert (=> b!590395 e!337070))

(declare-fun res!377770 () Bool)

(assert (=> b!590395 (=> (not res!377770) (not e!337070))))

(declare-fun lt!267901 () (_ BitVec 32))

(assert (=> b!590395 (= res!377770 (= lt!267909 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267901 vacantSpotIndex!68 lt!267906 lt!267907 mask!3053)))))

(assert (=> b!590395 (= lt!267909 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267901 vacantSpotIndex!68 (select (arr!17682 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!590395 (= lt!267906 (select (store (arr!17682 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!267904 () Unit!18460)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36828 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18460)

(assert (=> b!590395 (= lt!267904 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267901 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!590395 (= lt!267901 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!590396 () Bool)

(declare-fun res!377782 () Bool)

(assert (=> b!590396 (=> (not res!377782) (not e!337067))))

(assert (=> b!590396 (= res!377782 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!590397 () Bool)

(assert (=> b!590397 (= e!337063 (or (not (= (select (arr!17682 a!2986) j!136) lt!267906)) (not (= (select (arr!17682 a!2986) j!136) (select (store (arr!17682 a!2986) i!1108 k!1786) index!984))) (bvsge j!136 index!984) (bvsge index!984 (size!18046 a!2986)) (bvslt (size!18046 a!2986) #b01111111111111111111111111111111)))))

(declare-fun e!337068 () Bool)

(assert (=> b!590397 e!337068))

(declare-fun res!377772 () Bool)

(assert (=> b!590397 (=> (not res!377772) (not e!337068))))

(assert (=> b!590397 (= res!377772 (= (select (store (arr!17682 a!2986) i!1108 k!1786) index!984) (select (arr!17682 a!2986) j!136)))))

(declare-fun b!590398 () Bool)

(assert (=> b!590398 (= e!337068 e!337065)))

(declare-fun res!377769 () Bool)

(assert (=> b!590398 (=> res!377769 e!337065)))

(assert (=> b!590398 (= res!377769 (or (not (= (select (arr!17682 a!2986) j!136) lt!267906)) (not (= (select (arr!17682 a!2986) j!136) (select (store (arr!17682 a!2986) i!1108 k!1786) index!984))) (bvsge j!136 index!984)))))

(declare-fun b!590399 () Bool)

(declare-fun res!377776 () Bool)

(assert (=> b!590399 (=> (not res!377776) (not e!337067))))

(assert (=> b!590399 (= res!377776 (validKeyInArray!0 k!1786))))

(declare-fun b!590400 () Bool)

(declare-fun res!377777 () Bool)

(assert (=> b!590400 (=> (not res!377777) (not e!337069))))

(assert (=> b!590400 (= res!377777 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17682 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!590401 () Bool)

(declare-fun Unit!18462 () Unit!18460)

(assert (=> b!590401 (= e!337072 Unit!18462)))

(declare-fun b!590402 () Bool)

(assert (=> b!590402 (= e!337067 e!337069)))

(declare-fun res!377771 () Bool)

(assert (=> b!590402 (=> (not res!377771) (not e!337069))))

(declare-fun lt!267902 () SeekEntryResult!6129)

(assert (=> b!590402 (= res!377771 (or (= lt!267902 (MissingZero!6129 i!1108)) (= lt!267902 (MissingVacant!6129 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36828 (_ BitVec 32)) SeekEntryResult!6129)

(assert (=> b!590402 (= lt!267902 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!590403 () Bool)

(declare-fun res!377778 () Bool)

(assert (=> b!590403 (=> (not res!377778) (not e!337069))))

(declare-datatypes ((List!11776 0))(
  ( (Nil!11773) (Cons!11772 (h!12817 (_ BitVec 64)) (t!18012 List!11776)) )
))
(declare-fun arrayNoDuplicates!0 (array!36828 (_ BitVec 32) List!11776) Bool)

(assert (=> b!590403 (= res!377778 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11773))))

(declare-fun b!590404 () Bool)

(declare-fun Unit!18463 () Unit!18460)

(assert (=> b!590404 (= e!337072 Unit!18463)))

(assert (=> b!590404 false))

(declare-fun b!590405 () Bool)

(declare-fun res!377781 () Bool)

(assert (=> b!590405 (=> (not res!377781) (not e!337069))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36828 (_ BitVec 32)) Bool)

(assert (=> b!590405 (= res!377781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!54078 res!377773) b!590393))

(assert (= (and b!590393 res!377783) b!590394))

(assert (= (and b!590394 res!377775) b!590399))

(assert (= (and b!590399 res!377776) b!590396))

(assert (= (and b!590396 res!377782) b!590402))

(assert (= (and b!590402 res!377771) b!590405))

(assert (= (and b!590405 res!377781) b!590403))

(assert (= (and b!590403 res!377778) b!590400))

(assert (= (and b!590400 res!377777) b!590389))

(assert (= (and b!590389 res!377774) b!590391))

(assert (= (and b!590391 res!377780) b!590395))

(assert (= (and b!590395 res!377770) b!590390))

(assert (= (and b!590395 c!66677) b!590404))

(assert (= (and b!590395 (not c!66677)) b!590401))

(assert (= (and b!590395 (not res!377779)) b!590397))

(assert (= (and b!590397 res!377772) b!590398))

(assert (= (and b!590398 (not res!377769)) b!590392))

(declare-fun m!568809 () Bool)

(assert (=> b!590399 m!568809))

(declare-fun m!568811 () Bool)

(assert (=> b!590396 m!568811))

(declare-fun m!568813 () Bool)

(assert (=> b!590392 m!568813))

(assert (=> b!590392 m!568813))

(declare-fun m!568815 () Bool)

(assert (=> b!590392 m!568815))

(declare-fun m!568817 () Bool)

(assert (=> b!590389 m!568817))

(declare-fun m!568819 () Bool)

(assert (=> b!590389 m!568819))

(assert (=> b!590397 m!568813))

(assert (=> b!590397 m!568817))

(declare-fun m!568821 () Bool)

(assert (=> b!590397 m!568821))

(declare-fun m!568823 () Bool)

(assert (=> b!590405 m!568823))

(declare-fun m!568825 () Bool)

(assert (=> b!590400 m!568825))

(assert (=> b!590398 m!568813))

(assert (=> b!590398 m!568817))

(assert (=> b!590398 m!568821))

(declare-fun m!568827 () Bool)

(assert (=> b!590395 m!568827))

(declare-fun m!568829 () Bool)

(assert (=> b!590395 m!568829))

(assert (=> b!590395 m!568813))

(assert (=> b!590395 m!568817))

(declare-fun m!568831 () Bool)

(assert (=> b!590395 m!568831))

(declare-fun m!568833 () Bool)

(assert (=> b!590395 m!568833))

(declare-fun m!568835 () Bool)

(assert (=> b!590395 m!568835))

(assert (=> b!590395 m!568813))

(declare-fun m!568837 () Bool)

(assert (=> b!590395 m!568837))

(declare-fun m!568839 () Bool)

(assert (=> b!590402 m!568839))

(assert (=> b!590394 m!568813))

(assert (=> b!590394 m!568813))

(declare-fun m!568841 () Bool)

(assert (=> b!590394 m!568841))

(declare-fun m!568843 () Bool)

(assert (=> b!590403 m!568843))

(declare-fun m!568845 () Bool)

(assert (=> start!54078 m!568845))

(declare-fun m!568847 () Bool)

(assert (=> start!54078 m!568847))

(declare-fun m!568849 () Bool)

(assert (=> b!590391 m!568849))

(assert (=> b!590391 m!568813))

(assert (=> b!590391 m!568813))

(declare-fun m!568851 () Bool)

(assert (=> b!590391 m!568851))

(push 1)

(assert (not b!590405))

(assert (not b!590392))

(assert (not b!590395))

(assert (not b!590402))

(assert (not b!590396))

(assert (not b!590394))

(assert (not start!54078))

(assert (not b!590403))

(assert (not b!590399))

(assert (not b!590391))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!86007 () Bool)

(declare-fun e!337180 () Bool)

(assert (=> d!86007 e!337180))

(declare-fun res!377900 () Bool)

(assert (=> d!86007 (=> (not res!377900) (not e!337180))))

(assert (=> d!86007 (= res!377900 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18046 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18046 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18046 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18046 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18046 a!2986))))))

(declare-fun lt!267984 () Unit!18460)

(declare-fun choose!9 (array!36828 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18460)

(assert (=> d!86007 (= lt!267984 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267901 vacantSpotIndex!68 mask!3053))))

(assert (=> d!86007 (validMask!0 mask!3053)))

(assert (=> d!86007 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267901 vacantSpotIndex!68 mask!3053) lt!267984)))

(declare-fun b!590576 () Bool)

(assert (=> b!590576 (= e!337180 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267901 vacantSpotIndex!68 (select (arr!17682 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267901 vacantSpotIndex!68 (select (store (arr!17682 a!2986) i!1108 k!1786) j!136) (array!36829 (store (arr!17682 a!2986) i!1108 k!1786) (size!18046 a!2986)) mask!3053)))))

(assert (= (and d!86007 res!377900) b!590576))

(declare-fun m!568993 () Bool)

(assert (=> d!86007 m!568993))

(assert (=> d!86007 m!568845))

(assert (=> b!590576 m!568813))

(assert (=> b!590576 m!568837))

(assert (=> b!590576 m!568829))

(assert (=> b!590576 m!568813))

(assert (=> b!590576 m!568817))

(assert (=> b!590576 m!568829))

(declare-fun m!568995 () Bool)

(assert (=> b!590576 m!568995))

(assert (=> b!590395 d!86007))

(declare-fun d!86015 () Bool)

(declare-fun lt!267987 () (_ BitVec 32))

(assert (=> d!86015 (and (bvsge lt!267987 #b00000000000000000000000000000000) (bvslt lt!267987 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!86015 (= lt!267987 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!86015 (validMask!0 mask!3053)))

(assert (=> d!86015 (= (nextIndex!0 index!984 x!910 mask!3053) lt!267987)))

(declare-fun bs!18255 () Bool)

(assert (= bs!18255 d!86015))

(declare-fun m!568997 () Bool)

(assert (=> bs!18255 m!568997))

(assert (=> bs!18255 m!568845))

(assert (=> b!590395 d!86015))

(declare-fun lt!268010 () SeekEntryResult!6129)

(declare-fun d!86017 () Bool)

(assert (=> d!86017 (and (or (is-Undefined!6129 lt!268010) (not (is-Found!6129 lt!268010)) (and (bvsge (index!26749 lt!268010) #b00000000000000000000000000000000) (bvslt (index!26749 lt!268010) (size!18046 lt!267907)))) (or (is-Undefined!6129 lt!268010) (is-Found!6129 lt!268010) (not (is-MissingVacant!6129 lt!268010)) (not (= (index!26751 lt!268010) vacantSpotIndex!68)) (and (bvsge (index!26751 lt!268010) #b00000000000000000000000000000000) (bvslt (index!26751 lt!268010) (size!18046 lt!267907)))) (or (is-Undefined!6129 lt!268010) (ite (is-Found!6129 lt!268010) (= (select (arr!17682 lt!267907) (index!26749 lt!268010)) lt!267906) (and (is-MissingVacant!6129 lt!268010) (= (index!26751 lt!268010) vacantSpotIndex!68) (= (select (arr!17682 lt!267907) (index!26751 lt!268010)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!337209 () SeekEntryResult!6129)

(assert (=> d!86017 (= lt!268010 e!337209)))

(declare-fun c!66730 () Bool)

(assert (=> d!86017 (= c!66730 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!268011 () (_ BitVec 64))

(assert (=> d!86017 (= lt!268011 (select (arr!17682 lt!267907) lt!267901))))

(assert (=> d!86017 (validMask!0 mask!3053)))

(assert (=> d!86017 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267901 vacantSpotIndex!68 lt!267906 lt!267907 mask!3053) lt!268010)))

(declare-fun b!590627 () Bool)

(declare-fun c!66729 () Bool)

(assert (=> b!590627 (= c!66729 (= lt!268011 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!337208 () SeekEntryResult!6129)

(declare-fun e!337207 () SeekEntryResult!6129)

(assert (=> b!590627 (= e!337208 e!337207)))

(declare-fun b!590628 () Bool)

(assert (=> b!590628 (= e!337209 Undefined!6129)))

(declare-fun b!590629 () Bool)

(assert (=> b!590629 (= e!337208 (Found!6129 lt!267901))))

(declare-fun b!590630 () Bool)

(assert (=> b!590630 (= e!337207 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!267901 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!267906 lt!267907 mask!3053))))

(declare-fun b!590631 () Bool)

(assert (=> b!590631 (= e!337209 e!337208)))

(declare-fun c!66731 () Bool)

(assert (=> b!590631 (= c!66731 (= lt!268011 lt!267906))))

(declare-fun b!590632 () Bool)

(assert (=> b!590632 (= e!337207 (MissingVacant!6129 vacantSpotIndex!68))))

(assert (= (and d!86017 c!66730) b!590628))

(assert (= (and d!86017 (not c!66730)) b!590631))

(assert (= (and b!590631 c!66731) b!590629))

(assert (= (and b!590631 (not c!66731)) b!590627))

(assert (= (and b!590627 c!66729) b!590632))

(assert (= (and b!590627 (not c!66729)) b!590630))

(declare-fun m!569031 () Bool)

(assert (=> d!86017 m!569031))

(declare-fun m!569033 () Bool)

(assert (=> d!86017 m!569033))

(declare-fun m!569035 () Bool)

(assert (=> d!86017 m!569035))

(assert (=> d!86017 m!568845))

(declare-fun m!569037 () Bool)

(assert (=> b!590630 m!569037))

(assert (=> b!590630 m!569037))

(declare-fun m!569039 () Bool)

(assert (=> b!590630 m!569039))

(assert (=> b!590395 d!86017))

(declare-fun lt!268012 () SeekEntryResult!6129)

(declare-fun d!86025 () Bool)

(assert (=> d!86025 (and (or (is-Undefined!6129 lt!268012) (not (is-Found!6129 lt!268012)) (and (bvsge (index!26749 lt!268012) #b00000000000000000000000000000000) (bvslt (index!26749 lt!268012) (size!18046 a!2986)))) (or (is-Undefined!6129 lt!268012) (is-Found!6129 lt!268012) (not (is-MissingVacant!6129 lt!268012)) (not (= (index!26751 lt!268012) vacantSpotIndex!68)) (and (bvsge (index!26751 lt!268012) #b00000000000000000000000000000000) (bvslt (index!26751 lt!268012) (size!18046 a!2986)))) (or (is-Undefined!6129 lt!268012) (ite (is-Found!6129 lt!268012) (= (select (arr!17682 a!2986) (index!26749 lt!268012)) (select (arr!17682 a!2986) j!136)) (and (is-MissingVacant!6129 lt!268012) (= (index!26751 lt!268012) vacantSpotIndex!68) (= (select (arr!17682 a!2986) (index!26751 lt!268012)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!337212 () SeekEntryResult!6129)

(assert (=> d!86025 (= lt!268012 e!337212)))

(declare-fun c!66733 () Bool)

(assert (=> d!86025 (= c!66733 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!268013 () (_ BitVec 64))

(assert (=> d!86025 (= lt!268013 (select (arr!17682 a!2986) lt!267901))))

(assert (=> d!86025 (validMask!0 mask!3053)))

(assert (=> d!86025 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267901 vacantSpotIndex!68 (select (arr!17682 a!2986) j!136) a!2986 mask!3053) lt!268012)))

(declare-fun b!590633 () Bool)

(declare-fun c!66732 () Bool)

(assert (=> b!590633 (= c!66732 (= lt!268013 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!337211 () SeekEntryResult!6129)

(declare-fun e!337210 () SeekEntryResult!6129)

(assert (=> b!590633 (= e!337211 e!337210)))

(declare-fun b!590634 () Bool)

(assert (=> b!590634 (= e!337212 Undefined!6129)))

(declare-fun b!590635 () Bool)

(assert (=> b!590635 (= e!337211 (Found!6129 lt!267901))))

(declare-fun b!590636 () Bool)

(assert (=> b!590636 (= e!337210 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!267901 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17682 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!590637 () Bool)

(assert (=> b!590637 (= e!337212 e!337211)))

(declare-fun c!66734 () Bool)

(assert (=> b!590637 (= c!66734 (= lt!268013 (select (arr!17682 a!2986) j!136)))))

(declare-fun b!590638 () Bool)

(assert (=> b!590638 (= e!337210 (MissingVacant!6129 vacantSpotIndex!68))))

(assert (= (and d!86025 c!66733) b!590634))

(assert (= (and d!86025 (not c!66733)) b!590637))

(assert (= (and b!590637 c!66734) b!590635))

(assert (= (and b!590637 (not c!66734)) b!590633))

(assert (= (and b!590633 c!66732) b!590638))

(assert (= (and b!590633 (not c!66732)) b!590636))

(declare-fun m!569041 () Bool)

(assert (=> d!86025 m!569041))

(declare-fun m!569043 () Bool)

(assert (=> d!86025 m!569043))

(declare-fun m!569045 () Bool)

(assert (=> d!86025 m!569045))

(assert (=> d!86025 m!568845))

