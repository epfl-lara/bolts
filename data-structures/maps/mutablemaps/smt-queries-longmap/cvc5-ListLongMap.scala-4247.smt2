; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58884 () Bool)

(assert start!58884)

(declare-fun b!648915 () Bool)

(declare-datatypes ((Unit!22072 0))(
  ( (Unit!22073) )
))
(declare-fun e!372205 () Unit!22072)

(declare-fun Unit!22074 () Unit!22072)

(assert (=> b!648915 (= e!372205 Unit!22074)))

(declare-fun b!648916 () Bool)

(declare-fun e!372202 () Bool)

(declare-fun e!372214 () Bool)

(assert (=> b!648916 (= e!372202 e!372214)))

(declare-fun res!420648 () Bool)

(assert (=> b!648916 (=> res!420648 e!372214)))

(declare-datatypes ((array!38502 0))(
  ( (array!38503 (arr!18453 (Array (_ BitVec 32) (_ BitVec 64))) (size!18817 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38502)

(assert (=> b!648916 (= res!420648 (or (bvsge (size!18817 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18817 a!2986))))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!301319 () array!38502)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!38502 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!648916 (arrayContainsKey!0 lt!301319 (select (arr!18453 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!301326 () Unit!22072)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38502 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22072)

(assert (=> b!648916 (= lt!301326 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301319 (select (arr!18453 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!372203 () Bool)

(assert (=> b!648916 e!372203))

(declare-fun res!420636 () Bool)

(assert (=> b!648916 (=> (not res!420636) (not e!372203))))

(assert (=> b!648916 (= res!420636 (arrayContainsKey!0 lt!301319 (select (arr!18453 a!2986) j!136) j!136))))

(declare-fun b!648917 () Bool)

(declare-fun e!372199 () Bool)

(assert (=> b!648917 (= e!372199 (arrayContainsKey!0 lt!301319 (select (arr!18453 a!2986) j!136) index!984))))

(declare-fun b!648918 () Bool)

(assert (=> b!648918 (= e!372214 true)))

(declare-fun lt!301320 () Bool)

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((List!12547 0))(
  ( (Nil!12544) (Cons!12543 (h!13588 (_ BitVec 64)) (t!18783 List!12547)) )
))
(declare-fun contains!3170 (List!12547 (_ BitVec 64)) Bool)

(assert (=> b!648918 (= lt!301320 (contains!3170 Nil!12544 k!1786))))

(declare-fun b!648919 () Bool)

(declare-fun e!372207 () Bool)

(declare-fun e!372201 () Bool)

(assert (=> b!648919 (= e!372207 e!372201)))

(declare-fun res!420646 () Bool)

(assert (=> b!648919 (=> res!420646 e!372201)))

(declare-fun lt!301316 () (_ BitVec 64))

(declare-fun lt!301332 () (_ BitVec 64))

(assert (=> b!648919 (= res!420646 (or (not (= (select (arr!18453 a!2986) j!136) lt!301332)) (not (= (select (arr!18453 a!2986) j!136) lt!301316))))))

(declare-fun e!372208 () Bool)

(assert (=> b!648919 e!372208))

(declare-fun res!420643 () Bool)

(assert (=> b!648919 (=> (not res!420643) (not e!372208))))

(assert (=> b!648919 (= res!420643 (= lt!301316 (select (arr!18453 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!648919 (= lt!301316 (select (store (arr!18453 a!2986) i!1108 k!1786) index!984))))

(declare-fun res!420651 () Bool)

(declare-fun e!372211 () Bool)

(assert (=> start!58884 (=> (not res!420651) (not e!372211))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58884 (= res!420651 (validMask!0 mask!3053))))

(assert (=> start!58884 e!372211))

(assert (=> start!58884 true))

(declare-fun array_inv!14227 (array!38502) Bool)

(assert (=> start!58884 (array_inv!14227 a!2986)))

(declare-fun b!648920 () Bool)

(declare-fun e!372209 () Bool)

(assert (=> b!648920 (= e!372208 e!372209)))

(declare-fun res!420637 () Bool)

(assert (=> b!648920 (=> res!420637 e!372209)))

(assert (=> b!648920 (= res!420637 (or (not (= (select (arr!18453 a!2986) j!136) lt!301332)) (not (= (select (arr!18453 a!2986) j!136) lt!301316)) (bvsge j!136 index!984)))))

(declare-fun b!648921 () Bool)

(declare-fun e!372212 () Bool)

(assert (=> b!648921 (= e!372212 (not e!372207))))

(declare-fun res!420650 () Bool)

(assert (=> b!648921 (=> res!420650 e!372207)))

(declare-datatypes ((SeekEntryResult!6900 0))(
  ( (MissingZero!6900 (index!29946 (_ BitVec 32))) (Found!6900 (index!29947 (_ BitVec 32))) (Intermediate!6900 (undefined!7712 Bool) (index!29948 (_ BitVec 32)) (x!58762 (_ BitVec 32))) (Undefined!6900) (MissingVacant!6900 (index!29949 (_ BitVec 32))) )
))
(declare-fun lt!301330 () SeekEntryResult!6900)

(assert (=> b!648921 (= res!420650 (not (= lt!301330 (Found!6900 index!984))))))

(declare-fun lt!301317 () Unit!22072)

(declare-fun e!372213 () Unit!22072)

(assert (=> b!648921 (= lt!301317 e!372213)))

(declare-fun c!74509 () Bool)

(assert (=> b!648921 (= c!74509 (= lt!301330 Undefined!6900))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38502 (_ BitVec 32)) SeekEntryResult!6900)

(assert (=> b!648921 (= lt!301330 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!301332 lt!301319 mask!3053))))

(declare-fun e!372206 () Bool)

(assert (=> b!648921 e!372206))

(declare-fun res!420634 () Bool)

(assert (=> b!648921 (=> (not res!420634) (not e!372206))))

(declare-fun lt!301323 () SeekEntryResult!6900)

(declare-fun lt!301328 () (_ BitVec 32))

(assert (=> b!648921 (= res!420634 (= lt!301323 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301328 vacantSpotIndex!68 lt!301332 lt!301319 mask!3053)))))

(assert (=> b!648921 (= lt!301323 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301328 vacantSpotIndex!68 (select (arr!18453 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!648921 (= lt!301332 (select (store (arr!18453 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!301329 () Unit!22072)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38502 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22072)

(assert (=> b!648921 (= lt!301329 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!301328 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!648921 (= lt!301328 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!648922 () Bool)

(declare-fun res!420652 () Bool)

(assert (=> b!648922 (=> (not res!420652) (not e!372211))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!648922 (= res!420652 (validKeyInArray!0 (select (arr!18453 a!2986) j!136)))))

(declare-fun b!648923 () Bool)

(declare-fun res!420638 () Bool)

(declare-fun e!372210 () Bool)

(assert (=> b!648923 (=> (not res!420638) (not e!372210))))

(declare-fun arrayNoDuplicates!0 (array!38502 (_ BitVec 32) List!12547) Bool)

(assert (=> b!648923 (= res!420638 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12544))))

(declare-fun b!648924 () Bool)

(declare-fun e!372200 () Bool)

(assert (=> b!648924 (= e!372210 e!372200)))

(declare-fun res!420635 () Bool)

(assert (=> b!648924 (=> (not res!420635) (not e!372200))))

(assert (=> b!648924 (= res!420635 (= (select (store (arr!18453 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!648924 (= lt!301319 (array!38503 (store (arr!18453 a!2986) i!1108 k!1786) (size!18817 a!2986)))))

(declare-fun b!648925 () Bool)

(declare-fun res!420641 () Bool)

(assert (=> b!648925 (=> res!420641 e!372214)))

(assert (=> b!648925 (= res!420641 (contains!3170 Nil!12544 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!648926 () Bool)

(assert (=> b!648926 (= e!372209 e!372199)))

(declare-fun res!420647 () Bool)

(assert (=> b!648926 (=> (not res!420647) (not e!372199))))

(assert (=> b!648926 (= res!420647 (arrayContainsKey!0 lt!301319 (select (arr!18453 a!2986) j!136) j!136))))

(declare-fun b!648927 () Bool)

(declare-fun res!420645 () Bool)

(assert (=> b!648927 (=> res!420645 e!372214)))

(assert (=> b!648927 (= res!420645 (contains!3170 Nil!12544 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!648928 () Bool)

(declare-fun res!420642 () Bool)

(assert (=> b!648928 (=> (not res!420642) (not e!372211))))

(assert (=> b!648928 (= res!420642 (validKeyInArray!0 k!1786))))

(declare-fun b!648929 () Bool)

(declare-fun res!420653 () Bool)

(assert (=> b!648929 (=> (not res!420653) (not e!372211))))

(assert (=> b!648929 (= res!420653 (and (= (size!18817 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18817 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18817 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!648930 () Bool)

(declare-fun res!420640 () Bool)

(assert (=> b!648930 (=> (not res!420640) (not e!372210))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38502 (_ BitVec 32)) Bool)

(assert (=> b!648930 (= res!420640 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!648931 () Bool)

(assert (=> b!648931 (= e!372201 e!372202)))

(declare-fun res!420639 () Bool)

(assert (=> b!648931 (=> res!420639 e!372202)))

(assert (=> b!648931 (= res!420639 (bvsge index!984 j!136))))

(declare-fun lt!301324 () Unit!22072)

(assert (=> b!648931 (= lt!301324 e!372205)))

(declare-fun c!74510 () Bool)

(assert (=> b!648931 (= c!74510 (bvslt j!136 index!984))))

(declare-fun b!648932 () Bool)

(declare-fun res!420632 () Bool)

(assert (=> b!648932 (=> (not res!420632) (not e!372210))))

(assert (=> b!648932 (= res!420632 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18453 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!648933 () Bool)

(declare-fun res!420644 () Bool)

(assert (=> b!648933 (=> res!420644 e!372214)))

(declare-fun noDuplicate!430 (List!12547) Bool)

(assert (=> b!648933 (= res!420644 (not (noDuplicate!430 Nil!12544)))))

(declare-fun b!648934 () Bool)

(declare-fun Unit!22075 () Unit!22072)

(assert (=> b!648934 (= e!372213 Unit!22075)))

(declare-fun b!648935 () Bool)

(declare-fun lt!301331 () SeekEntryResult!6900)

(assert (=> b!648935 (= e!372206 (= lt!301331 lt!301323))))

(declare-fun b!648936 () Bool)

(assert (=> b!648936 (= e!372200 e!372212)))

(declare-fun res!420631 () Bool)

(assert (=> b!648936 (=> (not res!420631) (not e!372212))))

(assert (=> b!648936 (= res!420631 (and (= lt!301331 (Found!6900 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18453 a!2986) index!984) (select (arr!18453 a!2986) j!136))) (not (= (select (arr!18453 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!648936 (= lt!301331 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18453 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!648937 () Bool)

(declare-fun res!420633 () Bool)

(assert (=> b!648937 (=> (not res!420633) (not e!372211))))

(assert (=> b!648937 (= res!420633 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!648938 () Bool)

(assert (=> b!648938 (= e!372211 e!372210)))

(declare-fun res!420649 () Bool)

(assert (=> b!648938 (=> (not res!420649) (not e!372210))))

(declare-fun lt!301322 () SeekEntryResult!6900)

(assert (=> b!648938 (= res!420649 (or (= lt!301322 (MissingZero!6900 i!1108)) (= lt!301322 (MissingVacant!6900 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38502 (_ BitVec 32)) SeekEntryResult!6900)

(assert (=> b!648938 (= lt!301322 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!648939 () Bool)

(assert (=> b!648939 (= e!372203 (arrayContainsKey!0 lt!301319 (select (arr!18453 a!2986) j!136) index!984))))

(declare-fun b!648940 () Bool)

(declare-fun Unit!22076 () Unit!22072)

(assert (=> b!648940 (= e!372213 Unit!22076)))

(assert (=> b!648940 false))

(declare-fun b!648941 () Bool)

(declare-fun Unit!22077 () Unit!22072)

(assert (=> b!648941 (= e!372205 Unit!22077)))

(declare-fun lt!301321 () Unit!22072)

(assert (=> b!648941 (= lt!301321 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301319 (select (arr!18453 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!648941 (arrayContainsKey!0 lt!301319 (select (arr!18453 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!301318 () Unit!22072)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38502 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12547) Unit!22072)

(assert (=> b!648941 (= lt!301318 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12544))))

(assert (=> b!648941 (arrayNoDuplicates!0 lt!301319 #b00000000000000000000000000000000 Nil!12544)))

(declare-fun lt!301325 () Unit!22072)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38502 (_ BitVec 32) (_ BitVec 32)) Unit!22072)

(assert (=> b!648941 (= lt!301325 (lemmaNoDuplicateFromThenFromBigger!0 lt!301319 #b00000000000000000000000000000000 j!136))))

(assert (=> b!648941 (arrayNoDuplicates!0 lt!301319 j!136 Nil!12544)))

(declare-fun lt!301327 () Unit!22072)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38502 (_ BitVec 64) (_ BitVec 32) List!12547) Unit!22072)

(assert (=> b!648941 (= lt!301327 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!301319 (select (arr!18453 a!2986) j!136) j!136 Nil!12544))))

(assert (=> b!648941 false))

(assert (= (and start!58884 res!420651) b!648929))

(assert (= (and b!648929 res!420653) b!648922))

(assert (= (and b!648922 res!420652) b!648928))

(assert (= (and b!648928 res!420642) b!648937))

(assert (= (and b!648937 res!420633) b!648938))

(assert (= (and b!648938 res!420649) b!648930))

(assert (= (and b!648930 res!420640) b!648923))

(assert (= (and b!648923 res!420638) b!648932))

(assert (= (and b!648932 res!420632) b!648924))

(assert (= (and b!648924 res!420635) b!648936))

(assert (= (and b!648936 res!420631) b!648921))

(assert (= (and b!648921 res!420634) b!648935))

(assert (= (and b!648921 c!74509) b!648940))

(assert (= (and b!648921 (not c!74509)) b!648934))

(assert (= (and b!648921 (not res!420650)) b!648919))

(assert (= (and b!648919 res!420643) b!648920))

(assert (= (and b!648920 (not res!420637)) b!648926))

(assert (= (and b!648926 res!420647) b!648917))

(assert (= (and b!648919 (not res!420646)) b!648931))

(assert (= (and b!648931 c!74510) b!648941))

(assert (= (and b!648931 (not c!74510)) b!648915))

(assert (= (and b!648931 (not res!420639)) b!648916))

(assert (= (and b!648916 res!420636) b!648939))

(assert (= (and b!648916 (not res!420648)) b!648933))

(assert (= (and b!648933 (not res!420644)) b!648925))

(assert (= (and b!648925 (not res!420641)) b!648927))

(assert (= (and b!648927 (not res!420645)) b!648918))

(declare-fun m!622275 () Bool)

(assert (=> b!648916 m!622275))

(assert (=> b!648916 m!622275))

(declare-fun m!622277 () Bool)

(assert (=> b!648916 m!622277))

(assert (=> b!648916 m!622275))

(declare-fun m!622279 () Bool)

(assert (=> b!648916 m!622279))

(assert (=> b!648916 m!622275))

(declare-fun m!622281 () Bool)

(assert (=> b!648916 m!622281))

(declare-fun m!622283 () Bool)

(assert (=> b!648941 m!622283))

(assert (=> b!648941 m!622275))

(declare-fun m!622285 () Bool)

(assert (=> b!648941 m!622285))

(declare-fun m!622287 () Bool)

(assert (=> b!648941 m!622287))

(assert (=> b!648941 m!622275))

(declare-fun m!622289 () Bool)

(assert (=> b!648941 m!622289))

(assert (=> b!648941 m!622275))

(declare-fun m!622291 () Bool)

(assert (=> b!648941 m!622291))

(assert (=> b!648941 m!622275))

(declare-fun m!622293 () Bool)

(assert (=> b!648941 m!622293))

(declare-fun m!622295 () Bool)

(assert (=> b!648941 m!622295))

(assert (=> b!648926 m!622275))

(assert (=> b!648926 m!622275))

(assert (=> b!648926 m!622281))

(declare-fun m!622297 () Bool)

(assert (=> b!648937 m!622297))

(assert (=> b!648917 m!622275))

(assert (=> b!648917 m!622275))

(declare-fun m!622299 () Bool)

(assert (=> b!648917 m!622299))

(declare-fun m!622301 () Bool)

(assert (=> b!648925 m!622301))

(assert (=> b!648919 m!622275))

(declare-fun m!622303 () Bool)

(assert (=> b!648919 m!622303))

(declare-fun m!622305 () Bool)

(assert (=> b!648919 m!622305))

(declare-fun m!622307 () Bool)

(assert (=> b!648938 m!622307))

(assert (=> b!648922 m!622275))

(assert (=> b!648922 m!622275))

(declare-fun m!622309 () Bool)

(assert (=> b!648922 m!622309))

(assert (=> b!648924 m!622303))

(declare-fun m!622311 () Bool)

(assert (=> b!648924 m!622311))

(declare-fun m!622313 () Bool)

(assert (=> b!648936 m!622313))

(assert (=> b!648936 m!622275))

(assert (=> b!648936 m!622275))

(declare-fun m!622315 () Bool)

(assert (=> b!648936 m!622315))

(declare-fun m!622317 () Bool)

(assert (=> b!648933 m!622317))

(declare-fun m!622319 () Bool)

(assert (=> b!648923 m!622319))

(declare-fun m!622321 () Bool)

(assert (=> b!648927 m!622321))

(declare-fun m!622323 () Bool)

(assert (=> b!648921 m!622323))

(declare-fun m!622325 () Bool)

(assert (=> b!648921 m!622325))

(declare-fun m!622327 () Bool)

(assert (=> b!648921 m!622327))

(assert (=> b!648921 m!622275))

(assert (=> b!648921 m!622303))

(declare-fun m!622329 () Bool)

(assert (=> b!648921 m!622329))

(assert (=> b!648921 m!622275))

(declare-fun m!622331 () Bool)

(assert (=> b!648921 m!622331))

(declare-fun m!622333 () Bool)

(assert (=> b!648921 m!622333))

(declare-fun m!622335 () Bool)

(assert (=> start!58884 m!622335))

(declare-fun m!622337 () Bool)

(assert (=> start!58884 m!622337))

(assert (=> b!648939 m!622275))

(assert (=> b!648939 m!622275))

(assert (=> b!648939 m!622299))

(declare-fun m!622339 () Bool)

(assert (=> b!648930 m!622339))

(assert (=> b!648920 m!622275))

(declare-fun m!622341 () Bool)

(assert (=> b!648928 m!622341))

(declare-fun m!622343 () Bool)

(assert (=> b!648918 m!622343))

(declare-fun m!622345 () Bool)

(assert (=> b!648932 m!622345))

(push 1)

