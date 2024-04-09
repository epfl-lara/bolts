; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56460 () Bool)

(assert start!56460)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun b!625610 () Bool)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6588 0))(
  ( (MissingZero!6588 (index!28635 (_ BitVec 32))) (Found!6588 (index!28636 (_ BitVec 32))) (Intermediate!6588 (undefined!7400 Bool) (index!28637 (_ BitVec 32)) (x!57411 (_ BitVec 32))) (Undefined!6588) (MissingVacant!6588 (index!28638 (_ BitVec 32))) )
))
(declare-fun lt!289853 () SeekEntryResult!6588)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun e!358489 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37803 0))(
  ( (array!37804 (arr!18141 (Array (_ BitVec 32) (_ BitVec 64))) (size!18505 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37803)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37803 (_ BitVec 32)) SeekEntryResult!6588)

(assert (=> b!625610 (= e!358489 (not (= lt!289853 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (store (arr!18141 a!2986) i!1108 k!1786) j!136) (array!37804 (store (arr!18141 a!2986) i!1108 k!1786) (size!18505 a!2986)) mask!3053))))))

(declare-fun b!625611 () Bool)

(declare-fun res!403800 () Bool)

(declare-fun e!358490 () Bool)

(assert (=> b!625611 (=> (not res!403800) (not e!358490))))

