; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31146 () Bool)

(assert start!31146)

(declare-fun b!312949 () Bool)

(declare-fun e!195073 () Bool)

(declare-fun e!195071 () Bool)

(assert (=> b!312949 (= e!195073 e!195071)))

(declare-fun res!169423 () Bool)

(assert (=> b!312949 (=> (not res!169423) (not e!195071))))

(declare-datatypes ((array!16001 0))(
  ( (array!16002 (arr!7579 (Array (_ BitVec 32) (_ BitVec 64))) (size!7931 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16001)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2730 0))(
  ( (MissingZero!2730 (index!13096 (_ BitVec 32))) (Found!2730 (index!13097 (_ BitVec 32))) (Intermediate!2730 (undefined!3542 Bool) (index!13098 (_ BitVec 32)) (x!31272 (_ BitVec 32))) (Undefined!2730) (MissingVacant!2730 (index!13099 (_ BitVec 32))) )
))
(declare-fun lt!153413 () SeekEntryResult!2730)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16001 (_ BitVec 32)) SeekEntryResult!2730)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312949 (= res!169423 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153413))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!312949 (= lt!153413 (Intermediate!2730 false resIndex!52 resX!52))))

(declare-fun b!312950 () Bool)

(declare-fun res!169428 () Bool)

(assert (=> b!312950 (=> (not res!169428) (not e!195073))))

(declare-fun arrayContainsKey!0 (array!16001 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!312950 (= res!169428 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!312951 () Bool)

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!312951 (= e!195071 (and (bvslt resX!52 #b01111111111111111111111111111110) (= (select (arr!7579 a!3293) index!1781) k!2441)))))

(declare-fun b!312953 () Bool)

(declare-fun res!169422 () Bool)

(assert (=> b!312953 (=> (not res!169422) (not e!195071))))

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!312953 (= res!169422 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!153413))))

(declare-fun b!312954 () Bool)

(declare-fun res!169424 () Bool)

(assert (=> b!312954 (=> (not res!169424) (not e!195073))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!312954 (= res!169424 (validKeyInArray!0 k!2441))))

(declare-fun b!312955 () Bool)

(declare-fun res!169427 () Bool)

(assert (=> b!312955 (=> (not res!169427) (not e!195071))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!312955 (= res!169427 (and (= (select (arr!7579 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7931 a!3293))))))

(declare-fun b!312952 () Bool)

(declare-fun res!169420 () Bool)

(assert (=> b!312952 (=> (not res!169420) (not e!195073))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16001 (_ BitVec 32)) SeekEntryResult!2730)

(assert (=> b!312952 (= res!169420 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2730 i!1240)))))

(declare-fun res!169421 () Bool)

(assert (=> start!31146 (=> (not res!169421) (not e!195073))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31146 (= res!169421 (validMask!0 mask!3709))))

(assert (=> start!31146 e!195073))

(declare-fun array_inv!5533 (array!16001) Bool)

(assert (=> start!31146 (array_inv!5533 a!3293)))

(assert (=> start!31146 true))

(declare-fun b!312956 () Bool)

(declare-fun res!169425 () Bool)

(assert (=> b!312956 (=> (not res!169425) (not e!195073))))

(assert (=> b!312956 (= res!169425 (and (= (size!7931 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7931 a!3293))))))

(declare-fun b!312957 () Bool)

(declare-fun res!169426 () Bool)

(assert (=> b!312957 (=> (not res!169426) (not e!195073))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16001 (_ BitVec 32)) Bool)

(assert (=> b!312957 (= res!169426 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!31146 res!169421) b!312956))

(assert (= (and b!312956 res!169425) b!312954))

(assert (= (and b!312954 res!169424) b!312950))

(assert (= (and b!312950 res!169428) b!312952))

(assert (= (and b!312952 res!169420) b!312957))

(assert (= (and b!312957 res!169426) b!312949))

(assert (= (and b!312949 res!169423) b!312955))

(assert (= (and b!312955 res!169427) b!312953))

(assert (= (and b!312953 res!169422) b!312951))

(declare-fun m!323017 () Bool)

(assert (=> start!31146 m!323017))

(declare-fun m!323019 () Bool)

(assert (=> start!31146 m!323019))

(declare-fun m!323021 () Bool)

(assert (=> b!312954 m!323021))

(declare-fun m!323023 () Bool)

(assert (=> b!312957 m!323023))

(declare-fun m!323025 () Bool)

(assert (=> b!312949 m!323025))

(assert (=> b!312949 m!323025))

(declare-fun m!323027 () Bool)

(assert (=> b!312949 m!323027))

(declare-fun m!323029 () Bool)

(assert (=> b!312950 m!323029))

(declare-fun m!323031 () Bool)

(assert (=> b!312951 m!323031))

(declare-fun m!323033 () Bool)

(assert (=> b!312953 m!323033))

(declare-fun m!323035 () Bool)

(assert (=> b!312952 m!323035))

(declare-fun m!323037 () Bool)

(assert (=> b!312955 m!323037))

(push 1)

(assert (not start!31146))

(assert (not b!312954))

(assert (not b!312950))

(assert (not b!312949))

(assert (not b!312953))

(assert (not b!312952))

(assert (not b!312957))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!313038 () Bool)

