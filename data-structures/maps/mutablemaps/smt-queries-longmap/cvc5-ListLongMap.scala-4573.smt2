; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63754 () Bool)

(assert start!63754)

(declare-fun b!717182 () Bool)

(declare-fun res!480109 () Bool)

(declare-fun e!402670 () Bool)

(assert (=> b!717182 (=> (not res!480109) (not e!402670))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!717182 (= res!480109 (validKeyInArray!0 k!2102))))

(declare-fun res!480112 () Bool)

(assert (=> start!63754 (=> (not res!480112) (not e!402670))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63754 (= res!480112 (validMask!0 mask!3328))))

(assert (=> start!63754 e!402670))

(declare-datatypes ((array!40603 0))(
  ( (array!40604 (arr!19431 (Array (_ BitVec 32) (_ BitVec 64))) (size!19852 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40603)

(declare-fun array_inv!15205 (array!40603) Bool)

(assert (=> start!63754 (array_inv!15205 a!3186)))

(assert (=> start!63754 true))

(declare-fun b!717183 () Bool)

(declare-fun res!480110 () Bool)

(assert (=> b!717183 (=> (not res!480110) (not e!402670))))

(declare-fun arrayContainsKey!0 (array!40603 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!717183 (= res!480110 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!717184 () Bool)

(declare-fun res!480111 () Bool)

(assert (=> b!717184 (=> (not res!480111) (not e!402670))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!717184 (= res!480111 (validKeyInArray!0 (select (arr!19431 a!3186) j!159)))))

(declare-fun b!717185 () Bool)

(declare-fun res!480113 () Bool)

(declare-fun e!402672 () Bool)

(assert (=> b!717185 (=> (not res!480113) (not e!402672))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40603 (_ BitVec 32)) Bool)

(assert (=> b!717185 (= res!480113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!717186 () Bool)

(declare-fun res!480108 () Bool)

(assert (=> b!717186 (=> (not res!480108) (not e!402670))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!717186 (= res!480108 (and (= (size!19852 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19852 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19852 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!717187 () Bool)

(assert (=> b!717187 (= e!402672 (and (bvsle #b00000000000000000000000000000000 (size!19852 a!3186)) (bvsge (size!19852 a!3186) #b01111111111111111111111111111111)))))

(declare-fun b!717188 () Bool)

(assert (=> b!717188 (= e!402670 e!402672)))

(declare-fun res!480114 () Bool)

(assert (=> b!717188 (=> (not res!480114) (not e!402672))))

(declare-datatypes ((SeekEntryResult!7038 0))(
  ( (MissingZero!7038 (index!30519 (_ BitVec 32))) (Found!7038 (index!30520 (_ BitVec 32))) (Intermediate!7038 (undefined!7850 Bool) (index!30521 (_ BitVec 32)) (x!61571 (_ BitVec 32))) (Undefined!7038) (MissingVacant!7038 (index!30522 (_ BitVec 32))) )
))
(declare-fun lt!319001 () SeekEntryResult!7038)

(assert (=> b!717188 (= res!480114 (or (= lt!319001 (MissingZero!7038 i!1173)) (= lt!319001 (MissingVacant!7038 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40603 (_ BitVec 32)) SeekEntryResult!7038)

(assert (=> b!717188 (= lt!319001 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!63754 res!480112) b!717186))

(assert (= (and b!717186 res!480108) b!717184))

(assert (= (and b!717184 res!480111) b!717182))

(assert (= (and b!717182 res!480109) b!717183))

(assert (= (and b!717183 res!480110) b!717188))

(assert (= (and b!717188 res!480114) b!717185))

(assert (= (and b!717185 res!480113) b!717187))

(declare-fun m!673227 () Bool)

(assert (=> b!717188 m!673227))

(declare-fun m!673229 () Bool)

(assert (=> b!717184 m!673229))

(assert (=> b!717184 m!673229))

(declare-fun m!673231 () Bool)

(assert (=> b!717184 m!673231))

(declare-fun m!673233 () Bool)

(assert (=> start!63754 m!673233))

(declare-fun m!673235 () Bool)

(assert (=> start!63754 m!673235))

(declare-fun m!673237 () Bool)

(assert (=> b!717183 m!673237))

(declare-fun m!673239 () Bool)

(assert (=> b!717185 m!673239))

(declare-fun m!673241 () Bool)

(assert (=> b!717182 m!673241))

(push 1)

(assert (not b!717182))

(assert (not b!717184))

(assert (not b!717183))

(assert (not b!717185))

(assert (not start!63754))

(assert (not b!717188))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!34686 () Bool)

(declare-fun call!34689 () Bool)

(assert (=> bm!34686 (= call!34689 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!717245 () Bool)

(declare-fun e!402703 () Bool)

(assert (=> b!717245 (= e!402703 call!34689)))

(declare-fun b!717246 () Bool)

(declare-fun e!402705 () Bool)

(assert (=> b!717246 (= e!402703 e!402705)))

(declare-fun lt!319015 () (_ BitVec 64))

(assert (=> b!717246 (= lt!319015 (select (arr!19431 a!3186) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!24622 0))(
  ( (Unit!24623) )
))
(declare-fun lt!319014 () Unit!24622)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!40603 (_ BitVec 64) (_ BitVec 32)) Unit!24622)

(assert (=> b!717246 (= lt!319014 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!319015 #b00000000000000000000000000000000))))

(assert (=> b!717246 (arrayContainsKey!0 a!3186 lt!319015 #b00000000000000000000000000000000)))

(declare-fun lt!319016 () Unit!24622)

(assert (=> b!717246 (= lt!319016 lt!319014)))

(declare-fun res!480168 () Bool)

(assert (=> b!717246 (= res!480168 (= (seekEntryOrOpen!0 (select (arr!19431 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7038 #b00000000000000000000000000000000)))))

(assert (=> b!717246 (=> (not res!480168) (not e!402705))))

(declare-fun b!717247 () Bool)

(declare-fun e!402704 () Bool)

(assert (=> b!717247 (= e!402704 e!402703)))

(declare-fun c!78906 () Bool)

(assert (=> b!717247 (= c!78906 (validKeyInArray!0 (select (arr!19431 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!98739 () Bool)

(declare-fun res!480167 () Bool)

(assert (=> d!98739 (=> res!480167 e!402704)))

(assert (=> d!98739 (= res!480167 (bvsge #b00000000000000000000000000000000 (size!19852 a!3186)))))

(assert (=> d!98739 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!402704)))

(declare-fun b!717248 () Bool)

(assert (=> b!717248 (= e!402705 call!34689)))

(assert (= (and d!98739 (not res!480167)) b!717247))

(assert (= (and b!717247 c!78906) b!717246))

(assert (= (and b!717247 (not c!78906)) b!717245))

(assert (= (and b!717246 res!480168) b!717248))

(assert (= (or b!717248 b!717245) bm!34686))

(declare-fun m!673279 () Bool)

(assert (=> bm!34686 m!673279))

(declare-fun m!673281 () Bool)

(assert (=> b!717246 m!673281))

(declare-fun m!673283 () Bool)

(assert (=> b!717246 m!673283))

(declare-fun m!673285 () Bool)

(assert (=> b!717246 m!673285))

(assert (=> b!717246 m!673281))

(declare-fun m!673287 () Bool)

(assert (=> b!717246 m!673287))

(assert (=> b!717247 m!673281))

(assert (=> b!717247 m!673281))

(declare-fun m!673289 () Bool)

(assert (=> b!717247 m!673289))

(assert (=> b!717185 d!98739))

(declare-fun d!98745 () Bool)

(assert (=> d!98745 (= (validKeyInArray!0 (select (arr!19431 a!3186) j!159)) (and (not (= (select (arr!19431 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19431 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!717184 d!98745))

(declare-fun d!98747 () Bool)

(assert (=> d!98747 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!717182 d!98747))

(declare-fun d!98749 () Bool)

(assert (=> d!98749 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!63754 d!98749))

(declare-fun d!98753 () Bool)

(assert (=> d!98753 (= (array_inv!15205 a!3186) (bvsge (size!19852 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!63754 d!98753))

(declare-fun d!98755 () Bool)

(declare-fun res!480179 () Bool)

(declare-fun e!402725 () Bool)

(assert (=> d!98755 (=> res!480179 e!402725)))

(assert (=> d!98755 (= res!480179 (= (select (arr!19431 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!98755 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!402725)))

(declare-fun b!717277 () Bool)

(declare-fun e!402726 () Bool)

(assert (=> b!717277 (= e!402725 e!402726)))

(declare-fun res!480180 () Bool)

(assert (=> b!717277 (=> (not res!480180) (not e!402726))))

(assert (=> b!717277 (= res!480180 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19852 a!3186)))))

(declare-fun b!717278 () Bool)

(assert (=> b!717278 (= e!402726 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!98755 (not res!480179)) b!717277))

(assert (= (and b!717277 res!480180) b!717278))

(assert (=> d!98755 m!673281))

(declare-fun m!673303 () Bool)

(assert (=> b!717278 m!673303))

(assert (=> b!717183 d!98755))

(declare-fun b!717309 () Bool)

(declare-fun e!402743 () SeekEntryResult!7038)

(declare-fun lt!319049 () SeekEntryResult!7038)

(assert (=> b!717309 (= e!402743 (Found!7038 (index!30521 lt!319049)))))

(declare-fun b!717310 () Bool)

(declare-fun e!402744 () SeekEntryResult!7038)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40603 (_ BitVec 32)) SeekEntryResult!7038)

(assert (=> b!717310 (= e!402744 (seekKeyOrZeroReturnVacant!0 (x!61571 lt!319049) (index!30521 lt!319049) (index!30521 lt!319049) k!2102 a!3186 mask!3328))))

(declare-fun b!717311 () Bool)

(declare-fun c!78932 () Bool)

(declare-fun lt!319048 () (_ BitVec 64))

(assert (=> b!717311 (= c!78932 (= lt!319048 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!717311 (= e!402743 e!402744)))

(declare-fun d!98757 () Bool)

(declare-fun lt!319047 () SeekEntryResult!7038)

(assert (=> d!98757 (and (or (is-Undefined!7038 lt!319047) (not (is-Found!7038 lt!319047)) (and (bvsge (index!30520 lt!319047) #b00000000000000000000000000000000) (bvslt (index!30520 lt!319047) (size!19852 a!3186)))) (or (is-Undefined!7038 lt!319047) (is-Found!7038 lt!319047) (not (is-MissingZero!7038 lt!319047)) (and (bvsge (index!30519 lt!319047) #b00000000000000000000000000000000) (bvslt (index!30519 lt!319047) (size!19852 a!3186)))) (or (is-Undefined!7038 lt!319047) (is-Found!7038 lt!319047) (is-MissingZero!7038 lt!319047) (not (is-MissingVacant!7038 lt!319047)) (and (bvsge (index!30522 lt!319047) #b00000000000000000000000000000000) (bvslt (index!30522 lt!319047) (size!19852 a!3186)))) (or (is-Undefined!7038 lt!319047) (ite (is-Found!7038 lt!319047) (= (select (arr!19431 a!3186) (index!30520 lt!319047)) k!2102) (ite (is-MissingZero!7038 lt!319047) (= (select (arr!19431 a!3186) (index!30519 lt!319047)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7038 lt!319047) (= (select (arr!19431 a!3186) (index!30522 lt!319047)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!402742 () SeekEntryResult!7038)

(assert (=> d!98757 (= lt!319047 e!402742)))

(declare-fun c!78933 () Bool)

(assert (=> d!98757 (= c!78933 (and (is-Intermediate!7038 lt!319049) (undefined!7850 lt!319049)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40603 (_ BitVec 32)) SeekEntryResult!7038)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!98757 (= lt!319049 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!98757 (validMask!0 mask!3328)))

(assert (=> d!98757 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!319047)))

(declare-fun b!717312 () Bool)

(assert (=> b!717312 (= e!402744 (MissingZero!7038 (index!30521 lt!319049)))))

(declare-fun b!717313 () Bool)

(assert (=> b!717313 (= e!402742 Undefined!7038)))

(declare-fun b!717314 () Bool)

(assert (=> b!717314 (= e!402742 e!402743)))

(assert (=> b!717314 (= lt!319048 (select (arr!19431 a!3186) (index!30521 lt!319049)))))

(declare-fun c!78931 () Bool)

(assert (=> b!717314 (= c!78931 (= lt!319048 k!2102))))

(assert (= (and d!98757 c!78933) b!717313))

(assert (= (and d!98757 (not c!78933)) b!717314))

(assert (= (and b!717314 c!78931) b!717309))

(assert (= (and b!717314 (not c!78931)) b!717311))

(assert (= (and b!717311 c!78932) b!717312))

(assert (= (and b!717311 (not c!78932)) b!717310))

(declare-fun m!673319 () Bool)

(assert (=> b!717310 m!673319))

(declare-fun m!673321 () Bool)

(assert (=> d!98757 m!673321))

(declare-fun m!673323 () Bool)

(assert (=> d!98757 m!673323))

(assert (=> d!98757 m!673321))

(declare-fun m!673325 () Bool)

(assert (=> d!98757 m!673325))

(declare-fun m!673327 () Bool)

(assert (=> d!98757 m!673327))

(declare-fun m!673329 () Bool)

(assert (=> d!98757 m!673329))

(assert (=> d!98757 m!673233))

(declare-fun m!673331 () Bool)

(assert (=> b!717314 m!673331))

(assert (=> b!717188 d!98757))

(push 1)

(assert (not b!717278))

(assert (not bm!34686))

(assert (not b!717310))

(assert (not b!717246))

(assert (not b!717247))

(assert (not d!98757))

(check-sat)

(pop 1)

(push 1)

(check-sat)

