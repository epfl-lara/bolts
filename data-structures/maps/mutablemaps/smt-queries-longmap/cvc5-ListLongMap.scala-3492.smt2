; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48436 () Bool)

(assert start!48436)

(declare-fun b!531890 () Bool)

(declare-fun res!327536 () Bool)

(declare-fun e!309727 () Bool)

(assert (=> b!531890 (=> (not res!327536) (not e!309727))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!531890 (= res!327536 (validKeyInArray!0 k!1998))))

(declare-fun b!531891 () Bool)

(declare-fun res!327531 () Bool)

(declare-fun e!309726 () Bool)

(assert (=> b!531891 (=> (not res!327531) (not e!309726))))

(declare-datatypes ((array!33700 0))(
  ( (array!33701 (arr!16188 (Array (_ BitVec 32) (_ BitVec 64))) (size!16552 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33700)

(declare-datatypes ((List!10360 0))(
  ( (Nil!10357) (Cons!10356 (h!11296 (_ BitVec 64)) (t!16596 List!10360)) )
))
(declare-fun arrayNoDuplicates!0 (array!33700 (_ BitVec 32) List!10360) Bool)

(assert (=> b!531891 (= res!327531 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10357))))

(declare-fun b!531892 () Bool)

(declare-fun res!327535 () Bool)

(assert (=> b!531892 (=> (not res!327535) (not e!309726))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!531892 (= res!327535 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16552 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16552 a!3154)) (= (select (arr!16188 a!3154) resIndex!32) (select (arr!16188 a!3154) j!147))))))

(declare-fun b!531893 () Bool)

(declare-fun mask!3216 () (_ BitVec 32))

