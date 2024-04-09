; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31150 () Bool)

(assert start!31150)

(declare-fun res!169477 () Bool)

(declare-fun e!195089 () Bool)

(assert (=> start!31150 (=> (not res!169477) (not e!195089))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31150 (= res!169477 (validMask!0 mask!3709))))

(assert (=> start!31150 e!195089))

(declare-datatypes ((array!16005 0))(
  ( (array!16006 (arr!7581 (Array (_ BitVec 32) (_ BitVec 64))) (size!7933 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16005)

(declare-fun array_inv!5535 (array!16005) Bool)

(assert (=> start!31150 (array_inv!5535 a!3293)))

(assert (=> start!31150 true))

(declare-fun b!313003 () Bool)

(declare-fun res!169480 () Bool)

(assert (=> b!313003 (=> (not res!169480) (not e!195089))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16005 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!313003 (= res!169480 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!313004 () Bool)

(declare-fun res!169478 () Bool)

(declare-fun e!195090 () Bool)

(assert (=> b!313004 (=> (not res!169478) (not e!195090))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!313004 (= res!169478 (and (= (select (arr!7581 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7933 a!3293))))))

(declare-fun b!313005 () Bool)

(declare-fun res!169482 () Bool)

(assert (=> b!313005 (=> (not res!169482) (not e!195089))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!313005 (= res!169482 (validKeyInArray!0 k!2441))))

(declare-fun b!313006 () Bool)

(declare-fun res!169481 () Bool)

(assert (=> b!313006 (=> (not res!169481) (not e!195089))))

(declare-datatypes ((SeekEntryResult!2732 0))(
  ( (MissingZero!2732 (index!13104 (_ BitVec 32))) (Found!2732 (index!13105 (_ BitVec 32))) (Intermediate!2732 (undefined!3544 Bool) (index!13106 (_ BitVec 32)) (x!31274 (_ BitVec 32))) (Undefined!2732) (MissingVacant!2732 (index!13107 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16005 (_ BitVec 32)) SeekEntryResult!2732)

(assert (=> b!313006 (= res!169481 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2732 i!1240)))))

(declare-fun b!313007 () Bool)

(assert (=> b!313007 (= e!195089 e!195090)))

(declare-fun res!169474 () Bool)

(assert (=> b!313007 (=> (not res!169474) (not e!195090))))

(declare-fun lt!153419 () SeekEntryResult!2732)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16005 (_ BitVec 32)) SeekEntryResult!2732)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!313007 (= res!169474 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153419))))

(assert (=> b!313007 (= lt!153419 (Intermediate!2732 false resIndex!52 resX!52))))

(declare-fun b!313008 () Bool)

(declare-fun res!169479 () Bool)

(assert (=> b!313008 (=> (not res!169479) (not e!195089))))

(assert (=> b!313008 (= res!169479 (and (= (size!7933 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7933 a!3293))))))

(declare-fun b!313009 () Bool)

(declare-fun res!169476 () Bool)

(assert (=> b!313009 (=> (not res!169476) (not e!195090))))

(assert (=> b!313009 (= res!169476 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!153419))))

(declare-fun b!313010 () Bool)

(declare-fun res!169475 () Bool)

(assert (=> b!313010 (=> (not res!169475) (not e!195089))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16005 (_ BitVec 32)) Bool)

(assert (=> b!313010 (= res!169475 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!313011 () Bool)

(assert (=> b!313011 (= e!195090 (and (bvslt resX!52 #b01111111111111111111111111111110) (= (select (arr!7581 a!3293) index!1781) k!2441)))))

(assert (= (and start!31150 res!169477) b!313008))

(assert (= (and b!313008 res!169479) b!313005))

(assert (= (and b!313005 res!169482) b!313003))

(assert (= (and b!313003 res!169480) b!313006))

(assert (= (and b!313006 res!169481) b!313010))

(assert (= (and b!313010 res!169475) b!313007))

(assert (= (and b!313007 res!169474) b!313004))

(assert (= (and b!313004 res!169478) b!313009))

(assert (= (and b!313009 res!169476) b!313011))

(declare-fun m!323061 () Bool)

(assert (=> b!313010 m!323061))

(declare-fun m!323063 () Bool)

(assert (=> b!313007 m!323063))

(assert (=> b!313007 m!323063))

(declare-fun m!323065 () Bool)

(assert (=> b!313007 m!323065))

(declare-fun m!323067 () Bool)

(assert (=> b!313006 m!323067))

(declare-fun m!323069 () Bool)

(assert (=> b!313005 m!323069))

(declare-fun m!323071 () Bool)

(assert (=> b!313004 m!323071))

(declare-fun m!323073 () Bool)

(assert (=> b!313009 m!323073))

(declare-fun m!323075 () Bool)

(assert (=> b!313011 m!323075))

(declare-fun m!323077 () Bool)

(assert (=> start!31150 m!323077))

(declare-fun m!323079 () Bool)

(assert (=> start!31150 m!323079))

(declare-fun m!323081 () Bool)

(assert (=> b!313003 m!323081))

(push 1)

(assert (not b!313007))

(assert (not b!313005))

(assert (not b!313010))

(assert (not b!313006))

(assert (not start!31150))

(assert (not b!313009))

(assert (not b!313003))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!313083 () Bool)

(declare-fun lt!153453 () SeekEntryResult!2732)

(assert (=> b!313083 (and (bvsge (index!13106 lt!153453) #b00000000000000000000000000000000) (bvslt (index!13106 lt!153453) (size!7933 a!3293)))))

(declare-fun e!195135 () Bool)

(assert (=> b!313083 (= e!195135 (= (select (arr!7581 a!3293) (index!13106 lt!153453)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!313084 () Bool)

(declare-fun e!195136 () SeekEntryResult!2732)

(assert (=> b!313084 (= e!195136 (Intermediate!2732 false index!1781 x!1427))))

(declare-fun b!313085 () Bool)

(declare-fun e!195134 () SeekEntryResult!2732)

(assert (=> b!313085 (= e!195134 (Intermediate!2732 true index!1781 x!1427))))

(declare-fun b!313086 () Bool)

(assert (=> b!313086 (and (bvsge (index!13106 lt!153453) #b00000000000000000000000000000000) (bvslt (index!13106 lt!153453) (size!7933 a!3293)))))

(declare-fun res!169509 () Bool)

(assert (=> b!313086 (= res!169509 (= (select (arr!7581 a!3293) (index!13106 lt!153453)) k!2441))))

(assert (=> b!313086 (=> res!169509 e!195135)))

(declare-fun e!195137 () Bool)

(assert (=> b!313086 (= e!195137 e!195135)))

(declare-fun b!313087 () Bool)

(declare-fun e!195133 () Bool)

(assert (=> b!313087 (= e!195133 e!195137)))

(declare-fun res!169510 () Bool)

(assert (=> b!313087 (= res!169510 (and (is-Intermediate!2732 lt!153453) (not (undefined!3544 lt!153453)) (bvslt (x!31274 lt!153453) #b01111111111111111111111111111110) (bvsge (x!31274 lt!153453) #b00000000000000000000000000000000) (bvsge (x!31274 lt!153453) x!1427)))))

(assert (=> b!313087 (=> (not res!169510) (not e!195137))))

(declare-fun b!313088 () Bool)

(assert (=> b!313088 (= e!195134 e!195136)))

(declare-fun c!49395 () Bool)

(declare-fun lt!153454 () (_ BitVec 64))

(assert (=> b!313088 (= c!49395 (or (= lt!153454 k!2441) (= (bvadd lt!153454 lt!153454) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!313089 () Bool)

(assert (=> b!313089 (and (bvsge (index!13106 lt!153453) #b00000000000000000000000000000000) (bvslt (index!13106 lt!153453) (size!7933 a!3293)))))

(declare-fun res!169508 () Bool)

(assert (=> b!313089 (= res!169508 (= (select (arr!7581 a!3293) (index!13106 lt!153453)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!313089 (=> res!169508 e!195135)))

(declare-fun b!313090 () Bool)

(assert (=> b!313090 (= e!195133 (bvsge (x!31274 lt!153453) #b01111111111111111111111111111110))))

(declare-fun d!68403 () Bool)

(assert (=> d!68403 e!195133))

(declare-fun c!49396 () Bool)

(assert (=> d!68403 (= c!49396 (and (is-Intermediate!2732 lt!153453) (undefined!3544 lt!153453)))))

(assert (=> d!68403 (= lt!153453 e!195134)))

(declare-fun c!49394 () Bool)

(assert (=> d!68403 (= c!49394 (bvsge x!1427 #b01111111111111111111111111111110))))

(assert (=> d!68403 (= lt!153454 (select (arr!7581 a!3293) index!1781))))

(assert (=> d!68403 (validMask!0 mask!3709)))

(assert (=> d!68403 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!153453)))

(declare-fun b!313082 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!313082 (= e!195136 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(assert (= (and d!68403 c!49394) b!313085))

(assert (= (and d!68403 (not c!49394)) b!313088))

(assert (= (and b!313088 c!49395) b!313084))

(assert (= (and b!313088 (not c!49395)) b!313082))

(assert (= (and d!68403 c!49396) b!313090))

(assert (= (and d!68403 (not c!49396)) b!313087))

(assert (= (and b!313087 res!169510) b!313086))

(assert (= (and b!313086 (not res!169509)) b!313089))

(assert (= (and b!313089 (not res!169508)) b!313083))

(assert (=> d!68403 m!323075))

(assert (=> d!68403 m!323077))

(declare-fun m!323109 () Bool)

(assert (=> b!313083 m!323109))

(assert (=> b!313089 m!323109))

(assert (=> b!313086 m!323109))

(declare-fun m!323111 () Bool)

(assert (=> b!313082 m!323111))

(assert (=> b!313082 m!323111))

(declare-fun m!323113 () Bool)

(assert (=> b!313082 m!323113))

(assert (=> b!313009 d!68403))

(declare-fun d!68413 () Bool)

(assert (=> d!68413 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31150 d!68413))

(declare-fun d!68429 () Bool)

(assert (=> d!68429 (= (array_inv!5535 a!3293) (bvsge (size!7933 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31150 d!68429))

(declare-fun d!68431 () Bool)

(assert (=> d!68431 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!313005 d!68431))

(declare-fun b!313125 () Bool)

(declare-fun e!195164 () Bool)

(declare-fun call!25937 () Bool)

(assert (=> b!313125 (= e!195164 call!25937)))

(declare-fun b!313126 () Bool)

(declare-fun e!195163 () Bool)

(declare-fun e!195165 () Bool)

(assert (=> b!313126 (= e!195163 e!195165)))

(declare-fun c!49406 () Bool)

(assert (=> b!313126 (= c!49406 (validKeyInArray!0 (select (arr!7581 a!3293) #b00000000000000000000000000000000)))))

(declare-fun bm!25934 () Bool)

(assert (=> bm!25934 (= call!25937 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun d!68433 () Bool)

(declare-fun res!169528 () Bool)

(assert (=> d!68433 (=> res!169528 e!195163)))

(assert (=> d!68433 (= res!169528 (bvsge #b00000000000000000000000000000000 (size!7933 a!3293)))))

(assert (=> d!68433 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!195163)))

(declare-fun b!313127 () Bool)

(assert (=> b!313127 (= e!195165 call!25937)))

(declare-fun b!313128 () Bool)

(assert (=> b!313128 (= e!195165 e!195164)))

(declare-fun lt!153465 () (_ BitVec 64))

(assert (=> b!313128 (= lt!153465 (select (arr!7581 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9660 0))(
  ( (Unit!9661) )
))
(declare-fun lt!153464 () Unit!9660)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16005 (_ BitVec 64) (_ BitVec 32)) Unit!9660)

(assert (=> b!313128 (= lt!153464 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!153465 #b00000000000000000000000000000000))))

(assert (=> b!313128 (arrayContainsKey!0 a!3293 lt!153465 #b00000000000000000000000000000000)))

(declare-fun lt!153466 () Unit!9660)

(assert (=> b!313128 (= lt!153466 lt!153464)))

(declare-fun res!169527 () Bool)

(assert (=> b!313128 (= res!169527 (= (seekEntryOrOpen!0 (select (arr!7581 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2732 #b00000000000000000000000000000000)))))

(assert (=> b!313128 (=> (not res!169527) (not e!195164))))

(assert (= (and d!68433 (not res!169528)) b!313126))

(assert (= (and b!313126 c!49406) b!313128))

(assert (= (and b!313126 (not c!49406)) b!313127))

(assert (= (and b!313128 res!169527) b!313125))

(assert (= (or b!313125 b!313127) bm!25934))

(declare-fun m!323131 () Bool)

(assert (=> b!313126 m!323131))

(assert (=> b!313126 m!323131))

(declare-fun m!323133 () Bool)

(assert (=> b!313126 m!323133))

(declare-fun m!323135 () Bool)

(assert (=> bm!25934 m!323135))

(assert (=> b!313128 m!323131))

(declare-fun m!323137 () Bool)

(assert (=> b!313128 m!323137))

(declare-fun m!323139 () Bool)

(assert (=> b!313128 m!323139))

(assert (=> b!313128 m!323131))

(declare-fun m!323141 () Bool)

(assert (=> b!313128 m!323141))

(assert (=> b!313010 d!68433))

(declare-fun b!313130 () Bool)

(declare-fun lt!153471 () SeekEntryResult!2732)

(assert (=> b!313130 (and (bvsge (index!13106 lt!153471) #b00000000000000000000000000000000) (bvslt (index!13106 lt!153471) (size!7933 a!3293)))))

(declare-fun e!195168 () Bool)

(assert (=> b!313130 (= e!195168 (= (select (arr!7581 a!3293) (index!13106 lt!153471)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!313131 () Bool)

(declare-fun e!195169 () SeekEntryResult!2732)

(assert (=> b!313131 (= e!195169 (Intermediate!2732 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!313132 () Bool)

(declare-fun e!195167 () SeekEntryResult!2732)

(assert (=> b!313132 (= e!195167 (Intermediate!2732 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!313133 () Bool)

(assert (=> b!313133 (and (bvsge (index!13106 lt!153471) #b00000000000000000000000000000000) (bvslt (index!13106 lt!153471) (size!7933 a!3293)))))

(declare-fun res!169530 () Bool)

(assert (=> b!313133 (= res!169530 (= (select (arr!7581 a!3293) (index!13106 lt!153471)) k!2441))))

(assert (=> b!313133 (=> res!169530 e!195168)))

(declare-fun e!195170 () Bool)

(assert (=> b!313133 (= e!195170 e!195168)))

(declare-fun b!313134 () Bool)

(declare-fun e!195166 () Bool)

(assert (=> b!313134 (= e!195166 e!195170)))

(declare-fun res!169531 () Bool)

(assert (=> b!313134 (= res!169531 (and (is-Intermediate!2732 lt!153471) (not (undefined!3544 lt!153471)) (bvslt (x!31274 lt!153471) #b01111111111111111111111111111110) (bvsge (x!31274 lt!153471) #b00000000000000000000000000000000) (bvsge (x!31274 lt!153471) #b00000000000000000000000000000000)))))

(assert (=> b!313134 (=> (not res!169531) (not e!195170))))

(declare-fun b!313135 () Bool)

(assert (=> b!313135 (= e!195167 e!195169)))

(declare-fun c!49408 () Bool)

(declare-fun lt!153472 () (_ BitVec 64))

(assert (=> b!313135 (= c!49408 (or (= lt!153472 k!2441) (= (bvadd lt!153472 lt!153472) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!313136 () Bool)

(assert (=> b!313136 (and (bvsge (index!13106 lt!153471) #b00000000000000000000000000000000) (bvslt (index!13106 lt!153471) (size!7933 a!3293)))))

(declare-fun res!169529 () Bool)

(assert (=> b!313136 (= res!169529 (= (select (arr!7581 a!3293) (index!13106 lt!153471)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!313136 (=> res!169529 e!195168)))

(declare-fun b!313137 () Bool)

(assert (=> b!313137 (= e!195166 (bvsge (x!31274 lt!153471) #b01111111111111111111111111111110))))

(declare-fun d!68435 () Bool)

(assert (=> d!68435 e!195166))

(declare-fun c!49409 () Bool)

(assert (=> d!68435 (= c!49409 (and (is-Intermediate!2732 lt!153471) (undefined!3544 lt!153471)))))

(assert (=> d!68435 (= lt!153471 e!195167)))

(declare-fun c!49407 () Bool)

(assert (=> d!68435 (= c!49407 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!68435 (= lt!153472 (select (arr!7581 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!68435 (validMask!0 mask!3709)))

(assert (=> d!68435 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153471)))

(declare-fun b!313129 () Bool)

(assert (=> b!313129 (= e!195169 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(assert (= (and d!68435 c!49407) b!313132))

(assert (= (and d!68435 (not c!49407)) b!313135))

(assert (= (and b!313135 c!49408) b!313131))

(assert (= (and b!313135 (not c!49408)) b!313129))

(assert (= (and d!68435 c!49409) b!313137))

(assert (= (and d!68435 (not c!49409)) b!313134))

(assert (= (and b!313134 res!169531) b!313133))

(assert (= (and b!313133 (not res!169530)) b!313136))

(assert (= (and b!313136 (not res!169529)) b!313130))

(assert (=> d!68435 m!323063))

(declare-fun m!323143 () Bool)

(assert (=> d!68435 m!323143))

(assert (=> d!68435 m!323077))

(declare-fun m!323145 () Bool)

(assert (=> b!313130 m!323145))

(assert (=> b!313136 m!323145))

(assert (=> b!313133 m!323145))

(assert (=> b!313129 m!323063))

(declare-fun m!323147 () Bool)

(assert (=> b!313129 m!323147))

(assert (=> b!313129 m!323147))

(declare-fun m!323149 () Bool)

(assert (=> b!313129 m!323149))

(assert (=> b!313007 d!68435))

(declare-fun d!68437 () Bool)

(declare-fun lt!153487 () (_ BitVec 32))

(declare-fun lt!153486 () (_ BitVec 32))

(assert (=> d!68437 (= lt!153487 (bvmul (bvxor lt!153486 (bvlshr lt!153486 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68437 (= lt!153486 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68437 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!169532 (let ((h!5370 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31278 (bvmul (bvxor h!5370 (bvlshr h!5370 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31278 (bvlshr x!31278 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!169532 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!169532 #b00000000000000000000000000000000))))))

(assert (=> d!68437 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!153487 (bvlshr lt!153487 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!313007 d!68437))

(declare-fun b!313216 () Bool)

(declare-fun e!195215 () SeekEntryResult!2732)

(declare-fun lt!153513 () SeekEntryResult!2732)

(assert (=> b!313216 (= e!195215 (Found!2732 (index!13106 lt!153513)))))

(declare-fun b!313217 () Bool)

(declare-fun e!195216 () SeekEntryResult!2732)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16005 (_ BitVec 32)) SeekEntryResult!2732)

(assert (=> b!313217 (= e!195216 (seekKeyOrZeroReturnVacant!0 (x!31274 lt!153513) (index!13106 lt!153513) (index!13106 lt!153513) k!2441 a!3293 mask!3709))))

(declare-fun b!313218 () Bool)

(assert (=> b!313218 (= e!195216 (MissingZero!2732 (index!13106 lt!153513)))))

(declare-fun b!313219 () Bool)

(declare-fun c!49441 () Bool)

(declare-fun lt!153515 () (_ BitVec 64))

(assert (=> b!313219 (= c!49441 (= lt!153515 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!313219 (= e!195215 e!195216)))

(declare-fun b!313220 () Bool)

(declare-fun e!195217 () SeekEntryResult!2732)

(assert (=> b!313220 (= e!195217 Undefined!2732)))

(declare-fun b!313221 () Bool)

(assert (=> b!313221 (= e!195217 e!195215)))

(assert (=> b!313221 (= lt!153515 (select (arr!7581 a!3293) (index!13106 lt!153513)))))

(declare-fun c!49442 () Bool)

(assert (=> b!313221 (= c!49442 (= lt!153515 k!2441))))

(declare-fun d!68441 () Bool)

(declare-fun lt!153514 () SeekEntryResult!2732)

(assert (=> d!68441 (and (or (is-Undefined!2732 lt!153514) (not (is-Found!2732 lt!153514)) (and (bvsge (index!13105 lt!153514) #b00000000000000000000000000000000) (bvslt (index!13105 lt!153514) (size!7933 a!3293)))) (or (is-Undefined!2732 lt!153514) (is-Found!2732 lt!153514) (not (is-MissingZero!2732 lt!153514)) (and (bvsge (index!13104 lt!153514) #b00000000000000000000000000000000) (bvslt (index!13104 lt!153514) (size!7933 a!3293)))) (or (is-Undefined!2732 lt!153514) (is-Found!2732 lt!153514) (is-MissingZero!2732 lt!153514) (not (is-MissingVacant!2732 lt!153514)) (and (bvsge (index!13107 lt!153514) #b00000000000000000000000000000000) (bvslt (index!13107 lt!153514) (size!7933 a!3293)))) (or (is-Undefined!2732 lt!153514) (ite (is-Found!2732 lt!153514) (= (select (arr!7581 a!3293) (index!13105 lt!153514)) k!2441) (ite (is-MissingZero!2732 lt!153514) (= (select (arr!7581 a!3293) (index!13104 lt!153514)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2732 lt!153514) (= (select (arr!7581 a!3293) (index!13107 lt!153514)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!68441 (= lt!153514 e!195217)))

(declare-fun c!49440 () Bool)

(assert (=> d!68441 (= c!49440 (and (is-Intermediate!2732 lt!153513) (undefined!3544 lt!153513)))))

(assert (=> d!68441 (= lt!153513 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!68441 (validMask!0 mask!3709)))

(assert (=> d!68441 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!153514)))

(assert (= (and d!68441 c!49440) b!313220))

(assert (= (and d!68441 (not c!49440)) b!313221))

(assert (= (and b!313221 c!49442) b!313216))

(assert (= (and b!313221 (not c!49442)) b!313219))

(assert (= (and b!313219 c!49441) b!313218))

(assert (= (and b!313219 (not c!49441)) b!313217))

(declare-fun m!323185 () Bool)

(assert (=> b!313217 m!323185))

(declare-fun m!323187 () Bool)

(assert (=> b!313221 m!323187))

(assert (=> d!68441 m!323063))

(assert (=> d!68441 m!323063))

(assert (=> d!68441 m!323065))

(declare-fun m!323189 () Bool)

(assert (=> d!68441 m!323189))

(declare-fun m!323191 () Bool)

(assert (=> d!68441 m!323191))

(declare-fun m!323193 () Bool)

(assert (=> d!68441 m!323193))

(assert (=> d!68441 m!323077))

(assert (=> b!313006 d!68441))

(declare-fun d!68451 () Bool)

(declare-fun res!169556 () Bool)

(declare-fun e!195222 () Bool)

(assert (=> d!68451 (=> res!169556 e!195222)))

(assert (=> d!68451 (= res!169556 (= (select (arr!7581 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!68451 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!195222)))

(declare-fun b!313226 () Bool)

(declare-fun e!195223 () Bool)

(assert (=> b!313226 (= e!195222 e!195223)))

(declare-fun res!169557 () Bool)

(assert (=> b!313226 (=> (not res!169557) (not e!195223))))

(assert (=> b!313226 (= res!169557 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7933 a!3293)))))

(declare-fun b!313227 () Bool)

(assert (=> b!313227 (= e!195223 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68451 (not res!169556)) b!313226))

(assert (= (and b!313226 res!169557) b!313227))

(assert (=> d!68451 m!323131))

(declare-fun m!323195 () Bool)

(assert (=> b!313227 m!323195))

(assert (=> b!313003 d!68451))

(push 1)

