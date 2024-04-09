; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44330 () Bool)

(assert start!44330)

(declare-fun b!487230 () Bool)

(declare-fun res!290772 () Bool)

(declare-fun e!286677 () Bool)

(assert (=> b!487230 (=> (not res!290772) (not e!286677))))

(declare-datatypes ((array!31541 0))(
  ( (array!31542 (arr!15161 (Array (_ BitVec 32) (_ BitVec 64))) (size!15525 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31541)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31541 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!487230 (= res!290772 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!487231 () Bool)

(declare-fun res!290771 () Bool)

(declare-fun e!286675 () Bool)

(assert (=> b!487231 (=> (not res!290771) (not e!286675))))

(declare-datatypes ((List!9372 0))(
  ( (Nil!9369) (Cons!9368 (h!10224 (_ BitVec 64)) (t!15608 List!9372)) )
))
(declare-fun arrayNoDuplicates!0 (array!31541 (_ BitVec 32) List!9372) Bool)

(assert (=> b!487231 (= res!290771 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9369))))

(declare-fun b!487232 () Bool)

(assert (=> b!487232 (= e!286677 e!286675)))

(declare-fun res!290767 () Bool)

(assert (=> b!487232 (=> (not res!290767) (not e!286675))))

(declare-datatypes ((SeekEntryResult!3635 0))(
  ( (MissingZero!3635 (index!16719 (_ BitVec 32))) (Found!3635 (index!16720 (_ BitVec 32))) (Intermediate!3635 (undefined!4447 Bool) (index!16721 (_ BitVec 32)) (x!45866 (_ BitVec 32))) (Undefined!3635) (MissingVacant!3635 (index!16722 (_ BitVec 32))) )
))
(declare-fun lt!219980 () SeekEntryResult!3635)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!487232 (= res!290767 (or (= lt!219980 (MissingZero!3635 i!1204)) (= lt!219980 (MissingVacant!3635 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31541 (_ BitVec 32)) SeekEntryResult!3635)

(assert (=> b!487232 (= lt!219980 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!290769 () Bool)

(assert (=> start!44330 (=> (not res!290769) (not e!286677))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44330 (= res!290769 (validMask!0 mask!3524))))

(assert (=> start!44330 e!286677))

(assert (=> start!44330 true))

(declare-fun array_inv!10935 (array!31541) Bool)

(assert (=> start!44330 (array_inv!10935 a!3235)))

(declare-fun b!487233 () Bool)

(declare-fun res!290774 () Bool)

(assert (=> b!487233 (=> (not res!290774) (not e!286675))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31541 (_ BitVec 32)) Bool)

(assert (=> b!487233 (= res!290774 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!487234 () Bool)

(declare-fun res!290773 () Bool)

(assert (=> b!487234 (=> (not res!290773) (not e!286677))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!487234 (= res!290773 (and (= (size!15525 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15525 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15525 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!487235 () Bool)

(declare-fun res!290770 () Bool)

(assert (=> b!487235 (=> (not res!290770) (not e!286677))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!487235 (= res!290770 (validKeyInArray!0 k!2280))))

(declare-fun b!487236 () Bool)

(declare-fun res!290768 () Bool)

(assert (=> b!487236 (=> (not res!290768) (not e!286677))))

(assert (=> b!487236 (= res!290768 (validKeyInArray!0 (select (arr!15161 a!3235) j!176)))))

(declare-fun b!487237 () Bool)

(declare-fun e!286676 () Bool)

(assert (=> b!487237 (= e!286676 (= (seekEntryOrOpen!0 (select (arr!15161 a!3235) j!176) a!3235 mask!3524) (Found!3635 j!176)))))

(declare-fun b!487238 () Bool)

(assert (=> b!487238 (= e!286675 (not (or (bvslt mask!3524 #b00000000000000000000000000000000) (bvsle mask!3524 #b00111111111111111111111111111111))))))

(assert (=> b!487238 e!286676))

(declare-fun res!290766 () Bool)

(assert (=> b!487238 (=> (not res!290766) (not e!286676))))

(assert (=> b!487238 (= res!290766 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14208 0))(
  ( (Unit!14209) )
))
(declare-fun lt!219979 () Unit!14208)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31541 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14208)

(assert (=> b!487238 (= lt!219979 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!44330 res!290769) b!487234))

(assert (= (and b!487234 res!290773) b!487236))

(assert (= (and b!487236 res!290768) b!487235))

(assert (= (and b!487235 res!290770) b!487230))

(assert (= (and b!487230 res!290772) b!487232))

(assert (= (and b!487232 res!290767) b!487233))

(assert (= (and b!487233 res!290774) b!487231))

(assert (= (and b!487231 res!290771) b!487238))

(assert (= (and b!487238 res!290766) b!487237))

(declare-fun m!467083 () Bool)

(assert (=> b!487236 m!467083))

(assert (=> b!487236 m!467083))

(declare-fun m!467085 () Bool)

(assert (=> b!487236 m!467085))

(declare-fun m!467087 () Bool)

(assert (=> b!487230 m!467087))

(declare-fun m!467089 () Bool)

(assert (=> b!487238 m!467089))

(declare-fun m!467091 () Bool)

(assert (=> b!487238 m!467091))

(declare-fun m!467093 () Bool)

(assert (=> start!44330 m!467093))

(declare-fun m!467095 () Bool)

(assert (=> start!44330 m!467095))

(declare-fun m!467097 () Bool)

(assert (=> b!487231 m!467097))

(declare-fun m!467099 () Bool)

(assert (=> b!487232 m!467099))

(declare-fun m!467101 () Bool)

(assert (=> b!487233 m!467101))

(assert (=> b!487237 m!467083))

(assert (=> b!487237 m!467083))

(declare-fun m!467103 () Bool)

(assert (=> b!487237 m!467103))

(declare-fun m!467105 () Bool)

(assert (=> b!487235 m!467105))

(push 1)

(assert (not b!487233))

(assert (not b!487235))

(assert (not b!487238))

(assert (not start!44330))

(assert (not b!487231))

(assert (not b!487232))

(assert (not b!487237))

(assert (not b!487230))

(assert (not b!487236))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!77515 () Bool)

(declare-fun res!290788 () Bool)

(declare-fun e!286697 () Bool)

(assert (=> d!77515 (=> res!290788 e!286697)))

(assert (=> d!77515 (= res!290788 (bvsge #b00000000000000000000000000000000 (size!15525 a!3235)))))

(assert (=> d!77515 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!286697)))

(declare-fun b!487262 () Bool)

(declare-fun e!286698 () Bool)

(assert (=> b!487262 (= e!286697 e!286698)))

(declare-fun c!58505 () Bool)

(assert (=> b!487262 (= c!58505 (validKeyInArray!0 (select (arr!15161 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31283 () Bool)

(declare-fun call!31286 () Bool)

(assert (=> bm!31283 (= call!31286 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!487263 () Bool)

(declare-fun e!286699 () Bool)

(assert (=> b!487263 (= e!286698 e!286699)))

(declare-fun lt!219988 () (_ BitVec 64))

(assert (=> b!487263 (= lt!219988 (select (arr!15161 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!219989 () Unit!14208)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31541 (_ BitVec 64) (_ BitVec 32)) Unit!14208)

(assert (=> b!487263 (= lt!219989 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!219988 #b00000000000000000000000000000000))))

(assert (=> b!487263 (arrayContainsKey!0 a!3235 lt!219988 #b00000000000000000000000000000000)))

(declare-fun lt!219987 () Unit!14208)

(assert (=> b!487263 (= lt!219987 lt!219989)))

(declare-fun res!290789 () Bool)

(assert (=> b!487263 (= res!290789 (= (seekEntryOrOpen!0 (select (arr!15161 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3635 #b00000000000000000000000000000000)))))

(assert (=> b!487263 (=> (not res!290789) (not e!286699))))

(declare-fun b!487264 () Bool)

(assert (=> b!487264 (= e!286699 call!31286)))

(declare-fun b!487265 () Bool)

(assert (=> b!487265 (= e!286698 call!31286)))

(assert (= (and d!77515 (not res!290788)) b!487262))

(assert (= (and b!487262 c!58505) b!487263))

(assert (= (and b!487262 (not c!58505)) b!487265))

(assert (= (and b!487263 res!290789) b!487264))

(assert (= (or b!487264 b!487265) bm!31283))

(declare-fun m!467115 () Bool)

(assert (=> b!487262 m!467115))

(assert (=> b!487262 m!467115))

(declare-fun m!467117 () Bool)

(assert (=> b!487262 m!467117))

(declare-fun m!467119 () Bool)

(assert (=> bm!31283 m!467119))

(assert (=> b!487263 m!467115))

(declare-fun m!467121 () Bool)

(assert (=> b!487263 m!467121))

(declare-fun m!467123 () Bool)

(assert (=> b!487263 m!467123))

(assert (=> b!487263 m!467115))

(declare-fun m!467125 () Bool)

(assert (=> b!487263 m!467125))

(assert (=> b!487233 d!77515))

(declare-fun d!77517 () Bool)

(declare-fun res!290790 () Bool)

(declare-fun e!286700 () Bool)

(assert (=> d!77517 (=> res!290790 e!286700)))

(assert (=> d!77517 (= res!290790 (bvsge j!176 (size!15525 a!3235)))))

(assert (=> d!77517 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!286700)))

(declare-fun b!487266 () Bool)

(declare-fun e!286701 () Bool)

(assert (=> b!487266 (= e!286700 e!286701)))

(declare-fun c!58506 () Bool)

(assert (=> b!487266 (= c!58506 (validKeyInArray!0 (select (arr!15161 a!3235) j!176)))))

(declare-fun bm!31284 () Bool)

(declare-fun call!31287 () Bool)

(assert (=> bm!31284 (= call!31287 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!487267 () Bool)

(declare-fun e!286702 () Bool)

(assert (=> b!487267 (= e!286701 e!286702)))

(declare-fun lt!219991 () (_ BitVec 64))

(assert (=> b!487267 (= lt!219991 (select (arr!15161 a!3235) j!176))))

(declare-fun lt!219992 () Unit!14208)

(assert (=> b!487267 (= lt!219992 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!219991 j!176))))

(assert (=> b!487267 (arrayContainsKey!0 a!3235 lt!219991 #b00000000000000000000000000000000)))

(declare-fun lt!219990 () Unit!14208)

(assert (=> b!487267 (= lt!219990 lt!219992)))

(declare-fun res!290791 () Bool)

(assert (=> b!487267 (= res!290791 (= (seekEntryOrOpen!0 (select (arr!15161 a!3235) j!176) a!3235 mask!3524) (Found!3635 j!176)))))

(assert (=> b!487267 (=> (not res!290791) (not e!286702))))

(declare-fun b!487268 () Bool)

(assert (=> b!487268 (= e!286702 call!31287)))

(declare-fun b!487269 () Bool)

(assert (=> b!487269 (= e!286701 call!31287)))

(assert (= (and d!77517 (not res!290790)) b!487266))

(assert (= (and b!487266 c!58506) b!487267))

(assert (= (and b!487266 (not c!58506)) b!487269))

(assert (= (and b!487267 res!290791) b!487268))

(assert (= (or b!487268 b!487269) bm!31284))

(assert (=> b!487266 m!467083))

(assert (=> b!487266 m!467083))

(assert (=> b!487266 m!467085))

(declare-fun m!467127 () Bool)

(assert (=> bm!31284 m!467127))

(assert (=> b!487267 m!467083))

(declare-fun m!467129 () Bool)

(assert (=> b!487267 m!467129))

(declare-fun m!467131 () Bool)

(assert (=> b!487267 m!467131))

(assert (=> b!487267 m!467083))

(assert (=> b!487267 m!467103))

(assert (=> b!487238 d!77517))

(declare-fun d!77519 () Bool)

(assert (=> d!77519 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!220007 () Unit!14208)

(declare-fun choose!38 (array!31541 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14208)

(assert (=> d!77519 (= lt!220007 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!77519 (validMask!0 mask!3524)))

(assert (=> d!77519 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!220007)))

(declare-fun bs!15534 () Bool)

(assert (= bs!15534 d!77519))

(assert (=> bs!15534 m!467089))

(declare-fun m!467133 () Bool)

(assert (=> bs!15534 m!467133))

(assert (=> bs!15534 m!467093))

(assert (=> b!487238 d!77519))

(declare-fun d!77521 () Bool)

(assert (=> d!77521 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!487235 d!77521))

(declare-fun b!487330 () Bool)

(declare-fun e!286741 () Bool)

(declare-fun call!31290 () Bool)

(assert (=> b!487330 (= e!286741 call!31290)))

(declare-fun bm!31287 () Bool)

(declare-fun c!58530 () Bool)

(assert (=> bm!31287 (= call!31290 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!58530 (Cons!9368 (select (arr!15161 a!3235) #b00000000000000000000000000000000) Nil!9369) Nil!9369)))))

(declare-fun b!487331 () Bool)

(declare-fun e!286740 () Bool)

(assert (=> b!487331 (= e!286740 e!286741)))

(assert (=> b!487331 (= c!58530 (validKeyInArray!0 (select (arr!15161 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!77523 () Bool)

(declare-fun res!290807 () Bool)

(declare-fun e!286743 () Bool)

(assert (=> d!77523 (=> res!290807 e!286743)))

(assert (=> d!77523 (= res!290807 (bvsge #b00000000000000000000000000000000 (size!15525 a!3235)))))

(assert (=> d!77523 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9369) e!286743)))

(declare-fun b!487332 () Bool)

(assert (=> b!487332 (= e!286741 call!31290)))

(declare-fun b!487333 () Bool)

(declare-fun e!286742 () Bool)

(declare-fun contains!2701 (List!9372 (_ BitVec 64)) Bool)

(assert (=> b!487333 (= e!286742 (contains!2701 Nil!9369 (select (arr!15161 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!487334 () Bool)

(assert (=> b!487334 (= e!286743 e!286740)))

(declare-fun res!290806 () Bool)

(assert (=> b!487334 (=> (not res!290806) (not e!286740))))

(assert (=> b!487334 (= res!290806 (not e!286742))))

(declare-fun res!290808 () Bool)

(assert (=> b!487334 (=> (not res!290808) (not e!286742))))

(assert (=> b!487334 (= res!290808 (validKeyInArray!0 (select (arr!15161 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!77523 (not res!290807)) b!487334))

(assert (= (and b!487334 res!290808) b!487333))

(assert (= (and b!487334 res!290806) b!487331))

(assert (= (and b!487331 c!58530) b!487330))

(assert (= (and b!487331 (not c!58530)) b!487332))

(assert (= (or b!487330 b!487332) bm!31287))

(assert (=> bm!31287 m!467115))

(declare-fun m!467179 () Bool)

(assert (=> bm!31287 m!467179))

(assert (=> b!487331 m!467115))

(assert (=> b!487331 m!467115))

(assert (=> b!487331 m!467117))

(assert (=> b!487333 m!467115))

(assert (=> b!487333 m!467115))

(declare-fun m!467185 () Bool)

(assert (=> b!487333 m!467185))

(assert (=> b!487334 m!467115))

(assert (=> b!487334 m!467115))

(assert (=> b!487334 m!467117))

(assert (=> b!487231 d!77523))

(declare-fun d!77537 () Bool)

(assert (=> d!77537 (= (validKeyInArray!0 (select (arr!15161 a!3235) j!176)) (and (not (= (select (arr!15161 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15161 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!487236 d!77537))

(declare-fun d!77539 () Bool)

(declare-fun res!290817 () Bool)

(declare-fun e!286752 () Bool)

(assert (=> d!77539 (=> res!290817 e!286752)))

(assert (=> d!77539 (= res!290817 (= (select (arr!15161 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!77539 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!286752)))

(declare-fun b!487343 () Bool)

(declare-fun e!286753 () Bool)

(assert (=> b!487343 (= e!286752 e!286753)))

(declare-fun res!290818 () Bool)

(assert (=> b!487343 (=> (not res!290818) (not e!286753))))

(assert (=> b!487343 (= res!290818 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15525 a!3235)))))

(declare-fun b!487344 () Bool)

(assert (=> b!487344 (= e!286753 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!77539 (not res!290817)) b!487343))

(assert (= (and b!487343 res!290818) b!487344))

(assert (=> d!77539 m!467115))

(declare-fun m!467187 () Bool)

(assert (=> b!487344 m!467187))

(assert (=> b!487230 d!77539))

(declare-fun d!77541 () Bool)

(assert (=> d!77541 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!44330 d!77541))

(declare-fun d!77551 () Bool)

(assert (=> d!77551 (= (array_inv!10935 a!3235) (bvsge (size!15525 a!3235) #b00000000000000000000000000000000))))

