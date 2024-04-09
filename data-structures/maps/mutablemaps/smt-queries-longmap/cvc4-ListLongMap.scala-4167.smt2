; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56758 () Bool)

(assert start!56758)

(declare-fun b!628576 () Bool)

(declare-fun res!406316 () Bool)

(declare-fun e!359576 () Bool)

(assert (=> b!628576 (=> (not res!406316) (not e!359576))))

(declare-datatypes ((array!37960 0))(
  ( (array!37961 (arr!18215 (Array (_ BitVec 32) (_ BitVec 64))) (size!18579 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37960)

(declare-datatypes ((List!12309 0))(
  ( (Nil!12306) (Cons!12305 (h!13350 (_ BitVec 64)) (t!18545 List!12309)) )
))
(declare-fun arrayNoDuplicates!0 (array!37960 (_ BitVec 32) List!12309) Bool)

(assert (=> b!628576 (= res!406316 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12306))))

(declare-fun b!628577 () Bool)

(declare-fun res!406315 () Bool)

(assert (=> b!628577 (=> (not res!406315) (not e!359576))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6662 0))(
  ( (MissingZero!6662 (index!28931 (_ BitVec 32))) (Found!6662 (index!28932 (_ BitVec 32))) (Intermediate!6662 (undefined!7474 Bool) (index!28933 (_ BitVec 32)) (x!57689 (_ BitVec 32))) (Undefined!6662) (MissingVacant!6662 (index!28934 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37960 (_ BitVec 32)) SeekEntryResult!6662)

(assert (=> b!628577 (= res!406315 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18215 a!2986) j!136) a!2986 mask!3053) (Found!6662 j!136)))))

(declare-fun b!628578 () Bool)

(declare-fun res!406317 () Bool)

(declare-fun e!359577 () Bool)

(assert (=> b!628578 (=> (not res!406317) (not e!359577))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37960 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!628578 (= res!406317 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!628579 () Bool)

(declare-fun res!406320 () Bool)

(assert (=> b!628579 (=> (not res!406320) (not e!359576))))

(assert (=> b!628579 (= res!406320 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18215 a!2986) index!984) (select (arr!18215 a!2986) j!136))) (not (= (select (arr!18215 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!628580 () Bool)

(declare-fun res!406318 () Bool)

(assert (=> b!628580 (=> (not res!406318) (not e!359576))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37960 (_ BitVec 32)) Bool)

(assert (=> b!628580 (= res!406318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!628582 () Bool)

(assert (=> b!628582 (= e!359577 e!359576)))

(declare-fun res!406313 () Bool)

(assert (=> b!628582 (=> (not res!406313) (not e!359576))))

(declare-fun lt!290511 () SeekEntryResult!6662)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!628582 (= res!406313 (or (= lt!290511 (MissingZero!6662 i!1108)) (= lt!290511 (MissingVacant!6662 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37960 (_ BitVec 32)) SeekEntryResult!6662)

(assert (=> b!628582 (= lt!290511 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!628583 () Bool)

(declare-fun res!406319 () Bool)

(assert (=> b!628583 (=> (not res!406319) (not e!359577))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!628583 (= res!406319 (validKeyInArray!0 (select (arr!18215 a!2986) j!136)))))

(declare-fun b!628584 () Bool)

(assert (=> b!628584 (= e!359576 false)))

(declare-fun lt!290510 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!628584 (= lt!290510 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!628585 () Bool)

(declare-fun res!406321 () Bool)

(assert (=> b!628585 (=> (not res!406321) (not e!359577))))

(assert (=> b!628585 (= res!406321 (and (= (size!18579 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18579 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18579 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!628586 () Bool)

(declare-fun res!406312 () Bool)

(assert (=> b!628586 (=> (not res!406312) (not e!359577))))

(assert (=> b!628586 (= res!406312 (validKeyInArray!0 k!1786))))

(declare-fun res!406314 () Bool)

(assert (=> start!56758 (=> (not res!406314) (not e!359577))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56758 (= res!406314 (validMask!0 mask!3053))))

(assert (=> start!56758 e!359577))

(assert (=> start!56758 true))

(declare-fun array_inv!13989 (array!37960) Bool)

(assert (=> start!56758 (array_inv!13989 a!2986)))

(declare-fun b!628581 () Bool)

(declare-fun res!406322 () Bool)

(assert (=> b!628581 (=> (not res!406322) (not e!359576))))

(assert (=> b!628581 (= res!406322 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18215 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18215 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!56758 res!406314) b!628585))

(assert (= (and b!628585 res!406321) b!628583))

(assert (= (and b!628583 res!406319) b!628586))

(assert (= (and b!628586 res!406312) b!628578))

(assert (= (and b!628578 res!406317) b!628582))

(assert (= (and b!628582 res!406313) b!628580))

(assert (= (and b!628580 res!406318) b!628576))

(assert (= (and b!628576 res!406316) b!628581))

(assert (= (and b!628581 res!406322) b!628577))

(assert (= (and b!628577 res!406315) b!628579))

(assert (= (and b!628579 res!406320) b!628584))

(declare-fun m!603753 () Bool)

(assert (=> b!628584 m!603753))

(declare-fun m!603755 () Bool)

(assert (=> b!628577 m!603755))

(assert (=> b!628577 m!603755))

(declare-fun m!603757 () Bool)

(assert (=> b!628577 m!603757))

(declare-fun m!603759 () Bool)

(assert (=> b!628580 m!603759))

(declare-fun m!603761 () Bool)

(assert (=> b!628581 m!603761))

(declare-fun m!603763 () Bool)

(assert (=> b!628581 m!603763))

(declare-fun m!603765 () Bool)

(assert (=> b!628581 m!603765))

(declare-fun m!603767 () Bool)

(assert (=> b!628582 m!603767))

(declare-fun m!603769 () Bool)

(assert (=> b!628579 m!603769))

(assert (=> b!628579 m!603755))

(declare-fun m!603771 () Bool)

(assert (=> b!628578 m!603771))

(declare-fun m!603773 () Bool)

(assert (=> b!628576 m!603773))

(declare-fun m!603775 () Bool)

(assert (=> b!628586 m!603775))

(declare-fun m!603777 () Bool)

(assert (=> start!56758 m!603777))

(declare-fun m!603779 () Bool)

(assert (=> start!56758 m!603779))

(assert (=> b!628583 m!603755))

(assert (=> b!628583 m!603755))

(declare-fun m!603781 () Bool)

(assert (=> b!628583 m!603781))

(push 1)

(assert (not b!628582))

(assert (not b!628576))

(assert (not start!56758))

