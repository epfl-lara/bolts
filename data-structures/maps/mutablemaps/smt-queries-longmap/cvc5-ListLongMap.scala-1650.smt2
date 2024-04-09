; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30684 () Bool)

(assert start!30684)

(declare-fun res!164751 () Bool)

(declare-fun e!192583 () Bool)

(assert (=> start!30684 (=> (not res!164751) (not e!192583))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30684 (= res!164751 (validMask!0 mask!3709))))

(assert (=> start!30684 e!192583))

(declare-datatypes ((array!15686 0))(
  ( (array!15687 (arr!7426 (Array (_ BitVec 32) (_ BitVec 64))) (size!7778 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15686)

(declare-fun array_inv!5380 (array!15686) Bool)

(assert (=> start!30684 (array_inv!5380 a!3293)))

(assert (=> start!30684 true))

(declare-fun b!307839 () Bool)

(declare-fun res!164759 () Bool)

(assert (=> b!307839 (=> (not res!164759) (not e!192583))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307839 (= res!164759 (validKeyInArray!0 k!2441))))

(declare-fun b!307840 () Bool)

(declare-fun e!192581 () Bool)

(declare-fun lt!151187 () (_ BitVec 32))

(assert (=> b!307840 (= e!192581 (and (bvsge mask!3709 #b00000000000000000000000000000000) (or (bvslt lt!151187 #b00000000000000000000000000000000) (bvsge lt!151187 (bvadd #b00000000000000000000000000000001 mask!3709)))))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307840 (= lt!151187 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!307841 () Bool)

(declare-fun res!164753 () Bool)

(assert (=> b!307841 (=> (not res!164753) (not e!192581))))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!307841 (= res!164753 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7426 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun b!307842 () Bool)

(assert (=> b!307842 (= e!192583 e!192581)))

(declare-fun res!164760 () Bool)

(assert (=> b!307842 (=> (not res!164760) (not e!192581))))

(declare-datatypes ((SeekEntryResult!2577 0))(
  ( (MissingZero!2577 (index!12484 (_ BitVec 32))) (Found!2577 (index!12485 (_ BitVec 32))) (Intermediate!2577 (undefined!3389 Bool) (index!12486 (_ BitVec 32)) (x!30687 (_ BitVec 32))) (Undefined!2577) (MissingVacant!2577 (index!12487 (_ BitVec 32))) )
))
(declare-fun lt!151186 () SeekEntryResult!2577)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15686 (_ BitVec 32)) SeekEntryResult!2577)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307842 (= res!164760 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151186))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!307842 (= lt!151186 (Intermediate!2577 false resIndex!52 resX!52))))

(declare-fun b!307843 () Bool)

(declare-fun res!164755 () Bool)

(assert (=> b!307843 (=> (not res!164755) (not e!192581))))

(assert (=> b!307843 (= res!164755 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151186))))

(declare-fun b!307844 () Bool)

(declare-fun res!164757 () Bool)

(assert (=> b!307844 (=> (not res!164757) (not e!192583))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15686 (_ BitVec 32)) Bool)

(assert (=> b!307844 (= res!164757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!307845 () Bool)

(declare-fun res!164752 () Bool)

(assert (=> b!307845 (=> (not res!164752) (not e!192583))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!307845 (= res!164752 (and (= (size!7778 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7778 a!3293))))))

(declare-fun b!307846 () Bool)

(declare-fun res!164756 () Bool)

(assert (=> b!307846 (=> (not res!164756) (not e!192583))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15686 (_ BitVec 32)) SeekEntryResult!2577)

(assert (=> b!307846 (= res!164756 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2577 i!1240)))))

(declare-fun b!307847 () Bool)

(declare-fun res!164758 () Bool)

(assert (=> b!307847 (=> (not res!164758) (not e!192581))))

(assert (=> b!307847 (= res!164758 (and (= (select (arr!7426 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7778 a!3293))))))

(declare-fun b!307848 () Bool)

(declare-fun res!164754 () Bool)

(assert (=> b!307848 (=> (not res!164754) (not e!192583))))

(declare-fun arrayContainsKey!0 (array!15686 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307848 (= res!164754 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30684 res!164751) b!307845))

(assert (= (and b!307845 res!164752) b!307839))

(assert (= (and b!307839 res!164759) b!307848))

(assert (= (and b!307848 res!164754) b!307846))

(assert (= (and b!307846 res!164756) b!307844))

(assert (= (and b!307844 res!164757) b!307842))

(assert (= (and b!307842 res!164760) b!307847))

(assert (= (and b!307847 res!164758) b!307843))

(assert (= (and b!307843 res!164755) b!307841))

(assert (= (and b!307841 res!164753) b!307840))

(declare-fun m!318073 () Bool)

(assert (=> start!30684 m!318073))

(declare-fun m!318075 () Bool)

(assert (=> start!30684 m!318075))

(declare-fun m!318077 () Bool)

(assert (=> b!307848 m!318077))

(declare-fun m!318079 () Bool)

(assert (=> b!307840 m!318079))

(declare-fun m!318081 () Bool)

(assert (=> b!307843 m!318081))

(declare-fun m!318083 () Bool)

(assert (=> b!307844 m!318083))

(declare-fun m!318085 () Bool)

(assert (=> b!307842 m!318085))

(assert (=> b!307842 m!318085))

(declare-fun m!318087 () Bool)

(assert (=> b!307842 m!318087))

(declare-fun m!318089 () Bool)

(assert (=> b!307847 m!318089))

(declare-fun m!318091 () Bool)

(assert (=> b!307839 m!318091))

(declare-fun m!318093 () Bool)

(assert (=> b!307841 m!318093))

(declare-fun m!318095 () Bool)

(assert (=> b!307846 m!318095))

(push 1)

(assert (not b!307840))

(assert (not start!30684))

(assert (not b!307843))

(assert (not b!307846))

(assert (not b!307848))

(assert (not b!307842))

(assert (not b!307839))

(assert (not b!307844))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!68121 () Bool)

(declare-fun lt!151211 () (_ BitVec 32))

(assert (=> d!68121 (and (bvsge lt!151211 #b00000000000000000000000000000000) (bvslt lt!151211 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!68121 (= lt!151211 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!68121 (validMask!0 mask!3709)))

(assert (=> d!68121 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!151211)))

(declare-fun bs!10825 () Bool)

(assert (= bs!10825 d!68121))

(declare-fun m!318157 () Bool)

(assert (=> bs!10825 m!318157))

(assert (=> bs!10825 m!318073))

(assert (=> b!307840 d!68121))

(declare-fun b!307959 () Bool)

(declare-fun e!192632 () SeekEntryResult!2577)

(assert (=> b!307959 (= e!192632 Undefined!2577)))

(declare-fun b!307961 () Bool)

(declare-fun lt!151239 () SeekEntryResult!2577)

(declare-fun e!192634 () SeekEntryResult!2577)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15686 (_ BitVec 32)) SeekEntryResult!2577)

(assert (=> b!307961 (= e!192634 (seekKeyOrZeroReturnVacant!0 (x!30687 lt!151239) (index!12486 lt!151239) (index!12486 lt!151239) k!2441 a!3293 mask!3709))))

(declare-fun b!307962 () Bool)

(declare-fun c!49168 () Bool)

(declare-fun lt!151241 () (_ BitVec 64))

(assert (=> b!307962 (= c!49168 (= lt!151241 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!192633 () SeekEntryResult!2577)

(assert (=> b!307962 (= e!192633 e!192634)))

(declare-fun b!307963 () Bool)

(assert (=> b!307963 (= e!192632 e!192633)))

(assert (=> b!307963 (= lt!151241 (select (arr!7426 a!3293) (index!12486 lt!151239)))))

(declare-fun c!49167 () Bool)

(assert (=> b!307963 (= c!49167 (= lt!151241 k!2441))))

(declare-fun b!307964 () Bool)

(assert (=> b!307964 (= e!192633 (Found!2577 (index!12486 lt!151239)))))

(declare-fun d!68123 () Bool)

(declare-fun lt!151240 () SeekEntryResult!2577)

(assert (=> d!68123 (and (or (is-Undefined!2577 lt!151240) (not (is-Found!2577 lt!151240)) (and (bvsge (index!12485 lt!151240) #b00000000000000000000000000000000) (bvslt (index!12485 lt!151240) (size!7778 a!3293)))) (or (is-Undefined!2577 lt!151240) (is-Found!2577 lt!151240) (not (is-MissingZero!2577 lt!151240)) (and (bvsge (index!12484 lt!151240) #b00000000000000000000000000000000) (bvslt (index!12484 lt!151240) (size!7778 a!3293)))) (or (is-Undefined!2577 lt!151240) (is-Found!2577 lt!151240) (is-MissingZero!2577 lt!151240) (not (is-MissingVacant!2577 lt!151240)) (and (bvsge (index!12487 lt!151240) #b00000000000000000000000000000000) (bvslt (index!12487 lt!151240) (size!7778 a!3293)))) (or (is-Undefined!2577 lt!151240) (ite (is-Found!2577 lt!151240) (= (select (arr!7426 a!3293) (index!12485 lt!151240)) k!2441) (ite (is-MissingZero!2577 lt!151240) (= (select (arr!7426 a!3293) (index!12484 lt!151240)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2577 lt!151240) (= (select (arr!7426 a!3293) (index!12487 lt!151240)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!68123 (= lt!151240 e!192632)))

(declare-fun c!49166 () Bool)

(assert (=> d!68123 (= c!49166 (and (is-Intermediate!2577 lt!151239) (undefined!3389 lt!151239)))))

(assert (=> d!68123 (= lt!151239 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!68123 (validMask!0 mask!3709)))

(assert (=> d!68123 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!151240)))

(declare-fun b!307960 () Bool)

(assert (=> b!307960 (= e!192634 (MissingZero!2577 (index!12486 lt!151239)))))

(assert (= (and d!68123 c!49166) b!307959))

(assert (= (and d!68123 (not c!49166)) b!307963))

(assert (= (and b!307963 c!49167) b!307964))

(assert (= (and b!307963 (not c!49167)) b!307962))

(assert (= (and b!307962 c!49168) b!307960))

(assert (= (and b!307962 (not c!49168)) b!307961))

(declare-fun m!318173 () Bool)

(assert (=> b!307961 m!318173))

(declare-fun m!318175 () Bool)

(assert (=> b!307963 m!318175))

(declare-fun m!318177 () Bool)

(assert (=> d!68123 m!318177))

(declare-fun m!318179 () Bool)

(assert (=> d!68123 m!318179))

(declare-fun m!318181 () Bool)

(assert (=> d!68123 m!318181))

(assert (=> d!68123 m!318085))

(assert (=> d!68123 m!318087))

(assert (=> d!68123 m!318073))

(assert (=> d!68123 m!318085))

(assert (=> b!307846 d!68123))

(declare-fun b!308029 () Bool)

(declare-fun lt!151257 () SeekEntryResult!2577)

(assert (=> b!308029 (and (bvsge (index!12486 lt!151257) #b00000000000000000000000000000000) (bvslt (index!12486 lt!151257) (size!7778 a!3293)))))

(declare-fun e!192675 () Bool)

(assert (=> b!308029 (= e!192675 (= (select (arr!7426 a!3293) (index!12486 lt!151257)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!308030 () Bool)

(declare-fun e!192678 () Bool)

(assert (=> b!308030 (= e!192678 (bvsge (x!30687 lt!151257) #b01111111111111111111111111111110))))

(declare-fun b!308031 () Bool)

(declare-fun e!192676 () SeekEntryResult!2577)

(assert (=> b!308031 (= e!192676 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!308032 () Bool)

(assert (=> b!308032 (= e!192676 (Intermediate!2577 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!308034 () Bool)

(assert (=> b!308034 (and (bvsge (index!12486 lt!151257) #b00000000000000000000000000000000) (bvslt (index!12486 lt!151257) (size!7778 a!3293)))))

(declare-fun res!164857 () Bool)

(assert (=> b!308034 (= res!164857 (= (select (arr!7426 a!3293) (index!12486 lt!151257)) k!2441))))

(assert (=> b!308034 (=> res!164857 e!192675)))

(declare-fun e!192674 () Bool)

(assert (=> b!308034 (= e!192674 e!192675)))

(declare-fun b!308035 () Bool)

(assert (=> b!308035 (and (bvsge (index!12486 lt!151257) #b00000000000000000000000000000000) (bvslt (index!12486 lt!151257) (size!7778 a!3293)))))

(declare-fun res!164859 () Bool)

(assert (=> b!308035 (= res!164859 (= (select (arr!7426 a!3293) (index!12486 lt!151257)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!308035 (=> res!164859 e!192675)))

(declare-fun b!308036 () Bool)

(declare-fun e!192677 () SeekEntryResult!2577)

(assert (=> b!308036 (= e!192677 e!192676)))

(declare-fun c!49189 () Bool)

(declare-fun lt!151258 () (_ BitVec 64))

(assert (=> b!308036 (= c!49189 (or (= lt!151258 k!2441) (= (bvadd lt!151258 lt!151258) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!308037 () Bool)

(assert (=> b!308037 (= e!192677 (Intermediate!2577 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!308033 () Bool)

(assert (=> b!308033 (= e!192678 e!192674)))

(declare-fun res!164858 () Bool)

(assert (=> b!308033 (= res!164858 (and (is-Intermediate!2577 lt!151257) (not (undefined!3389 lt!151257)) (bvslt (x!30687 lt!151257) #b01111111111111111111111111111110) (bvsge (x!30687 lt!151257) #b00000000000000000000000000000000) (bvsge (x!30687 lt!151257) #b00000000000000000000000000000000)))))

(assert (=> b!308033 (=> (not res!164858) (not e!192674))))

(declare-fun d!68133 () Bool)

(assert (=> d!68133 e!192678))

(declare-fun c!49190 () Bool)

(assert (=> d!68133 (= c!49190 (and (is-Intermediate!2577 lt!151257) (undefined!3389 lt!151257)))))

(assert (=> d!68133 (= lt!151257 e!192677)))

(declare-fun c!49188 () Bool)

(assert (=> d!68133 (= c!49188 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!68133 (= lt!151258 (select (arr!7426 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!68133 (validMask!0 mask!3709)))

(assert (=> d!68133 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151257)))

(assert (= (and d!68133 c!49188) b!308037))

(assert (= (and d!68133 (not c!49188)) b!308036))

(assert (= (and b!308036 c!49189) b!308032))

(assert (= (and b!308036 (not c!49189)) b!308031))

(assert (= (and d!68133 c!49190) b!308030))

(assert (= (and d!68133 (not c!49190)) b!308033))

(assert (= (and b!308033 res!164858) b!308034))

(assert (= (and b!308034 (not res!164857)) b!308035))

(assert (= (and b!308035 (not res!164859)) b!308029))

(declare-fun m!318197 () Bool)

(assert (=> b!308034 m!318197))

(assert (=> b!308031 m!318085))

(declare-fun m!318199 () Bool)

(assert (=> b!308031 m!318199))

(assert (=> b!308031 m!318199))

(declare-fun m!318201 () Bool)

(assert (=> b!308031 m!318201))

(assert (=> d!68133 m!318085))

(declare-fun m!318203 () Bool)

(assert (=> d!68133 m!318203))

(assert (=> d!68133 m!318073))

(assert (=> b!308029 m!318197))

(assert (=> b!308035 m!318197))

(assert (=> b!307842 d!68133))

(declare-fun d!68141 () Bool)

(declare-fun lt!151268 () (_ BitVec 32))

(declare-fun lt!151267 () (_ BitVec 32))

(assert (=> d!68141 (= lt!151268 (bvmul (bvxor lt!151267 (bvlshr lt!151267 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68141 (= lt!151267 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68141 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!164860 (let ((h!5360 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!30696 (bvmul (bvxor h!5360 (bvlshr h!5360 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!30696 (bvlshr x!30696 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!164860 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!164860 #b00000000000000000000000000000000))))))

(assert (=> d!68141 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!151268 (bvlshr lt!151268 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!307842 d!68141))

(declare-fun d!68147 () Bool)

(assert (=> d!68147 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!30684 d!68147))

(declare-fun d!68151 () Bool)

(assert (=> d!68151 (= (array_inv!5380 a!3293) (bvsge (size!7778 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!30684 d!68151))

(declare-fun d!68153 () Bool)

(declare-fun res!164875 () Bool)

(declare-fun e!192704 () Bool)

(assert (=> d!68153 (=> res!164875 e!192704)))

(assert (=> d!68153 (= res!164875 (= (select (arr!7426 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!68153 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!192704)))

(declare-fun b!308081 () Bool)

(declare-fun e!192705 () Bool)

(assert (=> b!308081 (= e!192704 e!192705)))

(declare-fun res!164876 () Bool)

(assert (=> b!308081 (=> (not res!164876) (not e!192705))))

(assert (=> b!308081 (= res!164876 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7778 a!3293)))))

(declare-fun b!308082 () Bool)

(assert (=> b!308082 (= e!192705 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68153 (not res!164875)) b!308081))

(assert (= (and b!308081 res!164876) b!308082))

(declare-fun m!318217 () Bool)

(assert (=> d!68153 m!318217))

(declare-fun m!318219 () Bool)

(assert (=> b!308082 m!318219))

(assert (=> b!307848 d!68153))

(declare-fun b!308083 () Bool)

(declare-fun lt!151283 () SeekEntryResult!2577)

(assert (=> b!308083 (and (bvsge (index!12486 lt!151283) #b00000000000000000000000000000000) (bvslt (index!12486 lt!151283) (size!7778 a!3293)))))

(declare-fun e!192707 () Bool)

(assert (=> b!308083 (= e!192707 (= (select (arr!7426 a!3293) (index!12486 lt!151283)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!308084 () Bool)

(declare-fun e!192710 () Bool)

(assert (=> b!308084 (= e!192710 (bvsge (x!30687 lt!151283) #b01111111111111111111111111111110))))

(declare-fun b!308085 () Bool)

(declare-fun e!192708 () SeekEntryResult!2577)

(assert (=> b!308085 (= e!192708 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!308086 () Bool)

(assert (=> b!308086 (= e!192708 (Intermediate!2577 false index!1781 x!1427))))

(declare-fun b!308088 () Bool)

(assert (=> b!308088 (and (bvsge (index!12486 lt!151283) #b00000000000000000000000000000000) (bvslt (index!12486 lt!151283) (size!7778 a!3293)))))

(declare-fun res!164877 () Bool)

(assert (=> b!308088 (= res!164877 (= (select (arr!7426 a!3293) (index!12486 lt!151283)) k!2441))))

(assert (=> b!308088 (=> res!164877 e!192707)))

(declare-fun e!192706 () Bool)

(assert (=> b!308088 (= e!192706 e!192707)))

(declare-fun b!308089 () Bool)

(assert (=> b!308089 (and (bvsge (index!12486 lt!151283) #b00000000000000000000000000000000) (bvslt (index!12486 lt!151283) (size!7778 a!3293)))))

(declare-fun res!164879 () Bool)

(assert (=> b!308089 (= res!164879 (= (select (arr!7426 a!3293) (index!12486 lt!151283)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!308089 (=> res!164879 e!192707)))

(declare-fun b!308090 () Bool)

(declare-fun e!192709 () SeekEntryResult!2577)

(assert (=> b!308090 (= e!192709 e!192708)))

(declare-fun c!49207 () Bool)

(declare-fun lt!151284 () (_ BitVec 64))

(assert (=> b!308090 (= c!49207 (or (= lt!151284 k!2441) (= (bvadd lt!151284 lt!151284) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!308091 () Bool)

(assert (=> b!308091 (= e!192709 (Intermediate!2577 true index!1781 x!1427))))

(declare-fun b!308087 () Bool)

(assert (=> b!308087 (= e!192710 e!192706)))

(declare-fun res!164878 () Bool)

(assert (=> b!308087 (= res!164878 (and (is-Intermediate!2577 lt!151283) (not (undefined!3389 lt!151283)) (bvslt (x!30687 lt!151283) #b01111111111111111111111111111110) (bvsge (x!30687 lt!151283) #b00000000000000000000000000000000) (bvsge (x!30687 lt!151283) x!1427)))))

(assert (=> b!308087 (=> (not res!164878) (not e!192706))))

(declare-fun d!68159 () Bool)

(assert (=> d!68159 e!192710))

(declare-fun c!49208 () Bool)

(assert (=> d!68159 (= c!49208 (and (is-Intermediate!2577 lt!151283) (undefined!3389 lt!151283)))))

(assert (=> d!68159 (= lt!151283 e!192709)))

(declare-fun c!49206 () Bool)

(assert (=> d!68159 (= c!49206 (bvsge x!1427 #b01111111111111111111111111111110))))

(assert (=> d!68159 (= lt!151284 (select (arr!7426 a!3293) index!1781))))

(assert (=> d!68159 (validMask!0 mask!3709)))

(assert (=> d!68159 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151283)))

(assert (= (and d!68159 c!49206) b!308091))

(assert (= (and d!68159 (not c!49206)) b!308090))

(assert (= (and b!308090 c!49207) b!308086))

(assert (= (and b!308090 (not c!49207)) b!308085))

(assert (= (and d!68159 c!49208) b!308084))

(assert (= (and d!68159 (not c!49208)) b!308087))

(assert (= (and b!308087 res!164878) b!308088))

(assert (= (and b!308088 (not res!164877)) b!308089))

(assert (= (and b!308089 (not res!164879)) b!308083))

(declare-fun m!318225 () Bool)

(assert (=> b!308088 m!318225))

(assert (=> b!308085 m!318079))

(assert (=> b!308085 m!318079))

(declare-fun m!318227 () Bool)

(assert (=> b!308085 m!318227))

(assert (=> d!68159 m!318093))

(assert (=> d!68159 m!318073))

(assert (=> b!308083 m!318225))

(assert (=> b!308089 m!318225))

(assert (=> b!307843 d!68159))

(declare-fun d!68161 () Bool)

(declare-fun res!164890 () Bool)

(declare-fun e!192726 () Bool)

(assert (=> d!68161 (=> res!164890 e!192726)))

(assert (=> d!68161 (= res!164890 (bvsge #b00000000000000000000000000000000 (size!7778 a!3293)))))

(assert (=> d!68161 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!192726)))

(declare-fun b!308112 () Bool)

(declare-fun e!192728 () Bool)

(declare-fun call!25913 () Bool)

(assert (=> b!308112 (= e!192728 call!25913)))

(declare-fun b!308113 () Bool)

(declare-fun e!192727 () Bool)

(assert (=> b!308113 (= e!192726 e!192727)))

(declare-fun c!49214 () Bool)

(assert (=> b!308113 (= c!49214 (validKeyInArray!0 (select (arr!7426 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!308114 () Bool)

(assert (=> b!308114 (= e!192727 e!192728)))

(declare-fun lt!151296 () (_ BitVec 64))

(assert (=> b!308114 (= lt!151296 (select (arr!7426 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9572 0))(
  ( (Unit!9573) )
))
(declare-fun lt!151294 () Unit!9572)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15686 (_ BitVec 64) (_ BitVec 32)) Unit!9572)

(assert (=> b!308114 (= lt!151294 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!151296 #b00000000000000000000000000000000))))

(assert (=> b!308114 (arrayContainsKey!0 a!3293 lt!151296 #b00000000000000000000000000000000)))

(declare-fun lt!151295 () Unit!9572)

(assert (=> b!308114 (= lt!151295 lt!151294)))

(declare-fun res!164891 () Bool)

(assert (=> b!308114 (= res!164891 (= (seekEntryOrOpen!0 (select (arr!7426 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2577 #b00000000000000000000000000000000)))))

(assert (=> b!308114 (=> (not res!164891) (not e!192728))))

(declare-fun bm!25910 () Bool)

(assert (=> bm!25910 (= call!25913 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!308115 () Bool)

(assert (=> b!308115 (= e!192727 call!25913)))

(assert (= (and d!68161 (not res!164890)) b!308113))

(assert (= (and b!308113 c!49214) b!308114))

(assert (= (and b!308113 (not c!49214)) b!308115))

(assert (= (and b!308114 res!164891) b!308112))

(assert (= (or b!308112 b!308115) bm!25910))

(assert (=> b!308113 m!318217))

(assert (=> b!308113 m!318217))

(declare-fun m!318241 () Bool)

(assert (=> b!308113 m!318241))

(assert (=> b!308114 m!318217))

(declare-fun m!318243 () Bool)

(assert (=> b!308114 m!318243))

(declare-fun m!318245 () Bool)

(assert (=> b!308114 m!318245))

(assert (=> b!308114 m!318217))

(declare-fun m!318247 () Bool)

(assert (=> b!308114 m!318247))

(declare-fun m!318249 () Bool)

(assert (=> bm!25910 m!318249))

(assert (=> b!307844 d!68161))

(declare-fun d!68169 () Bool)

(assert (=> d!68169 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!307839 d!68169))

(push 1)

(assert (not b!308113))

(assert (not b!308085))

(assert (not d!68159))

(assert (not d!68123))

(assert (not d!68121))

(assert (not b!308114))

(assert (not b!307961))

(assert (not d!68133))

(assert (not bm!25910))

(assert (not b!308082))

(assert (not b!308031))

(check-sat)

(pop 1)

(push 1)

(check-sat)

