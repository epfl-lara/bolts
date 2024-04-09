; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31870 () Bool)

(assert start!31870)

(declare-fun b!318429 () Bool)

(declare-fun res!173173 () Bool)

(declare-fun e!197854 () Bool)

(assert (=> b!318429 (=> (not res!173173) (not e!197854))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!318429 (= res!173173 (validKeyInArray!0 k!2441))))

(declare-fun b!318430 () Bool)

(declare-fun res!173166 () Bool)

(declare-fun e!197853 () Bool)

(assert (=> b!318430 (=> (not res!173166) (not e!197853))))

(declare-datatypes ((array!16239 0))(
  ( (array!16240 (arr!7683 (Array (_ BitVec 32) (_ BitVec 64))) (size!8035 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16239)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!318430 (= res!173166 (and (= (select (arr!7683 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8035 a!3293))))))

(declare-fun b!318431 () Bool)

(declare-fun e!197852 () Bool)

(assert (=> b!318431 (= e!197853 e!197852)))

(declare-fun res!173169 () Bool)

(assert (=> b!318431 (=> (not res!173169) (not e!197852))))

(declare-datatypes ((SeekEntryResult!2834 0))(
  ( (MissingZero!2834 (index!13512 (_ BitVec 32))) (Found!2834 (index!13513 (_ BitVec 32))) (Intermediate!2834 (undefined!3646 Bool) (index!13514 (_ BitVec 32)) (x!31726 (_ BitVec 32))) (Undefined!2834) (MissingVacant!2834 (index!13515 (_ BitVec 32))) )
))
(declare-fun lt!155387 () SeekEntryResult!2834)

(declare-fun lt!155390 () SeekEntryResult!2834)

(assert (=> b!318431 (= res!173169 (and (= lt!155387 lt!155390) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7683 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16239 (_ BitVec 32)) SeekEntryResult!2834)

(assert (=> b!318431 (= lt!155387 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun res!173175 () Bool)

(assert (=> start!31870 (=> (not res!173175) (not e!197854))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31870 (= res!173175 (validMask!0 mask!3709))))

(assert (=> start!31870 e!197854))

(declare-fun array_inv!5637 (array!16239) Bool)

(assert (=> start!31870 (array_inv!5637 a!3293)))

(assert (=> start!31870 true))

(declare-fun b!318432 () Bool)

(declare-fun lt!155388 () (_ BitVec 32))

(assert (=> b!318432 (= e!197852 (not (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (and (bvsge lt!155388 #b00000000000000000000000000000000) (bvslt lt!155388 (size!8035 a!3293))))))))

(declare-fun e!197850 () Bool)

(assert (=> b!318432 e!197850))

(declare-fun res!173171 () Bool)

(assert (=> b!318432 (=> (not res!173171) (not e!197850))))

(assert (=> b!318432 (= res!173171 (= lt!155387 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155388 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318432 (= lt!155388 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun lt!155389 () array!16239)

(declare-fun b!318433 () Bool)

(assert (=> b!318433 (= e!197850 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155389 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155388 k!2441 lt!155389 mask!3709)))))

(assert (=> b!318433 (= lt!155389 (array!16240 (store (arr!7683 a!3293) i!1240 k!2441) (size!8035 a!3293)))))

(declare-fun b!318434 () Bool)

(declare-fun res!173170 () Bool)

(assert (=> b!318434 (=> (not res!173170) (not e!197854))))

(assert (=> b!318434 (= res!173170 (and (= (size!8035 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8035 a!3293))))))

(declare-fun b!318435 () Bool)

(declare-fun res!173167 () Bool)

(assert (=> b!318435 (=> (not res!173167) (not e!197854))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16239 (_ BitVec 32)) SeekEntryResult!2834)

(assert (=> b!318435 (= res!173167 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2834 i!1240)))))

(declare-fun b!318436 () Bool)

(declare-fun res!173168 () Bool)

(assert (=> b!318436 (=> (not res!173168) (not e!197854))))

(declare-fun arrayContainsKey!0 (array!16239 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!318436 (= res!173168 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!318437 () Bool)

(assert (=> b!318437 (= e!197854 e!197853)))

(declare-fun res!173174 () Bool)

(assert (=> b!318437 (=> (not res!173174) (not e!197853))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318437 (= res!173174 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155390))))

(assert (=> b!318437 (= lt!155390 (Intermediate!2834 false resIndex!52 resX!52))))

(declare-fun b!318438 () Bool)

(declare-fun res!173172 () Bool)

(assert (=> b!318438 (=> (not res!173172) (not e!197854))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16239 (_ BitVec 32)) Bool)

(assert (=> b!318438 (= res!173172 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!31870 res!173175) b!318434))

(assert (= (and b!318434 res!173170) b!318429))

(assert (= (and b!318429 res!173173) b!318436))

(assert (= (and b!318436 res!173168) b!318435))

(assert (= (and b!318435 res!173167) b!318438))

(assert (= (and b!318438 res!173172) b!318437))

(assert (= (and b!318437 res!173174) b!318430))

(assert (= (and b!318430 res!173166) b!318431))

(assert (= (and b!318431 res!173169) b!318432))

(assert (= (and b!318432 res!173171) b!318433))

(declare-fun m!327185 () Bool)

(assert (=> b!318438 m!327185))

(declare-fun m!327187 () Bool)

(assert (=> b!318436 m!327187))

(declare-fun m!327189 () Bool)

(assert (=> b!318435 m!327189))

(declare-fun m!327191 () Bool)

(assert (=> b!318437 m!327191))

(assert (=> b!318437 m!327191))

(declare-fun m!327193 () Bool)

(assert (=> b!318437 m!327193))

(declare-fun m!327195 () Bool)

(assert (=> b!318433 m!327195))

(declare-fun m!327197 () Bool)

(assert (=> b!318433 m!327197))

(declare-fun m!327199 () Bool)

(assert (=> b!318433 m!327199))

(declare-fun m!327201 () Bool)

(assert (=> b!318430 m!327201))

(declare-fun m!327203 () Bool)

(assert (=> b!318429 m!327203))

(declare-fun m!327205 () Bool)

(assert (=> b!318431 m!327205))

(declare-fun m!327207 () Bool)

(assert (=> b!318431 m!327207))

(declare-fun m!327209 () Bool)

(assert (=> start!31870 m!327209))

(declare-fun m!327211 () Bool)

(assert (=> start!31870 m!327211))

(declare-fun m!327213 () Bool)

(assert (=> b!318432 m!327213))

(declare-fun m!327215 () Bool)

(assert (=> b!318432 m!327215))

(push 1)

(assert (not b!318432))

(assert (not start!31870))

(assert (not b!318431))

(assert (not b!318429))

(assert (not b!318433))

(assert (not b!318435))

(assert (not b!318438))

(assert (not b!318437))

(assert (not b!318436))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!318535 () Bool)

(declare-fun e!197915 () Bool)

(declare-fun lt!155417 () SeekEntryResult!2834)

(assert (=> b!318535 (= e!197915 (bvsge (x!31726 lt!155417) #b01111111111111111111111111111110))))

(declare-fun b!318536 () Bool)

(assert (=> b!318536 (and (bvsge (index!13514 lt!155417) #b00000000000000000000000000000000) (bvslt (index!13514 lt!155417) (size!8035 lt!155389)))))

(declare-fun e!197913 () Bool)

(assert (=> b!318536 (= e!197913 (= (select (arr!7683 lt!155389) (index!13514 lt!155417)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!318537 () Bool)

(declare-fun e!197914 () SeekEntryResult!2834)

(declare-fun e!197911 () SeekEntryResult!2834)

(assert (=> b!318537 (= e!197914 e!197911)))

(declare-fun c!50283 () Bool)

(declare-fun lt!155418 () (_ BitVec 64))

(assert (=> b!318537 (= c!50283 (or (= lt!155418 k!2441) (= (bvadd lt!155418 lt!155418) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!69099 () Bool)

(assert (=> d!69099 e!197915))

(declare-fun c!50285 () Bool)

(assert (=> d!69099 (= c!50285 (and (is-Intermediate!2834 lt!155417) (undefined!3646 lt!155417)))))

(assert (=> d!69099 (= lt!155417 e!197914)))

(declare-fun c!50284 () Bool)

(assert (=> d!69099 (= c!50284 (bvsge x!1427 #b01111111111111111111111111111110))))

(assert (=> d!69099 (= lt!155418 (select (arr!7683 lt!155389) index!1781))))

(assert (=> d!69099 (validMask!0 mask!3709)))

(assert (=> d!69099 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155389 mask!3709) lt!155417)))

(declare-fun b!318538 () Bool)

(declare-fun e!197912 () Bool)

(assert (=> b!318538 (= e!197915 e!197912)))

(declare-fun res!173213 () Bool)

(assert (=> b!318538 (= res!173213 (and (is-Intermediate!2834 lt!155417) (not (undefined!3646 lt!155417)) (bvslt (x!31726 lt!155417) #b01111111111111111111111111111110) (bvsge (x!31726 lt!155417) #b00000000000000000000000000000000) (bvsge (x!31726 lt!155417) x!1427)))))

(assert (=> b!318538 (=> (not res!173213) (not e!197912))))

(declare-fun b!318539 () Bool)

(assert (=> b!318539 (= e!197911 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 lt!155389 mask!3709))))

(declare-fun b!318540 () Bool)

(assert (=> b!318540 (= e!197914 (Intermediate!2834 true index!1781 x!1427))))

(declare-fun b!318541 () Bool)

(assert (=> b!318541 (and (bvsge (index!13514 lt!155417) #b00000000000000000000000000000000) (bvslt (index!13514 lt!155417) (size!8035 lt!155389)))))

(declare-fun res!173214 () Bool)

(assert (=> b!318541 (= res!173214 (= (select (arr!7683 lt!155389) (index!13514 lt!155417)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!318541 (=> res!173214 e!197913)))

(declare-fun b!318542 () Bool)

(assert (=> b!318542 (= e!197911 (Intermediate!2834 false index!1781 x!1427))))

(declare-fun b!318543 () Bool)

(assert (=> b!318543 (and (bvsge (index!13514 lt!155417) #b00000000000000000000000000000000) (bvslt (index!13514 lt!155417) (size!8035 lt!155389)))))

(declare-fun res!173215 () Bool)

(assert (=> b!318543 (= res!173215 (= (select (arr!7683 lt!155389) (index!13514 lt!155417)) k!2441))))

(assert (=> b!318543 (=> res!173215 e!197913)))

(assert (=> b!318543 (= e!197912 e!197913)))

(assert (= (and d!69099 c!50284) b!318540))

(assert (= (and d!69099 (not c!50284)) b!318537))

(assert (= (and b!318537 c!50283) b!318542))

(assert (= (and b!318537 (not c!50283)) b!318539))

(assert (= (and d!69099 c!50285) b!318535))

(assert (= (and d!69099 (not c!50285)) b!318538))

(assert (= (and b!318538 res!173213) b!318543))

(assert (= (and b!318543 (not res!173215)) b!318541))

(assert (= (and b!318541 (not res!173214)) b!318536))

(declare-fun m!327247 () Bool)

(assert (=> b!318543 m!327247))

(assert (=> b!318539 m!327215))

(assert (=> b!318539 m!327215))

(declare-fun m!327249 () Bool)

(assert (=> b!318539 m!327249))

(assert (=> b!318536 m!327247))

(assert (=> b!318541 m!327247))

(declare-fun m!327251 () Bool)

(assert (=> d!69099 m!327251))

(assert (=> d!69099 m!327209))

(assert (=> b!318433 d!69099))

(declare-fun b!318544 () Bool)

(declare-fun e!197920 () Bool)

(declare-fun lt!155419 () SeekEntryResult!2834)

(assert (=> b!318544 (= e!197920 (bvsge (x!31726 lt!155419) #b01111111111111111111111111111110))))

(declare-fun b!318545 () Bool)

(assert (=> b!318545 (and (bvsge (index!13514 lt!155419) #b00000000000000000000000000000000) (bvslt (index!13514 lt!155419) (size!8035 lt!155389)))))

(declare-fun e!197918 () Bool)

(assert (=> b!318545 (= e!197918 (= (select (arr!7683 lt!155389) (index!13514 lt!155419)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!318546 () Bool)

(declare-fun e!197919 () SeekEntryResult!2834)

(declare-fun e!197916 () SeekEntryResult!2834)

(assert (=> b!318546 (= e!197919 e!197916)))

(declare-fun c!50286 () Bool)

(declare-fun lt!155420 () (_ BitVec 64))

(assert (=> b!318546 (= c!50286 (or (= lt!155420 k!2441) (= (bvadd lt!155420 lt!155420) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!69115 () Bool)

(assert (=> d!69115 e!197920))

(declare-fun c!50288 () Bool)

(assert (=> d!69115 (= c!50288 (and (is-Intermediate!2834 lt!155419) (undefined!3646 lt!155419)))))

(assert (=> d!69115 (= lt!155419 e!197919)))

(declare-fun c!50287 () Bool)

(assert (=> d!69115 (= c!50287 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(assert (=> d!69115 (= lt!155420 (select (arr!7683 lt!155389) lt!155388))))

(assert (=> d!69115 (validMask!0 mask!3709)))

(assert (=> d!69115 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155388 k!2441 lt!155389 mask!3709) lt!155419)))

(declare-fun b!318547 () Bool)

(declare-fun e!197917 () Bool)

(assert (=> b!318547 (= e!197920 e!197917)))

(declare-fun res!173216 () Bool)

(assert (=> b!318547 (= res!173216 (and (is-Intermediate!2834 lt!155419) (not (undefined!3646 lt!155419)) (bvslt (x!31726 lt!155419) #b01111111111111111111111111111110) (bvsge (x!31726 lt!155419) #b00000000000000000000000000000000) (bvsge (x!31726 lt!155419) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!318547 (=> (not res!173216) (not e!197917))))

(declare-fun b!318548 () Bool)

(assert (=> b!318548 (= e!197916 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 lt!155388 (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k!2441 lt!155389 mask!3709))))

(declare-fun b!318549 () Bool)

(assert (=> b!318549 (= e!197919 (Intermediate!2834 true lt!155388 (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!318550 () Bool)

(assert (=> b!318550 (and (bvsge (index!13514 lt!155419) #b00000000000000000000000000000000) (bvslt (index!13514 lt!155419) (size!8035 lt!155389)))))

(declare-fun res!173217 () Bool)

(assert (=> b!318550 (= res!173217 (= (select (arr!7683 lt!155389) (index!13514 lt!155419)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!318550 (=> res!173217 e!197918)))

(declare-fun b!318551 () Bool)

(assert (=> b!318551 (= e!197916 (Intermediate!2834 false lt!155388 (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!318552 () Bool)

(assert (=> b!318552 (and (bvsge (index!13514 lt!155419) #b00000000000000000000000000000000) (bvslt (index!13514 lt!155419) (size!8035 lt!155389)))))

(declare-fun res!173218 () Bool)

(assert (=> b!318552 (= res!173218 (= (select (arr!7683 lt!155389) (index!13514 lt!155419)) k!2441))))

(assert (=> b!318552 (=> res!173218 e!197918)))

(assert (=> b!318552 (= e!197917 e!197918)))

(assert (= (and d!69115 c!50287) b!318549))

(assert (= (and d!69115 (not c!50287)) b!318546))

(assert (= (and b!318546 c!50286) b!318551))

(assert (= (and b!318546 (not c!50286)) b!318548))

(assert (= (and d!69115 c!50288) b!318544))

(assert (= (and d!69115 (not c!50288)) b!318547))

(assert (= (and b!318547 res!173216) b!318552))

(assert (= (and b!318552 (not res!173218)) b!318550))

(assert (= (and b!318550 (not res!173217)) b!318545))

(declare-fun m!327253 () Bool)

(assert (=> b!318552 m!327253))

(declare-fun m!327255 () Bool)

(assert (=> b!318548 m!327255))

(assert (=> b!318548 m!327255))

(declare-fun m!327257 () Bool)

(assert (=> b!318548 m!327257))

(assert (=> b!318545 m!327253))

(assert (=> b!318550 m!327253))

(declare-fun m!327259 () Bool)

(assert (=> d!69115 m!327259))

(assert (=> d!69115 m!327209))

(assert (=> b!318433 d!69115))

(declare-fun d!69117 () Bool)

(assert (=> d!69117 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!318429 d!69117))

(declare-fun d!69119 () Bool)

(assert (=> d!69119 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31870 d!69119))

(declare-fun d!69121 () Bool)

(assert (=> d!69121 (= (array_inv!5637 a!3293) (bvsge (size!8035 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31870 d!69121))

(declare-fun b!318658 () Bool)

(declare-fun e!197980 () SeekEntryResult!2834)

(assert (=> b!318658 (= e!197980 Undefined!2834)))

(declare-fun b!318659 () Bool)

(declare-fun e!197979 () SeekEntryResult!2834)

(declare-fun lt!155469 () SeekEntryResult!2834)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16239 (_ BitVec 32)) SeekEntryResult!2834)

(assert (=> b!318659 (= e!197979 (seekKeyOrZeroReturnVacant!0 (x!31726 lt!155469) (index!13514 lt!155469) (index!13514 lt!155469) k!2441 a!3293 mask!3709))))

(declare-fun b!318660 () Bool)

(assert (=> b!318660 (= e!197979 (MissingZero!2834 (index!13514 lt!155469)))))

(declare-fun d!69123 () Bool)

(declare-fun lt!155467 () SeekEntryResult!2834)

(assert (=> d!69123 (and (or (is-Undefined!2834 lt!155467) (not (is-Found!2834 lt!155467)) (and (bvsge (index!13513 lt!155467) #b00000000000000000000000000000000) (bvslt (index!13513 lt!155467) (size!8035 a!3293)))) (or (is-Undefined!2834 lt!155467) (is-Found!2834 lt!155467) (not (is-MissingZero!2834 lt!155467)) (and (bvsge (index!13512 lt!155467) #b00000000000000000000000000000000) (bvslt (index!13512 lt!155467) (size!8035 a!3293)))) (or (is-Undefined!2834 lt!155467) (is-Found!2834 lt!155467) (is-MissingZero!2834 lt!155467) (not (is-MissingVacant!2834 lt!155467)) (and (bvsge (index!13515 lt!155467) #b00000000000000000000000000000000) (bvslt (index!13515 lt!155467) (size!8035 a!3293)))) (or (is-Undefined!2834 lt!155467) (ite (is-Found!2834 lt!155467) (= (select (arr!7683 a!3293) (index!13513 lt!155467)) k!2441) (ite (is-MissingZero!2834 lt!155467) (= (select (arr!7683 a!3293) (index!13512 lt!155467)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2834 lt!155467) (= (select (arr!7683 a!3293) (index!13515 lt!155467)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!69123 (= lt!155467 e!197980)))

(declare-fun c!50332 () Bool)

(assert (=> d!69123 (= c!50332 (and (is-Intermediate!2834 lt!155469) (undefined!3646 lt!155469)))))

(assert (=> d!69123 (= lt!155469 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!69123 (validMask!0 mask!3709)))

(assert (=> d!69123 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!155467)))

(declare-fun b!318661 () Bool)

(declare-fun e!197981 () SeekEntryResult!2834)

(assert (=> b!318661 (= e!197980 e!197981)))

(declare-fun lt!155468 () (_ BitVec 64))

(assert (=> b!318661 (= lt!155468 (select (arr!7683 a!3293) (index!13514 lt!155469)))))

(declare-fun c!50331 () Bool)

(assert (=> b!318661 (= c!50331 (= lt!155468 k!2441))))

(declare-fun b!318662 () Bool)

(declare-fun c!50333 () Bool)

(assert (=> b!318662 (= c!50333 (= lt!155468 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!318662 (= e!197981 e!197979)))

(declare-fun b!318663 () Bool)

(assert (=> b!318663 (= e!197981 (Found!2834 (index!13514 lt!155469)))))

(assert (= (and d!69123 c!50332) b!318658))

(assert (= (and d!69123 (not c!50332)) b!318661))

(assert (= (and b!318661 c!50331) b!318663))

(assert (= (and b!318661 (not c!50331)) b!318662))

(assert (= (and b!318662 c!50333) b!318660))

(assert (= (and b!318662 (not c!50333)) b!318659))

(declare-fun m!327325 () Bool)

(assert (=> b!318659 m!327325))

(assert (=> d!69123 m!327191))

(declare-fun m!327327 () Bool)

(assert (=> d!69123 m!327327))

(declare-fun m!327329 () Bool)

(assert (=> d!69123 m!327329))

(declare-fun m!327331 () Bool)

(assert (=> d!69123 m!327331))

(assert (=> d!69123 m!327209))

(assert (=> d!69123 m!327191))

(assert (=> d!69123 m!327193))

(declare-fun m!327333 () Bool)

(assert (=> b!318661 m!327333))

(assert (=> b!318435 d!69123))

(declare-fun d!69147 () Bool)

(declare-fun res!173245 () Bool)

(declare-fun e!197986 () Bool)

(assert (=> d!69147 (=> res!173245 e!197986)))

(assert (=> d!69147 (= res!173245 (= (select (arr!7683 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!69147 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!197986)))

(declare-fun b!318668 () Bool)

(declare-fun e!197987 () Bool)

(assert (=> b!318668 (= e!197986 e!197987)))

(declare-fun res!173246 () Bool)

(assert (=> b!318668 (=> (not res!173246) (not e!197987))))

(assert (=> b!318668 (= res!173246 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8035 a!3293)))))

(declare-fun b!318669 () Bool)

(assert (=> b!318669 (= e!197987 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69147 (not res!173245)) b!318668))

(assert (= (and b!318668 res!173246) b!318669))

(declare-fun m!327335 () Bool)

(assert (=> d!69147 m!327335))

(declare-fun m!327337 () Bool)

(assert (=> b!318669 m!327337))

(assert (=> b!318436 d!69147))

(declare-fun b!318670 () Bool)

(declare-fun e!197992 () Bool)

(declare-fun lt!155474 () SeekEntryResult!2834)

(assert (=> b!318670 (= e!197992 (bvsge (x!31726 lt!155474) #b01111111111111111111111111111110))))

(declare-fun b!318671 () Bool)

(assert (=> b!318671 (and (bvsge (index!13514 lt!155474) #b00000000000000000000000000000000) (bvslt (index!13514 lt!155474) (size!8035 a!3293)))))

(declare-fun e!197990 () Bool)

(assert (=> b!318671 (= e!197990 (= (select (arr!7683 a!3293) (index!13514 lt!155474)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!318672 () Bool)

(declare-fun e!197991 () SeekEntryResult!2834)

(declare-fun e!197988 () SeekEntryResult!2834)

(assert (=> b!318672 (= e!197991 e!197988)))

(declare-fun c!50334 () Bool)

(declare-fun lt!155475 () (_ BitVec 64))

(assert (=> b!318672 (= c!50334 (or (= lt!155475 k!2441) (= (bvadd lt!155475 lt!155475) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!69149 () Bool)

(assert (=> d!69149 e!197992))

(declare-fun c!50336 () Bool)

(assert (=> d!69149 (= c!50336 (and (is-Intermediate!2834 lt!155474) (undefined!3646 lt!155474)))))

(assert (=> d!69149 (= lt!155474 e!197991)))

(declare-fun c!50335 () Bool)

(assert (=> d!69149 (= c!50335 (bvsge x!1427 #b01111111111111111111111111111110))))

(assert (=> d!69149 (= lt!155475 (select (arr!7683 a!3293) index!1781))))

(assert (=> d!69149 (validMask!0 mask!3709)))

(assert (=> d!69149 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!155474)))

(declare-fun b!318673 () Bool)

(declare-fun e!197989 () Bool)

(assert (=> b!318673 (= e!197992 e!197989)))

(declare-fun res!173247 () Bool)

(assert (=> b!318673 (= res!173247 (and (is-Intermediate!2834 lt!155474) (not (undefined!3646 lt!155474)) (bvslt (x!31726 lt!155474) #b01111111111111111111111111111110) (bvsge (x!31726 lt!155474) #b00000000000000000000000000000000) (bvsge (x!31726 lt!155474) x!1427)))))

(assert (=> b!318673 (=> (not res!173247) (not e!197989))))

(declare-fun b!318674 () Bool)

(assert (=> b!318674 (= e!197988 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!318675 () Bool)

(assert (=> b!318675 (= e!197991 (Intermediate!2834 true index!1781 x!1427))))

(declare-fun b!318676 () Bool)

(assert (=> b!318676 (and (bvsge (index!13514 lt!155474) #b00000000000000000000000000000000) (bvslt (index!13514 lt!155474) (size!8035 a!3293)))))

(declare-fun res!173248 () Bool)

(assert (=> b!318676 (= res!173248 (= (select (arr!7683 a!3293) (index!13514 lt!155474)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!318676 (=> res!173248 e!197990)))

(declare-fun b!318677 () Bool)

(assert (=> b!318677 (= e!197988 (Intermediate!2834 false index!1781 x!1427))))

(declare-fun b!318678 () Bool)

(assert (=> b!318678 (and (bvsge (index!13514 lt!155474) #b00000000000000000000000000000000) (bvslt (index!13514 lt!155474) (size!8035 a!3293)))))

(declare-fun res!173249 () Bool)

(assert (=> b!318678 (= res!173249 (= (select (arr!7683 a!3293) (index!13514 lt!155474)) k!2441))))

(assert (=> b!318678 (=> res!173249 e!197990)))

(assert (=> b!318678 (= e!197989 e!197990)))

(assert (= (and d!69149 c!50335) b!318675))

(assert (= (and d!69149 (not c!50335)) b!318672))

(assert (= (and b!318672 c!50334) b!318677))

(assert (= (and b!318672 (not c!50334)) b!318674))

(assert (= (and d!69149 c!50336) b!318670))

(assert (= (and d!69149 (not c!50336)) b!318673))

(assert (= (and b!318673 res!173247) b!318678))

(assert (= (and b!318678 (not res!173249)) b!318676))

(assert (= (and b!318676 (not res!173248)) b!318671))

(declare-fun m!327339 () Bool)

(assert (=> b!318678 m!327339))

(assert (=> b!318674 m!327215))

(assert (=> b!318674 m!327215))

(declare-fun m!327341 () Bool)

(assert (=> b!318674 m!327341))

(assert (=> b!318671 m!327339))

(assert (=> b!318676 m!327339))

(assert (=> d!69149 m!327205))

(assert (=> d!69149 m!327209))

(assert (=> b!318431 d!69149))

(declare-fun b!318679 () Bool)

(declare-fun e!197997 () Bool)

(declare-fun lt!155478 () SeekEntryResult!2834)

(assert (=> b!318679 (= e!197997 (bvsge (x!31726 lt!155478) #b01111111111111111111111111111110))))

(declare-fun b!318680 () Bool)

(assert (=> b!318680 (and (bvsge (index!13514 lt!155478) #b00000000000000000000000000000000) (bvslt (index!13514 lt!155478) (size!8035 a!3293)))))

(declare-fun e!197995 () Bool)

(assert (=> b!318680 (= e!197995 (= (select (arr!7683 a!3293) (index!13514 lt!155478)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!318681 () Bool)

(declare-fun e!197996 () SeekEntryResult!2834)

(declare-fun e!197993 () SeekEntryResult!2834)

(assert (=> b!318681 (= e!197996 e!197993)))

(declare-fun c!50337 () Bool)

(declare-fun lt!155479 () (_ BitVec 64))

(assert (=> b!318681 (= c!50337 (or (= lt!155479 k!2441) (= (bvadd lt!155479 lt!155479) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!69153 () Bool)

(assert (=> d!69153 e!197997))

(declare-fun c!50339 () Bool)

(assert (=> d!69153 (= c!50339 (and (is-Intermediate!2834 lt!155478) (undefined!3646 lt!155478)))))

(assert (=> d!69153 (= lt!155478 e!197996)))

(declare-fun c!50338 () Bool)

(assert (=> d!69153 (= c!50338 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(assert (=> d!69153 (= lt!155479 (select (arr!7683 a!3293) lt!155388))))

(assert (=> d!69153 (validMask!0 mask!3709)))

(assert (=> d!69153 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155388 k!2441 a!3293 mask!3709) lt!155478)))

(declare-fun b!318682 () Bool)

(declare-fun e!197994 () Bool)

(assert (=> b!318682 (= e!197997 e!197994)))

(declare-fun res!173250 () Bool)

(assert (=> b!318682 (= res!173250 (and (is-Intermediate!2834 lt!155478) (not (undefined!3646 lt!155478)) (bvslt (x!31726 lt!155478) #b01111111111111111111111111111110) (bvsge (x!31726 lt!155478) #b00000000000000000000000000000000) (bvsge (x!31726 lt!155478) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!318682 (=> (not res!173250) (not e!197994))))

(declare-fun b!318683 () Bool)

(assert (=> b!318683 (= e!197993 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 lt!155388 (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!318684 () Bool)

(assert (=> b!318684 (= e!197996 (Intermediate!2834 true lt!155388 (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!318685 () Bool)

(assert (=> b!318685 (and (bvsge (index!13514 lt!155478) #b00000000000000000000000000000000) (bvslt (index!13514 lt!155478) (size!8035 a!3293)))))

(declare-fun res!173251 () Bool)

(assert (=> b!318685 (= res!173251 (= (select (arr!7683 a!3293) (index!13514 lt!155478)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!318685 (=> res!173251 e!197995)))

(declare-fun b!318686 () Bool)

(assert (=> b!318686 (= e!197993 (Intermediate!2834 false lt!155388 (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!318687 () Bool)

(assert (=> b!318687 (and (bvsge (index!13514 lt!155478) #b00000000000000000000000000000000) (bvslt (index!13514 lt!155478) (size!8035 a!3293)))))

(declare-fun res!173252 () Bool)

(assert (=> b!318687 (= res!173252 (= (select (arr!7683 a!3293) (index!13514 lt!155478)) k!2441))))

(assert (=> b!318687 (=> res!173252 e!197995)))

(assert (=> b!318687 (= e!197994 e!197995)))

(assert (= (and d!69153 c!50338) b!318684))

(assert (= (and d!69153 (not c!50338)) b!318681))

(assert (= (and b!318681 c!50337) b!318686))

(assert (= (and b!318681 (not c!50337)) b!318683))

(assert (= (and d!69153 c!50339) b!318679))

(assert (= (and d!69153 (not c!50339)) b!318682))

(assert (= (and b!318682 res!173250) b!318687))

(assert (= (and b!318687 (not res!173252)) b!318685))

(assert (= (and b!318685 (not res!173251)) b!318680))

(declare-fun m!327343 () Bool)

(assert (=> b!318687 m!327343))

(assert (=> b!318683 m!327255))

(assert (=> b!318683 m!327255))

(declare-fun m!327345 () Bool)

(assert (=> b!318683 m!327345))

(assert (=> b!318680 m!327343))

(assert (=> b!318685 m!327343))

(declare-fun m!327347 () Bool)

(assert (=> d!69153 m!327347))

(assert (=> d!69153 m!327209))

(assert (=> b!318432 d!69153))

(declare-fun d!69155 () Bool)

(declare-fun lt!155484 () (_ BitVec 32))

(assert (=> d!69155 (and (bvsge lt!155484 #b00000000000000000000000000000000) (bvslt lt!155484 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!69155 (= lt!155484 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!69155 (validMask!0 mask!3709)))

(assert (=> d!69155 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!155484)))

(declare-fun bs!11105 () Bool)

(assert (= bs!11105 d!69155))

(declare-fun m!327359 () Bool)

(assert (=> bs!11105 m!327359))

(assert (=> bs!11105 m!327209))

(assert (=> b!318432 d!69155))

(declare-fun b!318703 () Bool)

(declare-fun e!198013 () Bool)

(declare-fun lt!155485 () SeekEntryResult!2834)

(assert (=> b!318703 (= e!198013 (bvsge (x!31726 lt!155485) #b01111111111111111111111111111110))))

(declare-fun b!318704 () Bool)

(assert (=> b!318704 (and (bvsge (index!13514 lt!155485) #b00000000000000000000000000000000) (bvslt (index!13514 lt!155485) (size!8035 a!3293)))))

(declare-fun e!198011 () Bool)

(assert (=> b!318704 (= e!198011 (= (select (arr!7683 a!3293) (index!13514 lt!155485)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!318705 () Bool)

(declare-fun e!198012 () SeekEntryResult!2834)

(declare-fun e!198009 () SeekEntryResult!2834)

(assert (=> b!318705 (= e!198012 e!198009)))

(declare-fun c!50343 () Bool)

(declare-fun lt!155486 () (_ BitVec 64))

(assert (=> b!318705 (= c!50343 (or (= lt!155486 k!2441) (= (bvadd lt!155486 lt!155486) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!69161 () Bool)

(assert (=> d!69161 e!198013))

(declare-fun c!50345 () Bool)

(assert (=> d!69161 (= c!50345 (and (is-Intermediate!2834 lt!155485) (undefined!3646 lt!155485)))))

(assert (=> d!69161 (= lt!155485 e!198012)))

(declare-fun c!50344 () Bool)

(assert (=> d!69161 (= c!50344 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!69161 (= lt!155486 (select (arr!7683 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!69161 (validMask!0 mask!3709)))

(assert (=> d!69161 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155485)))

(declare-fun b!318706 () Bool)

(declare-fun e!198010 () Bool)

(assert (=> b!318706 (= e!198013 e!198010)))

(declare-fun res!173262 () Bool)

(assert (=> b!318706 (= res!173262 (and (is-Intermediate!2834 lt!155485) (not (undefined!3646 lt!155485)) (bvslt (x!31726 lt!155485) #b01111111111111111111111111111110) (bvsge (x!31726 lt!155485) #b00000000000000000000000000000000) (bvsge (x!31726 lt!155485) #b00000000000000000000000000000000)))))

(assert (=> b!318706 (=> (not res!173262) (not e!198010))))

(declare-fun b!318707 () Bool)

(assert (=> b!318707 (= e!198009 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!318708 () Bool)

(assert (=> b!318708 (= e!198012 (Intermediate!2834 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!318709 () Bool)

(assert (=> b!318709 (and (bvsge (index!13514 lt!155485) #b00000000000000000000000000000000) (bvslt (index!13514 lt!155485) (size!8035 a!3293)))))

(declare-fun res!173263 () Bool)

(assert (=> b!318709 (= res!173263 (= (select (arr!7683 a!3293) (index!13514 lt!155485)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!318709 (=> res!173263 e!198011)))

(declare-fun b!318710 () Bool)

(assert (=> b!318710 (= e!198009 (Intermediate!2834 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!318711 () Bool)

(assert (=> b!318711 (and (bvsge (index!13514 lt!155485) #b00000000000000000000000000000000) (bvslt (index!13514 lt!155485) (size!8035 a!3293)))))

(declare-fun res!173264 () Bool)

(assert (=> b!318711 (= res!173264 (= (select (arr!7683 a!3293) (index!13514 lt!155485)) k!2441))))

(assert (=> b!318711 (=> res!173264 e!198011)))

(assert (=> b!318711 (= e!198010 e!198011)))

(assert (= (and d!69161 c!50344) b!318708))

(assert (= (and d!69161 (not c!50344)) b!318705))

(assert (= (and b!318705 c!50343) b!318710))

(assert (= (and b!318705 (not c!50343)) b!318707))

(assert (= (and d!69161 c!50345) b!318703))

(assert (= (and d!69161 (not c!50345)) b!318706))

(assert (= (and b!318706 res!173262) b!318711))

(assert (= (and b!318711 (not res!173264)) b!318709))

(assert (= (and b!318709 (not res!173263)) b!318704))

(declare-fun m!327361 () Bool)

(assert (=> b!318711 m!327361))

(assert (=> b!318707 m!327191))

(declare-fun m!327363 () Bool)

(assert (=> b!318707 m!327363))

(assert (=> b!318707 m!327363))

(declare-fun m!327365 () Bool)

(assert (=> b!318707 m!327365))

(assert (=> b!318704 m!327361))

(assert (=> b!318709 m!327361))

(assert (=> d!69161 m!327191))

(declare-fun m!327367 () Bool)

(assert (=> d!69161 m!327367))

(assert (=> d!69161 m!327209))

(assert (=> b!318437 d!69161))

(declare-fun d!69163 () Bool)

(declare-fun lt!155495 () (_ BitVec 32))

(declare-fun lt!155494 () (_ BitVec 32))

(assert (=> d!69163 (= lt!155495 (bvmul (bvxor lt!155494 (bvlshr lt!155494 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69163 (= lt!155494 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69163 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!173265 (let ((h!5401 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31735 (bvmul (bvxor h!5401 (bvlshr h!5401 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31735 (bvlshr x!31735 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!173265 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!173265 #b00000000000000000000000000000000))))))

(assert (=> d!69163 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!155495 (bvlshr lt!155495 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!318437 d!69163))

(declare-fun b!318732 () Bool)

(declare-fun e!198030 () Bool)

(declare-fun call!26030 () Bool)

(assert (=> b!318732 (= e!198030 call!26030)))

(declare-fun bm!26027 () Bool)

(assert (=> bm!26027 (= call!26030 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!318733 () Bool)

(declare-fun e!198029 () Bool)

(assert (=> b!318733 (= e!198029 e!198030)))

(declare-fun lt!155512 () (_ BitVec 64))

(assert (=> b!318733 (= lt!155512 (select (arr!7683 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9791 0))(
  ( (Unit!9792) )
))
(declare-fun lt!155511 () Unit!9791)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16239 (_ BitVec 64) (_ BitVec 32)) Unit!9791)

(assert (=> b!318733 (= lt!155511 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!155512 #b00000000000000000000000000000000))))

(assert (=> b!318733 (arrayContainsKey!0 a!3293 lt!155512 #b00000000000000000000000000000000)))

(declare-fun lt!155513 () Unit!9791)

(assert (=> b!318733 (= lt!155513 lt!155511)))

(declare-fun res!173276 () Bool)

(assert (=> b!318733 (= res!173276 (= (seekEntryOrOpen!0 (select (arr!7683 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2834 #b00000000000000000000000000000000)))))

(assert (=> b!318733 (=> (not res!173276) (not e!198030))))

(declare-fun d!69167 () Bool)

(declare-fun res!173277 () Bool)

(declare-fun e!198031 () Bool)

(assert (=> d!69167 (=> res!173277 e!198031)))

(assert (=> d!69167 (= res!173277 (bvsge #b00000000000000000000000000000000 (size!8035 a!3293)))))

(assert (=> d!69167 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!198031)))

(declare-fun b!318734 () Bool)

(assert (=> b!318734 (= e!198031 e!198029)))

(declare-fun c!50351 () Bool)

(assert (=> b!318734 (= c!50351 (validKeyInArray!0 (select (arr!7683 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!318735 () Bool)

(assert (=> b!318735 (= e!198029 call!26030)))

(assert (= (and d!69167 (not res!173277)) b!318734))

(assert (= (and b!318734 c!50351) b!318733))

(assert (= (and b!318734 (not c!50351)) b!318735))

(assert (= (and b!318733 res!173276) b!318732))

(assert (= (or b!318732 b!318735) bm!26027))

(declare-fun m!327381 () Bool)

(assert (=> bm!26027 m!327381))

(assert (=> b!318733 m!327335))

(declare-fun m!327383 () Bool)

(assert (=> b!318733 m!327383))

(declare-fun m!327385 () Bool)

(assert (=> b!318733 m!327385))

(assert (=> b!318733 m!327335))

(declare-fun m!327387 () Bool)

(assert (=> b!318733 m!327387))

(assert (=> b!318734 m!327335))

(assert (=> b!318734 m!327335))

(declare-fun m!327389 () Bool)

(assert (=> b!318734 m!327389))

(assert (=> b!318438 d!69167))

(push 1)

