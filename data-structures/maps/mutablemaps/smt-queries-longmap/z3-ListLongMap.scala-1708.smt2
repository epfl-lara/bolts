; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31388 () Bool)

(assert start!31388)

(declare-fun b!314357 () Bool)

(declare-fun res!170271 () Bool)

(declare-fun e!195771 () Bool)

(assert (=> b!314357 (=> (not res!170271) (not e!195771))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!314357 (= res!170271 (validKeyInArray!0 k0!2441))))

(declare-fun res!170270 () Bool)

(assert (=> start!31388 (=> (not res!170270) (not e!195771))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31388 (= res!170270 (validMask!0 mask!3709))))

(assert (=> start!31388 e!195771))

(declare-datatypes ((array!16057 0))(
  ( (array!16058 (arr!7601 (Array (_ BitVec 32) (_ BitVec 64))) (size!7953 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16057)

(declare-fun array_inv!5555 (array!16057) Bool)

(assert (=> start!31388 (array_inv!5555 a!3293)))

(assert (=> start!31388 true))

(declare-fun b!314358 () Bool)

(declare-fun res!170265 () Bool)

(assert (=> b!314358 (=> (not res!170265) (not e!195771))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!314358 (= res!170265 (and (= (size!7953 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7953 a!3293))))))

(declare-fun b!314359 () Bool)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun e!195772 () Bool)

(declare-fun index!1781 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2752 0))(
  ( (MissingZero!2752 (index!13184 (_ BitVec 32))) (Found!2752 (index!13185 (_ BitVec 32))) (Intermediate!2752 (undefined!3564 Bool) (index!13186 (_ BitVec 32)) (x!31377 (_ BitVec 32))) (Undefined!2752) (MissingVacant!2752 (index!13187 (_ BitVec 32))) )
))
(declare-fun lt!153886 () SeekEntryResult!2752)

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!153887 () SeekEntryResult!2752)