(declare-fun e!195109 () Bool)

(declare-fun call!25934 () Bool)

(assert (=> b!313038 (= e!195109 call!25934)))

(declare-fun b!313039 () Bool)

(declare-fun e!195108 () Bool)

(assert (=> b!313039 (= e!195108 e!195109)))

(declare-fun lt!153430 () (_ BitVec 64))

(assert (=> b!313039 (= lt!153430 (select (arr!7579 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9658 0))(
  ( (Unit!9659) )
))
(declare-fun lt!153431 () Unit!9658)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16001 (_ BitVec 64) (_ BitVec 32)) Unit!9658)

(assert (=> b!313039 (= lt!153431 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!153430 #b00000000000000000000000000000000))))

(assert (=> b!313039 (arrayContainsKey!0 a!3293 lt!153430 #b00000000000000000000000000000000)))

(declare-fun lt!153432 () Unit!9658)

(assert (=> b!313039 (= lt!153432 lt!153431)))

(declare-fun res!169494 () Bool)

(assert (=> b!313039 (= res!169494 (= (seekEntryOrOpen!0 (select (arr!7579 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2730 #b00000000000000000000000000000000)))))

(assert (=> b!313039 (=> (not res!169494) (not e!195109))))

(declare-fun bm!25931 () Bool)

(assert (=> bm!25931 (= call!25934 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!313040 () Bool)

(declare-fun e!195110 () Bool)

(assert (=> b!313040 (= e!195110 e!195108)))

(declare-fun c!49379 () Bool)

(assert (=> b!313040 (= c!49379 (validKeyInArray!0 (select (arr!7579 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!313041 () Bool)

(assert (=> b!313041 (= e!195108 call!25934)))

(declare-fun d!68401 () Bool)

(declare-fun res!169493 () Bool)

(assert (=> d!68401 (=> res!169493 e!195110)))

(assert (=> d!68401 (= res!169493 (bvsge #b00000000000000000000000000000000 (size!7931 a!3293)))))

(assert (=> d!68401 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!195110)))

(assert (= (and d!68401 (not res!169493)) b!313040))

(assert (= (and b!313040 c!49379) b!313039))

(assert (= (and b!313040 (not c!49379)) b!313041))

(assert (= (and b!313039 res!169494) b!313038))

(assert (= (or b!313038 b!313041) bm!25931))

(declare-fun m!323083 () Bool)

(assert (=> b!313039 m!323083))

(declare-fun m!323085 () Bool)

(assert (=> b!313039 m!323085))

(declare-fun m!323087 () Bool)

(assert (=> b!313039 m!323087))

(assert (=> b!313039 m!323083))

(declare-fun m!323089 () Bool)

(assert (=> b!313039 m!323089))

(declare-fun m!323091 () Bool)

(assert (=> bm!25931 m!323091))

(assert (=> b!313040 m!323083))

(assert (=> b!313040 m!323083))

(declare-fun m!323093 () Bool)

(assert (=> b!313040 m!323093))

(assert (=> b!312957 d!68401))

(declare-fun lt!153456 () SeekEntryResult!2730)

(declare-fun b!313099 () Bool)

(declare-fun e!195142 () SeekEntryResult!2730)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16001 (_ BitVec 32)) SeekEntryResult!2730)

(assert (=> b!313099 (= e!195142 (seekKeyOrZeroReturnVacant!0 (x!31272 lt!153456) (index!13098 lt!153456) (index!13098 lt!153456) k!2441 a!3293 mask!3709))))

(declare-fun b!313100 () Bool)

(declare-fun c!49403 () Bool)

(declare-fun lt!153457 () (_ BitVec 64))

(assert (=> b!313100 (= c!49403 (= lt!153457 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!195143 () SeekEntryResult!2730)

(assert (=> b!313100 (= e!195143 e!195142)))

(declare-fun b!313101 () Bool)

(assert (=> b!313101 (= e!195143 (Found!2730 (index!13098 lt!153456)))))

(declare-fun b!313102 () Bool)

(assert (=> b!313102 (= e!195142 (MissingZero!2730 (index!13098 lt!153456)))))

(declare-fun b!313103 () Bool)

(declare-fun e!195144 () SeekEntryResult!2730)

(assert (=> b!313103 (= e!195144 Undefined!2730)))

(declare-fun d!68405 () Bool)

(declare-fun lt!153455 () SeekEntryResult!2730)

(assert (=> d!68405 (and (or (is-Undefined!2730 lt!153455) (not (is-Found!2730 lt!153455)) (and (bvsge (index!13097 lt!153455) #b00000000000000000000000000000000) (bvslt (index!13097 lt!153455) (size!7931 a!3293)))) (or (is-Undefined!2730 lt!153455) (is-Found!2730 lt!153455) (not (is-MissingZero!2730 lt!153455)) (and (bvsge (index!13096 lt!153455) #b00000000000000000000000000000000) (bvslt (index!13096 lt!153455) (size!7931 a!3293)))) (or (is-Undefined!2730 lt!153455) (is-Found!2730 lt!153455) (is-MissingZero!2730 lt!153455) (not (is-MissingVacant!2730 lt!153455)) (and (bvsge (index!13099 lt!153455) #b00000000000000000000000000000000) (bvslt (index!13099 lt!153455) (size!7931 a!3293)))) (or (is-Undefined!2730 lt!153455) (ite (is-Found!2730 lt!153455) (= (select (arr!7579 a!3293) (index!13097 lt!153455)) k!2441) (ite (is-MissingZero!2730 lt!153455) (= (select (arr!7579 a!3293) (index!13096 lt!153455)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2730 lt!153455) (= (select (arr!7579 a!3293) (index!13099 lt!153455)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!68405 (= lt!153455 e!195144)))

(declare-fun c!49401 () Bool)

(assert (=> d!68405 (= c!49401 (and (is-Intermediate!2730 lt!153456) (undefined!3542 lt!153456)))))

(assert (=> d!68405 (= lt!153456 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!68405 (validMask!0 mask!3709)))

(assert (=> d!68405 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!153455)))

(declare-fun b!313104 () Bool)

(assert (=> b!313104 (= e!195144 e!195143)))

(assert (=> b!313104 (= lt!153457 (select (arr!7579 a!3293) (index!13098 lt!153456)))))

(declare-fun c!49402 () Bool)

(assert (=> b!313104 (= c!49402 (= lt!153457 k!2441))))

(assert (= (and d!68405 c!49401) b!313103))

(assert (= (and d!68405 (not c!49401)) b!313104))

(assert (= (and b!313104 c!49402) b!313101))

(assert (= (and b!313104 (not c!49402)) b!313100))

(assert (= (and b!313100 c!49403) b!313102))

(assert (= (and b!313100 (not c!49403)) b!313099))

(declare-fun m!323115 () Bool)

(assert (=> b!313099 m!323115))

(assert (=> d!68405 m!323017))

(declare-fun m!323117 () Bool)

(assert (=> d!68405 m!323117))

(assert (=> d!68405 m!323025))

(assert (=> d!68405 m!323027))

(declare-fun m!323119 () Bool)

(assert (=> d!68405 m!323119))

(assert (=> d!68405 m!323025))

(declare-fun m!323121 () Bool)

(assert (=> d!68405 m!323121))

(declare-fun m!323123 () Bool)

(assert (=> b!313104 m!323123))

(assert (=> b!312952 d!68405))

(declare-fun d!68421 () Bool)

(declare-fun res!169521 () Bool)

(declare-fun e!195155 () Bool)

(assert (=> d!68421 (=> res!169521 e!195155)))

(assert (=> d!68421 (= res!169521 (= (select (arr!7579 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!68421 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!195155)))

(declare-fun b!313115 () Bool)

(declare-fun e!195156 () Bool)

(assert (=> b!313115 (= e!195155 e!195156)))

(declare-fun res!169522 () Bool)

(assert (=> b!313115 (=> (not res!169522) (not e!195156))))

(assert (=> b!313115 (= res!169522 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7931 a!3293)))))

(declare-fun b!313116 () Bool)

(assert (=> b!313116 (= e!195156 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68421 (not res!169521)) b!313115))

(assert (= (and b!313115 res!169522) b!313116))

(assert (=> d!68421 m!323083))

(declare-fun m!323129 () Bool)

(assert (=> b!313116 m!323129))

(assert (=> b!312950 d!68421))

(declare-fun d!68425 () Bool)

(assert (=> d!68425 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!312954 d!68425))

(declare-fun b!313174 () Bool)

(declare-fun lt!153488 () SeekEntryResult!2730)

(assert (=> b!313174 (and (bvsge (index!13098 lt!153488) #b00000000000000000000000000000000) (bvslt (index!13098 lt!153488) (size!7931 a!3293)))))

(declare-fun res!169540 () Bool)

(assert (=> b!313174 (= res!169540 (= (select (arr!7579 a!3293) (index!13098 lt!153488)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!195192 () Bool)

(assert (=> b!313174 (=> res!169540 e!195192)))

(declare-fun d!68427 () Bool)

(declare-fun e!195190 () Bool)

(assert (=> d!68427 e!195190))

(declare-fun c!49427 () Bool)

(assert (=> d!68427 (= c!49427 (and (is-Intermediate!2730 lt!153488) (undefined!3542 lt!153488)))))

(declare-fun e!195194 () SeekEntryResult!2730)

(assert (=> d!68427 (= lt!153488 e!195194)))

(declare-fun c!49426 () Bool)

(assert (=> d!68427 (= c!49426 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!153489 () (_ BitVec 64))

(assert (=> d!68427 (= lt!153489 (select (arr!7579 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!68427 (validMask!0 mask!3709)))

(assert (=> d!68427 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153488)))

(declare-fun b!313175 () Bool)

(declare-fun e!195191 () SeekEntryResult!2730)

(assert (=> b!313175 (= e!195194 e!195191)))

(declare-fun c!49425 () Bool)

(assert (=> b!313175 (= c!49425 (or (= lt!153489 k!2441) (= (bvadd lt!153489 lt!153489) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!313176 () Bool)

(assert (=> b!313176 (and (bvsge (index!13098 lt!153488) #b00000000000000000000000000000000) (bvslt (index!13098 lt!153488) (size!7931 a!3293)))))

(assert (=> b!313176 (= e!195192 (= (select (arr!7579 a!3293) (index!13098 lt!153488)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!313177 () Bool)

(assert (=> b!313177 (= e!195191 (Intermediate!2730 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!313178 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!313178 (= e!195191 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!313179 () Bool)

(assert (=> b!313179 (= e!195194 (Intermediate!2730 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!313180 () Bool)

(assert (=> b!313180 (and (bvsge (index!13098 lt!153488) #b00000000000000000000000000000000) (bvslt (index!13098 lt!153488) (size!7931 a!3293)))))

(declare-fun res!169541 () Bool)

(assert (=> b!313180 (= res!169541 (= (select (arr!7579 a!3293) (index!13098 lt!153488)) k!2441))))

(assert (=> b!313180 (=> res!169541 e!195192)))

(declare-fun e!195193 () Bool)

(assert (=> b!313180 (= e!195193 e!195192)))

(declare-fun b!313181 () Bool)

(assert (=> b!313181 (= e!195190 e!195193)))

(declare-fun res!169539 () Bool)

(assert (=> b!313181 (= res!169539 (and (is-Intermediate!2730 lt!153488) (not (undefined!3542 lt!153488)) (bvslt (x!31272 lt!153488) #b01111111111111111111111111111110) (bvsge (x!31272 lt!153488) #b00000000000000000000000000000000) (bvsge (x!31272 lt!153488) #b00000000000000000000000000000000)))))

(assert (=> b!313181 (=> (not res!169539) (not e!195193))))

(declare-fun b!313182 () Bool)

(assert (=> b!313182 (= e!195190 (bvsge (x!31272 lt!153488) #b01111111111111111111111111111110))))

(assert (= (and d!68427 c!49426) b!313179))

(assert (= (and d!68427 (not c!49426)) b!313175))

(assert (= (and b!313175 c!49425) b!313177))

(assert (= (and b!313175 (not c!49425)) b!313178))

(assert (= (and d!68427 c!49427) b!313182))

(assert (= (and d!68427 (not c!49427)) b!313181))

(assert (= (and b!313181 res!169539) b!313180))

(assert (= (and b!313180 (not res!169541)) b!313174))

(assert (= (and b!313174 (not res!169540)) b!313176))

(declare-fun m!323161 () Bool)

(assert (=> b!313174 m!323161))

(assert (=> b!313176 m!323161))

(assert (=> b!313180 m!323161))

(assert (=> d!68427 m!323025))

(declare-fun m!323163 () Bool)

(assert (=> d!68427 m!323163))

(assert (=> d!68427 m!323017))

(assert (=> b!313178 m!323025))

(declare-fun m!323165 () Bool)

(assert (=> b!313178 m!323165))

(assert (=> b!313178 m!323165))

(declare-fun m!323167 () Bool)

(assert (=> b!313178 m!323167))

(assert (=> b!312949 d!68427))

(declare-fun d!68443 () Bool)

(declare-fun lt!153501 () (_ BitVec 32))

(declare-fun lt!153500 () (_ BitVec 32))

(assert (=> d!68443 (= lt!153501 (bvmul (bvxor lt!153500 (bvlshr lt!153500 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68443 (= lt!153500 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68443 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!169542 (let ((h!5371 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31280 (bvmul (bvxor h!5371 (bvlshr h!5371 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31280 (bvlshr x!31280 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!169542 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!169542 #b00000000000000000000000000000000))))))

(assert (=> d!68443 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!153501 (bvlshr lt!153501 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!312949 d!68443))

(declare-fun d!68445 () Bool)

(assert (=> d!68445 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31146 d!68445))

(declare-fun d!68447 () Bool)

(assert (=> d!68447 (= (array_inv!5533 a!3293) (bvsge (size!7931 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31146 d!68447))

(declare-fun b!313207 () Bool)

(declare-fun lt!153511 () SeekEntryResult!2730)

(assert (=> b!313207 (and (bvsge (index!13098 lt!153511) #b00000000000000000000000000000000) (bvslt (index!13098 lt!153511) (size!7931 a!3293)))))

(declare-fun res!169550 () Bool)

(assert (=> b!313207 (= res!169550 (= (select (arr!7579 a!3293) (index!13098 lt!153511)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!195212 () Bool)

(assert (=> b!313207 (=> res!169550 e!195212)))

(declare-fun d!68449 () Bool)

(declare-fun e!195210 () Bool)

(assert (=> d!68449 e!195210))

(declare-fun c!49439 () Bool)

(assert (=> d!68449 (= c!49439 (and (is-Intermediate!2730 lt!153511) (undefined!3542 lt!153511)))))

(declare-fun e!195214 () SeekEntryResult!2730)

(assert (=> d!68449 (= lt!153511 e!195214)))

(declare-fun c!49438 () Bool)

(assert (=> d!68449 (= c!49438 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!153512 () (_ BitVec 64))

(assert (=> d!68449 (= lt!153512 (select (arr!7579 a!3293) index!1781))))

(assert (=> d!68449 (validMask!0 mask!3709)))

(assert (=> d!68449 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!153511)))

(declare-fun b!313208 () Bool)

(declare-fun e!195211 () SeekEntryResult!2730)

(assert (=> b!313208 (= e!195214 e!195211)))

(declare-fun c!49437 () Bool)

(assert (=> b!313208 (= c!49437 (or (= lt!153512 k!2441) (= (bvadd lt!153512 lt!153512) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!313209 () Bool)

(assert (=> b!313209 (and (bvsge (index!13098 lt!153511) #b00000000000000000000000000000000) (bvslt (index!13098 lt!153511) (size!7931 a!3293)))))

(assert (=> b!313209 (= e!195212 (= (select (arr!7579 a!3293) (index!13098 lt!153511)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!313210 () Bool)

(assert (=> b!313210 (= e!195211 (Intermediate!2730 false index!1781 x!1427))))

(declare-fun b!313211 () Bool)

(assert (=> b!313211 (= e!195211 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!313212 () Bool)

(assert (=> b!313212 (= e!195214 (Intermediate!2730 true index!1781 x!1427))))

(declare-fun b!313213 () Bool)

(assert (=> b!313213 (and (bvsge (index!13098 lt!153511) #b00000000000000000000000000000000) (bvslt (index!13098 lt!153511) (size!7931 a!3293)))))

(declare-fun res!169551 () Bool)

(assert (=> b!313213 (= res!169551 (= (select (arr!7579 a!3293) (index!13098 lt!153511)) k!2441))))

(assert (=> b!313213 (=> res!169551 e!195212)))

(declare-fun e!195213 () Bool)

(assert (=> b!313213 (= e!195213 e!195212)))

(declare-fun b!313214 () Bool)

(assert (=> b!313214 (= e!195210 e!195213)))

(declare-fun res!169549 () Bool)

(assert (=> b!313214 (= res!169549 (and (is-Intermediate!2730 lt!153511) (not (undefined!3542 lt!153511)) (bvslt (x!31272 lt!153511) #b01111111111111111111111111111110) (bvsge (x!31272 lt!153511) #b00000000000000000000000000000000) (bvsge (x!31272 lt!153511) x!1427)))))

(assert (=> b!313214 (=> (not res!169549) (not e!195213))))

(declare-fun b!313215 () Bool)

(assert (=> b!313215 (= e!195210 (bvsge (x!31272 lt!153511) #b01111111111111111111111111111110))))

(assert (= (and d!68449 c!49438) b!313212))

(assert (= (and d!68449 (not c!49438)) b!313208))

(assert (= (and b!313208 c!49437) b!313210))

(assert (= (and b!313208 (not c!49437)) b!313211))

(assert (= (and d!68449 c!49439) b!313215))

(assert (= (and d!68449 (not c!49439)) b!313214))

(assert (= (and b!313214 res!169549) b!313213))

(assert (= (and b!313213 (not res!169551)) b!313207))

(assert (= (and b!313207 (not res!169550)) b!313209))

(declare-fun m!323179 () Bool)

(assert (=> b!313207 m!323179))

(assert (=> b!313209 m!323179))

(assert (=> b!313213 m!323179))

(assert (=> d!68449 m!323031))

(assert (=> d!68449 m!323017))

(declare-fun m!323181 () Bool)

(assert (=> b!313211 m!323181))

(assert (=> b!313211 m!323181))

(declare-fun m!323183 () Bool)

(assert (=> b!313211 m!323183))

(assert (=> b!312953 d!68449))

(push 1)

(assert (not bm!25931))

(assert (not b!313040))

(assert (not b!313099))

(assert (not b!313178))

(assert (not d!68405))

(assert (not d!68427))

(assert (not b!313116))

