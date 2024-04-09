; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29656 () Bool)

(assert start!29656)

(declare-fun b!299045 () Bool)

(declare-fun res!157769 () Bool)

(declare-fun e!188915 () Bool)

(assert (=> b!299045 (=> (not res!157769) (not e!188915))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!15123 0))(
  ( (array!15124 (arr!7161 (Array (_ BitVec 32) (_ BitVec 64))) (size!7513 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15123)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!299045 (= res!157769 (and (= (size!7513 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7513 a!3312))))))

(declare-fun b!299047 () Bool)

(declare-fun e!188913 () Bool)

(declare-fun e!188917 () Bool)

(assert (=> b!299047 (= e!188913 e!188917)))

(declare-fun res!157771 () Bool)

(assert (=> b!299047 (=> (not res!157771) (not e!188917))))

(declare-fun lt!148786 () Bool)

(declare-datatypes ((SeekEntryResult!2321 0))(
  ( (MissingZero!2321 (index!11457 (_ BitVec 32))) (Found!2321 (index!11458 (_ BitVec 32))) (Intermediate!2321 (undefined!3133 Bool) (index!11459 (_ BitVec 32)) (x!29659 (_ BitVec 32))) (Undefined!2321) (MissingVacant!2321 (index!11460 (_ BitVec 32))) )
))
(declare-fun lt!148789 () SeekEntryResult!2321)

(assert (=> b!299047 (= res!157771 (and (not lt!148786) (= lt!148789 (MissingVacant!2321 i!1256))))))

(declare-fun lt!148791 () array!15123)

(declare-fun lt!148788 () (_ BitVec 32))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun lt!148787 () SeekEntryResult!2321)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15123 (_ BitVec 32)) SeekEntryResult!2321)

(assert (=> b!299047 (= lt!148787 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148788 k!2524 lt!148791 mask!3809))))

(assert (=> b!299047 (= lt!148791 (array!15124 (store (arr!7161 a!3312) i!1256 k!2524) (size!7513 a!3312)))))

(declare-fun lt!148793 () SeekEntryResult!2321)

