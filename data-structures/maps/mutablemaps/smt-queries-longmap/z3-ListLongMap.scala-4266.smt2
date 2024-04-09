; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59354 () Bool)

(assert start!59354)

(declare-fun b!654522 () Bool)

(declare-fun e!375878 () Bool)

(declare-fun e!375884 () Bool)

(assert (=> b!654522 (= e!375878 e!375884)))

(declare-fun res!424671 () Bool)

(assert (=> b!654522 (=> res!424671 e!375884)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!305045 () (_ BitVec 64))

(declare-fun lt!305046 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38630 0))(
  ( (array!38631 (arr!18511 (Array (_ BitVec 32) (_ BitVec 64))) (size!18875 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38630)

(assert (=> b!654522 (= res!424671 (or (not (= (select (arr!18511 a!2986) j!136) lt!305046)) (not (= (select (arr!18511 a!2986) j!136) lt!305045)) (bvsge j!136 index!984)))))

(declare-fun b!654523 () Bool)

(declare-fun res!424663 () Bool)

(declare-fun e!375888 () Bool)

(assert (=> b!654523 (=> (not res!424663) (not e!375888))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!654523 (= res!424663 (validKeyInArray!0 k0!1786))))

(declare-fun b!654524 () Bool)

(declare-fun e!375880 () Bool)

(declare-fun e!375881 () Bool)

(assert (=> b!654524 (= e!375880 e!375881)))

(declare-fun res!424660 () Bool)

(assert (=> b!654524 (=> res!424660 e!375881)))

(assert (=> b!654524 (= res!424660 (or (not (= (select (arr!18511 a!2986) j!136) lt!305046)) (not (= (select (arr!18511 a!2986) j!136) lt!305045))))))

(assert (=> b!654524 e!375878))

(declare-fun res!424669 () Bool)

(assert (=> b!654524 (=> (not res!424669) (not e!375878))))

(assert (=> b!654524 (= res!424669 (= lt!305045 (select (arr!18511 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!654524 (= lt!305045 (select (store (arr!18511 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!654525 () Bool)

(declare-fun e!375885 () Bool)

(declare-fun e!375887 () Bool)

(assert (=> b!654525 (= e!375885 e!375887)))

(declare-fun res!424672 () Bool)

(assert (=> b!654525 (=> (not res!424672) (not e!375887))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6958 0))(
  ( (MissingZero!6958 (index!30190 (_ BitVec 32))) (Found!6958 (index!30191 (_ BitVec 32))) (Intermediate!6958 (undefined!7770 Bool) (index!30192 (_ BitVec 32)) (x!59008 (_ BitVec 32))) (Undefined!6958) (MissingVacant!6958 (index!30193 (_ BitVec 32))) )
))
(declare-fun lt!305047 () SeekEntryResult!6958)

(assert (=> b!654525 (= res!424672 (and (= lt!305047 (Found!6958 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18511 a!2986) index!984) (select (arr!18511 a!2986) j!136))) (not (= (select (arr!18511 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38630 (_ BitVec 32)) SeekEntryResult!6958)

(assert (=> b!654525 (= lt!305047 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18511 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!654526 () Bool)

(declare-datatypes ((Unit!22428 0))(
  ( (Unit!22429) )
))
(declare-fun e!375889 () Unit!22428)

(declare-fun Unit!22430 () Unit!22428)

(assert (=> b!654526 (= e!375889 Unit!22430)))

(declare-fun b!654527 () Bool)

(declare-fun e!375882 () Unit!22428)

(declare-fun Unit!22431 () Unit!22428)

(assert (=> b!654527 (= e!375882 Unit!22431)))

(assert (=> b!654527 false))

(declare-fun b!654529 () Bool)

(declare-fun e!375890 () Bool)

(assert (=> b!654529 (= e!375884 e!375890)))

(declare-fun res!424659 () Bool)

(assert (=> b!654529 (=> (not res!424659) (not e!375890))))

(declare-fun lt!305060 () array!38630)

(declare-fun arrayContainsKey!0 (array!38630 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!654529 (= res!424659 (arrayContainsKey!0 lt!305060 (select (arr!18511 a!2986) j!136) j!136))))

(declare-fun b!654530 () Bool)

(declare-fun res!424658 () Bool)

(assert (=> b!654530 (=> (not res!424658) (not e!375888))))

(assert (=> b!654530 (= res!424658 (validKeyInArray!0 (select (arr!18511 a!2986) j!136)))))

(declare-fun b!654531 () Bool)

(assert (=> b!654531 (= e!375881 true)))

(assert (=> b!654531 false))

(declare-fun lt!305048 () Unit!22428)

(assert (=> b!654531 (= lt!305048 e!375889)))

(declare-fun c!75302 () Bool)

(assert (=> b!654531 (= c!75302 (bvslt index!984 j!136))))

(declare-fun lt!305056 () Unit!22428)

(declare-fun e!375886 () Unit!22428)

(assert (=> b!654531 (= lt!305056 e!375886)))

(declare-fun c!75300 () Bool)

(assert (=> b!654531 (= c!75300 (bvslt j!136 index!984))))

(declare-fun b!654532 () Bool)

(declare-fun Unit!22432 () Unit!22428)

(assert (=> b!654532 (= e!375886 Unit!22432)))

(declare-fun lt!305049 () Unit!22428)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38630 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22428)

(assert (=> b!654532 (= lt!305049 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305060 (select (arr!18511 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!654532 (arrayContainsKey!0 lt!305060 (select (arr!18511 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!305061 () Unit!22428)

(declare-datatypes ((List!12605 0))(
  ( (Nil!12602) (Cons!12601 (h!13646 (_ BitVec 64)) (t!18841 List!12605)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38630 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12605) Unit!22428)

(assert (=> b!654532 (= lt!305061 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12602))))

(declare-fun arrayNoDuplicates!0 (array!38630 (_ BitVec 32) List!12605) Bool)

(assert (=> b!654532 (arrayNoDuplicates!0 lt!305060 #b00000000000000000000000000000000 Nil!12602)))

(declare-fun lt!305055 () Unit!22428)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38630 (_ BitVec 32) (_ BitVec 32)) Unit!22428)

(assert (=> b!654532 (= lt!305055 (lemmaNoDuplicateFromThenFromBigger!0 lt!305060 #b00000000000000000000000000000000 j!136))))

(assert (=> b!654532 (arrayNoDuplicates!0 lt!305060 j!136 Nil!12602)))

(declare-fun lt!305053 () Unit!22428)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38630 (_ BitVec 64) (_ BitVec 32) List!12605) Unit!22428)

(assert (=> b!654532 (= lt!305053 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305060 (select (arr!18511 a!2986) j!136) j!136 Nil!12602))))

(assert (=> b!654532 false))

(declare-fun b!654533 () Bool)

(declare-fun Unit!22433 () Unit!22428)

(assert (=> b!654533 (= e!375886 Unit!22433)))

(declare-fun b!654534 () Bool)

(declare-fun e!375879 () Bool)

(assert (=> b!654534 (= e!375879 (arrayContainsKey!0 lt!305060 (select (arr!18511 a!2986) j!136) index!984))))

(declare-fun b!654535 () Bool)

(declare-fun Unit!22434 () Unit!22428)

(assert (=> b!654535 (= e!375882 Unit!22434)))

(declare-fun b!654536 () Bool)

(declare-fun res!424670 () Bool)

(declare-fun e!375891 () Bool)

(assert (=> b!654536 (=> (not res!424670) (not e!375891))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38630 (_ BitVec 32)) Bool)

(assert (=> b!654536 (= res!424670 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!654537 () Bool)

(declare-fun e!375892 () Bool)

(declare-fun lt!305058 () SeekEntryResult!6958)

(assert (=> b!654537 (= e!375892 (= lt!305047 lt!305058))))

(declare-fun b!654538 () Bool)

(assert (=> b!654538 (= e!375890 (arrayContainsKey!0 lt!305060 (select (arr!18511 a!2986) j!136) index!984))))

(declare-fun b!654539 () Bool)

(assert (=> b!654539 (= e!375888 e!375891)))

(declare-fun res!424656 () Bool)

(assert (=> b!654539 (=> (not res!424656) (not e!375891))))

(declare-fun lt!305043 () SeekEntryResult!6958)

(assert (=> b!654539 (= res!424656 (or (= lt!305043 (MissingZero!6958 i!1108)) (= lt!305043 (MissingVacant!6958 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38630 (_ BitVec 32)) SeekEntryResult!6958)

(assert (=> b!654539 (= lt!305043 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!654540 () Bool)

(declare-fun res!424665 () Bool)

(assert (=> b!654540 (=> (not res!424665) (not e!375888))))

(assert (=> b!654540 (= res!424665 (and (= (size!18875 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18875 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18875 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!654541 () Bool)

(declare-fun res!424661 () Bool)

(assert (=> b!654541 (=> (not res!424661) (not e!375888))))

(assert (=> b!654541 (= res!424661 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!654542 () Bool)

(declare-fun Unit!22435 () Unit!22428)

(assert (=> b!654542 (= e!375889 Unit!22435)))

(declare-fun res!424664 () Bool)

(assert (=> b!654542 (= res!424664 (arrayContainsKey!0 lt!305060 (select (arr!18511 a!2986) j!136) j!136))))

(assert (=> b!654542 (=> (not res!424664) (not e!375879))))

(assert (=> b!654542 e!375879))

(declare-fun lt!305042 () Unit!22428)

(assert (=> b!654542 (= lt!305042 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305060 (select (arr!18511 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!654542 (arrayContainsKey!0 lt!305060 (select (arr!18511 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!305050 () Unit!22428)

(assert (=> b!654542 (= lt!305050 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12602))))

(assert (=> b!654542 (arrayNoDuplicates!0 lt!305060 #b00000000000000000000000000000000 Nil!12602)))

(declare-fun lt!305057 () Unit!22428)

(assert (=> b!654542 (= lt!305057 (lemmaNoDuplicateFromThenFromBigger!0 lt!305060 #b00000000000000000000000000000000 index!984))))

(assert (=> b!654542 (arrayNoDuplicates!0 lt!305060 index!984 Nil!12602)))

(declare-fun lt!305051 () Unit!22428)

(assert (=> b!654542 (= lt!305051 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305060 (select (arr!18511 a!2986) j!136) index!984 Nil!12602))))

(assert (=> b!654542 false))

(declare-fun b!654543 () Bool)

(declare-fun res!424667 () Bool)

(assert (=> b!654543 (=> (not res!424667) (not e!375891))))

(assert (=> b!654543 (= res!424667 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18511 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!654528 () Bool)

(declare-fun res!424662 () Bool)

(assert (=> b!654528 (=> (not res!424662) (not e!375891))))

(assert (=> b!654528 (= res!424662 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12602))))

(declare-fun res!424657 () Bool)

(assert (=> start!59354 (=> (not res!424657) (not e!375888))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59354 (= res!424657 (validMask!0 mask!3053))))

(assert (=> start!59354 e!375888))

(assert (=> start!59354 true))

(declare-fun array_inv!14285 (array!38630) Bool)

(assert (=> start!59354 (array_inv!14285 a!2986)))

(declare-fun b!654544 () Bool)

(assert (=> b!654544 (= e!375891 e!375885)))

(declare-fun res!424668 () Bool)

(assert (=> b!654544 (=> (not res!424668) (not e!375885))))

(assert (=> b!654544 (= res!424668 (= (select (store (arr!18511 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!654544 (= lt!305060 (array!38631 (store (arr!18511 a!2986) i!1108 k0!1786) (size!18875 a!2986)))))

(declare-fun b!654545 () Bool)

(assert (=> b!654545 (= e!375887 (not e!375880))))

(declare-fun res!424673 () Bool)

(assert (=> b!654545 (=> res!424673 e!375880)))

(declare-fun lt!305059 () SeekEntryResult!6958)

(assert (=> b!654545 (= res!424673 (not (= lt!305059 (Found!6958 index!984))))))

(declare-fun lt!305052 () Unit!22428)

(assert (=> b!654545 (= lt!305052 e!375882)))

(declare-fun c!75301 () Bool)

(assert (=> b!654545 (= c!75301 (= lt!305059 Undefined!6958))))

(assert (=> b!654545 (= lt!305059 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!305046 lt!305060 mask!3053))))

(assert (=> b!654545 e!375892))

(declare-fun res!424666 () Bool)

(assert (=> b!654545 (=> (not res!424666) (not e!375892))))

(declare-fun lt!305044 () (_ BitVec 32))

(assert (=> b!654545 (= res!424666 (= lt!305058 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305044 vacantSpotIndex!68 lt!305046 lt!305060 mask!3053)))))

(assert (=> b!654545 (= lt!305058 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305044 vacantSpotIndex!68 (select (arr!18511 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!654545 (= lt!305046 (select (store (arr!18511 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!305054 () Unit!22428)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38630 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22428)

(assert (=> b!654545 (= lt!305054 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!305044 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!654545 (= lt!305044 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!59354 res!424657) b!654540))

(assert (= (and b!654540 res!424665) b!654530))

(assert (= (and b!654530 res!424658) b!654523))

(assert (= (and b!654523 res!424663) b!654541))

(assert (= (and b!654541 res!424661) b!654539))

(assert (= (and b!654539 res!424656) b!654536))

(assert (= (and b!654536 res!424670) b!654528))

(assert (= (and b!654528 res!424662) b!654543))

(assert (= (and b!654543 res!424667) b!654544))

(assert (= (and b!654544 res!424668) b!654525))

(assert (= (and b!654525 res!424672) b!654545))

(assert (= (and b!654545 res!424666) b!654537))

(assert (= (and b!654545 c!75301) b!654527))

(assert (= (and b!654545 (not c!75301)) b!654535))

(assert (= (and b!654545 (not res!424673)) b!654524))

(assert (= (and b!654524 res!424669) b!654522))

(assert (= (and b!654522 (not res!424671)) b!654529))

(assert (= (and b!654529 res!424659) b!654538))

(assert (= (and b!654524 (not res!424660)) b!654531))

(assert (= (and b!654531 c!75300) b!654532))

(assert (= (and b!654531 (not c!75300)) b!654533))

(assert (= (and b!654531 c!75302) b!654542))

(assert (= (and b!654531 (not c!75302)) b!654526))

(assert (= (and b!654542 res!424664) b!654534))

(declare-fun m!627691 () Bool)

(assert (=> b!654544 m!627691))

(declare-fun m!627693 () Bool)

(assert (=> b!654544 m!627693))

(declare-fun m!627695 () Bool)

(assert (=> b!654528 m!627695))

(declare-fun m!627697 () Bool)

(assert (=> b!654536 m!627697))

(declare-fun m!627699 () Bool)

(assert (=> b!654525 m!627699))

(declare-fun m!627701 () Bool)

(assert (=> b!654525 m!627701))

(assert (=> b!654525 m!627701))

(declare-fun m!627703 () Bool)

(assert (=> b!654525 m!627703))

(declare-fun m!627705 () Bool)

(assert (=> b!654543 m!627705))

(assert (=> b!654530 m!627701))

(assert (=> b!654530 m!627701))

(declare-fun m!627707 () Bool)

(assert (=> b!654530 m!627707))

(declare-fun m!627709 () Bool)

(assert (=> b!654542 m!627709))

(assert (=> b!654542 m!627701))

(declare-fun m!627711 () Bool)

(assert (=> b!654542 m!627711))

(assert (=> b!654542 m!627701))

(declare-fun m!627713 () Bool)

(assert (=> b!654542 m!627713))

(assert (=> b!654542 m!627701))

(declare-fun m!627715 () Bool)

(assert (=> b!654542 m!627715))

(assert (=> b!654542 m!627701))

(declare-fun m!627717 () Bool)

(assert (=> b!654542 m!627717))

(declare-fun m!627719 () Bool)

(assert (=> b!654542 m!627719))

(assert (=> b!654542 m!627701))

(declare-fun m!627721 () Bool)

(assert (=> b!654542 m!627721))

(declare-fun m!627723 () Bool)

(assert (=> b!654542 m!627723))

(declare-fun m!627725 () Bool)

(assert (=> b!654539 m!627725))

(assert (=> b!654532 m!627701))

(declare-fun m!627727 () Bool)

(assert (=> b!654532 m!627727))

(assert (=> b!654532 m!627709))

(assert (=> b!654532 m!627701))

(declare-fun m!627729 () Bool)

(assert (=> b!654532 m!627729))

(assert (=> b!654532 m!627701))

(declare-fun m!627731 () Bool)

(assert (=> b!654532 m!627731))

(declare-fun m!627733 () Bool)

(assert (=> b!654532 m!627733))

(assert (=> b!654532 m!627701))

(declare-fun m!627735 () Bool)

(assert (=> b!654532 m!627735))

(assert (=> b!654532 m!627719))

(declare-fun m!627737 () Bool)

(assert (=> b!654545 m!627737))

(declare-fun m!627739 () Bool)

(assert (=> b!654545 m!627739))

(assert (=> b!654545 m!627701))

(assert (=> b!654545 m!627691))

(declare-fun m!627741 () Bool)

(assert (=> b!654545 m!627741))

(declare-fun m!627743 () Bool)

(assert (=> b!654545 m!627743))

(assert (=> b!654545 m!627701))

(declare-fun m!627745 () Bool)

(assert (=> b!654545 m!627745))

(declare-fun m!627747 () Bool)

(assert (=> b!654545 m!627747))

(declare-fun m!627749 () Bool)

(assert (=> b!654523 m!627749))

(declare-fun m!627751 () Bool)

(assert (=> b!654541 m!627751))

(assert (=> b!654522 m!627701))

(assert (=> b!654524 m!627701))

(assert (=> b!654524 m!627691))

(declare-fun m!627753 () Bool)

(assert (=> b!654524 m!627753))

(assert (=> b!654534 m!627701))

(assert (=> b!654534 m!627701))

(declare-fun m!627755 () Bool)

(assert (=> b!654534 m!627755))

(assert (=> b!654529 m!627701))

(assert (=> b!654529 m!627701))

(assert (=> b!654529 m!627721))

(assert (=> b!654538 m!627701))

(assert (=> b!654538 m!627701))

(assert (=> b!654538 m!627755))

(declare-fun m!627757 () Bool)

(assert (=> start!59354 m!627757))

(declare-fun m!627759 () Bool)

(assert (=> start!59354 m!627759))

(check-sat (not start!59354) (not b!654534) (not b!654545) (not b!654525) (not b!654536) (not b!654542) (not b!654541) (not b!654528) (not b!654538) (not b!654532) (not b!654539) (not b!654530) (not b!654523) (not b!654529))
(check-sat)
