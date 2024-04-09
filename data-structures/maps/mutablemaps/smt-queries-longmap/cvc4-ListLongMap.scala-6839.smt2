; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86108 () Bool)

(assert start!86108)

(declare-fun b!997038 () Bool)

(declare-fun res!667311 () Bool)

(declare-fun e!562411 () Bool)

(assert (=> b!997038 (=> (not res!667311) (not e!562411))))

(declare-datatypes ((array!63065 0))(
  ( (array!63066 (arr!30360 (Array (_ BitVec 32) (_ BitVec 64))) (size!30863 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63065)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!997038 (= res!667311 (validKeyInArray!0 (select (arr!30360 a!3219) j!170)))))

(declare-fun b!997039 () Bool)

(declare-fun e!562410 () Bool)

(declare-fun e!562412 () Bool)

(assert (=> b!997039 (= e!562410 e!562412)))

(declare-fun res!667310 () Bool)

(assert (=> b!997039 (=> (not res!667310) (not e!562412))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9292 0))(
  ( (MissingZero!9292 (index!39538 (_ BitVec 32))) (Found!9292 (index!39539 (_ BitVec 32))) (Intermediate!9292 (undefined!10104 Bool) (index!39540 (_ BitVec 32)) (x!86993 (_ BitVec 32))) (Undefined!9292) (MissingVacant!9292 (index!39541 (_ BitVec 32))) )
))
(declare-fun lt!441305 () SeekEntryResult!9292)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63065 (_ BitVec 32)) SeekEntryResult!9292)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!997039 (= res!667310 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30360 a!3219) j!170) mask!3464) (select (arr!30360 a!3219) j!170) a!3219 mask!3464) lt!441305))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!997039 (= lt!441305 (Intermediate!9292 false resIndex!38 resX!38))))

(declare-fun b!997040 () Bool)

(declare-fun res!667316 () Bool)

(assert (=> b!997040 (=> (not res!667316) (not e!562410))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63065 (_ BitVec 32)) Bool)

