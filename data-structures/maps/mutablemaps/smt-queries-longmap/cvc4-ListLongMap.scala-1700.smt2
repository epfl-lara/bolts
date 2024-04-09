; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31096 () Bool)

(assert start!31096)

(declare-fun b!312706 () Bool)

(declare-fun e!194931 () Bool)

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!312706 (= e!194931 (bvsge resX!52 #b01111111111111111111111111111110))))

(declare-fun b!312707 () Bool)

(declare-fun res!169323 () Bool)

(declare-fun e!194930 () Bool)

(assert (=> b!312707 (=> (not res!169323) (not e!194930))))

(declare-datatypes ((array!15996 0))(
  ( (array!15997 (arr!7578 (Array (_ BitVec 32) (_ BitVec 64))) (size!7930 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15996)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15996 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!312707 (= res!169323 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!312709 () Bool)

(declare-fun res!169322 () Bool)

(assert (=> b!312709 (=> (not res!169322) (not e!194930))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15996 (_ BitVec 32)) Bool)

(assert (=> b!312709 (= res!169322 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!312710 () Bool)

(declare-fun res!169325 () Bool)

(assert (=> b!312710 (=> (not res!169325) (not e!194930))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2729 0))(
  ( (MissingZero!2729 (index!13092 (_ BitVec 32))) (Found!2729 (index!13093 (_ BitVec 32))) (Intermediate!2729 (undefined!3541 Bool) (index!13094 (_ BitVec 32)) (x!31257 (_ BitVec 32))) (Undefined!2729) (MissingVacant!2729 (index!13095 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15996 (_ BitVec 32)) SeekEntryResult!2729)

(assert (=> b!312710 (= res!169325 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2729 i!1240)))))

(declare-fun b!312711 () Bool)

(declare-fun res!169321 () Bool)

(assert (=> b!312711 (=> (not res!169321) (not e!194930))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!312711 (= res!169321 (validKeyInArray!0 k!2441))))

(declare-fun b!312712 () Bool)

(declare-fun res!169320 () Bool)

(assert (=> b!312712 (=> (not res!169320) (not e!194931))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!312712 (= res!169320 (and (= (select (arr!7578 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7930 a!3293))))))

(declare-fun b!312713 () Bool)

(declare-fun res!169318 () Bool)

(assert (=> b!312713 (=> (not res!169318) (not e!194931))))

(declare-fun lt!153314 () SeekEntryResult!2729)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15996 (_ BitVec 32)) SeekEntryResult!2729)

(assert (=> b!312713 (= res!169318 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!153314))))

(declare-fun b!312714 () Bool)

(declare-fun res!169319 () Bool)

(assert (=> b!312714 (=> (not res!169319) (not e!194930))))

(assert (=> b!312714 (= res!169319 (and (= (size!7930 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7930 a!3293))))))

(declare-fun res!169326 () Bool)

(assert (=> start!31096 (=> (not res!169326) (not e!194930))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31096 (= res!169326 (validMask!0 mask!3709))))

(assert (=> start!31096 e!194930))

(declare-fun array_inv!5532 (array!15996) Bool)

(assert (=> start!31096 (array_inv!5532 a!3293)))

(assert (=> start!31096 true))

(declare-fun b!312708 () Bool)

(assert (=> b!312708 (= e!194930 e!194931)))

(declare-fun res!169324 () Bool)

(assert (=> b!312708 (=> (not res!169324) (not e!194931))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312708 (= res!169324 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153314))))

(assert (=> b!312708 (= lt!153314 (Intermediate!2729 false resIndex!52 resX!52))))

(assert (= (and start!31096 res!169326) b!312714))

(assert (= (and b!312714 res!169319) b!312711))

(assert (= (and b!312711 res!169321) b!312707))

(assert (= (and b!312707 res!169323) b!312710))

(assert (= (and b!312710 res!169325) b!312709))

(assert (= (and b!312709 res!169322) b!312708))

(assert (= (and b!312708 res!169324) b!312712))

(assert (= (and b!312712 res!169320) b!312713))

(assert (= (and b!312713 res!169318) b!312706))

(declare-fun m!322877 () Bool)

(assert (=> b!312710 m!322877))

(declare-fun m!322879 () Bool)

(assert (=> b!312709 m!322879))

(declare-fun m!322881 () Bool)

(assert (=> b!312713 m!322881))

(declare-fun m!322883 () Bool)

(assert (=> b!312712 m!322883))

(declare-fun m!322885 () Bool)

(assert (=> b!312707 m!322885))

(declare-fun m!322887 () Bool)

(assert (=> b!312711 m!322887))

(declare-fun m!322889 () Bool)

(assert (=> b!312708 m!322889))

(assert (=> b!312708 m!322889))

(declare-fun m!322891 () Bool)

(assert (=> b!312708 m!322891))

(declare-fun m!322893 () Bool)

(assert (=> start!31096 m!322893))

(declare-fun m!322895 () Bool)

(assert (=> start!31096 m!322895))

(push 1)

(assert (not b!312709))

(assert (not b!312707))

(assert (not b!312708))

(assert (not b!312710))

(assert (not b!312713))

(assert (not start!31096))

(assert (not b!312711))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!194970 () SeekEntryResult!2729)

(declare-fun lt!153333 () SeekEntryResult!2729)

(declare-fun b!312778 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15996 (_ BitVec 32)) SeekEntryResult!2729)

(assert (=> b!312778 (= e!194970 (seekKeyOrZeroReturnVacant!0 (x!31257 lt!153333) (index!13094 lt!153333) (index!13094 lt!153333) k!2441 a!3293 mask!3709))))

(declare-fun d!68347 () Bool)

(declare-fun lt!153331 () SeekEntryResult!2729)

(assert (=> d!68347 (and (or (is-Undefined!2729 lt!153331) (not (is-Found!2729 lt!153331)) (and (bvsge (index!13093 lt!153331) #b00000000000000000000000000000000) (bvslt (index!13093 lt!153331) (size!7930 a!3293)))) (or (is-Undefined!2729 lt!153331) (is-Found!2729 lt!153331) (not (is-MissingZero!2729 lt!153331)) (and (bvsge (index!13092 lt!153331) #b00000000000000000000000000000000) (bvslt (index!13092 lt!153331) (size!7930 a!3293)))) (or (is-Undefined!2729 lt!153331) (is-Found!2729 lt!153331) (is-MissingZero!2729 lt!153331) (not (is-MissingVacant!2729 lt!153331)) (and (bvsge (index!13095 lt!153331) #b00000000000000000000000000000000) (bvslt (index!13095 lt!153331) (size!7930 a!3293)))) (or (is-Undefined!2729 lt!153331) (ite (is-Found!2729 lt!153331) (= (select (arr!7578 a!3293) (index!13093 lt!153331)) k!2441) (ite (is-MissingZero!2729 lt!153331) (= (select (arr!7578 a!3293) (index!13092 lt!153331)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2729 lt!153331) (= (select (arr!7578 a!3293) (index!13095 lt!153331)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!194972 () SeekEntryResult!2729)

(assert (=> d!68347 (= lt!153331 e!194972)))

(declare-fun c!49322 () Bool)

(assert (=> d!68347 (= c!49322 (and (is-Intermediate!2729 lt!153333) (undefined!3541 lt!153333)))))

(assert (=> d!68347 (= lt!153333 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!68347 (validMask!0 mask!3709)))

(assert (=> d!68347 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!153331)))

(declare-fun b!312779 () Bool)

(assert (=> b!312779 (= e!194972 Undefined!2729)))

(declare-fun b!312780 () Bool)

(declare-fun c!49321 () Bool)

(declare-fun lt!153332 () (_ BitVec 64))

(assert (=> b!312780 (= c!49321 (= lt!153332 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!194971 () SeekEntryResult!2729)

(assert (=> b!312780 (= e!194971 e!194970)))

(declare-fun b!312781 () Bool)

(assert (=> b!312781 (= e!194970 (MissingZero!2729 (index!13094 lt!153333)))))

(declare-fun b!312782 () Bool)

(assert (=> b!312782 (= e!194972 e!194971)))

(assert (=> b!312782 (= lt!153332 (select (arr!7578 a!3293) (index!13094 lt!153333)))))

(declare-fun c!49320 () Bool)

(assert (=> b!312782 (= c!49320 (= lt!153332 k!2441))))

(declare-fun b!312783 () Bool)

(assert (=> b!312783 (= e!194971 (Found!2729 (index!13094 lt!153333)))))

(assert (= (and d!68347 c!49322) b!312779))

(assert (= (and d!68347 (not c!49322)) b!312782))

(assert (= (and b!312782 c!49320) b!312783))

(assert (= (and b!312782 (not c!49320)) b!312780))

(assert (= (and b!312780 c!49321) b!312781))

(assert (= (and b!312780 (not c!49321)) b!312778))

(declare-fun m!322909 () Bool)

(assert (=> b!312778 m!322909))

(assert (=> d!68347 m!322889))

(declare-fun m!322911 () Bool)

(assert (=> d!68347 m!322911))

(assert (=> d!68347 m!322893))

(assert (=> d!68347 m!322889))

(assert (=> d!68347 m!322891))

(declare-fun m!322913 () Bool)

(assert (=> d!68347 m!322913))

(declare-fun m!322915 () Bool)

(assert (=> d!68347 m!322915))

(declare-fun m!322917 () Bool)

(assert (=> b!312782 m!322917))

(assert (=> b!312710 d!68347))

(declare-fun b!312829 () Bool)

(declare-fun e!194997 () Bool)

(declare-fun e!195000 () Bool)

(assert (=> b!312829 (= e!194997 e!195000)))

(declare-fun res!169360 () Bool)

(declare-fun lt!153356 () SeekEntryResult!2729)

(assert (=> b!312829 (= res!169360 (and (is-Intermediate!2729 lt!153356) (not (undefined!3541 lt!153356)) (bvslt (x!31257 lt!153356) #b01111111111111111111111111111110) (bvsge (x!31257 lt!153356) #b00000000000000000000000000000000) (bvsge (x!31257 lt!153356) #b00000000000000000000000000000000)))))

(assert (=> b!312829 (=> (not res!169360) (not e!195000))))

(declare-fun d!68355 () Bool)

(assert (=> d!68355 e!194997))

(declare-fun c!49342 () Bool)

(assert (=> d!68355 (= c!49342 (and (is-Intermediate!2729 lt!153356) (undefined!3541 lt!153356)))))

(declare-fun e!194998 () SeekEntryResult!2729)

(assert (=> d!68355 (= lt!153356 e!194998)))

(declare-fun c!49341 () Bool)

(assert (=> d!68355 (= c!49341 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!153355 () (_ BitVec 64))

(assert (=> d!68355 (= lt!153355 (select (arr!7578 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!68355 (validMask!0 mask!3709)))

(assert (=> d!68355 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153356)))

(declare-fun b!312830 () Bool)

(declare-fun e!195001 () SeekEntryResult!2729)

(assert (=> b!312830 (= e!194998 e!195001)))

(declare-fun c!49343 () Bool)

(assert (=> b!312830 (= c!49343 (or (= lt!153355 k!2441) (= (bvadd lt!153355 lt!153355) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!312831 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312831 (= e!195001 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!312832 () Bool)

(assert (=> b!312832 (and (bvsge (index!13094 lt!153356) #b00000000000000000000000000000000) (bvslt (index!13094 lt!153356) (size!7930 a!3293)))))

(declare-fun e!194999 () Bool)

(assert (=> b!312832 (= e!194999 (= (select (arr!7578 a!3293) (index!13094 lt!153356)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!312833 () Bool)

(assert (=> b!312833 (= e!194997 (bvsge (x!31257 lt!153356) #b01111111111111111111111111111110))))

(declare-fun b!312834 () Bool)

(assert (=> b!312834 (and (bvsge (index!13094 lt!153356) #b00000000000000000000000000000000) (bvslt (index!13094 lt!153356) (size!7930 a!3293)))))

(declare-fun res!169359 () Bool)

(assert (=> b!312834 (= res!169359 (= (select (arr!7578 a!3293) (index!13094 lt!153356)) k!2441))))

(assert (=> b!312834 (=> res!169359 e!194999)))

(assert (=> b!312834 (= e!195000 e!194999)))

(declare-fun b!312835 () Bool)

(assert (=> b!312835 (= e!195001 (Intermediate!2729 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!312836 () Bool)

(assert (=> b!312836 (and (bvsge (index!13094 lt!153356) #b00000000000000000000000000000000) (bvslt (index!13094 lt!153356) (size!7930 a!3293)))))

(declare-fun res!169358 () Bool)

(assert (=> b!312836 (= res!169358 (= (select (arr!7578 a!3293) (index!13094 lt!153356)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!312836 (=> res!169358 e!194999)))

(declare-fun b!312837 () Bool)

(assert (=> b!312837 (= e!194998 (Intermediate!2729 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(assert (= (and d!68355 c!49341) b!312837))

(assert (= (and d!68355 (not c!49341)) b!312830))

(assert (= (and b!312830 c!49343) b!312835))

(assert (= (and b!312830 (not c!49343)) b!312831))

(assert (= (and d!68355 c!49342) b!312833))

(assert (= (and d!68355 (not c!49342)) b!312829))

(assert (= (and b!312829 res!169360) b!312834))

(assert (= (and b!312834 (not res!169359)) b!312836))

(assert (= (and b!312836 (not res!169358)) b!312832))

(declare-fun m!322937 () Bool)

(assert (=> b!312832 m!322937))

(assert (=> d!68355 m!322889))

(declare-fun m!322939 () Bool)

(assert (=> d!68355 m!322939))

(assert (=> d!68355 m!322893))

(assert (=> b!312834 m!322937))

(assert (=> b!312836 m!322937))

(assert (=> b!312831 m!322889))

(declare-fun m!322941 () Bool)

(assert (=> b!312831 m!322941))

(assert (=> b!312831 m!322941))

(declare-fun m!322943 () Bool)

(assert (=> b!312831 m!322943))

(assert (=> b!312708 d!68355))

(declare-fun d!68367 () Bool)

(declare-fun lt!153362 () (_ BitVec 32))

(declare-fun lt!153361 () (_ BitVec 32))

(assert (=> d!68367 (= lt!153362 (bvmul (bvxor lt!153361 (bvlshr lt!153361 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68367 (= lt!153361 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68367 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!169361 (let ((h!5367 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31262 (bvmul (bvxor h!5367 (bvlshr h!5367 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31262 (bvlshr x!31262 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!169361 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!169361 #b00000000000000000000000000000000))))))

(assert (=> d!68367 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!153362 (bvlshr lt!153362 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!312708 d!68367))

(declare-fun bm!25925 () Bool)

(declare-fun call!25928 () Bool)

(assert (=> bm!25925 (= call!25928 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!312875 () Bool)

(declare-fun e!195027 () Bool)

(assert (=> b!312875 (= e!195027 call!25928)))

(declare-fun b!312874 () Bool)

(declare-fun e!195028 () Bool)

(assert (=> b!312874 (= e!195028 call!25928)))

(declare-fun d!68373 () Bool)

(declare-fun res!169376 () Bool)

(declare-fun e!195029 () Bool)

(assert (=> d!68373 (=> res!169376 e!195029)))

(assert (=> d!68373 (= res!169376 (bvsge #b00000000000000000000000000000000 (size!7930 a!3293)))))

(assert (=> d!68373 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!195029)))

(declare-fun b!312876 () Bool)

(assert (=> b!312876 (= e!195029 e!195028)))

(declare-fun c!49355 () Bool)

(assert (=> b!312876 (= c!49355 (validKeyInArray!0 (select (arr!7578 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!312877 () Bool)

(assert (=> b!312877 (= e!195028 e!195027)))

(declare-fun lt!153385 () (_ BitVec 64))

(assert (=> b!312877 (= lt!153385 (select (arr!7578 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9654 0))(
  ( (Unit!9655) )
))
(declare-fun lt!153386 () Unit!9654)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15996 (_ BitVec 64) (_ BitVec 32)) Unit!9654)

(assert (=> b!312877 (= lt!153386 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!153385 #b00000000000000000000000000000000))))

(assert (=> b!312877 (arrayContainsKey!0 a!3293 lt!153385 #b00000000000000000000000000000000)))

(declare-fun lt!153384 () Unit!9654)

(assert (=> b!312877 (= lt!153384 lt!153386)))

(declare-fun res!169377 () Bool)

(assert (=> b!312877 (= res!169377 (= (seekEntryOrOpen!0 (select (arr!7578 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2729 #b00000000000000000000000000000000)))))

(assert (=> b!312877 (=> (not res!169377) (not e!195027))))

(assert (= (and d!68373 (not res!169376)) b!312876))

(assert (= (and b!312876 c!49355) b!312877))

(assert (= (and b!312876 (not c!49355)) b!312874))

(assert (= (and b!312877 res!169377) b!312875))

(assert (= (or b!312875 b!312874) bm!25925))

(declare-fun m!322959 () Bool)

(assert (=> bm!25925 m!322959))

(declare-fun m!322961 () Bool)

(assert (=> b!312876 m!322961))

(assert (=> b!312876 m!322961))

(declare-fun m!322963 () Bool)

(assert (=> b!312876 m!322963))

(assert (=> b!312877 m!322961))

(declare-fun m!322965 () Bool)

(assert (=> b!312877 m!322965))

(declare-fun m!322967 () Bool)

(assert (=> b!312877 m!322967))

(assert (=> b!312877 m!322961))

(declare-fun m!322969 () Bool)

(assert (=> b!312877 m!322969))

(assert (=> b!312709 d!68373))

(declare-fun d!68379 () Bool)

(declare-fun res!169391 () Bool)

(declare-fun e!195049 () Bool)

(assert (=> d!68379 (=> res!169391 e!195049)))

(assert (=> d!68379 (= res!169391 (= (select (arr!7578 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!68379 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!195049)))

(declare-fun b!312908 () Bool)

(declare-fun e!195050 () Bool)

(assert (=> b!312908 (= e!195049 e!195050)))

(declare-fun res!169392 () Bool)

(assert (=> b!312908 (=> (not res!169392) (not e!195050))))

(assert (=> b!312908 (= res!169392 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7930 a!3293)))))

(declare-fun b!312909 () Bool)

(assert (=> b!312909 (= e!195050 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68379 (not res!169391)) b!312908))

(assert (= (and b!312908 res!169392) b!312909))

(assert (=> d!68379 m!322961))

(declare-fun m!322997 () Bool)

(assert (=> b!312909 m!322997))

(assert (=> b!312707 d!68379))

(declare-fun d!68387 () Bool)

(assert (=> d!68387 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31096 d!68387))

(declare-fun d!68391 () Bool)

(assert (=> d!68391 (= (array_inv!5532 a!3293) (bvsge (size!7930 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31096 d!68391))

(declare-fun b!312922 () Bool)

(declare-fun e!195060 () Bool)

(declare-fun e!195063 () Bool)

(assert (=> b!312922 (= e!195060 e!195063)))

(declare-fun res!169401 () Bool)

(declare-fun lt!153410 () SeekEntryResult!2729)

(assert (=> b!312922 (= res!169401 (and (is-Intermediate!2729 lt!153410) (not (undefined!3541 lt!153410)) (bvslt (x!31257 lt!153410) #b01111111111111111111111111111110) (bvsge (x!31257 lt!153410) #b00000000000000000000000000000000) (bvsge (x!31257 lt!153410) x!1427)))))

(assert (=> b!312922 (=> (not res!169401) (not e!195063))))

(declare-fun d!68393 () Bool)

(assert (=> d!68393 e!195060))

(declare-fun c!49369 () Bool)

(assert (=> d!68393 (= c!49369 (and (is-Intermediate!2729 lt!153410) (undefined!3541 lt!153410)))))

(declare-fun e!195061 () SeekEntryResult!2729)

(assert (=> d!68393 (= lt!153410 e!195061)))

(declare-fun c!49368 () Bool)

(assert (=> d!68393 (= c!49368 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!153409 () (_ BitVec 64))

(assert (=> d!68393 (= lt!153409 (select (arr!7578 a!3293) index!1781))))

(assert (=> d!68393 (validMask!0 mask!3709)))

(assert (=> d!68393 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!153410)))

(declare-fun b!312923 () Bool)

(declare-fun e!195064 () SeekEntryResult!2729)

(assert (=> b!312923 (= e!195061 e!195064)))

(declare-fun c!49370 () Bool)

(assert (=> b!312923 (= c!49370 (or (= lt!153409 k!2441) (= (bvadd lt!153409 lt!153409) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!312924 () Bool)

(assert (=> b!312924 (= e!195064 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!312925 () Bool)

(assert (=> b!312925 (and (bvsge (index!13094 lt!153410) #b00000000000000000000000000000000) (bvslt (index!13094 lt!153410) (size!7930 a!3293)))))

