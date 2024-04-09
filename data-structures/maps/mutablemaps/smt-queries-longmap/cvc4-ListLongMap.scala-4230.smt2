; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58336 () Bool)

(assert start!58336)

(declare-fun b!643579 () Bool)

(declare-fun e!368692 () Bool)

(declare-datatypes ((SeekEntryResult!6851 0))(
  ( (MissingZero!6851 (index!29735 (_ BitVec 32))) (Found!6851 (index!29736 (_ BitVec 32))) (Intermediate!6851 (undefined!7663 Bool) (index!29737 (_ BitVec 32)) (x!58532 (_ BitVec 32))) (Undefined!6851) (MissingVacant!6851 (index!29738 (_ BitVec 32))) )
))
(declare-fun lt!298233 () SeekEntryResult!6851)

(declare-fun lt!298230 () SeekEntryResult!6851)

(assert (=> b!643579 (= e!368692 (= lt!298233 lt!298230))))

(declare-fun b!643580 () Bool)

(declare-datatypes ((Unit!21778 0))(
  ( (Unit!21779) )
))
(declare-fun e!368698 () Unit!21778)

(declare-fun Unit!21780 () Unit!21778)

(assert (=> b!643580 (= e!368698 Unit!21780)))

(assert (=> b!643580 false))

(declare-fun b!643581 () Bool)

(declare-fun res!416949 () Bool)

(declare-fun e!368700 () Bool)

(assert (=> b!643581 (=> (not res!416949) (not e!368700))))

(declare-datatypes ((array!38389 0))(
  ( (array!38390 (arr!18404 (Array (_ BitVec 32) (_ BitVec 64))) (size!18768 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38389)

(declare-datatypes ((List!12498 0))(
  ( (Nil!12495) (Cons!12494 (h!13539 (_ BitVec 64)) (t!18734 List!12498)) )
))
(declare-fun arrayNoDuplicates!0 (array!38389 (_ BitVec 32) List!12498) Bool)

(assert (=> b!643581 (= res!416949 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12495))))

(declare-fun b!643582 () Bool)

(declare-fun e!368695 () Bool)

(declare-fun e!368701 () Bool)

(assert (=> b!643582 (= e!368695 (not e!368701))))

(declare-fun res!416939 () Bool)

(assert (=> b!643582 (=> res!416939 e!368701)))

(declare-fun lt!298229 () SeekEntryResult!6851)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!643582 (= res!416939 (not (= lt!298229 (Found!6851 index!984))))))

(declare-fun lt!298224 () Unit!21778)

(assert (=> b!643582 (= lt!298224 e!368698)))

(declare-fun c!73690 () Bool)

(assert (=> b!643582 (= c!73690 (= lt!298229 Undefined!6851))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!298231 () array!38389)

(declare-fun lt!298227 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38389 (_ BitVec 32)) SeekEntryResult!6851)

(assert (=> b!643582 (= lt!298229 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!298227 lt!298231 mask!3053))))

(assert (=> b!643582 e!368692))

(declare-fun res!416937 () Bool)

(assert (=> b!643582 (=> (not res!416937) (not e!368692))))

(declare-fun lt!298236 () (_ BitVec 32))

