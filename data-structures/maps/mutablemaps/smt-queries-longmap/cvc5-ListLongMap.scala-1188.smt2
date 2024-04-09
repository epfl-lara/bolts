; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25516 () Bool)

(assert start!25516)

(declare-fun b!265146 () Bool)

(declare-fun res!129625 () Bool)

(declare-fun e!171721 () Bool)

(assert (=> b!265146 (=> (not res!129625) (not e!171721))))

(declare-datatypes ((array!12766 0))(
  ( (array!12767 (arr!6040 (Array (_ BitVec 32) (_ BitVec 64))) (size!6392 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12766)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265146 (= res!129625 (and (= (size!6392 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6392 a!3436))))))

(declare-fun b!265148 () Bool)

(declare-fun res!129626 () Bool)

(assert (=> b!265148 (=> (not res!129626) (not e!171721))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12766 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265148 (= res!129626 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!265149 () Bool)

(declare-fun e!171720 () Bool)

(declare-datatypes ((List!3875 0))(
  ( (Nil!3872) (Cons!3871 (h!4538 (_ BitVec 64)) (t!8965 List!3875)) )
))
(declare-fun noDuplicate!104 (List!3875) Bool)

(assert (=> b!265149 (= e!171720 (not (noDuplicate!104 Nil!3872)))))

(declare-fun b!265150 () Bool)

(assert (=> b!265150 (= e!171721 e!171720)))

(declare-fun res!129630 () Bool)

(assert (=> b!265150 (=> (not res!129630) (not e!171720))))

(declare-datatypes ((SeekEntryResult!1242 0))(
  ( (MissingZero!1242 (index!7138 (_ BitVec 32))) (Found!1242 (index!7139 (_ BitVec 32))) (Intermediate!1242 (undefined!2054 Bool) (index!7140 (_ BitVec 32)) (x!25431 (_ BitVec 32))) (Undefined!1242) (MissingVacant!1242 (index!7141 (_ BitVec 32))) )
))
(declare-fun lt!134045 () SeekEntryResult!1242)

(assert (=> b!265150 (= res!129630 (or (= lt!134045 (MissingZero!1242 i!1355)) (= lt!134045 (MissingVacant!1242 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12766 (_ BitVec 32)) SeekEntryResult!1242)

(assert (=> b!265150 (= lt!134045 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!265151 () Bool)

(declare-fun res!129627 () Bool)

(assert (=> b!265151 (=> (not res!129627) (not e!171720))))

(assert (=> b!265151 (= res!129627 (and (bvsle #b00000000000000000000000000000000 (size!6392 a!3436)) (bvslt (size!6392 a!3436) #b01111111111111111111111111111111)))))

(declare-fun b!265152 () Bool)

(declare-fun res!129629 () Bool)

(assert (=> b!265152 (=> (not res!129629) (not e!171720))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12766 (_ BitVec 32)) Bool)

(assert (=> b!265152 (= res!129629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun res!129628 () Bool)

(assert (=> start!25516 (=> (not res!129628) (not e!171721))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25516 (= res!129628 (validMask!0 mask!4002))))

(assert (=> start!25516 e!171721))

(assert (=> start!25516 true))

(declare-fun array_inv!3994 (array!12766) Bool)

(assert (=> start!25516 (array_inv!3994 a!3436)))

(declare-fun b!265147 () Bool)

(declare-fun res!129624 () Bool)

(assert (=> b!265147 (=> (not res!129624) (not e!171721))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265147 (= res!129624 (validKeyInArray!0 k!2698))))

(assert (= (and start!25516 res!129628) b!265146))

(assert (= (and b!265146 res!129625) b!265147))

(assert (= (and b!265147 res!129624) b!265148))

(assert (= (and b!265148 res!129626) b!265150))

(assert (= (and b!265150 res!129630) b!265152))

(assert (= (and b!265152 res!129629) b!265151))

(assert (= (and b!265151 res!129627) b!265149))

(declare-fun m!282059 () Bool)

(assert (=> b!265147 m!282059))

(declare-fun m!282061 () Bool)

(assert (=> b!265152 m!282061))

(declare-fun m!282063 () Bool)

(assert (=> b!265148 m!282063))

(declare-fun m!282065 () Bool)

(assert (=> start!25516 m!282065))

(declare-fun m!282067 () Bool)

(assert (=> start!25516 m!282067))

(declare-fun m!282069 () Bool)

(assert (=> b!265149 m!282069))

(declare-fun m!282071 () Bool)

(assert (=> b!265150 m!282071))

(push 1)

(assert (not b!265148))

(assert (not b!265149))

(assert (not b!265150))

(assert (not b!265152))

(assert (not b!265147))

(assert (not start!25516))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!25319 () Bool)

(declare-fun call!25322 () Bool)

(assert (=> bm!25319 (= call!25322 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3436 mask!4002))))

(declare-fun b!265203 () Bool)

(declare-fun e!171746 () Bool)

(assert (=> b!265203 (= e!171746 call!25322)))

(declare-fun b!265204 () Bool)

(declare-fun e!171747 () Bool)

(assert (=> b!265204 (= e!171747 e!171746)))

(declare-fun lt!134058 () (_ BitVec 64))

(assert (=> b!265204 (= lt!134058 (select (arr!6040 a!3436) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!8256 0))(
  ( (Unit!8257) )
))
(declare-fun lt!134060 () Unit!8256)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12766 (_ BitVec 64) (_ BitVec 32)) Unit!8256)

(assert (=> b!265204 (= lt!134060 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3436 lt!134058 #b00000000000000000000000000000000))))

(assert (=> b!265204 (arrayContainsKey!0 a!3436 lt!134058 #b00000000000000000000000000000000)))

(declare-fun lt!134059 () Unit!8256)

(assert (=> b!265204 (= lt!134059 lt!134060)))

(declare-fun res!129678 () Bool)

(assert (=> b!265204 (= res!129678 (= (seekEntryOrOpen!0 (select (arr!6040 a!3436) #b00000000000000000000000000000000) a!3436 mask!4002) (Found!1242 #b00000000000000000000000000000000)))))

(assert (=> b!265204 (=> (not res!129678) (not e!171746))))

(declare-fun b!265205 () Bool)

(assert (=> b!265205 (= e!171747 call!25322)))

(declare-fun b!265206 () Bool)

(declare-fun e!171748 () Bool)

(assert (=> b!265206 (= e!171748 e!171747)))

(declare-fun c!45314 () Bool)

(assert (=> b!265206 (= c!45314 (validKeyInArray!0 (select (arr!6040 a!3436) #b00000000000000000000000000000000)))))

(declare-fun d!64061 () Bool)

(declare-fun res!129677 () Bool)

(assert (=> d!64061 (=> res!129677 e!171748)))

(assert (=> d!64061 (= res!129677 (bvsge #b00000000000000000000000000000000 (size!6392 a!3436)))))

(assert (=> d!64061 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002) e!171748)))

(assert (= (and d!64061 (not res!129677)) b!265206))

(assert (= (and b!265206 c!45314) b!265204))

(assert (= (and b!265206 (not c!45314)) b!265205))

(assert (= (and b!265204 res!129678) b!265203))

(assert (= (or b!265203 b!265205) bm!25319))

(declare-fun m!282101 () Bool)

(assert (=> bm!25319 m!282101))

(declare-fun m!282103 () Bool)

(assert (=> b!265204 m!282103))

(declare-fun m!282105 () Bool)

(assert (=> b!265204 m!282105))

(declare-fun m!282107 () Bool)

(assert (=> b!265204 m!282107))

(assert (=> b!265204 m!282103))

(declare-fun m!282109 () Bool)

(assert (=> b!265204 m!282109))

(assert (=> b!265206 m!282103))

(assert (=> b!265206 m!282103))

(declare-fun m!282111 () Bool)

(assert (=> b!265206 m!282111))

(assert (=> b!265152 d!64061))

(declare-fun d!64065 () Bool)

(assert (=> d!64065 (= (validKeyInArray!0 k!2698) (and (not (= k!2698 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2698 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!265147 d!64065))

(declare-fun d!64067 () Bool)

(assert (=> d!64067 (= (validMask!0 mask!4002) (and (or (= mask!4002 #b00000000000000000000000000000111) (= mask!4002 #b00000000000000000000000000001111) (= mask!4002 #b00000000000000000000000000011111) (= mask!4002 #b00000000000000000000000000111111) (= mask!4002 #b00000000000000000000000001111111) (= mask!4002 #b00000000000000000000000011111111) (= mask!4002 #b00000000000000000000000111111111) (= mask!4002 #b00000000000000000000001111111111) (= mask!4002 #b00000000000000000000011111111111) (= mask!4002 #b00000000000000000000111111111111) (= mask!4002 #b00000000000000000001111111111111) (= mask!4002 #b00000000000000000011111111111111) (= mask!4002 #b00000000000000000111111111111111) (= mask!4002 #b00000000000000001111111111111111) (= mask!4002 #b00000000000000011111111111111111) (= mask!4002 #b00000000000000111111111111111111) (= mask!4002 #b00000000000001111111111111111111) (= mask!4002 #b00000000000011111111111111111111) (= mask!4002 #b00000000000111111111111111111111) (= mask!4002 #b00000000001111111111111111111111) (= mask!4002 #b00000000011111111111111111111111) (= mask!4002 #b00000000111111111111111111111111) (= mask!4002 #b00000001111111111111111111111111) (= mask!4002 #b00000011111111111111111111111111) (= mask!4002 #b00000111111111111111111111111111) (= mask!4002 #b00001111111111111111111111111111) (= mask!4002 #b00011111111111111111111111111111) (= mask!4002 #b00111111111111111111111111111111)) (bvsle mask!4002 #b00111111111111111111111111111111)))))

(assert (=> start!25516 d!64067))

(declare-fun d!64069 () Bool)

(assert (=> d!64069 (= (array_inv!3994 a!3436) (bvsge (size!6392 a!3436) #b00000000000000000000000000000000))))

(assert (=> start!25516 d!64069))

(declare-fun b!265275 () Bool)

(declare-fun e!171792 () SeekEntryResult!1242)

(declare-fun lt!134091 () SeekEntryResult!1242)

(assert (=> b!265275 (= e!171792 (MissingZero!1242 (index!7140 lt!134091)))))

(declare-fun b!265276 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12766 (_ BitVec 32)) SeekEntryResult!1242)

(assert (=> b!265276 (= e!171792 (seekKeyOrZeroReturnVacant!0 (x!25431 lt!134091) (index!7140 lt!134091) (index!7140 lt!134091) k!2698 a!3436 mask!4002))))

(declare-fun b!265277 () Bool)

(declare-fun e!171791 () SeekEntryResult!1242)

(declare-fun e!171793 () SeekEntryResult!1242)

(assert (=> b!265277 (= e!171791 e!171793)))

(declare-fun lt!134092 () (_ BitVec 64))

(assert (=> b!265277 (= lt!134092 (select (arr!6040 a!3436) (index!7140 lt!134091)))))

(declare-fun c!45341 () Bool)

(assert (=> b!265277 (= c!45341 (= lt!134092 k!2698))))

(declare-fun b!265278 () Bool)

(declare-fun c!45342 () Bool)

(assert (=> b!265278 (= c!45342 (= lt!134092 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!265278 (= e!171793 e!171792)))

(declare-fun d!64071 () Bool)

(declare-fun lt!134093 () SeekEntryResult!1242)

(assert (=> d!64071 (and (or (is-Undefined!1242 lt!134093) (not (is-Found!1242 lt!134093)) (and (bvsge (index!7139 lt!134093) #b00000000000000000000000000000000) (bvslt (index!7139 lt!134093) (size!6392 a!3436)))) (or (is-Undefined!1242 lt!134093) (is-Found!1242 lt!134093) (not (is-MissingZero!1242 lt!134093)) (and (bvsge (index!7138 lt!134093) #b00000000000000000000000000000000) (bvslt (index!7138 lt!134093) (size!6392 a!3436)))) (or (is-Undefined!1242 lt!134093) (is-Found!1242 lt!134093) (is-MissingZero!1242 lt!134093) (not (is-MissingVacant!1242 lt!134093)) (and (bvsge (index!7141 lt!134093) #b00000000000000000000000000000000) (bvslt (index!7141 lt!134093) (size!6392 a!3436)))) (or (is-Undefined!1242 lt!134093) (ite (is-Found!1242 lt!134093) (= (select (arr!6040 a!3436) (index!7139 lt!134093)) k!2698) (ite (is-MissingZero!1242 lt!134093) (= (select (arr!6040 a!3436) (index!7138 lt!134093)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1242 lt!134093) (= (select (arr!6040 a!3436) (index!7141 lt!134093)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!64071 (= lt!134093 e!171791)))

(declare-fun c!45343 () Bool)

(assert (=> d!64071 (= c!45343 (and (is-Intermediate!1242 lt!134091) (undefined!2054 lt!134091)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12766 (_ BitVec 32)) SeekEntryResult!1242)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!64071 (= lt!134091 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2698 mask!4002) k!2698 a!3436 mask!4002))))

(assert (=> d!64071 (validMask!0 mask!4002)))

(assert (=> d!64071 (= (seekEntryOrOpen!0 k!2698 a!3436 mask!4002) lt!134093)))

(declare-fun b!265279 () Bool)

(assert (=> b!265279 (= e!171791 Undefined!1242)))

(declare-fun b!265280 () Bool)

(assert (=> b!265280 (= e!171793 (Found!1242 (index!7140 lt!134091)))))

(assert (= (and d!64071 c!45343) b!265279))

(assert (= (and d!64071 (not c!45343)) b!265277))

(assert (= (and b!265277 c!45341) b!265280))

(assert (= (and b!265277 (not c!45341)) b!265278))

(assert (= (and b!265278 c!45342) b!265275))

(assert (= (and b!265278 (not c!45342)) b!265276))

(declare-fun m!282149 () Bool)

(assert (=> b!265276 m!282149))

(declare-fun m!282151 () Bool)

(assert (=> b!265277 m!282151))

(assert (=> d!64071 m!282065))

(declare-fun m!282153 () Bool)

(assert (=> d!64071 m!282153))

(declare-fun m!282155 () Bool)

(assert (=> d!64071 m!282155))

(declare-fun m!282157 () Bool)

(assert (=> d!64071 m!282157))

(declare-fun m!282159 () Bool)

(assert (=> d!64071 m!282159))

(assert (=> d!64071 m!282157))

(declare-fun m!282161 () Bool)

(assert (=> d!64071 m!282161))

(assert (=> b!265150 d!64071))

(declare-fun d!64087 () Bool)

(declare-fun res!129705 () Bool)

(declare-fun e!171805 () Bool)

(assert (=> d!64087 (=> res!129705 e!171805)))

(assert (=> d!64087 (= res!129705 (= (select (arr!6040 a!3436) #b00000000000000000000000000000000) k!2698))))

(assert (=> d!64087 (= (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000) e!171805)))

(declare-fun b!265291 () Bool)

(declare-fun e!171806 () Bool)

(assert (=> b!265291 (= e!171805 e!171806)))

(declare-fun res!129706 () Bool)

(assert (=> b!265291 (=> (not res!129706) (not e!171806))))

(assert (=> b!265291 (= res!129706 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6392 a!3436)))))

(declare-fun b!265292 () Bool)

(assert (=> b!265292 (= e!171806 (arrayContainsKey!0 a!3436 k!2698 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!64087 (not res!129705)) b!265291))

(assert (= (and b!265291 res!129706) b!265292))

(assert (=> d!64087 m!282103))

(declare-fun m!282175 () Bool)

(assert (=> b!265292 m!282175))

(assert (=> b!265148 d!64087))

(declare-fun d!64091 () Bool)

(declare-fun res!129713 () Bool)

(declare-fun e!171813 () Bool)

(assert (=> d!64091 (=> res!129713 e!171813)))

(assert (=> d!64091 (= res!129713 (is-Nil!3872 Nil!3872))))

(assert (=> d!64091 (= (noDuplicate!104 Nil!3872) e!171813)))

(declare-fun b!265301 () Bool)

(declare-fun e!171814 () Bool)

(assert (=> b!265301 (= e!171813 e!171814)))

(declare-fun res!129714 () Bool)

(assert (=> b!265301 (=> (not res!129714) (not e!171814))))

(declare-fun contains!1915 (List!3875 (_ BitVec 64)) Bool)

(assert (=> b!265301 (= res!129714 (not (contains!1915 (t!8965 Nil!3872) (h!4538 Nil!3872))))))

(declare-fun b!265302 () Bool)

(assert (=> b!265302 (= e!171814 (noDuplicate!104 (t!8965 Nil!3872)))))

(assert (= (and d!64091 (not res!129713)) b!265301))

(assert (= (and b!265301 res!129714) b!265302))

(declare-fun m!282181 () Bool)

(assert (=> b!265301 m!282181))

(declare-fun m!282183 () Bool)

(assert (=> b!265302 m!282183))

(assert (=> b!265149 d!64091))

(push 1)

(assert (not b!265204))

(assert (not d!64071))

(assert (not bm!25319))

(assert (not b!265292))

(assert (not b!265301))

(assert (not b!265206))

(assert (not b!265302))

(assert (not b!265276))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

