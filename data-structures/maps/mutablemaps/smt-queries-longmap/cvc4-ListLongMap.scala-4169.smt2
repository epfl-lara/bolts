; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56770 () Bool)

(assert start!56770)

(declare-fun b!628782 () Bool)

(declare-fun res!406529 () Bool)

(declare-fun e!359646 () Bool)

(assert (=> b!628782 (=> (not res!406529) (not e!359646))))

(declare-datatypes ((array!37972 0))(
  ( (array!37973 (arr!18221 (Array (_ BitVec 32) (_ BitVec 64))) (size!18585 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37972)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37972 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!628782 (= res!406529 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!628783 () Bool)

(declare-fun res!406520 () Bool)

(declare-fun e!359648 () Bool)

(assert (=> b!628783 (=> (not res!406520) (not e!359648))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!628783 (= res!406520 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18221 a!2986) index!984) (select (arr!18221 a!2986) j!136))) (not (= (select (arr!18221 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!628784 () Bool)

(declare-fun res!406518 () Bool)

(declare-fun e!359649 () Bool)

(assert (=> b!628784 (=> (not res!406518) (not e!359649))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!628784 (= res!406518 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18221 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18221 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!628785 () Bool)

(declare-fun res!406522 () Bool)

(assert (=> b!628785 (=> (not res!406522) (not e!359649))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37972 (_ BitVec 32)) Bool)

(assert (=> b!628785 (= res!406522 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun lt!290555 () (_ BitVec 32))

(declare-fun e!359647 () Bool)

(declare-fun b!628786 () Bool)

(declare-datatypes ((SeekEntryResult!6668 0))(
  ( (MissingZero!6668 (index!28955 (_ BitVec 32))) (Found!6668 (index!28956 (_ BitVec 32))) (Intermediate!6668 (undefined!7480 Bool) (index!28957 (_ BitVec 32)) (x!57711 (_ BitVec 32))) (Undefined!6668) (MissingVacant!6668 (index!28958 (_ BitVec 32))) )
))
(declare-fun lt!290556 () SeekEntryResult!6668)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37972 (_ BitVec 32)) SeekEntryResult!6668)

(assert (=> b!628786 (= e!359647 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290555 vacantSpotIndex!68 (select (arr!18221 a!2986) j!136) a!2986 mask!3053) lt!290556)))))

(declare-fun b!628787 () Bool)

(declare-fun res!406526 () Bool)

(assert (=> b!628787 (=> (not res!406526) (not e!359646))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!628787 (= res!406526 (validKeyInArray!0 k!1786))))

(declare-fun b!628788 () Bool)

(declare-fun res!406524 () Bool)

(assert (=> b!628788 (=> (not res!406524) (not e!359646))))

(assert (=> b!628788 (= res!406524 (and (= (size!18585 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18585 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18585 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!406525 () Bool)

(assert (=> start!56770 (=> (not res!406525) (not e!359646))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56770 (= res!406525 (validMask!0 mask!3053))))

(assert (=> start!56770 e!359646))

(assert (=> start!56770 true))

(declare-fun array_inv!13995 (array!37972) Bool)

(assert (=> start!56770 (array_inv!13995 a!2986)))

(declare-fun b!628789 () Bool)

(assert (=> b!628789 (= e!359649 e!359648)))

(declare-fun res!406521 () Bool)

(assert (=> b!628789 (=> (not res!406521) (not e!359648))))

(assert (=> b!628789 (= res!406521 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18221 a!2986) j!136) a!2986 mask!3053) lt!290556))))

(assert (=> b!628789 (= lt!290556 (Found!6668 j!136))))

(declare-fun b!628790 () Bool)

(assert (=> b!628790 (= e!359648 e!359647)))

(declare-fun res!406528 () Bool)

(assert (=> b!628790 (=> (not res!406528) (not e!359647))))

(assert (=> b!628790 (= res!406528 (and (bvsge lt!290555 #b00000000000000000000000000000000) (bvslt lt!290555 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!628790 (= lt!290555 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!628791 () Bool)

(declare-fun res!406527 () Bool)

(assert (=> b!628791 (=> (not res!406527) (not e!359646))))

(assert (=> b!628791 (= res!406527 (validKeyInArray!0 (select (arr!18221 a!2986) j!136)))))

(declare-fun b!628792 () Bool)

(declare-fun res!406523 () Bool)

(assert (=> b!628792 (=> (not res!406523) (not e!359649))))

(declare-datatypes ((List!12315 0))(
  ( (Nil!12312) (Cons!12311 (h!13356 (_ BitVec 64)) (t!18551 List!12315)) )
))
(declare-fun arrayNoDuplicates!0 (array!37972 (_ BitVec 32) List!12315) Bool)

(assert (=> b!628792 (= res!406523 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12312))))

(declare-fun b!628793 () Bool)

(assert (=> b!628793 (= e!359646 e!359649)))

(declare-fun res!406519 () Bool)

(assert (=> b!628793 (=> (not res!406519) (not e!359649))))

(declare-fun lt!290554 () SeekEntryResult!6668)

(assert (=> b!628793 (= res!406519 (or (= lt!290554 (MissingZero!6668 i!1108)) (= lt!290554 (MissingVacant!6668 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37972 (_ BitVec 32)) SeekEntryResult!6668)

(assert (=> b!628793 (= lt!290554 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!56770 res!406525) b!628788))

(assert (= (and b!628788 res!406524) b!628791))

(assert (= (and b!628791 res!406527) b!628787))

(assert (= (and b!628787 res!406526) b!628782))

(assert (= (and b!628782 res!406529) b!628793))

(assert (= (and b!628793 res!406519) b!628785))

(assert (= (and b!628785 res!406522) b!628792))

(assert (= (and b!628792 res!406523) b!628784))

(assert (= (and b!628784 res!406518) b!628789))

(assert (= (and b!628789 res!406521) b!628783))

(assert (= (and b!628783 res!406520) b!628790))

(assert (= (and b!628790 res!406528) b!628786))

(declare-fun m!603937 () Bool)

(assert (=> b!628786 m!603937))

(assert (=> b!628786 m!603937))

(declare-fun m!603939 () Bool)

(assert (=> b!628786 m!603939))

(declare-fun m!603941 () Bool)

(assert (=> b!628790 m!603941))

(declare-fun m!603943 () Bool)

(assert (=> b!628783 m!603943))

(assert (=> b!628783 m!603937))

(assert (=> b!628791 m!603937))

(assert (=> b!628791 m!603937))

(declare-fun m!603945 () Bool)

(assert (=> b!628791 m!603945))

(assert (=> b!628789 m!603937))

(assert (=> b!628789 m!603937))

(declare-fun m!603947 () Bool)

(assert (=> b!628789 m!603947))

(declare-fun m!603949 () Bool)

(assert (=> b!628785 m!603949))

(declare-fun m!603951 () Bool)

(assert (=> b!628792 m!603951))

(declare-fun m!603953 () Bool)

(assert (=> b!628782 m!603953))

(declare-fun m!603955 () Bool)

(assert (=> b!628787 m!603955))

(declare-fun m!603957 () Bool)

(assert (=> start!56770 m!603957))

(declare-fun m!603959 () Bool)

(assert (=> start!56770 m!603959))

(declare-fun m!603961 () Bool)

(assert (=> b!628784 m!603961))

(declare-fun m!603963 () Bool)

(assert (=> b!628784 m!603963))

(declare-fun m!603965 () Bool)

(assert (=> b!628784 m!603965))

(declare-fun m!603967 () Bool)

(assert (=> b!628793 m!603967))

(push 1)

(assert (not b!628791))

(assert (not b!628790))

(assert (not b!628793))

(assert (not b!628789))

(assert (not b!628787))

(assert (not b!628782))

(assert (not b!628786))

(assert (not b!628792))

(assert (not start!56770))

(assert (not b!628785))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!88951 () Bool)

(declare-fun res!406555 () Bool)

(declare-fun e!359697 () Bool)

(assert (=> d!88951 (=> res!406555 e!359697)))

(assert (=> d!88951 (= res!406555 (= (select (arr!18221 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!88951 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!359697)))

(declare-fun b!628861 () Bool)

(declare-fun e!359698 () Bool)

(assert (=> b!628861 (= e!359697 e!359698)))

(declare-fun res!406556 () Bool)

(assert (=> b!628861 (=> (not res!406556) (not e!359698))))

(assert (=> b!628861 (= res!406556 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18585 a!2986)))))

(declare-fun b!628862 () Bool)

(assert (=> b!628862 (= e!359698 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!88951 (not res!406555)) b!628861))

(assert (= (and b!628861 res!406556) b!628862))

(declare-fun m!604001 () Bool)

(assert (=> d!88951 m!604001))

(declare-fun m!604003 () Bool)

(assert (=> b!628862 m!604003))

(assert (=> b!628782 d!88951))

(declare-fun d!88953 () Bool)

(declare-fun lt!290606 () SeekEntryResult!6668)

(assert (=> d!88953 (and (or (is-Undefined!6668 lt!290606) (not (is-Found!6668 lt!290606)) (and (bvsge (index!28956 lt!290606) #b00000000000000000000000000000000) (bvslt (index!28956 lt!290606) (size!18585 a!2986)))) (or (is-Undefined!6668 lt!290606) (is-Found!6668 lt!290606) (not (is-MissingZero!6668 lt!290606)) (and (bvsge (index!28955 lt!290606) #b00000000000000000000000000000000) (bvslt (index!28955 lt!290606) (size!18585 a!2986)))) (or (is-Undefined!6668 lt!290606) (is-Found!6668 lt!290606) (is-MissingZero!6668 lt!290606) (not (is-MissingVacant!6668 lt!290606)) (and (bvsge (index!28958 lt!290606) #b00000000000000000000000000000000) (bvslt (index!28958 lt!290606) (size!18585 a!2986)))) (or (is-Undefined!6668 lt!290606) (ite (is-Found!6668 lt!290606) (= (select (arr!18221 a!2986) (index!28956 lt!290606)) k!1786) (ite (is-MissingZero!6668 lt!290606) (= (select (arr!18221 a!2986) (index!28955 lt!290606)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6668 lt!290606) (= (select (arr!18221 a!2986) (index!28958 lt!290606)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!359725 () SeekEntryResult!6668)

(assert (=> d!88953 (= lt!290606 e!359725)))

(declare-fun c!71540 () Bool)

(declare-fun lt!290607 () SeekEntryResult!6668)

(assert (=> d!88953 (= c!71540 (and (is-Intermediate!6668 lt!290607) (undefined!7480 lt!290607)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37972 (_ BitVec 32)) SeekEntryResult!6668)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88953 (= lt!290607 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!88953 (validMask!0 mask!3053)))

(assert (=> d!88953 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!290606)))

(declare-fun b!628905 () Bool)

(declare-fun c!71538 () Bool)

(declare-fun lt!290608 () (_ BitVec 64))

(assert (=> b!628905 (= c!71538 (= lt!290608 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!359724 () SeekEntryResult!6668)

(declare-fun e!359723 () SeekEntryResult!6668)

(assert (=> b!628905 (= e!359724 e!359723)))

(declare-fun b!628906 () Bool)

(assert (=> b!628906 (= e!359725 Undefined!6668)))

(declare-fun b!628907 () Bool)

(assert (=> b!628907 (= e!359724 (Found!6668 (index!28957 lt!290607)))))

(declare-fun b!628908 () Bool)

(assert (=> b!628908 (= e!359725 e!359724)))

(assert (=> b!628908 (= lt!290608 (select (arr!18221 a!2986) (index!28957 lt!290607)))))

(declare-fun c!71539 () Bool)

(assert (=> b!628908 (= c!71539 (= lt!290608 k!1786))))

(declare-fun b!628909 () Bool)

(assert (=> b!628909 (= e!359723 (seekKeyOrZeroReturnVacant!0 (x!57711 lt!290607) (index!28957 lt!290607) (index!28957 lt!290607) k!1786 a!2986 mask!3053))))

(declare-fun b!628910 () Bool)

(assert (=> b!628910 (= e!359723 (MissingZero!6668 (index!28957 lt!290607)))))

(assert (= (and d!88953 c!71540) b!628906))

(assert (= (and d!88953 (not c!71540)) b!628908))

(assert (= (and b!628908 c!71539) b!628907))

(assert (= (and b!628908 (not c!71539)) b!628905))

(assert (= (and b!628905 c!71538) b!628910))

(assert (= (and b!628905 (not c!71538)) b!628909))

(declare-fun m!604031 () Bool)

(assert (=> d!88953 m!604031))

(declare-fun m!604033 () Bool)

(assert (=> d!88953 m!604033))

(assert (=> d!88953 m!604031))

(assert (=> d!88953 m!603957))

(declare-fun m!604035 () Bool)

(assert (=> d!88953 m!604035))

(declare-fun m!604037 () Bool)

(assert (=> d!88953 m!604037))

(declare-fun m!604039 () Bool)

(assert (=> d!88953 m!604039))

(declare-fun m!604041 () Bool)

(assert (=> b!628908 m!604041))

(declare-fun m!604045 () Bool)

(assert (=> b!628909 m!604045))

(assert (=> b!628793 d!88953))

(declare-fun d!88963 () Bool)

(assert (=> d!88963 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!56770 d!88963))

(declare-fun d!88971 () Bool)

(assert (=> d!88971 (= (array_inv!13995 a!2986) (bvsge (size!18585 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!56770 d!88971))

(declare-fun b!628980 () Bool)

(declare-fun e!359768 () SeekEntryResult!6668)

(assert (=> b!628980 (= e!359768 (MissingVacant!6668 vacantSpotIndex!68))))

(declare-fun b!628981 () Bool)

(declare-fun e!359769 () SeekEntryResult!6668)

(assert (=> b!628981 (= e!359769 (Found!6668 index!984))))

(declare-fun d!88973 () Bool)

(declare-fun lt!290629 () SeekEntryResult!6668)

(assert (=> d!88973 (and (or (is-Undefined!6668 lt!290629) (not (is-Found!6668 lt!290629)) (and (bvsge (index!28956 lt!290629) #b00000000000000000000000000000000) (bvslt (index!28956 lt!290629) (size!18585 a!2986)))) (or (is-Undefined!6668 lt!290629) (is-Found!6668 lt!290629) (not (is-MissingVacant!6668 lt!290629)) (not (= (index!28958 lt!290629) vacantSpotIndex!68)) (and (bvsge (index!28958 lt!290629) #b00000000000000000000000000000000) (bvslt (index!28958 lt!290629) (size!18585 a!2986)))) (or (is-Undefined!6668 lt!290629) (ite (is-Found!6668 lt!290629) (= (select (arr!18221 a!2986) (index!28956 lt!290629)) (select (arr!18221 a!2986) j!136)) (and (is-MissingVacant!6668 lt!290629) (= (index!28958 lt!290629) vacantSpotIndex!68) (= (select (arr!18221 a!2986) (index!28958 lt!290629)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!359770 () SeekEntryResult!6668)

(assert (=> d!88973 (= lt!290629 e!359770)))

(declare-fun c!71568 () Bool)

(assert (=> d!88973 (= c!71568 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!290628 () (_ BitVec 64))

(assert (=> d!88973 (= lt!290628 (select (arr!18221 a!2986) index!984))))

(assert (=> d!88973 (validMask!0 mask!3053)))

(assert (=> d!88973 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18221 a!2986) j!136) a!2986 mask!3053) lt!290629)))

(declare-fun b!628982 () Bool)

(assert (=> b!628982 (= e!359768 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18221 a!2986) j!136) a!2986 mask!3053)