(assert (=> b!643582 (= res!416937 (= lt!298230 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298236 vacantSpotIndex!68 lt!298227 lt!298231 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!643582 (= lt!298230 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298236 vacantSpotIndex!68 (select (arr!18404 a!2986) j!136) a!2986 mask!3053))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!643582 (= lt!298227 (select (store (arr!18404 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!298222 () Unit!21778)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38389 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21778)

(assert (=> b!643582 (= lt!298222 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!298236 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!643582 (= lt!298236 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!643583 () Bool)

(declare-fun e!368689 () Bool)

(declare-fun arrayContainsKey!0 (array!38389 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!643583 (= e!368689 (arrayContainsKey!0 lt!298231 (select (arr!18404 a!2986) j!136) index!984))))

(declare-fun b!643584 () Bool)

(declare-fun res!416944 () Bool)

(assert (=> b!643584 (=> (not res!416944) (not e!368700))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38389 (_ BitVec 32)) Bool)

(assert (=> b!643584 (= res!416944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!643585 () Bool)

(declare-fun e!368690 () Bool)

(assert (=> b!643585 (= e!368690 e!368695)))

(declare-fun res!416934 () Bool)

(assert (=> b!643585 (=> (not res!416934) (not e!368695))))

(assert (=> b!643585 (= res!416934 (and (= lt!298233 (Found!6851 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18404 a!2986) index!984) (select (arr!18404 a!2986) j!136))) (not (= (select (arr!18404 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!643585 (= lt!298233 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18404 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!643586 () Bool)

(declare-fun e!368693 () Bool)

(assert (=> b!643586 (= e!368693 e!368689)))

(declare-fun res!416945 () Bool)

(assert (=> b!643586 (=> (not res!416945) (not e!368689))))

(assert (=> b!643586 (= res!416945 (arrayContainsKey!0 lt!298231 (select (arr!18404 a!2986) j!136) j!136))))

(declare-fun b!643587 () Bool)

(assert (=> b!643587 (= e!368700 e!368690)))

(declare-fun res!416942 () Bool)

(assert (=> b!643587 (=> (not res!416942) (not e!368690))))

(assert (=> b!643587 (= res!416942 (= (select (store (arr!18404 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!643587 (= lt!298231 (array!38390 (store (arr!18404 a!2986) i!1108 k!1786) (size!18768 a!2986)))))

(declare-fun b!643588 () Bool)

(declare-fun res!416933 () Bool)

(assert (=> b!643588 (=> (not res!416933) (not e!368700))))

(assert (=> b!643588 (= res!416933 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18404 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!643589 () Bool)

(declare-fun res!416951 () Bool)

(declare-fun e!368688 () Bool)

(assert (=> b!643589 (=> (not res!416951) (not e!368688))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!643589 (= res!416951 (validKeyInArray!0 (select (arr!18404 a!2986) j!136)))))

(declare-fun res!416947 () Bool)

(assert (=> start!58336 (=> (not res!416947) (not e!368688))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58336 (= res!416947 (validMask!0 mask!3053))))

(assert (=> start!58336 e!368688))

(assert (=> start!58336 true))

(declare-fun array_inv!14178 (array!38389) Bool)

(assert (=> start!58336 (array_inv!14178 a!2986)))

(declare-fun b!643590 () Bool)

(declare-fun e!368687 () Bool)

(assert (=> b!643590 (= e!368687 (arrayContainsKey!0 lt!298231 (select (arr!18404 a!2986) j!136) index!984))))

(declare-fun b!643591 () Bool)

(declare-fun res!416940 () Bool)

(assert (=> b!643591 (=> (not res!416940) (not e!368688))))

(assert (=> b!643591 (= res!416940 (validKeyInArray!0 k!1786))))

(declare-fun b!643592 () Bool)

(declare-fun e!368696 () Unit!21778)

(declare-fun Unit!21781 () Unit!21778)

(assert (=> b!643592 (= e!368696 Unit!21781)))

(declare-fun lt!298232 () Unit!21778)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38389 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21778)

(assert (=> b!643592 (= lt!298232 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!298231 (select (arr!18404 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!643592 (arrayContainsKey!0 lt!298231 (select (arr!18404 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!298235 () Unit!21778)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38389 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12498) Unit!21778)

(assert (=> b!643592 (= lt!298235 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12495))))

(assert (=> b!643592 (arrayNoDuplicates!0 lt!298231 #b00000000000000000000000000000000 Nil!12495)))

(declare-fun lt!298228 () Unit!21778)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38389 (_ BitVec 32) (_ BitVec 32)) Unit!21778)

(assert (=> b!643592 (= lt!298228 (lemmaNoDuplicateFromThenFromBigger!0 lt!298231 #b00000000000000000000000000000000 j!136))))

(assert (=> b!643592 (arrayNoDuplicates!0 lt!298231 j!136 Nil!12495)))

(declare-fun lt!298234 () Unit!21778)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38389 (_ BitVec 64) (_ BitVec 32) List!12498) Unit!21778)

(assert (=> b!643592 (= lt!298234 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!298231 (select (arr!18404 a!2986) j!136) j!136 Nil!12495))))

(assert (=> b!643592 false))

(declare-fun b!643593 () Bool)

(declare-fun e!368699 () Bool)

(declare-fun e!368691 () Bool)

(assert (=> b!643593 (= e!368699 e!368691)))

(declare-fun res!416950 () Bool)

(assert (=> b!643593 (=> res!416950 e!368691)))

(assert (=> b!643593 (= res!416950 (bvsge index!984 j!136))))

(declare-fun lt!298226 () Unit!21778)

(assert (=> b!643593 (= lt!298226 e!368696)))

(declare-fun c!73691 () Bool)

(assert (=> b!643593 (= c!73691 (bvslt j!136 index!984))))

(declare-fun b!643594 () Bool)

(assert (=> b!643594 (= e!368688 e!368700)))

(declare-fun res!416943 () Bool)

(assert (=> b!643594 (=> (not res!416943) (not e!368700))))

(declare-fun lt!298223 () SeekEntryResult!6851)

(assert (=> b!643594 (= res!416943 (or (= lt!298223 (MissingZero!6851 i!1108)) (= lt!298223 (MissingVacant!6851 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38389 (_ BitVec 32)) SeekEntryResult!6851)

(assert (=> b!643594 (= lt!298223 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!643595 () Bool)

(declare-fun Unit!21782 () Unit!21778)

(assert (=> b!643595 (= e!368698 Unit!21782)))

(declare-fun b!643596 () Bool)

(declare-fun res!416938 () Bool)

(assert (=> b!643596 (=> (not res!416938) (not e!368688))))

(assert (=> b!643596 (= res!416938 (and (= (size!18768 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18768 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18768 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!643597 () Bool)

(declare-fun e!368697 () Bool)

(assert (=> b!643597 (= e!368697 e!368693)))

(declare-fun res!416948 () Bool)

(assert (=> b!643597 (=> res!416948 e!368693)))

(declare-fun lt!298225 () (_ BitVec 64))

(assert (=> b!643597 (= res!416948 (or (not (= (select (arr!18404 a!2986) j!136) lt!298227)) (not (= (select (arr!18404 a!2986) j!136) lt!298225)) (bvsge j!136 index!984)))))

(declare-fun b!643598 () Bool)

(assert (=> b!643598 (= e!368691 true)))

(assert (=> b!643598 e!368687))

(declare-fun res!416935 () Bool)

(assert (=> b!643598 (=> (not res!416935) (not e!368687))))

(assert (=> b!643598 (= res!416935 (arrayContainsKey!0 lt!298231 (select (arr!18404 a!2986) j!136) j!136))))

(declare-fun b!643599 () Bool)

(assert (=> b!643599 (= e!368701 e!368699)))

(declare-fun res!416941 () Bool)

(assert (=> b!643599 (=> res!416941 e!368699)))

(assert (=> b!643599 (= res!416941 (or (not (= (select (arr!18404 a!2986) j!136) lt!298227)) (not (= (select (arr!18404 a!2986) j!136) lt!298225))))))

(assert (=> b!643599 e!368697))

(declare-fun res!416936 () Bool)

(assert (=> b!643599 (=> (not res!416936) (not e!368697))))

(assert (=> b!643599 (= res!416936 (= lt!298225 (select (arr!18404 a!2986) j!136)))))

(assert (=> b!643599 (= lt!298225 (select (store (arr!18404 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!643600 () Bool)

(declare-fun Unit!21783 () Unit!21778)

(assert (=> b!643600 (= e!368696 Unit!21783)))

(declare-fun b!643601 () Bool)

(declare-fun res!416946 () Bool)

(assert (=> b!643601 (=> (not res!416946) (not e!368688))))

(assert (=> b!643601 (= res!416946 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!58336 res!416947) b!643596))

(assert (= (and b!643596 res!416938) b!643589))

(assert (= (and b!643589 res!416951) b!643591))

(assert (= (and b!643591 res!416940) b!643601))

(assert (= (and b!643601 res!416946) b!643594))

(assert (= (and b!643594 res!416943) b!643584))

(assert (= (and b!643584 res!416944) b!643581))

(assert (= (and b!643581 res!416949) b!643588))

(assert (= (and b!643588 res!416933) b!643587))

(assert (= (and b!643587 res!416942) b!643585))

(assert (= (and b!643585 res!416934) b!643582))

(assert (= (and b!643582 res!416937) b!643579))

(assert (= (and b!643582 c!73690) b!643580))

(assert (= (and b!643582 (not c!73690)) b!643595))

(assert (= (and b!643582 (not res!416939)) b!643599))

(assert (= (and b!643599 res!416936) b!643597))

(assert (= (and b!643597 (not res!416948)) b!643586))

(assert (= (and b!643586 res!416945) b!643583))

(assert (= (and b!643599 (not res!416941)) b!643593))

(assert (= (and b!643593 c!73691) b!643592))

(assert (= (and b!643593 (not c!73691)) b!643600))

(assert (= (and b!643593 (not res!416950)) b!643598))

(assert (= (and b!643598 res!416935) b!643590))

(declare-fun m!617343 () Bool)

(assert (=> b!643590 m!617343))

(assert (=> b!643590 m!617343))

(declare-fun m!617345 () Bool)

(assert (=> b!643590 m!617345))

(declare-fun m!617347 () Bool)

(assert (=> b!643582 m!617347))

(declare-fun m!617349 () Bool)

(assert (=> b!643582 m!617349))

(assert (=> b!643582 m!617343))

(declare-fun m!617351 () Bool)

(assert (=> b!643582 m!617351))

(declare-fun m!617353 () Bool)

(assert (=> b!643582 m!617353))

(declare-fun m!617355 () Bool)

(assert (=> b!643582 m!617355))

(assert (=> b!643582 m!617343))

(declare-fun m!617357 () Bool)

(assert (=> b!643582 m!617357))

(declare-fun m!617359 () Bool)

(assert (=> b!643582 m!617359))

(declare-fun m!617361 () Bool)

(assert (=> b!643592 m!617361))

(assert (=> b!643592 m!617343))

(assert (=> b!643592 m!617343))

(declare-fun m!617363 () Bool)

(assert (=> b!643592 m!617363))

(declare-fun m!617365 () Bool)

(assert (=> b!643592 m!617365))

(assert (=> b!643592 m!617343))

(declare-fun m!617367 () Bool)

(assert (=> b!643592 m!617367))

(declare-fun m!617369 () Bool)

(assert (=> b!643592 m!617369))

(assert (=> b!643592 m!617343))

(declare-fun m!617371 () Bool)

(assert (=> b!643592 m!617371))

(declare-fun m!617373 () Bool)

(assert (=> b!643592 m!617373))

(declare-fun m!617375 () Bool)

(assert (=> b!643601 m!617375))

(assert (=> b!643598 m!617343))

(assert (=> b!643598 m!617343))

(declare-fun m!617377 () Bool)

(assert (=> b!643598 m!617377))

(declare-fun m!617379 () Bool)

(assert (=> b!643585 m!617379))

(assert (=> b!643585 m!617343))

(assert (=> b!643585 m!617343))

(declare-fun m!617381 () Bool)

(assert (=> b!643585 m!617381))

(assert (=> b!643599 m!617343))

(assert (=> b!643599 m!617353))

(declare-fun m!617383 () Bool)

(assert (=> b!643599 m!617383))

(declare-fun m!617385 () Bool)

(assert (=> b!643591 m!617385))

(declare-fun m!617387 () Bool)

(assert (=> start!58336 m!617387))

(declare-fun m!617389 () Bool)

(assert (=> start!58336 m!617389))

(declare-fun m!617391 () Bool)

(assert (=> b!643588 m!617391))

(assert (=> b!643597 m!617343))

(assert (=> b!643589 m!617343))

(assert (=> b!643589 m!617343))

(declare-fun m!617393 () Bool)

(assert (=> b!643589 m!617393))

(declare-fun m!617395 () Bool)

(assert (=> b!643594 m!617395))

(assert (=> b!643587 m!617353))

(declare-fun m!617397 () Bool)

(assert (=> b!643587 m!617397))

(assert (=> b!643586 m!617343))

(assert (=> b!643586 m!617343))

(assert (=> b!643586 m!617377))

(assert (=> b!643583 m!617343))

(assert (=> b!643583 m!617343))

(assert (=> b!643583 m!617345))

(declare-fun m!617399 () Bool)

(assert (=> b!643584 m!617399))

(declare-fun m!617401 () Bool)

(assert (=> b!643581 m!617401))

(push 1)

