; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63388 () Bool)

(assert start!63388)

(declare-fun b!713696 () Bool)

(declare-fun res!476953 () Bool)

(declare-fun e!401220 () Bool)

(assert (=> b!713696 (=> (not res!476953) (not e!401220))))

(declare-datatypes ((List!13453 0))(
  ( (Nil!13450) (Cons!13449 (h!14494 (_ BitVec 64)) (t!19776 List!13453)) )
))
(declare-fun acc!652 () List!13453)

(declare-fun newAcc!49 () List!13453)

(declare-fun subseq!440 (List!13453 List!13453) Bool)

(assert (=> b!713696 (= res!476953 (subseq!440 acc!652 newAcc!49))))

(declare-fun b!713697 () Bool)

(declare-fun res!476948 () Bool)

(assert (=> b!713697 (=> (not res!476948) (not e!401220))))

(declare-fun contains!3996 (List!13453 (_ BitVec 64)) Bool)

(assert (=> b!713697 (= res!476948 (not (contains!3996 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713698 () Bool)

(declare-fun res!476954 () Bool)

(assert (=> b!713698 (=> (not res!476954) (not e!401220))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!713698 (= res!476954 (validKeyInArray!0 k!2824))))

(declare-fun b!713699 () Bool)

(declare-fun res!476946 () Bool)

(assert (=> b!713699 (=> (not res!476946) (not e!401220))))

(declare-datatypes ((array!40446 0))(
  ( (array!40447 (arr!19359 (Array (_ BitVec 32) (_ BitVec 64))) (size!19771 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40446)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!40446 (_ BitVec 32) List!13453) Bool)

(assert (=> b!713699 (= res!476946 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun res!476951 () Bool)

(assert (=> start!63388 (=> (not res!476951) (not e!401220))))

(assert (=> start!63388 (= res!476951 (and (bvslt (size!19771 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19771 a!3591))))))

(assert (=> start!63388 e!401220))

(assert (=> start!63388 true))

(declare-fun array_inv!15133 (array!40446) Bool)

(assert (=> start!63388 (array_inv!15133 a!3591)))

(declare-fun b!713700 () Bool)

(declare-fun res!476957 () Bool)

(assert (=> b!713700 (=> (not res!476957) (not e!401220))))

(assert (=> b!713700 (= res!476957 (not (contains!3996 acc!652 k!2824)))))

(declare-fun b!713701 () Bool)

(declare-fun res!476956 () Bool)

(assert (=> b!713701 (=> (not res!476956) (not e!401220))))

(declare-fun -!405 (List!13453 (_ BitVec 64)) List!13453)

(assert (=> b!713701 (= res!476956 (= (-!405 newAcc!49 k!2824) acc!652))))

(declare-fun b!713702 () Bool)

(declare-fun res!476955 () Bool)

(assert (=> b!713702 (=> (not res!476955) (not e!401220))))

(declare-fun noDuplicate!1243 (List!13453) Bool)

(assert (=> b!713702 (= res!476955 (noDuplicate!1243 acc!652))))

(declare-fun b!713703 () Bool)

(declare-fun res!476947 () Bool)

(assert (=> b!713703 (=> (not res!476947) (not e!401220))))

(assert (=> b!713703 (= res!476947 (contains!3996 newAcc!49 k!2824))))

(declare-fun b!713704 () Bool)

(declare-fun res!476952 () Bool)

(assert (=> b!713704 (=> (not res!476952) (not e!401220))))

(assert (=> b!713704 (= res!476952 (not (contains!3996 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713705 () Bool)

(assert (=> b!713705 (= e!401220 false)))

(declare-fun lt!318671 () Bool)

(assert (=> b!713705 (= lt!318671 (contains!3996 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!713706 () Bool)

(declare-fun res!476958 () Bool)

(assert (=> b!713706 (=> (not res!476958) (not e!401220))))

(assert (=> b!713706 (= res!476958 (not (contains!3996 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713707 () Bool)

(declare-fun res!476949 () Bool)

(assert (=> b!713707 (=> (not res!476949) (not e!401220))))

(declare-fun arrayContainsKey!0 (array!40446 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!713707 (= res!476949 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!713708 () Bool)

(declare-fun res!476950 () Bool)

(assert (=> b!713708 (=> (not res!476950) (not e!401220))))

(assert (=> b!713708 (= res!476950 (noDuplicate!1243 newAcc!49))))

(assert (= (and start!63388 res!476951) b!713702))

(assert (= (and b!713702 res!476955) b!713708))

(assert (= (and b!713708 res!476950) b!713706))

(assert (= (and b!713706 res!476958) b!713697))

(assert (= (and b!713697 res!476948) b!713707))

(assert (= (and b!713707 res!476949) b!713700))

(assert (= (and b!713700 res!476957) b!713698))

(assert (= (and b!713698 res!476954) b!713699))

(assert (= (and b!713699 res!476946) b!713696))

(assert (= (and b!713696 res!476953) b!713703))

(assert (= (and b!713703 res!476947) b!713701))

(assert (= (and b!713701 res!476956) b!713704))

(assert (= (and b!713704 res!476952) b!713705))

(declare-fun m!670461 () Bool)

(assert (=> b!713703 m!670461))

(declare-fun m!670463 () Bool)

(assert (=> start!63388 m!670463))

(declare-fun m!670465 () Bool)

(assert (=> b!713707 m!670465))

(declare-fun m!670467 () Bool)

(assert (=> b!713704 m!670467))

(declare-fun m!670469 () Bool)

(assert (=> b!713706 m!670469))

(declare-fun m!670471 () Bool)

(assert (=> b!713705 m!670471))

(declare-fun m!670473 () Bool)

(assert (=> b!713698 m!670473))

(declare-fun m!670475 () Bool)

(assert (=> b!713708 m!670475))

(declare-fun m!670477 () Bool)

(assert (=> b!713700 m!670477))

(declare-fun m!670479 () Bool)

(assert (=> b!713701 m!670479))

(declare-fun m!670481 () Bool)

(assert (=> b!713699 m!670481))

(declare-fun m!670483 () Bool)

(assert (=> b!713696 m!670483))

(declare-fun m!670485 () Bool)

(assert (=> b!713702 m!670485))

(declare-fun m!670487 () Bool)

(assert (=> b!713697 m!670487))

(push 1)

(assert (not b!713702))

(assert (not b!713701))

(assert (not start!63388))

(assert (not b!713699))

(assert (not b!713704))

(assert (not b!713698))

(assert (not b!713703))

(assert (not b!713708))

(assert (not b!713700))

(assert (not b!713705))

(assert (not b!713706))

(assert (not b!713697))

(assert (not b!713696))

(assert (not b!713707))

