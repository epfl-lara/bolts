; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48292 () Bool)

(assert start!48292)

(declare-fun b!530953 () Bool)

(declare-fun e!309271 () Bool)

(declare-fun e!309270 () Bool)

(assert (=> b!530953 (= e!309271 e!309270)))

(declare-fun res!326743 () Bool)

(assert (=> b!530953 (=> (not res!326743) (not e!309270))))

(declare-datatypes ((SeekEntryResult!4626 0))(
  ( (MissingZero!4626 (index!20728 (_ BitVec 32))) (Found!4626 (index!20729 (_ BitVec 32))) (Intermediate!4626 (undefined!5438 Bool) (index!20730 (_ BitVec 32)) (x!49739 (_ BitVec 32))) (Undefined!4626) (MissingVacant!4626 (index!20731 (_ BitVec 32))) )
))
(declare-fun lt!244856 () SeekEntryResult!4626)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530953 (= res!326743 (or (= lt!244856 (MissingZero!4626 i!1153)) (= lt!244856 (MissingVacant!4626 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((array!33640 0))(
  ( (array!33641 (arr!16161 (Array (_ BitVec 32) (_ BitVec 64))) (size!16525 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33640)

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33640 (_ BitVec 32)) SeekEntryResult!4626)

(assert (=> b!530953 (= lt!244856 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun res!326739 () Bool)

(assert (=> start!48292 (=> (not res!326739) (not e!309271))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48292 (= res!326739 (validMask!0 mask!3216))))

(assert (=> start!48292 e!309271))

(assert (=> start!48292 true))

(declare-fun array_inv!11935 (array!33640) Bool)

(assert (=> start!48292 (array_inv!11935 a!3154)))

(declare-fun b!530954 () Bool)

(declare-fun res!326742 () Bool)

(assert (=> b!530954 (=> (not res!326742) (not e!309271))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530954 (= res!326742 (validKeyInArray!0 (select (arr!16161 a!3154) j!147)))))

(declare-fun b!530955 () Bool)

(declare-datatypes ((List!10333 0))(
  ( (Nil!10330) (Cons!10329 (h!11269 (_ BitVec 64)) (t!16569 List!10333)) )
))
(declare-fun noDuplicate!214 (List!10333) Bool)

(assert (=> b!530955 (= e!309270 (not (noDuplicate!214 Nil!10330)))))

(declare-fun b!530956 () Bool)

(declare-fun res!326740 () Bool)

(assert (=> b!530956 (=> (not res!326740) (not e!309271))))

(assert (=> b!530956 (= res!326740 (validKeyInArray!0 k!1998))))

(declare-fun b!530957 () Bool)

(declare-fun res!326741 () Bool)

(assert (=> b!530957 (=> (not res!326741) (not e!309270))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33640 (_ BitVec 32)) Bool)

(assert (=> b!530957 (= res!326741 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!530958 () Bool)

(declare-fun res!326737 () Bool)

(assert (=> b!530958 (=> (not res!326737) (not e!309270))))

(assert (=> b!530958 (= res!326737 (and (bvsle #b00000000000000000000000000000000 (size!16525 a!3154)) (bvslt (size!16525 a!3154) #b01111111111111111111111111111111)))))

(declare-fun b!530959 () Bool)

(declare-fun res!326744 () Bool)

(assert (=> b!530959 (=> (not res!326744) (not e!309271))))

(declare-fun arrayContainsKey!0 (array!33640 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530959 (= res!326744 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!530960 () Bool)

(declare-fun res!326738 () Bool)

(assert (=> b!530960 (=> (not res!326738) (not e!309271))))

(assert (=> b!530960 (= res!326738 (and (= (size!16525 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16525 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16525 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48292 res!326739) b!530960))

(assert (= (and b!530960 res!326738) b!530954))

(assert (= (and b!530954 res!326742) b!530956))

(assert (= (and b!530956 res!326740) b!530959))

(assert (= (and b!530959 res!326744) b!530953))

(assert (= (and b!530953 res!326743) b!530957))

(assert (= (and b!530957 res!326741) b!530958))

(assert (= (and b!530958 res!326737) b!530955))

(declare-fun m!511471 () Bool)

(assert (=> b!530955 m!511471))

(declare-fun m!511473 () Bool)

(assert (=> b!530957 m!511473))

(declare-fun m!511475 () Bool)

(assert (=> b!530959 m!511475))

(declare-fun m!511477 () Bool)

(assert (=> b!530954 m!511477))

(assert (=> b!530954 m!511477))

(declare-fun m!511479 () Bool)

(assert (=> b!530954 m!511479))

(declare-fun m!511481 () Bool)

(assert (=> b!530953 m!511481))

(declare-fun m!511483 () Bool)

(assert (=> start!48292 m!511483))

(declare-fun m!511485 () Bool)

(assert (=> start!48292 m!511485))

(declare-fun m!511487 () Bool)

(assert (=> b!530956 m!511487))

(push 1)

(assert (not start!48292))

(assert (not b!530955))

(assert (not b!530959))

(assert (not b!530953))

(assert (not b!530956))

(assert (not b!530954))

(assert (not b!530957))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!81093 () Bool)

(declare-fun res!326797 () Bool)

(declare-fun e!309294 () Bool)

(assert (=> d!81093 (=> res!326797 e!309294)))

(assert (=> d!81093 (= res!326797 (is-Nil!10330 Nil!10330))))

(assert (=> d!81093 (= (noDuplicate!214 Nil!10330) e!309294)))

(declare-fun b!531013 () Bool)

(declare-fun e!309295 () Bool)

(assert (=> b!531013 (= e!309294 e!309295)))

(declare-fun res!326798 () Bool)

(assert (=> b!531013 (=> (not res!326798) (not e!309295))))

(declare-fun contains!2786 (List!10333 (_ BitVec 64)) Bool)

(assert (=> b!531013 (= res!326798 (not (contains!2786 (t!16569 Nil!10330) (h!11269 Nil!10330))))))

(declare-fun b!531014 () Bool)

(assert (=> b!531014 (= e!309295 (noDuplicate!214 (t!16569 Nil!10330)))))

(assert (= (and d!81093 (not res!326797)) b!531013))

(assert (= (and b!531013 res!326798) b!531014))

(declare-fun m!511525 () Bool)

(assert (=> b!531013 m!511525))

(declare-fun m!511527 () Bool)

(assert (=> b!531014 m!511527))

(assert (=> b!530955 d!81093))

(declare-fun d!81101 () Bool)

(assert (=> d!81101 (= (validKeyInArray!0 k!1998) (and (not (= k!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!530956 d!81101))

(declare-fun b!531023 () Bool)

(declare-fun e!309303 () Bool)

(declare-fun e!309302 () Bool)

(assert (=> b!531023 (= e!309303 e!309302)))

(declare-fun lt!244871 () (_ BitVec 64))

(assert (=> b!531023 (= lt!244871 (select (arr!16161 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16800 0))(
  ( (Unit!16801) )
))
(declare-fun lt!244870 () Unit!16800)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33640 (_ BitVec 64) (_ BitVec 32)) Unit!16800)

(assert (=> b!531023 (= lt!244870 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!244871 #b00000000000000000000000000000000))))

(assert (=> b!531023 (arrayContainsKey!0 a!3154 lt!244871 #b00000000000000000000000000000000)))

(declare-fun lt!244869 () Unit!16800)

(assert (=> b!531023 (= lt!244869 lt!244870)))

(declare-fun res!326804 () Bool)

(assert (=> b!531023 (= res!326804 (= (seekEntryOrOpen!0 (select (arr!16161 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4626 #b00000000000000000000000000000000)))))

(assert (=> b!531023 (=> (not res!326804) (not e!309302))))

(declare-fun d!81103 () Bool)

(declare-fun res!326803 () Bool)

(declare-fun e!309304 () Bool)

(assert (=> d!81103 (=> res!326803 e!309304)))

(assert (=> d!81103 (= res!326803 (bvsge #b00000000000000000000000000000000 (size!16525 a!3154)))))

(assert (=> d!81103 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!309304)))

(declare-fun bm!31940 () Bool)

(declare-fun call!31943 () Bool)

(assert (=> bm!31940 (= call!31943 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(declare-fun b!531024 () Bool)

(assert (=> b!531024 (= e!309304 e!309303)))

(declare-fun c!62420 () Bool)

(assert (=> b!531024 (= c!62420 (validKeyInArray!0 (select (arr!16161 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!531025 () Bool)

(assert (=> b!531025 (= e!309303 call!31943)))

(declare-fun b!531026 () Bool)

(assert (=> b!531026 (= e!309302 call!31943)))

(assert (= (and d!81103 (not res!326803)) b!531024))

(assert (= (and b!531024 c!62420) b!531023))

(assert (= (and b!531024 (not c!62420)) b!531025))

(assert (= (and b!531023 res!326804) b!531026))

(assert (= (or b!531026 b!531025) bm!31940))

(declare-fun m!511529 () Bool)

(assert (=> b!531023 m!511529))

(declare-fun m!511531 () Bool)

(assert (=> b!531023 m!511531))

(declare-fun m!511533 () Bool)

(assert (=> b!531023 m!511533))

(assert (=> b!531023 m!511529))

(declare-fun m!511535 () Bool)

(assert (=> b!531023 m!511535))

(declare-fun m!511537 () Bool)

(assert (=> bm!31940 m!511537))

(assert (=> b!531024 m!511529))

(assert (=> b!531024 m!511529))

(declare-fun m!511539 () Bool)

(assert (=> b!531024 m!511539))

(assert (=> b!530957 d!81103))

(declare-fun b!531091 () Bool)

(declare-fun c!62442 () Bool)

(declare-fun lt!244906 () (_ BitVec 64))

(assert (=> b!531091 (= c!62442 (= lt!244906 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!309348 () SeekEntryResult!4626)

(declare-fun e!309350 () SeekEntryResult!4626)

(assert (=> b!531091 (= e!309348 e!309350)))

(declare-fun b!531092 () Bool)

(declare-fun e!309349 () SeekEntryResult!4626)

(assert (=> b!531092 (= e!309349 e!309348)))

(declare-fun lt!244905 () SeekEntryResult!4626)

(assert (=> b!531092 (= lt!244906 (select (arr!16161 a!3154) (index!20730 lt!244905)))))

(declare-fun c!62443 () Bool)

(assert (=> b!531092 (= c!62443 (= lt!244906 k!1998))))

(declare-fun d!81105 () Bool)

(declare-fun lt!244907 () SeekEntryResult!4626)

(assert (=> d!81105 (and (or (is-Undefined!4626 lt!244907) (not (is-Found!4626 lt!244907)) (and (bvsge (index!20729 lt!244907) #b00000000000000000000000000000000) (bvslt (index!20729 lt!244907) (size!16525 a!3154)))) (or (is-Undefined!4626 lt!244907) (is-Found!4626 lt!244907) (not (is-MissingZero!4626 lt!244907)) (and (bvsge (index!20728 lt!244907) #b00000000000000000000000000000000) (bvslt (index!20728 lt!244907) (size!16525 a!3154)))) (or (is-Undefined!4626 lt!244907) (is-Found!4626 lt!244907) (is-MissingZero!4626 lt!244907) (not (is-MissingVacant!4626 lt!244907)) (and (bvsge (index!20731 lt!244907) #b00000000000000000000000000000000) (bvslt (index!20731 lt!244907) (size!16525 a!3154)))) (or (is-Undefined!4626 lt!244907) (ite (is-Found!4626 lt!244907) (= (select (arr!16161 a!3154) (index!20729 lt!244907)) k!1998) (ite (is-MissingZero!4626 lt!244907) (= (select (arr!16161 a!3154) (index!20728 lt!244907)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4626 lt!244907) (= (select (arr!16161 a!3154) (index!20731 lt!244907)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!81105 (= lt!244907 e!309349)))

(declare-fun c!62444 () Bool)

(assert (=> d!81105 (= c!62444 (and (is-Intermediate!4626 lt!244905) (undefined!5438 lt!244905)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33640 (_ BitVec 32)) SeekEntryResult!4626)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!81105 (= lt!244905 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1998 mask!3216) k!1998 a!3154 mask!3216))))

(assert (=> d!81105 (validMask!0 mask!3216)))

(assert (=> d!81105 (= (seekEntryOrOpen!0 k!1998 a!3154 mask!3216) lt!244907)))

(declare-fun b!531093 () Bool)

(assert (=> b!531093 (= e!309350 (MissingZero!4626 (index!20730 lt!244905)))))

(declare-fun b!531094 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33640 (_ BitVec 32)) SeekEntryResult!4626)

(assert (=> b!531094 (= e!309350 (seekKeyOrZeroReturnVacant!0 (x!49739 lt!244905) (index!20730 lt!244905) (index!20730 lt!244905) k!1998 a!3154 mask!3216))))

(declare-fun b!531095 () Bool)

(assert (=> b!531095 (= e!309349 Undefined!4626)))

(declare-fun b!531096 () Bool)

(assert (=> b!531096 (= e!309348 (Found!4626 (index!20730 lt!244905)))))

(assert (= (and d!81105 c!62444) b!531095))

(assert (= (and d!81105 (not c!62444)) b!531092))

(assert (= (and b!531092 c!62443) b!531096))

(assert (= (and b!531092 (not c!62443)) b!531091))

(assert (= (and b!531091 c!62442) b!531093))

(assert (= (and b!531091 (not c!62442)) b!531094))

(declare-fun m!511585 () Bool)

(assert (=> b!531092 m!511585))

(declare-fun m!511587 () Bool)

(assert (=> d!81105 m!511587))

(declare-fun m!511589 () Bool)

(assert (=> d!81105 m!511589))

(declare-fun m!511591 () Bool)

(assert (=> d!81105 m!511591))

(declare-fun m!511593 () Bool)

(assert (=> d!81105 m!511593))

(assert (=> d!81105 m!511483))

(assert (=> d!81105 m!511589))

(declare-fun m!511595 () Bool)

(assert (=> d!81105 m!511595))

(declare-fun m!511597 () Bool)

(assert (=> b!531094 m!511597))

(assert (=> b!530953 d!81105))

(declare-fun d!81125 () Bool)

(declare-fun res!326833 () Bool)

(declare-fun e!309357 () Bool)

(assert (=> d!81125 (=> res!326833 e!309357)))

(assert (=> d!81125 (= res!326833 (= (select (arr!16161 a!3154) #b00000000000000000000000000000000) k!1998))))

(assert (=> d!81125 (= (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000) e!309357)))

(declare-fun b!531103 () Bool)

(declare-fun e!309358 () Bool)

(assert (=> b!531103 (= e!309357 e!309358)))

(declare-fun res!326834 () Bool)

(assert (=> b!531103 (=> (not res!326834) (not e!309358))))

(assert (=> b!531103 (= res!326834 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16525 a!3154)))))

(declare-fun b!531104 () Bool)

(assert (=> b!531104 (= e!309358 (arrayContainsKey!0 a!3154 k!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81125 (not res!326833)) b!531103))

(assert (= (and b!531103 res!326834) b!531104))

(assert (=> d!81125 m!511529))

(declare-fun m!511599 () Bool)

(assert (=> b!531104 m!511599))

(assert (=> b!530959 d!81125))

(declare-fun d!81127 () Bool)

(assert (=> d!81127 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!48292 d!81127))

(declare-fun d!81137 () Bool)

(assert (=> d!81137 (= (array_inv!11935 a!3154) (bvsge (size!16525 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!48292 d!81137))

(declare-fun d!81139 () Bool)

(assert (=> d!81139 (= (validKeyInArray!0 (select (arr!16161 a!3154) j!147)) (and (not (= (select (arr!16161 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16161 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!530954 d!81139))

(push 1)

(assert (not b!531094))

(assert (not b!531024))

(assert (not bm!31940))

(assert (not b!531023))

(assert (not b!531104))

(assert (not b!531013))

(assert (not d!81105))

(assert (not b!531014))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

