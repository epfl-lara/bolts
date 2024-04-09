; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86702 () Bool)

(assert start!86702)

(declare-fun b!1004875 () Bool)

(declare-fun res!674319 () Bool)

(declare-fun e!565887 () Bool)

(assert (=> b!1004875 (=> (not res!674319) (not e!565887))))

(declare-datatypes ((array!63404 0))(
  ( (array!63405 (arr!30522 (Array (_ BitVec 32) (_ BitVec 64))) (size!31025 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63404)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1004875 (= res!674319 (validKeyInArray!0 (select (arr!30522 a!3219) j!170)))))

(declare-fun res!674324 () Bool)

(assert (=> start!86702 (=> (not res!674324) (not e!565887))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86702 (= res!674324 (validMask!0 mask!3464))))

(assert (=> start!86702 e!565887))

(declare-fun array_inv!23512 (array!63404) Bool)

(assert (=> start!86702 (array_inv!23512 a!3219)))

(assert (=> start!86702 true))

(declare-fun b!1004876 () Bool)

(declare-fun res!674317 () Bool)

(declare-fun e!565890 () Bool)

(assert (=> b!1004876 (=> (not res!674317) (not e!565890))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63404 (_ BitVec 32)) Bool)

(assert (=> b!1004876 (= res!674317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1004877 () Bool)

(declare-fun res!674325 () Bool)

(declare-fun e!565891 () Bool)

(assert (=> b!1004877 (=> (not res!674325) (not e!565891))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9454 0))(
  ( (MissingZero!9454 (index!40186 (_ BitVec 32))) (Found!9454 (index!40187 (_ BitVec 32))) (Intermediate!9454 (undefined!10266 Bool) (index!40188 (_ BitVec 32)) (x!87617 (_ BitVec 32))) (Undefined!9454) (MissingVacant!9454 (index!40189 (_ BitVec 32))) )
))
(declare-fun lt!444353 () SeekEntryResult!9454)

(declare-fun lt!444356 () (_ BitVec 64))

(declare-fun lt!444355 () array!63404)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63404 (_ BitVec 32)) SeekEntryResult!9454)

(assert (=> b!1004877 (= res!674325 (not (= lt!444353 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!444356 lt!444355 mask!3464))))))

(declare-fun b!1004878 () Bool)

(declare-fun res!674316 () Bool)

