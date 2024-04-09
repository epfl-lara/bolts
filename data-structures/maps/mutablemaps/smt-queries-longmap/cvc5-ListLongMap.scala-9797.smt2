; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116384 () Bool)

(assert start!116384)

(declare-fun b!1373151 () Bool)

(declare-fun res!916522 () Bool)

(declare-fun e!777897 () Bool)

(assert (=> b!1373151 (=> (not res!916522) (not e!777897))))

(declare-datatypes ((List!32195 0))(
  ( (Nil!32192) (Cons!32191 (h!33400 (_ BitVec 64)) (t!46896 List!32195)) )
))
(declare-fun acc!866 () List!32195)

(declare-fun contains!9733 (List!32195 (_ BitVec 64)) Bool)

(assert (=> b!1373151 (= res!916522 (not (contains!9733 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1373152 () Bool)

(declare-fun res!916523 () Bool)

(assert (=> b!1373152 (=> (not res!916523) (not e!777897))))

(declare-fun newAcc!98 () List!32195)

(assert (=> b!1373152 (= res!916523 (not (contains!9733 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1373153 () Bool)

(declare-fun res!916526 () Bool)

(declare-fun e!777896 () Bool)

(assert (=> b!1373153 (=> (not res!916526) (not e!777896))))

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((array!93085 0))(
  ( (array!93086 (arr!44947 (Array (_ BitVec 32) (_ BitVec 64))) (size!45498 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93085)

(assert (=> b!1373153 (= res!916526 (bvslt from!3239 (size!45498 a!3861)))))

(declare-fun b!1373154 () Bool)

(declare-fun res!916525 () Bool)

(assert (=> b!1373154 (=> (not res!916525) (not e!777897))))

(assert (=> b!1373154 (= res!916525 (not (contains!9733 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!916524 () Bool)

(assert (=> start!116384 (=> (not res!916524) (not e!777897))))

(assert (=> start!116384 (= res!916524 (and (bvslt (size!45498 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45498 a!3861))))))

(assert (=> start!116384 e!777897))

(declare-fun array_inv!33892 (array!93085) Bool)

(assert (=> start!116384 (array_inv!33892 a!3861)))

(assert (=> start!116384 true))

(declare-fun b!1373155 () Bool)

(declare-fun res!916527 () Bool)

(assert (=> b!1373155 (=> (not res!916527) (not e!777897))))

(declare-fun subseq!1124 (List!32195 List!32195) Bool)

(assert (=> b!1373155 (= res!916527 (subseq!1124 newAcc!98 acc!866))))

(declare-fun b!1373156 () Bool)

(declare-fun res!916518 () Bool)

(assert (=> b!1373156 (=> (not res!916518) (not e!777897))))

(assert (=> b!1373156 (= res!916518 (not (contains!9733 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1373157 () Bool)

(declare-fun res!916516 () Bool)

(assert (=> b!1373157 (=> (not res!916516) (not e!777896))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1373157 (= res!916516 (not (validKeyInArray!0 (select (arr!44947 a!3861) from!3239))))))

(declare-fun b!1373158 () Bool)

(declare-fun res!916519 () Bool)

(assert (=> b!1373158 (=> (not res!916519) (not e!777896))))

(declare-fun arrayNoDuplicates!0 (array!93085 (_ BitVec 32) List!32195) Bool)

(assert (=> b!1373158 (= res!916519 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1373159 () Bool)

(assert (=> b!1373159 (= e!777896 (bvsge (bvsub (size!45498 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) (bvsub (size!45498 a!3861) from!3239)))))

(declare-fun b!1373160 () Bool)

(declare-fun res!916520 () Bool)

(assert (=> b!1373160 (=> (not res!916520) (not e!777897))))

(declare-fun noDuplicate!2612 (List!32195) Bool)

(assert (=> b!1373160 (= res!916520 (noDuplicate!2612 acc!866))))

(declare-fun b!1373161 () Bool)

(assert (=> b!1373161 (= e!777897 e!777896)))

(declare-fun res!916517 () Bool)

(assert (=> b!1373161 (=> (not res!916517) (not e!777896))))

(assert (=> b!1373161 (= res!916517 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45329 0))(
  ( (Unit!45330) )
))
(declare-fun lt!602960 () Unit!45329)

(declare-fun noDuplicateSubseq!311 (List!32195 List!32195) Unit!45329)

(assert (=> b!1373161 (= lt!602960 (noDuplicateSubseq!311 newAcc!98 acc!866))))

(declare-fun b!1373162 () Bool)

(declare-fun res!916521 () Bool)

(assert (=> b!1373162 (=> (not res!916521) (not e!777896))))

(assert (=> b!1373162 (= res!916521 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(assert (= (and start!116384 res!916524) b!1373160))

(assert (= (and b!1373160 res!916520) b!1373151))

(assert (= (and b!1373151 res!916522) b!1373154))

(assert (= (and b!1373154 res!916525) b!1373156))

(assert (= (and b!1373156 res!916518) b!1373152))

(assert (= (and b!1373152 res!916523) b!1373155))

(assert (= (and b!1373155 res!916527) b!1373161))

(assert (= (and b!1373161 res!916517) b!1373153))

(assert (= (and b!1373153 res!916526) b!1373157))

(assert (= (and b!1373157 res!916516) b!1373162))

(assert (= (and b!1373162 res!916521) b!1373158))

(assert (= (and b!1373158 res!916519) b!1373159))

(declare-fun m!1256485 () Bool)

(assert (=> b!1373154 m!1256485))

(declare-fun m!1256487 () Bool)

(assert (=> b!1373157 m!1256487))

(assert (=> b!1373157 m!1256487))

(declare-fun m!1256489 () Bool)

(assert (=> b!1373157 m!1256489))

(declare-fun m!1256491 () Bool)

(assert (=> b!1373156 m!1256491))

(declare-fun m!1256493 () Bool)

(assert (=> b!1373161 m!1256493))

(declare-fun m!1256495 () Bool)

(assert (=> b!1373161 m!1256495))

(declare-fun m!1256497 () Bool)

(assert (=> b!1373151 m!1256497))

(declare-fun m!1256499 () Bool)

(assert (=> b!1373158 m!1256499))

(declare-fun m!1256501 () Bool)

(assert (=> b!1373152 m!1256501))

(declare-fun m!1256503 () Bool)

(assert (=> b!1373155 m!1256503))

(declare-fun m!1256505 () Bool)

(assert (=> start!116384 m!1256505))

(declare-fun m!1256507 () Bool)

(assert (=> b!1373160 m!1256507))

(push 1)

(assert (not b!1373152))

(assert (not b!1373160))

(assert (not b!1373156))

(assert (not start!116384))

(assert (not b!1373161))

(assert (not b!1373158))

(assert (not b!1373151))

(assert (not b!1373157))

(assert (not b!1373155))

(assert (not b!1373154))

(check-sat)

(pop 1)

(push 1)

(check-sat)

