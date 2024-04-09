; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54740 () Bool)

(assert start!54740)

(declare-fun b!597752 () Bool)

(declare-fun e!341636 () Bool)

(declare-fun e!341642 () Bool)

(assert (=> b!597752 (= e!341636 e!341642)))

(declare-fun res!383238 () Bool)

(assert (=> b!597752 (=> (not res!383238) (not e!341642))))

(declare-datatypes ((List!11861 0))(
  ( (Nil!11858) (Cons!11857 (h!12902 (_ BitVec 64)) (t!18097 List!11861)) )
))
(declare-fun contains!2961 (List!11861 (_ BitVec 64)) Bool)

(assert (=> b!597752 (= res!383238 (not (contains!2961 Nil!11858 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!597753 () Bool)

(declare-fun res!383230 () Bool)

(assert (=> b!597753 (=> res!383230 e!341636)))

(declare-fun noDuplicate!275 (List!11861) Bool)

(assert (=> b!597753 (= res!383230 (not (noDuplicate!275 Nil!11858)))))

(declare-fun b!597754 () Bool)

(declare-fun e!341641 () Bool)

(declare-fun e!341639 () Bool)

(assert (=> b!597754 (= e!341641 e!341639)))

(declare-fun res!383231 () Bool)

(assert (=> b!597754 (=> res!383231 e!341639)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!271610 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37019 0))(
  ( (array!37020 (arr!17767 (Array (_ BitVec 32) (_ BitVec 64))) (size!18131 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37019)

(declare-fun lt!271620 () (_ BitVec 64))

(assert (=> b!597754 (= res!383231 (or (not (= (select (arr!17767 a!2986) j!136) lt!271610)) (not (= (select (arr!17767 a!2986) j!136) lt!271620)) (bvsge j!136 index!984)))))

(declare-fun b!597755 () Bool)

(declare-fun e!341643 () Bool)

(assert (=> b!597755 (= e!341639 e!341643)))

(declare-fun res!383227 () Bool)

(assert (=> b!597755 (=> (not res!383227) (not e!341643))))

(declare-fun lt!271616 () array!37019)

(declare-fun arrayContainsKey!0 (array!37019 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!597755 (= res!383227 (arrayContainsKey!0 lt!271616 (select (arr!17767 a!2986) j!136) j!136))))

(declare-fun res!383242 () Bool)

(declare-fun e!341635 () Bool)

(assert (=> start!54740 (=> (not res!383242) (not e!341635))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54740 (= res!383242 (validMask!0 mask!3053))))

(assert (=> start!54740 e!341635))

(assert (=> start!54740 true))

(declare-fun array_inv!13541 (array!37019) Bool)

(assert (=> start!54740 (array_inv!13541 a!2986)))

(declare-fun b!597756 () Bool)

(declare-fun res!383233 () Bool)

(declare-fun e!341633 () Bool)

(assert (=> b!597756 (=> (not res!383233) (not e!341633))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!597756 (= res!383233 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17767 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!597757 () Bool)

(declare-fun e!341640 () Bool)

(declare-fun e!341638 () Bool)

(assert (=> b!597757 (= e!341640 e!341638)))

(declare-fun res!383224 () Bool)

(assert (=> b!597757 (=> res!383224 e!341638)))

(assert (=> b!597757 (= res!383224 (or (not (= (select (arr!17767 a!2986) j!136) lt!271610)) (not (= (select (arr!17767 a!2986) j!136) lt!271620)) (bvsge j!136 index!984)))))

(assert (=> b!597757 e!341641))

(declare-fun res!383232 () Bool)

(assert (=> b!597757 (=> (not res!383232) (not e!341641))))

(assert (=> b!597757 (= res!383232 (= lt!271620 (select (arr!17767 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!597757 (= lt!271620 (select (store (arr!17767 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!597758 () Bool)

(assert (=> b!597758 (= e!341635 e!341633)))

(declare-fun res!383240 () Bool)

(assert (=> b!597758 (=> (not res!383240) (not e!341633))))

(declare-datatypes ((SeekEntryResult!6214 0))(
  ( (MissingZero!6214 (index!27109 (_ BitVec 32))) (Found!6214 (index!27110 (_ BitVec 32))) (Intermediate!6214 (undefined!7026 Bool) (index!27111 (_ BitVec 32)) (x!55941 (_ BitVec 32))) (Undefined!6214) (MissingVacant!6214 (index!27112 (_ BitVec 32))) )
))
(declare-fun lt!271615 () SeekEntryResult!6214)

(assert (=> b!597758 (= res!383240 (or (= lt!271615 (MissingZero!6214 i!1108)) (= lt!271615 (MissingVacant!6214 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37019 (_ BitVec 32)) SeekEntryResult!6214)

(assert (=> b!597758 (= lt!271615 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!597759 () Bool)

(declare-fun e!341632 () Bool)

(assert (=> b!597759 (= e!341632 (not e!341640))))

(declare-fun res!383239 () Bool)

(assert (=> b!597759 (=> res!383239 e!341640)))

(declare-fun lt!271611 () SeekEntryResult!6214)

(assert (=> b!597759 (= res!383239 (not (= lt!271611 (Found!6214 index!984))))))

(declare-datatypes ((Unit!18800 0))(
  ( (Unit!18801) )
))
(declare-fun lt!271618 () Unit!18800)

(declare-fun e!341631 () Unit!18800)

(assert (=> b!597759 (= lt!271618 e!341631)))

(declare-fun c!67631 () Bool)

(assert (=> b!597759 (= c!67631 (= lt!271611 Undefined!6214))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37019 (_ BitVec 32)) SeekEntryResult!6214)

(assert (=> b!597759 (= lt!271611 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!271610 lt!271616 mask!3053))))

(declare-fun e!341644 () Bool)

(assert (=> b!597759 e!341644))

(declare-fun res!383237 () Bool)

(assert (=> b!597759 (=> (not res!383237) (not e!341644))))

(declare-fun lt!271609 () SeekEntryResult!6214)

(declare-fun lt!271613 () (_ BitVec 32))

(assert (=> b!597759 (= res!383237 (= lt!271609 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271613 vacantSpotIndex!68 lt!271610 lt!271616 mask!3053)))))

(assert (=> b!597759 (= lt!271609 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271613 vacantSpotIndex!68 (select (arr!17767 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!597759 (= lt!271610 (select (store (arr!17767 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!271617 () Unit!18800)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37019 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18800)

(assert (=> b!597759 (= lt!271617 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!271613 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!597759 (= lt!271613 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!597760 () Bool)

(declare-fun e!341634 () Bool)

(assert (=> b!597760 (= e!341634 e!341632)))

(declare-fun res!383243 () Bool)

(assert (=> b!597760 (=> (not res!383243) (not e!341632))))

(declare-fun lt!271619 () SeekEntryResult!6214)

(assert (=> b!597760 (= res!383243 (and (= lt!271619 (Found!6214 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17767 a!2986) index!984) (select (arr!17767 a!2986) j!136))) (not (= (select (arr!17767 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!597760 (= lt!271619 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17767 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!597761 () Bool)

(assert (=> b!597761 (= e!341642 (not (contains!2961 Nil!11858 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!597762 () Bool)

(declare-fun res!383234 () Bool)

(assert (=> b!597762 (=> (not res!383234) (not e!341633))))

(declare-fun arrayNoDuplicates!0 (array!37019 (_ BitVec 32) List!11861) Bool)

(assert (=> b!597762 (= res!383234 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11858))))

(declare-fun b!597763 () Bool)

(assert (=> b!597763 (= e!341644 (= lt!271619 lt!271609))))

(declare-fun b!597764 () Bool)

(declare-fun res!383235 () Bool)

(assert (=> b!597764 (=> (not res!383235) (not e!341633))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37019 (_ BitVec 32)) Bool)

(assert (=> b!597764 (= res!383235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!597765 () Bool)

(declare-fun Unit!18802 () Unit!18800)

(assert (=> b!597765 (= e!341631 Unit!18802)))

(declare-fun b!597766 () Bool)

(declare-fun res!383225 () Bool)

(assert (=> b!597766 (=> (not res!383225) (not e!341635))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!597766 (= res!383225 (validKeyInArray!0 (select (arr!17767 a!2986) j!136)))))

(declare-fun b!597767 () Bool)

(declare-fun res!383229 () Bool)

(assert (=> b!597767 (=> (not res!383229) (not e!341635))))

(assert (=> b!597767 (= res!383229 (validKeyInArray!0 k0!1786))))

(declare-fun b!597768 () Bool)

(assert (=> b!597768 (= e!341633 e!341634)))

(declare-fun res!383228 () Bool)

(assert (=> b!597768 (=> (not res!383228) (not e!341634))))

(assert (=> b!597768 (= res!383228 (= (select (store (arr!17767 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!597768 (= lt!271616 (array!37020 (store (arr!17767 a!2986) i!1108 k0!1786) (size!18131 a!2986)))))

(declare-fun b!597769 () Bool)

(declare-fun res!383226 () Bool)

(assert (=> b!597769 (=> (not res!383226) (not e!341635))))

(assert (=> b!597769 (= res!383226 (and (= (size!18131 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18131 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18131 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!597770 () Bool)

(declare-fun Unit!18803 () Unit!18800)

(assert (=> b!597770 (= e!341631 Unit!18803)))

(assert (=> b!597770 false))

(declare-fun b!597771 () Bool)

(assert (=> b!597771 (= e!341638 e!341636)))

(declare-fun res!383241 () Bool)

(assert (=> b!597771 (=> res!383241 e!341636)))

(assert (=> b!597771 (= res!383241 (or (bvsgt #b00000000000000000000000000000000 (size!18131 a!2986)) (bvsge (size!18131 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!597771 (arrayNoDuplicates!0 lt!271616 #b00000000000000000000000000000000 Nil!11858)))

(declare-fun lt!271612 () Unit!18800)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37019 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11861) Unit!18800)

(assert (=> b!597771 (= lt!271612 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11858))))

(assert (=> b!597771 (arrayContainsKey!0 lt!271616 (select (arr!17767 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!271614 () Unit!18800)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37019 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18800)

(assert (=> b!597771 (= lt!271614 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!271616 (select (arr!17767 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!597772 () Bool)

(declare-fun res!383236 () Bool)

(assert (=> b!597772 (=> (not res!383236) (not e!341635))))

(assert (=> b!597772 (= res!383236 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!597773 () Bool)

(assert (=> b!597773 (= e!341643 (arrayContainsKey!0 lt!271616 (select (arr!17767 a!2986) j!136) index!984))))

(assert (= (and start!54740 res!383242) b!597769))

(assert (= (and b!597769 res!383226) b!597766))

(assert (= (and b!597766 res!383225) b!597767))

(assert (= (and b!597767 res!383229) b!597772))

(assert (= (and b!597772 res!383236) b!597758))

(assert (= (and b!597758 res!383240) b!597764))

(assert (= (and b!597764 res!383235) b!597762))

(assert (= (and b!597762 res!383234) b!597756))

(assert (= (and b!597756 res!383233) b!597768))

(assert (= (and b!597768 res!383228) b!597760))

(assert (= (and b!597760 res!383243) b!597759))

(assert (= (and b!597759 res!383237) b!597763))

(assert (= (and b!597759 c!67631) b!597770))

(assert (= (and b!597759 (not c!67631)) b!597765))

(assert (= (and b!597759 (not res!383239)) b!597757))

(assert (= (and b!597757 res!383232) b!597754))

(assert (= (and b!597754 (not res!383231)) b!597755))

(assert (= (and b!597755 res!383227) b!597773))

(assert (= (and b!597757 (not res!383224)) b!597771))

(assert (= (and b!597771 (not res!383241)) b!597753))

(assert (= (and b!597753 (not res!383230)) b!597752))

(assert (= (and b!597752 res!383238) b!597761))

(declare-fun m!575145 () Bool)

(assert (=> b!597756 m!575145))

(declare-fun m!575147 () Bool)

(assert (=> b!597764 m!575147))

(declare-fun m!575149 () Bool)

(assert (=> b!597754 m!575149))

(declare-fun m!575151 () Bool)

(assert (=> b!597767 m!575151))

(assert (=> b!597755 m!575149))

(assert (=> b!597755 m!575149))

(declare-fun m!575153 () Bool)

(assert (=> b!597755 m!575153))

(declare-fun m!575155 () Bool)

(assert (=> b!597761 m!575155))

(assert (=> b!597773 m!575149))

(assert (=> b!597773 m!575149))

(declare-fun m!575157 () Bool)

(assert (=> b!597773 m!575157))

(declare-fun m!575159 () Bool)

(assert (=> start!54740 m!575159))

(declare-fun m!575161 () Bool)

(assert (=> start!54740 m!575161))

(assert (=> b!597757 m!575149))

(declare-fun m!575163 () Bool)

(assert (=> b!597757 m!575163))

(declare-fun m!575165 () Bool)

(assert (=> b!597757 m!575165))

(declare-fun m!575167 () Bool)

(assert (=> b!597772 m!575167))

(declare-fun m!575169 () Bool)

(assert (=> b!597759 m!575169))

(declare-fun m!575171 () Bool)

(assert (=> b!597759 m!575171))

(declare-fun m!575173 () Bool)

(assert (=> b!597759 m!575173))

(assert (=> b!597759 m!575149))

(declare-fun m!575175 () Bool)

(assert (=> b!597759 m!575175))

(assert (=> b!597759 m!575163))

(assert (=> b!597759 m!575149))

(declare-fun m!575177 () Bool)

(assert (=> b!597759 m!575177))

(declare-fun m!575179 () Bool)

(assert (=> b!597759 m!575179))

(declare-fun m!575181 () Bool)

(assert (=> b!597758 m!575181))

(declare-fun m!575183 () Bool)

(assert (=> b!597753 m!575183))

(assert (=> b!597768 m!575163))

(declare-fun m!575185 () Bool)

(assert (=> b!597768 m!575185))

(declare-fun m!575187 () Bool)

(assert (=> b!597762 m!575187))

(declare-fun m!575189 () Bool)

(assert (=> b!597752 m!575189))

(assert (=> b!597766 m!575149))

(assert (=> b!597766 m!575149))

(declare-fun m!575191 () Bool)

(assert (=> b!597766 m!575191))

(declare-fun m!575193 () Bool)

(assert (=> b!597771 m!575193))

(assert (=> b!597771 m!575149))

(assert (=> b!597771 m!575149))

(declare-fun m!575195 () Bool)

(assert (=> b!597771 m!575195))

(assert (=> b!597771 m!575149))

(declare-fun m!575197 () Bool)

(assert (=> b!597771 m!575197))

(declare-fun m!575199 () Bool)

(assert (=> b!597771 m!575199))

(declare-fun m!575201 () Bool)

(assert (=> b!597760 m!575201))

(assert (=> b!597760 m!575149))

(assert (=> b!597760 m!575149))

(declare-fun m!575203 () Bool)

(assert (=> b!597760 m!575203))

(check-sat (not b!597752) (not b!597772) (not b!597773) (not b!597767) (not b!597766) (not start!54740) (not b!597753) (not b!597760) (not b!597761) (not b!597762) (not b!597759) (not b!597764) (not b!597755) (not b!597771) (not b!597758))
(check-sat)
(get-model)

(declare-fun b!597850 () Bool)

(declare-fun e!341695 () Bool)

(declare-fun e!341697 () Bool)

(assert (=> b!597850 (= e!341695 e!341697)))

(declare-fun res!383310 () Bool)

(assert (=> b!597850 (=> (not res!383310) (not e!341697))))

(declare-fun e!341698 () Bool)

(assert (=> b!597850 (= res!383310 (not e!341698))))

(declare-fun res!383312 () Bool)

(assert (=> b!597850 (=> (not res!383312) (not e!341698))))

(assert (=> b!597850 (= res!383312 (validKeyInArray!0 (select (arr!17767 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!32939 () Bool)

(declare-fun call!32942 () Bool)

(declare-fun c!67637 () Bool)

(assert (=> bm!32939 (= call!32942 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!67637 (Cons!11857 (select (arr!17767 a!2986) #b00000000000000000000000000000000) Nil!11858) Nil!11858)))))

(declare-fun b!597851 () Bool)

(declare-fun e!341696 () Bool)

(assert (=> b!597851 (= e!341696 call!32942)))

(declare-fun d!86831 () Bool)

(declare-fun res!383311 () Bool)

(assert (=> d!86831 (=> res!383311 e!341695)))

(assert (=> d!86831 (= res!383311 (bvsge #b00000000000000000000000000000000 (size!18131 a!2986)))))

(assert (=> d!86831 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11858) e!341695)))

(declare-fun b!597852 () Bool)

(assert (=> b!597852 (= e!341697 e!341696)))

(assert (=> b!597852 (= c!67637 (validKeyInArray!0 (select (arr!17767 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!597853 () Bool)

(assert (=> b!597853 (= e!341696 call!32942)))

(declare-fun b!597854 () Bool)

(assert (=> b!597854 (= e!341698 (contains!2961 Nil!11858 (select (arr!17767 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!86831 (not res!383311)) b!597850))

(assert (= (and b!597850 res!383312) b!597854))

(assert (= (and b!597850 res!383310) b!597852))

(assert (= (and b!597852 c!67637) b!597851))

(assert (= (and b!597852 (not c!67637)) b!597853))

(assert (= (or b!597851 b!597853) bm!32939))

(declare-fun m!575265 () Bool)

(assert (=> b!597850 m!575265))

(assert (=> b!597850 m!575265))

(declare-fun m!575267 () Bool)

(assert (=> b!597850 m!575267))

(assert (=> bm!32939 m!575265))

(declare-fun m!575269 () Bool)

(assert (=> bm!32939 m!575269))

(assert (=> b!597852 m!575265))

(assert (=> b!597852 m!575265))

(assert (=> b!597852 m!575267))

(assert (=> b!597854 m!575265))

(assert (=> b!597854 m!575265))

(declare-fun m!575271 () Bool)

(assert (=> b!597854 m!575271))

(assert (=> b!597762 d!86831))

(declare-fun d!86833 () Bool)

(declare-fun res!383317 () Bool)

(declare-fun e!341703 () Bool)

(assert (=> d!86833 (=> res!383317 e!341703)))

(assert (=> d!86833 (= res!383317 (= (select (arr!17767 lt!271616) index!984) (select (arr!17767 a!2986) j!136)))))

(assert (=> d!86833 (= (arrayContainsKey!0 lt!271616 (select (arr!17767 a!2986) j!136) index!984) e!341703)))

(declare-fun b!597859 () Bool)

(declare-fun e!341704 () Bool)

(assert (=> b!597859 (= e!341703 e!341704)))

(declare-fun res!383318 () Bool)

(assert (=> b!597859 (=> (not res!383318) (not e!341704))))

(assert (=> b!597859 (= res!383318 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18131 lt!271616)))))

(declare-fun b!597860 () Bool)

(assert (=> b!597860 (= e!341704 (arrayContainsKey!0 lt!271616 (select (arr!17767 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!86833 (not res!383317)) b!597859))

(assert (= (and b!597859 res!383318) b!597860))

(declare-fun m!575273 () Bool)

(assert (=> d!86833 m!575273))

(assert (=> b!597860 m!575149))

(declare-fun m!575275 () Bool)

(assert (=> b!597860 m!575275))

(assert (=> b!597773 d!86833))

(declare-fun d!86835 () Bool)

(declare-fun lt!271659 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!236 (List!11861) (InoxSet (_ BitVec 64)))

(assert (=> d!86835 (= lt!271659 (select (content!236 Nil!11858) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!341709 () Bool)

(assert (=> d!86835 (= lt!271659 e!341709)))

(declare-fun res!383324 () Bool)

(assert (=> d!86835 (=> (not res!383324) (not e!341709))))

(get-info :version)

(assert (=> d!86835 (= res!383324 ((_ is Cons!11857) Nil!11858))))

(assert (=> d!86835 (= (contains!2961 Nil!11858 #b0000000000000000000000000000000000000000000000000000000000000000) lt!271659)))

(declare-fun b!597865 () Bool)

(declare-fun e!341710 () Bool)

(assert (=> b!597865 (= e!341709 e!341710)))

(declare-fun res!383323 () Bool)

(assert (=> b!597865 (=> res!383323 e!341710)))

(assert (=> b!597865 (= res!383323 (= (h!12902 Nil!11858) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!597866 () Bool)

(assert (=> b!597866 (= e!341710 (contains!2961 (t!18097 Nil!11858) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!86835 res!383324) b!597865))

(assert (= (and b!597865 (not res!383323)) b!597866))

(declare-fun m!575277 () Bool)

(assert (=> d!86835 m!575277))

(declare-fun m!575279 () Bool)

(assert (=> d!86835 m!575279))

(declare-fun m!575281 () Bool)

(assert (=> b!597866 m!575281))

(assert (=> b!597752 d!86835))

(declare-fun d!86837 () Bool)

(declare-fun lt!271660 () Bool)

(assert (=> d!86837 (= lt!271660 (select (content!236 Nil!11858) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!341711 () Bool)

(assert (=> d!86837 (= lt!271660 e!341711)))

(declare-fun res!383326 () Bool)

(assert (=> d!86837 (=> (not res!383326) (not e!341711))))

(assert (=> d!86837 (= res!383326 ((_ is Cons!11857) Nil!11858))))

(assert (=> d!86837 (= (contains!2961 Nil!11858 #b1000000000000000000000000000000000000000000000000000000000000000) lt!271660)))

(declare-fun b!597867 () Bool)

(declare-fun e!341712 () Bool)

(assert (=> b!597867 (= e!341711 e!341712)))

(declare-fun res!383325 () Bool)

(assert (=> b!597867 (=> res!383325 e!341712)))

(assert (=> b!597867 (= res!383325 (= (h!12902 Nil!11858) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!597868 () Bool)

(assert (=> b!597868 (= e!341712 (contains!2961 (t!18097 Nil!11858) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!86837 res!383326) b!597867))

(assert (= (and b!597867 (not res!383325)) b!597868))

(assert (=> d!86837 m!575277))

(declare-fun m!575283 () Bool)

(assert (=> d!86837 m!575283))

(declare-fun m!575285 () Bool)

(assert (=> b!597868 m!575285))

(assert (=> b!597761 d!86837))

(declare-fun d!86839 () Bool)

(declare-fun res!383327 () Bool)

(declare-fun e!341713 () Bool)

(assert (=> d!86839 (=> res!383327 e!341713)))

(assert (=> d!86839 (= res!383327 (= (select (arr!17767 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!86839 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!341713)))

(declare-fun b!597869 () Bool)

(declare-fun e!341714 () Bool)

(assert (=> b!597869 (= e!341713 e!341714)))

(declare-fun res!383328 () Bool)

(assert (=> b!597869 (=> (not res!383328) (not e!341714))))

(assert (=> b!597869 (= res!383328 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18131 a!2986)))))

(declare-fun b!597870 () Bool)

(assert (=> b!597870 (= e!341714 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!86839 (not res!383327)) b!597869))

(assert (= (and b!597869 res!383328) b!597870))

(assert (=> d!86839 m!575265))

(declare-fun m!575287 () Bool)

(assert (=> b!597870 m!575287))

(assert (=> b!597772 d!86839))

(declare-fun b!597883 () Bool)

(declare-fun e!341721 () SeekEntryResult!6214)

(assert (=> b!597883 (= e!341721 (Found!6214 index!984))))

(declare-fun lt!271666 () SeekEntryResult!6214)

(declare-fun d!86841 () Bool)

(assert (=> d!86841 (and (or ((_ is Undefined!6214) lt!271666) (not ((_ is Found!6214) lt!271666)) (and (bvsge (index!27110 lt!271666) #b00000000000000000000000000000000) (bvslt (index!27110 lt!271666) (size!18131 a!2986)))) (or ((_ is Undefined!6214) lt!271666) ((_ is Found!6214) lt!271666) (not ((_ is MissingVacant!6214) lt!271666)) (not (= (index!27112 lt!271666) vacantSpotIndex!68)) (and (bvsge (index!27112 lt!271666) #b00000000000000000000000000000000) (bvslt (index!27112 lt!271666) (size!18131 a!2986)))) (or ((_ is Undefined!6214) lt!271666) (ite ((_ is Found!6214) lt!271666) (= (select (arr!17767 a!2986) (index!27110 lt!271666)) (select (arr!17767 a!2986) j!136)) (and ((_ is MissingVacant!6214) lt!271666) (= (index!27112 lt!271666) vacantSpotIndex!68) (= (select (arr!17767 a!2986) (index!27112 lt!271666)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!341723 () SeekEntryResult!6214)

(assert (=> d!86841 (= lt!271666 e!341723)))

(declare-fun c!67644 () Bool)

(assert (=> d!86841 (= c!67644 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!271665 () (_ BitVec 64))

(assert (=> d!86841 (= lt!271665 (select (arr!17767 a!2986) index!984))))

(assert (=> d!86841 (validMask!0 mask!3053)))

(assert (=> d!86841 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17767 a!2986) j!136) a!2986 mask!3053) lt!271666)))

(declare-fun b!597884 () Bool)

(assert (=> b!597884 (= e!341723 Undefined!6214)))

(declare-fun b!597885 () Bool)

(declare-fun c!67645 () Bool)

(assert (=> b!597885 (= c!67645 (= lt!271665 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!341722 () SeekEntryResult!6214)

(assert (=> b!597885 (= e!341721 e!341722)))

(declare-fun b!597886 () Bool)

(assert (=> b!597886 (= e!341722 (MissingVacant!6214 vacantSpotIndex!68))))

(declare-fun b!597887 () Bool)

(assert (=> b!597887 (= e!341722 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17767 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!597888 () Bool)

(assert (=> b!597888 (= e!341723 e!341721)))

(declare-fun c!67646 () Bool)

(assert (=> b!597888 (= c!67646 (= lt!271665 (select (arr!17767 a!2986) j!136)))))

(assert (= (and d!86841 c!67644) b!597884))

(assert (= (and d!86841 (not c!67644)) b!597888))

(assert (= (and b!597888 c!67646) b!597883))

(assert (= (and b!597888 (not c!67646)) b!597885))

(assert (= (and b!597885 c!67645) b!597886))

(assert (= (and b!597885 (not c!67645)) b!597887))

(declare-fun m!575289 () Bool)

(assert (=> d!86841 m!575289))

(declare-fun m!575291 () Bool)

(assert (=> d!86841 m!575291))

(assert (=> d!86841 m!575201))

(assert (=> d!86841 m!575159))

(assert (=> b!597887 m!575169))

(assert (=> b!597887 m!575169))

(assert (=> b!597887 m!575149))

(declare-fun m!575293 () Bool)

(assert (=> b!597887 m!575293))

(assert (=> b!597760 d!86841))

(declare-fun b!597889 () Bool)

(declare-fun e!341724 () Bool)

(declare-fun e!341726 () Bool)

(assert (=> b!597889 (= e!341724 e!341726)))

(declare-fun res!383329 () Bool)

(assert (=> b!597889 (=> (not res!383329) (not e!341726))))

(declare-fun e!341727 () Bool)

(assert (=> b!597889 (= res!383329 (not e!341727))))

(declare-fun res!383331 () Bool)

(assert (=> b!597889 (=> (not res!383331) (not e!341727))))

(assert (=> b!597889 (= res!383331 (validKeyInArray!0 (select (arr!17767 lt!271616) #b00000000000000000000000000000000)))))

(declare-fun bm!32940 () Bool)

(declare-fun call!32943 () Bool)

(declare-fun c!67647 () Bool)

(assert (=> bm!32940 (= call!32943 (arrayNoDuplicates!0 lt!271616 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!67647 (Cons!11857 (select (arr!17767 lt!271616) #b00000000000000000000000000000000) Nil!11858) Nil!11858)))))

(declare-fun b!597890 () Bool)

(declare-fun e!341725 () Bool)

(assert (=> b!597890 (= e!341725 call!32943)))

(declare-fun d!86843 () Bool)

(declare-fun res!383330 () Bool)

(assert (=> d!86843 (=> res!383330 e!341724)))

(assert (=> d!86843 (= res!383330 (bvsge #b00000000000000000000000000000000 (size!18131 lt!271616)))))

(assert (=> d!86843 (= (arrayNoDuplicates!0 lt!271616 #b00000000000000000000000000000000 Nil!11858) e!341724)))

(declare-fun b!597891 () Bool)

(assert (=> b!597891 (= e!341726 e!341725)))

(assert (=> b!597891 (= c!67647 (validKeyInArray!0 (select (arr!17767 lt!271616) #b00000000000000000000000000000000)))))

(declare-fun b!597892 () Bool)

(assert (=> b!597892 (= e!341725 call!32943)))

(declare-fun b!597893 () Bool)

(assert (=> b!597893 (= e!341727 (contains!2961 Nil!11858 (select (arr!17767 lt!271616) #b00000000000000000000000000000000)))))

(assert (= (and d!86843 (not res!383330)) b!597889))

(assert (= (and b!597889 res!383331) b!597893))

(assert (= (and b!597889 res!383329) b!597891))

(assert (= (and b!597891 c!67647) b!597890))

(assert (= (and b!597891 (not c!67647)) b!597892))

(assert (= (or b!597890 b!597892) bm!32940))

(declare-fun m!575295 () Bool)

(assert (=> b!597889 m!575295))

(assert (=> b!597889 m!575295))

(declare-fun m!575297 () Bool)

(assert (=> b!597889 m!575297))

(assert (=> bm!32940 m!575295))

(declare-fun m!575299 () Bool)

(assert (=> bm!32940 m!575299))

(assert (=> b!597891 m!575295))

(assert (=> b!597891 m!575295))

(assert (=> b!597891 m!575297))

(assert (=> b!597893 m!575295))

(assert (=> b!597893 m!575295))

(declare-fun m!575301 () Bool)

(assert (=> b!597893 m!575301))

(assert (=> b!597771 d!86843))

(declare-fun d!86845 () Bool)

(declare-fun e!341730 () Bool)

(assert (=> d!86845 e!341730))

(declare-fun res!383334 () Bool)

(assert (=> d!86845 (=> (not res!383334) (not e!341730))))

(assert (=> d!86845 (= res!383334 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18131 a!2986))))))

(declare-fun lt!271669 () Unit!18800)

(declare-fun choose!41 (array!37019 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11861) Unit!18800)

(assert (=> d!86845 (= lt!271669 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11858))))

(assert (=> d!86845 (bvslt (size!18131 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!86845 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11858) lt!271669)))

(declare-fun b!597896 () Bool)

(assert (=> b!597896 (= e!341730 (arrayNoDuplicates!0 (array!37020 (store (arr!17767 a!2986) i!1108 k0!1786) (size!18131 a!2986)) #b00000000000000000000000000000000 Nil!11858))))

(assert (= (and d!86845 res!383334) b!597896))

(declare-fun m!575303 () Bool)

(assert (=> d!86845 m!575303))

(assert (=> b!597896 m!575163))

(declare-fun m!575305 () Bool)

(assert (=> b!597896 m!575305))

(assert (=> b!597771 d!86845))

(declare-fun d!86847 () Bool)

(declare-fun res!383335 () Bool)

(declare-fun e!341731 () Bool)

(assert (=> d!86847 (=> res!383335 e!341731)))

(assert (=> d!86847 (= res!383335 (= (select (arr!17767 lt!271616) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17767 a!2986) j!136)))))

(assert (=> d!86847 (= (arrayContainsKey!0 lt!271616 (select (arr!17767 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!341731)))

(declare-fun b!597897 () Bool)

(declare-fun e!341732 () Bool)

(assert (=> b!597897 (= e!341731 e!341732)))

(declare-fun res!383336 () Bool)

(assert (=> b!597897 (=> (not res!383336) (not e!341732))))

(assert (=> b!597897 (= res!383336 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18131 lt!271616)))))

(declare-fun b!597898 () Bool)

(assert (=> b!597898 (= e!341732 (arrayContainsKey!0 lt!271616 (select (arr!17767 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!86847 (not res!383335)) b!597897))

(assert (= (and b!597897 res!383336) b!597898))

(declare-fun m!575307 () Bool)

(assert (=> d!86847 m!575307))

(assert (=> b!597898 m!575149))

(declare-fun m!575309 () Bool)

(assert (=> b!597898 m!575309))

(assert (=> b!597771 d!86847))

(declare-fun d!86849 () Bool)

(assert (=> d!86849 (arrayContainsKey!0 lt!271616 (select (arr!17767 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!271672 () Unit!18800)

(declare-fun choose!114 (array!37019 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18800)

(assert (=> d!86849 (= lt!271672 (choose!114 lt!271616 (select (arr!17767 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!86849 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!86849 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!271616 (select (arr!17767 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!271672)))

(declare-fun bs!18377 () Bool)

(assert (= bs!18377 d!86849))

(assert (=> bs!18377 m!575149))

(assert (=> bs!18377 m!575195))

(assert (=> bs!18377 m!575149))

(declare-fun m!575311 () Bool)

(assert (=> bs!18377 m!575311))

(assert (=> b!597771 d!86849))

(declare-fun b!597925 () Bool)

(declare-fun e!341751 () SeekEntryResult!6214)

(declare-fun lt!271687 () SeekEntryResult!6214)

(assert (=> b!597925 (= e!341751 (seekKeyOrZeroReturnVacant!0 (x!55941 lt!271687) (index!27111 lt!271687) (index!27111 lt!271687) k0!1786 a!2986 mask!3053))))

(declare-fun b!597926 () Bool)

(declare-fun e!341752 () SeekEntryResult!6214)

(assert (=> b!597926 (= e!341752 Undefined!6214)))

(declare-fun b!597927 () Bool)

(assert (=> b!597927 (= e!341751 (MissingZero!6214 (index!27111 lt!271687)))))

(declare-fun d!86851 () Bool)

(declare-fun lt!271685 () SeekEntryResult!6214)

(assert (=> d!86851 (and (or ((_ is Undefined!6214) lt!271685) (not ((_ is Found!6214) lt!271685)) (and (bvsge (index!27110 lt!271685) #b00000000000000000000000000000000) (bvslt (index!27110 lt!271685) (size!18131 a!2986)))) (or ((_ is Undefined!6214) lt!271685) ((_ is Found!6214) lt!271685) (not ((_ is MissingZero!6214) lt!271685)) (and (bvsge (index!27109 lt!271685) #b00000000000000000000000000000000) (bvslt (index!27109 lt!271685) (size!18131 a!2986)))) (or ((_ is Undefined!6214) lt!271685) ((_ is Found!6214) lt!271685) ((_ is MissingZero!6214) lt!271685) (not ((_ is MissingVacant!6214) lt!271685)) (and (bvsge (index!27112 lt!271685) #b00000000000000000000000000000000) (bvslt (index!27112 lt!271685) (size!18131 a!2986)))) (or ((_ is Undefined!6214) lt!271685) (ite ((_ is Found!6214) lt!271685) (= (select (arr!17767 a!2986) (index!27110 lt!271685)) k0!1786) (ite ((_ is MissingZero!6214) lt!271685) (= (select (arr!17767 a!2986) (index!27109 lt!271685)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6214) lt!271685) (= (select (arr!17767 a!2986) (index!27112 lt!271685)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!86851 (= lt!271685 e!341752)))

(declare-fun c!67658 () Bool)

(assert (=> d!86851 (= c!67658 (and ((_ is Intermediate!6214) lt!271687) (undefined!7026 lt!271687)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37019 (_ BitVec 32)) SeekEntryResult!6214)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!86851 (= lt!271687 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!86851 (validMask!0 mask!3053)))

(assert (=> d!86851 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!271685)))

(declare-fun b!597928 () Bool)

(declare-fun c!67656 () Bool)

(declare-fun lt!271686 () (_ BitVec 64))

(assert (=> b!597928 (= c!67656 (= lt!271686 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!341753 () SeekEntryResult!6214)

(assert (=> b!597928 (= e!341753 e!341751)))

(declare-fun b!597929 () Bool)

(assert (=> b!597929 (= e!341753 (Found!6214 (index!27111 lt!271687)))))

(declare-fun b!597930 () Bool)

(assert (=> b!597930 (= e!341752 e!341753)))

(assert (=> b!597930 (= lt!271686 (select (arr!17767 a!2986) (index!27111 lt!271687)))))

(declare-fun c!67657 () Bool)

(assert (=> b!597930 (= c!67657 (= lt!271686 k0!1786))))

(assert (= (and d!86851 c!67658) b!597926))

(assert (= (and d!86851 (not c!67658)) b!597930))

(assert (= (and b!597930 c!67657) b!597929))

(assert (= (and b!597930 (not c!67657)) b!597928))

(assert (= (and b!597928 c!67656) b!597927))

(assert (= (and b!597928 (not c!67656)) b!597925))

(declare-fun m!575317 () Bool)

(assert (=> b!597925 m!575317))

(declare-fun m!575319 () Bool)

(assert (=> d!86851 m!575319))

(assert (=> d!86851 m!575319))

(declare-fun m!575321 () Bool)

(assert (=> d!86851 m!575321))

(declare-fun m!575323 () Bool)

(assert (=> d!86851 m!575323))

(declare-fun m!575325 () Bool)

(assert (=> d!86851 m!575325))

(declare-fun m!575327 () Bool)

(assert (=> d!86851 m!575327))

(assert (=> d!86851 m!575159))

(declare-fun m!575329 () Bool)

(assert (=> b!597930 m!575329))

(assert (=> b!597758 d!86851))

(declare-fun d!86861 () Bool)

(assert (=> d!86861 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!54740 d!86861))

(declare-fun d!86867 () Bool)

(assert (=> d!86867 (= (array_inv!13541 a!2986) (bvsge (size!18131 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!54740 d!86867))

(declare-fun d!86871 () Bool)

(declare-fun lt!271699 () (_ BitVec 32))

(assert (=> d!86871 (and (bvsge lt!271699 #b00000000000000000000000000000000) (bvslt lt!271699 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!86871 (= lt!271699 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!86871 (validMask!0 mask!3053)))

(assert (=> d!86871 (= (nextIndex!0 index!984 x!910 mask!3053) lt!271699)))

(declare-fun bs!18378 () Bool)

(assert (= bs!18378 d!86871))

(declare-fun m!575357 () Bool)

(assert (=> bs!18378 m!575357))

(assert (=> bs!18378 m!575159))

(assert (=> b!597759 d!86871))

(declare-fun d!86875 () Bool)

(declare-fun e!341790 () Bool)

(assert (=> d!86875 e!341790))

(declare-fun res!383368 () Bool)

(assert (=> d!86875 (=> (not res!383368) (not e!341790))))

(assert (=> d!86875 (= res!383368 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18131 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18131 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18131 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18131 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18131 a!2986))))))

(declare-fun lt!271706 () Unit!18800)

(declare-fun choose!9 (array!37019 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18800)

(assert (=> d!86875 (= lt!271706 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!271613 vacantSpotIndex!68 mask!3053))))

(assert (=> d!86875 (validMask!0 mask!3053)))

(assert (=> d!86875 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!271613 vacantSpotIndex!68 mask!3053) lt!271706)))

(declare-fun b!597982 () Bool)

(assert (=> b!597982 (= e!341790 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271613 vacantSpotIndex!68 (select (arr!17767 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271613 vacantSpotIndex!68 (select (store (arr!17767 a!2986) i!1108 k0!1786) j!136) (array!37020 (store (arr!17767 a!2986) i!1108 k0!1786) (size!18131 a!2986)) mask!3053)))))

(assert (= (and d!86875 res!383368) b!597982))

(declare-fun m!575359 () Bool)

(assert (=> d!86875 m!575359))

(assert (=> d!86875 m!575159))

(assert (=> b!597982 m!575163))

(assert (=> b!597982 m!575149))

(assert (=> b!597982 m!575177))

(assert (=> b!597982 m!575149))

(assert (=> b!597982 m!575171))

(declare-fun m!575361 () Bool)

(assert (=> b!597982 m!575361))

(assert (=> b!597982 m!575171))

(assert (=> b!597759 d!86875))

(declare-fun b!597989 () Bool)

(declare-fun e!341795 () SeekEntryResult!6214)

(assert (=> b!597989 (= e!341795 (Found!6214 lt!271613))))

(declare-fun lt!271716 () SeekEntryResult!6214)

(declare-fun d!86881 () Bool)

(assert (=> d!86881 (and (or ((_ is Undefined!6214) lt!271716) (not ((_ is Found!6214) lt!271716)) (and (bvsge (index!27110 lt!271716) #b00000000000000000000000000000000) (bvslt (index!27110 lt!271716) (size!18131 lt!271616)))) (or ((_ is Undefined!6214) lt!271716) ((_ is Found!6214) lt!271716) (not ((_ is MissingVacant!6214) lt!271716)) (not (= (index!27112 lt!271716) vacantSpotIndex!68)) (and (bvsge (index!27112 lt!271716) #b00000000000000000000000000000000) (bvslt (index!27112 lt!271716) (size!18131 lt!271616)))) (or ((_ is Undefined!6214) lt!271716) (ite ((_ is Found!6214) lt!271716) (= (select (arr!17767 lt!271616) (index!27110 lt!271716)) lt!271610) (and ((_ is MissingVacant!6214) lt!271716) (= (index!27112 lt!271716) vacantSpotIndex!68) (= (select (arr!17767 lt!271616) (index!27112 lt!271716)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!341797 () SeekEntryResult!6214)

(assert (=> d!86881 (= lt!271716 e!341797)))

(declare-fun c!67676 () Bool)

(assert (=> d!86881 (= c!67676 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!271715 () (_ BitVec 64))

(assert (=> d!86881 (= lt!271715 (select (arr!17767 lt!271616) lt!271613))))

(assert (=> d!86881 (validMask!0 mask!3053)))

(assert (=> d!86881 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271613 vacantSpotIndex!68 lt!271610 lt!271616 mask!3053) lt!271716)))

(declare-fun b!597990 () Bool)

(assert (=> b!597990 (= e!341797 Undefined!6214)))

(declare-fun b!597991 () Bool)

(declare-fun c!67677 () Bool)

(assert (=> b!597991 (= c!67677 (= lt!271715 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!341796 () SeekEntryResult!6214)

(assert (=> b!597991 (= e!341795 e!341796)))

(declare-fun b!597992 () Bool)

(assert (=> b!597992 (= e!341796 (MissingVacant!6214 vacantSpotIndex!68))))

(declare-fun b!597993 () Bool)

(assert (=> b!597993 (= e!341796 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!271613 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!271610 lt!271616 mask!3053))))

(declare-fun b!597994 () Bool)

(assert (=> b!597994 (= e!341797 e!341795)))

(declare-fun c!67678 () Bool)

(assert (=> b!597994 (= c!67678 (= lt!271715 lt!271610))))

(assert (= (and d!86881 c!67676) b!597990))

(assert (= (and d!86881 (not c!67676)) b!597994))

(assert (= (and b!597994 c!67678) b!597989))

(assert (= (and b!597994 (not c!67678)) b!597991))

(assert (= (and b!597991 c!67677) b!597992))

(assert (= (and b!597991 (not c!67677)) b!597993))

(declare-fun m!575363 () Bool)

(assert (=> d!86881 m!575363))

(declare-fun m!575365 () Bool)

(assert (=> d!86881 m!575365))

(declare-fun m!575367 () Bool)

(assert (=> d!86881 m!575367))

(assert (=> d!86881 m!575159))

(declare-fun m!575369 () Bool)

(assert (=> b!597993 m!575369))

(assert (=> b!597993 m!575369))

(declare-fun m!575371 () Bool)

(assert (=> b!597993 m!575371))

(assert (=> b!597759 d!86881))

(declare-fun b!598003 () Bool)

(declare-fun e!341802 () SeekEntryResult!6214)

(assert (=> b!598003 (= e!341802 (Found!6214 lt!271613))))

(declare-fun d!86883 () Bool)

(declare-fun lt!271718 () SeekEntryResult!6214)

(assert (=> d!86883 (and (or ((_ is Undefined!6214) lt!271718) (not ((_ is Found!6214) lt!271718)) (and (bvsge (index!27110 lt!271718) #b00000000000000000000000000000000) (bvslt (index!27110 lt!271718) (size!18131 a!2986)))) (or ((_ is Undefined!6214) lt!271718) ((_ is Found!6214) lt!271718) (not ((_ is MissingVacant!6214) lt!271718)) (not (= (index!27112 lt!271718) vacantSpotIndex!68)) (and (bvsge (index!27112 lt!271718) #b00000000000000000000000000000000) (bvslt (index!27112 lt!271718) (size!18131 a!2986)))) (or ((_ is Undefined!6214) lt!271718) (ite ((_ is Found!6214) lt!271718) (= (select (arr!17767 a!2986) (index!27110 lt!271718)) (select (arr!17767 a!2986) j!136)) (and ((_ is MissingVacant!6214) lt!271718) (= (index!27112 lt!271718) vacantSpotIndex!68) (= (select (arr!17767 a!2986) (index!27112 lt!271718)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!341804 () SeekEntryResult!6214)

(assert (=> d!86883 (= lt!271718 e!341804)))

(declare-fun c!67683 () Bool)

(assert (=> d!86883 (= c!67683 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!271717 () (_ BitVec 64))

(assert (=> d!86883 (= lt!271717 (select (arr!17767 a!2986) lt!271613))))

(assert (=> d!86883 (validMask!0 mask!3053)))

(assert (=> d!86883 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271613 vacantSpotIndex!68 (select (arr!17767 a!2986) j!136) a!2986 mask!3053) lt!271718)))

(declare-fun b!598004 () Bool)

(assert (=> b!598004 (= e!341804 Undefined!6214)))

(declare-fun b!598005 () Bool)

(declare-fun c!67684 () Bool)

(assert (=> b!598005 (= c!67684 (= lt!271717 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!341803 () SeekEntryResult!6214)

(assert (=> b!598005 (= e!341802 e!341803)))

(declare-fun b!598006 () Bool)

(assert (=> b!598006 (= e!341803 (MissingVacant!6214 vacantSpotIndex!68))))

(declare-fun b!598007 () Bool)

(assert (=> b!598007 (= e!341803 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!271613 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17767 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!598008 () Bool)

(assert (=> b!598008 (= e!341804 e!341802)))

(declare-fun c!67685 () Bool)

(assert (=> b!598008 (= c!67685 (= lt!271717 (select (arr!17767 a!2986) j!136)))))

(assert (= (and d!86883 c!67683) b!598004))

(assert (= (and d!86883 (not c!67683)) b!598008))

(assert (= (and b!598008 c!67685) b!598003))

(assert (= (and b!598008 (not c!67685)) b!598005))

(assert (= (and b!598005 c!67684) b!598006))

(assert (= (and b!598005 (not c!67684)) b!598007))

(declare-fun m!575373 () Bool)

(assert (=> d!86883 m!575373))

(declare-fun m!575375 () Bool)

(assert (=> d!86883 m!575375))

(declare-fun m!575377 () Bool)

(assert (=> d!86883 m!575377))

(assert (=> d!86883 m!575159))

(assert (=> b!598007 m!575369))

(assert (=> b!598007 m!575369))

(assert (=> b!598007 m!575149))

(declare-fun m!575379 () Bool)

(assert (=> b!598007 m!575379))

(assert (=> b!597759 d!86883))

(declare-fun b!598009 () Bool)

(declare-fun e!341805 () SeekEntryResult!6214)

(assert (=> b!598009 (= e!341805 (Found!6214 index!984))))

(declare-fun lt!271720 () SeekEntryResult!6214)

(declare-fun d!86885 () Bool)

(assert (=> d!86885 (and (or ((_ is Undefined!6214) lt!271720) (not ((_ is Found!6214) lt!271720)) (and (bvsge (index!27110 lt!271720) #b00000000000000000000000000000000) (bvslt (index!27110 lt!271720) (size!18131 lt!271616)))) (or ((_ is Undefined!6214) lt!271720) ((_ is Found!6214) lt!271720) (not ((_ is MissingVacant!6214) lt!271720)) (not (= (index!27112 lt!271720) vacantSpotIndex!68)) (and (bvsge (index!27112 lt!271720) #b00000000000000000000000000000000) (bvslt (index!27112 lt!271720) (size!18131 lt!271616)))) (or ((_ is Undefined!6214) lt!271720) (ite ((_ is Found!6214) lt!271720) (= (select (arr!17767 lt!271616) (index!27110 lt!271720)) lt!271610) (and ((_ is MissingVacant!6214) lt!271720) (= (index!27112 lt!271720) vacantSpotIndex!68) (= (select (arr!17767 lt!271616) (index!27112 lt!271720)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!341807 () SeekEntryResult!6214)

(assert (=> d!86885 (= lt!271720 e!341807)))

(declare-fun c!67686 () Bool)

(assert (=> d!86885 (= c!67686 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!271719 () (_ BitVec 64))

(assert (=> d!86885 (= lt!271719 (select (arr!17767 lt!271616) index!984))))

(assert (=> d!86885 (validMask!0 mask!3053)))

(assert (=> d!86885 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!271610 lt!271616 mask!3053) lt!271720)))

(declare-fun b!598010 () Bool)

(assert (=> b!598010 (= e!341807 Undefined!6214)))

(declare-fun b!598011 () Bool)

(declare-fun c!67687 () Bool)

(assert (=> b!598011 (= c!67687 (= lt!271719 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!341806 () SeekEntryResult!6214)

(assert (=> b!598011 (= e!341805 e!341806)))

(declare-fun b!598012 () Bool)

(assert (=> b!598012 (= e!341806 (MissingVacant!6214 vacantSpotIndex!68))))

(declare-fun b!598013 () Bool)

(assert (=> b!598013 (= e!341806 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!271610 lt!271616 mask!3053))))

(declare-fun b!598014 () Bool)

(assert (=> b!598014 (= e!341807 e!341805)))

(declare-fun c!67688 () Bool)

(assert (=> b!598014 (= c!67688 (= lt!271719 lt!271610))))

(assert (= (and d!86885 c!67686) b!598010))

(assert (= (and d!86885 (not c!67686)) b!598014))

(assert (= (and b!598014 c!67688) b!598009))

(assert (= (and b!598014 (not c!67688)) b!598011))

(assert (= (and b!598011 c!67687) b!598012))

(assert (= (and b!598011 (not c!67687)) b!598013))

(declare-fun m!575381 () Bool)

(assert (=> d!86885 m!575381))

(declare-fun m!575383 () Bool)

(assert (=> d!86885 m!575383))

(assert (=> d!86885 m!575273))

(assert (=> d!86885 m!575159))

(assert (=> b!598013 m!575169))

(assert (=> b!598013 m!575169))

(declare-fun m!575391 () Bool)

(assert (=> b!598013 m!575391))

(assert (=> b!597759 d!86885))

(declare-fun d!86887 () Bool)

(assert (=> d!86887 (= (validKeyInArray!0 (select (arr!17767 a!2986) j!136)) (and (not (= (select (arr!17767 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17767 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!597766 d!86887))

(declare-fun d!86893 () Bool)

(assert (=> d!86893 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!597767 d!86893))

(declare-fun d!86895 () Bool)

(declare-fun res!383375 () Bool)

(declare-fun e!341813 () Bool)

(assert (=> d!86895 (=> res!383375 e!341813)))

(assert (=> d!86895 (= res!383375 (= (select (arr!17767 lt!271616) j!136) (select (arr!17767 a!2986) j!136)))))

(assert (=> d!86895 (= (arrayContainsKey!0 lt!271616 (select (arr!17767 a!2986) j!136) j!136) e!341813)))

(declare-fun b!598021 () Bool)

(declare-fun e!341814 () Bool)

(assert (=> b!598021 (= e!341813 e!341814)))

(declare-fun res!383376 () Bool)

(assert (=> b!598021 (=> (not res!383376) (not e!341814))))

(assert (=> b!598021 (= res!383376 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18131 lt!271616)))))

(declare-fun b!598022 () Bool)

(assert (=> b!598022 (= e!341814 (arrayContainsKey!0 lt!271616 (select (arr!17767 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!86895 (not res!383375)) b!598021))

(assert (= (and b!598021 res!383376) b!598022))

(declare-fun m!575403 () Bool)

(assert (=> d!86895 m!575403))

(assert (=> b!598022 m!575149))

(declare-fun m!575405 () Bool)

(assert (=> b!598022 m!575405))

(assert (=> b!597755 d!86895))

(declare-fun d!86897 () Bool)

(declare-fun res!383381 () Bool)

(declare-fun e!341822 () Bool)

(assert (=> d!86897 (=> res!383381 e!341822)))

(assert (=> d!86897 (= res!383381 ((_ is Nil!11858) Nil!11858))))

(assert (=> d!86897 (= (noDuplicate!275 Nil!11858) e!341822)))

(declare-fun b!598033 () Bool)

(declare-fun e!341823 () Bool)

(assert (=> b!598033 (= e!341822 e!341823)))

(declare-fun res!383382 () Bool)

(assert (=> b!598033 (=> (not res!383382) (not e!341823))))

(assert (=> b!598033 (= res!383382 (not (contains!2961 (t!18097 Nil!11858) (h!12902 Nil!11858))))))

(declare-fun b!598034 () Bool)

(assert (=> b!598034 (= e!341823 (noDuplicate!275 (t!18097 Nil!11858)))))

(assert (= (and d!86897 (not res!383381)) b!598033))

(assert (= (and b!598033 res!383382) b!598034))

(declare-fun m!575421 () Bool)

(assert (=> b!598033 m!575421))

(declare-fun m!575423 () Bool)

(assert (=> b!598034 m!575423))

(assert (=> b!597753 d!86897))

(declare-fun b!598049 () Bool)

(declare-fun e!341838 () Bool)

(declare-fun call!32955 () Bool)

(assert (=> b!598049 (= e!341838 call!32955)))

(declare-fun b!598050 () Bool)

(declare-fun e!341836 () Bool)

(assert (=> b!598050 (= e!341836 e!341838)))

(declare-fun c!67695 () Bool)

(assert (=> b!598050 (= c!67695 (validKeyInArray!0 (select (arr!17767 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!598051 () Bool)

(declare-fun e!341837 () Bool)

(assert (=> b!598051 (= e!341838 e!341837)))

(declare-fun lt!271734 () (_ BitVec 64))

(assert (=> b!598051 (= lt!271734 (select (arr!17767 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!271735 () Unit!18800)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37019 (_ BitVec 64) (_ BitVec 32)) Unit!18800)

(assert (=> b!598051 (= lt!271735 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!271734 #b00000000000000000000000000000000))))

(assert (=> b!598051 (arrayContainsKey!0 a!2986 lt!271734 #b00000000000000000000000000000000)))

(declare-fun lt!271733 () Unit!18800)

(assert (=> b!598051 (= lt!271733 lt!271735)))

(declare-fun res!383394 () Bool)

(assert (=> b!598051 (= res!383394 (= (seekEntryOrOpen!0 (select (arr!17767 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6214 #b00000000000000000000000000000000)))))

(assert (=> b!598051 (=> (not res!383394) (not e!341837))))

(declare-fun bm!32952 () Bool)

(assert (=> bm!32952 (= call!32955 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun d!86901 () Bool)

(declare-fun res!383393 () Bool)

(assert (=> d!86901 (=> res!383393 e!341836)))

(assert (=> d!86901 (= res!383393 (bvsge #b00000000000000000000000000000000 (size!18131 a!2986)))))

(assert (=> d!86901 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!341836)))

(declare-fun b!598052 () Bool)

(assert (=> b!598052 (= e!341837 call!32955)))

(assert (= (and d!86901 (not res!383393)) b!598050))

(assert (= (and b!598050 c!67695) b!598051))

(assert (= (and b!598050 (not c!67695)) b!598049))

(assert (= (and b!598051 res!383394) b!598052))

(assert (= (or b!598052 b!598049) bm!32952))

(assert (=> b!598050 m!575265))

(assert (=> b!598050 m!575265))

(assert (=> b!598050 m!575267))

(assert (=> b!598051 m!575265))

(declare-fun m!575429 () Bool)

(assert (=> b!598051 m!575429))

(declare-fun m!575431 () Bool)

(assert (=> b!598051 m!575431))

(assert (=> b!598051 m!575265))

(declare-fun m!575433 () Bool)

(assert (=> b!598051 m!575433))

(declare-fun m!575435 () Bool)

(assert (=> bm!32952 m!575435))

(assert (=> b!597764 d!86901))

(check-sat (not b!597870) (not d!86841) (not b!597891) (not d!86875) (not b!597866) (not b!597993) (not bm!32939) (not b!597889) (not b!597898) (not b!597868) (not b!598007) (not bm!32940) (not d!86835) (not b!598034) (not d!86881) (not b!597893) (not d!86885) (not d!86851) (not b!597850) (not d!86845) (not b!597925) (not b!597982) (not b!598051) (not b!598050) (not b!598013) (not d!86837) (not d!86849) (not b!597896) (not b!597860) (not b!597854) (not b!598033) (not b!597852) (not bm!32952) (not d!86871) (not d!86883) (not b!598022) (not b!597887))
(check-sat)
