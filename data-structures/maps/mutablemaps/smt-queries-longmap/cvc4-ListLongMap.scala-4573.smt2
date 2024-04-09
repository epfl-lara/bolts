; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63758 () Bool)

(assert start!63758)

(declare-fun b!717224 () Bool)

(declare-fun res!480150 () Bool)

(declare-fun e!402689 () Bool)

(assert (=> b!717224 (=> (not res!480150) (not e!402689))))

(declare-datatypes ((array!40607 0))(
  ( (array!40608 (arr!19433 (Array (_ BitVec 32) (_ BitVec 64))) (size!19854 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40607)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!717224 (= res!480150 (validKeyInArray!0 (select (arr!19433 a!3186) j!159)))))

(declare-fun res!480156 () Bool)

(assert (=> start!63758 (=> (not res!480156) (not e!402689))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63758 (= res!480156 (validMask!0 mask!3328))))

(assert (=> start!63758 e!402689))

(declare-fun array_inv!15207 (array!40607) Bool)

(assert (=> start!63758 (array_inv!15207 a!3186)))

(assert (=> start!63758 true))

(declare-fun b!717225 () Bool)

(declare-fun e!402688 () Bool)

(assert (=> b!717225 (= e!402688 (and (bvsle #b00000000000000000000000000000000 (size!19854 a!3186)) (bvsge (size!19854 a!3186) #b01111111111111111111111111111111)))))

(declare-fun b!717226 () Bool)

(declare-fun res!480153 () Bool)

(assert (=> b!717226 (=> (not res!480153) (not e!402689))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!717226 (= res!480153 (validKeyInArray!0 k!2102))))

(declare-fun b!717227 () Bool)

(declare-fun res!480154 () Bool)

(assert (=> b!717227 (=> (not res!480154) (not e!402688))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40607 (_ BitVec 32)) Bool)

(assert (=> b!717227 (= res!480154 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!717228 () Bool)

(declare-fun res!480152 () Bool)

(assert (=> b!717228 (=> (not res!480152) (not e!402689))))

(declare-fun arrayContainsKey!0 (array!40607 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!717228 (= res!480152 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!717229 () Bool)

(declare-fun res!480151 () Bool)

(assert (=> b!717229 (=> (not res!480151) (not e!402689))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!717229 (= res!480151 (and (= (size!19854 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19854 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19854 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!717230 () Bool)

(assert (=> b!717230 (= e!402689 e!402688)))

(declare-fun res!480155 () Bool)

(assert (=> b!717230 (=> (not res!480155) (not e!402688))))

(declare-datatypes ((SeekEntryResult!7040 0))(
  ( (MissingZero!7040 (index!30527 (_ BitVec 32))) (Found!7040 (index!30528 (_ BitVec 32))) (Intermediate!7040 (undefined!7852 Bool) (index!30529 (_ BitVec 32)) (x!61573 (_ BitVec 32))) (Undefined!7040) (MissingVacant!7040 (index!30530 (_ BitVec 32))) )
))
(declare-fun lt!319007 () SeekEntryResult!7040)

(assert (=> b!717230 (= res!480155 (or (= lt!319007 (MissingZero!7040 i!1173)) (= lt!319007 (MissingVacant!7040 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40607 (_ BitVec 32)) SeekEntryResult!7040)

(assert (=> b!717230 (= lt!319007 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!63758 res!480156) b!717229))

(assert (= (and b!717229 res!480151) b!717224))

(assert (= (and b!717224 res!480150) b!717226))

(assert (= (and b!717226 res!480153) b!717228))

(assert (= (and b!717228 res!480152) b!717230))

(assert (= (and b!717230 res!480155) b!717227))

(assert (= (and b!717227 res!480154) b!717225))

(declare-fun m!673259 () Bool)

(assert (=> b!717230 m!673259))

(declare-fun m!673261 () Bool)

(assert (=> b!717226 m!673261))

(declare-fun m!673263 () Bool)

(assert (=> b!717228 m!673263))

(declare-fun m!673265 () Bool)

(assert (=> start!63758 m!673265))

(declare-fun m!673267 () Bool)

(assert (=> start!63758 m!673267))

(declare-fun m!673269 () Bool)

(assert (=> b!717227 m!673269))

(declare-fun m!673271 () Bool)

(assert (=> b!717224 m!673271))

(assert (=> b!717224 m!673271))

(declare-fun m!673273 () Bool)

(assert (=> b!717224 m!673273))

(push 1)

(assert (not b!717227))

(assert (not b!717228))

(assert (not b!717230))

(assert (not b!717226))

(assert (not start!63758))

(assert (not b!717224))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!98741 () Bool)

(assert (=> d!98741 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!717226 d!98741))

(declare-fun bm!34689 () Bool)

(declare-fun call!34692 () Bool)

(assert (=> bm!34689 (= call!34692 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!717258 () Bool)

(declare-fun e!402714 () Bool)

(assert (=> b!717258 (= e!402714 call!34692)))

(declare-fun b!717257 () Bool)

(declare-fun e!402713 () Bool)

(declare-fun e!402712 () Bool)

(assert (=> b!717257 (= e!402713 e!402712)))

(declare-fun c!78909 () Bool)

(assert (=> b!717257 (= c!78909 (validKeyInArray!0 (select (arr!19433 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!98743 () Bool)

(declare-fun res!480174 () Bool)

(assert (=> d!98743 (=> res!480174 e!402713)))

(assert (=> d!98743 (= res!480174 (bvsge #b00000000000000000000000000000000 (size!19854 a!3186)))))

(assert (=> d!98743 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!402713)))

(declare-fun b!717259 () Bool)

(assert (=> b!717259 (= e!402712 call!34692)))

(declare-fun b!717260 () Bool)

(assert (=> b!717260 (= e!402712 e!402714)))

(declare-fun lt!319025 () (_ BitVec 64))

(assert (=> b!717260 (= lt!319025 (select (arr!19433 a!3186) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!24624 0))(
  ( (Unit!24625) )
))
(declare-fun lt!319024 () Unit!24624)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!40607 (_ BitVec 64) (_ BitVec 32)) Unit!24624)

(assert (=> b!717260 (= lt!319024 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!319025 #b00000000000000000000000000000000))))

(assert (=> b!717260 (arrayContainsKey!0 a!3186 lt!319025 #b00000000000000000000000000000000)))

(declare-fun lt!319023 () Unit!24624)

(assert (=> b!717260 (= lt!319023 lt!319024)))

(declare-fun res!480173 () Bool)

(assert (=> b!717260 (= res!480173 (= (seekEntryOrOpen!0 (select (arr!19433 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7040 #b00000000000000000000000000000000)))))

(assert (=> b!717260 (=> (not res!480173) (not e!402714))))

(assert (= (and d!98743 (not res!480174)) b!717257))

(assert (= (and b!717257 c!78909) b!717260))

(assert (= (and b!717257 (not c!78909)) b!717259))

(assert (= (and b!717260 res!480173) b!717258))

(assert (= (or b!717258 b!717259) bm!34689))

(declare-fun m!673291 () Bool)

(assert (=> bm!34689 m!673291))

(declare-fun m!673293 () Bool)

(assert (=> b!717257 m!673293))

(assert (=> b!717257 m!673293))

(declare-fun m!673295 () Bool)

(assert (=> b!717257 m!673295))

(assert (=> b!717260 m!673293))

(declare-fun m!673297 () Bool)

(assert (=> b!717260 m!673297))

(declare-fun m!673299 () Bool)

(assert (=> b!717260 m!673299))

(assert (=> b!717260 m!673293))

(declare-fun m!673301 () Bool)

(assert (=> b!717260 m!673301))

(assert (=> b!717227 d!98743))

(declare-fun b!717315 () Bool)

(declare-fun lt!319051 () SeekEntryResult!7040)

(declare-fun e!402746 () SeekEntryResult!7040)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40607 (_ BitVec 32)) SeekEntryResult!7040)

(assert (=> b!717315 (= e!402746 (seekKeyOrZeroReturnVacant!0 (x!61573 lt!319051) (index!30529 lt!319051) (index!30529 lt!319051) k!2102 a!3186 mask!3328))))

(declare-fun b!717316 () Bool)

(declare-fun c!78935 () Bool)

(declare-fun lt!319052 () (_ BitVec 64))

(assert (=> b!717316 (= c!78935 (= lt!319052 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!402745 () SeekEntryResult!7040)

(assert (=> b!717316 (= e!402745 e!402746)))

(declare-fun b!717317 () Bool)

(assert (=> b!717317 (= e!402746 (MissingZero!7040 (index!30529 lt!319051)))))

(declare-fun d!98751 () Bool)

(declare-fun lt!319050 () SeekEntryResult!7040)

(assert (=> d!98751 (and (or (is-Undefined!7040 lt!319050) (not (is-Found!7040 lt!319050)) (and (bvsge (index!30528 lt!319050) #b00000000000000000000000000000000) (bvslt (index!30528 lt!319050) (size!19854 a!3186)))) (or (is-Undefined!7040 lt!319050) (is-Found!7040 lt!319050) (not (is-MissingZero!7040 lt!319050)) (and (bvsge (index!30527 lt!319050) #b00000000000000000000000000000000) (bvslt (index!30527 lt!319050) (size!19854 a!3186)))) (or (is-Undefined!7040 lt!319050) (is-Found!7040 lt!319050) (is-MissingZero!7040 lt!319050) (not (is-MissingVacant!7040 lt!319050)) (and (bvsge (index!30530 lt!319050) #b00000000000000000000000000000000) (bvslt (index!30530 lt!319050) (size!19854 a!3186)))) (or (is-Undefined!7040 lt!319050) (ite (is-Found!7040 lt!319050) (= (select (arr!19433 a!3186) (index!30528 lt!319050)) k!2102) (ite (is-MissingZero!7040 lt!319050) (= (select (arr!19433 a!3186) (index!30527 lt!319050)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7040 lt!319050) (= (select (arr!19433 a!3186) (index!30530 lt!319050)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!402747 () SeekEntryResult!7040)

(assert (=> d!98751 (= lt!319050 e!402747)))

(declare-fun c!78936 () Bool)

(assert (=> d!98751 (= c!78936 (and (is-Intermediate!7040 lt!319051) (undefined!7852 lt!319051)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40607 (_ BitVec 32)) SeekEntryResult!7040)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!98751 (= lt!319051 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

