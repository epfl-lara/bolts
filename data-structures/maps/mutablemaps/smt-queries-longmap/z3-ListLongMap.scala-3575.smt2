; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49146 () Bool)

(assert start!49146)

(declare-fun b!541096 () Bool)

(declare-fun res!336137 () Bool)

(declare-fun e!313317 () Bool)

(assert (=> b!541096 (=> (not res!336137) (not e!313317))))

(declare-datatypes ((array!34212 0))(
  ( (array!34213 (arr!16438 (Array (_ BitVec 32) (_ BitVec 64))) (size!16802 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34212)

(declare-datatypes ((List!10610 0))(
  ( (Nil!10607) (Cons!10606 (h!11555 (_ BitVec 64)) (t!16846 List!10610)) )
))
(declare-fun arrayNoDuplicates!0 (array!34212 (_ BitVec 32) List!10610) Bool)

(assert (=> b!541096 (= res!336137 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10607))))

(declare-fun b!541097 () Bool)

(declare-fun res!336136 () Bool)

(assert (=> b!541097 (=> (not res!336136) (not e!313317))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34212 (_ BitVec 32)) Bool)

(assert (=> b!541097 (= res!336136 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!541098 () Bool)

(declare-fun res!336134 () Bool)

(declare-fun e!313316 () Bool)

(assert (=> b!541098 (=> (not res!336134) (not e!313316))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!541098 (= res!336134 (validKeyInArray!0 k0!1998))))

(declare-fun b!541099 () Bool)

(declare-fun res!336141 () Bool)

(declare-fun e!313318 () Bool)

(assert (=> b!541099 (=> (not res!336141) (not e!313318))))

(declare-datatypes ((SeekEntryResult!4903 0))(
  ( (MissingZero!4903 (index!21836 (_ BitVec 32))) (Found!4903 (index!21837 (_ BitVec 32))) (Intermediate!4903 (undefined!5715 Bool) (index!21838 (_ BitVec 32)) (x!50773 (_ BitVec 32))) (Undefined!4903) (MissingVacant!4903 (index!21839 (_ BitVec 32))) )
))
(declare-fun lt!247553 () SeekEntryResult!4903)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34212 (_ BitVec 32)) SeekEntryResult!4903)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!541099 (= res!336141 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16438 a!3154) j!147) mask!3216) (select (arr!16438 a!3154) j!147) a!3154 mask!3216) lt!247553))))

(declare-fun b!541100 () Bool)

(assert (=> b!541100 (= e!313317 e!313318)))

(declare-fun res!336133 () Bool)

