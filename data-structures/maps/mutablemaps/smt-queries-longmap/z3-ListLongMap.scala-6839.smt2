; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86106 () Bool)

(assert start!86106)

(declare-fun b!997005 () Bool)

(declare-fun res!667278 () Bool)

(declare-fun e!562400 () Bool)

(assert (=> b!997005 (=> (not res!667278) (not e!562400))))

(declare-datatypes ((array!63063 0))(
  ( (array!63064 (arr!30359 (Array (_ BitVec 32) (_ BitVec 64))) (size!30862 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63063)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63063 (_ BitVec 32)) Bool)

(assert (=> b!997005 (= res!667278 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!667277 () Bool)

(declare-fun e!562398 () Bool)

(assert (=> start!86106 (=> (not res!667277) (not e!562398))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86106 (= res!667277 (validMask!0 mask!3464))))

(assert (=> start!86106 e!562398))

(declare-fun array_inv!23349 (array!63063) Bool)

(assert (=> start!86106 (array_inv!23349 a!3219)))

(assert (=> start!86106 true))

(declare-fun b!997006 () Bool)

(declare-fun res!667280 () Bool)

(assert (=> b!997006 (=> (not res!667280) (not e!562400))))

(declare-datatypes ((List!21161 0))(
  ( (Nil!21158) (Cons!21157 (h!22322 (_ BitVec 64)) (t!30170 List!21161)) )
))
(declare-fun arrayNoDuplicates!0 (array!63063 (_ BitVec 32) List!21161) Bool)

(assert (=> b!997006 (= res!667280 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21158))))

(declare-fun b!997007 () Bool)

(declare-fun e!562397 () Bool)

(assert (=> b!997007 (= e!562400 e!562397)))

(declare-fun res!667282 () Bool)

(assert (=> b!997007 (=> (not res!667282) (not e!562397))))

(declare-fun j!170 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9291 0))(
  ( (MissingZero!9291 (index!39534 (_ BitVec 32))) (Found!9291 (index!39535 (_ BitVec 32))) (Intermediate!9291 (undefined!10103 Bool) (index!39536 (_ BitVec 32)) (x!86992 (_ BitVec 32))) (Undefined!9291) (MissingVacant!9291 (index!39537 (_ BitVec 32))) )
))
(declare-fun lt!441300 () SeekEntryResult!9291)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63063 (_ BitVec 32)) SeekEntryResult!9291)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!997007 (= res!667282 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30359 a!3219) j!170) mask!3464) (select (arr!30359 a!3219) j!170) a!3219 mask!3464) lt!441300))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!997007 (= lt!441300 (Intermediate!9291 false resIndex!38 resX!38))))

(declare-fun b!997008 () Bool)

(declare-fun res!667276 () Bool)

(assert (=> b!997008 (=> (not res!667276) (not e!562397))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!997008 (= res!667276 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30359 a!3219) j!170) a!3219 mask!3464) lt!441300))))

(declare-fun b!997009 () Bool)

(declare-fun res!667285 () Bool)

(assert (=> b!997009 (=> (not res!667285) (not e!562398))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!997009 (= res!667285 (validKeyInArray!0 (select (arr!30359 a!3219) j!170)))))

(declare-fun b!997010 () Bool)

(declare-fun res!667284 () Bool)

(assert (=> b!997010 (=> (not res!667284) (not e!562398))))

(declare-fun k0!2224 () (_ BitVec 64))

(assert (=> b!997010 (= res!667284 (validKeyInArray!0 k0!2224))))

(declare-fun b!997011 () Bool)

(declare-fun res!667281 () Bool)

(assert (=> b!997011 (=> (not res!667281) (not e!562400))))

(assert (=> b!997011 (= res!667281 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30862 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30862 a!3219))))))

(declare-fun b!997012 () Bool)

