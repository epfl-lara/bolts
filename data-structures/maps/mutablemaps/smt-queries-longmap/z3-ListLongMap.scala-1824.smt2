; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32960 () Bool)

(assert start!32960)

(declare-fun b!328222 () Bool)

(declare-fun res!180850 () Bool)

(declare-fun e!201786 () Bool)

(assert (=> b!328222 (=> (not res!180850) (not e!201786))))

(declare-datatypes ((array!16807 0))(
  ( (array!16808 (arr!7949 (Array (_ BitVec 32) (_ BitVec 64))) (size!8301 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16807)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!328222 (= res!180850 (and (= (select (arr!7949 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8301 a!3305))))))

(declare-fun b!328223 () Bool)

(declare-fun e!201787 () Bool)

(assert (=> b!328223 (= e!201787 e!201786)))

(declare-fun res!180852 () Bool)

(assert (=> b!328223 (=> (not res!180852) (not e!201786))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3091 0))(
  ( (MissingZero!3091 (index!14540 (_ BitVec 32))) (Found!3091 (index!14541 (_ BitVec 32))) (Intermediate!3091 (undefined!3903 Bool) (index!14542 (_ BitVec 32)) (x!32767 (_ BitVec 32))) (Undefined!3091) (MissingVacant!3091 (index!14543 (_ BitVec 32))) )
))
(declare-fun lt!157871 () SeekEntryResult!3091)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16807 (_ BitVec 32)) SeekEntryResult!3091)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!328223 (= res!180852 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!157871))))

(assert (=> b!328223 (= lt!157871 (Intermediate!3091 false resIndex!58 resX!58))))

(declare-fun b!328224 () Bool)

(declare-fun res!180853 () Bool)

(assert (=> b!328224 (=> (not res!180853) (not e!201787))))

