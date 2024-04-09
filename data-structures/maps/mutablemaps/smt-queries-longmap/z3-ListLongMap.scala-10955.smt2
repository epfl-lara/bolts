; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128238 () Bool)

(assert start!128238)

(declare-fun b!1505147 () Bool)

(declare-fun res!1025810 () Bool)

(declare-fun e!841279 () Bool)

(assert (=> b!1505147 (=> (not res!1025810) (not e!841279))))

(declare-datatypes ((array!100349 0))(
  ( (array!100350 (arr!48422 (Array (_ BitVec 32) (_ BitVec 64))) (size!48973 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100349)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1505147 (= res!1025810 (validKeyInArray!0 (select (arr!48422 a!2850) i!996)))))

(declare-fun b!1505148 () Bool)

(declare-fun res!1025813 () Bool)

(declare-fun e!841280 () Bool)

(assert (=> b!1505148 (=> (not res!1025813) (not e!841280))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12639 0))(
  ( (MissingZero!12639 (index!52947 (_ BitVec 32))) (Found!12639 (index!52948 (_ BitVec 32))) (Intermediate!12639 (undefined!13451 Bool) (index!52949 (_ BitVec 32)) (x!134646 (_ BitVec 32))) (Undefined!12639) (MissingVacant!12639 (index!52950 (_ BitVec 32))) )
))
(declare-fun lt!653887 () SeekEntryResult!12639)

(declare-fun lt!653890 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100349 (_ BitVec 32)) SeekEntryResult!12639)

(assert (=> b!1505148 (= res!1025813 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653890 vacantBefore!10 (select (arr!48422 a!2850) j!87) a!2850 mask!2661) lt!653887))))

(declare-fun b!1505149 () Bool)

(declare-fun res!1025809 () Bool)

(assert (=> b!1505149 (=> (not res!1025809) (not e!841279))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100349 (_ BitVec 32)) Bool)

(assert (=> b!1505149 (= res!1025809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1505150 () Bool)

(declare-fun res!1025817 () Bool)

(assert (=> b!1505150 (=> (not res!1025817) (not e!841279))))

(assert (=> b!1505150 (= res!1025817 (validKeyInArray!0 (select (arr!48422 a!2850) j!87)))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun lt!653886 () (_ BitVec 64))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-fun lt!653889 () array!100349)

(declare-fun b!1505151 () Bool)

(assert (=> b!1505151 (= e!841280 (not (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantAfter!10 lt!653886 lt!653889 mask!2661) lt!653887)))))

(assert (=> b!1505151 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653890 vacantAfter!10 lt!653886 lt!653889 mask!2661) lt!653887)))

(assert (=> b!1505151 (= lt!653886 (select (store (arr!48422 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87))))

(declare-datatypes ((Unit!50240 0))(
  ( (Unit!50241) )
))
(declare-fun lt!653888 () Unit!50240)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100349 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50240)

(assert (=> b!1505151 (= lt!653888 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653890 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1505152 () Bool)

(declare-fun res!1025819 () Bool)

(assert (=> b!1505152 (=> (not res!1025819) (not e!841279))))

(declare-datatypes ((List!35094 0))(
  ( (Nil!35091) (Cons!35090 (h!36488 (_ BitVec 64)) (t!49795 List!35094)) )
))
(declare-fun arrayNoDuplicates!0 (array!100349 (_ BitVec 32) List!35094) Bool)

(assert (=> b!1505152 (= res!1025819 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35091))))

(declare-fun res!1025818 () Bool)

(assert (=> start!128238 (=> (not res!1025818) (not e!841279))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128238 (= res!1025818 (validMask!0 mask!2661))))

(assert (=> start!128238 e!841279))

(assert (=> start!128238 true))

(declare-fun array_inv!37367 (array!100349) Bool)

(assert (=> start!128238 (array_inv!37367 a!2850)))

(declare-fun b!1505153 () Bool)

(declare-fun e!841281 () Bool)

(declare-fun e!841282 () Bool)

(assert (=> b!1505153 (= e!841281 e!841282)))

(declare-fun res!1025816 () Bool)

(assert (=> b!1505153 (=> (not res!1025816) (not e!841282))))

(assert (=> b!1505153 (= res!1025816 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48422 a!2850) j!87) a!2850 mask!2661) lt!653887))))

(assert (=> b!1505153 (= lt!653887 (Found!12639 j!87))))

(declare-fun b!1505154 () Bool)

(declare-fun res!1025811 () Bool)

(assert (=> b!1505154 (=> (not res!1025811) (not e!841279))))

