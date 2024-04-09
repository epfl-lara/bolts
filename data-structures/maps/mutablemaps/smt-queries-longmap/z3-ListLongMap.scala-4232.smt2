; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58346 () Bool)

(assert start!58346)

(declare-fun b!643924 () Bool)

(declare-fun e!368914 () Bool)

(declare-fun e!368926 () Bool)

(assert (=> b!643924 (= e!368914 (not e!368926))))

(declare-fun res!417234 () Bool)

(assert (=> b!643924 (=> res!417234 e!368926)))

(declare-datatypes ((SeekEntryResult!6856 0))(
  ( (MissingZero!6856 (index!29755 (_ BitVec 32))) (Found!6856 (index!29756 (_ BitVec 32))) (Intermediate!6856 (undefined!7668 Bool) (index!29757 (_ BitVec 32)) (x!58553 (_ BitVec 32))) (Undefined!6856) (MissingVacant!6856 (index!29758 (_ BitVec 32))) )
))
(declare-fun lt!298452 () SeekEntryResult!6856)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!643924 (= res!417234 (not (= lt!298452 (Found!6856 index!984))))))

(declare-datatypes ((Unit!21808 0))(
  ( (Unit!21809) )
))
(declare-fun lt!298455 () Unit!21808)

(declare-fun e!368920 () Unit!21808)

(assert (=> b!643924 (= lt!298455 e!368920)))

(declare-fun c!73720 () Bool)

(assert (=> b!643924 (= c!73720 (= lt!298452 Undefined!6856))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!38399 0))(
  ( (array!38400 (arr!18409 (Array (_ BitVec 32) (_ BitVec 64))) (size!18773 (_ BitVec 32))) )
))
(declare-fun lt!298454 () array!38399)

(declare-fun lt!298449 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38399 (_ BitVec 32)) SeekEntryResult!6856)

(assert (=> b!643924 (= lt!298452 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!298449 lt!298454 mask!3053))))

(declare-fun e!368913 () Bool)

(assert (=> b!643924 e!368913))

(declare-fun res!417228 () Bool)

(assert (=> b!643924 (=> (not res!417228) (not e!368913))))

(declare-fun lt!298456 () (_ BitVec 32))

(declare-fun lt!298451 () SeekEntryResult!6856)

