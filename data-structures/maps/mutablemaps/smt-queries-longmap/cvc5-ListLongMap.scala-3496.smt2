; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48508 () Bool)

(assert start!48508)

(declare-fun b!532484 () Bool)

(declare-fun res!327980 () Bool)

(declare-fun e!309986 () Bool)

(assert (=> b!532484 (=> (not res!327980) (not e!309986))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33727 0))(
  ( (array!33728 (arr!16200 (Array (_ BitVec 32) (_ BitVec 64))) (size!16564 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33727)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!532484 (= res!327980 (and (= (size!16564 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16564 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16564 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!532485 () Bool)

(declare-fun res!327987 () Bool)

(declare-fun e!309987 () Bool)

(assert (=> b!532485 (=> (not res!327987) (not e!309987))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33727 (_ BitVec 32)) Bool)

(assert (=> b!532485 (= res!327987 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!532486 () Bool)

(declare-fun res!327985 () Bool)

(assert (=> b!532486 (=> (not res!327985) (not e!309987))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!532486 (= res!327985 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16564 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16564 a!3154)) (= (select (arr!16200 a!3154) resIndex!32) (select (arr!16200 a!3154) j!147))))))

(declare-fun b!532487 () Bool)

(declare-fun res!327989 () Bool)

(assert (=> b!532487 (=> (not res!327989) (not e!309986))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!532487 (= res!327989 (validKeyInArray!0 k!1998))))

(declare-fun b!532488 () Bool)

(declare-fun res!327984 () Bool)

(assert (=> b!532488 (=> (not res!327984) (not e!309986))))

(declare-fun arrayContainsKey!0 (array!33727 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!532488 (= res!327984 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!532489 () Bool)

(assert (=> b!532489 (= e!309986 e!309987)))

(declare-fun res!327986 () Bool)

(assert (=> b!532489 (=> (not res!327986) (not e!309987))))

(declare-datatypes ((SeekEntryResult!4665 0))(
  ( (MissingZero!4665 (index!20884 (_ BitVec 32))) (Found!4665 (index!20885 (_ BitVec 32))) (Intermediate!4665 (undefined!5477 Bool) (index!20886 (_ BitVec 32)) (x!49885 (_ BitVec 32))) (Undefined!4665) (MissingVacant!4665 (index!20887 (_ BitVec 32))) )
))
(declare-fun lt!245222 () SeekEntryResult!4665)

(assert (=> b!532489 (= res!327986 (or (= lt!245222 (MissingZero!4665 i!1153)) (= lt!245222 (MissingVacant!4665 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33727 (_ BitVec 32)) SeekEntryResult!4665)

(assert (=> b!532489 (= lt!245222 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!532490 () Bool)

(declare-fun res!327981 () Bool)

(assert (=> b!532490 (=> (not res!327981) (not e!309986))))

(assert (=> b!532490 (= res!327981 (validKeyInArray!0 (select (arr!16200 a!3154) j!147)))))

(declare-fun res!327982 () Bool)

(assert (=> start!48508 (=> (not res!327982) (not e!309986))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48508 (= res!327982 (validMask!0 mask!3216))))

(assert (=> start!48508 e!309986))

(assert (=> start!48508 true))

(declare-fun array_inv!11974 (array!33727) Bool)

(assert (=> start!48508 (array_inv!11974 a!3154)))

(declare-fun b!532491 () Bool)

(declare-fun res!327988 () Bool)

(assert (=> b!532491 (=> (not res!327988) (not e!309987))))

(declare-datatypes ((List!10372 0))(
  ( (Nil!10369) (Cons!10368 (h!11308 (_ BitVec 64)) (t!16608 List!10372)) )
))
(declare-fun arrayNoDuplicates!0 (array!33727 (_ BitVec 32) List!10372) Bool)

(assert (=> b!532491 (= res!327988 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10369))))

(declare-fun b!532492 () Bool)

(declare-fun lt!245221 () (_ BitVec 32))

(assert (=> b!532492 (= e!309987 (and (bvsge mask!3216 #b00000000000000000000000000000000) (or (bvslt lt!245221 #b00000000000000000000000000000000) (bvsge lt!245221 (bvadd #b00000000000000000000000000000001 mask!3216)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!532492 (= lt!245221 (toIndex!0 (select (arr!16200 a!3154) j!147) mask!3216))))

(declare-fun b!532493 () Bool)

(declare-fun res!327983 () Bool)

(assert (=> b!532493 (=> (not res!327983) (not e!309987))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33727 (_ BitVec 32)) SeekEntryResult!4665)

(assert (=> b!532493 (= res!327983 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16200 a!3154) j!147) a!3154 mask!3216) (Intermediate!4665 false resIndex!32 resX!32)))))

(assert (= (and start!48508 res!327982) b!532484))

(assert (= (and b!532484 res!327980) b!532490))

(assert (= (and b!532490 res!327981) b!532487))

(assert (= (and b!532487 res!327989) b!532488))

(assert (= (and b!532488 res!327984) b!532489))

(assert (= (and b!532489 res!327986) b!532485))

(assert (= (and b!532485 res!327987) b!532491))

(assert (= (and b!532491 res!327988) b!532486))

(assert (= (and b!532486 res!327985) b!532493))

(assert (= (and b!532493 res!327983) b!532492))

(declare-fun m!512623 () Bool)

(assert (=> start!48508 m!512623))

(declare-fun m!512625 () Bool)

(assert (=> start!48508 m!512625))

(declare-fun m!512627 () Bool)

(assert (=> b!532488 m!512627))

(declare-fun m!512629 () Bool)

(assert (=> b!532487 m!512629))

(declare-fun m!512631 () Bool)

(assert (=> b!532485 m!512631))

(declare-fun m!512633 () Bool)

(assert (=> b!532493 m!512633))

(assert (=> b!532493 m!512633))

(declare-fun m!512635 () Bool)

(assert (=> b!532493 m!512635))

(assert (=> b!532490 m!512633))

(assert (=> b!532490 m!512633))

(declare-fun m!512637 () Bool)

(assert (=> b!532490 m!512637))

(declare-fun m!512639 () Bool)

(assert (=> b!532491 m!512639))

(assert (=> b!532492 m!512633))

(assert (=> b!532492 m!512633))

(declare-fun m!512641 () Bool)

(assert (=> b!532492 m!512641))

(declare-fun m!512643 () Bool)

(assert (=> b!532489 m!512643))

(declare-fun m!512645 () Bool)

(assert (=> b!532486 m!512645))

(assert (=> b!532486 m!512633))

(push 1)

(assert (not start!48508))

(assert (not b!532487))

(assert (not b!532492))

(assert (not b!532493))

(assert (not b!532488))

(assert (not b!532491))

(assert (not b!532490))

(assert (not b!532489))

(assert (not b!532485))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!532614 () Bool)

(declare-fun e!310042 () SeekEntryResult!4665)

(assert (=> b!532614 (= e!310042 Undefined!4665)))

(declare-fun d!81285 () Bool)

(declare-fun lt!245264 () SeekEntryResult!4665)

(assert (=> d!81285 (and (or (is-Undefined!4665 lt!245264) (not (is-Found!4665 lt!245264)) (and (bvsge (index!20885 lt!245264) #b00000000000000000000000000000000) (bvslt (index!20885 lt!245264) (size!16564 a!3154)))) (or (is-Undefined!4665 lt!245264) (is-Found!4665 lt!245264) (not (is-MissingZero!4665 lt!245264)) (and (bvsge (index!20884 lt!245264) #b00000000000000000000000000000000) (bvslt (index!20884 lt!245264) (size!16564 a!3154)))) (or (is-Undefined!4665 lt!245264) (is-Found!4665 lt!245264) (is-MissingZero!4665 lt!245264) (not (is-MissingVacant!4665 lt!245264)) (and (bvsge (index!20887 lt!245264) #b00000000000000000000000000000000) (bvslt (index!20887 lt!245264) (size!16564 a!3154)))) (or (is-Undefined!4665 lt!245264) (ite (is-Found!4665 lt!245264) (= (select (arr!16200 a!3154) (index!20885 lt!245264)) k!1998) (ite (is-MissingZero!4665 lt!245264) (= (select (arr!16200 a!3154) (index!20884 lt!245264)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4665 lt!245264) (= (select (arr!16200 a!3154) (index!20887 lt!245264)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!81285 (= lt!245264 e!310042)))

(declare-fun c!62588 () Bool)

(declare-fun lt!245263 () SeekEntryResult!4665)

(assert (=> d!81285 (= c!62588 (and (is-Intermediate!4665 lt!245263) (undefined!5477 lt!245263)))))

(assert (=> d!81285 (= lt!245263 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1998 mask!3216) k!1998 a!3154 mask!3216))))

(assert (=> d!81285 (validMask!0 mask!3216)))

(assert (=> d!81285 (= (seekEntryOrOpen!0 k!1998 a!3154 mask!3216) lt!245264)))

(declare-fun b!532615 () Bool)

(declare-fun e!310041 () SeekEntryResult!4665)

(assert (=> b!532615 (= e!310041 (Found!4665 (index!20886 lt!245263)))))

(declare-fun b!532616 () Bool)

(assert (=> b!532616 (= e!310042 e!310041)))

(declare-fun lt!245265 () (_ BitVec 64))

(assert (=> b!532616 (= lt!245265 (select (arr!16200 a!3154) (index!20886 lt!245263)))))

(declare-fun c!62587 () Bool)

(assert (=> b!532616 (= c!62587 (= lt!245265 k!1998))))

(declare-fun b!532617 () Bool)

(declare-fun c!62586 () Bool)

(assert (=> b!532617 (= c!62586 (= lt!245265 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!310043 () SeekEntryResult!4665)

(assert (=> b!532617 (= e!310041 e!310043)))

(declare-fun b!532618 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33727 (_ BitVec 32)) SeekEntryResult!4665)

(assert (=> b!532618 (= e!310043 (seekKeyOrZeroReturnVacant!0 (x!49885 lt!245263) (index!20886 lt!245263) (index!20886 lt!245263) k!1998 a!3154 mask!3216))))

(declare-fun b!532619 () Bool)

(assert (=> b!532619 (= e!310043 (MissingZero!4665 (index!20886 lt!245263)))))

(assert (= (and d!81285 c!62588) b!532614))

(assert (= (and d!81285 (not c!62588)) b!532616))

(assert (= (and b!532616 c!62587) b!532615))

(assert (= (and b!532616 (not c!62587)) b!532617))

(assert (= (and b!532617 c!62586) b!532619))

(assert (= (and b!532617 (not c!62586)) b!532618))

(assert (=> d!81285 m!512623))

(declare-fun m!512721 () Bool)

(assert (=> d!81285 m!512721))

(declare-fun m!512723 () Bool)

(assert (=> d!81285 m!512723))

(assert (=> d!81285 m!512721))

(declare-fun m!512725 () Bool)

(assert (=> d!81285 m!512725))

(declare-fun m!512727 () Bool)

(assert (=> d!81285 m!512727))

(declare-fun m!512729 () Bool)

(assert (=> d!81285 m!512729))

(declare-fun m!512731 () Bool)

(assert (=> b!532616 m!512731))

(declare-fun m!512733 () Bool)

(assert (=> b!532618 m!512733))

(assert (=> b!532489 d!81285))

(declare-fun d!81293 () Bool)

(assert (=> d!81293 (= (validKeyInArray!0 (select (arr!16200 a!3154) j!147)) (and (not (= (select (arr!16200 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16200 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!532490 d!81293))

(declare-fun b!532637 () Bool)

(declare-fun e!310056 () Bool)

(declare-fun e!310057 () Bool)

(assert (=> b!532637 (= e!310056 e!310057)))

(declare-fun lt!245276 () (_ BitVec 64))

(assert (=> b!532637 (= lt!245276 (select (arr!16200 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16814 0))(
  ( (Unit!16815) )
))
(declare-fun lt!245274 () Unit!16814)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33727 (_ BitVec 64) (_ BitVec 32)) Unit!16814)

(assert (=> b!532637 (= lt!245274 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!245276 #b00000000000000000000000000000000))))

(assert (=> b!532637 (arrayContainsKey!0 a!3154 lt!245276 #b00000000000000000000000000000000)))

(declare-fun lt!245275 () Unit!16814)

(assert (=> b!532637 (= lt!245275 lt!245274)))

(declare-fun res!328070 () Bool)

(assert (=> b!532637 (= res!328070 (= (seekEntryOrOpen!0 (select (arr!16200 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4665 #b00000000000000000000000000000000)))))

(assert (=> b!532637 (=> (not res!328070) (not e!310057))))

(declare-fun b!532638 () Bool)

(declare-fun call!31982 () Bool)

(assert (=> b!532638 (= e!310056 call!31982)))

(declare-fun b!532639 () Bool)

(declare-fun e!310055 () Bool)

(assert (=> b!532639 (= e!310055 e!310056)))

(declare-fun c!62594 () Bool)

(assert (=> b!532639 (= c!62594 (validKeyInArray!0 (select (arr!16200 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!532640 () Bool)

(assert (=> b!532640 (= e!310057 call!31982)))

(declare-fun d!81295 () Bool)

(declare-fun res!328069 () Bool)

(assert (=> d!81295 (=> res!328069 e!310055)))

(assert (=> d!81295 (= res!328069 (bvsge #b00000000000000000000000000000000 (size!16564 a!3154)))))

(assert (=> d!81295 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!310055)))

(declare-fun bm!31979 () Bool)

(assert (=> bm!31979 (= call!31982 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(assert (= (and d!81295 (not res!328069)) b!532639))

(assert (= (and b!532639 c!62594) b!532637))

(assert (= (and b!532639 (not c!62594)) b!532638))

(assert (= (and b!532637 res!328070) b!532640))

(assert (= (or b!532640 b!532638) bm!31979))

(declare-fun m!512743 () Bool)

(assert (=> b!532637 m!512743))

(declare-fun m!512745 () Bool)

(assert (=> b!532637 m!512745))

(declare-fun m!512747 () Bool)

(assert (=> b!532637 m!512747))

(assert (=> b!532637 m!512743))

(declare-fun m!512749 () Bool)

(assert (=> b!532637 m!512749))

(assert (=> b!532639 m!512743))

(assert (=> b!532639 m!512743))

(declare-fun m!512751 () Bool)

(assert (=> b!532639 m!512751))

(declare-fun m!512753 () Bool)

(assert (=> bm!31979 m!512753))

(assert (=> b!532485 d!81295))

(declare-fun bm!31982 () Bool)

(declare-fun call!31985 () Bool)

(declare-fun c!62601 () Bool)

(assert (=> bm!31982 (= call!31985 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!62601 (Cons!10368 (select (arr!16200 a!3154) #b00000000000000000000000000000000) Nil!10369) Nil!10369)))))

(declare-fun b!532659 () Bool)

(declare-fun e!310073 () Bool)

(assert (=> b!532659 (= e!310073 call!31985)))

(declare-fun b!532661 () Bool)

(declare-fun e!310072 () Bool)

(assert (=> b!532661 (= e!310072 e!310073)))

(assert (=> b!532661 (= c!62601 (validKeyInArray!0 (select (arr!16200 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!532662 () Bool)

(declare-fun e!310070 () Bool)

(declare-fun contains!2795 (List!10372 (_ BitVec 64)) Bool)

(assert (=> b!532662 (= e!310070 (contains!2795 Nil!10369 (select (arr!16200 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!532663 () Bool)

(declare-fun e!310071 () Bool)

(assert (=> b!532663 (= e!310071 e!310072)))

(declare-fun res!328078 () Bool)

(assert (=> b!532663 (=> (not res!328078) (not e!310072))))

(assert (=> b!532663 (= res!328078 (not e!310070))))

(declare-fun res!328077 () Bool)

(assert (=> b!532663 (=> (not res!328077) (not e!310070))))

(assert (=> b!532663 (= res!328077 (validKeyInArray!0 (select (arr!16200 a!3154) #b00000000000000000000000000000000)))))

(declare-fun d!81299 () Bool)

(declare-fun res!328079 () Bool)

(assert (=> d!81299 (=> res!328079 e!310071)))

(assert (=> d!81299 (= res!328079 (bvsge #b00000000000000000000000000000000 (size!16564 a!3154)))))

(assert (=> d!81299 (= (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10369) e!310071)))

(declare-fun b!532660 () Bool)

(assert (=> b!532660 (= e!310073 call!31985)))

(assert (= (and d!81299 (not res!328079)) b!532663))

(assert (= (and b!532663 res!328077) b!532662))

(assert (= (and b!532663 res!328078) b!532661))

(assert (= (and b!532661 c!62601) b!532660))

(assert (= (and b!532661 (not c!62601)) b!532659))

(assert (= (or b!532660 b!532659) bm!31982))

(assert (=> bm!31982 m!512743))

(declare-fun m!512755 () Bool)

(assert (=> bm!31982 m!512755))

(assert (=> b!532661 m!512743))

(assert (=> b!532661 m!512743))

(assert (=> b!532661 m!512751))

(assert (=> b!532662 m!512743))

(assert (=> b!532662 m!512743))

(declare-fun m!512757 () Bool)

(assert (=> b!532662 m!512757))

(assert (=> b!532663 m!512743))

(assert (=> b!532663 m!512743))

(assert (=> b!532663 m!512751))

(assert (=> b!532491 d!81299))

(declare-fun d!81301 () Bool)

(declare-fun lt!245295 () (_ BitVec 32))

(declare-fun lt!245294 () (_ BitVec 32))

(assert (=> d!81301 (= lt!245295 (bvmul (bvxor lt!245294 (bvlshr lt!245294 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!81301 (= lt!245294 ((_ extract 31 0) (bvand (bvxor (select (arr!16200 a!3154) j!147) (bvlshr (select (arr!16200 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!81301 (and (bvsge mask!3216 #b00000000000000000000000000000000) (let ((res!328080 (let ((h!11311 ((_ extract 31 0) (bvand (bvxor (select (arr!16200 a!3154) j!147) (bvlshr (select (arr!16200 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49890 (bvmul (bvxor h!11311 (bvlshr h!11311 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49890 (bvlshr x!49890 #b00000000000000000000000000001101)) mask!3216))))) (and (bvslt res!328080 (bvadd mask!3216 #b00000000000000000000000000000001)) (bvsge res!328080 #b00000000000000000000000000000000))))))

(assert (=> d!81301 (= (toIndex!0 (select (arr!16200 a!3154) j!147) mask!3216) (bvand (bvxor lt!245295 (bvlshr lt!245295 #b00000000000000000000000000001101)) mask!3216))))

(assert (=> b!532492 d!81301))

(declare-fun d!81303 () Bool)

(assert (=> d!81303 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!48508 d!81303))

(declare-fun d!81317 () Bool)

(assert (=> d!81317 (= (array_inv!11974 a!3154) (bvsge (size!16564 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!48508 d!81317))

(declare-fun d!81319 () Bool)

(assert (=> d!81319 (= (validKeyInArray!0 k!1998) (and (not (= k!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!532487 d!81319))

(declare-fun d!81321 () Bool)

(declare-fun res!328109 () Bool)

(declare-fun e!310116 () Bool)

(assert (=> d!81321 (=> res!328109 e!310116)))

(assert (=> d!81321 (= res!328109 (= (select (arr!16200 a!3154) #b00000000000000000000000000000000) k!1998))))

(assert (=> d!81321 (= (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000) e!310116)))

(declare-fun b!532726 () Bool)

(declare-fun e!310117 () Bool)

(assert (=> b!532726 (= e!310116 e!310117)))

(declare-fun res!328110 () Bool)

(assert (=> b!532726 (=> (not res!328110) (not e!310117))))

(assert (=> b!532726 (= res!328110 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16564 a!3154)))))

(declare-fun b!532727 () Bool)

(assert (=> b!532727 (= e!310117 (arrayContainsKey!0 a!3154 k!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81321 (not res!328109)) b!532726))

(assert (= (and b!532726 res!328110) b!532727))

(assert (=> d!81321 m!512743))

(declare-fun m!512791 () Bool)

(assert (=> b!532727 m!512791))

(assert (=> b!532488 d!81321))

(declare-fun b!532779 () Bool)

(declare-fun e!310155 () SeekEntryResult!4665)

(assert (=> b!532779 (= e!310155 (Intermediate!4665 true index!1177 x!1030))))

(declare-fun b!532780 () Bool)

(declare-fun e!310159 () Bool)

(declare-fun e!310157 () Bool)

(assert (=> b!532780 (= e!310159 e!310157)))

(declare-fun res!328141 () Bool)

(declare-fun lt!245318 () SeekEntryResult!4665)

(assert (=> b!532780 (= res!328141 (and (is-Intermediate!4665 lt!245318) (not (undefined!5477 lt!245318)) (bvslt (x!49885 lt!245318) #b01111111111111111111111111111110) (bvsge (x!49885 lt!245318) #b00000000000000000000000000000000) (bvsge (x!49885 lt!245318) x!1030)))))

(assert (=> b!532780 (=> (not res!328141) (not e!310157))))

(declare-fun b!532781 () Bool)

(assert (=> b!532781 (and (bvsge (index!20886 lt!245318) #b00000000000000000000000000000000) (bvslt (index!20886 lt!245318) (size!16564 a!3154)))))

(declare-fun res!328140 () Bool)

(assert (=> b!532781 (= res!328140 (= (select (arr!16200 a!3154) (index!20886 lt!245318)) (select (arr!16200 a!3154) j!147)))))

(declare-fun e!310156 () Bool)

(assert (=> b!532781 (=> res!328140 e!310156)))

(assert (=> b!532781 (= e!310157 e!310156)))

(declare-fun b!532782 () Bool)

(assert (=> b!532782 (and (bvsge (index!20886 lt!245318) #b00000000000000000000000000000000) (bvslt (index!20886 lt!245318) (size!16564 a!3154)))))

(declare-fun res!328142 () Bool)

(assert (=> b!532782 (= res!328142 (= (select (arr!16200 a!3154) (index!20886 lt!245318)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!532782 (=> res!328142 e!310156)))

(declare-fun b!532783 () Bool)

(declare-fun e!310158 () SeekEntryResult!4665)

(assert (=> b!532783 (= e!310155 e!310158)))

(declare-fun lt!245317 () (_ BitVec 64))

(declare-fun c!62633 () Bool)

(assert (=> b!532783 (= c!62633 (or (= lt!245317 (select (arr!16200 a!3154) j!147)) (= (bvadd lt!245317 lt!245317) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!81325 () Bool)

(assert (=> d!81325 e!310159))

(declare-fun c!62632 () Bool)

(assert (=> d!81325 (= c!62632 (and (is-Intermediate!4665 lt!245318) (undefined!5477 lt!245318)))))

(assert (=> d!81325 (= lt!245318 e!310155)))

(declare-fun c!62631 () Bool)

(assert (=> d!81325 (= c!62631 (bvsge x!1030 #b01111111111111111111111111111110))))

(assert (=> d!81325 (= lt!245317 (select (arr!16200 a!3154) index!1177))))

(assert (=> d!81325 (validMask!0 mask!3216)))

(assert (=> d!81325 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16200 a!3154) j!147) a!3154 mask!3216) lt!245318)))

(declare-fun b!532784 () Bool)

(assert (=> b!532784 (= e!310158 (Intermediate!4665 false index!1177 x!1030))))

(declare-fun b!532785 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!532785 (= e!310158 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (arr!16200 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!532786 () Bool)

(assert (=> b!532786 (and (bvsge (index!20886 lt!245318) #b00000000000000000000000000000000) (bvslt (index!20886 lt!245318) (size!16564 a!3154)))))

(assert (=> b!532786 (= e!310156 (= (select (arr!16200 a!3154) (index!20886 lt!245318)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!532787 () Bool)

(assert (=> b!532787 (= e!310159 (bvsge (x!49885 lt!245318) #b01111111111111111111111111111110))))

(assert (= (and d!81325 c!62631) b!532779))

(assert (= (and d!81325 (not c!62631)) b!532783))

(assert (= (and b!532783 c!62633) b!532784))

(assert (= (and b!532783 (not c!62633)) b!532785))

(assert (= (and d!81325 c!62632) b!532787))

(assert (= (and d!81325 (not c!62632)) b!532780))

(assert (= (and b!532780 res!328141) b!532781))

(assert (= (and b!532781 (not res!328140)) b!532782))

(assert (= (and b!532782 (not res!328142)) b!532786))

(declare-fun m!512807 () Bool)

(assert (=> b!532786 m!512807))

(assert (=> b!532782 m!512807))

(declare-fun m!512809 () Bool)

(assert (=> d!81325 m!512809))

(assert (=> d!81325 m!512623))

(assert (=> b!532781 m!512807))

(declare-fun m!512811 () Bool)

(assert (=> b!532785 m!512811))

(assert (=> b!532785 m!512811))

(assert (=> b!532785 m!512633))

(declare-fun m!512813 () Bool)

(assert (=> b!532785 m!512813))

(assert (=> b!532493 d!81325))

(push 1)

(assert (not b!532663))

(assert (not b!532662))

(assert (not b!532661))

(assert (not bm!31979))

(assert (not d!81325))

(assert (not b!532785))

(assert (not b!532637))

(assert (not b!532639))

(assert (not b!532727))

(assert (not bm!31982))

(assert (not d!81285))

(assert (not b!532618))

(check-sat)

(pop 1)

(push 1)

(check-sat)

