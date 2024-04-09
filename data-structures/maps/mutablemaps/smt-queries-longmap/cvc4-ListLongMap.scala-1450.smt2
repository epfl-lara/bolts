; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27956 () Bool)

(assert start!27956)

(declare-fun res!149032 () Bool)

(declare-fun e!181798 () Bool)

(assert (=> start!27956 (=> (not res!149032) (not e!181798))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27956 (= res!149032 (validMask!0 mask!3809))))

(assert (=> start!27956 e!181798))

(assert (=> start!27956 true))

(declare-datatypes ((array!14394 0))(
  ( (array!14395 (arr!6828 (Array (_ BitVec 32) (_ BitVec 64))) (size!7180 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14394)

(declare-fun array_inv!4782 (array!14394) Bool)

(assert (=> start!27956 (array_inv!4782 a!3312)))

(declare-fun b!286981 () Bool)

(declare-fun e!181796 () Bool)

(assert (=> b!286981 (= e!181798 e!181796)))

(declare-fun res!149034 () Bool)

(assert (=> b!286981 (=> (not res!149034) (not e!181796))))

(declare-datatypes ((SeekEntryResult!1988 0))(
  ( (MissingZero!1988 (index!10122 (_ BitVec 32))) (Found!1988 (index!10123 (_ BitVec 32))) (Intermediate!1988 (undefined!2800 Bool) (index!10124 (_ BitVec 32)) (x!28303 (_ BitVec 32))) (Undefined!1988) (MissingVacant!1988 (index!10125 (_ BitVec 32))) )
))
(declare-fun lt!141358 () SeekEntryResult!1988)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286981 (= res!149034 (or (= lt!141358 (MissingZero!1988 i!1256)) (= lt!141358 (MissingVacant!1988 i!1256))))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14394 (_ BitVec 32)) SeekEntryResult!1988)

(assert (=> b!286981 (= lt!141358 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!286982 () Bool)

(declare-fun res!149029 () Bool)

(assert (=> b!286982 (=> (not res!149029) (not e!181798))))

(assert (=> b!286982 (= res!149029 (and (= (size!7180 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7180 a!3312))))))

(declare-fun b!286983 () Bool)

(declare-fun res!149031 () Bool)

(assert (=> b!286983 (=> (not res!149031) (not e!181796))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14394 (_ BitVec 32)) Bool)

(assert (=> b!286983 (= res!149031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!286984 () Bool)

(declare-fun res!149033 () Bool)

(assert (=> b!286984 (=> (not res!149033) (not e!181798))))

(declare-fun arrayContainsKey!0 (array!14394 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286984 (= res!149033 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!286985 () Bool)

(declare-fun res!149030 () Bool)

(assert (=> b!286985 (=> (not res!149030) (not e!181798))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286985 (= res!149030 (validKeyInArray!0 k!2524))))

(declare-fun b!286986 () Bool)

(assert (=> b!286986 (= e!181796 (and (bvsge mask!3809 #b00000000000000000000000000000000) (bvsgt mask!3809 #b00111111111111111111111111111111)))))

(declare-fun lt!141359 () SeekEntryResult!1988)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14394 (_ BitVec 32)) SeekEntryResult!1988)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!286986 (= lt!141359 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (= (and start!27956 res!149032) b!286982))

(assert (= (and b!286982 res!149029) b!286985))

(assert (= (and b!286985 res!149030) b!286984))

(assert (= (and b!286984 res!149033) b!286981))

(assert (= (and b!286981 res!149034) b!286983))

(assert (= (and b!286983 res!149031) b!286986))

(declare-fun m!301569 () Bool)

(assert (=> start!27956 m!301569))

(declare-fun m!301571 () Bool)

(assert (=> start!27956 m!301571))

(declare-fun m!301573 () Bool)

(assert (=> b!286985 m!301573))

(declare-fun m!301575 () Bool)

(assert (=> b!286983 m!301575))

(declare-fun m!301577 () Bool)

(assert (=> b!286984 m!301577))

(declare-fun m!301579 () Bool)

(assert (=> b!286986 m!301579))

(assert (=> b!286986 m!301579))

(declare-fun m!301581 () Bool)

(assert (=> b!286986 m!301581))

(declare-fun m!301583 () Bool)

(assert (=> b!286981 m!301583))

(push 1)

(assert (not b!286986))

(assert (not b!286983))

(assert (not b!286981))

(assert (not start!27956))

(assert (not b!286985))

(assert (not b!286984))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!287044 () Bool)

(declare-fun e!181840 () Bool)

(declare-fun e!181836 () Bool)

(assert (=> b!287044 (= e!181840 e!181836)))

(declare-fun res!149064 () Bool)

(declare-fun lt!141377 () SeekEntryResult!1988)

(assert (=> b!287044 (= res!149064 (and (is-Intermediate!1988 lt!141377) (not (undefined!2800 lt!141377)) (bvslt (x!28303 lt!141377) #b01111111111111111111111111111110) (bvsge (x!28303 lt!141377) #b00000000000000000000000000000000) (bvsge (x!28303 lt!141377) #b00000000000000000000000000000000)))))

(assert (=> b!287044 (=> (not res!149064) (not e!181836))))

(declare-fun b!287045 () Bool)

(declare-fun e!181839 () SeekEntryResult!1988)

(declare-fun e!181837 () SeekEntryResult!1988)

(assert (=> b!287045 (= e!181839 e!181837)))

(declare-fun c!46550 () Bool)

(declare-fun lt!141376 () (_ BitVec 64))

(assert (=> b!287045 (= c!46550 (or (= lt!141376 k!2524) (= (bvadd lt!141376 lt!141376) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!287046 () Bool)

(assert (=> b!287046 (= e!181839 (Intermediate!1988 true (toIndex!0 k!2524 mask!3809) #b00000000000000000000000000000000))))

(declare-fun b!287047 () Bool)

(assert (=> b!287047 (= e!181840 (bvsge (x!28303 lt!141377) #b01111111111111111111111111111110))))

(declare-fun b!287048 () Bool)

(assert (=> b!287048 (and (bvsge (index!10124 lt!141377) #b00000000000000000000000000000000) (bvslt (index!10124 lt!141377) (size!7180 a!3312)))))

(declare-fun res!149065 () Bool)

(assert (=> b!287048 (= res!149065 (= (select (arr!6828 a!3312) (index!10124 lt!141377)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!181838 () Bool)

(assert (=> b!287048 (=> res!149065 e!181838)))

(declare-fun d!65971 () Bool)

(assert (=> d!65971 e!181840))

(declare-fun c!46548 () Bool)

(assert (=> d!65971 (= c!46548 (and (is-Intermediate!1988 lt!141377) (undefined!2800 lt!141377)))))

(assert (=> d!65971 (= lt!141377 e!181839)))

(declare-fun c!46549 () Bool)

(assert (=> d!65971 (= c!46549 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!65971 (= lt!141376 (select (arr!6828 a!3312) (toIndex!0 k!2524 mask!3809)))))

(assert (=> d!65971 (validMask!0 mask!3809)))

(assert (=> d!65971 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809) lt!141377)))

(declare-fun b!287049 () Bool)

(assert (=> b!287049 (= e!181837 (Intermediate!1988 false (toIndex!0 k!2524 mask!3809) #b00000000000000000000000000000000))))

(declare-fun b!287050 () Bool)

(assert (=> b!287050 (and (bvsge (index!10124 lt!141377) #b00000000000000000000000000000000) (bvslt (index!10124 lt!141377) (size!7180 a!3312)))))

(assert (=> b!287050 (= e!181838 (= (select (arr!6828 a!3312) (index!10124 lt!141377)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!287051 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287051 (= e!181837 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2524 mask!3809) #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!287052 () Bool)

(assert (=> b!287052 (and (bvsge (index!10124 lt!141377) #b00000000000000000000000000000000) (bvslt (index!10124 lt!141377) (size!7180 a!3312)))))

(declare-fun res!149063 () Bool)

(assert (=> b!287052 (= res!149063 (= (select (arr!6828 a!3312) (index!10124 lt!141377)) k!2524))))

(assert (=> b!287052 (=> res!149063 e!181838)))

(assert (=> b!287052 (= e!181836 e!181838)))

(assert (= (and d!65971 c!46549) b!287046))

(assert (= (and d!65971 (not c!46549)) b!287045))

(assert (= (and b!287045 c!46550) b!287049))

(assert (= (and b!287045 (not c!46550)) b!287051))

(assert (= (and d!65971 c!46548) b!287047))

(assert (= (and d!65971 (not c!46548)) b!287044))

(assert (= (and b!287044 res!149064) b!287052))

(assert (= (and b!287052 (not res!149063)) b!287048))

(assert (= (and b!287048 (not res!149065)) b!287050))

(declare-fun m!301601 () Bool)

(assert (=> b!287052 m!301601))

(assert (=> b!287051 m!301579))

(declare-fun m!301603 () Bool)

(assert (=> b!287051 m!301603))

(assert (=> b!287051 m!301603))

(declare-fun m!301605 () Bool)

(assert (=> b!287051 m!301605))

(assert (=> b!287050 m!301601))

(assert (=> b!287048 m!301601))

(assert (=> d!65971 m!301579))

(declare-fun m!301607 () Bool)

(assert (=> d!65971 m!301607))

(assert (=> d!65971 m!301569))

(assert (=> b!286986 d!65971))

(declare-fun d!65983 () Bool)

(declare-fun lt!141383 () (_ BitVec 32))

(declare-fun lt!141382 () (_ BitVec 32))

(assert (=> d!65983 (= lt!141383 (bvmul (bvxor lt!141382 (bvlshr lt!141382 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!65983 (= lt!141382 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!65983 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!149066 (let ((h!5271 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!28307 (bvmul (bvxor h!5271 (bvlshr h!5271 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!28307 (bvlshr x!28307 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!149066 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!149066 #b00000000000000000000000000000000))))))

(assert (=> d!65983 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!141383 (bvlshr lt!141383 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!286986 d!65983))

(declare-fun d!65985 () Bool)

(assert (=> d!65985 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!286985 d!65985))

(declare-fun b!287113 () Bool)

(declare-fun e!181875 () SeekEntryResult!1988)

(declare-fun lt!141417 () SeekEntryResult!1988)

(assert (=> b!287113 (= e!181875 (Found!1988 (index!10124 lt!141417)))))

(declare-fun d!65987 () Bool)

(declare-fun lt!141419 () SeekEntryResult!1988)

(assert (=> d!65987 (and (or (is-Undefined!1988 lt!141419) (not (is-Found!1988 lt!141419)) (and (bvsge (index!10123 lt!141419) #b00000000000000000000000000000000) (bvslt (index!10123 lt!141419) (size!7180 a!3312)))) (or (is-Undefined!1988 lt!141419) (is-Found!1988 lt!141419) (not (is-MissingZero!1988 lt!141419)) (and (bvsge (index!10122 lt!141419) #b00000000000000000000000000000000) (bvslt (index!10122 lt!141419) (size!7180 a!3312)))) (or (is-Undefined!1988 lt!141419) (is-Found!1988 lt!141419) (is-MissingZero!1988 lt!141419) (not (is-MissingVacant!1988 lt!141419)) (and (bvsge (index!10125 lt!141419) #b00000000000000000000000000000000) (bvslt (index!10125 lt!141419) (size!7180 a!3312)))) (or (is-Undefined!1988 lt!141419) (ite (is-Found!1988 lt!141419) (= (select (arr!6828 a!3312) (index!10123 lt!141419)) k!2524) (ite (is-MissingZero!1988 lt!141419) (= (select (arr!6828 a!3312) (index!10122 lt!141419)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1988 lt!141419) (= (select (arr!6828 a!3312) (index!10125 lt!141419)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!181876 () SeekEntryResult!1988)

(assert (=> d!65987 (= lt!141419 e!181876)))

(declare-fun c!46580 () Bool)

(assert (=> d!65987 (= c!46580 (and (is-Intermediate!1988 lt!141417) (undefined!2800 lt!141417)))))

(assert (=> d!65987 (= lt!141417 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!65987 (validMask!0 mask!3809)))

(assert (=> d!65987 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!141419)))

(declare-fun b!287114 () Bool)

(assert (=> b!287114 (= e!181876 Undefined!1988)))

(declare-fun b!287115 () Bool)

(declare-fun c!46578 () Bool)

(declare-fun lt!141418 () (_ BitVec 64))

(assert (=> b!287115 (= c!46578 (= lt!141418 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!181874 () SeekEntryResult!1988)

(assert (=> b!287115 (= e!181875 e!181874)))

(declare-fun b!287116 () Bool)

(assert (=> b!287116 (= e!181874 (MissingZero!1988 (index!10124 lt!141417)))))

(declare-fun b!287117 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14394 (_ BitVec 32)) SeekEntryResult!1988)

(assert (=> b!287117 (= e!181874 (seekKeyOrZeroReturnVacant!0 (x!28303 lt!141417) (index!10124 lt!141417) (index!10124 lt!141417) k!2524 a!3312 mask!3809))))

(declare-fun b!287118 () Bool)

(assert (=> b!287118 (= e!181876 e!181875)))

(assert (=> b!287118 (= lt!141418 (select (arr!6828 a!3312) (index!10124 lt!141417)))))

(declare-fun c!46579 () Bool)

(assert (=> b!287118 (= c!46579 (= lt!141418 k!2524))))

(assert (= (and d!65987 c!46580) b!287114))

(assert (= (and d!65987 (not c!46580)) b!287118))

(assert (= (and b!287118 c!46579) b!287113))

(assert (= (and b!287118 (not c!46579)) b!287115))

(assert (= (and b!287115 c!46578) b!287116))

(assert (= (and b!287115 (not c!46578)) b!287117))

(declare-fun m!301639 () Bool)

(assert (=> d!65987 m!301639))

(assert (=> d!65987 m!301569))

(declare-fun m!301641 () Bool)

(assert (=> d!65987 m!301641))

(declare-fun m!301643 () Bool)

(assert (=> d!65987 m!301643))

(assert (=> d!65987 m!301579))

(assert (=> d!65987 m!301579))

(assert (=> d!65987 m!301581))

(declare-fun m!301645 () Bool)

(assert (=> b!287117 m!301645))

(declare-fun m!301647 () Bool)

(assert (=> b!287118 m!301647))

(assert (=> b!286981 d!65987))

(declare-fun d!66001 () Bool)

(declare-fun res!149084 () Bool)

(declare-fun e!181894 () Bool)

(assert (=> d!66001 (=> res!149084 e!181894)))

(assert (=> d!66001 (= res!149084 (bvsge #b00000000000000000000000000000000 (size!7180 a!3312)))))

(assert (=> d!66001 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!181894)))

(declare-fun b!287139 () Bool)

