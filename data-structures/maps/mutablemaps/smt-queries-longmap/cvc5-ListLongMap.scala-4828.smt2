; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66326 () Bool)

(assert start!66326)

(declare-datatypes ((array!42184 0))(
  ( (array!42185 (arr!20196 (Array (_ BitVec 32) (_ BitVec 64))) (size!20617 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42184)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!425665 () Bool)

(declare-fun b!764238 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7803 0))(
  ( (MissingZero!7803 (index!33579 (_ BitVec 32))) (Found!7803 (index!33580 (_ BitVec 32))) (Intermediate!7803 (undefined!8615 Bool) (index!33581 (_ BitVec 32)) (x!64504 (_ BitVec 32))) (Undefined!7803) (MissingVacant!7803 (index!33582 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42184 (_ BitVec 32)) SeekEntryResult!7803)

(assert (=> b!764238 (= e!425665 (not (= (seekEntryOrOpen!0 (select (arr!20196 a!3186) j!159) a!3186 mask!3328) (Found!7803 j!159))))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42184 (_ BitVec 32)) Bool)

(assert (=> b!764238 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26332 0))(
  ( (Unit!26333) )
))
(declare-fun lt!340093 () Unit!26332)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42184 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26332)

(assert (=> b!764238 (= lt!340093 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!764239 () Bool)

(declare-fun res!517257 () Bool)

(declare-fun e!425666 () Bool)

(assert (=> b!764239 (=> (not res!517257) (not e!425666))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!764239 (= res!517257 (and (= (size!20617 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20617 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20617 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!517255 () Bool)

(assert (=> start!66326 (=> (not res!517255) (not e!425666))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66326 (= res!517255 (validMask!0 mask!3328))))

(assert (=> start!66326 e!425666))

(assert (=> start!66326 true))

(declare-fun array_inv!15970 (array!42184) Bool)

(assert (=> start!66326 (array_inv!15970 a!3186)))

(declare-fun b!764240 () Bool)

(declare-fun res!517253 () Bool)

(declare-fun e!425667 () Bool)

(assert (=> b!764240 (=> (not res!517253) (not e!425667))))

(declare-datatypes ((List!14251 0))(
  ( (Nil!14248) (Cons!14247 (h!15331 (_ BitVec 64)) (t!20574 List!14251)) )
))
(declare-fun arrayNoDuplicates!0 (array!42184 (_ BitVec 32) List!14251) Bool)

(assert (=> b!764240 (= res!517253 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14248))))

(declare-fun b!764241 () Bool)

(declare-fun e!425669 () Bool)

(assert (=> b!764241 (= e!425667 e!425669)))

(declare-fun res!517249 () Bool)

(assert (=> b!764241 (=> (not res!517249) (not e!425669))))

(declare-fun lt!340092 () SeekEntryResult!7803)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42184 (_ BitVec 32)) SeekEntryResult!7803)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!764241 (= res!517249 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20196 a!3186) j!159) mask!3328) (select (arr!20196 a!3186) j!159) a!3186 mask!3328) lt!340092))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!764241 (= lt!340092 (Intermediate!7803 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!764242 () Bool)

(assert (=> b!764242 (= e!425669 e!425665)))

(declare-fun res!517248 () Bool)

(assert (=> b!764242 (=> (not res!517248) (not e!425665))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!340096 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!340094 () array!42184)

(assert (=> b!764242 (= res!517248 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340096 mask!3328) lt!340096 lt!340094 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340096 lt!340094 mask!3328)))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!764242 (= lt!340096 (select (store (arr!20196 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!764242 (= lt!340094 (array!42185 (store (arr!20196 a!3186) i!1173 k!2102) (size!20617 a!3186)))))

(declare-fun e!425664 () Bool)

(declare-fun b!764243 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42184 (_ BitVec 32)) SeekEntryResult!7803)

(assert (=> b!764243 (= e!425664 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20196 a!3186) j!159) a!3186 mask!3328) (Found!7803 j!159)))))

(declare-fun b!764244 () Bool)

(declare-fun res!517247 () Bool)

(assert (=> b!764244 (=> (not res!517247) (not e!425667))))

(assert (=> b!764244 (= res!517247 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!764245 () Bool)

(declare-fun res!517256 () Bool)

(assert (=> b!764245 (=> (not res!517256) (not e!425669))))

(assert (=> b!764245 (= res!517256 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20196 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!764246 () Bool)

(assert (=> b!764246 (= e!425664 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20196 a!3186) j!159) a!3186 mask!3328) lt!340092))))

(declare-fun b!764247 () Bool)

(declare-fun res!517246 () Bool)

(assert (=> b!764247 (=> (not res!517246) (not e!425666))))

