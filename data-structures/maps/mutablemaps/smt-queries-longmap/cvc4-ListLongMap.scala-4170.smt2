; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56830 () Bool)

(assert start!56830)

(declare-fun b!629123 () Bool)

(declare-fun res!406699 () Bool)

(declare-fun e!359837 () Bool)

(assert (=> b!629123 (=> (not res!406699) (not e!359837))))

(declare-datatypes ((array!37981 0))(
  ( (array!37982 (arr!18224 (Array (_ BitVec 32) (_ BitVec 64))) (size!18588 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37981)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37981 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!629123 (= res!406699 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!629124 () Bool)

(declare-fun e!359838 () Bool)

(declare-fun e!359835 () Bool)

(assert (=> b!629124 (= e!359838 e!359835)))

(declare-fun res!406702 () Bool)

(assert (=> b!629124 (=> (not res!406702) (not e!359835))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!290668 () (_ BitVec 32))

(assert (=> b!629124 (= res!406702 (and (bvsge lt!290668 #b00000000000000000000000000000000) (bvslt lt!290668 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!629124 (= lt!290668 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!629125 () Bool)

(declare-fun e!359836 () Bool)

(assert (=> b!629125 (= e!359837 e!359836)))

(declare-fun res!406701 () Bool)

(assert (=> b!629125 (=> (not res!406701) (not e!359836))))

(declare-datatypes ((SeekEntryResult!6671 0))(
  ( (MissingZero!6671 (index!28967 (_ BitVec 32))) (Found!6671 (index!28968 (_ BitVec 32))) (Intermediate!6671 (undefined!7483 Bool) (index!28969 (_ BitVec 32)) (x!57728 (_ BitVec 32))) (Undefined!6671) (MissingVacant!6671 (index!28970 (_ BitVec 32))) )
))
(declare-fun lt!290669 () SeekEntryResult!6671)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!629125 (= res!406701 (or (= lt!290669 (MissingZero!6671 i!1108)) (= lt!290669 (MissingVacant!6671 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37981 (_ BitVec 32)) SeekEntryResult!6671)

(assert (=> b!629125 (= lt!290669 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!629126 () Bool)

(declare-fun res!406708 () Bool)

(assert (=> b!629126 (=> (not res!406708) (not e!359836))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!629126 (= res!406708 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18224 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18224 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!629127 () Bool)

(declare-fun res!406698 () Bool)

(assert (=> b!629127 (=> (not res!406698) (not e!359837))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!629127 (= res!406698 (validKeyInArray!0 k!1786))))

(declare-fun b!629128 () Bool)

(declare-fun res!406707 () Bool)

(assert (=> b!629128 (=> (not res!406707) (not e!359837))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!629128 (= res!406707 (and (= (size!18588 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18588 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18588 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!406697 () Bool)

(assert (=> start!56830 (=> (not res!406697) (not e!359837))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56830 (= res!406697 (validMask!0 mask!3053))))

(assert (=> start!56830 e!359837))

(assert (=> start!56830 true))

(declare-fun array_inv!13998 (array!37981) Bool)

(assert (=> start!56830 (array_inv!13998 a!2986)))

(declare-fun b!629129 () Bool)

(declare-fun res!406704 () Bool)

(assert (=> b!629129 (=> (not res!406704) (not e!359836))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37981 (_ BitVec 32)) Bool)

(assert (=> b!629129 (= res!406704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!629130 () Bool)

(declare-fun res!406706 () Bool)

(assert (=> b!629130 (=> (not res!406706) (not e!359835))))

(declare-fun lt!290670 () SeekEntryResult!6671)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37981 (_ BitVec 32)) SeekEntryResult!6671)

(assert (=> b!629130 (= res!406706 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290668 vacantSpotIndex!68 (select (arr!18224 a!2986) j!136) a!2986 mask!3053) lt!290670))))

(declare-fun b!629131 () Bool)

(assert (=> b!629131 (= e!359836 e!359838)))

(declare-fun res!406709 () Bool)

(assert (=> b!629131 (=> (not res!406709) (not e!359838))))

(assert (=> b!629131 (= res!406709 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18224 a!2986) j!136) a!2986 mask!3053) lt!290670))))

(assert (=> b!629131 (= lt!290670 (Found!6671 j!136))))

(declare-fun b!629132 () Bool)

(assert (=> b!629132 (= e!359835 (bvsge (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!910)) (bvsub #b01111111111111111111111111111110 x!910)))))

(declare-fun b!629133 () Bool)

(declare-fun res!406703 () Bool)

(assert (=> b!629133 (=> (not res!406703) (not e!359836))))

(declare-datatypes ((List!12318 0))(
  ( (Nil!12315) (Cons!12314 (h!13359 (_ BitVec 64)) (t!18554 List!12318)) )
))
(declare-fun arrayNoDuplicates!0 (array!37981 (_ BitVec 32) List!12318) Bool)

(assert (=> b!629133 (= res!406703 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12315))))

(declare-fun b!629134 () Bool)

(declare-fun res!406705 () Bool)

(assert (=> b!629134 (=> (not res!406705) (not e!359838))))

(assert (=> b!629134 (= res!406705 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18224 a!2986) index!984) (select (arr!18224 a!2986) j!136))) (not (= (select (arr!18224 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!629135 () Bool)

(declare-fun res!406700 () Bool)

(assert (=> b!629135 (=> (not res!406700) (not e!359837))))

(assert (=> b!629135 (= res!406700 (validKeyInArray!0 (select (arr!18224 a!2986) j!136)))))

(assert (= (and start!56830 res!406697) b!629128))

(assert (= (and b!629128 res!406707) b!629135))

(assert (= (and b!629135 res!406700) b!629127))

(assert (= (and b!629127 res!406698) b!629123))

(assert (= (and b!629123 res!406699) b!629125))

(assert (= (and b!629125 res!406701) b!629129))

(assert (= (and b!629129 res!406704) b!629133))

(assert (= (and b!629133 res!406703) b!629126))

(assert (= (and b!629126 res!406708) b!629131))

(assert (= (and b!629131 res!406709) b!629134))

(assert (= (and b!629134 res!406705) b!629124))

(assert (= (and b!629124 res!406702) b!629130))

(assert (= (and b!629130 res!406706) b!629132))

(declare-fun m!604183 () Bool)

(assert (=> b!629126 m!604183))

(declare-fun m!604185 () Bool)

(assert (=> b!629126 m!604185))

(declare-fun m!604187 () Bool)

(assert (=> b!629126 m!604187))

(declare-fun m!604189 () Bool)

(assert (=> b!629125 m!604189))

(declare-fun m!604191 () Bool)

(assert (=> b!629135 m!604191))

(assert (=> b!629135 m!604191))

(declare-fun m!604193 () Bool)

(assert (=> b!629135 m!604193))

(declare-fun m!604195 () Bool)

(assert (=> b!629123 m!604195))

(declare-fun m!604197 () Bool)

(assert (=> b!629134 m!604197))

(assert (=> b!629134 m!604191))

(assert (=> b!629130 m!604191))

(assert (=> b!629130 m!604191))

(declare-fun m!604199 () Bool)

(assert (=> b!629130 m!604199))

(declare-fun m!604201 () Bool)

(assert (=> b!629124 m!604201))

(declare-fun m!604203 () Bool)

(assert (=> b!629127 m!604203))

(declare-fun m!604205 () Bool)

(assert (=> b!629133 m!604205))

(declare-fun m!604207 () Bool)

(assert (=> b!629129 m!604207))

(declare-fun m!604209 () Bool)

(assert (=> start!56830 m!604209))

(declare-fun m!604211 () Bool)

(assert (=> start!56830 m!604211))

(assert (=> b!629131 m!604191))

(assert (=> b!629131 m!604191))

(declare-fun m!604213 () Bool)

(assert (=> b!629131 m!604213))

(push 1)

(assert (not b!629133))

(assert (not b!629130))

(assert (not b!629124))

(assert (not b!629129))

(assert (not b!629123))

(assert (not b!629125))

(assert (not b!629131))

(assert (not start!56830))

(assert (not b!629135))

(assert (not b!629127))

(check-sat)

(pop 1)

(push 1)

(check-sat)

