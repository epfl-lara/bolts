; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53102 () Bool)

(assert start!53102)

(declare-fun b!577510 () Bool)

(declare-fun res!365620 () Bool)

(declare-fun e!332154 () Bool)

(assert (=> b!577510 (=> (not res!365620) (not e!332154))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36041 0))(
  ( (array!36042 (arr!17294 (Array (_ BitVec 32) (_ BitVec 64))) (size!17658 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36041)

(assert (=> b!577510 (= res!365620 (and (= (size!17658 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17658 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17658 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!577511 () Bool)

(declare-fun res!365624 () Bool)

(assert (=> b!577511 (=> (not res!365624) (not e!332154))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577511 (= res!365624 (validKeyInArray!0 k!1786))))

(declare-fun b!577512 () Bool)

(declare-fun res!365627 () Bool)

(declare-fun e!332155 () Bool)

(assert (=> b!577512 (=> (not res!365627) (not e!332155))))

(assert (=> b!577512 (= res!365627 (and (bvsle #b00000000000000000000000000000000 (size!17658 a!2986)) (bvslt (size!17658 a!2986) #b01111111111111111111111111111111)))))

(declare-fun b!577514 () Bool)

(declare-fun res!365622 () Bool)

(assert (=> b!577514 (=> (not res!365622) (not e!332154))))

(assert (=> b!577514 (= res!365622 (validKeyInArray!0 (select (arr!17294 a!2986) j!136)))))

(declare-fun b!577515 () Bool)

(assert (=> b!577515 (= e!332154 e!332155)))

(declare-fun res!365626 () Bool)

(assert (=> b!577515 (=> (not res!365626) (not e!332155))))

(declare-datatypes ((SeekEntryResult!5741 0))(
  ( (MissingZero!5741 (index!25191 (_ BitVec 32))) (Found!5741 (index!25192 (_ BitVec 32))) (Intermediate!5741 (undefined!6553 Bool) (index!25193 (_ BitVec 32)) (x!54125 (_ BitVec 32))) (Undefined!5741) (MissingVacant!5741 (index!25194 (_ BitVec 32))) )
))
(declare-fun lt!264002 () SeekEntryResult!5741)

(assert (=> b!577515 (= res!365626 (or (= lt!264002 (MissingZero!5741 i!1108)) (= lt!264002 (MissingVacant!5741 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36041 (_ BitVec 32)) SeekEntryResult!5741)

(assert (=> b!577515 (= lt!264002 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!577516 () Bool)

(declare-fun res!365623 () Bool)

(assert (=> b!577516 (=> (not res!365623) (not e!332155))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36041 (_ BitVec 32)) Bool)

(assert (=> b!577516 (= res!365623 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!577517 () Bool)

(declare-fun res!365621 () Bool)

(assert (=> b!577517 (=> (not res!365621) (not e!332154))))

(declare-fun arrayContainsKey!0 (array!36041 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577517 (= res!365621 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!365625 () Bool)

(assert (=> start!53102 (=> (not res!365625) (not e!332154))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53102 (= res!365625 (validMask!0 mask!3053))))

(assert (=> start!53102 e!332154))

(assert (=> start!53102 true))

(declare-fun array_inv!13068 (array!36041) Bool)

(assert (=> start!53102 (array_inv!13068 a!2986)))

(declare-fun b!577513 () Bool)

(declare-datatypes ((List!11388 0))(
  ( (Nil!11385) (Cons!11384 (h!12429 (_ BitVec 64)) (t!17624 List!11388)) )
))
(declare-fun noDuplicate!228 (List!11388) Bool)

(assert (=> b!577513 (= e!332155 (not (noDuplicate!228 Nil!11385)))))

(assert (= (and start!53102 res!365625) b!577510))

(assert (= (and b!577510 res!365620) b!577514))

(assert (= (and b!577514 res!365622) b!577511))

(assert (= (and b!577511 res!365624) b!577517))

(assert (= (and b!577517 res!365621) b!577515))

(assert (= (and b!577515 res!365626) b!577516))

(assert (= (and b!577516 res!365623) b!577512))

(assert (= (and b!577512 res!365627) b!577513))

(declare-fun m!556369 () Bool)

(assert (=> b!577516 m!556369))

(declare-fun m!556371 () Bool)

(assert (=> b!577515 m!556371))

(declare-fun m!556373 () Bool)

(assert (=> b!577517 m!556373))

(declare-fun m!556375 () Bool)

(assert (=> b!577511 m!556375))

(declare-fun m!556377 () Bool)

(assert (=> b!577514 m!556377))

(assert (=> b!577514 m!556377))

(declare-fun m!556379 () Bool)

(assert (=> b!577514 m!556379))

(declare-fun m!556381 () Bool)

(assert (=> start!53102 m!556381))

(declare-fun m!556383 () Bool)

(assert (=> start!53102 m!556383))

(declare-fun m!556385 () Bool)

(assert (=> b!577513 m!556385))

(push 1)

(assert (not b!577513))

(assert (not start!53102))

(assert (not b!577516))

(assert (not b!577517))

(assert (not b!577514))

(assert (not b!577511))

(assert (not b!577515))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!577552 () Bool)

(declare-fun e!332187 () Bool)

(declare-fun e!332188 () Bool)

(assert (=> b!577552 (= e!332187 e!332188)))

(declare-fun lt!264015 () (_ BitVec 64))

(assert (=> b!577552 (= lt!264015 (select (arr!17294 a!2986) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!18124 0))(
  ( (Unit!18125) )
))
(declare-fun lt!264016 () Unit!18124)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!36041 (_ BitVec 64) (_ BitVec 32)) Unit!18124)

(assert (=> b!577552 (= lt!264016 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!264015 #b00000000000000000000000000000000))))

(assert (=> b!577552 (arrayContainsKey!0 a!2986 lt!264015 #b00000000000000000000000000000000)))

(declare-fun lt!264017 () Unit!18124)

(assert (=> b!577552 (= lt!264017 lt!264016)))

(declare-fun res!365654 () Bool)

(assert (=> b!577552 (= res!365654 (= (seekEntryOrOpen!0 (select (arr!17294 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!5741 #b00000000000000000000000000000000)))))

(assert (=> b!577552 (=> (not res!365654) (not e!332188))))

(declare-fun b!577553 () Bool)

(declare-fun call!32761 () Bool)

(assert (=> b!577553 (= e!332187 call!32761)))

(declare-fun b!577554 () Bool)

(assert (=> b!577554 (= e!332188 call!32761)))

(declare-fun d!85483 () Bool)

(declare-fun res!365655 () Bool)

(declare-fun e!332186 () Bool)

(assert (=> d!85483 (=> res!365655 e!332186)))

(assert (=> d!85483 (= res!365655 (bvsge #b00000000000000000000000000000000 (size!17658 a!2986)))))

(assert (=> d!85483 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!332186)))

(declare-fun bm!32758 () Bool)

(assert (=> bm!32758 (= call!32761 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!577555 () Bool)

(assert (=> b!577555 (= e!332186 e!332187)))

(declare-fun c!66316 () Bool)

(assert (=> b!577555 (= c!66316 (validKeyInArray!0 (select (arr!17294 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!85483 (not res!365655)) b!577555))

(assert (= (and b!577555 c!66316) b!577552))

(assert (= (and b!577555 (not c!66316)) b!577553))

(assert (= (and b!577552 res!365654) b!577554))

(assert (= (or b!577554 b!577553) bm!32758))

(declare-fun m!556399 () Bool)

(assert (=> b!577552 m!556399))

(declare-fun m!556401 () Bool)

(assert (=> b!577552 m!556401))

(declare-fun m!556403 () Bool)

(assert (=> b!577552 m!556403))

(assert (=> b!577552 m!556399))

(declare-fun m!556405 () Bool)

(assert (=> b!577552 m!556405))

(declare-fun m!556407 () Bool)

(assert (=> bm!32758 m!556407))

(assert (=> b!577555 m!556399))

(assert (=> b!577555 m!556399))

(declare-fun m!556409 () Bool)

(assert (=> b!577555 m!556409))

(assert (=> b!577516 d!85483))

(declare-fun d!85491 () Bool)

(assert (=> d!85491 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!53102 d!85491))

(declare-fun d!85501 () Bool)

(assert (=> d!85501 (= (array_inv!13068 a!2986) (bvsge (size!17658 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!53102 d!85501))

(declare-fun d!85503 () Bool)

(assert (=> d!85503 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!577511 d!85503))

(declare-fun b!577608 () Bool)

(declare-fun e!332223 () SeekEntryResult!5741)

(assert (=> b!577608 (= e!332223 Undefined!5741)))

(declare-fun b!577609 () Bool)

(declare-fun lt!264047 () SeekEntryResult!5741)

(declare-fun e!332224 () SeekEntryResult!5741)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36041 (_ BitVec 32)) SeekEntryResult!5741)

(assert (=> b!577609 (= e!332224 (seekKeyOrZeroReturnVacant!0 (x!54125 lt!264047) (index!25193 lt!264047) (index!25193 lt!264047) k!1786 a!2986 mask!3053))))

(declare-fun b!577610 () Bool)

(declare-fun e!332222 () SeekEntryResult!5741)

(assert (=> b!577610 (= e!332223 e!332222)))

(declare-fun lt!264045 () (_ BitVec 64))

(assert (=> b!577610 (= lt!264045 (select (arr!17294 a!2986) (index!25193 lt!264047)))))

(declare-fun c!66337 () Bool)

(assert (=> b!577610 (= c!66337 (= lt!264045 k!1786))))

(declare-fun d!85505 () Bool)

(declare-fun lt!264046 () SeekEntryResult!5741)

(assert (=> d!85505 (and (or (is-Undefined!5741 lt!264046) (not (is-Found!5741 lt!264046)) (and (bvsge (index!25192 lt!264046) #b00000000000000000000000000000000) (bvslt (index!25192 lt!264046) (size!17658 a!2986)))) (or (is-Undefined!5741 lt!264046) (is-Found!5741 lt!264046) (not (is-MissingZero!5741 lt!264046)) (and (bvsge (index!25191 lt!264046) #b00000000000000000000000000000000) (bvslt (index!25191 lt!264046) (size!17658 a!2986)))) (or (is-Undefined!5741 lt!264046) (is-Found!5741 lt!264046) (is-MissingZero!5741 lt!264046) (not (is-MissingVacant!5741 lt!264046)) (and (bvsge (index!25194 lt!264046) #b00000000000000000000000000000000) (bvslt (index!25194 lt!264046) (size!17658 a!2986)))) (or (is-Undefined!5741 lt!264046) (ite (is-Found!5741 lt!264046) (= (select (arr!17294 a!2986) (index!25192 lt!264046)) k!1786) (ite (is-MissingZero!5741 lt!264046) (= (select (arr!17294 a!2986) (index!25191 lt!264046)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5741 lt!264046) (= (select (arr!17294 a!2986) (index!25194 lt!264046)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!85505 (= lt!264046 e!332223)))

(declare-fun c!66338 () Bool)

(assert (=> d!85505 (= c!66338 (and (is-Intermediate!5741 lt!264047) (undefined!6553 lt!264047)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36041 (_ BitVec 32)) SeekEntryResult!5741)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!85505 (= lt!264047 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!85505 (validMask!0 mask!3053)))

(assert (=> d!85505 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!264046)))

(declare-fun b!577611 () Bool)

(assert (=> b!577611 (= e!332224 (MissingZero!5741 (index!25193 lt!264047)))))

(declare-fun b!577612 () Bool)

(declare-fun c!66336 () Bool)

(assert (=> b!577612 (= c!66336 (= lt!264045 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!577612 (= e!332222 e!332224)))

(declare-fun b!577613 () Bool)

(assert (=> b!577613 (= e!332222 (Found!5741 (index!25193 lt!264047)))))

(assert (= (and d!85505 c!66338) b!577608))

(assert (= (and d!85505 (not c!66338)) b!577610))

(assert (= (and b!577610 c!66337) b!577613))

(assert (= (and b!577610 (not c!66337)) b!577612))

(assert (= (and b!577612 c!66336) b!577611))

(assert (= (and b!577612 (not c!66336)) b!577609))

(declare-fun m!556449 () Bool)

(assert (=> b!577609 m!556449))

(declare-fun m!556451 () Bool)

(assert (=> b!577610 m!556451))

(declare-fun m!556453 () Bool)

(assert (=> d!85505 m!556453))

(declare-fun m!556455 () Bool)

(assert (=> d!85505 m!556455))

(assert (=> d!85505 m!556455))

(declare-fun m!556457 () Bool)

(assert (=> d!85505 m!556457))

(declare-fun m!556459 () Bool)

(assert (=> d!85505 m!556459))

(declare-fun m!556461 () Bool)

(assert (=> d!85505 m!556461))

(assert (=> d!85505 m!556381))

(assert (=> b!577515 d!85505))

(declare-fun d!85511 () Bool)

(declare-fun res!365674 () Bool)

(declare-fun e!332235 () Bool)

(assert (=> d!85511 (=> res!365674 e!332235)))

(assert (=> d!85511 (= res!365674 (is-Nil!11385 Nil!11385))))

(assert (=> d!85511 (= (noDuplicate!228 Nil!11385) e!332235)))

(declare-fun b!577630 () Bool)

(declare-fun e!332236 () Bool)

(assert (=> b!577630 (= e!332235 e!332236)))

