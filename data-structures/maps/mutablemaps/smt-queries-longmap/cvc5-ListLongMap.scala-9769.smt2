; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115772 () Bool)

(assert start!115772)

(declare-fun b!1368585 () Bool)

(declare-fun res!912223 () Bool)

(declare-fun e!775371 () Bool)

(assert (=> b!1368585 (=> (not res!912223) (not e!775371))))

(declare-datatypes ((List!32111 0))(
  ( (Nil!32108) (Cons!32107 (h!33316 (_ BitVec 64)) (t!46812 List!32111)) )
))
(declare-fun acc!866 () List!32111)

(declare-fun noDuplicate!2528 (List!32111) Bool)

(assert (=> b!1368585 (= res!912223 (noDuplicate!2528 acc!866))))

(declare-fun b!1368586 () Bool)

(declare-fun res!912219 () Bool)

(assert (=> b!1368586 (=> (not res!912219) (not e!775371))))

(declare-fun newAcc!98 () List!32111)

(declare-fun subseq!1040 (List!32111 List!32111) Bool)

(assert (=> b!1368586 (= res!912219 (subseq!1040 newAcc!98 acc!866))))

(declare-fun b!1368587 () Bool)

(declare-fun e!775372 () Bool)

(assert (=> b!1368587 (= e!775372 (not true))))

(declare-datatypes ((array!92887 0))(
  ( (array!92888 (arr!44863 (Array (_ BitVec 32) (_ BitVec 64))) (size!45414 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92887)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92887 (_ BitVec 32) List!32111) Bool)

(assert (=> b!1368587 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) newAcc!98)))

(declare-datatypes ((Unit!45161 0))(
  ( (Unit!45162) )
))
(declare-fun lt!602042 () Unit!45161)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92887 List!32111 List!32111 (_ BitVec 32)) Unit!45161)

(assert (=> b!1368587 (= lt!602042 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 acc!866 newAcc!98 (bvadd #b00000000000000000000000000000001 from!3239)))))

(declare-fun b!1368588 () Bool)

(declare-fun res!912221 () Bool)

(assert (=> b!1368588 (=> (not res!912221) (not e!775371))))

(declare-fun contains!9649 (List!32111 (_ BitVec 64)) Bool)

(assert (=> b!1368588 (= res!912221 (not (contains!9649 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368589 () Bool)

(declare-fun res!912225 () Bool)

(assert (=> b!1368589 (=> (not res!912225) (not e!775372))))

(assert (=> b!1368589 (= res!912225 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1368590 () Bool)

(assert (=> b!1368590 (= e!775371 e!775372)))

(declare-fun res!912216 () Bool)

(assert (=> b!1368590 (=> (not res!912216) (not e!775372))))

(assert (=> b!1368590 (= res!912216 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-fun lt!602041 () Unit!45161)

(declare-fun noDuplicateSubseq!227 (List!32111 List!32111) Unit!45161)

(assert (=> b!1368590 (= lt!602041 (noDuplicateSubseq!227 newAcc!98 acc!866))))

(declare-fun b!1368591 () Bool)

(declare-fun res!912224 () Bool)

(assert (=> b!1368591 (=> (not res!912224) (not e!775371))))

(assert (=> b!1368591 (= res!912224 (not (contains!9649 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368592 () Bool)

(declare-fun res!912215 () Bool)

(assert (=> b!1368592 (=> (not res!912215) (not e!775372))))

(assert (=> b!1368592 (= res!912215 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun res!912218 () Bool)

(assert (=> start!115772 (=> (not res!912218) (not e!775371))))

(assert (=> start!115772 (= res!912218 (and (bvslt (size!45414 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45414 a!3861))))))

(assert (=> start!115772 e!775371))

(declare-fun array_inv!33808 (array!92887) Bool)

(assert (=> start!115772 (array_inv!33808 a!3861)))

(assert (=> start!115772 true))

(declare-fun b!1368593 () Bool)

(declare-fun res!912220 () Bool)

(assert (=> b!1368593 (=> (not res!912220) (not e!775371))))

(assert (=> b!1368593 (= res!912220 (not (contains!9649 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368594 () Bool)

(declare-fun res!912222 () Bool)

(assert (=> b!1368594 (=> (not res!912222) (not e!775372))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1368594 (= res!912222 (not (validKeyInArray!0 (select (arr!44863 a!3861) from!3239))))))

(declare-fun b!1368595 () Bool)

(declare-fun res!912214 () Bool)

(assert (=> b!1368595 (=> (not res!912214) (not e!775371))))

(assert (=> b!1368595 (= res!912214 (not (contains!9649 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368596 () Bool)

(declare-fun res!912217 () Bool)

(assert (=> b!1368596 (=> (not res!912217) (not e!775372))))

(assert (=> b!1368596 (= res!912217 (bvslt from!3239 (size!45414 a!3861)))))

(assert (= (and start!115772 res!912218) b!1368585))

(assert (= (and b!1368585 res!912223) b!1368593))

(assert (= (and b!1368593 res!912220) b!1368591))

(assert (= (and b!1368591 res!912224) b!1368595))

(assert (= (and b!1368595 res!912214) b!1368588))

(assert (= (and b!1368588 res!912221) b!1368586))

(assert (= (and b!1368586 res!912219) b!1368590))

(assert (= (and b!1368590 res!912216) b!1368596))

(assert (= (and b!1368596 res!912217) b!1368594))

(assert (= (and b!1368594 res!912222) b!1368592))

(assert (= (and b!1368592 res!912215) b!1368589))

(assert (= (and b!1368589 res!912225) b!1368587))

(declare-fun m!1252531 () Bool)

(assert (=> b!1368589 m!1252531))

(declare-fun m!1252533 () Bool)

(assert (=> b!1368590 m!1252533))

(declare-fun m!1252535 () Bool)

(assert (=> b!1368590 m!1252535))

(declare-fun m!1252537 () Bool)

(assert (=> b!1368588 m!1252537))

(declare-fun m!1252539 () Bool)

(assert (=> b!1368586 m!1252539))

(declare-fun m!1252541 () Bool)

(assert (=> b!1368595 m!1252541))

(declare-fun m!1252543 () Bool)

(assert (=> b!1368593 m!1252543))

(declare-fun m!1252545 () Bool)

(assert (=> start!115772 m!1252545))

(declare-fun m!1252547 () Bool)

(assert (=> b!1368591 m!1252547))

(declare-fun m!1252549 () Bool)

(assert (=> b!1368587 m!1252549))

(declare-fun m!1252551 () Bool)

(assert (=> b!1368587 m!1252551))

(declare-fun m!1252553 () Bool)

(assert (=> b!1368585 m!1252553))

(declare-fun m!1252555 () Bool)

(assert (=> b!1368594 m!1252555))

(assert (=> b!1368594 m!1252555))

(declare-fun m!1252557 () Bool)

(assert (=> b!1368594 m!1252557))

(push 1)