(assert (=> b!1004878 (=> (not res!674316) (not e!565887))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1004878 (= res!674316 (and (= (size!31025 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31025 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31025 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1004879 () Bool)

(declare-fun e!565888 () Bool)

(assert (=> b!1004879 (= e!565888 e!565891)))

(declare-fun res!674314 () Bool)

(assert (=> b!1004879 (=> (not res!674314) (not e!565891))))

(declare-fun lt!444352 () SeekEntryResult!9454)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1004879 (= res!674314 (not (= lt!444352 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!444356 mask!3464) lt!444356 lt!444355 mask!3464))))))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1004879 (= lt!444356 (select (store (arr!30522 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1004879 (= lt!444355 (array!63405 (store (arr!30522 a!3219) i!1194 k!2224) (size!31025 a!3219)))))

(declare-fun b!1004880 () Bool)

(declare-fun e!565889 () Bool)

(assert (=> b!1004880 (= e!565890 e!565889)))

(declare-fun res!674321 () Bool)

(assert (=> b!1004880 (=> (not res!674321) (not e!565889))))

(declare-fun lt!444354 () SeekEntryResult!9454)

(assert (=> b!1004880 (= res!674321 (= lt!444352 lt!444354))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1004880 (= lt!444354 (Intermediate!9454 false resIndex!38 resX!38))))

(assert (=> b!1004880 (= lt!444352 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30522 a!3219) j!170) mask!3464) (select (arr!30522 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004881 () Bool)

(declare-fun res!674318 () Bool)

(assert (=> b!1004881 (=> (not res!674318) (not e!565887))))

(declare-fun arrayContainsKey!0 (array!63404 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1004881 (= res!674318 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1004882 () Bool)

(assert (=> b!1004882 (= e!565887 e!565890)))

(declare-fun res!674322 () Bool)

(assert (=> b!1004882 (=> (not res!674322) (not e!565890))))

(declare-fun lt!444357 () SeekEntryResult!9454)

(assert (=> b!1004882 (= res!674322 (or (= lt!444357 (MissingVacant!9454 i!1194)) (= lt!444357 (MissingZero!9454 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63404 (_ BitVec 32)) SeekEntryResult!9454)

(assert (=> b!1004882 (= lt!444357 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1004883 () Bool)

(assert (=> b!1004883 (= e!565889 e!565888)))

(declare-fun res!674320 () Bool)

(assert (=> b!1004883 (=> (not res!674320) (not e!565888))))

(assert (=> b!1004883 (= res!674320 (= lt!444353 lt!444354))))

(assert (=> b!1004883 (= lt!444353 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30522 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004884 () Bool)

(assert (=> b!1004884 (= e!565891 (and (not (= index!1507 resIndex!38)) (= index!1507 i!1194)))))

(declare-fun b!1004885 () Bool)

(declare-fun res!674315 () Bool)

(assert (=> b!1004885 (=> (not res!674315) (not e!565887))))

(assert (=> b!1004885 (= res!674315 (validKeyInArray!0 k!2224))))

(declare-fun b!1004886 () Bool)

(declare-fun res!674323 () Bool)

(assert (=> b!1004886 (=> (not res!674323) (not e!565890))))

(assert (=> b!1004886 (= res!674323 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31025 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31025 a!3219))))))

(declare-fun b!1004887 () Bool)

(declare-fun res!674326 () Bool)

(assert (=> b!1004887 (=> (not res!674326) (not e!565890))))

(declare-datatypes ((List!21324 0))(
  ( (Nil!21321) (Cons!21320 (h!22500 (_ BitVec 64)) (t!30333 List!21324)) )
))
(declare-fun arrayNoDuplicates!0 (array!63404 (_ BitVec 32) List!21324) Bool)

(assert (=> b!1004887 (= res!674326 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21321))))

(assert (= (and start!86702 res!674324) b!1004878))

(assert (= (and b!1004878 res!674316) b!1004875))

(assert (= (and b!1004875 res!674319) b!1004885))

(assert (= (and b!1004885 res!674315) b!1004881))

(assert (= (and b!1004881 res!674318) b!1004882))

(assert (= (and b!1004882 res!674322) b!1004876))

(assert (= (and b!1004876 res!674317) b!1004887))

(assert (= (and b!1004887 res!674326) b!1004886))

(assert (= (and b!1004886 res!674323) b!1004880))

(assert (= (and b!1004880 res!674321) b!1004883))

(assert (= (and b!1004883 res!674320) b!1004879))

(assert (= (and b!1004879 res!674314) b!1004877))

(assert (= (and b!1004877 res!674325) b!1004884))

(declare-fun m!930377 () Bool)

(assert (=> b!1004880 m!930377))

(assert (=> b!1004880 m!930377))

(declare-fun m!930379 () Bool)

(assert (=> b!1004880 m!930379))

(assert (=> b!1004880 m!930379))

(assert (=> b!1004880 m!930377))

(declare-fun m!930381 () Bool)

(assert (=> b!1004880 m!930381))

(declare-fun m!930383 () Bool)

(assert (=> b!1004877 m!930383))

(assert (=> b!1004883 m!930377))

(assert (=> b!1004883 m!930377))

(declare-fun m!930385 () Bool)

(assert (=> b!1004883 m!930385))

(declare-fun m!930387 () Bool)

(assert (=> b!1004881 m!930387))

(declare-fun m!930389 () Bool)

(assert (=> start!86702 m!930389))

(declare-fun m!930391 () Bool)

(assert (=> start!86702 m!930391))

(assert (=> b!1004875 m!930377))

(assert (=> b!1004875 m!930377))

(declare-fun m!930393 () Bool)

(assert (=> b!1004875 m!930393))

(declare-fun m!930395 () Bool)

(assert (=> b!1004876 m!930395))

(declare-fun m!930397 () Bool)

(assert (=> b!1004879 m!930397))

(assert (=> b!1004879 m!930397))

(declare-fun m!930399 () Bool)

(assert (=> b!1004879 m!930399))

(declare-fun m!930401 () Bool)

(assert (=> b!1004879 m!930401))

(declare-fun m!930403 () Bool)

(assert (=> b!1004879 m!930403))

(declare-fun m!930405 () Bool)

(assert (=> b!1004887 m!930405))

(declare-fun m!930407 () Bool)

(assert (=> b!1004882 m!930407))

(declare-fun m!930409 () Bool)

(assert (=> b!1004885 m!930409))

(push 1)

(assert (not b!1004881))

(assert (not b!1004877))

(assert (not b!1004882))

(assert (not b!1004879))

(assert (not start!86702))

(assert (not b!1004876))

(assert (not b!1004885))

(assert (not b!1004875))

(assert (not b!1004887))

(assert (not b!1004883))

(assert (not b!1004880))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!565933 () SeekEntryResult!9454)

(declare-fun b!1004957 () Bool)

(assert (=> b!1004957 (= e!565933 (Intermediate!9454 true (toIndex!0 (select (arr!30522 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1004958 () Bool)

(declare-fun lt!444384 () SeekEntryResult!9454)

(assert (=> b!1004958 (and (bvsge (index!40188 lt!444384) #b00000000000000000000000000000000) (bvslt (index!40188 lt!444384) (size!31025 a!3219)))))

(declare-fun e!565934 () Bool)

(assert (=> b!1004958 (= e!565934 (= (select (arr!30522 a!3219) (index!40188 lt!444384)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1004959 () Bool)

(declare-fun e!565936 () SeekEntryResult!9454)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1004959 (= e!565936 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30522 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30522 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1004960 () Bool)

(assert (=> b!1004960 (= e!565933 e!565936)))

(declare-fun c!101457 () Bool)

(declare-fun lt!444383 () (_ BitVec 64))

(assert (=> b!1004960 (= c!101457 (or (= lt!444383 (select (arr!30522 a!3219) j!170)) (= (bvadd lt!444383 lt!444383) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!119435 () Bool)

(declare-fun e!565935 () Bool)

(assert (=> d!119435 e!565935))

(declare-fun c!101455 () Bool)

(assert (=> d!119435 (= c!101455 (and (is-Intermediate!9454 lt!444384) (undefined!10266 lt!444384)))))

(assert (=> d!119435 (= lt!444384 e!565933)))

(declare-fun c!101456 () Bool)

(assert (=> d!119435 (= c!101456 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!119435 (= lt!444383 (select (arr!30522 a!3219) (toIndex!0 (select (arr!30522 a!3219) j!170) mask!3464)))))

(assert (=> d!119435 (validMask!0 mask!3464)))

(assert (=> d!119435 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30522 a!3219) j!170) mask!3464) (select (arr!30522 a!3219) j!170) a!3219 mask!3464) lt!444384)))

(declare-fun b!1004961 () Bool)

(declare-fun e!565937 () Bool)

(assert (=> b!1004961 (= e!565935 e!565937)))

(declare-fun res!674350 () Bool)

(assert (=> b!1004961 (= res!674350 (and (is-Intermediate!9454 lt!444384) (not (undefined!10266 lt!444384)) (bvslt (x!87617 lt!444384) #b01111111111111111111111111111110) (bvsge (x!87617 lt!444384) #b00000000000000000000000000000000) (bvsge (x!87617 lt!444384) #b00000000000000000000000000000000)))))

(assert (=> b!1004961 (=> (not res!674350) (not e!565937))))

(declare-fun b!1004962 () Bool)

(assert (=> b!1004962 (and (bvsge (index!40188 lt!444384) #b00000000000000000000000000000000) (bvslt (index!40188 lt!444384) (size!31025 a!3219)))))

(declare-fun res!674348 () Bool)

(assert (=> b!1004962 (= res!674348 (= (select (arr!30522 a!3219) (index!40188 lt!444384)) (select (arr!30522 a!3219) j!170)))))

(assert (=> b!1004962 (=> res!674348 e!565934)))

(assert (=> b!1004962 (= e!565937 e!565934)))

(declare-fun b!1004963 () Bool)

(assert (=> b!1004963 (= e!565936 (Intermediate!9454 false (toIndex!0 (select (arr!30522 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1004964 () Bool)

(assert (=> b!1004964 (and (bvsge (index!40188 lt!444384) #b00000000000000000000000000000000) (bvslt (index!40188 lt!444384) (size!31025 a!3219)))))

(declare-fun res!674349 () Bool)

(assert (=> b!1004964 (= res!674349 (= (select (arr!30522 a!3219) (index!40188 lt!444384)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1004964 (=> res!674349 e!565934)))

(declare-fun b!1004965 () Bool)

(assert (=> b!1004965 (= e!565935 (bvsge (x!87617 lt!444384) #b01111111111111111111111111111110))))

(assert (= (and d!119435 c!101456) b!1004957))

(assert (= (and d!119435 (not c!101456)) b!1004960))

(assert (= (and b!1004960 c!101457) b!1004963))

(assert (= (and b!1004960 (not c!101457)) b!1004959))

(assert (= (and d!119435 c!101455) b!1004965))

(assert (= (and d!119435 (not c!101455)) b!1004961))

(assert (= (and b!1004961 res!674350) b!1004962))

(assert (= (and b!1004962 (not res!674348)) b!1004964))

(assert (= (and b!1004964 (not res!674349)) b!1004958))

(assert (=> d!119435 m!930379))

(declare-fun m!930431 () Bool)

(assert (=> d!119435 m!930431))

(assert (=> d!119435 m!930389))

(declare-fun m!930433 () Bool)

(assert (=> b!1004962 m!930433))

(assert (=> b!1004964 m!930433))

(assert (=> b!1004959 m!930379))

(declare-fun m!930435 () Bool)

(assert (=> b!1004959 m!930435))

(assert (=> b!1004959 m!930435))

(assert (=> b!1004959 m!930377))

(declare-fun m!930437 () Bool)

(assert (=> b!1004959 m!930437))

(assert (=> b!1004958 m!930433))

(assert (=> b!1004880 d!119435))

(declare-fun d!119443 () Bool)

(declare-fun lt!444395 () (_ BitVec 32))

(declare-fun lt!444394 () (_ BitVec 32))

(assert (=> d!119443 (= lt!444395 (bvmul (bvxor lt!444394 (bvlshr lt!444394 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119443 (= lt!444394 ((_ extract 31 0) (bvand (bvxor (select (arr!30522 a!3219) j!170) (bvlshr (select (arr!30522 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119443 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!674351 (let ((h!22501 ((_ extract 31 0) (bvand (bvxor (select (arr!30522 a!3219) j!170) (bvlshr (select (arr!30522 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87620 (bvmul (bvxor h!22501 (bvlshr h!22501 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87620 (bvlshr x!87620 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!674351 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!674351 #b00000000000000000000000000000000))))))

(assert (=> d!119443 (= (toIndex!0 (select (arr!30522 a!3219) j!170) mask!3464) (bvand (bvxor lt!444395 (bvlshr lt!444395 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1004880 d!119443))

(declare-fun d!119449 () Bool)

(assert (=> d!119449 (= (validKeyInArray!0 k!2224) (and (not (= k!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1004885 d!119449))

(declare-fun d!119451 () Bool)

(assert (=> d!119451 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!86702 d!119451))

(declare-fun d!119455 () Bool)

(assert (=> d!119455 (= (array_inv!23512 a!3219) (bvsge (size!31025 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!86702 d!119455))

(declare-fun b!1005023 () Bool)

(declare-fun e!565973 () SeekEntryResult!9454)

(assert (=> b!1005023 (= e!565973 (Intermediate!9454 true (toIndex!0 lt!444356 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1005024 () Bool)

(declare-fun lt!444403 () SeekEntryResult!9454)

(assert (=> b!1005024 (and (bvsge (index!40188 lt!444403) #b00000000000000000000000000000000) (bvslt (index!40188 lt!444403) (size!31025 lt!444355)))))

(declare-fun e!565974 () Bool)

(assert (=> b!1005024 (= e!565974 (= (select (arr!30522 lt!444355) (index!40188 lt!444403)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!565976 () SeekEntryResult!9454)

(declare-fun b!1005025 () Bool)

(assert (=> b!1005025 (= e!565976 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!444356 mask!3464) #b00000000000000000000000000000000 mask!3464) lt!444356 lt!444355 mask!3464))))

(declare-fun b!1005026 () Bool)

(assert (=> b!1005026 (= e!565973 e!565976)))

(declare-fun c!101478 () Bool)

(declare-fun lt!444402 () (_ BitVec 64))

(assert (=> b!1005026 (= c!101478 (or (= lt!444402 lt!444356) (= (bvadd lt!444402 lt!444402) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!119459 () Bool)

(declare-fun e!565975 () Bool)

(assert (=> d!119459 e!565975))

(declare-fun c!101476 () Bool)

(assert (=> d!119459 (= c!101476 (and (is-Intermediate!9454 lt!444403) (undefined!10266 lt!444403)))))

(assert (=> d!119459 (= lt!444403 e!565973)))

(declare-fun c!101477 () Bool)

(assert (=> d!119459 (= c!101477 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!119459 (= lt!444402 (select (arr!30522 lt!444355) (toIndex!0 lt!444356 mask!3464)))))

(assert (=> d!119459 (validMask!0 mask!3464)))

(assert (=> d!119459 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!444356 mask!3464) lt!444356 lt!444355 mask!3464) lt!444403)))

(declare-fun b!1005027 () Bool)

(declare-fun e!565977 () Bool)

(assert (=> b!1005027 (= e!565975 e!565977)))

(declare-fun res!674375 () Bool)

(assert (=> b!1005027 (= res!674375 (and (is-Intermediate!9454 lt!444403) (not (undefined!10266 lt!444403)) (bvslt (x!87617 lt!444403) #b01111111111111111111111111111110) (bvsge (x!87617 lt!444403) #b00000000000000000000000000000000) (bvsge (x!87617 lt!444403) #b00000000000000000000000000000000)))))

(assert (=> b!1005027 (=> (not res!674375) (not e!565977))))

(declare-fun b!1005028 () Bool)

(assert (=> b!1005028 (and (bvsge (index!40188 lt!444403) #b00000000000000000000000000000000) (bvslt (index!40188 lt!444403) (size!31025 lt!444355)))))

(declare-fun res!674373 () Bool)

(assert (=> b!1005028 (= res!674373 (= (select (arr!30522 lt!444355) (index!40188 lt!444403)) lt!444356))))

(assert (=> b!1005028 (=> res!674373 e!565974)))

(assert (=> b!1005028 (= e!565977 e!565974)))

(declare-fun b!1005029 () Bool)

(assert (=> b!1005029 (= e!565976 (Intermediate!9454 false (toIndex!0 lt!444356 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1005030 () Bool)

(assert (=> b!1005030 (and (bvsge (index!40188 lt!444403) #b00000000000000000000000000000000) (bvslt (index!40188 lt!444403) (size!31025 lt!444355)))))

(declare-fun res!674374 () Bool)

(assert (=> b!1005030 (= res!674374 (= (select (arr!30522 lt!444355) (index!40188 lt!444403)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1005030 (=> res!674374 e!565974)))

(declare-fun b!1005031 () Bool)

(assert (=> b!1005031 (= e!565975 (bvsge (x!87617 lt!444403) #b01111111111111111111111111111110))))

(assert (= (and d!119459 c!101477) b!1005023))

(assert (= (and d!119459 (not c!101477)) b!1005026))

(assert (= (and b!1005026 c!101478) b!1005029))

(assert (= (and b!1005026 (not c!101478)) b!1005025))

(assert (= (and d!119459 c!101476) b!1005031))

(assert (= (and d!119459 (not c!101476)) b!1005027))

(assert (= (and b!1005027 res!674375) b!1005028))

(assert (= (and b!1005028 (not res!674373)) b!1005030))

(assert (= (and b!1005030 (not res!674374)) b!1005024))

(assert (=> d!119459 m!930397))

(declare-fun m!930475 () Bool)

(assert (=> d!119459 m!930475))

(assert (=> d!119459 m!930389))

(declare-fun m!930477 () Bool)

(assert (=> b!1005028 m!930477))

(assert (=> b!1005030 m!930477))

(assert (=> b!1005025 m!930397))

(declare-fun m!930479 () Bool)

(assert (=> b!1005025 m!930479))

(assert (=> b!1005025 m!930479))

(declare-fun m!930481 () Bool)

(assert (=> b!1005025 m!930481))

(assert (=> b!1005024 m!930477))

(assert (=> b!1004879 d!119459))

(declare-fun d!119461 () Bool)

(declare-fun lt!444405 () (_ BitVec 32))

(declare-fun lt!444404 () (_ BitVec 32))

(assert (=> d!119461 (= lt!444405 (bvmul (bvxor lt!444404 (bvlshr lt!444404 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119461 (= lt!444404 ((_ extract 31 0) (bvand (bvxor lt!444356 (bvlshr lt!444356 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119461 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!674351 (let ((h!22501 ((_ extract 31 0) (bvand (bvxor lt!444356 (bvlshr lt!444356 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87620 (bvmul (bvxor h!22501 (bvlshr h!22501 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87620 (bvlshr x!87620 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!674351 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!674351 #b00000000000000000000000000000000))))))

(assert (=> d!119461 (= (toIndex!0 lt!444356 mask!3464) (bvand (bvxor lt!444405 (bvlshr lt!444405 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1004879 d!119461))

(declare-fun b!1005032 () Bool)

(declare-fun e!565978 () SeekEntryResult!9454)

(assert (=> b!1005032 (= e!565978 (Intermediate!9454 true index!1507 x!1245))))

(declare-fun b!1005033 () Bool)

(declare-fun lt!444407 () SeekEntryResult!9454)

(assert (=> b!1005033 (and (bvsge (index!40188 lt!444407) #b00000000000000000000000000000000) (bvslt (index!40188 lt!444407) (size!31025 a!3219)))))

(declare-fun e!565979 () Bool)

(assert (=> b!1005033 (= e!565979 (= (select (arr!30522 a!3219) (index!40188 lt!444407)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!565981 () SeekEntryResult!9454)

(declare-fun b!1005034 () Bool)

(assert (=> b!1005034 (= e!565981 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30522 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1005035 () Bool)

(assert (=> b!1005035 (= e!565978 e!565981)))

(declare-fun c!101481 () Bool)

(declare-fun lt!444406 () (_ BitVec 64))

(assert (=> b!1005035 (= c!101481 (or (= lt!444406 (select (arr!30522 a!3219) j!170)) (= (bvadd lt!444406 lt!444406) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!119463 () Bool)

(declare-fun e!565980 () Bool)

(assert (=> d!119463 e!565980))

(declare-fun c!101479 () Bool)

(assert (=> d!119463 (= c!101479 (and (is-Intermediate!9454 lt!444407) (undefined!10266 lt!444407)))))

(assert (=> d!119463 (= lt!444407 e!565978)))

(declare-fun c!101480 () Bool)

(assert (=> d!119463 (= c!101480 (bvsge x!1245 #b01111111111111111111111111111110))))

(assert (=> d!119463 (= lt!444406 (select (arr!30522 a!3219) index!1507))))

(assert (=> d!119463 (validMask!0 mask!3464)))

(assert (=> d!119463 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30522 a!3219) j!170) a!3219 mask!3464) lt!444407)))

(declare-fun b!1005036 () Bool)

(declare-fun e!565982 () Bool)

(assert (=> b!1005036 (= e!565980 e!565982)))

(declare-fun res!674378 () Bool)

(assert (=> b!1005036 (= res!674378 (and (is-Intermediate!9454 lt!444407) (not (undefined!10266 lt!444407)) (bvslt (x!87617 lt!444407) #b01111111111111111111111111111110) (bvsge (x!87617 lt!444407) #b00000000000000000000000000000000) (bvsge (x!87617 lt!444407) x!1245)))))

(assert (=> b!1005036 (=> (not res!674378) (not e!565982))))

(declare-fun b!1005037 () Bool)

(assert (=> b!1005037 (and (bvsge (index!40188 lt!444407) #b00000000000000000000000000000000) (bvslt (index!40188 lt!444407) (size!31025 a!3219)))))

(declare-fun res!674376 () Bool)

(assert (=> b!1005037 (= res!674376 (= (select (arr!30522 a!3219) (index!40188 lt!444407)) (select (arr!30522 a!3219) j!170)))))

(assert (=> b!1005037 (=> res!674376 e!565979)))

(assert (=> b!1005037 (= e!565982 e!565979)))

(declare-fun b!1005038 () Bool)

(assert (=> b!1005038 (= e!565981 (Intermediate!9454 false index!1507 x!1245))))

(declare-fun b!1005039 () Bool)

(assert (=> b!1005039 (and (bvsge (index!40188 lt!444407) #b00000000000000000000000000000000) (bvslt (index!40188 lt!444407) (size!31025 a!3219)))))

(declare-fun res!674377 () Bool)

(assert (=> b!1005039 (= res!674377 (= (select (arr!30522 a!3219) (index!40188 lt!444407)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1005039 (=> res!674377 e!565979)))

(declare-fun b!1005040 () Bool)

(assert (=> b!1005040 (= e!565980 (bvsge (x!87617 lt!444407) #b01111111111111111111111111111110))))

(assert (= (and d!119463 c!101480) b!1005032))

(assert (= (and d!119463 (not c!101480)) b!1005035))

(assert (= (and b!1005035 c!101481) b!1005038))

(assert (= (and b!1005035 (not c!101481)) b!1005034))

(assert (= (and d!119463 c!101479) b!1005040))

(assert (= (and d!119463 (not c!101479)) b!1005036))

(assert (= (and b!1005036 res!674378) b!1005037))

(assert (= (and b!1005037 (not res!674376)) b!1005039))

(assert (= (and b!1005039 (not res!674377)) b!1005033))

(declare-fun m!930483 () Bool)

(assert (=> d!119463 m!930483))

(assert (=> d!119463 m!930389))

(declare-fun m!930485 () Bool)

(assert (=> b!1005037 m!930485))

(assert (=> b!1005039 m!930485))

(declare-fun m!930487 () Bool)

(assert (=> b!1005034 m!930487))

(assert (=> b!1005034 m!930487))

(assert (=> b!1005034 m!930377))

(declare-fun m!930489 () Bool)

(assert (=> b!1005034 m!930489))

(assert (=> b!1005033 m!930485))

(assert (=> b!1004883 d!119463))

(declare-fun b!1005041 () Bool)

(declare-fun e!565983 () SeekEntryResult!9454)

(assert (=> b!1005041 (= e!565983 (Intermediate!9454 true index!1507 x!1245))))

(declare-fun b!1005042 () Bool)

(declare-fun lt!444409 () SeekEntryResult!9454)

(assert (=> b!1005042 (and (bvsge (index!40188 lt!444409) #b00000000000000000000000000000000) (bvslt (index!40188 lt!444409) (size!31025 lt!444355)))))

(declare-fun e!565984 () Bool)

(assert (=> b!1005042 (= e!565984 (= (select (arr!30522 lt!444355) (index!40188 lt!444409)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1005043 () Bool)

(declare-fun e!565986 () SeekEntryResult!9454)

(assert (=> b!1005043 (= e!565986 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) lt!444356 lt!444355 mask!3464))))

(declare-fun b!1005044 () Bool)

(assert (=> b!1005044 (= e!565983 e!565986)))

(declare-fun c!101484 () Bool)

(declare-fun lt!444408 () (_ BitVec 64))

(assert (=> b!1005044 (= c!101484 (or (= lt!444408 lt!444356) (= (bvadd lt!444408 lt!444408) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!119467 () Bool)

(declare-fun e!565985 () Bool)

(assert (=> d!119467 e!565985))

(declare-fun c!101482 () Bool)

(assert (=> d!119467 (= c!101482 (and (is-Intermediate!9454 lt!444409) (undefined!10266 lt!444409)))))

(assert (=> d!119467 (= lt!444409 e!565983)))

(declare-fun c!101483 () Bool)

(assert (=> d!119467 (= c!101483 (bvsge x!1245 #b01111111111111111111111111111110))))

(assert (=> d!119467 (= lt!444408 (select (arr!30522 lt!444355) index!1507))))

(assert (=> d!119467 (validMask!0 mask!3464)))

(assert (=> d!119467 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!444356 lt!444355 mask!3464) lt!444409)))

(declare-fun b!1005045 () Bool)

(declare-fun e!565987 () Bool)

(assert (=> b!1005045 (= e!565985 e!565987)))

(declare-fun res!674381 () Bool)

(assert (=> b!1005045 (= res!674381 (and (is-Intermediate!9454 lt!444409) (not (undefined!10266 lt!444409)) (bvslt (x!87617 lt!444409) #b01111111111111111111111111111110) (bvsge (x!87617 lt!444409) #b00000000000000000000000000000000) (bvsge (x!87617 lt!444409) x!1245)))))

(assert (=> b!1005045 (=> (not res!674381) (not e!565987))))

(declare-fun b!1005046 () Bool)

(assert (=> b!1005046 (and (bvsge (index!40188 lt!444409) #b00000000000000000000000000000000) (bvslt (index!40188 lt!444409) (size!31025 lt!444355)))))

(declare-fun res!674379 () Bool)

(assert (=> b!1005046 (= res!674379 (= (select (arr!30522 lt!444355) (index!40188 lt!444409)) lt!444356))))

(assert (=> b!1005046 (=> res!674379 e!565984)))

(assert (=> b!1005046 (= e!565987 e!565984)))

(declare-fun b!1005047 () Bool)

(assert (=> b!1005047 (= e!565986 (Intermediate!9454 false index!1507 x!1245))))

(declare-fun b!1005048 () Bool)

(assert (=> b!1005048 (and (bvsge (index!40188 lt!444409) #b00000000000000000000000000000000) (bvslt (index!40188 lt!444409) (size!31025 lt!444355)))))

(declare-fun res!674380 () Bool)

(assert (=> b!1005048 (= res!674380 (= (select (arr!30522 lt!444355) (index!40188 lt!444409)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1005048 (=> res!674380 e!565984)))

(declare-fun b!1005049 () Bool)

(assert (=> b!1005049 (= e!565985 (bvsge (x!87617 lt!444409) #b01111111111111111111111111111110))))

(assert (= (and d!119467 c!101483) b!1005041))

(assert (= (and d!119467 (not c!101483)) b!1005044))

(assert (= (and b!1005044 c!101484) b!1005047))

(assert (= (and b!1005044 (not c!101484)) b!1005043))

(assert (= (and d!119467 c!101482) b!1005049))

(assert (= (and d!119467 (not c!101482)) b!1005045))

(assert (= (and b!1005045 res!674381) b!1005046))

(assert (= (and b!1005046 (not res!674379)) b!1005048))

(assert (= (and b!1005048 (not res!674380)) b!1005042))

(declare-fun m!930491 () Bool)

(assert (=> d!119467 m!930491))

(assert (=> d!119467 m!930389))

(declare-fun m!930493 () Bool)

(assert (=> b!1005046 m!930493))

(assert (=> b!1005048 m!930493))

(assert (=> b!1005043 m!930487))

(assert (=> b!1005043 m!930487))

(declare-fun m!930495 () Bool)

(assert (=> b!1005043 m!930495))

(assert (=> b!1005042 m!930493))

(assert (=> b!1004877 d!119467))

(declare-fun b!1005122 () Bool)

(declare-fun e!566037 () SeekEntryResult!9454)

(assert (=> b!1005122 (= e!566037 Undefined!9454)))

(declare-fun b!1005123 () Bool)

(declare-fun e!566038 () SeekEntryResult!9454)

(declare-fun lt!444438 () SeekEntryResult!9454)

(assert (=> b!1005123 (= e!566038 (Found!9454 (index!40188 lt!444438)))))

(declare-fun e!566036 () SeekEntryResult!9454)

(declare-fun b!1005124 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63404 (_ BitVec 32)) SeekEntryResult!9454)

(assert (=> b!1005124 (= e!566036 (seekKeyOrZeroReturnVacant!0 (x!87617 lt!444438) (index!40188 lt!444438) (index!40188 lt!444438) k!2224 a!3219 mask!3464))))

(declare-fun b!1005125 () Bool)

(declare-fun c!101508 () Bool)

(declare-fun lt!444437 () (_ BitVec 64))

(assert (=> b!1005125 (= c!101508 (= lt!444437 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1005125 (= e!566038 e!566036)))

(declare-fun b!1005126 () Bool)

(assert (=> b!1005126 (= e!566036 (MissingZero!9454 (index!40188 lt!444438)))))

(declare-fun d!119473 () Bool)

(declare-fun lt!444439 () SeekEntryResult!9454)

(assert (=> d!119473 (and (or (is-Undefined!9454 lt!444439) (not (is-Found!9454 lt!444439)) (and (bvsge (index!40187 lt!444439) #b00000000000000000000000000000000) (bvslt (index!40187 lt!444439) (size!31025 a!3219)))) (or (is-Undefined!9454 lt!444439) (is-Found!9454 lt!444439) (not (is-MissingZero!9454 lt!444439)) (and (bvsge (index!40186 lt!444439) #b00000000000000000000000000000000) (bvslt (index!40186 lt!444439) (size!31025 a!3219)))) (or (is-Undefined!9454 lt!444439) (is-Found!9454 lt!444439) (is-MissingZero!9454 lt!444439) (not (is-MissingVacant!9454 lt!444439)) (and (bvsge (index!40189 lt!444439) #b00000000000000000000000000000000) (bvslt (index!40189 lt!444439) (size!31025 a!3219)))) (or (is-Undefined!9454 lt!444439) (ite (is-Found!9454 lt!444439) (= (select (arr!30522 a!3219) (index!40187 lt!444439)) k!2224) (ite (is-MissingZero!9454 lt!444439) (= (select (arr!30522 a!3219) (index!40186 lt!444439)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9454 lt!444439) (= (select (arr!30522 a!3219) (index!40189 lt!444439)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!119473 (= lt!444439 e!566037)))

(declare-fun c!101506 () Bool)

(assert (=> d!119473 (= c!101506 (and (is-Intermediate!9454 lt!444438) (undefined!10266 lt!444438)))))

(assert (=> d!119473 (= lt!444438 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2224 mask!3464) k!2224 a!3219 mask!3464))))

(assert (=> d!119473 (validMask!0 mask!3464)))

(assert (=> d!119473 (= (seekEntryOrOpen!0 k!2224 a!3219 mask!3464) lt!444439)))

(declare-fun b!1005127 () Bool)

(assert (=> b!1005127 (= e!566037 e!566038)))

(assert (=> b!1005127 (= lt!444437 (select (arr!30522 a!3219) (index!40188 lt!444438)))))

(declare-fun c!101507 () Bool)

(assert (=> b!1005127 (= c!101507 (= lt!444437 k!2224))))

(assert (= (and d!119473 c!101506) b!1005122))

(assert (= (and d!119473 (not c!101506)) b!1005127))

(assert (= (and b!1005127 c!101507) b!1005123))

(assert (= (and b!1005127 (not c!101507)) b!1005125))

(assert (= (and b!1005125 c!101508) b!1005126))

(assert (= (and b!1005125 (not c!101508)) b!1005124))

(declare-fun m!930535 () Bool)

(assert (=> b!1005124 m!930535))

(declare-fun m!930537 () Bool)

(assert (=> d!119473 m!930537))

(assert (=> d!119473 m!930389))

(declare-fun m!930539 () Bool)

(assert (=> d!119473 m!930539))

(declare-fun m!930541 () Bool)

(assert (=> d!119473 m!930541))

(declare-fun m!930543 () Bool)

(assert (=> d!119473 m!930543))

(assert (=> d!119473 m!930541))

(declare-fun m!930545 () Bool)

(assert (=> d!119473 m!930545))

(declare-fun m!930547 () Bool)

(assert (=> b!1005127 m!930547))

(assert (=> b!1004882 d!119473))

(declare-fun b!1005162 () Bool)

(declare-fun e!566065 () Bool)

(declare-fun call!42346 () Bool)

(assert (=> b!1005162 (= e!566065 call!42346)))

(declare-fun b!1005163 () Bool)

(declare-fun e!566063 () Bool)

(declare-fun contains!5893 (List!21324 (_ BitVec 64)) Bool)

(assert (=> b!1005163 (= e!566063 (contains!5893 Nil!21321 (select (arr!30522 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1005164 () Bool)

(declare-fun e!566064 () Bool)

(assert (=> b!1005164 (= e!566064 e!566065)))

(declare-fun c!101517 () Bool)

(assert (=> b!1005164 (= c!101517 (validKeyInArray!0 (select (arr!30522 a!3219) #b00000000000000000000000000000000)))))

(declare-fun d!119497 () Bool)

(declare-fun res!674433 () Bool)

(declare-fun e!566066 () Bool)

(assert (=> d!119497 (=> res!674433 e!566066)))

(assert (=> d!119497 (= res!674433 (bvsge #b00000000000000000000000000000000 (size!31025 a!3219)))))

(assert (=> d!119497 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21321) e!566066)))

(declare-fun bm!42343 () Bool)

(assert (=> bm!42343 (= call!42346 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101517 (Cons!21320 (select (arr!30522 a!3219) #b00000000000000000000000000000000) Nil!21321) Nil!21321)))))

(declare-fun b!1005165 () Bool)

(assert (=> b!1005165 (= e!566066 e!566064)))

(declare-fun res!674432 () Bool)

(assert (=> b!1005165 (=> (not res!674432) (not e!566064))))

(assert (=> b!1005165 (= res!674432 (not e!566063))))

(declare-fun res!674434 () Bool)

(assert (=> b!1005165 (=> (not res!674434) (not e!566063))))

(assert (=> b!1005165 (= res!674434 (validKeyInArray!0 (select (arr!30522 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1005166 () Bool)

(assert (=> b!1005166 (= e!566065 call!42346)))

(assert (= (and d!119497 (not res!674433)) b!1005165))

(assert (= (and b!1005165 res!674434) b!1005163))

(assert (= (and b!1005165 res!674432) b!1005164))

(assert (= (and b!1005164 c!101517) b!1005162))

(assert (= (and b!1005164 (not c!101517)) b!1005166))

(assert (= (or b!1005162 b!1005166) bm!42343))

(declare-fun m!930565 () Bool)

(assert (=> b!1005163 m!930565))

(assert (=> b!1005163 m!930565))

(declare-fun m!930567 () Bool)

(assert (=> b!1005163 m!930567))

(assert (=> b!1005164 m!930565))

(assert (=> b!1005164 m!930565))

(declare-fun m!930569 () Bool)

(assert (=> b!1005164 m!930569))

(assert (=> bm!42343 m!930565))

(declare-fun m!930571 () Bool)

(assert (=> bm!42343 m!930571))

(assert (=> b!1005165 m!930565))

(assert (=> b!1005165 m!930565))

(assert (=> b!1005165 m!930569))

(assert (=> b!1004887 d!119497))

(declare-fun b!1005175 () Bool)

(declare-fun e!566075 () Bool)

(declare-fun e!566074 () Bool)

(assert (=> b!1005175 (= e!566075 e!566074)))

(declare-fun lt!444460 () (_ BitVec 64))

(assert (=> b!1005175 (= lt!444460 (select (arr!30522 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32952 0))(
  ( (Unit!32953) )
))
(declare-fun lt!444461 () Unit!32952)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63404 (_ BitVec 64) (_ BitVec 32)) Unit!32952)

(assert (=> b!1005175 (= lt!444461 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!444460 #b00000000000000000000000000000000))))

(assert (=> b!1005175 (arrayContainsKey!0 a!3219 lt!444460 #b00000000000000000000000000000000)))

(declare-fun lt!444462 () Unit!32952)

(assert (=> b!1005175 (= lt!444462 lt!444461)))

(declare-fun res!674439 () Bool)

(assert (=> b!1005175 (= res!674439 (= (seekEntryOrOpen!0 (select (arr!30522 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9454 #b00000000000000000000000000000000)))))

(assert (=> b!1005175 (=> (not res!674439) (not e!566074))))

(declare-fun d!119511 () Bool)

(declare-fun res!674440 () Bool)

(declare-fun e!566073 () Bool)

(assert (=> d!119511 (=> res!674440 e!566073)))

(assert (=> d!119511 (= res!674440 (bvsge #b00000000000000000000000000000000 (size!31025 a!3219)))))

(assert (=> d!119511 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!566073)))

(declare-fun b!1005176 () Bool)

(assert (=> b!1005176 (= e!566073 e!566075)))

(declare-fun c!101520 () Bool)

(assert (=> b!1005176 (= c!101520 (validKeyInArray!0 (select (arr!30522 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1005177 () Bool)

(declare-fun call!42349 () Bool)

(assert (=> b!1005177 (= e!566075 call!42349)))

(declare-fun b!1005178 () Bool)

(assert (=> b!1005178 (= e!566074 call!42349)))

(declare-fun bm!42346 () Bool)

(assert (=> bm!42346 (= call!42349 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(assert (= (and d!119511 (not res!674440)) b!1005176))

(assert (= (and b!1005176 c!101520) b!1005175))

(assert (= (and b!1005176 (not c!101520)) b!1005177))

(assert (= (and b!1005175 res!674439) b!1005178))

(assert (= (or b!1005178 b!1005177) bm!42346))

(assert (=> b!1005175 m!930565))

(declare-fun m!930573 () Bool)

(assert (=> b!1005175 m!930573))

(declare-fun m!930575 () Bool)

(assert (=> b!1005175 m!930575))

(assert (=> b!1005175 m!930565))

(declare-fun m!930577 () Bool)

(assert (=> b!1005175 m!930577))

(assert (=> b!1005176 m!930565))

(assert (=> b!1005176 m!930565))

(assert (=> b!1005176 m!930569))

(declare-fun m!930579 () Bool)

(assert (=> bm!42346 m!930579))

(assert (=> b!1004876 d!119511))

(declare-fun d!119513 () Bool)

(declare-fun res!674445 () Bool)

(declare-fun e!566080 () Bool)

(assert (=> d!119513 (=> res!674445 e!566080)))

(assert (=> d!119513 (= res!674445 (= (select (arr!30522 a!3219) #b00000000000000000000000000000000) k!2224))))

(assert (=> d!119513 (= (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000) e!566080)))

(declare-fun b!1005183 () Bool)

(declare-fun e!566081 () Bool)

(assert (=> b!1005183 (= e!566080 e!566081)))

(declare-fun res!674446 () Bool)

(assert (=> b!1005183 (=> (not res!674446) (not e!566081))))

(assert (=> b!1005183 (= res!674446 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31025 a!3219)))))

(declare-fun b!1005184 () Bool)

(assert (=> b!1005184 (= e!566081 (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119513 (not res!674445)) b!1005183))

(assert (= (and b!1005183 res!674446) b!1005184))

(assert (=> d!119513 m!930565))

(declare-fun m!930581 () Bool)

(assert (=> b!1005184 m!930581))

(assert (=> b!1004881 d!119513))

(declare-fun d!119515 () Bool)

(assert (=> d!119515 (= (validKeyInArray!0 (select (arr!30522 a!3219) j!170)) (and (not (= (select (arr!30522 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30522 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1004875 d!119515))

(push 1)

(assert (not d!119435))

(assert (not d!119473))

(assert (not b!1005164))

(assert (not d!119463))

(assert (not d!119467))

(assert (not b!1004959))

(assert (not b!1005165))

(assert (not b!1005184))

(assert (not b!1005175))

(assert (not d!119459))

(assert (not b!1005176))

(assert (not bm!42343))

(assert (not b!1005034))

(assert (not b!1005163))

(assert (not b!1005025))

(assert (not b!1005124))

(assert (not b!1005043))

(assert (not bm!42346))

(check-sat)

(pop 1)

(push 1)

(check-sat)

