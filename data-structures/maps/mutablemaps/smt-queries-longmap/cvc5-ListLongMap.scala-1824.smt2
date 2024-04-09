; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32958 () Bool)

(assert start!32958)

(declare-fun b!328195 () Bool)

(declare-fun e!201777 () Bool)

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!328195 (= e!201777 (bvslt (bvsub #b01111111111111111111111111111110 x!1490) #b00000000000000000000000000000000))))

(declare-fun b!328196 () Bool)

(declare-fun res!180821 () Bool)

(declare-fun e!201778 () Bool)

(assert (=> b!328196 (=> (not res!180821) (not e!201778))))

(declare-datatypes ((array!16805 0))(
  ( (array!16806 (arr!7948 (Array (_ BitVec 32) (_ BitVec 64))) (size!8300 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16805)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!328196 (= res!180821 (and (= (size!8300 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8300 a!3305))))))

(declare-fun res!180824 () Bool)

(assert (=> start!32958 (=> (not res!180824) (not e!201778))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32958 (= res!180824 (validMask!0 mask!3777))))

(assert (=> start!32958 e!201778))

(declare-fun array_inv!5902 (array!16805) Bool)

(assert (=> start!32958 (array_inv!5902 a!3305)))

(assert (=> start!32958 true))

(declare-fun b!328197 () Bool)

(declare-fun res!180826 () Bool)

(assert (=> b!328197 (=> (not res!180826) (not e!201777))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!328197 (= res!180826 (and (= (select (arr!7948 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8300 a!3305))))))

(declare-fun b!328198 () Bool)

(declare-fun res!180820 () Bool)

(assert (=> b!328198 (=> (not res!180820) (not e!201778))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16805 (_ BitVec 32)) Bool)

(assert (=> b!328198 (= res!180820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!328199 () Bool)

(declare-fun res!180828 () Bool)

(assert (=> b!328199 (=> (not res!180828) (not e!201778))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3090 0))(
  ( (MissingZero!3090 (index!14536 (_ BitVec 32))) (Found!3090 (index!14537 (_ BitVec 32))) (Intermediate!3090 (undefined!3902 Bool) (index!14538 (_ BitVec 32)) (x!32766 (_ BitVec 32))) (Undefined!3090) (MissingVacant!3090 (index!14539 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16805 (_ BitVec 32)) SeekEntryResult!3090)

(assert (=> b!328199 (= res!180828 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3090 i!1250)))))

(declare-fun b!328200 () Bool)

(declare-fun res!180825 () Bool)

(assert (=> b!328200 (=> (not res!180825) (not e!201778))))

(declare-fun arrayContainsKey!0 (array!16805 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!328200 (= res!180825 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!328201 () Bool)

(declare-fun res!180822 () Bool)

(assert (=> b!328201 (=> (not res!180822) (not e!201777))))

(declare-fun lt!157868 () SeekEntryResult!3090)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16805 (_ BitVec 32)) SeekEntryResult!3090)

(assert (=> b!328201 (= res!180822 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157868))))

(declare-fun b!328202 () Bool)

(declare-fun res!180823 () Bool)

(assert (=> b!328202 (=> (not res!180823) (not e!201778))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!328202 (= res!180823 (validKeyInArray!0 k!2497))))

(declare-fun b!328203 () Bool)

(assert (=> b!328203 (= e!201778 e!201777)))

(declare-fun res!180827 () Bool)

(assert (=> b!328203 (=> (not res!180827) (not e!201777))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!328203 (= res!180827 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157868))))

(assert (=> b!328203 (= lt!157868 (Intermediate!3090 false resIndex!58 resX!58))))

(assert (= (and start!32958 res!180824) b!328196))

(assert (= (and b!328196 res!180821) b!328202))

(assert (= (and b!328202 res!180823) b!328200))

(assert (= (and b!328200 res!180825) b!328199))

(assert (= (and b!328199 res!180828) b!328198))

(assert (= (and b!328198 res!180820) b!328203))

(assert (= (and b!328203 res!180827) b!328197))

(assert (= (and b!328197 res!180826) b!328201))

(assert (= (and b!328201 res!180822) b!328195))

(declare-fun m!334225 () Bool)

(assert (=> b!328199 m!334225))

(declare-fun m!334227 () Bool)

(assert (=> b!328201 m!334227))

(declare-fun m!334229 () Bool)

(assert (=> b!328200 m!334229))

(declare-fun m!334231 () Bool)

(assert (=> b!328202 m!334231))

(declare-fun m!334233 () Bool)

(assert (=> b!328203 m!334233))

(assert (=> b!328203 m!334233))

(declare-fun m!334235 () Bool)

(assert (=> b!328203 m!334235))

(declare-fun m!334237 () Bool)

(assert (=> b!328197 m!334237))

(declare-fun m!334239 () Bool)

(assert (=> b!328198 m!334239))

(declare-fun m!334241 () Bool)

(assert (=> start!32958 m!334241))

(declare-fun m!334243 () Bool)

(assert (=> start!32958 m!334243))

(push 1)

(assert (not b!328199))

(assert (not b!328200))

(assert (not start!32958))

(assert (not b!328202))

(assert (not b!328198))

(assert (not b!328201))

(assert (not b!328203))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!69901 () Bool)

(declare-fun lt!157895 () SeekEntryResult!3090)

(assert (=> d!69901 (and (or (is-Undefined!3090 lt!157895) (not (is-Found!3090 lt!157895)) (and (bvsge (index!14537 lt!157895) #b00000000000000000000000000000000) (bvslt (index!14537 lt!157895) (size!8300 a!3305)))) (or (is-Undefined!3090 lt!157895) (is-Found!3090 lt!157895) (not (is-MissingZero!3090 lt!157895)) (and (bvsge (index!14536 lt!157895) #b00000000000000000000000000000000) (bvslt (index!14536 lt!157895) (size!8300 a!3305)))) (or (is-Undefined!3090 lt!157895) (is-Found!3090 lt!157895) (is-MissingZero!3090 lt!157895) (not (is-MissingVacant!3090 lt!157895)) (and (bvsge (index!14539 lt!157895) #b00000000000000000000000000000000) (bvslt (index!14539 lt!157895) (size!8300 a!3305)))) (or (is-Undefined!3090 lt!157895) (ite (is-Found!3090 lt!157895) (= (select (arr!7948 a!3305) (index!14537 lt!157895)) k!2497) (ite (is-MissingZero!3090 lt!157895) (= (select (arr!7948 a!3305) (index!14536 lt!157895)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3090 lt!157895) (= (select (arr!7948 a!3305) (index!14539 lt!157895)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!201826 () SeekEntryResult!3090)

(assert (=> d!69901 (= lt!157895 e!201826)))

(declare-fun c!51341 () Bool)

(declare-fun lt!157894 () SeekEntryResult!3090)

(assert (=> d!69901 (= c!51341 (and (is-Intermediate!3090 lt!157894) (undefined!3902 lt!157894)))))

(assert (=> d!69901 (= lt!157894 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!69901 (validMask!0 mask!3777)))

(assert (=> d!69901 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!157895)))

(declare-fun e!201825 () SeekEntryResult!3090)

(declare-fun b!328303 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16805 (_ BitVec 32)) SeekEntryResult!3090)

(assert (=> b!328303 (= e!201825 (seekKeyOrZeroReturnVacant!0 (x!32766 lt!157894) (index!14538 lt!157894) (index!14538 lt!157894) k!2497 a!3305 mask!3777))))

(declare-fun b!328304 () Bool)

(declare-fun c!51339 () Bool)

(declare-fun lt!157893 () (_ BitVec 64))

(assert (=> b!328304 (= c!51339 (= lt!157893 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!201824 () SeekEntryResult!3090)

(assert (=> b!328304 (= e!201824 e!201825)))

(declare-fun b!328305 () Bool)

(assert (=> b!328305 (= e!201824 (Found!3090 (index!14538 lt!157894)))))

(declare-fun b!328306 () Bool)

(assert (=> b!328306 (= e!201826 e!201824)))

(assert (=> b!328306 (= lt!157893 (select (arr!7948 a!3305) (index!14538 lt!157894)))))

(declare-fun c!51340 () Bool)

(assert (=> b!328306 (= c!51340 (= lt!157893 k!2497))))

(declare-fun b!328307 () Bool)

(assert (=> b!328307 (= e!201826 Undefined!3090)))

(declare-fun b!328308 () Bool)

(assert (=> b!328308 (= e!201825 (MissingZero!3090 (index!14538 lt!157894)))))

(assert (= (and d!69901 c!51341) b!328307))

(assert (= (and d!69901 (not c!51341)) b!328306))

(assert (= (and b!328306 c!51340) b!328305))

(assert (= (and b!328306 (not c!51340)) b!328304))

(assert (= (and b!328304 c!51339) b!328308))

(assert (= (and b!328304 (not c!51339)) b!328303))

(declare-fun m!334297 () Bool)

(assert (=> d!69901 m!334297))

(declare-fun m!334299 () Bool)

(assert (=> d!69901 m!334299))

(declare-fun m!334301 () Bool)

(assert (=> d!69901 m!334301))

(assert (=> d!69901 m!334233))

(assert (=> d!69901 m!334241))

(assert (=> d!69901 m!334233))

(assert (=> d!69901 m!334235))

(declare-fun m!334303 () Bool)

(assert (=> b!328303 m!334303))

(declare-fun m!334305 () Bool)

(assert (=> b!328306 m!334305))

(assert (=> b!328199 d!69901))

(declare-fun d!69911 () Bool)

(declare-fun res!180909 () Bool)

(declare-fun e!201841 () Bool)

(assert (=> d!69911 (=> res!180909 e!201841)))

(assert (=> d!69911 (= res!180909 (= (select (arr!7948 a!3305) #b00000000000000000000000000000000) k!2497))))

(assert (=> d!69911 (= (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000) e!201841)))

(declare-fun b!328331 () Bool)

(declare-fun e!201842 () Bool)

(assert (=> b!328331 (= e!201841 e!201842)))

(declare-fun res!180910 () Bool)

(assert (=> b!328331 (=> (not res!180910) (not e!201842))))

(assert (=> b!328331 (= res!180910 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8300 a!3305)))))

(declare-fun b!328332 () Bool)

(assert (=> b!328332 (= e!201842 (arrayContainsKey!0 a!3305 k!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69911 (not res!180909)) b!328331))

(assert (= (and b!328331 res!180910) b!328332))

(declare-fun m!334307 () Bool)

(assert (=> d!69911 m!334307))

(declare-fun m!334309 () Bool)

(assert (=> b!328332 m!334309))

(assert (=> b!328200 d!69911))

(declare-fun d!69913 () Bool)

(declare-fun e!201876 () Bool)

(assert (=> d!69913 e!201876))

(declare-fun c!51369 () Bool)

(declare-fun lt!157924 () SeekEntryResult!3090)

(assert (=> d!69913 (= c!51369 (and (is-Intermediate!3090 lt!157924) (undefined!3902 lt!157924)))))

(declare-fun e!201875 () SeekEntryResult!3090)

(assert (=> d!69913 (= lt!157924 e!201875)))

(declare-fun c!51370 () Bool)

(assert (=> d!69913 (= c!51370 (bvsge x!1490 #b01111111111111111111111111111110))))

(declare-fun lt!157923 () (_ BitVec 64))

(assert (=> d!69913 (= lt!157923 (select (arr!7948 a!3305) index!1840))))

(assert (=> d!69913 (validMask!0 mask!3777)))

(assert (=> d!69913 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157924)))

(declare-fun b!328387 () Bool)

(declare-fun e!201873 () Bool)

(assert (=> b!328387 (= e!201876 e!201873)))

(declare-fun res!180925 () Bool)

(assert (=> b!328387 (= res!180925 (and (is-Intermediate!3090 lt!157924) (not (undefined!3902 lt!157924)) (bvslt (x!32766 lt!157924) #b01111111111111111111111111111110) (bvsge (x!32766 lt!157924) #b00000000000000000000000000000000) (bvsge (x!32766 lt!157924) x!1490)))))

(assert (=> b!328387 (=> (not res!180925) (not e!201873))))

(declare-fun b!328388 () Bool)

(declare-fun e!201874 () SeekEntryResult!3090)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!328388 (= e!201874 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!328389 () Bool)

(assert (=> b!328389 (= e!201875 (Intermediate!3090 true index!1840 x!1490))))

(declare-fun b!328390 () Bool)

(assert (=> b!328390 (and (bvsge (index!14538 lt!157924) #b00000000000000000000000000000000) (bvslt (index!14538 lt!157924) (size!8300 a!3305)))))

(declare-fun res!180926 () Bool)

(assert (=> b!328390 (= res!180926 (= (select (arr!7948 a!3305) (index!14538 lt!157924)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!201872 () Bool)

(assert (=> b!328390 (=> res!180926 e!201872)))

(declare-fun b!328391 () Bool)

(assert (=> b!328391 (and (bvsge (index!14538 lt!157924) #b00000000000000000000000000000000) (bvslt (index!14538 lt!157924) (size!8300 a!3305)))))

(assert (=> b!328391 (= e!201872 (= (select (arr!7948 a!3305) (index!14538 lt!157924)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!328392 () Bool)

(assert (=> b!328392 (= e!201875 e!201874)))

(declare-fun c!51371 () Bool)

(assert (=> b!328392 (= c!51371 (or (= lt!157923 k!2497) (= (bvadd lt!157923 lt!157923) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!328393 () Bool)

(assert (=> b!328393 (and (bvsge (index!14538 lt!157924) #b00000000000000000000000000000000) (bvslt (index!14538 lt!157924) (size!8300 a!3305)))))

(declare-fun res!180924 () Bool)

(assert (=> b!328393 (= res!180924 (= (select (arr!7948 a!3305) (index!14538 lt!157924)) k!2497))))

(assert (=> b!328393 (=> res!180924 e!201872)))

(assert (=> b!328393 (= e!201873 e!201872)))

(declare-fun b!328394 () Bool)

(assert (=> b!328394 (= e!201874 (Intermediate!3090 false index!1840 x!1490))))

(declare-fun b!328395 () Bool)

(assert (=> b!328395 (= e!201876 (bvsge (x!32766 lt!157924) #b01111111111111111111111111111110))))

(assert (= (and d!69913 c!51370) b!328389))

(assert (= (and d!69913 (not c!51370)) b!328392))

(assert (= (and b!328392 c!51371) b!328394))

(assert (= (and b!328392 (not c!51371)) b!328388))

(assert (= (and d!69913 c!51369) b!328395))

(assert (= (and d!69913 (not c!51369)) b!328387))

(assert (= (and b!328387 res!180925) b!328393))

(assert (= (and b!328393 (not res!180924)) b!328390))

(assert (= (and b!328390 (not res!180926)) b!328391))

(declare-fun m!334337 () Bool)

(assert (=> b!328388 m!334337))

(assert (=> b!328388 m!334337))

(declare-fun m!334339 () Bool)

(assert (=> b!328388 m!334339))

(declare-fun m!334341 () Bool)

(assert (=> b!328390 m!334341))

(assert (=> b!328393 m!334341))

(assert (=> b!328391 m!334341))

(declare-fun m!334343 () Bool)

(assert (=> d!69913 m!334343))

(assert (=> d!69913 m!334241))

(assert (=> b!328201 d!69913))

(declare-fun d!69925 () Bool)

(assert (=> d!69925 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!32958 d!69925))

(declare-fun d!69933 () Bool)

(assert (=> d!69933 (= (array_inv!5902 a!3305) (bvsge (size!8300 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!32958 d!69933))

(declare-fun d!69935 () Bool)

(assert (=> d!69935 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!328202 d!69935))

(declare-fun d!69937 () Bool)

(declare-fun e!201896 () Bool)

(assert (=> d!69937 e!201896))

(declare-fun c!51383 () Bool)

(declare-fun lt!157941 () SeekEntryResult!3090)

(assert (=> d!69937 (= c!51383 (and (is-Intermediate!3090 lt!157941) (undefined!3902 lt!157941)))))

(declare-fun e!201895 () SeekEntryResult!3090)

(assert (=> d!69937 (= lt!157941 e!201895)))

(declare-fun c!51384 () Bool)

(assert (=> d!69937 (= c!51384 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!157940 () (_ BitVec 64))

(assert (=> d!69937 (= lt!157940 (select (arr!7948 a!3305) (toIndex!0 k!2497 mask!3777)))))

(assert (=> d!69937 (validMask!0 mask!3777)))

(assert (=> d!69937 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157941)))

(declare-fun b!328422 () Bool)

(declare-fun e!201893 () Bool)

(assert (=> b!328422 (= e!201896 e!201893)))

(declare-fun res!180932 () Bool)

(assert (=> b!328422 (= res!180932 (and (is-Intermediate!3090 lt!157941) (not (undefined!3902 lt!157941)) (bvslt (x!32766 lt!157941) #b01111111111111111111111111111110) (bvsge (x!32766 lt!157941) #b00000000000000000000000000000000) (bvsge (x!32766 lt!157941) #b00000000000000000000000000000000)))))

(assert (=> b!328422 (=> (not res!180932) (not e!201893))))

(declare-fun b!328423 () Bool)

(declare-fun e!201894 () SeekEntryResult!3090)

(assert (=> b!328423 (= e!201894 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!328424 () Bool)

(assert (=> b!328424 (= e!201895 (Intermediate!3090 true (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!328425 () Bool)

(assert (=> b!328425 (and (bvsge (index!14538 lt!157941) #b00000000000000000000000000000000) (bvslt (index!14538 lt!157941) (size!8300 a!3305)))))

(declare-fun res!180933 () Bool)

(assert (=> b!328425 (= res!180933 (= (select (arr!7948 a!3305) (index!14538 lt!157941)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!201892 () Bool)

(assert (=> b!328425 (=> res!180933 e!201892)))

(declare-fun b!328426 () Bool)

(assert (=> b!328426 (and (bvsge (index!14538 lt!157941) #b00000000000000000000000000000000) (bvslt (index!14538 lt!157941) (size!8300 a!3305)))))

(assert (=> b!328426 (= e!201892 (= (select (arr!7948 a!3305) (index!14538 lt!157941)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!328427 () Bool)

(assert (=> b!328427 (= e!201895 e!201894)))

(declare-fun c!51385 () Bool)

(assert (=> b!328427 (= c!51385 (or (= lt!157940 k!2497) (= (bvadd lt!157940 lt!157940) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!328428 () Bool)

(assert (=> b!328428 (and (bvsge (index!14538 lt!157941) #b00000000000000000000000000000000) (bvslt (index!14538 lt!157941) (size!8300 a!3305)))))

(declare-fun res!180931 () Bool)

(assert (=> b!328428 (= res!180931 (= (select (arr!7948 a!3305) (index!14538 lt!157941)) k!2497))))

(assert (=> b!328428 (=> res!180931 e!201892)))

(assert (=> b!328428 (= e!201893 e!201892)))

(declare-fun b!328429 () Bool)

(assert (=> b!328429 (= e!201894 (Intermediate!3090 false (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!328430 () Bool)

(assert (=> b!328430 (= e!201896 (bvsge (x!32766 lt!157941) #b01111111111111111111111111111110))))

(assert (= (and d!69937 c!51384) b!328424))

(assert (= (and d!69937 (not c!51384)) b!328427))

(assert (= (and b!328427 c!51385) b!328429))

(assert (= (and b!328427 (not c!51385)) b!328423))

(assert (= (and d!69937 c!51383) b!328430))

(assert (= (and d!69937 (not c!51383)) b!328422))

(assert (= (and b!328422 res!180932) b!328428))

(assert (= (and b!328428 (not res!180931)) b!328425))

(assert (= (and b!328425 (not res!180933)) b!328426))

(assert (=> b!328423 m!334233))

(declare-fun m!334355 () Bool)

(assert (=> b!328423 m!334355))

(assert (=> b!328423 m!334355))

(declare-fun m!334357 () Bool)

(assert (=> b!328423 m!334357))

(declare-fun m!334359 () Bool)

(assert (=> b!328425 m!334359))

(assert (=> b!328428 m!334359))

(assert (=> b!328426 m!334359))

(assert (=> d!69937 m!334233))

(declare-fun m!334361 () Bool)

(assert (=> d!69937 m!334361))

(assert (=> d!69937 m!334241))

(assert (=> b!328203 d!69937))

(declare-fun d!69939 () Bool)

(declare-fun lt!157952 () (_ BitVec 32))

(declare-fun lt!157951 () (_ BitVec 32))

(assert (=> d!69939 (= lt!157952 (bvmul (bvxor lt!157951 (bvlshr lt!157951 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69939 (= lt!157951 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69939 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!180936 (let ((h!5431 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32774 (bvmul (bvxor h!5431 (bvlshr h!5431 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32774 (bvlshr x!32774 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!180936 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!180936 #b00000000000000000000000000000000))))))

(assert (=> d!69939 (= (toIndex!0 k!2497 mask!3777) (bvand (bvxor lt!157952 (bvlshr lt!157952 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!328203 d!69939))

(declare-fun b!328470 () Bool)

(declare-fun e!201926 () Bool)

(declare-fun e!201928 () Bool)

(assert (=> b!328470 (= e!201926 e!201928)))

(declare-fun lt!157969 () (_ BitVec 64))

(assert (=> b!328470 (= lt!157969 (select (arr!7948 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10189 0))(
  ( (Unit!10190) )
))
(declare-fun lt!157968 () Unit!10189)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16805 (_ BitVec 64) (_ BitVec 32)) Unit!10189)

(assert (=> b!328470 (= lt!157968 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!157969 #b00000000000000000000000000000000))))

(assert (=> b!328470 (arrayContainsKey!0 a!3305 lt!157969 #b00000000000000000000000000000000)))

(declare-fun lt!157970 () Unit!10189)

(assert (=> b!328470 (= lt!157970 lt!157968)))

(declare-fun res!180957 () Bool)

(assert (=> b!328470 (= res!180957 (= (seekEntryOrOpen!0 (select (arr!7948 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3090 #b00000000000000000000000000000000)))))

(assert (=> b!328470 (=> (not res!180957) (not e!201928))))

(declare-fun b!328471 () Bool)

(declare-fun call!26129 () Bool)

(assert (=> b!328471 (= e!201926 call!26129)))

(declare-fun b!328472 () Bool)

(assert (=> b!328472 (= e!201928 call!26129)))

(declare-fun b!328473 () Bool)

(declare-fun e!201927 () Bool)

(assert (=> b!328473 (= e!201927 e!201926)))

(declare-fun c!51395 () Bool)

(assert (=> b!328473 (= c!51395 (validKeyInArray!0 (select (arr!7948 a!3305) #b00000000000000000000000000000000)))))

(declare-fun d!69947 () Bool)

(declare-fun res!180956 () Bool)

(assert (=> d!69947 (=> res!180956 e!201927)))

(assert (=> d!69947 (= res!180956 (bvsge #b00000000000000000000000000000000 (size!8300 a!3305)))))

(assert (=> d!69947 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!201927)))

(declare-fun bm!26126 () Bool)

(assert (=> bm!26126 (= call!26129 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(assert (= (and d!69947 (not res!180956)) b!328473))

(assert (= (and b!328473 c!51395) b!328470))

(assert (= (and b!328473 (not c!51395)) b!328471))

(assert (= (and b!328470 res!180957) b!328472))

(assert (= (or b!328472 b!328471) bm!26126))

(assert (=> b!328470 m!334307))

(declare-fun m!334395 () Bool)

(assert (=> b!328470 m!334395))

(declare-fun m!334397 () Bool)

(assert (=> b!328470 m!334397))

(assert (=> b!328470 m!334307))

(declare-fun m!334399 () Bool)

(assert (=> b!328470 m!334399))

(assert (=> b!328473 m!334307))

(assert (=> b!328473 m!334307))

(declare-fun m!334401 () Bool)

(assert (=> b!328473 m!334401))