(declare-fun arrayContainsKey!0 (array!42184 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!764247 (= res!517246 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!764248 () Bool)

(declare-fun res!517254 () Bool)

(assert (=> b!764248 (=> (not res!517254) (not e!425669))))

(assert (=> b!764248 (= res!517254 e!425664)))

(declare-fun c!83883 () Bool)

(assert (=> b!764248 (= c!83883 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!764249 () Bool)

(declare-fun res!517250 () Bool)

(assert (=> b!764249 (=> (not res!517250) (not e!425666))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!764249 (= res!517250 (validKeyInArray!0 k!2102))))

(declare-fun b!764250 () Bool)

(declare-fun res!517245 () Bool)

(assert (=> b!764250 (=> (not res!517245) (not e!425666))))

(assert (=> b!764250 (= res!517245 (validKeyInArray!0 (select (arr!20196 a!3186) j!159)))))

(declare-fun b!764251 () Bool)

(declare-fun res!517251 () Bool)

(assert (=> b!764251 (=> (not res!517251) (not e!425667))))

(assert (=> b!764251 (= res!517251 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20617 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20617 a!3186))))))

(declare-fun b!764252 () Bool)

(assert (=> b!764252 (= e!425666 e!425667)))

(declare-fun res!517252 () Bool)

(assert (=> b!764252 (=> (not res!517252) (not e!425667))))

(declare-fun lt!340095 () SeekEntryResult!7803)

(assert (=> b!764252 (= res!517252 (or (= lt!340095 (MissingZero!7803 i!1173)) (= lt!340095 (MissingVacant!7803 i!1173))))))

(assert (=> b!764252 (= lt!340095 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!66326 res!517255) b!764239))

(assert (= (and b!764239 res!517257) b!764250))

(assert (= (and b!764250 res!517245) b!764249))

(assert (= (and b!764249 res!517250) b!764247))

(assert (= (and b!764247 res!517246) b!764252))

(assert (= (and b!764252 res!517252) b!764244))

(assert (= (and b!764244 res!517247) b!764240))

(assert (= (and b!764240 res!517253) b!764251))

(assert (= (and b!764251 res!517251) b!764241))

(assert (= (and b!764241 res!517249) b!764245))

(assert (= (and b!764245 res!517256) b!764248))

(assert (= (and b!764248 c!83883) b!764246))

(assert (= (and b!764248 (not c!83883)) b!764243))

(assert (= (and b!764248 res!517254) b!764242))

(assert (= (and b!764242 res!517248) b!764238))

(declare-fun m!710693 () Bool)

(assert (=> b!764247 m!710693))

(declare-fun m!710695 () Bool)

(assert (=> b!764242 m!710695))

(declare-fun m!710697 () Bool)

(assert (=> b!764242 m!710697))

(declare-fun m!710699 () Bool)

(assert (=> b!764242 m!710699))

(assert (=> b!764242 m!710699))

(declare-fun m!710701 () Bool)

(assert (=> b!764242 m!710701))

(declare-fun m!710703 () Bool)

(assert (=> b!764242 m!710703))

(declare-fun m!710705 () Bool)

(assert (=> b!764240 m!710705))

(declare-fun m!710707 () Bool)

(assert (=> b!764250 m!710707))

(assert (=> b!764250 m!710707))

(declare-fun m!710709 () Bool)

(assert (=> b!764250 m!710709))

(assert (=> b!764246 m!710707))

(assert (=> b!764246 m!710707))

(declare-fun m!710711 () Bool)

(assert (=> b!764246 m!710711))

(declare-fun m!710713 () Bool)

(assert (=> b!764252 m!710713))

(assert (=> b!764238 m!710707))

(assert (=> b!764238 m!710707))

(declare-fun m!710715 () Bool)

(assert (=> b!764238 m!710715))

(declare-fun m!710717 () Bool)

(assert (=> b!764238 m!710717))

(declare-fun m!710719 () Bool)

(assert (=> b!764238 m!710719))

(assert (=> b!764241 m!710707))

(assert (=> b!764241 m!710707))

(declare-fun m!710721 () Bool)

(assert (=> b!764241 m!710721))

(assert (=> b!764241 m!710721))

(assert (=> b!764241 m!710707))

(declare-fun m!710723 () Bool)

(assert (=> b!764241 m!710723))

(declare-fun m!710725 () Bool)

(assert (=> b!764249 m!710725))

(declare-fun m!710727 () Bool)

(assert (=> b!764245 m!710727))

(declare-fun m!710729 () Bool)

(assert (=> start!66326 m!710729))

(declare-fun m!710731 () Bool)

(assert (=> start!66326 m!710731))

(declare-fun m!710733 () Bool)

(assert (=> b!764244 m!710733))

(assert (=> b!764243 m!710707))

(assert (=> b!764243 m!710707))

(declare-fun m!710735 () Bool)

(assert (=> b!764243 m!710735))

(push 1)

(assert (not b!764246))

(assert (not b!764240))

(assert (not start!66326))

(assert (not b!764247))

(assert (not b!764241))

(assert (not b!764244))

(assert (not b!764242))

(assert (not b!764250))

(assert (not b!764252))

(assert (not b!764243))

(assert (not b!764249))

(assert (not b!764238))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!100899 () Bool)

(declare-fun res!517355 () Bool)

(declare-fun e!425731 () Bool)

(assert (=> d!100899 (=> res!517355 e!425731)))