(assert (=> b!541100 (=> (not res!336133) (not e!313318))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!541100 (= res!336133 (= lt!247553 (Intermediate!4903 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(assert (=> b!541100 (= lt!247553 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16438 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!541101 () Bool)

(declare-fun res!336143 () Bool)

(assert (=> b!541101 (=> (not res!336143) (not e!313316))))

(assert (=> b!541101 (= res!336143 (validKeyInArray!0 (select (arr!16438 a!3154) j!147)))))

(declare-fun b!541102 () Bool)

(assert (=> b!541102 (= e!313318 (and (not (= (select (arr!16438 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16438 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16438 a!3154) index!1177) (select (arr!16438 a!3154) j!147)) (not (= index!1177 resIndex!32))))))

(declare-fun b!541103 () Bool)

(declare-fun res!336135 () Bool)

(assert (=> b!541103 (=> (not res!336135) (not e!313316))))

(declare-fun arrayContainsKey!0 (array!34212 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!541103 (= res!336135 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun res!336140 () Bool)

(assert (=> start!49146 (=> (not res!336140) (not e!313316))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49146 (= res!336140 (validMask!0 mask!3216))))

(assert (=> start!49146 e!313316))

(assert (=> start!49146 true))

(declare-fun array_inv!12212 (array!34212) Bool)

(assert (=> start!49146 (array_inv!12212 a!3154)))

(declare-fun b!541104 () Bool)

(assert (=> b!541104 (= e!313316 e!313317)))

(declare-fun res!336139 () Bool)

(assert (=> b!541104 (=> (not res!336139) (not e!313317))))

(declare-fun lt!247552 () SeekEntryResult!4903)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!541104 (= res!336139 (or (= lt!247552 (MissingZero!4903 i!1153)) (= lt!247552 (MissingVacant!4903 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34212 (_ BitVec 32)) SeekEntryResult!4903)

(assert (=> b!541104 (= lt!247552 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!541105 () Bool)

(declare-fun res!336138 () Bool)

(assert (=> b!541105 (=> (not res!336138) (not e!313317))))

(assert (=> b!541105 (= res!336138 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16802 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16802 a!3154)) (= (select (arr!16438 a!3154) resIndex!32) (select (arr!16438 a!3154) j!147))))))

(declare-fun b!541106 () Bool)

(declare-fun res!336142 () Bool)

(assert (=> b!541106 (=> (not res!336142) (not e!313316))))

(assert (=> b!541106 (= res!336142 (and (= (size!16802 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16802 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16802 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!49146 res!336140) b!541106))

(assert (= (and b!541106 res!336142) b!541101))

(assert (= (and b!541101 res!336143) b!541098))

(assert (= (and b!541098 res!336134) b!541103))

(assert (= (and b!541103 res!336135) b!541104))

(assert (= (and b!541104 res!336139) b!541097))

(assert (= (and b!541097 res!336136) b!541096))

(assert (= (and b!541096 res!336137) b!541105))

(assert (= (and b!541105 res!336138) b!541100))

(assert (= (and b!541100 res!336133) b!541099))

(assert (= (and b!541099 res!336141) b!541102))

(declare-fun m!519725 () Bool)

(assert (=> b!541096 m!519725))

(declare-fun m!519727 () Bool)

(assert (=> b!541099 m!519727))

(assert (=> b!541099 m!519727))

(declare-fun m!519729 () Bool)

(assert (=> b!541099 m!519729))

(assert (=> b!541099 m!519729))

(assert (=> b!541099 m!519727))

(declare-fun m!519731 () Bool)

(assert (=> b!541099 m!519731))

(assert (=> b!541101 m!519727))

(assert (=> b!541101 m!519727))

(declare-fun m!519733 () Bool)

(assert (=> b!541101 m!519733))

(declare-fun m!519735 () Bool)

(assert (=> b!541104 m!519735))

(declare-fun m!519737 () Bool)

(assert (=> b!541097 m!519737))

(declare-fun m!519739 () Bool)

(assert (=> start!49146 m!519739))

(declare-fun m!519741 () Bool)

(assert (=> start!49146 m!519741))

(assert (=> b!541100 m!519727))

(assert (=> b!541100 m!519727))

(declare-fun m!519743 () Bool)

(assert (=> b!541100 m!519743))

(declare-fun m!519745 () Bool)

(assert (=> b!541102 m!519745))

(assert (=> b!541102 m!519727))

(declare-fun m!519747 () Bool)

(assert (=> b!541105 m!519747))

(assert (=> b!541105 m!519727))

(declare-fun m!519749 () Bool)

(assert (=> b!541098 m!519749))

(declare-fun m!519751 () Bool)

(assert (=> b!541103 m!519751))

(check-sat (not b!541096) (not b!541100) (not b!541103) (not b!541104) (not b!541101) (not b!541097) (not start!49146) (not b!541099) (not b!541098))
(check-sat)
(get-model)

(declare-fun b!541179 () Bool)

(declare-fun e!313359 () Bool)

(declare-fun lt!247564 () SeekEntryResult!4903)

(assert (=> b!541179 (= e!313359 (bvsge (x!50773 lt!247564) #b01111111111111111111111111111110))))

(declare-fun b!541180 () Bool)

(assert (=> b!541180 (and (bvsge (index!21838 lt!247564) #b00000000000000000000000000000000) (bvslt (index!21838 lt!247564) (size!16802 a!3154)))))

(declare-fun res!336200 () Bool)

(assert (=> b!541180 (= res!336200 (= (select (arr!16438 a!3154) (index!21838 lt!247564)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!313360 () Bool)

(assert (=> b!541180 (=> res!336200 e!313360)))

(declare-fun b!541181 () Bool)

(declare-fun e!313362 () SeekEntryResult!4903)

(assert (=> b!541181 (= e!313362 (Intermediate!4903 false index!1177 x!1030))))

(declare-fun b!541182 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!541182 (= e!313362 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (arr!16438 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!541183 () Bool)

(assert (=> b!541183 (and (bvsge (index!21838 lt!247564) #b00000000000000000000000000000000) (bvslt (index!21838 lt!247564) (size!16802 a!3154)))))

(declare-fun res!336199 () Bool)

(assert (=> b!541183 (= res!336199 (= (select (arr!16438 a!3154) (index!21838 lt!247564)) (select (arr!16438 a!3154) j!147)))))

(assert (=> b!541183 (=> res!336199 e!313360)))

(declare-fun e!313363 () Bool)

(assert (=> b!541183 (= e!313363 e!313360)))

(declare-fun b!541184 () Bool)

(declare-fun e!313361 () SeekEntryResult!4903)

(assert (=> b!541184 (= e!313361 e!313362)))

(declare-fun c!62806 () Bool)

(declare-fun lt!247565 () (_ BitVec 64))

(assert (=> b!541184 (= c!62806 (or (= lt!247565 (select (arr!16438 a!3154) j!147)) (= (bvadd lt!247565 lt!247565) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!81631 () Bool)

(assert (=> d!81631 e!313359))

(declare-fun c!62805 () Bool)

(get-info :version)

(assert (=> d!81631 (= c!62805 (and ((_ is Intermediate!4903) lt!247564) (undefined!5715 lt!247564)))))

(assert (=> d!81631 (= lt!247564 e!313361)))

(declare-fun c!62807 () Bool)

(assert (=> d!81631 (= c!62807 (bvsge x!1030 #b01111111111111111111111111111110))))

(assert (=> d!81631 (= lt!247565 (select (arr!16438 a!3154) index!1177))))

(assert (=> d!81631 (validMask!0 mask!3216)))

(assert (=> d!81631 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16438 a!3154) j!147) a!3154 mask!3216) lt!247564)))

(declare-fun b!541185 () Bool)

(assert (=> b!541185 (= e!313359 e!313363)))

(declare-fun res!336198 () Bool)

(assert (=> b!541185 (= res!336198 (and ((_ is Intermediate!4903) lt!247564) (not (undefined!5715 lt!247564)) (bvslt (x!50773 lt!247564) #b01111111111111111111111111111110) (bvsge (x!50773 lt!247564) #b00000000000000000000000000000000) (bvsge (x!50773 lt!247564) x!1030)))))

(assert (=> b!541185 (=> (not res!336198) (not e!313363))))

(declare-fun b!541186 () Bool)

(assert (=> b!541186 (and (bvsge (index!21838 lt!247564) #b00000000000000000000000000000000) (bvslt (index!21838 lt!247564) (size!16802 a!3154)))))

(assert (=> b!541186 (= e!313360 (= (select (arr!16438 a!3154) (index!21838 lt!247564)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!541187 () Bool)

(assert (=> b!541187 (= e!313361 (Intermediate!4903 true index!1177 x!1030))))

(assert (= (and d!81631 c!62807) b!541187))

(assert (= (and d!81631 (not c!62807)) b!541184))

(assert (= (and b!541184 c!62806) b!541181))

(assert (= (and b!541184 (not c!62806)) b!541182))

(assert (= (and d!81631 c!62805) b!541179))

(assert (= (and d!81631 (not c!62805)) b!541185))

(assert (= (and b!541185 res!336198) b!541183))

(assert (= (and b!541183 (not res!336199)) b!541180))

(assert (= (and b!541180 (not res!336200)) b!541186))

(declare-fun m!519793 () Bool)

(assert (=> b!541180 m!519793))

(declare-fun m!519795 () Bool)

(assert (=> b!541182 m!519795))

(assert (=> b!541182 m!519795))

(assert (=> b!541182 m!519727))

(declare-fun m!519797 () Bool)

(assert (=> b!541182 m!519797))

(assert (=> b!541183 m!519793))

(assert (=> b!541186 m!519793))

(assert (=> d!81631 m!519745))

(assert (=> d!81631 m!519739))

(assert (=> b!541100 d!81631))

(declare-fun e!313396 () SeekEntryResult!4903)

(declare-fun b!541245 () Bool)

(declare-fun lt!247589 () SeekEntryResult!4903)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34212 (_ BitVec 32)) SeekEntryResult!4903)

(assert (=> b!541245 (= e!313396 (seekKeyOrZeroReturnVacant!0 (x!50773 lt!247589) (index!21838 lt!247589) (index!21838 lt!247589) k0!1998 a!3154 mask!3216))))

(declare-fun d!81643 () Bool)

(declare-fun lt!247588 () SeekEntryResult!4903)

(assert (=> d!81643 (and (or ((_ is Undefined!4903) lt!247588) (not ((_ is Found!4903) lt!247588)) (and (bvsge (index!21837 lt!247588) #b00000000000000000000000000000000) (bvslt (index!21837 lt!247588) (size!16802 a!3154)))) (or ((_ is Undefined!4903) lt!247588) ((_ is Found!4903) lt!247588) (not ((_ is MissingZero!4903) lt!247588)) (and (bvsge (index!21836 lt!247588) #b00000000000000000000000000000000) (bvslt (index!21836 lt!247588) (size!16802 a!3154)))) (or ((_ is Undefined!4903) lt!247588) ((_ is Found!4903) lt!247588) ((_ is MissingZero!4903) lt!247588) (not ((_ is MissingVacant!4903) lt!247588)) (and (bvsge (index!21839 lt!247588) #b00000000000000000000000000000000) (bvslt (index!21839 lt!247588) (size!16802 a!3154)))) (or ((_ is Undefined!4903) lt!247588) (ite ((_ is Found!4903) lt!247588) (= (select (arr!16438 a!3154) (index!21837 lt!247588)) k0!1998) (ite ((_ is MissingZero!4903) lt!247588) (= (select (arr!16438 a!3154) (index!21836 lt!247588)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4903) lt!247588) (= (select (arr!16438 a!3154) (index!21839 lt!247588)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!313394 () SeekEntryResult!4903)

(assert (=> d!81643 (= lt!247588 e!313394)))

(declare-fun c!62833 () Bool)

(assert (=> d!81643 (= c!62833 (and ((_ is Intermediate!4903) lt!247589) (undefined!5715 lt!247589)))))

(assert (=> d!81643 (= lt!247589 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1998 mask!3216) k0!1998 a!3154 mask!3216))))

(assert (=> d!81643 (validMask!0 mask!3216)))

(assert (=> d!81643 (= (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216) lt!247588)))

(declare-fun b!541246 () Bool)

(declare-fun e!313395 () SeekEntryResult!4903)

(assert (=> b!541246 (= e!313395 (Found!4903 (index!21838 lt!247589)))))

(declare-fun b!541247 () Bool)

(assert (=> b!541247 (= e!313394 e!313395)))

(declare-fun lt!247587 () (_ BitVec 64))

(assert (=> b!541247 (= lt!247587 (select (arr!16438 a!3154) (index!21838 lt!247589)))))

(declare-fun c!62834 () Bool)

(assert (=> b!541247 (= c!62834 (= lt!247587 k0!1998))))

(declare-fun b!541248 () Bool)

(declare-fun c!62832 () Bool)

(assert (=> b!541248 (= c!62832 (= lt!247587 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!541248 (= e!313395 e!313396)))

(declare-fun b!541249 () Bool)

(assert (=> b!541249 (= e!313394 Undefined!4903)))

(declare-fun b!541250 () Bool)

(assert (=> b!541250 (= e!313396 (MissingZero!4903 (index!21838 lt!247589)))))

(assert (= (and d!81643 c!62833) b!541249))

(assert (= (and d!81643 (not c!62833)) b!541247))

(assert (= (and b!541247 c!62834) b!541246))

(assert (= (and b!541247 (not c!62834)) b!541248))

(assert (= (and b!541248 c!62832) b!541250))

(assert (= (and b!541248 (not c!62832)) b!541245))

(declare-fun m!519819 () Bool)

(assert (=> b!541245 m!519819))

(declare-fun m!519821 () Bool)

(assert (=> d!81643 m!519821))

(assert (=> d!81643 m!519821))

(declare-fun m!519823 () Bool)

(assert (=> d!81643 m!519823))

(declare-fun m!519825 () Bool)

(assert (=> d!81643 m!519825))

(declare-fun m!519827 () Bool)

(assert (=> d!81643 m!519827))

(assert (=> d!81643 m!519739))

(declare-fun m!519829 () Bool)

(assert (=> d!81643 m!519829))

(declare-fun m!519831 () Bool)

(assert (=> b!541247 m!519831))

(assert (=> b!541104 d!81643))

(declare-fun b!541259 () Bool)

(declare-fun e!313401 () Bool)

(declare-fun lt!247594 () SeekEntryResult!4903)

(assert (=> b!541259 (= e!313401 (bvsge (x!50773 lt!247594) #b01111111111111111111111111111110))))

(declare-fun b!541260 () Bool)

(assert (=> b!541260 (and (bvsge (index!21838 lt!247594) #b00000000000000000000000000000000) (bvslt (index!21838 lt!247594) (size!16802 a!3154)))))

(declare-fun res!336212 () Bool)

(assert (=> b!541260 (= res!336212 (= (select (arr!16438 a!3154) (index!21838 lt!247594)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!313402 () Bool)

(assert (=> b!541260 (=> res!336212 e!313402)))

(declare-fun e!313404 () SeekEntryResult!4903)

(declare-fun b!541261 () Bool)

(assert (=> b!541261 (= e!313404 (Intermediate!4903 false (toIndex!0 (select (arr!16438 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!541262 () Bool)

(assert (=> b!541262 (= e!313404 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16438 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (select (arr!16438 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!541263 () Bool)

(assert (=> b!541263 (and (bvsge (index!21838 lt!247594) #b00000000000000000000000000000000) (bvslt (index!21838 lt!247594) (size!16802 a!3154)))))

(declare-fun res!336211 () Bool)

(assert (=> b!541263 (= res!336211 (= (select (arr!16438 a!3154) (index!21838 lt!247594)) (select (arr!16438 a!3154) j!147)))))

(assert (=> b!541263 (=> res!336211 e!313402)))

(declare-fun e!313405 () Bool)

(assert (=> b!541263 (= e!313405 e!313402)))

(declare-fun b!541264 () Bool)

(declare-fun e!313403 () SeekEntryResult!4903)

(assert (=> b!541264 (= e!313403 e!313404)))

(declare-fun lt!247595 () (_ BitVec 64))

(declare-fun c!62840 () Bool)

(assert (=> b!541264 (= c!62840 (or (= lt!247595 (select (arr!16438 a!3154) j!147)) (= (bvadd lt!247595 lt!247595) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!81649 () Bool)

(assert (=> d!81649 e!313401))

(declare-fun c!62839 () Bool)

(assert (=> d!81649 (= c!62839 (and ((_ is Intermediate!4903) lt!247594) (undefined!5715 lt!247594)))))

(assert (=> d!81649 (= lt!247594 e!313403)))

(declare-fun c!62841 () Bool)

(assert (=> d!81649 (= c!62841 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!81649 (= lt!247595 (select (arr!16438 a!3154) (toIndex!0 (select (arr!16438 a!3154) j!147) mask!3216)))))

(assert (=> d!81649 (validMask!0 mask!3216)))

(assert (=> d!81649 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16438 a!3154) j!147) mask!3216) (select (arr!16438 a!3154) j!147) a!3154 mask!3216) lt!247594)))

(declare-fun b!541265 () Bool)

(assert (=> b!541265 (= e!313401 e!313405)))

(declare-fun res!336210 () Bool)

(assert (=> b!541265 (= res!336210 (and ((_ is Intermediate!4903) lt!247594) (not (undefined!5715 lt!247594)) (bvslt (x!50773 lt!247594) #b01111111111111111111111111111110) (bvsge (x!50773 lt!247594) #b00000000000000000000000000000000) (bvsge (x!50773 lt!247594) #b00000000000000000000000000000000)))))

(assert (=> b!541265 (=> (not res!336210) (not e!313405))))

(declare-fun b!541266 () Bool)

(assert (=> b!541266 (and (bvsge (index!21838 lt!247594) #b00000000000000000000000000000000) (bvslt (index!21838 lt!247594) (size!16802 a!3154)))))

(assert (=> b!541266 (= e!313402 (= (select (arr!16438 a!3154) (index!21838 lt!247594)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!541267 () Bool)

(assert (=> b!541267 (= e!313403 (Intermediate!4903 true (toIndex!0 (select (arr!16438 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(assert (= (and d!81649 c!62841) b!541267))

(assert (= (and d!81649 (not c!62841)) b!541264))

(assert (= (and b!541264 c!62840) b!541261))

(assert (= (and b!541264 (not c!62840)) b!541262))

(assert (= (and d!81649 c!62839) b!541259))

(assert (= (and d!81649 (not c!62839)) b!541265))

(assert (= (and b!541265 res!336210) b!541263))

(assert (= (and b!541263 (not res!336211)) b!541260))

(assert (= (and b!541260 (not res!336212)) b!541266))

(declare-fun m!519833 () Bool)

(assert (=> b!541260 m!519833))

(assert (=> b!541262 m!519729))

(declare-fun m!519835 () Bool)

(assert (=> b!541262 m!519835))

(assert (=> b!541262 m!519835))

(assert (=> b!541262 m!519727))

(declare-fun m!519837 () Bool)

(assert (=> b!541262 m!519837))

(assert (=> b!541263 m!519833))

(assert (=> b!541266 m!519833))

(assert (=> d!81649 m!519729))

(declare-fun m!519839 () Bool)

(assert (=> d!81649 m!519839))

(assert (=> d!81649 m!519739))

(assert (=> b!541099 d!81649))

(declare-fun d!81651 () Bool)

(declare-fun lt!247603 () (_ BitVec 32))

(declare-fun lt!247602 () (_ BitVec 32))

(assert (=> d!81651 (= lt!247603 (bvmul (bvxor lt!247602 (bvlshr lt!247602 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!81651 (= lt!247602 ((_ extract 31 0) (bvand (bvxor (select (arr!16438 a!3154) j!147) (bvlshr (select (arr!16438 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!81651 (and (bvsge mask!3216 #b00000000000000000000000000000000) (let ((res!336219 (let ((h!11557 ((_ extract 31 0) (bvand (bvxor (select (arr!16438 a!3154) j!147) (bvlshr (select (arr!16438 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!50778 (bvmul (bvxor h!11557 (bvlshr h!11557 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!50778 (bvlshr x!50778 #b00000000000000000000000000001101)) mask!3216))))) (and (bvslt res!336219 (bvadd mask!3216 #b00000000000000000000000000000001)) (bvsge res!336219 #b00000000000000000000000000000000))))))

(assert (=> d!81651 (= (toIndex!0 (select (arr!16438 a!3154) j!147) mask!3216) (bvand (bvxor lt!247603 (bvlshr lt!247603 #b00000000000000000000000000001101)) mask!3216))))

(assert (=> b!541099 d!81651))

(declare-fun b!541316 () Bool)

(declare-fun e!313434 () Bool)

(declare-fun e!313435 () Bool)

(assert (=> b!541316 (= e!313434 e!313435)))

(declare-fun c!62858 () Bool)

(assert (=> b!541316 (= c!62858 (validKeyInArray!0 (select (arr!16438 a!3154) #b00000000000000000000000000000000)))))

(declare-fun d!81655 () Bool)

(declare-fun res!336232 () Bool)

(assert (=> d!81655 (=> res!336232 e!313434)))

(assert (=> d!81655 (= res!336232 (bvsge #b00000000000000000000000000000000 (size!16802 a!3154)))))

(assert (=> d!81655 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!313434)))

(declare-fun b!541317 () Bool)

(declare-fun e!313436 () Bool)

(assert (=> b!541317 (= e!313435 e!313436)))

(declare-fun lt!247626 () (_ BitVec 64))

(assert (=> b!541317 (= lt!247626 (select (arr!16438 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16868 0))(
  ( (Unit!16869) )
))
(declare-fun lt!247624 () Unit!16868)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34212 (_ BitVec 64) (_ BitVec 32)) Unit!16868)

(assert (=> b!541317 (= lt!247624 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!247626 #b00000000000000000000000000000000))))

(assert (=> b!541317 (arrayContainsKey!0 a!3154 lt!247626 #b00000000000000000000000000000000)))

(declare-fun lt!247625 () Unit!16868)

(assert (=> b!541317 (= lt!247625 lt!247624)))

(declare-fun res!336231 () Bool)

(assert (=> b!541317 (= res!336231 (= (seekEntryOrOpen!0 (select (arr!16438 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4903 #b00000000000000000000000000000000)))))

(assert (=> b!541317 (=> (not res!336231) (not e!313436))))

(declare-fun b!541318 () Bool)

(declare-fun call!32036 () Bool)

(assert (=> b!541318 (= e!313436 call!32036)))

(declare-fun bm!32033 () Bool)

(assert (=> bm!32033 (= call!32036 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(declare-fun b!541319 () Bool)

(assert (=> b!541319 (= e!313435 call!32036)))

(assert (= (and d!81655 (not res!336232)) b!541316))

(assert (= (and b!541316 c!62858) b!541317))

(assert (= (and b!541316 (not c!62858)) b!541319))

(assert (= (and b!541317 res!336231) b!541318))

(assert (= (or b!541318 b!541319) bm!32033))

(declare-fun m!519855 () Bool)

(assert (=> b!541316 m!519855))

(assert (=> b!541316 m!519855))

(declare-fun m!519857 () Bool)

(assert (=> b!541316 m!519857))

(assert (=> b!541317 m!519855))

(declare-fun m!519859 () Bool)

(assert (=> b!541317 m!519859))

(declare-fun m!519861 () Bool)

(assert (=> b!541317 m!519861))

(assert (=> b!541317 m!519855))

(declare-fun m!519863 () Bool)

(assert (=> b!541317 m!519863))

(declare-fun m!519865 () Bool)

(assert (=> bm!32033 m!519865))

(assert (=> b!541097 d!81655))

(declare-fun d!81661 () Bool)

(assert (=> d!81661 (= (validKeyInArray!0 k0!1998) (and (not (= k0!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!541098 d!81661))

(declare-fun d!81667 () Bool)

(declare-fun res!336241 () Bool)

(declare-fun e!313450 () Bool)

(assert (=> d!81667 (=> res!336241 e!313450)))

(assert (=> d!81667 (= res!336241 (= (select (arr!16438 a!3154) #b00000000000000000000000000000000) k0!1998))))

(assert (=> d!81667 (= (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000) e!313450)))

(declare-fun b!541338 () Bool)

(declare-fun e!313451 () Bool)

(assert (=> b!541338 (= e!313450 e!313451)))

(declare-fun res!336242 () Bool)

(assert (=> b!541338 (=> (not res!336242) (not e!313451))))

(assert (=> b!541338 (= res!336242 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16802 a!3154)))))

(declare-fun b!541339 () Bool)

(assert (=> b!541339 (= e!313451 (arrayContainsKey!0 a!3154 k0!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81667 (not res!336241)) b!541338))

(assert (= (and b!541338 res!336242) b!541339))

(assert (=> d!81667 m!519855))

(declare-fun m!519881 () Bool)

(assert (=> b!541339 m!519881))

(assert (=> b!541103 d!81667))

(declare-fun b!541354 () Bool)

(declare-fun e!313463 () Bool)

(declare-fun contains!2805 (List!10610 (_ BitVec 64)) Bool)

(assert (=> b!541354 (= e!313463 (contains!2805 Nil!10607 (select (arr!16438 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!541355 () Bool)

(declare-fun e!313464 () Bool)

(declare-fun e!313466 () Bool)

(assert (=> b!541355 (= e!313464 e!313466)))

(declare-fun c!62867 () Bool)

(assert (=> b!541355 (= c!62867 (validKeyInArray!0 (select (arr!16438 a!3154) #b00000000000000000000000000000000)))))

(declare-fun d!81669 () Bool)

(declare-fun res!336253 () Bool)

(declare-fun e!313465 () Bool)

(assert (=> d!81669 (=> res!336253 e!313465)))

(assert (=> d!81669 (= res!336253 (bvsge #b00000000000000000000000000000000 (size!16802 a!3154)))))

(assert (=> d!81669 (= (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10607) e!313465)))

(declare-fun b!541356 () Bool)

(assert (=> b!541356 (= e!313465 e!313464)))

(declare-fun res!336252 () Bool)

(assert (=> b!541356 (=> (not res!336252) (not e!313464))))

(assert (=> b!541356 (= res!336252 (not e!313463))))

(declare-fun res!336251 () Bool)

(assert (=> b!541356 (=> (not res!336251) (not e!313463))))

(assert (=> b!541356 (= res!336251 (validKeyInArray!0 (select (arr!16438 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!541357 () Bool)

(declare-fun call!32042 () Bool)

(assert (=> b!541357 (= e!313466 call!32042)))

(declare-fun b!541358 () Bool)

(assert (=> b!541358 (= e!313466 call!32042)))

(declare-fun bm!32039 () Bool)

(assert (=> bm!32039 (= call!32042 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!62867 (Cons!10606 (select (arr!16438 a!3154) #b00000000000000000000000000000000) Nil!10607) Nil!10607)))))

(assert (= (and d!81669 (not res!336253)) b!541356))

(assert (= (and b!541356 res!336251) b!541354))

(assert (= (and b!541356 res!336252) b!541355))

(assert (= (and b!541355 c!62867) b!541357))

(assert (= (and b!541355 (not c!62867)) b!541358))

(assert (= (or b!541357 b!541358) bm!32039))

(assert (=> b!541354 m!519855))

(assert (=> b!541354 m!519855))

(declare-fun m!519893 () Bool)

(assert (=> b!541354 m!519893))

(assert (=> b!541355 m!519855))

(assert (=> b!541355 m!519855))

(assert (=> b!541355 m!519857))

(assert (=> b!541356 m!519855))

(assert (=> b!541356 m!519855))

(assert (=> b!541356 m!519857))

(assert (=> bm!32039 m!519855))

(declare-fun m!519895 () Bool)

(assert (=> bm!32039 m!519895))

(assert (=> b!541096 d!81669))

(declare-fun d!81675 () Bool)

(assert (=> d!81675 (= (validKeyInArray!0 (select (arr!16438 a!3154) j!147)) (and (not (= (select (arr!16438 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16438 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!541101 d!81675))

(declare-fun d!81677 () Bool)

(assert (=> d!81677 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!49146 d!81677))

(declare-fun d!81693 () Bool)

(assert (=> d!81693 (= (array_inv!12212 a!3154) (bvsge (size!16802 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!49146 d!81693))

(check-sat (not b!541355) (not bm!32033) (not b!541316) (not bm!32039) (not b!541356) (not b!541245) (not d!81631) (not b!541262) (not b!541354) (not b!541182) (not d!81643) (not d!81649) (not b!541317) (not b!541339))
(check-sat)
