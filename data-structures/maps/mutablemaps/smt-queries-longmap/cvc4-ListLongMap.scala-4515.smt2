; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62578 () Bool)

(assert start!62578)

(declare-fun b!705165 () Bool)

(declare-fun e!397714 () Bool)

(assert (=> b!705165 (= e!397714 false)))

(declare-datatypes ((array!40213 0))(
  ( (array!40214 (arr!19259 (Array (_ BitVec 32) (_ BitVec 64))) (size!19642 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40213)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun lt!317838 () Bool)

(declare-datatypes ((List!13353 0))(
  ( (Nil!13350) (Cons!13349 (h!14394 (_ BitVec 64)) (t!19643 List!13353)) )
))
(declare-fun acc!652 () List!13353)

(declare-fun arrayNoDuplicates!0 (array!40213 (_ BitVec 32) List!13353) Bool)

(assert (=> b!705165 (= lt!317838 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun res!469162 () Bool)

(assert (=> start!62578 (=> (not res!469162) (not e!397714))))

(assert (=> start!62578 (= res!469162 (and (bvslt (size!19642 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19642 a!3591))))))

(assert (=> start!62578 e!397714))

(assert (=> start!62578 true))

(declare-fun array_inv!15033 (array!40213) Bool)

(assert (=> start!62578 (array_inv!15033 a!3591)))

(declare-fun b!705166 () Bool)

(declare-fun res!469166 () Bool)

(assert (=> b!705166 (=> (not res!469166) (not e!397714))))

(declare-fun noDuplicate!1143 (List!13353) Bool)

(assert (=> b!705166 (= res!469166 (noDuplicate!1143 acc!652))))

(declare-fun b!705167 () Bool)

(declare-fun res!469149 () Bool)

(assert (=> b!705167 (=> (not res!469149) (not e!397714))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40213 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!705167 (= res!469149 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!705168 () Bool)

(declare-fun res!469163 () Bool)

(assert (=> b!705168 (=> (not res!469163) (not e!397714))))

(declare-fun newAcc!49 () List!13353)

(declare-fun contains!3896 (List!13353 (_ BitVec 64)) Bool)

(assert (=> b!705168 (= res!469163 (contains!3896 newAcc!49 k!2824))))

(declare-fun b!705169 () Bool)

(declare-fun res!469150 () Bool)

(assert (=> b!705169 (=> (not res!469150) (not e!397714))))

(assert (=> b!705169 (= res!469150 (noDuplicate!1143 newAcc!49))))

(declare-fun b!705170 () Bool)

(declare-fun res!469157 () Bool)

(assert (=> b!705170 (=> (not res!469157) (not e!397714))))

(assert (=> b!705170 (= res!469157 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19642 a!3591)))))

(declare-fun b!705171 () Bool)

(declare-fun res!469161 () Bool)

(assert (=> b!705171 (=> (not res!469161) (not e!397714))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!705171 (= res!469161 (validKeyInArray!0 k!2824))))

(declare-fun b!705172 () Bool)

(declare-fun res!469153 () Bool)

(assert (=> b!705172 (=> (not res!469153) (not e!397714))))

(assert (=> b!705172 (= res!469153 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!705173 () Bool)

(declare-fun res!469156 () Bool)

(assert (=> b!705173 (=> (not res!469156) (not e!397714))))

(declare-fun subseq!340 (List!13353 List!13353) Bool)

(assert (=> b!705173 (= res!469156 (subseq!340 acc!652 newAcc!49))))

(declare-fun b!705174 () Bool)

(declare-fun res!469158 () Bool)

(assert (=> b!705174 (=> (not res!469158) (not e!397714))))

(assert (=> b!705174 (= res!469158 (not (contains!3896 acc!652 k!2824)))))

(declare-fun b!705175 () Bool)

(declare-fun res!469159 () Bool)

(assert (=> b!705175 (=> (not res!469159) (not e!397714))))

(assert (=> b!705175 (= res!469159 (not (contains!3896 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705176 () Bool)

(declare-fun res!469154 () Bool)

(assert (=> b!705176 (=> (not res!469154) (not e!397714))))

(assert (=> b!705176 (= res!469154 (not (contains!3896 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705177 () Bool)

(declare-fun res!469164 () Bool)

(assert (=> b!705177 (=> (not res!469164) (not e!397714))))

(assert (=> b!705177 (= res!469164 (not (contains!3896 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705178 () Bool)

(declare-fun res!469165 () Bool)

(assert (=> b!705178 (=> (not res!469165) (not e!397714))))

(declare-fun -!305 (List!13353 (_ BitVec 64)) List!13353)

(assert (=> b!705178 (= res!469165 (= (-!305 newAcc!49 k!2824) acc!652))))

(declare-fun b!705179 () Bool)

(declare-fun res!469155 () Bool)

(assert (=> b!705179 (=> (not res!469155) (not e!397714))))

(assert (=> b!705179 (= res!469155 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!705180 () Bool)

(declare-fun res!469160 () Bool)

(assert (=> b!705180 (=> (not res!469160) (not e!397714))))

(assert (=> b!705180 (= res!469160 (not (validKeyInArray!0 (select (arr!19259 a!3591) from!2969))))))

(declare-fun b!705181 () Bool)

(declare-fun res!469152 () Bool)

(assert (=> b!705181 (=> (not res!469152) (not e!397714))))

(assert (=> b!705181 (= res!469152 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!705182 () Bool)

(declare-fun res!469151 () Bool)

(assert (=> b!705182 (=> (not res!469151) (not e!397714))))

(assert (=> b!705182 (= res!469151 (not (contains!3896 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62578 res!469162) b!705166))

(assert (= (and b!705166 res!469166) b!705169))

(assert (= (and b!705169 res!469150) b!705175))

(assert (= (and b!705175 res!469159) b!705176))

(assert (= (and b!705176 res!469154) b!705167))

(assert (= (and b!705167 res!469149) b!705174))

(assert (= (and b!705174 res!469158) b!705171))

(assert (= (and b!705171 res!469161) b!705179))

(assert (= (and b!705179 res!469155) b!705173))

(assert (= (and b!705173 res!469156) b!705168))

(assert (= (and b!705168 res!469163) b!705178))

(assert (= (and b!705178 res!469165) b!705177))

(assert (= (and b!705177 res!469164) b!705182))

(assert (= (and b!705182 res!469151) b!705170))

(assert (= (and b!705170 res!469157) b!705180))

(assert (= (and b!705180 res!469160) b!705181))

(assert (= (and b!705181 res!469152) b!705172))

(assert (= (and b!705172 res!469153) b!705165))

(declare-fun m!663435 () Bool)

(assert (=> b!705172 m!663435))

(declare-fun m!663437 () Bool)

(assert (=> b!705176 m!663437))

(declare-fun m!663439 () Bool)

(assert (=> b!705167 m!663439))

(declare-fun m!663441 () Bool)

(assert (=> b!705166 m!663441))

(declare-fun m!663443 () Bool)

(assert (=> b!705182 m!663443))

(declare-fun m!663445 () Bool)

(assert (=> b!705177 m!663445))

(declare-fun m!663447 () Bool)

(assert (=> b!705174 m!663447))

(declare-fun m!663449 () Bool)

(assert (=> b!705169 m!663449))

(declare-fun m!663451 () Bool)

(assert (=> b!705180 m!663451))

(assert (=> b!705180 m!663451))

(declare-fun m!663453 () Bool)

(assert (=> b!705180 m!663453))

(declare-fun m!663455 () Bool)

(assert (=> b!705179 m!663455))

(declare-fun m!663457 () Bool)

(assert (=> b!705173 m!663457))

(declare-fun m!663459 () Bool)

(assert (=> b!705171 m!663459))

(declare-fun m!663461 () Bool)

(assert (=> b!705168 m!663461))

(declare-fun m!663463 () Bool)

(assert (=> b!705165 m!663463))

(declare-fun m!663465 () Bool)

(assert (=> b!705178 m!663465))

(declare-fun m!663467 () Bool)

(assert (=> b!705175 m!663467))

(declare-fun m!663469 () Bool)

(assert (=> start!62578 m!663469))

(push 1)

(assert (not b!705182))

(assert (not b!705178))

(assert (not b!705179))

(assert (not b!705173))

(assert (not b!705177))

(assert (not b!705180))

(assert (not b!705176))

(assert (not start!62578))

(assert (not b!705166))

(assert (not b!705175))

(assert (not b!705171))

(assert (not b!705174))

(assert (not b!705165))

(assert (not b!705172))

(assert (not b!705168))

(assert (not b!705169))

(assert (not b!705167))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

