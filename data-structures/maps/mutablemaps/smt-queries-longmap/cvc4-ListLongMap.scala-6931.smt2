; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87242 () Bool)

(assert start!87242)

(declare-fun b!1011049 () Bool)

(declare-fun e!568816 () Bool)

(declare-fun e!568822 () Bool)

(assert (=> b!1011049 (= e!568816 e!568822)))

(declare-fun res!679334 () Bool)

(assert (=> b!1011049 (=> (not res!679334) (not e!568822))))

(declare-datatypes ((SeekEntryResult!9568 0))(
  ( (MissingZero!9568 (index!40642 (_ BitVec 32))) (Found!9568 (index!40643 (_ BitVec 32))) (Intermediate!9568 (undefined!10380 Bool) (index!40644 (_ BitVec 32)) (x!88080 (_ BitVec 32))) (Undefined!9568) (MissingVacant!9568 (index!40645 (_ BitVec 32))) )
))
(declare-fun lt!446869 () SeekEntryResult!9568)

(declare-fun lt!446867 () SeekEntryResult!9568)

(assert (=> b!1011049 (= res!679334 (= lt!446869 lt!446867))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1011049 (= lt!446867 (Intermediate!9568 false resIndex!38 resX!38))))

(declare-datatypes ((array!63647 0))(
  ( (array!63648 (arr!30636 (Array (_ BitVec 32) (_ BitVec 64))) (size!31139 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63647)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63647 (_ BitVec 32)) SeekEntryResult!9568)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1011049 (= lt!446869 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30636 a!3219) j!170) mask!3464) (select (arr!30636 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011050 () Bool)

(declare-fun e!568823 () Bool)

(assert (=> b!1011050 (= e!568823 e!568816)))

(declare-fun res!679337 () Bool)

(assert (=> b!1011050 (=> (not res!679337) (not e!568816))))

(declare-fun lt!446871 () SeekEntryResult!9568)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1011050 (= res!679337 (or (= lt!446871 (MissingVacant!9568 i!1194)) (= lt!446871 (MissingZero!9568 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63647 (_ BitVec 32)) SeekEntryResult!9568)

(assert (=> b!1011050 (= lt!446871 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1011051 () Bool)

(declare-fun res!679344 () Bool)

(assert (=> b!1011051 (=> (not res!679344) (not e!568816))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63647 (_ BitVec 32)) Bool)

(assert (=> b!1011051 (= res!679344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1011052 () Bool)

(declare-fun res!679335 () Bool)

(assert (=> b!1011052 (=> (not res!679335) (not e!568823))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1011052 (= res!679335 (validKeyInArray!0 k!2224))))

(declare-fun b!1011053 () Bool)

(declare-fun e!568821 () Bool)

(assert (=> b!1011053 (= e!568822 e!568821)))

(declare-fun res!679333 () Bool)

(assert (=> b!1011053 (=> (not res!679333) (not e!568821))))

(declare-fun lt!446870 () SeekEntryResult!9568)

(assert (=> b!1011053 (= res!679333 (= lt!446870 lt!446867))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1011053 (= lt!446870 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30636 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011054 () Bool)

(declare-fun e!568817 () Bool)

(assert (=> b!1011054 (= e!568821 e!568817)))

(declare-fun res!679332 () Bool)

(assert (=> b!1011054 (=> (not res!679332) (not e!568817))))

(declare-fun lt!446874 () array!63647)

(declare-fun lt!446868 () (_ BitVec 64))

(assert (=> b!1011054 (= res!679332 (not (= lt!446869 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446868 mask!3464) lt!446868 lt!446874 mask!3464))))))

(assert (=> b!1011054 (= lt!446868 (select (store (arr!30636 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1011054 (= lt!446874 (array!63648 (store (arr!30636 a!3219) i!1194 k!2224) (size!31139 a!3219)))))

(declare-fun b!1011055 () Bool)

(declare-fun e!568820 () Bool)

(assert (=> b!1011055 (= e!568817 e!568820)))

(declare-fun res!679338 () Bool)

(assert (=> b!1011055 (=> (not res!679338) (not e!568820))))

(declare-fun lt!446872 () (_ BitVec 32))

(assert (=> b!1011055 (= res!679338 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!446872 #b00000000000000000000000000000000) (bvslt lt!446872 (size!31139 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1011055 (= lt!446872 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1011056 () Bool)

(declare-fun res!679345 () Bool)

(assert (=> b!1011056 (=> (not res!679345) (not e!568816))))

(declare-datatypes ((List!21438 0))(
  ( (Nil!21435) (Cons!21434 (h!22629 (_ BitVec 64)) (t!30447 List!21438)) )
))
(declare-fun arrayNoDuplicates!0 (array!63647 (_ BitVec 32) List!21438) Bool)

(assert (=> b!1011056 (= res!679345 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21435))))

(declare-fun b!1011057 () Bool)

(declare-fun res!679343 () Bool)

(assert (=> b!1011057 (=> (not res!679343) (not e!568817))))

(assert (=> b!1011057 (= res!679343 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1011058 () Bool)

(declare-fun res!679340 () Bool)

(assert (=> b!1011058 (=> (not res!679340) (not e!568817))))

(assert (=> b!1011058 (= res!679340 (not (= lt!446870 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446868 lt!446874 mask!3464))))))

(declare-fun b!1011059 () Bool)

(declare-fun res!679342 () Bool)

(assert (=> b!1011059 (=> (not res!679342) (not e!568823))))

(declare-fun arrayContainsKey!0 (array!63647 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1011059 (= res!679342 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1011060 () Bool)

(declare-fun res!679336 () Bool)

(assert (=> b!1011060 (=> (not res!679336) (not e!568816))))

(assert (=> b!1011060 (= res!679336 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31139 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31139 a!3219))))))

(declare-fun b!1011061 () Bool)

(declare-fun res!679339 () Bool)

(assert (=> b!1011061 (=> (not res!679339) (not e!568823))))

(assert (=> b!1011061 (= res!679339 (validKeyInArray!0 (select (arr!30636 a!3219) j!170)))))

(declare-fun b!1011062 () Bool)

(declare-fun res!679331 () Bool)

(assert (=> b!1011062 (=> (not res!679331) (not e!568823))))

(assert (=> b!1011062 (= res!679331 (and (= (size!31139 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31139 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31139 a!3219)) (not (= i!1194 j!170))))))

(declare-fun res!679330 () Bool)

(assert (=> start!87242 (=> (not res!679330) (not e!568823))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87242 (= res!679330 (validMask!0 mask!3464))))

(assert (=> start!87242 e!568823))

(declare-fun array_inv!23626 (array!63647) Bool)

(assert (=> start!87242 (array_inv!23626 a!3219)))

(assert (=> start!87242 true))

(declare-fun b!1011063 () Bool)

(declare-fun e!568818 () Bool)

(assert (=> b!1011063 (= e!568820 e!568818)))

(declare-fun res!679341 () Bool)

(assert (=> b!1011063 (=> (not res!679341) (not e!568818))))

(declare-fun lt!446873 () SeekEntryResult!9568)

(assert (=> b!1011063 (= res!679341 (= lt!446873 lt!446867))))

(assert (=> b!1011063 (= lt!446873 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!446872 (select (arr!30636 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011064 () Bool)

(assert (=> b!1011064 (= e!568818 (= lt!446873 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!446872 lt!446868 lt!446874 mask!3464)))))

(assert (= (and start!87242 res!679330) b!1011062))

(assert (= (and b!1011062 res!679331) b!1011061))

(assert (= (and b!1011061 res!679339) b!1011052))

(assert (= (and b!1011052 res!679335) b!1011059))

(assert (= (and b!1011059 res!679342) b!1011050))

(assert (= (and b!1011050 res!679337) b!1011051))

(assert (= (and b!1011051 res!679344) b!1011056))

(assert (= (and b!1011056 res!679345) b!1011060))

(assert (= (and b!1011060 res!679336) b!1011049))

(assert (= (and b!1011049 res!679334) b!1011053))

(assert (= (and b!1011053 res!679333) b!1011054))

(assert (= (and b!1011054 res!679332) b!1011058))

(assert (= (and b!1011058 res!679340) b!1011057))

(assert (= (and b!1011057 res!679343) b!1011055))

(assert (= (and b!1011055 res!679338) b!1011063))

(assert (= (and b!1011063 res!679341) b!1011064))

(declare-fun m!935309 () Bool)

(assert (=> b!1011054 m!935309))

(assert (=> b!1011054 m!935309))

(declare-fun m!935311 () Bool)

(assert (=> b!1011054 m!935311))

(declare-fun m!935313 () Bool)

(assert (=> b!1011054 m!935313))

(declare-fun m!935315 () Bool)

(assert (=> b!1011054 m!935315))

(declare-fun m!935317 () Bool)

(assert (=> b!1011053 m!935317))

(assert (=> b!1011053 m!935317))

(declare-fun m!935319 () Bool)

(assert (=> b!1011053 m!935319))

(declare-fun m!935321 () Bool)

(assert (=> b!1011055 m!935321))

(assert (=> b!1011063 m!935317))

(assert (=> b!1011063 m!935317))

(declare-fun m!935323 () Bool)

(assert (=> b!1011063 m!935323))

(declare-fun m!935325 () Bool)

(assert (=> start!87242 m!935325))

(declare-fun m!935327 () Bool)

(assert (=> start!87242 m!935327))

(declare-fun m!935329 () Bool)

(assert (=> b!1011064 m!935329))

(assert (=> b!1011049 m!935317))

(assert (=> b!1011049 m!935317))

(declare-fun m!935331 () Bool)

(assert (=> b!1011049 m!935331))

(assert (=> b!1011049 m!935331))

(assert (=> b!1011049 m!935317))

(declare-fun m!935333 () Bool)

(assert (=> b!1011049 m!935333))

(assert (=> b!1011061 m!935317))

(assert (=> b!1011061 m!935317))

(declare-fun m!935335 () Bool)

(assert (=> b!1011061 m!935335))

(declare-fun m!935337 () Bool)

(assert (=> b!1011052 m!935337))

(declare-fun m!935339 () Bool)

(assert (=> b!1011058 m!935339))

(declare-fun m!935341 () Bool)

(assert (=> b!1011059 m!935341))

(declare-fun m!935343 () Bool)

(assert (=> b!1011056 m!935343))

(declare-fun m!935345 () Bool)

(assert (=> b!1011050 m!935345))

(declare-fun m!935347 () Bool)

(assert (=> b!1011051 m!935347))

(push 1)

(assert (not start!87242))

(assert (not b!1011053))

(assert (not b!1011064))

(assert (not b!1011051))

(assert (not b!1011055))

(assert (not b!1011058))

(assert (not b!1011061))

(assert (not b!1011056))

(assert (not b!1011063))

(assert (not b!1011050))

(assert (not b!1011049))

(assert (not b!1011052))

(assert (not b!1011054))

(assert (not b!1011059))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120073 () Bool)

(declare-fun lt!446893 () (_ BitVec 32))

(assert (=> d!120073 (and (bvsge lt!446893 #b00000000000000000000000000000000) (bvslt lt!446893 (bvadd mask!3464 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!120073 (= lt!446893 (choose!52 index!1507 x!1245 mask!3464))))

(assert (=> d!120073 (validMask!0 mask!3464)))

(assert (=> d!120073 (= (nextIndex!0 index!1507 x!1245 mask!3464) lt!446893)))

(declare-fun bs!28730 () Bool)

(assert (= bs!28730 d!120073))

(declare-fun m!935377 () Bool)

(assert (=> bs!28730 m!935377))

(assert (=> bs!28730 m!935325))

(assert (=> b!1011055 d!120073))

(declare-fun b!1011147 () Bool)

(declare-fun e!568878 () Bool)

(declare-fun e!568880 () Bool)

(assert (=> b!1011147 (= e!568878 e!568880)))

(declare-fun res!679383 () Bool)

(assert (=> b!1011147 (=> (not res!679383) (not e!568880))))

(declare-fun e!568881 () Bool)

(assert (=> b!1011147 (= res!679383 (not e!568881))))

(declare-fun res!679384 () Bool)

(assert (=> b!1011147 (=> (not res!679384) (not e!568881))))

(assert (=> b!1011147 (= res!679384 (validKeyInArray!0 (select (arr!30636 a!3219) #b00000000000000000000000000000000)))))

(declare-fun d!120077 () Bool)

(declare-fun res!679385 () Bool)

(assert (=> d!120077 (=> res!679385 e!568878)))

(assert (=> d!120077 (= res!679385 (bvsge #b00000000000000000000000000000000 (size!31139 a!3219)))))

(assert (=> d!120077 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21435) e!568878)))

(declare-fun bm!42433 () Bool)

(declare-fun call!42436 () Bool)

(declare-fun c!102045 () Bool)

(assert (=> bm!42433 (= call!42436 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!102045 (Cons!21434 (select (arr!30636 a!3219) #b00000000000000000000000000000000) Nil!21435) Nil!21435)))))

(declare-fun b!1011148 () Bool)

(declare-fun e!568879 () Bool)

(assert (=> b!1011148 (= e!568880 e!568879)))

(assert (=> b!1011148 (= c!102045 (validKeyInArray!0 (select (arr!30636 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1011149 () Bool)

(assert (=> b!1011149 (= e!568879 call!42436)))

(declare-fun b!1011150 () Bool)

(assert (=> b!1011150 (= e!568879 call!42436)))

(declare-fun b!1011151 () Bool)

(declare-fun contains!5907 (List!21438 (_ BitVec 64)) Bool)

(assert (=> b!1011151 (= e!568881 (contains!5907 Nil!21435 (select (arr!30636 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!120077 (not res!679385)) b!1011147))

(assert (= (and b!1011147 res!679384) b!1011151))

(assert (= (and b!1011147 res!679383) b!1011148))

(assert (= (and b!1011148 c!102045) b!1011150))

(assert (= (and b!1011148 (not c!102045)) b!1011149))

(assert (= (or b!1011150 b!1011149) bm!42433))

(declare-fun m!935387 () Bool)

(assert (=> b!1011147 m!935387))

(assert (=> b!1011147 m!935387))

(declare-fun m!935389 () Bool)

(assert (=> b!1011147 m!935389))

(assert (=> bm!42433 m!935387))

(declare-fun m!935391 () Bool)

(assert (=> bm!42433 m!935391))

(assert (=> b!1011148 m!935387))

(assert (=> b!1011148 m!935387))

(assert (=> b!1011148 m!935389))

(assert (=> b!1011151 m!935387))

(assert (=> b!1011151 m!935387))

(declare-fun m!935393 () Bool)

(assert (=> b!1011151 m!935393))

(assert (=> b!1011056 d!120077))

(declare-fun b!1011245 () Bool)

(declare-fun e!568942 () SeekEntryResult!9568)

(assert (=> b!1011245 (= e!568942 (Intermediate!9568 true index!1507 x!1245))))

(declare-fun b!1011246 () Bool)

(declare-fun e!568943 () SeekEntryResult!9568)

(assert (=> b!1011246 (= e!568943 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) lt!446868 lt!446874 mask!3464))))

(declare-fun b!1011247 () Bool)

(declare-fun lt!446927 () SeekEntryResult!9568)

(assert (=> b!1011247 (and (bvsge (index!40644 lt!446927) #b00000000000000000000000000000000) (bvslt (index!40644 lt!446927) (size!31139 lt!446874)))))

(declare-fun e!568939 () Bool)

(assert (=> b!1011247 (= e!568939 (= (select (arr!30636 lt!446874) (index!40644 lt!446927)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1011248 () Bool)

(assert (=> b!1011248 (and (bvsge (index!40644 lt!446927) #b00000000000000000000000000000000) (bvslt (index!40644 lt!446927) (size!31139 lt!446874)))))

(declare-fun res!679427 () Bool)

(assert (=> b!1011248 (= res!679427 (= (select (arr!30636 lt!446874) (index!40644 lt!446927)) lt!446868))))

(assert (=> b!1011248 (=> res!679427 e!568939)))

(declare-fun e!568941 () Bool)

(assert (=> b!1011248 (= e!568941 e!568939)))

(declare-fun d!120081 () Bool)

(declare-fun e!568940 () Bool)

(assert (=> d!120081 e!568940))

(declare-fun c!102073 () Bool)

(assert (=> d!120081 (= c!102073 (and (is-Intermediate!9568 lt!446927) (undefined!10380 lt!446927)))))

(assert (=> d!120081 (= lt!446927 e!568942)))

(declare-fun c!102074 () Bool)

(assert (=> d!120081 (= c!102074 (bvsge x!1245 #b01111111111111111111111111111110))))

(declare-fun lt!446926 () (_ BitVec 64))

(assert (=> d!120081 (= lt!446926 (select (arr!30636 lt!446874) index!1507))))

(assert (=> d!120081 (validMask!0 mask!3464)))

(assert (=> d!120081 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446868 lt!446874 mask!3464) lt!446927)))

(declare-fun b!1011249 () Bool)

(assert (=> b!1011249 (= e!568943 (Intermediate!9568 false index!1507 x!1245))))

(declare-fun b!1011250 () Bool)

(assert (=> b!1011250 (= e!568942 e!568943)))

(declare-fun c!102075 () Bool)

(assert (=> b!1011250 (= c!102075 (or (= lt!446926 lt!446868) (= (bvadd lt!446926 lt!446926) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1011251 () Bool)

(assert (=> b!1011251 (= e!568940 (bvsge (x!88080 lt!446927) #b01111111111111111111111111111110))))

(declare-fun b!1011252 () Bool)

(assert (=> b!1011252 (and (bvsge (index!40644 lt!446927) #b00000000000000000000000000000000) (bvslt (index!40644 lt!446927) (size!31139 lt!446874)))))

(declare-fun res!679425 () Bool)

(assert (=> b!1011252 (= res!679425 (= (select (arr!30636 lt!446874) (index!40644 lt!446927)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1011252 (=> res!679425 e!568939)))

(declare-fun b!1011253 () Bool)

(assert (=> b!1011253 (= e!568940 e!568941)))

(declare-fun res!679426 () Bool)

(assert (=> b!1011253 (= res!679426 (and (is-Intermediate!9568 lt!446927) (not (undefined!10380 lt!446927)) (bvslt (x!88080 lt!446927) #b01111111111111111111111111111110) (bvsge (x!88080 lt!446927) #b00000000000000000000000000000000) (bvsge (x!88080 lt!446927) x!1245)))))

(assert (=> b!1011253 (=> (not res!679426) (not e!568941))))

(assert (= (and d!120081 c!102074) b!1011245))

(assert (= (and d!120081 (not c!102074)) b!1011250))

(assert (= (and b!1011250 c!102075) b!1011249))

(assert (= (and b!1011250 (not c!102075)) b!1011246))

(assert (= (and d!120081 c!102073) b!1011251))

(assert (= (and d!120081 (not c!102073)) b!1011253))

(assert (= (and b!1011253 res!679426) b!1011248))

(assert (= (and b!1011248 (not res!679427)) b!1011252))

(assert (= (and b!1011252 (not res!679425)) b!1011247))

(declare-fun m!935439 () Bool)

(assert (=> d!120081 m!935439))

(assert (=> d!120081 m!935325))

(declare-fun m!935441 () Bool)

(assert (=> b!1011248 m!935441))

(assert (=> b!1011246 m!935321))

(assert (=> b!1011246 m!935321))

(declare-fun m!935443 () Bool)

(assert (=> b!1011246 m!935443))

(assert (=> b!1011252 m!935441))

(assert (=> b!1011247 m!935441))

(assert (=> b!1011058 d!120081))

(declare-fun d!120105 () Bool)

(declare-fun res!679432 () Bool)

(declare-fun e!568948 () Bool)

(assert (=> d!120105 (=> res!679432 e!568948)))

(assert (=> d!120105 (= res!679432 (= (select (arr!30636 a!3219) #b00000000000000000000000000000000) k!2224))))

(assert (=> d!120105 (= (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000) e!568948)))

(declare-fun b!1011258 () Bool)

(declare-fun e!568949 () Bool)

(assert (=> b!1011258 (= e!568948 e!568949)))

(declare-fun res!679433 () Bool)

(assert (=> b!1011258 (=> (not res!679433) (not e!568949))))

(assert (=> b!1011258 (= res!679433 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31139 a!3219)))))

(declare-fun b!1011259 () Bool)

(assert (=> b!1011259 (= e!568949 (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!120105 (not res!679432)) b!1011258))

(assert (= (and b!1011258 res!679433) b!1011259))

(assert (=> d!120105 m!935387))

(declare-fun m!935445 () Bool)

(assert (=> b!1011259 m!935445))

(assert (=> b!1011059 d!120105))

(declare-fun d!120107 () Bool)

(assert (=> d!120107 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!87242 d!120107))

(declare-fun d!120111 () Bool)

(assert (=> d!120111 (= (array_inv!23626 a!3219) (bvsge (size!31139 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!87242 d!120111))

(declare-fun b!1011325 () Bool)

(declare-fun e!568987 () SeekEntryResult!9568)

(declare-fun lt!446962 () SeekEntryResult!9568)

(assert (=> b!1011325 (= e!568987 (Found!9568 (index!40644 lt!446962)))))

(declare-fun b!1011326 () Bool)

(declare-fun c!102107 () Bool)

(declare-fun lt!446961 () (_ BitVec 64))

(assert (=> b!1011326 (= c!102107 (= lt!446961 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!568986 () SeekEntryResult!9568)

(assert (=> b!1011326 (= e!568987 e!568986)))

(declare-fun b!1011327 () Bool)

(assert (=> b!1011327 (= e!568986 (MissingZero!9568 (index!40644 lt!446962)))))

(declare-fun d!120113 () Bool)

(declare-fun lt!446960 () SeekEntryResult!9568)

(assert (=> d!120113 (and (or (is-Undefined!9568 lt!446960) (not (is-Found!9568 lt!446960)) (and (bvsge (index!40643 lt!446960) #b00000000000000000000000000000000) (bvslt (index!40643 lt!446960) (size!31139 a!3219)))) (or (is-Undefined!9568 lt!446960) (is-Found!9568 lt!446960) (not (is-MissingZero!9568 lt!446960)) (and (bvsge (index!40642 lt!446960) #b00000000000000000000000000000000) (bvslt (index!40642 lt!446960) (size!31139 a!3219)))) (or (is-Undefined!9568 lt!446960) (is-Found!9568 lt!446960) (is-MissingZero!9568 lt!446960) (not (is-MissingVacant!9568 lt!446960)) (and (bvsge (index!40645 lt!446960) #b00000000000000000000000000000000) (bvslt (index!40645 lt!446960) (size!31139 a!3219)))) (or (is-Undefined!9568 lt!446960) (ite (is-Found!9568 lt!446960) (= (select (arr!30636 a!3219) (index!40643 lt!446960)) k!2224) (ite (is-MissingZero!9568 lt!446960) (= (select (arr!30636 a!3219) (index!40642 lt!446960)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9568 lt!446960) (= (select (arr!30636 a!3219) (index!40645 lt!446960)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!568985 () SeekEntryResult!9568)

(assert (=> d!120113 (= lt!446960 e!568985)))

(declare-fun c!102105 () Bool)

(assert (=> d!120113 (= c!102105 (and (is-Intermediate!9568 lt!446962) (undefined!10380 lt!446962)))))

(assert (=> d!120113 (= lt!446962 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2224 mask!3464) k!2224 a!3219 mask!3464))))

(assert (=> d!120113 (validMask!0 mask!3464)))

(assert (=> d!120113 (= (seekEntryOrOpen!0 k!2224 a!3219 mask!3464) lt!446960)))

(declare-fun b!1011328 () Bool)

(assert (=> b!1011328 (= e!568985 Undefined!9568)))

(declare-fun b!1011329 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63647 (_ BitVec 32)) SeekEntryResult!9568)

(assert (=> b!1011329 (= e!568986 (seekKeyOrZeroReturnVacant!0 (x!88080 lt!446962) (index!40644 lt!446962) (index!40644 lt!446962) k!2224 a!3219 mask!3464))))

(declare-fun b!1011330 () Bool)

(assert (=> b!1011330 (= e!568985 e!568987)))

(assert (=> b!1011330 (= lt!446961 (select (arr!30636 a!3219) (index!40644 lt!446962)))))

(declare-fun c!102106 () Bool)

(assert (=> b!1011330 (= c!102106 (= lt!446961 k!2224))))

(assert (= (and d!120113 c!102105) b!1011328))

(assert (= (and d!120113 (not c!102105)) b!1011330))

(assert (= (and b!1011330 c!102106) b!1011325))

(assert (= (and b!1011330 (not c!102106)) b!1011326))

(assert (= (and b!1011326 c!102107) b!1011327))

(assert (= (and b!1011326 (not c!102107)) b!1011329))

(declare-fun m!935481 () Bool)

(assert (=> d!120113 m!935481))

(declare-fun m!935483 () Bool)

(assert (=> d!120113 m!935483))

(assert (=> d!120113 m!935325))

(assert (=> d!120113 m!935483))

(declare-fun m!935485 () Bool)

(assert (=> d!120113 m!935485))

(declare-fun m!935487 () Bool)

(assert (=> d!120113 m!935487))

(declare-fun m!935489 () Bool)

(assert (=> d!120113 m!935489))

(declare-fun m!935491 () Bool)

(assert (=> b!1011329 m!935491))

(declare-fun m!935493 () Bool)

(assert (=> b!1011330 m!935493))

(assert (=> b!1011050 d!120113))

(declare-fun e!568994 () SeekEntryResult!9568)

(declare-fun b!1011335 () Bool)

(assert (=> b!1011335 (= e!568994 (Intermediate!9568 true (toIndex!0 (select (arr!30636 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun e!568995 () SeekEntryResult!9568)

(declare-fun b!1011336 () Bool)

(assert (=> b!1011336 (= e!568995 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30636 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30636 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011337 () Bool)

(declare-fun lt!446967 () SeekEntryResult!9568)

(assert (=> b!1011337 (and (bvsge (index!40644 lt!446967) #b00000000000000000000000000000000) (bvslt (index!40644 lt!446967) (size!31139 a!3219)))))

(declare-fun e!568991 () Bool)

(assert (=> b!1011337 (= e!568991 (= (select (arr!30636 a!3219) (index!40644 lt!446967)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1011338 () Bool)

(assert (=> b!1011338 (and (bvsge (index!40644 lt!446967) #b00000000000000000000000000000000) (bvslt (index!40644 lt!446967) (size!31139 a!3219)))))

(declare-fun res!679445 () Bool)

(assert (=> b!1011338 (= res!679445 (= (select (arr!30636 a!3219) (index!40644 lt!446967)) (select (arr!30636 a!3219) j!170)))))

(assert (=> b!1011338 (=> res!679445 e!568991)))

(declare-fun e!568993 () Bool)

(assert (=> b!1011338 (= e!568993 e!568991)))

(declare-fun d!120125 () Bool)

(declare-fun e!568992 () Bool)

(assert (=> d!120125 e!568992))

(declare-fun c!102109 () Bool)

(assert (=> d!120125 (= c!102109 (and (is-Intermediate!9568 lt!446967) (undefined!10380 lt!446967)))))

(assert (=> d!120125 (= lt!446967 e!568994)))

(declare-fun c!102110 () Bool)

(assert (=> d!120125 (= c!102110 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!446966 () (_ BitVec 64))

(assert (=> d!120125 (= lt!446966 (select (arr!30636 a!3219) (toIndex!0 (select (arr!30636 a!3219) j!170) mask!3464)))))

(assert (=> d!120125 (validMask!0 mask!3464)))

(assert (=> d!120125 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30636 a!3219) j!170) mask!3464) (select (arr!30636 a!3219) j!170) a!3219 mask!3464) lt!446967)))

(declare-fun b!1011339 () Bool)

(assert (=> b!1011339 (= e!568995 (Intermediate!9568 false (toIndex!0 (select (arr!30636 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1011340 () Bool)

(assert (=> b!1011340 (= e!568994 e!568995)))

(declare-fun c!102111 () Bool)

(assert (=> b!1011340 (= c!102111 (or (= lt!446966 (select (arr!30636 a!3219) j!170)) (= (bvadd lt!446966 lt!446966) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1011341 () Bool)

(assert (=> b!1011341 (= e!568992 (bvsge (x!88080 lt!446967) #b01111111111111111111111111111110))))

(declare-fun b!1011342 () Bool)

(assert (=> b!1011342 (and (bvsge (index!40644 lt!446967) #b00000000000000000000000000000000) (bvslt (index!40644 lt!446967) (size!31139 a!3219)))))

(declare-fun res!679443 () Bool)

(assert (=> b!1011342 (= res!679443 (= (select (arr!30636 a!3219) (index!40644 lt!446967)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1011342 (=> res!679443 e!568991)))

(declare-fun b!1011343 () Bool)

(assert (=> b!1011343 (= e!568992 e!568993)))

(declare-fun res!679444 () Bool)

(assert (=> b!1011343 (= res!679444 (and (is-Intermediate!9568 lt!446967) (not (undefined!10380 lt!446967)) (bvslt (x!88080 lt!446967) #b01111111111111111111111111111110) (bvsge (x!88080 lt!446967) #b00000000000000000000000000000000) (bvsge (x!88080 lt!446967) #b00000000000000000000000000000000)))))

(assert (=> b!1011343 (=> (not res!679444) (not e!568993))))

(assert (= (and d!120125 c!102110) b!1011335))

(assert (= (and d!120125 (not c!102110)) b!1011340))

(assert (= (and b!1011340 c!102111) b!1011339))

(assert (= (and b!1011340 (not c!102111)) b!1011336))

(assert (= (and d!120125 c!102109) b!1011341))

(assert (= (and d!120125 (not c!102109)) b!1011343))

(assert (= (and b!1011343 res!679444) b!1011338))

(assert (= (and b!1011338 (not res!679445)) b!1011342))

(assert (= (and b!1011342 (not res!679443)) b!1011337))

(assert (=> d!120125 m!935331))

(declare-fun m!935507 () Bool)

(assert (=> d!120125 m!935507))

(assert (=> d!120125 m!935325))

(declare-fun m!935509 () Bool)

(assert (=> b!1011338 m!935509))

(assert (=> b!1011336 m!935331))

(declare-fun m!935515 () Bool)

(assert (=> b!1011336 m!935515))

(assert (=> b!1011336 m!935515))

(assert (=> b!1011336 m!935317))

(declare-fun m!935519 () Bool)

(assert (=> b!1011336 m!935519))

(assert (=> b!1011342 m!935509))

(assert (=> b!1011337 m!935509))

(assert (=> b!1011049 d!120125))

(declare-fun d!120131 () Bool)

(declare-fun lt!446981 () (_ BitVec 32))

(declare-fun lt!446980 () (_ BitVec 32))

(assert (=> d!120131 (= lt!446981 (bvmul (bvxor lt!446980 (bvlshr lt!446980 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!120131 (= lt!446980 ((_ extract 31 0) (bvand (bvxor (select (arr!30636 a!3219) j!170) (bvlshr (select (arr!30636 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!120131 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!679450 (let ((h!22632 ((_ extract 31 0) (bvand (bvxor (select (arr!30636 a!3219) j!170) (bvlshr (select (arr!30636 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!88088 (bvmul (bvxor h!22632 (bvlshr h!22632 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!88088 (bvlshr x!88088 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!679450 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!679450 #b00000000000000000000000000000000))))))

(assert (=> d!120131 (= (toIndex!0 (select (arr!30636 a!3219) j!170) mask!3464) (bvand (bvxor lt!446981 (bvlshr lt!446981 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1011049 d!120131))

(declare-fun b!1011380 () Bool)

(declare-fun e!569020 () Bool)

(declare-fun call!42444 () Bool)

(assert (=> b!1011380 (= e!569020 call!42444)))

(declare-fun bm!42441 () Bool)

(assert (=> bm!42441 (= call!42444 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun b!1011381 () Bool)

(declare-fun e!569021 () Bool)

(assert (=> b!1011381 (= e!569020 e!569021)))

(declare-fun lt!446995 () (_ BitVec 64))

(assert (=> b!1011381 (= lt!446995 (select (arr!30636 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32982 0))(
  ( (Unit!32983) )
))
(declare-fun lt!446993 () Unit!32982)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63647 (_ BitVec 64) (_ BitVec 32)) Unit!32982)

(assert (=> b!1011381 (= lt!446993 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!446995 #b00000000000000000000000000000000))))

(assert (=> b!1011381 (arrayContainsKey!0 a!3219 lt!446995 #b00000000000000000000000000000000)))

(declare-fun lt!446994 () Unit!32982)

(assert (=> b!1011381 (= lt!446994 lt!446993)))

(declare-fun res!679464 () Bool)

(assert (=> b!1011381 (= res!679464 (= (seekEntryOrOpen!0 (select (arr!30636 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9568 #b00000000000000000000000000000000)))))

(assert (=> b!1011381 (=> (not res!679464) (not e!569021))))

(declare-fun d!120135 () Bool)

(declare-fun res!679465 () Bool)

(declare-fun e!569022 () Bool)

(assert (=> d!120135 (=> res!679465 e!569022)))

(assert (=> d!120135 (= res!679465 (bvsge #b00000000000000000000000000000000 (size!31139 a!3219)))))

(assert (=> d!120135 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!569022)))

(declare-fun b!1011382 () Bool)

(assert (=> b!1011382 (= e!569022 e!569020)))

(declare-fun c!102122 () Bool)

(assert (=> b!1011382 (= c!102122 (validKeyInArray!0 (select (arr!30636 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1011383 () Bool)

(assert (=> b!1011383 (= e!569021 call!42444)))

(assert (= (and d!120135 (not res!679465)) b!1011382))

(assert (= (and b!1011382 c!102122) b!1011381))

(assert (= (and b!1011382 (not c!102122)) b!1011380))

(assert (= (and b!1011381 res!679464) b!1011383))

(assert (= (or b!1011383 b!1011380) bm!42441))

(declare-fun m!935529 () Bool)

(assert (=> bm!42441 m!935529))

(assert (=> b!1011381 m!935387))

(declare-fun m!935531 () Bool)

(assert (=> b!1011381 m!935531))

(declare-fun m!935533 () Bool)

(assert (=> b!1011381 m!935533))

(assert (=> b!1011381 m!935387))

(declare-fun m!935537 () Bool)

(assert (=> b!1011381 m!935537))

(assert (=> b!1011382 m!935387))

(assert (=> b!1011382 m!935387))

(assert (=> b!1011382 m!935389))

(assert (=> b!1011051 d!120135))

(declare-fun d!120143 () Bool)

(assert (=> d!120143 (= (validKeyInArray!0 (select (arr!30636 a!3219) j!170)) (and (not (= (select (arr!30636 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30636 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1011061 d!120143))

(declare-fun b!1011398 () Bool)

(declare-fun e!569035 () SeekEntryResult!9568)

(assert (=> b!1011398 (= e!569035 (Intermediate!9568 true lt!446872 (bvadd #b00000000000000000000000000000001 x!1245)))))

(declare-fun e!569036 () SeekEntryResult!9568)

(declare-fun b!1011399 () Bool)

(assert (=> b!1011399 (= e!569036 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245 #b00000000000000000000000000000001) (nextIndex!0 lt!446872 (bvadd #b00000000000000000000000000000001 x!1245) mask!3464) (select (arr!30636 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011400 () Bool)

(declare-fun lt!446999 () SeekEntryResult!9568)

(assert (=> b!1011400 (and (bvsge (index!40644 lt!446999) #b00000000000000000000000000000000) (bvslt (index!40644 lt!446999) (size!31139 a!3219)))))

(declare-fun e!569032 () Bool)

(assert (=> b!1011400 (= e!569032 (= (select (arr!30636 a!3219) (index!40644 lt!446999)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1011401 () Bool)

(assert (=> b!1011401 (and (bvsge (index!40644 lt!446999) #b00000000000000000000000000000000) (bvslt (index!40644 lt!446999) (size!31139 a!3219)))))

(declare-fun res!679474 () Bool)

(assert (=> b!1011401 (= res!679474 (= (select (arr!30636 a!3219) (index!40644 lt!446999)) (select (arr!30636 a!3219) j!170)))))

(assert (=> b!1011401 (=> res!679474 e!569032)))

(declare-fun e!569034 () Bool)

(assert (=> b!1011401 (= e!569034 e!569032)))

(declare-fun d!120149 () Bool)

(declare-fun e!569033 () Bool)

(assert (=> d!120149 e!569033))

(declare-fun c!102127 () Bool)

(assert (=> d!120149 (= c!102127 (and (is-Intermediate!9568 lt!446999) (undefined!10380 lt!446999)))))

(assert (=> d!120149 (= lt!446999 e!569035)))

(declare-fun c!102128 () Bool)

(assert (=> d!120149 (= c!102128 (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b01111111111111111111111111111110))))

(declare-fun lt!446998 () (_ BitVec 64))

(assert (=> d!120149 (= lt!446998 (select (arr!30636 a!3219) lt!446872))))

(assert (=> d!120149 (validMask!0 mask!3464)))

(assert (=> d!120149 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!446872 (select (arr!30636 a!3219) j!170) a!3219 mask!3464) lt!446999)))

(declare-fun b!1011402 () Bool)

(assert (=> b!1011402 (= e!569036 (Intermediate!9568 false lt!446872 (bvadd #b00000000000000000000000000000001 x!1245)))))

(declare-fun b!1011403 () Bool)

(assert (=> b!1011403 (= e!569035 e!569036)))

(declare-fun c!102129 () Bool)

(assert (=> b!1011403 (= c!102129 (or (= lt!446998 (select (arr!30636 a!3219) j!170)) (= (bvadd lt!446998 lt!446998) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1011404 () Bool)

(assert (=> b!1011404 (= e!569033 (bvsge (x!88080 lt!446999) #b01111111111111111111111111111110))))

(declare-fun b!1011405 () Bool)

(assert (=> b!1011405 (and (bvsge (index!40644 lt!446999) #b00000000000000000000000000000000) (bvslt (index!40644 lt!446999) (size!31139 a!3219)))))

(declare-fun res!679472 () Bool)

(assert (=> b!1011405 (= res!679472 (= (select (arr!30636 a!3219) (index!40644 lt!446999)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1011405 (=> res!679472 e!569032)))

(declare-fun b!1011406 () Bool)

(assert (=> b!1011406 (= e!569033 e!569034)))

(declare-fun res!679473 () Bool)

(assert (=> b!1011406 (= res!679473 (and (is-Intermediate!9568 lt!446999) (not (undefined!10380 lt!446999)) (bvslt (x!88080 lt!446999) #b01111111111111111111111111111110) (bvsge (x!88080 lt!446999) #b00000000000000000000000000000000) (bvsge (x!88080 lt!446999) (bvadd #b00000000000000000000000000000001 x!1245))))))

(assert (=> b!1011406 (=> (not res!679473) (not e!569034))))

(assert (= (and d!120149 c!102128) b!1011398))

(assert (= (and d!120149 (not c!102128)) b!1011403))

(assert (= (and b!1011403 c!102129) b!1011402))

(assert (= (and b!1011403 (not c!102129)) b!1011399))

(assert (= (and d!120149 c!102127) b!1011404))

(assert (= (and d!120149 (not c!102127)) b!1011406))

(assert (= (and b!1011406 res!679473) b!1011401))

(assert (= (and b!1011401 (not res!679474)) b!1011405))

(assert (= (and b!1011405 (not res!679472)) b!1011400))

(declare-fun m!935549 () Bool)

(assert (=> d!120149 m!935549))

(assert (=> d!120149 m!935325))

(declare-fun m!935551 () Bool)

(assert (=> b!1011401 m!935551))

(declare-fun m!935553 () Bool)

(assert (=> b!1011399 m!935553))

(assert (=> b!1011399 m!935553))

(assert (=> b!1011399 m!935317))

(declare-fun m!935555 () Bool)

(assert (=> b!1011399 m!935555))

(assert (=> b!1011405 m!935551))

(assert (=> b!1011400 m!935551))

(assert (=> b!1011063 d!120149))

(declare-fun d!120153 () Bool)

(assert (=> d!120153 (= (validKeyInArray!0 k!2224) (and (not (= k!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1011052 d!120153))

(declare-fun b!1011407 () Bool)

(declare-fun e!569040 () SeekEntryResult!9568)

(assert (=> b!1011407 (= e!569040 (Intermediate!9568 true (toIndex!0 lt!446868 mask!3464) #b00000000000000000000000000000000))))

(declare-fun e!569041 () SeekEntryResult!9568)

(declare-fun b!1011408 () Bool)

(assert (=> b!1011408 (= e!569041 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!446868 mask!3464) #b00000000000000000000000000000000 mask!3464) lt!446868 lt!446874 mask!3464))))

(declare-fun b!1011409 () Bool)

(declare-fun lt!447003 () SeekEntryResult!9568)

(assert (=> b!1011409 (and (bvsge (index!40644 lt!447003) #b00000000000000000000000000000000) (bvslt (index!40644 lt!447003) (size!31139 lt!446874)))))

(declare-fun e!569037 () Bool)

(assert (=> b!1011409 (= e!569037 (= (select (arr!30636 lt!446874) (index!40644 lt!447003)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1011410 () Bool)

(assert (=> b!1011410 (and (bvsge (index!40644 lt!447003) #b00000000000000000000000000000000) (bvslt (index!40644 lt!447003) (size!31139 lt!446874)))))

(declare-fun res!679477 () Bool)

(assert (=> b!1011410 (= res!679477 (= (select (arr!30636 lt!446874) (index!40644 lt!447003)) lt!446868))))

(assert (=> b!1011410 (=> res!679477 e!569037)))

(declare-fun e!569039 () Bool)

(assert (=> b!1011410 (= e!569039 e!569037)))

(declare-fun d!120155 () Bool)

(declare-fun e!569038 () Bool)

(assert (=> d!120155 e!569038))

(declare-fun c!102130 () Bool)

(assert (=> d!120155 (= c!102130 (and (is-Intermediate!9568 lt!447003) (undefined!10380 lt!447003)))))

(assert (=> d!120155 (= lt!447003 e!569040)))

(declare-fun c!102131 () Bool)

(assert (=> d!120155 (= c!102131 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!447002 () (_ BitVec 64))

(assert (=> d!120155 (= lt!447002 (select (arr!30636 lt!446874) (toIndex!0 lt!446868 mask!3464)))))

(assert (=> d!120155 (validMask!0 mask!3464)))

(assert (=> d!120155 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446868 mask!3464) lt!446868 lt!446874 mask!3464) lt!447003)))

(declare-fun b!1011411 () Bool)

(assert (=> b!1011411 (= e!569041 (Intermediate!9568 false (toIndex!0 lt!446868 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1011412 () Bool)

(assert (=> b!1011412 (= e!569040 e!569041)))

(declare-fun c!102132 () Bool)

(assert (=> b!1011412 (= c!102132 (or (= lt!447002 lt!446868) (= (bvadd lt!447002 lt!447002) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1011413 () Bool)

(assert (=> b!1011413 (= e!569038 (bvsge (x!88080 lt!447003) #b01111111111111111111111111111110))))

(declare-fun b!1011414 () Bool)

(assert (=> b!1011414 (and (bvsge (index!40644 lt!447003) #b00000000000000000000000000000000) (bvslt (index!40644 lt!447003) (size!31139 lt!446874)))))

(declare-fun res!679475 () Bool)

(assert (=> b!1011414 (= res!679475 (= (select (arr!30636 lt!446874) (index!40644 lt!447003)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1011414 (=> res!679475 e!569037)))

(declare-fun b!1011415 () Bool)

(assert (=> b!1011415 (= e!569038 e!569039)))

(declare-fun res!679476 () Bool)

(assert (=> b!1011415 (= res!679476 (and (is-Intermediate!9568 lt!447003) (not (undefined!10380 lt!447003)) (bvslt (x!88080 lt!447003) #b01111111111111111111111111111110) (bvsge (x!88080 lt!447003) #b00000000000000000000000000000000) (bvsge (x!88080 lt!447003) #b00000000000000000000000000000000)))))

(assert (=> b!1011415 (=> (not res!679476) (not e!569039))))

(assert (= (and d!120155 c!102131) b!1011407))

(assert (= (and d!120155 (not c!102131)) b!1011412))

(assert (= (and b!1011412 c!102132) b!1011411))

(assert (= (and b!1011412 (not c!102132)) b!1011408))

(assert (= (and d!120155 c!102130) b!1011413))

(assert (= (and d!120155 (not c!102130)) b!1011415))

(assert (= (and b!1011415 res!679476) b!1011410))

(assert (= (and b!1011410 (not res!679477)) b!1011414))

(assert (= (and b!1011414 (not res!679475)) b!1011409))

(assert (=> d!120155 m!935309))

(declare-fun m!935557 () Bool)

(assert (=> d!120155 m!935557))

(assert (=> d!120155 m!935325))

(declare-fun m!935559 () Bool)

(assert (=> b!1011410 m!935559))

(assert (=> b!1011408 m!935309))

(declare-fun m!935561 () Bool)

(assert (=> b!1011408 m!935561))

(assert (=> b!1011408 m!935561))

(declare-fun m!935563 () Bool)

(assert (=> b!1011408 m!935563))

(assert (=> b!1011414 m!935559))

(assert (=> b!1011409 m!935559))

(assert (=> b!1011054 d!120155))

(declare-fun d!120157 () Bool)

(declare-fun lt!447005 () (_ BitVec 32))

(declare-fun lt!447004 () (_ BitVec 32))

(assert (=> d!120157 (= lt!447005 (bvmul (bvxor lt!447004 (bvlshr lt!447004 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!120157 (= lt!447004 ((_ extract 31 0) (bvand (bvxor lt!446868 (bvlshr lt!446868 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!120157 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!679450 (let ((h!22632 ((_ extract 31 0) (bvand (bvxor lt!446868 (bvlshr lt!446868 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!88088 (bvmul (bvxor h!22632 (bvlshr h!22632 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!88088 (bvlshr x!88088 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!679450 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!679450 #b00000000000000000000000000000000))))))

(assert (=> d!120157 (= (toIndex!0 lt!446868 mask!3464) (bvand (bvxor lt!447005 (bvlshr lt!447005 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1011054 d!120157))

(declare-fun b!1011416 () Bool)

(declare-fun e!569045 () SeekEntryResult!9568)

(assert (=> b!1011416 (= e!569045 (Intermediate!9568 true index!1507 x!1245))))

(declare-fun b!1011417 () Bool)

(declare-fun e!569046 () SeekEntryResult!9568)

(assert (=> b!1011417 (= e!569046 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30636 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011418 () Bool)

(declare-fun lt!447007 () SeekEntryResult!9568)

(assert (=> b!1011418 (and (bvsge (index!40644 lt!447007) #b00000000000000000000000000000000) (bvslt (index!40644 lt!447007) (size!31139 a!3219)))))

(declare-fun e!569042 () Bool)

(assert (=> b!1011418 (= e!569042 (= (select (arr!30636 a!3219) (index!40644 lt!447007)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1011419 () Bool)

(assert (=> b!1011419 (and (bvsge (index!40644 lt!447007) #b00000000000000000000000000000000) (bvslt (index!40644 lt!447007) (size!31139 a!3219)))))

(declare-fun res!679480 () Bool)

(assert (=> b!1011419 (= res!679480 (= (select (arr!30636 a!3219) (index!40644 lt!447007)) (select (arr!30636 a!3219) j!170)))))

(assert (=> b!1011419 (=> res!679480 e!569042)))

(declare-fun e!569044 () Bool)

(assert (=> b!1011419 (= e!569044 e!569042)))

(declare-fun d!120159 () Bool)

(declare-fun e!569043 () Bool)

(assert (=> d!120159 e!569043))

(declare-fun c!102133 () Bool)

(assert (=> d!120159 (= c!102133 (and (is-Intermediate!9568 lt!447007) (undefined!10380 lt!447007)))))

(assert (=> d!120159 (= lt!447007 e!569045)))

(declare-fun c!102134 () Bool)

(assert (=> d!120159 (= c!102134 (bvsge x!1245 #b01111111111111111111111111111110))))

(declare-fun lt!447006 () (_ BitVec 64))

(assert (=> d!120159 (= lt!447006 (select (arr!30636 a!3219) index!1507))))

(assert (=> d!120159 (validMask!0 mask!3464)))

(assert (=> d!120159 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30636 a!3219) j!170) a!3219 mask!3464) lt!447007)))

(declare-fun b!1011420 () Bool)

(assert (=> b!1011420 (= e!569046 (Intermediate!9568 false index!1507 x!1245))))

(declare-fun b!1011421 () Bool)

(assert (=> b!1011421 (= e!569045 e!569046)))

(declare-fun c!102135 () Bool)

(assert (=> b!1011421 (= c!102135 (or (= lt!447006 (select (arr!30636 a!3219) j!170)) (= (bvadd lt!447006 lt!447006) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1011422 () Bool)

(assert (=> b!1011422 (= e!569043 (bvsge (x!88080 lt!447007) #b01111111111111111111111111111110))))

(declare-fun b!1011423 () Bool)

(assert (=> b!1011423 (and (bvsge (index!40644 lt!447007) #b00000000000000000000000000000000) (bvslt (index!40644 lt!447007) (size!31139 a!3219)))))

(declare-fun res!679478 () Bool)

(assert (=> b!1011423 (= res!679478 (= (select (arr!30636 a!3219) (index!40644 lt!447007)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1011423 (=> res!679478 e!569042)))

(declare-fun b!1011424 () Bool)

(assert (=> b!1011424 (= e!569043 e!569044)))

(declare-fun res!679479 () Bool)

(assert (=> b!1011424 (= res!679479 (and (is-Intermediate!9568 lt!447007) (not (undefined!10380 lt!447007)) (bvslt (x!88080 lt!447007) #b01111111111111111111111111111110) (bvsge (x!88080 lt!447007) #b00000000000000000000000000000000) (bvsge (x!88080 lt!447007) x!1245)))))

(assert (=> b!1011424 (=> (not res!679479) (not e!569044))))

(assert (= (and d!120159 c!102134) b!1011416))

(assert (= (and d!120159 (not c!102134)) b!1011421))

(assert (= (and b!1011421 c!102135) b!1011420))

(assert (= (and b!1011421 (not c!102135)) b!1011417))

(assert (= (and d!120159 c!102133) b!1011422))

(assert (= (and d!120159 (not c!102133)) b!1011424))

(assert (= (and b!1011424 res!679479) b!1011419))

(assert (= (and b!1011419 (not res!679480)) b!1011423))

(assert (= (and b!1011423 (not res!679478)) b!1011418))

(declare-fun m!935565 () Bool)

(assert (=> d!120159 m!935565))

(assert (=> d!120159 m!935325))

(declare-fun m!935567 () Bool)

(assert (=> b!1011419 m!935567))

(assert (=> b!1011417 m!935321))

(assert (=> b!1011417 m!935321))

(assert (=> b!1011417 m!935317))

(declare-fun m!935569 () Bool)

(assert (=> b!1011417 m!935569))

(assert (=> b!1011423 m!935567))

(assert (=> b!1011418 m!935567))

(assert (=> b!1011053 d!120159))

(declare-fun b!1011425 () Bool)

(declare-fun e!569050 () SeekEntryResult!9568)

(assert (=> b!1011425 (= e!569050 (Intermediate!9568 true lt!446872 (bvadd #b00000000000000000000000000000001 x!1245)))))

(declare-fun b!1011426 () Bool)

(declare-fun e!569051 () SeekEntryResult!9568)

(assert (=> b!1011426 (= e!569051 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245 #b00000000000000000000000000000001) (nextIndex!0 lt!446872 (bvadd #b00000000000000000000000000000001 x!1245) mask!3464) lt!446868 lt!446874 mask!3464))))

(declare-fun b!1011427 () Bool)

(declare-fun lt!447009 () SeekEntryResult!9568)

(assert (=> b!1011427 (and (bvsge (index!40644 lt!447009) #b00000000000000000000000000000000) (bvslt (index!40644 lt!447009) (size!31139 lt!446874)))))

(declare-fun e!569047 () Bool)

(assert (=> b!1011427 (= e!569047 (= (select (arr!30636 lt!446874) (index!40644 lt!447009)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1011428 () Bool)

(assert (=> b!1011428 (and (bvsge (index!40644 lt!447009) #b00000000000000000000000000000000) (bvslt (index!40644 lt!447009) (size!31139 lt!446874)))))

(declare-fun res!679483 () Bool)

(assert (=> b!1011428 (= res!679483 (= (select (arr!30636 lt!446874) (index!40644 lt!447009)) lt!446868))))

(assert (=> b!1011428 (=> res!679483 e!569047)))

(declare-fun e!569049 () Bool)

(assert (=> b!1011428 (= e!569049 e!569047)))

(declare-fun d!120161 () Bool)

(declare-fun e!569048 () Bool)

(assert (=> d!120161 e!569048))

(declare-fun c!102136 () Bool)

(assert (=> d!120161 (= c!102136 (and (is-Intermediate!9568 lt!447009) (undefined!10380 lt!447009)))))

(assert (=> d!120161 (= lt!447009 e!569050)))

(declare-fun c!102137 () Bool)

(assert (=> d!120161 (= c!102137 (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b01111111111111111111111111111110))))

(declare-fun lt!447008 () (_ BitVec 64))

(assert (=> d!120161 (= lt!447008 (select (arr!30636 lt!446874) lt!446872))))

(assert (=> d!120161 (validMask!0 mask!3464)))

(assert (=> d!120161 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!446872 lt!446868 lt!446874 mask!3464) lt!447009)))

(declare-fun b!1011429 () Bool)

(assert (=> b!1011429 (= e!569051 (Intermediate!9568 false lt!446872 (bvadd #b00000000000000000000000000000001 x!1245)))))

(declare-fun b!1011430 () Bool)

(assert (=> b!1011430 (= e!569050 e!569051)))

(declare-fun c!102138 () Bool)

(assert (=> b!1011430 (= c!102138 (or (= lt!447008 lt!446868) (= (bvadd lt!447008 lt!447008) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1011431 () Bool)

(assert (=> b!1011431 (= e!569048 (bvsge (x!88080 lt!447009) #b01111111111111111111111111111110))))

(declare-fun b!1011432 () Bool)

(assert (=> b!1011432 (and (bvsge (index!40644 lt!447009) #b00000000000000000000000000000000) (bvslt (index!40644 lt!447009) (size!31139 lt!446874)))))

(declare-fun res!679481 () Bool)

(assert (=> b!1011432 (= res!679481 (= (select (arr!30636 lt!446874) (index!40644 lt!447009)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1011432 (=> res!679481 e!569047)))

(declare-fun b!1011433 () Bool)

(assert (=> b!1011433 (= e!569048 e!569049)))

(declare-fun res!679482 () Bool)

(assert (=> b!1011433 (= res!679482 (and (is-Intermediate!9568 lt!447009) (not (undefined!10380 lt!447009)) (bvslt (x!88080 lt!447009) #b01111111111111111111111111111110) (bvsge (x!88080 lt!447009) #b00000000000000000000000000000000) (bvsge (x!88080 lt!447009) (bvadd #b00000000000000000000000000000001 x!1245))))))

(assert (=> b!1011433 (=> (not res!679482) (not e!569049))))

(assert (= (and d!120161 c!102137) b!1011425))

(assert (= (and d!120161 (not c!102137)) b!1011430))

(assert (= (and b!1011430 c!102138) b!1011429))

(assert (= (and b!1011430 (not c!102138)) b!1011426))

(assert (= (and d!120161 c!102136) b!1011431))

(assert (= (and d!120161 (not c!102136)) b!1011433))

(assert (= (and b!1011433 res!679482) b!1011428))

(assert (= (and b!1011428 (not res!679483)) b!1011432))

(assert (= (and b!1011432 (not res!679481)) b!1011427))

(declare-fun m!935571 () Bool)

(assert (=> d!120161 m!935571))

(assert (=> d!120161 m!935325))

(declare-fun m!935573 () Bool)

(assert (=> b!1011428 m!935573))

(assert (=> b!1011426 m!935553))

(assert (=> b!1011426 m!935553))

(declare-fun m!935575 () Bool)

(assert (=> b!1011426 m!935575))

(assert (=> b!1011432 m!935573))

(assert (=> b!1011427 m!935573))

(assert (=> b!1011064 d!120161))

(push 1)

