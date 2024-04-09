; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54082 () Bool)

(assert start!54082)

(declare-fun b!590491 () Bool)

(declare-fun res!377866 () Bool)

(declare-fun e!337125 () Bool)

(assert (=> b!590491 (=> (not res!377866) (not e!337125))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36832 0))(
  ( (array!36833 (arr!17684 (Array (_ BitVec 32) (_ BitVec 64))) (size!18048 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36832)

(assert (=> b!590491 (= res!377866 (and (= (size!18048 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18048 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18048 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!590492 () Bool)

(declare-datatypes ((Unit!18468 0))(
  ( (Unit!18469) )
))
(declare-fun e!337127 () Unit!18468)

(declare-fun Unit!18470 () Unit!18468)

(assert (=> b!590492 (= e!337127 Unit!18470)))

(assert (=> b!590492 false))

(declare-fun b!590493 () Bool)

(declare-fun e!337130 () Bool)

(assert (=> b!590493 (= e!337125 e!337130)))

(declare-fun res!377865 () Bool)

(assert (=> b!590493 (=> (not res!377865) (not e!337130))))

(declare-datatypes ((SeekEntryResult!6131 0))(
  ( (MissingZero!6131 (index!26756 (_ BitVec 32))) (Found!6131 (index!26757 (_ BitVec 32))) (Intermediate!6131 (undefined!6943 Bool) (index!26758 (_ BitVec 32)) (x!55571 (_ BitVec 32))) (Undefined!6131) (MissingVacant!6131 (index!26759 (_ BitVec 32))) )
))
(declare-fun lt!267959 () SeekEntryResult!6131)

(assert (=> b!590493 (= res!377865 (or (= lt!267959 (MissingZero!6131 i!1108)) (= lt!267959 (MissingVacant!6131 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36832 (_ BitVec 32)) SeekEntryResult!6131)

(assert (=> b!590493 (= lt!267959 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!590494 () Bool)

(declare-fun e!337129 () Bool)

(declare-fun lt!267956 () SeekEntryResult!6131)

(declare-fun lt!267958 () SeekEntryResult!6131)

(assert (=> b!590494 (= e!337129 (= lt!267956 lt!267958))))

(declare-fun lt!267960 () (_ BitVec 64))

(declare-fun b!590495 () Bool)

(declare-fun e!337123 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!590495 (= e!337123 (or (not (= (select (arr!17684 a!2986) j!136) lt!267960)) (not (= (select (arr!17684 a!2986) j!136) (select (store (arr!17684 a!2986) i!1108 k!1786) index!984))) (bvsge j!136 index!984) (bvsge index!984 (size!18048 a!2986)) (bvslt (size!18048 a!2986) #b01111111111111111111111111111111)))))

(declare-fun e!337128 () Bool)

(assert (=> b!590495 e!337128))

(declare-fun res!377861 () Bool)

(assert (=> b!590495 (=> (not res!377861) (not e!337128))))

(assert (=> b!590495 (= res!377861 (= (select (store (arr!17684 a!2986) i!1108 k!1786) index!984) (select (arr!17684 a!2986) j!136)))))

(declare-fun b!590496 () Bool)

(declare-fun e!337124 () Bool)

(assert (=> b!590496 (= e!337124 (not e!337123))))

(declare-fun res!377872 () Bool)

(assert (=> b!590496 (=> res!377872 e!337123)))

(declare-fun lt!267955 () SeekEntryResult!6131)

(assert (=> b!590496 (= res!377872 (not (= lt!267955 (Found!6131 index!984))))))

(declare-fun lt!267961 () Unit!18468)

(assert (=> b!590496 (= lt!267961 e!337127)))

(declare-fun c!66683 () Bool)

(assert (=> b!590496 (= c!66683 (= lt!267955 Undefined!6131))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!267957 () array!36832)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36832 (_ BitVec 32)) SeekEntryResult!6131)

(assert (=> b!590496 (= lt!267955 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267960 lt!267957 mask!3053))))

(assert (=> b!590496 e!337129))

(declare-fun res!377870 () Bool)

(assert (=> b!590496 (=> (not res!377870) (not e!337129))))

(declare-fun lt!267962 () (_ BitVec 32))

(assert (=> b!590496 (= res!377870 (= lt!267958 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267962 vacantSpotIndex!68 lt!267960 lt!267957 mask!3053)))))

(assert (=> b!590496 (= lt!267958 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267962 vacantSpotIndex!68 (select (arr!17684 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!590496 (= lt!267960 (select (store (arr!17684 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!267963 () Unit!18468)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36832 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18468)

(assert (=> b!590496 (= lt!267963 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267962 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!590496 (= lt!267962 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!590497 () Bool)

(declare-fun res!377864 () Bool)

(assert (=> b!590497 (=> (not res!377864) (not e!337130))))

(declare-datatypes ((List!11778 0))(
  ( (Nil!11775) (Cons!11774 (h!12819 (_ BitVec 64)) (t!18014 List!11778)) )
))
(declare-fun arrayNoDuplicates!0 (array!36832 (_ BitVec 32) List!11778) Bool)

(assert (=> b!590497 (= res!377864 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11775))))

(declare-fun b!590498 () Bool)

(declare-fun res!377871 () Bool)

(assert (=> b!590498 (=> (not res!377871) (not e!337125))))

(declare-fun arrayContainsKey!0 (array!36832 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!590498 (= res!377871 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!590499 () Bool)

(declare-fun e!337126 () Bool)

(assert (=> b!590499 (= e!337126 (arrayContainsKey!0 lt!267957 (select (arr!17684 a!2986) j!136) j!136))))

(declare-fun b!590500 () Bool)

(declare-fun res!377869 () Bool)

(assert (=> b!590500 (=> (not res!377869) (not e!337130))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36832 (_ BitVec 32)) Bool)

(assert (=> b!590500 (= res!377869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!590501 () Bool)

(assert (=> b!590501 (= e!337128 e!337126)))

(declare-fun res!377860 () Bool)

(assert (=> b!590501 (=> res!377860 e!337126)))

(assert (=> b!590501 (= res!377860 (or (not (= (select (arr!17684 a!2986) j!136) lt!267960)) (not (= (select (arr!17684 a!2986) j!136) (select (store (arr!17684 a!2986) i!1108 k!1786) index!984))) (bvsge j!136 index!984)))))

(declare-fun b!590502 () Bool)

(declare-fun res!377868 () Bool)

(assert (=> b!590502 (=> (not res!377868) (not e!337125))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!590502 (= res!377868 (validKeyInArray!0 (select (arr!17684 a!2986) j!136)))))

(declare-fun b!590503 () Bool)

(declare-fun e!337132 () Bool)

(assert (=> b!590503 (= e!337132 e!337124)))

(declare-fun res!377867 () Bool)

(assert (=> b!590503 (=> (not res!377867) (not e!337124))))

(assert (=> b!590503 (= res!377867 (and (= lt!267956 (Found!6131 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17684 a!2986) index!984) (select (arr!17684 a!2986) j!136))) (not (= (select (arr!17684 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!590503 (= lt!267956 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17684 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!590504 () Bool)

(declare-fun res!377862 () Bool)

(assert (=> b!590504 (=> (not res!377862) (not e!337130))))

(assert (=> b!590504 (= res!377862 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17684 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!377859 () Bool)

(assert (=> start!54082 (=> (not res!377859) (not e!337125))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54082 (= res!377859 (validMask!0 mask!3053))))

(assert (=> start!54082 e!337125))

(assert (=> start!54082 true))

(declare-fun array_inv!13458 (array!36832) Bool)

(assert (=> start!54082 (array_inv!13458 a!2986)))

(declare-fun b!590505 () Bool)

(assert (=> b!590505 (= e!337130 e!337132)))

(declare-fun res!377863 () Bool)

(assert (=> b!590505 (=> (not res!377863) (not e!337132))))

(assert (=> b!590505 (= res!377863 (= (select (store (arr!17684 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!590505 (= lt!267957 (array!36833 (store (arr!17684 a!2986) i!1108 k!1786) (size!18048 a!2986)))))

(declare-fun b!590506 () Bool)

(declare-fun Unit!18471 () Unit!18468)

(assert (=> b!590506 (= e!337127 Unit!18471)))

(declare-fun b!590507 () Bool)

(declare-fun res!377873 () Bool)

(assert (=> b!590507 (=> (not res!377873) (not e!337125))))

(assert (=> b!590507 (= res!377873 (validKeyInArray!0 k!1786))))

(assert (= (and start!54082 res!377859) b!590491))

(assert (= (and b!590491 res!377866) b!590502))

(assert (= (and b!590502 res!377868) b!590507))

(assert (= (and b!590507 res!377873) b!590498))

(assert (= (and b!590498 res!377871) b!590493))

(assert (= (and b!590493 res!377865) b!590500))

(assert (= (and b!590500 res!377869) b!590497))

(assert (= (and b!590497 res!377864) b!590504))

(assert (= (and b!590504 res!377862) b!590505))

(assert (= (and b!590505 res!377863) b!590503))

(assert (= (and b!590503 res!377867) b!590496))

(assert (= (and b!590496 res!377870) b!590494))

(assert (= (and b!590496 c!66683) b!590492))

(assert (= (and b!590496 (not c!66683)) b!590506))

(assert (= (and b!590496 (not res!377872)) b!590495))

(assert (= (and b!590495 res!377861) b!590501))

(assert (= (and b!590501 (not res!377860)) b!590499))

(declare-fun m!568897 () Bool)

(assert (=> b!590507 m!568897))

(declare-fun m!568899 () Bool)

(assert (=> b!590501 m!568899))

(declare-fun m!568901 () Bool)

(assert (=> b!590501 m!568901))

(declare-fun m!568903 () Bool)

(assert (=> b!590501 m!568903))

(assert (=> b!590505 m!568901))

(declare-fun m!568905 () Bool)

(assert (=> b!590505 m!568905))

(declare-fun m!568907 () Bool)

(assert (=> b!590497 m!568907))

(declare-fun m!568909 () Bool)

(assert (=> b!590504 m!568909))

(declare-fun m!568911 () Bool)

(assert (=> start!54082 m!568911))

(declare-fun m!568913 () Bool)

(assert (=> start!54082 m!568913))

(declare-fun m!568915 () Bool)

(assert (=> b!590493 m!568915))

(assert (=> b!590495 m!568899))

(assert (=> b!590495 m!568901))

(assert (=> b!590495 m!568903))

(declare-fun m!568917 () Bool)

(assert (=> b!590503 m!568917))

(assert (=> b!590503 m!568899))

(assert (=> b!590503 m!568899))

(declare-fun m!568919 () Bool)

(assert (=> b!590503 m!568919))

(declare-fun m!568921 () Bool)

(assert (=> b!590498 m!568921))

(assert (=> b!590499 m!568899))

(assert (=> b!590499 m!568899))

(declare-fun m!568923 () Bool)

(assert (=> b!590499 m!568923))

(declare-fun m!568925 () Bool)

(assert (=> b!590500 m!568925))

(declare-fun m!568927 () Bool)

(assert (=> b!590496 m!568927))

(declare-fun m!568929 () Bool)

(assert (=> b!590496 m!568929))

(assert (=> b!590496 m!568899))

(assert (=> b!590496 m!568901))

(declare-fun m!568931 () Bool)

(assert (=> b!590496 m!568931))

(declare-fun m!568933 () Bool)

(assert (=> b!590496 m!568933))

(assert (=> b!590496 m!568899))

(declare-fun m!568935 () Bool)

(assert (=> b!590496 m!568935))

(declare-fun m!568937 () Bool)

(assert (=> b!590496 m!568937))

(assert (=> b!590502 m!568899))

(assert (=> b!590502 m!568899))

(declare-fun m!568939 () Bool)

(assert (=> b!590502 m!568939))

(push 1)

(assert (not b!590507))

(assert (not b!590500))

(assert (not b!590498))

(assert (not b!590493))

(assert (not start!54082))

(assert (not b!590496))

(assert (not b!590497))

(assert (not b!590499))

(assert (not b!590503))

(assert (not b!590502))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!86005 () Bool)

(declare-fun res!377896 () Bool)

(declare-fun e!337176 () Bool)

(assert (=> d!86005 (=> res!377896 e!337176)))

(assert (=> d!86005 (= res!377896 (= (select (arr!17684 lt!267957) j!136) (select (arr!17684 a!2986) j!136)))))

(assert (=> d!86005 (= (arrayContainsKey!0 lt!267957 (select (arr!17684 a!2986) j!136) j!136) e!337176)))

(declare-fun b!590572 () Bool)

(declare-fun e!337177 () Bool)

(assert (=> b!590572 (= e!337176 e!337177)))

(declare-fun res!377897 () Bool)

(assert (=> b!590572 (=> (not res!377897) (not e!337177))))

(assert (=> b!590572 (= res!377897 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18048 lt!267957)))))

(declare-fun b!590573 () Bool)

(assert (=> b!590573 (= e!337177 (arrayContainsKey!0 lt!267957 (select (arr!17684 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!86005 (not res!377896)) b!590572))

(assert (= (and b!590572 res!377897) b!590573))

(declare-fun m!568989 () Bool)

(assert (=> d!86005 m!568989))

(assert (=> b!590573 m!568899))

(declare-fun m!568991 () Bool)

(assert (=> b!590573 m!568991))

(assert (=> b!590499 d!86005))

(declare-fun b!590589 () Bool)

(declare-fun e!337187 () SeekEntryResult!6131)

(declare-fun lt!267996 () SeekEntryResult!6131)

(assert (=> b!590589 (= e!337187 (Found!6131 (index!26758 lt!267996)))))

(declare-fun b!590590 () Bool)

(declare-fun e!337188 () SeekEntryResult!6131)

(assert (=> b!590590 (= e!337188 (seekKeyOrZeroReturnVacant!0 (x!55571 lt!267996) (index!26758 lt!267996) (index!26758 lt!267996) k!1786 a!2986 mask!3053))))

(declare-fun b!590591 () Bool)

(declare-fun e!337189 () SeekEntryResult!6131)

(assert (=> b!590591 (= e!337189 e!337187)))

(declare-fun lt!267995 () (_ BitVec 64))

(assert (=> b!590591 (= lt!267995 (select (arr!17684 a!2986) (index!26758 lt!267996)))))

(declare-fun c!66711 () Bool)

(assert (=> b!590591 (= c!66711 (= lt!267995 k!1786))))

(declare-fun b!590592 () Bool)

(assert (=> b!590592 (= e!337189 Undefined!6131)))

(declare-fun b!590593 () Bool)

(declare-fun c!66713 () Bool)

(assert (=> b!590593 (= c!66713 (= lt!267995 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!590593 (= e!337187 e!337188)))

(declare-fun b!590594 () Bool)

(assert (=> b!590594 (= e!337188 (MissingZero!6131 (index!26758 lt!267996)))))

(declare-fun d!86009 () Bool)

(declare-fun lt!267994 () SeekEntryResult!6131)

(assert (=> d!86009 (and (or (is-Undefined!6131 lt!267994) (not (is-Found!6131 lt!267994)) (and (bvsge (index!26757 lt!267994) #b00000000000000000000000000000000) (bvslt (index!26757 lt!267994) (size!18048 a!2986)))) (or (is-Undefined!6131 lt!267994) (is-Found!6131 lt!267994) (not (is-MissingZero!6131 lt!267994)) (and (bvsge (index!26756 lt!267994) #b00000000000000000000000000000000) (bvslt (index!26756 lt!267994) (size!18048 a!2986)))) (or (is-Undefined!6131 lt!267994) (is-Found!6131 lt!267994) (is-MissingZero!6131 lt!267994) (not (is-MissingVacant!6131 lt!267994)) (and (bvsge (index!26759 lt!267994) #b00000000000000000000000000000000) (bvslt (index!26759 lt!267994) (size!18048 a!2986)))) (or (is-Undefined!6131 lt!267994) (ite (is-Found!6131 lt!267994) (= (select (arr!17684 a!2986) (index!26757 lt!267994)) k!1786) (ite (is-MissingZero!6131 lt!267994) (= (select (arr!17684 a!2986) (index!26756 lt!267994)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6131 lt!267994) (= (select (arr!17684 a!2986) (index!26759 lt!267994)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!86009 (= lt!267994 e!337189)))

(declare-fun c!66712 () Bool)

(assert (=> d!86009 (= c!66712 (and (is-Intermediate!6131 lt!267996) (undefined!6943 lt!267996)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36832 (_ BitVec 32)) SeekEntryResult!6131)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!86009 (= lt!267996 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!86009 (validMask!0 mask!3053)))

(assert (=> d!86009 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!267994)))

(assert (= (and d!86009 c!66712) b!590592))

(assert (= (and d!86009 (not c!66712)) b!590591))

(assert (= (and b!590591 c!66711) b!590589))

(assert (= (and b!590591 (not c!66711)) b!590593))

(assert (= (and b!590593 c!66713) b!590594))

(assert (= (and b!590593 (not c!66713)) b!590590))

(declare-fun m!568999 () Bool)

(assert (=> b!590590 m!568999))

(declare-fun m!569001 () Bool)

(assert (=> b!590591 m!569001))

(declare-fun m!569003 () Bool)

(assert (=> d!86009 m!569003))

(declare-fun m!569005 () Bool)

(assert (=> d!86009 m!569005))

(declare-fun m!569007 () Bool)

(assert (=> d!86009 m!569007))

(declare-fun m!569009 () Bool)

(assert (=> d!86009 m!569009))

(declare-fun m!569011 () Bool)

(assert (=> d!86009 m!569011))

(assert (=> d!86009 m!568911))

(assert (=> d!86009 m!569007))

(assert (=> b!590493 d!86009))

(declare-fun d!86019 () Bool)

(declare-fun res!377901 () Bool)

(declare-fun e!337194 () Bool)

(assert (=> d!86019 (=> res!377901 e!337194)))

(assert (=> d!86019 (= res!377901 (= (select (arr!17684 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!86019 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!337194)))

(declare-fun b!590603 () Bool)

(declare-fun e!337195 () Bool)

(assert (=> b!590603 (= e!337194 e!337195)))

(declare-fun res!377902 () Bool)

(assert (=> b!590603 (=> (not res!377902) (not e!337195))))

(assert (=> b!590603 (= res!377902 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18048 a!2986)))))

(declare-fun b!590604 () Bool)

(assert (=> b!590604 (= e!337195 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!86019 (not res!377901)) b!590603))

(assert (= (and b!590603 res!377902) b!590604))

(declare-fun m!569013 () Bool)

(assert (=> d!86019 m!569013))

(declare-fun m!569015 () Bool)

(assert (=> b!590604 m!569015))

(assert (=> b!590498 d!86019))

(declare-fun b!590671 () Bool)

(declare-fun e!337235 () SeekEntryResult!6131)

(assert (=> b!590671 (= e!337235 Undefined!6131)))

(declare-fun b!590672 () Bool)

