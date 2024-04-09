; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57620 () Bool)

(assert start!57620)

(declare-fun b!636703 () Bool)

(declare-fun e!364288 () Bool)

(declare-fun e!364294 () Bool)

(assert (=> b!636703 (= e!364288 e!364294)))

(declare-fun res!412005 () Bool)

(assert (=> b!636703 (=> (not res!412005) (not e!364294))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!38222 0))(
  ( (array!38223 (arr!18331 (Array (_ BitVec 32) (_ BitVec 64))) (size!18695 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38222)

(assert (=> b!636703 (= res!412005 (= (select (store (arr!18331 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!294443 () array!38222)

(assert (=> b!636703 (= lt!294443 (array!38223 (store (arr!18331 a!2986) i!1108 k0!1786) (size!18695 a!2986)))))

(declare-fun b!636704 () Bool)

(declare-fun res!412017 () Bool)

(declare-fun e!364293 () Bool)

(assert (=> b!636704 (=> (not res!412017) (not e!364293))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!636704 (= res!412017 (validKeyInArray!0 k0!1786))))

(declare-fun b!636705 () Bool)

(declare-fun res!412000 () Bool)

(assert (=> b!636705 (=> (not res!412000) (not e!364288))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38222 (_ BitVec 32)) Bool)

(assert (=> b!636705 (= res!412000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!636706 () Bool)

(declare-datatypes ((Unit!21470 0))(
  ( (Unit!21471) )
))
(declare-fun e!364298 () Unit!21470)

(declare-fun Unit!21472 () Unit!21470)

(assert (=> b!636706 (= e!364298 Unit!21472)))

(assert (=> b!636706 false))

(declare-fun b!636707 () Bool)

(declare-fun e!364296 () Bool)

(declare-fun e!364289 () Bool)

(assert (=> b!636707 (= e!364296 (not e!364289))))

(declare-fun res!412006 () Bool)

(assert (=> b!636707 (=> res!412006 e!364289)))

(declare-datatypes ((SeekEntryResult!6778 0))(
  ( (MissingZero!6778 (index!29422 (_ BitVec 32))) (Found!6778 (index!29423 (_ BitVec 32))) (Intermediate!6778 (undefined!7590 Bool) (index!29424 (_ BitVec 32)) (x!58204 (_ BitVec 32))) (Undefined!6778) (MissingVacant!6778 (index!29425 (_ BitVec 32))) )
))
(declare-fun lt!294444 () SeekEntryResult!6778)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!636707 (= res!412006 (not (= lt!294444 (Found!6778 index!984))))))

(declare-fun lt!294441 () Unit!21470)

(assert (=> b!636707 (= lt!294441 e!364298)))

(declare-fun c!72719 () Bool)

(assert (=> b!636707 (= c!72719 (= lt!294444 Undefined!6778))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!294446 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38222 (_ BitVec 32)) SeekEntryResult!6778)

(assert (=> b!636707 (= lt!294444 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!294446 lt!294443 mask!3053))))

(declare-fun e!364295 () Bool)

(assert (=> b!636707 e!364295))

(declare-fun res!412013 () Bool)

(assert (=> b!636707 (=> (not res!412013) (not e!364295))))

(declare-fun lt!294445 () SeekEntryResult!6778)

(declare-fun lt!294440 () (_ BitVec 32))

(assert (=> b!636707 (= res!412013 (= lt!294445 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294440 vacantSpotIndex!68 lt!294446 lt!294443 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!636707 (= lt!294445 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294440 vacantSpotIndex!68 (select (arr!18331 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!636707 (= lt!294446 (select (store (arr!18331 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!294442 () Unit!21470)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38222 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21470)

(assert (=> b!636707 (= lt!294442 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294440 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!636707 (= lt!294440 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!636708 () Bool)

(declare-fun e!364297 () Bool)

(declare-fun arrayContainsKey!0 (array!38222 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!636708 (= e!364297 (arrayContainsKey!0 lt!294443 (select (arr!18331 a!2986) j!136) index!984))))

(declare-fun res!412004 () Bool)

(assert (=> start!57620 (=> (not res!412004) (not e!364293))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57620 (= res!412004 (validMask!0 mask!3053))))

(assert (=> start!57620 e!364293))

(assert (=> start!57620 true))

(declare-fun array_inv!14105 (array!38222) Bool)

(assert (=> start!57620 (array_inv!14105 a!2986)))

(declare-fun b!636709 () Bool)

(declare-fun res!412015 () Bool)

(assert (=> b!636709 (=> (not res!412015) (not e!364288))))

(assert (=> b!636709 (= res!412015 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18331 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!636710 () Bool)

(declare-fun res!412016 () Bool)

(declare-fun e!364299 () Bool)

(assert (=> b!636710 (=> res!412016 e!364299)))

(declare-datatypes ((List!12425 0))(
  ( (Nil!12422) (Cons!12421 (h!13466 (_ BitVec 64)) (t!18661 List!12425)) )
))
(declare-fun contains!3108 (List!12425 (_ BitVec 64)) Bool)

(assert (=> b!636710 (= res!412016 (contains!3108 Nil!12422 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!636711 () Bool)

(assert (=> b!636711 (= e!364299 (not (contains!3108 Nil!12422 k0!1786)))))

(declare-fun b!636712 () Bool)

(declare-fun res!411999 () Bool)

(assert (=> b!636712 (=> res!411999 e!364299)))

(declare-fun noDuplicate!383 (List!12425) Bool)

(assert (=> b!636712 (= res!411999 (not (noDuplicate!383 Nil!12422)))))

(declare-fun b!636713 () Bool)

(declare-fun res!412009 () Bool)

(assert (=> b!636713 (=> (not res!412009) (not e!364288))))

(declare-fun arrayNoDuplicates!0 (array!38222 (_ BitVec 32) List!12425) Bool)

(assert (=> b!636713 (= res!412009 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12422))))

(declare-fun b!636714 () Bool)

(assert (=> b!636714 (= e!364293 e!364288)))

(declare-fun res!412019 () Bool)

(assert (=> b!636714 (=> (not res!412019) (not e!364288))))

(declare-fun lt!294450 () SeekEntryResult!6778)

(assert (=> b!636714 (= res!412019 (or (= lt!294450 (MissingZero!6778 i!1108)) (= lt!294450 (MissingVacant!6778 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38222 (_ BitVec 32)) SeekEntryResult!6778)

(assert (=> b!636714 (= lt!294450 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!636715 () Bool)

(declare-fun e!364291 () Bool)

(assert (=> b!636715 (= e!364289 e!364291)))

(declare-fun res!412007 () Bool)

(assert (=> b!636715 (=> res!412007 e!364291)))

(declare-fun lt!294448 () (_ BitVec 64))

(assert (=> b!636715 (= res!412007 (or (not (= (select (arr!18331 a!2986) j!136) lt!294446)) (not (= (select (arr!18331 a!2986) j!136) lt!294448)) (bvsge j!136 index!984)))))

(declare-fun e!364292 () Bool)

(assert (=> b!636715 e!364292))

(declare-fun res!412003 () Bool)

(assert (=> b!636715 (=> (not res!412003) (not e!364292))))

(assert (=> b!636715 (= res!412003 (= lt!294448 (select (arr!18331 a!2986) j!136)))))

(assert (=> b!636715 (= lt!294448 (select (store (arr!18331 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!636716 () Bool)

(declare-fun res!412011 () Bool)

(assert (=> b!636716 (=> (not res!412011) (not e!364293))))

(assert (=> b!636716 (= res!412011 (validKeyInArray!0 (select (arr!18331 a!2986) j!136)))))

(declare-fun b!636717 () Bool)

(declare-fun lt!294447 () SeekEntryResult!6778)

(assert (=> b!636717 (= e!364295 (= lt!294447 lt!294445))))

(declare-fun b!636718 () Bool)

(assert (=> b!636718 (= e!364294 e!364296)))

(declare-fun res!412012 () Bool)

(assert (=> b!636718 (=> (not res!412012) (not e!364296))))

(assert (=> b!636718 (= res!412012 (and (= lt!294447 (Found!6778 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18331 a!2986) index!984) (select (arr!18331 a!2986) j!136))) (not (= (select (arr!18331 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!636718 (= lt!294447 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18331 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!636719 () Bool)

(declare-fun res!412010 () Bool)

(assert (=> b!636719 (=> (not res!412010) (not e!364293))))

(assert (=> b!636719 (= res!412010 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!636720 () Bool)

(declare-fun res!412008 () Bool)

(assert (=> b!636720 (=> (not res!412008) (not e!364293))))

(assert (=> b!636720 (= res!412008 (and (= (size!18695 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18695 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18695 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!636721 () Bool)

(declare-fun res!412018 () Bool)

(assert (=> b!636721 (=> res!412018 e!364299)))

(assert (=> b!636721 (= res!412018 (contains!3108 Nil!12422 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!636722 () Bool)

(declare-fun e!364290 () Bool)

(assert (=> b!636722 (= e!364290 e!364297)))

(declare-fun res!412002 () Bool)

(assert (=> b!636722 (=> (not res!412002) (not e!364297))))

(assert (=> b!636722 (= res!412002 (arrayContainsKey!0 lt!294443 (select (arr!18331 a!2986) j!136) j!136))))

(declare-fun b!636723 () Bool)

(assert (=> b!636723 (= e!364291 e!364299)))

(declare-fun res!412001 () Bool)

(assert (=> b!636723 (=> res!412001 e!364299)))

(assert (=> b!636723 (= res!412001 (or (bvsge (size!18695 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18695 a!2986))))))

(assert (=> b!636723 (arrayContainsKey!0 lt!294443 (select (arr!18331 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!294449 () Unit!21470)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38222 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21470)

(assert (=> b!636723 (= lt!294449 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!294443 (select (arr!18331 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!636724 () Bool)

(assert (=> b!636724 (= e!364292 e!364290)))

(declare-fun res!412014 () Bool)

(assert (=> b!636724 (=> res!412014 e!364290)))

(assert (=> b!636724 (= res!412014 (or (not (= (select (arr!18331 a!2986) j!136) lt!294446)) (not (= (select (arr!18331 a!2986) j!136) lt!294448)) (bvsge j!136 index!984)))))

(declare-fun b!636725 () Bool)

(declare-fun Unit!21473 () Unit!21470)

(assert (=> b!636725 (= e!364298 Unit!21473)))

(assert (= (and start!57620 res!412004) b!636720))

(assert (= (and b!636720 res!412008) b!636716))

(assert (= (and b!636716 res!412011) b!636704))

(assert (= (and b!636704 res!412017) b!636719))

(assert (= (and b!636719 res!412010) b!636714))

(assert (= (and b!636714 res!412019) b!636705))

(assert (= (and b!636705 res!412000) b!636713))

(assert (= (and b!636713 res!412009) b!636709))

(assert (= (and b!636709 res!412015) b!636703))

(assert (= (and b!636703 res!412005) b!636718))

(assert (= (and b!636718 res!412012) b!636707))

(assert (= (and b!636707 res!412013) b!636717))

(assert (= (and b!636707 c!72719) b!636706))

(assert (= (and b!636707 (not c!72719)) b!636725))

(assert (= (and b!636707 (not res!412006)) b!636715))

(assert (= (and b!636715 res!412003) b!636724))

(assert (= (and b!636724 (not res!412014)) b!636722))

(assert (= (and b!636722 res!412002) b!636708))

(assert (= (and b!636715 (not res!412007)) b!636723))

(assert (= (and b!636723 (not res!412001)) b!636712))

(assert (= (and b!636712 (not res!411999)) b!636721))

(assert (= (and b!636721 (not res!412018)) b!636710))

(assert (= (and b!636710 (not res!412016)) b!636711))

(declare-fun m!610921 () Bool)

(assert (=> b!636716 m!610921))

(assert (=> b!636716 m!610921))

(declare-fun m!610923 () Bool)

(assert (=> b!636716 m!610923))

(declare-fun m!610925 () Bool)

(assert (=> b!636719 m!610925))

(assert (=> b!636708 m!610921))

(assert (=> b!636708 m!610921))

(declare-fun m!610927 () Bool)

(assert (=> b!636708 m!610927))

(declare-fun m!610929 () Bool)

(assert (=> b!636710 m!610929))

(declare-fun m!610931 () Bool)

(assert (=> b!636713 m!610931))

(assert (=> b!636722 m!610921))

(assert (=> b!636722 m!610921))

(declare-fun m!610933 () Bool)

(assert (=> b!636722 m!610933))

(assert (=> b!636724 m!610921))

(declare-fun m!610935 () Bool)

(assert (=> b!636718 m!610935))

(assert (=> b!636718 m!610921))

(assert (=> b!636718 m!610921))

(declare-fun m!610937 () Bool)

(assert (=> b!636718 m!610937))

(declare-fun m!610939 () Bool)

(assert (=> b!636721 m!610939))

(declare-fun m!610941 () Bool)

(assert (=> b!636711 m!610941))

(assert (=> b!636723 m!610921))

(assert (=> b!636723 m!610921))

(declare-fun m!610943 () Bool)

(assert (=> b!636723 m!610943))

(assert (=> b!636723 m!610921))

(declare-fun m!610945 () Bool)

(assert (=> b!636723 m!610945))

(declare-fun m!610947 () Bool)

(assert (=> b!636703 m!610947))

(declare-fun m!610949 () Bool)

(assert (=> b!636703 m!610949))

(declare-fun m!610951 () Bool)

(assert (=> b!636707 m!610951))

(declare-fun m!610953 () Bool)

(assert (=> b!636707 m!610953))

(assert (=> b!636707 m!610921))

(declare-fun m!610955 () Bool)

(assert (=> b!636707 m!610955))

(assert (=> b!636707 m!610921))

(assert (=> b!636707 m!610947))

(declare-fun m!610957 () Bool)

(assert (=> b!636707 m!610957))

(declare-fun m!610959 () Bool)

(assert (=> b!636707 m!610959))

(declare-fun m!610961 () Bool)

(assert (=> b!636707 m!610961))

(declare-fun m!610963 () Bool)

(assert (=> start!57620 m!610963))

(declare-fun m!610965 () Bool)

(assert (=> start!57620 m!610965))

(declare-fun m!610967 () Bool)

(assert (=> b!636704 m!610967))

(declare-fun m!610969 () Bool)

(assert (=> b!636705 m!610969))

(assert (=> b!636715 m!610921))

(assert (=> b!636715 m!610947))

(declare-fun m!610971 () Bool)

(assert (=> b!636715 m!610971))

(declare-fun m!610973 () Bool)

(assert (=> b!636709 m!610973))

(declare-fun m!610975 () Bool)

(assert (=> b!636712 m!610975))

(declare-fun m!610977 () Bool)

(assert (=> b!636714 m!610977))

(check-sat (not b!636712) (not b!636722) (not b!636708) (not b!636713) (not b!636704) (not b!636716) (not b!636707) (not b!636705) (not b!636718) (not b!636721) (not start!57620) (not b!636714) (not b!636711) (not b!636719) (not b!636723) (not b!636710))
(check-sat)
(get-model)

(declare-fun d!89943 () Bool)

(declare-fun res!412087 () Bool)

(declare-fun e!364344 () Bool)

(assert (=> d!89943 (=> res!412087 e!364344)))

(assert (=> d!89943 (= res!412087 (= (select (arr!18331 lt!294443) j!136) (select (arr!18331 a!2986) j!136)))))

(assert (=> d!89943 (= (arrayContainsKey!0 lt!294443 (select (arr!18331 a!2986) j!136) j!136) e!364344)))

(declare-fun b!636799 () Bool)

(declare-fun e!364345 () Bool)

(assert (=> b!636799 (= e!364344 e!364345)))

(declare-fun res!412088 () Bool)

(assert (=> b!636799 (=> (not res!412088) (not e!364345))))

(assert (=> b!636799 (= res!412088 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18695 lt!294443)))))

(declare-fun b!636800 () Bool)

(assert (=> b!636800 (= e!364345 (arrayContainsKey!0 lt!294443 (select (arr!18331 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!89943 (not res!412087)) b!636799))

(assert (= (and b!636799 res!412088) b!636800))

(declare-fun m!611037 () Bool)

(assert (=> d!89943 m!611037))

(assert (=> b!636800 m!610921))

(declare-fun m!611039 () Bool)

(assert (=> b!636800 m!611039))

(assert (=> b!636722 d!89943))

(declare-fun d!89945 () Bool)

(declare-fun lt!294486 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!245 (List!12425) (InoxSet (_ BitVec 64)))

(assert (=> d!89945 (= lt!294486 (select (content!245 Nil!12422) k0!1786))))

(declare-fun e!364350 () Bool)

(assert (=> d!89945 (= lt!294486 e!364350)))

(declare-fun res!412093 () Bool)

(assert (=> d!89945 (=> (not res!412093) (not e!364350))))

(get-info :version)

(assert (=> d!89945 (= res!412093 ((_ is Cons!12421) Nil!12422))))

(assert (=> d!89945 (= (contains!3108 Nil!12422 k0!1786) lt!294486)))

(declare-fun b!636805 () Bool)

(declare-fun e!364351 () Bool)

(assert (=> b!636805 (= e!364350 e!364351)))

(declare-fun res!412094 () Bool)

(assert (=> b!636805 (=> res!412094 e!364351)))

(assert (=> b!636805 (= res!412094 (= (h!13466 Nil!12422) k0!1786))))

(declare-fun b!636806 () Bool)

(assert (=> b!636806 (= e!364351 (contains!3108 (t!18661 Nil!12422) k0!1786))))

(assert (= (and d!89945 res!412093) b!636805))

(assert (= (and b!636805 (not res!412094)) b!636806))

(declare-fun m!611041 () Bool)

(assert (=> d!89945 m!611041))

(declare-fun m!611043 () Bool)

(assert (=> d!89945 m!611043))

(declare-fun m!611045 () Bool)

(assert (=> b!636806 m!611045))

(assert (=> b!636711 d!89945))

(declare-fun d!89947 () Bool)

(declare-fun lt!294487 () Bool)

(assert (=> d!89947 (= lt!294487 (select (content!245 Nil!12422) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!364352 () Bool)

(assert (=> d!89947 (= lt!294487 e!364352)))

(declare-fun res!412095 () Bool)

(assert (=> d!89947 (=> (not res!412095) (not e!364352))))

(assert (=> d!89947 (= res!412095 ((_ is Cons!12421) Nil!12422))))

(assert (=> d!89947 (= (contains!3108 Nil!12422 #b0000000000000000000000000000000000000000000000000000000000000000) lt!294487)))

(declare-fun b!636807 () Bool)

(declare-fun e!364353 () Bool)

(assert (=> b!636807 (= e!364352 e!364353)))

(declare-fun res!412096 () Bool)

(assert (=> b!636807 (=> res!412096 e!364353)))

(assert (=> b!636807 (= res!412096 (= (h!13466 Nil!12422) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!636808 () Bool)

(assert (=> b!636808 (= e!364353 (contains!3108 (t!18661 Nil!12422) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!89947 res!412095) b!636807))

(assert (= (and b!636807 (not res!412096)) b!636808))

(assert (=> d!89947 m!611041))

(declare-fun m!611047 () Bool)

(assert (=> d!89947 m!611047))

(declare-fun m!611049 () Bool)

(assert (=> b!636808 m!611049))

(assert (=> b!636721 d!89947))

(declare-fun d!89949 () Bool)

(declare-fun res!412097 () Bool)

(declare-fun e!364354 () Bool)

(assert (=> d!89949 (=> res!412097 e!364354)))

(assert (=> d!89949 (= res!412097 (= (select (arr!18331 lt!294443) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18331 a!2986) j!136)))))

(assert (=> d!89949 (= (arrayContainsKey!0 lt!294443 (select (arr!18331 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!364354)))

(declare-fun b!636809 () Bool)

(declare-fun e!364355 () Bool)

(assert (=> b!636809 (= e!364354 e!364355)))

(declare-fun res!412098 () Bool)

(assert (=> b!636809 (=> (not res!412098) (not e!364355))))

(assert (=> b!636809 (= res!412098 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18695 lt!294443)))))

(declare-fun b!636810 () Bool)

(assert (=> b!636810 (= e!364355 (arrayContainsKey!0 lt!294443 (select (arr!18331 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!89949 (not res!412097)) b!636809))

(assert (= (and b!636809 res!412098) b!636810))

(declare-fun m!611051 () Bool)

(assert (=> d!89949 m!611051))

(assert (=> b!636810 m!610921))

(declare-fun m!611053 () Bool)

(assert (=> b!636810 m!611053))

(assert (=> b!636723 d!89949))

(declare-fun d!89951 () Bool)

(assert (=> d!89951 (arrayContainsKey!0 lt!294443 (select (arr!18331 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!294490 () Unit!21470)

(declare-fun choose!114 (array!38222 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21470)

(assert (=> d!89951 (= lt!294490 (choose!114 lt!294443 (select (arr!18331 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!89951 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!89951 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!294443 (select (arr!18331 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!294490)))

(declare-fun bs!19118 () Bool)

(assert (= bs!19118 d!89951))

(assert (=> bs!19118 m!610921))

(assert (=> bs!19118 m!610943))

(assert (=> bs!19118 m!610921))

(declare-fun m!611055 () Bool)

(assert (=> bs!19118 m!611055))

(assert (=> b!636723 d!89951))

(declare-fun d!89953 () Bool)

(declare-fun res!412103 () Bool)

(declare-fun e!364360 () Bool)

(assert (=> d!89953 (=> res!412103 e!364360)))

(assert (=> d!89953 (= res!412103 ((_ is Nil!12422) Nil!12422))))

(assert (=> d!89953 (= (noDuplicate!383 Nil!12422) e!364360)))

(declare-fun b!636815 () Bool)

(declare-fun e!364361 () Bool)

(assert (=> b!636815 (= e!364360 e!364361)))

(declare-fun res!412104 () Bool)

(assert (=> b!636815 (=> (not res!412104) (not e!364361))))

(assert (=> b!636815 (= res!412104 (not (contains!3108 (t!18661 Nil!12422) (h!13466 Nil!12422))))))

(declare-fun b!636816 () Bool)

(assert (=> b!636816 (= e!364361 (noDuplicate!383 (t!18661 Nil!12422)))))

(assert (= (and d!89953 (not res!412103)) b!636815))

(assert (= (and b!636815 res!412104) b!636816))

(declare-fun m!611057 () Bool)

(assert (=> b!636815 m!611057))

(declare-fun m!611059 () Bool)

(assert (=> b!636816 m!611059))

(assert (=> b!636712 d!89953))

(declare-fun d!89955 () Bool)

(declare-fun res!412105 () Bool)

(declare-fun e!364362 () Bool)

(assert (=> d!89955 (=> res!412105 e!364362)))

(assert (=> d!89955 (= res!412105 (= (select (arr!18331 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!89955 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!364362)))

(declare-fun b!636817 () Bool)

(declare-fun e!364363 () Bool)

(assert (=> b!636817 (= e!364362 e!364363)))

(declare-fun res!412106 () Bool)

(assert (=> b!636817 (=> (not res!412106) (not e!364363))))

(assert (=> b!636817 (= res!412106 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18695 a!2986)))))

(declare-fun b!636818 () Bool)

(assert (=> b!636818 (= e!364363 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!89955 (not res!412105)) b!636817))

(assert (= (and b!636817 res!412106) b!636818))

(declare-fun m!611061 () Bool)

(assert (=> d!89955 m!611061))

(declare-fun m!611063 () Bool)

(assert (=> b!636818 m!611063))

(assert (=> b!636719 d!89955))

(declare-fun d!89957 () Bool)

(declare-fun res!412107 () Bool)

(declare-fun e!364364 () Bool)

(assert (=> d!89957 (=> res!412107 e!364364)))

(assert (=> d!89957 (= res!412107 (= (select (arr!18331 lt!294443) index!984) (select (arr!18331 a!2986) j!136)))))

(assert (=> d!89957 (= (arrayContainsKey!0 lt!294443 (select (arr!18331 a!2986) j!136) index!984) e!364364)))

(declare-fun b!636819 () Bool)

(declare-fun e!364365 () Bool)

(assert (=> b!636819 (= e!364364 e!364365)))

(declare-fun res!412108 () Bool)

(assert (=> b!636819 (=> (not res!412108) (not e!364365))))

(assert (=> b!636819 (= res!412108 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18695 lt!294443)))))

(declare-fun b!636820 () Bool)

(assert (=> b!636820 (= e!364365 (arrayContainsKey!0 lt!294443 (select (arr!18331 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!89957 (not res!412107)) b!636819))

(assert (= (and b!636819 res!412108) b!636820))

(declare-fun m!611065 () Bool)

(assert (=> d!89957 m!611065))

(assert (=> b!636820 m!610921))

(declare-fun m!611067 () Bool)

(assert (=> b!636820 m!611067))

(assert (=> b!636708 d!89957))

(declare-fun d!89959 () Bool)

(declare-fun lt!294491 () Bool)

(assert (=> d!89959 (= lt!294491 (select (content!245 Nil!12422) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!364366 () Bool)

(assert (=> d!89959 (= lt!294491 e!364366)))

(declare-fun res!412109 () Bool)

(assert (=> d!89959 (=> (not res!412109) (not e!364366))))

(assert (=> d!89959 (= res!412109 ((_ is Cons!12421) Nil!12422))))

(assert (=> d!89959 (= (contains!3108 Nil!12422 #b1000000000000000000000000000000000000000000000000000000000000000) lt!294491)))

(declare-fun b!636821 () Bool)

(declare-fun e!364367 () Bool)

(assert (=> b!636821 (= e!364366 e!364367)))

(declare-fun res!412110 () Bool)

(assert (=> b!636821 (=> res!412110 e!364367)))

(assert (=> b!636821 (= res!412110 (= (h!13466 Nil!12422) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!636822 () Bool)

(assert (=> b!636822 (= e!364367 (contains!3108 (t!18661 Nil!12422) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!89959 res!412109) b!636821))

(assert (= (and b!636821 (not res!412110)) b!636822))

(assert (=> d!89959 m!611041))

(declare-fun m!611069 () Bool)

(assert (=> d!89959 m!611069))

(declare-fun m!611071 () Bool)

(assert (=> b!636822 m!611071))

(assert (=> b!636710 d!89959))

(declare-fun d!89961 () Bool)

(assert (=> d!89961 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!57620 d!89961))

(declare-fun d!89963 () Bool)

(assert (=> d!89963 (= (array_inv!14105 a!2986) (bvsge (size!18695 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!57620 d!89963))

(declare-fun d!89965 () Bool)

(assert (=> d!89965 (= (validKeyInArray!0 (select (arr!18331 a!2986) j!136)) (and (not (= (select (arr!18331 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18331 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!636716 d!89965))

(declare-fun d!89967 () Bool)

(declare-fun res!412115 () Bool)

(declare-fun e!364374 () Bool)

(assert (=> d!89967 (=> res!412115 e!364374)))

(assert (=> d!89967 (= res!412115 (bvsge #b00000000000000000000000000000000 (size!18695 a!2986)))))

(assert (=> d!89967 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!364374)))

(declare-fun b!636831 () Bool)

(declare-fun e!364375 () Bool)

(declare-fun e!364376 () Bool)

(assert (=> b!636831 (= e!364375 e!364376)))

(declare-fun lt!294498 () (_ BitVec 64))

(assert (=> b!636831 (= lt!294498 (select (arr!18331 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!294500 () Unit!21470)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38222 (_ BitVec 64) (_ BitVec 32)) Unit!21470)

(assert (=> b!636831 (= lt!294500 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!294498 #b00000000000000000000000000000000))))

(assert (=> b!636831 (arrayContainsKey!0 a!2986 lt!294498 #b00000000000000000000000000000000)))

(declare-fun lt!294499 () Unit!21470)

(assert (=> b!636831 (= lt!294499 lt!294500)))

(declare-fun res!412116 () Bool)

(assert (=> b!636831 (= res!412116 (= (seekEntryOrOpen!0 (select (arr!18331 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6778 #b00000000000000000000000000000000)))))

(assert (=> b!636831 (=> (not res!412116) (not e!364376))))

(declare-fun b!636832 () Bool)

(assert (=> b!636832 (= e!364374 e!364375)))

(declare-fun c!72725 () Bool)

(assert (=> b!636832 (= c!72725 (validKeyInArray!0 (select (arr!18331 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33446 () Bool)

(declare-fun call!33449 () Bool)

(assert (=> bm!33446 (= call!33449 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!636833 () Bool)

(assert (=> b!636833 (= e!364375 call!33449)))

(declare-fun b!636834 () Bool)

(assert (=> b!636834 (= e!364376 call!33449)))

(assert (= (and d!89967 (not res!412115)) b!636832))

(assert (= (and b!636832 c!72725) b!636831))

(assert (= (and b!636832 (not c!72725)) b!636833))

(assert (= (and b!636831 res!412116) b!636834))

(assert (= (or b!636834 b!636833) bm!33446))

(assert (=> b!636831 m!611061))

(declare-fun m!611073 () Bool)

(assert (=> b!636831 m!611073))

(declare-fun m!611075 () Bool)

(assert (=> b!636831 m!611075))

(assert (=> b!636831 m!611061))

(declare-fun m!611077 () Bool)

(assert (=> b!636831 m!611077))

(assert (=> b!636832 m!611061))

(assert (=> b!636832 m!611061))

(declare-fun m!611079 () Bool)

(assert (=> b!636832 m!611079))

(declare-fun m!611081 () Bool)

(assert (=> bm!33446 m!611081))

(assert (=> b!636705 d!89967))

(declare-fun lt!294519 () SeekEntryResult!6778)

(declare-fun d!89969 () Bool)

(assert (=> d!89969 (and (or ((_ is Undefined!6778) lt!294519) (not ((_ is Found!6778) lt!294519)) (and (bvsge (index!29423 lt!294519) #b00000000000000000000000000000000) (bvslt (index!29423 lt!294519) (size!18695 a!2986)))) (or ((_ is Undefined!6778) lt!294519) ((_ is Found!6778) lt!294519) (not ((_ is MissingVacant!6778) lt!294519)) (not (= (index!29425 lt!294519) vacantSpotIndex!68)) (and (bvsge (index!29425 lt!294519) #b00000000000000000000000000000000) (bvslt (index!29425 lt!294519) (size!18695 a!2986)))) (or ((_ is Undefined!6778) lt!294519) (ite ((_ is Found!6778) lt!294519) (= (select (arr!18331 a!2986) (index!29423 lt!294519)) (select (arr!18331 a!2986) j!136)) (and ((_ is MissingVacant!6778) lt!294519) (= (index!29425 lt!294519) vacantSpotIndex!68) (= (select (arr!18331 a!2986) (index!29425 lt!294519)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!364421 () SeekEntryResult!6778)

(assert (=> d!89969 (= lt!294519 e!364421)))

(declare-fun c!72744 () Bool)

(assert (=> d!89969 (= c!72744 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!294518 () (_ BitVec 64))

(assert (=> d!89969 (= lt!294518 (select (arr!18331 a!2986) index!984))))

(assert (=> d!89969 (validMask!0 mask!3053)))

(assert (=> d!89969 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18331 a!2986) j!136) a!2986 mask!3053) lt!294519)))

(declare-fun b!636894 () Bool)

(declare-fun c!72743 () Bool)

(assert (=> b!636894 (= c!72743 (= lt!294518 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!364420 () SeekEntryResult!6778)

(declare-fun e!364419 () SeekEntryResult!6778)

(assert (=> b!636894 (= e!364420 e!364419)))

(declare-fun b!636895 () Bool)

(assert (=> b!636895 (= e!364420 (Found!6778 index!984))))

(declare-fun b!636896 () Bool)

(assert (=> b!636896 (= e!364419 (MissingVacant!6778 vacantSpotIndex!68))))

(declare-fun b!636897 () Bool)

(assert (=> b!636897 (= e!364419 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18331 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!636898 () Bool)

(assert (=> b!636898 (= e!364421 e!364420)))

(declare-fun c!72745 () Bool)

(assert (=> b!636898 (= c!72745 (= lt!294518 (select (arr!18331 a!2986) j!136)))))

(declare-fun b!636899 () Bool)

(assert (=> b!636899 (= e!364421 Undefined!6778)))

(assert (= (and d!89969 c!72744) b!636899))

(assert (= (and d!89969 (not c!72744)) b!636898))

(assert (= (and b!636898 c!72745) b!636895))

(assert (= (and b!636898 (not c!72745)) b!636894))

(assert (= (and b!636894 c!72743) b!636896))

(assert (= (and b!636894 (not c!72743)) b!636897))

(declare-fun m!611099 () Bool)

(assert (=> d!89969 m!611099))

(declare-fun m!611101 () Bool)

(assert (=> d!89969 m!611101))

(assert (=> d!89969 m!610935))

(assert (=> d!89969 m!610963))

(assert (=> b!636897 m!610951))

(assert (=> b!636897 m!610951))

(assert (=> b!636897 m!610921))

(declare-fun m!611103 () Bool)

(assert (=> b!636897 m!611103))

(assert (=> b!636718 d!89969))

(declare-fun d!89981 () Bool)

(declare-fun lt!294529 () (_ BitVec 32))

(assert (=> d!89981 (and (bvsge lt!294529 #b00000000000000000000000000000000) (bvslt lt!294529 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89981 (= lt!294529 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!89981 (validMask!0 mask!3053)))

(assert (=> d!89981 (= (nextIndex!0 index!984 x!910 mask!3053) lt!294529)))

(declare-fun bs!19119 () Bool)

(assert (= bs!19119 d!89981))

(declare-fun m!611125 () Bool)

(assert (=> bs!19119 m!611125))

(assert (=> bs!19119 m!610963))

(assert (=> b!636707 d!89981))

(declare-fun lt!294531 () SeekEntryResult!6778)

(declare-fun d!89987 () Bool)

(assert (=> d!89987 (and (or ((_ is Undefined!6778) lt!294531) (not ((_ is Found!6778) lt!294531)) (and (bvsge (index!29423 lt!294531) #b00000000000000000000000000000000) (bvslt (index!29423 lt!294531) (size!18695 lt!294443)))) (or ((_ is Undefined!6778) lt!294531) ((_ is Found!6778) lt!294531) (not ((_ is MissingVacant!6778) lt!294531)) (not (= (index!29425 lt!294531) vacantSpotIndex!68)) (and (bvsge (index!29425 lt!294531) #b00000000000000000000000000000000) (bvslt (index!29425 lt!294531) (size!18695 lt!294443)))) (or ((_ is Undefined!6778) lt!294531) (ite ((_ is Found!6778) lt!294531) (= (select (arr!18331 lt!294443) (index!29423 lt!294531)) lt!294446) (and ((_ is MissingVacant!6778) lt!294531) (= (index!29425 lt!294531) vacantSpotIndex!68) (= (select (arr!18331 lt!294443) (index!29425 lt!294531)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!364433 () SeekEntryResult!6778)

(assert (=> d!89987 (= lt!294531 e!364433)))

(declare-fun c!72754 () Bool)

(assert (=> d!89987 (= c!72754 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!294530 () (_ BitVec 64))

(assert (=> d!89987 (= lt!294530 (select (arr!18331 lt!294443) index!984))))

(assert (=> d!89987 (validMask!0 mask!3053)))

(assert (=> d!89987 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!294446 lt!294443 mask!3053) lt!294531)))

(declare-fun b!636916 () Bool)

(declare-fun c!72753 () Bool)

(assert (=> b!636916 (= c!72753 (= lt!294530 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!364432 () SeekEntryResult!6778)

(declare-fun e!364431 () SeekEntryResult!6778)

(assert (=> b!636916 (= e!364432 e!364431)))

(declare-fun b!636917 () Bool)

(assert (=> b!636917 (= e!364432 (Found!6778 index!984))))

(declare-fun b!636918 () Bool)

(assert (=> b!636918 (= e!364431 (MissingVacant!6778 vacantSpotIndex!68))))

(declare-fun b!636919 () Bool)

(assert (=> b!636919 (= e!364431 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!294446 lt!294443 mask!3053))))

(declare-fun b!636920 () Bool)

(assert (=> b!636920 (= e!364433 e!364432)))

(declare-fun c!72755 () Bool)

(assert (=> b!636920 (= c!72755 (= lt!294530 lt!294446))))

(declare-fun b!636921 () Bool)

(assert (=> b!636921 (= e!364433 Undefined!6778)))

(assert (= (and d!89987 c!72754) b!636921))

(assert (= (and d!89987 (not c!72754)) b!636920))

(assert (= (and b!636920 c!72755) b!636917))

(assert (= (and b!636920 (not c!72755)) b!636916))

(assert (= (and b!636916 c!72753) b!636918))

(assert (= (and b!636916 (not c!72753)) b!636919))

(declare-fun m!611131 () Bool)

(assert (=> d!89987 m!611131))

(declare-fun m!611133 () Bool)

(assert (=> d!89987 m!611133))

(assert (=> d!89987 m!611065))

(assert (=> d!89987 m!610963))

(assert (=> b!636919 m!610951))

(assert (=> b!636919 m!610951))

(declare-fun m!611141 () Bool)

(assert (=> b!636919 m!611141))

(assert (=> b!636707 d!89987))

(declare-fun lt!294535 () SeekEntryResult!6778)

(declare-fun d!89991 () Bool)

(assert (=> d!89991 (and (or ((_ is Undefined!6778) lt!294535) (not ((_ is Found!6778) lt!294535)) (and (bvsge (index!29423 lt!294535) #b00000000000000000000000000000000) (bvslt (index!29423 lt!294535) (size!18695 a!2986)))) (or ((_ is Undefined!6778) lt!294535) ((_ is Found!6778) lt!294535) (not ((_ is MissingVacant!6778) lt!294535)) (not (= (index!29425 lt!294535) vacantSpotIndex!68)) (and (bvsge (index!29425 lt!294535) #b00000000000000000000000000000000) (bvslt (index!29425 lt!294535) (size!18695 a!2986)))) (or ((_ is Undefined!6778) lt!294535) (ite ((_ is Found!6778) lt!294535) (= (select (arr!18331 a!2986) (index!29423 lt!294535)) (select (arr!18331 a!2986) j!136)) (and ((_ is MissingVacant!6778) lt!294535) (= (index!29425 lt!294535) vacantSpotIndex!68) (= (select (arr!18331 a!2986) (index!29425 lt!294535)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!364439 () SeekEntryResult!6778)

(assert (=> d!89991 (= lt!294535 e!364439)))

(declare-fun c!72760 () Bool)

(assert (=> d!89991 (= c!72760 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!294534 () (_ BitVec 64))

(assert (=> d!89991 (= lt!294534 (select (arr!18331 a!2986) lt!294440))))

(assert (=> d!89991 (validMask!0 mask!3053)))

(assert (=> d!89991 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294440 vacantSpotIndex!68 (select (arr!18331 a!2986) j!136) a!2986 mask!3053) lt!294535)))

(declare-fun b!636928 () Bool)

(declare-fun c!72759 () Bool)

(assert (=> b!636928 (= c!72759 (= lt!294534 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!364438 () SeekEntryResult!6778)

(declare-fun e!364437 () SeekEntryResult!6778)

(assert (=> b!636928 (= e!364438 e!364437)))

(declare-fun b!636929 () Bool)

(assert (=> b!636929 (= e!364438 (Found!6778 lt!294440))))

(declare-fun b!636930 () Bool)

(assert (=> b!636930 (= e!364437 (MissingVacant!6778 vacantSpotIndex!68))))

(declare-fun b!636931 () Bool)

(assert (=> b!636931 (= e!364437 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!294440 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18331 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!636932 () Bool)

(assert (=> b!636932 (= e!364439 e!364438)))

(declare-fun c!72761 () Bool)

(assert (=> b!636932 (= c!72761 (= lt!294534 (select (arr!18331 a!2986) j!136)))))

(declare-fun b!636933 () Bool)

(assert (=> b!636933 (= e!364439 Undefined!6778)))

(assert (= (and d!89991 c!72760) b!636933))

(assert (= (and d!89991 (not c!72760)) b!636932))

(assert (= (and b!636932 c!72761) b!636929))

(assert (= (and b!636932 (not c!72761)) b!636928))

(assert (= (and b!636928 c!72759) b!636930))

(assert (= (and b!636928 (not c!72759)) b!636931))

(declare-fun m!611145 () Bool)

(assert (=> d!89991 m!611145))

(declare-fun m!611147 () Bool)

(assert (=> d!89991 m!611147))

(declare-fun m!611149 () Bool)

(assert (=> d!89991 m!611149))

(assert (=> d!89991 m!610963))

(declare-fun m!611151 () Bool)

(assert (=> b!636931 m!611151))

(assert (=> b!636931 m!611151))

(assert (=> b!636931 m!610921))

(declare-fun m!611153 () Bool)

(assert (=> b!636931 m!611153))

(assert (=> b!636707 d!89991))

(declare-fun d!89995 () Bool)

(declare-fun lt!294537 () SeekEntryResult!6778)

(assert (=> d!89995 (and (or ((_ is Undefined!6778) lt!294537) (not ((_ is Found!6778) lt!294537)) (and (bvsge (index!29423 lt!294537) #b00000000000000000000000000000000) (bvslt (index!29423 lt!294537) (size!18695 lt!294443)))) (or ((_ is Undefined!6778) lt!294537) ((_ is Found!6778) lt!294537) (not ((_ is MissingVacant!6778) lt!294537)) (not (= (index!29425 lt!294537) vacantSpotIndex!68)) (and (bvsge (index!29425 lt!294537) #b00000000000000000000000000000000) (bvslt (index!29425 lt!294537) (size!18695 lt!294443)))) (or ((_ is Undefined!6778) lt!294537) (ite ((_ is Found!6778) lt!294537) (= (select (arr!18331 lt!294443) (index!29423 lt!294537)) lt!294446) (and ((_ is MissingVacant!6778) lt!294537) (= (index!29425 lt!294537) vacantSpotIndex!68) (= (select (arr!18331 lt!294443) (index!29425 lt!294537)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!364442 () SeekEntryResult!6778)

(assert (=> d!89995 (= lt!294537 e!364442)))

(declare-fun c!72763 () Bool)

(assert (=> d!89995 (= c!72763 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!294536 () (_ BitVec 64))

(assert (=> d!89995 (= lt!294536 (select (arr!18331 lt!294443) lt!294440))))

(assert (=> d!89995 (validMask!0 mask!3053)))

(assert (=> d!89995 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294440 vacantSpotIndex!68 lt!294446 lt!294443 mask!3053) lt!294537)))

(declare-fun b!636934 () Bool)

(declare-fun c!72762 () Bool)

(assert (=> b!636934 (= c!72762 (= lt!294536 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!364441 () SeekEntryResult!6778)

(declare-fun e!364440 () SeekEntryResult!6778)

(assert (=> b!636934 (= e!364441 e!364440)))

(declare-fun b!636935 () Bool)

(assert (=> b!636935 (= e!364441 (Found!6778 lt!294440))))

(declare-fun b!636936 () Bool)

(assert (=> b!636936 (= e!364440 (MissingVacant!6778 vacantSpotIndex!68))))

(declare-fun b!636937 () Bool)

(assert (=> b!636937 (= e!364440 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!294440 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!294446 lt!294443 mask!3053))))

(declare-fun b!636938 () Bool)

(assert (=> b!636938 (= e!364442 e!364441)))

(declare-fun c!72764 () Bool)

(assert (=> b!636938 (= c!72764 (= lt!294536 lt!294446))))

(declare-fun b!636939 () Bool)

(assert (=> b!636939 (= e!364442 Undefined!6778)))

(assert (= (and d!89995 c!72763) b!636939))

(assert (= (and d!89995 (not c!72763)) b!636938))

(assert (= (and b!636938 c!72764) b!636935))

(assert (= (and b!636938 (not c!72764)) b!636934))

(assert (= (and b!636934 c!72762) b!636936))

(assert (= (and b!636934 (not c!72762)) b!636937))

(declare-fun m!611155 () Bool)

(assert (=> d!89995 m!611155))

(declare-fun m!611157 () Bool)

(assert (=> d!89995 m!611157))

(declare-fun m!611159 () Bool)

(assert (=> d!89995 m!611159))

(assert (=> d!89995 m!610963))

(assert (=> b!636937 m!611151))

(assert (=> b!636937 m!611151))

(declare-fun m!611161 () Bool)

(assert (=> b!636937 m!611161))

(assert (=> b!636707 d!89995))

(declare-fun d!89997 () Bool)

(declare-fun e!364463 () Bool)

(assert (=> d!89997 e!364463))

(declare-fun res!412152 () Bool)

(assert (=> d!89997 (=> (not res!412152) (not e!364463))))

(assert (=> d!89997 (= res!412152 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18695 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18695 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18695 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18695 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18695 a!2986))))))

(declare-fun lt!294558 () Unit!21470)

(declare-fun choose!9 (array!38222 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21470)

(assert (=> d!89997 (= lt!294558 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294440 vacantSpotIndex!68 mask!3053))))

(assert (=> d!89997 (validMask!0 mask!3053)))

(assert (=> d!89997 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294440 vacantSpotIndex!68 mask!3053) lt!294558)))

(declare-fun b!636972 () Bool)

(assert (=> b!636972 (= e!364463 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294440 vacantSpotIndex!68 (select (arr!18331 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294440 vacantSpotIndex!68 (select (store (arr!18331 a!2986) i!1108 k0!1786) j!136) (array!38223 (store (arr!18331 a!2986) i!1108 k0!1786) (size!18695 a!2986)) mask!3053)))))

(assert (= (and d!89997 res!412152) b!636972))

(declare-fun m!611195 () Bool)

(assert (=> d!89997 m!611195))

(assert (=> d!89997 m!610963))

(assert (=> b!636972 m!610921))

(assert (=> b!636972 m!610955))

(assert (=> b!636972 m!610953))

(declare-fun m!611197 () Bool)

(assert (=> b!636972 m!611197))

(assert (=> b!636972 m!610947))

(assert (=> b!636972 m!610953))

(assert (=> b!636972 m!610921))

(assert (=> b!636707 d!89997))

(declare-fun d!90009 () Bool)

(declare-fun lt!294590 () SeekEntryResult!6778)

(assert (=> d!90009 (and (or ((_ is Undefined!6778) lt!294590) (not ((_ is Found!6778) lt!294590)) (and (bvsge (index!29423 lt!294590) #b00000000000000000000000000000000) (bvslt (index!29423 lt!294590) (size!18695 a!2986)))) (or ((_ is Undefined!6778) lt!294590) ((_ is Found!6778) lt!294590) (not ((_ is MissingZero!6778) lt!294590)) (and (bvsge (index!29422 lt!294590) #b00000000000000000000000000000000) (bvslt (index!29422 lt!294590) (size!18695 a!2986)))) (or ((_ is Undefined!6778) lt!294590) ((_ is Found!6778) lt!294590) ((_ is MissingZero!6778) lt!294590) (not ((_ is MissingVacant!6778) lt!294590)) (and (bvsge (index!29425 lt!294590) #b00000000000000000000000000000000) (bvslt (index!29425 lt!294590) (size!18695 a!2986)))) (or ((_ is Undefined!6778) lt!294590) (ite ((_ is Found!6778) lt!294590) (= (select (arr!18331 a!2986) (index!29423 lt!294590)) k0!1786) (ite ((_ is MissingZero!6778) lt!294590) (= (select (arr!18331 a!2986) (index!29422 lt!294590)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6778) lt!294590) (= (select (arr!18331 a!2986) (index!29425 lt!294590)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!364505 () SeekEntryResult!6778)

(assert (=> d!90009 (= lt!294590 e!364505)))

(declare-fun c!72807 () Bool)

(declare-fun lt!294591 () SeekEntryResult!6778)

(assert (=> d!90009 (= c!72807 (and ((_ is Intermediate!6778) lt!294591) (undefined!7590 lt!294591)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38222 (_ BitVec 32)) SeekEntryResult!6778)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!90009 (= lt!294591 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!90009 (validMask!0 mask!3053)))

(assert (=> d!90009 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!294590)))

(declare-fun b!637043 () Bool)

(assert (=> b!637043 (= e!364505 Undefined!6778)))

(declare-fun b!637044 () Bool)

(declare-fun e!364506 () SeekEntryResult!6778)

(assert (=> b!637044 (= e!364505 e!364506)))

(declare-fun lt!294592 () (_ BitVec 64))

(assert (=> b!637044 (= lt!294592 (select (arr!18331 a!2986) (index!29424 lt!294591)))))

(declare-fun c!72809 () Bool)

(assert (=> b!637044 (= c!72809 (= lt!294592 k0!1786))))

(declare-fun b!637045 () Bool)

(declare-fun e!364504 () SeekEntryResult!6778)

(assert (=> b!637045 (= e!364504 (MissingZero!6778 (index!29424 lt!294591)))))

(declare-fun b!637046 () Bool)

(assert (=> b!637046 (= e!364504 (seekKeyOrZeroReturnVacant!0 (x!58204 lt!294591) (index!29424 lt!294591) (index!29424 lt!294591) k0!1786 a!2986 mask!3053))))

(declare-fun b!637047 () Bool)

(declare-fun c!72808 () Bool)

(assert (=> b!637047 (= c!72808 (= lt!294592 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!637047 (= e!364506 e!364504)))

(declare-fun b!637048 () Bool)

(assert (=> b!637048 (= e!364506 (Found!6778 (index!29424 lt!294591)))))

(assert (= (and d!90009 c!72807) b!637043))

(assert (= (and d!90009 (not c!72807)) b!637044))

(assert (= (and b!637044 c!72809) b!637048))

(assert (= (and b!637044 (not c!72809)) b!637047))

(assert (= (and b!637047 c!72808) b!637045))

(assert (= (and b!637047 (not c!72808)) b!637046))

(declare-fun m!611245 () Bool)

(assert (=> d!90009 m!611245))

(declare-fun m!611247 () Bool)

(assert (=> d!90009 m!611247))

(assert (=> d!90009 m!610963))

(declare-fun m!611249 () Bool)

(assert (=> d!90009 m!611249))

(declare-fun m!611251 () Bool)

(assert (=> d!90009 m!611251))

(assert (=> d!90009 m!611249))

(declare-fun m!611253 () Bool)

(assert (=> d!90009 m!611253))

(declare-fun m!611255 () Bool)

(assert (=> b!637044 m!611255))

(declare-fun m!611257 () Bool)

(assert (=> b!637046 m!611257))

(assert (=> b!636714 d!90009))

(declare-fun b!637077 () Bool)

(declare-fun e!364533 () Bool)

(declare-fun call!33458 () Bool)

(assert (=> b!637077 (= e!364533 call!33458)))

(declare-fun b!637078 () Bool)

(declare-fun e!364531 () Bool)

(assert (=> b!637078 (= e!364531 (contains!3108 Nil!12422 (select (arr!18331 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33455 () Bool)

(declare-fun c!72815 () Bool)

(assert (=> bm!33455 (= call!33458 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!72815 (Cons!12421 (select (arr!18331 a!2986) #b00000000000000000000000000000000) Nil!12422) Nil!12422)))))

(declare-fun b!637079 () Bool)

(declare-fun e!364532 () Bool)

(assert (=> b!637079 (= e!364532 e!364533)))

(assert (=> b!637079 (= c!72815 (validKeyInArray!0 (select (arr!18331 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!90027 () Bool)

(declare-fun res!412181 () Bool)

(declare-fun e!364530 () Bool)

(assert (=> d!90027 (=> res!412181 e!364530)))

(assert (=> d!90027 (= res!412181 (bvsge #b00000000000000000000000000000000 (size!18695 a!2986)))))

(assert (=> d!90027 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12422) e!364530)))

(declare-fun b!637080 () Bool)

(assert (=> b!637080 (= e!364533 call!33458)))

(declare-fun b!637081 () Bool)

(assert (=> b!637081 (= e!364530 e!364532)))

(declare-fun res!412183 () Bool)

(assert (=> b!637081 (=> (not res!412183) (not e!364532))))

(assert (=> b!637081 (= res!412183 (not e!364531))))

(declare-fun res!412182 () Bool)

(assert (=> b!637081 (=> (not res!412182) (not e!364531))))

(assert (=> b!637081 (= res!412182 (validKeyInArray!0 (select (arr!18331 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!90027 (not res!412181)) b!637081))

(assert (= (and b!637081 res!412182) b!637078))

(assert (= (and b!637081 res!412183) b!637079))

(assert (= (and b!637079 c!72815) b!637077))

(assert (= (and b!637079 (not c!72815)) b!637080))

(assert (= (or b!637077 b!637080) bm!33455))

(assert (=> b!637078 m!611061))

(assert (=> b!637078 m!611061))

(declare-fun m!611293 () Bool)

(assert (=> b!637078 m!611293))

(assert (=> bm!33455 m!611061))

(declare-fun m!611295 () Bool)

(assert (=> bm!33455 m!611295))

(assert (=> b!637079 m!611061))

(assert (=> b!637079 m!611061))

(assert (=> b!637079 m!611079))

(assert (=> b!637081 m!611061))

(assert (=> b!637081 m!611061))

(assert (=> b!637081 m!611079))

(assert (=> b!636713 d!90027))

(declare-fun d!90049 () Bool)

(assert (=> d!90049 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!636704 d!90049))

(check-sat (not b!636808) (not d!89959) (not b!636897) (not d!89991) (not b!636820) (not b!636919) (not bm!33446) (not b!636937) (not d!89997) (not d!89947) (not d!90009) (not d!89995) (not b!637079) (not b!636831) (not bm!33455) (not b!636931) (not b!636816) (not d!89945) (not b!637081) (not b!636815) (not d!89969) (not b!636818) (not d!89987) (not b!636810) (not b!636972) (not b!636822) (not d!89981) (not b!636832) (not d!89951) (not b!636800) (not b!637078) (not b!636806) (not b!637046))
(check-sat)
