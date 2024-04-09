; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55954 () Bool)

(assert start!55954)

(declare-fun b!613072 () Bool)

(declare-fun res!394694 () Bool)

(declare-fun e!351449 () Bool)

(assert (=> b!613072 (=> (not res!394694) (not e!351449))))

(declare-datatypes ((array!37387 0))(
  ( (array!37388 (arr!17936 (Array (_ BitVec 32) (_ BitVec 64))) (size!18300 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37387)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37387 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!613072 (= res!394694 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!613073 () Bool)

(declare-fun e!351445 () Bool)

(declare-datatypes ((SeekEntryResult!6383 0))(
  ( (MissingZero!6383 (index!27815 (_ BitVec 32))) (Found!6383 (index!27816 (_ BitVec 32))) (Intermediate!6383 (undefined!7195 Bool) (index!27817 (_ BitVec 32)) (x!56648 (_ BitVec 32))) (Undefined!6383) (MissingVacant!6383 (index!27818 (_ BitVec 32))) )
))
(declare-fun lt!281008 () SeekEntryResult!6383)

(declare-fun lt!281001 () SeekEntryResult!6383)

(assert (=> b!613073 (= e!351445 (= lt!281008 lt!281001))))

(declare-fun b!613074 () Bool)

(declare-datatypes ((Unit!19726 0))(
  ( (Unit!19727) )
))
(declare-fun e!351454 () Unit!19726)

(declare-fun Unit!19728 () Unit!19726)

(assert (=> b!613074 (= e!351454 Unit!19728)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!281000 () Unit!19726)

(declare-fun lt!281007 () array!37387)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37387 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19726)

(assert (=> b!613074 (= lt!281000 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!281007 (select (arr!17936 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!613074 (arrayContainsKey!0 lt!281007 (select (arr!17936 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!280999 () Unit!19726)

(declare-datatypes ((List!12030 0))(
  ( (Nil!12027) (Cons!12026 (h!13071 (_ BitVec 64)) (t!18266 List!12030)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37387 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12030) Unit!19726)

(assert (=> b!613074 (= lt!280999 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12027))))

(declare-fun arrayNoDuplicates!0 (array!37387 (_ BitVec 32) List!12030) Bool)

(assert (=> b!613074 (arrayNoDuplicates!0 lt!281007 #b00000000000000000000000000000000 Nil!12027)))

(declare-fun lt!281006 () Unit!19726)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37387 (_ BitVec 32) (_ BitVec 32)) Unit!19726)

(assert (=> b!613074 (= lt!281006 (lemmaNoDuplicateFromThenFromBigger!0 lt!281007 #b00000000000000000000000000000000 j!136))))

(assert (=> b!613074 (arrayNoDuplicates!0 lt!281007 j!136 Nil!12027)))

(declare-fun lt!281003 () Unit!19726)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37387 (_ BitVec 64) (_ BitVec 32) List!12030) Unit!19726)

(assert (=> b!613074 (= lt!281003 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!281007 (select (arr!17936 a!2986) j!136) j!136 Nil!12027))))

(assert (=> b!613074 false))

(declare-fun b!613075 () Bool)

(declare-fun res!394684 () Bool)

(declare-fun e!351452 () Bool)

(assert (=> b!613075 (=> res!394684 e!351452)))

(declare-fun contains!3057 (List!12030 (_ BitVec 64)) Bool)

(assert (=> b!613075 (= res!394684 (contains!3057 Nil!12027 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!613076 () Bool)

(declare-fun res!394686 () Bool)

(assert (=> b!613076 (=> (not res!394686) (not e!351449))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!613076 (= res!394686 (validKeyInArray!0 (select (arr!17936 a!2986) j!136)))))

(declare-fun b!613077 () Bool)

(declare-fun e!351447 () Bool)

(declare-fun e!351451 () Bool)

(assert (=> b!613077 (= e!351447 e!351451)))

(declare-fun res!394699 () Bool)

(assert (=> b!613077 (=> (not res!394699) (not e!351451))))

(assert (=> b!613077 (= res!394699 (arrayContainsKey!0 lt!281007 (select (arr!17936 a!2986) j!136) j!136))))

(declare-fun b!613078 () Bool)

(declare-fun e!351455 () Bool)

(declare-fun e!351457 () Bool)

(assert (=> b!613078 (= e!351455 (not e!351457))))

(declare-fun res!394687 () Bool)

(assert (=> b!613078 (=> res!394687 e!351457)))

(declare-fun lt!281005 () SeekEntryResult!6383)

(assert (=> b!613078 (= res!394687 (not (= lt!281005 (Found!6383 index!984))))))

(declare-fun lt!280992 () Unit!19726)

(declare-fun e!351448 () Unit!19726)

(assert (=> b!613078 (= lt!280992 e!351448)))

(declare-fun c!69562 () Bool)

(assert (=> b!613078 (= c!69562 (= lt!281005 Undefined!6383))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!280998 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37387 (_ BitVec 32)) SeekEntryResult!6383)

(assert (=> b!613078 (= lt!281005 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!280998 lt!281007 mask!3053))))

(assert (=> b!613078 e!351445))

(declare-fun res!394703 () Bool)

(assert (=> b!613078 (=> (not res!394703) (not e!351445))))

(declare-fun lt!280997 () (_ BitVec 32))

(assert (=> b!613078 (= res!394703 (= lt!281001 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!280997 vacantSpotIndex!68 lt!280998 lt!281007 mask!3053)))))

(assert (=> b!613078 (= lt!281001 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!280997 vacantSpotIndex!68 (select (arr!17936 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!613078 (= lt!280998 (select (store (arr!17936 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!281002 () Unit!19726)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37387 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19726)

(assert (=> b!613078 (= lt!281002 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!280997 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!613078 (= lt!280997 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!613079 () Bool)

(declare-fun e!351446 () Bool)

(assert (=> b!613079 (= e!351457 e!351446)))

(declare-fun res!394697 () Bool)

(assert (=> b!613079 (=> res!394697 e!351446)))

(declare-fun lt!281004 () (_ BitVec 64))

(assert (=> b!613079 (= res!394697 (or (not (= (select (arr!17936 a!2986) j!136) lt!280998)) (not (= (select (arr!17936 a!2986) j!136) lt!281004))))))

(declare-fun e!351450 () Bool)

(assert (=> b!613079 e!351450))

(declare-fun res!394692 () Bool)

(assert (=> b!613079 (=> (not res!394692) (not e!351450))))

(assert (=> b!613079 (= res!394692 (= lt!281004 (select (arr!17936 a!2986) j!136)))))

(assert (=> b!613079 (= lt!281004 (select (store (arr!17936 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!613081 () Bool)

(declare-fun e!351458 () Bool)

(assert (=> b!613081 (= e!351458 e!351455)))

(declare-fun res!394682 () Bool)

(assert (=> b!613081 (=> (not res!394682) (not e!351455))))

(assert (=> b!613081 (= res!394682 (and (= lt!281008 (Found!6383 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17936 a!2986) index!984) (select (arr!17936 a!2986) j!136))) (not (= (select (arr!17936 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!613081 (= lt!281008 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17936 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!613082 () Bool)

(declare-fun res!394702 () Bool)

(declare-fun e!351460 () Bool)

(assert (=> b!613082 (=> (not res!394702) (not e!351460))))

(assert (=> b!613082 (= res!394702 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17936 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!613083 () Bool)

(declare-fun res!394698 () Bool)

(assert (=> b!613083 (=> (not res!394698) (not e!351460))))

(assert (=> b!613083 (= res!394698 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12027))))

(declare-fun b!613084 () Bool)

(declare-fun e!351453 () Bool)

(assert (=> b!613084 (= e!351446 e!351453)))

(declare-fun res!394696 () Bool)

(assert (=> b!613084 (=> res!394696 e!351453)))

(assert (=> b!613084 (= res!394696 (bvsge index!984 j!136))))

(declare-fun lt!280994 () Unit!19726)

(assert (=> b!613084 (= lt!280994 e!351454)))

(declare-fun c!69563 () Bool)

(assert (=> b!613084 (= c!69563 (bvslt j!136 index!984))))

(declare-fun b!613085 () Bool)

(declare-fun Unit!19729 () Unit!19726)

(assert (=> b!613085 (= e!351454 Unit!19729)))

(declare-fun b!613086 () Bool)

(declare-fun res!394700 () Bool)

(assert (=> b!613086 (=> res!394700 e!351452)))

(declare-fun noDuplicate!357 (List!12030) Bool)

(assert (=> b!613086 (= res!394700 (not (noDuplicate!357 Nil!12027)))))

(declare-fun b!613087 () Bool)

(assert (=> b!613087 (= e!351451 (arrayContainsKey!0 lt!281007 (select (arr!17936 a!2986) j!136) index!984))))

(declare-fun b!613088 () Bool)

(assert (=> b!613088 (= e!351460 e!351458)))

(declare-fun res!394693 () Bool)

(assert (=> b!613088 (=> (not res!394693) (not e!351458))))

(assert (=> b!613088 (= res!394693 (= (select (store (arr!17936 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!613088 (= lt!281007 (array!37388 (store (arr!17936 a!2986) i!1108 k!1786) (size!18300 a!2986)))))

(declare-fun b!613089 () Bool)

(assert (=> b!613089 (= e!351453 e!351452)))

(declare-fun res!394701 () Bool)

(assert (=> b!613089 (=> res!394701 e!351452)))

(assert (=> b!613089 (= res!394701 (or (bvsge (size!18300 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 index!984) (size!18300 a!2986)) (bvsge index!984 (size!18300 a!2986))))))

(assert (=> b!613089 (arrayNoDuplicates!0 lt!281007 index!984 Nil!12027)))

(declare-fun lt!281010 () Unit!19726)

(assert (=> b!613089 (= lt!281010 (lemmaNoDuplicateFromThenFromBigger!0 lt!281007 #b00000000000000000000000000000000 index!984))))

(assert (=> b!613089 (arrayNoDuplicates!0 lt!281007 #b00000000000000000000000000000000 Nil!12027)))

(declare-fun lt!280993 () Unit!19726)

(assert (=> b!613089 (= lt!280993 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12027))))

(assert (=> b!613089 (arrayContainsKey!0 lt!281007 (select (arr!17936 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!280995 () Unit!19726)

(assert (=> b!613089 (= lt!280995 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!281007 (select (arr!17936 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!351459 () Bool)

(assert (=> b!613089 e!351459))

(declare-fun res!394688 () Bool)

(assert (=> b!613089 (=> (not res!394688) (not e!351459))))

(assert (=> b!613089 (= res!394688 (arrayContainsKey!0 lt!281007 (select (arr!17936 a!2986) j!136) j!136))))

(declare-fun b!613090 () Bool)

(assert (=> b!613090 (= e!351452 true)))

(declare-fun lt!280996 () Bool)

(assert (=> b!613090 (= lt!280996 (contains!3057 Nil!12027 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!613091 () Bool)

(assert (=> b!613091 (= e!351459 (arrayContainsKey!0 lt!281007 (select (arr!17936 a!2986) j!136) index!984))))

(declare-fun b!613092 () Bool)

(declare-fun Unit!19730 () Unit!19726)

(assert (=> b!613092 (= e!351448 Unit!19730)))

(assert (=> b!613092 false))

(declare-fun b!613080 () Bool)

(assert (=> b!613080 (= e!351450 e!351447)))

(declare-fun res!394685 () Bool)

(assert (=> b!613080 (=> res!394685 e!351447)))

(assert (=> b!613080 (= res!394685 (or (not (= (select (arr!17936 a!2986) j!136) lt!280998)) (not (= (select (arr!17936 a!2986) j!136) lt!281004)) (bvsge j!136 index!984)))))

(declare-fun res!394695 () Bool)

(assert (=> start!55954 (=> (not res!394695) (not e!351449))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55954 (= res!394695 (validMask!0 mask!3053))))

(assert (=> start!55954 e!351449))

(assert (=> start!55954 true))

(declare-fun array_inv!13710 (array!37387) Bool)

(assert (=> start!55954 (array_inv!13710 a!2986)))

(declare-fun b!613093 () Bool)

(declare-fun res!394691 () Bool)

(assert (=> b!613093 (=> (not res!394691) (not e!351460))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37387 (_ BitVec 32)) Bool)

(assert (=> b!613093 (= res!394691 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!613094 () Bool)

(declare-fun Unit!19731 () Unit!19726)

(assert (=> b!613094 (= e!351448 Unit!19731)))

(declare-fun b!613095 () Bool)

(declare-fun res!394689 () Bool)

(assert (=> b!613095 (=> (not res!394689) (not e!351449))))

(assert (=> b!613095 (= res!394689 (validKeyInArray!0 k!1786))))

(declare-fun b!613096 () Bool)

(declare-fun res!394683 () Bool)

(assert (=> b!613096 (=> (not res!394683) (not e!351449))))

(assert (=> b!613096 (= res!394683 (and (= (size!18300 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18300 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18300 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!613097 () Bool)

(assert (=> b!613097 (= e!351449 e!351460)))

(declare-fun res!394690 () Bool)

(assert (=> b!613097 (=> (not res!394690) (not e!351460))))

(declare-fun lt!281009 () SeekEntryResult!6383)

(assert (=> b!613097 (= res!394690 (or (= lt!281009 (MissingZero!6383 i!1108)) (= lt!281009 (MissingVacant!6383 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37387 (_ BitVec 32)) SeekEntryResult!6383)

(assert (=> b!613097 (= lt!281009 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!55954 res!394695) b!613096))

(assert (= (and b!613096 res!394683) b!613076))

(assert (= (and b!613076 res!394686) b!613095))

(assert (= (and b!613095 res!394689) b!613072))

(assert (= (and b!613072 res!394694) b!613097))

(assert (= (and b!613097 res!394690) b!613093))

(assert (= (and b!613093 res!394691) b!613083))

(assert (= (and b!613083 res!394698) b!613082))

(assert (= (and b!613082 res!394702) b!613088))

(assert (= (and b!613088 res!394693) b!613081))

(assert (= (and b!613081 res!394682) b!613078))

(assert (= (and b!613078 res!394703) b!613073))

(assert (= (and b!613078 c!69562) b!613092))

(assert (= (and b!613078 (not c!69562)) b!613094))

(assert (= (and b!613078 (not res!394687)) b!613079))

(assert (= (and b!613079 res!394692) b!613080))

(assert (= (and b!613080 (not res!394685)) b!613077))

(assert (= (and b!613077 res!394699) b!613087))

(assert (= (and b!613079 (not res!394697)) b!613084))

(assert (= (and b!613084 c!69563) b!613074))

(assert (= (and b!613084 (not c!69563)) b!613085))

(assert (= (and b!613084 (not res!394696)) b!613089))

(assert (= (and b!613089 res!394688) b!613091))

(assert (= (and b!613089 (not res!394701)) b!613086))

(assert (= (and b!613086 (not res!394700)) b!613075))

(assert (= (and b!613075 (not res!394684)) b!613090))

(declare-fun m!589417 () Bool)

(assert (=> b!613091 m!589417))

(assert (=> b!613091 m!589417))

(declare-fun m!589419 () Bool)

(assert (=> b!613091 m!589419))

(assert (=> b!613080 m!589417))

(declare-fun m!589421 () Bool)

(assert (=> b!613089 m!589421))

(assert (=> b!613089 m!589417))

(assert (=> b!613089 m!589417))

(declare-fun m!589423 () Bool)

(assert (=> b!613089 m!589423))

(assert (=> b!613089 m!589417))

(declare-fun m!589425 () Bool)

(assert (=> b!613089 m!589425))

(assert (=> b!613089 m!589417))

(declare-fun m!589427 () Bool)

(assert (=> b!613089 m!589427))

(declare-fun m!589429 () Bool)

(assert (=> b!613089 m!589429))

(declare-fun m!589431 () Bool)

(assert (=> b!613089 m!589431))

(declare-fun m!589433 () Bool)

(assert (=> b!613089 m!589433))

(declare-fun m!589435 () Bool)

(assert (=> b!613086 m!589435))

(declare-fun m!589437 () Bool)

(assert (=> b!613072 m!589437))

(declare-fun m!589439 () Bool)

(assert (=> b!613083 m!589439))

(declare-fun m!589441 () Bool)

(assert (=> start!55954 m!589441))

(declare-fun m!589443 () Bool)

(assert (=> start!55954 m!589443))

(assert (=> b!613077 m!589417))

(assert (=> b!613077 m!589417))

(assert (=> b!613077 m!589425))

(declare-fun m!589445 () Bool)

(assert (=> b!613088 m!589445))

(declare-fun m!589447 () Bool)

(assert (=> b!613088 m!589447))

(declare-fun m!589449 () Bool)

(assert (=> b!613097 m!589449))

(assert (=> b!613076 m!589417))

(assert (=> b!613076 m!589417))

(declare-fun m!589451 () Bool)

(assert (=> b!613076 m!589451))

(declare-fun m!589453 () Bool)

(assert (=> b!613075 m!589453))

(declare-fun m!589455 () Bool)

(assert (=> b!613093 m!589455))

(assert (=> b!613087 m!589417))

(assert (=> b!613087 m!589417))

(assert (=> b!613087 m!589419))

(declare-fun m!589457 () Bool)

(assert (=> b!613081 m!589457))

(assert (=> b!613081 m!589417))

(assert (=> b!613081 m!589417))

(declare-fun m!589459 () Bool)

(assert (=> b!613081 m!589459))

(assert (=> b!613079 m!589417))

(assert (=> b!613079 m!589445))

(declare-fun m!589461 () Bool)

(assert (=> b!613079 m!589461))

(assert (=> b!613074 m!589421))

(assert (=> b!613074 m!589417))

(declare-fun m!589463 () Bool)

(assert (=> b!613074 m!589463))

(assert (=> b!613074 m!589417))

(assert (=> b!613074 m!589417))

(declare-fun m!589465 () Bool)

(assert (=> b!613074 m!589465))

(declare-fun m!589467 () Bool)

(assert (=> b!613074 m!589467))

(declare-fun m!589469 () Bool)

(assert (=> b!613074 m!589469))

(assert (=> b!613074 m!589417))

(declare-fun m!589471 () Bool)

(assert (=> b!613074 m!589471))

(assert (=> b!613074 m!589433))

(declare-fun m!589473 () Bool)

(assert (=> b!613095 m!589473))

(declare-fun m!589475 () Bool)

(assert (=> b!613090 m!589475))

(declare-fun m!589477 () Bool)

(assert (=> b!613078 m!589477))

(assert (=> b!613078 m!589417))

(assert (=> b!613078 m!589445))

(declare-fun m!589479 () Bool)

(assert (=> b!613078 m!589479))

(declare-fun m!589481 () Bool)

(assert (=> b!613078 m!589481))

(declare-fun m!589483 () Bool)

(assert (=> b!613078 m!589483))

(declare-fun m!589485 () Bool)

(assert (=> b!613078 m!589485))

(assert (=> b!613078 m!589417))

(declare-fun m!589487 () Bool)

(assert (=> b!613078 m!589487))

(declare-fun m!589489 () Bool)

(assert (=> b!613082 m!589489))

(push 1)

