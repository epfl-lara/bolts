; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47310 () Bool)

(assert start!47310)

(declare-fun b!520132 () Bool)

(declare-fun res!318399 () Bool)

(declare-fun e!303508 () Bool)

(assert (=> b!520132 (=> (not res!318399) (not e!303508))))

(declare-datatypes ((array!33159 0))(
  ( (array!33160 (arr!15934 (Array (_ BitVec 32) (_ BitVec 64))) (size!16298 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33159)

(declare-datatypes ((List!10145 0))(
  ( (Nil!10142) (Cons!10141 (h!11060 (_ BitVec 64)) (t!16381 List!10145)) )
))
(declare-fun arrayNoDuplicates!0 (array!33159 (_ BitVec 32) List!10145) Bool)

(assert (=> b!520132 (= res!318399 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10142))))

(declare-fun b!520133 () Bool)

(declare-fun res!318395 () Bool)

(assert (=> b!520133 (=> (not res!318395) (not e!303508))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33159 (_ BitVec 32)) Bool)

(assert (=> b!520133 (= res!318395 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!520134 () Bool)

(declare-fun res!318401 () Bool)

(declare-fun e!303509 () Bool)

(assert (=> b!520134 (=> res!318401 e!303509)))

(declare-datatypes ((SeekEntryResult!4408 0))(
  ( (MissingZero!4408 (index!19832 (_ BitVec 32))) (Found!4408 (index!19833 (_ BitVec 32))) (Intermediate!4408 (undefined!5220 Bool) (index!19834 (_ BitVec 32)) (x!48844 (_ BitVec 32))) (Undefined!4408) (MissingVacant!4408 (index!19835 (_ BitVec 32))) )
))
(declare-fun lt!238280 () SeekEntryResult!4408)

(get-info :version)

(assert (=> b!520134 (= res!318401 (or (undefined!5220 lt!238280) (not ((_ is Intermediate!4408) lt!238280))))))

(declare-fun b!520135 () Bool)

(assert (=> b!520135 (= e!303509 (and (bvsge (index!19834 lt!238280) #b00000000000000000000000000000000) (bvslt (index!19834 lt!238280) (size!16298 a!3235))))))

(assert (=> b!520135 (and (or (= (select (arr!15934 a!3235) (index!19834 lt!238280)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15934 a!3235) (index!19834 lt!238280)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15934 a!3235) (index!19834 lt!238280)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!16098 0))(
  ( (Unit!16099) )
))
(declare-fun lt!238277 () Unit!16098)

(declare-fun e!303506 () Unit!16098)

(assert (=> b!520135 (= lt!238277 e!303506)))

(declare-fun c!61169 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!520135 (= c!61169 (= (select (arr!15934 a!3235) (index!19834 lt!238280)) (select (arr!15934 a!3235) j!176)))))

(assert (=> b!520135 (and (bvslt (x!48844 lt!238280) #b01111111111111111111111111111110) (or (= (select (arr!15934 a!3235) (index!19834 lt!238280)) (select (arr!15934 a!3235) j!176)) (= (select (arr!15934 a!3235) (index!19834 lt!238280)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15934 a!3235) (index!19834 lt!238280)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!520136 () Bool)

(declare-fun Unit!16100 () Unit!16098)

(assert (=> b!520136 (= e!303506 Unit!16100)))

(declare-fun b!520137 () Bool)

(declare-fun e!303510 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33159 (_ BitVec 32)) SeekEntryResult!4408)

(assert (=> b!520137 (= e!303510 (= (seekEntryOrOpen!0 (select (arr!15934 a!3235) j!176) a!3235 mask!3524) (Found!4408 j!176)))))

(declare-fun b!520138 () Bool)

(declare-fun res!318403 () Bool)

(declare-fun e!303507 () Bool)

(assert (=> b!520138 (=> (not res!318403) (not e!303507))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!520138 (= res!318403 (validKeyInArray!0 (select (arr!15934 a!3235) j!176)))))

(declare-fun b!520139 () Bool)

(declare-fun res!318398 () Bool)

(assert (=> b!520139 (=> (not res!318398) (not e!303507))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!520139 (= res!318398 (validKeyInArray!0 k0!2280))))

(declare-fun b!520140 () Bool)

(declare-fun e!303505 () Bool)

(assert (=> b!520140 (= e!303505 false)))

(declare-fun b!520141 () Bool)

(assert (=> b!520141 (= e!303507 e!303508)))

(declare-fun res!318396 () Bool)

(assert (=> b!520141 (=> (not res!318396) (not e!303508))))

(declare-fun lt!238274 () SeekEntryResult!4408)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!520141 (= res!318396 (or (= lt!238274 (MissingZero!4408 i!1204)) (= lt!238274 (MissingVacant!4408 i!1204))))))

(assert (=> b!520141 (= lt!238274 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!520142 () Bool)

(declare-fun res!318404 () Bool)

(assert (=> b!520142 (=> (not res!318404) (not e!303507))))

(assert (=> b!520142 (= res!318404 (and (= (size!16298 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16298 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16298 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!318402 () Bool)

(assert (=> start!47310 (=> (not res!318402) (not e!303507))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47310 (= res!318402 (validMask!0 mask!3524))))

(assert (=> start!47310 e!303507))

(assert (=> start!47310 true))

(declare-fun array_inv!11708 (array!33159) Bool)

(assert (=> start!47310 (array_inv!11708 a!3235)))

(declare-fun b!520143 () Bool)

(declare-fun Unit!16101 () Unit!16098)

(assert (=> b!520143 (= e!303506 Unit!16101)))

(declare-fun lt!238279 () (_ BitVec 32))

(declare-fun lt!238275 () Unit!16098)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33159 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16098)

(assert (=> b!520143 (= lt!238275 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!238279 #b00000000000000000000000000000000 (index!19834 lt!238280) (x!48844 lt!238280) mask!3524))))

(declare-fun lt!238278 () array!33159)

(declare-fun res!318393 () Bool)

(declare-fun lt!238273 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33159 (_ BitVec 32)) SeekEntryResult!4408)

(assert (=> b!520143 (= res!318393 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238279 lt!238273 lt!238278 mask!3524) (Intermediate!4408 false (index!19834 lt!238280) (x!48844 lt!238280))))))

(assert (=> b!520143 (=> (not res!318393) (not e!303505))))

(assert (=> b!520143 e!303505))

(declare-fun b!520144 () Bool)

(declare-fun res!318400 () Bool)

(assert (=> b!520144 (=> (not res!318400) (not e!303507))))

(declare-fun arrayContainsKey!0 (array!33159 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!520144 (= res!318400 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!520145 () Bool)

(assert (=> b!520145 (= e!303508 (not e!303509))))

(declare-fun res!318397 () Bool)

(assert (=> b!520145 (=> res!318397 e!303509)))

(declare-fun lt!238276 () (_ BitVec 32))

(assert (=> b!520145 (= res!318397 (= lt!238280 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238276 lt!238273 lt!238278 mask!3524)))))

(assert (=> b!520145 (= lt!238280 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238279 (select (arr!15934 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!520145 (= lt!238276 (toIndex!0 lt!238273 mask!3524))))

(assert (=> b!520145 (= lt!238273 (select (store (arr!15934 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!520145 (= lt!238279 (toIndex!0 (select (arr!15934 a!3235) j!176) mask!3524))))

(assert (=> b!520145 (= lt!238278 (array!33160 (store (arr!15934 a!3235) i!1204 k0!2280) (size!16298 a!3235)))))

(assert (=> b!520145 e!303510))

(declare-fun res!318394 () Bool)

(assert (=> b!520145 (=> (not res!318394) (not e!303510))))

(assert (=> b!520145 (= res!318394 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!238272 () Unit!16098)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33159 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16098)

(assert (=> b!520145 (= lt!238272 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!47310 res!318402) b!520142))

(assert (= (and b!520142 res!318404) b!520138))

(assert (= (and b!520138 res!318403) b!520139))

(assert (= (and b!520139 res!318398) b!520144))

(assert (= (and b!520144 res!318400) b!520141))

(assert (= (and b!520141 res!318396) b!520133))

(assert (= (and b!520133 res!318395) b!520132))

(assert (= (and b!520132 res!318399) b!520145))

(assert (= (and b!520145 res!318394) b!520137))

(assert (= (and b!520145 (not res!318397)) b!520134))

(assert (= (and b!520134 (not res!318401)) b!520135))

(assert (= (and b!520135 c!61169) b!520143))

(assert (= (and b!520135 (not c!61169)) b!520136))

(assert (= (and b!520143 res!318393) b!520140))

(declare-fun m!501175 () Bool)

(assert (=> b!520133 m!501175))

(declare-fun m!501177 () Bool)

(assert (=> b!520132 m!501177))

(declare-fun m!501179 () Bool)

(assert (=> b!520135 m!501179))

(declare-fun m!501181 () Bool)

(assert (=> b!520135 m!501181))

(assert (=> b!520138 m!501181))

(assert (=> b!520138 m!501181))

(declare-fun m!501183 () Bool)

(assert (=> b!520138 m!501183))

(declare-fun m!501185 () Bool)

(assert (=> b!520143 m!501185))

(declare-fun m!501187 () Bool)

(assert (=> b!520143 m!501187))

(declare-fun m!501189 () Bool)

(assert (=> b!520145 m!501189))

(declare-fun m!501191 () Bool)

(assert (=> b!520145 m!501191))

(assert (=> b!520145 m!501181))

(declare-fun m!501193 () Bool)

(assert (=> b!520145 m!501193))

(assert (=> b!520145 m!501181))

(declare-fun m!501195 () Bool)

(assert (=> b!520145 m!501195))

(assert (=> b!520145 m!501181))

(declare-fun m!501197 () Bool)

(assert (=> b!520145 m!501197))

(declare-fun m!501199 () Bool)

(assert (=> b!520145 m!501199))

(declare-fun m!501201 () Bool)

(assert (=> b!520145 m!501201))

(declare-fun m!501203 () Bool)

(assert (=> b!520145 m!501203))

(declare-fun m!501205 () Bool)

(assert (=> start!47310 m!501205))

(declare-fun m!501207 () Bool)

(assert (=> start!47310 m!501207))

(declare-fun m!501209 () Bool)

(assert (=> b!520144 m!501209))

(assert (=> b!520137 m!501181))

(assert (=> b!520137 m!501181))

(declare-fun m!501211 () Bool)

(assert (=> b!520137 m!501211))

(declare-fun m!501213 () Bool)

(assert (=> b!520141 m!501213))

(declare-fun m!501215 () Bool)

(assert (=> b!520139 m!501215))

(check-sat (not b!520145) (not b!520138) (not b!520141) (not start!47310) (not b!520132) (not b!520144) (not b!520143) (not b!520133) (not b!520137) (not b!520139))
(check-sat)
(get-model)

(declare-fun d!80155 () Bool)

(assert (=> d!80155 (= (validKeyInArray!0 (select (arr!15934 a!3235) j!176)) (and (not (= (select (arr!15934 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15934 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!520138 d!80155))

(declare-fun d!80157 () Bool)

(declare-fun e!303535 () Bool)

(assert (=> d!80157 e!303535))

(declare-fun res!318443 () Bool)

(assert (=> d!80157 (=> (not res!318443) (not e!303535))))

(assert (=> d!80157 (= res!318443 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16298 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16298 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16298 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16298 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16298 a!3235))))))

(declare-fun lt!238310 () Unit!16098)

(declare-fun choose!47 (array!33159 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16098)

(assert (=> d!80157 (= lt!238310 (choose!47 a!3235 i!1204 k0!2280 j!176 lt!238279 #b00000000000000000000000000000000 (index!19834 lt!238280) (x!48844 lt!238280) mask!3524))))

(assert (=> d!80157 (validMask!0 mask!3524)))

(assert (=> d!80157 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!238279 #b00000000000000000000000000000000 (index!19834 lt!238280) (x!48844 lt!238280) mask!3524) lt!238310)))

(declare-fun b!520190 () Bool)

(assert (=> b!520190 (= e!303535 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238279 (select (store (arr!15934 a!3235) i!1204 k0!2280) j!176) (array!33160 (store (arr!15934 a!3235) i!1204 k0!2280) (size!16298 a!3235)) mask!3524) (Intermediate!4408 false (index!19834 lt!238280) (x!48844 lt!238280))))))

(assert (= (and d!80157 res!318443) b!520190))

(declare-fun m!501259 () Bool)

(assert (=> d!80157 m!501259))

(assert (=> d!80157 m!501205))

(assert (=> b!520190 m!501189))

(assert (=> b!520190 m!501191))

(assert (=> b!520190 m!501191))

(declare-fun m!501261 () Bool)

(assert (=> b!520190 m!501261))

(assert (=> b!520143 d!80157))

(declare-fun b!520209 () Bool)

(declare-fun e!303546 () Bool)

(declare-fun e!303550 () Bool)

(assert (=> b!520209 (= e!303546 e!303550)))

(declare-fun res!318451 () Bool)

(declare-fun lt!238316 () SeekEntryResult!4408)

(assert (=> b!520209 (= res!318451 (and ((_ is Intermediate!4408) lt!238316) (not (undefined!5220 lt!238316)) (bvslt (x!48844 lt!238316) #b01111111111111111111111111111110) (bvsge (x!48844 lt!238316) #b00000000000000000000000000000000) (bvsge (x!48844 lt!238316) #b00000000000000000000000000000000)))))

(assert (=> b!520209 (=> (not res!318451) (not e!303550))))

(declare-fun e!303548 () SeekEntryResult!4408)

(declare-fun b!520210 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!520210 (= e!303548 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!238279 #b00000000000000000000000000000000 mask!3524) lt!238273 lt!238278 mask!3524))))

(declare-fun b!520211 () Bool)

(assert (=> b!520211 (and (bvsge (index!19834 lt!238316) #b00000000000000000000000000000000) (bvslt (index!19834 lt!238316) (size!16298 lt!238278)))))

(declare-fun res!318452 () Bool)

(assert (=> b!520211 (= res!318452 (= (select (arr!15934 lt!238278) (index!19834 lt!238316)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!303549 () Bool)

(assert (=> b!520211 (=> res!318452 e!303549)))

(declare-fun b!520212 () Bool)

(declare-fun e!303547 () SeekEntryResult!4408)

(assert (=> b!520212 (= e!303547 (Intermediate!4408 true lt!238279 #b00000000000000000000000000000000))))

(declare-fun b!520213 () Bool)

(assert (=> b!520213 (= e!303546 (bvsge (x!48844 lt!238316) #b01111111111111111111111111111110))))

(declare-fun b!520214 () Bool)

(assert (=> b!520214 (= e!303547 e!303548)))

(declare-fun c!61179 () Bool)

(declare-fun lt!238315 () (_ BitVec 64))

(assert (=> b!520214 (= c!61179 (or (= lt!238315 lt!238273) (= (bvadd lt!238315 lt!238315) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!520215 () Bool)

(assert (=> b!520215 (= e!303548 (Intermediate!4408 false lt!238279 #b00000000000000000000000000000000))))

(declare-fun b!520216 () Bool)

(assert (=> b!520216 (and (bvsge (index!19834 lt!238316) #b00000000000000000000000000000000) (bvslt (index!19834 lt!238316) (size!16298 lt!238278)))))

(declare-fun res!318453 () Bool)

(assert (=> b!520216 (= res!318453 (= (select (arr!15934 lt!238278) (index!19834 lt!238316)) lt!238273))))

(assert (=> b!520216 (=> res!318453 e!303549)))

(assert (=> b!520216 (= e!303550 e!303549)))

(declare-fun b!520217 () Bool)

(assert (=> b!520217 (and (bvsge (index!19834 lt!238316) #b00000000000000000000000000000000) (bvslt (index!19834 lt!238316) (size!16298 lt!238278)))))

(assert (=> b!520217 (= e!303549 (= (select (arr!15934 lt!238278) (index!19834 lt!238316)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!80159 () Bool)

(assert (=> d!80159 e!303546))

(declare-fun c!61180 () Bool)

(assert (=> d!80159 (= c!61180 (and ((_ is Intermediate!4408) lt!238316) (undefined!5220 lt!238316)))))

(assert (=> d!80159 (= lt!238316 e!303547)))

(declare-fun c!61181 () Bool)

(assert (=> d!80159 (= c!61181 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80159 (= lt!238315 (select (arr!15934 lt!238278) lt!238279))))

(assert (=> d!80159 (validMask!0 mask!3524)))

(assert (=> d!80159 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238279 lt!238273 lt!238278 mask!3524) lt!238316)))

(assert (= (and d!80159 c!61181) b!520212))

(assert (= (and d!80159 (not c!61181)) b!520214))

(assert (= (and b!520214 c!61179) b!520215))

(assert (= (and b!520214 (not c!61179)) b!520210))

(assert (= (and d!80159 c!61180) b!520213))

(assert (= (and d!80159 (not c!61180)) b!520209))

(assert (= (and b!520209 res!318451) b!520216))

(assert (= (and b!520216 (not res!318453)) b!520211))

(assert (= (and b!520211 (not res!318452)) b!520217))

(declare-fun m!501263 () Bool)

(assert (=> b!520217 m!501263))

(assert (=> b!520211 m!501263))

(declare-fun m!501265 () Bool)

(assert (=> d!80159 m!501265))

(assert (=> d!80159 m!501205))

(assert (=> b!520216 m!501263))

(declare-fun m!501267 () Bool)

(assert (=> b!520210 m!501267))

(assert (=> b!520210 m!501267))

(declare-fun m!501269 () Bool)

(assert (=> b!520210 m!501269))

(assert (=> b!520143 d!80159))

(declare-fun bm!31784 () Bool)

(declare-fun call!31787 () Bool)

(declare-fun c!61184 () Bool)

(assert (=> bm!31784 (= call!31787 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!61184 (Cons!10141 (select (arr!15934 a!3235) #b00000000000000000000000000000000) Nil!10142) Nil!10142)))))

(declare-fun b!520228 () Bool)

(declare-fun e!303561 () Bool)

(declare-fun e!303559 () Bool)

(assert (=> b!520228 (= e!303561 e!303559)))

(declare-fun res!318462 () Bool)

(assert (=> b!520228 (=> (not res!318462) (not e!303559))))

(declare-fun e!303562 () Bool)

(assert (=> b!520228 (= res!318462 (not e!303562))))

(declare-fun res!318461 () Bool)

(assert (=> b!520228 (=> (not res!318461) (not e!303562))))

(assert (=> b!520228 (= res!318461 (validKeyInArray!0 (select (arr!15934 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!520229 () Bool)

(declare-fun contains!2766 (List!10145 (_ BitVec 64)) Bool)

(assert (=> b!520229 (= e!303562 (contains!2766 Nil!10142 (select (arr!15934 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!520230 () Bool)

(declare-fun e!303560 () Bool)

(assert (=> b!520230 (= e!303560 call!31787)))

(declare-fun d!80165 () Bool)

(declare-fun res!318463 () Bool)

(assert (=> d!80165 (=> res!318463 e!303561)))

(assert (=> d!80165 (= res!318463 (bvsge #b00000000000000000000000000000000 (size!16298 a!3235)))))

(assert (=> d!80165 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10142) e!303561)))

(declare-fun b!520231 () Bool)

(assert (=> b!520231 (= e!303559 e!303560)))

(assert (=> b!520231 (= c!61184 (validKeyInArray!0 (select (arr!15934 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!520232 () Bool)

(assert (=> b!520232 (= e!303560 call!31787)))

(assert (= (and d!80165 (not res!318463)) b!520228))

(assert (= (and b!520228 res!318461) b!520229))

(assert (= (and b!520228 res!318462) b!520231))

(assert (= (and b!520231 c!61184) b!520232))

(assert (= (and b!520231 (not c!61184)) b!520230))

(assert (= (or b!520232 b!520230) bm!31784))

(declare-fun m!501271 () Bool)

(assert (=> bm!31784 m!501271))

(declare-fun m!501273 () Bool)

(assert (=> bm!31784 m!501273))

(assert (=> b!520228 m!501271))

(assert (=> b!520228 m!501271))

(declare-fun m!501275 () Bool)

(assert (=> b!520228 m!501275))

(assert (=> b!520229 m!501271))

(assert (=> b!520229 m!501271))

(declare-fun m!501277 () Bool)

(assert (=> b!520229 m!501277))

(assert (=> b!520231 m!501271))

(assert (=> b!520231 m!501271))

(assert (=> b!520231 m!501275))

(assert (=> b!520132 d!80165))

(declare-fun b!520299 () Bool)

(declare-fun e!303601 () SeekEntryResult!4408)

(declare-fun lt!238350 () SeekEntryResult!4408)

(assert (=> b!520299 (= e!303601 (Found!4408 (index!19834 lt!238350)))))

(declare-fun b!520300 () Bool)

(declare-fun c!61209 () Bool)

(declare-fun lt!238349 () (_ BitVec 64))

(assert (=> b!520300 (= c!61209 (= lt!238349 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!303600 () SeekEntryResult!4408)

(assert (=> b!520300 (= e!303601 e!303600)))

(declare-fun b!520301 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33159 (_ BitVec 32)) SeekEntryResult!4408)

(assert (=> b!520301 (= e!303600 (seekKeyOrZeroReturnVacant!0 (x!48844 lt!238350) (index!19834 lt!238350) (index!19834 lt!238350) (select (arr!15934 a!3235) j!176) a!3235 mask!3524))))

(declare-fun d!80173 () Bool)

(declare-fun lt!238351 () SeekEntryResult!4408)

(assert (=> d!80173 (and (or ((_ is Undefined!4408) lt!238351) (not ((_ is Found!4408) lt!238351)) (and (bvsge (index!19833 lt!238351) #b00000000000000000000000000000000) (bvslt (index!19833 lt!238351) (size!16298 a!3235)))) (or ((_ is Undefined!4408) lt!238351) ((_ is Found!4408) lt!238351) (not ((_ is MissingZero!4408) lt!238351)) (and (bvsge (index!19832 lt!238351) #b00000000000000000000000000000000) (bvslt (index!19832 lt!238351) (size!16298 a!3235)))) (or ((_ is Undefined!4408) lt!238351) ((_ is Found!4408) lt!238351) ((_ is MissingZero!4408) lt!238351) (not ((_ is MissingVacant!4408) lt!238351)) (and (bvsge (index!19835 lt!238351) #b00000000000000000000000000000000) (bvslt (index!19835 lt!238351) (size!16298 a!3235)))) (or ((_ is Undefined!4408) lt!238351) (ite ((_ is Found!4408) lt!238351) (= (select (arr!15934 a!3235) (index!19833 lt!238351)) (select (arr!15934 a!3235) j!176)) (ite ((_ is MissingZero!4408) lt!238351) (= (select (arr!15934 a!3235) (index!19832 lt!238351)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4408) lt!238351) (= (select (arr!15934 a!3235) (index!19835 lt!238351)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!303599 () SeekEntryResult!4408)

(assert (=> d!80173 (= lt!238351 e!303599)))

(declare-fun c!61211 () Bool)

(assert (=> d!80173 (= c!61211 (and ((_ is Intermediate!4408) lt!238350) (undefined!5220 lt!238350)))))

(assert (=> d!80173 (= lt!238350 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15934 a!3235) j!176) mask!3524) (select (arr!15934 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!80173 (validMask!0 mask!3524)))

(assert (=> d!80173 (= (seekEntryOrOpen!0 (select (arr!15934 a!3235) j!176) a!3235 mask!3524) lt!238351)))

(declare-fun b!520302 () Bool)

(assert (=> b!520302 (= e!303600 (MissingZero!4408 (index!19834 lt!238350)))))

(declare-fun b!520303 () Bool)

(assert (=> b!520303 (= e!303599 e!303601)))

(assert (=> b!520303 (= lt!238349 (select (arr!15934 a!3235) (index!19834 lt!238350)))))

(declare-fun c!61210 () Bool)

(assert (=> b!520303 (= c!61210 (= lt!238349 (select (arr!15934 a!3235) j!176)))))

(declare-fun b!520304 () Bool)

(assert (=> b!520304 (= e!303599 Undefined!4408)))

(assert (= (and d!80173 c!61211) b!520304))

(assert (= (and d!80173 (not c!61211)) b!520303))

(assert (= (and b!520303 c!61210) b!520299))

(assert (= (and b!520303 (not c!61210)) b!520300))

(assert (= (and b!520300 c!61209) b!520302))

(assert (= (and b!520300 (not c!61209)) b!520301))

(assert (=> b!520301 m!501181))

(declare-fun m!501295 () Bool)

(assert (=> b!520301 m!501295))

(assert (=> d!80173 m!501193))

(assert (=> d!80173 m!501181))

(declare-fun m!501297 () Bool)

(assert (=> d!80173 m!501297))

(declare-fun m!501299 () Bool)

(assert (=> d!80173 m!501299))

(assert (=> d!80173 m!501181))

(assert (=> d!80173 m!501193))

(assert (=> d!80173 m!501205))

(declare-fun m!501301 () Bool)

(assert (=> d!80173 m!501301))

(declare-fun m!501303 () Bool)

(assert (=> d!80173 m!501303))

(declare-fun m!501305 () Bool)

(assert (=> b!520303 m!501305))

(assert (=> b!520137 d!80173))

(declare-fun d!80179 () Bool)

(assert (=> d!80179 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!520139 d!80179))

(declare-fun d!80181 () Bool)

(declare-fun res!318490 () Bool)

(declare-fun e!303612 () Bool)

(assert (=> d!80181 (=> res!318490 e!303612)))

(assert (=> d!80181 (= res!318490 (= (select (arr!15934 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!80181 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!303612)))

(declare-fun b!520317 () Bool)

(declare-fun e!303613 () Bool)

(assert (=> b!520317 (= e!303612 e!303613)))

(declare-fun res!318491 () Bool)

(assert (=> b!520317 (=> (not res!318491) (not e!303613))))

(assert (=> b!520317 (= res!318491 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16298 a!3235)))))

(declare-fun b!520318 () Bool)

(assert (=> b!520318 (= e!303613 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!80181 (not res!318490)) b!520317))

(assert (= (and b!520317 res!318491) b!520318))

(assert (=> d!80181 m!501271))

(declare-fun m!501309 () Bool)

(assert (=> b!520318 m!501309))

(assert (=> b!520144 d!80181))

(declare-fun d!80185 () Bool)

(assert (=> d!80185 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!47310 d!80185))

(declare-fun d!80197 () Bool)

(assert (=> d!80197 (= (array_inv!11708 a!3235) (bvsge (size!16298 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!47310 d!80197))

(declare-fun b!520361 () Bool)

(declare-fun e!303643 () Bool)

(declare-fun e!303644 () Bool)

(assert (=> b!520361 (= e!303643 e!303644)))

(declare-fun c!61226 () Bool)

(assert (=> b!520361 (= c!61226 (validKeyInArray!0 (select (arr!15934 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!520362 () Bool)

(declare-fun e!303642 () Bool)

(declare-fun call!31796 () Bool)

(assert (=> b!520362 (= e!303642 call!31796)))

(declare-fun bm!31793 () Bool)

(assert (=> bm!31793 (= call!31796 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!520363 () Bool)

(assert (=> b!520363 (= e!303644 call!31796)))

(declare-fun d!80201 () Bool)

(declare-fun res!318510 () Bool)

(assert (=> d!80201 (=> res!318510 e!303643)))

(assert (=> d!80201 (= res!318510 (bvsge #b00000000000000000000000000000000 (size!16298 a!3235)))))

(assert (=> d!80201 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!303643)))

(declare-fun b!520364 () Bool)

(assert (=> b!520364 (= e!303644 e!303642)))

(declare-fun lt!238390 () (_ BitVec 64))

(assert (=> b!520364 (= lt!238390 (select (arr!15934 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!238389 () Unit!16098)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33159 (_ BitVec 64) (_ BitVec 32)) Unit!16098)

(assert (=> b!520364 (= lt!238389 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!238390 #b00000000000000000000000000000000))))

(assert (=> b!520364 (arrayContainsKey!0 a!3235 lt!238390 #b00000000000000000000000000000000)))

(declare-fun lt!238388 () Unit!16098)

(assert (=> b!520364 (= lt!238388 lt!238389)))

(declare-fun res!318511 () Bool)

(assert (=> b!520364 (= res!318511 (= (seekEntryOrOpen!0 (select (arr!15934 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4408 #b00000000000000000000000000000000)))))

(assert (=> b!520364 (=> (not res!318511) (not e!303642))))

(assert (= (and d!80201 (not res!318510)) b!520361))

(assert (= (and b!520361 c!61226) b!520364))

(assert (= (and b!520361 (not c!61226)) b!520363))

(assert (= (and b!520364 res!318511) b!520362))

(assert (= (or b!520362 b!520363) bm!31793))

(assert (=> b!520361 m!501271))

(assert (=> b!520361 m!501271))

(assert (=> b!520361 m!501275))

(declare-fun m!501341 () Bool)

(assert (=> bm!31793 m!501341))

(assert (=> b!520364 m!501271))

(declare-fun m!501343 () Bool)

(assert (=> b!520364 m!501343))

(declare-fun m!501345 () Bool)

(assert (=> b!520364 m!501345))

(assert (=> b!520364 m!501271))

(declare-fun m!501347 () Bool)

(assert (=> b!520364 m!501347))

(assert (=> b!520133 d!80201))

(declare-fun b!520365 () Bool)

(declare-fun e!303645 () Bool)

(declare-fun e!303649 () Bool)

(assert (=> b!520365 (= e!303645 e!303649)))

(declare-fun res!318512 () Bool)

(declare-fun lt!238392 () SeekEntryResult!4408)

(assert (=> b!520365 (= res!318512 (and ((_ is Intermediate!4408) lt!238392) (not (undefined!5220 lt!238392)) (bvslt (x!48844 lt!238392) #b01111111111111111111111111111110) (bvsge (x!48844 lt!238392) #b00000000000000000000000000000000) (bvsge (x!48844 lt!238392) #b00000000000000000000000000000000)))))

(assert (=> b!520365 (=> (not res!318512) (not e!303649))))

(declare-fun b!520366 () Bool)

(declare-fun e!303647 () SeekEntryResult!4408)

(assert (=> b!520366 (= e!303647 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!238276 #b00000000000000000000000000000000 mask!3524) lt!238273 lt!238278 mask!3524))))

(declare-fun b!520367 () Bool)

(assert (=> b!520367 (and (bvsge (index!19834 lt!238392) #b00000000000000000000000000000000) (bvslt (index!19834 lt!238392) (size!16298 lt!238278)))))

(declare-fun res!318513 () Bool)

(assert (=> b!520367 (= res!318513 (= (select (arr!15934 lt!238278) (index!19834 lt!238392)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!303648 () Bool)

(assert (=> b!520367 (=> res!318513 e!303648)))

(declare-fun b!520368 () Bool)

(declare-fun e!303646 () SeekEntryResult!4408)

(assert (=> b!520368 (= e!303646 (Intermediate!4408 true lt!238276 #b00000000000000000000000000000000))))

(declare-fun b!520369 () Bool)

(assert (=> b!520369 (= e!303645 (bvsge (x!48844 lt!238392) #b01111111111111111111111111111110))))

(declare-fun b!520370 () Bool)

(assert (=> b!520370 (= e!303646 e!303647)))

(declare-fun c!61227 () Bool)

(declare-fun lt!238391 () (_ BitVec 64))

(assert (=> b!520370 (= c!61227 (or (= lt!238391 lt!238273) (= (bvadd lt!238391 lt!238391) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!520371 () Bool)

(assert (=> b!520371 (= e!303647 (Intermediate!4408 false lt!238276 #b00000000000000000000000000000000))))

(declare-fun b!520372 () Bool)

(assert (=> b!520372 (and (bvsge (index!19834 lt!238392) #b00000000000000000000000000000000) (bvslt (index!19834 lt!238392) (size!16298 lt!238278)))))

(declare-fun res!318514 () Bool)

(assert (=> b!520372 (= res!318514 (= (select (arr!15934 lt!238278) (index!19834 lt!238392)) lt!238273))))

(assert (=> b!520372 (=> res!318514 e!303648)))

(assert (=> b!520372 (= e!303649 e!303648)))

(declare-fun b!520373 () Bool)

(assert (=> b!520373 (and (bvsge (index!19834 lt!238392) #b00000000000000000000000000000000) (bvslt (index!19834 lt!238392) (size!16298 lt!238278)))))

(assert (=> b!520373 (= e!303648 (= (select (arr!15934 lt!238278) (index!19834 lt!238392)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!80203 () Bool)

(assert (=> d!80203 e!303645))

(declare-fun c!61228 () Bool)

(assert (=> d!80203 (= c!61228 (and ((_ is Intermediate!4408) lt!238392) (undefined!5220 lt!238392)))))

(assert (=> d!80203 (= lt!238392 e!303646)))

(declare-fun c!61229 () Bool)

(assert (=> d!80203 (= c!61229 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80203 (= lt!238391 (select (arr!15934 lt!238278) lt!238276))))

(assert (=> d!80203 (validMask!0 mask!3524)))

(assert (=> d!80203 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238276 lt!238273 lt!238278 mask!3524) lt!238392)))

(assert (= (and d!80203 c!61229) b!520368))

(assert (= (and d!80203 (not c!61229)) b!520370))

(assert (= (and b!520370 c!61227) b!520371))

(assert (= (and b!520370 (not c!61227)) b!520366))

(assert (= (and d!80203 c!61228) b!520369))

(assert (= (and d!80203 (not c!61228)) b!520365))

(assert (= (and b!520365 res!318512) b!520372))

(assert (= (and b!520372 (not res!318514)) b!520367))

(assert (= (and b!520367 (not res!318513)) b!520373))

(declare-fun m!501349 () Bool)

(assert (=> b!520373 m!501349))

(assert (=> b!520367 m!501349))

(declare-fun m!501351 () Bool)

(assert (=> d!80203 m!501351))

(assert (=> d!80203 m!501205))

(assert (=> b!520372 m!501349))

(declare-fun m!501353 () Bool)

(assert (=> b!520366 m!501353))

(assert (=> b!520366 m!501353))

(declare-fun m!501355 () Bool)

(assert (=> b!520366 m!501355))

(assert (=> b!520145 d!80203))

(declare-fun d!80205 () Bool)

(declare-fun lt!238410 () (_ BitVec 32))

(declare-fun lt!238409 () (_ BitVec 32))

(assert (=> d!80205 (= lt!238410 (bvmul (bvxor lt!238409 (bvlshr lt!238409 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80205 (= lt!238409 ((_ extract 31 0) (bvand (bvxor (select (arr!15934 a!3235) j!176) (bvlshr (select (arr!15934 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80205 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!318515 (let ((h!11064 ((_ extract 31 0) (bvand (bvxor (select (arr!15934 a!3235) j!176) (bvlshr (select (arr!15934 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48852 (bvmul (bvxor h!11064 (bvlshr h!11064 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48852 (bvlshr x!48852 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!318515 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!318515 #b00000000000000000000000000000000))))))

(assert (=> d!80205 (= (toIndex!0 (select (arr!15934 a!3235) j!176) mask!3524) (bvand (bvxor lt!238410 (bvlshr lt!238410 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!520145 d!80205))

(declare-fun b!520398 () Bool)

(declare-fun e!303663 () Bool)

(declare-fun e!303664 () Bool)

(assert (=> b!520398 (= e!303663 e!303664)))

(declare-fun c!61242 () Bool)

(assert (=> b!520398 (= c!61242 (validKeyInArray!0 (select (arr!15934 a!3235) j!176)))))

(declare-fun b!520399 () Bool)

(declare-fun e!303662 () Bool)

(declare-fun call!31797 () Bool)

(assert (=> b!520399 (= e!303662 call!31797)))

(declare-fun bm!31794 () Bool)

(assert (=> bm!31794 (= call!31797 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!520400 () Bool)

(assert (=> b!520400 (= e!303664 call!31797)))

(declare-fun d!80207 () Bool)

(declare-fun res!318516 () Bool)

(assert (=> d!80207 (=> res!318516 e!303663)))

(assert (=> d!80207 (= res!318516 (bvsge j!176 (size!16298 a!3235)))))

(assert (=> d!80207 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!303663)))

(declare-fun b!520401 () Bool)

(assert (=> b!520401 (= e!303664 e!303662)))

(declare-fun lt!238413 () (_ BitVec 64))

(assert (=> b!520401 (= lt!238413 (select (arr!15934 a!3235) j!176))))

(declare-fun lt!238412 () Unit!16098)

(assert (=> b!520401 (= lt!238412 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!238413 j!176))))

(assert (=> b!520401 (arrayContainsKey!0 a!3235 lt!238413 #b00000000000000000000000000000000)))

(declare-fun lt!238411 () Unit!16098)

(assert (=> b!520401 (= lt!238411 lt!238412)))

(declare-fun res!318517 () Bool)

(assert (=> b!520401 (= res!318517 (= (seekEntryOrOpen!0 (select (arr!15934 a!3235) j!176) a!3235 mask!3524) (Found!4408 j!176)))))

(assert (=> b!520401 (=> (not res!318517) (not e!303662))))

(assert (= (and d!80207 (not res!318516)) b!520398))

(assert (= (and b!520398 c!61242) b!520401))

(assert (= (and b!520398 (not c!61242)) b!520400))

(assert (= (and b!520401 res!318517) b!520399))

(assert (= (or b!520399 b!520400) bm!31794))

(assert (=> b!520398 m!501181))

(assert (=> b!520398 m!501181))

(assert (=> b!520398 m!501183))

(declare-fun m!501357 () Bool)

(assert (=> bm!31794 m!501357))

(assert (=> b!520401 m!501181))

(declare-fun m!501359 () Bool)

(assert (=> b!520401 m!501359))

(declare-fun m!501361 () Bool)

(assert (=> b!520401 m!501361))

(assert (=> b!520401 m!501181))

(assert (=> b!520401 m!501211))

(assert (=> b!520145 d!80207))

(declare-fun d!80209 () Bool)

(declare-fun lt!238415 () (_ BitVec 32))

(declare-fun lt!238414 () (_ BitVec 32))

(assert (=> d!80209 (= lt!238415 (bvmul (bvxor lt!238414 (bvlshr lt!238414 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80209 (= lt!238414 ((_ extract 31 0) (bvand (bvxor lt!238273 (bvlshr lt!238273 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80209 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!318515 (let ((h!11064 ((_ extract 31 0) (bvand (bvxor lt!238273 (bvlshr lt!238273 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48852 (bvmul (bvxor h!11064 (bvlshr h!11064 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48852 (bvlshr x!48852 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!318515 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!318515 #b00000000000000000000000000000000))))))

(assert (=> d!80209 (= (toIndex!0 lt!238273 mask!3524) (bvand (bvxor lt!238415 (bvlshr lt!238415 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!520145 d!80209))

(declare-fun d!80211 () Bool)

(assert (=> d!80211 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!238424 () Unit!16098)

(declare-fun choose!38 (array!33159 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16098)

(assert (=> d!80211 (= lt!238424 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!80211 (validMask!0 mask!3524)))

(assert (=> d!80211 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!238424)))

(declare-fun bs!16385 () Bool)

(assert (= bs!16385 d!80211))

(assert (=> bs!16385 m!501197))

(declare-fun m!501389 () Bool)

(assert (=> bs!16385 m!501389))

(assert (=> bs!16385 m!501205))

(assert (=> b!520145 d!80211))

(declare-fun b!520414 () Bool)

(declare-fun e!303671 () Bool)

(declare-fun e!303675 () Bool)

(assert (=> b!520414 (= e!303671 e!303675)))

(declare-fun res!318518 () Bool)

(declare-fun lt!238426 () SeekEntryResult!4408)

(assert (=> b!520414 (= res!318518 (and ((_ is Intermediate!4408) lt!238426) (not (undefined!5220 lt!238426)) (bvslt (x!48844 lt!238426) #b01111111111111111111111111111110) (bvsge (x!48844 lt!238426) #b00000000000000000000000000000000) (bvsge (x!48844 lt!238426) #b00000000000000000000000000000000)))))

(assert (=> b!520414 (=> (not res!318518) (not e!303675))))

(declare-fun e!303673 () SeekEntryResult!4408)

(declare-fun b!520415 () Bool)

(assert (=> b!520415 (= e!303673 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!238279 #b00000000000000000000000000000000 mask!3524) (select (arr!15934 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!520416 () Bool)

(assert (=> b!520416 (and (bvsge (index!19834 lt!238426) #b00000000000000000000000000000000) (bvslt (index!19834 lt!238426) (size!16298 a!3235)))))

(declare-fun res!318519 () Bool)

(assert (=> b!520416 (= res!318519 (= (select (arr!15934 a!3235) (index!19834 lt!238426)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!303674 () Bool)

(assert (=> b!520416 (=> res!318519 e!303674)))

(declare-fun b!520417 () Bool)

(declare-fun e!303672 () SeekEntryResult!4408)

(assert (=> b!520417 (= e!303672 (Intermediate!4408 true lt!238279 #b00000000000000000000000000000000))))

(declare-fun b!520418 () Bool)

(assert (=> b!520418 (= e!303671 (bvsge (x!48844 lt!238426) #b01111111111111111111111111111110))))

(declare-fun b!520419 () Bool)

(assert (=> b!520419 (= e!303672 e!303673)))

(declare-fun c!61249 () Bool)

(declare-fun lt!238425 () (_ BitVec 64))

(assert (=> b!520419 (= c!61249 (or (= lt!238425 (select (arr!15934 a!3235) j!176)) (= (bvadd lt!238425 lt!238425) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!520420 () Bool)

(assert (=> b!520420 (= e!303673 (Intermediate!4408 false lt!238279 #b00000000000000000000000000000000))))

(declare-fun b!520421 () Bool)

(assert (=> b!520421 (and (bvsge (index!19834 lt!238426) #b00000000000000000000000000000000) (bvslt (index!19834 lt!238426) (size!16298 a!3235)))))

(declare-fun res!318520 () Bool)

(assert (=> b!520421 (= res!318520 (= (select (arr!15934 a!3235) (index!19834 lt!238426)) (select (arr!15934 a!3235) j!176)))))

(assert (=> b!520421 (=> res!318520 e!303674)))

(assert (=> b!520421 (= e!303675 e!303674)))

(declare-fun b!520422 () Bool)

(assert (=> b!520422 (and (bvsge (index!19834 lt!238426) #b00000000000000000000000000000000) (bvslt (index!19834 lt!238426) (size!16298 a!3235)))))

(assert (=> b!520422 (= e!303674 (= (select (arr!15934 a!3235) (index!19834 lt!238426)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!80217 () Bool)

(assert (=> d!80217 e!303671))

(declare-fun c!61250 () Bool)

(assert (=> d!80217 (= c!61250 (and ((_ is Intermediate!4408) lt!238426) (undefined!5220 lt!238426)))))

(assert (=> d!80217 (= lt!238426 e!303672)))

(declare-fun c!61251 () Bool)

(assert (=> d!80217 (= c!61251 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80217 (= lt!238425 (select (arr!15934 a!3235) lt!238279))))

(assert (=> d!80217 (validMask!0 mask!3524)))

(assert (=> d!80217 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238279 (select (arr!15934 a!3235) j!176) a!3235 mask!3524) lt!238426)))

(assert (= (and d!80217 c!61251) b!520417))

(assert (= (and d!80217 (not c!61251)) b!520419))

(assert (= (and b!520419 c!61249) b!520420))

(assert (= (and b!520419 (not c!61249)) b!520415))

(assert (= (and d!80217 c!61250) b!520418))

(assert (= (and d!80217 (not c!61250)) b!520414))

(assert (= (and b!520414 res!318518) b!520421))

(assert (= (and b!520421 (not res!318520)) b!520416))

(assert (= (and b!520416 (not res!318519)) b!520422))

(declare-fun m!501391 () Bool)

(assert (=> b!520422 m!501391))

(assert (=> b!520416 m!501391))

(declare-fun m!501393 () Bool)

(assert (=> d!80217 m!501393))

(assert (=> d!80217 m!501205))

(assert (=> b!520421 m!501391))

(assert (=> b!520415 m!501267))

(assert (=> b!520415 m!501267))

(assert (=> b!520415 m!501181))

(declare-fun m!501401 () Bool)

(assert (=> b!520415 m!501401))

(assert (=> b!520145 d!80217))

(declare-fun b!520427 () Bool)

(declare-fun e!303681 () SeekEntryResult!4408)

(declare-fun lt!238431 () SeekEntryResult!4408)

(assert (=> b!520427 (= e!303681 (Found!4408 (index!19834 lt!238431)))))

(declare-fun b!520428 () Bool)

(declare-fun c!61253 () Bool)

(declare-fun lt!238430 () (_ BitVec 64))

(assert (=> b!520428 (= c!61253 (= lt!238430 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!303680 () SeekEntryResult!4408)

(assert (=> b!520428 (= e!303681 e!303680)))

(declare-fun b!520429 () Bool)

(assert (=> b!520429 (= e!303680 (seekKeyOrZeroReturnVacant!0 (x!48844 lt!238431) (index!19834 lt!238431) (index!19834 lt!238431) k0!2280 a!3235 mask!3524))))

(declare-fun d!80223 () Bool)

(declare-fun lt!238432 () SeekEntryResult!4408)

(assert (=> d!80223 (and (or ((_ is Undefined!4408) lt!238432) (not ((_ is Found!4408) lt!238432)) (and (bvsge (index!19833 lt!238432) #b00000000000000000000000000000000) (bvslt (index!19833 lt!238432) (size!16298 a!3235)))) (or ((_ is Undefined!4408) lt!238432) ((_ is Found!4408) lt!238432) (not ((_ is MissingZero!4408) lt!238432)) (and (bvsge (index!19832 lt!238432) #b00000000000000000000000000000000) (bvslt (index!19832 lt!238432) (size!16298 a!3235)))) (or ((_ is Undefined!4408) lt!238432) ((_ is Found!4408) lt!238432) ((_ is MissingZero!4408) lt!238432) (not ((_ is MissingVacant!4408) lt!238432)) (and (bvsge (index!19835 lt!238432) #b00000000000000000000000000000000) (bvslt (index!19835 lt!238432) (size!16298 a!3235)))) (or ((_ is Undefined!4408) lt!238432) (ite ((_ is Found!4408) lt!238432) (= (select (arr!15934 a!3235) (index!19833 lt!238432)) k0!2280) (ite ((_ is MissingZero!4408) lt!238432) (= (select (arr!15934 a!3235) (index!19832 lt!238432)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4408) lt!238432) (= (select (arr!15934 a!3235) (index!19835 lt!238432)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!303679 () SeekEntryResult!4408)

(assert (=> d!80223 (= lt!238432 e!303679)))

(declare-fun c!61255 () Bool)

(assert (=> d!80223 (= c!61255 (and ((_ is Intermediate!4408) lt!238431) (undefined!5220 lt!238431)))))

(assert (=> d!80223 (= lt!238431 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!80223 (validMask!0 mask!3524)))

(assert (=> d!80223 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!238432)))

(declare-fun b!520430 () Bool)

(assert (=> b!520430 (= e!303680 (MissingZero!4408 (index!19834 lt!238431)))))

(declare-fun b!520431 () Bool)

(assert (=> b!520431 (= e!303679 e!303681)))

(assert (=> b!520431 (= lt!238430 (select (arr!15934 a!3235) (index!19834 lt!238431)))))

(declare-fun c!61254 () Bool)

(assert (=> b!520431 (= c!61254 (= lt!238430 k0!2280))))

(declare-fun b!520432 () Bool)

(assert (=> b!520432 (= e!303679 Undefined!4408)))

(assert (= (and d!80223 c!61255) b!520432))

(assert (= (and d!80223 (not c!61255)) b!520431))

(assert (= (and b!520431 c!61254) b!520427))

(assert (= (and b!520431 (not c!61254)) b!520428))

(assert (= (and b!520428 c!61253) b!520430))

(assert (= (and b!520428 (not c!61253)) b!520429))

(declare-fun m!501409 () Bool)

(assert (=> b!520429 m!501409))

(declare-fun m!501411 () Bool)

(assert (=> d!80223 m!501411))

(declare-fun m!501413 () Bool)

(assert (=> d!80223 m!501413))

(declare-fun m!501415 () Bool)

(assert (=> d!80223 m!501415))

(assert (=> d!80223 m!501411))

(assert (=> d!80223 m!501205))

(declare-fun m!501417 () Bool)

(assert (=> d!80223 m!501417))

(declare-fun m!501419 () Bool)

(assert (=> d!80223 m!501419))

(declare-fun m!501421 () Bool)

(assert (=> b!520431 m!501421))

(assert (=> b!520141 d!80223))

(check-sat (not bm!31784) (not d!80223) (not bm!31793) (not b!520429) (not d!80217) (not b!520301) (not b!520361) (not d!80159) (not bm!31794) (not b!520415) (not b!520398) (not b!520228) (not d!80173) (not b!520401) (not d!80211) (not b!520231) (not b!520366) (not b!520364) (not d!80203) (not b!520190) (not b!520229) (not b!520210) (not d!80157) (not b!520318))
(check-sat)
