; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7072 () Bool)

(assert start!7072)

(declare-fun res!26653 () Bool)

(declare-fun e!28936 () Bool)

(assert (=> start!7072 (=> (not res!26653) (not e!28936))))

(declare-datatypes ((array!3043 0))(
  ( (array!3044 (arr!1462 (Array (_ BitVec 32) (_ BitVec 64))) (size!1684 (_ BitVec 32))) )
))
(declare-fun a!4401 () array!3043)

(declare-fun i!1488 () (_ BitVec 32))

(declare-fun k!2989 () (_ BitVec 64))

(assert (=> start!7072 (= res!26653 (and (bvslt (size!1684 a!4401) #b01111111111111111111111111111111) (bvsge i!1488 #b00000000000000000000000000000000) (bvslt i!1488 (size!1684 a!4401)) (= (select (arr!1462 a!4401) i!1488) k!2989)))))

(assert (=> start!7072 e!28936))

(declare-fun array_inv!826 (array!3043) Bool)

(assert (=> start!7072 (array_inv!826 a!4401)))

(assert (=> start!7072 true))

(declare-fun b!45490 () Bool)

(declare-fun arrayContainsKey!0 (array!3043 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!45490 (= e!28936 (not (arrayContainsKey!0 a!4401 k!2989 i!1488)))))

(assert (= (and start!7072 res!26653) b!45490))

(declare-fun m!40055 () Bool)

(assert (=> start!7072 m!40055))

(declare-fun m!40057 () Bool)

(assert (=> start!7072 m!40057))

(declare-fun m!40059 () Bool)

(assert (=> b!45490 m!40059))

(push 1)

(assert (not b!45490))

(assert (not start!7072))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8891 () Bool)

(declare-fun res!26670 () Bool)

(declare-fun e!28960 () Bool)

(assert (=> d!8891 (=> res!26670 e!28960)))

(assert (=> d!8891 (= res!26670 (= (select (arr!1462 a!4401) i!1488) k!2989))))

(assert (=> d!8891 (= (arrayContainsKey!0