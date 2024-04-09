; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28522 () Bool)

(assert start!28522)

(declare-fun b!291701 () Bool)

(declare-fun res!152938 () Bool)

(declare-fun e!184582 () Bool)

(assert (=> b!291701 (=> (not res!152938) (not e!184582))))

(declare-datatypes ((array!14735 0))(
  ( (array!14736 (arr!6991 (Array (_ BitVec 32) (_ BitVec 64))) (size!7343 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14735)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14735 (_ BitVec 32)) Bool)

(assert (=> b!291701 (= res!152938 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!291702 () Bool)

(declare-fun res!152940 () Bool)

(declare-fun e!184583 () Bool)

(assert (=> b!291702 (=> (not res!152940) (not e!184583))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!291702 (= res!152940 (validKeyInArray!0 k!2524))))

(declare-fun e!184584 () Bool)

(declare-fun b!291703 () Bool)

(declare-fun lt!144382 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2151 0))(
  ( (MissingZero!2151 (index!10774 (_ BitVec 32))) (Found!2151 (index!10775 (_ BitVec 32))) (Intermediate!2151 (undefined!2963 Bool) (index!10776 (_ BitVec 32)) (x!28936 (_ BitVec 32))) (Undefined!2151) (MissingVacant!2151 (index!10777 (_ BitVec 32))) )
))
(declare-fun lt!144381 () SeekEntryResult!2151)

(assert (=> b!291703 (= e!184584 (not (or (not (= lt!144381 (Intermediate!2151 false (index!10776 lt!144381) (x!28936 lt!144381)))) (bvsgt #b00000000000000000000000000000000 (x!28936 lt!144381)) (and (bvsge lt!144382 #b00000000000000000000000000000000) (bvslt lt!144382 (size!7343 a!3312))))))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!291703 (= (index!10776 lt!144381) i!1256)))

(declare-fun b!291704 () Bool)

(declare-fun res!152941 () Bool)

(assert (=> b!291704 (=> (not res!152941) (not e!184583))))

(declare-fun arrayContainsKey!0 (array!14735 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!291704 (= res!152941 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!291705 () Bool)

(declare-fun res!152939 () Bool)

(assert (=> b!291705 (=> (not res!152939) (not e!184583))))

(assert (=> b!291705 (= res!152939 (and (= (size!7343 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7343 a!3312))))))

(declare-fun res!152937 () Bool)

(assert (=> start!28522 (=> (not res!152937) (not e!184583))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28522 (= res!152937 (validMask!0 mask!3809))))

(assert (=> start!28522 e!184583))

(assert (=> start!28522 true))

(declare-fun array_inv!4945 (array!14735) Bool)

(assert (=> start!28522 (array_inv!4945 a!3312)))

(declare-fun b!291706 () Bool)

(declare-fun e!184585 () Bool)

(assert (=> b!291706 (= e!184582 e!184585)))

(declare-fun res!152936 () Bool)

(assert (=> b!291706 (=> (not res!152936) (not e!184585))))

(declare-fun lt!144378 () Bool)

(declare-fun lt!144383 () SeekEntryResult!2151)

(assert (=> b!291706 (= res!152936 (and (not lt!144378) (= lt!144383 (MissingVacant!2151 i!1256))))))

(declare-fun lt!144380 () SeekEntryResult!2151)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14735 (_ BitVec 32)) SeekEntryResult!2151)

(assert (=> b!291706 (= lt!144380 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144382 k!2524 (array!14736 (store (arr!6991 a!3312) i!1256 k!2524) (size!7343 a!3312)) mask!3809))))

(assert (=> b!291706 (= lt!144381 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144382 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!291706 (= lt!144382 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!291707 () Bool)

(assert (=> b!291707 (= e!184585 e!184584)))

(declare-fun res!152942 () Bool)

(assert (=> b!291707 (=> (not res!152942) (not e!184584))))

(declare-fun lt!144379 () Bool)

(assert (=> b!291707 (= res!152942 (and (or lt!144379 (not (undefined!2963 lt!144381))) (not lt!144379) (= (select (arr!6991 a!3312) (index!10776 lt!144381)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!291707 (= lt!144379 (not (is-Intermediate!2151 lt!144381)))))

(declare-fun b!291708 () Bool)

(assert (=> b!291708 (= e!184583 e!184582)))

(declare-fun res!152943 () Bool)

(assert (=> b!291708 (=> (not res!152943) (not e!184582))))

(assert (=> b!291708 (= res!152943 (or lt!144378 (= lt!144383 (MissingVacant!2151 i!1256))))))

(assert (=> b!291708 (= lt!144378 (= lt!144383 (MissingZero!2151 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14735 (_ BitVec 32)) SeekEntryResult!2151)

(assert (=> b!291708 (= lt!144383 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(assert (= (and start!28522 res!152937) b!291705))

(assert (= (and b!291705 res!152939) b!291702))

(assert (= (and b!291702 res!152940) b!291704))

(assert (= (and b!291704 res!152941) b!291708))

(assert (= (and b!291708 res!152943) b!291701))

(assert (= (and b!291701 res!152938) b!291706))

(assert (= (and b!291706 res!152936) b!291707))

(assert (= (and b!291707 res!152942) b!291703))

(declare-fun m!305575 () Bool)

(assert (=> b!291702 m!305575))

(declare-fun m!305577 () Bool)

(assert (=> start!28522 m!305577))

(declare-fun m!305579 () Bool)

(assert (=> start!28522 m!305579))

(declare-fun m!305581 () Bool)

(assert (=> b!291706 m!305581))

(declare-fun m!305583 () Bool)

(assert (=> b!291706 m!305583))

(declare-fun m!305585 () Bool)

(assert (=> b!291706 m!305585))

(declare-fun m!305587 () Bool)

(assert (=> b!291706 m!305587))

(declare-fun m!305589 () Bool)

(assert (=> b!291708 m!305589))

(declare-fun m!305591 () Bool)

(assert (=> b!291707 m!305591))

(declare-fun m!305593 () Bool)

(assert (=> b!291701 m!305593))

(declare-fun m!305595 () Bool)

(assert (=> b!291704 m!305595))

(push 1)

(assert (not b!291702))

(assert (not start!28522))

(assert (not b!291706))

(assert (not b!291708))

(assert (not b!291701))

(assert (not b!291704))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!66333 () Bool)

(declare-fun res!153002 () Bool)

(declare-fun e!184629 () Bool)

(assert (=> d!66333 (=> res!153002 e!184629)))

(assert (=> d!66333 (= res!153002 (= (select (arr!6991 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!66333 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!184629)))

(declare-fun b!291773 () Bool)

(declare-fun e!184630 () Bool)

(assert (=> b!291773 (= e!184629 e!184630)))

(declare-fun res!153003 () Bool)

(assert (=> b!291773 (=> (not res!153003) (not e!184630))))

(assert (=> b!291773 (= res!153003 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7343 a!3312)))))

(declare-fun b!291774 () Bool)

(assert (=> b!291774 (= e!184630 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66333 (not res!153002)) b!291773))

(assert (= (and b!291773 res!153003) b!291774))

(declare-fun m!305641 () Bool)

(assert (=> d!66333 m!305641))

(declare-fun m!305645 () Bool)

(assert (=> b!291774 m!305645))

(assert (=> b!291704 d!66333))

(declare-fun b!291801 () Bool)

(declare-fun e!184648 () SeekEntryResult!2151)

(assert (=> b!291801 (= e!184648 Undefined!2151)))

(declare-fun b!291802 () Bool)

(declare-fun e!184647 () SeekEntryResult!2151)

(declare-fun lt!144440 () SeekEntryResult!2151)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14735 (_ BitVec 32)) SeekEntryResult!2151)

(assert (=> b!291802 (= e!184647 (seekKeyOrZeroReturnVacant!0 (x!28936 lt!144440) (index!10776 lt!144440) (index!10776 lt!144440) k!2524 a!3312 mask!3809))))

(declare-fun d!66335 () Bool)

(declare-fun lt!144439 () SeekEntryResult!2151)

(assert (=> d!66335 (and (or (is-Undefined!2151 lt!144439) (not (is-Found!2151 lt!144439)) (and (bvsge (index!10775 lt!144439) #b00000000000000000000000000000000) (bvslt (index!10775 lt!144439) (size!7343 a!3312)))) (or (is-Undefined!2151 lt!144439) (is-Found!2151 lt!144439) (not (is-MissingZero!2151 lt!144439)) (and (bvsge (index!10774 lt!144439) #b00000000000000000000000000000000) (bvslt (index!10774 lt!144439) (size!7343 a!3312)))) (or (is-Undefined!2151 lt!144439) (is-Found!2151 lt!144439) (is-MissingZero!2151 lt!144439) (not (is-MissingVacant!2151 lt!144439)) (and (bvsge (index!10777 lt!144439) #b00000000000000000000000000000000) (bvslt (index!10777 lt!144439) (size!7343 a!3312)))) (or (is-Undefined!2151 lt!144439) (ite (is-Found!2151 lt!144439) (= (select (arr!6991 a!3312) (index!10775 lt!144439)) k!2524) (ite (is-MissingZero!2151 lt!144439) (= (select (arr!6991 a!3312) (index!10774 lt!144439)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2151 lt!144439) (= (select (arr!6991 a!3312) (index!10777 lt!144439)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!66335 (= lt!144439 e!184648)))

(declare-fun c!46961 () Bool)

(assert (=> d!66335 (= c!46961 (and (is-Intermediate!2151 lt!144440) (undefined!2963 lt!144440)))))

(assert (=> d!66335 (= lt!144440 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!66335 (validMask!0 mask!3809)))

(assert (=> d!66335 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!144439)))

(declare-fun b!291803 () Bool)

(assert (=> b!291803 (= e!184647 (MissingZero!2151 (index!10776 lt!144440)))))

(declare-fun b!291804 () Bool)

(declare-fun e!184649 () SeekEntryResult!2151)

(assert (=> b!291804 (= e!184649 (Found!2151 (index!10776 lt!144440)))))

(declare-fun b!291805 () Bool)

(declare-fun c!46962 () Bool)

(declare-fun lt!144441 () (_ BitVec 64))

(assert (=> b!291805 (= c!46962 (= lt!144441 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!291805 (= e!184649 e!184647)))

(declare-fun b!291806 () Bool)

(assert (=> b!291806 (= e!184648 e!184649)))

(assert (=> b!291806 (= lt!144441 (select (arr!6991 a!3312) (index!10776 lt!144440)))))

(declare-fun c!46960 () Bool)

(assert (=> b!291806 (= c!46960 (= lt!144441 k!2524))))

(assert (= (and d!66335 c!46961) b!291801))

(assert (= (and d!66335 (not c!46961)) b!291806))

(assert (= (and b!291806 c!46960) b!291804))

(assert (= (and b!291806 (not c!46960)) b!291805))

(assert (= (and b!291805 c!46962) b!291803))

(assert (= (and b!291805 (not c!46962)) b!291802))

(declare-fun m!305661 () Bool)

(assert (=> b!291802 m!305661))

(declare-fun m!305663 () Bool)

(assert (=> d!66335 m!305663))

(assert (=> d!66335 m!305577))

(declare-fun m!305665 () Bool)

(assert (=> d!66335 m!305665))

(declare-fun m!305667 () Bool)

(assert (=> d!66335 m!305667))

(assert (=> d!66335 m!305587))

(declare-fun m!305669 () Bool)

(assert (=> d!66335 m!305669))

(assert (=> d!66335 m!305587))

(declare-fun m!305671 () Bool)

(assert (=> b!291806 m!305671))

(assert (=> b!291708 d!66335))

(declare-fun d!66345 () Bool)

(assert (=> d!66345 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!28522 d!66345))

(declare-fun d!66353 () Bool)

(assert (=> d!66353 (= (array_inv!4945 a!3312) (bvsge (size!7343 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!28522 d!66353))

(declare-fun d!66355 () Bool)

(assert (=> d!66355 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!291702 d!66355))

(declare-fun b!291879 () Bool)

(declare-fun e!184698 () Bool)

(declare-fun call!25658 () Bool)

(assert (=> b!291879 (= e!184698 call!25658)))

(declare-fun d!66357 () Bool)

(declare-fun res!153040 () Bool)

(declare-fun e!184696 () Bool)

(assert (=> d!66357 (=> res!153040 e!184696)))

(assert (=> d!66357 (= res!153040 (bvsge #b00000000000000000000000000000000 (size!7343 a!3312)))))

(assert (=> d!66357 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!184696)))

(declare-fun b!291880 () Bool)

(assert (=> b!291880 (= e!184696 e!184698)))

(declare-fun c!46985 () Bool)

(assert (=> b!291880 (= c!46985 (validKeyInArray!0 (select (arr!6991 a!3312) #b00000000000000000000000000000000)))))

(declare-fun bm!25655 () Bool)

(assert (=> bm!25655 (= call!25658 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!291881 () Bool)

(declare-fun e!184697 () Bool)

(assert (=> b!291881 (= e!184698 e!184697)))

(declare-fun lt!144477 () (_ BitVec 64))

(assert (=> b!291881 (= lt!144477 (select (arr!6991 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9141 0))(
  ( (Unit!9142) )
))
(declare-fun lt!144478 () Unit!9141)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14735 (_ BitVec 64) (_ BitVec 32)) Unit!9141)

(assert (=> b!291881 (= lt!144478 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!144477 #b00000000000000000000000000000000))))

(assert (=> b!291881 (arrayContainsKey!0 a!3312 lt!144477 #b00000000000000000000000000000000)))

(declare-fun lt!144476 () Unit!9141)

(assert (=> b!291881 (= lt!144476 lt!144478)))

(declare-fun res!153039 () Bool)

(assert (=> b!291881 (= res!153039 (= (seekEntryOrOpen!0 (select (arr!6991 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2151 #b00000000000000000000000000000000)))))

(assert (=> b!291881 (=> (not res!153039) (not e!184697))))

(declare-fun b!291882 () Bool)

(assert (=> b!291882 (= e!184697 call!25658)))

(assert (= (and d!66357 (not res!153040)) b!291880))

(assert (= (and b!291880 c!46985) b!291881))

(assert (= (and b!291880 (not c!46985)) b!291879))

(assert (= (and b!291881 res!153039) b!291882))

(assert (= (or b!291882 b!291879) bm!25655))

(assert (=> b!291880 m!305641))

(assert (=> b!291880 m!305641))

(declare-fun m!305711 () Bool)

(assert (=> b!291880 m!305711))

(declare-fun m!305713 () Bool)

(assert (=> bm!25655 m!305713))

(assert (=> b!291881 m!305641))

(declare-fun m!305715 () Bool)

(assert (=> b!291881 m!305715))

(declare-fun m!305717 () Bool)

(assert (=> b!291881 m!305717))

(assert (=> b!291881 m!305641))

(declare-fun m!305719 () Bool)

(assert (=> b!291881 m!305719))

(assert (=> b!291701 d!66357))

(declare-fun d!66365 () Bool)

(declare-fun e!184733 () Bool)

(assert (=> d!66365 e!184733))

(declare-fun c!47005 () Bool)

(declare-fun lt!144492 () SeekEntryResult!2151)

(assert (=> d!66365 (= c!47005 (and (is-Intermediate!2151 lt!144492) (undefined!2963 lt!144492)))))

(declare-fun e!184729 () SeekEntryResult!2151)

(assert (=> d!66365 (= lt!144492 e!184729)))

(declare-fun c!47004 () Bool)

(assert (=> d!66365 (= c!47004 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!144491 () (_ BitVec 64))

(assert (=> d!66365 (= lt!144491 (select (arr!6991 (array!14736 (store (arr!6991 a!3312) i!1256 k!2524) (size!7343 a!3312))) lt!144382))))

(assert (=> d!66365 (validMask!0 mask!3809)))

(assert (=> d!66365 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144382 k!2524 (array!14736 (store (arr!6991 a!3312) i!1256 k!2524) (size!7343 a!3312)) mask!3809) lt!144492)))

(declare-fun b!291937 () Bool)

(declare-fun e!184730 () Bool)

(assert (=> b!291937 (= e!184733 e!184730)))

(declare-fun res!153060 () Bool)

(assert (=> b!291937 (= res!153060 (and (is-Intermediate!2151 lt!144492) (not (undefined!2963 lt!144492)) (bvslt (x!28936 lt!144492) #b01111111111111111111111111111110) (bvsge (x!28936 lt!144492) #b00000000000000000000000000000000) (bvsge (x!28936 lt!144492) #b00000000000000000000000000000000)))))

(assert (=> b!291937 (=> (not res!153060) (not e!184730))))

(declare-fun b!291938 () Bool)

(declare-fun e!184732 () SeekEntryResult!2151)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!291938 (= e!184732 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!144382 #b00000000000000000000000000000000 mask!3809) k!2524 (array!14736 (store (arr!6991 a!3312) i!1256 k!2524) (size!7343 a!3312)) mask!3809))))

(declare-fun b!291939 () Bool)

(assert (=> b!291939 (= e!184732 (Intermediate!2151 false lt!144382 #b00000000000000000000000000000000))))

(declare-fun b!291940 () Bool)

(assert (=> b!291940 (= e!184729 e!184732)))

(declare-fun c!47006 () Bool)

(assert (=> b!291940 (= c!47006 (or (= lt!144491 k!2524) (= (bvadd lt!144491 lt!144491) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!291941 () Bool)

(assert (=> b!291941 (and (bvsge (index!10776 lt!144492) #b00000000000000000000000000000000) (bvslt (index!10776 lt!144492) (size!7343 (array!14736 (store (arr!6991 a!3312) i!1256 k!2524) (size!7343 a!3312)))))))

(declare-fun res!153062 () Bool)

(assert (=> b!291941 (= res!153062 (= (select (arr!6991 (array!14736 (store (arr!6991 a!3312) i!1256 k!2524) (size!7343 a!3312))) (index!10776 lt!144492)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!184731 () Bool)

(assert (=> b!291941 (=> res!153062 e!184731)))

(declare-fun b!291942 () Bool)

(assert (=> b!291942 (= e!184733 (bvsge (x!28936 lt!144492) #b01111111111111111111111111111110))))

(declare-fun b!291943 () Bool)

(assert (=> b!291943 (and (bvsge (index!10776 lt!144492) #b00000000000000000000000000000000) (bvslt (index!10776 lt!144492) (size!7343 (array!14736 (store (arr!6991 a!3312) i!1256 k!2524) (size!7343 a!3312)))))))

(assert (=> b!291943 (= e!184731 (= (select (arr!6991 (array!14736 (store (arr!6991 a!3312) i!1256 k!2524) (size!7343 a!3312))) (index!10776 lt!144492)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!291944 () Bool)

(assert (=> b!291944 (= e!184729 (Intermediate!2151 true lt!144382 #b00000000000000000000000000000000))))

(declare-fun b!291945 () Bool)

(assert (=> b!291945 (and (bvsge (index!10776 lt!144492) #b00000000000000000000000000000000) (bvslt (index!10776 lt!144492) (size!7343 (array!14736 (store (arr!6991 a!3312) i!1256 k!2524) (size!7343 a!3312)))))))

(declare-fun res!153061 () Bool)

(assert (=> b!291945 (= res!153061 (= (select (arr!6991 (array!14736 (store (arr!6991 a!3312) i!1256 k!2524) (size!7343 a!3312))) (index!10776 lt!144492)) k!2524))))

(assert (=> b!291945 (=> res!153061 e!184731)))

(assert (=> b!291945 (= e!184730 e!184731)))

(assert (= (and d!66365 c!47004) b!291944))

(assert (= (and d!66365 (not c!47004)) b!291940))

(assert (= (and b!291940 c!47006) b!291939))

(assert (= (and b!291940 (not c!47006)) b!291938))

(assert (= (and d!66365 c!47005) b!291942))

(assert (= (and d!66365 (not c!47005)) b!291937))

(assert (= (and b!291937 res!153060) b!291945))

(assert (= (and b!291945 (not res!153061)) b!291941))

(assert (= (and b!291941 (not res!153062)) b!291943))

(declare-fun m!305735 () Bool)

(assert (=> b!291941 m!305735))

(assert (=> b!291945 m!305735))

(assert (=> b!291943 m!305735))

(declare-fun m!305737 () Bool)

(assert (=> b!291938 m!305737))

(assert (=> b!291938 m!305737))

(declare-fun m!305739 () Bool)

(assert (=> b!291938 m!305739))

(declare-fun m!305741 () Bool)

(assert (=> d!66365 m!305741))

(assert (=> d!66365 m!305577))

(assert (=> b!291706 d!66365))

(declare-fun d!66375 () Bool)

(declare-fun e!184738 () Bool)

(assert (=> d!66375 e!184738))

(declare-fun c!47008 () Bool)

(declare-fun lt!144494 () SeekEntryResult!2151)

(assert (=> d!66375 (= c!47008 (and (is-Intermediate!2151 lt!144494) (undefined!2963 lt!144494)))))

(declare-fun e!184734 () SeekEntryResult!2151)

(assert (=> d!66375 (= lt!144494 e!184734)))

(declare-fun c!47007 () Bool)

(assert (=> d!66375 (= c!47007 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!144493 () (_ BitVec 64))

(assert (=> d!66375 (= lt!144493 (select (arr!6991 a!3312) lt!144382))))

(assert (=> d!66375 (validMask!0 mask!3809)))

(assert (=> d!66375 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144382 k!2524 a!3312 mask!3809) lt!144494)))

(declare-fun b!291946 () Bool)

(declare-fun e!184735 () Bool)

(assert (=> b!291946 (= e!184738 e!184735)))

(declare-fun res!153063 () Bool)

(assert (=> b!291946 (= res!153063 (and (is-Intermediate!2151 lt!144494) (not (undefined!2963 lt!144494)) (bvslt (x!28936 lt!144494) #b01111111111111111111111111111110) (bvsge (x!28936 lt!144494) #b00000000000000000000000000000000) (bvsge (x!28936 lt!144494) #b00000000000000000000000000000000)))))

(assert (=> b!291946 (=> (not res!153063) (not e!184735))))

(declare-fun e!184737 () SeekEntryResult!2151)

(declare-fun b!291947 () Bool)

(assert (=> b!291947 (= e!184737 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!144382 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!291948 () Bool)

(assert (=> b!291948 (= e!184737 (Intermediate!2151 false lt!144382 #b00000000000000000000000000000000))))

(declare-fun b!291949 () Bool)

(assert (=> b!291949 (= e!184734 e!184737)))

(declare-fun c!47009 () Bool)

(assert (=> b!291949 (= c!47009 (or (= lt!144493 k!2524) (= (bvadd lt!144493 lt!144493) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!291950 () Bool)

(assert (=> b!291950 (and (bvsge (index!10776 lt!144494) #b00000000000000000000000000000000) (bvslt (index!10776 lt!144494) (size!7343 a!3312)))))

(declare-fun res!153065 () Bool)

(assert (=> b!291950 (= res!153065 (= (select (arr!6991 a!3312) (index!10776 lt!144494)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!184736 () Bool)

(assert (=> b!291950 (=> res!153065 e!184736)))

(declare-fun b!291951 () Bool)

(assert (=> b!291951 (= e!184738 (bvsge (x!28936 lt!144494) #b01111111111111111111111111111110))))

(declare-fun b!291952 () Bool)

(assert (=> b!291952 (and (bvsge (index!10776 lt!144494) #b00000000000000000000000000000000) (bvslt (index!10776 lt!144494) (size!7343 a!3312)))))

(assert (=> b!291952 (= e!184736 (= (select (arr!6991 a!3312) (index!10776 lt!144494)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!291953 () Bool)

(assert (=> b!291953 (= e!184734 (Intermediate!2151 true lt!144382 #b00000000000000000000000000000000))))

(declare-fun b!291954 () Bool)

(assert (=> b!291954 (and (bvsge (index!10776 lt!144494) #b00000000000000000000000000000000) (bvslt (index!10776 lt!144494) (size!7343 a!3312)))))

(declare-fun res!153064 () Bool)

(assert (=> b!291954 (= res!153064 (= (select (arr!6991 a!3312) (index!10776 lt!144494)) k!2524))))

(assert (=> b!291954 (=> res!153064 e!184736)))

(assert (=> b!291954 (= e!184735 e!184736)))

(assert (= (and d!66375 c!47007) b!291953))

(assert (= (and d!66375 (not c!47007)) b!291949))

(assert (= (and b!291949 c!47009) b!291948))

(assert (= (and b!291949 (not c!47009)) b!291947))

(assert (= (and d!66375 c!47008) b!291951))

(assert (= (and d!66375 (not c!47008)) b!291946))

(assert (= (and b!291946 res!153063) b!291954))

(assert (= (and b!291954 (not res!153064)) b!291950))

(assert (= (and b!291950 (not res!153065)) b!291952))

(declare-fun m!305743 () Bool)

(assert (=> b!291950 m!305743))

(assert (=> b!291954 m!305743))

(assert (=> b!291952 m!305743))

(assert (=> b!291947 m!305737))

(assert (=> b!291947 m!305737))

(declare-fun m!305745 () Bool)

(assert (=> b!291947 m!305745))

(declare-fun m!305747 () Bool)

(assert (=> d!66375 m!305747))

(assert (=> d!66375 m!305577))

(assert (=> b!291706 d!66375))

(declare-fun d!66377 () Bool)

(declare-fun lt!144506 () (_ BitVec 32))

(declare-fun lt!144505 () (_ BitVec 32))

(assert (=> d!66377 (= lt!144506 (bvmul (bvxor lt!144505 (bvlshr lt!144505 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66377 (= lt!144505 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66377 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!153066 (let ((h!5287 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!28944 (bvmul (bvxor h!5287 (bvlshr h!5287 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!28944 (bvlshr x!28944 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!153066 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!153066 #b00000000000000000000000000000000))))))

(assert (=> d!66377 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!144506 (bvlshr lt!144506 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!291706 d!66377))

(push 1)

(assert (not d!66335))

(assert (not d!66365))

(assert (not bm!25655))

(assert (not b!291881))

(assert (not b!291938))

(assert (not d!66375))

(assert (not b!291774))

(assert (not b!291880))

(assert (not b!291947))

(assert (not b!291802))

(check-sat)

(pop 1)

(push 1)

(check-sat)

