; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31092 () Bool)

(assert start!31092)

(declare-fun b!312652 () Bool)

(declare-fun res!169269 () Bool)

(declare-fun e!194914 () Bool)

(assert (=> b!312652 (=> (not res!169269) (not e!194914))))

(declare-datatypes ((array!15992 0))(
  ( (array!15993 (arr!7576 (Array (_ BitVec 32) (_ BitVec 64))) (size!7928 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15992)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15992 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!312652 (= res!169269 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!312653 () Bool)

(declare-fun e!194913 () Bool)

(assert (=> b!312653 (= e!194914 e!194913)))

(declare-fun res!169267 () Bool)

(assert (=> b!312653 (=> (not res!169267) (not e!194913))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2727 0))(
  ( (MissingZero!2727 (index!13084 (_ BitVec 32))) (Found!2727 (index!13085 (_ BitVec 32))) (Intermediate!2727 (undefined!3539 Bool) (index!13086 (_ BitVec 32)) (x!31255 (_ BitVec 32))) (Undefined!2727) (MissingVacant!2727 (index!13087 (_ BitVec 32))) )
))
(declare-fun lt!153308 () SeekEntryResult!2727)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15992 (_ BitVec 32)) SeekEntryResult!2727)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312653 (= res!169267 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153308))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!312653 (= lt!153308 (Intermediate!2727 false resIndex!52 resX!52))))

(declare-fun b!312655 () Bool)

(declare-fun res!169264 () Bool)

(assert (=> b!312655 (=> (not res!169264) (not e!194914))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!312655 (= res!169264 (validKeyInArray!0 k!2441))))

(declare-fun b!312656 () Bool)

(declare-fun res!169265 () Bool)

(assert (=> b!312656 (=> (not res!169265) (not e!194914))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15992 (_ BitVec 32)) SeekEntryResult!2727)

(assert (=> b!312656 (= res!169265 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2727 i!1240)))))

(declare-fun b!312657 () Bool)

(declare-fun res!169270 () Bool)

(assert (=> b!312657 (=> (not res!169270) (not e!194913))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!312657 (= res!169270 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!153308))))

(declare-fun b!312658 () Bool)

(declare-fun res!169266 () Bool)

(assert (=> b!312658 (=> (not res!169266) (not e!194914))))

(assert (=> b!312658 (= res!169266 (and (= (size!7928 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7928 a!3293))))))

(declare-fun b!312659 () Bool)

(declare-fun res!169272 () Bool)

(assert (=> b!312659 (=> (not res!169272) (not e!194913))))

