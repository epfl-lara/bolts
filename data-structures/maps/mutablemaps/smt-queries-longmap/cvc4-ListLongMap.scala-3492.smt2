; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48440 () Bool)

(assert start!48440)

(declare-fun b!531950 () Bool)

(declare-fun res!327599 () Bool)

(declare-fun e!309745 () Bool)

(assert (=> b!531950 (=> (not res!327599) (not e!309745))))

(declare-datatypes ((array!33704 0))(
  ( (array!33705 (arr!16190 (Array (_ BitVec 32) (_ BitVec 64))) (size!16554 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33704)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33704 (_ BitVec 32)) Bool)

(assert (=> b!531950 (= res!327599 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!531951 () Bool)

(declare-fun res!327593 () Bool)

(assert (=> b!531951 (=> (not res!327593) (not e!309745))))

(declare-datatypes ((List!10362 0))(
  ( (Nil!10359) (Cons!10358 (h!11298 (_ BitVec 64)) (t!16598 List!10362)) )
))
(declare-fun arrayNoDuplicates!0 (array!33704 (_ BitVec 32) List!10362) Bool)

(assert (=> b!531951 (= res!327593 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10359))))

(declare-fun b!531952 () Bool)

(declare-fun res!327596 () Bool)

(declare-fun e!309743 () Bool)

(assert (=> b!531952 (=> (not res!327596) (not e!309743))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33704 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!531952 (= res!327596 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!531953 () Bool)

(declare-fun res!327598 () Bool)

(assert (=> b!531953 (=> (not res!327598) (not e!309745))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!531953 (= res!327598 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16554 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16554 a!3154)) (= (select (arr!16190 a!3154) resIndex!32) (select (arr!16190 a!3154) j!147))))))

(declare-fun b!531955 () Bool)

(declare-fun res!327591 () Bool)

(assert (=> b!531955 (=> (not res!327591) (not e!309745))))

(declare-datatypes ((SeekEntryResult!4655 0))(
  ( (MissingZero!4655 (index!20844 (_ BitVec 32))) (Found!4655 (index!20845 (_ BitVec 32))) (Intermediate!4655 (undefined!5467 Bool) (index!20846 (_ BitVec 32)) (x!49840 (_ BitVec 32))) (Undefined!4655) (MissingVacant!4655 (index!20847 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33704 (_ BitVec 32)) SeekEntryResult!4655)

(assert (=> b!531955 (= res!327591 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16190 a!3154) j!147) a!3154 mask!3216) (Intermediate!4655 false resIndex!32 resX!32)))))

(declare-fun b!531956 () Bool)

(declare-fun res!327594 () Bool)

(assert (=> b!531956 (=> (not res!327594) (not e!309743))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!531956 (= res!327594 (and (= (size!16554 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16554 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16554 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!531957 () Bool)

(declare-fun res!327597 () Bool)

(assert (=> b!531957 (=> (not res!327597) (not e!309743))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!531957 (= res!327597 (validKeyInArray!0 k!1998))))

(declare-fun res!327595 () Bool)

(assert (=> start!48440 (=> (not res!327595) (not e!309743))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48440 (= res!327595 (validMask!0 mask!3216))))

(assert (=> start!48440 e!309743))

(assert (=> start!48440 true))

(declare-fun array_inv!11964 (array!33704) Bool)

(assert (=> start!48440 (array_inv!11964 a!3154)))

(declare-fun b!531954 () Bool)

(declare-fun res!327592 () Bool)

(assert (=> b!531954 (=> (not res!327592) (not e!309743))))

(assert (=> b!531954 (= res!327592 (validKeyInArray!0 (select (arr!16190 a!3154) j!147)))))

(declare-fun b!531958 () Bool)

(assert (=> b!531958 (= e!309745 (and (bvsge mask!3216 #b00000000000000000000000000000000) (bvsgt mask!3216 #b00111111111111111111111111111111)))))

(declare-fun b!531959 () Bool)

(assert (=> b!531959 (= e!309743 e!309745)))

(declare-fun res!327590 () Bool)

(assert (=> b!531959 (=> (not res!327590) (not e!309745))))

(declare-fun lt!245090 () SeekEntryResult!4655)

(assert (=> b!531959 (= res!327590 (or (= lt!245090 (MissingZero!4655 i!1153)) (= lt!245090 (MissingVacant!4655 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33704 (_ BitVec 32)) SeekEntryResult!4655)

(assert (=> b!531959 (= lt!245090 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(assert (= (and start!48440 res!327595) b!531956))

(assert (= (and b!531956 res!327594) b!531954))

(assert (= (and b!531954 res!327592) b!531957))

(assert (= (and b!531957 res!327597) b!531952))

(assert (= (and b!531952 res!327596) b!531959))

(assert (= (and b!531959 res!327590) b!531950))

(assert (= (and b!531950 res!327599) b!531951))

(assert (= (and b!531951 res!327593) b!531953))

(assert (= (and b!531953 res!327598) b!531955))

(assert (= (and b!531955 res!327591) b!531958))

(declare-fun m!512265 () Bool)

(assert (=> b!531957 m!512265))

(declare-fun m!512267 () Bool)

(assert (=> b!531951 m!512267))

(declare-fun m!512269 () Bool)

(assert (=> b!531952 m!512269))

(declare-fun m!512271 () Bool)

(assert (=> b!531950 m!512271))

(declare-fun m!512273 () Bool)

(assert (=> b!531959 m!512273))

(declare-fun m!512275 () Bool)

(assert (=> b!531953 m!512275))

(declare-fun m!512277 () Bool)

(assert (=> b!531953 m!512277))

(assert (=> b!531955 m!512277))

(assert (=> b!531955 m!512277))

(declare-fun m!512279 () Bool)

(assert (=> b!531955 m!512279))

(assert (=> b!531954 m!512277))

(assert (=> b!531954 m!512277))

(declare-fun m!512281 () Bool)

(assert (=> b!531954 m!512281))

(declare-fun m!512283 () Bool)

(assert (=> start!48440 m!512283))

(declare-fun m!512285 () Bool)

(assert (=> start!48440 m!512285))

(push 1)

(assert (not b!531951))

(assert (not b!531950))

(assert (not b!531955))

(assert (not start!48440))

(assert (not b!531957))

(assert (not b!531952))

(assert (not b!531954))

(assert (not b!531959))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!81229 () Bool)

(assert (=> d!81229 (= (validKeyInArray!0 k!1998) (and (not (= k!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!531957 d!81229))

(declare-fun b!532003 () Bool)

(declare-fun e!309778 () Bool)

(declare-fun call!31964 () Bool)

(assert (=> b!532003 (= e!309778 call!31964)))

(declare-fun b!532004 () Bool)

(declare-fun e!309776 () Bool)

(declare-fun contains!2793 (List!10362 (_ BitVec 64)) Bool)

(assert (=> b!532004 (= e!309776 (contains!2793 Nil!10359 (select (arr!16190 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!532005 () Bool)

(declare-fun e!309777 () Bool)

(declare-fun e!309775 () Bool)

(assert (=> b!532005 (= e!309777 e!309775)))

(declare-fun res!327617 () Bool)

(assert (=> b!532005 (=> (not res!327617) (not e!309775))))

(assert (=> b!532005 (= res!327617 (not e!309776))))

(declare-fun res!327616 () Bool)

(assert (=> b!532005 (=> (not res!327616) (not e!309776))))

(assert (=> b!532005 (= res!327616 (validKeyInArray!0 (select (arr!16190 a!3154) #b00000000000000000000000000000000)))))

(declare-fun d!81231 () Bool)

(declare-fun res!327615 () Bool)

(assert (=> d!81231 (=> res!327615 e!309777)))

(assert (=> d!81231 (= res!327615 (bvsge #b00000000000000000000000000000000 (size!16554 a!3154)))))

(assert (=> d!81231 (= (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10359) e!309777)))

(declare-fun bm!31961 () Bool)

(declare-fun c!62504 () Bool)

(assert (=> bm!31961 (= call!31964 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!62504 (Cons!10358 (select (arr!16190 a!3154) #b00000000000000000000000000000000) Nil!10359) Nil!10359)))))

(declare-fun b!532006 () Bool)

(assert (=> b!532006 (= e!309775 e!309778)))

(assert (=> b!532006 (= c!62504 (validKeyInArray!0 (select (arr!16190 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!532007 () Bool)

(assert (=> b!532007 (= e!309778 call!31964)))

(assert (= (and d!81231 (not res!327615)) b!532005))

(assert (= (and b!532005 res!327616) b!532004))

(assert (= (and b!532005 res!327617) b!532006))

(assert (= (and b!532006 c!62504) b!532007))

(assert (= (and b!532006 (not c!62504)) b!532003))

(assert (= (or b!532007 b!532003) bm!31961))

(declare-fun m!512309 () Bool)

(assert (=> b!532004 m!512309))

(assert (=> b!532004 m!512309))

(declare-fun m!512311 () Bool)

(assert (=> b!532004 m!512311))

(assert (=> b!532005 m!512309))

(assert (=> b!532005 m!512309))

(declare-fun m!512313 () Bool)

(assert (=> b!532005 m!512313))

(assert (=> bm!31961 m!512309))

(declare-fun m!512315 () Bool)

(assert (=> bm!31961 m!512315))

(assert (=> b!532006 m!512309))

(assert (=> b!532006 m!512309))

(assert (=> b!532006 m!512313))

(assert (=> b!531951 d!81231))

(declare-fun d!81235 () Bool)

(assert (=> d!81235 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!48440 d!81235))

(declare-fun d!81245 () Bool)

(assert (=> d!81245 (= (array_inv!11964 a!3154) (bvsge (size!16554 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!48440 d!81245))

(declare-fun d!81247 () Bool)

(declare-fun res!327640 () Bool)

(declare-fun e!309813 () Bool)

(assert (=> d!81247 (=> res!327640 e!309813)))

(assert (=> d!81247 (= res!327640 (= (select (arr!16190 a!3154) #b00000000000000000000000000000000) k!1998))))

(assert (=> d!81247 (= (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000) e!309813)))

(declare-fun b!532054 () Bool)

(declare-fun e!309814 () Bool)

(assert (=> b!532054 (= e!309813 e!309814)))

(declare-fun res!327641 () Bool)

(assert (=> b!532054 (=> (not res!327641) (not e!309814))))

(assert (=> b!532054 (= res!327641 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16554 a!3154)))))

(declare-fun b!532055 () Bool)

(assert (=> b!532055 (= e!309814 (arrayContainsKey!0 a!3154 k!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81247 (not res!327640)) b!532054))

(assert (= (and b!532054 res!327641) b!532055))

(assert (=> d!81247 m!512309))

(declare-fun m!512345 () Bool)

(assert (=> b!532055 m!512345))

(assert (=> b!531952 d!81247))

(declare-fun d!81251 () Bool)

(assert (=> d!81251 (= (validKeyInArray!0 (select (arr!16190 a!3154) j!147)) (and (not (= (select (arr!16190 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16190 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!531954 d!81251))

(declare-fun b!532095 () Bool)

(declare-fun c!62531 () Bool)

(declare-fun lt!245135 () (_ BitVec 64))

(assert (=> b!532095 (= c!62531 (= lt!245135 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!309842 () SeekEntryResult!4655)

(declare-fun e!309843 () SeekEntryResult!4655)

(assert (=> b!532095 (= e!309842 e!309843)))

(declare-fun b!532096 () Bool)

(declare-fun lt!245134 () SeekEntryResult!4655)

(assert (=> b!532096 (= e!309843 (MissingZero!4655 (index!20846 lt!245134)))))

(declare-fun d!81253 () Bool)

(declare-fun lt!245133 () SeekEntryResult!4655)

(assert (=> d!81253 (and (or (is-Undefined!4655 lt!245133) (not (is-Found!4655 lt!245133)) (and (bvsge (index!20845 lt!245133) #b00000000000000000000000000000000) (bvslt (index!20845 lt!245133) (size!16554 a!3154)))) (or (is-Undefined!4655 lt!245133) (is-Found!4655 lt!245133) (not (is-MissingZero!4655 lt!245133)) (and (bvsge (index!20844 lt!245133) #b00000000000000000000000000000000) (bvslt (index!20844 lt!245133) (size!16554 a!3154)))) (or (is-Undefined!4655 lt!245133) (is-Found!4655 lt!245133) (is-MissingZero!4655 lt!245133) (not (is-MissingVacant!4655 lt!245133)) (and (bvsge (index!20847 lt!245133) #b00000000000000000000000000000000) (bvslt (index!20847 lt!245133) (size!16554 a!3154)))) (or (is-Undefined!4655 lt!245133) (ite (is-Found!4655 lt!245133) (= (select (arr!16190 a!3154) (index!20845 lt!245133)) k!1998) (ite (is-MissingZero!4655 lt!245133) (= (select (arr!16190 a!3154) (index!20844 lt!245133)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4655 lt!245133) (= (select (arr!16190 a!3154) (index!20847 lt!245133)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!309844 () SeekEntryResult!4655)

(assert (=> d!81253 (= lt!245133 e!309844)))

(declare-fun c!62530 () Bool)

(assert (=> d!81253 (= c!62530 (and (is-Intermediate!4655 lt!245134) (undefined!5467 lt!245134)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!81253 (= lt!245134 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1998 mask!3216) k!1998 a!3154 mask!3216))))

(assert (=> d!81253 (validMask!0 mask!3216)))

(assert (=> d!81253 (= (seekEntryOrOpen!0 k!1998 a!3154 mask!3216) lt!245133)))

(declare-fun b!532097 () Bool)

(assert (=> b!532097 (= e!309844 Undefined!4655)))

(declare-fun b!532098 () Bool)

(assert (=> b!532098 (= e!309844 e!309842)))

(assert (=> b!532098 (= lt!245135 (select (arr!16190 a!3154) (index!20846 lt!245134)))))

(declare-fun c!62529 () Bool)

(assert (=> b!532098 (= c!62529 (= lt!245135 k!1998))))

(declare-fun b!532099 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33704 (_ BitVec 32)) SeekEntryResult!4655)

(assert (=> b!532099 (= e!309843 (seekKeyOrZeroReturnVacant!0 (x!49840 lt!245134) (index!20846 lt!245134) (index!20846 lt!245134) k!1998 a!3154 mask!3216))))

(declare-fun b!532100 () Bool)

(assert (=> b!532100 (= e!309842 (Found!4655 (index!20846 lt!245134)))))

(assert (= (and d!81253 c!62530) b!532097))

(assert (= (and d!81253 (not c!62530)) b!532098))

(assert (= (and b!532098 c!62529) b!532100))

(assert (= (and b!532098 (not c!62529)) b!532095))

(assert (= (and b!532095 c!62531) b!532096))

