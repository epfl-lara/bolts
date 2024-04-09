; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54166 () Bool)

(assert start!54166)

(declare-fun b!591414 () Bool)

(declare-fun res!378521 () Bool)

(declare-fun e!337700 () Bool)

(assert (=> b!591414 (=> (not res!378521) (not e!337700))))

(declare-datatypes ((array!36859 0))(
  ( (array!36860 (arr!17696 (Array (_ BitVec 32) (_ BitVec 64))) (size!18060 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36859)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36859 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!591414 (= res!378521 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!591415 () Bool)

(declare-datatypes ((Unit!18516 0))(
  ( (Unit!18517) )
))
(declare-fun e!337704 () Unit!18516)

(declare-fun Unit!18518 () Unit!18516)

(assert (=> b!591415 (= e!337704 Unit!18518)))

(declare-fun b!591416 () Bool)

(declare-fun e!337705 () Bool)

(declare-fun e!337699 () Bool)

(assert (=> b!591416 (= e!337705 e!337699)))

(declare-fun res!378518 () Bool)

(assert (=> b!591416 (=> (not res!378518) (not e!337699))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!591416 (= res!378518 (= (select (store (arr!17696 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!268424 () array!36859)

(assert (=> b!591416 (= lt!268424 (array!36860 (store (arr!17696 a!2986) i!1108 k!1786) (size!18060 a!2986)))))

(declare-fun b!591417 () Bool)

(declare-fun res!378525 () Bool)

(assert (=> b!591417 (=> (not res!378525) (not e!337700))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!591417 (= res!378525 (validKeyInArray!0 (select (arr!17696 a!2986) j!136)))))

(declare-fun b!591418 () Bool)

(declare-fun res!378520 () Bool)

(assert (=> b!591418 (=> (not res!378520) (not e!337700))))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!591418 (= res!378520 (and (= (size!18060 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18060 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18060 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!591419 () Bool)

(declare-fun e!337702 () Bool)

(assert (=> b!591419 (= e!337699 e!337702)))

(declare-fun res!378513 () Bool)

(assert (=> b!591419 (=> (not res!378513) (not e!337702))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6143 0))(
  ( (MissingZero!6143 (index!26807 (_ BitVec 32))) (Found!6143 (index!26808 (_ BitVec 32))) (Intermediate!6143 (undefined!6955 Bool) (index!26809 (_ BitVec 32)) (x!55624 (_ BitVec 32))) (Undefined!6143) (MissingVacant!6143 (index!26810 (_ BitVec 32))) )
))
(declare-fun lt!268430 () SeekEntryResult!6143)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!591419 (= res!378513 (and (= lt!268430 (Found!6143 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17696 a!2986) index!984) (select (arr!17696 a!2986) j!136))) (not (= (select (arr!17696 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36859 (_ BitVec 32)) SeekEntryResult!6143)

(assert (=> b!591419 (= lt!268430 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17696 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!378514 () Bool)

(assert (=> start!54166 (=> (not res!378514) (not e!337700))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54166 (= res!378514 (validMask!0 mask!3053))))

(assert (=> start!54166 e!337700))

(assert (=> start!54166 true))

(declare-fun array_inv!13470 (array!36859) Bool)

(assert (=> start!54166 (array_inv!13470 a!2986)))

(declare-fun b!591420 () Bool)

(declare-fun e!337698 () Bool)

(assert (=> b!591420 (= e!337698 (arrayContainsKey!0 lt!268424 (select (arr!17696 a!2986) j!136) index!984))))

(declare-fun b!591421 () Bool)

(declare-fun res!378524 () Bool)

(assert (=> b!591421 (=> (not res!378524) (not e!337700))))

(assert (=> b!591421 (= res!378524 (validKeyInArray!0 k!1786))))

(declare-fun b!591422 () Bool)

(declare-fun res!378527 () Bool)

(assert (=> b!591422 (=> (not res!378527) (not e!337705))))

(assert (=> b!591422 (= res!378527 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17696 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!591423 () Bool)

(declare-fun e!337695 () Bool)

(declare-fun e!337703 () Bool)

(assert (=> b!591423 (= e!337695 e!337703)))

(declare-fun res!378522 () Bool)

(assert (=> b!591423 (=> res!378522 e!337703)))

(declare-fun lt!268426 () (_ BitVec 64))

(declare-fun lt!268422 () (_ BitVec 64))

(assert (=> b!591423 (= res!378522 (or (not (= (select (arr!17696 a!2986) j!136) lt!268426)) (not (= (select (arr!17696 a!2986) j!136) lt!268422)) (bvsge j!136 index!984)))))

(declare-fun b!591424 () Bool)

(declare-fun e!337696 () Bool)

(declare-fun lt!268428 () SeekEntryResult!6143)

(assert (=> b!591424 (= e!337696 (= lt!268430 lt!268428))))

(declare-fun b!591425 () Bool)

(assert (=> b!591425 (= e!337703 e!337698)))

(declare-fun res!378519 () Bool)

(assert (=> b!591425 (=> (not res!378519) (not e!337698))))

(assert (=> b!591425 (= res!378519 (arrayContainsKey!0 lt!268424 (select (arr!17696 a!2986) j!136) j!136))))

(declare-fun b!591426 () Bool)

(declare-fun Unit!18519 () Unit!18516)

(assert (=> b!591426 (= e!337704 Unit!18519)))

(assert (=> b!591426 false))

(declare-fun b!591427 () Bool)

(assert (=> b!591427 (= e!337700 e!337705)))

(declare-fun res!378515 () Bool)

(assert (=> b!591427 (=> (not res!378515) (not e!337705))))

(declare-fun lt!268425 () SeekEntryResult!6143)

(assert (=> b!591427 (= res!378515 (or (= lt!268425 (MissingZero!6143 i!1108)) (= lt!268425 (MissingVacant!6143 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36859 (_ BitVec 32)) SeekEntryResult!6143)

(assert (=> b!591427 (= lt!268425 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!591428 () Bool)

(declare-fun res!378512 () Bool)

(assert (=> b!591428 (=> (not res!378512) (not e!337705))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36859 (_ BitVec 32)) Bool)

(assert (=> b!591428 (= res!378512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!591429 () Bool)

(declare-fun res!378517 () Bool)

(assert (=> b!591429 (=> (not res!378517) (not e!337705))))

(declare-datatypes ((List!11790 0))(
  ( (Nil!11787) (Cons!11786 (h!12831 (_ BitVec 64)) (t!18026 List!11790)) )
))
(declare-fun arrayNoDuplicates!0 (array!36859 (_ BitVec 32) List!11790) Bool)

(assert (=> b!591429 (= res!378517 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11787))))

(declare-fun b!591430 () Bool)

(declare-fun e!337697 () Bool)

(assert (=> b!591430 (= e!337697 true)))

(assert (=> b!591430 e!337695))

(declare-fun res!378516 () Bool)

(assert (=> b!591430 (=> (not res!378516) (not e!337695))))

(assert (=> b!591430 (= res!378516 (= lt!268422 (select (arr!17696 a!2986) j!136)))))

(assert (=> b!591430 (= lt!268422 (select (store (arr!17696 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!591431 () Bool)

(assert (=> b!591431 (= e!337702 (not e!337697))))

(declare-fun res!378526 () Bool)

(assert (=> b!591431 (=> res!378526 e!337697)))

(declare-fun lt!268427 () SeekEntryResult!6143)

(assert (=> b!591431 (= res!378526 (not (= lt!268427 (Found!6143 index!984))))))

(declare-fun lt!268431 () Unit!18516)

(assert (=> b!591431 (= lt!268431 e!337704)))

(declare-fun c!66818 () Bool)

(assert (=> b!591431 (= c!66818 (= lt!268427 Undefined!6143))))

(assert (=> b!591431 (= lt!268427 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!268426 lt!268424 mask!3053))))

(assert (=> b!591431 e!337696))

(declare-fun res!378523 () Bool)

(assert (=> b!591431 (=> (not res!378523) (not e!337696))))

(declare-fun lt!268423 () (_ BitVec 32))

(assert (=> b!591431 (= res!378523 (= lt!268428 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268423 vacantSpotIndex!68 lt!268426 lt!268424 mask!3053)))))

(assert (=> b!591431 (= lt!268428 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268423 vacantSpotIndex!68 (select (arr!17696 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!591431 (= lt!268426 (select (store (arr!17696 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!268429 () Unit!18516)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36859 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18516)

(assert (=> b!591431 (= lt!268429 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268423 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!591431 (= lt!268423 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!54166 res!378514) b!591418))

(assert (= (and b!591418 res!378520) b!591417))

(assert (= (and b!591417 res!378525) b!591421))

(assert (= (and b!591421 res!378524) b!591414))

(assert (= (and b!591414 res!378521) b!591427))

(assert (= (and b!591427 res!378515) b!591428))

(assert (= (and b!591428 res!378512) b!591429))

(assert (= (and b!591429 res!378517) b!591422))

(assert (= (and b!591422 res!378527) b!591416))

(assert (= (and b!591416 res!378518) b!591419))

(assert (= (and b!591419 res!378513) b!591431))

(assert (= (and b!591431 res!378523) b!591424))

(assert (= (and b!591431 c!66818) b!591426))

(assert (= (and b!591431 (not c!66818)) b!591415))

(assert (= (and b!591431 (not res!378526)) b!591430))

(assert (= (and b!591430 res!378516) b!591423))

(assert (= (and b!591423 (not res!378522)) b!591425))

(assert (= (and b!591425 res!378519) b!591420))

(declare-fun m!569669 () Bool)

(assert (=> b!591427 m!569669))

(declare-fun m!569671 () Bool)

(assert (=> b!591421 m!569671))

(declare-fun m!569673 () Bool)

(assert (=> b!591420 m!569673))

(assert (=> b!591420 m!569673))

(declare-fun m!569675 () Bool)

(assert (=> b!591420 m!569675))

(declare-fun m!569677 () Bool)

(assert (=> start!54166 m!569677))

(declare-fun m!569679 () Bool)

(assert (=> start!54166 m!569679))

(declare-fun m!569681 () Bool)

(assert (=> b!591431 m!569681))

(declare-fun m!569683 () Bool)

(assert (=> b!591431 m!569683))

(declare-fun m!569685 () Bool)

(assert (=> b!591431 m!569685))

(assert (=> b!591431 m!569673))

(declare-fun m!569687 () Bool)

(assert (=> b!591431 m!569687))

(declare-fun m!569689 () Bool)

(assert (=> b!591431 m!569689))

(declare-fun m!569691 () Bool)

(assert (=> b!591431 m!569691))

(assert (=> b!591431 m!569673))

(declare-fun m!569693 () Bool)

(assert (=> b!591431 m!569693))

(assert (=> b!591425 m!569673))

(assert (=> b!591425 m!569673))

(declare-fun m!569695 () Bool)

(assert (=> b!591425 m!569695))

(assert (=> b!591430 m!569673))

(assert (=> b!591430 m!569685))

(declare-fun m!569697 () Bool)

(assert (=> b!591430 m!569697))

(declare-fun m!569699 () Bool)

(assert (=> b!591422 m!569699))

(declare-fun m!569701 () Bool)

(assert (=> b!591429 m!569701))

(assert (=> b!591423 m!569673))

(assert (=> b!591417 m!569673))

(assert (=> b!591417 m!569673))

(declare-fun m!569703 () Bool)

(assert (=> b!591417 m!569703))

(declare-fun m!569705 () Bool)

(assert (=> b!591428 m!569705))

(declare-fun m!569707 () Bool)

(assert (=> b!591419 m!569707))

(assert (=> b!591419 m!569673))

(assert (=> b!591419 m!569673))

(declare-fun m!569709 () Bool)

(assert (=> b!591419 m!569709))

(declare-fun m!569711 () Bool)

(assert (=> b!591414 m!569711))

(assert (=> b!591416 m!569685))

(declare-fun m!569713 () Bool)

(assert (=> b!591416 m!569713))

(push 1)

