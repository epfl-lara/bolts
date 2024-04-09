; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49052 () Bool)

(assert start!49052)

(declare-fun b!540229 () Bool)

(declare-fun e!312963 () Bool)

(declare-datatypes ((array!34169 0))(
  ( (array!34170 (arr!16418 (Array (_ BitVec 32) (_ BitVec 64))) (size!16782 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34169)

(declare-fun index!1177 () (_ BitVec 32))

(assert (=> b!540229 (= e!312963 (and (not (= (select (arr!16418 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16418 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!540230 () Bool)

(declare-fun res!335435 () Bool)

(declare-fun e!312961 () Bool)

(assert (=> b!540230 (=> (not res!335435) (not e!312961))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!540230 (= res!335435 (validKeyInArray!0 (select (arr!16418 a!3154) j!147)))))

(declare-fun res!335426 () Bool)

(assert (=> start!49052 (=> (not res!335426) (not e!312961))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49052 (= res!335426 (validMask!0 mask!3216))))

(assert (=> start!49052 e!312961))

(assert (=> start!49052 true))

(declare-fun array_inv!12192 (array!34169) Bool)

(assert (=> start!49052 (array_inv!12192 a!3154)))

(declare-fun b!540231 () Bool)

(declare-fun res!335425 () Bool)

(declare-fun e!312962 () Bool)

(assert (=> b!540231 (=> (not res!335425) (not e!312962))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!540231 (= res!335425 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16782 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16782 a!3154)) (= (select (arr!16418 a!3154) resIndex!32) (select (arr!16418 a!3154) j!147))))))

(declare-fun b!540232 () Bool)

(assert (=> b!540232 (= e!312962 e!312963)))

(declare-fun res!335433 () Bool)

(assert (=> b!540232 (=> (not res!335433) (not e!312963))))

(declare-datatypes ((SeekEntryResult!4883 0))(
  ( (MissingZero!4883 (index!21756 (_ BitVec 32))) (Found!4883 (index!21757 (_ BitVec 32))) (Intermediate!4883 (undefined!5695 Bool) (index!21758 (_ BitVec 32)) (x!50691 (_ BitVec 32))) (Undefined!4883) (MissingVacant!4883 (index!21759 (_ BitVec 32))) )
))
(declare-fun lt!247336 () SeekEntryResult!4883)

(assert (=> b!540232 (= res!335433 (= lt!247336 (Intermediate!4883 false resIndex!32 resX!32)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34169 (_ BitVec 32)) SeekEntryResult!4883)

(assert (=> b!540232 (= lt!247336 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16418 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!540233 () Bool)

(declare-fun res!335434 () Bool)

(assert (=> b!540233 (=> (not res!335434) (not e!312962))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34169 (_ BitVec 32)) Bool)

(assert (=> b!540233 (= res!335434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!540234 () Bool)

(assert (=> b!540234 (= e!312961 e!312962)))

(declare-fun res!335432 () Bool)

(assert (=> b!540234 (=> (not res!335432) (not e!312962))))

(declare-fun lt!247337 () SeekEntryResult!4883)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!540234 (= res!335432 (or (= lt!247337 (MissingZero!4883 i!1153)) (= lt!247337 (MissingVacant!4883 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34169 (_ BitVec 32)) SeekEntryResult!4883)

(assert (=> b!540234 (= lt!247337 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!540235 () Bool)

(declare-fun res!335431 () Bool)

(assert (=> b!540235 (=> (not res!335431) (not e!312963))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!540235 (= res!335431 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16418 a!3154) j!147) mask!3216) (select (arr!16418 a!3154) j!147) a!3154 mask!3216) lt!247336))))

(declare-fun b!540236 () Bool)

(declare-fun res!335427 () Bool)

(assert (=> b!540236 (=> (not res!335427) (not e!312962))))

(declare-datatypes ((List!10590 0))(
  ( (Nil!10587) (Cons!10586 (h!11532 (_ BitVec 64)) (t!16826 List!10590)) )
))
(declare-fun arrayNoDuplicates!0 (array!34169 (_ BitVec 32) List!10590) Bool)

(assert (=> b!540236 (= res!335427 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10587))))

(declare-fun b!540237 () Bool)

(declare-fun res!335428 () Bool)

(assert (=> b!540237 (=> (not res!335428) (not e!312961))))

(assert (=> b!540237 (= res!335428 (validKeyInArray!0 k!1998))))

(declare-fun b!540238 () Bool)

(declare-fun res!335429 () Bool)

(assert (=> b!540238 (=> (not res!335429) (not e!312961))))

(assert (=> b!540238 (= res!335429 (and (= (size!16782 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16782 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16782 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!540239 () Bool)

(declare-fun res!335430 () Bool)

(assert (=> b!540239 (=> (not res!335430) (not e!312961))))

(declare-fun arrayContainsKey!0 (array!34169 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!540239 (= res!335430 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!49052 res!335426) b!540238))

(assert (= (and b!540238 res!335429) b!540230))

(assert (= (and b!540230 res!335435) b!540237))

(assert (= (and b!540237 res!335428) b!540239))

(assert (= (and b!540239 res!335430) b!540234))

(assert (= (and b!540234 res!335432) b!540233))

(assert (= (and b!540233 res!335434) b!540236))

(assert (= (and b!540236 res!335427) b!540231))

(assert (= (and b!540231 res!335425) b!540232))

(assert (= (and b!540232 res!335433) b!540235))

(assert (= (and b!540235 res!335431) b!540229))

(declare-fun m!519063 () Bool)

(assert (=> b!540231 m!519063))

(declare-fun m!519065 () Bool)

(assert (=> b!540231 m!519065))

(assert (=> b!540232 m!519065))

(assert (=> b!540232 m!519065))

(declare-fun m!519067 () Bool)

(assert (=> b!540232 m!519067))

(declare-fun m!519069 () Bool)

(assert (=> b!540234 m!519069))

(declare-fun m!519071 () Bool)

(assert (=> b!540233 m!519071))

(declare-fun m!519073 () Bool)

(assert (=> start!49052 m!519073))

(declare-fun m!519075 () Bool)

(assert (=> start!49052 m!519075))

(declare-fun m!519077 () Bool)

(assert (=> b!540229 m!519077))

(assert (=> b!540235 m!519065))

(assert (=> b!540235 m!519065))

(declare-fun m!519079 () Bool)

(assert (=> b!540235 m!519079))

(assert (=> b!540235 m!519079))

(assert (=> b!540235 m!519065))

(declare-fun m!519081 () Bool)

(assert (=> b!540235 m!519081))

(declare-fun m!519083 () Bool)

(assert (=> b!540239 m!519083))

(declare-fun m!519085 () Bool)

(assert (=> b!540236 m!519085))

(assert (=> b!540230 m!519065))

(assert (=> b!540230 m!519065))

(declare-fun m!519087 () Bool)

(assert (=> b!540230 m!519087))

(declare-fun m!519089 () Bool)

(assert (=> b!540237 m!519089))

(push 1)

(assert (not b!540237))

(assert (not b!540230))

(assert (not b!540234))

(assert (not b!540233))

(assert (not b!540235))

(assert (not b!540232))

(assert (not start!49052))

(assert (not b!540239))

(assert (not b!540236))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!540274 () Bool)

(declare-fun e!312989 () Bool)

(declare-fun e!312990 () Bool)

(assert (=> b!540274 (= e!312989 e!312990)))

(declare-fun c!62723 () Bool)

(assert (=> b!540274 (= c!62723 (validKeyInArray!0 (select (arr!16418 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!540275 () Bool)

(declare-fun e!312992 () Bool)

(assert (=> b!540275 (= e!312992 e!312989)))

(declare-fun res!335455 () Bool)

(assert (=> b!540275 (=> (not res!335455) (not e!312989))))

(declare-fun e!312991 () Bool)

(assert (=> b!540275 (= res!335455 (not e!312991))))

(declare-fun res!335454 () Bool)

(assert (=> b!540275 (=> (not res!335454) (not e!312991))))

(assert (=> b!540275 (= res!335454 (validKeyInArray!0 (select (arr!16418 a!3154) #b00000000000000000000000000000000)))))

(declare-fun bm!32012 () Bool)

(declare-fun call!32015 () Bool)

(assert (=> bm!32012 (= call!32015 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!62723 (Cons!10586 (select (arr!16418 a!3154) #b00000000000000000000000000000000) Nil!10587) Nil!10587)))))

(declare-fun b!540276 () Bool)

(assert (=> b!540276 (= e!312990 call!32015)))

(declare-fun d!81555 () Bool)

(declare-fun res!335456 () Bool)

(assert (=> d!81555 (=> res!335456 e!312992)))

(assert (=> d!81555 (= res!335456 (bvsge #b00000000000000000000000000000000 (size!16782 a!3154)))))

(assert (=> d!81555 (= (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10587) e!312992)))

(declare-fun b!540277 () Bool)

(assert (=> b!540277 (= e!312990 call!32015)))

(declare-fun b!540278 () Bool)

(declare-fun contains!2802 (List!10590 (_ BitVec 64)) Bool)

(assert (=> b!540278 (= e!312991 (contains!2802 Nil!10587 (select (arr!16418 a!3154) #b00000000000000000000000000000000)))))

(assert (= (and d!81555 (not res!335456)) b!540275))

(assert (= (and b!540275 res!335454) b!540278))

(assert (= (and b!540275 res!335455) b!540274))

(assert (= (and b!540274 c!62723) b!540276))

(assert (= (and b!540274 (not c!62723)) b!540277))

(assert (= (or b!540276 b!540277) bm!32012))

(declare-fun m!519095 () Bool)

(assert (=> b!540274 m!519095))

(assert (=> b!540274 m!519095))

(declare-fun m!519097 () Bool)

(assert (=> b!540274 m!519097))

(assert (=> b!540275 m!519095))

(assert (=> b!540275 m!519095))

(assert (=> b!540275 m!519097))

(assert (=> bm!32012 m!519095))

(declare-fun m!519099 () Bool)

(assert (=> bm!32012 m!519099))

(assert (=> b!540278 m!519095))

(assert (=> b!540278 m!519095))

(declare-fun m!519101 () Bool)

(assert (=> b!540278 m!519101))

(assert (=> b!540236 d!81555))

(declare-fun d!81563 () Bool)

(assert (=> d!81563 (= (validKeyInArray!0 k!1998) (and (not (= k!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!540237 d!81563))

(declare-fun e!313035 () SeekEntryResult!4883)

(declare-fun b!540345 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!540345 (= e!313035 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (arr!16418 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!540346 () Bool)

(assert (=> b!540346 (= e!313035 (Intermediate!4883 false index!1177 x!1030))))

(declare-fun b!540347 () Bool)

(declare-fun e!313032 () Bool)

(declare-fun e!313034 () Bool)

(assert (=> b!540347 (= e!313032 e!313034)))

(declare-fun res!335485 () Bool)

(declare-fun lt!247376 () SeekEntryResult!4883)

(assert (=> b!540347 (= res!335485 (and (is-Intermediate!4883 lt!247376) (not (undefined!5695 lt!247376)) (bvslt (x!50691 lt!247376) #b01111111111111111111111111111110) (bvsge (x!50691 lt!247376) #b00000000000000000000000000000000) (bvsge (x!50691 lt!247376) x!1030)))))

(assert (=> b!540347 (=> (not res!335485) (not e!313034))))

(declare-fun b!540348 () Bool)

(assert (=> b!540348 (and (bvsge (index!21758 lt!247376) #b00000000000000000000000000000000) (bvslt (index!21758 lt!247376) (size!16782 a!3154)))))

(declare-fun res!335484 () Bool)

(assert (=> b!540348 (= res!335484 (= (select (arr!16418 a!3154) (index!21758 lt!247376)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!313033 () Bool)

(assert (=> b!540348 (=> res!335484 e!313033)))

(declare-fun d!81565 () Bool)

(assert (=> d!81565 e!313032))

(declare-fun c!62747 () Bool)

(assert (=> d!81565 (= c!62747 (and (is-Intermediate!4883 lt!247376) (undefined!5695 lt!247376)))))

(declare-fun e!313036 () SeekEntryResult!4883)

(assert (=> d!81565 (= lt!247376 e!313036)))

(declare-fun c!62746 () Bool)

(assert (=> d!81565 (= c!62746 (bvsge x!1030 #b01111111111111111111111111111110))))

(declare-fun lt!247375 () (_ BitVec 64))

(assert (=> d!81565 (= lt!247375 (select (arr!16418 a!3154) index!1177))))

(assert (=> d!81565 (validMask!0 mask!3216)))

(assert (=> d!81565 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16418 a!3154) j!147) a!3154 mask!3216) lt!247376)))

(declare-fun b!540349 () Bool)

(assert (=> b!540349 (= e!313036 e!313035)))

(declare-fun c!62745 () Bool)

(assert (=> b!540349 (= c!62745 (or (= lt!247375 (select (arr!16418 a!3154) j!147)) (= (bvadd lt!247375 lt!247375) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!540350 () Bool)

(assert (=> b!540350 (and (bvsge (index!21758 lt!247376) #b00000000000000000000000000000000) (bvslt (index!21758 lt!247376) (size!16782 a!3154)))))

(declare-fun res!335483 () Bool)

(assert (=> b!540350 (= res!335483 (= (select (arr!16418 a!3154) (index!21758 lt!247376)) (select (arr!16418 a!3154) j!147)))))

(assert (=> b!540350 (=> res!335483 e!313033)))

(assert (=> b!540350 (= e!313034 e!313033)))

(declare-fun b!540351 () Bool)

(assert (=> b!540351 (= e!313036 (Intermediate!4883 true index!1177 x!1030))))

(declare-fun b!540352 () Bool)

(assert (=> b!540352 (= e!313032 (bvsge (x!50691 lt!247376) #b01111111111111111111111111111110))))

(declare-fun b!540353 () Bool)

(assert (=> b!540353 (and (bvsge (index!21758 lt!247376) #b00000000000000000000000000000000) (bvslt (index!21758 lt!247376) (size!16782 a!3154)))))

(assert (=> b!540353 (= e!313033 (= (select (arr!16418 a!3154) (index!21758 lt!247376)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!81565 c!62746) b!540351))

(assert (= (and d!81565 (not c!62746)) b!540349))

(assert (= (and b!540349 c!62745) b!540346))

(assert (= (and b!540349 (not c!62745)) b!540345))

(assert (= (and d!81565 c!62747) b!540352))

(assert (= (and d!81565 (not c!62747)) b!540347))

(assert (= (and b!540347 res!335485) b!540350))

(assert (= (and b!540350 (not res!335483)) b!540348))

(assert (= (and b!540348 (not res!335484)) b!540353))

(declare-fun m!519129 () Bool)

(assert (=> b!540353 m!519129))

(assert (=> b!540350 m!519129))

(assert (=> d!81565 m!519077))

(assert (=> d!81565 m!519073))

(assert (=> b!540348 m!519129))

(declare-fun m!519131 () Bool)

(assert (=> b!540345 m!519131))

(assert (=> b!540345 m!519131))

(assert (=> b!540345 m!519065))

(declare-fun m!519133 () Bool)

(assert (=> b!540345 m!519133))

(assert (=> b!540232 d!81565))

(declare-fun b!540413 () Bool)

(declare-fun e!313081 () Bool)

(declare-fun call!32027 () Bool)

(assert (=> b!540413 (= e!313081 call!32027)))

(declare-fun b!540414 () Bool)

(declare-fun e!313082 () Bool)

(assert (=> b!540414 (= e!313082 e!313081)))

(declare-fun c!62762 () Bool)

(assert (=> b!540414 (= c!62762 (validKeyInArray!0 (select (arr!16418 a!3154) #b00000000000000000000000000000000)))))

(declare-fun bm!32024 () Bool)

(assert (=> bm!32024 (= call!32027 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(declare-fun d!81579 () Bool)

(declare-fun res!335518 () Bool)

(assert (=> d!81579 (=> res!335518 e!313082)))

(assert (=> d!81579 (= res!335518 (bvsge #b00000000000000000000000000000000 (size!16782 a!3154)))))

(assert (=> d!81579 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!313082)))

(declare-fun b!540415 () Bool)

(declare-fun e!313080 () Bool)

(assert (=> b!540415 (= e!313081 e!313080)))

(declare-fun lt!247398 () (_ BitVec 64))

(assert (=> b!540415 (= lt!247398 (select (arr!16418 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16866 0))(
  ( (Unit!16867) )
))
(declare-fun lt!247397 () Unit!16866)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34169 (_ BitVec 64) (_ BitVec 32)) Unit!16866)

(assert (=> b!540415 (= lt!247397 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!247398 #b00000000000000000000000000000000))))

(assert (=> b!540415 (arrayContainsKey!0 a!3154 lt!247398 #b00000000000000000000000000000000)))

(declare-fun lt!247396 () Unit!16866)

(assert (=> b!540415 (= lt!247396 lt!247397)))

(declare-fun res!335517 () Bool)

(assert (=> b!540415 (= res!335517 (= (seekEntryOrOpen!0 (select (arr!16418 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4883 #b00000000000000000000000000000000)))))

(assert (=> b!540415 (=> (not res!335517) (not e!313080))))

(declare-fun b!540416 () Bool)

(assert (=> b!540416 (= e!313080 call!32027)))

(assert (= (and d!81579 (not res!335518)) b!540414))

(assert (= (and b!540414 c!62762) b!540415))

(assert (= (and b!540414 (not c!62762)) b!540413))

(assert (= (and b!540415 res!335517) b!540416))

(assert (= (or b!540416 b!540413) bm!32024))

(assert (=> b!540414 m!519095))

(assert (=> b!540414 m!519095))

(assert (=> b!540414 m!519097))

(declare-fun m!519165 () Bool)

(assert (=> bm!32024 m!519165))

(assert (=> b!540415 m!519095))

(declare-fun m!519167 () Bool)

(assert (=> b!540415 m!519167))

(declare-fun m!519169 () Bool)

(assert (=> b!540415 m!519169))

(assert (=> b!540415 m!519095))

(declare-fun m!519171 () Bool)

(assert (=> b!540415 m!519171))

(assert (=> b!540233 d!81579))

(declare-fun d!81597 () Bool)

(declare-fun res!335523 () Bool)

(declare-fun e!313087 () Bool)

(assert (=> d!81597 (=> res!335523 e!313087)))

(assert (=> d!81597 (= res!335523 (= (select (arr!16418 a!3154) #b00000000000000000000000000000000) k!1998))))

(assert (=> d!81597 (= (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000) e!313087)))

(declare-fun b!540421 () Bool)

(declare-fun e!313088 () Bool)

(assert (=> b!540421 (= e!313087 e!313088)))

(declare-fun res!335524 () Bool)

(assert (=> b!540421 (=> (not res!335524) (not e!313088))))

(assert (=> b!540421 (= res!335524 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16782 a!3154)))))

(declare-fun b!540422 () Bool)

(assert (=> b!540422 (= e!313088 (arrayContainsKey!0 a!3154 k!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81597 (not res!335523)) b!540421))

(assert (= (and b!540421 res!335524) b!540422))

(assert (=> d!81597 m!519095))

(declare-fun m!519173 () Bool)

(assert (=> b!540422 m!519173))

(assert (=> b!540239 d!81597))

(declare-fun b!540471 () Bool)

(declare-fun c!62788 () Bool)

(declare-fun lt!247425 () (_ BitVec 64))

(assert (=> b!540471 (= c!62788 (= lt!247425 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!313114 () SeekEntryResult!4883)

(declare-fun e!313113 () SeekEntryResult!4883)

(assert (=> b!540471 (= e!313114 e!313113)))

(declare-fun lt!247424 () SeekEntryResult!4883)

(declare-fun b!540472 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34169 (_ BitVec 32)) SeekEntryResult!4883)

(assert (=> b!540472 (= e!313113 (seekKeyOrZeroReturnVacant!0 (x!50691 lt!247424) (index!21758 lt!247424) (index!21758 lt!247424) k!1998 a!3154 mask!3216))))

(declare-fun b!540473 () Bool)

(assert (=> b!540473 (= e!313113 (MissingZero!4883 (index!21758 lt!247424)))))

(declare-fun b!540474 () Bool)

(declare-fun e!313115 () SeekEntryResult!4883)

(assert (=> b!540474 (= e!313115 e!313114)))

(assert (=> b!540474 (= lt!247425 (select (arr!16418 a!3154) (index!21758 lt!247424)))))

(declare-fun c!62789 () Bool)

(assert (=> b!540474 (= c!62789 (= lt!247425 k!1998))))

(declare-fun d!81599 () Bool)

(declare-fun lt!247423 () SeekEntryResult!4883)

(assert (=> d!81599 (and (or (is-Undefined!4883 lt!247423) (not (is-Found!4883 lt!247423)) (and (bvsge (index!21757 lt!247423) #b00000000000000000000000000000000) (bvslt (index!21757 lt!247423) (size!16782 a!3154)))) (or (is-Undefined!4883 lt!247423) (is-Found!4883 lt!247423) (not (is-MissingZero!4883 lt!247423)) (and (bvsge (index!21756 lt!247423) #b00000000000000000000000000000000) (bvslt (index!21756 lt!247423) (size!16782 a!3154)))) (or (is-Undefined!4883 lt!247423) (is-Found!4883 lt!247423) (is-MissingZero!4883 lt!247423) (not (is-MissingVacant!4883 lt!247423)) (and (bvsge (index!21759 lt!247423) #b00000000000000000000000000000000) (bvslt (index!21759 lt!247423) (size!16782 a!3154)))) (or (is-Undefined!4883 lt!247423) (ite (is-Found!4883 lt!247423) (= (select (arr!16418 a!3154) (index!21757 lt!247423)) k!1998) (ite (is-MissingZero!4883 lt!247423) (= (select (arr!16418 a!3154) (index!21756 lt!247423)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4883 lt!247423) (= (select (arr!16418 a!3154) (index!21759 lt!247423)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!81599 (= lt!247423 e!313115)))

(declare-fun c!62787 () Bool)

(assert (=> d!81599 (= c!62787 (and (is-Intermediate!4883 lt!247424) (undefined!5695 lt!247424)))))

(assert (=> d!81599 (= lt!247424 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1998 mask!3216) k!1998 a!3154 mask!3216))))

(assert (=> d!81599 (validMask!0 mask!3216)))

(assert (=> d!81599 (= (seekEntryOrOpen!0 k!1998 a!3154 mask!3216) lt!247423)))

(declare-fun b!540475 () Bool)

(assert (=> b!540475 (= e!313114 (Found!4883 (index!21758 lt!247424)))))

(declare-fun b!540476 () Bool)

(assert (=> b!540476 (= e!313115 Undefined!4883)))

(assert (= (and d!81599 c!62787) b!540476))

(assert (= (and d!81599 (not c!62787)) b!540474))

(assert (= (and b!540474 c!62789) b!540475))

(assert (= (and b!540474 (not c!62789)) b!540471))

(assert (= (and b!540471 c!62788) b!540473))

(assert (= (and b!540471 (not c!62788)) b!540472))

(declare-fun m!519203 () Bool)

(assert (=> b!540472 m!519203))

(declare-fun m!519205 () Bool)

(assert (=> b!540474 m!519205))

(declare-fun m!519207 () Bool)

(assert (=> d!81599 m!519207))

(declare-fun m!519209 () Bool)

(assert (=> d!81599 m!519209))

(declare-fun m!519211 () Bool)

(assert (=> d!81599 m!519211))

(declare-fun m!519213 () Bool)

(assert (=> d!81599 m!519213))

(assert (=> d!81599 m!519207))

(declare-fun m!519215 () Bool)

(assert (=> d!81599 m!519215))

(assert (=> d!81599 m!519073))

(assert (=> b!540234 d!81599))

(declare-fun b!540477 () Bool)

(declare-fun e!313119 () SeekEntryResult!4883)

(assert (=> b!540477 (= e!313119 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16418 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (select (arr!16418 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!540478 () Bool)

(assert (=> b!540478 (= e!313119 (Intermediate!4883 false (toIndex!0 (select (arr!16418 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!540479 () Bool)

(declare-fun e!313116 () Bool)

(declare-fun e!313118 () Bool)

(assert (=> b!540479 (= e!313116 e!313118)))

(declare-fun res!335527 () Bool)

(declare-fun lt!247427 () SeekEntryResult!4883)

(assert (=> b!540479 (= res!335527 (and (is-Intermediate!4883 lt!247427) (not (undefined!5695 lt!247427)) (bvslt (x!50691 lt!247427) #b01111111111111111111111111111110) (bvsge (x!50691 lt!247427) #b00000000000000000000000000000000) (bvsge (x!50691 lt!247427) #b00000000000000000000000000000000)))))

(assert (=> b!540479 (=> (not res!335527) (not e!313118))))

(declare-fun b!540480 () Bool)

(assert (=> b!540480 (and (bvsge (index!21758 lt!247427) #b00000000000000000000000000000000) (bvslt (index!21758 lt!247427) (size!16782 a!3154)))))

(declare-fun res!335526 () Bool)

(assert (=> b!540480 (= res!335526 (= (select (arr!16418 a!3154) (index!21758 lt!247427)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!313117 () Bool)

(assert (=> b!540480 (=> res!335526 e!313117)))

(declare-fun d!81607 () Bool)

(assert (=> d!81607 e!313116))

(declare-fun c!62792 () Bool)

(assert (=> d!81607 (= c!62792 (and (is-Intermediate!4883 lt!247427) (undefined!5695 lt!247427)))))

(declare-fun e!313120 () SeekEntryResult!4883)

(assert (=> d!81607 (= lt!247427 e!313120)))

(declare-fun c!62791 () Bool)

(assert (=> d!81607 (= c!62791 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!247426 () (_ BitVec 64))