(assert (=> d!100899 (= res!517355 (= (select (arr!20196 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!100899 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!425731)))

(declare-fun b!764380 () Bool)

(declare-fun e!425732 () Bool)

(assert (=> b!764380 (= e!425731 e!425732)))

(declare-fun res!517356 () Bool)

(assert (=> b!764380 (=> (not res!517356) (not e!425732))))

(assert (=> b!764380 (= res!517356 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20617 a!3186)))))

(declare-fun b!764381 () Bool)

(assert (=> b!764381 (= e!425732 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!100899 (not res!517355)) b!764380))

(assert (= (and b!764380 res!517356) b!764381))

(declare-fun m!710837 () Bool)

(assert (=> d!100899 m!710837))

(declare-fun m!710839 () Bool)

(assert (=> b!764381 m!710839))

(assert (=> b!764247 d!100899))

(declare-fun b!764442 () Bool)

(declare-fun lt!340157 () SeekEntryResult!7803)

(assert (=> b!764442 (and (bvsge (index!33581 lt!340157) #b00000000000000000000000000000000) (bvslt (index!33581 lt!340157) (size!20617 a!3186)))))

(declare-fun e!425769 () Bool)

(assert (=> b!764442 (= e!425769 (= (select (arr!20196 a!3186) (index!33581 lt!340157)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!764443 () Bool)

(declare-fun e!425768 () Bool)

(assert (=> b!764443 (= e!425768 (bvsge (x!64504 lt!340157) #b01111111111111111111111111111110))))

(declare-fun e!425771 () SeekEntryResult!7803)

(declare-fun b!764444 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!764444 (= e!425771 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20196 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!764445 () Bool)

(assert (=> b!764445 (= e!425771 (Intermediate!7803 false index!1321 x!1131))))

(declare-fun b!764446 () Bool)

(assert (=> b!764446 (and (bvsge (index!33581 lt!340157) #b00000000000000000000000000000000) (bvslt (index!33581 lt!340157) (size!20617 a!3186)))))

(declare-fun res!517371 () Bool)

(assert (=> b!764446 (= res!517371 (= (select (arr!20196 a!3186) (index!33581 lt!340157)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!764446 (=> res!517371 e!425769)))

(declare-fun b!764447 () Bool)

(declare-fun e!425767 () Bool)

(assert (=> b!764447 (= e!425768 e!425767)))

(declare-fun res!517370 () Bool)

(assert (=> b!764447 (= res!517370 (and (is-Intermediate!7803 lt!340157) (not (undefined!8615 lt!340157)) (bvslt (x!64504 lt!340157) #b01111111111111111111111111111110) (bvsge (x!64504 lt!340157) #b00000000000000000000000000000000) (bvsge (x!64504 lt!340157) x!1131)))))

(assert (=> b!764447 (=> (not res!517370) (not e!425767))))

(declare-fun d!100907 () Bool)

(assert (=> d!100907 e!425768))

(declare-fun c!83924 () Bool)

(assert (=> d!100907 (= c!83924 (and (is-Intermediate!7803 lt!340157) (undefined!8615 lt!340157)))))

(declare-fun e!425770 () SeekEntryResult!7803)

(assert (=> d!100907 (= lt!340157 e!425770)))

(declare-fun c!83925 () Bool)

(assert (=> d!100907 (= c!83925 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!340156 () (_ BitVec 64))

(assert (=> d!100907 (= lt!340156 (select (arr!20196 a!3186) index!1321))))

(assert (=> d!100907 (validMask!0 mask!3328)))

(assert (=> d!100907 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20196 a!3186) j!159) a!3186 mask!3328) lt!340157)))

(declare-fun b!764448 () Bool)

(assert (=> b!764448 (= e!425770 e!425771)))

(declare-fun c!83923 () Bool)

(assert (=> b!764448 (= c!83923 (or (= lt!340156 (select (arr!20196 a!3186) j!159)) (= (bvadd lt!340156 lt!340156) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!764449 () Bool)

(assert (=> b!764449 (and (bvsge (index!33581 lt!340157) #b00000000000000000000000000000000) (bvslt (index!33581 lt!340157) (size!20617 a!3186)))))

(declare-fun res!517369 () Bool)

(assert (=> b!764449 (= res!517369 (= (select (arr!20196 a!3186) (index!33581 lt!340157)) (select (arr!20196 a!3186) j!159)))))

(assert (=> b!764449 (=> res!517369 e!425769)))

(assert (=> b!764449 (= e!425767 e!425769)))

(declare-fun b!764450 () Bool)

(assert (=> b!764450 (= e!425770 (Intermediate!7803 true index!1321 x!1131))))

(assert (= (and d!100907 c!83925) b!764450))

(assert (= (and d!100907 (not c!83925)) b!764448))

(assert (= (and b!764448 c!83923) b!764445))

(assert (= (and b!764448 (not c!83923)) b!764444))

(assert (= (and d!100907 c!83924) b!764443))

(assert (= (and d!100907 (not c!83924)) b!764447))

(assert (= (and b!764447 res!517370) b!764449))

(assert (= (and b!764449 (not res!517369)) b!764446))

(assert (= (and b!764446 (not res!517371)) b!764442))

(declare-fun m!710859 () Bool)

(assert (=> d!100907 m!710859))

(assert (=> d!100907 m!710729))

(declare-fun m!710861 () Bool)

(assert (=> b!764446 m!710861))

(assert (=> b!764442 m!710861))

(assert (=> b!764449 m!710861))

(declare-fun m!710863 () Bool)

(assert (=> b!764444 m!710863))

(assert (=> b!764444 m!710863))

(assert (=> b!764444 m!710707))

(declare-fun m!710865 () Bool)

(assert (=> b!764444 m!710865))

(assert (=> b!764246 d!100907))

(declare-fun d!100919 () Bool)

(assert (=> d!100919 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!764249 d!100919))

(declare-fun d!100921 () Bool)

(assert (=> d!100921 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!66326 d!100921))

(declare-fun d!100929 () Bool)

(assert (=> d!100929 (= (array_inv!15970 a!3186) (bvsge (size!20617 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!66326 d!100929))

(declare-fun d!100931 () Bool)

(assert (=> d!100931 (= (validKeyInArray!0 (select (arr!20196 a!3186) j!159)) (and (not (= (select (arr!20196 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20196 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!764250 d!100931))

(declare-fun lt!340219 () SeekEntryResult!7803)

(declare-fun b!764569 () Bool)

(declare-fun e!425841 () SeekEntryResult!7803)

(assert (=> b!764569 (= e!425841 (seekKeyOrZeroReturnVacant!0 (x!64504 lt!340219) (index!33581 lt!340219) (index!33581 lt!340219) (select (arr!20196 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!100933 () Bool)

(declare-fun lt!340220 () SeekEntryResult!7803)

(assert (=> d!100933 (and (or (is-Undefined!7803 lt!340220) (not (is-Found!7803 lt!340220)) (and (bvsge (index!33580 lt!340220) #b00000000000000000000000000000000) (bvslt (index!33580 lt!340220) (size!20617 a!3186)))) (or (is-Undefined!7803 lt!340220) (is-Found!7803 lt!340220) (not (is-MissingZero!7803 lt!340220)) (and (bvsge (index!33579 lt!340220) #b00000000000000000000000000000000) (bvslt (index!33579 lt!340220) (size!20617 a!3186)))) (or (is-Undefined!7803 lt!340220) (is-Found!7803 lt!340220) (is-MissingZero!7803 lt!340220) (not (is-MissingVacant!7803 lt!340220)) (and (bvsge (index!33582 lt!340220) #b00000000000000000000000000000000) (bvslt (index!33582 lt!340220) (size!20617 a!3186)))) (or (is-Undefined!7803 lt!340220) (ite (is-Found!7803 lt!340220) (= (select (arr!20196 a!3186) (index!33580 lt!340220)) (select (arr!20196 a!3186) j!159)) (ite (is-MissingZero!7803 lt!340220) (= (select (arr!20196 a!3186) (index!33579 lt!340220)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7803 lt!340220) (= (select (arr!20196 a!3186) (index!33582 lt!340220)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!425842 () SeekEntryResult!7803)

(assert (=> d!100933 (= lt!340220 e!425842)))

(declare-fun c!83972 () Bool)

(assert (=> d!100933 (= c!83972 (and (is-Intermediate!7803 lt!340219) (undefined!8615 lt!340219)))))

(assert (=> d!100933 (= lt!340219 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20196 a!3186) j!159) mask!3328) (select (arr!20196 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!100933 (validMask!0 mask!3328)))

(assert (=> d!100933 (= (seekEntryOrOpen!0 (select (arr!20196 a!3186) j!159) a!3186 mask!3328) lt!340220)))

(declare-fun b!764570 () Bool)

(declare-fun e!425840 () SeekEntryResult!7803)

(assert (=> b!764570 (= e!425842 e!425840)))

(declare-fun lt!340221 () (_ BitVec 64))

(assert (=> b!764570 (= lt!340221 (select (arr!20196 a!3186) (index!33581 lt!340219)))))

(declare-fun c!83973 () Bool)

(assert (=> b!764570 (= c!83973 (= lt!340221 (select (arr!20196 a!3186) j!159)))))

(declare-fun b!764571 () Bool)

(declare-fun c!83974 () Bool)

(assert (=> b!764571 (= c!83974 (= lt!340221 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!764571 (= e!425840 e!425841)))

(declare-fun b!764572 () Bool)

(assert (=> b!764572 (= e!425842 Undefined!7803)))

(declare-fun b!764573 () Bool)

(assert (=> b!764573 (= e!425840 (Found!7803 (index!33581 lt!340219)))))

(declare-fun b!764574 () Bool)

(assert (=> b!764574 (= e!425841 (MissingZero!7803 (index!33581 lt!340219)))))

(assert (= (and d!100933 c!83972) b!764572))

(assert (= (and d!100933 (not c!83972)) b!764570))

(assert (= (and b!764570 c!83973) b!764573))

(assert (= (and b!764570 (not c!83973)) b!764571))

(assert (= (and b!764571 c!83974) b!764574))

(assert (= (and b!764571 (not c!83974)) b!764569))

(assert (=> b!764569 m!710707))

(declare-fun m!710941 () Bool)

(assert (=> b!764569 m!710941))

(assert (=> d!100933 m!710707))

(assert (=> d!100933 m!710721))

(declare-fun m!710943 () Bool)

(assert (=> d!100933 m!710943))

(declare-fun m!710945 () Bool)

(assert (=> d!100933 m!710945))

(assert (=> d!100933 m!710729))

(declare-fun m!710947 () Bool)

(assert (=> d!100933 m!710947))

(assert (=> d!100933 m!710721))

(assert (=> d!100933 m!710707))

(assert (=> d!100933 m!710723))

(declare-fun m!710949 () Bool)

(assert (=> b!764570 m!710949))

(assert (=> b!764238 d!100933))

(declare-fun b!764640 () Bool)

(declare-fun e!425885 () Bool)

(declare-fun call!35014 () Bool)

(assert (=> b!764640 (= e!425885 call!35014)))

(declare-fun b!764641 () Bool)

(declare-fun e!425884 () Bool)

(assert (=> b!764641 (= e!425884 call!35014)))

(declare-fun bm!35011 () Bool)

(assert (=> bm!35011 (= call!35014 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun d!100955 () Bool)

(declare-fun res!517425 () Bool)

(declare-fun e!425886 () Bool)

(assert (=> d!100955 (=> res!517425 e!425886)))

(assert (=> d!100955 (= res!517425 (bvsge j!159 (size!20617 a!3186)))))

(assert (=> d!100955 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!425886)))

(declare-fun b!764642 () Bool)

(assert (=> b!764642 (= e!425886 e!425885)))

(declare-fun c!83995 () Bool)

(assert (=> b!764642 (= c!83995 (validKeyInArray!0 (select (arr!20196 a!3186) j!159)))))

(declare-fun b!764643 () Bool)

(assert (=> b!764643 (= e!425885 e!425884)))

(declare-fun lt!340250 () (_ BitVec 64))

(assert (=> b!764643 (= lt!340250 (select (arr!20196 a!3186) j!159))))

(declare-fun lt!340249 () Unit!26332)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42184 (_ BitVec 64) (_ BitVec 32)) Unit!26332)

(assert (=> b!764643 (= lt!340249 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!340250 j!159))))

(assert (=> b!764643 (arrayContainsKey!0 a!3186 lt!340250 #b00000000000000000000000000000000)))

(declare-fun lt!340251 () Unit!26332)

(assert (=> b!764643 (= lt!340251 lt!340249)))

(declare-fun res!517426 () Bool)

(assert (=> b!764643 (= res!517426 (= (seekEntryOrOpen!0 (select (arr!20196 a!3186) j!159) a!3186 mask!3328) (Found!7803 j!159)))))

(assert (=> b!764643 (=> (not res!517426) (not e!425884))))

(assert (= (and d!100955 (not res!517425)) b!764642))

(assert (= (and b!764642 c!83995) b!764643))

(assert (= (and b!764642 (not c!83995)) b!764640))

(assert (= (and b!764643 res!517426) b!764641))

(assert (= (or b!764641 b!764640) bm!35011))

(declare-fun m!711001 () Bool)

(assert (=> bm!35011 m!711001))

(assert (=> b!764642 m!710707))

(assert (=> b!764642 m!710707))

(assert (=> b!764642 m!710709))

(assert (=> b!764643 m!710707))

(declare-fun m!711003 () Bool)

(assert (=> b!764643 m!711003))

(declare-fun m!711005 () Bool)

(assert (=> b!764643 m!711005))

(assert (=> b!764643 m!710707))

(assert (=> b!764643 m!710715))

(assert (=> b!764238 d!100955))

(declare-fun d!100977 () Bool)

(assert (=> d!100977 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!340256 () Unit!26332)

(declare-fun choose!38 (array!42184 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26332)

(assert (=> d!100977 (= lt!340256 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!100977 (validMask!0 mask!3328)))

(assert (=> d!100977 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!340256)))

(declare-fun bs!21470 () Bool)

(assert (= bs!21470 d!100977))

(assert (=> bs!21470 m!710717))

(declare-fun m!711015 () Bool)

(assert (=> bs!21470 m!711015))

(assert (=> bs!21470 m!710729))

(assert (=> b!764238 d!100977))

(declare-fun b!764672 () Bool)

(declare-fun lt!340261 () SeekEntryResult!7803)

(assert (=> b!764672 (and (bvsge (index!33581 lt!340261) #b00000000000000000000000000000000) (bvslt (index!33581 lt!340261) (size!20617 a!3186)))))

(declare-fun e!425909 () Bool)

(assert (=> b!764672 (= e!425909 (= (select (arr!20196 a!3186) (index!33581 lt!340261)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!764673 () Bool)

(declare-fun e!425908 () Bool)

(assert (=> b!764673 (= e!425908 (bvsge (x!64504 lt!340261) #b01111111111111111111111111111110))))

(declare-fun e!425911 () SeekEntryResult!7803)

(declare-fun b!764674 () Bool)

(assert (=> b!764674 (= e!425911 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20196 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20196 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!764675 () Bool)

(assert (=> b!764675 (= e!425911 (Intermediate!7803 false (toIndex!0 (select (arr!20196 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!764676 () Bool)

(assert (=> b!764676 (and (bvsge (index!33581 lt!340261) #b00000000000000000000000000000000) (bvslt (index!33581 lt!340261) (size!20617 a!3186)))))

(declare-fun res!517443 () Bool)

(assert (=> b!764676 (= res!517443 (= (select (arr!20196 a!3186) (index!33581 lt!340261)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!764676 (=> res!517443 e!425909)))

(declare-fun b!764677 () Bool)

(declare-fun e!425907 () Bool)

(assert (=> b!764677 (= e!425908 e!425907)))

(declare-fun res!517442 () Bool)

(assert (=> b!764677 (= res!517442 (and (is-Intermediate!7803 lt!340261) (not (undefined!8615 lt!340261)) (bvslt (x!64504 lt!340261) #b01111111111111111111111111111110) (bvsge (x!64504 lt!340261) #b00000000000000000000000000000000) (bvsge (x!64504 lt!340261) #b00000000000000000000000000000000)))))

(assert (=> b!764677 (=> (not res!517442) (not e!425907))))

(declare-fun d!100981 () Bool)

(assert (=> d!100981 e!425908))

(declare-fun c!84004 () Bool)

(assert (=> d!100981 (= c!84004 (and (is-Intermediate!7803 lt!340261) (undefined!8615 lt!340261)))))

(declare-fun e!425910 () SeekEntryResult!7803)

(assert (=> d!100981 (= lt!340261 e!425910)))

(declare-fun c!84005 () Bool)

(assert (=> d!100981 (= c!84005 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!340260 () (_ BitVec 64))

(assert (=> d!100981 (= lt!340260 (select (arr!20196 a!3186) (toIndex!0 (select (arr!20196 a!3186) j!159) mask!3328)))))

(assert (=> d!100981 (validMask!0 mask!3328)))

(assert (=> d!100981 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20196 a!3186) j!159) mask!3328) (select (arr!20196 a!3186) j!159) a!3186 mask!3328) lt!340261)))

(declare-fun b!764678 () Bool)

(assert (=> b!764678 (= e!425910 e!425911)))

(declare-fun c!84003 () Bool)

(assert (=> b!764678 (= c!84003 (or (= lt!340260 (select (arr!20196 a!3186) j!159)) (= (bvadd lt!340260 lt!340260) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!764679 () Bool)

(assert (=> b!764679 (and (bvsge (index!33581 lt!340261) #b00000000000000000000000000000000) (bvslt (index!33581 lt!340261) (size!20617 a!3186)))))

(declare-fun res!517441 () Bool)

(assert (=> b!764679 (= res!517441 (= (select (arr!20196 a!3186) (index!33581 lt!340261)) (select (arr!20196 a!3186) j!159)))))

(assert (=> b!764679 (=> res!517441 e!425909)))

(assert (=> b!764679 (= e!425907 e!425909)))

(declare-fun b!764680 () Bool)

(assert (=> b!764680 (= e!425910 (Intermediate!7803 true (toIndex!0 (select (arr!20196 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!100981 c!84005) b!764680))

(assert (= (and d!100981 (not c!84005)) b!764678))

(assert (= (and b!764678 c!84003) b!764675))

(assert (= (and b!764678 (not c!84003)) b!764674))

(assert (= (and d!100981 c!84004) b!764673))

(assert (= (and d!100981 (not c!84004)) b!764677))

(assert (= (and b!764677 res!517442) b!764679))

(assert (= (and b!764679 (not res!517441)) b!764676))

(assert (= (and b!764676 (not res!517443)) b!764672))

(assert (=> d!100981 m!710721))

(declare-fun m!711027 () Bool)

(assert (=> d!100981 m!711027))

(assert (=> d!100981 m!710729))

(declare-fun m!711029 () Bool)

(assert (=> b!764676 m!711029))

(assert (=> b!764672 m!711029))

(assert (=> b!764679 m!711029))

(assert (=> b!764674 m!710721))

(declare-fun m!711031 () Bool)

(assert (=> b!764674 m!711031))

(assert (=> b!764674 m!711031))

(assert (=> b!764674 m!710707))

(declare-fun m!711033 () Bool)

(assert (=> b!764674 m!711033))

(assert (=> b!764241 d!100981))

(declare-fun d!100985 () Bool)

(declare-fun lt!340267 () (_ BitVec 32))

(declare-fun lt!340266 () (_ BitVec 32))

(assert (=> d!100985 (= lt!340267 (bvmul (bvxor lt!340266 (bvlshr lt!340266 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!100985 (= lt!340266 ((_ extract 31 0) (bvand (bvxor (select (arr!20196 a!3186) j!159) (bvlshr (select (arr!20196 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!100985 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!517444 (let ((h!15336 ((_ extract 31 0) (bvand (bvxor (select (arr!20196 a!3186) j!159) (bvlshr (select (arr!20196 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64514 (bvmul (bvxor h!15336 (bvlshr h!15336 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64514 (bvlshr x!64514 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!517444 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!517444 #b00000000000000000000000000000000))))))

(assert (=> d!100985 (= (toIndex!0 (select (arr!20196 a!3186) j!159) mask!3328) (bvand (bvxor lt!340267 (bvlshr lt!340267 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!764241 d!100985))

(declare-fun e!425913 () SeekEntryResult!7803)

(declare-fun lt!340268 () SeekEntryResult!7803)

(declare-fun b!764681 () Bool)

(assert (=> b!764681 (= e!425913 (seekKeyOrZeroReturnVacant!0 (x!64504 lt!340268) (index!33581 lt!340268) (index!33581 lt!340268) k!2102 a!3186 mask!3328))))

(declare-fun d!100987 () Bool)

(declare-fun lt!340269 () SeekEntryResult!7803)

(assert (=> d!100987 (and (or (is-Undefined!7803 lt!340269) (not (is-Found!7803 lt!340269)) (and (bvsge (index!33580 lt!340269) #b00000000000000000000000000000000) (bvslt (index!33580 lt!340269) (size!20617 a!3186)))) (or (is-Undefined!7803 lt!340269) (is-Found!7803 lt!340269) (not (is-MissingZero!7803 lt!340269)) (and (bvsge (index!33579 lt!340269) #b00000000000000000000000000000000) (bvslt (index!33579 lt!340269) (size!20617 a!3186)))) (or (is-Undefined!7803 lt!340269) (is-Found!7803 lt!340269) (is-MissingZero!7803 lt!340269) (not (is-MissingVacant!7803 lt!340269)) (and (bvsge (index!33582 lt!340269) #b00000000000000000000000000000000) (bvslt (index!33582 lt!340269) (size!20617 a!3186)))) (or (is-Undefined!7803 lt!340269) (ite (is-Found!7803 lt!340269) (= (select (arr!20196 a!3186) (index!33580 lt!340269)) k!2102) (ite (is-MissingZero!7803 lt!340269) (= (select (arr!20196 a!3186) (index!33579 lt!340269)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7803 lt!340269) (= (select (arr!20196 a!3186) (index!33582 lt!340269)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!425914 () SeekEntryResult!7803)

(assert (=> d!100987 (= lt!340269 e!425914)))

(declare-fun c!84006 () Bool)

(assert (=> d!100987 (= c!84006 (and (is-Intermediate!7803 lt!340268) (undefined!8615 lt!340268)))))

(assert (=> d!100987 (= lt!340268 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!100987 (validMask!0 mask!3328)))

(assert (=> d!100987 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!340269)))

(declare-fun b!764682 () Bool)

(declare-fun e!425912 () SeekEntryResult!7803)

(assert (=> b!764682 (= e!425914 e!425912)))

(declare-fun lt!340270 () (_ BitVec 64))

(assert (=> b!764682 (= lt!340270 (select (arr!20196 a!3186) (index!33581 lt!340268)))))

(declare-fun c!84007 () Bool)

(assert (=> b!764682 (= c!84007 (= lt!340270 k!2102))))

(declare-fun b!764683 () Bool)

(declare-fun c!84008 () Bool)

(assert (=> b!764683 (= c!84008 (= lt!340270 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!764683 (= e!425912 e!425913)))

(declare-fun b!764684 () Bool)

(assert (=> b!764684 (= e!425914 Undefined!7803)))

(declare-fun b!764685 () Bool)

(assert (=> b!764685 (= e!425912 (Found!7803 (index!33581 lt!340268)))))

(declare-fun b!764686 () Bool)

(assert (=> b!764686 (= e!425913 (MissingZero!7803 (index!33581 lt!340268)))))

(assert (= (and d!100987 c!84006) b!764684))

(assert (= (and d!100987 (not c!84006)) b!764682))

(assert (= (and b!764682 c!84007) b!764685))

(assert (= (and b!764682 (not c!84007)) b!764683))

(assert (= (and b!764683 c!84008) b!764686))

(assert (= (and b!764683 (not c!84008)) b!764681))

(declare-fun m!711035 () Bool)

(assert (=> b!764681 m!711035))

(declare-fun m!711037 () Bool)

(assert (=> d!100987 m!711037))

(declare-fun m!711039 () Bool)

(assert (=> d!100987 m!711039))

(declare-fun m!711041 () Bool)

(assert (=> d!100987 m!711041))

(assert (=> d!100987 m!710729))

(declare-fun m!711043 () Bool)

(assert (=> d!100987 m!711043))

(assert (=> d!100987 m!711037))

(declare-fun m!711045 () Bool)

(assert (=> d!100987 m!711045))

(declare-fun m!711047 () Bool)

(assert (=> b!764682 m!711047))

(assert (=> b!764252 d!100987))

(declare-fun b!764687 () Bool)

(declare-fun lt!340272 () SeekEntryResult!7803)

(assert (=> b!764687 (and (bvsge (index!33581 lt!340272) #b00000000000000000000000000000000) (bvslt (index!33581 lt!340272) (size!20617 lt!340094)))))

(declare-fun e!425917 () Bool)

(assert (=> b!764687 (= e!425917 (= (select (arr!20196 lt!340094) (index!33581 lt!340272)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!764688 () Bool)

(declare-fun e!425916 () Bool)

(assert (=> b!764688 (= e!425916 (bvsge (x!64504 lt!340272) #b01111111111111111111111111111110))))

(declare-fun e!425919 () SeekEntryResult!7803)

(declare-fun b!764689 () Bool)

(assert (=> b!764689 (= e!425919 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!340096 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!340096 lt!340094 mask!3328))))

(declare-fun b!764690 () Bool)

(assert (=> b!764690 (= e!425919 (Intermediate!7803 false (toIndex!0 lt!340096 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!764691 () Bool)

(assert (=> b!764691 (and (bvsge (index!33581 lt!340272) #b00000000000000000000000000000000) (bvslt (index!33581 lt!340272) (size!20617 lt!340094)))))

(declare-fun res!517447 () Bool)

(assert (=> b!764691 (= res!517447 (= (select (arr!20196 lt!340094) (index!33581 lt!340272)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!764691 (=> res!517447 e!425917)))

(declare-fun b!764692 () Bool)

(declare-fun e!425915 () Bool)

(assert (=> b!764692 (= e!425916 e!425915)))

(declare-fun res!517446 () Bool)

(assert (=> b!764692 (= res!517446 (and (is-Intermediate!7803 lt!340272) (not (undefined!8615 lt!340272)) (bvslt (x!64504 lt!340272) #b01111111111111111111111111111110) (bvsge (x!64504 lt!340272) #b00000000000000000000000000000000) (bvsge (x!64504 lt!340272) #b00000000000000000000000000000000)))))

(assert (=> b!764692 (=> (not res!517446) (not e!425915))))

(declare-fun d!100989 () Bool)

(assert (=> d!100989 e!425916))

(declare-fun c!84010 () Bool)

(assert (=> d!100989 (= c!84010 (and (is-Intermediate!7803 lt!340272) (undefined!8615 lt!340272)))))

(declare-fun e!425918 () SeekEntryResult!7803)

(assert (=> d!100989 (= lt!340272 e!425918)))

(declare-fun c!84011 () Bool)

(assert (=> d!100989 (= c!84011 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!340271 () (_ BitVec 64))

(assert (=> d!100989 (= lt!340271 (select (arr!20196 lt!340094) (toIndex!0 lt!340096 mask!3328)))))

(assert (=> d!100989 (validMask!0 mask!3328)))

(assert (=> d!100989 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340096 mask!3328) lt!340096 lt!340094 mask!3328) lt!340272)))

(declare-fun b!764693 () Bool)

(assert (=> b!764693 (= e!425918 e!425919)))

(declare-fun c!84009 () Bool)

(assert (=> b!764693 (= c!84009 (or (= lt!340271 lt!340096) (= (bvadd lt!340271 lt!340271) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!764694 () Bool)

(assert (=> b!764694 (and (bvsge (index!33581 lt!340272) #b00000000000000000000000000000000) (bvslt (index!33581 lt!340272) (size!20617 lt!340094)))))

(declare-fun res!517445 () Bool)

(assert (=> b!764694 (= res!517445 (= (select (arr!20196 lt!340094) (index!33581 lt!340272)) lt!340096))))

(assert (=> b!764694 (=> res!517445 e!425917)))

(assert (=> b!764694 (= e!425915 e!425917)))

(declare-fun b!764695 () Bool)

(assert (=> b!764695 (= e!425918 (Intermediate!7803 true (toIndex!0 lt!340096 mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!100989 c!84011) b!764695))

(assert (= (and d!100989 (not c!84011)) b!764693))

(assert (= (and b!764693 c!84009) b!764690))

(assert (= (and b!764693 (not c!84009)) b!764689))

(assert (= (and d!100989 c!84010) b!764688))

(assert (= (and d!100989 (not c!84010)) b!764692))

(assert (= (and b!764692 res!517446) b!764694))

(assert (= (and b!764694 (not res!517445)) b!764691))

(assert (= (and b!764691 (not res!517447)) b!764687))

(assert (=> d!100989 m!710699))

(declare-fun m!711049 () Bool)

(assert (=> d!100989 m!711049))

(assert (=> d!100989 m!710729))

(declare-fun m!711051 () Bool)

(assert (=> b!764691 m!711051))

(assert (=> b!764687 m!711051))

(assert (=> b!764694 m!711051))

(assert (=> b!764689 m!710699))

(declare-fun m!711053 () Bool)

(assert (=> b!764689 m!711053))

(assert (=> b!764689 m!711053))

(declare-fun m!711055 () Bool)

(assert (=> b!764689 m!711055))

(assert (=> b!764242 d!100989))

(declare-fun d!100991 () Bool)

(declare-fun lt!340274 () (_ BitVec 32))

(declare-fun lt!340273 () (_ BitVec 32))

(assert (=> d!100991 (= lt!340274 (bvmul (bvxor lt!340273 (bvlshr lt!340273 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!100991 (= lt!340273 ((_ extract 31 0) (bvand (bvxor lt!340096 (bvlshr lt!340096 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!100991 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!517444 (let ((h!15336 ((_ extract 31 0) (bvand (bvxor lt!340096 (bvlshr lt!340096 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64514 (bvmul (bvxor h!15336 (bvlshr h!15336 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64514 (bvlshr x!64514 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!517444 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!517444 #b00000000000000000000000000000000))))))

(assert (=> d!100991 (= (toIndex!0 lt!340096 mask!3328) (bvand (bvxor lt!340274 (bvlshr lt!340274 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!764242 d!100991))

(declare-fun b!764696 () Bool)

(declare-fun lt!340276 () SeekEntryResult!7803)

(assert (=> b!764696 (and (bvsge (index!33581 lt!340276) #b00000000000000000000000000000000) (bvslt (index!33581 lt!340276) (size!20617 lt!340094)))))

(declare-fun e!425922 () Bool)

(assert (=> b!764696 (= e!425922 (= (select (arr!20196 lt!340094) (index!33581 lt!340276)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!764697 () Bool)

(declare-fun e!425921 () Bool)

(assert (=> b!764697 (= e!425921 (bvsge (x!64504 lt!340276) #b01111111111111111111111111111110))))

(declare-fun b!764698 () Bool)

(declare-fun e!425924 () SeekEntryResult!7803)

(assert (=> b!764698 (= e!425924 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!340096 lt!340094 mask!3328))))

(declare-fun b!764699 () Bool)

(assert (=> b!764699 (= e!425924 (Intermediate!7803 false index!1321 x!1131))))

(declare-fun b!764700 () Bool)

(assert (=> b!764700 (and (bvsge (index!33581 lt!340276) #b00000000000000000000000000000000) (bvslt (index!33581 lt!340276) (size!20617 lt!340094)))))

(declare-fun res!517450 () Bool)

(assert (=> b!764700 (= res!517450 (= (select (arr!20196 lt!340094) (index!33581 lt!340276)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!764700 (=> res!517450 e!425922)))

(declare-fun b!764701 () Bool)

(declare-fun e!425920 () Bool)

(assert (=> b!764701 (= e!425921 e!425920)))

(declare-fun res!517449 () Bool)

(assert (=> b!764701 (= res!517449 (and (is-Intermediate!7803 lt!340276) (not (undefined!8615 lt!340276)) (bvslt (x!64504 lt!340276) #b01111111111111111111111111111110) (bvsge (x!64504 lt!340276) #b00000000000000000000000000000000) (bvsge (x!64504 lt!340276) x!1131)))))

(assert (=> b!764701 (=> (not res!517449) (not e!425920))))

(declare-fun d!100993 () Bool)

(assert (=> d!100993 e!425921))

(declare-fun c!84013 () Bool)

(assert (=> d!100993 (= c!84013 (and (is-Intermediate!7803 lt!340276) (undefined!8615 lt!340276)))))

(declare-fun e!425923 () SeekEntryResult!7803)

(assert (=> d!100993 (= lt!340276 e!425923)))

(declare-fun c!84014 () Bool)

(assert (=> d!100993 (= c!84014 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!340275 () (_ BitVec 64))

(assert (=> d!100993 (= lt!340275 (select (arr!20196 lt!340094) index!1321))))

(assert (=> d!100993 (validMask!0 mask!3328)))

(assert (=> d!100993 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340096 lt!340094 mask!3328) lt!340276)))

(declare-fun b!764702 () Bool)

(assert (=> b!764702 (= e!425923 e!425924)))

(declare-fun c!84012 () Bool)

(assert (=> b!764702 (= c!84012 (or (= lt!340275 lt!340096) (= (bvadd lt!340275 lt!340275) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!764703 () Bool)

(assert (=> b!764703 (and (bvsge (index!33581 lt!340276) #b00000000000000000000000000000000) (bvslt (index!33581 lt!340276) (size!20617 lt!340094)))))

(declare-fun res!517448 () Bool)

(assert (=> b!764703 (= res!517448 (= (select (arr!20196 lt!340094) (index!33581 lt!340276)) lt!340096))))

(assert (=> b!764703 (=> res!517448 e!425922)))

(assert (=> b!764703 (= e!425920 e!425922)))

(declare-fun b!764704 () Bool)

(assert (=> b!764704 (= e!425923 (Intermediate!7803 true index!1321 x!1131))))

(assert (= (and d!100993 c!84014) b!764704))

(assert (= (and d!100993 (not c!84014)) b!764702))

(assert (= (and b!764702 c!84012) b!764699))

(assert (= (and b!764702 (not c!84012)) b!764698))

(assert (= (and d!100993 c!84013) b!764697))

(assert (= (and d!100993 (not c!84013)) b!764701))

(assert (= (and b!764701 res!517449) b!764703))

(assert (= (and b!764703 (not res!517448)) b!764700))

(assert (= (and b!764700 (not res!517450)) b!764696))

(declare-fun m!711057 () Bool)

(assert (=> d!100993 m!711057))

(assert (=> d!100993 m!710729))

(declare-fun m!711059 () Bool)

(assert (=> b!764700 m!711059))

(assert (=> b!764696 m!711059))

(assert (=> b!764703 m!711059))

(assert (=> b!764698 m!710863))

(assert (=> b!764698 m!710863))

(declare-fun m!711061 () Bool)

(assert (=> b!764698 m!711061))

(assert (=> b!764242 d!100993))

(declare-fun b!764716 () Bool)

(declare-fun e!425936 () Bool)

(declare-fun call!35021 () Bool)

(assert (=> b!764716 (= e!425936 call!35021)))

(declare-fun b!764717 () Bool)

(declare-fun e!425935 () Bool)

(declare-fun contains!4076 (List!14251 (_ BitVec 64)) Bool)

(assert (=> b!764717 (= e!425935 (contains!4076 Nil!14248 (select (arr!20196 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!35018 () Bool)

(declare-fun c!84017 () Bool)

(assert (=> bm!35018 (= call!35021 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!84017 (Cons!14247 (select (arr!20196 a!3186) #b00000000000000000000000000000000) Nil!14248) Nil!14248)))))

(declare-fun b!764718 () Bool)

(assert (=> b!764718 (= e!425936 call!35021)))

(declare-fun b!764719 () Bool)

(declare-fun e!425933 () Bool)

(declare-fun e!425934 () Bool)

(assert (=> b!764719 (= e!425933 e!425934)))

(declare-fun res!517458 () Bool)

(assert (=> b!764719 (=> (not res!517458) (not e!425934))))

(assert (=> b!764719 (= res!517458 (not e!425935))))

(declare-fun res!517459 () Bool)

(assert (=> b!764719 (=> (not res!517459) (not e!425935))))

(assert (=> b!764719 (= res!517459 (validKeyInArray!0 (select (arr!20196 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!764715 () Bool)

(assert (=> b!764715 (= e!425934 e!425936)))

(assert (=> b!764715 (= c!84017 (validKeyInArray!0 (select (arr!20196 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!100995 () Bool)

(declare-fun res!517457 () Bool)

(assert (=> d!100995 (=> res!517457 e!425933)))

(assert (=> d!100995 (= res!517457 (bvsge #b00000000000000000000000000000000 (size!20617 a!3186)))))

(assert (=> d!100995 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14248) e!425933)))

(assert (= (and d!100995 (not res!517457)) b!764719))

(assert (= (and b!764719 res!517459) b!764717))

(assert (= (and b!764719 res!517458) b!764715))

(assert (= (and b!764715 c!84017) b!764716))

(assert (= (and b!764715 (not c!84017)) b!764718))

(assert (= (or b!764716 b!764718) bm!35018))

(assert (=> b!764717 m!710837))

(assert (=> b!764717 m!710837))

(declare-fun m!711063 () Bool)

(assert (=> b!764717 m!711063))

(assert (=> bm!35018 m!710837))

(declare-fun m!711065 () Bool)

(assert (=> bm!35018 m!711065))

(assert (=> b!764719 m!710837))

(assert (=> b!764719 m!710837))

(declare-fun m!711067 () Bool)

(assert (=> b!764719 m!711067))

(assert (=> b!764715 m!710837))

(assert (=> b!764715 m!710837))

(assert (=> b!764715 m!711067))

(assert (=> b!764240 d!100995))

(declare-fun b!764720 () Bool)

(declare-fun e!425938 () Bool)

(declare-fun call!35022 () Bool)

(assert (=> b!764720 (= e!425938 call!35022)))

(declare-fun b!764721 () Bool)

(declare-fun e!425937 () Bool)

(assert (=> b!764721 (= e!425937 call!35022)))

(declare-fun bm!35019 () Bool)

(assert (=> bm!35019 (= call!35022 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun d!100997 () Bool)

(declare-fun res!517460 () Bool)

(declare-fun e!425939 () Bool)

(assert (=> d!100997 (=> res!517460 e!425939)))

(assert (=> d!100997 (= res!517460 (bvsge #b00000000000000000000000000000000 (size!20617 a!3186)))))

(assert (=> d!100997 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!425939)))

(declare-fun b!764722 () Bool)

(assert (=> b!764722 (= e!425939 e!425938)))

(declare-fun c!84018 () Bool)

(assert (=> b!764722 (= c!84018 (validKeyInArray!0 (select (arr!20196 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!764723 () Bool)

(assert (=> b!764723 (= e!425938 e!425937)))

(declare-fun lt!340278 () (_ BitVec 64))

(assert (=> b!764723 (= lt!340278 (select (arr!20196 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!340277 () Unit!26332)

(assert (=> b!764723 (= lt!340277 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!340278 #b00000000000000000000000000000000))))

(assert (=> b!764723 (arrayContainsKey!0 a!3186 lt!340278 #b00000000000000000000000000000000)))

(declare-fun lt!340279 () Unit!26332)

(assert (=> b!764723 (= lt!340279 lt!340277)))

(declare-fun res!517461 () Bool)

(assert (=> b!764723 (= res!517461 (= (seekEntryOrOpen!0 (select (arr!20196 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7803 #b00000000000000000000000000000000)))))

(assert (=> b!764723 (=> (not res!517461) (not e!425937))))

(assert (= (and d!100997 (not res!517460)) b!764722))

(assert (= (and b!764722 c!84018) b!764723))

(assert (= (and b!764722 (not c!84018)) b!764720))

(assert (= (and b!764723 res!517461) b!764721))

(assert (= (or b!764721 b!764720) bm!35019))

(declare-fun m!711069 () Bool)

(assert (=> bm!35019 m!711069))

(assert (=> b!764722 m!710837))

(assert (=> b!764722 m!710837))

(assert (=> b!764722 m!711067))

(assert (=> b!764723 m!710837))

(declare-fun m!711071 () Bool)

(assert (=> b!764723 m!711071))

(declare-fun m!711073 () Bool)

(assert (=> b!764723 m!711073))

(assert (=> b!764723 m!710837))

(declare-fun m!711075 () Bool)

(assert (=> b!764723 m!711075))

(assert (=> b!764244 d!100997))

(declare-fun b!764736 () Bool)

(declare-fun c!84027 () Bool)

(declare-fun lt!340285 () (_ BitVec 64))

(assert (=> b!764736 (= c!84027 (= lt!340285 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!425946 () SeekEntryResult!7803)

(declare-fun e!425947 () SeekEntryResult!7803)

(assert (=> b!764736 (= e!425946 e!425947)))

(declare-fun b!764737 () Bool)

(assert (=> b!764737 (= e!425947 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20196 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!764739 () Bool)

(assert (=> b!764739 (= e!425947 (MissingVacant!7803 resIntermediateIndex!5))))

(declare-fun b!764740 () Bool)

(declare-fun e!425948 () SeekEntryResult!7803)

(assert (=> b!764740 (= e!425948 Undefined!7803)))

(declare-fun b!764741 () Bool)

(assert (=> b!764741 (= e!425946 (Found!7803 index!1321))))

(declare-fun lt!340284 () SeekEntryResult!7803)

(declare-fun d!100999 () Bool)

(assert (=> d!100999 (and (or (is-Undefined!7803 lt!340284) (not (is-Found!7803 lt!340284)) (and (bvsge (index!33580 lt!340284) #b00000000000000000000000000000000) (bvslt (index!33580 lt!340284) (size!20617 a!3186)))) (or (is-Undefined!7803 lt!340284) (is-Found!7803 lt!340284) (not (is-MissingVacant!7803 lt!340284)) (not (= (index!33582 lt!340284) resIntermediateIndex!5)) (and (bvsge (index!33582 lt!340284) #b00000000000000000000000000000000) (bvslt (index!33582 lt!340284) (size!20617 a!3186)))) (or (is-Undefined!7803 lt!340284) (ite (is-Found!7803 lt!340284) (= (select (arr!20196 a!3186) (index!33580 lt!340284)) (select (arr!20196 a!3186) j!159)) (and (is-MissingVacant!7803 lt!340284) (= (index!33582 lt!340284) resIntermediateIndex!5) (= (select (arr!20196 a!3186) (index!33582 lt!340284)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!100999 (= lt!340284 e!425948)))

(declare-fun c!84025 () Bool)

(assert (=> d!100999 (= c!84025 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!100999 (= lt!340285 (select (arr!20196 a!3186) index!1321))))

(assert (=> d!100999 (validMask!0 mask!3328)))

(assert (=> d!100999 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20196 a!3186) j!159) a!3186 mask!3328) lt!340284)))

(declare-fun b!764738 () Bool)

(assert (=> b!764738 (= e!425948 e!425946)))

(declare-fun c!84026 () Bool)

(assert (=> b!764738 (= c!84026 (= lt!340285 (select (arr!20196 a!3186) j!159)))))

(assert (= (and d!100999 c!84025) b!764740))

(assert (= (and d!100999 (not c!84025)) b!764738))

(assert (= (and b!764738 c!84026) b!764741))

(assert (= (and b!764738 (not c!84026)) b!764736))

(assert (= (and b!764736 c!84027) b!764739))

(assert (= (and b!764736 (not c!84027)) b!764737))

(assert (=> b!764737 m!710863))

(assert (=> b!764737 m!710863))

(assert (=> b!764737 m!710707))

(declare-fun m!711077 () Bool)

(assert (=> b!764737 m!711077))

(declare-fun m!711079 () Bool)

(assert (=> d!100999 m!711079))

(declare-fun m!711081 () Bool)

(assert (=> d!100999 m!711081))

(assert (=> d!100999 m!710859))

(assert (=> d!100999 m!710729))

(assert (=> b!764243 d!100999))

(push 1)

