; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114258 () Bool)

(assert start!114258)

(declare-fun b!1356797 () Bool)

(declare-fun res!901682 () Bool)

(declare-fun e!770181 () Bool)

(assert (=> b!1356797 (=> (not res!901682) (not e!770181))))

(declare-datatypes ((array!92363 0))(
  ( (array!92364 (arr!44625 (Array (_ BitVec 32) (_ BitVec 64))) (size!45176 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92363)

(declare-datatypes ((List!31846 0))(
  ( (Nil!31843) (Cons!31842 (h!33051 (_ BitVec 64)) (t!46511 List!31846)) )
))
(declare-fun arrayNoDuplicates!0 (array!92363 (_ BitVec 32) List!31846) Bool)

(assert (=> b!1356797 (= res!901682 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31843))))

(declare-fun b!1356798 () Bool)

(assert (=> b!1356798 (= e!770181 (not true))))

(declare-fun acc!759 () List!31846)

(declare-fun subseq!802 (List!31846 List!31846) Bool)

(assert (=> b!1356798 (subseq!802 acc!759 acc!759)))

(declare-datatypes ((Unit!44583 0))(
  ( (Unit!44584) )
))
(declare-fun lt!599030 () Unit!44583)

(declare-fun lemmaListSubSeqRefl!0 (List!31846) Unit!44583)

(assert (=> b!1356798 (= lt!599030 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1356799 () Bool)

(declare-fun res!901676 () Bool)

(assert (=> b!1356799 (=> (not res!901676) (not e!770181))))

(declare-fun contains!9411 (List!31846 (_ BitVec 64)) Bool)

(assert (=> b!1356799 (= res!901676 (not (contains!9411 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356800 () Bool)

(declare-fun res!901679 () Bool)

(assert (=> b!1356800 (=> (not res!901679) (not e!770181))))

(assert (=> b!1356800 (= res!901679 (not (contains!9411 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356801 () Bool)

(declare-fun res!901677 () Bool)

(assert (=> b!1356801 (=> (not res!901677) (not e!770181))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1356801 (= res!901677 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45176 a!3742)))))

(declare-fun b!1356802 () Bool)

(declare-fun res!901680 () Bool)

(assert (=> b!1356802 (=> (not res!901680) (not e!770181))))

(assert (=> b!1356802 (= res!901680 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1356803 () Bool)

(declare-fun res!901678 () Bool)

(assert (=> b!1356803 (=> (not res!901678) (not e!770181))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1356803 (= res!901678 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45176 a!3742))))))

(declare-fun b!1356804 () Bool)

(declare-fun res!901675 () Bool)

(assert (=> b!1356804 (=> (not res!901675) (not e!770181))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1356804 (= res!901675 (not (validKeyInArray!0 l!3587)))))

(declare-fun res!901674 () Bool)

(assert (=> start!114258 (=> (not res!901674) (not e!770181))))

(assert (=> start!114258 (= res!901674 (and (bvslt (size!45176 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45176 a!3742))))))

(assert (=> start!114258 e!770181))

(assert (=> start!114258 true))

(declare-fun array_inv!33570 (array!92363) Bool)

(assert (=> start!114258 (array_inv!33570 a!3742)))

(declare-fun b!1356805 () Bool)

(declare-fun res!901681 () Bool)

(assert (=> b!1356805 (=> (not res!901681) (not e!770181))))

(assert (=> b!1356805 (= res!901681 (validKeyInArray!0 (select (arr!44625 a!3742) from!3120)))))

(declare-fun b!1356806 () Bool)

(declare-fun res!901683 () Bool)

(assert (=> b!1356806 (=> (not res!901683) (not e!770181))))

(declare-fun noDuplicate!2290 (List!31846) Bool)

(assert (=> b!1356806 (= res!901683 (noDuplicate!2290 acc!759))))

(assert (= (and start!114258 res!901674) b!1356806))

(assert (= (and b!1356806 res!901683) b!1356800))

(assert (= (and b!1356800 res!901679) b!1356799))

(assert (= (and b!1356799 res!901676) b!1356797))

(assert (= (and b!1356797 res!901682) b!1356802))

(assert (= (and b!1356802 res!901680) b!1356803))

(assert (= (and b!1356803 res!901678) b!1356804))

(assert (= (and b!1356804 res!901675) b!1356801))

(assert (= (and b!1356801 res!901677) b!1356805))

(assert (= (and b!1356805 res!901681) b!1356798))

(declare-fun m!1242717 () Bool)

(assert (=> b!1356797 m!1242717))

(declare-fun m!1242719 () Bool)

(assert (=> b!1356798 m!1242719))

(declare-fun m!1242721 () Bool)

(assert (=> b!1356798 m!1242721))

(declare-fun m!1242723 () Bool)

(assert (=> start!114258 m!1242723))

(declare-fun m!1242725 () Bool)

(assert (=> b!1356806 m!1242725))

(declare-fun m!1242727 () Bool)

(assert (=> b!1356804 m!1242727))

(declare-fun m!1242729 () Bool)

(assert (=> b!1356800 m!1242729))

(declare-fun m!1242731 () Bool)

(assert (=> b!1356802 m!1242731))

(declare-fun m!1242733 () Bool)

(assert (=> b!1356799 m!1242733))

(declare-fun m!1242735 () Bool)

(assert (=> b!1356805 m!1242735))

(assert (=> b!1356805 m!1242735))

(declare-fun m!1242737 () Bool)

(assert (=> b!1356805 m!1242737))

(push 1)

(assert (not b!1356802))

(assert (not start!114258))

(assert (not b!1356797))

(assert (not b!1356804))

(assert (not b!1356800))

(assert (not b!1356798))

(assert (not b!1356799))

(assert (not b!1356805))

(assert (not b!1356806))

