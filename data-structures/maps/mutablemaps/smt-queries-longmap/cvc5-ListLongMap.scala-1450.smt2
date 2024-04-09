; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27952 () Bool)

(assert start!27952)

(declare-fun b!286945 () Bool)

(declare-fun res!148993 () Bool)

(declare-fun e!181779 () Bool)

(assert (=> b!286945 (=> (not res!148993) (not e!181779))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14390 0))(
  ( (array!14391 (arr!6826 (Array (_ BitVec 32) (_ BitVec 64))) (size!7178 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14390)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!286945 (= res!148993 (and (= (size!7178 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7178 a!3312))))))

(declare-fun b!286946 () Bool)

(declare-fun res!148996 () Bool)

(assert (=> b!286946 (=> (not res!148996) (not e!181779))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14390 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286946 (= res!148996 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!286948 () Bool)

(declare-fun res!148995 () Bool)

(assert (=> b!286948 (=> (not res!148995) (not e!181779))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286948 (= res!148995 (validKeyInArray!0 k!2524))))

(declare-fun b!286949 () Bool)

(declare-fun e!181778 () Bool)

(assert (=> b!286949 (= e!181778 (and (bvsge mask!3809 #b00000000000000000000000000000000) (bvsgt mask!3809 #b00111111111111111111111111111111)))))

(declare-datatypes ((SeekEntryResult!1986 0))(
  ( (MissingZero!1986 (index!10114 (_ BitVec 32))) (Found!1986 (index!10115 (_ BitVec 32))) (Intermediate!1986 (undefined!2798 Bool) (index!10116 (_ BitVec 32)) (x!28301 (_ BitVec 32))) (Undefined!1986) (MissingVacant!1986 (index!10117 (_ BitVec 32))) )
))
(declare-fun lt!141346 () SeekEntryResult!1986)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14390 (_ BitVec 32)) SeekEntryResult!1986)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!286949 (= lt!141346 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!286950 () Bool)

(declare-fun res!148994 () Bool)

(assert (=> b!286950 (=> (not res!148994) (not e!181778))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14390 (_ BitVec 32)) Bool)

(assert (=> b!286950 (= res!148994 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!286947 () Bool)

(assert (=> b!286947 (= e!181779 e!181778)))

(declare-fun res!148998 () Bool)

(assert (=> b!286947 (=> (not res!148998) (not e!181778))))

(declare-fun lt!141347 () SeekEntryResult!1986)

(assert (=> b!286947 (= res!148998 (or (= lt!141347 (MissingZero!1986 i!1256)) (= lt!141347 (MissingVacant!1986 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14390 (_ BitVec 32)) SeekEntryResult!1986)

(assert (=> b!286947 (= lt!141347 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!148997 () Bool)

(assert (=> start!27952 (=> (not res!148997) (not e!181779))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27952 (= res!148997 (validMask!0 mask!3809))))

(assert (=> start!27952 e!181779))

(assert (=> start!27952 true))

(declare-fun array_inv!4780 (array!14390) Bool)

(assert (=> start!27952 (array_inv!4780 a!3312)))

(assert (= (and start!27952 res!148997) b!286945))

(assert (= (and b!286945 res!148993) b!286948))

(assert (= (and b!286948 res!148995) b!286946))

(assert (= (and b!286946 res!148996) b!286947))

(assert (= (and b!286947 res!148998) b!286950))

(assert (= (and b!286950 res!148994) b!286949))

(declare-fun m!301537 () Bool)

(assert (=> b!286949 m!301537))

(assert (=> b!286949 m!301537))

(declare-fun m!301539 () Bool)

(assert (=> b!286949 m!301539))

(declare-fun m!301541 () Bool)

(assert (=> b!286950 m!301541))

(declare-fun m!301543 () Bool)

(assert (=> b!286947 m!301543))

(declare-fun m!301545 () Bool)

(assert (=> start!27952 m!301545))

(declare-fun m!301547 () Bool)

(assert (=> start!27952 m!301547))

(declare-fun m!301549 () Bool)

(assert (=> b!286948 m!301549))

(declare-fun m!301551 () Bool)

(assert (=> b!286946 m!301551))

(push 1)

(assert (not b!286946))

(assert (not b!286949))

(assert (not start!27952))

(assert (not b!286947))

(assert (not b!286948))

(assert (not b!286950))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!65969 () Bool)

(declare-fun res!149045 () Bool)

(declare-fun e!181809 () Bool)

(assert (=> d!65969 (=> res!149045 e!181809)))

(assert (=> d!65969 (= res!149045 (= (select (arr!6826 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!65969 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!181809)))

(declare-fun b!286997 () Bool)

(declare-fun e!181810 () Bool)

(assert (=> b!286997 (= e!181809 e!181810)))

(declare-fun res!149046 () Bool)

(assert (=> b!286997 (=> (not res!149046) (not e!181810))))

(assert (=> b!286997 (= res!149046 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7178 a!3312)))))

(declare-fun b!286998 () Bool)

(assert (=> b!286998 (= e!181810 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65969 (not res!149045)) b!286997))

(assert (= (and b!286997 res!149046) b!286998))

(declare-fun m!301589 () Bool)

(assert (=> d!65969 m!301589))

(declare-fun m!301591 () Bool)

(assert (=> b!286998 m!301591))

(assert (=> b!286946 d!65969))

(declare-fun d!65973 () Bool)

(assert (=> d!65973 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!27952 d!65973))

(declare-fun d!65975 () Bool)

(assert (=> d!65975 (= (array_inv!4780 a!3312) (bvsge (size!7178 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!27952 d!65975))

(declare-fun d!65977 () Bool)

(declare-fun lt!141391 () SeekEntryResult!1986)

(assert (=> d!65977 (and (or (is-Undefined!1986 lt!141391) (not (is-Found!1986 lt!141391)) (and (bvsge (index!10115 lt!141391) #b00000000000000000000000000000000) (bvslt (index!10115 lt!141391) (size!7178 a!3312)))) (or (is-Undefined!1986 lt!141391) (is-Found!1986 lt!141391) (not (is-MissingZero!1986 lt!141391)) (and (bvsge (index!10114 lt!141391) #b00000000000000000000000000000000) (bvslt (index!10114 lt!141391) (size!7178 a!3312)))) (or (is-Undefined!1986 lt!141391) (is-Found!1986 lt!141391) (is-MissingZero!1986 lt!141391) (not (is-MissingVacant!1986 lt!141391)) (and (bvsge (index!10117 lt!141391) #b00000000000000000000000000000000) (bvslt (index!10117 lt!141391) (size!7178 a!3312)))) (or (is-Undefined!1986 lt!141391) (ite (is-Found!1986 lt!141391) (= (select (arr!6826 a!3312) (index!10115 lt!141391)) k!2524) (ite (is-MissingZero!1986 lt!141391) (= (select (arr!6826 a!3312) (index!10114 lt!141391)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1986 lt!141391) (= (select (arr!6826 a!3312) (index!10117 lt!141391)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!181849 () SeekEntryResult!1986)

(assert (=> d!65977 (= lt!141391 e!181849)))

(declare-fun c!46558 () Bool)

(declare-fun lt!141390 () SeekEntryResult!1986)

(assert (=> d!65977 (= c!46558 (and (is-Intermediate!1986 lt!141390) (undefined!2798 lt!141390)))))

(assert (=> d!65977 (= lt!141390 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!65977 (validMask!0 mask!3809)))

(assert (=> d!65977 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!141391)))

(declare-fun b!287065 () Bool)

(declare-fun e!181847 () SeekEntryResult!1986)

(assert (=> b!287065 (= e!181849 e!181847)))

(declare-fun lt!141392 () (_ BitVec 64))

(assert (=> b!287065 (= lt!141392 (select (arr!6826 a!3312) (index!10116 lt!141390)))))

(declare-fun c!46557 () Bool)

(assert (=> b!287065 (= c!46557 (= lt!141392 k!2524))))

(declare-fun b!287066 () Bool)

(assert (=> b!287066 (= e!181849 Undefined!1986)))

(declare-fun b!287067 () Bool)

(declare-fun c!46559 () Bool)

(assert (=> b!287067 (= c!46559 (= lt!141392 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!181848 () SeekEntryResult!1986)

(assert (=> b!287067 (= e!181847 e!181848)))

(declare-fun b!287068 () Bool)

(assert (=> b!287068 (= e!181847 (Found!1986 (index!10116 lt!141390)))))

(declare-fun b!287069 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14390 (_ BitVec 32)) SeekEntryResult!1986)

(assert (=> b!287069 (= e!181848 (seekKeyOrZeroReturnVacant!0 (x!28301 lt!141390) (index!10116 lt!141390) (index!10116 lt!141390) k!2524 a!3312 mask!3809))))

(declare-fun b!287070 () Bool)

(assert (=> b!287070 (= e!181848 (MissingZero!1986 (index!10116 lt!141390)))))

(assert (= (and d!65977 c!46558) b!287066))

(assert (= (and d!65977 (not c!46558)) b!287065))

(assert (= (and b!287065 c!46557) b!287068))

(assert (= (and b!287065 (not c!46557)) b!287067))

(assert (= (and b!287067 c!46559) b!287070))

(assert (= (and b!287067 (not c!46559)) b!287069))

(declare-fun m!301609 () Bool)

(assert (=> d!65977 m!301609))

(declare-fun m!301611 () Bool)

(assert (=> d!65977 m!301611))

(assert (=> d!65977 m!301537))

(assert (=> d!65977 m!301539))

(declare-fun m!301613 () Bool)

(assert (=> d!65977 m!301613))

(assert (=> d!65977 m!301545))

(assert (=> d!65977 m!301537))

(declare-fun m!301615 () Bool)

(assert (=> b!287065 m!301615))

(declare-fun m!301617 () Bool)

(assert (=> b!287069 m!301617))

(assert (=> b!286947 d!65977))

(declare-fun d!65989 () Bool)

(assert (=> d!65989 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!286948 d!65989))

(declare-fun d!65991 () Bool)

(declare-fun res!149071 () Bool)

(declare-fun e!181873 () Bool)

(assert (=> d!65991 (=> res!149071 e!181873)))

(assert (=> d!65991 (= res!149071 (bvsge #b00000000000000000000000000000000 (size!7178 a!3312)))))

(assert (=> d!65991 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!181873)))

(declare-fun b!287109 () Bool)

(declare-fun e!181871 () Bool)

(declare-fun call!25607 () Bool)

(assert (=> b!287109 (= e!181871 call!25607)))

(declare-fun b!287110 () Bool)

(assert (=> b!287110 (= e!181873 e!181871)))

(declare-fun c!46577 () Bool)

(assert (=> b!287110 (= c!46577 (validKeyInArray!0 (select (arr!6826 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!287111 () Bool)

(declare-fun e!181872 () Bool)

(assert (=> b!287111 (= e!181872 call!25607)))

(declare-fun b!287112 () Bool)

(assert (=> b!287112 (= e!181871 e!181872)))

(declare-fun lt!141414 () (_ BitVec 64))

(assert (=> b!287112 (= lt!141414 (select (arr!6826 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9061 0))(
  ( (Unit!9062) )
))
(declare-fun lt!141416 () Unit!9061)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14390 (_ BitVec 64) (_ BitVec 32)) Unit!9061)

(assert (=> b!287112 (= lt!141416 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!141414 #b00000000000000000000000000000000))))

(assert (=> b!287112 (arrayContainsKey!0 a!3312 lt!141414 #b00000000000000000000000000000000)))

(declare-fun lt!141415 () Unit!9061)

(assert (=> b!287112 (= lt!141415 lt!141416)))

(declare-fun res!149072 () Bool)

(assert (=> b!287112 (= res!149072 (= (seekEntryOrOpen!0 (select (arr!6826 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!1986 #b00000000000000000000000000000000)))))

(assert (=> b!287112 (=> (not res!149072) (not e!181872))))

(declare-fun bm!25604 () Bool)

(assert (=> bm!25604 (= call!25607 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(assert (= (and d!65991 (not res!149071)) b!287110))

(assert (= (and b!287110 c!46577) b!287112))

(assert (= (and b!287110 (not c!46577)) b!287109))

(assert (= (and b!287112 res!149072) b!287111))

(assert (= (or b!287111 b!287109) bm!25604))

(assert (=> b!287110 m!301589))

(assert (=> b!287110 m!301589))

(declare-fun m!301629 () Bool)

(assert (=> b!287110 m!301629))

(assert (=> b!287112 m!301589))

(declare-fun m!301631 () Bool)

(assert (=> b!287112 m!301631))

(declare-fun m!301633 () Bool)

(assert (=> b!287112 m!301633))

(assert (=> b!287112 m!301589))

(declare-fun m!301635 () Bool)

(assert (=> b!287112 m!301635))

(declare-fun m!301637 () Bool)

(assert (=> bm!25604 m!301637))

(assert (=> b!286950 d!65991))

(declare-fun b!287161 () Bool)

(declare-fun e!181907 () Bool)

(declare-fun lt!141443 () SeekEntryResult!1986)

(assert (=> b!287161 (= e!181907 (bvsge (x!28301 lt!141443) #b01111111111111111111111111111110))))

(declare-fun b!287162 () Bool)

(assert (=> b!287162 (and (bvsge (index!10116 lt!141443) #b00000000000000000000000000000000) (bvslt (index!10116 lt!141443) (size!7178 a!3312)))))

(declare-fun e!181908 () Bool)

(assert (=> b!287162 (= e!181908 (= (select (arr!6826 a!3312) (index!10116 lt!141443)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!65995 () Bool)

(assert (=> d!65995 e!181907))

(declare-fun c!46594 () Bool)

(assert (=> d!65995 (= c!46594 (and (is-Intermediate!1986 lt!141443) (undefined!2798 lt!141443)))))

(declare-fun e!181906 () SeekEntryResult!1986)

(assert (=> d!65995 (= lt!141443 e!181906)))

(declare-fun c!46593 () Bool)

(assert (=> d!65995 (= c!46593 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!141442 () (_ BitVec 64))

(assert (=> d!65995 (= lt!141442 (select (arr!6826 a!3312) (toIndex!0 k!2524 mask!3809)))))

(assert (=> d!65995 (validMask!0 mask!3809)))

(assert (=> d!65995 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809) lt!141443)))

(declare-fun b!287163 () Bool)

(declare-fun e!181905 () SeekEntryResult!1986)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287163 (= e!181905 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2524 mask!3809) #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!287164 () Bool)

(assert (=> b!287164 (and (bvsge (index!10116 lt!141443) #b00000000000000000000000000000000) (bvslt (index!10116 lt!141443) (size!7178 a!3312)))))

(declare-fun res!149092 () Bool)

(assert (=> b!287164 (= res!149092 (= (select (arr!6826 a!3312) (index!10116 lt!141443)) k!2524))))

(assert (=> b!287164 (=> res!149092 e!181908)))

(declare-fun e!181909 () Bool)

(assert (=> b!287164 (= e!181909 e!181908)))

(declare-fun b!287165 () Bool)

(assert (=> b!287165 (= e!181906 (Intermediate!1986 true (toIndex!0 k!2524 mask!3809) #b00000000000000000000000000000000))))

(declare-fun b!287166 () Bool)

(assert (=> b!287166 (= e!181905 (Intermediate!1986 false (toIndex!0 k!2524 mask!3809) #b00000000000000000000000000000000))))

(declare-fun b!287167 () Bool)

(assert (=> b!287167 (and (bvsge (index!10116 lt!141443) #b00000000000000000000000000000000) (bvslt (index!10116 lt!141443) (size!7178 a!3312)))))

(declare-fun res!149091 () Bool)

(assert (=> b!287167 (= res!149091 (= (select (arr!6826 a!3312) (index!10116 lt!141443)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!287167 (=> res!149091 e!181908)))

(declare-fun b!287168 () Bool)

(assert (=> b!287168 (= e!181907 e!181909)))

(declare-fun res!149093 () Bool)

(assert (=> b!287168 (= res!149093 (and (is-Intermediate!1986 lt!141443) (not (undefined!2798 lt!141443)) (bvslt (x!28301 lt!141443) #b01111111111111111111111111111110) (bvsge (x!28301 lt!141443) #b00000000000000000000000000000000) (bvsge (x!28301 lt!141443) #b00000000000000000000000000000000)))))

(assert (=> b!287168 (=> (not res!149093) (not e!181909))))

(declare-fun b!287169 () Bool)

(assert (=> b!287169 (= e!181906 e!181905)))

(declare-fun c!46595 () Bool)

(assert (=> b!287169 (= c!46595 (or (= lt!141442 k!2524) (= (bvadd lt!141442 lt!141442) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!65995 c!46593) b!287165))

(assert (= (and d!65995 (not c!46593)) b!287169))

(assert (= (and b!287169 c!46595) b!287166))

(assert (= (and b!287169 (not c!46595)) b!287163))

(assert (= (and d!65995 c!46594) b!287161))

(assert (= (and d!65995 (not c!46594)) b!287168))

(assert (= (and b!287168 res!149093) b!287164))

(assert (= (and b!287164 (not res!149092)) b!287167))

