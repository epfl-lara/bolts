; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57536 () Bool)

(assert start!57536)

(declare-fun b!636170 () Bool)

(declare-fun e!363949 () Bool)

(declare-fun e!363937 () Bool)

(assert (=> b!636170 (= e!363949 e!363937)))

(declare-fun res!411691 () Bool)

(assert (=> b!636170 (=> (not res!411691) (not e!363937))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!38213 0))(
  ( (array!38214 (arr!18328 (Array (_ BitVec 32) (_ BitVec 64))) (size!18692 (_ BitVec 32))) )
))
(declare-fun lt!294213 () array!38213)

(declare-fun a!2986 () array!38213)

(declare-fun arrayContainsKey!0 (array!38213 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!636170 (= res!411691 (arrayContainsKey!0 lt!294213 (select (arr!18328 a!2986) j!136) j!136))))

(declare-fun b!636171 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!636171 (= e!363937 (arrayContainsKey!0 lt!294213 (select (arr!18328 a!2986) j!136) index!984))))

(declare-fun b!636172 () Bool)

(declare-fun res!411687 () Bool)

(declare-fun e!363939 () Bool)

(assert (=> b!636172 (=> (not res!411687) (not e!363939))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!636172 (= res!411687 (validKeyInArray!0 (select (arr!18328 a!2986) j!136)))))

(declare-fun b!636173 () Bool)

(declare-fun e!363948 () Bool)

(assert (=> b!636173 (= e!363939 e!363948)))

(declare-fun res!411684 () Bool)

(assert (=> b!636173 (=> (not res!411684) (not e!363948))))

