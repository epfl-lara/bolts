; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113912 () Bool)

(assert start!113912)

(declare-fun b!1350382 () Bool)

(declare-fun res!895964 () Bool)

(declare-fun e!768253 () Bool)

(assert (=> b!1350382 (=> (not res!895964) (not e!768253))))

(declare-datatypes ((array!92017 0))(
  ( (array!92018 (arr!44452 (Array (_ BitVec 32) (_ BitVec 64))) (size!45003 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92017)

(declare-datatypes ((List!31673 0))(
  ( (Nil!31670) (Cons!31669 (h!32878 (_ BitVec 64)) (t!46338 List!31673)) )
))
(declare-fun arrayNoDuplicates!0 (array!92017 (_ BitVec 32) List!31673) Bool)

(assert (=> b!1350382 (= res!895964 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31670))))

(declare-fun res!895965 () Bool)

(assert (=> start!113912 (=> (not res!895965) (not e!768253))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!113912 (= res!895965 (and (bvslt (size!45003 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45003 a!3742))))))

(assert (=> start!113912 e!768253))

(declare-fun array_inv!33397 (array!92017) Bool)

(assert (=> start!113912 (array_inv!33397 a!3742)))

(assert (=> start!113912 true))

(declare-fun b!1350383 () Bool)

(declare-fun res!895961 () Bool)

(assert (=> b!1350383 (=> (not res!895961) (not e!768253))))

(declare-fun acc!759 () List!31673)

(declare-fun noDuplicate!2117 (List!31673) Bool)

(assert (=> b!1350383 (= res!895961 (noDuplicate!2117 acc!759))))

(declare-fun b!1350384 () Bool)

(assert (=> b!1350384 (= e!768253 (bvsgt from!3120 (size!45003 a!3742)))))

(declare-fun b!1350385 () Bool)

(declare-fun res!895962 () Bool)

(assert (=> b!1350385 (=> (not res!895962) (not e!768253))))

(declare-fun contains!9238 (List!31673 (_ BitVec 64)) Bool)

(assert (=> b!1350385 (= res!895962 (not (contains!9238 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350386 () Bool)

(declare-fun res!895963 () Bool)

(assert (=> b!1350386 (=> (not res!895963) (not e!768253))))

(assert (=> b!1350386 (= res!895963 (not (contains!9238 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!113912 res!895965) b!1350383))

(assert (= (and b!1350383 res!895961) b!1350386))

(assert (= (and b!1350386 res!895963) b!1350385))

(assert (= (and b!1350385 res!895962) b!1350382))

(assert (= (and b!1350382 res!895964) b!1350384))

(declare-fun m!1237657 () Bool)

(assert (=> b!1350383 m!1237657))

(declare-fun m!1237659 () Bool)

(assert (=> start!113912 m!1237659))

(declare-fun m!1237661 () Bool)

(assert (=> b!1350386 m!1237661))

(declare-fun m!1237663 () Bool)

(assert (=> b!1350385 m!1237663))

(declare-fun m!1237665 () Bool)

(assert (=> b!1350382 m!1237665))

(push 1)

(assert (not b!1350385))

(assert (not b!1350383))

(assert (not start!113912))

(assert (not b!1350386))

(assert (not b!1350382))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

