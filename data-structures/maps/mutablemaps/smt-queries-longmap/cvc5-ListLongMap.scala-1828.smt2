; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33030 () Bool)

(assert start!33030)

(declare-datatypes ((array!16832 0))(
  ( (array!16833 (arr!7960 (Array (_ BitVec 32) (_ BitVec 64))) (size!8312 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16832)

(declare-datatypes ((SeekEntryResult!3102 0))(
  ( (MissingZero!3102 (index!14584 (_ BitVec 32))) (Found!3102 (index!14585 (_ BitVec 32))) (Intermediate!3102 (undefined!3914 Bool) (index!14586 (_ BitVec 32)) (x!32816 (_ BitVec 32))) (Undefined!3102) (MissingVacant!3102 (index!14587 (_ BitVec 32))) )
))
(declare-fun lt!158002 () SeekEntryResult!3102)

(declare-fun b!328706 () Bool)

(declare-fun lt!158003 () SeekEntryResult!3102)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun e!201991 () Bool)

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!328706 (= e!201991 (and (= lt!158003 lt!158002) (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7960 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (or (= (select (arr!7960 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7960 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!158003 (Intermediate!3102 false index!1840 resX!58)))))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16832 (_ BitVec 32)) SeekEntryResult!3102)

(assert (=> b!328706 (= lt!158003 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777))))

(declare-fun b!328707 () Bool)

(declare-fun res!181190 () Bool)

(declare-fun e!201989 () Bool)

(assert (=> b!328707 (=> (not res!181190) (not e!201989))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16832 (_ BitVec 32)) Bool)

(assert (=> b!328707 (= res!181190 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!328708 () Bool)

(declare-fun res!181195 () Bool)

(assert (=> b!328708 (=> (not res!181195) (not e!201989))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!328708 (= res!181195 (validKeyInArray!0 k!2497))))

(declare-fun b!328709 () Bool)

(declare-fun res!181194 () Bool)

(assert (=> b!328709 (=> (not res!181194) (not e!201989))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16832 (_ BitVec 32)) SeekEntryResult!3102)

(assert (=> b!328709 (= res!181194 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3102 i!1250)))))

(declare-fun b!328710 () Bool)

(declare-fun res!181192 () Bool)

(assert (=> b!328710 (=> (not res!181192) (not e!201991))))

(assert (=> b!328710 (= res!181192 (and (= (select (arr!7960 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8312 a!3305))))))

(declare-fun b!328711 () Bool)

(declare-fun res!181191 () Bool)

(assert (=> b!328711 (=> (not res!181191) (not e!201989))))

(assert (=> b!328711 (= res!181191 (and (= (size!8312 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8312 a!3305))))))

(declare-fun b!328712 () Bool)

(declare-fun res!181197 () Bool)

(assert (=> b!328712 (=> (not res!181197) (not e!201989))))

(declare-fun arrayContainsKey!0 (array!16832 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!328712 (= res!181197 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun res!181193 () Bool)

(assert (=> start!33030 (=> (not res!181193) (not e!201989))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33030 (= res!181193 (validMask!0 mask!3777))))

(assert (=> start!33030 e!201989))

(declare-fun array_inv!5914 (array!16832) Bool)

(assert (=> start!33030 (array_inv!5914 a!3305)))

(assert (=> start!33030 true))

(declare-fun b!328713 () Bool)

(assert (=> b!328713 (= e!201989 e!201991)))

(declare-fun res!181196 () Bool)

(assert (=> b!328713 (=> (not res!181196) (not e!201991))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!328713 (= res!181196 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158002))))

(assert (=> b!328713 (= lt!158002 (Intermediate!3102 false resIndex!58 resX!58))))

(assert (= (and start!33030 res!181193) b!328711))

(assert (= (and b!328711 res!181191) b!328708))

(assert (= (and b!328708 res!181195) b!328712))

(assert (= (and b!328712 res!181197) b!328709))

(assert (= (and b!328709 res!181194) b!328707))

(assert (= (and b!328707 res!181190) b!328713))

(assert (= (and b!328713 res!181196) b!328710))

(assert (= (and b!328710 res!181192) b!328706))

(declare-fun m!334585 () Bool)

(assert (=> b!328712 m!334585))

(declare-fun m!334587 () Bool)

(assert (=> b!328709 m!334587))

(declare-fun m!334589 () Bool)

(assert (=> b!328707 m!334589))

(declare-fun m!334591 () Bool)

(assert (=> b!328710 m!334591))

(declare-fun m!334593 () Bool)

(assert (=> b!328713 m!334593))

(assert (=> b!328713 m!334593))

(declare-fun m!334595 () Bool)

(assert (=> b!328713 m!334595))

(declare-fun m!334597 () Bool)

(assert (=> start!33030 m!334597))

(declare-fun m!334599 () Bool)

(assert (=> start!33030 m!334599))

(declare-fun m!334601 () Bool)

(assert (=> b!328708 m!334601))

(declare-fun m!334603 () Bool)

(assert (=> b!328706 m!334603))

(declare-fun m!334605 () Bool)

(assert (=> b!328706 m!334605))

(push 1)

(assert (not b!328712))

(assert (not b!328706))

(assert (not b!328707))

(assert (not b!328709))

(assert (not b!328713))

(assert (not start!33030))

(assert (not b!328708))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!328798 () Bool)

(declare-fun e!202031 () SeekEntryResult!3102)

(assert (=> b!328798 (= e!202031 (Intermediate!3102 true index!1840 x!1490))))

(declare-fun b!328799 () Bool)

(declare-fun lt!158025 () SeekEntryResult!3102)

(assert (=> b!328799 (and (bvsge (index!14586 lt!158025) #b00000000000000000000000000000000) (bvslt (index!14586 lt!158025) (size!8312 a!3305)))))

(declare-fun res!181259 () Bool)

(assert (=> b!328799 (= res!181259 (= (select (arr!7960 a!3305) (index!14586 lt!158025)) k!2497))))

(declare-fun e!202033 () Bool)

(assert (=> b!328799 (=> res!181259 e!202033)))

(declare-fun e!202034 () Bool)

(assert (=> b!328799 (= e!202034 e!202033)))

(declare-fun b!328800 () Bool)

(assert (=> b!328800 (and (bvsge (index!14586 lt!158025) #b00000000000000000000000000000000) (bvslt (index!14586 lt!158025) (size!8312 a!3305)))))

(declare-fun res!181258 () Bool)

(assert (=> b!328800 (= res!181258 (= (select (arr!7960 a!3305) (index!14586 lt!158025)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!328800 (=> res!181258 e!202033)))

(declare-fun b!328801 () Bool)

(declare-fun e!202032 () Bool)

(assert (=> b!328801 (= e!202032 (bvsge (x!32816 lt!158025) #b01111111111111111111111111111110))))

(declare-fun b!328802 () Bool)

(assert (=> b!328802 (and (bvsge (index!14586 lt!158025) #b00000000000000000000000000000000) (bvslt (index!14586 lt!158025) (size!8312 a!3305)))))

(assert (=> b!328802 (= e!202033 (= (select (arr!7960 a!3305) (index!14586 lt!158025)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!328803 () Bool)

(declare-fun e!202030 () SeekEntryResult!3102)

(assert (=> b!328803 (= e!202030 (Intermediate!3102 false index!1840 x!1490))))

(declare-fun d!69963 () Bool)

(assert (=> d!69963 e!202032))

(declare-fun c!51409 () Bool)

(assert (=> d!69963 (= c!51409 (and (is-Intermediate!3102 lt!158025) (undefined!3914 lt!158025)))))

(assert (=> d!69963 (= lt!158025 e!202031)))

(declare-fun c!51410 () Bool)

(assert (=> d!69963 (= c!51410 (bvsge x!1490 #b01111111111111111111111111111110))))

(declare-fun lt!158024 () (_ BitVec 64))

(assert (=> d!69963 (= lt!158024 (select (arr!7960 a!3305) index!1840))))

(assert (=> d!69963 (validMask!0 mask!3777)))

(assert (=> d!69963 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!158025)))

(declare-fun b!328804 () Bool)

(assert (=> b!328804 (= e!202031 e!202030)))

(declare-fun c!51408 () Bool)

(assert (=> b!328804 (= c!51408 (or (= lt!158024 k!2497) (= (bvadd lt!158024 lt!158024) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!328805 () Bool)

(assert (=> b!328805 (= e!202032 e!202034)))

(declare-fun res!181260 () Bool)

(assert (=> b!328805 (= res!181260 (and (is-Intermediate!3102 lt!158025) (not (undefined!3914 lt!158025)) (bvslt (x!32816 lt!158025) #b01111111111111111111111111111110) (bvsge (x!32816 lt!158025) #b00000000000000000000000000000000) (bvsge (x!32816 lt!158025) x!1490)))))

(assert (=> b!328805 (=> (not res!181260) (not e!202034))))

(declare-fun b!328806 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!328806 (= e!202030 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777))))

(assert (= (and d!69963 c!51410) b!328798))

(assert (= (and d!69963 (not c!51410)) b!328804))

(assert (= (and b!328804 c!51408) b!328803))

(assert (= (and b!328804 (not c!51408)) b!328806))

(assert (= (and d!69963 c!51409) b!328801))

(assert (= (and d!69963 (not c!51409)) b!328805))

(assert (= (and b!328805 res!181260) b!328799))

(assert (= (and b!328799 (not res!181259)) b!328800))

(assert (= (and b!328800 (not res!181258)) b!328802))

(declare-fun m!334651 () Bool)

(assert (=> b!328806 m!334651))

(assert (=> b!328806 m!334651))

(declare-fun m!334653 () Bool)

(assert (=> b!328806 m!334653))

(assert (=> d!69963 m!334603))

(assert (=> d!69963 m!334597))

(declare-fun m!334655 () Bool)

(assert (=> b!328799 m!334655))

(assert (=> b!328802 m!334655))

(assert (=> b!328800 m!334655))

(assert (=> b!328706 d!69963))

(declare-fun d!69973 () Bool)

(assert (=> d!69973 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!33030 d!69973))

(declare-fun d!69985 () Bool)

(assert (=> d!69985 (= (array_inv!5914 a!3305) (bvsge (size!8312 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!33030 d!69985))

(declare-fun b!328899 () Bool)

(declare-fun e!202094 () SeekEntryResult!3102)

(declare-fun e!202092 () SeekEntryResult!3102)

(assert (=> b!328899 (= e!202094 e!202092)))

(declare-fun lt!158073 () (_ BitVec 64))

(declare-fun lt!158072 () SeekEntryResult!3102)

(assert (=> b!328899 (= lt!158073 (select (arr!7960 a!3305) (index!14586 lt!158072)))))

(declare-fun c!51441 () Bool)

(assert (=> b!328899 (= c!51441 (= lt!158073 k!2497))))

(declare-fun b!328900 () Bool)

(assert (=> b!328900 (= e!202094 Undefined!3102)))

(declare-fun b!328901 () Bool)

(declare-fun c!51442 () Bool)

(assert (=> b!328901 (= c!51442 (= lt!158073 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!202093 () SeekEntryResult!3102)

(assert (=> b!328901 (= e!202092 e!202093)))

(declare-fun b!328902 () Bool)

(assert (=> b!328902 (= e!202093 (MissingZero!3102 (index!14586 lt!158072)))))

(declare-fun b!328903 () Bool)

(assert (=> b!328903 (= e!202092 (Found!3102 (index!14586 lt!158072)))))

(declare-fun b!328904 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16832 (_ BitVec 32)) SeekEntryResult!3102)

(assert (=> b!328904 (= e!202093 (seekKeyOrZeroReturnVacant!0 (x!32816 lt!158072) (index!14586 lt!158072) (index!14586 lt!158072) k!2497 a!3305 mask!3777))))

(declare-fun d!69987 () Bool)

(declare-fun lt!158071 () SeekEntryResult!3102)

(assert (=> d!69987 (and (or (is-Undefined!3102 lt!158071) (not (is-Found!3102 lt!158071)) (and (bvsge (index!14585 lt!158071) #b00000000000000000000000000000000) (bvslt (index!14585 lt!158071) (size!8312 a!3305)))) (or (is-Undefined!3102 lt!158071) (is-Found!3102 lt!158071) (not (is-MissingZero!3102 lt!158071)) (and (bvsge (index!14584 lt!158071) #b00000000000000000000000000000000) (bvslt (index!14584 lt!158071) (size!8312 a!3305)))) (or (is-Undefined!3102 lt!158071) (is-Found!3102 lt!158071) (is-MissingZero!3102 lt!158071) (not (is-MissingVacant!3102 lt!158071)) (and (bvsge (index!14587 lt!158071) #b00000000000000000000000000000000) (bvslt (index!14587 lt!158071) (size!8312 a!3305)))) (or (is-Undefined!3102 lt!158071) (ite (is-Found!3102 lt!158071) (= (select (arr!7960 a!3305) (index!14585 lt!158071)) k!2497) (ite (is-MissingZero!3102 lt!158071) (= (select (arr!7960 a!3305) (index!14584 lt!158071)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3102 lt!158071) (= (select (arr!7960 a!3305) (index!14587 lt!158071)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!69987 (= lt!158071 e!202094)))

(declare-fun c!51440 () Bool)

(assert (=> d!69987 (= c!51440 (and (is-Intermediate!3102 lt!158072) (undefined!3914 lt!158072)))))

(assert (=> d!69987 (= lt!158072 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!69987 (validMask!0 mask!3777)))

(assert (=> d!69987 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!158071)))

(assert (= (and d!69987 c!51440) b!328900))

(assert (= (and d!69987 (not c!51440)) b!328899))

(assert (= (and b!328899 c!51441) b!328903))

(assert (= (and b!328899 (not c!51441)) b!328901))

(assert (= (and b!328901 c!51442) b!328902))

(assert (= (and b!328901 (not c!51442)) b!328904))

(declare-fun m!334699 () Bool)

(assert (=> b!328899 m!334699))

(declare-fun m!334701 () Bool)

(assert (=> b!328904 m!334701))

(assert (=> d!69987 m!334593))

(declare-fun m!334703 () Bool)

(assert (=> d!69987 m!334703))

(declare-fun m!334705 () Bool)

(assert (=> d!69987 m!334705))

(assert (=> d!69987 m!334593))

(assert (=> d!69987 m!334595))

(assert (=> d!69987 m!334597))

(declare-fun m!334707 () Bool)

(assert (=> d!69987 m!334707))

(assert (=> b!328709 d!69987))

(declare-fun d!70001 () Bool)

(assert (=> d!70001 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!328708 d!70001))

(declare-fun b!328905 () Bool)

(declare-fun e!202096 () SeekEntryResult!3102)

(assert (=> b!328905 (= e!202096 (Intermediate!3102 true (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!328906 () Bool)

(declare-fun lt!158075 () SeekEntryResult!3102)

(assert (=> b!328906 (and (bvsge (index!14586 lt!158075) #b00000000000000000000000000000000) (bvslt (index!14586 lt!158075) (size!8312 a!3305)))))

(declare-fun res!181298 () Bool)

(assert (=> b!328906 (= res!181298 (= (select (arr!7960 a!3305) (index!14586 lt!158075)) k!2497))))

(declare-fun e!202098 () Bool)

(assert (=> b!328906 (=> res!181298 e!202098)))

(declare-fun e!202099 () Bool)

(assert (=> b!328906 (= e!202099 e!202098)))

(declare-fun b!328907 () Bool)

(assert (=> b!328907 (and (bvsge (index!14586 lt!158075) #b00000000000000000000000000000000) (bvslt (index!14586 lt!158075) (size!8312 a!3305)))))

(declare-fun res!181297 () Bool)

(assert (=> b!328907 (= res!181297 (= (select (arr!7960 a!3305) (index!14586 lt!158075)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!328907 (=> res!181297 e!202098)))

(declare-fun b!328908 () Bool)

(declare-fun e!202097 () Bool)

(assert (=> b!328908 (= e!202097 (bvsge (x!32816 lt!158075) #b01111111111111111111111111111110))))

(declare-fun b!328909 () Bool)

(assert (=> b!328909 (and (bvsge (index!14586 lt!158075) #b00000000000000000000000000000000) (bvslt (index!14586 lt!158075) (size!8312 a!3305)))))

(assert (=> b!328909 (= e!202098 (= (select (arr!7960 a!3305) (index!14586 lt!158075)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!328910 () Bool)

(declare-fun e!202095 () SeekEntryResult!3102)

(assert (=> b!328910 (= e!202095 (Intermediate!3102 false (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun d!70003 () Bool)

(assert (=> d!70003 e!202097))

(declare-fun c!51444 () Bool)

(assert (=> d!70003 (= c!51444 (and (is-Intermediate!3102 lt!158075) (undefined!3914 lt!158075)))))

(assert (=> d!70003 (= lt!158075 e!202096)))

(declare-fun c!51445 () Bool)

(assert (=> d!70003 (= c!51445 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!158074 () (_ BitVec 64))

(assert (=> d!70003 (= lt!158074 (select (arr!7960 a!3305) (toIndex!0 k!2497 mask!3777)))))

(assert (=> d!70003 (validMask!0 mask!3777)))

(assert (=> d!70003 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158075)))

(declare-fun b!328911 () Bool)

(assert (=> b!328911 (= e!202096 e!202095)))

(declare-fun c!51443 () Bool)

(assert (=> b!328911 (= c!51443 (or (= lt!158074 k!2497) (= (bvadd lt!158074 lt!158074) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!328912 () Bool)

(assert (=> b!328912 (= e!202097 e!202099)))

(declare-fun res!181299 () Bool)

(assert (=> b!328912 (= res!181299 (and (is-Intermediate!3102 lt!158075) (not (undefined!3914 lt!158075)) (bvslt (x!32816 lt!158075) #b01111111111111111111111111111110) (bvsge (x!32816 lt!158075) #b00000000000000000000000000000000) (bvsge (x!32816 lt!158075) #b00000000000000000000000000000000)))))

(assert (=> b!328912 (=> (not res!181299) (not e!202099))))

(declare-fun b!328913 () Bool)

(assert (=> b!328913 (= e!202095 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k!2497 a!3305 mask!3777))))

(assert (= (and d!70003 c!51445) b!328905))

(assert (= (and d!70003 (not c!51445)) b!328911))

(assert (= (and b!328911 c!51443) b!328910))

(assert (= (and b!328911 (not c!51443)) b!328913))

(assert (= (and d!70003 c!51444) b!328908))

(assert (= (and d!70003 (not c!51444)) b!328912))

(assert (= (and b!328912 res!181299) b!328906))

(assert (= (and b!328906 (not res!181298)) b!328907))

(assert (= (and b!328907 (not res!181297)) b!328909))

(assert (=> b!328913 m!334593))

(declare-fun m!334709 () Bool)

(assert (=> b!328913 m!334709))

(assert (=> b!328913 m!334709))

(declare-fun m!334711 () Bool)

(assert (=> b!328913 m!334711))

(assert (=> d!70003 m!334593))

(declare-fun m!334713 () Bool)

(assert (=> d!70003 m!334713))

(assert (=> d!70003 m!334597))

(declare-fun m!334717 () Bool)

(assert (=> b!328906 m!334717))

(assert (=> b!328909 m!334717))

(assert (=> b!328907 m!334717))

(assert (=> b!328713 d!70003))

(declare-fun d!70005 () Bool)

(declare-fun lt!158090 () (_ BitVec 32))

(declare-fun lt!158089 () (_ BitVec 32))

(assert (=> d!70005 (= lt!158090 (bvmul (bvxor lt!158089 (bvlshr lt!158089 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!70005 (= lt!158089 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!70005 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!181302 (let ((h!5434 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32824 (bvmul (bvxor h!5434 (bvlshr h!5434 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32824 (bvlshr x!32824 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!181302 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!181302 #b00000000000000000000000000000000))))))

(assert (=> d!70005 (= (toIndex!0 k!2497 mask!3777) (bvand (bvxor lt!158090 (bvlshr lt!158090 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!328713 d!70005))

(declare-fun d!70011 () Bool)

(declare-fun res!181313 () Bool)

(declare-fun e!202122 () Bool)

(assert (=> d!70011 (=> res!181313 e!202122)))

(assert (=> d!70011 (= res!181313 (= (select (arr!7960 a!3305) #b00000000000000000000000000000000) k!2497))))

(assert (=> d!70011 (= (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000) e!202122)))

(declare-fun b!328946 () Bool)

(declare-fun e!202123 () Bool)

(assert (=> b!328946 (= e!202122 e!202123)))

(declare-fun res!181314 () Bool)

(assert (=> b!328946 (=> (not res!181314) (not e!202123))))

(assert (=> b!328946 (= res!181314 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8312 a!3305)))))

(declare-fun b!328947 () Bool)

(assert (=> b!328947 (= e!202123 (arrayContainsKey!0 a!3305 k!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70011 (not res!181313)) b!328946))

(assert (= (and b!328946 res!181314) b!328947))

(declare-fun m!334739 () Bool)

(assert (=> d!70011 m!334739))

(declare-fun m!334743 () Bool)

(assert (=> b!328947 m!334743))

(assert (=> b!328712 d!70011))

(declare-fun b!328956 () Bool)

(declare-fun e!202130 () Bool)

(declare-fun e!202131 () Bool)

(assert (=> b!328956 (= e!202130 e!202131)))

(declare-fun c!51458 () Bool)

(assert (=> b!328956 (= c!51458 (validKeyInArray!0 (select (arr!7960 a!3305) #b00000000000000000000000000000000)))))

(declare-fun d!70013 () Bool)

(declare-fun res!181320 () Bool)

(assert (=> d!70013 (=> res!181320 e!202130)))

(assert (=> d!70013 (= res!181320 (bvsge #b00000000000000000000000000000000 (size!8312 a!3305)))))

(assert (=> d!70013 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!202130)))

(declare-fun b!328957 () Bool)

(declare-fun e!202132 () Bool)

(assert (=> b!328957 (= e!202131 e!202132)))

(declare-fun lt!158102 () (_ BitVec 64))

(assert (=> b!328957 (= lt!158102 (select (arr!7960 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10195 0))(
  ( (Unit!10196) )
))
(declare-fun lt!158101 () Unit!10195)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16832 (_ BitVec 64) (_ BitVec 32)) Unit!10195)

(assert (=> b!328957 (= lt!158101 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!158102 #b00000000000000000000000000000000))))

(assert (=> b!328957 (arrayContainsKey!0 a!3305 lt!158102 #b00000000000000000000000000000000)))

(declare-fun lt!158100 () Unit!10195)

(assert (=> b!328957 (= lt!158100 lt!158101)))

(declare-fun res!181319 () Bool)

(assert (=> b!328957 (= res!181319 (= (seekEntryOrOpen!0 (select (arr!7960 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3102 #b00000000000000000000000000000000)))))

(assert (=> b!328957 (=> (not res!181319) (not e!202132))))

(declare-fun b!328958 () Bool)

(declare-fun call!26138 () Bool)

(assert (=> b!328958 (= e!202131 call!26138)))

(declare-fun bm!26135 () Bool)

(assert (=> bm!26135 (= call!26138 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun b!328959 () Bool)

(assert (=> b!328959 (= e!202132 call!26138)))

(assert (= (and d!70013 (not res!181320)) b!328956))

(assert (= (and b!328956 c!51458) b!328957))

(assert (= (and b!328956 (not c!51458)) b!328958))

(assert (= (and b!328957 res!181319) b!328959))

(assert (= (or b!328959 b!328958) bm!26135))

(assert (=> b!328956 m!334739))

(assert (=> b!328956 m!334739))

(declare-fun m!334745 () Bool)

(assert (=> b!328956 m!334745))

(assert (=> b!328957 m!334739))

(declare-fun m!334747 () Bool)

(assert (=> b!328957 m!334747))

(declare-fun m!334749 () Bool)

(assert (=> b!328957 m!334749))

(assert (=> b!328957 m!334739))

(declare-fun m!334751 () Bool)

(assert (=> b!328957 m!334751))

(declare-fun m!334753 () Bool)

(assert (=> bm!26135 m!334753))

(assert (=> b!328707 d!70013))

(push 1)

(assert (not d!69963))

(assert (not b!328904))

(assert (not d!69987))

(assert (not b!328956))

(assert (not b!328957))

(assert (not d!70003))

(assert (not b!328913))

(assert (not b!328806))

(assert (not b!328947))

(assert (not bm!26135))

(check-sat)

(pop 1)

(push 1)

(check-sat)

