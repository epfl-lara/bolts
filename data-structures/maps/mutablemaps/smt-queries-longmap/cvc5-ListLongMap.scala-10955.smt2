; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128236 () Bool)

(assert start!128236)

(declare-fun res!1025784 () Bool)

(declare-fun e!841264 () Bool)

(assert (=> start!128236 (=> (not res!1025784) (not e!841264))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128236 (= res!1025784 (validMask!0 mask!2661))))

(assert (=> start!128236 e!841264))

(assert (=> start!128236 true))

(declare-datatypes ((array!100347 0))(
  ( (array!100348 (arr!48421 (Array (_ BitVec 32) (_ BitVec 64))) (size!48972 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100347)

(declare-fun array_inv!37366 (array!100347) Bool)

(assert (=> start!128236 (array_inv!37366 a!2850)))

(declare-fun b!1505111 () Bool)

(declare-fun res!1025778 () Bool)

(declare-fun e!841265 () Bool)

(assert (=> b!1505111 (=> (not res!1025778) (not e!841265))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1505111 (= res!1025778 (not (= (select (arr!48421 a!2850) index!625) (select (arr!48421 a!2850) j!87))))))

(declare-fun b!1505112 () Bool)

(declare-fun res!1025780 () Bool)

(assert (=> b!1505112 (=> (not res!1025780) (not e!841264))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1505112 (= res!1025780 (and (= (size!48972 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48972 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48972 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1505113 () Bool)

(declare-fun res!1025774 () Bool)

(assert (=> b!1505113 (=> (not res!1025774) (not e!841264))))

(declare-datatypes ((List!35093 0))(
  ( (Nil!35090) (Cons!35089 (h!36487 (_ BitVec 64)) (t!49794 List!35093)) )
))
(declare-fun arrayNoDuplicates!0 (array!100347 (_ BitVec 32) List!35093) Bool)

(assert (=> b!1505113 (= res!1025774 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35090))))

(declare-fun b!1505114 () Bool)

(declare-fun e!841268 () Bool)

(assert (=> b!1505114 (= e!841265 e!841268)))

(declare-fun res!1025779 () Bool)

(assert (=> b!1505114 (=> (not res!1025779) (not e!841268))))

(declare-fun lt!653872 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(assert (=> b!1505114 (= res!1025779 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653872 #b00000000000000000000000000000000) (bvslt lt!653872 (size!48972 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1505114 (= lt!653872 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun lt!653871 () array!100347)

(declare-fun b!1505115 () Bool)

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12638 0))(
  ( (MissingZero!12638 (index!52943 (_ BitVec 32))) (Found!12638 (index!52944 (_ BitVec 32))) (Intermediate!12638 (undefined!13450 Bool) (index!52945 (_ BitVec 32)) (x!134645 (_ BitVec 32))) (Undefined!12638) (MissingVacant!12638 (index!52946 (_ BitVec 32))) )
))
(declare-fun lt!653875 () SeekEntryResult!12638)

(declare-fun lt!653874 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100347 (_ BitVec 32)) SeekEntryResult!12638)

(assert (=> b!1505115 (= e!841268 (not (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantAfter!10 lt!653874 lt!653871 mask!2661) lt!653875)))))

(assert (=> b!1505115 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653872 vacantAfter!10 lt!653874 lt!653871 mask!2661) lt!653875)))

(assert (=> b!1505115 (= lt!653874 (select (store (arr!48421 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((Unit!50238 0))(
  ( (Unit!50239) )
))
(declare-fun lt!653873 () Unit!50238)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100347 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50238)

(assert (=> b!1505115 (= lt!653873 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653872 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1505116 () Bool)

(declare-fun res!1025776 () Bool)

(assert (=> b!1505116 (=> (not res!1025776) (not e!841264))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1505116 (= res!1025776 (validKeyInArray!0 (select (arr!48421 a!2850) j!87)))))

(declare-fun b!1505117 () Bool)

(declare-fun res!1025773 () Bool)

(assert (=> b!1505117 (=> (not res!1025773) (not e!841264))))

(assert (=> b!1505117 (= res!1025773 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48972 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48972 a!2850)) (= (select (arr!48421 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1505118 () Bool)

(declare-fun res!1025777 () Bool)

(assert (=> b!1505118 (=> (not res!1025777) (not e!841268))))

(assert (=> b!1505118 (= res!1025777 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653872 vacantBefore!10 (select (arr!48421 a!2850) j!87) a!2850 mask!2661) lt!653875))))

(declare-fun b!1505119 () Bool)

(declare-fun res!1025781 () Bool)

(assert (=> b!1505119 (=> (not res!1025781) (not e!841264))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100347 (_ BitVec 32)) Bool)

(assert (=> b!1505119 (= res!1025781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1505120 () Bool)

(declare-fun e!841266 () Bool)

(assert (=> b!1505120 (= e!841264 e!841266)))

(declare-fun res!1025782 () Bool)

(assert (=> b!1505120 (=> (not res!1025782) (not e!841266))))

(assert (=> b!1505120 (= res!1025782 (and (= (select (store (arr!48421 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48972 a!2850))))))

(assert (=> b!1505120 (= lt!653871 (array!100348 (store (arr!48421 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48972 a!2850)))))

(declare-fun b!1505121 () Bool)

(declare-fun res!1025783 () Bool)

(assert (=> b!1505121 (=> (not res!1025783) (not e!841264))))

(assert (=> b!1505121 (= res!1025783 (validKeyInArray!0 (select (arr!48421 a!2850) i!996)))))

(declare-fun b!1505122 () Bool)

(assert (=> b!1505122 (= e!841266 e!841265)))

(declare-fun res!1025775 () Bool)

(assert (=> b!1505122 (=> (not res!1025775) (not e!841265))))

(assert (=> b!1505122 (= res!1025775 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48421 a!2850) j!87) a!2850 mask!2661) lt!653875))))

(assert (=> b!1505122 (= lt!653875 (Found!12638 j!87))))

(assert (= (and start!128236 res!1025784) b!1505112))

(assert (= (and b!1505112 res!1025780) b!1505121))

(assert (= (and b!1505121 res!1025783) b!1505116))

(assert (= (and b!1505116 res!1025776) b!1505119))

(assert (= (and b!1505119 res!1025781) b!1505113))

(assert (= (and b!1505113 res!1025774) b!1505117))

(assert (= (and b!1505117 res!1025773) b!1505120))

(assert (= (and b!1505120 res!1025782) b!1505122))

(assert (= (and b!1505122 res!1025775) b!1505111))

(assert (= (and b!1505111 res!1025778) b!1505114))

(assert (= (and b!1505114 res!1025779) b!1505118))

(assert (= (and b!1505118 res!1025777) b!1505115))

(declare-fun m!1388283 () Bool)

(assert (=> b!1505120 m!1388283))

(declare-fun m!1388285 () Bool)

(assert (=> b!1505120 m!1388285))

(declare-fun m!1388287 () Bool)

(assert (=> b!1505111 m!1388287))

(declare-fun m!1388289 () Bool)

(assert (=> b!1505111 m!1388289))

(declare-fun m!1388291 () Bool)

(assert (=> b!1505117 m!1388291))

(assert (=> b!1505118 m!1388289))

(assert (=> b!1505118 m!1388289))

(declare-fun m!1388293 () Bool)

(assert (=> b!1505118 m!1388293))

(declare-fun m!1388295 () Bool)

(assert (=> b!1505119 m!1388295))

(declare-fun m!1388297 () Bool)

(assert (=> b!1505113 m!1388297))

(declare-fun m!1388299 () Bool)

(assert (=> b!1505121 m!1388299))

(assert (=> b!1505121 m!1388299))

(declare-fun m!1388301 () Bool)

(assert (=> b!1505121 m!1388301))

(declare-fun m!1388303 () Bool)

(assert (=> b!1505114 m!1388303))

(assert (=> b!1505116 m!1388289))

(assert (=> b!1505116 m!1388289))

(declare-fun m!1388305 () Bool)

(assert (=> b!1505116 m!1388305))

(assert (=> b!1505122 m!1388289))

(assert (=> b!1505122 m!1388289))

(declare-fun m!1388307 () Bool)

(assert (=> b!1505122 m!1388307))

(declare-fun m!1388309 () Bool)

(assert (=> start!128236 m!1388309))

(declare-fun m!1388311 () Bool)

(assert (=> start!128236 m!1388311))

(declare-fun m!1388313 () Bool)

(assert (=> b!1505115 m!1388313))

(declare-fun m!1388315 () Bool)

(assert (=> b!1505115 m!1388315))

(declare-fun m!1388317 () Bool)

(assert (=> b!1505115 m!1388317))

(assert (=> b!1505115 m!1388283))

(declare-fun m!1388319 () Bool)

(assert (=> b!1505115 m!1388319))

(push 1)

(assert (not b!1505121))

(assert (not b!1505118))

(assert (not b!1505116))

(assert (not b!1505113))

(assert (not b!1505115))

(assert (not start!128236))

(assert (not b!1505119))

(assert (not b!1505114))

(assert (not b!1505122))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1505207 () Bool)

(declare-fun e!841307 () SeekEntryResult!12638)

(assert (=> b!1505207 (= e!841307 Undefined!12638)))

(declare-fun d!157909 () Bool)

(declare-fun lt!653910 () SeekEntryResult!12638)

(assert (=> d!157909 (and (or (is-Undefined!12638 lt!653910) (not (is-Found!12638 lt!653910)) (and (bvsge (index!52944 lt!653910) #b00000000000000000000000000000000) (bvslt (index!52944 lt!653910) (size!48972 a!2850)))) (or (is-Undefined!12638 lt!653910) (is-Found!12638 lt!653910) (not (is-MissingVacant!12638 lt!653910)) (not (= (index!52946 lt!653910) vacantBefore!10)) (and (bvsge (index!52946 lt!653910) #b00000000000000000000000000000000) (bvslt (index!52946 lt!653910) (size!48972 a!2850)))) (or (is-Undefined!12638 lt!653910) (ite (is-Found!12638 lt!653910) (= (select (arr!48421 a!2850) (index!52944 lt!653910)) (select (arr!48421 a!2850) j!87)) (and (is-MissingVacant!12638 lt!653910) (= (index!52946 lt!653910) vacantBefore!10) (= (select (arr!48421 a!2850) (index!52946 lt!653910)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157909 (= lt!653910 e!841307)))

(declare-fun c!139212 () Bool)

(assert (=> d!157909 (= c!139212 (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110))))

(declare-fun lt!653911 () (_ BitVec 64))

(assert (=> d!157909 (= lt!653911 (select (arr!48421 a!2850) lt!653872))))

(assert (=> d!157909 (validMask!0 mask!2661)))

(assert (=> d!157909 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653872 vacantBefore!10 (select (arr!48421 a!2850) j!87) a!2850 mask!2661) lt!653910)))

(declare-fun b!1505208 () Bool)

(declare-fun e!841306 () SeekEntryResult!12638)

(assert (=> b!1505208 (= e!841307 e!841306)))

(declare-fun c!139214 () Bool)

(assert (=> b!1505208 (= c!139214 (= lt!653911 (select (arr!48421 a!2850) j!87)))))

(declare-fun b!1505209 () Bool)

(declare-fun e!841305 () SeekEntryResult!12638)

(assert (=> b!1505209 (= e!841305 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647 #b00000000000000000000000000000001) (nextIndex!0 lt!653872 (bvadd #b00000000000000000000000000000001 x!647) mask!2661) vacantBefore!10 (select (arr!48421 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1505210 () Bool)

(declare-fun c!139213 () Bool)

(assert (=> b!1505210 (= c!139213 (= lt!653911 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1505210 (= e!841306 e!841305)))

(declare-fun b!1505211 () Bool)

(assert (=> b!1505211 (= e!841306 (Found!12638 lt!653872))))

(declare-fun b!1505212 () Bool)

(assert (=> b!1505212 (= e!841305 (MissingVacant!12638 vacantBefore!10))))

(assert (= (and d!157909 c!139212) b!1505207))

(assert (= (and d!157909 (not c!139212)) b!1505208))

(assert (= (and b!1505208 c!139214) b!1505211))

(assert (= (and b!1505208 (not c!139214)) b!1505210))

(assert (= (and b!1505210 c!139213) b!1505212))

(assert (= (and b!1505210 (not c!139213)) b!1505209))

(declare-fun m!1388397 () Bool)

(assert (=> d!157909 m!1388397))

(declare-fun m!1388399 () Bool)

(assert (=> d!157909 m!1388399))

(declare-fun m!1388401 () Bool)

(assert (=> d!157909 m!1388401))

(assert (=> d!157909 m!1388309))

(declare-fun m!1388403 () Bool)

(assert (=> b!1505209 m!1388403))

(assert (=> b!1505209 m!1388403))

(assert (=> b!1505209 m!1388289))

(declare-fun m!1388405 () Bool)

(assert (=> b!1505209 m!1388405))

(assert (=> b!1505118 d!157909))

(declare-fun b!1505213 () Bool)

(declare-fun e!841310 () SeekEntryResult!12638)

(assert (=> b!1505213 (= e!841310 Undefined!12638)))

(declare-fun d!157913 () Bool)

(declare-fun lt!653912 () SeekEntryResult!12638)

(assert (=> d!157913 (and (or (is-Undefined!12638 lt!653912) (not (is-Found!12638 lt!653912)) (and (bvsge (index!52944 lt!653912) #b00000000000000000000000000000000) (bvslt (index!52944 lt!653912) (size!48972 a!2850)))) (or (is-Undefined!12638 lt!653912) (is-Found!12638 lt!653912) (not (is-MissingVacant!12638 lt!653912)) (not (= (index!52946 lt!653912) vacantBefore!10)) (and (bvsge (index!52946 lt!653912) #b00000000000000000000000000000000) (bvslt (index!52946 lt!653912) (size!48972 a!2850)))) (or (is-Undefined!12638 lt!653912) (ite (is-Found!12638 lt!653912) (= (select (arr!48421 a!2850) (index!52944 lt!653912)) (select (arr!48421 a!2850) j!87)) (and (is-MissingVacant!12638 lt!653912) (= (index!52946 lt!653912) vacantBefore!10) (= (select (arr!48421 a!2850) (index!52946 lt!653912)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157913 (= lt!653912 e!841310)))

(declare-fun c!139215 () Bool)

(assert (=> d!157913 (= c!139215 (bvsge x!647 #b01111111111111111111111111111110))))

(declare-fun lt!653913 () (_ BitVec 64))

(assert (=> d!157913 (= lt!653913 (select (arr!48421 a!2850) index!625))))

(assert (=> d!157913 (validMask!0 mask!2661)))

(assert (=> d!157913 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48421 a!2850) j!87) a!2850 mask!2661) lt!653912)))

(declare-fun b!1505214 () Bool)

(declare-fun e!841309 () SeekEntryResult!12638)

(assert (=> b!1505214 (= e!841310 e!841309)))

(declare-fun c!139217 () Bool)

(assert (=> b!1505214 (= c!139217 (= lt!653913 (select (arr!48421 a!2850) j!87)))))

(declare-fun e!841308 () SeekEntryResult!12638)

(declare-fun b!1505215 () Bool)

(assert (=> b!1505215 (= e!841308 (seekKeyOrZeroReturnVacant!0 (bvadd x!647 #b00000000000000000000000000000001) (nextIndex!0 index!625 x!647 mask!2661) vacantBefore!10 (select (arr!48421 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1505216 () Bool)

(declare-fun c!139216 () Bool)

(assert (=> b!1505216 (= c!139216 (= lt!653913 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1505216 (= e!841309 e!841308)))

(declare-fun b!1505217 () Bool)

(assert (=> b!1505217 (= e!841309 (Found!12638 index!625))))

(declare-fun b!1505218 () Bool)

(assert (=> b!1505218 (= e!841308 (MissingVacant!12638 vacantBefore!10))))

(assert (= (and d!157913 c!139215) b!1505213))

(assert (= (and d!157913 (not c!139215)) b!1505214))

(assert (= (and b!1505214 c!139217) b!1505217))

(assert (= (and b!1505214 (not c!139217)) b!1505216))

(assert (= (and b!1505216 c!139216) b!1505218))

(assert (= (and b!1505216 (not c!139216)) b!1505215))

(declare-fun m!1388407 () Bool)

(assert (=> d!157913 m!1388407))

(declare-fun m!1388409 () Bool)

(assert (=> d!157913 m!1388409))

(assert (=> d!157913 m!1388287))

(assert (=> d!157913 m!1388309))

(assert (=> b!1505215 m!1388303))

(assert (=> b!1505215 m!1388303))

(assert (=> b!1505215 m!1388289))

(declare-fun m!1388411 () Bool)

(assert (=> b!1505215 m!1388411))

(assert (=> b!1505122 d!157913))

(declare-fun d!157915 () Bool)

(assert (=> d!157915 (= (validMask!0 mask!2661) (and (or (= mask!2661 #b00000000000000000000000000000111) (= mask!2661 #b00000000000000000000000000001111) (= mask!2661 #b00000000000000000000000000011111) (= mask!2661 #b00000000000000000000000000111111) (= mask!2661 #b00000000000000000000000001111111) (= mask!2661 #b00000000000000000000000011111111) (= mask!2661 #b00000000000000000000000111111111) (= mask!2661 #b00000000000000000000001111111111) (= mask!2661 #b00000000000000000000011111111111) (= mask!2661 #b00000000000000000000111111111111) (= mask!2661 #b00000000000000000001111111111111) (= mask!2661 #b00000000000000000011111111111111) (= mask!2661 #b00000000000000000111111111111111) (= mask!2661 #b00000000000000001111111111111111) (= mask!2661 #b00000000000000011111111111111111) (= mask!2661 #b00000000000000111111111111111111) (= mask!2661 #b00000000000001111111111111111111) (= mask!2661 #b00000000000011111111111111111111) (= mask!2661 #b00000000000111111111111111111111) (= mask!2661 #b00000000001111111111111111111111) (= mask!2661 #b00000000011111111111111111111111) (= mask!2661 #b00000000111111111111111111111111) (= mask!2661 #b00000001111111111111111111111111) (= mask!2661 #b00000011111111111111111111111111) (= mask!2661 #b00000111111111111111111111111111) (= mask!2661 #b00001111111111111111111111111111) (= mask!2661 #b00011111111111111111111111111111) (= mask!2661 #b00111111111111111111111111111111)) (bvsle mask!2661 #b00111111111111111111111111111111)))))

(assert (=> start!128236 d!157915))

(declare-fun d!157917 () Bool)

(assert (=> d!157917 (= (array_inv!37366 a!2850) (bvsge (size!48972 a!2850) #b00000000000000000000000000000000))))

(assert (=> start!128236 d!157917))

(declare-fun d!157919 () Bool)

(assert (=> d!157919 (= (validKeyInArray!0 (select (arr!48421 a!2850) j!87)) (and (not (= (select (arr!48421 a!2850) j!87) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48421 a!2850) j!87) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1505116 d!157919))

(declare-fun d!157921 () Bool)

(assert (=> d!157921 (= (validKeyInArray!0 (select (arr!48421 a!2850) i!996)) (and (not (= (select (arr!48421 a!2850) i!996) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48421 a!2850) i!996) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1505121 d!157921))

(declare-fun b!1505219 () Bool)

(declare-fun e!841313 () SeekEntryResult!12638)

(assert (=> b!1505219 (= e!841313 Undefined!12638)))

(declare-fun lt!653914 () SeekEntryResult!12638)

(declare-fun d!157923 () Bool)

(assert (=> d!157923 (and (or (is-Undefined!12638 lt!653914) (not (is-Found!12638 lt!653914)) (and (bvsge (index!52944 lt!653914) #b00000000000000000000000000000000) (bvslt (index!52944 lt!653914) (size!48972 lt!653871)))) (or (is-Undefined!12638 lt!653914) (is-Found!12638 lt!653914) (not (is-MissingVacant!12638 lt!653914)) (not (= (index!52946 lt!653914) vacantAfter!10)) (and (bvsge (index!52946 lt!653914) #b00000000000000000000000000000000) (bvslt (index!52946 lt!653914) (size!48972 lt!653871)))) (or (is-Undefined!12638 lt!653914) (ite (is-Found!12638 lt!653914) (= (select (arr!48421 lt!653871) (index!52944 lt!653914)) lt!653874) (and (is-MissingVacant!12638 lt!653914) (= (index!52946 lt!653914) vacantAfter!10) (= (select (arr!48421 lt!653871) (index!52946 lt!653914)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157923 (= lt!653914 e!841313)))

(declare-fun c!139218 () Bool)

(assert (=> d!157923 (= c!139218 (bvsge x!647 #b01111111111111111111111111111110))))

(declare-fun lt!653915 () (_ BitVec 64))

(assert (=> d!157923 (= lt!653915 (select (arr!48421 lt!653871) index!625))))

(assert (=> d!157923 (validMask!0 mask!2661)))

(assert (=> d!157923 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantAfter!10 lt!653874 lt!653871 mask!2661) lt!653914)))

(declare-fun b!1505220 () Bool)

(declare-fun e!841312 () SeekEntryResult!12638)

(assert (=> b!1505220 (= e!841313 e!841312)))

(declare-fun c!139220 () Bool)

(assert (=> b!1505220 (= c!139220 (= lt!653915 lt!653874))))

(declare-fun e!841311 () SeekEntryResult!12638)

(declare-fun b!1505221 () Bool)

(assert (=> b!1505221 (= e!841311 (seekKeyOrZeroReturnVacant!0 (bvadd x!647 #b00000000000000000000000000000001) (nextIndex!0 index!625 x!647 mask!2661) vacantAfter!10 lt!653874 lt!653871 mask!2661))))

(declare-fun b!1505222 () Bool)

(declare-fun c!139219 () Bool)

(assert (=> b!1505222 (= c!139219 (= lt!653915 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1505222 (= e!841312 e!841311)))

(declare-fun b!1505223 () Bool)

(assert (=> b!1505223 (= e!841312 (Found!12638 index!625))))

(declare-fun b!1505224 () Bool)

(assert (=> b!1505224 (= e!841311 (MissingVacant!12638 vacantAfter!10))))

(assert (= (and d!157923 c!139218) b!1505219))

(assert (= (and d!157923 (not c!139218)) b!1505220))

(assert (= (and b!1505220 c!139220) b!1505223))

(assert (= (and b!1505220 (not c!139220)) b!1505222))

(assert (= (and b!1505222 c!139219) b!1505224))

(assert (= (and b!1505222 (not c!139219)) b!1505221))

(declare-fun m!1388413 () Bool)

(assert (=> d!157923 m!1388413))

(declare-fun m!1388415 () Bool)

(assert (=> d!157923 m!1388415))

(declare-fun m!1388417 () Bool)

(assert (=> d!157923 m!1388417))

(assert (=> d!157923 m!1388309))

(assert (=> b!1505221 m!1388303))

(assert (=> b!1505221 m!1388303))

(declare-fun m!1388419 () Bool)

(assert (=> b!1505221 m!1388419))

(assert (=> b!1505115 d!157923))

(declare-fun b!1505225 () Bool)

(declare-fun e!841316 () SeekEntryResult!12638)

(assert (=> b!1505225 (= e!841316 Undefined!12638)))

(declare-fun lt!653916 () SeekEntryResult!12638)

(declare-fun d!157925 () Bool)

(assert (=> d!157925 (and (or (is-Undefined!12638 lt!653916) (not (is-Found!12638 lt!653916)) (and (bvsge (index!52944 lt!653916) #b00000000000000000000000000000000) (bvslt (index!52944 lt!653916) (size!48972 lt!653871)))) (or (is-Undefined!12638 lt!653916) (is-Found!12638 lt!653916) (not (is-MissingVacant!12638 lt!653916)) (not (= (index!52946 lt!653916) vacantAfter!10)) (and (bvsge (index!52946 lt!653916) #b00000000000000000000000000000000) (bvslt (index!52946 lt!653916) (size!48972 lt!653871)))) (or (is-Undefined!12638 lt!653916) (ite (is-Found!12638 lt!653916) (= (select (arr!48421 lt!653871) (index!52944 lt!653916)) lt!653874) (and (is-MissingVacant!12638 lt!653916) (= (index!52946 lt!653916) vacantAfter!10) (= (select (arr!48421 lt!653871) (index!52946 lt!653916)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157925 (= lt!653916 e!841316)))

(declare-fun c!139221 () Bool)

(assert (=> d!157925 (= c!139221 (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110))))

(declare-fun lt!653917 () (_ BitVec 64))

(assert (=> d!157925 (= lt!653917 (select (arr!48421 lt!653871) lt!653872))))

(assert (=> d!157925 (validMask!0 mask!2661)))

(assert (=> d!157925 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653872 vacantAfter!10 lt!653874 lt!653871 mask!2661) lt!653916)))

(declare-fun b!1505226 () Bool)

(declare-fun e!841315 () SeekEntryResult!12638)

(assert (=> b!1505226 (= e!841316 e!841315)))

(declare-fun c!139223 () Bool)

(assert (=> b!1505226 (= c!139223 (= lt!653917 lt!653874))))

(declare-fun b!1505227 () Bool)

(declare-fun e!841314 () SeekEntryResult!12638)

(assert (=> b!1505227 (= e!841314 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647 #b00000000000000000000000000000001) (nextIndex!0 lt!653872 (bvadd #b00000000000000000000000000000001 x!647) mask!2661) vacantAfter!10 lt!653874 lt!653871 mask!2661))))

(declare-fun b!1505228 () Bool)

(declare-fun c!139222 () Bool)

(assert (=> b!1505228 (= c!139222 (= lt!653917 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1505228 (= e!841315 e!841314)))

(declare-fun b!1505229 () Bool)

(assert (=> b!1505229 (= e!841315 (Found!12638 lt!653872))))

(declare-fun b!1505230 () Bool)

(assert (=> b!1505230 (= e!841314 (MissingVacant!12638 vacantAfter!10))))

(assert (= (and d!157925 c!139221) b!1505225))

(assert (= (and d!157925 (not c!139221)) b!1505226))

(assert (= (and b!1505226 c!139223) b!1505229))

(assert (= (and b!1505226 (not c!139223)) b!1505228))

(assert (= (and b!1505228 c!139222) b!1505230))

(assert (= (and b!1505228 (not c!139222)) b!1505227))

(declare-fun m!1388421 () Bool)

(assert (=> d!157925 m!1388421))

(declare-fun m!1388423 () Bool)

(assert (=> d!157925 m!1388423))

(declare-fun m!1388425 () Bool)

(assert (=> d!157925 m!1388425))

(assert (=> d!157925 m!1388309))

(assert (=> b!1505227 m!1388403))

(assert (=> b!1505227 m!1388403))

(declare-fun m!1388427 () Bool)

(assert (=> b!1505227 m!1388427))

(assert (=> b!1505115 d!157925))

(declare-fun d!157927 () Bool)

(declare-fun e!841328 () Bool)

(assert (=> d!157927 e!841328))

(declare-fun res!1025859 () Bool)

(assert (=> d!157927 (=> (not res!1025859) (not e!841328))))

(assert (=> d!157927 (= res!1025859 (and (or (bvslt i!996 #b00000000000000000000000000000000) (bvsge i!996 (size!48972 a!2850)) (and (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48972 a!2850)))) (or (bvslt i!996 #b00000000000000000000000000000000) (bvsge i!996 (size!48972 a!2850)) (and (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48972 a!2850)))) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48972 a!2850))))))

(declare-fun lt!653926 () Unit!50238)

(declare-fun choose!27 (array!100347 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50238)

(assert (=> d!157927 (= lt!653926 (choose!27 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653872 vacantBefore!10 vacantAfter!10 mask!2661))))

(assert (=> d!157927 (validMask!0 mask!2661)))

(assert (=> d!157927 (= (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653872 vacantBefore!10 vacantAfter!10 mask!2661) lt!653926)))

(declare-fun b!1505251 () Bool)

(assert (=> b!1505251 (= e!841328 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653872 vacantAfter!10 (select (store (arr!48421 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100348 (store (arr!48421 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48972 a!2850)) mask!2661) (Found!12638 j!87)))))

(assert (= (and d!157927 res!1025859) b!1505251))

(declare-fun m!1388439 () Bool)

(assert (=> d!157927 m!1388439))

(assert (=> d!157927 m!1388309))

(assert (=> b!1505251 m!1388283))

(assert (=> b!1505251 m!1388313))

(assert (=> b!1505251 m!1388313))

(declare-fun m!1388441 () Bool)

(assert (=> b!1505251 m!1388441))

(assert (=> b!1505115 d!157927))

(declare-fun d!157931 () Bool)

(declare-fun lt!653929 () (_ BitVec 32))

(assert (=> d!157931 (and (bvsge lt!653929 #b00000000000000000000000000000000) (bvslt lt!653929 (bvadd mask!2661 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!157931 (= lt!653929 (choose!52 index!625 x!647 mask!2661))))

(assert (=> d!157931 (validMask!0 mask!2661)))

(assert (=> d!157931 (= (nextIndex!0 index!625 x!647 mask!2661) lt!653929)))

(declare-fun bs!43214 () Bool)

(assert (= bs!43214 d!157931))

(declare-fun m!1388443 () Bool)

(assert (=> bs!43214 m!1388443))

(assert (=> bs!43214 m!1388309))

(assert (=> b!1505114 d!157931))

(declare-fun b!1505260 () Bool)

(declare-fun e!841337 () Bool)

(declare-fun call!68160 () Bool)

(assert (=> b!1505260 (= e!841337 call!68160)))

(declare-fun d!157933 () Bool)

(declare-fun res!1025864 () Bool)

(declare-fun e!841336 () Bool)

(assert (=> d!157933 (=> res!1025864 e!841336)))

(assert (=> d!157933 (= res!1025864 (bvsge #b00000000000000000000000000000000 (size!48972 a!2850)))))

(assert (=> d!157933 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661) e!841336)))

(declare-fun b!1505261 () Bool)

(declare-fun e!841335 () Bool)

(assert (=> b!1505261 (= e!841335 e!841337)))

(declare-fun lt!653937 () (_ BitVec 64))

(assert (=> b!1505261 (= lt!653937 (select (arr!48421 a!2850) #b00000000000000000000000000000000))))

(declare-fun lt!653938 () Unit!50238)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100347 (_ BitVec 64) (_ BitVec 32)) Unit!50238)

(assert (=> b!1505261 (= lt!653938 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2850 lt!653937 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100347 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1505261 (arrayContainsKey!0 a!2850 lt!653937 #b00000000000000000000000000000000)))

(declare-fun lt!653936 () Unit!50238)

(assert (=> b!1505261 (= lt!653936 lt!653938)))

(declare-fun res!1025865 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100347 (_ BitVec 32)) SeekEntryResult!12638)

(assert (=> b!1505261 (= res!1025865 (= (seekEntryOrOpen!0 (select (arr!48421 a!2850) #b00000000000000000000000000000000) a!2850 mask!2661) (Found!12638 #b00000000000000000000000000000000)))))

(assert (=> b!1505261 (=> (not res!1025865) (not e!841337))))

(declare-fun bm!68157 () Bool)

(assert (=> bm!68157 (= call!68160 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2850 mask!2661))))

(declare-fun b!1505262 () Bool)

(assert (=> b!1505262 (= e!841336 e!841335)))

(declare-fun c!139235 () Bool)

(assert (=> b!1505262 (= c!139235 (validKeyInArray!0 (select (arr!48421 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1505263 () Bool)

(assert (=> b!1505263 (= e!841335 call!68160)))

(assert (= (and d!157933 (not res!1025864)) b!1505262))

(assert (= (and b!1505262 c!139235) b!1505261))

(assert (= (and b!1505262 (not c!139235)) b!1505263))

(assert (= (and b!1505261 res!1025865) b!1505260))

(assert (= (or b!1505260 b!1505263) bm!68157))

(declare-fun m!1388445 () Bool)

(assert (=> b!1505261 m!1388445))

(declare-fun m!1388447 () Bool)

(assert (=> b!1505261 m!1388447))

(declare-fun m!1388449 () Bool)

(assert (=> b!1505261 m!1388449))

(assert (=> b!1505261 m!1388445))

(declare-fun m!1388451 () Bool)

(assert (=> b!1505261 m!1388451))

(declare-fun m!1388453 () Bool)

(assert (=> bm!68157 m!1388453))

(assert (=> b!1505262 m!1388445))

(assert (=> b!1505262 m!1388445))

(declare-fun m!1388455 () Bool)

(assert (=> b!1505262 m!1388455))

(assert (=> b!1505119 d!157933))

(declare-fun b!1505280 () Bool)

(declare-fun e!841349 () Bool)

(declare-fun call!68163 () Bool)

(assert (=> b!1505280 (= e!841349 call!68163)))

(declare-fun b!1505281 () Bool)

(declare-fun e!841350 () Bool)

(assert (=> b!1505281 (= e!841350 e!841349)))

(declare-fun c!139241 () Bool)

(assert (=> b!1505281 (= c!139241 (validKeyInArray!0 (select (arr!48421 a!2850) #b00000000000000000000000000000000)))))

(declare-fun bm!68160 () Bool)

(assert (=> bm!68160 (= call!68163 (arrayNoDuplicates!0 a!2850 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139241 (Cons!35089 (select (arr!48421 a!2850) #b00000000000000000000000000000000) Nil!35090) Nil!35090)))))

(declare-fun b!1505282 () Bool)

(declare-fun e!841351 () Bool)

(assert (=> b!1505282 (= e!841351 e!841350)))

(declare-fun res!1025873 () Bool)

(assert (=> b!1505282 (=> (not res!1025873) (not e!841350))))

(declare-fun e!841352 () Bool)

(assert (=> b!1505282 (= res!1025873 (not e!841352))))

(declare-fun res!1025874 () Bool)

(assert (=> b!1505282 (=> (not res!1025874) (not e!841352))))

(assert (=> b!1505282 (= res!1025874 (validKeyInArray!0 (select (arr!48421 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1505283 () Bool)

(assert (=> b!1505283 (= e!841349 call!68163)))

(declare-fun b!1505284 () Bool)

(declare-fun contains!9964 (List!35093 (_ BitVec 64)) Bool)

(assert (=> b!1505284 (= e!841352 (contains!9964 Nil!35090 (select (arr!48421 a!2850) #b00000000000000000000000000000000)))))

(declare-fun d!157935 () Bool)

(declare-fun res!1025872 () Bool)

(assert (=> d!157935 (=> res!1025872 e!841351)))

(assert (=> d!157935 (= res!1025872 (bvsge #b00000000000000000000000000000000 (size!48972 a!2850)))))

(assert (=> d!157935 (= (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35090) e!841351)))

(assert (= (and d!157935 (not res!1025872)) b!1505282))

(assert (= (and b!1505282 res!1025874) b!1505284))

(assert (= (and b!1505282 res!1025873) b!1505281))

(assert (= (and b!1505281 c!139241) b!1505283))

(assert (= (and b!1505281 (not c!139241)) b!1505280))

(assert (= (or b!1505283 b!1505280) bm!68160))

(assert (=> b!1505281 m!1388445))

(assert (=> b!1505281 m!1388445))

(assert (=> b!1505281 m!1388455))

(assert (=> bm!68160 m!1388445))

(declare-fun m!1388465 () Bool)

(assert (=> bm!68160 m!1388465))

(assert (=> b!1505282 m!1388445))

(assert (=> b!1505282 m!1388445))

(assert (=> b!1505282 m!1388455))

(assert (=> b!1505284 m!1388445))

(assert (=> b!1505284 m!1388445))

(declare-fun m!1388467 () Bool)

(assert (=> b!1505284 m!1388467))

(assert (=> b!1505113 d!157935))

(push 1)

(assert (not bm!68157))

(assert (not d!157923))

(assert (not b!1505282))

(assert (not b!1505209))

(assert (not b!1505227))

(assert (not b!1505284))

(assert (not b!1505281))

(assert (not b!1505251))

(assert (not b!1505215))

(assert (not b!1505261))

(assert (not d!157925))

(assert (not d!157927))

(assert (not d!157909))

(assert (not d!157931))

(assert (not bm!68160))

(assert (not b!1505221))

(assert (not d!157913))

(assert (not b!1505262))

(check-sat)

(pop 1)

(push 1)

(check-sat)

