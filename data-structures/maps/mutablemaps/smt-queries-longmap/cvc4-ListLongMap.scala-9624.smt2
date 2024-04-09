; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113922 () Bool)

(assert start!113922)

(declare-fun b!1350449 () Bool)

(declare-fun res!896029 () Bool)

(declare-fun e!768283 () Bool)

(assert (=> b!1350449 (=> (not res!896029) (not e!768283))))

(declare-datatypes ((List!31678 0))(
  ( (Nil!31675) (Cons!31674 (h!32883 (_ BitVec 64)) (t!46343 List!31678)) )
))
(declare-fun acc!759 () List!31678)

(declare-fun noDuplicate!2122 (List!31678) Bool)

(assert (=> b!1350449 (= res!896029 (noDuplicate!2122 acc!759))))

(declare-fun b!1350452 () Bool)

(assert (=> b!1350452 (= e!768283 false)))

(declare-fun lt!596924 () Bool)

(declare-datatypes ((array!92027 0))(
  ( (array!92028 (arr!44457 (Array (_ BitVec 32) (_ BitVec 64))) (size!45008 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92027)

(declare-fun arrayNoDuplicates!0 (array!92027 (_ BitVec 32) List!31678) Bool)

(assert (=> b!1350452 (= lt!596924 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31675))))

(declare-fun b!1350450 () Bool)

(declare-fun res!896028 () Bool)

(assert (=> b!1350450 (=> (not res!896028) (not e!768283))))

(declare-fun contains!9243 (List!31678 (_ BitVec 64)) Bool)

(assert (=> b!1350450 (= res!896028 (not (contains!9243 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350451 () Bool)

(declare-fun res!896031 () Bool)

(assert (=> b!1350451 (=> (not res!896031) (not e!768283))))

(assert (=> b!1350451 (= res!896031 (not (contains!9243 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!896030 () Bool)

(assert (=> start!113922 (=> (not res!896030) (not e!768283))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!113922 (= res!896030 (and (bvslt (size!45008 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45008 a!3742))))))

(assert (=> start!113922 e!768283))

(declare-fun array_inv!33402 (array!92027) Bool)

(assert (=> start!113922 (array_inv!33402 a!3742)))

(assert (=> start!113922 true))

(assert (= (and start!113922 res!896030) b!1350449))

(assert (= (and b!1350449 res!896029) b!1350450))

(assert (= (and b!1350450 res!896028) b!1350451))

(assert (= (and b!1350451 res!896031) b!1350452))

(declare-fun m!1237707 () Bool)

(assert (=> start!113922 m!1237707))

(declare-fun m!1237709 () Bool)

(assert (=> b!1350451 m!1237709))

(declare-fun m!1237711 () Bool)

(assert (=> b!1350452 m!1237711))

(declare-fun m!1237713 () Bool)

(assert (=> b!1350450 m!1237713))

(declare-fun m!1237715 () Bool)

(assert (=> b!1350449 m!1237715))

(push 1)

(assert (not start!113922))

(assert (not b!1350450))

(assert (not b!1350449))

(assert (not b!1350452))

(assert (not b!1350451))

(check-sat)