(assert (=> b!531893 (= e!309726 (and (bvsge mask!3216 #b00000000000000000000000000000000) (bvsgt mask!3216 #b00111111111111111111111111111111)))))

(declare-fun b!531894 () Bool)

(declare-fun res!327537 () Bool)

(assert (=> b!531894 (=> (not res!327537) (not e!309727))))

(assert (=> b!531894 (= res!327537 (validKeyInArray!0 (select (arr!16188 a!3154) j!147)))))

(declare-fun b!531895 () Bool)

(declare-fun res!327530 () Bool)

(assert (=> b!531895 (=> (not res!327530) (not e!309727))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!531895 (= res!327530 (and (= (size!16552 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16552 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16552 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!531896 () Bool)

(declare-fun res!327539 () Bool)

(assert (=> b!531896 (=> (not res!327539) (not e!309726))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33700 (_ BitVec 32)) Bool)

(assert (=> b!531896 (= res!327539 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!327532 () Bool)

(assert (=> start!48436 (=> (not res!327532) (not e!309727))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48436 (= res!327532 (validMask!0 mask!3216))))

(assert (=> start!48436 e!309727))

(assert (=> start!48436 true))

(declare-fun array_inv!11962 (array!33700) Bool)

(assert (=> start!48436 (array_inv!11962 a!3154)))

(declare-fun b!531897 () Bool)

(declare-fun res!327534 () Bool)

(assert (=> b!531897 (=> (not res!327534) (not e!309726))))

(declare-datatypes ((SeekEntryResult!4653 0))(
  ( (MissingZero!4653 (index!20836 (_ BitVec 32))) (Found!4653 (index!20837 (_ BitVec 32))) (Intermediate!4653 (undefined!5465 Bool) (index!20838 (_ BitVec 32)) (x!49838 (_ BitVec 32))) (Undefined!4653) (MissingVacant!4653 (index!20839 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33700 (_ BitVec 32)) SeekEntryResult!4653)

(assert (=> b!531897 (= res!327534 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16188 a!3154) j!147) a!3154 mask!3216) (Intermediate!4653 false resIndex!32 resX!32)))))

(declare-fun b!531898 () Bool)

(declare-fun res!327538 () Bool)

(assert (=> b!531898 (=> (not res!327538) (not e!309727))))

(declare-fun arrayContainsKey!0 (array!33700 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!531898 (= res!327538 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!531899 () Bool)

(assert (=> b!531899 (= e!309727 e!309726)))

(declare-fun res!327533 () Bool)

(assert (=> b!531899 (=> (not res!327533) (not e!309726))))

(declare-fun lt!245084 () SeekEntryResult!4653)

(assert (=> b!531899 (= res!327533 (or (= lt!245084 (MissingZero!4653 i!1153)) (= lt!245084 (MissingVacant!4653 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33700 (_ BitVec 32)) SeekEntryResult!4653)

(assert (=> b!531899 (= lt!245084 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(assert (= (and start!48436 res!327532) b!531895))

(assert (= (and b!531895 res!327530) b!531894))

(assert (= (and b!531894 res!327537) b!531890))

(assert (= (and b!531890 res!327536) b!531898))

(assert (= (and b!531898 res!327538) b!531899))

(assert (= (and b!531899 res!327533) b!531896))

(assert (= (and b!531896 res!327539) b!531891))

(assert (= (and b!531891 res!327531) b!531892))

(assert (= (and b!531892 res!327535) b!531897))

(assert (= (and b!531897 res!327534) b!531893))

(declare-fun m!512221 () Bool)

(assert (=> b!531894 m!512221))

(assert (=> b!531894 m!512221))

(declare-fun m!512223 () Bool)

(assert (=> b!531894 m!512223))

(declare-fun m!512225 () Bool)

(assert (=> b!531890 m!512225))

(declare-fun m!512227 () Bool)

(assert (=> b!531898 m!512227))

(declare-fun m!512229 () Bool)

(assert (=> b!531891 m!512229))

(declare-fun m!512231 () Bool)

(assert (=> b!531896 m!512231))

(declare-fun m!512233 () Bool)

(assert (=> b!531892 m!512233))

(assert (=> b!531892 m!512221))

(declare-fun m!512235 () Bool)

(assert (=> b!531899 m!512235))

(declare-fun m!512237 () Bool)

(assert (=> start!48436 m!512237))

(declare-fun m!512239 () Bool)

(assert (=> start!48436 m!512239))

(assert (=> b!531897 m!512221))

(assert (=> b!531897 m!512221))

(declare-fun m!512241 () Bool)

(assert (=> b!531897 m!512241))

(push 1)

(assert (not b!531890))

(assert (not b!531898))

(assert (not b!531894))

(assert (not start!48436))

(assert (not b!531897))

(assert (not b!531891))

(assert (not b!531899))

(assert (not b!531896))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!81227 () Bool)

(declare-fun lt!245106 () SeekEntryResult!4653)

(assert (=> d!81227 (and (or (is-Undefined!4653 lt!245106) (not (is-Found!4653 lt!245106)) (and (bvsge (index!20837 lt!245106) #b00000000000000000000000000000000) (bvslt (index!20837 lt!245106) (size!16552 a!3154)))) (or (is-Undefined!4653 lt!245106) (is-Found!4653 lt!245106) (not (is-MissingZero!4653 lt!245106)) (and (bvsge (index!20836 lt!245106) #b00000000000000000000000000000000) (bvslt (index!20836 lt!245106) (size!16552 a!3154)))) (or (is-Undefined!4653 lt!245106) (is-Found!4653 lt!245106) (is-MissingZero!4653 lt!245106) (not (is-MissingVacant!4653 lt!245106)) (and (bvsge (index!20839 lt!245106) #b00000000000000000000000000000000) (bvslt (index!20839 lt!245106) (size!16552 a!3154)))) (or (is-Undefined!4653 lt!245106) (ite (is-Found!4653 lt!245106) (= (select (arr!16188 a!3154) (index!20837 lt!245106)) k!1998) (ite (is-MissingZero!4653 lt!245106) (= (select (arr!16188 a!3154) (index!20836 lt!245106)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4653 lt!245106) (= (select (arr!16188 a!3154) (index!20839 lt!245106)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!309793 () SeekEntryResult!4653)

(assert (=> d!81227 (= lt!245106 e!309793)))

(declare-fun c!62513 () Bool)

(declare-fun lt!245107 () SeekEntryResult!4653)

(assert (=> d!81227 (= c!62513 (and (is-Intermediate!4653 lt!245107) (undefined!5465 lt!245107)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!81227 (= lt!245107 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1998 mask!3216) k!1998 a!3154 mask!3216))))

(assert (=> d!81227 (validMask!0 mask!3216)))

(assert (=> d!81227 (= (seekEntryOrOpen!0 k!1998 a!3154 mask!3216) lt!245106)))

(declare-fun b!532026 () Bool)

(declare-fun e!309791 () SeekEntryResult!4653)

(assert (=> b!532026 (= e!309791 (Found!4653 (index!20838 lt!245107)))))

(declare-fun b!532027 () Bool)

(declare-fun e!309792 () SeekEntryResult!4653)

(assert (=> b!532027 (= e!309792 (MissingZero!4653 (index!20838 lt!245107)))))

(declare-fun b!532028 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33700 (_ BitVec 32)) SeekEntryResult!4653)

(assert (=> b!532028 (= e!309792 (seekKeyOrZeroReturnVacant!0 (x!49838 lt!245107) (index!20838 lt!245107) (index!20838 lt!245107) k!1998 a!3154 mask!3216))))

(declare-fun b!532029 () Bool)

(declare-fun c!62511 () Bool)

(declare-fun lt!245108 () (_ BitVec 64))

(assert (=> b!532029 (= c!62511 (= lt!245108 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!532029 (= e!309791 e!309792)))

(declare-fun b!532030 () Bool)

(assert (=> b!532030 (= e!309793 Undefined!4653)))

(declare-fun b!532031 () Bool)

(assert (=> b!532031 (= e!309793 e!309791)))

(assert (=> b!532031 (= lt!245108 (select (arr!16188 a!3154) (index!20838 lt!245107)))))

(declare-fun c!62512 () Bool)

(assert (=> b!532031 (= c!62512 (= lt!245108 k!1998))))

(assert (= (and d!81227 c!62513) b!532030))

(assert (= (and d!81227 (not c!62513)) b!532031))

(assert (= (and b!532031 c!62512) b!532026))

(assert (= (and b!532031 (not c!62512)) b!532029))

(assert (= (and b!532029 c!62511) b!532027))

(assert (= (and b!532029 (not c!62511)) b!532028))

(declare-fun m!512319 () Bool)

(assert (=> d!81227 m!512319))

(declare-fun m!512321 () Bool)

(assert (=> d!81227 m!512321))

(declare-fun m!512323 () Bool)

(assert (=> d!81227 m!512323))

(assert (=> d!81227 m!512237))

(declare-fun m!512325 () Bool)

(assert (=> d!81227 m!512325))

(assert (=> d!81227 m!512325))

(declare-fun m!512327 () Bool)

(assert (=> d!81227 m!512327))

(declare-fun m!512329 () Bool)

(assert (=> b!532028 m!512329))

(declare-fun m!512331 () Bool)

(assert (=> b!532031 m!512331))

(assert (=> b!531899 d!81227))

(declare-fun d!81239 () Bool)

(assert (=> d!81239 (= (validKeyInArray!0 (select (arr!16188 a!3154) j!147)) (and (not (= (select (arr!16188 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16188 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!531894 d!81239))

(declare-fun d!81241 () Bool)

(declare-fun res!327632 () Bool)

(declare-fun e!309804 () Bool)

(assert (=> d!81241 (=> res!327632 e!309804)))

(assert (=> d!81241 (= res!327632 (= (select (arr!16188 a!3154) #b00000000000000000000000000000000) k!1998))))

(assert (=> d!81241 (= (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000) e!309804)))

(declare-fun b!532044 () Bool)

(declare-fun e!309805 () Bool)

(assert (=> b!532044 (= e!309804 e!309805)))

(declare-fun res!327633 () Bool)

(assert (=> b!532044 (=> (not res!327633) (not e!309805))))

(assert (=> b!532044 (= res!327633 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16552 a!3154)))))

(declare-fun b!532045 () Bool)

(assert (=> b!532045 (= e!309805 (arrayContainsKey!0 a!3154 k!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81241 (not res!327632)) b!532044))

(assert (= (and b!532044 res!327633) b!532045))

(declare-fun m!512333 () Bool)

(assert (=> d!81241 m!512333))

(declare-fun m!512335 () Bool)

(assert (=> b!532045 m!512335))

(assert (=> b!531898 d!81241))

(declare-fun b!532064 () Bool)

(declare-fun e!309821 () Bool)

(declare-fun e!309822 () Bool)

(assert (=> b!532064 (= e!309821 e!309822)))

(declare-fun lt!245124 () (_ BitVec 64))

(assert (=> b!532064 (= lt!245124 (select (arr!16188 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16812 0))(
  ( (Unit!16813) )
))
(declare-fun lt!245126 () Unit!16812)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33700 (_ BitVec 64) (_ BitVec 32)) Unit!16812)

(assert (=> b!532064 (= lt!245126 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!245124 #b00000000000000000000000000000000))))

(assert (=> b!532064 (arrayContainsKey!0 a!3154 lt!245124 #b00000000000000000000000000000000)))

(declare-fun lt!245125 () Unit!16812)

(assert (=> b!532064 (= lt!245125 lt!245126)))

(declare-fun res!327647 () Bool)

(assert (=> b!532064 (= res!327647 (= (seekEntryOrOpen!0 (select (arr!16188 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4653 #b00000000000000000000000000000000)))))

(assert (=> b!532064 (=> (not res!327647) (not e!309822))))

(declare-fun b!532065 () Bool)

(declare-fun call!31970 () Bool)

(assert (=> b!532065 (= e!309822 call!31970)))

(declare-fun d!81243 () Bool)

(declare-fun res!327646 () Bool)

(declare-fun e!309823 () Bool)

(assert (=> d!81243 (=> res!327646 e!309823)))

(assert (=> d!81243 (= res!327646 (bvsge #b00000000000000000000000000000000 (size!16552 a!3154)))))

(assert (=> d!81243 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!309823)))

(declare-fun b!532066 () Bool)

(assert (=> b!532066 (= e!309821 call!31970)))

(declare-fun b!532067 () Bool)

(assert (=> b!532067 (= e!309823 e!309821)))

(declare-fun c!62519 () Bool)

(assert (=> b!532067 (= c!62519 (validKeyInArray!0 (select (arr!16188 a!3154) #b00000000000000000000000000000000)))))

(declare-fun bm!31967 () Bool)

(assert (=> bm!31967 (= call!31970 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(assert (= (and d!81243 (not res!327646)) b!532067))

(assert (= (and b!532067 c!62519) b!532064))

(assert (= (and b!532067 (not c!62519)) b!532066))

(assert (= (and b!532064 res!327647) b!532065))

(assert (= (or b!532065 b!532066) bm!31967))

(assert (=> b!532064 m!512333))

(declare-fun m!512347 () Bool)

(assert (=> b!532064 m!512347))

(declare-fun m!512349 () Bool)

(assert (=> b!532064 m!512349))

(assert (=> b!532064 m!512333))

(declare-fun m!512351 () Bool)

(assert (=> b!532064 m!512351))

(assert (=> b!532067 m!512333))

(assert (=> b!532067 m!512333))

(declare-fun m!512353 () Bool)

(assert (=> b!532067 m!512353))

(declare-fun m!512355 () Bool)

(assert (=> bm!31967 m!512355))

(assert (=> b!531896 d!81243))

(declare-fun b!532078 () Bool)

(declare-fun e!309833 () Bool)

(declare-fun e!309835 () Bool)

(assert (=> b!532078 (= e!309833 e!309835)))

(declare-fun res!327655 () Bool)

(assert (=> b!532078 (=> (not res!327655) (not e!309835))))

(declare-fun e!309832 () Bool)

(assert (=> b!532078 (= res!327655 (not e!309832))))

(declare-fun res!327654 () Bool)

(assert (=> b!532078 (=> (not res!327654) (not e!309832))))

(assert (=> b!532078 (= res!327654 (validKeyInArray!0 (select (arr!16188 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!532079 () Bool)

(declare-fun e!309834 () Bool)

(assert (=> b!532079 (= e!309835 e!309834)))

(declare-fun c!62522 () Bool)

(assert (=> b!532079 (= c!62522 (validKeyInArray!0 (select (arr!16188 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!532080 () Bool)

(declare-fun call!31973 () Bool)

(assert (=> b!532080 (= e!309834 call!31973)))

(declare-fun b!532081 () Bool)

(assert (=> b!532081 (= e!309834 call!31973)))

(declare-fun d!81255 () Bool)

(declare-fun res!327656 () Bool)

(assert (=> d!81255 (=> res!327656 e!309833)))

(assert (=> d!81255 (= res!327656 (bvsge #b00000000000000000000000000000000 (size!16552 a!3154)))))

(assert (=> d!81255 (= (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10357) e!309833)))

(declare-fun b!532082 () Bool)

(declare-fun contains!2794 (List!10360 (_ BitVec 64)) Bool)

(assert (=> b!532082 (= e!309832 (contains!2794 Nil!10357 (select (arr!16188 a!3154) #b00000000000000000000000000000000)))))

(declare-fun bm!31970 () Bool)

(assert (=> bm!31970 (= call!31973 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!62522 (Cons!10356 (select (arr!16188 a!3154) #b00000000000000000000000000000000) Nil!10357) Nil!10357)))))

(assert (= (and d!81255 (not res!327656)) b!532078))

(assert (= (and b!532078 res!327654) b!532082))

(assert (= (and b!532078 res!327655) b!532079))

(assert (= (and b!532079 c!62522) b!532081))

(assert (= (and b!532079 (not c!62522)) b!532080))

(assert (= (or b!532081 b!532080) bm!31970))

(assert (=> b!532078 m!512333))

(assert (=> b!532078 m!512333))

(assert (=> b!532078 m!512353))

(assert (=> b!532079 m!512333))

(assert (=> b!532079 m!512333))

(assert (=> b!532079 m!512353))

(assert (=> b!532082 m!512333))

(assert (=> b!532082 m!512333))

(declare-fun m!512357 () Bool)

(assert (=> b!532082 m!512357))

(assert (=> bm!31970 m!512333))

(declare-fun m!512359 () Bool)

(assert (=> bm!31970 m!512359))

(assert (=> b!531891 d!81255))

(declare-fun d!81261 () Bool)

(assert (=> d!81261 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!48436 d!81261))

(declare-fun d!81265 () Bool)

(assert (=> d!81265 (= (array_inv!11962 a!3154) (bvsge (size!16552 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!48436 d!81265))

(declare-fun b!532158 () Bool)

(declare-fun e!309880 () Bool)

(declare-fun lt!245155 () SeekEntryResult!4653)

(assert (=> b!532158 (= e!309880 (bvsge (x!49838 lt!245155) #b01111111111111111111111111111110))))

(declare-fun d!81267 () Bool)

(assert (=> d!81267 e!309880))

(declare-fun c!62552 () Bool)

(assert (=> d!81267 (= c!62552 (and (is-Intermediate!4653 lt!245155) (undefined!5465 lt!245155)))))

(declare-fun e!309879 () SeekEntryResult!4653)

