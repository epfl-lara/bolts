; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54560 () Bool)

(assert start!54560)

(declare-fun b!596179 () Bool)

(declare-fun e!340632 () Bool)

(declare-fun e!340623 () Bool)

(assert (=> b!596179 (= e!340632 e!340623)))

(declare-fun res!382154 () Bool)

(assert (=> b!596179 (=> (not res!382154) (not e!340623))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!36983 0))(
  ( (array!36984 (arr!17752 (Array (_ BitVec 32) (_ BitVec 64))) (size!18116 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36983)

(declare-fun lt!270827 () array!36983)

(declare-fun arrayContainsKey!0 (array!36983 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!596179 (= res!382154 (arrayContainsKey!0 lt!270827 (select (arr!17752 a!2986) j!136) j!136))))

(declare-fun b!596180 () Bool)

(declare-fun e!340626 () Bool)

(declare-fun e!340627 () Bool)

(assert (=> b!596180 (= e!340626 e!340627)))

(declare-fun res!382150 () Bool)

(assert (=> b!596180 (=> res!382150 e!340627)))

(declare-fun lt!270821 () (_ BitVec 64))

(declare-fun lt!270824 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!596180 (= res!382150 (or (not (= (select (arr!17752 a!2986) j!136) lt!270824)) (not (= (select (arr!17752 a!2986) j!136) lt!270821)) (bvsge j!136 index!984)))))

(declare-fun e!340631 () Bool)

(assert (=> b!596180 e!340631))

(declare-fun res!382159 () Bool)

(assert (=> b!596180 (=> (not res!382159) (not e!340631))))

(assert (=> b!596180 (= res!382159 (= lt!270821 (select (arr!17752 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!596180 (= lt!270821 (select (store (arr!17752 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!596181 () Bool)

(declare-fun res!382158 () Bool)

(declare-fun e!340628 () Bool)

(assert (=> b!596181 (=> res!382158 e!340628)))

(declare-datatypes ((List!11846 0))(
  ( (Nil!11843) (Cons!11842 (h!12887 (_ BitVec 64)) (t!18082 List!11846)) )
))
(declare-fun noDuplicate!266 (List!11846) Bool)

(assert (=> b!596181 (= res!382158 (not (noDuplicate!266 Nil!11843)))))

(declare-fun b!596182 () Bool)

(declare-fun e!340624 () Bool)

(assert (=> b!596182 (= e!340624 (not e!340626))))

(declare-fun res!382161 () Bool)

(assert (=> b!596182 (=> res!382161 e!340626)))

(declare-datatypes ((SeekEntryResult!6199 0))(
  ( (MissingZero!6199 (index!27043 (_ BitVec 32))) (Found!6199 (index!27044 (_ BitVec 32))) (Intermediate!6199 (undefined!7011 Bool) (index!27045 (_ BitVec 32)) (x!55868 (_ BitVec 32))) (Undefined!6199) (MissingVacant!6199 (index!27046 (_ BitVec 32))) )
))
(declare-fun lt!270822 () SeekEntryResult!6199)

(assert (=> b!596182 (= res!382161 (not (= lt!270822 (Found!6199 index!984))))))

(declare-datatypes ((Unit!18740 0))(
  ( (Unit!18741) )
))
(declare-fun lt!270819 () Unit!18740)

(declare-fun e!340622 () Unit!18740)

(assert (=> b!596182 (= lt!270819 e!340622)))

(declare-fun c!67382 () Bool)

(assert (=> b!596182 (= c!67382 (= lt!270822 Undefined!6199))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36983 (_ BitVec 32)) SeekEntryResult!6199)

(assert (=> b!596182 (= lt!270822 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!270824 lt!270827 mask!3053))))

(declare-fun e!340630 () Bool)

(assert (=> b!596182 e!340630))

(declare-fun res!382169 () Bool)

(assert (=> b!596182 (=> (not res!382169) (not e!340630))))

(declare-fun lt!270825 () SeekEntryResult!6199)

(declare-fun lt!270817 () (_ BitVec 32))

(assert (=> b!596182 (= res!382169 (= lt!270825 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270817 vacantSpotIndex!68 lt!270824 lt!270827 mask!3053)))))

(assert (=> b!596182 (= lt!270825 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270817 vacantSpotIndex!68 (select (arr!17752 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!596182 (= lt!270824 (select (store (arr!17752 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!270823 () Unit!18740)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36983 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18740)

(assert (=> b!596182 (= lt!270823 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!270817 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!596182 (= lt!270817 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!596183 () Bool)

(declare-fun res!382152 () Bool)

(declare-fun e!340633 () Bool)

(assert (=> b!596183 (=> (not res!382152) (not e!340633))))

(assert (=> b!596183 (= res!382152 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!596184 () Bool)

(declare-fun e!340625 () Bool)

(assert (=> b!596184 (= e!340625 e!340624)))

(declare-fun res!382160 () Bool)

(assert (=> b!596184 (=> (not res!382160) (not e!340624))))

(declare-fun lt!270828 () SeekEntryResult!6199)

(assert (=> b!596184 (= res!382160 (and (= lt!270828 (Found!6199 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17752 a!2986) index!984) (select (arr!17752 a!2986) j!136))) (not (= (select (arr!17752 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!596184 (= lt!270828 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17752 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!596185 () Bool)

(declare-fun res!382166 () Bool)

(declare-fun e!340621 () Bool)

(assert (=> b!596185 (=> (not res!382166) (not e!340621))))

(assert (=> b!596185 (= res!382166 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17752 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!596186 () Bool)

(declare-fun res!382149 () Bool)

(assert (=> b!596186 (=> (not res!382149) (not e!340621))))

(declare-fun arrayNoDuplicates!0 (array!36983 (_ BitVec 32) List!11846) Bool)

(assert (=> b!596186 (= res!382149 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11843))))

(declare-fun b!596188 () Bool)

(assert (=> b!596188 (= e!340621 e!340625)))

(declare-fun res!382155 () Bool)

(assert (=> b!596188 (=> (not res!382155) (not e!340625))))

(assert (=> b!596188 (= res!382155 (= (select (store (arr!17752 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!596188 (= lt!270827 (array!36984 (store (arr!17752 a!2986) i!1108 k0!1786) (size!18116 a!2986)))))

(declare-fun b!596189 () Bool)

(declare-fun res!382153 () Bool)

(assert (=> b!596189 (=> res!382153 e!340628)))

(declare-fun contains!2950 (List!11846 (_ BitVec 64)) Bool)

(assert (=> b!596189 (= res!382153 (contains!2950 Nil!11843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!596190 () Bool)

(assert (=> b!596190 (= e!340633 e!340621)))

(declare-fun res!382168 () Bool)

(assert (=> b!596190 (=> (not res!382168) (not e!340621))))

(declare-fun lt!270820 () SeekEntryResult!6199)

(assert (=> b!596190 (= res!382168 (or (= lt!270820 (MissingZero!6199 i!1108)) (= lt!270820 (MissingVacant!6199 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36983 (_ BitVec 32)) SeekEntryResult!6199)

(assert (=> b!596190 (= lt!270820 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!596191 () Bool)

(declare-fun res!382165 () Bool)

(assert (=> b!596191 (=> res!382165 e!340628)))

(assert (=> b!596191 (= res!382165 (contains!2950 Nil!11843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!596192 () Bool)

(declare-fun res!382156 () Bool)

(assert (=> b!596192 (=> (not res!382156) (not e!340633))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!596192 (= res!382156 (validKeyInArray!0 k0!1786))))

(declare-fun b!596193 () Bool)

(declare-fun Unit!18742 () Unit!18740)

(assert (=> b!596193 (= e!340622 Unit!18742)))

(assert (=> b!596193 false))

(declare-fun b!596194 () Bool)

(declare-fun res!382163 () Bool)

(assert (=> b!596194 (=> (not res!382163) (not e!340633))))

(assert (=> b!596194 (= res!382163 (and (= (size!18116 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18116 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18116 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!596195 () Bool)

(assert (=> b!596195 (= e!340623 (arrayContainsKey!0 lt!270827 (select (arr!17752 a!2986) j!136) index!984))))

(declare-fun b!596196 () Bool)

(assert (=> b!596196 (= e!340627 e!340628)))

(declare-fun res!382157 () Bool)

(assert (=> b!596196 (=> res!382157 e!340628)))

(assert (=> b!596196 (= res!382157 (or (bvsge (size!18116 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18116 a!2986))))))

(assert (=> b!596196 (arrayContainsKey!0 lt!270827 (select (arr!17752 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!270826 () Unit!18740)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36983 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18740)

(assert (=> b!596196 (= lt!270826 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!270827 (select (arr!17752 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!596197 () Bool)

(declare-fun Unit!18743 () Unit!18740)

(assert (=> b!596197 (= e!340622 Unit!18743)))

(declare-fun b!596198 () Bool)

(assert (=> b!596198 (= e!340630 (= lt!270828 lt!270825))))

(declare-fun b!596199 () Bool)

(declare-fun res!382151 () Bool)

(assert (=> b!596199 (=> (not res!382151) (not e!340621))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36983 (_ BitVec 32)) Bool)

(assert (=> b!596199 (= res!382151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!596187 () Bool)

(declare-fun res!382164 () Bool)

(assert (=> b!596187 (=> (not res!382164) (not e!340633))))

(assert (=> b!596187 (= res!382164 (validKeyInArray!0 (select (arr!17752 a!2986) j!136)))))

(declare-fun res!382162 () Bool)

(assert (=> start!54560 (=> (not res!382162) (not e!340633))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54560 (= res!382162 (validMask!0 mask!3053))))

(assert (=> start!54560 e!340633))

(assert (=> start!54560 true))

(declare-fun array_inv!13526 (array!36983) Bool)

(assert (=> start!54560 (array_inv!13526 a!2986)))

(declare-fun b!596200 () Bool)

(assert (=> b!596200 (= e!340631 e!340632)))

(declare-fun res!382167 () Bool)

(assert (=> b!596200 (=> res!382167 e!340632)))

(assert (=> b!596200 (= res!382167 (or (not (= (select (arr!17752 a!2986) j!136) lt!270824)) (not (= (select (arr!17752 a!2986) j!136) lt!270821)) (bvsge j!136 index!984)))))

(declare-fun b!596201 () Bool)

(assert (=> b!596201 (= e!340628 true)))

(declare-fun lt!270818 () Bool)

(assert (=> b!596201 (= lt!270818 (contains!2950 Nil!11843 k0!1786))))

(assert (= (and start!54560 res!382162) b!596194))

(assert (= (and b!596194 res!382163) b!596187))

(assert (= (and b!596187 res!382164) b!596192))

(assert (= (and b!596192 res!382156) b!596183))

(assert (= (and b!596183 res!382152) b!596190))

(assert (= (and b!596190 res!382168) b!596199))

(assert (= (and b!596199 res!382151) b!596186))

(assert (= (and b!596186 res!382149) b!596185))

(assert (= (and b!596185 res!382166) b!596188))

(assert (= (and b!596188 res!382155) b!596184))

(assert (= (and b!596184 res!382160) b!596182))

(assert (= (and b!596182 res!382169) b!596198))

(assert (= (and b!596182 c!67382) b!596193))

(assert (= (and b!596182 (not c!67382)) b!596197))

(assert (= (and b!596182 (not res!382161)) b!596180))

(assert (= (and b!596180 res!382159) b!596200))

(assert (= (and b!596200 (not res!382167)) b!596179))

(assert (= (and b!596179 res!382154) b!596195))

(assert (= (and b!596180 (not res!382150)) b!596196))

(assert (= (and b!596196 (not res!382157)) b!596181))

(assert (= (and b!596181 (not res!382158)) b!596191))

(assert (= (and b!596191 (not res!382165)) b!596189))

(assert (= (and b!596189 (not res!382153)) b!596201))

(declare-fun m!573727 () Bool)

(assert (=> b!596187 m!573727))

(assert (=> b!596187 m!573727))

(declare-fun m!573729 () Bool)

(assert (=> b!596187 m!573729))

(declare-fun m!573731 () Bool)

(assert (=> b!596182 m!573731))

(declare-fun m!573733 () Bool)

(assert (=> b!596182 m!573733))

(declare-fun m!573735 () Bool)

(assert (=> b!596182 m!573735))

(assert (=> b!596182 m!573727))

(declare-fun m!573737 () Bool)

(assert (=> b!596182 m!573737))

(declare-fun m!573739 () Bool)

(assert (=> b!596182 m!573739))

(assert (=> b!596182 m!573727))

(declare-fun m!573741 () Bool)

(assert (=> b!596182 m!573741))

(declare-fun m!573743 () Bool)

(assert (=> b!596182 m!573743))

(assert (=> b!596200 m!573727))

(declare-fun m!573745 () Bool)

(assert (=> b!596191 m!573745))

(declare-fun m!573747 () Bool)

(assert (=> b!596190 m!573747))

(declare-fun m!573749 () Bool)

(assert (=> b!596192 m!573749))

(declare-fun m!573751 () Bool)

(assert (=> b!596185 m!573751))

(assert (=> b!596196 m!573727))

(assert (=> b!596196 m!573727))

(declare-fun m!573753 () Bool)

(assert (=> b!596196 m!573753))

(assert (=> b!596196 m!573727))

(declare-fun m!573755 () Bool)

(assert (=> b!596196 m!573755))

(declare-fun m!573757 () Bool)

(assert (=> b!596189 m!573757))

(declare-fun m!573759 () Bool)

(assert (=> start!54560 m!573759))

(declare-fun m!573761 () Bool)

(assert (=> start!54560 m!573761))

(declare-fun m!573763 () Bool)

(assert (=> b!596186 m!573763))

(assert (=> b!596179 m!573727))

(assert (=> b!596179 m!573727))

(declare-fun m!573765 () Bool)

(assert (=> b!596179 m!573765))

(declare-fun m!573767 () Bool)

(assert (=> b!596201 m!573767))

(declare-fun m!573769 () Bool)

(assert (=> b!596181 m!573769))

(declare-fun m!573771 () Bool)

(assert (=> b!596199 m!573771))

(declare-fun m!573773 () Bool)

(assert (=> b!596184 m!573773))

(assert (=> b!596184 m!573727))

(assert (=> b!596184 m!573727))

(declare-fun m!573775 () Bool)

(assert (=> b!596184 m!573775))

(assert (=> b!596188 m!573743))

(declare-fun m!573777 () Bool)

(assert (=> b!596188 m!573777))

(assert (=> b!596195 m!573727))

(assert (=> b!596195 m!573727))

(declare-fun m!573779 () Bool)

(assert (=> b!596195 m!573779))

(assert (=> b!596180 m!573727))

(assert (=> b!596180 m!573743))

(declare-fun m!573781 () Bool)

(assert (=> b!596180 m!573781))

(declare-fun m!573783 () Bool)

(assert (=> b!596183 m!573783))

(check-sat (not start!54560) (not b!596199) (not b!596189) (not b!596195) (not b!596201) (not b!596182) (not b!596179) (not b!596184) (not b!596191) (not b!596196) (not b!596186) (not b!596183) (not b!596190) (not b!596181) (not b!596192) (not b!596187))
(check-sat)