(assert (=> b!312659 (= res!169272 (and (= (select (arr!7576 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7928 a!3293))))))

(declare-fun b!312660 () Bool)

(declare-fun res!169271 () Bool)

(assert (=> b!312660 (=> (not res!169271) (not e!194914))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15992 (_ BitVec 32)) Bool)

(assert (=> b!312660 (= res!169271 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!312654 () Bool)

(assert (=> b!312654 (= e!194913 (bvsge resX!52 #b01111111111111111111111111111110))))

(declare-fun res!169268 () Bool)

(assert (=> start!31092 (=> (not res!169268) (not e!194914))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31092 (= res!169268 (validMask!0 mask!3709))))

(assert (=> start!31092 e!194914))

(declare-fun array_inv!5530 (array!15992) Bool)

(assert (=> start!31092 (array_inv!5530 a!3293)))

(assert (=> start!31092 true))

(assert (= (and start!31092 res!169268) b!312658))

(assert (= (and b!312658 res!169266) b!312655))

(assert (= (and b!312655 res!169264) b!312652))

(assert (= (and b!312652 res!169269) b!312656))

(assert (= (and b!312656 res!169265) b!312660))

(assert (= (and b!312660 res!169271) b!312653))

(assert (= (and b!312653 res!169267) b!312659))

(assert (= (and b!312659 res!169272) b!312657))

(assert (= (and b!312657 res!169270) b!312654))

(declare-fun m!322837 () Bool)

(assert (=> b!312653 m!322837))

(assert (=> b!312653 m!322837))

(declare-fun m!322839 () Bool)

(assert (=> b!312653 m!322839))

(declare-fun m!322841 () Bool)

(assert (=> b!312657 m!322841))

(declare-fun m!322843 () Bool)

(assert (=> b!312652 m!322843))

(declare-fun m!322845 () Bool)

(assert (=> b!312656 m!322845))

(declare-fun m!322847 () Bool)

(assert (=> b!312655 m!322847))

(declare-fun m!322849 () Bool)

(assert (=> b!312660 m!322849))

(declare-fun m!322851 () Bool)

(assert (=> start!31092 m!322851))

(declare-fun m!322853 () Bool)

(assert (=> start!31092 m!322853))

(declare-fun m!322855 () Bool)

(assert (=> b!312659 m!322855))

(push 1)

(assert (not b!312657))

(assert (not b!312656))

(assert (not b!312652))

(assert (not start!31092))

(assert (not b!312655))

(assert (not b!312653))

(assert (not b!312660))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!68345 () Bool)

(declare-fun res!169331 () Bool)

(declare-fun e!194937 () Bool)

(assert (=> d!68345 (=> res!169331 e!194937)))

(assert (=> d!68345 (= res!169331 (= (select (arr!7576 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!68345 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!194937)))

(declare-fun b!312719 () Bool)

(declare-fun e!194938 () Bool)

(assert (=> b!312719 (= e!194937 e!194938)))

(declare-fun res!169332 () Bool)

(assert (=> b!312719 (=> (not res!169332) (not e!194938))))

(assert (=> b!312719 (= res!169332 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7928 a!3293)))))

(declare-fun b!312720 () Bool)

(assert (=> b!312720 (= e!194938 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68345 (not res!169331)) b!312719))

(assert (= (and b!312719 res!169332) b!312720))

(declare-fun m!322897 () Bool)

(assert (=> d!68345 m!322897))

(declare-fun m!322899 () Bool)

(assert (=> b!312720 m!322899))

(assert (=> b!312652 d!68345))

(declare-fun b!312784 () Bool)

(declare-fun lt!153335 () SeekEntryResult!2727)

(assert (=> b!312784 (and (bvsge (index!13086 lt!153335) #b00000000000000000000000000000000) (bvslt (index!13086 lt!153335) (size!7928 a!3293)))))

(declare-fun e!194973 () Bool)

(assert (=> b!312784 (= e!194973 (= (select (arr!7576 a!3293) (index!13086 lt!153335)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!68349 () Bool)

(declare-fun e!194976 () Bool)

(assert (=> d!68349 e!194976))

(declare-fun c!49325 () Bool)

(assert (=> d!68349 (= c!49325 (and (is-Intermediate!2727 lt!153335) (undefined!3539 lt!153335)))))

(declare-fun e!194975 () SeekEntryResult!2727)

(assert (=> d!68349 (= lt!153335 e!194975)))

(declare-fun c!49324 () Bool)

(assert (=> d!68349 (= c!49324 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!153334 () (_ BitVec 64))

(assert (=> d!68349 (= lt!153334 (select (arr!7576 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!68349 (validMask!0 mask!3709)))

(assert (=> d!68349 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153335)))

(declare-fun b!312785 () Bool)

(declare-fun e!194974 () Bool)

(assert (=> b!312785 (= e!194976 e!194974)))

(declare-fun res!169348 () Bool)

(assert (=> b!312785 (= res!169348 (and (is-Intermediate!2727 lt!153335) (not (undefined!3539 lt!153335)) (bvslt (x!31255 lt!153335) #b01111111111111111111111111111110) (bvsge (x!31255 lt!153335) #b00000000000000000000000000000000) (bvsge (x!31255 lt!153335) #b00000000000000000000000000000000)))))

(assert (=> b!312785 (=> (not res!169348) (not e!194974))))

(declare-fun b!312786 () Bool)

(declare-fun e!194977 () SeekEntryResult!2727)

(assert (=> b!312786 (= e!194977 (Intermediate!2727 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!312787 () Bool)

(assert (=> b!312787 (= e!194975 (Intermediate!2727 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!312788 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312788 (= e!194977 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!312789 () Bool)

(assert (=> b!312789 (and (bvsge (index!13086 lt!153335) #b00000000000000000000000000000000) (bvslt (index!13086 lt!153335) (size!7928 a!3293)))))

(declare-fun res!169350 () Bool)

(assert (=> b!312789 (= res!169350 (= (select (arr!7576 a!3293) (index!13086 lt!153335)) k!2441))))

(assert (=> b!312789 (=> res!169350 e!194973)))

(assert (=> b!312789 (= e!194974 e!194973)))

(declare-fun b!312790 () Bool)

(assert (=> b!312790 (= e!194976 (bvsge (x!31255 lt!153335) #b01111111111111111111111111111110))))

(declare-fun b!312791 () Bool)

(assert (=> b!312791 (= e!194975 e!194977)))

(declare-fun c!49323 () Bool)

(assert (=> b!312791 (= c!49323 (or (= lt!153334 k!2441) (= (bvadd lt!153334 lt!153334) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!312792 () Bool)

(assert (=> b!312792 (and (bvsge (index!13086 lt!153335) #b00000000000000000000000000000000) (bvslt (index!13086 lt!153335) (size!7928 a!3293)))))

(declare-fun res!169349 () Bool)

(assert (=> b!312792 (= res!169349 (= (select (arr!7576 a!3293) (index!13086 lt!153335)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!312792 (=> res!169349 e!194973)))

(assert (= (and d!68349 c!49324) b!312787))

(assert (= (and d!68349 (not c!49324)) b!312791))

(assert (= (and b!312791 c!49323) b!312786))

(assert (= (and b!312791 (not c!49323)) b!312788))

(assert (= (and d!68349 c!49325) b!312790))

(assert (= (and d!68349 (not c!49325)) b!312785))

(assert (= (and b!312785 res!169348) b!312789))

(assert (= (and b!312789 (not res!169350)) b!312792))

(assert (= (and b!312792 (not res!169349)) b!312784))

(declare-fun m!322919 () Bool)

(assert (=> b!312784 m!322919))

(assert (=> d!68349 m!322837))

(declare-fun m!322921 () Bool)

(assert (=> d!68349 m!322921))

(assert (=> d!68349 m!322851))

(assert (=> b!312792 m!322919))

(assert (=> b!312788 m!322837))

(declare-fun m!322923 () Bool)

(assert (=> b!312788 m!322923))

(assert (=> b!312788 m!322923))

(declare-fun m!322925 () Bool)

(assert (=> b!312788 m!322925))

(assert (=> b!312789 m!322919))

(assert (=> b!312653 d!68349))

(declare-fun d!68357 () Bool)

(declare-fun lt!153341 () (_ BitVec 32))

(declare-fun lt!153340 () (_ BitVec 32))

(assert (=> d!68357 (= lt!153341 (bvmul (bvxor lt!153340 (bvlshr lt!153340 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68357 (= lt!153340 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68357 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!169351 (let ((h!5366 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31260 (bvmul (bvxor h!5366 (bvlshr h!5366 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31260 (bvlshr x!31260 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!169351 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!169351 #b00000000000000000000000000000000))))))

(assert (=> d!68357 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!153341 (bvlshr lt!153341 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!312653 d!68357))

(declare-fun d!68359 () Bool)

(assert (=> d!68359 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31092 d!68359))

(declare-fun d!68363 () Bool)

(assert (=> d!68363 (= (array_inv!5530 a!3293) (bvsge (size!7928 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31092 d!68363))

(declare-fun d!68365 () Bool)

(declare-fun lt!153390 () SeekEntryResult!2727)

(assert (=> d!68365 (and (or (is-Undefined!2727 lt!153390) (not (is-Found!2727 lt!153390)) (and (bvsge (index!13085 lt!153390) #b00000000000000000000000000000000) (bvslt (index!13085 lt!153390) (size!7928 a!3293)))) (or (is-Undefined!2727 lt!153390) (is-Found!2727 lt!153390) (not (is-MissingZero!2727 lt!153390)) (and (bvsge (index!13084 lt!153390) #b00000000000000000000000000000000) (bvslt (index!13084 lt!153390) (size!7928 a!3293)))) (or (is-Undefined!2727 lt!153390) (is-Found!2727 lt!153390) (is-MissingZero!2727 lt!153390) (not (is-MissingVacant!2727 lt!153390)) (and (bvsge (index!13087 lt!153390) #b00000000000000000000000000000000) (bvslt (index!13087 lt!153390) (size!7928 a!3293)))) (or (is-Undefined!2727 lt!153390) (ite (is-Found!2727 lt!153390) (= (select (arr!7576 a!3293) (index!13085 lt!153390)) k!2441) (ite (is-MissingZero!2727 lt!153390) (= (select (arr!7576 a!3293) (index!13084 lt!153390)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2727 lt!153390) (= (select (arr!7576 a!3293) (index!13087 lt!153390)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!195039 () SeekEntryResult!2727)

(assert (=> d!68365 (= lt!153390 e!195039)))

(declare-fun c!49360 () Bool)

(declare-fun lt!153389 () SeekEntryResult!2727)

(assert (=> d!68365 (= c!49360 (and (is-Intermediate!2727 lt!153389) (undefined!3539 lt!153389)))))

(assert (=> d!68365 (= lt!153389 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!68365 (validMask!0 mask!3709)))

(assert (=> d!68365 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!153390)))

(declare-fun b!312889 () Bool)

(declare-fun e!195038 () SeekEntryResult!2727)

(assert (=> b!312889 (= e!195038 (Found!2727 (index!13086 lt!153389)))))

(declare-fun b!312890 () Bool)

(declare-fun e!195037 () SeekEntryResult!2727)

(assert (=> b!312890 (= e!195037 (MissingZero!2727 (index!13086 lt!153389)))))

(declare-fun b!312891 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15992 (_ BitVec 32)) SeekEntryResult!2727)

(assert (=> b!312891 (= e!195037 (seekKeyOrZeroReturnVacant!0 (x!31255 lt!153389) (index!13086 lt!153389) (index!13086 lt!153389) k!2441 a!3293 mask!3709))))

(declare-fun b!312892 () Bool)

(assert (=> b!312892 (= e!195039 Undefined!2727)))

(declare-fun b!312893 () Bool)

(declare-fun c!49361 () Bool)

(declare-fun lt!153391 () (_ BitVec 64))

(assert (=> b!312893 (= c!49361 (= lt!153391 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!312893 (= e!195038 e!195037)))

(declare-fun b!312894 () Bool)

(assert (=> b!312894 (= e!195039 e!195038)))

(assert (=> b!312894 (= lt!153391 (select (arr!7576 a!3293) (index!13086 lt!153389)))))

(declare-fun c!49359 () Bool)

(assert (=> b!312894 (= c!49359 (= lt!153391 k!2441))))

(assert (= (and d!68365 c!49360) b!312892))

(assert (= (and d!68365 (not c!49360)) b!312894))

(assert (= (and b!312894 c!49359) b!312889))

(assert (= (and b!312894 (not c!49359)) b!312893))

(assert (= (and b!312893 c!49361) b!312890))

(assert (= (and b!312893 (not c!49361)) b!312891))

(assert (=> d!68365 m!322837))

(assert (=> d!68365 m!322851))

(declare-fun m!322979 () Bool)

(assert (=> d!68365 m!322979))

(assert (=> d!68365 m!322837))

(assert (=> d!68365 m!322839))

(declare-fun m!322981 () Bool)

(assert (=> d!68365 m!322981))

(declare-fun m!322983 () Bool)

(assert (=> d!68365 m!322983))

(declare-fun m!322985 () Bool)

(assert (=> b!312891 m!322985))

(declare-fun m!322987 () Bool)

(assert (=> b!312894 m!322987))

(assert (=> b!312656 d!68365))

(declare-fun b!312895 () Bool)

(declare-fun lt!153393 () SeekEntryResult!2727)

(assert (=> b!312895 (and (bvsge (index!13086 lt!153393) #b00000000000000000000000000000000) (bvslt (index!13086 lt!153393) (size!7928 a!3293)))))

(declare-fun e!195040 () Bool)

(assert (=> b!312895 (= e!195040 (= (select (arr!7576 a!3293) (index!13086 lt!153393)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!68383 () Bool)

(declare-fun e!195043 () Bool)

(assert (=> d!68383 e!195043))

(declare-fun c!49364 () Bool)

(assert (=> d!68383 (= c!49364 (and (is-Intermediate!2727 lt!153393) (undefined!3539 lt!153393)))))

(declare-fun e!195042 () SeekEntryResult!2727)

(assert (=> d!68383 (= lt!153393 e!195042)))

(declare-fun c!49363 () Bool)

(assert (=> d!68383 (= c!49363 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!153392 () (_ BitVec 64))

(assert (=> d!68383 (= lt!153392 (select (arr!7576 a!3293) index!1781))))

(assert (=> d!68383 (validMask!0 mask!3709)))

(assert (=> d!68383 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!153393)))

(declare-fun b!312896 () Bool)

(declare-fun e!195041 () Bool)

(assert (=> b!312896 (= e!195043 e!195041)))

(declare-fun res!169383 () Bool)

(assert (=> b!312896 (= res!169383 (and (is-Intermediate!2727 lt!153393) (not (undefined!3539 lt!153393)) (bvslt (x!31255 lt!153393) #b01111111111111111111111111111110) (bvsge (x!31255 lt!153393) #b00000000000000000000000000000000) (bvsge (x!31255 lt!153393) x!1427)))))

(assert (=> b!312896 (=> (not res!169383) (not e!195041))))

(declare-fun b!312897 () Bool)

(declare-fun e!195044 () SeekEntryResult!2727)

(assert (=> b!312897 (= e!195044 (Intermediate!2727 false index!1781 x!1427))))

(declare-fun b!312898 () Bool)

(assert (=> b!312898 (= e!195042 (Intermediate!2727 true index!1781 x!1427))))

(declare-fun b!312899 () Bool)

(assert (=> b!312899 (= e!195044 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!312900 () Bool)

(assert (=> b!312900 (and (bvsge (index!13086 lt!153393) #b00000000000000000000000000000000) (bvslt (index!13086 lt!153393) (size!7928 a!3293)))))

(declare-fun res!169385 () Bool)

(assert (=> b!312900 (= res!169385 (= (select (arr!7576 a!3293) (index!13086 lt!153393)) k!2441))))

(assert (=> b!312900 (=> res!169385 e!195040)))

(assert (=> b!312900 (= e!195041 e!195040)))

(declare-fun b!312901 () Bool)

(assert (=> b!312901 (= e!195043 (bvsge (x!31255 lt!153393) #b01111111111111111111111111111110))))

(declare-fun b!312902 () Bool)

(assert (=> b!312902 (= e!195042 e!195044)))

(declare-fun c!49362 () Bool)

(assert (=> b!312902 (= c!49362 (or (= lt!153392 k!2441) (= (bvadd lt!153392 lt!153392) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!312903 () Bool)

(assert (=> b!312903 (and (bvsge (index!13086 lt!153393) #b00000000000000000000000000000000) (bvslt (index!13086 lt!153393) (size!7928 a!3293)))))

(declare-fun res!169384 () Bool)

(assert (=> b!312903 (= res!169384 (= (select (arr!7576 a!3293) (index!13086 lt!153393)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!312903 (=> res!169384 e!195040)))

(assert (= (and d!68383 c!49363) b!312898))

(assert (= (and d!68383 (not c!49363)) b!312902))

(assert (= (and b!312902 c!49362) b!312897))

(assert (= (and b!312902 (not c!49362)) b!312899))

(assert (= (and d!68383 c!49364) b!312901))

(assert (= (and d!68383 (not c!49364)) b!312896))

(assert (= (and b!312896 res!169383) b!312900))

(assert (= (and b!312900 (not res!169385)) b!312903))

(assert (= (and b!312903 (not res!169384)) b!312895))

(declare-fun m!322989 () Bool)

(assert (=> b!312895 m!322989))

(declare-fun m!322991 () Bool)

(assert (=> d!68383 m!322991))

(assert (=> d!68383 m!322851))

(assert (=> b!312903 m!322989))

(declare-fun m!322993 () Bool)

(assert (=> b!312899 m!322993))

(assert (=> b!312899 m!322993))

(declare-fun m!322995 () Bool)

(assert (=> b!312899 m!322995))

(assert (=> b!312900 m!322989))

(assert (=> b!312657 d!68383))

(declare-fun d!68385 () Bool)

(assert (=> d!68385 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!312655 d!68385))

(declare-fun b!312918 () Bool)

(declare-fun e!195059 () Bool)

(declare-fun e!195058 () Bool)

(assert (=> b!312918 (= e!195059 e!195058)))

(declare-fun c!49367 () Bool)

(assert (=> b!312918 (= c!49367 (validKeyInArray!0 (select (arr!7576 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!312919 () Bool)

(declare-fun call!25931 () Bool)

(assert (=> b!312919 (= e!195058 call!25931)))

(declare-fun b!312920 () Bool)

(declare-fun e!195057 () Bool)

(assert (=> b!312920 (= e!195057 call!25931)))

(declare-fun b!312921 () Bool)

(assert (=> b!312921 (= e!195058 e!195057)))

(declare-fun lt!153406 () (_ BitVec 64))

(assert (=> b!312921 (= lt!153406 (select (arr!7576 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9656 0))(
  ( (Unit!9657) )
))
(declare-fun lt!153408 () Unit!9656)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15992 (_ BitVec 64) (_ BitVec 32)) Unit!9656)

(assert (=> b!312921 (= lt!153408 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!153406 #b00000000000000000000000000000000))))

(assert (=> b!312921 (arrayContainsKey!0 a!3293 lt!153406 #b00000000000000000000000000000000)))

(declare-fun lt!153407 () Unit!9656)

(assert (=> b!312921 (= lt!153407 lt!153408)))

(declare-fun res!169397 () Bool)

(assert (=> b!312921 (= res!169397 (= (seekEntryOrOpen!0 (select (arr!7576 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2727 #b00000000000000000000000000000000)))))

(assert (=> b!312921 (=> (not res!169397) (not e!195057))))

(declare-fun d!68389 () Bool)

(declare-fun res!169398 () Bool)

(assert (=> d!68389 (=> res!169398 e!195059)))

(assert (=> d!68389 (= res!169398 (bvsge #b00000000000000000000000000000000 (size!7928 a!3293)))))

(assert (=> d!68389 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!195059)))

(declare-fun bm!25928 () Bool)

(assert (=> bm!25928 (= call!25931 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(assert (= (and d!68389 (not res!169398)) b!312918))

(assert (= (and b!312918 c!49367) b!312921))

(assert (= (and b!312918 (not c!49367)) b!312919))

(assert (= (and b!312921 res!169397) b!312920))

(assert (= (or b!312920 b!312919) bm!25928))

(assert (=> b!312918 m!322897))

(assert (=> b!312918 m!322897))

(declare-fun m!322999 () Bool)

(assert (=> b!312918 m!322999))

(assert (=> b!312921 m!322897))

(declare-fun m!323001 () Bool)

(assert (=> b!312921 m!323001))

(declare-fun m!323003 () Bool)

(assert (=> b!312921 m!323003))

(assert (=> b!312921 m!322897))

(declare-fun m!323005 () Bool)

(assert (=> b!312921 m!323005))

(declare-fun m!323007 () Bool)

(assert (=> bm!25928 m!323007))

(assert (=> b!312660 d!68389))

(push 1)

