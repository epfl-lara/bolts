; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46430 () Bool)

(assert start!46430)

(declare-fun b!513394 () Bool)

(declare-fun res!313847 () Bool)

(declare-fun e!299786 () Bool)

(assert (=> b!513394 (=> (not res!313847) (not e!299786))))

(declare-datatypes ((array!32930 0))(
  ( (array!32931 (arr!15836 (Array (_ BitVec 32) (_ BitVec 64))) (size!16200 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32930)

(declare-datatypes ((List!10047 0))(
  ( (Nil!10044) (Cons!10043 (h!10929 (_ BitVec 64)) (t!16283 List!10047)) )
))
(declare-fun arrayNoDuplicates!0 (array!32930 (_ BitVec 32) List!10047) Bool)

(assert (=> b!513394 (= res!313847 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10044))))

(declare-fun b!513396 () Bool)

(declare-fun res!313840 () Bool)

(declare-fun e!299788 () Bool)

(assert (=> b!513396 (=> (not res!313840) (not e!299788))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!513396 (= res!313840 (validKeyInArray!0 (select (arr!15836 a!3235) j!176)))))

(declare-fun b!513397 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!299785 () Bool)

(declare-datatypes ((SeekEntryResult!4310 0))(
  ( (MissingZero!4310 (index!19428 (_ BitVec 32))) (Found!4310 (index!19429 (_ BitVec 32))) (Intermediate!4310 (undefined!5122 Bool) (index!19430 (_ BitVec 32)) (x!48404 (_ BitVec 32))) (Undefined!4310) (MissingVacant!4310 (index!19431 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32930 (_ BitVec 32)) SeekEntryResult!4310)

(assert (=> b!513397 (= e!299785 (= (seekEntryOrOpen!0 (select (arr!15836 a!3235) j!176) a!3235 mask!3524) (Found!4310 j!176)))))

(declare-fun b!513398 () Bool)

(declare-fun res!313842 () Bool)

(assert (=> b!513398 (=> (not res!313842) (not e!299788))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32930 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!513398 (= res!313842 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!513399 () Bool)

(declare-fun e!299787 () Bool)

(assert (=> b!513399 (= e!299786 (not e!299787))))

(declare-fun res!313844 () Bool)

(assert (=> b!513399 (=> res!313844 e!299787)))

(declare-fun lt!235096 () SeekEntryResult!4310)

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!235098 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32930 (_ BitVec 32)) SeekEntryResult!4310)

(assert (=> b!513399 (= res!313844 (= lt!235096 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235098 (select (store (arr!15836 a!3235) i!1204 k!2280) j!176) (array!32931 (store (arr!15836 a!3235) i!1204 k!2280) (size!16200 a!3235)) mask!3524)))))

(declare-fun lt!235099 () (_ BitVec 32))

(assert (=> b!513399 (= lt!235096 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235099 (select (arr!15836 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!513399 (= lt!235098 (toIndex!0 (select (store (arr!15836 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!513399 (= lt!235099 (toIndex!0 (select (arr!15836 a!3235) j!176) mask!3524))))

(assert (=> b!513399 e!299785))

(declare-fun res!313850 () Bool)

(assert (=> b!513399 (=> (not res!313850) (not e!299785))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32930 (_ BitVec 32)) Bool)

(assert (=> b!513399 (= res!313850 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15870 0))(
  ( (Unit!15871) )
))
(declare-fun lt!235100 () Unit!15870)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32930 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15870)

(assert (=> b!513399 (= lt!235100 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!513400 () Bool)

(declare-fun res!313845 () Bool)

(assert (=> b!513400 (=> (not res!313845) (not e!299786))))

(assert (=> b!513400 (= res!313845 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!513401 () Bool)

(assert (=> b!513401 (= e!299787 (or (= (select (arr!15836 a!3235) (index!19430 lt!235096)) (select (arr!15836 a!3235) j!176)) (and (bvsge (index!19430 lt!235096) #b00000000000000000000000000000000) (bvslt (index!19430 lt!235096) (size!16200 a!3235)))))))

(assert (=> b!513401 (bvslt (x!48404 lt!235096) #b01111111111111111111111111111110)))

(declare-fun b!513402 () Bool)

(assert (=> b!513402 (= e!299788 e!299786)))

(declare-fun res!313848 () Bool)

(assert (=> b!513402 (=> (not res!313848) (not e!299786))))

(declare-fun lt!235097 () SeekEntryResult!4310)

(assert (=> b!513402 (= res!313848 (or (= lt!235097 (MissingZero!4310 i!1204)) (= lt!235097 (MissingVacant!4310 i!1204))))))

(assert (=> b!513402 (= lt!235097 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!513403 () Bool)

(declare-fun res!313843 () Bool)

(assert (=> b!513403 (=> (not res!313843) (not e!299788))))

(assert (=> b!513403 (= res!313843 (and (= (size!16200 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16200 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16200 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!513404 () Bool)

(declare-fun res!313849 () Bool)

(assert (=> b!513404 (=> (not res!313849) (not e!299788))))

(assert (=> b!513404 (= res!313849 (validKeyInArray!0 k!2280))))

(declare-fun b!513395 () Bool)

(declare-fun res!313841 () Bool)

(assert (=> b!513395 (=> res!313841 e!299787)))

(assert (=> b!513395 (= res!313841 (or (undefined!5122 lt!235096) (not (is-Intermediate!4310 lt!235096))))))

(declare-fun res!313846 () Bool)

(assert (=> start!46430 (=> (not res!313846) (not e!299788))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46430 (= res!313846 (validMask!0 mask!3524))))

(assert (=> start!46430 e!299788))

(assert (=> start!46430 true))

(declare-fun array_inv!11610 (array!32930) Bool)

(assert (=> start!46430 (array_inv!11610 a!3235)))

(assert (= (and start!46430 res!313846) b!513403))

(assert (= (and b!513403 res!313843) b!513396))

(assert (= (and b!513396 res!313840) b!513404))

(assert (= (and b!513404 res!313849) b!513398))

(assert (= (and b!513398 res!313842) b!513402))

(assert (= (and b!513402 res!313848) b!513400))

(assert (= (and b!513400 res!313845) b!513394))

(assert (= (and b!513394 res!313847) b!513399))

(assert (= (and b!513399 res!313850) b!513397))

(assert (= (and b!513399 (not res!313844)) b!513395))

(assert (= (and b!513395 (not res!313841)) b!513401))

(declare-fun m!495011 () Bool)

(assert (=> b!513394 m!495011))

(declare-fun m!495013 () Bool)

(assert (=> b!513402 m!495013))

(declare-fun m!495015 () Bool)

(assert (=> b!513396 m!495015))

(assert (=> b!513396 m!495015))

(declare-fun m!495017 () Bool)

(assert (=> b!513396 m!495017))

(declare-fun m!495019 () Bool)

(assert (=> b!513399 m!495019))

(declare-fun m!495021 () Bool)

(assert (=> b!513399 m!495021))

(declare-fun m!495023 () Bool)

(assert (=> b!513399 m!495023))

(assert (=> b!513399 m!495015))

(declare-fun m!495025 () Bool)

(assert (=> b!513399 m!495025))

(assert (=> b!513399 m!495015))

(declare-fun m!495027 () Bool)

(assert (=> b!513399 m!495027))

(assert (=> b!513399 m!495015))

(declare-fun m!495029 () Bool)

(assert (=> b!513399 m!495029))

(assert (=> b!513399 m!495023))

(declare-fun m!495031 () Bool)

(assert (=> b!513399 m!495031))

(assert (=> b!513399 m!495023))

(declare-fun m!495033 () Bool)

(assert (=> b!513399 m!495033))

(declare-fun m!495035 () Bool)

(assert (=> b!513404 m!495035))

(declare-fun m!495037 () Bool)

(assert (=> b!513400 m!495037))

(assert (=> b!513397 m!495015))

(assert (=> b!513397 m!495015))

(declare-fun m!495039 () Bool)

(assert (=> b!513397 m!495039))

(declare-fun m!495041 () Bool)

(assert (=> start!46430 m!495041))

(declare-fun m!495043 () Bool)

(assert (=> start!46430 m!495043))

(declare-fun m!495045 () Bool)

(assert (=> b!513401 m!495045))

(assert (=> b!513401 m!495015))

(declare-fun m!495047 () Bool)

(assert (=> b!513398 m!495047))

(push 1)

(assert (not b!513394))

(assert (not b!513398))

(assert (not b!513404))

(assert (not b!513397))

(assert (not b!513402))

(assert (not b!513400))

(assert (not b!513399))

(assert (not b!513396))

(assert (not start!46430))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!513506 () Bool)

(declare-fun e!299858 () SeekEntryResult!4310)

(declare-fun lt!235157 () SeekEntryResult!4310)

(assert (=> b!513506 (= e!299858 (Found!4310 (index!19430 lt!235157)))))

(declare-fun b!513507 () Bool)

(declare-fun e!299859 () SeekEntryResult!4310)

(assert (=> b!513507 (= e!299859 e!299858)))

(declare-fun lt!235158 () (_ BitVec 64))

(assert (=> b!513507 (= lt!235158 (select (arr!15836 a!3235) (index!19430 lt!235157)))))

(declare-fun c!60090 () Bool)

(assert (=> b!513507 (= c!60090 (= lt!235158 k!2280))))

(declare-fun d!79063 () Bool)

(declare-fun lt!235156 () SeekEntryResult!4310)

(assert (=> d!79063 (and (or (is-Undefined!4310 lt!235156) (not (is-Found!4310 lt!235156)) (and (bvsge (index!19429 lt!235156) #b00000000000000000000000000000000) (bvslt (index!19429 lt!235156) (size!16200 a!3235)))) (or (is-Undefined!4310 lt!235156) (is-Found!4310 lt!235156) (not (is-MissingZero!4310 lt!235156)) (and (bvsge (index!19428 lt!235156) #b00000000000000000000000000000000) (bvslt (index!19428 lt!235156) (size!16200 a!3235)))) (or (is-Undefined!4310 lt!235156) (is-Found!4310 lt!235156) (is-MissingZero!4310 lt!235156) (not (is-MissingVacant!4310 lt!235156)) (and (bvsge (index!19431 lt!235156) #b00000000000000000000000000000000) (bvslt (index!19431 lt!235156) (size!16200 a!3235)))) (or (is-Undefined!4310 lt!235156) (ite (is-Found!4310 lt!235156) (= (select (arr!15836 a!3235) (index!19429 lt!235156)) k!2280) (ite (is-MissingZero!4310 lt!235156) (= (select (arr!15836 a!3235) (index!19428 lt!235156)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4310 lt!235156) (= (select (arr!15836 a!3235) (index!19431 lt!235156)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79063 (= lt!235156 e!299859)))

(declare-fun c!60091 () Bool)

(assert (=> d!79063 (= c!60091 (and (is-Intermediate!4310 lt!235157) (undefined!5122 lt!235157)))))

(assert (=> d!79063 (= lt!235157 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!79063 (validMask!0 mask!3524)))

(assert (=> d!79063 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!235156)))

(declare-fun b!513508 () Bool)

(declare-fun e!299857 () SeekEntryResult!4310)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32930 (_ BitVec 32)) SeekEntryResult!4310)

(assert (=> b!513508 (= e!299857 (seekKeyOrZeroReturnVacant!0 (x!48404 lt!235157) (index!19430 lt!235157) (index!19430 lt!235157) k!2280 a!3235 mask!3524))))

(declare-fun b!513509 () Bool)

(assert (=> b!513509 (= e!299857 (MissingZero!4310 (index!19430 lt!235157)))))

(declare-fun b!513510 () Bool)

(assert (=> b!513510 (= e!299859 Undefined!4310)))

(declare-fun b!513511 () Bool)

(declare-fun c!60089 () Bool)

(assert (=> b!513511 (= c!60089 (= lt!235158 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!513511 (= e!299858 e!299857)))

(assert (= (and d!79063 c!60091) b!513510))

(assert (= (and d!79063 (not c!60091)) b!513507))

(assert (= (and b!513507 c!60090) b!513506))

(assert (= (and b!513507 (not c!60090)) b!513511))

(assert (= (and b!513511 c!60089) b!513509))

(assert (= (and b!513511 (not c!60089)) b!513508))

(declare-fun m!495109 () Bool)

(assert (=> b!513507 m!495109))

(declare-fun m!495111 () Bool)

(assert (=> d!79063 m!495111))

(declare-fun m!495113 () Bool)

(assert (=> d!79063 m!495113))

(declare-fun m!495115 () Bool)

(assert (=> d!79063 m!495115))

(declare-fun m!495117 () Bool)

(assert (=> d!79063 m!495117))

(declare-fun m!495119 () Bool)

(assert (=> d!79063 m!495119))

(assert (=> d!79063 m!495041))

(assert (=> d!79063 m!495111))

(declare-fun m!495121 () Bool)

(assert (=> b!513508 m!495121))

(assert (=> b!513402 d!79063))

(declare-fun b!513512 () Bool)

(declare-fun e!299861 () SeekEntryResult!4310)

(declare-fun lt!235160 () SeekEntryResult!4310)

(assert (=> b!513512 (= e!299861 (Found!4310 (index!19430 lt!235160)))))

(declare-fun b!513513 () Bool)

(declare-fun e!299862 () SeekEntryResult!4310)

(assert (=> b!513513 (= e!299862 e!299861)))

(declare-fun lt!235161 () (_ BitVec 64))

(assert (=> b!513513 (= lt!235161 (select (arr!15836 a!3235) (index!19430 lt!235160)))))

(declare-fun c!60093 () Bool)

(assert (=> b!513513 (= c!60093 (= lt!235161 (select (arr!15836 a!3235) j!176)))))

(declare-fun d!79083 () Bool)

(declare-fun lt!235159 () SeekEntryResult!4310)

(assert (=> d!79083 (and (or (is-Undefined!4310 lt!235159) (not (is-Found!4310 lt!235159)) (and (bvsge (index!19429 lt!235159) #b00000000000000000000000000000000) (bvslt (index!19429 lt!235159) (size!16200 a!3235)))) (or (is-Undefined!4310 lt!235159) (is-Found!4310 lt!235159) (not (is-MissingZero!4310 lt!235159)) (and (bvsge (index!19428 lt!235159) #b00000000000000000000000000000000) (bvslt (index!19428 lt!235159) (size!16200 a!3235)))) (or (is-Undefined!4310 lt!235159) (is-Found!4310 lt!235159) (is-MissingZero!4310 lt!235159) (not (is-MissingVacant!4310 lt!235159)) (and (bvsge (index!19431 lt!235159) #b00000000000000000000000000000000) (bvslt (index!19431 lt!235159) (size!16200 a!3235)))) (or (is-Undefined!4310 lt!235159) (ite (is-Found!4310 lt!235159) (= (select (arr!15836 a!3235) (index!19429 lt!235159)) (select (arr!15836 a!3235) j!176)) (ite (is-MissingZero!4310 lt!235159) (= (select (arr!15836 a!3235) (index!19428 lt!235159)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4310 lt!235159) (= (select (arr!15836 a!3235) (index!19431 lt!235159)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79083 (= lt!235159 e!299862)))

(declare-fun c!60094 () Bool)

(assert (=> d!79083 (= c!60094 (and (is-Intermediate!4310 lt!235160) (undefined!5122 lt!235160)))))

(assert (=> d!79083 (= lt!235160 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15836 a!3235) j!176) mask!3524) (select (arr!15836 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!79083 (validMask!0 mask!3524)))

(assert (=> d!79083 (= (seekEntryOrOpen!0 (select (arr!15836 a!3235) j!176) a!3235 mask!3524) lt!235159)))

(declare-fun b!513514 () Bool)

(declare-fun e!299860 () SeekEntryResult!4310)

(assert (=> b!513514 (= e!299860 (seekKeyOrZeroReturnVacant!0 (x!48404 lt!235160) (index!19430 lt!235160) (index!19430 lt!235160) (select (arr!15836 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!513515 () Bool)

(assert (=> b!513515 (= e!299860 (MissingZero!4310 (index!19430 lt!235160)))))

(declare-fun b!513516 () Bool)

(assert (=> b!513516 (= e!299862 Undefined!4310)))

(declare-fun b!513517 () Bool)

(declare-fun c!60092 () Bool)

(assert (=> b!513517 (= c!60092 (= lt!235161 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!513517 (= e!299861 e!299860)))

(assert (= (and d!79083 c!60094) b!513516))

(assert (= (and d!79083 (not c!60094)) b!513513))

(assert (= (and b!513513 c!60093) b!513512))

(assert (= (and b!513513 (not c!60093)) b!513517))

(assert (= (and b!513517 c!60092) b!513515))

(assert (= (and b!513517 (not c!60092)) b!513514))

(declare-fun m!495123 () Bool)

(assert (=> b!513513 m!495123))

(assert (=> d!79083 m!495027))

(assert (=> d!79083 m!495015))

(declare-fun m!495125 () Bool)

(assert (=> d!79083 m!495125))

(declare-fun m!495127 () Bool)

(assert (=> d!79083 m!495127))

(declare-fun m!495129 () Bool)

(assert (=> d!79083 m!495129))

(declare-fun m!495131 () Bool)

(assert (=> d!79083 m!495131))

(assert (=> d!79083 m!495041))

(assert (=> d!79083 m!495015))

(assert (=> d!79083 m!495027))

(assert (=> b!513514 m!495015))

(declare-fun m!495133 () Bool)

(assert (=> b!513514 m!495133))

(assert (=> b!513397 d!79083))

(declare-fun d!79085 () Bool)

(assert (=> d!79085 (= (validKeyInArray!0 (select (arr!15836 a!3235) j!176)) (and (not (= (select (arr!15836 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15836 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!513396 d!79085))

(declare-fun b!513558 () Bool)

(declare-fun e!299888 () Bool)

(declare-fun call!31567 () Bool)

(assert (=> b!513558 (= e!299888 call!31567)))

(declare-fun b!513559 () Bool)

(declare-fun e!299890 () Bool)

(declare-fun contains!2737 (List!10047 (_ BitVec 64)) Bool)

(assert (=> b!513559 (= e!299890 (contains!2737 Nil!10044 (select (arr!15836 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!513560 () Bool)

(declare-fun e!299887 () Bool)

(declare-fun e!299889 () Bool)

(assert (=> b!513560 (= e!299887 e!299889)))

(declare-fun res!313910 () Bool)

(assert (=> b!513560 (=> (not res!313910) (not e!299889))))

(assert (=> b!513560 (= res!313910 (not e!299890))))

(declare-fun res!313909 () Bool)

(assert (=> b!513560 (=> (not res!313909) (not e!299890))))

(assert (=> b!513560 (= res!313909 (validKeyInArray!0 (select (arr!15836 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31564 () Bool)

(declare-fun c!60109 () Bool)

(assert (=> bm!31564 (= call!31567 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!60109 (Cons!10043 (select (arr!15836 a!3235) #b00000000000000000000000000000000) Nil!10044) Nil!10044)))))

(declare-fun b!513561 () Bool)

(assert (=> b!513561 (= e!299888 call!31567)))

(declare-fun d!79087 () Bool)

(declare-fun res!313908 () Bool)

(assert (=> d!79087 (=> res!313908 e!299887)))

(assert (=> d!79087 (= res!313908 (bvsge #b00000000000000000000000000000000 (size!16200 a!3235)))))

(assert (=> d!79087 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10044) e!299887)))

(declare-fun b!513562 () Bool)

(assert (=> b!513562 (= e!299889 e!299888)))

(assert (=> b!513562 (= c!60109 (validKeyInArray!0 (select (arr!15836 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!79087 (not res!313908)) b!513560))

(assert (= (and b!513560 res!313909) b!513559))

(assert (= (and b!513560 res!313910) b!513562))

(assert (= (and b!513562 c!60109) b!513558))

(assert (= (and b!513562 (not c!60109)) b!513561))

(assert (= (or b!513558 b!513561) bm!31564))

(declare-fun m!495135 () Bool)

(assert (=> b!513559 m!495135))

(assert (=> b!513559 m!495135))

(declare-fun m!495137 () Bool)

(assert (=> b!513559 m!495137))

(assert (=> b!513560 m!495135))

(assert (=> b!513560 m!495135))

(declare-fun m!495139 () Bool)

(assert (=> b!513560 m!495139))

(assert (=> bm!31564 m!495135))

(declare-fun m!495141 () Bool)

(assert (=> bm!31564 m!495141))

(assert (=> b!513562 m!495135))

(assert (=> b!513562 m!495135))

(assert (=> b!513562 m!495139))

(assert (=> b!513394 d!79087))

(declare-fun b!513607 () Bool)

(declare-fun e!299920 () Bool)

(declare-fun e!299921 () Bool)

(assert (=> b!513607 (= e!299920 e!299921)))

(declare-fun c!60124 () Bool)

(assert (=> b!513607 (= c!60124 (validKeyInArray!0 (select (arr!15836 a!3235) j!176)))))

(declare-fun d!79089 () Bool)

(declare-fun res!313928 () Bool)

(assert (=> d!79089 (=> res!313928 e!299920)))

(assert (=> d!79089 (= res!313928 (bvsge j!176 (size!16200 a!3235)))))

(assert (=> d!79089 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!299920)))

(declare-fun b!513608 () Bool)

(declare-fun e!299919 () Bool)

(assert (=> b!513608 (= e!299921 e!299919)))

(declare-fun lt!235195 () (_ BitVec 64))

(assert (=> b!513608 (= lt!235195 (select (arr!15836 a!3235) j!176))))

(declare-fun lt!235194 () Unit!15870)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32930 (_ BitVec 64) (_ BitVec 32)) Unit!15870)

(assert (=> b!513608 (= lt!235194 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!235195 j!176))))

(assert (=> b!513608 (arrayContainsKey!0 a!3235 lt!235195 #b00000000000000000000000000000000)))

(declare-fun lt!235193 () Unit!15870)

(assert (=> b!513608 (= lt!235193 lt!235194)))

(declare-fun res!313927 () Bool)

(assert (=> b!513608 (= res!313927 (= (seekEntryOrOpen!0 (select (arr!15836 a!3235) j!176) a!3235 mask!3524) (Found!4310 j!176)))))

(assert (=> b!513608 (=> (not res!313927) (not e!299919))))

(declare-fun b!513609 () Bool)

(declare-fun call!31570 () Bool)

(assert (=> b!513609 (= e!299921 call!31570)))

(declare-fun bm!31567 () Bool)

(assert (=> bm!31567 (= call!31570 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!513610 () Bool)

(assert (=> b!513610 (= e!299919 call!31570)))

(assert (= (and d!79089 (not res!313928)) b!513607))

(assert (= (and b!513607 c!60124) b!513608))

(assert (= (and b!513607 (not c!60124)) b!513609))

(assert (= (and b!513608 res!313927) b!513610))

(assert (= (or b!513610 b!513609) bm!31567))

(assert (=> b!513607 m!495015))

(assert (=> b!513607 m!495015))

(assert (=> b!513607 m!495017))

(assert (=> b!513608 m!495015))

(declare-fun m!495189 () Bool)

(assert (=> b!513608 m!495189))

(declare-fun m!495191 () Bool)

(assert (=> b!513608 m!495191))

(assert (=> b!513608 m!495015))

(assert (=> b!513608 m!495039))

(declare-fun m!495193 () Bool)

(assert (=> bm!31567 m!495193))

(assert (=> b!513399 d!79089))

(declare-fun b!513647 () Bool)

(declare-fun e!299944 () Bool)

(declare-fun lt!235209 () SeekEntryResult!4310)

(assert (=> b!513647 (= e!299944 (bvsge (x!48404 lt!235209) #b01111111111111111111111111111110))))

(declare-fun b!513648 () Bool)

(declare-fun e!299942 () SeekEntryResult!4310)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!513648 (= e!299942 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!235099 #b00000000000000000000000000000000 mask!3524) (select (arr!15836 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!513649 () Bool)

(declare-fun e!299943 () Bool)

(assert (=> b!513649 (= e!299944 e!299943)))

(declare-fun res!313937 () Bool)

(assert (=> b!513649 (= res!313937 (and (is-Intermediate!4310 lt!235209) (not (undefined!5122 lt!235209)) (bvslt (x!48404 lt!235209) #b01111111111111111111111111111110) (bvsge (x!48404 lt!235209) #b00000000000000000000000000000000) (bvsge (x!48404 lt!235209) #b00000000000000000000000000000000)))))

(assert (=> b!513649 (=> (not res!313937) (not e!299943))))

(declare-fun b!513650 () Bool)

(assert (=> b!513650 (and (bvsge (index!19430 lt!235209) #b00000000000000000000000000000000) (bvslt (index!19430 lt!235209) (size!16200 a!3235)))))

(declare-fun res!313935 () Bool)

(assert (=> b!513650 (= res!313935 (= (select (arr!15836 a!3235) (index!19430 lt!235209)) (select (arr!15836 a!3235) j!176)))))

(declare-fun e!299941 () Bool)

(assert (=> b!513650 (=> res!313935 e!299941)))

(assert (=> b!513650 (= e!299943 e!299941)))

(declare-fun b!513651 () Bool)

(assert (=> b!513651 (= e!299942 (Intermediate!4310 false lt!235099 #b00000000000000000000000000000000))))

(declare-fun b!513652 () Bool)

(assert (=> b!513652 (and (bvsge (index!19430 lt!235209) #b00000000000000000000000000000000) (bvslt (index!19430 lt!235209) (size!16200 a!3235)))))

(assert (=> b!513652 (= e!299941 (= (select (arr!15836 a!3235) (index!19430 lt!235209)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!513653 () Bool)

(declare-fun e!299945 () SeekEntryResult!4310)

(assert (=> b!513653 (= e!299945 (Intermediate!4310 true lt!235099 #b00000000000000000000000000000000))))

(declare-fun b!513654 () Bool)

(assert (=> b!513654 (and (bvsge (index!19430 lt!235209) #b00000000000000000000000000000000) (bvslt (index!19430 lt!235209) (size!16200 a!3235)))))

(declare-fun res!313936 () Bool)

(assert (=> b!513654 (= res!313936 (= (select (arr!15836 a!3235) (index!19430 lt!235209)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!513654 (=> res!313936 e!299941)))

(declare-fun d!79107 () Bool)

(assert (=> d!79107 e!299944))

(declare-fun c!60142 () Bool)

(assert (=> d!79107 (= c!60142 (and (is-Intermediate!4310 lt!235209) (undefined!5122 lt!235209)))))

(assert (=> d!79107 (= lt!235209 e!299945)))

(declare-fun c!60141 () Bool)

(assert (=> d!79107 (= c!60141 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!235210 () (_ BitVec 64))

(assert (=> d!79107 (= lt!235210 (select (arr!15836 a!3235) lt!235099))))

(assert (=> d!79107 (validMask!0 mask!3524)))

(assert (=> d!79107 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235099 (select (arr!15836 a!3235) j!176) a!3235 mask!3524) lt!235209)))

(declare-fun b!513655 () Bool)

(assert (=> b!513655 (= e!299945 e!299942)))

(declare-fun c!60140 () Bool)

(assert (=> b!513655 (= c!60140 (or (= lt!235210 (select (arr!15836 a!3235) j!176)) (= (bvadd lt!235210 lt!235210) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!79107 c!60141) b!513653))

(assert (= (and d!79107 (not c!60141)) b!513655))

(assert (= (and b!513655 c!60140) b!513651))

(assert (= (and b!513655 (not c!60140)) b!513648))

(assert (= (and d!79107 c!60142) b!513647))

(assert (= (and d!79107 (not c!60142)) b!513649))

(assert (= (and b!513649 res!313937) b!513650))

(assert (= (and b!513650 (not res!313935)) b!513654))

(assert (= (and b!513654 (not res!313936)) b!513652))

(declare-fun m!495207 () Bool)

(assert (=> b!513652 m!495207))

(assert (=> b!513654 m!495207))

(declare-fun m!495209 () Bool)

(assert (=> b!513648 m!495209))

(assert (=> b!513648 m!495209))

(assert (=> b!513648 m!495015))

(declare-fun m!495211 () Bool)

(assert (=> b!513648 m!495211))

(assert (=> b!513650 m!495207))

(declare-fun m!495213 () Bool)

(assert (=> d!79107 m!495213))

(assert (=> d!79107 m!495041))

(assert (=> b!513399 d!79107))

(declare-fun d!79115 () Bool)

(assert (=> d!79115 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!235216 () Unit!15870)

(declare-fun choose!38 (array!32930 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15870)

(assert (=> d!79115 (= lt!235216 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79115 (validMask!0 mask!3524)))

(assert (=> d!79115 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!235216)))

(declare-fun bs!16253 () Bool)

(assert (= bs!16253 d!79115))

(assert (=> bs!16253 m!495029))

(declare-fun m!495229 () Bool)

(assert (=> bs!16253 m!495229))

(assert (=> bs!16253 m!495041))

(assert (=> b!513399 d!79115))

(declare-fun d!79121 () Bool)

(declare-fun lt!235222 () (_ BitVec 32))

(declare-fun lt!235221 () (_ BitVec 32))

(assert (=> d!79121 (= lt!235222 (bvmul (bvxor lt!235221 (bvlshr lt!235221 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79121 (= lt!235221 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15836 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15836 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79121 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!313944 (let ((h!10932 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15836 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15836 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48410 (bvmul (bvxor h!10932 (bvlshr h!10932 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48410 (bvlshr x!48410 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!313944 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!313944 #b00000000000000000000000000000000))))))

(assert (=> d!79121 (= (toIndex!0 (select (store (arr!15836 a!3235) i!1204 k!2280) j!176) mask!3524) (bvand (bvxor lt!235222 (bvlshr lt!235222 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!513399 d!79121))

(declare-fun d!79125 () Bool)

(declare-fun lt!235224 () (_ BitVec 32))

(declare-fun lt!235223 () (_ BitVec 32))

(assert (=> d!79125 (= lt!235224 (bvmul (bvxor lt!235223 (bvlshr lt!235223 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79125 (= lt!235223 ((_ extract 31 0) (bvand (bvxor (select (arr!15836 a!3235) j!176) (bvlshr (select (arr!15836 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79125 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!313944 (let ((h!10932 ((_ extract 31 0) (bvand (bvxor (select (arr!15836 a!3235) j!176) (bvlshr (select (arr!15836 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48410 (bvmul (bvxor h!10932 (bvlshr h!10932 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48410 (bvlshr x!48410 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!313944 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!313944 #b00000000000000000000000000000000))))))

(assert (=> d!79125 (= (toIndex!0 (select (arr!15836 a!3235) j!176) mask!3524) (bvand (bvxor lt!235224 (bvlshr lt!235224 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!513399 d!79125))

(declare-fun b!513677 () Bool)

(declare-fun e!299964 () Bool)

(declare-fun lt!235225 () SeekEntryResult!4310)

(assert (=> b!513677 (= e!299964 (bvsge (x!48404 lt!235225) #b01111111111111111111111111111110))))

(declare-fun b!513678 () Bool)

(declare-fun e!299962 () SeekEntryResult!4310)

(assert (=> b!513678 (= e!299962 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!235098 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15836 a!3235) i!1204 k!2280) j!176) (array!32931 (store (arr!15836 a!3235) i!1204 k!2280) (size!16200 a!3235)) mask!3524))))

(declare-fun b!513679 () Bool)

(declare-fun e!299963 () Bool)

(assert (=> b!513679 (= e!299964 e!299963)))

(declare-fun res!313950 () Bool)

(assert (=> b!513679 (= res!313950 (and (is-Intermediate!4310 lt!235225) (not (undefined!5122 lt!235225)) (bvslt (x!48404 lt!235225) #b01111111111111111111111111111110) (bvsge (x!48404 lt!235225) #b00000000000000000000000000000000) (bvsge (x!48404 lt!235225) #b00000000000000000000000000000000)))))

(assert (=> b!513679 (=> (not res!313950) (not e!299963))))

(declare-fun b!513680 () Bool)

(assert (=> b!513680 (and (bvsge (index!19430 lt!235225) #b00000000000000000000000000000000) (bvslt (index!19430 lt!235225) (size!16200 (array!32931 (store (arr!15836 a!3235) i!1204 k!2280) (size!16200 a!3235)))))))

(declare-fun res!313948 () Bool)

(assert (=> b!513680 (= res!313948 (= (select (arr!15836 (array!32931 (store (arr!15836 a!3235) i!1204 k!2280) (size!16200 a!3235))) (index!19430 lt!235225)) (select (store (arr!15836 a!3235) i!1204 k!2280) j!176)))))

(declare-fun e!299961 () Bool)

(assert (=> b!513680 (=> res!313948 e!299961)))

(assert (=> b!513680 (= e!299963 e!299961)))

(declare-fun b!513681 () Bool)

(assert (=> b!513681 (= e!299962 (Intermediate!4310 false lt!235098 #b00000000000000000000000000000000))))