(declare-datatypes ((SeekEntryResult!6775 0))(
  ( (MissingZero!6775 (index!29407 (_ BitVec 32))) (Found!6775 (index!29408 (_ BitVec 32))) (Intermediate!6775 (undefined!7587 Bool) (index!29409 (_ BitVec 32)) (x!58184 (_ BitVec 32))) (Undefined!6775) (MissingVacant!6775 (index!29410 (_ BitVec 32))) )
))
(declare-fun lt!294212 () SeekEntryResult!6775)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!636173 (= res!411684 (or (= lt!294212 (MissingZero!6775 i!1108)) (= lt!294212 (MissingVacant!6775 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38213 (_ BitVec 32)) SeekEntryResult!6775)

(assert (=> b!636173 (= lt!294212 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!636174 () Bool)

(declare-fun res!411682 () Bool)

(assert (=> b!636174 (=> (not res!411682) (not e!363939))))

(assert (=> b!636174 (= res!411682 (and (= (size!18692 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18692 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18692 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!636176 () Bool)

(declare-fun e!363945 () Bool)

(declare-fun e!363940 () Bool)

(assert (=> b!636176 (= e!363945 e!363940)))

(declare-fun res!411683 () Bool)

(assert (=> b!636176 (=> res!411683 e!363940)))

(assert (=> b!636176 (= res!411683 (or (bvsge (size!18692 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18692 a!2986))))))

(assert (=> b!636176 (arrayContainsKey!0 lt!294213 (select (arr!18328 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-datatypes ((Unit!21458 0))(
  ( (Unit!21459) )
))
(declare-fun lt!294217 () Unit!21458)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38213 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21458)

(assert (=> b!636176 (= lt!294217 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!294213 (select (arr!18328 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!636177 () Bool)

(declare-fun e!363942 () Bool)

(declare-fun e!363941 () Bool)

(assert (=> b!636177 (= e!363942 e!363941)))

(declare-fun res!411697 () Bool)

(assert (=> b!636177 (=> (not res!411697) (not e!363941))))

(declare-fun lt!294220 () SeekEntryResult!6775)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!636177 (= res!411697 (and (= lt!294220 (Found!6775 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18328 a!2986) index!984) (select (arr!18328 a!2986) j!136))) (not (= (select (arr!18328 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38213 (_ BitVec 32)) SeekEntryResult!6775)

(assert (=> b!636177 (= lt!294220 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18328 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!636178 () Bool)

(declare-fun e!363944 () Bool)

(assert (=> b!636178 (= e!363941 (not e!363944))))

(declare-fun res!411701 () Bool)

(assert (=> b!636178 (=> res!411701 e!363944)))

(declare-fun lt!294214 () SeekEntryResult!6775)

(assert (=> b!636178 (= res!411701 (not (= lt!294214 (Found!6775 index!984))))))

(declare-fun lt!294221 () Unit!21458)

(declare-fun e!363947 () Unit!21458)

(assert (=> b!636178 (= lt!294221 e!363947)))

(declare-fun c!72611 () Bool)

(assert (=> b!636178 (= c!72611 (= lt!294214 Undefined!6775))))

(declare-fun lt!294222 () (_ BitVec 64))

(assert (=> b!636178 (= lt!294214 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!294222 lt!294213 mask!3053))))

(declare-fun e!363938 () Bool)

(assert (=> b!636178 e!363938))

(declare-fun res!411685 () Bool)

(assert (=> b!636178 (=> (not res!411685) (not e!363938))))

(declare-fun lt!294215 () SeekEntryResult!6775)

(declare-fun lt!294218 () (_ BitVec 32))

(assert (=> b!636178 (= res!411685 (= lt!294215 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294218 vacantSpotIndex!68 lt!294222 lt!294213 mask!3053)))))

(assert (=> b!636178 (= lt!294215 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294218 vacantSpotIndex!68 (select (arr!18328 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!636178 (= lt!294222 (select (store (arr!18328 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!294216 () Unit!21458)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38213 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21458)

(assert (=> b!636178 (= lt!294216 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294218 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!636178 (= lt!294218 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!636179 () Bool)

(declare-fun res!411688 () Bool)

(assert (=> b!636179 (=> (not res!411688) (not e!363939))))

(assert (=> b!636179 (= res!411688 (validKeyInArray!0 k0!1786))))

(declare-fun b!636180 () Bool)

(declare-fun Unit!21460 () Unit!21458)

(assert (=> b!636180 (= e!363947 Unit!21460)))

(assert (=> b!636180 false))

(declare-fun b!636181 () Bool)

(declare-fun res!411694 () Bool)

(assert (=> b!636181 (=> (not res!411694) (not e!363948))))

(declare-datatypes ((List!12422 0))(
  ( (Nil!12419) (Cons!12418 (h!13463 (_ BitVec 64)) (t!18658 List!12422)) )
))
(declare-fun arrayNoDuplicates!0 (array!38213 (_ BitVec 32) List!12422) Bool)

(assert (=> b!636181 (= res!411694 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12419))))

(declare-fun b!636182 () Bool)

(assert (=> b!636182 (= e!363948 e!363942)))

(declare-fun res!411686 () Bool)

(assert (=> b!636182 (=> (not res!411686) (not e!363942))))

(assert (=> b!636182 (= res!411686 (= (select (store (arr!18328 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!636182 (= lt!294213 (array!38214 (store (arr!18328 a!2986) i!1108 k0!1786) (size!18692 a!2986)))))

(declare-fun b!636183 () Bool)

(declare-fun e!363943 () Bool)

(assert (=> b!636183 (= e!363943 e!363949)))

(declare-fun res!411689 () Bool)

(assert (=> b!636183 (=> res!411689 e!363949)))

(declare-fun lt!294219 () (_ BitVec 64))

(assert (=> b!636183 (= res!411689 (or (not (= (select (arr!18328 a!2986) j!136) lt!294222)) (not (= (select (arr!18328 a!2986) j!136) lt!294219)) (bvsge j!136 index!984)))))

(declare-fun b!636184 () Bool)

(declare-fun Unit!21461 () Unit!21458)

(assert (=> b!636184 (= e!363947 Unit!21461)))

(declare-fun b!636185 () Bool)

(declare-fun e!363946 () Bool)

(declare-fun contains!3105 (List!12422 (_ BitVec 64)) Bool)

(assert (=> b!636185 (= e!363946 (not (contains!3105 Nil!12419 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!636186 () Bool)

(declare-fun res!411696 () Bool)

(assert (=> b!636186 (=> (not res!411696) (not e!363948))))

(assert (=> b!636186 (= res!411696 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18328 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!636187 () Bool)

(assert (=> b!636187 (= e!363938 (= lt!294220 lt!294215))))

(declare-fun b!636188 () Bool)

(declare-fun res!411692 () Bool)

(assert (=> b!636188 (=> (not res!411692) (not e!363948))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38213 (_ BitVec 32)) Bool)

(assert (=> b!636188 (= res!411692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!636189 () Bool)

(assert (=> b!636189 (= e!363940 e!363946)))

(declare-fun res!411695 () Bool)

(assert (=> b!636189 (=> (not res!411695) (not e!363946))))

(assert (=> b!636189 (= res!411695 (not (contains!3105 Nil!12419 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!411690 () Bool)

(assert (=> start!57536 (=> (not res!411690) (not e!363939))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57536 (= res!411690 (validMask!0 mask!3053))))

(assert (=> start!57536 e!363939))

(assert (=> start!57536 true))

(declare-fun array_inv!14102 (array!38213) Bool)

(assert (=> start!57536 (array_inv!14102 a!2986)))

(declare-fun b!636175 () Bool)

(declare-fun res!411698 () Bool)

(assert (=> b!636175 (=> res!411698 e!363940)))

(declare-fun noDuplicate!380 (List!12422) Bool)

(assert (=> b!636175 (= res!411698 (not (noDuplicate!380 Nil!12419)))))

(declare-fun b!636190 () Bool)

(declare-fun res!411699 () Bool)

(assert (=> b!636190 (=> (not res!411699) (not e!363939))))

(assert (=> b!636190 (= res!411699 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!636191 () Bool)

(assert (=> b!636191 (= e!363944 e!363945)))

(declare-fun res!411700 () Bool)

(assert (=> b!636191 (=> res!411700 e!363945)))

(assert (=> b!636191 (= res!411700 (or (not (= (select (arr!18328 a!2986) j!136) lt!294222)) (not (= (select (arr!18328 a!2986) j!136) lt!294219)) (bvsge j!136 index!984)))))

(assert (=> b!636191 e!363943))

(declare-fun res!411693 () Bool)

(assert (=> b!636191 (=> (not res!411693) (not e!363943))))

(assert (=> b!636191 (= res!411693 (= lt!294219 (select (arr!18328 a!2986) j!136)))))

(assert (=> b!636191 (= lt!294219 (select (store (arr!18328 a!2986) i!1108 k0!1786) index!984))))

(assert (= (and start!57536 res!411690) b!636174))

(assert (= (and b!636174 res!411682) b!636172))

(assert (= (and b!636172 res!411687) b!636179))

(assert (= (and b!636179 res!411688) b!636190))

(assert (= (and b!636190 res!411699) b!636173))

(assert (= (and b!636173 res!411684) b!636188))

(assert (= (and b!636188 res!411692) b!636181))

(assert (= (and b!636181 res!411694) b!636186))

(assert (= (and b!636186 res!411696) b!636182))

(assert (= (and b!636182 res!411686) b!636177))

(assert (= (and b!636177 res!411697) b!636178))

(assert (= (and b!636178 res!411685) b!636187))

(assert (= (and b!636178 c!72611) b!636180))

(assert (= (and b!636178 (not c!72611)) b!636184))

(assert (= (and b!636178 (not res!411701)) b!636191))

(assert (= (and b!636191 res!411693) b!636183))

(assert (= (and b!636183 (not res!411689)) b!636170))

(assert (= (and b!636170 res!411691) b!636171))

(assert (= (and b!636191 (not res!411700)) b!636176))

(assert (= (and b!636176 (not res!411683)) b!636175))

(assert (= (and b!636175 (not res!411698)) b!636189))

(assert (= (and b!636189 res!411695) b!636185))

(declare-fun m!610463 () Bool)

(assert (=> start!57536 m!610463))

(declare-fun m!610465 () Bool)

(assert (=> start!57536 m!610465))

(declare-fun m!610467 () Bool)

(assert (=> b!636176 m!610467))

(assert (=> b!636176 m!610467))

(declare-fun m!610469 () Bool)

(assert (=> b!636176 m!610469))

(assert (=> b!636176 m!610467))

(declare-fun m!610471 () Bool)

(assert (=> b!636176 m!610471))

(assert (=> b!636191 m!610467))

(declare-fun m!610473 () Bool)

(assert (=> b!636191 m!610473))

(declare-fun m!610475 () Bool)

(assert (=> b!636191 m!610475))

(declare-fun m!610477 () Bool)

(assert (=> b!636179 m!610477))

(assert (=> b!636182 m!610473))

(declare-fun m!610479 () Bool)

(assert (=> b!636182 m!610479))

(declare-fun m!610481 () Bool)

(assert (=> b!636188 m!610481))

(declare-fun m!610483 () Bool)

(assert (=> b!636189 m!610483))

(declare-fun m!610485 () Bool)

(assert (=> b!636178 m!610485))

(assert (=> b!636178 m!610467))

(assert (=> b!636178 m!610473))

(declare-fun m!610487 () Bool)

(assert (=> b!636178 m!610487))

(assert (=> b!636178 m!610467))

(declare-fun m!610489 () Bool)

(assert (=> b!636178 m!610489))

(declare-fun m!610491 () Bool)

(assert (=> b!636178 m!610491))

(declare-fun m!610493 () Bool)

(assert (=> b!636178 m!610493))

(declare-fun m!610495 () Bool)

(assert (=> b!636178 m!610495))

(declare-fun m!610497 () Bool)

(assert (=> b!636190 m!610497))

(assert (=> b!636183 m!610467))

(declare-fun m!610499 () Bool)

(assert (=> b!636177 m!610499))

(assert (=> b!636177 m!610467))

(assert (=> b!636177 m!610467))

(declare-fun m!610501 () Bool)

(assert (=> b!636177 m!610501))

(declare-fun m!610503 () Bool)

(assert (=> b!636186 m!610503))

(declare-fun m!610505 () Bool)

(assert (=> b!636173 m!610505))

(assert (=> b!636172 m!610467))

(assert (=> b!636172 m!610467))

(declare-fun m!610507 () Bool)

(assert (=> b!636172 m!610507))

(declare-fun m!610509 () Bool)

(assert (=> b!636185 m!610509))

(declare-fun m!610511 () Bool)

(assert (=> b!636181 m!610511))

(assert (=> b!636170 m!610467))

(assert (=> b!636170 m!610467))

(declare-fun m!610513 () Bool)

(assert (=> b!636170 m!610513))

(assert (=> b!636171 m!610467))

(assert (=> b!636171 m!610467))

(declare-fun m!610515 () Bool)

(assert (=> b!636171 m!610515))

(declare-fun m!610517 () Bool)

(assert (=> b!636175 m!610517))

(check-sat (not b!636181) (not b!636185) (not b!636170) (not b!636175) (not b!636177) (not b!636176) (not b!636189) (not b!636188) (not b!636171) (not start!57536) (not b!636173) (not b!636190) (not b!636179) (not b!636172) (not b!636178))
(check-sat)
(get-model)

(declare-fun d!89815 () Bool)

(assert (=> d!89815 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!636179 d!89815))

(declare-fun d!89817 () Bool)

(assert (=> d!89817 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!57536 d!89817))

(declare-fun d!89819 () Bool)

(assert (=> d!89819 (= (array_inv!14102 a!2986) (bvsge (size!18692 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!57536 d!89819))

(declare-fun d!89821 () Bool)

(declare-fun res!411766 () Bool)

(declare-fun e!363996 () Bool)

(assert (=> d!89821 (=> res!411766 e!363996)))

(assert (=> d!89821 (= res!411766 (= (select (arr!18328 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!89821 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!363996)))

(declare-fun b!636262 () Bool)

(declare-fun e!363997 () Bool)

(assert (=> b!636262 (= e!363996 e!363997)))

(declare-fun res!411767 () Bool)

(assert (=> b!636262 (=> (not res!411767) (not e!363997))))

(assert (=> b!636262 (= res!411767 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18692 a!2986)))))

(declare-fun b!636263 () Bool)

(assert (=> b!636263 (= e!363997 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!89821 (not res!411766)) b!636262))

(assert (= (and b!636262 res!411767) b!636263))

(declare-fun m!610575 () Bool)

(assert (=> d!89821 m!610575))

(declare-fun m!610577 () Bool)

(assert (=> b!636263 m!610577))

(assert (=> b!636190 d!89821))

(declare-fun b!636272 () Bool)

(declare-fun e!364005 () Bool)

(declare-fun call!33431 () Bool)

(assert (=> b!636272 (= e!364005 call!33431)))

(declare-fun bm!33428 () Bool)

(assert (=> bm!33428 (= call!33431 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun d!89823 () Bool)

(declare-fun res!411773 () Bool)

(declare-fun e!364006 () Bool)

(assert (=> d!89823 (=> res!411773 e!364006)))

(assert (=> d!89823 (= res!411773 (bvsge #b00000000000000000000000000000000 (size!18692 a!2986)))))

(assert (=> d!89823 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!364006)))

(declare-fun b!636273 () Bool)

(declare-fun e!364004 () Bool)

(assert (=> b!636273 (= e!364004 e!364005)))

(declare-fun lt!294262 () (_ BitVec 64))

(assert (=> b!636273 (= lt!294262 (select (arr!18328 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!294263 () Unit!21458)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38213 (_ BitVec 64) (_ BitVec 32)) Unit!21458)

(assert (=> b!636273 (= lt!294263 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!294262 #b00000000000000000000000000000000))))

(assert (=> b!636273 (arrayContainsKey!0 a!2986 lt!294262 #b00000000000000000000000000000000)))

(declare-fun lt!294264 () Unit!21458)

(assert (=> b!636273 (= lt!294264 lt!294263)))

(declare-fun res!411772 () Bool)

(assert (=> b!636273 (= res!411772 (= (seekEntryOrOpen!0 (select (arr!18328 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6775 #b00000000000000000000000000000000)))))

(assert (=> b!636273 (=> (not res!411772) (not e!364005))))

(declare-fun b!636274 () Bool)

(assert (=> b!636274 (= e!364006 e!364004)))

(declare-fun c!72617 () Bool)

(assert (=> b!636274 (= c!72617 (validKeyInArray!0 (select (arr!18328 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!636275 () Bool)

(assert (=> b!636275 (= e!364004 call!33431)))

(assert (= (and d!89823 (not res!411773)) b!636274))

(assert (= (and b!636274 c!72617) b!636273))

(assert (= (and b!636274 (not c!72617)) b!636275))

(assert (= (and b!636273 res!411772) b!636272))

(assert (= (or b!636272 b!636275) bm!33428))

(declare-fun m!610579 () Bool)

(assert (=> bm!33428 m!610579))

(assert (=> b!636273 m!610575))

(declare-fun m!610581 () Bool)

(assert (=> b!636273 m!610581))

(declare-fun m!610583 () Bool)

(assert (=> b!636273 m!610583))

(assert (=> b!636273 m!610575))

(declare-fun m!610585 () Bool)

(assert (=> b!636273 m!610585))

(assert (=> b!636274 m!610575))

(assert (=> b!636274 m!610575))

(declare-fun m!610587 () Bool)

(assert (=> b!636274 m!610587))

(assert (=> b!636188 d!89823))

(declare-fun d!89825 () Bool)

(declare-fun lt!294267 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!243 (List!12422) (InoxSet (_ BitVec 64)))

(assert (=> d!89825 (= lt!294267 (select (content!243 Nil!12419) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!364012 () Bool)

(assert (=> d!89825 (= lt!294267 e!364012)))

(declare-fun res!411779 () Bool)

(assert (=> d!89825 (=> (not res!411779) (not e!364012))))

(get-info :version)

(assert (=> d!89825 (= res!411779 ((_ is Cons!12418) Nil!12419))))

(assert (=> d!89825 (= (contains!3105 Nil!12419 #b0000000000000000000000000000000000000000000000000000000000000000) lt!294267)))

(declare-fun b!636280 () Bool)

(declare-fun e!364011 () Bool)

(assert (=> b!636280 (= e!364012 e!364011)))

(declare-fun res!411778 () Bool)

(assert (=> b!636280 (=> res!411778 e!364011)))

(assert (=> b!636280 (= res!411778 (= (h!13463 Nil!12419) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!636281 () Bool)

(assert (=> b!636281 (= e!364011 (contains!3105 (t!18658 Nil!12419) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!89825 res!411779) b!636280))

(assert (= (and b!636280 (not res!411778)) b!636281))

(declare-fun m!610589 () Bool)

(assert (=> d!89825 m!610589))

(declare-fun m!610591 () Bool)

(assert (=> d!89825 m!610591))

(declare-fun m!610593 () Bool)

(assert (=> b!636281 m!610593))

(assert (=> b!636189 d!89825))

(declare-fun d!89827 () Bool)

(declare-fun e!364015 () Bool)

(assert (=> d!89827 e!364015))

(declare-fun res!411782 () Bool)

(assert (=> d!89827 (=> (not res!411782) (not e!364015))))

(assert (=> d!89827 (= res!411782 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18692 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18692 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18692 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18692 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18692 a!2986))))))

(declare-fun lt!294270 () Unit!21458)

(declare-fun choose!9 (array!38213 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21458)

(assert (=> d!89827 (= lt!294270 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294218 vacantSpotIndex!68 mask!3053))))

(assert (=> d!89827 (validMask!0 mask!3053)))

(assert (=> d!89827 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294218 vacantSpotIndex!68 mask!3053) lt!294270)))

(declare-fun b!636284 () Bool)

(assert (=> b!636284 (= e!364015 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294218 vacantSpotIndex!68 (select (arr!18328 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294218 vacantSpotIndex!68 (select (store (arr!18328 a!2986) i!1108 k0!1786) j!136) (array!38214 (store (arr!18328 a!2986) i!1108 k0!1786) (size!18692 a!2986)) mask!3053)))))

(assert (= (and d!89827 res!411782) b!636284))

(declare-fun m!610595 () Bool)

(assert (=> d!89827 m!610595))

(assert (=> d!89827 m!610463))

(assert (=> b!636284 m!610473))

(assert (=> b!636284 m!610467))

(assert (=> b!636284 m!610489))

(assert (=> b!636284 m!610485))

(assert (=> b!636284 m!610485))

(declare-fun m!610597 () Bool)

(assert (=> b!636284 m!610597))

(assert (=> b!636284 m!610467))

(assert (=> b!636178 d!89827))

(declare-fun b!636303 () Bool)

(declare-fun e!364030 () SeekEntryResult!6775)

(assert (=> b!636303 (= e!364030 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!294218 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18328 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!636304 () Bool)

(assert (=> b!636304 (= e!364030 (MissingVacant!6775 vacantSpotIndex!68))))

(declare-fun lt!294279 () SeekEntryResult!6775)

(declare-fun d!89829 () Bool)

(assert (=> d!89829 (and (or ((_ is Undefined!6775) lt!294279) (not ((_ is Found!6775) lt!294279)) (and (bvsge (index!29408 lt!294279) #b00000000000000000000000000000000) (bvslt (index!29408 lt!294279) (size!18692 a!2986)))) (or ((_ is Undefined!6775) lt!294279) ((_ is Found!6775) lt!294279) (not ((_ is MissingVacant!6775) lt!294279)) (not (= (index!29410 lt!294279) vacantSpotIndex!68)) (and (bvsge (index!29410 lt!294279) #b00000000000000000000000000000000) (bvslt (index!29410 lt!294279) (size!18692 a!2986)))) (or ((_ is Undefined!6775) lt!294279) (ite ((_ is Found!6775) lt!294279) (= (select (arr!18328 a!2986) (index!29408 lt!294279)) (select (arr!18328 a!2986) j!136)) (and ((_ is MissingVacant!6775) lt!294279) (= (index!29410 lt!294279) vacantSpotIndex!68) (= (select (arr!18328 a!2986) (index!29410 lt!294279)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!364029 () SeekEntryResult!6775)

(assert (=> d!89829 (= lt!294279 e!364029)))

(declare-fun c!72626 () Bool)

(assert (=> d!89829 (= c!72626 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!294278 () (_ BitVec 64))

(assert (=> d!89829 (= lt!294278 (select (arr!18328 a!2986) lt!294218))))

(assert (=> d!89829 (validMask!0 mask!3053)))

(assert (=> d!89829 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294218 vacantSpotIndex!68 (select (arr!18328 a!2986) j!136) a!2986 mask!3053) lt!294279)))

(declare-fun b!636305 () Bool)

(declare-fun e!364028 () SeekEntryResult!6775)

(assert (=> b!636305 (= e!364029 e!364028)))

(declare-fun c!72625 () Bool)

(assert (=> b!636305 (= c!72625 (= lt!294278 (select (arr!18328 a!2986) j!136)))))

(declare-fun b!636306 () Bool)

(assert (=> b!636306 (= e!364028 (Found!6775 lt!294218))))

(declare-fun b!636307 () Bool)

(declare-fun c!72624 () Bool)

(assert (=> b!636307 (= c!72624 (= lt!294278 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!636307 (= e!364028 e!364030)))

(declare-fun b!636308 () Bool)

(assert (=> b!636308 (= e!364029 Undefined!6775)))

(assert (= (and d!89829 c!72626) b!636308))

(assert (= (and d!89829 (not c!72626)) b!636305))

(assert (= (and b!636305 c!72625) b!636306))

(assert (= (and b!636305 (not c!72625)) b!636307))

(assert (= (and b!636307 c!72624) b!636304))

(assert (= (and b!636307 (not c!72624)) b!636303))

(declare-fun m!610605 () Bool)

(assert (=> b!636303 m!610605))

(assert (=> b!636303 m!610605))

(assert (=> b!636303 m!610467))

(declare-fun m!610607 () Bool)

(assert (=> b!636303 m!610607))

(declare-fun m!610609 () Bool)

(assert (=> d!89829 m!610609))

(declare-fun m!610611 () Bool)

(assert (=> d!89829 m!610611))

(declare-fun m!610613 () Bool)

(assert (=> d!89829 m!610613))

(assert (=> d!89829 m!610463))

(assert (=> b!636178 d!89829))

(declare-fun d!89841 () Bool)

(declare-fun lt!294286 () (_ BitVec 32))

(assert (=> d!89841 (and (bvsge lt!294286 #b00000000000000000000000000000000) (bvslt lt!294286 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89841 (= lt!294286 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!89841 (validMask!0 mask!3053)))

(assert (=> d!89841 (= (nextIndex!0 index!984 x!910 mask!3053) lt!294286)))

(declare-fun bs!19110 () Bool)

(assert (= bs!19110 d!89841))

(declare-fun m!610615 () Bool)

(assert (=> bs!19110 m!610615))

(assert (=> bs!19110 m!610463))

(assert (=> b!636178 d!89841))

(declare-fun b!636321 () Bool)

(declare-fun e!364039 () SeekEntryResult!6775)

(assert (=> b!636321 (= e!364039 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!294218 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!294222 lt!294213 mask!3053))))

(declare-fun b!636322 () Bool)

(assert (=> b!636322 (= e!364039 (MissingVacant!6775 vacantSpotIndex!68))))

(declare-fun lt!294288 () SeekEntryResult!6775)

(declare-fun d!89843 () Bool)

(assert (=> d!89843 (and (or ((_ is Undefined!6775) lt!294288) (not ((_ is Found!6775) lt!294288)) (and (bvsge (index!29408 lt!294288) #b00000000000000000000000000000000) (bvslt (index!29408 lt!294288) (size!18692 lt!294213)))) (or ((_ is Undefined!6775) lt!294288) ((_ is Found!6775) lt!294288) (not ((_ is MissingVacant!6775) lt!294288)) (not (= (index!29410 lt!294288) vacantSpotIndex!68)) (and (bvsge (index!29410 lt!294288) #b00000000000000000000000000000000) (bvslt (index!29410 lt!294288) (size!18692 lt!294213)))) (or ((_ is Undefined!6775) lt!294288) (ite ((_ is Found!6775) lt!294288) (= (select (arr!18328 lt!294213) (index!29408 lt!294288)) lt!294222) (and ((_ is MissingVacant!6775) lt!294288) (= (index!29410 lt!294288) vacantSpotIndex!68) (= (select (arr!18328 lt!294213) (index!29410 lt!294288)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!364038 () SeekEntryResult!6775)

(assert (=> d!89843 (= lt!294288 e!364038)))

(declare-fun c!72635 () Bool)

(assert (=> d!89843 (= c!72635 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!294287 () (_ BitVec 64))

(assert (=> d!89843 (= lt!294287 (select (arr!18328 lt!294213) lt!294218))))

(assert (=> d!89843 (validMask!0 mask!3053)))

(assert (=> d!89843 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294218 vacantSpotIndex!68 lt!294222 lt!294213 mask!3053) lt!294288)))

(declare-fun b!636323 () Bool)

(declare-fun e!364037 () SeekEntryResult!6775)

(assert (=> b!636323 (= e!364038 e!364037)))

(declare-fun c!72634 () Bool)

(assert (=> b!636323 (= c!72634 (= lt!294287 lt!294222))))

(declare-fun b!636324 () Bool)

(assert (=> b!636324 (= e!364037 (Found!6775 lt!294218))))

(declare-fun b!636325 () Bool)

(declare-fun c!72633 () Bool)

(assert (=> b!636325 (= c!72633 (= lt!294287 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!636325 (= e!364037 e!364039)))

(declare-fun b!636326 () Bool)

(assert (=> b!636326 (= e!364038 Undefined!6775)))

(assert (= (and d!89843 c!72635) b!636326))

(assert (= (and d!89843 (not c!72635)) b!636323))

(assert (= (and b!636323 c!72634) b!636324))

(assert (= (and b!636323 (not c!72634)) b!636325))

(assert (= (and b!636325 c!72633) b!636322))

(assert (= (and b!636325 (not c!72633)) b!636321))

(assert (=> b!636321 m!610605))

(assert (=> b!636321 m!610605))

(declare-fun m!610617 () Bool)

(assert (=> b!636321 m!610617))

(declare-fun m!610619 () Bool)

(assert (=> d!89843 m!610619))

(declare-fun m!610621 () Bool)

(assert (=> d!89843 m!610621))

(declare-fun m!610623 () Bool)

(assert (=> d!89843 m!610623))

(assert (=> d!89843 m!610463))

(assert (=> b!636178 d!89843))

(declare-fun b!636339 () Bool)

(declare-fun e!364048 () SeekEntryResult!6775)

(assert (=> b!636339 (= e!364048 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!294222 lt!294213 mask!3053))))

(declare-fun b!636340 () Bool)

(assert (=> b!636340 (= e!364048 (MissingVacant!6775 vacantSpotIndex!68))))

(declare-fun d!89845 () Bool)

(declare-fun lt!294294 () SeekEntryResult!6775)

(assert (=> d!89845 (and (or ((_ is Undefined!6775) lt!294294) (not ((_ is Found!6775) lt!294294)) (and (bvsge (index!29408 lt!294294) #b00000000000000000000000000000000) (bvslt (index!29408 lt!294294) (size!18692 lt!294213)))) (or ((_ is Undefined!6775) lt!294294) ((_ is Found!6775) lt!294294) (not ((_ is MissingVacant!6775) lt!294294)) (not (= (index!29410 lt!294294) vacantSpotIndex!68)) (and (bvsge (index!29410 lt!294294) #b00000000000000000000000000000000) (bvslt (index!29410 lt!294294) (size!18692 lt!294213)))) (or ((_ is Undefined!6775) lt!294294) (ite ((_ is Found!6775) lt!294294) (= (select (arr!18328 lt!294213) (index!29408 lt!294294)) lt!294222) (and ((_ is MissingVacant!6775) lt!294294) (= (index!29410 lt!294294) vacantSpotIndex!68) (= (select (arr!18328 lt!294213) (index!29410 lt!294294)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!364047 () SeekEntryResult!6775)

(assert (=> d!89845 (= lt!294294 e!364047)))

(declare-fun c!72644 () Bool)

(assert (=> d!89845 (= c!72644 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!294293 () (_ BitVec 64))

(assert (=> d!89845 (= lt!294293 (select (arr!18328 lt!294213) index!984))))

(assert (=> d!89845 (validMask!0 mask!3053)))

(assert (=> d!89845 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!294222 lt!294213 mask!3053) lt!294294)))

(declare-fun b!636341 () Bool)

(declare-fun e!364046 () SeekEntryResult!6775)

(assert (=> b!636341 (= e!364047 e!364046)))

(declare-fun c!72643 () Bool)

(assert (=> b!636341 (= c!72643 (= lt!294293 lt!294222))))

(declare-fun b!636342 () Bool)

(assert (=> b!636342 (= e!364046 (Found!6775 index!984))))

(declare-fun b!636343 () Bool)

(declare-fun c!72642 () Bool)

(assert (=> b!636343 (= c!72642 (= lt!294293 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!636343 (= e!364046 e!364048)))

(declare-fun b!636344 () Bool)

(assert (=> b!636344 (= e!364047 Undefined!6775)))

(assert (= (and d!89845 c!72644) b!636344))

(assert (= (and d!89845 (not c!72644)) b!636341))

(assert (= (and b!636341 c!72643) b!636342))

(assert (= (and b!636341 (not c!72643)) b!636343))

(assert (= (and b!636343 c!72642) b!636340))

(assert (= (and b!636343 (not c!72642)) b!636339))

(assert (=> b!636339 m!610493))

(assert (=> b!636339 m!610493))

(declare-fun m!610625 () Bool)

(assert (=> b!636339 m!610625))

(declare-fun m!610627 () Bool)

(assert (=> d!89845 m!610627))

(declare-fun m!610629 () Bool)

(assert (=> d!89845 m!610629))

(declare-fun m!610631 () Bool)

(assert (=> d!89845 m!610631))

(assert (=> d!89845 m!610463))

(assert (=> b!636178 d!89845))

(declare-fun d!89847 () Bool)

(declare-fun res!411789 () Bool)

(declare-fun e!364052 () Bool)

(assert (=> d!89847 (=> res!411789 e!364052)))

(assert (=> d!89847 (= res!411789 (= (select (arr!18328 lt!294213) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18328 a!2986) j!136)))))

(assert (=> d!89847 (= (arrayContainsKey!0 lt!294213 (select (arr!18328 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!364052)))

(declare-fun b!636351 () Bool)

(declare-fun e!364053 () Bool)

(assert (=> b!636351 (= e!364052 e!364053)))

(declare-fun res!411790 () Bool)

(assert (=> b!636351 (=> (not res!411790) (not e!364053))))

(assert (=> b!636351 (= res!411790 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18692 lt!294213)))))

(declare-fun b!636352 () Bool)

(assert (=> b!636352 (= e!364053 (arrayContainsKey!0 lt!294213 (select (arr!18328 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!89847 (not res!411789)) b!636351))

(assert (= (and b!636351 res!411790) b!636352))

(declare-fun m!610639 () Bool)

(assert (=> d!89847 m!610639))

(assert (=> b!636352 m!610467))

(declare-fun m!610641 () Bool)

(assert (=> b!636352 m!610641))

(assert (=> b!636176 d!89847))

(declare-fun d!89851 () Bool)

(assert (=> d!89851 (arrayContainsKey!0 lt!294213 (select (arr!18328 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!294299 () Unit!21458)

(declare-fun choose!114 (array!38213 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21458)

(assert (=> d!89851 (= lt!294299 (choose!114 lt!294213 (select (arr!18328 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!89851 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!89851 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!294213 (select (arr!18328 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!294299)))

(declare-fun bs!19111 () Bool)

(assert (= bs!19111 d!89851))

(assert (=> bs!19111 m!610467))

(assert (=> bs!19111 m!610469))

(assert (=> bs!19111 m!610467))

(declare-fun m!610643 () Bool)

(assert (=> bs!19111 m!610643))

(assert (=> b!636176 d!89851))

(declare-fun e!364059 () SeekEntryResult!6775)

(declare-fun b!636359 () Bool)

(assert (=> b!636359 (= e!364059 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18328 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!636360 () Bool)

(assert (=> b!636360 (= e!364059 (MissingVacant!6775 vacantSpotIndex!68))))

(declare-fun d!89853 () Bool)

(declare-fun lt!294303 () SeekEntryResult!6775)

(assert (=> d!89853 (and (or ((_ is Undefined!6775) lt!294303) (not ((_ is Found!6775) lt!294303)) (and (bvsge (index!29408 lt!294303) #b00000000000000000000000000000000) (bvslt (index!29408 lt!294303) (size!18692 a!2986)))) (or ((_ is Undefined!6775) lt!294303) ((_ is Found!6775) lt!294303) (not ((_ is MissingVacant!6775) lt!294303)) (not (= (index!29410 lt!294303) vacantSpotIndex!68)) (and (bvsge (index!29410 lt!294303) #b00000000000000000000000000000000) (bvslt (index!29410 lt!294303) (size!18692 a!2986)))) (or ((_ is Undefined!6775) lt!294303) (ite ((_ is Found!6775) lt!294303) (= (select (arr!18328 a!2986) (index!29408 lt!294303)) (select (arr!18328 a!2986) j!136)) (and ((_ is MissingVacant!6775) lt!294303) (= (index!29410 lt!294303) vacantSpotIndex!68) (= (select (arr!18328 a!2986) (index!29410 lt!294303)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!364058 () SeekEntryResult!6775)

(assert (=> d!89853 (= lt!294303 e!364058)))

(declare-fun c!72653 () Bool)

(assert (=> d!89853 (= c!72653 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!294302 () (_ BitVec 64))

(assert (=> d!89853 (= lt!294302 (select (arr!18328 a!2986) index!984))))

(assert (=> d!89853 (validMask!0 mask!3053)))

(assert (=> d!89853 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18328 a!2986) j!136) a!2986 mask!3053) lt!294303)))

(declare-fun b!636361 () Bool)

(declare-fun e!364057 () SeekEntryResult!6775)

(assert (=> b!636361 (= e!364058 e!364057)))

(declare-fun c!72652 () Bool)

(assert (=> b!636361 (= c!72652 (= lt!294302 (select (arr!18328 a!2986) j!136)))))

(declare-fun b!636362 () Bool)

(assert (=> b!636362 (= e!364057 (Found!6775 index!984))))

(declare-fun b!636363 () Bool)

(declare-fun c!72651 () Bool)

(assert (=> b!636363 (= c!72651 (= lt!294302 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!636363 (= e!364057 e!364059)))

(declare-fun b!636364 () Bool)

(assert (=> b!636364 (= e!364058 Undefined!6775)))

(assert (= (and d!89853 c!72653) b!636364))

(assert (= (and d!89853 (not c!72653)) b!636361))

(assert (= (and b!636361 c!72652) b!636362))

(assert (= (and b!636361 (not c!72652)) b!636363))

(assert (= (and b!636363 c!72651) b!636360))

(assert (= (and b!636363 (not c!72651)) b!636359))

(assert (=> b!636359 m!610493))

(assert (=> b!636359 m!610493))

(assert (=> b!636359 m!610467))

(declare-fun m!610651 () Bool)

(assert (=> b!636359 m!610651))

(declare-fun m!610655 () Bool)

(assert (=> d!89853 m!610655))

(declare-fun m!610657 () Bool)

(assert (=> d!89853 m!610657))

(assert (=> d!89853 m!610499))

(assert (=> d!89853 m!610463))

(assert (=> b!636177 d!89853))

(declare-fun d!89857 () Bool)

(declare-fun res!411795 () Bool)

(declare-fun e!364064 () Bool)

(assert (=> d!89857 (=> res!411795 e!364064)))

(assert (=> d!89857 (= res!411795 ((_ is Nil!12419) Nil!12419))))

(assert (=> d!89857 (= (noDuplicate!380 Nil!12419) e!364064)))

(declare-fun b!636369 () Bool)

(declare-fun e!364065 () Bool)

(assert (=> b!636369 (= e!364064 e!364065)))

(declare-fun res!411796 () Bool)

(assert (=> b!636369 (=> (not res!411796) (not e!364065))))

(assert (=> b!636369 (= res!411796 (not (contains!3105 (t!18658 Nil!12419) (h!13463 Nil!12419))))))

(declare-fun b!636370 () Bool)

(assert (=> b!636370 (= e!364065 (noDuplicate!380 (t!18658 Nil!12419)))))

(assert (= (and d!89857 (not res!411795)) b!636369))

(assert (= (and b!636369 res!411796) b!636370))

(declare-fun m!610661 () Bool)

(assert (=> b!636369 m!610661))

(declare-fun m!610663 () Bool)

(assert (=> b!636370 m!610663))

(assert (=> b!636175 d!89857))

(declare-fun d!89859 () Bool)

(declare-fun lt!294304 () Bool)

(assert (=> d!89859 (= lt!294304 (select (content!243 Nil!12419) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!364067 () Bool)

(assert (=> d!89859 (= lt!294304 e!364067)))

(declare-fun res!411798 () Bool)

(assert (=> d!89859 (=> (not res!411798) (not e!364067))))

(assert (=> d!89859 (= res!411798 ((_ is Cons!12418) Nil!12419))))

(assert (=> d!89859 (= (contains!3105 Nil!12419 #b1000000000000000000000000000000000000000000000000000000000000000) lt!294304)))

(declare-fun b!636371 () Bool)

(declare-fun e!364066 () Bool)

(assert (=> b!636371 (= e!364067 e!364066)))

(declare-fun res!411797 () Bool)

(assert (=> b!636371 (=> res!411797 e!364066)))

(assert (=> b!636371 (= res!411797 (= (h!13463 Nil!12419) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!636372 () Bool)

(assert (=> b!636372 (= e!364066 (contains!3105 (t!18658 Nil!12419) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!89859 res!411798) b!636371))

(assert (= (and b!636371 (not res!411797)) b!636372))

(assert (=> d!89859 m!610589))

(declare-fun m!610665 () Bool)

(assert (=> d!89859 m!610665))

(declare-fun m!610667 () Bool)

(assert (=> b!636372 m!610667))

(assert (=> b!636185 d!89859))

(declare-fun d!89861 () Bool)

(assert (=> d!89861 (= (validKeyInArray!0 (select (arr!18328 a!2986) j!136)) (and (not (= (select (arr!18328 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18328 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!636172 d!89861))

(declare-fun e!364145 () SeekEntryResult!6775)

(declare-fun lt!294350 () SeekEntryResult!6775)

(declare-fun b!636474 () Bool)

(assert (=> b!636474 (= e!364145 (seekKeyOrZeroReturnVacant!0 (x!58184 lt!294350) (index!29409 lt!294350) (index!29409 lt!294350) k0!1786 a!2986 mask!3053))))

(declare-fun b!636475 () Bool)

(declare-fun e!364144 () SeekEntryResult!6775)

(assert (=> b!636475 (= e!364144 (Found!6775 (index!29409 lt!294350)))))

(declare-fun d!89863 () Bool)

(declare-fun lt!294349 () SeekEntryResult!6775)

(assert (=> d!89863 (and (or ((_ is Undefined!6775) lt!294349) (not ((_ is Found!6775) lt!294349)) (and (bvsge (index!29408 lt!294349) #b00000000000000000000000000000000) (bvslt (index!29408 lt!294349) (size!18692 a!2986)))) (or ((_ is Undefined!6775) lt!294349) ((_ is Found!6775) lt!294349) (not ((_ is MissingZero!6775) lt!294349)) (and (bvsge (index!29407 lt!294349) #b00000000000000000000000000000000) (bvslt (index!29407 lt!294349) (size!18692 a!2986)))) (or ((_ is Undefined!6775) lt!294349) ((_ is Found!6775) lt!294349) ((_ is MissingZero!6775) lt!294349) (not ((_ is MissingVacant!6775) lt!294349)) (and (bvsge (index!29410 lt!294349) #b00000000000000000000000000000000) (bvslt (index!29410 lt!294349) (size!18692 a!2986)))) (or ((_ is Undefined!6775) lt!294349) (ite ((_ is Found!6775) lt!294349) (= (select (arr!18328 a!2986) (index!29408 lt!294349)) k0!1786) (ite ((_ is MissingZero!6775) lt!294349) (= (select (arr!18328 a!2986) (index!29407 lt!294349)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6775) lt!294349) (= (select (arr!18328 a!2986) (index!29410 lt!294349)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!364143 () SeekEntryResult!6775)

(assert (=> d!89863 (= lt!294349 e!364143)))

(declare-fun c!72681 () Bool)

(assert (=> d!89863 (= c!72681 (and ((_ is Intermediate!6775) lt!294350) (undefined!7587 lt!294350)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38213 (_ BitVec 32)) SeekEntryResult!6775)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89863 (= lt!294350 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!89863 (validMask!0 mask!3053)))

(assert (=> d!89863 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!294349)))

(declare-fun b!636476 () Bool)

(declare-fun c!72680 () Bool)

(declare-fun lt!294348 () (_ BitVec 64))

(assert (=> b!636476 (= c!72680 (= lt!294348 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!636476 (= e!364144 e!364145)))

(declare-fun b!636477 () Bool)

(assert (=> b!636477 (= e!364145 (MissingZero!6775 (index!29409 lt!294350)))))

(declare-fun b!636478 () Bool)

(assert (=> b!636478 (= e!364143 e!364144)))

(assert (=> b!636478 (= lt!294348 (select (arr!18328 a!2986) (index!29409 lt!294350)))))

(declare-fun c!72682 () Bool)

(assert (=> b!636478 (= c!72682 (= lt!294348 k0!1786))))

(declare-fun b!636479 () Bool)

(assert (=> b!636479 (= e!364143 Undefined!6775)))

(assert (= (and d!89863 c!72681) b!636479))

(assert (= (and d!89863 (not c!72681)) b!636478))

(assert (= (and b!636478 c!72682) b!636475))

(assert (= (and b!636478 (not c!72682)) b!636476))

(assert (= (and b!636476 c!72680) b!636477))

(assert (= (and b!636476 (not c!72680)) b!636474))

(declare-fun m!610757 () Bool)

(assert (=> b!636474 m!610757))

(declare-fun m!610759 () Bool)

(assert (=> d!89863 m!610759))

(assert (=> d!89863 m!610463))

(declare-fun m!610761 () Bool)

(assert (=> d!89863 m!610761))

(declare-fun m!610763 () Bool)

(assert (=> d!89863 m!610763))

(assert (=> d!89863 m!610763))

(declare-fun m!610767 () Bool)

(assert (=> d!89863 m!610767))

(declare-fun m!610771 () Bool)

(assert (=> d!89863 m!610771))

(declare-fun m!610775 () Bool)

(assert (=> b!636478 m!610775))

(assert (=> b!636173 d!89863))

(declare-fun d!89905 () Bool)

(declare-fun res!411850 () Bool)

(declare-fun e!364148 () Bool)

(assert (=> d!89905 (=> res!411850 e!364148)))

(assert (=> d!89905 (= res!411850 (= (select (arr!18328 lt!294213) index!984) (select (arr!18328 a!2986) j!136)))))

(assert (=> d!89905 (= (arrayContainsKey!0 lt!294213 (select (arr!18328 a!2986) j!136) index!984) e!364148)))

(declare-fun b!636482 () Bool)

(declare-fun e!364149 () Bool)

(assert (=> b!636482 (= e!364148 e!364149)))

(declare-fun res!411851 () Bool)

(assert (=> b!636482 (=> (not res!411851) (not e!364149))))

(assert (=> b!636482 (= res!411851 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18692 lt!294213)))))

(declare-fun b!636483 () Bool)

(assert (=> b!636483 (= e!364149 (arrayContainsKey!0 lt!294213 (select (arr!18328 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!89905 (not res!411850)) b!636482))

(assert (= (and b!636482 res!411851) b!636483))

(assert (=> d!89905 m!610631))

(assert (=> b!636483 m!610467))

(declare-fun m!610777 () Bool)

(assert (=> b!636483 m!610777))

(assert (=> b!636171 d!89905))

(declare-fun d!89907 () Bool)

(declare-fun res!411871 () Bool)

(declare-fun e!364176 () Bool)

(assert (=> d!89907 (=> res!411871 e!364176)))

(assert (=> d!89907 (= res!411871 (bvsge #b00000000000000000000000000000000 (size!18692 a!2986)))))

(assert (=> d!89907 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12419) e!364176)))

(declare-fun b!636515 () Bool)

(declare-fun e!364178 () Bool)

(assert (=> b!636515 (= e!364176 e!364178)))

(declare-fun res!411872 () Bool)

(assert (=> b!636515 (=> (not res!411872) (not e!364178))))

(declare-fun e!364177 () Bool)

(assert (=> b!636515 (= res!411872 (not e!364177))))

(declare-fun res!411873 () Bool)

(assert (=> b!636515 (=> (not res!411873) (not e!364177))))

(assert (=> b!636515 (= res!411873 (validKeyInArray!0 (select (arr!18328 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!636516 () Bool)

(declare-fun e!364175 () Bool)

(declare-fun call!33443 () Bool)

(assert (=> b!636516 (= e!364175 call!33443)))

(declare-fun b!636517 () Bool)

(assert (=> b!636517 (= e!364178 e!364175)))

(declare-fun c!72689 () Bool)

(assert (=> b!636517 (= c!72689 (validKeyInArray!0 (select (arr!18328 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!636518 () Bool)

(assert (=> b!636518 (= e!364177 (contains!3105 Nil!12419 (select (arr!18328 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33440 () Bool)

(assert (=> bm!33440 (= call!33443 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!72689 (Cons!12418 (select (arr!18328 a!2986) #b00000000000000000000000000000000) Nil!12419) Nil!12419)))))

(declare-fun b!636519 () Bool)

(assert (=> b!636519 (= e!364175 call!33443)))

(assert (= (and d!89907 (not res!411871)) b!636515))

(assert (= (and b!636515 res!411873) b!636518))

(assert (= (and b!636515 res!411872) b!636517))

(assert (= (and b!636517 c!72689) b!636519))

(assert (= (and b!636517 (not c!72689)) b!636516))

(assert (= (or b!636519 b!636516) bm!33440))

(assert (=> b!636515 m!610575))

(assert (=> b!636515 m!610575))

(assert (=> b!636515 m!610587))

(assert (=> b!636517 m!610575))

(assert (=> b!636517 m!610575))

(assert (=> b!636517 m!610587))

(assert (=> b!636518 m!610575))

(assert (=> b!636518 m!610575))

(declare-fun m!610799 () Bool)

(assert (=> b!636518 m!610799))

(assert (=> bm!33440 m!610575))

(declare-fun m!610801 () Bool)

(assert (=> bm!33440 m!610801))

(assert (=> b!636181 d!89907))

(declare-fun d!89915 () Bool)

(declare-fun res!411874 () Bool)

(declare-fun e!364179 () Bool)

(assert (=> d!89915 (=> res!411874 e!364179)))

(assert (=> d!89915 (= res!411874 (= (select (arr!18328 lt!294213) j!136) (select (arr!18328 a!2986) j!136)))))

(assert (=> d!89915 (= (arrayContainsKey!0 lt!294213 (select (arr!18328 a!2986) j!136) j!136) e!364179)))

(declare-fun b!636520 () Bool)

(declare-fun e!364180 () Bool)

(assert (=> b!636520 (= e!364179 e!364180)))

(declare-fun res!411875 () Bool)

(assert (=> b!636520 (=> (not res!411875) (not e!364180))))

(assert (=> b!636520 (= res!411875 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18692 lt!294213)))))

(declare-fun b!636521 () Bool)

(assert (=> b!636521 (= e!364180 (arrayContainsKey!0 lt!294213 (select (arr!18328 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!89915 (not res!411874)) b!636520))

(assert (= (and b!636520 res!411875) b!636521))

(declare-fun m!610803 () Bool)

(assert (=> d!89915 m!610803))

(assert (=> b!636521 m!610467))

(declare-fun m!610805 () Bool)

(assert (=> b!636521 m!610805))

(assert (=> b!636170 d!89915))

(check-sat (not bm!33440) (not b!636483) (not b!636369) (not b!636352) (not b!636273) (not b!636263) (not d!89843) (not b!636372) (not b!636474) (not d!89863) (not b!636521) (not bm!33428) (not b!636303) (not d!89829) (not b!636321) (not b!636339) (not d!89859) (not d!89845) (not b!636517) (not b!636274) (not b!636518) (not d!89853) (not d!89825) (not d!89827) (not b!636281) (not b!636370) (not b!636359) (not b!636515) (not d!89851) (not b!636284) (not d!89841))
(check-sat)
