; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27890 () Bool)

(assert start!27890)

(declare-fun b!286658 () Bool)

(declare-fun res!148778 () Bool)

(declare-fun e!181618 () Bool)

(assert (=> b!286658 (=> (not res!148778) (not e!181618))))

(declare-datatypes ((array!14367 0))(
  ( (array!14368 (arr!6816 (Array (_ BitVec 32) (_ BitVec 64))) (size!7168 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14367)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14367 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286658 (= res!148778 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!286659 () Bool)

(declare-fun e!181617 () Bool)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun lt!141214 () (_ BitVec 32))

(assert (=> b!286659 (= e!181617 (and (bvsge mask!3809 #b00000000000000000000000000000000) (or (bvslt lt!141214 #b00000000000000000000000000000000) (bvsge lt!141214 (bvadd #b00000000000000000000000000000001 mask!3809)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!286659 (= lt!141214 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!286660 () Bool)

(declare-fun res!148775 () Bool)

(assert (=> b!286660 (=> (not res!148775) (not e!181618))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286660 (= res!148775 (and (= (size!7168 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7168 a!3312))))))

(declare-fun b!286661 () Bool)

(declare-fun res!148777 () Bool)

(assert (=> b!286661 (=> (not res!148777) (not e!181617))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14367 (_ BitVec 32)) Bool)

(assert (=> b!286661 (= res!148777 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!286662 () Bool)

(assert (=> b!286662 (= e!181618 e!181617)))

(declare-fun res!148776 () Bool)

(assert (=> b!286662 (=> (not res!148776) (not e!181617))))

(declare-datatypes ((SeekEntryResult!1976 0))(
  ( (MissingZero!1976 (index!10074 (_ BitVec 32))) (Found!1976 (index!10075 (_ BitVec 32))) (Intermediate!1976 (undefined!2788 Bool) (index!10076 (_ BitVec 32)) (x!28256 (_ BitVec 32))) (Undefined!1976) (MissingVacant!1976 (index!10077 (_ BitVec 32))) )
))
(declare-fun lt!141215 () SeekEntryResult!1976)

(assert (=> b!286662 (= res!148776 (or (= lt!141215 (MissingZero!1976 i!1256)) (= lt!141215 (MissingVacant!1976 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14367 (_ BitVec 32)) SeekEntryResult!1976)

(assert (=> b!286662 (= lt!141215 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!286657 () Bool)

(declare-fun res!148774 () Bool)

(assert (=> b!286657 (=> (not res!148774) (not e!181618))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286657 (= res!148774 (validKeyInArray!0 k!2524))))

(declare-fun res!148779 () Bool)

(assert (=> start!27890 (=> (not res!148779) (not e!181618))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27890 (= res!148779 (validMask!0 mask!3809))))

(assert (=> start!27890 e!181618))

(assert (=> start!27890 true))

(declare-fun array_inv!4770 (array!14367) Bool)

(assert (=> start!27890 (array_inv!4770 a!3312)))

(assert (= (and start!27890 res!148779) b!286660))

(assert (= (and b!286660 res!148775) b!286657))

(assert (= (and b!286657 res!148774) b!286658))

(assert (= (and b!286658 res!148778) b!286662))

(assert (= (and b!286662 res!148776) b!286661))

(assert (= (and b!286661 res!148777) b!286659))

(declare-fun m!301313 () Bool)

(assert (=> start!27890 m!301313))

(declare-fun m!301315 () Bool)

(assert (=> start!27890 m!301315))

(declare-fun m!301317 () Bool)

(assert (=> b!286658 m!301317))

(declare-fun m!301319 () Bool)

(assert (=> b!286661 m!301319))

(declare-fun m!301321 () Bool)

(assert (=> b!286657 m!301321))

(declare-fun m!301323 () Bool)

(assert (=> b!286662 m!301323))

(declare-fun m!301325 () Bool)

(assert (=> b!286659 m!301325))

(push 1)

(assert (not b!286662))

(assert (not b!286659))

(assert (not b!286657))

(assert (not b!286661))

(assert (not b!286658))

(assert (not start!27890))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!65919 () Bool)

(declare-fun res!148797 () Bool)

(declare-fun e!181640 () Bool)

(assert (=> d!65919 (=> res!148797 e!181640)))

(assert (=> d!65919 (= res!148797 (bvsge #b00000000000000000000000000000000 (size!7168 a!3312)))))

(assert (=> d!65919 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!181640)))

(declare-fun b!286689 () Bool)

(declare-fun e!181641 () Bool)

(declare-fun e!181642 () Bool)

(assert (=> b!286689 (= e!181641 e!181642)))

(declare-fun lt!141232 () (_ BitVec 64))

(assert (=> b!286689 (= lt!141232 (select (arr!6816 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9055 0))(
  ( (Unit!9056) )
))
(declare-fun lt!141231 () Unit!9055)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14367 (_ BitVec 64) (_ BitVec 32)) Unit!9055)

(assert (=> b!286689 (= lt!141231 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!141232 #b00000000000000000000000000000000))))

(assert (=> b!286689 (arrayContainsKey!0 a!3312 lt!141232 #b00000000000000000000000000000000)))

(declare-fun lt!141233 () Unit!9055)

(assert (=> b!286689 (= lt!141233 lt!141231)))

(declare-fun res!148796 () Bool)

(assert (=> b!286689 (= res!148796 (= (seekEntryOrOpen!0 (select (arr!6816 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!1976 #b00000000000000000000000000000000)))))

(assert (=> b!286689 (=> (not res!148796) (not e!181642))))

(declare-fun b!286690 () Bool)

(declare-fun call!25601 () Bool)

(assert (=> b!286690 (= e!181642 call!25601)))

(declare-fun bm!25598 () Bool)

(assert (=> bm!25598 (= call!25601 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!286691 () Bool)

(assert (=> b!286691 (= e!181640 e!181641)))

(declare-fun c!46502 () Bool)

(assert (=> b!286691 (= c!46502 (validKeyInArray!0 (select (arr!6816 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!286692 () Bool)

(assert (=> b!286692 (= e!181641 call!25601)))

(assert (= (and d!65919 (not res!148797)) b!286691))

(assert (= (and b!286691 c!46502) b!286689))

(assert (= (and b!286691 (not c!46502)) b!286692))

(assert (= (and b!286689 res!148796) b!286690))

(assert (= (or b!286690 b!286692) bm!25598))

(declare-fun m!301341 () Bool)

(assert (=> b!286689 m!301341))

(declare-fun m!301343 () Bool)

(assert (=> b!286689 m!301343))

(declare-fun m!301345 () Bool)

(assert (=> b!286689 m!301345))

(assert (=> b!286689 m!301341))

(declare-fun m!301347 () Bool)

(assert (=> b!286689 m!301347))

(declare-fun m!301349 () Bool)

(assert (=> bm!25598 m!301349))

(assert (=> b!286691 m!301341))

(assert (=> b!286691 m!301341))

(declare-fun m!301351 () Bool)

(assert (=> b!286691 m!301351))

(assert (=> b!286661 d!65919))

(declare-fun b!286723 () Bool)

(declare-fun e!181658 () SeekEntryResult!1976)

(declare-fun lt!141257 () SeekEntryResult!1976)

(assert (=> b!286723 (= e!181658 (MissingZero!1976 (index!10076 lt!141257)))))

(declare-fun d!65927 () Bool)

(declare-fun lt!141256 () SeekEntryResult!1976)

(assert (=> d!65927 (and (or (is-Undefined!1976 lt!141256) (not (is-Found!1976 lt!141256)) (and (bvsge (index!10075 lt!141256) #b00000000000000000000000000000000) (bvslt (index!10075 lt!141256) (size!7168 a!3312)))) (or (is-Undefined!1976 lt!141256) (is-Found!1976 lt!141256) (not (is-MissingZero!1976 lt!141256)) (and (bvsge (index!10074 lt!141256) #b00000000000000000000000000000000) (bvslt (index!10074 lt!141256) (size!7168 a!3312)))) (or (is-Undefined!1976 lt!141256) (is-Found!1976 lt!141256) (is-MissingZero!1976 lt!141256) (not (is-MissingVacant!1976 lt!141256)) (and (bvsge (index!10077 lt!141256) #b00000000000000000000000000000000) (bvslt (index!10077 lt!141256) (size!7168 a!3312)))) (or (is-Undefined!1976 lt!141256) (ite (is-Found!1976 lt!141256) (= (select (arr!6816 a!3312) (index!10075 lt!141256)) k!2524) (ite (is-MissingZero!1976 lt!141256) (= (select (arr!6816 a!3312) (index!10074 lt!141256)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1976 lt!141256) (= (select (arr!6816 a!3312) (index!10077 lt!141256)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!181660 () SeekEntryResult!1976)

(assert (=> d!65927 (= lt!141256 e!181660)))

(declare-fun c!46520 () Bool)

(assert (=> d!65927 (= c!46520 (and (is-Intermediate!1976 lt!141257) (undefined!2788 lt!141257)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14367 (_ BitVec 32)) SeekEntryResult!1976)

(assert (=> d!65927 (= lt!141257 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!65927 (validMask!0 mask!3809)))

(assert (=> d!65927 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!141256)))

(declare-fun b!286724 () Bool)

(declare-fun c!46518 () Bool)

(declare-fun lt!141255 () (_ BitVec 64))

(assert (=> b!286724 (= c!46518 (= lt!141255 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!181659 () SeekEntryResult!1976)

(assert (=> b!286724 (= e!181659 e!181658)))

(declare-fun b!286725 () Bool)

(assert (=> b!286725 (= e!181660 Undefined!1976)))

(declare-fun b!286726 () Bool)

(assert (=> b!286726 (= e!181660 e!181659)))

(assert (=> b!286726 (= lt!141255 (select (arr!6816 a!3312) (index!10076 lt!141257)))))

(declare-fun c!46519 () Bool)

(assert (=> b!286726 (= c!46519 (= lt!141255 k!2524))))

(declare-fun b!286727 () Bool)

(assert (=> b!286727 (= e!181659 (Found!1976 (index!10076 lt!141257)))))

(declare-fun b!286728 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14367 (_ BitVec 32)) SeekEntryResult!1976)

(assert (=> b!286728 (= e!181658 (seekKeyOrZeroReturnVacant!0 (x!28256 lt!141257) (index!10076 lt!141257) (index!10076 lt!141257) k!2524 a!3312 mask!3809))))

(assert (= (and d!65927 c!46520) b!286725))

(assert (= (and d!65927 (not c!46520)) b!286726))

(assert (= (and b!286726 c!46519) b!286727))

(assert (= (and b!286726 (not c!46519)) b!286724))

(assert (= (and b!286724 c!46518) b!286723))

(assert (= (and b!286724 (not c!46518)) b!286728))

(declare-fun m!301365 () Bool)

(assert (=> d!65927 m!301365))

(assert (=> d!65927 m!301313))

(declare-fun m!301367 () Bool)

(assert (=> d!65927 m!301367))

(assert (=> d!65927 m!301325))

(assert (=> d!65927 m!301325))

(declare-fun m!301369 () Bool)

(assert (=> d!65927 m!301369))

(declare-fun m!301371 () Bool)

(assert (=> d!65927 m!301371))

(declare-fun m!301373 () Bool)

(assert (=> b!286726 m!301373))

(declare-fun m!301375 () Bool)

(assert (=> b!286728 m!301375))

(assert (=> b!286662 d!65927))

(declare-fun d!65939 () Bool)

(declare-fun lt!141275 () (_ BitVec 32))

(declare-fun lt!141274 () (_ BitVec 32))

(assert (=> d!65939 (= lt!141275 (bvmul (bvxor lt!141274 (bvlshr lt!141274 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!65939 (= lt!141274 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!65939 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!148799 (let ((h!5268 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!28258 (bvmul (bvxor h!5268 (bvlshr h!5268 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!28258 (bvlshr x!28258 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!148799 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!148799 #b00000000000000000000000000000000))))))

(assert (=> d!65939 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!141275 (bvlshr lt!141275 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!286659 d!65939))

(declare-fun d!65941 () Bool)

(assert (=> d!65941 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!27890 d!65941))

(declare-fun d!65949 () Bool)

(assert (=> d!65949 (= (array_inv!4770 a!3312) (bvsge (size!7168 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!27890 d!65949))

(declare-fun d!65951 () Bool)

(assert (=> d!65951 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!286657 d!65951))

(declare-fun d!65953 () Bool)

(declare-fun res!148817 () Bool)

(declare-fun e!181689 () Bool)

(assert (=> d!65953 (=> res!148817 e!181689)))

(assert (=> d!65953 (= res!148817 (= (select (arr!6816 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!65953 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!181689)))

(declare-fun b!286769 () Bool)

(declare-fun e!181690 () Bool)

(assert (=> b!286769 (= e!181689 e!181690)))

(declare-fun res!148818 () Bool)

(assert (=> b!286769 (=> (not res!148818) (not e!181690))))

(assert (=> b!286769 (= res!148818 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7168 a!3312)))))

(declare-fun b!286770 () Bool)

(assert (=> b!286770 (= e!181690 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65953 (not res!148817)) b!286769))

(assert (= (and b!286769 res!148818) b!286770))

(assert (=> d!65953 m!301341))

(declare-fun m!301403 () Bool)

(assert (=> b!286770 m!301403))

(assert (=> b!286658 d!65953))

(push 1)

(assert (not d!65927))

(assert (not bm!25598))

(assert (not b!286770))

(assert (not b!286691))

(assert (not b!286689))

(assert (not b!286728))

(check-sat)

(pop 1)

(push 1)

(check-sat)

