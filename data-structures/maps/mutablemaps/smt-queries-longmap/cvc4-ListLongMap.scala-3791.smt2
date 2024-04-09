; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51942 () Bool)

(assert start!51942)

(declare-fun b!567458 () Bool)

(declare-fun res!358193 () Bool)

(declare-fun e!326508 () Bool)

(assert (=> b!567458 (=> (not res!358193) (not e!326508))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35590 0))(
  ( (array!35591 (arr!17087 (Array (_ BitVec 32) (_ BitVec 64))) (size!17451 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35590)

(declare-fun mask!3119 () (_ BitVec 32))

(assert (=> b!567458 (= res!358193 (and (= (size!17451 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17451 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17451 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!358197 () Bool)

(assert (=> start!51942 (=> (not res!358197) (not e!326508))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51942 (= res!358197 (validMask!0 mask!3119))))

(assert (=> start!51942 e!326508))

(assert (=> start!51942 true))

(declare-fun array_inv!12861 (array!35590) Bool)

(assert (=> start!51942 (array_inv!12861 a!3118)))

(declare-fun b!567459 () Bool)

(declare-fun res!358198 () Bool)

(declare-fun e!326505 () Bool)

(assert (=> b!567459 (=> (not res!358198) (not e!326505))))

(declare-datatypes ((List!11220 0))(
  ( (Nil!11217) (Cons!11216 (h!12228 (_ BitVec 64)) (t!17456 List!11220)) )
))
(declare-fun arrayNoDuplicates!0 (array!35590 (_ BitVec 32) List!11220) Bool)

(assert (=> b!567459 (= res!358198 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11217))))

(declare-fun b!567460 () Bool)

(assert (=> b!567460 (= e!326508 e!326505)))

(declare-fun res!358201 () Bool)

(assert (=> b!567460 (=> (not res!358201) (not e!326505))))

(declare-datatypes ((SeekEntryResult!5543 0))(
  ( (MissingZero!5543 (index!24399 (_ BitVec 32))) (Found!5543 (index!24400 (_ BitVec 32))) (Intermediate!5543 (undefined!6355 Bool) (index!24401 (_ BitVec 32)) (x!53291 (_ BitVec 32))) (Undefined!5543) (MissingVacant!5543 (index!24402 (_ BitVec 32))) )
))
(declare-fun lt!258570 () SeekEntryResult!5543)

(assert (=> b!567460 (= res!358201 (or (= lt!258570 (MissingZero!5543 i!1132)) (= lt!258570 (MissingVacant!5543 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35590 (_ BitVec 32)) SeekEntryResult!5543)

(assert (=> b!567460 (= lt!258570 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!567461 () Bool)

(declare-fun res!358195 () Bool)

(assert (=> b!567461 (=> (not res!358195) (not e!326508))))

(declare-fun arrayContainsKey!0 (array!35590 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!567461 (= res!358195 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!567462 () Bool)

(declare-fun e!326509 () Bool)

(declare-fun e!326506 () Bool)

(assert (=> b!567462 (= e!326509 (not e!326506))))

(declare-fun res!358202 () Bool)

(assert (=> b!567462 (=> res!358202 e!326506)))

(declare-fun lt!258574 () SeekEntryResult!5543)

(assert (=> b!567462 (= res!358202 (or (undefined!6355 lt!258574) (not (is-Intermediate!5543 lt!258574)) (not (= (select (arr!17087 a!3118) (index!24401 lt!258574)) (select (arr!17087 a!3118) j!142)))))))

(declare-fun lt!258568 () SeekEntryResult!5543)

(assert (=> b!567462 (= lt!258568 (Found!5543 j!142))))

(assert (=> b!567462 (= lt!258568 (seekEntryOrOpen!0 (select (arr!17087 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35590 (_ BitVec 32)) Bool)

(assert (=> b!567462 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17788 0))(
  ( (Unit!17789) )
))
(declare-fun lt!258569 () Unit!17788)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35590 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17788)

(assert (=> b!567462 (= lt!258569 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!567463 () Bool)

(declare-fun res!358196 () Bool)

(assert (=> b!567463 (=> (not res!358196) (not e!326508))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!567463 (= res!358196 (validKeyInArray!0 k!1914))))

(declare-fun b!567464 () Bool)

(assert (=> b!567464 (= e!326505 e!326509)))

(declare-fun res!358199 () Bool)

(assert (=> b!567464 (=> (not res!358199) (not e!326509))))

(declare-fun lt!258571 () (_ BitVec 32))

(declare-fun lt!258572 () array!35590)

(declare-fun lt!258575 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35590 (_ BitVec 32)) SeekEntryResult!5543)

(assert (=> b!567464 (= res!358199 (= lt!258574 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258571 lt!258575 lt!258572 mask!3119)))))

(declare-fun lt!258573 () (_ BitVec 32))

(assert (=> b!567464 (= lt!258574 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258573 (select (arr!17087 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!567464 (= lt!258571 (toIndex!0 lt!258575 mask!3119))))

(assert (=> b!567464 (= lt!258575 (select (store (arr!17087 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!567464 (= lt!258573 (toIndex!0 (select (arr!17087 a!3118) j!142) mask!3119))))

(assert (=> b!567464 (= lt!258572 (array!35591 (store (arr!17087 a!3118) i!1132 k!1914) (size!17451 a!3118)))))

(declare-fun b!567465 () Bool)

(declare-fun res!358200 () Bool)

(assert (=> b!567465 (=> (not res!358200) (not e!326508))))

(assert (=> b!567465 (= res!358200 (validKeyInArray!0 (select (arr!17087 a!3118) j!142)))))

(declare-fun b!567466 () Bool)

(declare-fun res!358194 () Bool)

(assert (=> b!567466 (=> (not res!358194) (not e!326505))))

(assert (=> b!567466 (= res!358194 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!567467 () Bool)

(assert (=> b!567467 (= e!326506 (= lt!258568 (seekEntryOrOpen!0 lt!258575 lt!258572 mask!3119)))))

(assert (= (and start!51942 res!358197) b!567458))

(assert (= (and b!567458 res!358193) b!567465))

(assert (= (and b!567465 res!358200) b!567463))

(assert (= (and b!567463 res!358196) b!567461))

(assert (= (and b!567461 res!358195) b!567460))

(assert (= (and b!567460 res!358201) b!567466))

(assert (= (and b!567466 res!358194) b!567459))

(assert (= (and b!567459 res!358198) b!567464))

(assert (= (and b!567464 res!358199) b!567462))

(assert (= (and b!567462 (not res!358202)) b!567467))

(declare-fun m!546135 () Bool)

(assert (=> b!567462 m!546135))

(declare-fun m!546137 () Bool)

(assert (=> b!567462 m!546137))

(declare-fun m!546139 () Bool)

(assert (=> b!567462 m!546139))

(declare-fun m!546141 () Bool)

(assert (=> b!567462 m!546141))

(assert (=> b!567462 m!546135))

(declare-fun m!546143 () Bool)

(assert (=> b!567462 m!546143))

(assert (=> b!567464 m!546135))

(declare-fun m!546145 () Bool)

(assert (=> b!567464 m!546145))

(assert (=> b!567464 m!546135))

(declare-fun m!546147 () Bool)

(assert (=> b!567464 m!546147))

(declare-fun m!546149 () Bool)

(assert (=> b!567464 m!546149))

(declare-fun m!546151 () Bool)

(assert (=> b!567464 m!546151))

(declare-fun m!546153 () Bool)

(assert (=> b!567464 m!546153))

(assert (=> b!567464 m!546135))

(declare-fun m!546155 () Bool)

(assert (=> b!567464 m!546155))

(assert (=> b!567465 m!546135))

(assert (=> b!567465 m!546135))

(declare-fun m!546157 () Bool)

(assert (=> b!567465 m!546157))

(declare-fun m!546159 () Bool)

(assert (=> b!567460 m!546159))

(declare-fun m!546161 () Bool)

(assert (=> start!51942 m!546161))

(declare-fun m!546163 () Bool)

(assert (=> start!51942 m!546163))

(declare-fun m!546165 () Bool)

(assert (=> b!567463 m!546165))

(declare-fun m!546167 () Bool)

(assert (=> b!567467 m!546167))

(declare-fun m!546169 () Bool)

(assert (=> b!567466 m!546169))

(declare-fun m!546171 () Bool)

(assert (=> b!567461 m!546171))

(declare-fun m!546173 () Bool)

(assert (=> b!567459 m!546173))

(push 1)

(assert (not b!567460))

(assert (not b!567466))

(assert (not start!51942))

(assert (not b!567465))

(assert (not b!567464))

(assert (not b!567459))

(assert (not b!567461))

(assert (not b!567467))

(assert (not b!567463))

(assert (not b!567462))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!84185 () Bool)

(assert (=> d!84185 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!567463 d!84185))

(declare-fun b!567546 () Bool)

(declare-fun c!65015 () Bool)

(declare-fun lt!258620 () (_ BitVec 64))

(assert (=> b!567546 (= c!65015 (= lt!258620 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!326554 () SeekEntryResult!5543)

(declare-fun e!326555 () SeekEntryResult!5543)

(assert (=> b!567546 (= e!326554 e!326555)))

(declare-fun b!567547 () Bool)

(declare-fun lt!258619 () SeekEntryResult!5543)

(assert (=> b!567547 (= e!326555 (MissingZero!5543 (index!24401 lt!258619)))))

(declare-fun b!567548 () Bool)

(declare-fun e!326556 () SeekEntryResult!5543)

(assert (=> b!567548 (= e!326556 e!326554)))

(assert (=> b!567548 (= lt!258620 (select (arr!17087 lt!258572) (index!24401 lt!258619)))))

(declare-fun c!65013 () Bool)

(assert (=> b!567548 (= c!65013 (= lt!258620 lt!258575))))

(declare-fun d!84187 () Bool)

(declare-fun lt!258621 () SeekEntryResult!5543)

(assert (=> d!84187 (and (or (is-Undefined!5543 lt!258621) (not (is-Found!5543 lt!258621)) (and (bvsge (index!24400 lt!258621) #b00000000000000000000000000000000) (bvslt (index!24400 lt!258621) (size!17451 lt!258572)))) (or (is-Undefined!5543 lt!258621) (is-Found!5543 lt!258621) (not (is-MissingZero!5543 lt!258621)) (and (bvsge (index!24399 lt!258621) #b00000000000000000000000000000000) (bvslt (index!24399 lt!258621) (size!17451 lt!258572)))) (or (is-Undefined!5543 lt!258621) (is-Found!5543 lt!258621) (is-MissingZero!5543 lt!258621) (not (is-MissingVacant!5543 lt!258621)) (and (bvsge (index!24402 lt!258621) #b00000000000000000000000000000000) (bvslt (index!24402 lt!258621) (size!17451 lt!258572)))) (or (is-Undefined!5543 lt!258621) (ite (is-Found!5543 lt!258621) (= (select (arr!17087 lt!258572) (index!24400 lt!258621)) lt!258575) (ite (is-MissingZero!5543 lt!258621) (= (select (arr!17087 lt!258572) (index!24399 lt!258621)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5543 lt!258621) (= (select (arr!17087 lt!258572) (index!24402 lt!258621)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84187 (= lt!258621 e!326556)))

(declare-fun c!65014 () Bool)

(assert (=> d!84187 (= c!65014 (and (is-Intermediate!5543 lt!258619) (undefined!6355 lt!258619)))))

(assert (=> d!84187 (= lt!258619 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!258575 mask!3119) lt!258575 lt!258572 mask!3119))))

(assert (=> d!84187 (validMask!0 mask!3119)))

(assert (=> d!84187 (= (seekEntryOrOpen!0 lt!258575 lt!258572 mask!3119) lt!258621)))

(declare-fun b!567549 () Bool)

(assert (=> b!567549 (= e!326554 (Found!5543 (index!24401 lt!258619)))))

(declare-fun b!567550 () Bool)

(assert (=> b!567550 (= e!326556 Undefined!5543)))

(declare-fun b!567551 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35590 (_ BitVec 32)) SeekEntryResult!5543)

(assert (=> b!567551 (= e!326555 (seekKeyOrZeroReturnVacant!0 (x!53291 lt!258619) (index!24401 lt!258619) (index!24401 lt!258619) lt!258575 lt!258572 mask!3119))))

(assert (= (and d!84187 c!65014) b!567550))

(assert (= (and d!84187 (not c!65014)) b!567548))

(assert (= (and b!567548 c!65013) b!567549))

(assert (= (and b!567548 (not c!65013)) b!567546))

(assert (= (and b!567546 c!65015) b!567547))

(assert (= (and b!567546 (not c!65015)) b!567551))

(declare-fun m!546211 () Bool)

(assert (=> b!567548 m!546211))

(declare-fun m!546213 () Bool)

(assert (=> d!84187 m!546213))

(assert (=> d!84187 m!546161))

(assert (=> d!84187 m!546149))

(declare-fun m!546215 () Bool)

(assert (=> d!84187 m!546215))

(declare-fun m!546217 () Bool)

(assert (=> d!84187 m!546217))

(assert (=> d!84187 m!546149))

(declare-fun m!546219 () Bool)

(assert (=> d!84187 m!546219))

(declare-fun m!546221 () Bool)

(assert (=> b!567551 m!546221))

(assert (=> b!567467 d!84187))

(declare-fun b!567552 () Bool)

(declare-fun c!65018 () Bool)

(declare-fun lt!258623 () (_ BitVec 64))

(assert (=> b!567552 (= c!65018 (= lt!258623 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!326557 () SeekEntryResult!5543)

(declare-fun e!326558 () SeekEntryResult!5543)

(assert (=> b!567552 (= e!326557 e!326558)))

(declare-fun b!567553 () Bool)

(declare-fun lt!258622 () SeekEntryResult!5543)

(assert (=> b!567553 (= e!326558 (MissingZero!5543 (index!24401 lt!258622)))))

(declare-fun b!567554 () Bool)

(declare-fun e!326559 () SeekEntryResult!5543)

(assert (=> b!567554 (= e!326559 e!326557)))

(assert (=> b!567554 (= lt!258623 (select (arr!17087 a!3118) (index!24401 lt!258622)))))

(declare-fun c!65016 () Bool)

(assert (=> b!567554 (= c!65016 (= lt!258623 (select (arr!17087 a!3118) j!142)))))

(declare-fun d!84205 () Bool)

(declare-fun lt!258624 () SeekEntryResult!5543)

(assert (=> d!84205 (and (or (is-Undefined!5543 lt!258624) (not (is-Found!5543 lt!258624)) (and (bvsge (index!24400 lt!258624) #b00000000000000000000000000000000) (bvslt (index!24400 lt!258624) (size!17451 a!3118)))) (or (is-Undefined!5543 lt!258624) (is-Found!5543 lt!258624) (not (is-MissingZero!5543 lt!258624)) (and (bvsge (index!24399 lt!258624) #b00000000000000000000000000000000) (bvslt (index!24399 lt!258624) (size!17451 a!3118)))) (or (is-Undefined!5543 lt!258624) (is-Found!5543 lt!258624) (is-MissingZero!5543 lt!258624) (not (is-MissingVacant!5543 lt!258624)) (and (bvsge (index!24402 lt!258624) #b00000000000000000000000000000000) (bvslt (index!24402 lt!258624) (size!17451 a!3118)))) (or (is-Undefined!5543 lt!258624) (ite (is-Found!5543 lt!258624) (= (select (arr!17087 a!3118) (index!24400 lt!258624)) (select (arr!17087 a!3118) j!142)) (ite (is-MissingZero!5543 lt!258624) (= (select (arr!17087 a!3118) (index!24399 lt!258624)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5543 lt!258624) (= (select (arr!17087 a!3118) (index!24402 lt!258624)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84205 (= lt!258624 e!326559)))

(declare-fun c!65017 () Bool)

(assert (=> d!84205 (= c!65017 (and (is-Intermediate!5543 lt!258622) (undefined!6355 lt!258622)))))

(assert (=> d!84205 (= lt!258622 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17087 a!3118) j!142) mask!3119) (select (arr!17087 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!84205 (validMask!0 mask!3119)))

(assert (=> d!84205 (= (seekEntryOrOpen!0 (select (arr!17087 a!3118) j!142) a!3118 mask!3119) lt!258624)))

(declare-fun b!567555 () Bool)

(assert (=> b!567555 (= e!326557 (Found!5543 (index!24401 lt!258622)))))

(declare-fun b!567556 () Bool)

(assert (=> b!567556 (= e!326559 Undefined!5543)))

(declare-fun b!567557 () Bool)

(assert (=> b!567557 (= e!326558 (seekKeyOrZeroReturnVacant!0 (x!53291 lt!258622) (index!24401 lt!258622) (index!24401 lt!258622) (select (arr!17087 a!3118) j!142) a!3118 mask!3119))))

(assert (= (and d!84205 c!65017) b!567556))

(assert (= (and d!84205 (not c!65017)) b!567554))

(assert (= (and b!567554 c!65016) b!567555))

(assert (= (and b!567554 (not c!65016)) b!567552))

(assert (= (and b!567552 c!65018) b!567553))

(assert (= (and b!567552 (not c!65018)) b!567557))

(declare-fun m!546223 () Bool)

(assert (=> b!567554 m!546223))

(declare-fun m!546225 () Bool)

(assert (=> d!84205 m!546225))

(assert (=> d!84205 m!546161))

(assert (=> d!84205 m!546145))

(assert (=> d!84205 m!546135))

(declare-fun m!546227 () Bool)

(assert (=> d!84205 m!546227))

(declare-fun m!546229 () Bool)

(assert (=> d!84205 m!546229))

(assert (=> d!84205 m!546135))

(assert (=> d!84205 m!546145))

(declare-fun m!546231 () Bool)

(assert (=> d!84205 m!546231))

(assert (=> b!567557 m!546135))

(declare-fun m!546233 () Bool)

(assert (=> b!567557 m!546233))

(assert (=> b!567462 d!84205))

(declare-fun b!567635 () Bool)

(declare-fun e!326608 () Bool)

(declare-fun call!32525 () Bool)

(assert (=> b!567635 (= e!326608 call!32525)))

(declare-fun b!567636 () Bool)

(declare-fun e!326607 () Bool)

(assert (=> b!567636 (= e!326607 e!326608)))

(declare-fun lt!258648 () (_ BitVec 64))

(assert (=> b!567636 (= lt!258648 (select (arr!17087 a!3118) j!142))))

(declare-fun lt!258650 () Unit!17788)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35590 (_ BitVec 64) (_ BitVec 32)) Unit!17788)

(assert (=> b!567636 (= lt!258650 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!258648 j!142))))

(assert (=> b!567636 (arrayContainsKey!0 a!3118 lt!258648 #b00000000000000000000000000000000)))

(declare-fun lt!258649 () Unit!17788)

(assert (=> b!567636 (= lt!258649 lt!258650)))

(declare-fun res!358248 () Bool)

(assert (=> b!567636 (= res!358248 (= (seekEntryOrOpen!0 (select (arr!17087 a!3118) j!142) a!3118 mask!3119) (Found!5543 j!142)))))

(assert (=> b!567636 (=> (not res!358248) (not e!326608))))

(declare-fun b!567637 () Bool)

(declare-fun e!326609 () Bool)

(assert (=> b!567637 (= e!326609 e!326607)))

(declare-fun c!65045 () Bool)

(assert (=> b!567637 (= c!65045 (validKeyInArray!0 (select (arr!17087 a!3118) j!142)))))

(declare-fun b!567638 () Bool)

(assert (=> b!567638 (= e!326607 call!32525)))

(declare-fun bm!32522 () Bool)

(assert (=> bm!32522 (= call!32525 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun d!84207 () Bool)

(declare-fun res!358247 () Bool)

(assert (=> d!84207 (=> res!358247 e!326609)))

(assert (=> d!84207 (= res!358247 (bvsge j!142 (size!17451 a!3118)))))

(assert (=> d!84207 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!326609)))

(assert (= (and d!84207 (not res!358247)) b!567637))

(assert (= (and b!567637 c!65045) b!567636))

(assert (= (and b!567637 (not c!65045)) b!567638))

(assert (= (and b!567636 res!358248) b!567635))

(assert (= (or b!567635 b!567638) bm!32522))

(assert (=> b!567636 m!546135))

(declare-fun m!546271 () Bool)

(assert (=> b!567636 m!546271))

(declare-fun m!546273 () Bool)

(assert (=> b!567636 m!546273))

(assert (=> b!567636 m!546135))

(assert (=> b!567636 m!546143))

(assert (=> b!567637 m!546135))

(assert (=> b!567637 m!546135))

(assert (=> b!567637 m!546157))

(declare-fun m!546275 () Bool)

(assert (=> bm!32522 m!546275))

(assert (=> b!567462 d!84207))

(declare-fun d!84217 () Bool)

(assert (=> d!84217 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!258663 () Unit!17788)

(declare-fun choose!38 (array!35590 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17788)

(assert (=> d!84217 (= lt!258663 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!84217 (validMask!0 mask!3119)))

(assert (=> d!84217 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!258663)))

(declare-fun bs!17620 () Bool)

(assert (= bs!17620 d!84217))

(assert (=> bs!17620 m!546137))

(declare-fun m!546277 () Bool)

(assert (=> bs!17620 m!546277))

(assert (=> bs!17620 m!546161))

(assert (=> b!567462 d!84217))

(declare-fun b!567647 () Bool)

(declare-fun c!65050 () Bool)

(declare-fun lt!258667 () (_ BitVec 64))

(assert (=> b!567647 (= c!65050 (= lt!258667 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!326616 () SeekEntryResult!5543)

(declare-fun e!326617 () SeekEntryResult!5543)

(assert (=> b!567647 (= e!326616 e!326617)))

(declare-fun b!567648 () Bool)

(declare-fun lt!258666 () SeekEntryResult!5543)

(assert (=> b!567648 (= e!326617 (MissingZero!5543 (index!24401 lt!258666)))))

(declare-fun b!567649 () Bool)

(declare-fun e!326618 () SeekEntryResult!5543)

(assert (=> b!567649 (= e!326618 e!326616)))

(assert (=> b!567649 (= lt!258667 (select (arr!17087 a!3118) (index!24401 lt!258666)))))

(declare-fun c!65048 () Bool)

(assert (=> b!567649 (= c!65048 (= lt!258667 k!1914))))

(declare-fun d!84219 () Bool)

(declare-fun lt!258668 () SeekEntryResult!5543)

(assert (=> d!84219 (and (or (is-Undefined!5543 lt!258668) (not (is-Found!5543 lt!258668)) (and (bvsge (index!24400 lt!258668) #b00000000000000000000000000000000) (bvslt (index!24400 lt!258668) (size!17451 a!3118)))) (or (is-Undefined!5543 lt!258668) (is-Found!5543 lt!258668) (not (is-MissingZero!5543 lt!258668)) (and (bvsge (index!24399 lt!258668) #b00000000000000000000000000000000) (bvslt (index!24399 lt!258668) (size!17451 a!3118)))) (or (is-Undefined!5543 lt!258668) (is-Found!5543 lt!258668) (is-MissingZero!5543 lt!258668) (not (is-MissingVacant!5543 lt!258668)) (and (bvsge (index!24402 lt!258668) #b00000000000000000000000000000000) (bvslt (index!24402 lt!258668) (size!17451 a!3118)))) (or (is-Undefined!5543 lt!258668) (ite (is-Found!5543 lt!258668) (= (select (arr!17087 a!3118) (index!24400 lt!258668)) k!1914) (ite (is-MissingZero!5543 lt!258668) (= (select (arr!17087 a!3118) (index!24399 lt!258668)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5543 lt!258668) (= (select (arr!17087 a!3118) (index!24402 lt!258668)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84219 (= lt!258668 e!326618)))

(declare-fun c!65049 () Bool)

(assert (=> d!84219 (= c!65049 (and (is-Intermediate!5543 lt!258666) (undefined!6355 lt!258666)))))

(assert (=> d!84219 (= lt!258666 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!84219 (validMask!0 mask!3119)))

(assert (=> d!84219 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!258668)))

(declare-fun b!567650 () Bool)

(assert (=> b!567650 (= e!326616 (Found!5543 (index!24401 lt!258666)))))

(declare-fun b!567651 () Bool)

(assert (=> b!567651 (= e!326618 Undefined!5543)))

(declare-fun b!567652 () Bool)

(assert (=> b!567652 (= e!326617 (seekKeyOrZeroReturnVacant!0 (x!53291 lt!258666) (index!24401 lt!258666) (index!24401 lt!258666) k!1914 a!3118 mask!3119))))

(assert (= (and d!84219 c!65049) b!567651))

(assert (= (and d!84219 (not c!65049)) b!567649))

(assert (= (and b!567649 c!65048) b!567650))

(assert (= (and b!567649 (not c!65048)) b!567647))

(assert (= (and b!567647 c!65050) b!567648))

(assert (= (and b!567647 (not c!65050)) b!567652))

(declare-fun m!546285 () Bool)

(assert (=> b!567649 m!546285))

(declare-fun m!546287 () Bool)

(assert (=> d!84219 m!546287))

(assert (=> d!84219 m!546161))

(declare-fun m!546291 () Bool)

(assert (=> d!84219 m!546291))

(declare-fun m!546293 () Bool)

(assert (=> d!84219 m!546293))

(declare-fun m!546295 () Bool)

(assert (=> d!84219 m!546295))

(assert (=> d!84219 m!546291))

(declare-fun m!546297 () Bool)

(assert (=> d!84219 m!546297))

(declare-fun m!546299 () Bool)

(assert (=> b!567652 m!546299))

(assert (=> b!567460 d!84219))

(declare-fun b!567657 () Bool)

(declare-fun e!326623 () Bool)

(declare-fun call!32529 () Bool)

(assert (=> b!567657 (= e!326623 call!32529)))

(declare-fun b!567658 () Bool)

(declare-fun e!326622 () Bool)

(assert (=> b!567658 (= e!326622 e!326623)))

(declare-fun lt!258674 () (_ BitVec 64))

(assert (=> b!567658 (= lt!258674 (select (arr!17087 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!258676 () Unit!17788)

(assert (=> b!567658 (= lt!258676 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!258674 #b00000000000000000000000000000000))))

(assert (=> b!567658 (arrayContainsKey!0 a!3118 lt!258674 #b00000000000000000000000000000000)))

(declare-fun lt!258675 () Unit!17788)

(assert (=> b!567658 (= lt!258675 lt!258676)))

(declare-fun res!358257 () Bool)

(assert (=> b!567658 (= res!358257 (= (seekEntryOrOpen!0 (select (arr!17087 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5543 #b00000000000000000000000000000000)))))

(assert (=> b!567658 (=> (not res!358257) (not e!326623))))

(declare-fun b!567659 () Bool)

(declare-fun e!326624 () Bool)

(assert (=> b!567659 (= e!326624 e!326622)))

(declare-fun c!65052 () Bool)

(assert (=> b!567659 (= c!65052 (validKeyInArray!0 (select (arr!17087 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!567660 () Bool)

(assert (=> b!567660 (= e!326622 call!32529)))

(declare-fun bm!32526 () Bool)

(assert (=> bm!32526 (= call!32529 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun d!84227 () Bool)

(declare-fun res!358256 () Bool)

(assert (=> d!84227 (=> res!358256 e!326624)))

(assert (=> d!84227 (= res!358256 (bvsge #b00000000000000000000000000000000 (size!17451 a!3118)))))

(assert (=> d!84227 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!326624)))

(assert (= (and d!84227 (not res!358256)) b!567659))

(assert (= (and b!567659 c!65052) b!567658))

(assert (= (and b!567659 (not c!65052)) b!567660))

(assert (= (and b!567658 res!358257) b!567657))

(assert (= (or b!567657 b!567660) bm!32526))

(declare-fun m!546301 () Bool)

(assert (=> b!567658 m!546301))

(declare-fun m!546303 () Bool)

(assert (=> b!567658 m!546303))

(declare-fun m!546305 () Bool)

(assert (=> b!567658 m!546305))

(assert (=> b!567658 m!546301))

(declare-fun m!546307 () Bool)

(assert (=> b!567658 m!546307))

(assert (=> b!567659 m!546301))

(assert (=> b!567659 m!546301))

(declare-fun m!546309 () Bool)

(assert (=> b!567659 m!546309))

(declare-fun m!546311 () Bool)

(assert (=> bm!32526 m!546311))

(assert (=> b!567466 d!84227))

(declare-fun d!84229 () Bool)

(declare-fun res!358276 () Bool)

(declare-fun e!326647 () Bool)

(assert (=> d!84229 (=> res!358276 e!326647)))

(assert (=> d!84229 (= res!358276 (= (select (arr!17087 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!84229 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!326647)))

(declare-fun b!567687 () Bool)

(declare-fun e!326648 () Bool)

(assert (=> b!567687 (= e!326647 e!326648)))

(declare-fun res!358277 () Bool)

(assert (=> b!567687 (=> (not res!358277) (not e!326648))))

(assert (=> b!567687 (= res!358277 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17451 a!3118)))))

(declare-fun b!567688 () Bool)

(assert (=> b!567688 (= e!326648 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!84229 (not res!358276)) b!567687))

(assert (= (and b!567687 res!358277) b!567688))

(assert (=> d!84229 m!546301))

(declare-fun m!546337 () Bool)

(assert (=> b!567688 m!546337))

(assert (=> b!567461 d!84229))

(declare-fun b!567744 () Bool)

(declare-fun e!326683 () SeekEntryResult!5543)

(assert (=> b!567744 (= e!326683 (Intermediate!5543 true lt!258571 #b00000000000000000000000000000000))))

(declare-fun e!326686 () SeekEntryResult!5543)

(declare-fun b!567745 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!567745 (= e!326686 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!258571 #b00000000000000000000000000000000 mask!3119) lt!258575 lt!258572 mask!3119))))

(declare-fun b!567746 () Bool)

(declare-fun e!326687 () Bool)

(declare-fun lt!258703 () SeekEntryResult!5543)

(assert (=> b!567746 (= e!326687 (bvsge (x!53291 lt!258703) #b01111111111111111111111111111110))))

(declare-fun b!567747 () Bool)

(assert (=> b!567747 (= e!326686 (Intermediate!5543 false lt!258571 #b00000000000000000000000000000000))))

(declare-fun b!567748 () Bool)

(assert (=> b!567748 (and (bvsge (index!24401 lt!258703) #b00000000000000000000000000000000) (bvslt (index!24401 lt!258703) (size!17451 lt!258572)))))

(declare-fun e!326684 () Bool)

(assert (=> b!567748 (= e!326684 (= (select (arr!17087 lt!258572) (index!24401 lt!258703)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!84239 () Bool)

(assert (=> d!84239 e!326687))

(declare-fun c!65076 () Bool)

(assert (=> d!84239 (= c!65076 (and (is-Intermediate!5543 lt!258703) (undefined!6355 lt!258703)))))

(assert (=> d!84239 (= lt!258703 e!326683)))

(declare-fun c!65077 () Bool)

(assert (=> d!84239 (= c!65077 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!258702 () (_ BitVec 64))

(assert (=> d!84239 (= lt!258702 (select (arr!17087 lt!258572) lt!258571))))

(assert (=> d!84239 (validMask!0 mask!3119)))

(assert (=> d!84239 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258571 lt!258575 lt!258572 mask!3119) lt!258703)))

(declare-fun b!567749 () Bool)

(assert (=> b!567749 (and (bvsge (index!24401 lt!258703) #b00000000000000000000000000000000) (bvslt (index!24401 lt!258703) (size!17451 lt!258572)))))

(declare-fun res!358295 () Bool)

(assert (=> b!567749 (= res!358295 (= (select (arr!17087 lt!258572) (index!24401 lt!258703)) lt!258575))))

(assert (=> b!567749 (=> res!358295 e!326684)))

(declare-fun e!326685 () Bool)

(assert (=> b!567749 (= e!326685 e!326684)))

(declare-fun b!567750 () Bool)

(assert (=> b!567750 (and (bvsge (index!24401 lt!258703) #b00000000000000000000000000000000) (bvslt (index!24401 lt!258703) (size!17451 lt!258572)))))

(declare-fun res!358296 () Bool)

(assert (=> b!567750 (= res!358296 (= (select (arr!17087 lt!258572) (index!24401 lt!258703)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!567750 (=> res!358296 e!326684)))

(declare-fun b!567751 () Bool)

(assert (=> b!567751 (= e!326687 e!326685)))

(declare-fun res!358297 () Bool)

(assert (=> b!567751 (= res!358297 (and (is-Intermediate!5543 lt!258703) (not (undefined!6355 lt!258703)) (bvslt (x!53291 lt!258703) #b01111111111111111111111111111110) (bvsge (x!53291 lt!258703) #b00000000000000000000000000000000) (bvsge (x!53291 lt!258703) #b00000000000000000000000000000000)))))

(assert (=> b!567751 (=> (not res!358297) (not e!326685))))

(declare-fun b!567752 () Bool)

(assert (=> b!567752 (= e!326683 e!326686)))

(declare-fun c!65078 () Bool)

(assert (=> b!567752 (= c!65078 (or (= lt!258702 lt!258575) (= (bvadd lt!258702 lt!258702) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!84239 c!65077) b!567744))

(assert (= (and d!84239 (not c!65077)) b!567752))

(assert (= (and b!567752 c!65078) b!567747))

(assert (= (and b!567752 (not c!65078)) b!567745))

(assert (= (and d!84239 c!65076) b!567746))

(assert (= (and d!84239 (not c!65076)) b!567751))

(assert (= (and b!567751 res!358297) b!567749))

(assert (= (and b!567749 (not res!358295)) b!567750))

(assert (= (and b!567750 (not res!358296)) b!567748))

(declare-fun m!546395 () Bool)

(assert (=> b!567750 m!546395))

(assert (=> b!567748 m!546395))

(declare-fun m!546397 () Bool)

(assert (=> b!567745 m!546397))

(assert (=> b!567745 m!546397))

(declare-fun m!546399 () Bool)

(assert (=> b!567745 m!546399))

(declare-fun m!546401 () Bool)

(assert (=> d!84239 m!546401))

(assert (=> d!84239 m!546161))

(assert (=> b!567749 m!546395))

(assert (=> b!567464 d!84239))

(declare-fun b!567753 () Bool)

(declare-fun e!326688 () SeekEntryResult!5543)

(assert (=> b!567753 (= e!326688 (Intermediate!5543 true lt!258573 #b00000000000000000000000000000000))))

(declare-fun b!567754 () Bool)

(declare-fun e!326691 () SeekEntryResult!5543)

(assert (=> b!567754 (= e!326691 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!258573 #b00000000000000000000000000000000 mask!3119) (select (arr!17087 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!567755 () Bool)

(declare-fun e!326692 () Bool)

(declare-fun lt!258705 () SeekEntryResult!5543)

(assert (=> b!567755 (= e!326692 (bvsge (x!53291 lt!258705) #b01111111111111111111111111111110))))

(declare-fun b!567756 () Bool)

(assert (=> b!567756 (= e!326691 (Intermediate!5543 false lt!258573 #b00000000000000000000000000000000))))

(declare-fun b!567757 () Bool)

(assert (=> b!567757 (and (bvsge (index!24401 lt!258705) #b00000000000000000000000000000000) (bvslt (index!24401 lt!258705) (size!17451 a!3118)))))

(declare-fun e!326689 () Bool)

(assert (=> b!567757 (= e!326689 (= (select (arr!17087 a!3118) (index!24401 lt!258705)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!84261 () Bool)

(assert (=> d!84261 e!326692))

(declare-fun c!65079 () Bool)

(assert (=> d!84261 (= c!65079 (and (is-Intermediate!5543 lt!258705) (undefined!6355 lt!258705)))))

