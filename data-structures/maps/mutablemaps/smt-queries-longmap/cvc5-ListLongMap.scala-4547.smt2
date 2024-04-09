; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63376 () Bool)

(assert start!63376)

(declare-fun b!713462 () Bool)

(declare-fun res!476716 () Bool)

(declare-fun e!401183 () Bool)

(assert (=> b!713462 (=> (not res!476716) (not e!401183))))

(declare-datatypes ((List!13447 0))(
  ( (Nil!13444) (Cons!13443 (h!14488 (_ BitVec 64)) (t!19770 List!13447)) )
))
(declare-fun acc!652 () List!13447)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!3990 (List!13447 (_ BitVec 64)) Bool)

(assert (=> b!713462 (= res!476716 (not (contains!3990 acc!652 k!2824)))))

(declare-fun b!713463 () Bool)

(assert (=> b!713463 (= e!401183 false)))

(declare-fun lt!318653 () Bool)

(declare-fun newAcc!49 () List!13447)

(assert (=> b!713463 (= lt!318653 (contains!3990 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!713464 () Bool)

(declare-fun res!476713 () Bool)

(assert (=> b!713464 (=> (not res!476713) (not e!401183))))

(assert (=> b!713464 (= res!476713 (not (contains!3990 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713465 () Bool)

(declare-fun res!476722 () Bool)

(assert (=> b!713465 (=> (not res!476722) (not e!401183))))

(assert (=> b!713465 (= res!476722 (not (contains!3990 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713466 () Bool)

(declare-fun res!476712 () Bool)

(assert (=> b!713466 (=> (not res!476712) (not e!401183))))

(declare-fun -!399 (List!13447 (_ BitVec 64)) List!13447)

(assert (=> b!713466 (= res!476712 (= (-!399 newAcc!49 k!2824) acc!652))))

(declare-fun b!713467 () Bool)

(declare-fun res!476720 () Bool)

(assert (=> b!713467 (=> (not res!476720) (not e!401183))))

(assert (=> b!713467 (= res!476720 (not (contains!3990 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713468 () Bool)

(declare-fun res!476715 () Bool)

(assert (=> b!713468 (=> (not res!476715) (not e!401183))))

(declare-datatypes ((array!40434 0))(
  ( (array!40435 (arr!19353 (Array (_ BitVec 32) (_ BitVec 64))) (size!19765 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40434)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40434 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!713468 (= res!476715 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!713469 () Bool)

(declare-fun res!476724 () Bool)

(assert (=> b!713469 (=> (not res!476724) (not e!401183))))

(assert (=> b!713469 (= res!476724 (contains!3990 newAcc!49 k!2824))))

(declare-fun b!713471 () Bool)

(declare-fun res!476721 () Bool)

(assert (=> b!713471 (=> (not res!476721) (not e!401183))))

(declare-fun arrayNoDuplicates!0 (array!40434 (_ BitVec 32) List!13447) Bool)

(assert (=> b!713471 (= res!476721 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!713472 () Bool)

(declare-fun res!476719 () Bool)

(assert (=> b!713472 (=> (not res!476719) (not e!401183))))

(declare-fun noDuplicate!1237 (List!13447) Bool)

(assert (=> b!713472 (= res!476719 (noDuplicate!1237 acc!652))))

(declare-fun b!713473 () Bool)

(declare-fun res!476723 () Bool)

(assert (=> b!713473 (=> (not res!476723) (not e!401183))))

(declare-fun subseq!434 (List!13447 List!13447) Bool)

(assert (=> b!713473 (= res!476723 (subseq!434 acc!652 newAcc!49))))

(declare-fun b!713474 () Bool)

(declare-fun res!476718 () Bool)

(assert (=> b!713474 (=> (not res!476718) (not e!401183))))

(assert (=> b!713474 (= res!476718 (noDuplicate!1237 newAcc!49))))

(declare-fun b!713470 () Bool)

(declare-fun res!476714 () Bool)

(assert (=> b!713470 (=> (not res!476714) (not e!401183))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!713470 (= res!476714 (validKeyInArray!0 k!2824))))

(declare-fun res!476717 () Bool)

(assert (=> start!63376 (=> (not res!476717) (not e!401183))))

(assert (=> start!63376 (= res!476717 (and (bvslt (size!19765 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19765 a!3591))))))

(assert (=> start!63376 e!401183))

(assert (=> start!63376 true))

(declare-fun array_inv!15127 (array!40434) Bool)

(assert (=> start!63376 (array_inv!15127 a!3591)))

(assert (= (and start!63376 res!476717) b!713472))

(assert (= (and b!713472 res!476719) b!713474))

(assert (= (and b!713474 res!476718) b!713467))

(assert (= (and b!713467 res!476720) b!713465))

(assert (= (and b!713465 res!476722) b!713468))

(assert (= (and b!713468 res!476715) b!713462))

(assert (= (and b!713462 res!476716) b!713470))

(assert (= (and b!713470 res!476714) b!713471))

(assert (= (and b!713471 res!476721) b!713473))

(assert (= (and b!713473 res!476723) b!713469))

(assert (= (and b!713469 res!476724) b!713466))

(assert (= (and b!713466 res!476712) b!713464))

(assert (= (and b!713464 res!476713) b!713463))

(declare-fun m!670293 () Bool)

(assert (=> b!713468 m!670293))

(declare-fun m!670295 () Bool)

(assert (=> b!713467 m!670295))

(declare-fun m!670297 () Bool)

(assert (=> b!713474 m!670297))

(declare-fun m!670299 () Bool)

(assert (=> b!713469 m!670299))

(declare-fun m!670301 () Bool)

(assert (=> b!713464 m!670301))

(declare-fun m!670303 () Bool)

(assert (=> b!713471 m!670303))

(declare-fun m!670305 () Bool)

(assert (=> b!713473 m!670305))

(declare-fun m!670307 () Bool)

(assert (=> b!713463 m!670307))

(declare-fun m!670309 () Bool)

(assert (=> b!713465 m!670309))

(declare-fun m!670311 () Bool)

(assert (=> b!713470 m!670311))

(declare-fun m!670313 () Bool)

(assert (=> b!713462 m!670313))

(declare-fun m!670315 () Bool)

(assert (=> b!713466 m!670315))

(declare-fun m!670317 () Bool)

(assert (=> b!713472 m!670317))

(declare-fun m!670319 () Bool)

(assert (=> start!63376 m!670319))

(push 1)

(assert (not start!63376))

(assert (not b!713466))

(assert (not b!713470))

(assert (not b!713464))

(assert (not b!713469))

(assert (not b!713471))

(assert (not b!713472))

(assert (not b!713473))

(assert (not b!713474))

(assert (not b!713468))

(assert (not b!713465))

(assert (not b!713467))

(assert (not b!713463))

(assert (not b!713462))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

