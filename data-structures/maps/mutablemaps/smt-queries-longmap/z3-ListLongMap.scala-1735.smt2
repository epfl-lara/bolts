; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31868 () Bool)

(assert start!31868)

(declare-fun b!318399 () Bool)

(declare-fun e!197835 () Bool)

(declare-fun e!197836 () Bool)

(assert (=> b!318399 (= e!197835 e!197836)))

(declare-fun res!173138 () Bool)

(assert (=> b!318399 (=> (not res!173138) (not e!197836))))

(declare-datatypes ((array!16237 0))(
  ( (array!16238 (arr!7682 (Array (_ BitVec 32) (_ BitVec 64))) (size!8034 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16237)

(declare-datatypes ((SeekEntryResult!2833 0))(
  ( (MissingZero!2833 (index!13508 (_ BitVec 32))) (Found!2833 (index!13509 (_ BitVec 32))) (Intermediate!2833 (undefined!3645 Bool) (index!13510 (_ BitVec 32)) (x!31725 (_ BitVec 32))) (Undefined!2833) (MissingVacant!2833 (index!13511 (_ BitVec 32))) )
))
(declare-fun lt!155376 () SeekEntryResult!2833)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun lt!155378 () SeekEntryResult!2833)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!318399 (= res!173138 (and (= lt!155378 lt!155376) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7682 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16237 (_ BitVec 32)) SeekEntryResult!2833)

(assert (=> b!318399 (= lt!155378 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!318400 () Bool)

(declare-fun res!173136 () Bool)

(declare-fun e!197839 () Bool)

(assert (=> b!318400 (=> (not res!173136) (not e!197839))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!318400 (= res!173136 (validKeyInArray!0 k0!2441))))

(declare-fun b!318401 () Bool)

(declare-fun res!173141 () Bool)

(assert (=> b!318401 (=> (not res!173141) (not e!197839))))

(declare-fun arrayContainsKey!0 (array!16237 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!318401 (= res!173141 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!318402 () Bool)

(declare-fun lt!155375 () (_ BitVec 32))

(assert (=> b!318402 (= e!197836 (not (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (and (bvsge lt!155375 #b00000000000000000000000000000000) (bvslt lt!155375 (size!8034 a!3293))))))))

(declare-fun e!197838 () Bool)

(assert (=> b!318402 e!197838))

(declare-fun res!173145 () Bool)

(assert (=> b!318402 (=> (not res!173145) (not e!197838))))

(assert (=> b!318402 (= res!173145 (= lt!155378 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155375 k0!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318402 (= lt!155375 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!318403 () Bool)

(declare-fun res!173144 () Bool)

(assert (=> b!318403 (=> (not res!173144) (not e!197839))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!318403 (= res!173144 (and (= (size!8034 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8034 a!3293))))))

(declare-fun b!318404 () Bool)

(assert (=> b!318404 (= e!197839 e!197835)))

(declare-fun res!173142 () Bool)

(assert (=> b!318404 (=> (not res!173142) (not e!197835))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318404 (= res!173142 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!155376))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!318404 (= lt!155376 (Intermediate!2833 false resIndex!52 resX!52))))

(declare-fun b!318405 () Bool)

(declare-fun res!173139 () Bool)

(assert (=> b!318405 (=> (not res!173139) (not e!197835))))

(assert (=> b!318405 (= res!173139 (and (= (select (arr!7682 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8034 a!3293))))))

(declare-fun b!318406 () Bool)

(declare-fun res!173143 () Bool)

(assert (=> b!318406 (=> (not res!173143) (not e!197839))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16237 (_ BitVec 32)) SeekEntryResult!2833)

(assert (=> b!318406 (= res!173143 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2833 i!1240)))))

(declare-fun lt!155377 () array!16237)

(declare-fun b!318407 () Bool)

(assert (=> b!318407 (= e!197838 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!155377 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155375 k0!2441 lt!155377 mask!3709)))))

(assert (=> b!318407 (= lt!155377 (array!16238 (store (arr!7682 a!3293) i!1240 k0!2441) (size!8034 a!3293)))))

(declare-fun res!173140 () Bool)

(assert (=> start!31868 (=> (not res!173140) (not e!197839))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31868 (= res!173140 (validMask!0 mask!3709))))

(assert (=> start!31868 e!197839))

(declare-fun array_inv!5636 (array!16237) Bool)

(assert (=> start!31868 (array_inv!5636 a!3293)))

(assert (=> start!31868 true))

(declare-fun b!318408 () Bool)

(declare-fun res!173137 () Bool)

(assert (=> b!318408 (=> (not res!173137) (not e!197839))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16237 (_ BitVec 32)) Bool)

(assert (=> b!318408 (= res!173137 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!31868 res!173140) b!318403))

(assert (= (and b!318403 res!173144) b!318400))

(assert (= (and b!318400 res!173136) b!318401))

(assert (= (and b!318401 res!173141) b!318406))

(assert (= (and b!318406 res!173143) b!318408))

(assert (= (and b!318408 res!173137) b!318404))

(assert (= (and b!318404 res!173142) b!318405))

(assert (= (and b!318405 res!173139) b!318399))

(assert (= (and b!318399 res!173138) b!318402))

(assert (= (and b!318402 res!173145) b!318407))

(declare-fun m!327153 () Bool)

(assert (=> b!318399 m!327153))

(declare-fun m!327155 () Bool)

(assert (=> b!318399 m!327155))

(declare-fun m!327157 () Bool)

(assert (=> b!318406 m!327157))

(declare-fun m!327159 () Bool)

(assert (=> start!31868 m!327159))

(declare-fun m!327161 () Bool)

(assert (=> start!31868 m!327161))

(declare-fun m!327163 () Bool)

(assert (=> b!318404 m!327163))

(assert (=> b!318404 m!327163))

(declare-fun m!327165 () Bool)

(assert (=> b!318404 m!327165))

(declare-fun m!327167 () Bool)

(assert (=> b!318402 m!327167))

(declare-fun m!327169 () Bool)

(assert (=> b!318402 m!327169))

(declare-fun m!327171 () Bool)

(assert (=> b!318408 m!327171))

(declare-fun m!327173 () Bool)

(assert (=> b!318401 m!327173))

(declare-fun m!327175 () Bool)

(assert (=> b!318400 m!327175))

(declare-fun m!327177 () Bool)

(assert (=> b!318407 m!327177))

(declare-fun m!327179 () Bool)

(assert (=> b!318407 m!327179))

(declare-fun m!327181 () Bool)

(assert (=> b!318407 m!327181))

(declare-fun m!327183 () Bool)

(assert (=> b!318405 m!327183))

(check-sat (not b!318400) (not b!318399) (not b!318406) (not b!318402) (not b!318408) (not b!318401) (not start!31868) (not b!318407) (not b!318404))
(check-sat)
(get-model)

(declare-fun b!318457 () Bool)

(declare-fun lt!155396 () SeekEntryResult!2833)

(assert (=> b!318457 (and (bvsge (index!13510 lt!155396) #b00000000000000000000000000000000) (bvslt (index!13510 lt!155396) (size!8034 a!3293)))))

(declare-fun res!173182 () Bool)

(assert (=> b!318457 (= res!173182 (= (select (arr!7682 a!3293) (index!13510 lt!155396)) k0!2441))))

(declare-fun e!197866 () Bool)

(assert (=> b!318457 (=> res!173182 e!197866)))

(declare-fun e!197867 () Bool)

(assert (=> b!318457 (= e!197867 e!197866)))

(declare-fun b!318458 () Bool)

(assert (=> b!318458 (and (bvsge (index!13510 lt!155396) #b00000000000000000000000000000000) (bvslt (index!13510 lt!155396) (size!8034 a!3293)))))

(assert (=> b!318458 (= e!197866 (= (select (arr!7682 a!3293) (index!13510 lt!155396)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!318459 () Bool)

(declare-fun e!197869 () SeekEntryResult!2833)

(assert (=> b!318459 (= e!197869 (Intermediate!2833 false index!1781 x!1427))))

(declare-fun b!318460 () Bool)

(assert (=> b!318460 (= e!197869 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!318461 () Bool)

(declare-fun e!197865 () SeekEntryResult!2833)

(assert (=> b!318461 (= e!197865 (Intermediate!2833 true index!1781 x!1427))))

(declare-fun b!318462 () Bool)

(declare-fun e!197868 () Bool)

(assert (=> b!318462 (= e!197868 e!197867)))

(declare-fun res!173184 () Bool)

(get-info :version)

(assert (=> b!318462 (= res!173184 (and ((_ is Intermediate!2833) lt!155396) (not (undefined!3645 lt!155396)) (bvslt (x!31725 lt!155396) #b01111111111111111111111111111110) (bvsge (x!31725 lt!155396) #b00000000000000000000000000000000) (bvsge (x!31725 lt!155396) x!1427)))))

(assert (=> b!318462 (=> (not res!173184) (not e!197867))))

(declare-fun d!69091 () Bool)

(assert (=> d!69091 e!197868))

(declare-fun c!50259 () Bool)

(assert (=> d!69091 (= c!50259 (and ((_ is Intermediate!2833) lt!155396) (undefined!3645 lt!155396)))))

(assert (=> d!69091 (= lt!155396 e!197865)))

(declare-fun c!50261 () Bool)

(assert (=> d!69091 (= c!50261 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!155395 () (_ BitVec 64))

(assert (=> d!69091 (= lt!155395 (select (arr!7682 a!3293) index!1781))))

(assert (=> d!69091 (validMask!0 mask!3709)))

(assert (=> d!69091 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!155396)))

(declare-fun b!318463 () Bool)

(assert (=> b!318463 (and (bvsge (index!13510 lt!155396) #b00000000000000000000000000000000) (bvslt (index!13510 lt!155396) (size!8034 a!3293)))))

(declare-fun res!173183 () Bool)

(assert (=> b!318463 (= res!173183 (= (select (arr!7682 a!3293) (index!13510 lt!155396)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!318463 (=> res!173183 e!197866)))

(declare-fun b!318464 () Bool)

(assert (=> b!318464 (= e!197868 (bvsge (x!31725 lt!155396) #b01111111111111111111111111111110))))

(declare-fun b!318465 () Bool)

(assert (=> b!318465 (= e!197865 e!197869)))

(declare-fun c!50260 () Bool)

(assert (=> b!318465 (= c!50260 (or (= lt!155395 k0!2441) (= (bvadd lt!155395 lt!155395) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!69091 c!50261) b!318461))

(assert (= (and d!69091 (not c!50261)) b!318465))

(assert (= (and b!318465 c!50260) b!318459))

(assert (= (and b!318465 (not c!50260)) b!318460))

(assert (= (and d!69091 c!50259) b!318464))

(assert (= (and d!69091 (not c!50259)) b!318462))

(assert (= (and b!318462 res!173184) b!318457))

(assert (= (and b!318457 (not res!173182)) b!318463))

(assert (= (and b!318463 (not res!173183)) b!318458))

(declare-fun m!327217 () Bool)

(assert (=> b!318457 m!327217))

(assert (=> b!318460 m!327169))

(assert (=> b!318460 m!327169))

(declare-fun m!327219 () Bool)

(assert (=> b!318460 m!327219))

(assert (=> d!69091 m!327153))

(assert (=> d!69091 m!327159))

(assert (=> b!318463 m!327217))

(assert (=> b!318458 m!327217))

(assert (=> b!318399 d!69091))

(declare-fun b!318466 () Bool)

(declare-fun lt!155398 () SeekEntryResult!2833)

(assert (=> b!318466 (and (bvsge (index!13510 lt!155398) #b00000000000000000000000000000000) (bvslt (index!13510 lt!155398) (size!8034 a!3293)))))

(declare-fun res!173185 () Bool)

(assert (=> b!318466 (= res!173185 (= (select (arr!7682 a!3293) (index!13510 lt!155398)) k0!2441))))

(declare-fun e!197871 () Bool)

(assert (=> b!318466 (=> res!173185 e!197871)))

(declare-fun e!197872 () Bool)

(assert (=> b!318466 (= e!197872 e!197871)))

(declare-fun b!318467 () Bool)

(assert (=> b!318467 (and (bvsge (index!13510 lt!155398) #b00000000000000000000000000000000) (bvslt (index!13510 lt!155398) (size!8034 a!3293)))))

(assert (=> b!318467 (= e!197871 (= (select (arr!7682 a!3293) (index!13510 lt!155398)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!318468 () Bool)

(declare-fun e!197874 () SeekEntryResult!2833)

(assert (=> b!318468 (= e!197874 (Intermediate!2833 false (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!318469 () Bool)

(assert (=> b!318469 (= e!197874 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!318470 () Bool)

(declare-fun e!197870 () SeekEntryResult!2833)

(assert (=> b!318470 (= e!197870 (Intermediate!2833 true (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!318471 () Bool)

(declare-fun e!197873 () Bool)

(assert (=> b!318471 (= e!197873 e!197872)))

(declare-fun res!173187 () Bool)

(assert (=> b!318471 (= res!173187 (and ((_ is Intermediate!2833) lt!155398) (not (undefined!3645 lt!155398)) (bvslt (x!31725 lt!155398) #b01111111111111111111111111111110) (bvsge (x!31725 lt!155398) #b00000000000000000000000000000000) (bvsge (x!31725 lt!155398) #b00000000000000000000000000000000)))))

(assert (=> b!318471 (=> (not res!173187) (not e!197872))))

(declare-fun d!69093 () Bool)

(assert (=> d!69093 e!197873))

(declare-fun c!50262 () Bool)

(assert (=> d!69093 (= c!50262 (and ((_ is Intermediate!2833) lt!155398) (undefined!3645 lt!155398)))))

(assert (=> d!69093 (= lt!155398 e!197870)))

(declare-fun c!50264 () Bool)

(assert (=> d!69093 (= c!50264 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!155397 () (_ BitVec 64))

(assert (=> d!69093 (= lt!155397 (select (arr!7682 a!3293) (toIndex!0 k0!2441 mask!3709)))))

(assert (=> d!69093 (validMask!0 mask!3709)))

(assert (=> d!69093 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!155398)))

(declare-fun b!318472 () Bool)

(assert (=> b!318472 (and (bvsge (index!13510 lt!155398) #b00000000000000000000000000000000) (bvslt (index!13510 lt!155398) (size!8034 a!3293)))))

(declare-fun res!173186 () Bool)

(assert (=> b!318472 (= res!173186 (= (select (arr!7682 a!3293) (index!13510 lt!155398)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!318472 (=> res!173186 e!197871)))

(declare-fun b!318473 () Bool)

(assert (=> b!318473 (= e!197873 (bvsge (x!31725 lt!155398) #b01111111111111111111111111111110))))

(declare-fun b!318474 () Bool)

(assert (=> b!318474 (= e!197870 e!197874)))

(declare-fun c!50263 () Bool)

(assert (=> b!318474 (= c!50263 (or (= lt!155397 k0!2441) (= (bvadd lt!155397 lt!155397) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!69093 c!50264) b!318470))

(assert (= (and d!69093 (not c!50264)) b!318474))

(assert (= (and b!318474 c!50263) b!318468))

(assert (= (and b!318474 (not c!50263)) b!318469))

(assert (= (and d!69093 c!50262) b!318473))

(assert (= (and d!69093 (not c!50262)) b!318471))

(assert (= (and b!318471 res!173187) b!318466))

(assert (= (and b!318466 (not res!173185)) b!318472))

(assert (= (and b!318472 (not res!173186)) b!318467))

(declare-fun m!327221 () Bool)

(assert (=> b!318466 m!327221))

(assert (=> b!318469 m!327163))

(declare-fun m!327223 () Bool)

(assert (=> b!318469 m!327223))

(assert (=> b!318469 m!327223))

(declare-fun m!327225 () Bool)

(assert (=> b!318469 m!327225))

(assert (=> d!69093 m!327163))

(declare-fun m!327227 () Bool)

(assert (=> d!69093 m!327227))

(assert (=> d!69093 m!327159))

(assert (=> b!318472 m!327221))

(assert (=> b!318467 m!327221))

(assert (=> b!318404 d!69093))

(declare-fun d!69097 () Bool)

(declare-fun lt!155404 () (_ BitVec 32))

(declare-fun lt!155403 () (_ BitVec 32))

(assert (=> d!69097 (= lt!155404 (bvmul (bvxor lt!155403 (bvlshr lt!155403 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69097 (= lt!155403 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69097 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!173188 (let ((h!5399 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31728 (bvmul (bvxor h!5399 (bvlshr h!5399 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31728 (bvlshr x!31728 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!173188 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!173188 #b00000000000000000000000000000000))))))

(assert (=> d!69097 (= (toIndex!0 k0!2441 mask!3709) (bvand (bvxor lt!155404 (bvlshr lt!155404 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!318404 d!69097))

(declare-fun d!69101 () Bool)

(assert (=> d!69101 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31868 d!69101))

(declare-fun d!69103 () Bool)

(assert (=> d!69103 (= (array_inv!5636 a!3293) (bvsge (size!8034 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31868 d!69103))

(declare-fun d!69105 () Bool)

(assert (=> d!69105 (= (validKeyInArray!0 k0!2441) (and (not (= k0!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!318400 d!69105))

(declare-fun d!69107 () Bool)

(declare-fun res!173199 () Bool)

(declare-fun e!197893 () Bool)

(assert (=> d!69107 (=> res!173199 e!197893)))

(assert (=> d!69107 (= res!173199 (= (select (arr!7682 a!3293) #b00000000000000000000000000000000) k0!2441))))

(assert (=> d!69107 (= (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000) e!197893)))

(declare-fun b!318507 () Bool)

(declare-fun e!197894 () Bool)

(assert (=> b!318507 (= e!197893 e!197894)))

(declare-fun res!173200 () Bool)

(assert (=> b!318507 (=> (not res!173200) (not e!197894))))

(assert (=> b!318507 (= res!173200 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8034 a!3293)))))

(declare-fun b!318508 () Bool)

(assert (=> b!318508 (= e!197894 (arrayContainsKey!0 a!3293 k0!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69107 (not res!173199)) b!318507))

(assert (= (and b!318507 res!173200) b!318508))

(declare-fun m!327229 () Bool)

(assert (=> d!69107 m!327229))

(declare-fun m!327231 () Bool)

(assert (=> b!318508 m!327231))

(assert (=> b!318401 d!69107))

(declare-fun b!318577 () Bool)

(declare-fun c!50301 () Bool)

(declare-fun lt!155434 () (_ BitVec 64))

(assert (=> b!318577 (= c!50301 (= lt!155434 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!197933 () SeekEntryResult!2833)

(declare-fun e!197935 () SeekEntryResult!2833)

(assert (=> b!318577 (= e!197933 e!197935)))

(declare-fun b!318578 () Bool)

(declare-fun lt!155435 () SeekEntryResult!2833)

(assert (=> b!318578 (= e!197933 (Found!2833 (index!13510 lt!155435)))))

(declare-fun b!318579 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16237 (_ BitVec 32)) SeekEntryResult!2833)

(assert (=> b!318579 (= e!197935 (seekKeyOrZeroReturnVacant!0 (x!31725 lt!155435) (index!13510 lt!155435) (index!13510 lt!155435) k0!2441 a!3293 mask!3709))))

(declare-fun d!69109 () Bool)

(declare-fun lt!155433 () SeekEntryResult!2833)

(assert (=> d!69109 (and (or ((_ is Undefined!2833) lt!155433) (not ((_ is Found!2833) lt!155433)) (and (bvsge (index!13509 lt!155433) #b00000000000000000000000000000000) (bvslt (index!13509 lt!155433) (size!8034 a!3293)))) (or ((_ is Undefined!2833) lt!155433) ((_ is Found!2833) lt!155433) (not ((_ is MissingZero!2833) lt!155433)) (and (bvsge (index!13508 lt!155433) #b00000000000000000000000000000000) (bvslt (index!13508 lt!155433) (size!8034 a!3293)))) (or ((_ is Undefined!2833) lt!155433) ((_ is Found!2833) lt!155433) ((_ is MissingZero!2833) lt!155433) (not ((_ is MissingVacant!2833) lt!155433)) (and (bvsge (index!13511 lt!155433) #b00000000000000000000000000000000) (bvslt (index!13511 lt!155433) (size!8034 a!3293)))) (or ((_ is Undefined!2833) lt!155433) (ite ((_ is Found!2833) lt!155433) (= (select (arr!7682 a!3293) (index!13509 lt!155433)) k0!2441) (ite ((_ is MissingZero!2833) lt!155433) (= (select (arr!7682 a!3293) (index!13508 lt!155433)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2833) lt!155433) (= (select (arr!7682 a!3293) (index!13511 lt!155433)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!197934 () SeekEntryResult!2833)

(assert (=> d!69109 (= lt!155433 e!197934)))

(declare-fun c!50303 () Bool)

(assert (=> d!69109 (= c!50303 (and ((_ is Intermediate!2833) lt!155435) (undefined!3645 lt!155435)))))

(assert (=> d!69109 (= lt!155435 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709))))

(assert (=> d!69109 (validMask!0 mask!3709)))

(assert (=> d!69109 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) lt!155433)))

(declare-fun b!318580 () Bool)

(assert (=> b!318580 (= e!197934 Undefined!2833)))

(declare-fun b!318581 () Bool)

(assert (=> b!318581 (= e!197935 (MissingZero!2833 (index!13510 lt!155435)))))

(declare-fun b!318582 () Bool)

(assert (=> b!318582 (= e!197934 e!197933)))

(assert (=> b!318582 (= lt!155434 (select (arr!7682 a!3293) (index!13510 lt!155435)))))

(declare-fun c!50302 () Bool)

(assert (=> b!318582 (= c!50302 (= lt!155434 k0!2441))))

(assert (= (and d!69109 c!50303) b!318580))

(assert (= (and d!69109 (not c!50303)) b!318582))

(assert (= (and b!318582 c!50302) b!318578))

(assert (= (and b!318582 (not c!50302)) b!318577))

(assert (= (and b!318577 c!50301) b!318581))

(assert (= (and b!318577 (not c!50301)) b!318579))

(declare-fun m!327261 () Bool)

(assert (=> b!318579 m!327261))

(assert (=> d!69109 m!327163))

(declare-fun m!327263 () Bool)

(assert (=> d!69109 m!327263))

(declare-fun m!327265 () Bool)

(assert (=> d!69109 m!327265))

(declare-fun m!327267 () Bool)

(assert (=> d!69109 m!327267))

(assert (=> d!69109 m!327163))

(assert (=> d!69109 m!327165))

(assert (=> d!69109 m!327159))

(declare-fun m!327269 () Bool)

(assert (=> b!318582 m!327269))

(assert (=> b!318406 d!69109))

(declare-fun b!318583 () Bool)

(declare-fun lt!155437 () SeekEntryResult!2833)

(assert (=> b!318583 (and (bvsge (index!13510 lt!155437) #b00000000000000000000000000000000) (bvslt (index!13510 lt!155437) (size!8034 lt!155377)))))

(declare-fun res!173219 () Bool)

(assert (=> b!318583 (= res!173219 (= (select (arr!7682 lt!155377) (index!13510 lt!155437)) k0!2441))))

(declare-fun e!197937 () Bool)

(assert (=> b!318583 (=> res!173219 e!197937)))

(declare-fun e!197938 () Bool)

(assert (=> b!318583 (= e!197938 e!197937)))

(declare-fun b!318584 () Bool)

(assert (=> b!318584 (and (bvsge (index!13510 lt!155437) #b00000000000000000000000000000000) (bvslt (index!13510 lt!155437) (size!8034 lt!155377)))))

(assert (=> b!318584 (= e!197937 (= (select (arr!7682 lt!155377) (index!13510 lt!155437)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!318585 () Bool)

(declare-fun e!197940 () SeekEntryResult!2833)

(assert (=> b!318585 (= e!197940 (Intermediate!2833 false index!1781 x!1427))))

(declare-fun b!318586 () Bool)

(assert (=> b!318586 (= e!197940 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 lt!155377 mask!3709))))

(declare-fun b!318587 () Bool)

(declare-fun e!197936 () SeekEntryResult!2833)

(assert (=> b!318587 (= e!197936 (Intermediate!2833 true index!1781 x!1427))))

(declare-fun b!318588 () Bool)

(declare-fun e!197939 () Bool)

(assert (=> b!318588 (= e!197939 e!197938)))

(declare-fun res!173221 () Bool)

(assert (=> b!318588 (= res!173221 (and ((_ is Intermediate!2833) lt!155437) (not (undefined!3645 lt!155437)) (bvslt (x!31725 lt!155437) #b01111111111111111111111111111110) (bvsge (x!31725 lt!155437) #b00000000000000000000000000000000) (bvsge (x!31725 lt!155437) x!1427)))))

(assert (=> b!318588 (=> (not res!173221) (not e!197938))))

(declare-fun d!69125 () Bool)

(assert (=> d!69125 e!197939))

(declare-fun c!50304 () Bool)

(assert (=> d!69125 (= c!50304 (and ((_ is Intermediate!2833) lt!155437) (undefined!3645 lt!155437)))))

(assert (=> d!69125 (= lt!155437 e!197936)))

(declare-fun c!50306 () Bool)

(assert (=> d!69125 (= c!50306 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!155436 () (_ BitVec 64))

(assert (=> d!69125 (= lt!155436 (select (arr!7682 lt!155377) index!1781))))

(assert (=> d!69125 (validMask!0 mask!3709)))

(assert (=> d!69125 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!155377 mask!3709) lt!155437)))

(declare-fun b!318589 () Bool)

(assert (=> b!318589 (and (bvsge (index!13510 lt!155437) #b00000000000000000000000000000000) (bvslt (index!13510 lt!155437) (size!8034 lt!155377)))))

(declare-fun res!173220 () Bool)

(assert (=> b!318589 (= res!173220 (= (select (arr!7682 lt!155377) (index!13510 lt!155437)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!318589 (=> res!173220 e!197937)))

(declare-fun b!318590 () Bool)

(assert (=> b!318590 (= e!197939 (bvsge (x!31725 lt!155437) #b01111111111111111111111111111110))))

(declare-fun b!318591 () Bool)

(assert (=> b!318591 (= e!197936 e!197940)))

(declare-fun c!50305 () Bool)

(assert (=> b!318591 (= c!50305 (or (= lt!155436 k0!2441) (= (bvadd lt!155436 lt!155436) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!69125 c!50306) b!318587))

(assert (= (and d!69125 (not c!50306)) b!318591))

(assert (= (and b!318591 c!50305) b!318585))

(assert (= (and b!318591 (not c!50305)) b!318586))

(assert (= (and d!69125 c!50304) b!318590))

(assert (= (and d!69125 (not c!50304)) b!318588))

(assert (= (and b!318588 res!173221) b!318583))

(assert (= (and b!318583 (not res!173219)) b!318589))

(assert (= (and b!318589 (not res!173220)) b!318584))

(declare-fun m!327271 () Bool)

(assert (=> b!318583 m!327271))

(assert (=> b!318586 m!327169))

(assert (=> b!318586 m!327169))

(declare-fun m!327273 () Bool)

(assert (=> b!318586 m!327273))

(declare-fun m!327275 () Bool)

(assert (=> d!69125 m!327275))

(assert (=> d!69125 m!327159))

(assert (=> b!318589 m!327271))

(assert (=> b!318584 m!327271))

(assert (=> b!318407 d!69125))

(declare-fun b!318592 () Bool)

(declare-fun lt!155439 () SeekEntryResult!2833)

(assert (=> b!318592 (and (bvsge (index!13510 lt!155439) #b00000000000000000000000000000000) (bvslt (index!13510 lt!155439) (size!8034 lt!155377)))))

(declare-fun res!173222 () Bool)

(assert (=> b!318592 (= res!173222 (= (select (arr!7682 lt!155377) (index!13510 lt!155439)) k0!2441))))

(declare-fun e!197942 () Bool)

(assert (=> b!318592 (=> res!173222 e!197942)))

(declare-fun e!197943 () Bool)

(assert (=> b!318592 (= e!197943 e!197942)))

(declare-fun b!318593 () Bool)

(assert (=> b!318593 (and (bvsge (index!13510 lt!155439) #b00000000000000000000000000000000) (bvslt (index!13510 lt!155439) (size!8034 lt!155377)))))

(assert (=> b!318593 (= e!197942 (= (select (arr!7682 lt!155377) (index!13510 lt!155439)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!318594 () Bool)

(declare-fun e!197945 () SeekEntryResult!2833)

(assert (=> b!318594 (= e!197945 (Intermediate!2833 false lt!155375 (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!318595 () Bool)

(assert (=> b!318595 (= e!197945 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 lt!155375 (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k0!2441 lt!155377 mask!3709))))

(declare-fun b!318596 () Bool)

(declare-fun e!197941 () SeekEntryResult!2833)

(assert (=> b!318596 (= e!197941 (Intermediate!2833 true lt!155375 (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!318597 () Bool)

(declare-fun e!197944 () Bool)

(assert (=> b!318597 (= e!197944 e!197943)))

(declare-fun res!173224 () Bool)

(assert (=> b!318597 (= res!173224 (and ((_ is Intermediate!2833) lt!155439) (not (undefined!3645 lt!155439)) (bvslt (x!31725 lt!155439) #b01111111111111111111111111111110) (bvsge (x!31725 lt!155439) #b00000000000000000000000000000000) (bvsge (x!31725 lt!155439) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!318597 (=> (not res!173224) (not e!197943))))

(declare-fun d!69127 () Bool)

(assert (=> d!69127 e!197944))

(declare-fun c!50307 () Bool)

(assert (=> d!69127 (= c!50307 (and ((_ is Intermediate!2833) lt!155439) (undefined!3645 lt!155439)))))

(assert (=> d!69127 (= lt!155439 e!197941)))

(declare-fun c!50309 () Bool)

(assert (=> d!69127 (= c!50309 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(declare-fun lt!155438 () (_ BitVec 64))

(assert (=> d!69127 (= lt!155438 (select (arr!7682 lt!155377) lt!155375))))

(assert (=> d!69127 (validMask!0 mask!3709)))

(assert (=> d!69127 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155375 k0!2441 lt!155377 mask!3709) lt!155439)))

(declare-fun b!318598 () Bool)

(assert (=> b!318598 (and (bvsge (index!13510 lt!155439) #b00000000000000000000000000000000) (bvslt (index!13510 lt!155439) (size!8034 lt!155377)))))

(declare-fun res!173223 () Bool)

(assert (=> b!318598 (= res!173223 (= (select (arr!7682 lt!155377) (index!13510 lt!155439)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!318598 (=> res!173223 e!197942)))

(declare-fun b!318599 () Bool)

(assert (=> b!318599 (= e!197944 (bvsge (x!31725 lt!155439) #b01111111111111111111111111111110))))

(declare-fun b!318600 () Bool)

(assert (=> b!318600 (= e!197941 e!197945)))

(declare-fun c!50308 () Bool)

(assert (=> b!318600 (= c!50308 (or (= lt!155438 k0!2441) (= (bvadd lt!155438 lt!155438) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!69127 c!50309) b!318596))

(assert (= (and d!69127 (not c!50309)) b!318600))

(assert (= (and b!318600 c!50308) b!318594))

(assert (= (and b!318600 (not c!50308)) b!318595))

(assert (= (and d!69127 c!50307) b!318599))

(assert (= (and d!69127 (not c!50307)) b!318597))

(assert (= (and b!318597 res!173224) b!318592))

(assert (= (and b!318592 (not res!173222)) b!318598))

(assert (= (and b!318598 (not res!173223)) b!318593))

(declare-fun m!327277 () Bool)

(assert (=> b!318592 m!327277))

(declare-fun m!327279 () Bool)

(assert (=> b!318595 m!327279))

(assert (=> b!318595 m!327279))

(declare-fun m!327283 () Bool)

(assert (=> b!318595 m!327283))

(declare-fun m!327285 () Bool)

(assert (=> d!69127 m!327285))

(assert (=> d!69127 m!327159))

(assert (=> b!318598 m!327277))

(assert (=> b!318593 m!327277))

(assert (=> b!318407 d!69127))

(declare-fun b!318607 () Bool)

(declare-fun lt!155444 () SeekEntryResult!2833)

(assert (=> b!318607 (and (bvsge (index!13510 lt!155444) #b00000000000000000000000000000000) (bvslt (index!13510 lt!155444) (size!8034 a!3293)))))

(declare-fun res!173225 () Bool)

(assert (=> b!318607 (= res!173225 (= (select (arr!7682 a!3293) (index!13510 lt!155444)) k0!2441))))

(declare-fun e!197950 () Bool)

(assert (=> b!318607 (=> res!173225 e!197950)))

(declare-fun e!197951 () Bool)

(assert (=> b!318607 (= e!197951 e!197950)))

(declare-fun b!318608 () Bool)

(assert (=> b!318608 (and (bvsge (index!13510 lt!155444) #b00000000000000000000000000000000) (bvslt (index!13510 lt!155444) (size!8034 a!3293)))))

(assert (=> b!318608 (= e!197950 (= (select (arr!7682 a!3293) (index!13510 lt!155444)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!318609 () Bool)

(declare-fun e!197953 () SeekEntryResult!2833)

(assert (=> b!318609 (= e!197953 (Intermediate!2833 false lt!155375 (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!318610 () Bool)

(assert (=> b!318610 (= e!197953 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 lt!155375 (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!318611 () Bool)

(declare-fun e!197949 () SeekEntryResult!2833)

(assert (=> b!318611 (= e!197949 (Intermediate!2833 true lt!155375 (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!318612 () Bool)

(declare-fun e!197952 () Bool)

(assert (=> b!318612 (= e!197952 e!197951)))

(declare-fun res!173227 () Bool)

(assert (=> b!318612 (= res!173227 (and ((_ is Intermediate!2833) lt!155444) (not (undefined!3645 lt!155444)) (bvslt (x!31725 lt!155444) #b01111111111111111111111111111110) (bvsge (x!31725 lt!155444) #b00000000000000000000000000000000) (bvsge (x!31725 lt!155444) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!318612 (=> (not res!173227) (not e!197951))))

(declare-fun d!69129 () Bool)

(assert (=> d!69129 e!197952))

(declare-fun c!50313 () Bool)

(assert (=> d!69129 (= c!50313 (and ((_ is Intermediate!2833) lt!155444) (undefined!3645 lt!155444)))))

(assert (=> d!69129 (= lt!155444 e!197949)))

(declare-fun c!50315 () Bool)

(assert (=> d!69129 (= c!50315 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(declare-fun lt!155443 () (_ BitVec 64))

(assert (=> d!69129 (= lt!155443 (select (arr!7682 a!3293) lt!155375))))

(assert (=> d!69129 (validMask!0 mask!3709)))

(assert (=> d!69129 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155375 k0!2441 a!3293 mask!3709) lt!155444)))

(declare-fun b!318613 () Bool)

(assert (=> b!318613 (and (bvsge (index!13510 lt!155444) #b00000000000000000000000000000000) (bvslt (index!13510 lt!155444) (size!8034 a!3293)))))

(declare-fun res!173226 () Bool)

(assert (=> b!318613 (= res!173226 (= (select (arr!7682 a!3293) (index!13510 lt!155444)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!318613 (=> res!173226 e!197950)))

(declare-fun b!318614 () Bool)

(assert (=> b!318614 (= e!197952 (bvsge (x!31725 lt!155444) #b01111111111111111111111111111110))))

(declare-fun b!318615 () Bool)

(assert (=> b!318615 (= e!197949 e!197953)))

(declare-fun c!50314 () Bool)

(assert (=> b!318615 (= c!50314 (or (= lt!155443 k0!2441) (= (bvadd lt!155443 lt!155443) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!69129 c!50315) b!318611))

(assert (= (and d!69129 (not c!50315)) b!318615))

(assert (= (and b!318615 c!50314) b!318609))

(assert (= (and b!318615 (not c!50314)) b!318610))

(assert (= (and d!69129 c!50313) b!318614))

(assert (= (and d!69129 (not c!50313)) b!318612))

(assert (= (and b!318612 res!173227) b!318607))

(assert (= (and b!318607 (not res!173225)) b!318613))

(assert (= (and b!318613 (not res!173226)) b!318608))

(declare-fun m!327295 () Bool)

(assert (=> b!318607 m!327295))

(assert (=> b!318610 m!327279))

(assert (=> b!318610 m!327279))

(declare-fun m!327297 () Bool)

(assert (=> b!318610 m!327297))

(declare-fun m!327299 () Bool)

(assert (=> d!69129 m!327299))

(assert (=> d!69129 m!327159))

(assert (=> b!318613 m!327295))

(assert (=> b!318608 m!327295))

(assert (=> b!318402 d!69129))

(declare-fun d!69135 () Bool)

(declare-fun lt!155449 () (_ BitVec 32))

(assert (=> d!69135 (and (bvsge lt!155449 #b00000000000000000000000000000000) (bvslt lt!155449 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!69135 (= lt!155449 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!69135 (validMask!0 mask!3709)))

(assert (=> d!69135 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!155449)))

(declare-fun bs!11104 () Bool)

(assert (= bs!11104 d!69135))

(declare-fun m!327305 () Bool)

(assert (=> bs!11104 m!327305))

(assert (=> bs!11104 m!327159))

(assert (=> b!318402 d!69135))

(declare-fun b!318645 () Bool)

(declare-fun e!197972 () Bool)

(declare-fun call!26024 () Bool)

(assert (=> b!318645 (= e!197972 call!26024)))

(declare-fun b!318646 () Bool)

(declare-fun e!197971 () Bool)

(assert (=> b!318646 (= e!197972 e!197971)))

(declare-fun lt!155463 () (_ BitVec 64))

(assert (=> b!318646 (= lt!155463 (select (arr!7682 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9787 0))(
  ( (Unit!9788) )
))
(declare-fun lt!155464 () Unit!9787)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16237 (_ BitVec 64) (_ BitVec 32)) Unit!9787)

(assert (=> b!318646 (= lt!155464 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!155463 #b00000000000000000000000000000000))))

(assert (=> b!318646 (arrayContainsKey!0 a!3293 lt!155463 #b00000000000000000000000000000000)))

(declare-fun lt!155462 () Unit!9787)

(assert (=> b!318646 (= lt!155462 lt!155464)))

(declare-fun res!173235 () Bool)

(assert (=> b!318646 (= res!173235 (= (seekEntryOrOpen!0 (select (arr!7682 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2833 #b00000000000000000000000000000000)))))

(assert (=> b!318646 (=> (not res!173235) (not e!197971))))

(declare-fun bm!26021 () Bool)

(assert (=> bm!26021 (= call!26024 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!318647 () Bool)

(assert (=> b!318647 (= e!197971 call!26024)))

(declare-fun b!318648 () Bool)

(declare-fun e!197973 () Bool)

(assert (=> b!318648 (= e!197973 e!197972)))

(declare-fun c!50327 () Bool)

(assert (=> b!318648 (= c!50327 (validKeyInArray!0 (select (arr!7682 a!3293) #b00000000000000000000000000000000)))))

(declare-fun d!69139 () Bool)

(declare-fun res!173236 () Bool)

(assert (=> d!69139 (=> res!173236 e!197973)))

(assert (=> d!69139 (= res!173236 (bvsge #b00000000000000000000000000000000 (size!8034 a!3293)))))

(assert (=> d!69139 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!197973)))

(assert (= (and d!69139 (not res!173236)) b!318648))

(assert (= (and b!318648 c!50327) b!318646))

(assert (= (and b!318648 (not c!50327)) b!318645))

(assert (= (and b!318646 res!173235) b!318647))

(assert (= (or b!318647 b!318645) bm!26021))

(assert (=> b!318646 m!327229))

(declare-fun m!327307 () Bool)

(assert (=> b!318646 m!327307))

(declare-fun m!327309 () Bool)

(assert (=> b!318646 m!327309))

(assert (=> b!318646 m!327229))

(declare-fun m!327311 () Bool)

(assert (=> b!318646 m!327311))

(declare-fun m!327313 () Bool)

(assert (=> bm!26021 m!327313))

(assert (=> b!318648 m!327229))

(assert (=> b!318648 m!327229))

(declare-fun m!327315 () Bool)

(assert (=> b!318648 m!327315))

(assert (=> b!318408 d!69139))

(check-sat (not b!318579) (not d!69125) (not d!69093) (not b!318508) (not b!318595) (not b!318610) (not b!318460) (not b!318646) (not b!318469) (not d!69127) (not d!69129) (not d!69135) (not b!318648) (not b!318586) (not d!69091) (not d!69109) (not bm!26021))
(check-sat)