(assert (=> b!1505154 (= res!1025811 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48973 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48973 a!2850)) (= (select (arr!48422 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1505155 () Bool)

(declare-fun res!1025814 () Bool)

(assert (=> b!1505155 (=> (not res!1025814) (not e!841282))))

(assert (=> b!1505155 (= res!1025814 (not (= (select (arr!48422 a!2850) index!625) (select (arr!48422 a!2850) j!87))))))

(declare-fun b!1505156 () Bool)

(assert (=> b!1505156 (= e!841279 e!841281)))

(declare-fun res!1025815 () Bool)

(assert (=> b!1505156 (=> (not res!1025815) (not e!841281))))

(assert (=> b!1505156 (= res!1025815 (and (= (select (store (arr!48422 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48973 a!2850))))))

(assert (=> b!1505156 (= lt!653889 (array!100350 (store (arr!48422 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48973 a!2850)))))

(declare-fun b!1505157 () Bool)

(declare-fun res!1025820 () Bool)

(assert (=> b!1505157 (=> (not res!1025820) (not e!841279))))

(assert (=> b!1505157 (= res!1025820 (and (= (size!48973 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48973 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48973 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1505158 () Bool)

(assert (=> b!1505158 (= e!841282 e!841280)))

(declare-fun res!1025812 () Bool)

(assert (=> b!1505158 (=> (not res!1025812) (not e!841280))))

(assert (=> b!1505158 (= res!1025812 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653890 #b00000000000000000000000000000000) (bvslt lt!653890 (size!48973 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1505158 (= lt!653890 (nextIndex!0 index!625 x!647 mask!2661))))

(assert (= (and start!128238 res!1025818) b!1505157))

(assert (= (and b!1505157 res!1025820) b!1505147))

(assert (= (and b!1505147 res!1025810) b!1505150))

(assert (= (and b!1505150 res!1025817) b!1505149))

(assert (= (and b!1505149 res!1025809) b!1505152))

(assert (= (and b!1505152 res!1025819) b!1505154))

(assert (= (and b!1505154 res!1025811) b!1505156))

(assert (= (and b!1505156 res!1025815) b!1505153))

(assert (= (and b!1505153 res!1025816) b!1505155))

(assert (= (and b!1505155 res!1025814) b!1505158))

(assert (= (and b!1505158 res!1025812) b!1505148))

(assert (= (and b!1505148 res!1025813) b!1505151))

(declare-fun m!1388321 () Bool)

(assert (=> start!128238 m!1388321))

(declare-fun m!1388323 () Bool)

(assert (=> start!128238 m!1388323))

(declare-fun m!1388325 () Bool)

(assert (=> b!1505147 m!1388325))

(assert (=> b!1505147 m!1388325))

(declare-fun m!1388327 () Bool)

(assert (=> b!1505147 m!1388327))

(declare-fun m!1388329 () Bool)

(assert (=> b!1505149 m!1388329))

(declare-fun m!1388331 () Bool)

(assert (=> b!1505152 m!1388331))

(declare-fun m!1388333 () Bool)

(assert (=> b!1505154 m!1388333))

(declare-fun m!1388335 () Bool)

(assert (=> b!1505155 m!1388335))

(declare-fun m!1388337 () Bool)

(assert (=> b!1505155 m!1388337))

(assert (=> b!1505148 m!1388337))

(assert (=> b!1505148 m!1388337))

(declare-fun m!1388339 () Bool)

(assert (=> b!1505148 m!1388339))

(assert (=> b!1505150 m!1388337))

(assert (=> b!1505150 m!1388337))

(declare-fun m!1388341 () Bool)

(assert (=> b!1505150 m!1388341))

(declare-fun m!1388343 () Bool)

(assert (=> b!1505156 m!1388343))

(declare-fun m!1388345 () Bool)

(assert (=> b!1505156 m!1388345))

(assert (=> b!1505153 m!1388337))

(assert (=> b!1505153 m!1388337))

(declare-fun m!1388347 () Bool)

(assert (=> b!1505153 m!1388347))

(declare-fun m!1388349 () Bool)

(assert (=> b!1505151 m!1388349))

(assert (=> b!1505151 m!1388343))

(declare-fun m!1388351 () Bool)

(assert (=> b!1505151 m!1388351))

(declare-fun m!1388353 () Bool)

(assert (=> b!1505151 m!1388353))

(declare-fun m!1388355 () Bool)

(assert (=> b!1505151 m!1388355))

(declare-fun m!1388357 () Bool)

(assert (=> b!1505158 m!1388357))

(check-sat (not b!1505152) (not b!1505150) (not start!128238) (not b!1505153) (not b!1505151) (not b!1505147) (not b!1505149) (not b!1505148) (not b!1505158))
(check-sat)
(get-model)

(declare-fun b!1505339 () Bool)

(declare-fun e!841391 () SeekEntryResult!12639)

(assert (=> b!1505339 (= e!841391 (MissingVacant!12639 vacantBefore!10))))

(declare-fun b!1505340 () Bool)

(declare-fun c!139261 () Bool)

(declare-fun lt!653964 () (_ BitVec 64))

(assert (=> b!1505340 (= c!139261 (= lt!653964 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!841390 () SeekEntryResult!12639)

(assert (=> b!1505340 (= e!841390 e!841391)))

(declare-fun d!157957 () Bool)

(declare-fun lt!653965 () SeekEntryResult!12639)

(get-info :version)

(assert (=> d!157957 (and (or ((_ is Undefined!12639) lt!653965) (not ((_ is Found!12639) lt!653965)) (and (bvsge (index!52948 lt!653965) #b00000000000000000000000000000000) (bvslt (index!52948 lt!653965) (size!48973 a!2850)))) (or ((_ is Undefined!12639) lt!653965) ((_ is Found!12639) lt!653965) (not ((_ is MissingVacant!12639) lt!653965)) (not (= (index!52950 lt!653965) vacantBefore!10)) (and (bvsge (index!52950 lt!653965) #b00000000000000000000000000000000) (bvslt (index!52950 lt!653965) (size!48973 a!2850)))) (or ((_ is Undefined!12639) lt!653965) (ite ((_ is Found!12639) lt!653965) (= (select (arr!48422 a!2850) (index!52948 lt!653965)) (select (arr!48422 a!2850) j!87)) (and ((_ is MissingVacant!12639) lt!653965) (= (index!52950 lt!653965) vacantBefore!10) (= (select (arr!48422 a!2850) (index!52950 lt!653965)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!841389 () SeekEntryResult!12639)

(assert (=> d!157957 (= lt!653965 e!841389)))

(declare-fun c!139262 () Bool)

(assert (=> d!157957 (= c!139262 (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110))))

(assert (=> d!157957 (= lt!653964 (select (arr!48422 a!2850) lt!653890))))

(assert (=> d!157957 (validMask!0 mask!2661)))

(assert (=> d!157957 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653890 vacantBefore!10 (select (arr!48422 a!2850) j!87) a!2850 mask!2661) lt!653965)))

(declare-fun b!1505341 () Bool)

(assert (=> b!1505341 (= e!841389 e!841390)))

(declare-fun c!139260 () Bool)

(assert (=> b!1505341 (= c!139260 (= lt!653964 (select (arr!48422 a!2850) j!87)))))

(declare-fun b!1505342 () Bool)

(assert (=> b!1505342 (= e!841390 (Found!12639 lt!653890))))

(declare-fun b!1505343 () Bool)

(assert (=> b!1505343 (= e!841389 Undefined!12639)))

(declare-fun b!1505344 () Bool)

(assert (=> b!1505344 (= e!841391 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647 #b00000000000000000000000000000001) (nextIndex!0 lt!653890 (bvadd #b00000000000000000000000000000001 x!647) mask!2661) vacantBefore!10 (select (arr!48422 a!2850) j!87) a!2850 mask!2661))))

(assert (= (and d!157957 c!139262) b!1505343))

(assert (= (and d!157957 (not c!139262)) b!1505341))

(assert (= (and b!1505341 c!139260) b!1505342))

(assert (= (and b!1505341 (not c!139260)) b!1505340))

(assert (= (and b!1505340 c!139261) b!1505339))

(assert (= (and b!1505340 (not c!139261)) b!1505344))

(declare-fun m!1388505 () Bool)

(assert (=> d!157957 m!1388505))

(declare-fun m!1388507 () Bool)

(assert (=> d!157957 m!1388507))

(declare-fun m!1388509 () Bool)

(assert (=> d!157957 m!1388509))

(assert (=> d!157957 m!1388321))

(declare-fun m!1388511 () Bool)

(assert (=> b!1505344 m!1388511))

(assert (=> b!1505344 m!1388511))

(assert (=> b!1505344 m!1388337))

(declare-fun m!1388513 () Bool)

(assert (=> b!1505344 m!1388513))

(assert (=> b!1505148 d!157957))

(declare-fun b!1505345 () Bool)

(declare-fun e!841394 () SeekEntryResult!12639)

(assert (=> b!1505345 (= e!841394 (MissingVacant!12639 vacantBefore!10))))

(declare-fun b!1505346 () Bool)

(declare-fun c!139264 () Bool)

(declare-fun lt!653966 () (_ BitVec 64))

(assert (=> b!1505346 (= c!139264 (= lt!653966 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!841393 () SeekEntryResult!12639)

(assert (=> b!1505346 (= e!841393 e!841394)))

(declare-fun d!157959 () Bool)

(declare-fun lt!653967 () SeekEntryResult!12639)

(assert (=> d!157959 (and (or ((_ is Undefined!12639) lt!653967) (not ((_ is Found!12639) lt!653967)) (and (bvsge (index!52948 lt!653967) #b00000000000000000000000000000000) (bvslt (index!52948 lt!653967) (size!48973 a!2850)))) (or ((_ is Undefined!12639) lt!653967) ((_ is Found!12639) lt!653967) (not ((_ is MissingVacant!12639) lt!653967)) (not (= (index!52950 lt!653967) vacantBefore!10)) (and (bvsge (index!52950 lt!653967) #b00000000000000000000000000000000) (bvslt (index!52950 lt!653967) (size!48973 a!2850)))) (or ((_ is Undefined!12639) lt!653967) (ite ((_ is Found!12639) lt!653967) (= (select (arr!48422 a!2850) (index!52948 lt!653967)) (select (arr!48422 a!2850) j!87)) (and ((_ is MissingVacant!12639) lt!653967) (= (index!52950 lt!653967) vacantBefore!10) (= (select (arr!48422 a!2850) (index!52950 lt!653967)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!841392 () SeekEntryResult!12639)

(assert (=> d!157959 (= lt!653967 e!841392)))

(declare-fun c!139265 () Bool)

(assert (=> d!157959 (= c!139265 (bvsge x!647 #b01111111111111111111111111111110))))

(assert (=> d!157959 (= lt!653966 (select (arr!48422 a!2850) index!625))))

(assert (=> d!157959 (validMask!0 mask!2661)))

(assert (=> d!157959 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48422 a!2850) j!87) a!2850 mask!2661) lt!653967)))

(declare-fun b!1505347 () Bool)

(assert (=> b!1505347 (= e!841392 e!841393)))

(declare-fun c!139263 () Bool)

(assert (=> b!1505347 (= c!139263 (= lt!653966 (select (arr!48422 a!2850) j!87)))))

(declare-fun b!1505348 () Bool)

(assert (=> b!1505348 (= e!841393 (Found!12639 index!625))))

(declare-fun b!1505349 () Bool)

(assert (=> b!1505349 (= e!841392 Undefined!12639)))

(declare-fun b!1505350 () Bool)

(assert (=> b!1505350 (= e!841394 (seekKeyOrZeroReturnVacant!0 (bvadd x!647 #b00000000000000000000000000000001) (nextIndex!0 index!625 x!647 mask!2661) vacantBefore!10 (select (arr!48422 a!2850) j!87) a!2850 mask!2661))))

(assert (= (and d!157959 c!139265) b!1505349))

(assert (= (and d!157959 (not c!139265)) b!1505347))

(assert (= (and b!1505347 c!139263) b!1505348))

(assert (= (and b!1505347 (not c!139263)) b!1505346))

(assert (= (and b!1505346 c!139264) b!1505345))

(assert (= (and b!1505346 (not c!139264)) b!1505350))

(declare-fun m!1388515 () Bool)

(assert (=> d!157959 m!1388515))

(declare-fun m!1388517 () Bool)

(assert (=> d!157959 m!1388517))

(assert (=> d!157959 m!1388335))

(assert (=> d!157959 m!1388321))

(assert (=> b!1505350 m!1388357))

(assert (=> b!1505350 m!1388357))

(assert (=> b!1505350 m!1388337))

(declare-fun m!1388519 () Bool)

(assert (=> b!1505350 m!1388519))

(assert (=> b!1505153 d!157959))

(declare-fun d!157961 () Bool)

(declare-fun lt!653970 () (_ BitVec 32))

(assert (=> d!157961 (and (bvsge lt!653970 #b00000000000000000000000000000000) (bvslt lt!653970 (bvadd mask!2661 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!157961 (= lt!653970 (choose!52 index!625 x!647 mask!2661))))

(assert (=> d!157961 (validMask!0 mask!2661)))

(assert (=> d!157961 (= (nextIndex!0 index!625 x!647 mask!2661) lt!653970)))

(declare-fun bs!43216 () Bool)

(assert (= bs!43216 d!157961))

(declare-fun m!1388521 () Bool)

(assert (=> bs!43216 m!1388521))

(assert (=> bs!43216 m!1388321))

(assert (=> b!1505158 d!157961))

(declare-fun d!157963 () Bool)

(assert (=> d!157963 (= (validKeyInArray!0 (select (arr!48422 a!2850) i!996)) (and (not (= (select (arr!48422 a!2850) i!996) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48422 a!2850) i!996) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1505147 d!157963))

(declare-fun d!157965 () Bool)

(assert (=> d!157965 (= (validMask!0 mask!2661) (and (or (= mask!2661 #b00000000000000000000000000000111) (= mask!2661 #b00000000000000000000000000001111) (= mask!2661 #b00000000000000000000000000011111) (= mask!2661 #b00000000000000000000000000111111) (= mask!2661 #b00000000000000000000000001111111) (= mask!2661 #b00000000000000000000000011111111) (= mask!2661 #b00000000000000000000000111111111) (= mask!2661 #b00000000000000000000001111111111) (= mask!2661 #b00000000000000000000011111111111) (= mask!2661 #b00000000000000000000111111111111) (= mask!2661 #b00000000000000000001111111111111) (= mask!2661 #b00000000000000000011111111111111) (= mask!2661 #b00000000000000000111111111111111) (= mask!2661 #b00000000000000001111111111111111) (= mask!2661 #b00000000000000011111111111111111) (= mask!2661 #b00000000000000111111111111111111) (= mask!2661 #b00000000000001111111111111111111) (= mask!2661 #b00000000000011111111111111111111) (= mask!2661 #b00000000000111111111111111111111) (= mask!2661 #b00000000001111111111111111111111) (= mask!2661 #b00000000011111111111111111111111) (= mask!2661 #b00000000111111111111111111111111) (= mask!2661 #b00000001111111111111111111111111) (= mask!2661 #b00000011111111111111111111111111) (= mask!2661 #b00000111111111111111111111111111) (= mask!2661 #b00001111111111111111111111111111) (= mask!2661 #b00011111111111111111111111111111) (= mask!2661 #b00111111111111111111111111111111)) (bvsle mask!2661 #b00111111111111111111111111111111)))))

(assert (=> start!128238 d!157965))

(declare-fun d!157967 () Bool)

(assert (=> d!157967 (= (array_inv!37367 a!2850) (bvsge (size!48973 a!2850) #b00000000000000000000000000000000))))

(assert (=> start!128238 d!157967))

(declare-fun b!1505361 () Bool)

(declare-fun e!841403 () Bool)

(declare-fun call!68172 () Bool)

(assert (=> b!1505361 (= e!841403 call!68172)))

(declare-fun bm!68169 () Bool)

(declare-fun c!139268 () Bool)

(assert (=> bm!68169 (= call!68172 (arrayNoDuplicates!0 a!2850 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139268 (Cons!35090 (select (arr!48422 a!2850) #b00000000000000000000000000000000) Nil!35091) Nil!35091)))))

(declare-fun d!157969 () Bool)

(declare-fun res!1025900 () Bool)

(declare-fun e!841406 () Bool)

(assert (=> d!157969 (=> res!1025900 e!841406)))

(assert (=> d!157969 (= res!1025900 (bvsge #b00000000000000000000000000000000 (size!48973 a!2850)))))

(assert (=> d!157969 (= (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35091) e!841406)))

(declare-fun b!1505362 () Bool)

(declare-fun e!841404 () Bool)

(declare-fun contains!9966 (List!35094 (_ BitVec 64)) Bool)

(assert (=> b!1505362 (= e!841404 (contains!9966 Nil!35091 (select (arr!48422 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1505363 () Bool)

(assert (=> b!1505363 (= e!841403 call!68172)))

(declare-fun b!1505364 () Bool)

(declare-fun e!841405 () Bool)

(assert (=> b!1505364 (= e!841406 e!841405)))

(declare-fun res!1025901 () Bool)

(assert (=> b!1505364 (=> (not res!1025901) (not e!841405))))

(assert (=> b!1505364 (= res!1025901 (not e!841404))))

(declare-fun res!1025899 () Bool)

(assert (=> b!1505364 (=> (not res!1025899) (not e!841404))))

(assert (=> b!1505364 (= res!1025899 (validKeyInArray!0 (select (arr!48422 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1505365 () Bool)

(assert (=> b!1505365 (= e!841405 e!841403)))

(assert (=> b!1505365 (= c!139268 (validKeyInArray!0 (select (arr!48422 a!2850) #b00000000000000000000000000000000)))))

(assert (= (and d!157969 (not res!1025900)) b!1505364))

(assert (= (and b!1505364 res!1025899) b!1505362))

(assert (= (and b!1505364 res!1025901) b!1505365))

(assert (= (and b!1505365 c!139268) b!1505361))

(assert (= (and b!1505365 (not c!139268)) b!1505363))

(assert (= (or b!1505361 b!1505363) bm!68169))

(declare-fun m!1388523 () Bool)

(assert (=> bm!68169 m!1388523))

(declare-fun m!1388525 () Bool)

(assert (=> bm!68169 m!1388525))

(assert (=> b!1505362 m!1388523))

(assert (=> b!1505362 m!1388523))

(declare-fun m!1388527 () Bool)

(assert (=> b!1505362 m!1388527))

(assert (=> b!1505364 m!1388523))

(assert (=> b!1505364 m!1388523))

(declare-fun m!1388529 () Bool)

(assert (=> b!1505364 m!1388529))

(assert (=> b!1505365 m!1388523))

(assert (=> b!1505365 m!1388523))

(assert (=> b!1505365 m!1388529))

(assert (=> b!1505152 d!157969))

(declare-fun b!1505366 () Bool)

(declare-fun e!841409 () SeekEntryResult!12639)

(assert (=> b!1505366 (= e!841409 (MissingVacant!12639 vacantAfter!10))))

(declare-fun b!1505367 () Bool)

(declare-fun c!139270 () Bool)

(declare-fun lt!653971 () (_ BitVec 64))

(assert (=> b!1505367 (= c!139270 (= lt!653971 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!841408 () SeekEntryResult!12639)

(assert (=> b!1505367 (= e!841408 e!841409)))

(declare-fun d!157971 () Bool)

(declare-fun lt!653972 () SeekEntryResult!12639)

(assert (=> d!157971 (and (or ((_ is Undefined!12639) lt!653972) (not ((_ is Found!12639) lt!653972)) (and (bvsge (index!52948 lt!653972) #b00000000000000000000000000000000) (bvslt (index!52948 lt!653972) (size!48973 lt!653889)))) (or ((_ is Undefined!12639) lt!653972) ((_ is Found!12639) lt!653972) (not ((_ is MissingVacant!12639) lt!653972)) (not (= (index!52950 lt!653972) vacantAfter!10)) (and (bvsge (index!52950 lt!653972) #b00000000000000000000000000000000) (bvslt (index!52950 lt!653972) (size!48973 lt!653889)))) (or ((_ is Undefined!12639) lt!653972) (ite ((_ is Found!12639) lt!653972) (= (select (arr!48422 lt!653889) (index!52948 lt!653972)) lt!653886) (and ((_ is MissingVacant!12639) lt!653972) (= (index!52950 lt!653972) vacantAfter!10) (= (select (arr!48422 lt!653889) (index!52950 lt!653972)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!841407 () SeekEntryResult!12639)

(assert (=> d!157971 (= lt!653972 e!841407)))

(declare-fun c!139271 () Bool)

(assert (=> d!157971 (= c!139271 (bvsge x!647 #b01111111111111111111111111111110))))

(assert (=> d!157971 (= lt!653971 (select (arr!48422 lt!653889) index!625))))

(assert (=> d!157971 (validMask!0 mask!2661)))

(assert (=> d!157971 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantAfter!10 lt!653886 lt!653889 mask!2661) lt!653972)))

(declare-fun b!1505368 () Bool)

(assert (=> b!1505368 (= e!841407 e!841408)))

(declare-fun c!139269 () Bool)

(assert (=> b!1505368 (= c!139269 (= lt!653971 lt!653886))))

(declare-fun b!1505369 () Bool)

(assert (=> b!1505369 (= e!841408 (Found!12639 index!625))))

(declare-fun b!1505370 () Bool)

(assert (=> b!1505370 (= e!841407 Undefined!12639)))

(declare-fun b!1505371 () Bool)

(assert (=> b!1505371 (= e!841409 (seekKeyOrZeroReturnVacant!0 (bvadd x!647 #b00000000000000000000000000000001) (nextIndex!0 index!625 x!647 mask!2661) vacantAfter!10 lt!653886 lt!653889 mask!2661))))

(assert (= (and d!157971 c!139271) b!1505370))

(assert (= (and d!157971 (not c!139271)) b!1505368))

(assert (= (and b!1505368 c!139269) b!1505369))

(assert (= (and b!1505368 (not c!139269)) b!1505367))

(assert (= (and b!1505367 c!139270) b!1505366))

(assert (= (and b!1505367 (not c!139270)) b!1505371))

(declare-fun m!1388531 () Bool)

(assert (=> d!157971 m!1388531))

(declare-fun m!1388533 () Bool)

(assert (=> d!157971 m!1388533))

(declare-fun m!1388535 () Bool)

(assert (=> d!157971 m!1388535))

(assert (=> d!157971 m!1388321))

(assert (=> b!1505371 m!1388357))

(assert (=> b!1505371 m!1388357))

(declare-fun m!1388537 () Bool)

(assert (=> b!1505371 m!1388537))

(assert (=> b!1505151 d!157971))

(declare-fun b!1505372 () Bool)

(declare-fun e!841412 () SeekEntryResult!12639)

(assert (=> b!1505372 (= e!841412 (MissingVacant!12639 vacantAfter!10))))

(declare-fun b!1505373 () Bool)

(declare-fun c!139273 () Bool)

(declare-fun lt!653973 () (_ BitVec 64))

(assert (=> b!1505373 (= c!139273 (= lt!653973 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!841411 () SeekEntryResult!12639)

(assert (=> b!1505373 (= e!841411 e!841412)))

(declare-fun lt!653974 () SeekEntryResult!12639)

(declare-fun d!157973 () Bool)

(assert (=> d!157973 (and (or ((_ is Undefined!12639) lt!653974) (not ((_ is Found!12639) lt!653974)) (and (bvsge (index!52948 lt!653974) #b00000000000000000000000000000000) (bvslt (index!52948 lt!653974) (size!48973 lt!653889)))) (or ((_ is Undefined!12639) lt!653974) ((_ is Found!12639) lt!653974) (not ((_ is MissingVacant!12639) lt!653974)) (not (= (index!52950 lt!653974) vacantAfter!10)) (and (bvsge (index!52950 lt!653974) #b00000000000000000000000000000000) (bvslt (index!52950 lt!653974) (size!48973 lt!653889)))) (or ((_ is Undefined!12639) lt!653974) (ite ((_ is Found!12639) lt!653974) (= (select (arr!48422 lt!653889) (index!52948 lt!653974)) lt!653886) (and ((_ is MissingVacant!12639) lt!653974) (= (index!52950 lt!653974) vacantAfter!10) (= (select (arr!48422 lt!653889) (index!52950 lt!653974)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!841410 () SeekEntryResult!12639)

(assert (=> d!157973 (= lt!653974 e!841410)))

(declare-fun c!139274 () Bool)

(assert (=> d!157973 (= c!139274 (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110))))

(assert (=> d!157973 (= lt!653973 (select (arr!48422 lt!653889) lt!653890))))

(assert (=> d!157973 (validMask!0 mask!2661)))

(assert (=> d!157973 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653890 vacantAfter!10 lt!653886 lt!653889 mask!2661) lt!653974)))

(declare-fun b!1505374 () Bool)

(assert (=> b!1505374 (= e!841410 e!841411)))

(declare-fun c!139272 () Bool)

(assert (=> b!1505374 (= c!139272 (= lt!653973 lt!653886))))

(declare-fun b!1505375 () Bool)

(assert (=> b!1505375 (= e!841411 (Found!12639 lt!653890))))

(declare-fun b!1505376 () Bool)

(assert (=> b!1505376 (= e!841410 Undefined!12639)))

(declare-fun b!1505377 () Bool)

(assert (=> b!1505377 (= e!841412 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647 #b00000000000000000000000000000001) (nextIndex!0 lt!653890 (bvadd #b00000000000000000000000000000001 x!647) mask!2661) vacantAfter!10 lt!653886 lt!653889 mask!2661))))

(assert (= (and d!157973 c!139274) b!1505376))

(assert (= (and d!157973 (not c!139274)) b!1505374))

(assert (= (and b!1505374 c!139272) b!1505375))

(assert (= (and b!1505374 (not c!139272)) b!1505373))

(assert (= (and b!1505373 c!139273) b!1505372))

(assert (= (and b!1505373 (not c!139273)) b!1505377))

(declare-fun m!1388539 () Bool)

(assert (=> d!157973 m!1388539))

(declare-fun m!1388541 () Bool)

(assert (=> d!157973 m!1388541))

(declare-fun m!1388543 () Bool)

(assert (=> d!157973 m!1388543))

(assert (=> d!157973 m!1388321))

(assert (=> b!1505377 m!1388511))

(assert (=> b!1505377 m!1388511))

(declare-fun m!1388545 () Bool)

(assert (=> b!1505377 m!1388545))

(assert (=> b!1505151 d!157973))

(declare-fun d!157975 () Bool)

(declare-fun e!841415 () Bool)

(assert (=> d!157975 e!841415))

(declare-fun res!1025904 () Bool)

(assert (=> d!157975 (=> (not res!1025904) (not e!841415))))

(assert (=> d!157975 (= res!1025904 (and (or (bvslt i!996 #b00000000000000000000000000000000) (bvsge i!996 (size!48973 a!2850)) (and (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48973 a!2850)))) (or (bvslt i!996 #b00000000000000000000000000000000) (bvsge i!996 (size!48973 a!2850)) (and (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48973 a!2850)))) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48973 a!2850))))))

(declare-fun lt!653977 () Unit!50240)

(declare-fun choose!27 (array!100349 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50240)

(assert (=> d!157975 (= lt!653977 (choose!27 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653890 vacantBefore!10 vacantAfter!10 mask!2661))))

(assert (=> d!157975 (validMask!0 mask!2661)))

(assert (=> d!157975 (= (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653890 vacantBefore!10 vacantAfter!10 mask!2661) lt!653977)))

(declare-fun b!1505380 () Bool)

(assert (=> b!1505380 (= e!841415 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653890 vacantAfter!10 (select (store (arr!48422 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100350 (store (arr!48422 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48973 a!2850)) mask!2661) (Found!12639 j!87)))))

(assert (= (and d!157975 res!1025904) b!1505380))

(declare-fun m!1388547 () Bool)

(assert (=> d!157975 m!1388547))

(assert (=> d!157975 m!1388321))

(assert (=> b!1505380 m!1388343))

(assert (=> b!1505380 m!1388349))

(assert (=> b!1505380 m!1388349))

(declare-fun m!1388549 () Bool)

(assert (=> b!1505380 m!1388549))

(assert (=> b!1505151 d!157975))

(declare-fun d!157977 () Bool)

(assert (=> d!157977 (= (validKeyInArray!0 (select (arr!48422 a!2850) j!87)) (and (not (= (select (arr!48422 a!2850) j!87) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48422 a!2850) j!87) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1505150 d!157977))

(declare-fun b!1505389 () Bool)

(declare-fun e!841422 () Bool)

(declare-fun e!841423 () Bool)

(assert (=> b!1505389 (= e!841422 e!841423)))

(declare-fun c!139277 () Bool)

(assert (=> b!1505389 (= c!139277 (validKeyInArray!0 (select (arr!48422 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1505390 () Bool)

(declare-fun call!68175 () Bool)

(assert (=> b!1505390 (= e!841423 call!68175)))

(declare-fun b!1505391 () Bool)

(declare-fun e!841424 () Bool)

(assert (=> b!1505391 (= e!841423 e!841424)))

(declare-fun lt!653986 () (_ BitVec 64))

(assert (=> b!1505391 (= lt!653986 (select (arr!48422 a!2850) #b00000000000000000000000000000000))))

(declare-fun lt!653984 () Unit!50240)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100349 (_ BitVec 64) (_ BitVec 32)) Unit!50240)

(assert (=> b!1505391 (= lt!653984 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2850 lt!653986 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100349 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1505391 (arrayContainsKey!0 a!2850 lt!653986 #b00000000000000000000000000000000)))

(declare-fun lt!653985 () Unit!50240)

(assert (=> b!1505391 (= lt!653985 lt!653984)))

(declare-fun res!1025909 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100349 (_ BitVec 32)) SeekEntryResult!12639)

(assert (=> b!1505391 (= res!1025909 (= (seekEntryOrOpen!0 (select (arr!48422 a!2850) #b00000000000000000000000000000000) a!2850 mask!2661) (Found!12639 #b00000000000000000000000000000000)))))

(assert (=> b!1505391 (=> (not res!1025909) (not e!841424))))

(declare-fun bm!68172 () Bool)

(assert (=> bm!68172 (= call!68175 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2850 mask!2661))))

(declare-fun b!1505392 () Bool)

(assert (=> b!1505392 (= e!841424 call!68175)))

(declare-fun d!157979 () Bool)

(declare-fun res!1025910 () Bool)

(assert (=> d!157979 (=> res!1025910 e!841422)))

(assert (=> d!157979 (= res!1025910 (bvsge #b00000000000000000000000000000000 (size!48973 a!2850)))))

(assert (=> d!157979 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661) e!841422)))

(assert (= (and d!157979 (not res!1025910)) b!1505389))

(assert (= (and b!1505389 c!139277) b!1505391))

(assert (= (and b!1505389 (not c!139277)) b!1505390))

(assert (= (and b!1505391 res!1025909) b!1505392))

(assert (= (or b!1505392 b!1505390) bm!68172))

(assert (=> b!1505389 m!1388523))

(assert (=> b!1505389 m!1388523))

(assert (=> b!1505389 m!1388529))

(assert (=> b!1505391 m!1388523))

(declare-fun m!1388551 () Bool)

(assert (=> b!1505391 m!1388551))

(declare-fun m!1388553 () Bool)

(assert (=> b!1505391 m!1388553))

(assert (=> b!1505391 m!1388523))

(declare-fun m!1388555 () Bool)

(assert (=> b!1505391 m!1388555))

(declare-fun m!1388557 () Bool)

(assert (=> bm!68172 m!1388557))

(assert (=> b!1505149 d!157979))

(check-sat (not d!157957) (not b!1505364) (not d!157975) (not b!1505344) (not b!1505389) (not bm!68172) (not d!157973) (not b!1505365) (not b!1505377) (not b!1505380) (not b!1505350) (not d!157961) (not b!1505391) (not d!157971) (not d!157959) (not b!1505371) (not bm!68169) (not b!1505362))
(check-sat)