(declare-fun arrayContainsKey!0 (array!16807 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!328224 (= res!180853 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun res!180854 () Bool)

(assert (=> start!32960 (=> (not res!180854) (not e!201787))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32960 (= res!180854 (validMask!0 mask!3777))))

(assert (=> start!32960 e!201787))

(declare-fun array_inv!5903 (array!16807) Bool)

(assert (=> start!32960 (array_inv!5903 a!3305)))

(assert (=> start!32960 true))

(declare-fun b!328225 () Bool)

(declare-fun res!180855 () Bool)

(assert (=> b!328225 (=> (not res!180855) (not e!201786))))

(assert (=> b!328225 (= res!180855 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!157871))))

(declare-fun b!328226 () Bool)

(assert (=> b!328226 (= e!201786 (bvslt (bvsub #b01111111111111111111111111111110 x!1490) #b00000000000000000000000000000000))))

(declare-fun b!328227 () Bool)

(declare-fun res!180847 () Bool)

(assert (=> b!328227 (=> (not res!180847) (not e!201787))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!328227 (= res!180847 (validKeyInArray!0 k0!2497))))

(declare-fun b!328228 () Bool)

(declare-fun res!180849 () Bool)

(assert (=> b!328228 (=> (not res!180849) (not e!201787))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16807 (_ BitVec 32)) SeekEntryResult!3091)

(assert (=> b!328228 (= res!180849 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3091 i!1250)))))

(declare-fun b!328229 () Bool)

(declare-fun res!180848 () Bool)

(assert (=> b!328229 (=> (not res!180848) (not e!201787))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16807 (_ BitVec 32)) Bool)

(assert (=> b!328229 (= res!180848 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!328230 () Bool)

(declare-fun res!180851 () Bool)

(assert (=> b!328230 (=> (not res!180851) (not e!201787))))

(assert (=> b!328230 (= res!180851 (and (= (size!8301 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8301 a!3305))))))

(assert (= (and start!32960 res!180854) b!328230))

(assert (= (and b!328230 res!180851) b!328227))

(assert (= (and b!328227 res!180847) b!328224))

(assert (= (and b!328224 res!180853) b!328228))

(assert (= (and b!328228 res!180849) b!328229))

(assert (= (and b!328229 res!180848) b!328223))

(assert (= (and b!328223 res!180852) b!328222))

(assert (= (and b!328222 res!180850) b!328225))

(assert (= (and b!328225 res!180855) b!328226))

(declare-fun m!334245 () Bool)

(assert (=> start!32960 m!334245))

(declare-fun m!334247 () Bool)

(assert (=> start!32960 m!334247))

(declare-fun m!334249 () Bool)

(assert (=> b!328223 m!334249))

(assert (=> b!328223 m!334249))

(declare-fun m!334251 () Bool)

(assert (=> b!328223 m!334251))

(declare-fun m!334253 () Bool)

(assert (=> b!328228 m!334253))

(declare-fun m!334255 () Bool)

(assert (=> b!328224 m!334255))

(declare-fun m!334257 () Bool)

(assert (=> b!328225 m!334257))

(declare-fun m!334259 () Bool)

(assert (=> b!328227 m!334259))

(declare-fun m!334261 () Bool)

(assert (=> b!328229 m!334261))

(declare-fun m!334263 () Bool)

(assert (=> b!328222 m!334263))

(check-sat (not b!328224) (not b!328223) (not b!328227) (not b!328228) (not start!32960) (not b!328229) (not b!328225))
(check-sat)
(get-model)

(declare-fun b!328282 () Bool)

(declare-fun lt!157880 () SeekEntryResult!3091)

(assert (=> b!328282 (and (bvsge (index!14542 lt!157880) #b00000000000000000000000000000000) (bvslt (index!14542 lt!157880) (size!8301 a!3305)))))

(declare-fun e!201817 () Bool)

(assert (=> b!328282 (= e!201817 (= (select (arr!7949 a!3305) (index!14542 lt!157880)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!69899 () Bool)

(declare-fun e!201815 () Bool)

(assert (=> d!69899 e!201815))

(declare-fun c!51332 () Bool)

(get-info :version)

(assert (=> d!69899 (= c!51332 (and ((_ is Intermediate!3091) lt!157880) (undefined!3903 lt!157880)))))

(declare-fun e!201816 () SeekEntryResult!3091)

(assert (=> d!69899 (= lt!157880 e!201816)))

(declare-fun c!51331 () Bool)

(assert (=> d!69899 (= c!51331 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!157879 () (_ BitVec 64))

(assert (=> d!69899 (= lt!157879 (select (arr!7949 a!3305) (toIndex!0 k0!2497 mask!3777)))))

(assert (=> d!69899 (validMask!0 mask!3777)))

(assert (=> d!69899 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!157880)))

(declare-fun b!328283 () Bool)

(declare-fun e!201814 () SeekEntryResult!3091)

(assert (=> b!328283 (= e!201816 e!201814)))

(declare-fun c!51330 () Bool)

(assert (=> b!328283 (= c!51330 (or (= lt!157879 k0!2497) (= (bvadd lt!157879 lt!157879) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!328284 () Bool)

(assert (=> b!328284 (= e!201814 (Intermediate!3091 false (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!328285 () Bool)

(assert (=> b!328285 (and (bvsge (index!14542 lt!157880) #b00000000000000000000000000000000) (bvslt (index!14542 lt!157880) (size!8301 a!3305)))))

(declare-fun res!180896 () Bool)

(assert (=> b!328285 (= res!180896 (= (select (arr!7949 a!3305) (index!14542 lt!157880)) k0!2497))))

(assert (=> b!328285 (=> res!180896 e!201817)))

(declare-fun e!201813 () Bool)

(assert (=> b!328285 (= e!201813 e!201817)))

(declare-fun b!328286 () Bool)

(assert (=> b!328286 (= e!201816 (Intermediate!3091 true (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!328287 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!328287 (= e!201814 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!328288 () Bool)

(assert (=> b!328288 (and (bvsge (index!14542 lt!157880) #b00000000000000000000000000000000) (bvslt (index!14542 lt!157880) (size!8301 a!3305)))))

(declare-fun res!180895 () Bool)

(assert (=> b!328288 (= res!180895 (= (select (arr!7949 a!3305) (index!14542 lt!157880)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!328288 (=> res!180895 e!201817)))

(declare-fun b!328289 () Bool)

(assert (=> b!328289 (= e!201815 e!201813)))

(declare-fun res!180897 () Bool)

(assert (=> b!328289 (= res!180897 (and ((_ is Intermediate!3091) lt!157880) (not (undefined!3903 lt!157880)) (bvslt (x!32767 lt!157880) #b01111111111111111111111111111110) (bvsge (x!32767 lt!157880) #b00000000000000000000000000000000) (bvsge (x!32767 lt!157880) #b00000000000000000000000000000000)))))

(assert (=> b!328289 (=> (not res!180897) (not e!201813))))

(declare-fun b!328290 () Bool)

(assert (=> b!328290 (= e!201815 (bvsge (x!32767 lt!157880) #b01111111111111111111111111111110))))

(assert (= (and d!69899 c!51331) b!328286))

(assert (= (and d!69899 (not c!51331)) b!328283))

(assert (= (and b!328283 c!51330) b!328284))

(assert (= (and b!328283 (not c!51330)) b!328287))

(assert (= (and d!69899 c!51332) b!328290))

(assert (= (and d!69899 (not c!51332)) b!328289))

(assert (= (and b!328289 res!180897) b!328285))

(assert (= (and b!328285 (not res!180896)) b!328288))

(assert (= (and b!328288 (not res!180895)) b!328282))

(declare-fun m!334289 () Bool)

(assert (=> b!328282 m!334289))

(assert (=> d!69899 m!334249))

(declare-fun m!334291 () Bool)

(assert (=> d!69899 m!334291))

(assert (=> d!69899 m!334245))

(assert (=> b!328288 m!334289))

(assert (=> b!328287 m!334249))

(declare-fun m!334293 () Bool)

(assert (=> b!328287 m!334293))

(assert (=> b!328287 m!334293))

(declare-fun m!334295 () Bool)

(assert (=> b!328287 m!334295))

(assert (=> b!328285 m!334289))

(assert (=> b!328223 d!69899))

(declare-fun d!69907 () Bool)

(declare-fun lt!157892 () (_ BitVec 32))

(declare-fun lt!157891 () (_ BitVec 32))

(assert (=> d!69907 (= lt!157892 (bvmul (bvxor lt!157891 (bvlshr lt!157891 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69907 (= lt!157891 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69907 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!180898 (let ((h!5429 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32770 (bvmul (bvxor h!5429 (bvlshr h!5429 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32770 (bvlshr x!32770 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!180898 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!180898 #b00000000000000000000000000000000))))))

(assert (=> d!69907 (= (toIndex!0 k0!2497 mask!3777) (bvand (bvxor lt!157892 (bvlshr lt!157892 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!328223 d!69907))

(declare-fun e!201860 () SeekEntryResult!3091)

(declare-fun lt!157917 () SeekEntryResult!3091)

(declare-fun b!328363 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16807 (_ BitVec 32)) SeekEntryResult!3091)

(assert (=> b!328363 (= e!201860 (seekKeyOrZeroReturnVacant!0 (x!32767 lt!157917) (index!14542 lt!157917) (index!14542 lt!157917) k0!2497 a!3305 mask!3777))))

(declare-fun b!328364 () Bool)

(declare-fun e!201859 () SeekEntryResult!3091)

(declare-fun e!201861 () SeekEntryResult!3091)

(assert (=> b!328364 (= e!201859 e!201861)))

(declare-fun lt!157916 () (_ BitVec 64))

(assert (=> b!328364 (= lt!157916 (select (arr!7949 a!3305) (index!14542 lt!157917)))))

(declare-fun c!51361 () Bool)

(assert (=> b!328364 (= c!51361 (= lt!157916 k0!2497))))

(declare-fun d!69909 () Bool)

(declare-fun lt!157918 () SeekEntryResult!3091)

(assert (=> d!69909 (and (or ((_ is Undefined!3091) lt!157918) (not ((_ is Found!3091) lt!157918)) (and (bvsge (index!14541 lt!157918) #b00000000000000000000000000000000) (bvslt (index!14541 lt!157918) (size!8301 a!3305)))) (or ((_ is Undefined!3091) lt!157918) ((_ is Found!3091) lt!157918) (not ((_ is MissingZero!3091) lt!157918)) (and (bvsge (index!14540 lt!157918) #b00000000000000000000000000000000) (bvslt (index!14540 lt!157918) (size!8301 a!3305)))) (or ((_ is Undefined!3091) lt!157918) ((_ is Found!3091) lt!157918) ((_ is MissingZero!3091) lt!157918) (not ((_ is MissingVacant!3091) lt!157918)) (and (bvsge (index!14543 lt!157918) #b00000000000000000000000000000000) (bvslt (index!14543 lt!157918) (size!8301 a!3305)))) (or ((_ is Undefined!3091) lt!157918) (ite ((_ is Found!3091) lt!157918) (= (select (arr!7949 a!3305) (index!14541 lt!157918)) k0!2497) (ite ((_ is MissingZero!3091) lt!157918) (= (select (arr!7949 a!3305) (index!14540 lt!157918)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3091) lt!157918) (= (select (arr!7949 a!3305) (index!14543 lt!157918)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!69909 (= lt!157918 e!201859)))

(declare-fun c!51360 () Bool)

(assert (=> d!69909 (= c!51360 (and ((_ is Intermediate!3091) lt!157917) (undefined!3903 lt!157917)))))

(assert (=> d!69909 (= lt!157917 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777))))

(assert (=> d!69909 (validMask!0 mask!3777)))

(assert (=> d!69909 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) lt!157918)))

(declare-fun b!328365 () Bool)

(assert (=> b!328365 (= e!201859 Undefined!3091)))

(declare-fun b!328366 () Bool)

(assert (=> b!328366 (= e!201860 (MissingZero!3091 (index!14542 lt!157917)))))

(declare-fun b!328367 () Bool)

(assert (=> b!328367 (= e!201861 (Found!3091 (index!14542 lt!157917)))))

(declare-fun b!328368 () Bool)

(declare-fun c!51362 () Bool)

(assert (=> b!328368 (= c!51362 (= lt!157916 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!328368 (= e!201861 e!201860)))

(assert (= (and d!69909 c!51360) b!328365))

(assert (= (and d!69909 (not c!51360)) b!328364))

(assert (= (and b!328364 c!51361) b!328367))

(assert (= (and b!328364 (not c!51361)) b!328368))

(assert (= (and b!328368 c!51362) b!328366))

(assert (= (and b!328368 (not c!51362)) b!328363))

(declare-fun m!334327 () Bool)

(assert (=> b!328363 m!334327))

(declare-fun m!334329 () Bool)

(assert (=> b!328364 m!334329))

(declare-fun m!334331 () Bool)

(assert (=> d!69909 m!334331))

(declare-fun m!334333 () Bool)

(assert (=> d!69909 m!334333))

(assert (=> d!69909 m!334245))

(declare-fun m!334335 () Bool)

(assert (=> d!69909 m!334335))

(assert (=> d!69909 m!334249))

(assert (=> d!69909 m!334249))

(assert (=> d!69909 m!334251))

(assert (=> b!328228 d!69909))

(declare-fun d!69923 () Bool)

(assert (=> d!69923 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!32960 d!69923))

(declare-fun d!69927 () Bool)

(assert (=> d!69927 (= (array_inv!5903 a!3305) (bvsge (size!8301 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!32960 d!69927))

(declare-fun b!328431 () Bool)

(declare-fun e!201898 () Bool)

(declare-fun e!201897 () Bool)

(assert (=> b!328431 (= e!201898 e!201897)))

(declare-fun c!51386 () Bool)

(assert (=> b!328431 (= c!51386 (validKeyInArray!0 (select (arr!7949 a!3305) #b00000000000000000000000000000000)))))

(declare-fun b!328432 () Bool)

(declare-fun e!201899 () Bool)

(declare-fun call!26123 () Bool)

(assert (=> b!328432 (= e!201899 call!26123)))

(declare-fun bm!26120 () Bool)

(assert (=> bm!26120 (= call!26123 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun b!328433 () Bool)

(assert (=> b!328433 (= e!201897 call!26123)))

(declare-fun b!328434 () Bool)

(assert (=> b!328434 (= e!201897 e!201899)))

(declare-fun lt!157944 () (_ BitVec 64))

(assert (=> b!328434 (= lt!157944 (select (arr!7949 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10187 0))(
  ( (Unit!10188) )
))
(declare-fun lt!157943 () Unit!10187)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16807 (_ BitVec 64) (_ BitVec 32)) Unit!10187)

(assert (=> b!328434 (= lt!157943 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!157944 #b00000000000000000000000000000000))))

(assert (=> b!328434 (arrayContainsKey!0 a!3305 lt!157944 #b00000000000000000000000000000000)))

(declare-fun lt!157942 () Unit!10187)

(assert (=> b!328434 (= lt!157942 lt!157943)))

(declare-fun res!180934 () Bool)

(assert (=> b!328434 (= res!180934 (= (seekEntryOrOpen!0 (select (arr!7949 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3091 #b00000000000000000000000000000000)))))

(assert (=> b!328434 (=> (not res!180934) (not e!201899))))

(declare-fun d!69929 () Bool)

(declare-fun res!180935 () Bool)

(assert (=> d!69929 (=> res!180935 e!201898)))

(assert (=> d!69929 (= res!180935 (bvsge #b00000000000000000000000000000000 (size!8301 a!3305)))))

(assert (=> d!69929 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!201898)))

(assert (= (and d!69929 (not res!180935)) b!328431))

(assert (= (and b!328431 c!51386) b!328434))

(assert (= (and b!328431 (not c!51386)) b!328433))

(assert (= (and b!328434 res!180934) b!328432))

(assert (= (or b!328432 b!328433) bm!26120))

(declare-fun m!334363 () Bool)

(assert (=> b!328431 m!334363))

(assert (=> b!328431 m!334363))

(declare-fun m!334365 () Bool)

(assert (=> b!328431 m!334365))

(declare-fun m!334367 () Bool)

(assert (=> bm!26120 m!334367))

(assert (=> b!328434 m!334363))

(declare-fun m!334369 () Bool)

(assert (=> b!328434 m!334369))

(declare-fun m!334371 () Bool)

(assert (=> b!328434 m!334371))

(assert (=> b!328434 m!334363))

(declare-fun m!334373 () Bool)

(assert (=> b!328434 m!334373))

(assert (=> b!328229 d!69929))

(declare-fun d!69941 () Bool)

(declare-fun res!180941 () Bool)

(declare-fun e!201904 () Bool)

(assert (=> d!69941 (=> res!180941 e!201904)))

(assert (=> d!69941 (= res!180941 (= (select (arr!7949 a!3305) #b00000000000000000000000000000000) k0!2497))))

(assert (=> d!69941 (= (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000) e!201904)))

(declare-fun b!328439 () Bool)

(declare-fun e!201905 () Bool)

(assert (=> b!328439 (= e!201904 e!201905)))

(declare-fun res!180942 () Bool)

(assert (=> b!328439 (=> (not res!180942) (not e!201905))))

(assert (=> b!328439 (= res!180942 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8301 a!3305)))))

(declare-fun b!328440 () Bool)

(assert (=> b!328440 (= e!201905 (arrayContainsKey!0 a!3305 k0!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69941 (not res!180941)) b!328439))

(assert (= (and b!328439 res!180942) b!328440))

(assert (=> d!69941 m!334363))

(declare-fun m!334375 () Bool)

(assert (=> b!328440 m!334375))

(assert (=> b!328224 d!69941))

(declare-fun b!328441 () Bool)

(declare-fun lt!157946 () SeekEntryResult!3091)

(assert (=> b!328441 (and (bvsge (index!14542 lt!157946) #b00000000000000000000000000000000) (bvslt (index!14542 lt!157946) (size!8301 a!3305)))))

(declare-fun e!201910 () Bool)

(assert (=> b!328441 (= e!201910 (= (select (arr!7949 a!3305) (index!14542 lt!157946)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!69943 () Bool)

(declare-fun e!201908 () Bool)

(assert (=> d!69943 e!201908))

(declare-fun c!51389 () Bool)

(assert (=> d!69943 (= c!51389 (and ((_ is Intermediate!3091) lt!157946) (undefined!3903 lt!157946)))))

(declare-fun e!201909 () SeekEntryResult!3091)

(assert (=> d!69943 (= lt!157946 e!201909)))

(declare-fun c!51388 () Bool)

(assert (=> d!69943 (= c!51388 (bvsge x!1490 #b01111111111111111111111111111110))))

(declare-fun lt!157945 () (_ BitVec 64))

(assert (=> d!69943 (= lt!157945 (select (arr!7949 a!3305) index!1840))))

(assert (=> d!69943 (validMask!0 mask!3777)))

(assert (=> d!69943 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!157946)))

(declare-fun b!328442 () Bool)

(declare-fun e!201907 () SeekEntryResult!3091)

(assert (=> b!328442 (= e!201909 e!201907)))

(declare-fun c!51387 () Bool)

(assert (=> b!328442 (= c!51387 (or (= lt!157945 k0!2497) (= (bvadd lt!157945 lt!157945) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!328443 () Bool)

(assert (=> b!328443 (= e!201907 (Intermediate!3091 false index!1840 x!1490))))

(declare-fun b!328444 () Bool)

(assert (=> b!328444 (and (bvsge (index!14542 lt!157946) #b00000000000000000000000000000000) (bvslt (index!14542 lt!157946) (size!8301 a!3305)))))

(declare-fun res!180944 () Bool)

(assert (=> b!328444 (= res!180944 (= (select (arr!7949 a!3305) (index!14542 lt!157946)) k0!2497))))

(assert (=> b!328444 (=> res!180944 e!201910)))

(declare-fun e!201906 () Bool)

(assert (=> b!328444 (= e!201906 e!201910)))

(declare-fun b!328445 () Bool)

(assert (=> b!328445 (= e!201909 (Intermediate!3091 true index!1840 x!1490))))

(declare-fun b!328446 () Bool)

(assert (=> b!328446 (= e!201907 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!328447 () Bool)

(assert (=> b!328447 (and (bvsge (index!14542 lt!157946) #b00000000000000000000000000000000) (bvslt (index!14542 lt!157946) (size!8301 a!3305)))))

(declare-fun res!180943 () Bool)

(assert (=> b!328447 (= res!180943 (= (select (arr!7949 a!3305) (index!14542 lt!157946)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!328447 (=> res!180943 e!201910)))

(declare-fun b!328448 () Bool)

(assert (=> b!328448 (= e!201908 e!201906)))

(declare-fun res!180945 () Bool)

(assert (=> b!328448 (= res!180945 (and ((_ is Intermediate!3091) lt!157946) (not (undefined!3903 lt!157946)) (bvslt (x!32767 lt!157946) #b01111111111111111111111111111110) (bvsge (x!32767 lt!157946) #b00000000000000000000000000000000) (bvsge (x!32767 lt!157946) x!1490)))))

(assert (=> b!328448 (=> (not res!180945) (not e!201906))))

(declare-fun b!328449 () Bool)

(assert (=> b!328449 (= e!201908 (bvsge (x!32767 lt!157946) #b01111111111111111111111111111110))))

(assert (= (and d!69943 c!51388) b!328445))

(assert (= (and d!69943 (not c!51388)) b!328442))

(assert (= (and b!328442 c!51387) b!328443))

(assert (= (and b!328442 (not c!51387)) b!328446))

(assert (= (and d!69943 c!51389) b!328449))

(assert (= (and d!69943 (not c!51389)) b!328448))

(assert (= (and b!328448 res!180945) b!328444))

(assert (= (and b!328444 (not res!180944)) b!328447))

(assert (= (and b!328447 (not res!180943)) b!328441))

(declare-fun m!334377 () Bool)

(assert (=> b!328441 m!334377))

(declare-fun m!334379 () Bool)

(assert (=> d!69943 m!334379))

(assert (=> d!69943 m!334245))

(assert (=> b!328447 m!334377))

(declare-fun m!334381 () Bool)

(assert (=> b!328446 m!334381))

(assert (=> b!328446 m!334381))

(declare-fun m!334383 () Bool)

(assert (=> b!328446 m!334383))

(assert (=> b!328444 m!334377))

(assert (=> b!328225 d!69943))

(declare-fun d!69945 () Bool)

(assert (=> d!69945 (= (validKeyInArray!0 k0!2497) (and (not (= k0!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!328227 d!69945))

(check-sat (not b!328287) (not b!328434) (not d!69909) (not d!69899) (not b!328446) (not d!69943) (not b!328363) (not b!328440) (not b!328431) (not bm!26120))
(check-sat)
