; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26980 () Bool)

(assert start!26980)

(declare-fun b!279202 () Bool)

(declare-fun e!178022 () Bool)

(declare-fun e!178024 () Bool)

(assert (=> b!279202 (= e!178022 e!178024)))

(declare-fun res!142492 () Bool)

(assert (=> b!279202 (=> (not res!142492) (not e!178024))))

(declare-datatypes ((SeekEntryResult!1758 0))(
  ( (MissingZero!1758 (index!9202 (_ BitVec 32))) (Found!1758 (index!9203 (_ BitVec 32))) (Intermediate!1758 (undefined!2570 Bool) (index!9204 (_ BitVec 32)) (x!27420 (_ BitVec 32))) (Undefined!1758) (MissingVacant!1758 (index!9205 (_ BitVec 32))) )
))
(declare-fun lt!138605 () SeekEntryResult!1758)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!279202 (= res!142492 (or (= lt!138605 (MissingZero!1758 i!1267)) (= lt!138605 (MissingVacant!1758 i!1267))))))

(declare-datatypes ((array!13889 0))(
  ( (array!13890 (arr!6589 (Array (_ BitVec 32) (_ BitVec 64))) (size!6941 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13889)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13889 (_ BitVec 32)) SeekEntryResult!1758)

(assert (=> b!279202 (= lt!138605 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!279203 () Bool)

(declare-fun e!178021 () Bool)

(declare-datatypes ((List!4418 0))(
  ( (Nil!4415) (Cons!4414 (h!5084 (_ BitVec 64)) (t!9508 List!4418)) )
))
(declare-fun contains!1968 (List!4418 (_ BitVec 64)) Bool)

(assert (=> b!279203 (= e!178021 (contains!1968 Nil!4415 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!279204 () Bool)

(declare-fun res!142495 () Bool)

(assert (=> b!279204 (=> (not res!142495) (not e!178024))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13889 (_ BitVec 32)) Bool)

(assert (=> b!279204 (= res!142495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!279205 () Bool)

(declare-fun res!142490 () Bool)

(assert (=> b!279205 (=> (not res!142490) (not e!178022))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!279205 (= res!142490 (validKeyInArray!0 k!2581))))

(declare-fun b!279206 () Bool)

(declare-fun res!142494 () Bool)

(assert (=> b!279206 (=> (not res!142494) (not e!178022))))

(declare-fun arrayContainsKey!0 (array!13889 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!279206 (= res!142494 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!279207 () Bool)

(declare-fun res!142497 () Bool)

(assert (=> b!279207 (=> (not res!142497) (not e!178022))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!279207 (= res!142497 (and (= (size!6941 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6941 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6941 a!3325))))))

(declare-fun b!279208 () Bool)

(declare-fun res!142500 () Bool)

(assert (=> b!279208 (=> (not res!142500) (not e!178024))))

(assert (=> b!279208 (= res!142500 (validKeyInArray!0 (select (arr!6589 a!3325) startIndex!26)))))

(declare-fun b!279210 () Bool)

(declare-fun res!142491 () Bool)

(assert (=> b!279210 (=> (not res!142491) (not e!178024))))

(declare-fun noDuplicate!152 (List!4418) Bool)

(assert (=> b!279210 (= res!142491 (noDuplicate!152 Nil!4415))))

(declare-fun b!279211 () Bool)

(declare-fun res!142499 () Bool)

(assert (=> b!279211 (=> (not res!142499) (not e!178024))))

(assert (=> b!279211 (= res!142499 (and (bvslt (size!6941 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6941 a!3325))))))

(declare-fun b!279209 () Bool)

(declare-fun res!142493 () Bool)

(assert (=> b!279209 (=> (not res!142493) (not e!178024))))

(assert (=> b!279209 (= res!142493 (not (= startIndex!26 i!1267)))))

(declare-fun res!142498 () Bool)

(assert (=> start!26980 (=> (not res!142498) (not e!178022))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26980 (= res!142498 (validMask!0 mask!3868))))

(assert (=> start!26980 e!178022))

(declare-fun array_inv!4543 (array!13889) Bool)

(assert (=> start!26980 (array_inv!4543 a!3325)))

(assert (=> start!26980 true))

(declare-fun b!279212 () Bool)

(declare-fun res!142496 () Bool)

(assert (=> b!279212 (=> (not res!142496) (not e!178022))))

(declare-fun arrayNoDuplicates!0 (array!13889 (_ BitVec 32) List!4418) Bool)

(assert (=> b!279212 (= res!142496 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4415))))

(declare-fun b!279213 () Bool)

(assert (=> b!279213 (= e!178024 e!178021)))

(declare-fun res!142489 () Bool)

(assert (=> b!279213 (=> res!142489 e!178021)))

(assert (=> b!279213 (= res!142489 (contains!1968 Nil!4415 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!26980 res!142498) b!279207))

(assert (= (and b!279207 res!142497) b!279205))

(assert (= (and b!279205 res!142490) b!279212))

(assert (= (and b!279212 res!142496) b!279206))

(assert (= (and b!279206 res!142494) b!279202))

(assert (= (and b!279202 res!142492) b!279204))

(assert (= (and b!279204 res!142495) b!279209))

(assert (= (and b!279209 res!142493) b!279208))

(assert (= (and b!279208 res!142500) b!279211))

(assert (= (and b!279211 res!142499) b!279210))

(assert (= (and b!279210 res!142491) b!279213))

(assert (= (and b!279213 (not res!142489)) b!279203))

(declare-fun m!294049 () Bool)

(assert (=> b!279203 m!294049))

(declare-fun m!294051 () Bool)

(assert (=> b!279202 m!294051))

(declare-fun m!294053 () Bool)

(assert (=> b!279210 m!294053))

(declare-fun m!294055 () Bool)

(assert (=> b!279204 m!294055))

(declare-fun m!294057 () Bool)

(assert (=> b!279206 m!294057))

(declare-fun m!294059 () Bool)

(assert (=> b!279208 m!294059))

(assert (=> b!279208 m!294059))

(declare-fun m!294061 () Bool)

(assert (=> b!279208 m!294061))

(declare-fun m!294063 () Bool)

(assert (=> start!26980 m!294063))

(declare-fun m!294065 () Bool)

(assert (=> start!26980 m!294065))

(declare-fun m!294067 () Bool)

(assert (=> b!279212 m!294067))

(declare-fun m!294069 () Bool)

(assert (=> b!279205 m!294069))

(declare-fun m!294071 () Bool)

(assert (=> b!279213 m!294071))

(push 1)

(assert (not b!279213))

(assert (not b!279210))

(assert (not start!26980))

(assert (not b!279205))

(assert (not b!279202))

(assert (not b!279206))

(assert (not b!279204))

(assert (not b!279212))

(assert (not b!279203))

(assert (not b!279208))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!64959 () Bool)

(assert (=> d!64959 (= (validKeyInArray!0 (select (arr!6589 a!3325) startIndex!26)) (and (not (= (select (arr!6589 a!3325) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6589 a!3325) startIndex!26) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!279208 d!64959))

(declare-fun d!64961 () Bool)

(declare-fun lt!138617 () Bool)

(declare-fun content!185 (List!4418) (Set (_ BitVec 64)))

(assert (=> d!64961 (= lt!138617 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!185 Nil!4415)))))

(declare-fun e!178066 () Bool)

(assert (=> d!64961 (= lt!138617 e!178066)))

(declare-fun res!142590 () Bool)

(assert (=> d!64961 (=> (not res!142590) (not e!178066))))

(assert (=> d!64961 (= res!142590 (is-Cons!4414 Nil!4415))))

(assert (=> d!64961 (= (contains!1968 Nil!4415 #b0000000000000000000000000000000000000000000000000000000000000000) lt!138617)))

(declare-fun b!279302 () Bool)

(declare-fun e!178065 () Bool)

(assert (=> b!279302 (= e!178066 e!178065)))

(declare-fun res!142589 () Bool)

(assert (=> b!279302 (=> res!142589 e!178065)))

(assert (=> b!279302 (= res!142589 (= (h!5084 Nil!4415) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!279303 () Bool)

(assert (=> b!279303 (= e!178065 (contains!1968 (t!9508 Nil!4415) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!64961 res!142590) b!279302))

(assert (= (and b!279302 (not res!142589)) b!279303))

(declare-fun m!294131 () Bool)

(assert (=> d!64961 m!294131))

(declare-fun m!294133 () Bool)

(assert (=> d!64961 m!294133))

(declare-fun m!294135 () Bool)

(assert (=> b!279303 m!294135))

(assert (=> b!279213 d!64961))

(declare-fun b!279351 () Bool)

(declare-fun e!178102 () SeekEntryResult!1758)

(declare-fun e!178104 () SeekEntryResult!1758)

(assert (=> b!279351 (= e!178102 e!178104)))

(declare-fun lt!138635 () (_ BitVec 64))

(declare-fun lt!138636 () SeekEntryResult!1758)

(assert (=> b!279351 (= lt!138635 (select (arr!6589 a!3325) (index!9204 lt!138636)))))

(declare-fun c!45921 () Bool)

(assert (=> b!279351 (= c!45921 (= lt!138635 k!2581))))

(declare-fun b!279352 () Bool)

(assert (=> b!279352 (= e!178102 Undefined!1758)))

(declare-fun d!64965 () Bool)

(declare-fun lt!138634 () SeekEntryResult!1758)

(assert (=> d!64965 (and (or (is-Undefined!1758 lt!138634) (not (is-Found!1758 lt!138634)) (and (bvsge (index!9203 lt!138634) #b00000000000000000000000000000000) (bvslt (index!9203 lt!138634) (size!6941 a!3325)))) (or (is-Undefined!1758 lt!138634) (is-Found!1758 lt!138634) (not (is-MissingZero!1758 lt!138634)) (and (bvsge (index!9202 lt!138634) #b00000000000000000000000000000000) (bvslt (index!9202 lt!138634) (size!6941 a!3325)))) (or (is-Undefined!1758 lt!138634) (is-Found!1758 lt!138634) (is-MissingZero!1758 lt!138634) (not (is-MissingVacant!1758 lt!138634)) (and (bvsge (index!9205 lt!138634) #b00000000000000000000000000000000) (bvslt (index!9205 lt!138634) (size!6941 a!3325)))) (or (is-Undefined!1758 lt!138634) (ite (is-Found!1758 lt!138634) (= (select (arr!6589 a!3325) (index!9203 lt!138634)) k!2581) (ite (is-MissingZero!1758 lt!138634) (= (select (arr!6589 a!3325) (index!9202 lt!138634)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1758 lt!138634) (= (select (arr!6589 a!3325) (index!9205 lt!138634)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!64965 (= lt!138634 e!178102)))

(declare-fun c!45922 () Bool)

(assert (=> d!64965 (= c!45922 (and (is-Intermediate!1758 lt!138636) (undefined!2570 lt!138636)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!13889 (_ BitVec 32)) SeekEntryResult!1758)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!64965 (= lt!138636 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2581 mask!3868) k!2581 a!3325 mask!3868))))

(assert (=> d!64965 (validMask!0 mask!3868)))

(assert (=> d!64965 (= (seekEntryOrOpen!0 k!2581 a!3325 mask!3868) lt!138634)))

(declare-fun b!279353 () Bool)

(declare-fun e!178103 () SeekEntryResult!1758)

(assert (=> b!279353 (= e!178103 (MissingZero!1758 (index!9204 lt!138636)))))

(declare-fun b!279354 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!13889 (_ BitVec 32)) SeekEntryResult!1758)

(assert (=> b!279354 (= e!178103 (seekKeyOrZeroReturnVacant!0 (x!27420 lt!138636) (index!9204 lt!138636) (index!9204 lt!138636) k!2581 a!3325 mask!3868))))

(declare-fun b!279355 () Bool)

(declare-fun c!45923 () Bool)

(assert (=> b!279355 (= c!45923 (= lt!138635 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!279355 (= e!178104 e!178103)))

(declare-fun b!279356 () Bool)

(assert (=> b!279356 (= e!178104 (Found!1758 (index!9204 lt!138636)))))

(assert (= (and d!64965 c!45922) b!279352))

(assert (= (and d!64965 (not c!45922)) b!279351))

(assert (= (and b!279351 c!45921) b!279356))

(assert (= (and b!279351 (not c!45921)) b!279355))

(assert (= (and b!279355 c!45923) b!279353))

(assert (= (and b!279355 (not c!45923)) b!279354))

(declare-fun m!294161 () Bool)

(assert (=> b!279351 m!294161))

(declare-fun m!294163 () Bool)

(assert (=> d!64965 m!294163))

(declare-fun m!294165 () Bool)

(assert (=> d!64965 m!294165))

(assert (=> d!64965 m!294063))

(declare-fun m!294167 () Bool)

(assert (=> d!64965 m!294167))

(assert (=> d!64965 m!294167))

(declare-fun m!294169 () Bool)

(assert (=> d!64965 m!294169))

(declare-fun m!294171 () Bool)

(assert (=> d!64965 m!294171))

(declare-fun m!294173 () Bool)

(assert (=> b!279354 m!294173))

(assert (=> b!279202 d!64965))

(declare-fun bm!25427 () Bool)

(declare-fun call!25430 () Bool)

(declare-fun c!45926 () Bool)

(assert (=> bm!25427 (= call!25430 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!45926 (Cons!4414 (select (arr!6589 a!3325) #b00000000000000000000000000000000) Nil!4415) Nil!4415)))))

(declare-fun d!64981 () Bool)

(declare-fun res!142621 () Bool)

(declare-fun e!178114 () Bool)

(assert (=> d!64981 (=> res!142621 e!178114)))

(assert (=> d!64981 (= res!142621 (bvsge #b00000000000000000000000000000000 (size!6941 a!3325)))))

(assert (=> d!64981 (= (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4415) e!178114)))

(declare-fun b!279367 () Bool)

(declare-fun e!178116 () Bool)

(declare-fun e!178115 () Bool)

(assert (=> b!279367 (= e!178116 e!178115)))

(assert (=> b!279367 (= c!45926 (validKeyInArray!0 (select (arr!6589 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!279368 () Bool)

(declare-fun e!178113 () Bool)

(assert (=> b!279368 (= e!178113 (contains!1968 Nil!4415 (select (arr!6589 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!279369 () Bool)

(assert (=> b!279369 (= e!178115 call!25430)))

(declare-fun b!279370 () Bool)

(assert (=> b!279370 (= e!178114 e!178116)))

(declare-fun res!142622 () Bool)

(assert (=> b!279370 (=> (not res!142622) (not e!178116))))

(assert (=> b!279370 (= res!142622 (not e!178113))))

(declare-fun res!142620 () Bool)

(assert (=> b!279370 (=> (not res!142620) (not e!178113))))

(assert (=> b!279370 (= res!142620 (validKeyInArray!0 (select (arr!6589 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!279371 () Bool)

(assert (=> b!279371 (= e!178115 call!25430)))

(assert (= (and d!64981 (not res!142621)) b!279370))

(assert (= (and b!279370 res!142620) b!279368))

(assert (= (and b!279370 res!142622) b!279367))

(assert (= (and b!279367 c!45926) b!279369))

(assert (= (and b!279367 (not c!45926)) b!279371))

(assert (= (or b!279369 b!279371) bm!25427))

(declare-fun m!294175 () Bool)

(assert (=> bm!25427 m!294175))

(declare-fun m!294177 () Bool)

(assert (=> bm!25427 m!294177))

(assert (=> b!279367 m!294175))

(assert (=> b!279367 m!294175))

(declare-fun m!294179 () Bool)

(assert (=> b!279367 m!294179))

(assert (=> b!279368 m!294175))

(assert (=> b!279368 m!294175))

(declare-fun m!294181 () Bool)

(assert (=> b!279368 m!294181))

(assert (=> b!279370 m!294175))

(assert (=> b!279370 m!294175))

(assert (=> b!279370 m!294179))

(assert (=> b!279212 d!64981))

(declare-fun d!64989 () Bool)

(assert (=> d!64989 (= (validMask!0 mask!3868) (and (or (= mask!3868 #b00000000000000000000000000000111) (= mask!3868 #b00000000000000000000000000001111) (= mask!3868 #b00000000000000000000000000011111) (= mask!3868 #b00000000000000000000000000111111) (= mask!3868 #b00000000000000000000000001111111) (= mask!3868 #b00000000000000000000000011111111) (= mask!3868 #b00000000000000000000000111111111) (= mask!3868 #b00000000000000000000001111111111) (= mask!3868 #b00000000000000000000011111111111) (= mask!3868 #b00000000000000000000111111111111) (= mask!3868 #b00000000000000000001111111111111) (= mask!3868 #b00000000000000000011111111111111) (= mask!3868 #b00000000000000000111111111111111) (= mask!3868 #b00000000000000001111111111111111) (= mask!3868 #b00000000000000011111111111111111) (= mask!3868 #b00000000000000111111111111111111) (= mask!3868 #b00000000000001111111111111111111) (= mask!3868 #b00000000000011111111111111111111) (= mask!3868 #b00000000000111111111111111111111) (= mask!3868 #b00000000001111111111111111111111) (= mask!3868 #b00000000011111111111111111111111) (= mask!3868 #b00000000111111111111111111111111) (= mask!3868 #b00000001111111111111111111111111) (= mask!3868 #b00000011111111111111111111111111) (= mask!3868 #b00000111111111111111111111111111) (= mask!3868 #b00001111111111111111111111111111) (= mask!3868 #b00011111111111111111111111111111) (= mask!3868 #b00111111111111111111111111111111)) (bvsle mask!3868 #b00111111111111111111111111111111)))))

(assert (=> start!26980 d!64989))

(declare-fun d!64991 () Bool)

(assert (=> d!64991 (= (array_inv!4543 a!3325) (bvsge (size!6941 a!3325) #b00000000000000000000000000000000))))

(assert (=> start!26980 d!64991))

(declare-fun d!64993 () Bool)

(declare-fun res!142627 () Bool)

(declare-fun e!178130 () Bool)

(assert (=> d!64993 (=> res!142627 e!178130)))

(assert (=> d!64993 (= res!142627 (= (select (arr!6589 a!3325) #b00000000000000000000000000000000) k!2581))))

(assert (=> d!64993 (= (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000) e!178130)))

(declare-fun b!279394 () Bool)

(declare-fun e!178131 () Bool)

(assert (=> b!279394 (= e!178130 e!178131)))

(declare-fun res!142628 () Bool)

(assert (=> b!279394 (=> (not res!142628) (not e!178131))))

(assert (=> b!279394 (= res!142628 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6941 a!3325)))))

(declare-fun b!279395 () Bool)

(assert (=> b!279395 (= e!178131 (arrayContainsKey!0 a!3325 k!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!64993 (not res!142627)) b!279394))

(assert (= (and b!279394 res!142628) b!279395))

(assert (=> d!64993 m!294175))

(declare-fun m!294197 () Bool)

(assert (=> b!279395 m!294197))

(assert (=> b!279206 d!64993))

(declare-fun d!64997 () Bool)

(assert (=> d!64997 (= (validKeyInArray!0 k!2581) (and (not (= k!2581 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2581 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!279205 d!64997))

(declare-fun d!64999 () Bool)

(declare-fun res!142639 () Bool)

(declare-fun e!178144 () Bool)

(assert (=> d!64999 (=> res!142639 e!178144)))

(assert (=> d!64999 (= res!142639 (is-Nil!4415 Nil!4415))))

(assert (=> d!64999 (= (noDuplicate!152 Nil!4415) e!178144)))

(declare-fun b!279412 () Bool)

(declare-fun e!178145 () Bool)

(assert (=> b!279412 (= e!178144 e!178145)))

(declare-fun res!142640 () Bool)

(assert (=> b!279412 (=> (not res!142640) (not e!178145))))

(assert (=> b!279412 (= res!142640 (not (contains!1968 (t!9508 Nil!4415) (h!5084 Nil!4415))))))

(declare-fun b!279413 () Bool)

(assert (=> b!279413 (= e!178145 (noDuplicate!152 (t!9508 Nil!4415)))))

(assert (= (and d!64999 (not res!142639)) b!279412))

(assert (= (and b!279412 res!142640) b!279413))

(declare-fun m!294203 () Bool)

(assert (=> b!279412 m!294203))

(declare-fun m!294205 () Bool)

(assert (=> b!279413 m!294205))

(assert (=> b!279210 d!64999))

(declare-fun d!65005 () Bool)

(declare-fun res!142658 () Bool)

(declare-fun e!178175 () Bool)

(assert (=> d!65005 (=> res!142658 e!178175)))

(assert (=> d!65005 (= res!142658 (bvsge #b00000000000000000000000000000000 (size!6941 a!3325)))))

(assert (=> d!65005 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868) e!178175)))

(declare-fun b!279452 () Bool)

(declare-fun e!178174 () Bool)

(declare-fun call!25436 () Bool)

(assert (=> b!279452 (= e!178174 call!25436)))

(declare-fun b!279453 () Bool)

(declare-fun e!178176 () Bool)

(assert (=> b!279453 (= e!178176 e!178174)))

(declare-fun lt!138671 () (_ BitVec 64))

(assert (=> b!279453 (= lt!138671 (select (arr!6589 a!3325) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!8811 0))(
  ( (Unit!8812) )
))
(declare-fun lt!138670 () Unit!8811)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!13889 (_ BitVec 64) (_ BitVec 32)) Unit!8811)

(assert (=> b!279453 (= lt!138670 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!138671 #b00000000000000000000000000000000))))

(assert (=> b!279453 (arrayContainsKey!0 a!3325 lt!138671 #b00000000000000000000000000000000)))

(declare-fun lt!138672 () Unit!8811)

(assert (=> b!279453 (= lt!138672 lt!138670)))

(declare-fun res!142657 () Bool)

(assert (=> b!279453 (= res!142657 (= (seekEntryOrOpen!0 (select (arr!6589 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868) (Found!1758 #b00000000000000000000000000000000)))))

(assert (=> b!279453 (=> (not res!142657) (not e!178174))))

(declare-fun b!279454 () Bool)

(assert (=> b!279454 (= e!178175 e!178176)))

(declare-fun c!45950 () Bool)

(assert (=> b!279454 (= c!45950 (validKeyInArray!0 (select (arr!6589 a!3325) #b00000000000000000000000000000000)))))

(declare-fun bm!25433 () Bool)

(assert (=> bm!25433 (= call!25436 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun b!279455 () Bool)

(assert (=> b!279455 (= e!178176 call!25436)))

(assert (= (and d!65005 (not res!142658)) b!279454))

(assert (= (and b!279454 c!45950) b!279453))

(assert (= (and b!279454 (not c!45950)) b!279455))

(assert (= (and b!279453 res!142657) b!279452))

(assert (= (or b!279452 b!279455) bm!25433))

(assert (=> b!279453 m!294175))

(declare-fun m!294233 () Bool)

(assert (=> b!279453 m!294233))

(declare-fun m!294235 () Bool)

(assert (=> b!279453 m!294235))

(assert (=> b!279453 m!294175))

(declare-fun m!294237 () Bool)

(assert (=> b!279453 m!294237))

(assert (=> b!279454 m!294175))

(assert (=> b!279454 m!294175))

(assert (=> b!279454 m!294179))

(declare-fun m!294239 () Bool)

(assert (=> bm!25433 m!294239))

(assert (=> b!279204 d!65005))

(declare-fun d!65011 () Bool)

(declare-fun lt!138673 () Bool)

(assert (=> d!65011 (= lt!138673 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!185 Nil!4415)))))

(declare-fun e!178178 () Bool)

(assert (=> d!65011 (= lt!138673 e!178178)))

(declare-fun res!142660 () Bool)

(assert (=> d!65011 (=> (not res!142660) (not e!178178))))

(assert (=> d!65011 (= res!142660 (is-Cons!4414 Nil!4415))))

(assert (=> d!65011 (= (contains!1968 Nil!4415 #b1000000000000000000000000000000000000000000000000000000000000000) lt!138673)))

(declare-fun b!279456 () Bool)

(declare-fun e!178177 () Bool)

(assert (=> b!279456 (= e!178178 e!178177)))

(declare-fun res!142659 () Bool)

(assert (=> b!279456 (=> res!142659 e!178177)))

(assert (=> b!279456 (= res!142659 (= (h!5084 Nil!4415) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!279457 () Bool)

(assert (=> b!279457 (= e!178177 (contains!1968 (t!9508 Nil!4415) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!65011 res!142660) b!279456))

(assert (= (and b!279456 (not res!142659)) b!279457))

(assert (=> d!65011 m!294131))

(declare-fun m!294241 () Bool)

(assert (=> d!65011 m!294241))

(declare-fun m!294243 () Bool)

(assert (=> b!279457 m!294243))

(assert (=> b!279203 d!65011))

(push 1)