(assert (=> b!299047 (= lt!148793 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148788 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!299047 (= lt!148788 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!299048 () Bool)

(declare-fun e!188916 () Bool)

(assert (=> b!299048 (= e!188917 e!188916)))

(declare-fun res!157766 () Bool)

(assert (=> b!299048 (=> (not res!157766) (not e!188916))))

(declare-fun lt!148790 () Bool)

(assert (=> b!299048 (= res!157766 (and (or lt!148790 (not (undefined!3133 lt!148793))) (not lt!148790) (= (select (arr!7161 a!3312) (index!11459 lt!148793)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!299048 (= lt!148790 (not (is-Intermediate!2321 lt!148793)))))

(declare-fun b!299049 () Bool)

(declare-fun res!157768 () Bool)

(assert (=> b!299049 (=> (not res!157768) (not e!188915))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!299049 (= res!157768 (validKeyInArray!0 k!2524))))

(declare-fun b!299050 () Bool)

(declare-fun res!157773 () Bool)

(assert (=> b!299050 (=> (not res!157773) (not e!188915))))

(declare-fun arrayContainsKey!0 (array!15123 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!299050 (= res!157773 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!299051 () Bool)

(declare-fun res!157770 () Bool)

(assert (=> b!299051 (=> (not res!157770) (not e!188913))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15123 (_ BitVec 32)) Bool)

(assert (=> b!299051 (= res!157770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!299052 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15123 (_ BitVec 32)) SeekEntryResult!2321)

(assert (=> b!299052 (= e!188916 (not (= (seekEntryOrOpen!0 k!2524 lt!148791 mask!3809) (Found!2321 i!1256))))))

(declare-datatypes ((Unit!9322 0))(
  ( (Unit!9323) )
))
(declare-fun lt!148792 () Unit!9322)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!15123 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9322)

(assert (=> b!299052 (= lt!148792 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!148788 (index!11459 lt!148793) (x!29659 lt!148793) mask!3809))))

(assert (=> b!299052 (= (index!11459 lt!148793) i!1256)))

(declare-fun b!299046 () Bool)

(assert (=> b!299046 (= e!188915 e!188913)))

(declare-fun res!157772 () Bool)

(assert (=> b!299046 (=> (not res!157772) (not e!188913))))

(assert (=> b!299046 (= res!157772 (or lt!148786 (= lt!148789 (MissingVacant!2321 i!1256))))))

(assert (=> b!299046 (= lt!148786 (= lt!148789 (MissingZero!2321 i!1256)))))

(assert (=> b!299046 (= lt!148789 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!157767 () Bool)

(assert (=> start!29656 (=> (not res!157767) (not e!188915))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29656 (= res!157767 (validMask!0 mask!3809))))

(assert (=> start!29656 e!188915))

(assert (=> start!29656 true))

(declare-fun array_inv!5115 (array!15123) Bool)

(assert (=> start!29656 (array_inv!5115 a!3312)))

(assert (= (and start!29656 res!157767) b!299045))

(assert (= (and b!299045 res!157769) b!299049))

(assert (= (and b!299049 res!157768) b!299050))

(assert (= (and b!299050 res!157773) b!299046))

(assert (= (and b!299046 res!157772) b!299051))

(assert (= (and b!299051 res!157770) b!299047))

(assert (= (and b!299047 res!157771) b!299048))

(assert (= (and b!299048 res!157766) b!299052))

(declare-fun m!311441 () Bool)

(assert (=> b!299047 m!311441))

(declare-fun m!311443 () Bool)

(assert (=> b!299047 m!311443))

(declare-fun m!311445 () Bool)

(assert (=> b!299047 m!311445))

(declare-fun m!311447 () Bool)

(assert (=> b!299047 m!311447))

(declare-fun m!311449 () Bool)

(assert (=> b!299048 m!311449))

(declare-fun m!311451 () Bool)

(assert (=> start!29656 m!311451))

(declare-fun m!311453 () Bool)

(assert (=> start!29656 m!311453))

(declare-fun m!311455 () Bool)

(assert (=> b!299050 m!311455))

(declare-fun m!311457 () Bool)

(assert (=> b!299052 m!311457))

(declare-fun m!311459 () Bool)

(assert (=> b!299052 m!311459))

(declare-fun m!311461 () Bool)

(assert (=> b!299049 m!311461))

(declare-fun m!311463 () Bool)

(assert (=> b!299051 m!311463))

(declare-fun m!311465 () Bool)

(assert (=> b!299046 m!311465))

(push 1)

(assert (not b!299050))

(assert (not b!299051))

(assert (not b!299052))

(assert (not b!299047))

(assert (not b!299046))

(assert (not b!299049))

(assert (not start!29656))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!299143 () Bool)

(declare-fun lt!148831 () SeekEntryResult!2321)

(assert (=> b!299143 (and (bvsge (index!11459 lt!148831) #b00000000000000000000000000000000) (bvslt (index!11459 lt!148831) (size!7513 lt!148791)))))

(declare-fun res!157793 () Bool)

(assert (=> b!299143 (= res!157793 (= (select (arr!7161 lt!148791) (index!11459 lt!148831)) k!2524))))

(declare-fun e!188970 () Bool)

(assert (=> b!299143 (=> res!157793 e!188970)))

(declare-fun e!188967 () Bool)

(assert (=> b!299143 (= e!188967 e!188970)))

(declare-fun d!67397 () Bool)

(declare-fun e!188968 () Bool)

(assert (=> d!67397 e!188968))

(declare-fun c!48264 () Bool)

(assert (=> d!67397 (= c!48264 (and (is-Intermediate!2321 lt!148831) (undefined!3133 lt!148831)))))

(declare-fun e!188969 () SeekEntryResult!2321)

(assert (=> d!67397 (= lt!148831 e!188969)))

(declare-fun c!48266 () Bool)

(assert (=> d!67397 (= c!48266 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!148830 () (_ BitVec 64))

(assert (=> d!67397 (= lt!148830 (select (arr!7161 lt!148791) lt!148788))))

(assert (=> d!67397 (validMask!0 mask!3809)))

(assert (=> d!67397 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148788 k!2524 lt!148791 mask!3809) lt!148831)))

(declare-fun b!299144 () Bool)

(assert (=> b!299144 (= e!188968 (bvsge (x!29659 lt!148831) #b01111111111111111111111111111110))))

(declare-fun b!299145 () Bool)

(declare-fun e!188966 () SeekEntryResult!2321)

(assert (=> b!299145 (= e!188969 e!188966)))

(declare-fun c!48265 () Bool)

(assert (=> b!299145 (= c!48265 (or (= lt!148830 k!2524) (= (bvadd lt!148830 lt!148830) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!299146 () Bool)

(assert (=> b!299146 (= e!188966 (Intermediate!2321 false lt!148788 #b00000000000000000000000000000000))))

(declare-fun b!299147 () Bool)

(assert (=> b!299147 (= e!188969 (Intermediate!2321 true lt!148788 #b00000000000000000000000000000000))))

(declare-fun b!299148 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!299148 (= e!188966 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148788 #b00000000000000000000000000000000 mask!3809) k!2524 lt!148791 mask!3809))))

(declare-fun b!299149 () Bool)

(assert (=> b!299149 (and (bvsge (index!11459 lt!148831) #b00000000000000000000000000000000) (bvslt (index!11459 lt!148831) (size!7513 lt!148791)))))

(declare-fun res!157795 () Bool)

(assert (=> b!299149 (= res!157795 (= (select (arr!7161 lt!148791) (index!11459 lt!148831)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!299149 (=> res!157795 e!188970)))

(declare-fun b!299150 () Bool)

(assert (=> b!299150 (and (bvsge (index!11459 lt!148831) #b00000000000000000000000000000000) (bvslt (index!11459 lt!148831) (size!7513 lt!148791)))))

(assert (=> b!299150 (= e!188970 (= (select (arr!7161 lt!148791) (index!11459 lt!148831)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!299151 () Bool)

(assert (=> b!299151 (= e!188968 e!188967)))

(declare-fun res!157794 () Bool)

(assert (=> b!299151 (= res!157794 (and (is-Intermediate!2321 lt!148831) (not (undefined!3133 lt!148831)) (bvslt (x!29659 lt!148831) #b01111111111111111111111111111110) (bvsge (x!29659 lt!148831) #b00000000000000000000000000000000) (bvsge (x!29659 lt!148831) #b00000000000000000000000000000000)))))

(assert (=> b!299151 (=> (not res!157794) (not e!188967))))

(assert (= (and d!67397 c!48266) b!299147))

(assert (= (and d!67397 (not c!48266)) b!299145))

(assert (= (and b!299145 c!48265) b!299146))

(assert (= (and b!299145 (not c!48265)) b!299148))

(assert (= (and d!67397 c!48264) b!299144))

(assert (= (and d!67397 (not c!48264)) b!299151))

(assert (= (and b!299151 res!157794) b!299143))

(assert (= (and b!299143 (not res!157793)) b!299149))

(assert (= (and b!299149 (not res!157795)) b!299150))

(declare-fun m!311505 () Bool)

(assert (=> d!67397 m!311505))

(assert (=> d!67397 m!311451))

(declare-fun m!311507 () Bool)

(assert (=> b!299150 m!311507))

(assert (=> b!299149 m!311507))

(declare-fun m!311509 () Bool)

(assert (=> b!299148 m!311509))

(assert (=> b!299148 m!311509))

(declare-fun m!311511 () Bool)

(assert (=> b!299148 m!311511))

(assert (=> b!299143 m!311507))

(assert (=> b!299047 d!67397))

(declare-fun b!299152 () Bool)

(declare-fun lt!148833 () SeekEntryResult!2321)

(assert (=> b!299152 (and (bvsge (index!11459 lt!148833) #b00000000000000000000000000000000) (bvslt (index!11459 lt!148833) (size!7513 a!3312)))))

(declare-fun res!157796 () Bool)

(assert (=> b!299152 (= res!157796 (= (select (arr!7161 a!3312) (index!11459 lt!148833)) k!2524))))

(declare-fun e!188975 () Bool)

(assert (=> b!299152 (=> res!157796 e!188975)))

(declare-fun e!188972 () Bool)

(assert (=> b!299152 (= e!188972 e!188975)))

(declare-fun d!67403 () Bool)

(declare-fun e!188973 () Bool)

(assert (=> d!67403 e!188973))

(declare-fun c!48267 () Bool)

(assert (=> d!67403 (= c!48267 (and (is-Intermediate!2321 lt!148833) (undefined!3133 lt!148833)))))

(declare-fun e!188974 () SeekEntryResult!2321)

(assert (=> d!67403 (= lt!148833 e!188974)))

(declare-fun c!48269 () Bool)

(assert (=> d!67403 (= c!48269 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!148832 () (_ BitVec 64))

(assert (=> d!67403 (= lt!148832 (select (arr!7161 a!3312) lt!148788))))

(assert (=> d!67403 (validMask!0 mask!3809)))

(assert (=> d!67403 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148788 k!2524 a!3312 mask!3809) lt!148833)))

(declare-fun b!299153 () Bool)

(assert (=> b!299153 (= e!188973 (bvsge (x!29659 lt!148833) #b01111111111111111111111111111110))))

(declare-fun b!299154 () Bool)

(declare-fun e!188971 () SeekEntryResult!2321)

(assert (=> b!299154 (= e!188974 e!188971)))

(declare-fun c!48268 () Bool)

(assert (=> b!299154 (= c!48268 (or (= lt!148832 k!2524) (= (bvadd lt!148832 lt!148832) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!299155 () Bool)

(assert (=> b!299155 (= e!188971 (Intermediate!2321 false lt!148788 #b00000000000000000000000000000000))))

(declare-fun b!299156 () Bool)

(assert (=> b!299156 (= e!188974 (Intermediate!2321 true lt!148788 #b00000000000000000000000000000000))))

(declare-fun b!299157 () Bool)

(assert (=> b!299157 (= e!188971 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148788 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!299158 () Bool)

(assert (=> b!299158 (and (bvsge (index!11459 lt!148833) #b00000000000000000000000000000000) (bvslt (index!11459 lt!148833) (size!7513 a!3312)))))

(declare-fun res!157798 () Bool)

(assert (=> b!299158 (= res!157798 (= (select (arr!7161 a!3312) (index!11459 lt!148833)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!299158 (=> res!157798 e!188975)))

(declare-fun b!299159 () Bool)

(assert (=> b!299159 (and (bvsge (index!11459 lt!148833) #b00000000000000000000000000000000) (bvslt (index!11459 lt!148833) (size!7513 a!3312)))))

(assert (=> b!299159 (= e!188975 (= (select (arr!7161 a!3312) (index!11459 lt!148833)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!299160 () Bool)

(assert (=> b!299160 (= e!188973 e!188972)))

(declare-fun res!157797 () Bool)

(assert (=> b!299160 (= res!157797 (and (is-Intermediate!2321 lt!148833) (not (undefined!3133 lt!148833)) (bvslt (x!29659 lt!148833) #b01111111111111111111111111111110) (bvsge (x!29659 lt!148833) #b00000000000000000000000000000000) (bvsge (x!29659 lt!148833) #b00000000000000000000000000000000)))))

(assert (=> b!299160 (=> (not res!157797) (not e!188972))))

(assert (= (and d!67403 c!48269) b!299156))

(assert (= (and d!67403 (not c!48269)) b!299154))

(assert (= (and b!299154 c!48268) b!299155))

(assert (= (and b!299154 (not c!48268)) b!299157))

(assert (= (and d!67403 c!48267) b!299153))

(assert (= (and d!67403 (not c!48267)) b!299160))

(assert (= (and b!299160 res!157797) b!299152))

(assert (= (and b!299152 (not res!157796)) b!299158))

(assert (= (and b!299158 (not res!157798)) b!299159))

(declare-fun m!311513 () Bool)

(assert (=> d!67403 m!311513))

(assert (=> d!67403 m!311451))

(declare-fun m!311515 () Bool)

(assert (=> b!299159 m!311515))

(assert (=> b!299158 m!311515))

(assert (=> b!299157 m!311509))

(assert (=> b!299157 m!311509))

(declare-fun m!311517 () Bool)

(assert (=> b!299157 m!311517))

(assert (=> b!299152 m!311515))

(assert (=> b!299047 d!67403))

(declare-fun d!67405 () Bool)

(declare-fun lt!148839 () (_ BitVec 32))

(declare-fun lt!148838 () (_ BitVec 32))

(assert (=> d!67405 (= lt!148839 (bvmul (bvxor lt!148838 (bvlshr lt!148838 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67405 (= lt!148838 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

