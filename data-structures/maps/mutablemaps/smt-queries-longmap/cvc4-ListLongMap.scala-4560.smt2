; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63608 () Bool)

(assert start!63608)

(declare-fun b!716172 () Bool)

(declare-fun res!479241 () Bool)

(declare-fun e!402071 () Bool)

(assert (=> b!716172 (=> (not res!479241) (not e!402071))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!716172 (= res!479241 (validKeyInArray!0 k!2824))))

(declare-fun b!716173 () Bool)

(declare-fun res!479239 () Bool)

(assert (=> b!716173 (=> (not res!479239) (not e!402071))))

(declare-datatypes ((List!13488 0))(
  ( (Nil!13485) (Cons!13484 (h!14529 (_ BitVec 64)) (t!19811 List!13488)) )
))
(declare-fun newAcc!49 () List!13488)

(declare-fun contains!4031 (List!13488 (_ BitVec 64)) Bool)

(assert (=> b!716173 (= res!479239 (not (contains!4031 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((array!40525 0))(
  ( (array!40526 (arr!19394 (Array (_ BitVec 32) (_ BitVec 64))) (size!19812 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40525)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun b!716174 () Bool)

(declare-fun arrayNoDuplicates!0 (array!40525 (_ BitVec 32) List!13488) Bool)

(assert (=> b!716174 (= e!402071 (not (arrayNoDuplicates!0 a!3591 from!2969 newAcc!49)))))

(declare-fun b!716175 () Bool)

(declare-fun res!479246 () Bool)

(assert (=> b!716175 (=> (not res!479246) (not e!402071))))

(declare-fun arrayContainsKey!0 (array!40525 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!716175 (= res!479246 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!716176 () Bool)

(declare-fun res!479245 () Bool)

(assert (=> b!716176 (=> (not res!479245) (not e!402071))))

(declare-fun acc!652 () List!13488)

(assert (=> b!716176 (= res!479245 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!716177 () Bool)

(declare-fun res!479248 () Bool)

(assert (=> b!716177 (=> (not res!479248) (not e!402071))))

(assert (=> b!716177 (= res!479248 (not (contains!4031 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!716178 () Bool)

(declare-fun res!479242 () Bool)

(assert (=> b!716178 (=> (not res!479242) (not e!402071))))

(assert (=> b!716178 (= res!479242 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) (size!19812 a!3591)))))

(declare-fun b!716179 () Bool)

(declare-fun res!479237 () Bool)

(assert (=> b!716179 (=> (not res!479237) (not e!402071))))

(declare-fun -!440 (List!13488 (_ BitVec 64)) List!13488)

(assert (=> b!716179 (= res!479237 (= (-!440 newAcc!49 k!2824) acc!652))))

(declare-fun b!716180 () Bool)

(declare-fun res!479249 () Bool)

(assert (=> b!716180 (=> (not res!479249) (not e!402071))))

(assert (=> b!716180 (= res!479249 (not (contains!4031 acc!652 k!2824)))))

(declare-fun b!716181 () Bool)

(declare-fun res!479240 () Bool)

(assert (=> b!716181 (=> (not res!479240) (not e!402071))))

(assert (=> b!716181 (= res!479240 (contains!4031 newAcc!49 k!2824))))

(declare-fun res!479236 () Bool)

(assert (=> start!63608 (=> (not res!479236) (not e!402071))))

(assert (=> start!63608 (= res!479236 (and (bvslt (size!19812 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19812 a!3591))))))

(assert (=> start!63608 e!402071))

(assert (=> start!63608 true))

(declare-fun array_inv!15168 (array!40525) Bool)

(assert (=> start!63608 (array_inv!15168 a!3591)))

(declare-fun b!716182 () Bool)

(declare-fun res!479244 () Bool)

(assert (=> b!716182 (=> (not res!479244) (not e!402071))))

(assert (=> b!716182 (= res!479244 (not (contains!4031 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!716183 () Bool)

(declare-fun res!479247 () Bool)

(assert (=> b!716183 (=> (not res!479247) (not e!402071))))

(assert (=> b!716183 (= res!479247 (not (contains!4031 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!716184 () Bool)

(declare-fun res!479250 () Bool)

(assert (=> b!716184 (=> (not res!479250) (not e!402071))))

(declare-fun subseq!475 (List!13488 List!13488) Bool)

(assert (=> b!716184 (= res!479250 (subseq!475 acc!652 newAcc!49))))

(declare-fun b!716185 () Bool)

(declare-fun res!479238 () Bool)

(assert (=> b!716185 (=> (not res!479238) (not e!402071))))

(declare-fun noDuplicate!1278 (List!13488) Bool)

(assert (=> b!716185 (= res!479238 (noDuplicate!1278 acc!652))))

(declare-fun b!716186 () Bool)

(declare-fun res!479243 () Bool)

(assert (=> b!716186 (=> (not res!479243) (not e!402071))))

(assert (=> b!716186 (= res!479243 (noDuplicate!1278 newAcc!49))))

(assert (= (and start!63608 res!479236) b!716185))

(assert (= (and b!716185 res!479238) b!716186))

(assert (= (and b!716186 res!479243) b!716182))

(assert (= (and b!716182 res!479244) b!716183))

(assert (= (and b!716183 res!479247) b!716175))

(assert (= (and b!716175 res!479246) b!716180))

(assert (= (and b!716180 res!479249) b!716172))

(assert (= (and b!716172 res!479241) b!716176))

(assert (= (and b!716176 res!479245) b!716184))

(assert (= (and b!716184 res!479250) b!716181))

(assert (= (and b!716181 res!479240) b!716179))

(assert (= (and b!716179 res!479237) b!716177))

(assert (= (and b!716177 res!479248) b!716173))

(assert (= (and b!716173 res!479239) b!716178))

(assert (= (and b!716178 res!479242) b!716174))

(declare-fun m!672255 () Bool)

(assert (=> b!716174 m!672255))

(declare-fun m!672257 () Bool)

(assert (=> b!716180 m!672257))

(declare-fun m!672259 () Bool)

(assert (=> b!716185 m!672259))

(declare-fun m!672261 () Bool)

(assert (=> b!716176 m!672261))

(declare-fun m!672263 () Bool)

(assert (=> b!716175 m!672263))

(declare-fun m!672265 () Bool)

(assert (=> start!63608 m!672265))

(declare-fun m!672267 () Bool)

(assert (=> b!716181 m!672267))

(declare-fun m!672269 () Bool)

(assert (=> b!716173 m!672269))

(declare-fun m!672271 () Bool)

(assert (=> b!716182 m!672271))

(declare-fun m!672273 () Bool)

(assert (=> b!716186 m!672273))

(declare-fun m!672275 () Bool)

(assert (=> b!716177 m!672275))

(declare-fun m!672277 () Bool)

(assert (=> b!716172 m!672277))

(declare-fun m!672279 () Bool)

(assert (=> b!716179 m!672279))

(declare-fun m!672281 () Bool)

(assert (=> b!716183 m!672281))

(declare-fun m!672283 () Bool)

(assert (=> b!716184 m!672283))

(push 1)

(assert (not b!716182))

(assert (not b!716186))

(assert (not b!716177))

(assert (not b!716183))

(assert (not start!63608))

(assert (not b!716174))

(assert (not b!716184))

(assert (not b!716173))

(assert (not b!716176))

(assert (not b!716181))

(assert (not b!716185))

(assert (not b!716179))

(assert (not b!716175))

(assert (not b!716172))

(assert (not b!716180))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!98469 () Bool)

(declare-fun lt!318859 () Bool)

(declare-fun content!377 (List!13488) (Set (_ BitVec 64)))

(assert (=> d!98469 (= lt!318859 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!377 acc!652)))))

(declare-fun e!402112 () Bool)

(assert (=> d!98469 (= lt!318859 e!402112)))

(declare-fun res!479289 () Bool)

(assert (=> d!98469 (=> (not res!479289) (not e!402112))))

(assert (=> d!98469 (= res!479289 (is-Cons!13484 acc!652))))

(assert (=> d!98469 (= (contains!4031 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318859)))

(declare-fun b!716225 () Bool)

(declare-fun e!402111 () Bool)

(assert (=> b!716225 (= e!402112 e!402111)))

(declare-fun res!479290 () Bool)

(assert (=> b!716225 (=> res!479290 e!402111)))

(assert (=> b!716225 (= res!479290 (= (h!14529 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!716226 () Bool)

(assert (=> b!716226 (= e!402111 (contains!4031 (t!19811 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98469 res!479289) b!716225))

(assert (= (and b!716225 (not res!479290)) b!716226))

(declare-fun m!672313 () Bool)

(assert (=> d!98469 m!672313))

(declare-fun m!672315 () Bool)

(assert (=> d!98469 m!672315))

(declare-fun m!672317 () Bool)

(assert (=> b!716226 m!672317))

(assert (=> b!716182 d!98469))

(declare-fun d!98481 () Bool)

(declare-fun lt!318861 () Bool)

(assert (=> d!98481 (= lt!318861 (member k!2824 (content!377 newAcc!49)))))

(declare-fun e!402116 () Bool)

(assert (=> d!98481 (= lt!318861 e!402116)))

(declare-fun res!479293 () Bool)

(assert (=> d!98481 (=> (not res!479293) (not e!402116))))

(assert (=> d!98481 (= res!479293 (is-Cons!13484 newAcc!49))))

(assert (=> d!98481 (= (contains!4031 newAcc!49 k!2824) lt!318861)))

(declare-fun b!716229 () Bool)

(declare-fun e!402115 () Bool)

(assert (=> b!716229 (= e!402116 e!402115)))

(declare-fun res!479294 () Bool)

(assert (=> b!716229 (=> res!479294 e!402115)))

(assert (=> b!716229 (= res!479294 (= (h!14529 newAcc!49) k!2824))))

(declare-fun b!716230 () Bool)

(assert (=> b!716230 (= e!402115 (contains!4031 (t!19811 newAcc!49) k!2824))))

(assert (= (and d!98481 res!479293) b!716229))

(assert (= (and b!716229 (not res!479294)) b!716230))

(declare-fun m!672325 () Bool)

(assert (=> d!98481 m!672325))

(declare-fun m!672327 () Bool)

(assert (=> d!98481 m!672327))

(declare-fun m!672329 () Bool)

(assert (=> b!716230 m!672329))

(assert (=> b!716181 d!98481))

(declare-fun d!98485 () Bool)

(declare-fun lt!318863 () Bool)

(assert (=> d!98485 (= lt!318863 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!377 acc!652)))))

(declare-fun e!402120 () Bool)

(assert (=> d!98485 (= lt!318863 e!402120)))

(declare-fun res!479297 () Bool)

(assert (=> d!98485 (=> (not res!479297) (not e!402120))))

(assert (=> d!98485 (= res!479297 (is-Cons!13484 acc!652))))

(assert (=> d!98485 (= (contains!4031 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318863)))

(declare-fun b!716233 () Bool)

(declare-fun e!402119 () Bool)

(assert (=> b!716233 (= e!402120 e!402119)))

(declare-fun res!479298 () Bool)

(assert (=> b!716233 (=> res!479298 e!402119)))

(assert (=> b!716233 (= res!479298 (= (h!14529 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!716234 () Bool)

(assert (=> b!716234 (= e!402119 (contains!4031 (t!19811 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98485 res!479297) b!716233))

(assert (= (and b!716233 (not res!479298)) b!716234))

(assert (=> d!98485 m!672313))

(declare-fun m!672337 () Bool)

(assert (=> d!98485 m!672337))

(declare-fun m!672339 () Bool)

(assert (=> b!716234 m!672339))

(assert (=> b!716183 d!98485))

(declare-fun d!98489 () Bool)

(assert (=> d!98489 (= (validKeyInArray!0 k!2824) (and (not (= k!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!716172 d!98489))

(declare-fun b!716287 () Bool)

(declare-fun e!402169 () Bool)

(declare-fun e!402168 () Bool)

(assert (=> b!716287 (= e!402169 e!402168)))

(declare-fun c!78841 () Bool)

(assert (=> b!716287 (= c!78841 (validKeyInArray!0 (select (arr!19394 a!3591) from!2969)))))

(declare-fun e!402167 () Bool)

(declare-fun b!716288 () Bool)

(assert (=> b!716288 (= e!402167 (contains!4031 newAcc!49 (select (arr!19394 a!3591) from!2969)))))

(declare-fun call!34663 () Bool)

(declare-fun bm!34660 () Bool)

(assert (=> bm!34660 (= call!34663 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78841 (Cons!13484 (select (arr!19394 a!3591) from!2969) newAcc!49) newAcc!49)))))

(declare-fun d!98491 () Bool)

(declare-fun res!479337 () Bool)

(declare-fun e!402166 () Bool)

(assert (=> d!98491 (=> res!479337 e!402166)))

(assert (=> d!98491 (= res!479337 (bvsge from!2969 (size!19812 a!3591)))))

(assert (=> d!98491 (= (arrayNoDuplicates!0 a!3591 from!2969 newAcc!49) e!402166)))

(declare-fun b!716289 () Bool)

(assert (=> b!716289 (= e!402168 call!34663)))

(declare-fun b!716290 () Bool)

(assert (=> b!716290 (= e!402168 call!34663)))

(declare-fun b!716291 () Bool)

(assert (=> b!716291 (= e!402166 e!402169)))

(declare-fun res!479338 () Bool)

(assert (=> b!716291 (=> (not res!479338) (not e!402169))))

(assert (=> b!716291 (= res!479338 (not e!402167))))

(declare-fun res!479339 () Bool)

(assert (=> b!716291 (=> (not res!479339) (not e!402167))))

(assert (=> b!716291 (= res!479339 (validKeyInArray!0 (select (arr!19394 a!3591) from!2969)))))

(assert (= (and d!98491 (not res!479337)) b!716291))

(assert (= (and b!716291 res!479339) b!716288))

(assert (= (and b!716291 res!479338) b!716287))

(assert (= (and b!716287 c!78841) b!716289))

(assert (= (and b!716287 (not c!78841)) b!716290))

(assert (= (or b!716289 b!716290) bm!34660))

(declare-fun m!672363 () Bool)

(assert (=> b!716287 m!672363))

(assert (=> b!716287 m!672363))

(declare-fun m!672365 () Bool)

(assert (=> b!716287 m!672365))

(assert (=> b!716288 m!672363))

(assert (=> b!716288 m!672363))

(declare-fun m!672367 () Bool)

(assert (=> b!716288 m!672367))

(assert (=> bm!34660 m!672363))

(declare-fun m!672369 () Bool)

(assert (=> bm!34660 m!672369))

(assert (=> b!716291 m!672363))

(assert (=> b!716291 m!672363))

(assert (=> b!716291 m!672365))

(assert (=> b!716174 d!98491))

(declare-fun b!716334 () Bool)

(declare-fun e!402204 () Bool)

(assert (=> b!716334 (= e!402204 (subseq!475 (t!19811 acc!652) (t!19811 newAcc!49)))))

(declare-fun b!716335 () Bool)

(declare-fun e!402202 () Bool)

(assert (=> b!716335 (= e!402202 (subseq!475 acc!652 (t!19811 newAcc!49)))))

(declare-fun b!716333 () Bool)

(declare-fun e!402201 () Bool)

(assert (=> b!716333 (= e!402201 e!402202)))

(declare-fun res!479360 () Bool)

(assert (=> b!716333 (=> res!479360 e!402202)))

(assert (=> b!716333 (= res!479360 e!402204)))

(declare-fun res!479358 () Bool)

(assert (=> b!716333 (=> (not res!479358) (not e!402204))))

(assert (=> b!716333 (= res!479358 (= (h!14529 acc!652) (h!14529 newAcc!49)))))

(declare-fun d!98503 () Bool)

(declare-fun res!479361 () Bool)

(declare-fun e!402203 () Bool)

(assert (=> d!98503 (=> res!479361 e!402203)))

(assert (=> d!98503 (= res!479361 (is-Nil!13485 acc!652))))

(assert (=> d!98503 (= (subseq!475 acc!652 newAcc!49) e!402203)))

(declare-fun b!716332 () Bool)

(assert (=> b!716332 (= e!402203 e!402201)))

(declare-fun res!479359 () Bool)

(assert (=> b!716332 (=> (not res!479359) (not e!402201))))

(assert (=> b!716332 (= res!479359 (is-Cons!13484 newAcc!49))))

(assert (= (and d!98503 (not res!479361)) b!716332))

(assert (= (and b!716332 res!479359) b!716333))

(assert (= (and b!716333 res!479358) b!716334))

(assert (= (and b!716333 (not res!479360)) b!716335))

(declare-fun m!672399 () Bool)

(assert (=> b!716334 m!672399))

(declare-fun m!672401 () Bool)

(assert (=> b!716335 m!672401))

(assert (=> b!716184 d!98503))

(declare-fun d!98511 () Bool)

(declare-fun lt!318872 () Bool)

(assert (=> d!98511 (= lt!318872 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!377 newAcc!49)))))

(declare-fun e!402206 () Bool)

(assert (=> d!98511 (= lt!318872 e!402206)))

(declare-fun res!479362 () Bool)

(assert (=> d!98511 (=> (not res!479362) (not e!402206))))

(assert (=> d!98511 (= res!479362 (is-Cons!13484 newAcc!49))))

(assert (=> d!98511 (= (contains!4031 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318872)))

(declare-fun b!716336 () Bool)

(declare-fun e!402205 () Bool)

(assert (=> b!716336 (= e!402206 e!402205)))

(declare-fun res!479363 () Bool)

(assert (=> b!716336 (=> res!479363 e!402205)))

(assert (=> b!716336 (= res!479363 (= (h!14529 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!716337 () Bool)

(assert (=> b!716337 (= e!402205 (contains!4031 (t!19811 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98511 res!479362) b!716336))

(assert (= (and b!716336 (not res!479363)) b!716337))

(assert (=> d!98511 m!672325))

(declare-fun m!672403 () Bool)

(assert (=> d!98511 m!672403))

(declare-fun m!672405 () Bool)

(assert (=> b!716337 m!672405))

(assert (=> b!716173 d!98511))

(declare-fun d!98513 () Bool)

(declare-fun res!479374 () Bool)

(declare-fun e!402219 () Bool)

(assert (=> d!98513 (=> res!479374 e!402219)))

(assert (=> d!98513 (= res!479374 (is-Nil!13485 newAcc!49))))

(assert (=> d!98513 (= (noDuplicate!1278 newAcc!49) e!402219)))

(declare-fun b!716352 () Bool)

(declare-fun e!402220 () Bool)

(assert (=> b!716352 (= e!402219 e!402220)))

(declare-fun res!479375 () Bool)

(assert (=> b!716352 (=> (not res!479375) (not e!402220))))

(assert (=> b!716352 (= res!479375 (not (contains!4031 (t!19811 newAcc!49) (h!14529 newAcc!49))))))

(declare-fun b!716353 () Bool)

(assert (=> b!716353 (= e!402220 (noDuplicate!1278 (t!19811 newAcc!49)))))

(assert (= (and d!98513 (not res!479374)) b!716352))

(assert (= (and b!716352 res!479375) b!716353))

(declare-fun m!672407 () Bool)

(assert (=> b!716352 m!672407))

(declare-fun m!672409 () Bool)

(assert (=> b!716353 m!672409))

(assert (=> b!716186 d!98513))

(declare-fun d!98515 () Bool)

(assert (=> d!98515 (= (array_inv!15168 a!3591) (bvsge (size!19812 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!63608 d!98515))

(declare-fun d!98517 () Bool)

(declare-fun res!479383 () Bool)

(declare-fun e!402229 () Bool)

(assert (=> d!98517 (=> res!479383 e!402229)))

(assert (=> d!98517 (= res!479383 (= (select (arr!19394 a!3591) from!2969) k!2824))))

(assert (=> d!98517 (= (arrayContainsKey!0 a!3591 k!2824 from!2969) e!402229)))

(declare-fun b!716363 () Bool)

(declare-fun e!402230 () Bool)

(assert (=> b!716363 (= e!402229 e!402230)))

(declare-fun res!479384 () Bool)

(assert (=> b!716363 (=> (not res!479384) (not e!402230))))

(assert (=> b!716363 (= res!479384 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19812 a!3591)))))

(declare-fun b!716364 () Bool)

(assert (=> b!716364 (= e!402230 (arrayContainsKey!0 a!3591 k!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!98517 (not res!479383)) b!716363))

(assert (= (and b!716363 res!479384) b!716364))

(assert (=> d!98517 m!672363))

(declare-fun m!672419 () Bool)

(assert (=> b!716364 m!672419))

(assert (=> b!716175 d!98517))

(declare-fun d!98521 () Bool)

(declare-fun res!479387 () Bool)

(declare-fun e!402233 () Bool)

(assert (=> d!98521 (=> res!479387 e!402233)))

(assert (=> d!98521 (= res!479387 (is-Nil!13485 acc!652))))

(assert (=> d!98521 (= (noDuplicate!1278 acc!652) e!402233)))

(declare-fun b!716367 () Bool)

(declare-fun e!402234 () Bool)

(assert (=> b!716367 (= e!402233 e!402234)))

(declare-fun res!479388 () Bool)

(assert (=> b!716367 (=> (not res!479388) (not e!402234))))

(assert (=> b!716367 (= res!479388 (not (contains!4031 (t!19811 acc!652) (h!14529 acc!652))))))

(declare-fun b!716368 () Bool)

(assert (=> b!716368 (= e!402234 (noDuplicate!1278 (t!19811 acc!652)))))

(assert (= (and d!98521 (not res!479387)) b!716367))

(assert (= (and b!716367 res!479388) b!716368))

(declare-fun m!672425 () Bool)

(assert (=> b!716367 m!672425))

(declare-fun m!672427 () Bool)

(assert (=> b!716368 m!672427))

(assert (=> b!716185 d!98521))

(declare-fun b!716369 () Bool)

(declare-fun e!402238 () Bool)

(declare-fun e!402237 () Bool)

(assert (=> b!716369 (= e!402238 e!402237)))

(declare-fun c!78857 () Bool)

(assert (=> b!716369 (= c!78857 (validKeyInArray!0 (select (arr!19394 a!3591) from!2969)))))

(declare-fun b!716370 () Bool)

(declare-fun e!402236 () Bool)

(assert (=> b!716370 (= e!402236 (contains!4031 acc!652 (select (arr!19394 a!3591) from!2969)))))

(declare-fun call!34673 () Bool)

(declare-fun bm!34670 () Bool)

(assert (=> bm!34670 (= call!34673 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78857 (Cons!13484 (select (arr!19394 a!3591) from!2969) acc!652) acc!652)))))

(declare-fun d!98525 () Bool)

(declare-fun res!479389 () Bool)

(declare-fun e!402235 () Bool)

(assert (=> d!98525 (=> res!479389 e!402235)))

(assert (=> d!98525 (= res!479389 (bvsge from!2969 (size!19812 a!3591)))))

(assert (=> d!98525 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!402235)))

(declare-fun b!716371 () Bool)

(assert (=> b!716371 (= e!402237 call!34673)))

(declare-fun b!716372 () Bool)

(assert (=> b!716372 (= e!402237 call!34673)))

(declare-fun b!716373 () Bool)

(assert (=> b!716373 (= e!402235 e!402238)))

(declare-fun res!479390 () Bool)

(assert (=> b!716373 (=> (not res!479390) (not e!402238))))

(assert (=> b!716373 (= res!479390 (not e!402236))))

(declare-fun res!479391 () Bool)

(assert (=> b!716373 (=> (not res!479391) (not e!402236))))

(assert (=> b!716373 (= res!479391 (validKeyInArray!0 (select (arr!19394 a!3591) from!2969)))))

(assert (= (and d!98525 (not res!479389)) b!716373))

(assert (= (and b!716373 res!479391) b!716370))

(assert (= (and b!716373 res!479390) b!716369))

(assert (= (and b!716369 c!78857) b!716371))

(assert (= (and b!716369 (not c!78857)) b!716372))

(assert (= (or b!716371 b!716372) bm!34670))

(assert (=> b!716369 m!672363))

(assert (=> b!716369 m!672363))

(assert (=> b!716369 m!672365))

(assert (=> b!716370 m!672363))

(assert (=> b!716370 m!672363))

(declare-fun m!672429 () Bool)

(assert (=> b!716370 m!672429))

(assert (=> bm!34670 m!672363))

(declare-fun m!672431 () Bool)

(assert (=> bm!34670 m!672431))

(assert (=> b!716373 m!672363))

(assert (=> b!716373 m!672363))

(assert (=> b!716373 m!672365))

(assert (=> b!716176 d!98525))

(declare-fun d!98529 () Bool)

(declare-fun lt!318874 () Bool)

(assert (=> d!98529 (= lt!318874 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!377 newAcc!49)))))

(declare-fun e!402240 () Bool)

(assert (=> d!98529 (= lt!318874 e!402240)))

(declare-fun res!479392 () Bool)

(assert (=> d!98529 (=> (not res!479392) (not e!402240))))

(assert (=> d!98529 (= res!479392 (is-Cons!13484 newAcc!49))))

(assert (=> d!98529 (= (contains!4031 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318874)))

(declare-fun b!716374 () Bool)

(declare-fun e!402239 () Bool)

(assert (=> b!716374 (= e!402240 e!402239)))

(declare-fun res!479393 () Bool)

(assert (=> b!716374 (=> res!479393 e!402239)))

(assert (=> b!716374 (= res!479393 (= (h!14529 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!716375 () Bool)

(assert (=> b!716375 (= e!402239 (contains!4031 (t!19811 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98529 res!479392) b!716374))

(assert (= (and b!716374 (not res!479393)) b!716375))

(assert (=> d!98529 m!672325))

(declare-fun m!672433 () Bool)

(assert (=> d!98529 m!672433))

(declare-fun m!672435 () Bool)

(assert (=> b!716375 m!672435))

(assert (=> b!716177 d!98529))

(declare-fun b!716405 () Bool)

(declare-fun e!402266 () List!13488)

(assert (=> b!716405 (= e!402266 Nil!13485)))

(declare-fun e!402268 () Bool)

(declare-fun b!716406 () Bool)

(declare-fun lt!318878 () List!13488)

(assert (=> b!716406 (= e!402268 (= (content!377 lt!318878) (setminus (content!377 newAcc!49) (insert k!2824 (as emptyset (Set (_ BitVec 64)))))))))

(declare-fun b!716407 () Bool)

(declare-fun e!402267 () List!13488)

(declare-fun call!34677 () List!13488)

(assert (=> b!716407 (= e!402267 call!34677)))

(declare-fun d!98531 () Bool)

(assert (=> d!98531 e!402268))

(declare-fun res!479413 () Bool)

(assert (=> d!98531 (=> (not res!479413) (not e!402268))))

(declare-fun size!19815 (List!13488) Int)

(assert (=> d!98531 (= res!479413 (<= (size!19815 lt!318878) (size!19815 newAcc!49)))))

(assert (=> d!98531 (= lt!318878 e!402266)))

(declare-fun c!78863 () Bool)

(assert (=> d!98531 (= c!78863 (is-Cons!13484 newAcc!49))))

(assert (=> d!98531 (= (-!440 newAcc!49 k!2824) lt!318878)))

(declare-fun bm!34674 () Bool)

(assert (=> bm!34674 (= call!34677 (-!440 (t!19811 newAcc!49) k!2824))))

(declare-fun b!716408 () Bool)

(assert (=> b!716408 (= e!402266 e!402267)))

(declare-fun c!78864 () Bool)

(assert (=> b!716408 (= c!78864 (= k!2824 (h!14529 newAcc!49)))))

(declare-fun b!716409 () Bool)

(assert (=> b!716409 (= e!402267 (Cons!13484 (h!14529 newAcc!49) call!34677))))

(assert (= (and d!98531 c!78863) b!716408))

(assert (= (and d!98531 (not c!78863)) b!716405))

(assert (= (and b!716408 c!78864) b!716407))

(assert (= (and b!716408 (not c!78864)) b!716409))

(assert (= (or b!716407 b!716409) bm!34674))

(assert (= (and d!98531 res!479413) b!716406))

(declare-fun m!672453 () Bool)

(assert (=> b!716406 m!672453))

(assert (=> b!716406 m!672325))

(declare-fun m!672455 () Bool)

(assert (=> b!716406 m!672455))

(declare-fun m!672457 () Bool)

(assert (=> d!98531 m!672457))

(declare-fun m!672459 () Bool)

(assert (=> d!98531 m!672459))

(declare-fun m!672461 () Bool)

(assert (=> bm!34674 m!672461))

(assert (=> b!716179 d!98531))

(declare-fun d!98543 () Bool)

(declare-fun lt!318879 () Bool)

(assert (=> d!98543 (= lt!318879 (member k!2824 (content!377 acc!652)))))

(declare-fun e!402272 () Bool)

(assert (=> d!98543 (= lt!318879 e!402272)))

(declare-fun res!479416 () Bool)

(assert (=> d!98543 (=> (not res!479416) (not e!402272))))

(assert (=> d!98543 (= res!479416 (is-Cons!13484 acc!652))))

(assert (=> d!98543 (= (contains!4031 acc!652 k!2824) lt!318879)))

(declare-fun b!716412 () Bool)

(declare-fun e!402271 () Bool)

(assert (=> b!716412 (= e!402272 e!402271)))

(declare-fun res!479417 () Bool)

(assert (=> b!716412 (=> res!479417 e!402271)))

(assert (=> b!716412 (= res!479417 (= (h!14529 acc!652) k!2824))))

(declare-fun b!716413 () Bool)

(assert (=> b!716413 (= e!402271 (contains!4031 (t!19811 acc!652) k!2824))))

(assert (= (and d!98543 res!479416) b!716412))

(assert (= (and b!716412 (not res!479417)) b!716413))

(assert (=> d!98543 m!672313))

(declare-fun m!672465 () Bool)

(assert (=> d!98543 m!672465))

(declare-fun m!672467 () Bool)

(assert (=> b!716413 m!672467))

(assert (=> b!716180 d!98543))

(push 1)

(assert (not d!98481))

(assert (not b!716367))

(assert (not b!716230))

(assert (not d!98485))

(assert (not b!716287))

(assert (not b!716373))

(assert (not b!716352))

(assert (not b!716406))

(assert (not d!98529))

(assert (not b!716291))

(assert (not b!716335))

(assert (not d!98511))

(assert (not b!716369))

(assert (not b!716375))

(assert (not b!716364))

(assert (not b!716353))

(assert (not d!98469))

(assert (not b!716334))

(assert (not bm!34670))

(assert (not b!716288))

(assert (not bm!34660))

(assert (not b!716337))

(assert (not b!716226))

(assert (not bm!34674))

(assert (not d!98543))

(assert (not d!98531))

(assert (not b!716370))

(assert (not b!716368))

(assert (not b!716413))

(assert (not b!716234))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!98643 () Bool)

(declare-fun lt!318911 () Bool)

(assert (=> d!98643 (= lt!318911 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!377 (t!19811 newAcc!49))))))

(declare-fun e!402384 () Bool)

(assert (=> d!98643 (= lt!318911 e!402384)))

(declare-fun res!479502 () Bool)

(assert (=> d!98643 (=> (not res!479502) (not e!402384))))

(assert (=> d!98643 (= res!479502 (is-Cons!13484 (t!19811 newAcc!49)))))

(assert (=> d!98643 (= (contains!4031 (t!19811 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000) lt!318911)))

(declare-fun b!716550 () Bool)

(declare-fun e!402383 () Bool)

(assert (=> b!716550 (= e!402384 e!402383)))

(declare-fun res!479503 () Bool)

(assert (=> b!716550 (=> res!479503 e!402383)))

(assert (=> b!716550 (= res!479503 (= (h!14529 (t!19811 newAcc!49)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!716551 () Bool)

(assert (=> b!716551 (= e!402383 (contains!4031 (t!19811 (t!19811 newAcc!49)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98643 res!479502) b!716550))

(assert (= (and b!716550 (not res!479503)) b!716551))

(declare-fun m!672653 () Bool)

(assert (=> d!98643 m!672653))

(declare-fun m!672655 () Bool)

(assert (=> d!98643 m!672655))

(declare-fun m!672661 () Bool)

(assert (=> b!716551 m!672661))

(assert (=> b!716375 d!98643))

(declare-fun d!98647 () Bool)

(declare-fun res!479506 () Bool)

(declare-fun e!402387 () Bool)

(assert (=> d!98647 (=> res!479506 e!402387)))

(assert (=> d!98647 (= res!479506 (= (select (arr!19394 a!3591) (bvadd from!2969 #b00000000000000000000000000000001)) k!2824))))

(assert (=> d!98647 (= (arrayContainsKey!0 a!3591 k!2824 (bvadd from!2969 #b00000000000000000000000000000001)) e!402387)))

(declare-fun b!716554 () Bool)

(declare-fun e!402388 () Bool)

(assert (=> b!716554 (= e!402387 e!402388)))

(declare-fun res!479507 () Bool)

(assert (=> b!716554 (=> (not res!479507) (not e!402388))))

(assert (=> b!716554 (= res!479507 (bvslt (bvadd from!2969 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!19812 a!3591)))))

(declare-fun b!716555 () Bool)

(assert (=> b!716555 (= e!402388 (arrayContainsKey!0 a!3591 k!2824 (bvadd from!2969 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!98647 (not res!479506)) b!716554))

(assert (= (and b!716554 res!479507) b!716555))

(declare-fun m!672663 () Bool)

(assert (=> d!98647 m!672663))

(declare-fun m!672665 () Bool)

(assert (=> b!716555 m!672665))

(assert (=> b!716364 d!98647))

(declare-fun d!98649 () Bool)

(assert (=> d!98649 (= (validKeyInArray!0 (select (arr!19394 a!3591) from!2969)) (and (not (= (select (arr!19394 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19394 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!716287 d!98649))

(declare-fun lt!318913 () Bool)

(declare-fun d!98651 () Bool)

(assert (=> d!98651 (= lt!318913 (member (select (arr!19394 a!3591) from!2969) (content!377 acc!652)))))

(declare-fun e!402390 () Bool)

(assert (=> d!98651 (= lt!318913 e!402390)))

(declare-fun res!479508 () Bool)

(assert (=> d!98651 (=> (not res!479508) (not e!402390))))

(assert (=> d!98651 (= res!479508 (is-Cons!13484 acc!652))))

(assert (=> d!98651 (= (contains!4031 acc!652 (select (arr!19394 a!3591) from!2969)) lt!318913)))

(declare-fun b!716556 () Bool)

(declare-fun e!402389 () Bool)

(assert (=> b!716556 (= e!402390 e!402389)))

(declare-fun res!479509 () Bool)

(assert (=> b!716556 (=> res!479509 e!402389)))

(assert (=> b!716556 (= res!479509 (= (h!14529 acc!652) (select (arr!19394 a!3591) from!2969)))))

(declare-fun b!716557 () Bool)

(assert (=> b!716557 (= e!402389 (contains!4031 (t!19811 acc!652) (select (arr!19394 a!3591) from!2969)))))

(assert (= (and d!98651 res!479508) b!716556))

(assert (= (and b!716556 (not res!479509)) b!716557))

(assert (=> d!98651 m!672313))

(assert (=> d!98651 m!672363))

(declare-fun m!672667 () Bool)

(assert (=> d!98651 m!672667))

(assert (=> b!716557 m!672363))

(declare-fun m!672669 () Bool)

(assert (=> b!716557 m!672669))

(assert (=> b!716370 d!98651))

(declare-fun d!98653 () Bool)

(declare-fun lt!318914 () Bool)

(assert (=> d!98653 (= lt!318914 (member (select (arr!19394 a!3591) from!2969) (content!377 newAcc!49)))))

(declare-fun e!402392 () Bool)

(assert (=> d!98653 (= lt!318914 e!402392)))

(declare-fun res!479510 () Bool)

(assert (=> d!98653 (=> (not res!479510) (not e!402392))))

(assert (=> d!98653 (= res!479510 (is-Cons!13484 newAcc!49))))

(assert (=> d!98653 (= (contains!4031 newAcc!49 (select (arr!19394 a!3591) from!2969)) lt!318914)))

(declare-fun b!716558 () Bool)

(declare-fun e!402391 () Bool)

(assert (=> b!716558 (= e!402392 e!402391)))

(declare-fun res!479511 () Bool)

(assert (=> b!716558 (=> res!479511 e!402391)))

(assert (=> b!716558 (= res!479511 (= (h!14529 newAcc!49) (select (arr!19394 a!3591) from!2969)))))

(declare-fun b!716559 () Bool)

(assert (=> b!716559 (= e!402391 (contains!4031 (t!19811 newAcc!49) (select (arr!19394 a!3591) from!2969)))))

(assert (= (and d!98653 res!479510) b!716558))

(assert (= (and b!716558 (not res!479511)) b!716559))

(assert (=> d!98653 m!672325))

(assert (=> d!98653 m!672363))

(declare-fun m!672671 () Bool)

(assert (=> d!98653 m!672671))

(assert (=> b!716559 m!672363))

(declare-fun m!672673 () Bool)

(assert (=> b!716559 m!672673))

(assert (=> b!716288 d!98653))

(declare-fun b!716560 () Bool)

(declare-fun e!402396 () Bool)

(declare-fun e!402395 () Bool)

(assert (=> b!716560 (= e!402396 e!402395)))

(declare-fun c!78891 () Bool)

(assert (=> b!716560 (= c!78891 (validKeyInArray!0 (select (arr!19394 a!3591) (bvadd from!2969 #b00000000000000000000000000000001))))))

(declare-fun e!402394 () Bool)

(declare-fun b!716561 () Bool)

(assert (=> b!716561 (= e!402394 (contains!4031 (ite c!78857 (Cons!13484 (select (arr!19394 a!3591) from!2969) acc!652) acc!652) (select (arr!19394 a!3591) (bvadd from!2969 #b00000000000000000000000000000001))))))

(declare-fun bm!34681 () Bool)

(declare-fun call!34684 () Bool)

(assert (=> bm!34681 (= call!34684 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!78891 (Cons!13484 (select (arr!19394 a!3591) (bvadd from!2969 #b00000000000000000000000000000001)) (ite c!78857 (Cons!13484 (select (arr!19394 a!3591) from!2969) acc!652) acc!652)) (ite c!78857 (Cons!13484 (select (arr!19394 a!3591) from!2969) acc!652) acc!652))))))

(declare-fun d!98655 () Bool)

(declare-fun res!479512 () Bool)

(declare-fun e!402393 () Bool)

(assert (=> d!98655 (=> res!479512 e!402393)))

(assert (=> d!98655 (= res!479512 (bvsge (bvadd from!2969 #b00000000000000000000000000000001) (size!19812 a!3591)))))

(assert (=> d!98655 (= (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78857 (Cons!13484 (select (arr!19394 a!3591) from!2969) acc!652) acc!652)) e!402393)))

(declare-fun b!716562 () Bool)

(assert (=> b!716562 (= e!402395 call!34684)))

(declare-fun b!716563 () Bool)

(assert (=> b!716563 (= e!402395 call!34684)))