(assert (=> b!997012 (= e!562397 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvsgt mask!3464 #b00111111111111111111111111111111)))))

(declare-fun b!997013 () Bool)

(declare-fun res!667275 () Bool)

(assert (=> b!997013 (=> (not res!667275) (not e!562398))))

(declare-fun arrayContainsKey!0 (array!63063 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!997013 (= res!667275 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!997014 () Bool)

(declare-fun res!667279 () Bool)

(assert (=> b!997014 (=> (not res!667279) (not e!562398))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!997014 (= res!667279 (and (= (size!30862 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30862 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30862 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!997015 () Bool)

(assert (=> b!997015 (= e!562398 e!562400)))

(declare-fun res!667283 () Bool)

(assert (=> b!997015 (=> (not res!667283) (not e!562400))))

(declare-fun lt!441299 () SeekEntryResult!9291)

(assert (=> b!997015 (= res!667283 (or (= lt!441299 (MissingVacant!9291 i!1194)) (= lt!441299 (MissingZero!9291 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63063 (_ BitVec 32)) SeekEntryResult!9291)

(assert (=> b!997015 (= lt!441299 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(assert (= (and start!86106 res!667277) b!997014))

(assert (= (and b!997014 res!667279) b!997009))

(assert (= (and b!997009 res!667285) b!997010))

(assert (= (and b!997010 res!667284) b!997013))

(assert (= (and b!997013 res!667275) b!997015))

(assert (= (and b!997015 res!667283) b!997005))

(assert (= (and b!997005 res!667278) b!997006))

(assert (= (and b!997006 res!667280) b!997011))

(assert (= (and b!997011 res!667281) b!997007))

(assert (= (and b!997007 res!667282) b!997008))

(assert (= (and b!997008 res!667276) b!997012))

(declare-fun m!924069 () Bool)

(assert (=> b!997013 m!924069))

(declare-fun m!924071 () Bool)

(assert (=> start!86106 m!924071))

(declare-fun m!924073 () Bool)

(assert (=> start!86106 m!924073))

(declare-fun m!924075 () Bool)

(assert (=> b!997010 m!924075))

(declare-fun m!924077 () Bool)

(assert (=> b!997015 m!924077))

(declare-fun m!924079 () Bool)

(assert (=> b!997006 m!924079))

(declare-fun m!924081 () Bool)

(assert (=> b!997007 m!924081))

(assert (=> b!997007 m!924081))

(declare-fun m!924083 () Bool)

(assert (=> b!997007 m!924083))

(assert (=> b!997007 m!924083))

(assert (=> b!997007 m!924081))

(declare-fun m!924085 () Bool)

(assert (=> b!997007 m!924085))

(declare-fun m!924087 () Bool)

(assert (=> b!997005 m!924087))

(assert (=> b!997008 m!924081))

(assert (=> b!997008 m!924081))

(declare-fun m!924089 () Bool)

(assert (=> b!997008 m!924089))

(assert (=> b!997009 m!924081))

(assert (=> b!997009 m!924081))

(declare-fun m!924091 () Bool)

(assert (=> b!997009 m!924091))

(check-sat (not b!997009) (not b!997008) (not b!997010) (not b!997013) (not b!997007) (not start!86106) (not b!997005) (not b!997006) (not b!997015))
(check-sat)
(get-model)

(declare-fun b!997059 () Bool)

(declare-fun e!562423 () Bool)

(declare-fun call!42244 () Bool)

(assert (=> b!997059 (= e!562423 call!42244)))

(declare-fun b!997060 () Bool)

(declare-fun e!562421 () Bool)

(declare-fun e!562424 () Bool)

(assert (=> b!997060 (= e!562421 e!562424)))

(declare-fun res!667327 () Bool)

(assert (=> b!997060 (=> (not res!667327) (not e!562424))))

(declare-fun e!562422 () Bool)

(assert (=> b!997060 (= res!667327 (not e!562422))))

(declare-fun res!667325 () Bool)

(assert (=> b!997060 (=> (not res!667325) (not e!562422))))

(assert (=> b!997060 (= res!667325 (validKeyInArray!0 (select (arr!30359 a!3219) #b00000000000000000000000000000000)))))

(declare-fun d!118971 () Bool)

(declare-fun res!667326 () Bool)

(assert (=> d!118971 (=> res!667326 e!562421)))

(assert (=> d!118971 (= res!667326 (bvsge #b00000000000000000000000000000000 (size!30862 a!3219)))))

(assert (=> d!118971 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21158) e!562421)))

(declare-fun b!997061 () Bool)

(assert (=> b!997061 (= e!562423 call!42244)))

(declare-fun b!997062 () Bool)

(declare-fun contains!5876 (List!21161 (_ BitVec 64)) Bool)

(assert (=> b!997062 (= e!562422 (contains!5876 Nil!21158 (select (arr!30359 a!3219) #b00000000000000000000000000000000)))))

(declare-fun bm!42241 () Bool)

(declare-fun c!101010 () Bool)

(assert (=> bm!42241 (= call!42244 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101010 (Cons!21157 (select (arr!30359 a!3219) #b00000000000000000000000000000000) Nil!21158) Nil!21158)))))

(declare-fun b!997063 () Bool)

(assert (=> b!997063 (= e!562424 e!562423)))

(assert (=> b!997063 (= c!101010 (validKeyInArray!0 (select (arr!30359 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!118971 (not res!667326)) b!997060))

(assert (= (and b!997060 res!667325) b!997062))

(assert (= (and b!997060 res!667327) b!997063))

(assert (= (and b!997063 c!101010) b!997059))

(assert (= (and b!997063 (not c!101010)) b!997061))

(assert (= (or b!997059 b!997061) bm!42241))

(declare-fun m!924117 () Bool)

(assert (=> b!997060 m!924117))

(assert (=> b!997060 m!924117))

(declare-fun m!924119 () Bool)

(assert (=> b!997060 m!924119))

(assert (=> b!997062 m!924117))

(assert (=> b!997062 m!924117))

(declare-fun m!924121 () Bool)

(assert (=> b!997062 m!924121))

(assert (=> bm!42241 m!924117))

(declare-fun m!924123 () Bool)

(assert (=> bm!42241 m!924123))

(assert (=> b!997063 m!924117))

(assert (=> b!997063 m!924117))

(assert (=> b!997063 m!924119))

(assert (=> b!997006 d!118971))

(declare-fun d!118973 () Bool)

(assert (=> d!118973 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!86106 d!118973))

(declare-fun d!118983 () Bool)

(assert (=> d!118983 (= (array_inv!23349 a!3219) (bvsge (size!30862 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!86106 d!118983))

(declare-fun d!118985 () Bool)

(assert (=> d!118985 (= (validKeyInArray!0 k0!2224) (and (not (= k0!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!997010 d!118985))

(declare-fun d!118987 () Bool)

(declare-fun res!667344 () Bool)

(declare-fun e!562446 () Bool)

(assert (=> d!118987 (=> res!667344 e!562446)))

(assert (=> d!118987 (= res!667344 (bvsge #b00000000000000000000000000000000 (size!30862 a!3219)))))

(assert (=> d!118987 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!562446)))

(declare-fun b!997090 () Bool)

(declare-fun e!562447 () Bool)

(assert (=> b!997090 (= e!562446 e!562447)))

(declare-fun c!101016 () Bool)

(assert (=> b!997090 (= c!101016 (validKeyInArray!0 (select (arr!30359 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!997091 () Bool)

(declare-fun e!562448 () Bool)

(assert (=> b!997091 (= e!562447 e!562448)))

(declare-fun lt!441322 () (_ BitVec 64))

(assert (=> b!997091 (= lt!441322 (select (arr!30359 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32922 0))(
  ( (Unit!32923) )
))
(declare-fun lt!441323 () Unit!32922)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63063 (_ BitVec 64) (_ BitVec 32)) Unit!32922)

(assert (=> b!997091 (= lt!441323 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!441322 #b00000000000000000000000000000000))))

(assert (=> b!997091 (arrayContainsKey!0 a!3219 lt!441322 #b00000000000000000000000000000000)))

(declare-fun lt!441324 () Unit!32922)

(assert (=> b!997091 (= lt!441324 lt!441323)))

(declare-fun res!667345 () Bool)

(assert (=> b!997091 (= res!667345 (= (seekEntryOrOpen!0 (select (arr!30359 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9291 #b00000000000000000000000000000000)))))

(assert (=> b!997091 (=> (not res!667345) (not e!562448))))

(declare-fun bm!42247 () Bool)

(declare-fun call!42250 () Bool)

(assert (=> bm!42247 (= call!42250 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun b!997092 () Bool)

(assert (=> b!997092 (= e!562447 call!42250)))

(declare-fun b!997093 () Bool)

(assert (=> b!997093 (= e!562448 call!42250)))

(assert (= (and d!118987 (not res!667344)) b!997090))

(assert (= (and b!997090 c!101016) b!997091))

(assert (= (and b!997090 (not c!101016)) b!997092))

(assert (= (and b!997091 res!667345) b!997093))

(assert (= (or b!997093 b!997092) bm!42247))

(assert (=> b!997090 m!924117))

(assert (=> b!997090 m!924117))

(assert (=> b!997090 m!924119))

(assert (=> b!997091 m!924117))

(declare-fun m!924139 () Bool)

(assert (=> b!997091 m!924139))

(declare-fun m!924141 () Bool)

(assert (=> b!997091 m!924141))

(assert (=> b!997091 m!924117))

(declare-fun m!924143 () Bool)

(assert (=> b!997091 m!924143))

(declare-fun m!924145 () Bool)

(assert (=> bm!42247 m!924145))

(assert (=> b!997005 d!118987))

(declare-fun b!997151 () Bool)

(declare-fun e!562479 () SeekEntryResult!9291)

(declare-fun lt!441354 () SeekEntryResult!9291)

(assert (=> b!997151 (= e!562479 (Found!9291 (index!39536 lt!441354)))))

(declare-fun b!997152 () Bool)

(declare-fun e!562481 () SeekEntryResult!9291)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63063 (_ BitVec 32)) SeekEntryResult!9291)

(assert (=> b!997152 (= e!562481 (seekKeyOrZeroReturnVacant!0 (x!86992 lt!441354) (index!39536 lt!441354) (index!39536 lt!441354) k0!2224 a!3219 mask!3464))))

(declare-fun b!997153 () Bool)

(declare-fun e!562480 () SeekEntryResult!9291)

(assert (=> b!997153 (= e!562480 Undefined!9291)))

(declare-fun d!118993 () Bool)

(declare-fun lt!441353 () SeekEntryResult!9291)

(get-info :version)

(assert (=> d!118993 (and (or ((_ is Undefined!9291) lt!441353) (not ((_ is Found!9291) lt!441353)) (and (bvsge (index!39535 lt!441353) #b00000000000000000000000000000000) (bvslt (index!39535 lt!441353) (size!30862 a!3219)))) (or ((_ is Undefined!9291) lt!441353) ((_ is Found!9291) lt!441353) (not ((_ is MissingZero!9291) lt!441353)) (and (bvsge (index!39534 lt!441353) #b00000000000000000000000000000000) (bvslt (index!39534 lt!441353) (size!30862 a!3219)))) (or ((_ is Undefined!9291) lt!441353) ((_ is Found!9291) lt!441353) ((_ is MissingZero!9291) lt!441353) (not ((_ is MissingVacant!9291) lt!441353)) (and (bvsge (index!39537 lt!441353) #b00000000000000000000000000000000) (bvslt (index!39537 lt!441353) (size!30862 a!3219)))) (or ((_ is Undefined!9291) lt!441353) (ite ((_ is Found!9291) lt!441353) (= (select (arr!30359 a!3219) (index!39535 lt!441353)) k0!2224) (ite ((_ is MissingZero!9291) lt!441353) (= (select (arr!30359 a!3219) (index!39534 lt!441353)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9291) lt!441353) (= (select (arr!30359 a!3219) (index!39537 lt!441353)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!118993 (= lt!441353 e!562480)))

(declare-fun c!101041 () Bool)

(assert (=> d!118993 (= c!101041 (and ((_ is Intermediate!9291) lt!441354) (undefined!10103 lt!441354)))))

(assert (=> d!118993 (= lt!441354 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2224 mask!3464) k0!2224 a!3219 mask!3464))))

(assert (=> d!118993 (validMask!0 mask!3464)))

(assert (=> d!118993 (= (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464) lt!441353)))

(declare-fun b!997154 () Bool)

(assert (=> b!997154 (= e!562480 e!562479)))

(declare-fun lt!441352 () (_ BitVec 64))

(assert (=> b!997154 (= lt!441352 (select (arr!30359 a!3219) (index!39536 lt!441354)))))

(declare-fun c!101043 () Bool)

(assert (=> b!997154 (= c!101043 (= lt!441352 k0!2224))))

(declare-fun b!997155 () Bool)

(assert (=> b!997155 (= e!562481 (MissingZero!9291 (index!39536 lt!441354)))))

(declare-fun b!997156 () Bool)

(declare-fun c!101042 () Bool)

(assert (=> b!997156 (= c!101042 (= lt!441352 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!997156 (= e!562479 e!562481)))

(assert (= (and d!118993 c!101041) b!997153))

(assert (= (and d!118993 (not c!101041)) b!997154))

(assert (= (and b!997154 c!101043) b!997151))

(assert (= (and b!997154 (not c!101043)) b!997156))

(assert (= (and b!997156 c!101042) b!997155))

(assert (= (and b!997156 (not c!101042)) b!997152))

(declare-fun m!924169 () Bool)

(assert (=> b!997152 m!924169))

(declare-fun m!924171 () Bool)

(assert (=> d!118993 m!924171))

(assert (=> d!118993 m!924071))

(declare-fun m!924173 () Bool)

(assert (=> d!118993 m!924173))

(declare-fun m!924175 () Bool)

(assert (=> d!118993 m!924175))

(declare-fun m!924177 () Bool)

(assert (=> d!118993 m!924177))

(assert (=> d!118993 m!924175))

(declare-fun m!924179 () Bool)

(assert (=> d!118993 m!924179))

(declare-fun m!924181 () Bool)

(assert (=> b!997154 m!924181))

(assert (=> b!997015 d!118993))

(declare-fun d!119005 () Bool)

(assert (=> d!119005 (= (validKeyInArray!0 (select (arr!30359 a!3219) j!170)) (and (not (= (select (arr!30359 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30359 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!997009 d!119005))

(declare-fun b!997269 () Bool)

(declare-fun e!562552 () SeekEntryResult!9291)

(assert (=> b!997269 (= e!562552 (Intermediate!9291 true index!1507 x!1245))))

(declare-fun b!997271 () Bool)

(declare-fun lt!441384 () SeekEntryResult!9291)

(assert (=> b!997271 (and (bvsge (index!39536 lt!441384) #b00000000000000000000000000000000) (bvslt (index!39536 lt!441384) (size!30862 a!3219)))))

(declare-fun e!562555 () Bool)

(assert (=> b!997271 (= e!562555 (= (select (arr!30359 a!3219) (index!39536 lt!441384)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!997272 () Bool)

(declare-fun e!562556 () SeekEntryResult!9291)

(assert (=> b!997272 (= e!562552 e!562556)))

(declare-fun lt!441385 () (_ BitVec 64))

(declare-fun c!101079 () Bool)

(assert (=> b!997272 (= c!101079 (or (= lt!441385 (select (arr!30359 a!3219) j!170)) (= (bvadd lt!441385 lt!441385) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!997273 () Bool)

(assert (=> b!997273 (and (bvsge (index!39536 lt!441384) #b00000000000000000000000000000000) (bvslt (index!39536 lt!441384) (size!30862 a!3219)))))

(declare-fun res!667399 () Bool)

(assert (=> b!997273 (= res!667399 (= (select (arr!30359 a!3219) (index!39536 lt!441384)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!997273 (=> res!667399 e!562555)))

(declare-fun b!997274 () Bool)

(assert (=> b!997274 (and (bvsge (index!39536 lt!441384) #b00000000000000000000000000000000) (bvslt (index!39536 lt!441384) (size!30862 a!3219)))))

(declare-fun res!667401 () Bool)

(assert (=> b!997274 (= res!667401 (= (select (arr!30359 a!3219) (index!39536 lt!441384)) (select (arr!30359 a!3219) j!170)))))

(assert (=> b!997274 (=> res!667401 e!562555)))

(declare-fun e!562553 () Bool)

(assert (=> b!997274 (= e!562553 e!562555)))

(declare-fun b!997275 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!997275 (= e!562556 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30359 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!997276 () Bool)

(declare-fun e!562554 () Bool)

(assert (=> b!997276 (= e!562554 (bvsge (x!86992 lt!441384) #b01111111111111111111111111111110))))

(declare-fun b!997277 () Bool)

(assert (=> b!997277 (= e!562554 e!562553)))

(declare-fun res!667400 () Bool)

(assert (=> b!997277 (= res!667400 (and ((_ is Intermediate!9291) lt!441384) (not (undefined!10103 lt!441384)) (bvslt (x!86992 lt!441384) #b01111111111111111111111111111110) (bvsge (x!86992 lt!441384) #b00000000000000000000000000000000) (bvsge (x!86992 lt!441384) x!1245)))))

(assert (=> b!997277 (=> (not res!667400) (not e!562553))))

(declare-fun d!119007 () Bool)

(assert (=> d!119007 e!562554))

(declare-fun c!101081 () Bool)

(assert (=> d!119007 (= c!101081 (and ((_ is Intermediate!9291) lt!441384) (undefined!10103 lt!441384)))))

(assert (=> d!119007 (= lt!441384 e!562552)))

(declare-fun c!101080 () Bool)

(assert (=> d!119007 (= c!101080 (bvsge x!1245 #b01111111111111111111111111111110))))

(assert (=> d!119007 (= lt!441385 (select (arr!30359 a!3219) index!1507))))

(assert (=> d!119007 (validMask!0 mask!3464)))

(assert (=> d!119007 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30359 a!3219) j!170) a!3219 mask!3464) lt!441384)))

(declare-fun b!997270 () Bool)

(assert (=> b!997270 (= e!562556 (Intermediate!9291 false index!1507 x!1245))))

(assert (= (and d!119007 c!101080) b!997269))

(assert (= (and d!119007 (not c!101080)) b!997272))

(assert (= (and b!997272 c!101079) b!997270))

(assert (= (and b!997272 (not c!101079)) b!997275))

(assert (= (and d!119007 c!101081) b!997276))

(assert (= (and d!119007 (not c!101081)) b!997277))

(assert (= (and b!997277 res!667400) b!997274))

(assert (= (and b!997274 (not res!667401)) b!997273))

(assert (= (and b!997273 (not res!667399)) b!997271))

(declare-fun m!924229 () Bool)

(assert (=> d!119007 m!924229))

(assert (=> d!119007 m!924071))

(declare-fun m!924231 () Bool)

(assert (=> b!997273 m!924231))

(declare-fun m!924233 () Bool)

(assert (=> b!997275 m!924233))

(assert (=> b!997275 m!924233))

(assert (=> b!997275 m!924081))

(declare-fun m!924235 () Bool)

(assert (=> b!997275 m!924235))

(assert (=> b!997274 m!924231))

(assert (=> b!997271 m!924231))

(assert (=> b!997008 d!119007))

(declare-fun d!119025 () Bool)

(declare-fun res!667409 () Bool)

(declare-fun e!562565 () Bool)

(assert (=> d!119025 (=> res!667409 e!562565)))

(assert (=> d!119025 (= res!667409 (= (select (arr!30359 a!3219) #b00000000000000000000000000000000) k0!2224))))

(assert (=> d!119025 (= (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000) e!562565)))

(declare-fun b!997287 () Bool)

(declare-fun e!562566 () Bool)

(assert (=> b!997287 (= e!562565 e!562566)))

(declare-fun res!667410 () Bool)

(assert (=> b!997287 (=> (not res!667410) (not e!562566))))

(assert (=> b!997287 (= res!667410 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30862 a!3219)))))

(declare-fun b!997288 () Bool)

(assert (=> b!997288 (= e!562566 (arrayContainsKey!0 a!3219 k0!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119025 (not res!667409)) b!997287))

(assert (= (and b!997287 res!667410) b!997288))

(assert (=> d!119025 m!924117))

(declare-fun m!924243 () Bool)

(assert (=> b!997288 m!924243))

(assert (=> b!997013 d!119025))

(declare-fun b!997289 () Bool)

(declare-fun e!562567 () SeekEntryResult!9291)

(assert (=> b!997289 (= e!562567 (Intermediate!9291 true (toIndex!0 (select (arr!30359 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!997291 () Bool)

(declare-fun lt!441386 () SeekEntryResult!9291)

(assert (=> b!997291 (and (bvsge (index!39536 lt!441386) #b00000000000000000000000000000000) (bvslt (index!39536 lt!441386) (size!30862 a!3219)))))

(declare-fun e!562570 () Bool)

(assert (=> b!997291 (= e!562570 (= (select (arr!30359 a!3219) (index!39536 lt!441386)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!997292 () Bool)

(declare-fun e!562571 () SeekEntryResult!9291)

(assert (=> b!997292 (= e!562567 e!562571)))

(declare-fun lt!441387 () (_ BitVec 64))

(declare-fun c!101083 () Bool)

(assert (=> b!997292 (= c!101083 (or (= lt!441387 (select (arr!30359 a!3219) j!170)) (= (bvadd lt!441387 lt!441387) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!997293 () Bool)

(assert (=> b!997293 (and (bvsge (index!39536 lt!441386) #b00000000000000000000000000000000) (bvslt (index!39536 lt!441386) (size!30862 a!3219)))))

(declare-fun res!667411 () Bool)

(assert (=> b!997293 (= res!667411 (= (select (arr!30359 a!3219) (index!39536 lt!441386)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!997293 (=> res!667411 e!562570)))

(declare-fun b!997294 () Bool)

(assert (=> b!997294 (and (bvsge (index!39536 lt!441386) #b00000000000000000000000000000000) (bvslt (index!39536 lt!441386) (size!30862 a!3219)))))

(declare-fun res!667413 () Bool)

(assert (=> b!997294 (= res!667413 (= (select (arr!30359 a!3219) (index!39536 lt!441386)) (select (arr!30359 a!3219) j!170)))))

(assert (=> b!997294 (=> res!667413 e!562570)))

(declare-fun e!562568 () Bool)

(assert (=> b!997294 (= e!562568 e!562570)))

(declare-fun b!997295 () Bool)

(assert (=> b!997295 (= e!562571 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30359 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30359 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!997296 () Bool)

(declare-fun e!562569 () Bool)

(assert (=> b!997296 (= e!562569 (bvsge (x!86992 lt!441386) #b01111111111111111111111111111110))))

(declare-fun b!997297 () Bool)

(assert (=> b!997297 (= e!562569 e!562568)))

(declare-fun res!667412 () Bool)

(assert (=> b!997297 (= res!667412 (and ((_ is Intermediate!9291) lt!441386) (not (undefined!10103 lt!441386)) (bvslt (x!86992 lt!441386) #b01111111111111111111111111111110) (bvsge (x!86992 lt!441386) #b00000000000000000000000000000000) (bvsge (x!86992 lt!441386) #b00000000000000000000000000000000)))))

(assert (=> b!997297 (=> (not res!667412) (not e!562568))))

(declare-fun d!119029 () Bool)

(assert (=> d!119029 e!562569))

(declare-fun c!101085 () Bool)

(assert (=> d!119029 (= c!101085 (and ((_ is Intermediate!9291) lt!441386) (undefined!10103 lt!441386)))))

(assert (=> d!119029 (= lt!441386 e!562567)))

(declare-fun c!101084 () Bool)

(assert (=> d!119029 (= c!101084 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!119029 (= lt!441387 (select (arr!30359 a!3219) (toIndex!0 (select (arr!30359 a!3219) j!170) mask!3464)))))

(assert (=> d!119029 (validMask!0 mask!3464)))

(assert (=> d!119029 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30359 a!3219) j!170) mask!3464) (select (arr!30359 a!3219) j!170) a!3219 mask!3464) lt!441386)))

(declare-fun b!997290 () Bool)

(assert (=> b!997290 (= e!562571 (Intermediate!9291 false (toIndex!0 (select (arr!30359 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(assert (= (and d!119029 c!101084) b!997289))

(assert (= (and d!119029 (not c!101084)) b!997292))

(assert (= (and b!997292 c!101083) b!997290))

(assert (= (and b!997292 (not c!101083)) b!997295))

(assert (= (and d!119029 c!101085) b!997296))

(assert (= (and d!119029 (not c!101085)) b!997297))

(assert (= (and b!997297 res!667412) b!997294))

(assert (= (and b!997294 (not res!667413)) b!997293))

(assert (= (and b!997293 (not res!667411)) b!997291))

(assert (=> d!119029 m!924083))

(declare-fun m!924245 () Bool)

(assert (=> d!119029 m!924245))

(assert (=> d!119029 m!924071))

(declare-fun m!924247 () Bool)

(assert (=> b!997293 m!924247))

(assert (=> b!997295 m!924083))

(declare-fun m!924249 () Bool)

(assert (=> b!997295 m!924249))

(assert (=> b!997295 m!924249))

(assert (=> b!997295 m!924081))

(declare-fun m!924251 () Bool)

(assert (=> b!997295 m!924251))

(assert (=> b!997294 m!924247))

(assert (=> b!997291 m!924247))

(assert (=> b!997007 d!119029))

(declare-fun d!119031 () Bool)

(declare-fun lt!441399 () (_ BitVec 32))

(declare-fun lt!441398 () (_ BitVec 32))

(assert (=> d!119031 (= lt!441399 (bvmul (bvxor lt!441398 (bvlshr lt!441398 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119031 (= lt!441398 ((_ extract 31 0) (bvand (bvxor (select (arr!30359 a!3219) j!170) (bvlshr (select (arr!30359 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119031 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!667414 (let ((h!22326 ((_ extract 31 0) (bvand (bvxor (select (arr!30359 a!3219) j!170) (bvlshr (select (arr!30359 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!86999 (bvmul (bvxor h!22326 (bvlshr h!22326 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!86999 (bvlshr x!86999 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!667414 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!667414 #b00000000000000000000000000000000))))))

(assert (=> d!119031 (= (toIndex!0 (select (arr!30359 a!3219) j!170) mask!3464) (bvand (bvxor lt!441399 (bvlshr lt!441399 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!997007 d!119031))

(check-sat (not b!997063) (not b!997090) (not d!119029) (not bm!42241) (not b!997275) (not b!997295) (not b!997091) (not b!997062) (not b!997288) (not b!997060) (not d!119007) (not bm!42247) (not b!997152) (not d!118993))
