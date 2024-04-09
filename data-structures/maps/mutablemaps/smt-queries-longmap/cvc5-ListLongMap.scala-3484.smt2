; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48340 () Bool)

(assert start!48340)

(declare-fun res!326867 () Bool)

(declare-fun e!309388 () Bool)

(assert (=> start!48340 (=> (not res!326867) (not e!309388))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48340 (= res!326867 (validMask!0 mask!3216))))

(assert (=> start!48340 e!309388))

(assert (=> start!48340 true))

(declare-datatypes ((array!33649 0))(
  ( (array!33650 (arr!16164 (Array (_ BitVec 32) (_ BitVec 64))) (size!16528 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33649)

(declare-fun array_inv!11938 (array!33649) Bool)

(assert (=> start!48340 (array_inv!11938 a!3154)))

(declare-fun b!531155 () Bool)

(declare-fun e!309389 () Bool)

(declare-datatypes ((List!10336 0))(
  ( (Nil!10333) (Cons!10332 (h!11272 (_ BitVec 64)) (t!16572 List!10336)) )
))
(declare-fun contains!2789 (List!10336 (_ BitVec 64)) Bool)

(assert (=> b!531155 (= e!309389 (contains!2789 Nil!10333 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!531156 () Bool)

(declare-fun res!326872 () Bool)

(declare-fun e!309390 () Bool)

(assert (=> b!531156 (=> (not res!326872) (not e!309390))))

(assert (=> b!531156 (= res!326872 (and (bvsle #b00000000000000000000000000000000 (size!16528 a!3154)) (bvslt (size!16528 a!3154) #b01111111111111111111111111111111)))))

(declare-fun b!531157 () Bool)

(declare-fun res!326870 () Bool)

(assert (=> b!531157 (=> (not res!326870) (not e!309388))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!531157 (= res!326870 (and (= (size!16528 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16528 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16528 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!531158 () Bool)

(declare-fun res!326871 () Bool)

(assert (=> b!531158 (=> (not res!326871) (not e!309388))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33649 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!531158 (= res!326871 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!531159 () Bool)

(declare-fun res!326868 () Bool)

(assert (=> b!531159 (=> (not res!326868) (not e!309388))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!531159 (= res!326868 (validKeyInArray!0 k!1998))))

(declare-fun b!531160 () Bool)

(declare-fun res!326874 () Bool)

(assert (=> b!531160 (=> (not res!326874) (not e!309388))))

(assert (=> b!531160 (= res!326874 (validKeyInArray!0 (select (arr!16164 a!3154) j!147)))))

(declare-fun b!531161 () Bool)

(declare-fun res!326873 () Bool)

(assert (=> b!531161 (=> (not res!326873) (not e!309390))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33649 (_ BitVec 32)) Bool)

(assert (=> b!531161 (= res!326873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!531162 () Bool)

(declare-fun res!326876 () Bool)

(assert (=> b!531162 (=> (not res!326876) (not e!309390))))

(declare-fun noDuplicate!217 (List!10336) Bool)

(assert (=> b!531162 (= res!326876 (noDuplicate!217 Nil!10333))))

(declare-fun b!531163 () Bool)

(assert (=> b!531163 (= e!309388 e!309390)))

(declare-fun res!326875 () Bool)

(assert (=> b!531163 (=> (not res!326875) (not e!309390))))

(declare-datatypes ((SeekEntryResult!4629 0))(
  ( (MissingZero!4629 (index!20740 (_ BitVec 32))) (Found!4629 (index!20741 (_ BitVec 32))) (Intermediate!4629 (undefined!5441 Bool) (index!20742 (_ BitVec 32)) (x!49750 (_ BitVec 32))) (Undefined!4629) (MissingVacant!4629 (index!20743 (_ BitVec 32))) )
))
(declare-fun lt!244919 () SeekEntryResult!4629)

(assert (=> b!531163 (= res!326875 (or (= lt!244919 (MissingZero!4629 i!1153)) (= lt!244919 (MissingVacant!4629 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33649 (_ BitVec 32)) SeekEntryResult!4629)

(assert (=> b!531163 (= lt!244919 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!531164 () Bool)

(assert (=> b!531164 (= e!309390 e!309389)))

(declare-fun res!326869 () Bool)

(assert (=> b!531164 (=> res!326869 e!309389)))

(assert (=> b!531164 (= res!326869 (contains!2789 Nil!10333 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!48340 res!326867) b!531157))

(assert (= (and b!531157 res!326870) b!531160))

(assert (= (and b!531160 res!326874) b!531159))

(assert (= (and b!531159 res!326868) b!531158))

(assert (= (and b!531158 res!326871) b!531163))

(assert (= (and b!531163 res!326875) b!531161))

(assert (= (and b!531161 res!326873) b!531156))

(assert (= (and b!531156 res!326872) b!531162))

(assert (= (and b!531162 res!326876) b!531164))

(assert (= (and b!531164 (not res!326869)) b!531155))

(declare-fun m!511621 () Bool)

(assert (=> b!531158 m!511621))

(declare-fun m!511623 () Bool)

(assert (=> start!48340 m!511623))

(declare-fun m!511625 () Bool)

(assert (=> start!48340 m!511625))

(declare-fun m!511627 () Bool)

(assert (=> b!531164 m!511627))

(declare-fun m!511629 () Bool)

(assert (=> b!531159 m!511629))

(declare-fun m!511631 () Bool)

(assert (=> b!531161 m!511631))

(declare-fun m!511633 () Bool)

(assert (=> b!531160 m!511633))

(assert (=> b!531160 m!511633))

(declare-fun m!511635 () Bool)

(assert (=> b!531160 m!511635))

(declare-fun m!511637 () Bool)

(assert (=> b!531162 m!511637))

(declare-fun m!511639 () Bool)

(assert (=> b!531163 m!511639))

(declare-fun m!511641 () Bool)

(assert (=> b!531155 m!511641))

(push 1)

(assert (not b!531163))

(assert (not b!531160))

(assert (not b!531155))

(assert (not b!531158))

(assert (not b!531161))

(assert (not b!531159))

(assert (not b!531164))

(assert (not start!48340))

(assert (not b!531162))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!531255 () Bool)

(declare-fun e!309438 () SeekEntryResult!4629)

(assert (=> b!531255 (= e!309438 Undefined!4629)))

(declare-fun lt!244946 () SeekEntryResult!4629)

(declare-fun b!531256 () Bool)

(declare-fun e!309439 () SeekEntryResult!4629)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33649 (_ BitVec 32)) SeekEntryResult!4629)

(assert (=> b!531256 (= e!309439 (seekKeyOrZeroReturnVacant!0 (x!49750 lt!244946) (index!20742 lt!244946) (index!20742 lt!244946) k!1998 a!3154 mask!3216))))

(declare-fun d!81145 () Bool)

(declare-fun lt!244944 () SeekEntryResult!4629)

(assert (=> d!81145 (and (or (is-Undefined!4629 lt!244944) (not (is-Found!4629 lt!244944)) (and (bvsge (index!20741 lt!244944) #b00000000000000000000000000000000) (bvslt (index!20741 lt!244944) (size!16528 a!3154)))) (or (is-Undefined!4629 lt!244944) (is-Found!4629 lt!244944) (not (is-MissingZero!4629 lt!244944)) (and (bvsge (index!20740 lt!244944) #b00000000000000000000000000000000) (bvslt (index!20740 lt!244944) (size!16528 a!3154)))) (or (is-Undefined!4629 lt!244944) (is-Found!4629 lt!244944) (is-MissingZero!4629 lt!244944) (not (is-MissingVacant!4629 lt!244944)) (and (bvsge (index!20743 lt!244944) #b00000000000000000000000000000000) (bvslt (index!20743 lt!244944) (size!16528 a!3154)))) (or (is-Undefined!4629 lt!244944) (ite (is-Found!4629 lt!244944) (= (select (arr!16164 a!3154) (index!20741 lt!244944)) k!1998) (ite (is-MissingZero!4629 lt!244944) (= (select (arr!16164 a!3154) (index!20740 lt!244944)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4629 lt!244944) (= (select (arr!16164 a!3154) (index!20743 lt!244944)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!81145 (= lt!244944 e!309438)))

(declare-fun c!62465 () Bool)

(assert (=> d!81145 (= c!62465 (and (is-Intermediate!4629 lt!244946) (undefined!5441 lt!244946)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33649 (_ BitVec 32)) SeekEntryResult!4629)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!81145 (= lt!244946 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1998 mask!3216) k!1998 a!3154 mask!3216))))

(assert (=> d!81145 (validMask!0 mask!3216)))

(assert (=> d!81145 (= (seekEntryOrOpen!0 k!1998 a!3154 mask!3216) lt!244944)))

(declare-fun b!531257 () Bool)

(declare-fun e!309437 () SeekEntryResult!4629)

(assert (=> b!531257 (= e!309437 (Found!4629 (index!20742 lt!244946)))))

(declare-fun b!531258 () Bool)

(assert (=> b!531258 (= e!309439 (MissingZero!4629 (index!20742 lt!244946)))))

(declare-fun b!531259 () Bool)

(assert (=> b!531259 (= e!309438 e!309437)))

(declare-fun lt!244945 () (_ BitVec 64))

(assert (=> b!531259 (= lt!244945 (select (arr!16164 a!3154) (index!20742 lt!244946)))))

(declare-fun c!62464 () Bool)

(assert (=> b!531259 (= c!62464 (= lt!244945 k!1998))))

(declare-fun b!531260 () Bool)

(declare-fun c!62463 () Bool)

(assert (=> b!531260 (= c!62463 (= lt!244945 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!531260 (= e!309437 e!309439)))

(assert (= (and d!81145 c!62465) b!531255))

(assert (= (and d!81145 (not c!62465)) b!531259))

(assert (= (and b!531259 c!62464) b!531257))

(assert (= (and b!531259 (not c!62464)) b!531260))

(assert (= (and b!531260 c!62463) b!531258))

(assert (= (and b!531260 (not c!62463)) b!531256))

(declare-fun m!511707 () Bool)

(assert (=> b!531256 m!511707))

(declare-fun m!511711 () Bool)

(assert (=> d!81145 m!511711))

(assert (=> d!81145 m!511623))

(assert (=> d!81145 m!511711))

(declare-fun m!511713 () Bool)

(assert (=> d!81145 m!511713))

(declare-fun m!511715 () Bool)

(assert (=> d!81145 m!511715))

(declare-fun m!511717 () Bool)

(assert (=> d!81145 m!511717))

(declare-fun m!511719 () Bool)

(assert (=> d!81145 m!511719))

(declare-fun m!511721 () Bool)

(assert (=> b!531259 m!511721))

(assert (=> b!531163 d!81145))

(declare-fun d!81155 () Bool)

(declare-fun res!326961 () Bool)

(declare-fun e!309452 () Bool)

(assert (=> d!81155 (=> res!326961 e!309452)))

(assert (=> d!81155 (= res!326961 (= (select (arr!16164 a!3154) #b00000000000000000000000000000000) k!1998))))

(assert (=> d!81155 (= (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000) e!309452)))

(declare-fun b!531273 () Bool)

(declare-fun e!309453 () Bool)

(assert (=> b!531273 (= e!309452 e!309453)))

(declare-fun res!326962 () Bool)

(assert (=> b!531273 (=> (not res!326962) (not e!309453))))

(assert (=> b!531273 (= res!326962 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16528 a!3154)))))

(declare-fun b!531274 () Bool)

(assert (=> b!531274 (= e!309453 (arrayContainsKey!0 a!3154 k!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81155 (not res!326961)) b!531273))

(assert (= (and b!531273 res!326962) b!531274))

(declare-fun m!511727 () Bool)

(assert (=> d!81155 m!511727))

(declare-fun m!511729 () Bool)

(assert (=> b!531274 m!511729))

(assert (=> b!531158 d!81155))

(declare-fun d!81159 () Bool)

(assert (=> d!81159 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!48340 d!81159))

(declare-fun d!81167 () Bool)

(assert (=> d!81167 (= (array_inv!11938 a!3154) (bvsge (size!16528 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!48340 d!81167))

(declare-fun d!81171 () Bool)

(declare-fun lt!244959 () Bool)

(declare-fun content!222 (List!10336) (Set (_ BitVec 64)))

(assert (=> d!81171 (= lt!244959 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!222 Nil!10333)))))

(declare-fun e!309468 () Bool)

(assert (=> d!81171 (= lt!244959 e!309468)))

(declare-fun res!326967 () Bool)

(assert (=> d!81171 (=> (not res!326967) (not e!309468))))

(assert (=> d!81171 (= res!326967 (is-Cons!10332 Nil!10333))))

(assert (=> d!81171 (= (contains!2789 Nil!10333 #b0000000000000000000000000000000000000000000000000000000000000000) lt!244959)))

(declare-fun b!531297 () Bool)

(declare-fun e!309467 () Bool)

(assert (=> b!531297 (= e!309468 e!309467)))

(declare-fun res!326968 () Bool)

(assert (=> b!531297 (=> res!326968 e!309467)))

(assert (=> b!531297 (= res!326968 (= (h!11272 Nil!10333) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!531298 () Bool)

(assert (=> b!531298 (= e!309467 (contains!2789 (t!16572 Nil!10333) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!81171 res!326967) b!531297))

(assert (= (and b!531297 (not res!326968)) b!531298))

(declare-fun m!511745 () Bool)

(assert (=> d!81171 m!511745))

(declare-fun m!511747 () Bool)

(assert (=> d!81171 m!511747))

(declare-fun m!511749 () Bool)

(assert (=> b!531298 m!511749))

(assert (=> b!531164 d!81171))

(declare-fun d!81173 () Bool)

(assert (=> d!81173 (= (validKeyInArray!0 k!1998) (and (not (= k!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!531159 d!81173))

(declare-fun d!81175 () Bool)

(assert (=> d!81175 (= (validKeyInArray!0 (select (arr!16164 a!3154) j!147)) (and (not (= (select (arr!16164 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16164 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!531160 d!81175))

(declare-fun d!81177 () Bool)

(declare-fun lt!244960 () Bool)

(assert (=> d!81177 (= lt!244960 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!222 Nil!10333)))))

(declare-fun e!309470 () Bool)

(assert (=> d!81177 (= lt!244960 e!309470)))

(declare-fun res!326969 () Bool)

(assert (=> d!81177 (=> (not res!326969) (not e!309470))))

(assert (=> d!81177 (= res!326969 (is-Cons!10332 Nil!10333))))

(assert (=> d!81177 (= (contains!2789 Nil!10333 #b1000000000000000000000000000000000000000000000000000000000000000) lt!244960)))

(declare-fun b!531299 () Bool)

(declare-fun e!309469 () Bool)

(assert (=> b!531299 (= e!309470 e!309469)))

(declare-fun res!326970 () Bool)

(assert (=> b!531299 (=> res!326970 e!309469)))

(assert (=> b!531299 (= res!326970 (= (h!11272 Nil!10333) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!531300 () Bool)

(assert (=> b!531300 (= e!309469 (contains!2789 (t!16572 Nil!10333) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!81177 res!326969) b!531299))

(assert (= (and b!531299 (not res!326970)) b!531300))

(assert (=> d!81177 m!511745))

(declare-fun m!511751 () Bool)

(assert (=> d!81177 m!511751))

(declare-fun m!511753 () Bool)

(assert (=> b!531300 m!511753))

(assert (=> b!531155 d!81177))

(declare-fun b!531339 () Bool)

(declare-fun e!309506 () Bool)

(declare-fun call!31958 () Bool)

(assert (=> b!531339 (= e!309506 call!31958)))

(declare-fun b!531340 () Bool)

(declare-fun e!309504 () Bool)

(declare-fun e!309505 () Bool)

(assert (=> b!531340 (= e!309504 e!309505)))

(declare-fun c!62480 () Bool)

(assert (=> b!531340 (= c!62480 (validKeyInArray!0 (select (arr!16164 a!3154) #b00000000000000000000000000000000)))))

(declare-fun bm!31955 () Bool)

(assert (=> bm!31955 (= call!31958 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(declare-fun d!81179 () Bool)

(declare-fun res!327000 () Bool)

(assert (=> d!81179 (=> res!327000 e!309504)))

(assert (=> d!81179 (= res!327000 (bvsge #b00000000000000000000000000000000 (size!16528 a!3154)))))

(assert (=> d!81179 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!309504)))

(declare-fun b!531341 () Bool)

(assert (=> b!531341 (= e!309505 e!309506)))

(declare-fun lt!244981 () (_ BitVec 64))

(assert (=> b!531341 (= lt!244981 (select (arr!16164 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16808 0))(
  ( (Unit!16809) )
))
(declare-fun lt!244979 () Unit!16808)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33649 (_ BitVec 64) (_ BitVec 32)) Unit!16808)

(assert (=> b!531341 (= lt!244979 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!244981 #b00000000000000000000000000000000))))

(assert (=> b!531341 (arrayContainsKey!0 a!3154 lt!244981 #b00000000000000000000000000000000)))

(declare-fun lt!244980 () Unit!16808)

(assert (=> b!531341 (= lt!244980 lt!244979)))

(declare-fun res!326999 () Bool)

(assert (=> b!531341 (= res!326999 (= (seekEntryOrOpen!0 (select (arr!16164 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4629 #b00000000000000000000000000000000)))))

(assert (=> b!531341 (=> (not res!326999) (not e!309506))))

(declare-fun b!531342 () Bool)

(assert (=> b!531342 (= e!309505 call!31958)))

(assert (= (and d!81179 (not res!327000)) b!531340))

(assert (= (and b!531340 c!62480) b!531341))

(assert (= (and b!531340 (not c!62480)) b!531342))

(assert (= (and b!531341 res!326999) b!531339))

(assert (= (or b!531339 b!531342) bm!31955))

(assert (=> b!531340 m!511727))

(assert (=> b!531340 m!511727))

(declare-fun m!511779 () Bool)

(assert (=> b!531340 m!511779))

(declare-fun m!511781 () Bool)

(assert (=> bm!31955 m!511781))

(assert (=> b!531341 m!511727))

(declare-fun m!511783 () Bool)

(assert (=> b!531341 m!511783))

(declare-fun m!511785 () Bool)

(assert (=> b!531341 m!511785))

(assert (=> b!531341 m!511727))

(declare-fun m!511787 () Bool)

(assert (=> b!531341 m!511787))

(assert (=> b!531161 d!81179))

(declare-fun d!81197 () Bool)

(declare-fun res!327013 () Bool)

(declare-fun e!309519 () Bool)

(assert (=> d!81197 (=> res!327013 e!309519)))

(assert (=> d!81197 (= res!327013 (is-Nil!10333 Nil!10333))))

(assert (=> d!81197 (= (noDuplicate!217 Nil!10333) e!309519)))

(declare-fun b!531355 () Bool)

(declare-fun e!309520 () Bool)

(assert (=> b!531355 (= e!309519 e!309520)))

(declare-fun res!327014 () Bool)

(assert (=> b!531355 (=> (not res!327014) (not e!309520))))

(assert (=> b!531355 (= res!327014 (not (contains!2789 (t!16572 Nil!10333) (h!11272 Nil!10333))))))

(declare-fun b!531356 () Bool)

(assert (=> b!531356 (= e!309520 (noDuplicate!217 (t!16572 Nil!10333)))))

(assert (= (and d!81197 (not res!327013)) b!531355))

(assert (= (and b!531355 res!327014) b!531356))

(declare-fun m!511795 () Bool)

(assert (=> b!531355 m!511795))

(declare-fun m!511797 () Bool)

(assert (=> b!531356 m!511797))

(assert (=> b!531162 d!81197))

(push 1)