(assert (=> b!997040 (= res!667316 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!997041 () Bool)

(declare-fun res!667308 () Bool)

(assert (=> b!997041 (=> (not res!667308) (not e!562411))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!997041 (= res!667308 (and (= (size!30863 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30863 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30863 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!997042 () Bool)

(declare-fun res!667309 () Bool)

(assert (=> b!997042 (=> (not res!667309) (not e!562411))))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!997042 (= res!667309 (validKeyInArray!0 k!2224))))

(declare-fun b!997043 () Bool)

(declare-fun res!667317 () Bool)

(assert (=> b!997043 (=> (not res!667317) (not e!562410))))

(declare-datatypes ((List!21162 0))(
  ( (Nil!21159) (Cons!21158 (h!22323 (_ BitVec 64)) (t!30171 List!21162)) )
))
(declare-fun arrayNoDuplicates!0 (array!63065 (_ BitVec 32) List!21162) Bool)

(assert (=> b!997043 (= res!667317 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21159))))

(declare-fun b!997044 () Bool)

(declare-fun res!667318 () Bool)

(assert (=> b!997044 (=> (not res!667318) (not e!562410))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!997044 (= res!667318 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30863 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30863 a!3219))))))

(declare-fun b!997045 () Bool)

(declare-fun res!667312 () Bool)

(assert (=> b!997045 (=> (not res!667312) (not e!562411))))

(declare-fun arrayContainsKey!0 (array!63065 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!997045 (= res!667312 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!997046 () Bool)

(assert (=> b!997046 (= e!562411 e!562410)))

(declare-fun res!667314 () Bool)

(assert (=> b!997046 (=> (not res!667314) (not e!562410))))

(declare-fun lt!441306 () SeekEntryResult!9292)

(assert (=> b!997046 (= res!667314 (or (= lt!441306 (MissingVacant!9292 i!1194)) (= lt!441306 (MissingZero!9292 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63065 (_ BitVec 32)) SeekEntryResult!9292)

(assert (=> b!997046 (= lt!441306 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!997047 () Bool)

(assert (=> b!997047 (= e!562412 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvsgt mask!3464 #b00111111111111111111111111111111)))))

(declare-fun b!997048 () Bool)

(declare-fun res!667313 () Bool)

(assert (=> b!997048 (=> (not res!667313) (not e!562412))))

(assert (=> b!997048 (= res!667313 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30360 a!3219) j!170) a!3219 mask!3464) lt!441305))))

(declare-fun res!667315 () Bool)

(assert (=> start!86108 (=> (not res!667315) (not e!562411))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86108 (= res!667315 (validMask!0 mask!3464))))

(assert (=> start!86108 e!562411))

(declare-fun array_inv!23350 (array!63065) Bool)

(assert (=> start!86108 (array_inv!23350 a!3219)))

(assert (=> start!86108 true))

(assert (= (and start!86108 res!667315) b!997041))

(assert (= (and b!997041 res!667308) b!997038))

(assert (= (and b!997038 res!667311) b!997042))

(assert (= (and b!997042 res!667309) b!997045))

(assert (= (and b!997045 res!667312) b!997046))

(assert (= (and b!997046 res!667314) b!997040))

(assert (= (and b!997040 res!667316) b!997043))

(assert (= (and b!997043 res!667317) b!997044))

(assert (= (and b!997044 res!667318) b!997039))

(assert (= (and b!997039 res!667310) b!997048))

(assert (= (and b!997048 res!667313) b!997047))

(declare-fun m!924093 () Bool)

(assert (=> b!997039 m!924093))

(assert (=> b!997039 m!924093))

(declare-fun m!924095 () Bool)

(assert (=> b!997039 m!924095))

(assert (=> b!997039 m!924095))

(assert (=> b!997039 m!924093))

(declare-fun m!924097 () Bool)

(assert (=> b!997039 m!924097))

(declare-fun m!924099 () Bool)

(assert (=> b!997042 m!924099))

(assert (=> b!997048 m!924093))

(assert (=> b!997048 m!924093))

(declare-fun m!924101 () Bool)

(assert (=> b!997048 m!924101))

(assert (=> b!997038 m!924093))

(assert (=> b!997038 m!924093))

(declare-fun m!924103 () Bool)

(assert (=> b!997038 m!924103))

(declare-fun m!924105 () Bool)

(assert (=> b!997045 m!924105))

(declare-fun m!924107 () Bool)

(assert (=> start!86108 m!924107))

(declare-fun m!924109 () Bool)

(assert (=> start!86108 m!924109))

(declare-fun m!924111 () Bool)

(assert (=> b!997040 m!924111))

(declare-fun m!924113 () Bool)

(assert (=> b!997046 m!924113))

(declare-fun m!924115 () Bool)

(assert (=> b!997043 m!924115))

(push 1)

(assert (not b!997046))

(assert (not b!997040))

(assert (not b!997043))

(assert (not b!997039))

(assert (not b!997045))

(assert (not b!997038))

(assert (not b!997042))

(assert (not b!997048))

(assert (not start!86108))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118979 () Bool)

(declare-fun res!667332 () Bool)

(declare-fun e!562433 () Bool)

(assert (=> d!118979 (=> res!667332 e!562433)))

(assert (=> d!118979 (= res!667332 (bvsge #b00000000000000000000000000000000 (size!30863 a!3219)))))

(assert (=> d!118979 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!562433)))

(declare-fun b!997072 () Bool)

(declare-fun e!562432 () Bool)

(declare-fun e!562431 () Bool)

(assert (=> b!997072 (= e!562432 e!562431)))

(declare-fun lt!441314 () (_ BitVec 64))

(assert (=> b!997072 (= lt!441314 (select (arr!30360 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32920 0))(
  ( (Unit!32921) )
))
(declare-fun lt!441315 () Unit!32920)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63065 (_ BitVec 64) (_ BitVec 32)) Unit!32920)

(assert (=> b!997072 (= lt!441315 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!441314 #b00000000000000000000000000000000))))

(assert (=> b!997072 (arrayContainsKey!0 a!3219 lt!441314 #b00000000000000000000000000000000)))

(declare-fun lt!441313 () Unit!32920)

(assert (=> b!997072 (= lt!441313 lt!441315)))

(declare-fun res!667333 () Bool)

(assert (=> b!997072 (= res!667333 (= (seekEntryOrOpen!0 (select (arr!30360 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9292 #b00000000000000000000000000000000)))))

(assert (=> b!997072 (=> (not res!667333) (not e!562431))))

(declare-fun bm!42244 () Bool)

(declare-fun call!42247 () Bool)

(assert (=> bm!42244 (= call!42247 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun b!997073 () Bool)

(assert (=> b!997073 (= e!562432 call!42247)))

(declare-fun b!997074 () Bool)

(assert (=> b!997074 (= e!562431 call!42247)))

(declare-fun b!997075 () Bool)

(assert (=> b!997075 (= e!562433 e!562432)))

(declare-fun c!101013 () Bool)

(assert (=> b!997075 (= c!101013 (validKeyInArray!0 (select (arr!30360 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!118979 (not res!667332)) b!997075))

(assert (= (and b!997075 c!101013) b!997072))

(assert (= (and b!997075 (not c!101013)) b!997073))

(assert (= (and b!997072 res!667333) b!997074))

(assert (= (or b!997074 b!997073) bm!42244))

(declare-fun m!924125 () Bool)

(assert (=> b!997072 m!924125))

(declare-fun m!924127 () Bool)

(assert (=> b!997072 m!924127))

(declare-fun m!924129 () Bool)

(assert (=> b!997072 m!924129))

(assert (=> b!997072 m!924125))

(declare-fun m!924131 () Bool)

(assert (=> b!997072 m!924131))

(declare-fun m!924133 () Bool)

(assert (=> bm!42244 m!924133))

(assert (=> b!997075 m!924125))

(assert (=> b!997075 m!924125))

(declare-fun m!924135 () Bool)

(assert (=> b!997075 m!924135))

(assert (=> b!997040 d!118979))

(declare-fun d!118989 () Bool)

(declare-fun res!667338 () Bool)

(declare-fun e!562438 () Bool)

(assert (=> d!118989 (=> res!667338 e!562438)))

(assert (=> d!118989 (= res!667338 (= (select (arr!30360 a!3219) #b00000000000000000000000000000000) k!2224))))

(assert (=> d!118989 (= (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000) e!562438)))

(declare-fun b!997080 () Bool)

(declare-fun e!562439 () Bool)

(assert (=> b!997080 (= e!562438 e!562439)))

(declare-fun res!667339 () Bool)

(assert (=> b!997080 (=> (not res!667339) (not e!562439))))

(assert (=> b!997080 (= res!667339 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30863 a!3219)))))

(declare-fun b!997081 () Bool)

(assert (=> b!997081 (= e!562439 (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!118989 (not res!667338)) b!997080))

(assert (= (and b!997080 res!667339) b!997081))

(assert (=> d!118989 m!924125))

(declare-fun m!924137 () Bool)

(assert (=> b!997081 m!924137))

(assert (=> b!997045 d!118989))

(declare-fun b!997124 () Bool)

(declare-fun c!101030 () Bool)

(declare-fun lt!441336 () (_ BitVec 64))

(assert (=> b!997124 (= c!101030 (= lt!441336 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!562465 () SeekEntryResult!9292)

(declare-fun e!562466 () SeekEntryResult!9292)

(assert (=> b!997124 (= e!562465 e!562466)))

(declare-fun b!997125 () Bool)

(declare-fun e!562467 () SeekEntryResult!9292)

(assert (=> b!997125 (= e!562467 e!562465)))

(declare-fun lt!441335 () SeekEntryResult!9292)

(assert (=> b!997125 (= lt!441336 (select (arr!30360 a!3219) (index!39540 lt!441335)))))

(declare-fun c!101029 () Bool)

(assert (=> b!997125 (= c!101029 (= lt!441336 k!2224))))

(declare-fun d!118991 () Bool)

(declare-fun lt!441337 () SeekEntryResult!9292)

(assert (=> d!118991 (and (or (is-Undefined!9292 lt!441337) (not (is-Found!9292 lt!441337)) (and (bvsge (index!39539 lt!441337) #b00000000000000000000000000000000) (bvslt (index!39539 lt!441337) (size!30863 a!3219)))) (or (is-Undefined!9292 lt!441337) (is-Found!9292 lt!441337) (not (is-MissingZero!9292 lt!441337)) (and (bvsge (index!39538 lt!441337) #b00000000000000000000000000000000) (bvslt (index!39538 lt!441337) (size!30863 a!3219)))) (or (is-Undefined!9292 lt!441337) (is-Found!9292 lt!441337) (is-MissingZero!9292 lt!441337) (not (is-MissingVacant!9292 lt!441337)) (and (bvsge (index!39541 lt!441337) #b00000000000000000000000000000000) (bvslt (index!39541 lt!441337) (size!30863 a!3219)))) (or (is-Undefined!9292 lt!441337) (ite (is-Found!9292 lt!441337) (= (select (arr!30360 a!3219) (index!39539 lt!441337)) k!2224) (ite (is-MissingZero!9292 lt!441337) (= (select (arr!30360 a!3219) (index!39538 lt!441337)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9292 lt!441337) (= (select (arr!30360 a!3219) (index!39541 lt!441337)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!118991 (= lt!441337 e!562467)))

(declare-fun c!101031 () Bool)

(assert (=> d!118991 (= c!101031 (and (is-Intermediate!9292 lt!441335) (undefined!10104 lt!441335)))))

(assert (=> d!118991 (= lt!441335 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2224 mask!3464) k!2224 a!3219 mask!3464))))

(assert (=> d!118991 (validMask!0 mask!3464)))

(assert (=> d!118991 (= (seekEntryOrOpen!0 k!2224 a!3219 mask!3464) lt!441337)))

(declare-fun b!997126 () Bool)

(assert (=> b!997126 (= e!562467 Undefined!9292)))

(declare-fun b!997127 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63065 (_ BitVec 32)) SeekEntryResult!9292)

(assert (=> b!997127 (= e!562466 (seekKeyOrZeroReturnVacant!0 (x!86993 lt!441335) (index!39540 lt!441335) (index!39540 lt!441335) k!2224 a!3219 mask!3464))))

(declare-fun b!997128 () Bool)

(assert (=> b!997128 (= e!562465 (Found!9292 (index!39540 lt!441335)))))

(declare-fun b!997129 () Bool)

(assert (=> b!997129 (= e!562466 (MissingZero!9292 (index!39540 lt!441335)))))

(assert (= (and d!118991 c!101031) b!997126))

(assert (= (and d!118991 (not c!101031)) b!997125))

(assert (= (and b!997125 c!101029) b!997128))

(assert (= (and b!997125 (not c!101029)) b!997124))

(assert (= (and b!997124 c!101030) b!997129))

(assert (= (and b!997124 (not c!101030)) b!997127))

(declare-fun m!924147 () Bool)

(assert (=> b!997125 m!924147))

(assert (=> d!118991 m!924107))

(declare-fun m!924149 () Bool)

(assert (=> d!118991 m!924149))

(declare-fun m!924151 () Bool)

(assert (=> d!118991 m!924151))

(assert (=> d!118991 m!924149))

(declare-fun m!924153 () Bool)

(assert (=> d!118991 m!924153))

(declare-fun m!924155 () Bool)

(assert (=> d!118991 m!924155))

(declare-fun m!924157 () Bool)

(assert (=> d!118991 m!924157))

(declare-fun m!924159 () Bool)

(assert (=> b!997127 m!924159))

(assert (=> b!997046 d!118991))

(declare-fun d!118995 () Bool)

(assert (=> d!118995 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!86108 d!118995))

(declare-fun d!119001 () Bool)

(assert (=> d!119001 (= (array_inv!23350 a!3219) (bvsge (size!30863 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!86108 d!119001))

(declare-fun b!997175 () Bool)

(declare-fun lt!441360 () SeekEntryResult!9292)

(assert (=> b!997175 (and (bvsge (index!39540 lt!441360) #b00000000000000000000000000000000) (bvslt (index!39540 lt!441360) (size!30863 a!3219)))))

(declare-fun e!562496 () Bool)

(assert (=> b!997175 (= e!562496 (= (select (arr!30360 a!3219) (index!39540 lt!441360)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!562495 () SeekEntryResult!9292)

(declare-fun b!997176 () Bool)

(assert (=> b!997176 (= e!562495 (Intermediate!9292 true (toIndex!0 (select (arr!30360 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun d!119003 () Bool)

(declare-fun e!562493 () Bool)

(assert (=> d!119003 e!562493))

(declare-fun c!101050 () Bool)

(assert (=> d!119003 (= c!101050 (and (is-Intermediate!9292 lt!441360) (undefined!10104 lt!441360)))))

(assert (=> d!119003 (= lt!441360 e!562495)))

(declare-fun c!101051 () Bool)

(assert (=> d!119003 (= c!101051 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!441359 () (_ BitVec 64))

(assert (=> d!119003 (= lt!441359 (select (arr!30360 a!3219) (toIndex!0 (select (arr!30360 a!3219) j!170) mask!3464)))))

(assert (=> d!119003 (validMask!0 mask!3464)))

(assert (=> d!119003 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30360 a!3219) j!170) mask!3464) (select (arr!30360 a!3219) j!170) a!3219 mask!3464) lt!441360)))

(declare-fun b!997177 () Bool)

(declare-fun e!562492 () Bool)

(assert (=> b!997177 (= e!562493 e!562492)))

(declare-fun res!667362 () Bool)

(assert (=> b!997177 (= res!667362 (and (is-Intermediate!9292 lt!441360) (not (undefined!10104 lt!441360)) (bvslt (x!86993 lt!441360) #b01111111111111111111111111111110) (bvsge (x!86993 lt!441360) #b00000000000000000000000000000000) (bvsge (x!86993 lt!441360) #b00000000000000000000000000000000)))))

(assert (=> b!997177 (=> (not res!667362) (not e!562492))))

(declare-fun b!997178 () Bool)

(declare-fun e!562494 () SeekEntryResult!9292)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!997178 (= e!562494 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30360 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30360 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!997179 () Bool)

(assert (=> b!997179 (= e!562494 (Intermediate!9292 false (toIndex!0 (select (arr!30360 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!997180 () Bool)

(assert (=> b!997180 (and (bvsge (index!39540 lt!441360) #b00000000000000000000000000000000) (bvslt (index!39540 lt!441360) (size!30863 a!3219)))))

(declare-fun res!667364 () Bool)

(assert (=> b!997180 (= res!667364 (= (select (arr!30360 a!3219) (index!39540 lt!441360)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!997180 (=> res!667364 e!562496)))

(declare-fun b!997181 () Bool)

(assert (=> b!997181 (and (bvsge (index!39540 lt!441360) #b00000000000000000000000000000000) (bvslt (index!39540 lt!441360) (size!30863 a!3219)))))

(declare-fun res!667363 () Bool)

(assert (=> b!997181 (= res!667363 (= (select (arr!30360 a!3219) (index!39540 lt!441360)) (select (arr!30360 a!3219) j!170)))))

(assert (=> b!997181 (=> res!667363 e!562496)))

(assert (=> b!997181 (= e!562492 e!562496)))

(declare-fun b!997182 () Bool)

(assert (=> b!997182 (= e!562493 (bvsge (x!86993 lt!441360) #b01111111111111111111111111111110))))

(declare-fun b!997183 () Bool)

(assert (=> b!997183 (= e!562495 e!562494)))

(declare-fun c!101052 () Bool)

(assert (=> b!997183 (= c!101052 (or (= lt!441359 (select (arr!30360 a!3219) j!170)) (= (bvadd lt!441359 lt!441359) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!119003 c!101051) b!997176))

(assert (= (and d!119003 (not c!101051)) b!997183))

(assert (= (and b!997183 c!101052) b!997179))

(assert (= (and b!997183 (not c!101052)) b!997178))

(assert (= (and d!119003 c!101050) b!997182))

(assert (= (and d!119003 (not c!101050)) b!997177))

(assert (= (and b!997177 res!667362) b!997181))

(assert (= (and b!997181 (not res!667363)) b!997180))

(assert (= (and b!997180 (not res!667364)) b!997175))

(declare-fun m!924183 () Bool)

(assert (=> b!997175 m!924183))

(assert (=> b!997181 m!924183))

(assert (=> d!119003 m!924095))

(declare-fun m!924185 () Bool)

(assert (=> d!119003 m!924185))

(assert (=> d!119003 m!924107))

(assert (=> b!997178 m!924095))

(declare-fun m!924187 () Bool)

(assert (=> b!997178 m!924187))

(assert (=> b!997178 m!924187))

(assert (=> b!997178 m!924093))

(declare-fun m!924189 () Bool)

(assert (=> b!997178 m!924189))

(assert (=> b!997180 m!924183))

(assert (=> b!997039 d!119003))

(declare-fun d!119009 () Bool)

(declare-fun lt!441372 () (_ BitVec 32))

(declare-fun lt!441371 () (_ BitVec 32))

(assert (=> d!119009 (= lt!441372 (bvmul (bvxor lt!441371 (bvlshr lt!441371 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119009 (= lt!441371 ((_ extract 31 0) (bvand (bvxor (select (arr!30360 a!3219) j!170) (bvlshr (select (arr!30360 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119009 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!667365 (let ((h!22325 ((_ extract 31 0) (bvand (bvxor (select (arr!30360 a!3219) j!170) (bvlshr (select (arr!30360 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!86997 (bvmul (bvxor h!22325 (bvlshr h!22325 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!86997 (bvlshr x!86997 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!667365 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!667365 #b00000000000000000000000000000000))))))

(assert (=> d!119009 (= (toIndex!0 (select (arr!30360 a!3219) j!170) mask!3464) (bvand (bvxor lt!441372 (bvlshr lt!441372 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!997039 d!119009))

(declare-fun b!997196 () Bool)

(declare-fun lt!441374 () SeekEntryResult!9292)

(assert (=> b!997196 (and (bvsge (index!39540 lt!441374) #b00000000000000000000000000000000) (bvslt (index!39540 lt!441374) (size!30863 a!3219)))))

(declare-fun e!562507 () Bool)

(assert (=> b!997196 (= e!562507 (= (select (arr!30360 a!3219) (index!39540 lt!441374)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!997197 () Bool)

(declare-fun e!562506 () SeekEntryResult!9292)

(assert (=> b!997197 (= e!562506 (Intermediate!9292 true index!1507 x!1245))))

(declare-fun d!119011 () Bool)

(declare-fun e!562504 () Bool)

(assert (=> d!119011 e!562504))

(declare-fun c!101059 () Bool)

(assert (=> d!119011 (= c!101059 (and (is-Intermediate!9292 lt!441374) (undefined!10104 lt!441374)))))

(assert (=> d!119011 (= lt!441374 e!562506)))

(declare-fun c!101060 () Bool)

(assert (=> d!119011 (= c!101060 (bvsge x!1245 #b01111111111111111111111111111110))))

(declare-fun lt!441373 () (_ BitVec 64))

(assert (=> d!119011 (= lt!441373 (select (arr!30360 a!3219) index!1507))))

(assert (=> d!119011 (validMask!0 mask!3464)))

(assert (=> d!119011 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30360 a!3219) j!170) a!3219 mask!3464) lt!441374)))

(declare-fun b!997198 () Bool)

(declare-fun e!562503 () Bool)

(assert (=> b!997198 (= e!562504 e!562503)))

(declare-fun res!667366 () Bool)

(assert (=> b!997198 (= res!667366 (and (is-Intermediate!9292 lt!441374) (not (undefined!10104 lt!441374)) (bvslt (x!86993 lt!441374) #b01111111111111111111111111111110) (bvsge (x!86993 lt!441374) #b00000000000000000000000000000000) (bvsge (x!86993 lt!441374) x!1245)))))

(assert (=> b!997198 (=> (not res!667366) (not e!562503))))

(declare-fun e!562505 () SeekEntryResult!9292)

(declare-fun b!997199 () Bool)

(assert (=> b!997199 (= e!562505 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30360 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!997200 () Bool)

(assert (=> b!997200 (= e!562505 (Intermediate!9292 false index!1507 x!1245))))

(declare-fun b!997201 () Bool)

(assert (=> b!997201 (and (bvsge (index!39540 lt!441374) #b00000000000000000000000000000000) (bvslt (index!39540 lt!441374) (size!30863 a!3219)))))

(declare-fun res!667368 () Bool)

(assert (=> b!997201 (= res!667368 (= (select (arr!30360 a!3219) (index!39540 lt!441374)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!997201 (=> res!667368 e!562507)))

(declare-fun b!997202 () Bool)

(assert (=> b!997202 (and (bvsge (index!39540 lt!441374) #b00000000000000000000000000000000) (bvslt (index!39540 lt!441374) (size!30863 a!3219)))))

(declare-fun res!667367 () Bool)

(assert (=> b!997202 (= res!667367 (= (select (arr!30360 a!3219) (index!39540 lt!441374)) (select (arr!30360 a!3219) j!170)))))

(assert (=> b!997202 (=> res!667367 e!562507)))

(assert (=> b!997202 (= e!562503 e!562507)))

(declare-fun b!997203 () Bool)

(assert (=> b!997203 (= e!562504 (bvsge (x!86993 lt!441374) #b01111111111111111111111111111110))))

(declare-fun b!997204 () Bool)

(assert (=> b!997204 (= e!562506 e!562505)))

(declare-fun c!101061 () Bool)

(assert (=> b!997204 (= c!101061 (or (= lt!441373 (select (arr!30360 a!3219) j!170)) (= (bvadd lt!441373 lt!441373) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!119011 c!101060) b!997197))

(assert (= (and d!119011 (not c!101060)) b!997204))

(assert (= (and b!997204 c!101061) b!997200))

(assert (= (and b!997204 (not c!101061)) b!997199))

(assert (= (and d!119011 c!101059) b!997203))

(assert (= (and d!119011 (not c!101059)) b!997198))

(assert (= (and b!997198 res!667366) b!997202))

(assert (= (and b!997202 (not res!667367)) b!997201))

(assert (= (and b!997201 (not res!667368)) b!997196))

(declare-fun m!924191 () Bool)

(assert (=> b!997196 m!924191))

(assert (=> b!997202 m!924191))

(declare-fun m!924193 () Bool)

(assert (=> d!119011 m!924193))

(assert (=> d!119011 m!924107))

(declare-fun m!924195 () Bool)

(assert (=> b!997199 m!924195))

(assert (=> b!997199 m!924195))

(assert (=> b!997199 m!924093))

(declare-fun m!924197 () Bool)

(assert (=> b!997199 m!924197))

(assert (=> b!997201 m!924191))

(assert (=> b!997048 d!119011))

(declare-fun d!119013 () Bool)

(assert (=> d!119013 (= (validKeyInArray!0 (select (arr!30360 a!3219) j!170)) (and (not (= (select (arr!30360 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30360 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!997038 d!119013))

(declare-fun b!997230 () Bool)

(declare-fun e!562526 () Bool)

(declare-fun contains!5877 (List!21162 (_ BitVec 64)) Bool)

(assert (=> b!997230 (= e!562526 (contains!5877 Nil!21159 (select (arr!30360 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!997231 () Bool)

(declare-fun e!562525 () Bool)

(declare-fun call!42253 () Bool)

(assert (=> b!997231 (= e!562525 call!42253)))

(declare-fun d!119015 () Bool)

(declare-fun res!667378 () Bool)

(declare-fun e!562524 () Bool)

(assert (=> d!119015 (=> res!667378 e!562524)))

(assert (=> d!119015 (= res!667378 (bvsge #b00000000000000000000000000000000 (size!30863 a!3219)))))

(assert (=> d!119015 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21159) e!562524)))

(declare-fun b!997232 () Bool)

(declare-fun e!562527 () Bool)

(assert (=> b!997232 (= e!562527 e!562525)))

(declare-fun c!101070 () Bool)

(assert (=> b!997232 (= c!101070 (validKeyInArray!0 (select (arr!30360 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!997233 () Bool)

(assert (=> b!997233 (= e!562524 e!562527)))

(declare-fun res!667380 () Bool)

(assert (=> b!997233 (=> (not res!667380) (not e!562527))))

(assert (=> b!997233 (= res!667380 (not e!562526))))

(declare-fun res!667379 () Bool)

(assert (=> b!997233 (=> (not res!667379) (not e!562526))))

(assert (=> b!997233 (= res!667379 (validKeyInArray!0 (select (arr!30360 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!997234 () Bool)

(assert (=> b!997234 (= e!562525 call!42253)))

(declare-fun bm!42250 () Bool)

(assert (=> bm!42250 (= call!42253 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101070 (Cons!21158 (select (arr!30360 a!3219) #b00000000000000000000000000000000) Nil!21159) Nil!21159)))))

(assert (= (and d!119015 (not res!667378)) b!997233))

(assert (= (and b!997233 res!667379) b!997230))

(assert (= (and b!997233 res!667380) b!997232))

(assert (= (and b!997232 c!101070) b!997234))

(assert (= (and b!997232 (not c!101070)) b!997231))

(assert (= (or b!997234 b!997231) bm!42250))

(assert (=> b!997230 m!924125))

(assert (=> b!997230 m!924125))

(declare-fun m!924221 () Bool)

(assert (=> b!997230 m!924221))

(assert (=> b!997232 m!924125))

(assert (=> b!997232 m!924125))

(assert (=> b!997232 m!924135))

(assert (=> b!997233 m!924125))

(assert (=> b!997233 m!924125))

(assert (=> b!997233 m!924135))

(assert (=> bm!42250 m!924125))

(declare-fun m!924223 () Bool)

(assert (=> bm!42250 m!924223))

(assert (=> b!997043 d!119015))

(declare-fun d!119021 () Bool)

(assert (=> d!119021 (= (validKeyInArray!0 k!2224) (and (not (= k!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!997042 d!119021))

(push 1)

(assert (not b!997232))

(assert (not b!997127))

(assert (not b!997072))

(assert (not d!119011))

(assert (not b!997081))

(assert (not b!997075))

(assert (not bm!42244))

(assert (not bm!42250))

(assert (not b!997230))

(assert (not b!997199))

(assert (not b!997233))

(assert (not d!118991))

(assert (not b!997178))

(assert (not d!119003))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

