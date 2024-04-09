; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57622 () Bool)

(assert start!57622)

(declare-fun b!636772 () Bool)

(declare-datatypes ((Unit!21474 0))(
  ( (Unit!21475) )
))
(declare-fun e!364335 () Unit!21474)

(declare-fun Unit!21476 () Unit!21474)

(assert (=> b!636772 (= e!364335 Unit!21476)))

(declare-fun b!636773 () Bool)

(declare-fun res!412077 () Bool)

(declare-fun e!364333 () Bool)

(assert (=> b!636773 (=> (not res!412077) (not e!364333))))

(declare-datatypes ((array!38224 0))(
  ( (array!38225 (arr!18332 (Array (_ BitVec 32) (_ BitVec 64))) (size!18696 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38224)

(declare-datatypes ((List!12426 0))(
  ( (Nil!12423) (Cons!12422 (h!13467 (_ BitVec 64)) (t!18662 List!12426)) )
))
(declare-fun arrayNoDuplicates!0 (array!38224 (_ BitVec 32) List!12426) Bool)

(assert (=> b!636773 (= res!412077 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12423))))

(declare-fun b!636774 () Bool)

(declare-fun res!412081 () Bool)

(declare-fun e!364329 () Bool)

(assert (=> b!636774 (=> (not res!412081) (not e!364329))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38224 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!636774 (= res!412081 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!636775 () Bool)

(declare-fun e!364336 () Bool)

(declare-fun e!364328 () Bool)

(assert (=> b!636775 (= e!364336 e!364328)))

(declare-fun res!412066 () Bool)

(assert (=> b!636775 (=> (not res!412066) (not e!364328))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!294476 () array!38224)

(assert (=> b!636775 (= res!412066 (arrayContainsKey!0 lt!294476 (select (arr!18332 a!2986) j!136) j!136))))

(declare-fun b!636777 () Bool)

(declare-fun e!364337 () Bool)

(declare-fun e!364330 () Bool)

(assert (=> b!636777 (= e!364337 e!364330)))

(declare-fun res!412064 () Bool)

(assert (=> b!636777 (=> res!412064 e!364330)))

(assert (=> b!636777 (= res!412064 (or (bvsge (size!18696 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18696 a!2986))))))

(assert (=> b!636777 (arrayContainsKey!0 lt!294476 (select (arr!18332 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!294482 () Unit!21474)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38224 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21474)

(assert (=> b!636777 (= lt!294482 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!294476 (select (arr!18332 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!636778 () Bool)

(declare-fun Unit!21477 () Unit!21474)

(assert (=> b!636778 (= e!364335 Unit!21477)))

(assert (=> b!636778 false))

(declare-fun b!636779 () Bool)

(declare-fun res!412068 () Bool)

(assert (=> b!636779 (=> res!412068 e!364330)))

(declare-fun noDuplicate!384 (List!12426) Bool)

(assert (=> b!636779 (= res!412068 (not (noDuplicate!384 Nil!12423)))))

(declare-fun b!636780 () Bool)

(declare-fun res!412071 () Bool)

(assert (=> b!636780 (=> (not res!412071) (not e!364329))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!636780 (= res!412071 (and (= (size!18696 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18696 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18696 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!636781 () Bool)

(declare-fun res!412074 () Bool)

(assert (=> b!636781 (=> (not res!412074) (not e!364333))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38224 (_ BitVec 32)) Bool)

(assert (=> b!636781 (= res!412074 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!636776 () Bool)

(declare-fun res!412069 () Bool)

(assert (=> b!636776 (=> (not res!412069) (not e!364329))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!636776 (= res!412069 (validKeyInArray!0 k!1786))))

(declare-fun res!412062 () Bool)

(assert (=> start!57622 (=> (not res!412062) (not e!364329))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57622 (= res!412062 (validMask!0 mask!3053))))

(assert (=> start!57622 e!364329))

(assert (=> start!57622 true))

(declare-fun array_inv!14106 (array!38224) Bool)

(assert (=> start!57622 (array_inv!14106 a!2986)))

(declare-fun b!636782 () Bool)

(declare-fun e!364327 () Bool)

(declare-fun e!364339 () Bool)

(assert (=> b!636782 (= e!364327 e!364339)))

(declare-fun res!412076 () Bool)

(assert (=> b!636782 (=> (not res!412076) (not e!364339))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6779 0))(
  ( (MissingZero!6779 (index!29426 (_ BitVec 32))) (Found!6779 (index!29427 (_ BitVec 32))) (Intermediate!6779 (undefined!7591 Bool) (index!29428 (_ BitVec 32)) (x!58205 (_ BitVec 32))) (Undefined!6779) (MissingVacant!6779 (index!29429 (_ BitVec 32))) )
))
(declare-fun lt!294477 () SeekEntryResult!6779)

(assert (=> b!636782 (= res!412076 (and (= lt!294477 (Found!6779 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18332 a!2986) index!984) (select (arr!18332 a!2986) j!136))) (not (= (select (arr!18332 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38224 (_ BitVec 32)) SeekEntryResult!6779)

(assert (=> b!636782 (= lt!294477 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18332 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!636783 () Bool)

(declare-fun res!412072 () Bool)

(assert (=> b!636783 (=> res!412072 e!364330)))

(declare-fun contains!3109 (List!12426 (_ BitVec 64)) Bool)

(assert (=> b!636783 (= res!412072 (contains!3109 Nil!12423 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!636784 () Bool)

(declare-fun res!412075 () Bool)

(assert (=> b!636784 (=> (not res!412075) (not e!364333))))

(assert (=> b!636784 (= res!412075 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18332 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!636785 () Bool)

(declare-fun e!364331 () Bool)

(assert (=> b!636785 (= e!364331 e!364337)))

(declare-fun res!412082 () Bool)

(assert (=> b!636785 (=> res!412082 e!364337)))

(declare-fun lt!294481 () (_ BitVec 64))

(declare-fun lt!294478 () (_ BitVec 64))

(assert (=> b!636785 (= res!412082 (or (not (= (select (arr!18332 a!2986) j!136) lt!294481)) (not (= (select (arr!18332 a!2986) j!136) lt!294478)) (bvsge j!136 index!984)))))

(declare-fun e!364332 () Bool)

(assert (=> b!636785 e!364332))

(declare-fun res!412078 () Bool)

(assert (=> b!636785 (=> (not res!412078) (not e!364332))))

(assert (=> b!636785 (= res!412078 (= lt!294478 (select (arr!18332 a!2986) j!136)))))

(assert (=> b!636785 (= lt!294478 (select (store (arr!18332 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!636786 () Bool)

(assert (=> b!636786 (= e!364328 (arrayContainsKey!0 lt!294476 (select (arr!18332 a!2986) j!136) index!984))))

(declare-fun b!636787 () Bool)

(declare-fun res!412070 () Bool)

(assert (=> b!636787 (=> (not res!412070) (not e!364329))))

(assert (=> b!636787 (= res!412070 (validKeyInArray!0 (select (arr!18332 a!2986) j!136)))))

(declare-fun b!636788 () Bool)

(assert (=> b!636788 (= e!364333 e!364327)))

(declare-fun res!412080 () Bool)

(assert (=> b!636788 (=> (not res!412080) (not e!364327))))

(assert (=> b!636788 (= res!412080 (= (select (store (arr!18332 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!636788 (= lt!294476 (array!38225 (store (arr!18332 a!2986) i!1108 k!1786) (size!18696 a!2986)))))

(declare-fun b!636789 () Bool)

(assert (=> b!636789 (= e!364339 (not e!364331))))

(declare-fun res!412063 () Bool)

(assert (=> b!636789 (=> res!412063 e!364331)))

(declare-fun lt!294483 () SeekEntryResult!6779)

(assert (=> b!636789 (= res!412063 (not (= lt!294483 (Found!6779 index!984))))))

(declare-fun lt!294474 () Unit!21474)

(assert (=> b!636789 (= lt!294474 e!364335)))

(declare-fun c!72722 () Bool)

(assert (=> b!636789 (= c!72722 (= lt!294483 Undefined!6779))))

(assert (=> b!636789 (= lt!294483 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!294481 lt!294476 mask!3053))))

(declare-fun e!364338 () Bool)

(assert (=> b!636789 e!364338))

(declare-fun res!412065 () Bool)

(assert (=> b!636789 (=> (not res!412065) (not e!364338))))

(declare-fun lt!294479 () (_ BitVec 32))

(declare-fun lt!294473 () SeekEntryResult!6779)

(assert (=> b!636789 (= res!412065 (= lt!294473 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294479 vacantSpotIndex!68 lt!294481 lt!294476 mask!3053)))))

(assert (=> b!636789 (= lt!294473 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294479 vacantSpotIndex!68 (select (arr!18332 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!636789 (= lt!294481 (select (store (arr!18332 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!294475 () Unit!21474)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38224 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21474)

(assert (=> b!636789 (= lt!294475 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294479 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!636789 (= lt!294479 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!636790 () Bool)

(assert (=> b!636790 (= e!364338 (= lt!294477 lt!294473))))

(declare-fun b!636791 () Bool)

(assert (=> b!636791 (= e!364330 (not (contains!3109 Nil!12423 k!1786)))))

(declare-fun b!636792 () Bool)

(assert (=> b!636792 (= e!364329 e!364333)))

(declare-fun res!412079 () Bool)

(assert (=> b!636792 (=> (not res!412079) (not e!364333))))

(declare-fun lt!294480 () SeekEntryResult!6779)

(assert (=> b!636792 (= res!412079 (or (= lt!294480 (MissingZero!6779 i!1108)) (= lt!294480 (MissingVacant!6779 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38224 (_ BitVec 32)) SeekEntryResult!6779)

(assert (=> b!636792 (= lt!294480 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!636793 () Bool)

(declare-fun res!412073 () Bool)

(assert (=> b!636793 (=> res!412073 e!364330)))

(assert (=> b!636793 (= res!412073 (contains!3109 Nil!12423 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!636794 () Bool)

(assert (=> b!636794 (= e!364332 e!364336)))

(declare-fun res!412067 () Bool)

(assert (=> b!636794 (=> res!412067 e!364336)))

(assert (=> b!636794 (= res!412067 (or (not (= (select (arr!18332 a!2986) j!136) lt!294481)) (not (= (select (arr!18332 a!2986) j!136) lt!294478)) (bvsge j!136 index!984)))))

(assert (= (and start!57622 res!412062) b!636780))

(assert (= (and b!636780 res!412071) b!636787))

(assert (= (and b!636787 res!412070) b!636776))

(assert (= (and b!636776 res!412069) b!636774))

(assert (= (and b!636774 res!412081) b!636792))

(assert (= (and b!636792 res!412079) b!636781))

(assert (= (and b!636781 res!412074) b!636773))

(assert (= (and b!636773 res!412077) b!636784))

(assert (= (and b!636784 res!412075) b!636788))

(assert (= (and b!636788 res!412080) b!636782))

(assert (= (and b!636782 res!412076) b!636789))

(assert (= (and b!636789 res!412065) b!636790))

(assert (= (and b!636789 c!72722) b!636778))

(assert (= (and b!636789 (not c!72722)) b!636772))

(assert (= (and b!636789 (not res!412063)) b!636785))

(assert (= (and b!636785 res!412078) b!636794))

(assert (= (and b!636794 (not res!412067)) b!636775))

(assert (= (and b!636775 res!412066) b!636786))

(assert (= (and b!636785 (not res!412082)) b!636777))

(assert (= (and b!636777 (not res!412064)) b!636779))

(assert (= (and b!636779 (not res!412068)) b!636793))

(assert (= (and b!636793 (not res!412073)) b!636783))

(assert (= (and b!636783 (not res!412072)) b!636791))

(declare-fun m!610979 () Bool)

(assert (=> b!636777 m!610979))

(assert (=> b!636777 m!610979))

(declare-fun m!610981 () Bool)

(assert (=> b!636777 m!610981))

(assert (=> b!636777 m!610979))

(declare-fun m!610983 () Bool)

(assert (=> b!636777 m!610983))

(declare-fun m!610985 () Bool)

(assert (=> b!636774 m!610985))

(assert (=> b!636794 m!610979))

(declare-fun m!610987 () Bool)

(assert (=> b!636788 m!610987))

(declare-fun m!610989 () Bool)

(assert (=> b!636788 m!610989))

(assert (=> b!636787 m!610979))

(assert (=> b!636787 m!610979))

(declare-fun m!610991 () Bool)

(assert (=> b!636787 m!610991))

(assert (=> b!636775 m!610979))

(assert (=> b!636775 m!610979))

(declare-fun m!610993 () Bool)

(assert (=> b!636775 m!610993))

(declare-fun m!610995 () Bool)

(assert (=> b!636779 m!610995))

(declare-fun m!610997 () Bool)

(assert (=> b!636773 m!610997))

(declare-fun m!610999 () Bool)

(assert (=> b!636791 m!610999))

(declare-fun m!611001 () Bool)

(assert (=> b!636793 m!611001))

(declare-fun m!611003 () Bool)

(assert (=> b!636783 m!611003))

(declare-fun m!611005 () Bool)

(assert (=> b!636784 m!611005))

(declare-fun m!611007 () Bool)

(assert (=> b!636776 m!611007))

(declare-fun m!611009 () Bool)

(assert (=> start!57622 m!611009))

(declare-fun m!611011 () Bool)

(assert (=> start!57622 m!611011))

(assert (=> b!636786 m!610979))

(assert (=> b!636786 m!610979))

(declare-fun m!611013 () Bool)

(assert (=> b!636786 m!611013))

(declare-fun m!611015 () Bool)

(assert (=> b!636789 m!611015))

(declare-fun m!611017 () Bool)

(assert (=> b!636789 m!611017))

(assert (=> b!636789 m!610979))

(declare-fun m!611019 () Bool)

(assert (=> b!636789 m!611019))

(declare-fun m!611021 () Bool)

(assert (=> b!636789 m!611021))

(assert (=> b!636789 m!610979))

(declare-fun m!611023 () Bool)

(assert (=> b!636789 m!611023))

(assert (=> b!636789 m!610987))

(declare-fun m!611025 () Bool)

(assert (=> b!636789 m!611025))

(assert (=> b!636785 m!610979))

(assert (=> b!636785 m!610987))

(declare-fun m!611027 () Bool)

(assert (=> b!636785 m!611027))

(declare-fun m!611029 () Bool)

(assert (=> b!636782 m!611029))

(assert (=> b!636782 m!610979))

(assert (=> b!636782 m!610979))

(declare-fun m!611031 () Bool)

(assert (=> b!636782 m!611031))

(declare-fun m!611033 () Bool)

(assert (=> b!636792 m!611033))

(declare-fun m!611035 () Bool)

(assert (=> b!636781 m!611035))

(push 1)

(assert (not b!636792))

(assert (not b!636783))

(assert (not b!636793))

(assert (not b!636786))

(assert (not b!636776))

(assert (not b!636782))

(assert (not b!636773))

(assert (not b!636781))

(assert (not b!636774))

(assert (not b!636787))

(assert (not b!636779))

(assert (not b!636777))

(assert (not b!636791))

(assert (not b!636789))

(assert (not start!57622))

(assert (not b!636775))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!636845 () Bool)

(declare-fun e!364385 () Bool)

(assert (=> b!636845 (= e!364385 (contains!3109 Nil!12423 (select (arr!18332 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!636846 () Bool)

(declare-fun e!364388 () Bool)

(declare-fun e!364387 () Bool)

(assert (=> b!636846 (= e!364388 e!364387)))

(declare-fun res!412123 () Bool)

(assert (=> b!636846 (=> (not res!412123) (not e!364387))))

(assert (=> b!636846 (= res!412123 (not e!364385))))

(declare-fun res!412124 () Bool)

(assert (=> b!636846 (=> (not res!412124) (not e!364385))))

(assert (=> b!636846 (= res!412124 (validKeyInArray!0 (select (arr!18332 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!89973 () Bool)

(declare-fun res!412125 () Bool)

(assert (=> d!89973 (=> res!412125 e!364388)))

(assert (=> d!89973 (= res!412125 (bvsge #b00000000000000000000000000000000 (size!18696 a!2986)))))

(assert (=> d!89973 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12423) e!364388)))

(declare-fun b!636847 () Bool)

(declare-fun e!364386 () Bool)

(declare-fun call!33452 () Bool)

(assert (=> b!636847 (= e!364386 call!33452)))

(declare-fun b!636848 () Bool)

(assert (=> b!636848 (= e!364387 e!364386)))

(declare-fun c!72728 () Bool)

(assert (=> b!636848 (= c!72728 (validKeyInArray!0 (select (arr!18332 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33449 () Bool)

(assert (=> bm!33449 (= call!33452 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!72728 (Cons!12422 (select (arr!18332 a!2986) #b00000000000000000000000000000000) Nil!12423) Nil!12423)))))

(declare-fun b!636849 () Bool)

(assert (=> b!636849 (= e!364386 call!33452)))

(assert (= (and d!89973 (not res!412125)) b!636846))

(assert (= (and b!636846 res!412124) b!636845))

(assert (= (and b!636846 res!412123) b!636848))

(assert (= (and b!636848 c!72728) b!636849))

(assert (= (and b!636848 (not c!72728)) b!636847))

(assert (= (or b!636849 b!636847) bm!33449))

(declare-fun m!611083 () Bool)

(assert (=> b!636845 m!611083))

(assert (=> b!636845 m!611083))

(declare-fun m!611085 () Bool)

(assert (=> b!636845 m!611085))

(assert (=> b!636846 m!611083))

(assert (=> b!636846 m!611083))

(declare-fun m!611087 () Bool)

(assert (=> b!636846 m!611087))

(assert (=> b!636848 m!611083))

(assert (=> b!636848 m!611083))

(assert (=> b!636848 m!611087))

(assert (=> bm!33449 m!611083))

(declare-fun m!611089 () Bool)

(assert (=> bm!33449 m!611089))

(assert (=> b!636773 d!89973))

(declare-fun d!89975 () Bool)

(declare-fun lt!294503 () Bool)

(declare-fun content!246 (List!12426) (Set (_ BitVec 64)))

(assert (=> d!89975 (= lt!294503 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!246 Nil!12423)))))

(declare-fun e!364393 () Bool)

(assert (=> d!89975 (= lt!294503 e!364393)))

(declare-fun res!412131 () Bool)

(assert (=> d!89975 (=> (not res!412131) (not e!364393))))

(assert (=> d!89975 (= res!412131 (is-Cons!12422 Nil!12423))))

(assert (=> d!89975 (= (contains!3109 Nil!12423 #b1000000000000000000000000000000000000000000000000000000000000000) lt!294503)))

(declare-fun b!636854 () Bool)

(declare-fun e!364394 () Bool)

(assert (=> b!636854 (= e!364393 e!364394)))

(declare-fun res!412130 () Bool)

(assert (=> b!636854 (=> res!412130 e!364394)))

(assert (=> b!636854 (= res!412130 (= (h!13467 Nil!12423) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!636855 () Bool)

(assert (=> b!636855 (= e!364394 (contains!3109 (t!18662 Nil!12423) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!89975 res!412131) b!636854))

(assert (= (and b!636854 (not res!412130)) b!636855))

(declare-fun m!611091 () Bool)

(assert (=> d!89975 m!611091))

(declare-fun m!611093 () Bool)

(assert (=> d!89975 m!611093))

(declare-fun m!611095 () Bool)

(assert (=> b!636855 m!611095))

(assert (=> b!636783 d!89975))

(declare-fun d!89977 () Bool)

(declare-fun res!412136 () Bool)

(declare-fun e!364401 () Bool)

(assert (=> d!89977 (=> res!412136 e!364401)))

(assert (=> d!89977 (= res!412136 (= (select (arr!18332 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!89977 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!364401)))

(declare-fun b!636864 () Bool)

(declare-fun e!364402 () Bool)

(assert (=> b!636864 (= e!364401 e!364402)))

(declare-fun res!412137 () Bool)

(assert (=> b!636864 (=> (not res!412137) (not e!364402))))

(assert (=> b!636864 (= res!412137 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18696 a!2986)))))

(declare-fun b!636865 () Bool)

(assert (=> b!636865 (= e!364402 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!89977 (not res!412136)) b!636864))

(assert (= (and b!636864 res!412137) b!636865))

(assert (=> d!89977 m!611083))

(declare-fun m!611097 () Bool)

(assert (=> b!636865 m!611097))

(assert (=> b!636774 d!89977))

(declare-fun b!636906 () Bool)

(declare-fun e!364426 () Bool)

(declare-fun e!364427 () Bool)

(assert (=> b!636906 (= e!364426 e!364427)))

(declare-fun c!72749 () Bool)

(assert (=> b!636906 (= c!72749 (validKeyInArray!0 (select (arr!18332 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33452 () Bool)

(declare-fun call!33455 () Bool)

(assert (=> bm!33452 (= call!33455 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!636907 () Bool)

(assert (=> b!636907 (= e!364427 call!33455)))

(declare-fun d!89979 () Bool)

(declare-fun res!412143 () Bool)

(assert (=> d!89979 (=> res!412143 e!364426)))

(assert (=> d!89979 (= res!412143 (bvsge #b00000000000000000000000000000000 (size!18696 a!2986)))))

(assert (=> d!89979 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!364426)))

(declare-fun b!636908 () Bool)

(declare-fun e!364425 () Bool)

(assert (=> b!636908 (= e!364425 call!33455)))

(declare-fun b!636909 () Bool)

(assert (=> b!636909 (= e!364427 e!364425)))

(declare-fun lt!294522 () (_ BitVec 64))

(assert (=> b!636909 (= lt!294522 (select (arr!18332 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!294523 () Unit!21474)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38224 (_ BitVec 64) (_ BitVec 32)) Unit!21474)

(assert (=> b!636909 (= lt!294523 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!294522 #b00000000000000000000000000000000))))

(assert (=> b!636909 (arrayContainsKey!0 a!2986 lt!294522 #b00000000000000000000000000000000)))

(declare-fun lt!294524 () Unit!21474)

(assert (=> b!636909 (= lt!294524 lt!294523)))

(declare-fun res!412142 () Bool)

(assert (=> b!636909 (= res!412142 (= (seekEntryOrOpen!0 (select (arr!18332 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6779 #b00000000000000000000000000000000)))))

(assert (=> b!636909 (=> (not res!412142) (not e!364425))))

(assert (= (and d!89979 (not res!412143)) b!636906))

(assert (= (and b!636906 c!72749) b!636909))

(assert (= (and b!636906 (not c!72749)) b!636907))

(assert (= (and b!636909 res!412142) b!636908))

(assert (= (or b!636908 b!636907) bm!33452))

(assert (=> b!636906 m!611083))

(assert (=> b!636906 m!611083))

(assert (=> b!636906 m!611087))

(declare-fun m!611105 () Bool)

(assert (=> bm!33452 m!611105))

(assert (=> b!636909 m!611083))

(declare-fun m!611109 () Bool)

(assert (=> b!636909 m!611109))

(declare-fun m!611111 () Bool)

(assert (=> b!636909 m!611111))

(assert (=> b!636909 m!611083))

(declare-fun m!611115 () Bool)

(assert (=> b!636909 m!611115))

(assert (=> b!636781 d!89979))

(declare-fun b!636958 () Bool)

(declare-fun e!364452 () SeekEntryResult!6779)

(assert (=> b!636958 (= e!364452 Undefined!6779)))

(declare-fun b!636960 () Bool)

(declare-fun e!364454 () SeekEntryResult!6779)

(declare-fun lt!294549 () SeekEntryResult!6779)

(assert (=> b!636960 (= e!364454 (MissingZero!6779 (index!29428 lt!294549)))))

(declare-fun b!636961 () Bool)

(declare-fun e!364453 () SeekEntryResult!6779)

(assert (=> b!636961 (= e!364453 (Found!6779 (index!29428 lt!294549)))))

(declare-fun b!636962 () Bool)

(assert (=> b!636962 (= e!364454 (seekKeyOrZeroReturnVacant!0 (x!58205 lt!294549) (index!29428 lt!294549) (index!29428 lt!294549) k!1786 a!2986 mask!3053))))

(declare-fun b!636963 () Bool)

(assert (=> b!636963 (= e!364452 e!364453)))

(declare-fun lt!294550 () (_ BitVec 64))

(assert (=> b!636963 (= lt!294550 (select (arr!18332 a!2986) (index!29428 lt!294549)))))

(declare-fun c!72775 () Bool)

(assert (=> b!636963 (= c!72775 (= lt!294550 k!1786))))

(declare-fun d!89983 () Bool)

(declare-fun lt!294551 () SeekEntryResult!6779)

(assert (=> d!89983 (and (or (is-Undefined!6779 lt!294551) (not (is-Found!6779 lt!294551)) (and (bvsge (index!29427 lt!294551) #b00000000000000000000000000000000) (bvslt (index!29427 lt!294551) (size!18696 a!2986)))) (or (is-Undefined!6779 lt!294551) (is-Found!6779 lt!294551) (not (is-MissingZero!6779 lt!294551)) (and (bvsge (index!29426 lt!294551) #b00000000000000000000000000000000) (bvslt (index!29426 lt!294551) (size!18696 a!2986)))) (or (is-Undefined!6779 lt!294551) (is-Found!6779 lt!294551) (is-MissingZero!6779 lt!294551) (not (is-MissingVacant!6779 lt!294551)) (and (bvsge (index!29429 lt!294551) #b00000000000000000000000000000000) (bvslt (index!29429 lt!294551) (size!18696 a!2986)))) (or (is-Undefined!6779 lt!294551) (ite (is-Found!6779 lt!294551) (= (select (arr!18332 a!2986) (index!29427 lt!294551)) k!1786) (ite (is-MissingZero!6779 lt!294551) (= (select (arr!18332 a!2986) (index!29426 lt!294551)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6779 lt!294551) (= (select (arr!18332 a!2986) (index!29429 lt!294551)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!89983 (= lt!294551 e!364452)))

(declare-fun c!72776 () Bool)

(assert (=> d!89983 (= c!72776 (and (is-Intermediate!6779 lt!294549) (undefined!7591 lt!294549)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38224 (_ BitVec 32)) SeekEntryResult!6779)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89983 (= lt!294549 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!89983 (validMask!0 mask!3053)))

(assert (=> d!89983 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!294551)))

(declare-fun b!636959 () Bool)

(declare-fun c!72774 () Bool)

(assert (=> b!636959 (= c!72774 (= lt!294550 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!636959 (= e!364453 e!364454)))

(assert (= (and d!89983 c!72776) b!636958))

(assert (= (and d!89983 (not c!72776)) b!636963))

(assert (= (and b!636963 c!72775) b!636961))

(assert (= (and b!636963 (not c!72775)) b!636959))

(assert (= (and b!636959 c!72774) b!636960))

(assert (= (and b!636959 (not c!72774)) b!636962))

(declare-fun m!611173 () Bool)

(assert (=> b!636962 m!611173))

(declare-fun m!611175 () Bool)

(assert (=> b!636963 m!611175))

(assert (=> d!89983 m!611009))

(declare-fun m!611177 () Bool)

(assert (=> d!89983 m!611177))

(declare-fun m!611179 () Bool)

(assert (=> d!89983 m!611179))

(declare-fun m!611181 () Bool)

(assert (=> d!89983 m!611181))

(declare-fun m!611183 () Bool)

(assert (=> d!89983 m!611183))

(assert (=> d!89983 m!611179))

(declare-fun m!611185 () Bool)

(assert (=> d!89983 m!611185))

(assert (=> b!636792 d!89983))

(declare-fun d!90003 () Bool)

(declare-fun lt!294552 () Bool)

(assert (=> d!90003 (= lt!294552 (member k!1786 (content!246 Nil!12423)))))

(declare-fun e!364455 () Bool)

(assert (=> d!90003 (= lt!294552 e!364455)))

(declare-fun res!412145 () Bool)

(assert (=> d!90003 (=> (not res!412145) (not e!364455))))

(assert (=> d!90003 (= res!412145 (is-Cons!12422 Nil!12423))))

(assert (=> d!90003 (= (contains!3109 Nil!12423 k!1786) lt!294552)))

(declare-fun b!636964 () Bool)

(declare-fun e!364456 () Bool)

(assert (=> b!636964 (= e!364455 e!364456)))

(declare-fun res!412144 () Bool)

(assert (=> b!636964 (=> res!412144 e!364456)))

(assert (=> b!636964 (= res!412144 (= (h!13467 Nil!12423) k!1786))))

(declare-fun b!636965 () Bool)

(assert (=> b!636965 (= e!364456 (contains!3109 (t!18662 Nil!12423) k!1786))))

(assert (= (and d!90003 res!412145) b!636964))

(assert (= (and b!636964 (not res!412144)) b!636965))

(assert (=> d!90003 m!611091))

(declare-fun m!611187 () Bool)

(assert (=> d!90003 m!611187))

(declare-fun m!611189 () Bool)

(assert (=> b!636965 m!611189))

(assert (=> b!636791 d!90003))

(declare-fun d!90005 () Bool)

(declare-fun lt!294553 () Bool)

(assert (=> d!90005 (= lt!294553 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!246 Nil!12423)))))

(declare-fun e!364457 () Bool)

(assert (=> d!90005 (= lt!294553 e!364457)))

(declare-fun res!412147 () Bool)

(assert (=> d!90005 (=> (not res!412147) (not e!364457))))

(assert (=> d!90005 (= res!412147 (is-Cons!12422 Nil!12423))))

(assert (=> d!90005 (= (contains!3109 Nil!12423 #b0000000000000000000000000000000000000000000000000000000000000000) lt!294553)))

(declare-fun b!636966 () Bool)

(declare-fun e!364458 () Bool)

(assert (=> b!636966 (= e!364457 e!364458)))

(declare-fun res!412146 () Bool)

(assert (=> b!636966 (=> res!412146 e!364458)))

(assert (=> b!636966 (= res!412146 (= (h!13467 Nil!12423) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!636967 () Bool)

(assert (=> b!636967 (= e!364458 (contains!3109 (t!18662 Nil!12423) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!90005 res!412147) b!636966))

(assert (= (and b!636966 (not res!412146)) b!636967))

(assert (=> d!90005 m!611091))

(declare-fun m!611191 () Bool)

(assert (=> d!90005 m!611191))

(declare-fun m!611193 () Bool)

(assert (=> b!636967 m!611193))

(assert (=> b!636793 d!90005))

(declare-fun lt!294564 () SeekEntryResult!6779)

(declare-fun d!90007 () Bool)

(assert (=> d!90007 (and (or (is-Undefined!6779 lt!294564) (not (is-Found!6779 lt!294564)) (and (bvsge (index!29427 lt!294564) #b00000000000000000000000000000000) (bvslt (index!29427 lt!294564) (size!18696 a!2986)))) (or (is-Undefined!6779 lt!294564) (is-Found!6779 lt!294564) (not (is-MissingVacant!6779 lt!294564)) (not (= (index!29429 lt!294564) vacantSpotIndex!68)) (and (bvsge (index!29429 lt!294564) #b00000000000000000000000000000000) (bvslt (index!29429 lt!294564) (size!18696 a!2986)))) (or (is-Undefined!6779 lt!294564) (ite (is-Found!6779 lt!294564) (= (select (arr!18332 a!2986) (index!29427 lt!294564)) (select (arr!18332 a!2986) j!136)) (and (is-MissingVacant!6779 lt!294564) (= (index!29429 lt!294564) vacantSpotIndex!68) (= (select (arr!18332 a!2986) (index!29429 lt!294564)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!364471 () SeekEntryResult!6779)

(assert (=> d!90007 (= lt!294564 e!364471)))

(declare-fun c!72784 () Bool)

(assert (=> d!90007 (= c!72784 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!294565 () (_ BitVec 64))

(assert (=> d!90007 (= lt!294565 (select (arr!18332 a!2986) index!984))))

(assert (=> d!90007 (validMask!0 mask!3053)))

(assert (=> d!90007 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18332 a!2986) j!136) a!2986 mask!3053) lt!294564)))

(declare-fun b!636986 () Bool)

(declare-fun e!364472 () SeekEntryResult!6779)

(assert (=> b!636986 (= e!364472 (MissingVacant!6779 vacantSpotIndex!68))))

(declare-fun b!636987 () Bool)

(declare-fun e!364473 () SeekEntryResult!6779)

(assert (=> b!636987 (= e!364471 e!364473)))

(declare-fun c!72783 () Bool)

(assert (=> b!636987 (= c!72783 (= lt!294565 (select (arr!18332 a!2986) j!136)))))

(declare-fun b!636988 () Bool)

(assert (=> b!636988 (= e!364472 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18332 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!636989 () Bool)

(declare-fun c!72785 () Bool)

(assert (=> b!636989 (= c!72785 (= lt!294565 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!636989 (= e!364473 e!364472)))

(declare-fun b!636990 () Bool)

(assert (=> b!636990 (= e!364471 Undefined!6779)))

(declare-fun b!636991 () Bool)

(assert (=> b!636991 (= e!364473 (Found!6779 index!984))))

(assert (= (and d!90007 c!72784) b!636990))

(assert (= (and d!90007 (not c!72784)) b!636987))

(assert (= (and b!636987 c!72783) b!636991))

(assert (= (and b!636987 (not c!72783)) b!636989))

(assert (= (and b!636989 c!72785) b!636986))

(assert (= (and b!636989 (not c!72785)) b!636988))

(declare-fun m!611203 () Bool)

(assert (=> d!90007 m!611203))

(declare-fun m!611205 () Bool)

(assert (=> d!90007 m!611205))

(assert (=> d!90007 m!611029))

(assert (=> d!90007 m!611009))

(assert (=> b!636988 m!611015))

(assert (=> b!636988 m!611015))

(assert (=> b!636988 m!610979))

(declare-fun m!611207 () Bool)

(assert (=> b!636988 m!611207))

(assert (=> b!636782 d!90007))

(declare-fun lt!294566 () SeekEntryResult!6779)

(declare-fun d!90013 () Bool)

(assert (=> d!90013 (and (or (is-Undefined!6779 lt!294566) (not (is-Found!6779 lt!294566)) (and (bvsge (index!29427 lt!294566) #b00000000000000000000000000000000) (bvslt (index!29427 lt!294566) (size!18696 lt!294476)))) (or (is-Undefined!6779 lt!294566) (is-Found!6779 lt!294566) (not (is-MissingVacant!6779 lt!294566)) (not (= (index!29429 lt!294566) vacantSpotIndex!68)) (and (bvsge (index!29429 lt!294566) #b00000000000000000000000000000000) (bvslt (index!29429 lt!294566) (size!18696 lt!294476)))) (or (is-Undefined!6779 lt!294566) (ite (is-Found!6779 lt!294566) (= (select (arr!18332 lt!294476) (index!29427 lt!294566)) lt!294481) (and (is-MissingVacant!6779 lt!294566) (= (index!29429 lt!294566) vacantSpotIndex!68) (= (select (arr!18332 lt!294476) (index!29429 lt!294566)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!364474 () SeekEntryResult!6779)

(assert (=> d!90013 (= lt!294566 e!364474)))

(declare-fun c!72787 () Bool)

(assert (=> d!90013 (= c!72787 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!294567 () (_ BitVec 64))

(assert (=> d!90013 (= lt!294567 (select (arr!18332 lt!294476) lt!294479))))

(assert (=> d!90013 (validMask!0 mask!3053)))

(assert (=> d!90013 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294479 vacantSpotIndex!68 lt!294481 lt!294476 mask!3053) lt!294566)))

(declare-fun b!636992 () Bool)

(declare-fun e!364475 () SeekEntryResult!6779)

(assert (=> b!636992 (= e!364475 (MissingVacant!6779 vacantSpotIndex!68))))

(declare-fun b!636993 () Bool)

(declare-fun e!364476 () SeekEntryResult!6779)

(assert (=> b!636993 (= e!364474 e!364476)))

(declare-fun c!72786 () Bool)

(assert (=> b!636993 (= c!72786 (= lt!294567 lt!294481))))

(declare-fun b!636994 () Bool)

(assert (=> b!636994 (= e!364475 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!294479 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!294481 lt!294476 mask!3053))))

(declare-fun b!636995 () Bool)

(declare-fun c!72788 () Bool)

(assert (=> b!636995 (= c!72788 (= lt!294567 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!636995 (= e!364476 e!364475)))

(declare-fun b!636996 () Bool)

(assert (=> b!636996 (= e!364474 Undefined!6779)))

(declare-fun b!636997 () Bool)

(assert (=> b!636997 (= e!364476 (Found!6779 lt!294479))))

(assert (= (and d!90013 c!72787) b!636996))

(assert (= (and d!90013 (not c!72787)) b!636993))

(assert (= (and b!636993 c!72786) b!636997))

(assert (= (and b!636993 (not c!72786)) b!636995))

(assert (= (and b!636995 c!72788) b!636992))

(assert (= (and b!636995 (not c!72788)) b!636994))

(declare-fun m!611209 () Bool)

(assert (=> d!90013 m!611209))

(declare-fun m!611211 () Bool)

(assert (=> d!90013 m!611211))

(declare-fun m!611213 () Bool)

(assert (=> d!90013 m!611213))

(assert (=> d!90013 m!611009))

(declare-fun m!611215 () Bool)

(assert (=> b!636994 m!611215))

(assert (=> b!636994 m!611215))

(declare-fun m!611217 () Bool)

(assert (=> b!636994 m!611217))

(assert (=> b!636789 d!90013))

(declare-fun d!90015 () Bool)

(declare-fun lt!294568 () SeekEntryResult!6779)

(assert (=> d!90015 (and (or (is-Undefined!6779 lt!294568) (not (is-Found!6779 lt!294568)) (and (bvsge (index!29427 lt!294568) #b00000000000000000000000000000000) (bvslt (index!29427 lt!294568) (size!18696 lt!294476)))) (or (is-Undefined!6779 lt!294568) (is-Found!6779 lt!294568) (not (is-MissingVacant!6779 lt!294568)) (not (= (index!29429 lt!294568) vacantSpotIndex!68)) (and (bvsge (index!29429 lt!294568) #b00000000000000000000000000000000) (bvslt (index!29429 lt!294568) (size!18696 lt!294476)))) (or (is-Undefined!6779 lt!294568) (ite (is-Found!6779 lt!294568) (= (select (arr!18332 lt!294476) (index!29427 lt!294568)) lt!294481) (and (is-MissingVacant!6779 lt!294568) (= (index!29429 lt!294568) vacantSpotIndex!68) (= (select (arr!18332 lt!294476) (index!29429 lt!294568)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!364477 () SeekEntryResult!6779)

(assert (=> d!90015 (= lt!294568 e!364477)))

(declare-fun c!72790 () Bool)

(assert (=> d!90015 (= c!72790 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!294569 () (_ BitVec 64))

(assert (=> d!90015 (= lt!294569 (select (arr!18332 lt!294476) index!984))))

(assert (=> d!90015 (validMask!0 mask!3053)))

(assert (=> d!90015 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!294481 lt!294476 mask!3053) lt!294568)))

(declare-fun b!636998 () Bool)

(declare-fun e!364478 () SeekEntryResult!6779)

(assert (=> b!636998 (= e!364478 (MissingVacant!6779 vacantSpotIndex!68))))

(declare-fun b!636999 () Bool)

(declare-fun e!364479 () SeekEntryResult!6779)

(assert (=> b!636999 (= e!364477 e!364479)))

(declare-fun c!72789 () Bool)

(assert (=> b!636999 (= c!72789 (= lt!294569 lt!294481))))

(declare-fun b!637000 () Bool)

(assert (=> b!637000 (= e!364478 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!294481 lt!294476 mask!3053))))

(declare-fun b!637001 () Bool)

(declare-fun c!72791 () Bool)

(assert (=> b!637001 (= c!72791 (= lt!294569 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!637001 (= e!364479 e!364478)))

(declare-fun b!637002 () Bool)

(assert (=> b!637002 (= e!364477 Undefined!6779)))

(declare-fun b!637003 () Bool)

(assert (=> b!637003 (= e!364479 (Found!6779 index!984))))

(assert (= (and d!90015 c!72790) b!637002))

(assert (= (and d!90015 (not c!72790)) b!636999))

(assert (= (and b!636999 c!72789) b!637003))

(assert (= (and b!636999 (not c!72789)) b!637001))

(assert (= (and b!637001 c!72791) b!636998))

(assert (= (and b!637001 (not c!72791)) b!637000))

(declare-fun m!611219 () Bool)

(assert (=> d!90015 m!611219))

(declare-fun m!611221 () Bool)

(assert (=> d!90015 m!611221))

(declare-fun m!611223 () Bool)

(assert (=> d!90015 m!611223))

(assert (=> d!90015 m!611009))

(assert (=> b!637000 m!611015))

(assert (=> b!637000 m!611015))

(declare-fun m!611225 () Bool)

(assert (=> b!637000 m!611225))

(assert (=> b!636789 d!90015))

(declare-fun d!90017 () Bool)

(declare-fun lt!294572 () (_ BitVec 32))

(assert (=> d!90017 (and (bvsge lt!294572 #b00000000000000000000000000000000) (bvslt lt!294572 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!90017 (= lt!294572 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!90017 (validMask!0 mask!3053)))

(assert (=> d!90017 (= (nextIndex!0 index!984 x!910 mask!3053) lt!294572)))

(declare-fun bs!19121 () Bool)

(assert (= bs!19121 d!90017))

(declare-fun m!611227 () Bool)

(assert (=> bs!19121 m!611227))

(assert (=> bs!19121 m!611009))

(assert (=> b!636789 d!90017))

(declare-fun d!90019 () Bool)

(declare-fun e!364494 () Bool)

(assert (=> d!90019 e!364494))

(declare-fun res!412156 () Bool)

(assert (=> d!90019 (=> (not res!412156) (not e!364494))))

(assert (=> d!90019 (= res!412156 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18696 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18696 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18696 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18696 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18696 a!2986))))))

(declare-fun lt!294587 () Unit!21474)

(declare-fun choose!9 (array!38224 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21474)

(assert (=> d!90019 (= lt!294587 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294479 vacantSpotIndex!68 mask!3053))))

(assert (=> d!90019 (validMask!0 mask!3053)))

(assert (=> d!90019 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294479 vacantSpotIndex!68 mask!3053) lt!294587)))

(declare-fun b!637030 () Bool)

(assert (=> b!637030 (= e!364494 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294479 vacantSpotIndex!68 (select (arr!18332 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294479 vacantSpotIndex!68 (select (store (arr!18332 a!2986) i!1108 k!1786) j!136) (array!38225 (store (arr!18332 a!2986) i!1108 k!1786) (size!18696 a!2986)) mask!3053)))))

(assert (= (and d!90019 res!412156) b!637030))

(declare-fun m!611229 () Bool)

(assert (=> d!90019 m!611229))

(assert (=> d!90019 m!611009))

(assert (=> b!637030 m!611017))

(declare-fun m!611231 () Bool)

(assert (=> b!637030 m!611231))

(assert (=> b!637030 m!610979))

(assert (=> b!637030 m!610987))

(assert (=> b!637030 m!611017))

(assert (=> b!637030 m!610979))

(assert (=> b!637030 m!611023))

(assert (=> b!636789 d!90019))

(declare-fun lt!294588 () SeekEntryResult!6779)

(declare-fun d!90021 () Bool)

(assert (=> d!90021 (and (or (is-Undefined!6779 lt!294588) (not (is-Found!6779 lt!294588)) (and (bvsge (index!29427 lt!294588) #b00000000000000000000000000000000) (bvslt (index!29427 lt!294588) (size!18696 a!2986)))) (or (is-Undefined!6779 lt!294588) (is-Found!6779 lt!294588) (not (is-MissingVacant!6779 lt!294588)) (not (= (index!29429 lt!294588) vacantSpotIndex!68)) (and (bvsge (index!29429 lt!294588) #b00000000000000000000000000000000) (bvslt (index!29429 lt!294588) (size!18696 a!2986)))) (or (is-Undefined!6779 lt!294588) (ite (is-Found!6779 lt!294588) (= (select (arr!18332 a!2986) (index!29427 lt!294588)) (select (arr!18332 a!2986) j!136)) (and (is-MissingVacant!6779 lt!294588) (= (index!29429 lt!294588) vacantSpotIndex!68) (= (select (arr!18332 a!2986) (index!29429 lt!294588)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!364495 () SeekEntryResult!6779)

(assert (=> d!90021 (= lt!294588 e!364495)))

(declare-fun c!72805 () Bool)

(assert (=> d!90021 (= c!72805 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!294589 () (_ BitVec 64))

(assert (=> d!90021 (= lt!294589 (select (arr!18332 a!2986) lt!294479))))

(assert (=> d!90021 (validMask!0 mask!3053)))

(assert (=> d!90021 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294479 vacantSpotIndex!68 (select (arr!18332 a!2986) j!136) a!2986 mask!3053) lt!294588)))

(declare-fun b!637031 () Bool)

(declare-fun e!364496 () SeekEntryResult!6779)

(assert (=> b!637031 (= e!364496 (MissingVacant!6779 vacantSpotIndex!68))))

(declare-fun b!637032 () Bool)

(declare-fun e!364497 () SeekEntryResult!6779)

(assert (=> b!637032 (= e!364495 e!364497)))

(declare-fun c!72804 () Bool)

(assert (=> b!637032 (= c!72804 (= lt!294589 (select (arr!18332 a!2986) j!136)))))

(declare-fun b!637033 () Bool)

(assert (=> b!637033 (= e!364496 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!294479 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18332 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!637034 () Bool)

(declare-fun c!72806 () Bool)

(assert (=> b!637034 (= c!72806 (= lt!294589 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!637034 (= e!364497 e!364496)))

(declare-fun b!637035 () Bool)

(assert (=> b!637035 (= e!364495 Undefined!6779)))

(declare-fun b!637036 () Bool)

(assert (=> b!637036 (= e!364497 (Found!6779 lt!294479))))

(assert (= (and d!90021 c!72805) b!637035))

(assert (= (and d!90021 (not c!72805)) b!637032))

(assert (= (and b!637032 c!72804) b!637036))

(assert (= (and b!637032 (not c!72804)) b!637034))

(assert (= (and b!637034 c!72806) b!637031))

(assert (= (and b!637034 (not c!72806)) b!637033))

(declare-fun m!611233 () Bool)

(assert (=> d!90021 m!611233))

(declare-fun m!611235 () Bool)

(assert (=> d!90021 m!611235))

(declare-fun m!611237 () Bool)

(assert (=> d!90021 m!611237))

(assert (=> d!90021 m!611009))

(assert (=> b!637033 m!611215))

(assert (=> b!637033 m!611215))

(assert (=> b!637033 m!610979))

(declare-fun m!611239 () Bool)

(assert (=> b!637033 m!611239))

(assert (=> b!636789 d!90021))

(declare-fun d!90023 () Bool)

(declare-fun res!412161 () Bool)

(declare-fun e!364502 () Bool)

(assert (=> d!90023 (=> res!412161 e!364502)))

(assert (=> d!90023 (= res!412161 (is-Nil!12423 Nil!12423))))

(assert (=> d!90023 (= (noDuplicate!384 Nil!12423) e!364502)))

(declare-fun b!637041 () Bool)

(declare-fun e!364503 () Bool)

(assert (=> b!637041 (= e!364502 e!364503)))

(declare-fun res!412162 () Bool)

(assert (=> b!637041 (=> (not res!412162) (not e!364503))))