(assert (=> b!643924 (= res!417228 (= lt!298451 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298456 vacantSpotIndex!68 lt!298449 lt!298454 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!38399)

(assert (=> b!643924 (= lt!298451 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298456 vacantSpotIndex!68 (select (arr!18409 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!643924 (= lt!298449 (select (store (arr!18409 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!298460 () Unit!21808)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38399 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21808)

(assert (=> b!643924 (= lt!298460 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!298456 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!643924 (= lt!298456 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!643925 () Bool)

(declare-fun e!368915 () Bool)

(declare-fun e!368922 () Bool)

(assert (=> b!643925 (= e!368915 e!368922)))

(declare-fun res!417223 () Bool)

(assert (=> b!643925 (=> res!417223 e!368922)))

(declare-fun lt!298461 () (_ BitVec 64))

(assert (=> b!643925 (= res!417223 (or (not (= (select (arr!18409 a!2986) j!136) lt!298449)) (not (= (select (arr!18409 a!2986) j!136) lt!298461)) (bvsge j!136 index!984)))))

(declare-fun b!643926 () Bool)

(declare-fun lt!298447 () SeekEntryResult!6856)

(assert (=> b!643926 (= e!368913 (= lt!298447 lt!298451))))

(declare-fun b!643927 () Bool)

(declare-fun e!368918 () Unit!21808)

(declare-fun Unit!21810 () Unit!21808)

(assert (=> b!643927 (= e!368918 Unit!21810)))

(declare-fun b!643928 () Bool)

(declare-fun e!368923 () Bool)

(assert (=> b!643928 (= e!368923 (bvsge (bvadd #b00000000000000000000000000000001 index!984) #b00000000000000000000000000000000))))

(declare-fun e!368921 () Bool)

(assert (=> b!643928 e!368921))

(declare-fun res!417220 () Bool)

(assert (=> b!643928 (=> (not res!417220) (not e!368921))))

(declare-fun arrayContainsKey!0 (array!38399 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!643928 (= res!417220 (arrayContainsKey!0 lt!298454 (select (arr!18409 a!2986) j!136) j!136))))

(declare-fun b!643929 () Bool)

(declare-fun e!368916 () Bool)

(assert (=> b!643929 (= e!368916 e!368923)))

(declare-fun res!417218 () Bool)

(assert (=> b!643929 (=> res!417218 e!368923)))

(assert (=> b!643929 (= res!417218 (bvsge index!984 j!136))))

(declare-fun lt!298458 () Unit!21808)

(assert (=> b!643929 (= lt!298458 e!368918)))

(declare-fun c!73721 () Bool)

(assert (=> b!643929 (= c!73721 (bvslt j!136 index!984))))

(declare-fun b!643930 () Bool)

(declare-fun e!368919 () Bool)

(assert (=> b!643930 (= e!368919 e!368914)))

(declare-fun res!417236 () Bool)

(assert (=> b!643930 (=> (not res!417236) (not e!368914))))

(assert (=> b!643930 (= res!417236 (and (= lt!298447 (Found!6856 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18409 a!2986) index!984) (select (arr!18409 a!2986) j!136))) (not (= (select (arr!18409 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!643930 (= lt!298447 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18409 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!643931 () Bool)

(declare-fun res!417232 () Bool)

(declare-fun e!368925 () Bool)

(assert (=> b!643931 (=> (not res!417232) (not e!368925))))

(assert (=> b!643931 (= res!417232 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!643932 () Bool)

(declare-fun e!368917 () Bool)

(assert (=> b!643932 (= e!368917 (arrayContainsKey!0 lt!298454 (select (arr!18409 a!2986) j!136) index!984))))

(declare-fun res!417222 () Bool)

(assert (=> start!58346 (=> (not res!417222) (not e!368925))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58346 (= res!417222 (validMask!0 mask!3053))))

(assert (=> start!58346 e!368925))

(assert (=> start!58346 true))

(declare-fun array_inv!14183 (array!38399) Bool)

(assert (=> start!58346 (array_inv!14183 a!2986)))

(declare-fun b!643933 () Bool)

(declare-fun res!417229 () Bool)

(declare-fun e!368924 () Bool)

(assert (=> b!643933 (=> (not res!417229) (not e!368924))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38399 (_ BitVec 32)) Bool)

(assert (=> b!643933 (= res!417229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!643934 () Bool)

(declare-fun res!417233 () Bool)

(assert (=> b!643934 (=> (not res!417233) (not e!368925))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!643934 (= res!417233 (validKeyInArray!0 (select (arr!18409 a!2986) j!136)))))

(declare-fun b!643935 () Bool)

(declare-fun res!417235 () Bool)

(assert (=> b!643935 (=> (not res!417235) (not e!368925))))

(assert (=> b!643935 (= res!417235 (and (= (size!18773 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18773 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18773 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!643936 () Bool)

(declare-fun Unit!21811 () Unit!21808)

(assert (=> b!643936 (= e!368920 Unit!21811)))

(declare-fun b!643937 () Bool)

(declare-fun res!417221 () Bool)

(assert (=> b!643937 (=> (not res!417221) (not e!368924))))

(assert (=> b!643937 (= res!417221 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18409 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!643938 () Bool)

(assert (=> b!643938 (= e!368926 e!368916)))

(declare-fun res!417231 () Bool)

(assert (=> b!643938 (=> res!417231 e!368916)))

(assert (=> b!643938 (= res!417231 (or (not (= (select (arr!18409 a!2986) j!136) lt!298449)) (not (= (select (arr!18409 a!2986) j!136) lt!298461))))))

(assert (=> b!643938 e!368915))

(declare-fun res!417227 () Bool)

(assert (=> b!643938 (=> (not res!417227) (not e!368915))))

(assert (=> b!643938 (= res!417227 (= lt!298461 (select (arr!18409 a!2986) j!136)))))

(assert (=> b!643938 (= lt!298461 (select (store (arr!18409 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!643939 () Bool)

(assert (=> b!643939 (= e!368922 e!368917)))

(declare-fun res!417225 () Bool)

(assert (=> b!643939 (=> (not res!417225) (not e!368917))))

(assert (=> b!643939 (= res!417225 (arrayContainsKey!0 lt!298454 (select (arr!18409 a!2986) j!136) j!136))))

(declare-fun b!643940 () Bool)

(declare-fun Unit!21812 () Unit!21808)

(assert (=> b!643940 (= e!368920 Unit!21812)))

(assert (=> b!643940 false))

(declare-fun b!643941 () Bool)

(declare-fun res!417219 () Bool)

(assert (=> b!643941 (=> (not res!417219) (not e!368924))))

(declare-datatypes ((List!12503 0))(
  ( (Nil!12500) (Cons!12499 (h!13544 (_ BitVec 64)) (t!18739 List!12503)) )
))
(declare-fun arrayNoDuplicates!0 (array!38399 (_ BitVec 32) List!12503) Bool)

(assert (=> b!643941 (= res!417219 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12500))))

(declare-fun b!643942 () Bool)

(declare-fun res!417230 () Bool)

(assert (=> b!643942 (=> (not res!417230) (not e!368925))))

(assert (=> b!643942 (= res!417230 (validKeyInArray!0 k0!1786))))

(declare-fun b!643943 () Bool)

(assert (=> b!643943 (= e!368925 e!368924)))

(declare-fun res!417226 () Bool)

(assert (=> b!643943 (=> (not res!417226) (not e!368924))))

(declare-fun lt!298459 () SeekEntryResult!6856)

(assert (=> b!643943 (= res!417226 (or (= lt!298459 (MissingZero!6856 i!1108)) (= lt!298459 (MissingVacant!6856 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38399 (_ BitVec 32)) SeekEntryResult!6856)

(assert (=> b!643943 (= lt!298459 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!643944 () Bool)

(assert (=> b!643944 (= e!368921 (arrayContainsKey!0 lt!298454 (select (arr!18409 a!2986) j!136) index!984))))

(declare-fun b!643945 () Bool)

(assert (=> b!643945 (= e!368924 e!368919)))

(declare-fun res!417224 () Bool)

(assert (=> b!643945 (=> (not res!417224) (not e!368919))))

(assert (=> b!643945 (= res!417224 (= (select (store (arr!18409 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!643945 (= lt!298454 (array!38400 (store (arr!18409 a!2986) i!1108 k0!1786) (size!18773 a!2986)))))

(declare-fun b!643946 () Bool)

(declare-fun Unit!21813 () Unit!21808)

(assert (=> b!643946 (= e!368918 Unit!21813)))

(declare-fun lt!298448 () Unit!21808)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38399 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21808)

(assert (=> b!643946 (= lt!298448 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!298454 (select (arr!18409 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!643946 (arrayContainsKey!0 lt!298454 (select (arr!18409 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!298453 () Unit!21808)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38399 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12503) Unit!21808)

(assert (=> b!643946 (= lt!298453 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12500))))

(assert (=> b!643946 (arrayNoDuplicates!0 lt!298454 #b00000000000000000000000000000000 Nil!12500)))

(declare-fun lt!298450 () Unit!21808)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38399 (_ BitVec 32) (_ BitVec 32)) Unit!21808)

(assert (=> b!643946 (= lt!298450 (lemmaNoDuplicateFromThenFromBigger!0 lt!298454 #b00000000000000000000000000000000 j!136))))

(assert (=> b!643946 (arrayNoDuplicates!0 lt!298454 j!136 Nil!12500)))

(declare-fun lt!298457 () Unit!21808)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38399 (_ BitVec 64) (_ BitVec 32) List!12503) Unit!21808)

(assert (=> b!643946 (= lt!298457 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!298454 (select (arr!18409 a!2986) j!136) j!136 Nil!12500))))

(assert (=> b!643946 false))

(assert (= (and start!58346 res!417222) b!643935))

(assert (= (and b!643935 res!417235) b!643934))

(assert (= (and b!643934 res!417233) b!643942))

(assert (= (and b!643942 res!417230) b!643931))

(assert (= (and b!643931 res!417232) b!643943))

(assert (= (and b!643943 res!417226) b!643933))

(assert (= (and b!643933 res!417229) b!643941))

(assert (= (and b!643941 res!417219) b!643937))

(assert (= (and b!643937 res!417221) b!643945))

(assert (= (and b!643945 res!417224) b!643930))

(assert (= (and b!643930 res!417236) b!643924))

(assert (= (and b!643924 res!417228) b!643926))

(assert (= (and b!643924 c!73720) b!643940))

(assert (= (and b!643924 (not c!73720)) b!643936))

(assert (= (and b!643924 (not res!417234)) b!643938))

(assert (= (and b!643938 res!417227) b!643925))

(assert (= (and b!643925 (not res!417223)) b!643939))

(assert (= (and b!643939 res!417225) b!643932))

(assert (= (and b!643938 (not res!417231)) b!643929))

(assert (= (and b!643929 c!73721) b!643946))

(assert (= (and b!643929 (not c!73721)) b!643927))

(assert (= (and b!643929 (not res!417218)) b!643928))

(assert (= (and b!643928 res!417220) b!643944))

(declare-fun m!617643 () Bool)

(assert (=> b!643943 m!617643))

(declare-fun m!617645 () Bool)

(assert (=> b!643925 m!617645))

(assert (=> b!643938 m!617645))

(declare-fun m!617647 () Bool)

(assert (=> b!643938 m!617647))

(declare-fun m!617649 () Bool)

(assert (=> b!643938 m!617649))

(assert (=> b!643944 m!617645))

(assert (=> b!643944 m!617645))

(declare-fun m!617651 () Bool)

(assert (=> b!643944 m!617651))

(assert (=> b!643932 m!617645))

(assert (=> b!643932 m!617645))

(assert (=> b!643932 m!617651))

(declare-fun m!617653 () Bool)

(assert (=> start!58346 m!617653))

(declare-fun m!617655 () Bool)

(assert (=> start!58346 m!617655))

(assert (=> b!643939 m!617645))

(assert (=> b!643939 m!617645))

(declare-fun m!617657 () Bool)

(assert (=> b!643939 m!617657))

(declare-fun m!617659 () Bool)

(assert (=> b!643942 m!617659))

(declare-fun m!617661 () Bool)

(assert (=> b!643924 m!617661))

(declare-fun m!617663 () Bool)

(assert (=> b!643924 m!617663))

(assert (=> b!643924 m!617645))

(declare-fun m!617665 () Bool)

(assert (=> b!643924 m!617665))

(assert (=> b!643924 m!617647))

(assert (=> b!643924 m!617645))

(declare-fun m!617667 () Bool)

(assert (=> b!643924 m!617667))

(declare-fun m!617669 () Bool)

(assert (=> b!643924 m!617669))

(declare-fun m!617671 () Bool)

(assert (=> b!643924 m!617671))

(declare-fun m!617673 () Bool)

(assert (=> b!643937 m!617673))

(assert (=> b!643928 m!617645))

(assert (=> b!643928 m!617645))

(assert (=> b!643928 m!617657))

(declare-fun m!617675 () Bool)

(assert (=> b!643930 m!617675))

(assert (=> b!643930 m!617645))

(assert (=> b!643930 m!617645))

(declare-fun m!617677 () Bool)

(assert (=> b!643930 m!617677))

(assert (=> b!643945 m!617647))

(declare-fun m!617679 () Bool)

(assert (=> b!643945 m!617679))

(assert (=> b!643946 m!617645))

(declare-fun m!617681 () Bool)

(assert (=> b!643946 m!617681))

(assert (=> b!643946 m!617645))

(declare-fun m!617683 () Bool)

(assert (=> b!643946 m!617683))

(declare-fun m!617685 () Bool)

(assert (=> b!643946 m!617685))

(assert (=> b!643946 m!617645))

(declare-fun m!617687 () Bool)

(assert (=> b!643946 m!617687))

(declare-fun m!617689 () Bool)

(assert (=> b!643946 m!617689))

(assert (=> b!643946 m!617645))

(declare-fun m!617691 () Bool)

(assert (=> b!643946 m!617691))

(declare-fun m!617693 () Bool)

(assert (=> b!643946 m!617693))

(assert (=> b!643934 m!617645))

(assert (=> b!643934 m!617645))

(declare-fun m!617695 () Bool)

(assert (=> b!643934 m!617695))

(declare-fun m!617697 () Bool)

(assert (=> b!643941 m!617697))

(declare-fun m!617699 () Bool)

(assert (=> b!643933 m!617699))

(declare-fun m!617701 () Bool)

(assert (=> b!643931 m!617701))

(check-sat (not b!643946) (not b!643941) (not b!643931) (not b!643939) (not b!643924) (not b!643933) (not b!643944) (not b!643943) (not b!643934) (not b!643932) (not start!58346) (not b!643928) (not b!643930) (not b!643942))
(check-sat)