(assert (=> b!314359 (= e!195772 (and (= lt!153887 lt!153886) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7601 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (or (= (select (arr!7601 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7601 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!153887 (Intermediate!2752 false index!1781 resX!52)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16057 (_ BitVec 32)) SeekEntryResult!2752)

(assert (=> b!314359 (= lt!153887 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!314360 () Bool)

(declare-fun res!170268 () Bool)

(assert (=> b!314360 (=> (not res!170268) (not e!195771))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16057 (_ BitVec 32)) SeekEntryResult!2752)

(assert (=> b!314360 (= res!170268 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2752 i!1240)))))

(declare-fun b!314361 () Bool)

(declare-fun res!170269 () Bool)

(assert (=> b!314361 (=> (not res!170269) (not e!195771))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16057 (_ BitVec 32)) Bool)

(assert (=> b!314361 (= res!170269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!314362 () Bool)

(declare-fun res!170267 () Bool)

(assert (=> b!314362 (=> (not res!170267) (not e!195772))))

(assert (=> b!314362 (= res!170267 (and (= (select (arr!7601 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7953 a!3293))))))

(declare-fun b!314363 () Bool)

(assert (=> b!314363 (= e!195771 e!195772)))

(declare-fun res!170264 () Bool)

(assert (=> b!314363 (=> (not res!170264) (not e!195772))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!314363 (= res!170264 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!153886))))

(assert (=> b!314363 (= lt!153886 (Intermediate!2752 false resIndex!52 resX!52))))

(declare-fun b!314364 () Bool)

(declare-fun res!170266 () Bool)

(assert (=> b!314364 (=> (not res!170266) (not e!195771))))

(declare-fun arrayContainsKey!0 (array!16057 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!314364 (= res!170266 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!31388 res!170270) b!314358))

(assert (= (and b!314358 res!170265) b!314357))

(assert (= (and b!314357 res!170271) b!314364))

(assert (= (and b!314364 res!170266) b!314360))

(assert (= (and b!314360 res!170268) b!314361))

(assert (= (and b!314361 res!170269) b!314363))

(assert (= (and b!314363 res!170264) b!314362))

(assert (= (and b!314362 res!170267) b!314359))

(declare-fun m!323939 () Bool)

(assert (=> start!31388 m!323939))

(declare-fun m!323941 () Bool)

(assert (=> start!31388 m!323941))

(declare-fun m!323943 () Bool)

(assert (=> b!314360 m!323943))

(declare-fun m!323945 () Bool)

(assert (=> b!314362 m!323945))

(declare-fun m!323947 () Bool)

(assert (=> b!314364 m!323947))

(declare-fun m!323949 () Bool)

(assert (=> b!314359 m!323949))

(declare-fun m!323951 () Bool)

(assert (=> b!314359 m!323951))

(declare-fun m!323953 () Bool)

(assert (=> b!314363 m!323953))

(assert (=> b!314363 m!323953))

(declare-fun m!323955 () Bool)

(assert (=> b!314363 m!323955))

(declare-fun m!323957 () Bool)

(assert (=> b!314357 m!323957))

(declare-fun m!323959 () Bool)

(assert (=> b!314361 m!323959))

(check-sat (not b!314364) (not b!314363) (not b!314359) (not b!314357) (not start!31388) (not b!314361) (not b!314360))
(check-sat)
(get-model)

(declare-fun d!68635 () Bool)

(assert (=> d!68635 (= (validKeyInArray!0 k0!2441) (and (not (= k0!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!314357 d!68635))

(declare-fun b!314403 () Bool)

(declare-fun e!195795 () Bool)

(declare-fun call!25970 () Bool)

(assert (=> b!314403 (= e!195795 call!25970)))

(declare-fun b!314404 () Bool)

(declare-fun e!195794 () Bool)

(assert (=> b!314404 (= e!195794 call!25970)))

(declare-fun b!314405 () Bool)

(declare-fun e!195796 () Bool)

(assert (=> b!314405 (= e!195796 e!195794)))

(declare-fun c!49661 () Bool)

(assert (=> b!314405 (= c!49661 (validKeyInArray!0 (select (arr!7601 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!314406 () Bool)

(assert (=> b!314406 (= e!195794 e!195795)))

(declare-fun lt!153900 () (_ BitVec 64))

(assert (=> b!314406 (= lt!153900 (select (arr!7601 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9682 0))(
  ( (Unit!9683) )
))
(declare-fun lt!153902 () Unit!9682)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16057 (_ BitVec 64) (_ BitVec 32)) Unit!9682)

(assert (=> b!314406 (= lt!153902 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!153900 #b00000000000000000000000000000000))))

(assert (=> b!314406 (arrayContainsKey!0 a!3293 lt!153900 #b00000000000000000000000000000000)))

(declare-fun lt!153901 () Unit!9682)

(assert (=> b!314406 (= lt!153901 lt!153902)))

(declare-fun res!170306 () Bool)

(assert (=> b!314406 (= res!170306 (= (seekEntryOrOpen!0 (select (arr!7601 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2752 #b00000000000000000000000000000000)))))

(assert (=> b!314406 (=> (not res!170306) (not e!195795))))

(declare-fun bm!25967 () Bool)

(assert (=> bm!25967 (= call!25970 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun d!68637 () Bool)

(declare-fun res!170307 () Bool)

(assert (=> d!68637 (=> res!170307 e!195796)))

(assert (=> d!68637 (= res!170307 (bvsge #b00000000000000000000000000000000 (size!7953 a!3293)))))

(assert (=> d!68637 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!195796)))

(assert (= (and d!68637 (not res!170307)) b!314405))

(assert (= (and b!314405 c!49661) b!314406))

(assert (= (and b!314405 (not c!49661)) b!314404))

(assert (= (and b!314406 res!170306) b!314403))

(assert (= (or b!314403 b!314404) bm!25967))

(declare-fun m!323987 () Bool)

(assert (=> b!314405 m!323987))

(assert (=> b!314405 m!323987))

(declare-fun m!323989 () Bool)

(assert (=> b!314405 m!323989))

(assert (=> b!314406 m!323987))

(declare-fun m!323991 () Bool)

(assert (=> b!314406 m!323991))

(declare-fun m!323993 () Bool)

(assert (=> b!314406 m!323993))

(assert (=> b!314406 m!323987))

(declare-fun m!323995 () Bool)

(assert (=> b!314406 m!323995))

(declare-fun m!323997 () Bool)

(assert (=> bm!25967 m!323997))

(assert (=> b!314361 d!68637))

(declare-fun b!314455 () Bool)

(declare-fun e!195828 () SeekEntryResult!2752)

(assert (=> b!314455 (= e!195828 (Intermediate!2752 false index!1781 x!1427))))

(declare-fun b!314456 () Bool)

(declare-fun lt!153920 () SeekEntryResult!2752)

(assert (=> b!314456 (and (bvsge (index!13186 lt!153920) #b00000000000000000000000000000000) (bvslt (index!13186 lt!153920) (size!7953 a!3293)))))

(declare-fun e!195829 () Bool)

(assert (=> b!314456 (= e!195829 (= (select (arr!7601 a!3293) (index!13186 lt!153920)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!314457 () Bool)

(declare-fun e!195827 () SeekEntryResult!2752)

(assert (=> b!314457 (= e!195827 e!195828)))

(declare-fun c!49678 () Bool)

(declare-fun lt!153921 () (_ BitVec 64))

(assert (=> b!314457 (= c!49678 (or (= lt!153921 k0!2441) (= (bvadd lt!153921 lt!153921) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!314458 () Bool)

(declare-fun e!195830 () Bool)

(assert (=> b!314458 (= e!195830 (bvsge (x!31377 lt!153920) #b01111111111111111111111111111110))))

(declare-fun b!314460 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!314460 (= e!195828 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!314461 () Bool)

(assert (=> b!314461 (and (bvsge (index!13186 lt!153920) #b00000000000000000000000000000000) (bvslt (index!13186 lt!153920) (size!7953 a!3293)))))

(declare-fun res!170328 () Bool)

(assert (=> b!314461 (= res!170328 (= (select (arr!7601 a!3293) (index!13186 lt!153920)) k0!2441))))

(assert (=> b!314461 (=> res!170328 e!195829)))

(declare-fun e!195826 () Bool)

(assert (=> b!314461 (= e!195826 e!195829)))

(declare-fun b!314462 () Bool)

(assert (=> b!314462 (= e!195827 (Intermediate!2752 true index!1781 x!1427))))

(declare-fun b!314463 () Bool)

(assert (=> b!314463 (= e!195830 e!195826)))

(declare-fun res!170326 () Bool)

(get-info :version)

(assert (=> b!314463 (= res!170326 (and ((_ is Intermediate!2752) lt!153920) (not (undefined!3564 lt!153920)) (bvslt (x!31377 lt!153920) #b01111111111111111111111111111110) (bvsge (x!31377 lt!153920) #b00000000000000000000000000000000) (bvsge (x!31377 lt!153920) x!1427)))))

(assert (=> b!314463 (=> (not res!170326) (not e!195826))))

(declare-fun b!314459 () Bool)

(assert (=> b!314459 (and (bvsge (index!13186 lt!153920) #b00000000000000000000000000000000) (bvslt (index!13186 lt!153920) (size!7953 a!3293)))))

(declare-fun res!170327 () Bool)

(assert (=> b!314459 (= res!170327 (= (select (arr!7601 a!3293) (index!13186 lt!153920)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!314459 (=> res!170327 e!195829)))

(declare-fun d!68645 () Bool)

(assert (=> d!68645 e!195830))

(declare-fun c!49679 () Bool)

(assert (=> d!68645 (= c!49679 (and ((_ is Intermediate!2752) lt!153920) (undefined!3564 lt!153920)))))

(assert (=> d!68645 (= lt!153920 e!195827)))

(declare-fun c!49677 () Bool)

(assert (=> d!68645 (= c!49677 (bvsge x!1427 #b01111111111111111111111111111110))))

(assert (=> d!68645 (= lt!153921 (select (arr!7601 a!3293) index!1781))))

(assert (=> d!68645 (validMask!0 mask!3709)))

(assert (=> d!68645 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!153920)))

(assert (= (and d!68645 c!49677) b!314462))

(assert (= (and d!68645 (not c!49677)) b!314457))

(assert (= (and b!314457 c!49678) b!314455))

(assert (= (and b!314457 (not c!49678)) b!314460))

(assert (= (and d!68645 c!49679) b!314458))

(assert (= (and d!68645 (not c!49679)) b!314463))

(assert (= (and b!314463 res!170326) b!314461))

(assert (= (and b!314461 (not res!170328)) b!314459))

(assert (= (and b!314459 (not res!170327)) b!314456))

(declare-fun m!324009 () Bool)

(assert (=> b!314456 m!324009))

(assert (=> b!314459 m!324009))

(declare-fun m!324011 () Bool)

(assert (=> b!314460 m!324011))

(assert (=> b!314460 m!324011))

(declare-fun m!324013 () Bool)

(assert (=> b!314460 m!324013))

(assert (=> d!68645 m!323949))

(assert (=> d!68645 m!323939))

(assert (=> b!314461 m!324009))

(assert (=> b!314359 d!68645))

(declare-fun b!314533 () Bool)

(declare-fun e!195871 () SeekEntryResult!2752)

(declare-fun lt!153960 () SeekEntryResult!2752)

(assert (=> b!314533 (= e!195871 (MissingZero!2752 (index!13186 lt!153960)))))

(declare-fun b!314534 () Bool)

(declare-fun c!49705 () Bool)

(declare-fun lt!153961 () (_ BitVec 64))

(assert (=> b!314534 (= c!49705 (= lt!153961 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!195872 () SeekEntryResult!2752)

(assert (=> b!314534 (= e!195872 e!195871)))

(declare-fun d!68655 () Bool)

(declare-fun lt!153959 () SeekEntryResult!2752)

(assert (=> d!68655 (and (or ((_ is Undefined!2752) lt!153959) (not ((_ is Found!2752) lt!153959)) (and (bvsge (index!13185 lt!153959) #b00000000000000000000000000000000) (bvslt (index!13185 lt!153959) (size!7953 a!3293)))) (or ((_ is Undefined!2752) lt!153959) ((_ is Found!2752) lt!153959) (not ((_ is MissingZero!2752) lt!153959)) (and (bvsge (index!13184 lt!153959) #b00000000000000000000000000000000) (bvslt (index!13184 lt!153959) (size!7953 a!3293)))) (or ((_ is Undefined!2752) lt!153959) ((_ is Found!2752) lt!153959) ((_ is MissingZero!2752) lt!153959) (not ((_ is MissingVacant!2752) lt!153959)) (and (bvsge (index!13187 lt!153959) #b00000000000000000000000000000000) (bvslt (index!13187 lt!153959) (size!7953 a!3293)))) (or ((_ is Undefined!2752) lt!153959) (ite ((_ is Found!2752) lt!153959) (= (select (arr!7601 a!3293) (index!13185 lt!153959)) k0!2441) (ite ((_ is MissingZero!2752) lt!153959) (= (select (arr!7601 a!3293) (index!13184 lt!153959)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2752) lt!153959) (= (select (arr!7601 a!3293) (index!13187 lt!153959)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!195873 () SeekEntryResult!2752)

(assert (=> d!68655 (= lt!153959 e!195873)))

(declare-fun c!49706 () Bool)

(assert (=> d!68655 (= c!49706 (and ((_ is Intermediate!2752) lt!153960) (undefined!3564 lt!153960)))))

(assert (=> d!68655 (= lt!153960 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709))))

(assert (=> d!68655 (validMask!0 mask!3709)))

(assert (=> d!68655 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) lt!153959)))

(declare-fun b!314535 () Bool)

(assert (=> b!314535 (= e!195873 e!195872)))

(assert (=> b!314535 (= lt!153961 (select (arr!7601 a!3293) (index!13186 lt!153960)))))

(declare-fun c!49704 () Bool)

(assert (=> b!314535 (= c!49704 (= lt!153961 k0!2441))))

(declare-fun b!314536 () Bool)

(assert (=> b!314536 (= e!195873 Undefined!2752)))

(declare-fun b!314537 () Bool)

(assert (=> b!314537 (= e!195872 (Found!2752 (index!13186 lt!153960)))))

(declare-fun b!314538 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16057 (_ BitVec 32)) SeekEntryResult!2752)

(assert (=> b!314538 (= e!195871 (seekKeyOrZeroReturnVacant!0 (x!31377 lt!153960) (index!13186 lt!153960) (index!13186 lt!153960) k0!2441 a!3293 mask!3709))))

(assert (= (and d!68655 c!49706) b!314536))

(assert (= (and d!68655 (not c!49706)) b!314535))

(assert (= (and b!314535 c!49704) b!314537))

(assert (= (and b!314535 (not c!49704)) b!314534))

(assert (= (and b!314534 c!49705) b!314533))

(assert (= (and b!314534 (not c!49705)) b!314538))

(assert (=> d!68655 m!323953))

(assert (=> d!68655 m!323953))

(assert (=> d!68655 m!323955))

(declare-fun m!324049 () Bool)

(assert (=> d!68655 m!324049))

(declare-fun m!324051 () Bool)

(assert (=> d!68655 m!324051))

(declare-fun m!324053 () Bool)

(assert (=> d!68655 m!324053))

(assert (=> d!68655 m!323939))

(declare-fun m!324055 () Bool)

(assert (=> b!314535 m!324055))

(declare-fun m!324057 () Bool)

(assert (=> b!314538 m!324057))

(assert (=> b!314360 d!68655))

(declare-fun d!68669 () Bool)

(assert (=> d!68669 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31388 d!68669))

(declare-fun d!68677 () Bool)

(assert (=> d!68677 (= (array_inv!5555 a!3293) (bvsge (size!7953 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31388 d!68677))

(declare-fun b!314548 () Bool)

(declare-fun e!195881 () SeekEntryResult!2752)

(assert (=> b!314548 (= e!195881 (Intermediate!2752 false (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!314549 () Bool)

(declare-fun lt!153964 () SeekEntryResult!2752)

(assert (=> b!314549 (and (bvsge (index!13186 lt!153964) #b00000000000000000000000000000000) (bvslt (index!13186 lt!153964) (size!7953 a!3293)))))

(declare-fun e!195882 () Bool)

(assert (=> b!314549 (= e!195882 (= (select (arr!7601 a!3293) (index!13186 lt!153964)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!314550 () Bool)

(declare-fun e!195880 () SeekEntryResult!2752)

(assert (=> b!314550 (= e!195880 e!195881)))

(declare-fun c!49711 () Bool)

(declare-fun lt!153965 () (_ BitVec 64))

(assert (=> b!314550 (= c!49711 (or (= lt!153965 k0!2441) (= (bvadd lt!153965 lt!153965) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!314551 () Bool)

(declare-fun e!195883 () Bool)

(assert (=> b!314551 (= e!195883 (bvsge (x!31377 lt!153964) #b01111111111111111111111111111110))))

(declare-fun b!314553 () Bool)

(assert (=> b!314553 (= e!195881 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!314554 () Bool)

(assert (=> b!314554 (and (bvsge (index!13186 lt!153964) #b00000000000000000000000000000000) (bvslt (index!13186 lt!153964) (size!7953 a!3293)))))

(declare-fun res!170357 () Bool)

(assert (=> b!314554 (= res!170357 (= (select (arr!7601 a!3293) (index!13186 lt!153964)) k0!2441))))

(assert (=> b!314554 (=> res!170357 e!195882)))

(declare-fun e!195879 () Bool)

(assert (=> b!314554 (= e!195879 e!195882)))

(declare-fun b!314555 () Bool)

(assert (=> b!314555 (= e!195880 (Intermediate!2752 true (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!314556 () Bool)

(assert (=> b!314556 (= e!195883 e!195879)))

(declare-fun res!170355 () Bool)

(assert (=> b!314556 (= res!170355 (and ((_ is Intermediate!2752) lt!153964) (not (undefined!3564 lt!153964)) (bvslt (x!31377 lt!153964) #b01111111111111111111111111111110) (bvsge (x!31377 lt!153964) #b00000000000000000000000000000000) (bvsge (x!31377 lt!153964) #b00000000000000000000000000000000)))))

(assert (=> b!314556 (=> (not res!170355) (not e!195879))))

(declare-fun b!314552 () Bool)

(assert (=> b!314552 (and (bvsge (index!13186 lt!153964) #b00000000000000000000000000000000) (bvslt (index!13186 lt!153964) (size!7953 a!3293)))))

(declare-fun res!170356 () Bool)

(assert (=> b!314552 (= res!170356 (= (select (arr!7601 a!3293) (index!13186 lt!153964)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!314552 (=> res!170356 e!195882)))

(declare-fun d!68679 () Bool)

(assert (=> d!68679 e!195883))

(declare-fun c!49712 () Bool)

(assert (=> d!68679 (= c!49712 (and ((_ is Intermediate!2752) lt!153964) (undefined!3564 lt!153964)))))

(assert (=> d!68679 (= lt!153964 e!195880)))

(declare-fun c!49710 () Bool)

(assert (=> d!68679 (= c!49710 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!68679 (= lt!153965 (select (arr!7601 a!3293) (toIndex!0 k0!2441 mask!3709)))))

(assert (=> d!68679 (validMask!0 mask!3709)))

(assert (=> d!68679 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!153964)))

(assert (= (and d!68679 c!49710) b!314555))

(assert (= (and d!68679 (not c!49710)) b!314550))

(assert (= (and b!314550 c!49711) b!314548))

(assert (= (and b!314550 (not c!49711)) b!314553))

(assert (= (and d!68679 c!49712) b!314551))

(assert (= (and d!68679 (not c!49712)) b!314556))

(assert (= (and b!314556 res!170355) b!314554))

(assert (= (and b!314554 (not res!170357)) b!314552))

(assert (= (and b!314552 (not res!170356)) b!314549))

(declare-fun m!324065 () Bool)

(assert (=> b!314549 m!324065))

(assert (=> b!314552 m!324065))

(assert (=> b!314553 m!323953))

(declare-fun m!324067 () Bool)

(assert (=> b!314553 m!324067))

(assert (=> b!314553 m!324067))

(declare-fun m!324069 () Bool)

(assert (=> b!314553 m!324069))

(assert (=> d!68679 m!323953))

(declare-fun m!324071 () Bool)

(assert (=> d!68679 m!324071))

(assert (=> d!68679 m!323939))

(assert (=> b!314554 m!324065))

(assert (=> b!314363 d!68679))

(declare-fun d!68681 () Bool)

(declare-fun lt!153980 () (_ BitVec 32))

(declare-fun lt!153979 () (_ BitVec 32))

(assert (=> d!68681 (= lt!153980 (bvmul (bvxor lt!153979 (bvlshr lt!153979 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68681 (= lt!153979 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68681 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!170358 (let ((h!5383 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31384 (bvmul (bvxor h!5383 (bvlshr h!5383 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31384 (bvlshr x!31384 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!170358 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!170358 #b00000000000000000000000000000000))))))

(assert (=> d!68681 (= (toIndex!0 k0!2441 mask!3709) (bvand (bvxor lt!153980 (bvlshr lt!153980 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!314363 d!68681))

(declare-fun d!68683 () Bool)

(declare-fun res!170363 () Bool)

(declare-fun e!195897 () Bool)

(assert (=> d!68683 (=> res!170363 e!195897)))

(assert (=> d!68683 (= res!170363 (= (select (arr!7601 a!3293) #b00000000000000000000000000000000) k0!2441))))

(assert (=> d!68683 (= (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000) e!195897)))

(declare-fun b!314579 () Bool)

(declare-fun e!195898 () Bool)

(assert (=> b!314579 (= e!195897 e!195898)))

(declare-fun res!170364 () Bool)

(assert (=> b!314579 (=> (not res!170364) (not e!195898))))

(assert (=> b!314579 (= res!170364 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7953 a!3293)))))

(declare-fun b!314580 () Bool)

(assert (=> b!314580 (= e!195898 (arrayContainsKey!0 a!3293 k0!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68683 (not res!170363)) b!314579))

(assert (= (and b!314579 res!170364) b!314580))

(assert (=> d!68683 m!323987))

(declare-fun m!324083 () Bool)

(assert (=> b!314580 m!324083))

(assert (=> b!314364 d!68683))

(check-sat (not d!68679) (not b!314460) (not b!314405) (not b!314580) (not b!314406) (not d!68655) (not d!68645) (not b!314538) (not bm!25967) (not b!314553))
(check-sat)