(declare-fun arrayContainsKey!0 (array!37803 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!625611 (= res!403800 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!625612 () Bool)

(declare-fun e!358491 () Bool)

(assert (=> b!625612 (= e!358491 e!358489)))

(declare-fun res!403796 () Bool)

(assert (=> b!625612 (=> (not res!403796) (not e!358489))))

(assert (=> b!625612 (= res!403796 (and (= lt!289853 (Found!6588 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (= (select (arr!18141 a!2986) index!984) (select (arr!18141 a!2986) j!136)) (= index!984 j!136)))))

(assert (=> b!625612 (= lt!289853 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18141 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!403799 () Bool)

(assert (=> start!56460 (=> (not res!403799) (not e!358490))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56460 (= res!403799 (validMask!0 mask!3053))))

(assert (=> start!56460 e!358490))

(assert (=> start!56460 true))

(declare-fun array_inv!13915 (array!37803) Bool)

(assert (=> start!56460 (array_inv!13915 a!2986)))

(declare-fun b!625613 () Bool)

(assert (=> b!625613 (= e!358490 e!358491)))

(declare-fun res!403805 () Bool)

(assert (=> b!625613 (=> (not res!403805) (not e!358491))))

(declare-fun lt!289854 () SeekEntryResult!6588)

(assert (=> b!625613 (= res!403805 (or (= lt!289854 (MissingZero!6588 i!1108)) (= lt!289854 (MissingVacant!6588 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37803 (_ BitVec 32)) SeekEntryResult!6588)

(assert (=> b!625613 (= lt!289854 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!625614 () Bool)

(declare-fun res!403801 () Bool)

(assert (=> b!625614 (=> (not res!403801) (not e!358490))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!625614 (= res!403801 (validKeyInArray!0 (select (arr!18141 a!2986) j!136)))))

(declare-fun b!625615 () Bool)

(declare-fun res!403802 () Bool)

(assert (=> b!625615 (=> (not res!403802) (not e!358491))))

(declare-datatypes ((List!12235 0))(
  ( (Nil!12232) (Cons!12231 (h!13276 (_ BitVec 64)) (t!18471 List!12235)) )
))
(declare-fun arrayNoDuplicates!0 (array!37803 (_ BitVec 32) List!12235) Bool)

(assert (=> b!625615 (= res!403802 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12232))))

(declare-fun b!625616 () Bool)

(declare-fun res!403798 () Bool)

(assert (=> b!625616 (=> (not res!403798) (not e!358491))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37803 (_ BitVec 32)) Bool)

(assert (=> b!625616 (= res!403798 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!625617 () Bool)

(declare-fun res!403797 () Bool)

(assert (=> b!625617 (=> (not res!403797) (not e!358490))))

(assert (=> b!625617 (= res!403797 (validKeyInArray!0 k!1786))))

(declare-fun b!625618 () Bool)

(declare-fun res!403803 () Bool)

(assert (=> b!625618 (=> (not res!403803) (not e!358490))))

(assert (=> b!625618 (= res!403803 (and (= (size!18505 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18505 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18505 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!625619 () Bool)

(declare-fun res!403804 () Bool)

(assert (=> b!625619 (=> (not res!403804) (not e!358491))))

(assert (=> b!625619 (= res!403804 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18141 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18141 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!56460 res!403799) b!625618))

(assert (= (and b!625618 res!403803) b!625614))

(assert (= (and b!625614 res!403801) b!625617))

(assert (= (and b!625617 res!403797) b!625611))

(assert (= (and b!625611 res!403800) b!625613))

(assert (= (and b!625613 res!403805) b!625616))

(assert (= (and b!625616 res!403798) b!625615))

(assert (= (and b!625615 res!403802) b!625619))

(assert (= (and b!625619 res!403804) b!625612))

(assert (= (and b!625612 res!403796) b!625610))

(declare-fun m!601215 () Bool)

(assert (=> b!625616 m!601215))

(declare-fun m!601217 () Bool)

(assert (=> b!625611 m!601217))

(declare-fun m!601219 () Bool)

(assert (=> b!625612 m!601219))

(declare-fun m!601221 () Bool)

(assert (=> b!625612 m!601221))

(assert (=> b!625612 m!601221))

(declare-fun m!601223 () Bool)

(assert (=> b!625612 m!601223))

(declare-fun m!601225 () Bool)

(assert (=> b!625615 m!601225))

(declare-fun m!601227 () Bool)

(assert (=> b!625617 m!601227))

(declare-fun m!601229 () Bool)

(assert (=> b!625619 m!601229))

(declare-fun m!601231 () Bool)

(assert (=> b!625619 m!601231))

(declare-fun m!601233 () Bool)

(assert (=> b!625619 m!601233))

(assert (=> b!625614 m!601221))

(assert (=> b!625614 m!601221))

(declare-fun m!601235 () Bool)

(assert (=> b!625614 m!601235))

(declare-fun m!601237 () Bool)

(assert (=> b!625613 m!601237))

(declare-fun m!601239 () Bool)

(assert (=> start!56460 m!601239))

(declare-fun m!601241 () Bool)

(assert (=> start!56460 m!601241))

(assert (=> b!625610 m!601231))

(declare-fun m!601243 () Bool)

(assert (=> b!625610 m!601243))

(assert (=> b!625610 m!601243))

(declare-fun m!601245 () Bool)

(assert (=> b!625610 m!601245))

(push 1)

(assert (not b!625610))

(assert (not b!625617))

(assert (not b!625616))

(assert (not b!625613))

(assert (not b!625615))

(assert (not b!625611))

(assert (not b!625612))

(assert (not start!56460))

(assert (not b!625614))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!88717 () Bool)

(assert (=> d!88717 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!56460 d!88717))

(declare-fun d!88721 () Bool)

(assert (=> d!88721 (= (array_inv!13915 a!2986) (bvsge (size!18505 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!56460 d!88721))

(declare-fun d!88723 () Bool)

(declare-fun lt!289889 () SeekEntryResult!6588)

(assert (=> d!88723 (and (or (is-Undefined!6588 lt!289889) (not (is-Found!6588 lt!289889)) (and (bvsge (index!28636 lt!289889) #b00000000000000000000000000000000) (bvslt (index!28636 lt!289889) (size!18505 (array!37804 (store (arr!18141 a!2986) i!1108 k!1786) (size!18505 a!2986)))))) (or (is-Undefined!6588 lt!289889) (is-Found!6588 lt!289889) (not (is-MissingVacant!6588 lt!289889)) (not (= (index!28638 lt!289889) vacantSpotIndex!68)) (and (bvsge (index!28638 lt!289889) #b00000000000000000000000000000000) (bvslt (index!28638 lt!289889) (size!18505 (array!37804 (store (arr!18141 a!2986) i!1108 k!1786) (size!18505 a!2986)))))) (or (is-Undefined!6588 lt!289889) (ite (is-Found!6588 lt!289889) (= (select (arr!18141 (array!37804 (store (arr!18141 a!2986) i!1108 k!1786) (size!18505 a!2986))) (index!28636 lt!289889)) (select (store (arr!18141 a!2986) i!1108 k!1786) j!136)) (and (is-MissingVacant!6588 lt!289889) (= (index!28638 lt!289889) vacantSpotIndex!68) (= (select (arr!18141 (array!37804 (store (arr!18141 a!2986) i!1108 k!1786) (size!18505 a!2986))) (index!28638 lt!289889)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!358566 () SeekEntryResult!6588)

(assert (=> d!88723 (= lt!289889 e!358566)))

(declare-fun c!71304 () Bool)

(assert (=> d!88723 (= c!71304 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!289888 () (_ BitVec 64))

(assert (=> d!88723 (= lt!289888 (select (arr!18141 (array!37804 (store (arr!18141 a!2986) i!1108 k!1786) (size!18505 a!2986))) index!984))))

(assert (=> d!88723 (validMask!0 mask!3053)))

(assert (=> d!88723 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (store (arr!18141 a!2986) i!1108 k!1786) j!136) (array!37804 (store (arr!18141 a!2986) i!1108 k!1786) (size!18505 a!2986)) mask!3053) lt!289889)))

(declare-fun b!625760 () Bool)

(declare-fun e!358568 () SeekEntryResult!6588)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!625760 (= e!358568 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (store (arr!18141 a!2986) i!1108 k!1786) j!136) (array!37804 (store (arr!18141 a!2986) i!1108 k!1786) (size!18505 a!2986)) mask!3053))))

(declare-fun b!625761 () Bool)

(declare-fun e!358567 () SeekEntryResult!6588)

(assert (=> b!625761 (= e!358567 (Found!6588 index!984))))

(declare-fun b!625762 () Bool)

(assert (=> b!625762 (= e!358566 e!358567)))

(declare-fun c!71305 () Bool)

(assert (=> b!625762 (= c!71305 (= lt!289888 (select (store (arr!18141 a!2986) i!1108 k!1786) j!136)))))

(declare-fun b!625763 () Bool)

(assert (=> b!625763 (= e!358566 Undefined!6588)))

(declare-fun b!625764 () Bool)

(declare-fun c!71303 () Bool)

(assert (=> b!625764 (= c!71303 (= lt!289888 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!625764 (= e!358567 e!358568)))

(declare-fun b!625765 () Bool)

(assert (=> b!625765 (= e!358568 (MissingVacant!6588 vacantSpotIndex!68))))

(assert (= (and d!88723 c!71304) b!625763))

(assert (= (and d!88723 (not c!71304)) b!625762))

(assert (= (and b!625762 c!71305) b!625761))

(assert (= (and b!625762 (not c!71305)) b!625764))

(assert (= (and b!625764 c!71303) b!625765))

(assert (= (and b!625764 (not c!71303)) b!625760))

(declare-fun m!601349 () Bool)

(assert (=> d!88723 m!601349))

(declare-fun m!601353 () Bool)

(assert (=> d!88723 m!601353))

(declare-fun m!601355 () Bool)

(assert (=> d!88723 m!601355))

(assert (=> d!88723 m!601239))

(declare-fun m!601357 () Bool)

(assert (=> b!625760 m!601357))

(assert (=> b!625760 m!601357))

(assert (=> b!625760 m!601243))

(declare-fun m!601361 () Bool)

(assert (=> b!625760 m!601361))

(assert (=> b!625610 d!88723))

(declare-fun d!88733 () Bool)

(declare-fun res!403897 () Bool)

(declare-fun e!358584 () Bool)

(assert (=> d!88733 (=> res!403897 e!358584)))

(assert (=> d!88733 (= res!403897 (= (select (arr!18141 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!88733 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!358584)))

(declare-fun b!625783 () Bool)

(declare-fun e!358585 () Bool)

(assert (=> b!625783 (= e!358584 e!358585)))

(declare-fun res!403898 () Bool)

(assert (=> b!625783 (=> (not res!403898) (not e!358585))))

(assert (=> b!625783 (= res!403898 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18505 a!2986)))))

(declare-fun b!625784 () Bool)

(assert (=> b!625784 (= e!358585 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!88733 (not res!403897)) b!625783))

(assert (= (and b!625783 res!403898) b!625784))

(declare-fun m!601365 () Bool)

(assert (=> d!88733 m!601365))

(declare-fun m!601367 () Bool)

(assert (=> b!625784 m!601367))

(assert (=> b!625611 d!88733))

(declare-fun b!625808 () Bool)

(declare-fun e!358604 () Bool)

(declare-fun e!358605 () Bool)

(assert (=> b!625808 (= e!358604 e!358605)))

(declare-fun lt!289907 () (_ BitVec 64))

(assert (=> b!625808 (= lt!289907 (select (arr!18141 a!2986) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!21072 0))(
  ( (Unit!21073) )
))
(declare-fun lt!289906 () Unit!21072)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37803 (_ BitVec 64) (_ BitVec 32)) Unit!21072)

(assert (=> b!625808 (= lt!289906 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!289907 #b00000000000000000000000000000000))))

(assert (=> b!625808 (arrayContainsKey!0 a!2986 lt!289907 #b00000000000000000000000000000000)))

(declare-fun lt!289905 () Unit!21072)

(assert (=> b!625808 (= lt!289905 lt!289906)))

(declare-fun res!403912 () Bool)

(assert (=> b!625808 (= res!403912 (= (seekEntryOrOpen!0 (select (arr!18141 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6588 #b00000000000000000000000000000000)))))

(assert (=> b!625808 (=> (not res!403912) (not e!358605))))

(declare-fun b!625809 () Bool)

(declare-fun call!33224 () Bool)

(assert (=> b!625809 (= e!358604 call!33224)))

(declare-fun bm!33221 () Bool)

(assert (=> bm!33221 (= call!33224 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!625810 () Bool)

(declare-fun e!358606 () Bool)

(assert (=> b!625810 (= e!358606 e!358604)))

(declare-fun c!71315 () Bool)

(assert (=> b!625810 (= c!71315 (validKeyInArray!0 (select (arr!18141 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!88737 () Bool)

(declare-fun res!403913 () Bool)

(assert (=> d!88737 (=> res!403913 e!358606)))

(assert (=> d!88737 (= res!403913 (bvsge #b00000000000000000000000000000000 (size!18505 a!2986)))))

(assert (=> d!88737 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!358606)))

(declare-fun b!625811 () Bool)

(assert (=> b!625811 (= e!358605 call!33224)))

(assert (= (and d!88737 (not res!403913)) b!625810))

(assert (= (and b!625810 c!71315) b!625808))

(assert (= (and b!625810 (not c!71315)) b!625809))

(assert (= (and b!625808 res!403912) b!625811))

(assert (= (or b!625811 b!625809) bm!33221))

(assert (=> b!625808 m!601365))

(declare-fun m!601383 () Bool)

(assert (=> b!625808 m!601383))

(declare-fun m!601385 () Bool)

(assert (=> b!625808 m!601385))

(assert (=> b!625808 m!601365))

(declare-fun m!601387 () Bool)

(assert (=> b!625808 m!601387))

(declare-fun m!601389 () Bool)

(assert (=> bm!33221 m!601389))

(assert (=> b!625810 m!601365))

(assert (=> b!625810 m!601365))

(declare-fun m!601391 () Bool)

(assert (=> b!625810 m!601391))

(assert (=> b!625616 d!88737))

(declare-fun d!88741 () Bool)

