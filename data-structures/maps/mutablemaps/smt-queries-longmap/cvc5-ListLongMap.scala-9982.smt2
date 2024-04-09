; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117940 () Bool)

(assert start!117940)

(declare-fun res!923128 () Bool)

(declare-fun e!783088 () Bool)

(assert (=> start!117940 (=> (not res!923128) (not e!783088))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117940 (= res!923128 (validMask!0 mask!3034))))

(assert (=> start!117940 e!783088))

(assert (=> start!117940 true))

(declare-datatypes ((array!94247 0))(
  ( (array!94248 (arr!45502 (Array (_ BitVec 32) (_ BitVec 64))) (size!46053 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94247)

(declare-fun array_inv!34447 (array!94247) Bool)

(assert (=> start!117940 (array_inv!34447 a!2971)))

(declare-fun b!1381391 () Bool)

(declare-fun res!923130 () Bool)

(assert (=> b!1381391 (=> (not res!923130) (not e!783088))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381391 (= res!923130 (and (= (size!46053 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46053 a!2971))))))

(declare-fun b!1381392 () Bool)

(declare-fun res!923129 () Bool)

(assert (=> b!1381392 (=> (not res!923129) (not e!783088))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381392 (= res!923129 (validKeyInArray!0 (select (arr!45502 a!2971) i!1094)))))

(declare-fun b!1381393 () Bool)

(assert (=> b!1381393 (= e!783088 false)))

(declare-fun lt!608155 () Bool)

(declare-datatypes ((List!32216 0))(
  ( (Nil!32213) (Cons!32212 (h!33421 (_ BitVec 64)) (t!46917 List!32216)) )
))
(declare-fun arrayNoDuplicates!0 (array!94247 (_ BitVec 32) List!32216) Bool)

(assert (=> b!1381393 (= lt!608155 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32213))))

(assert (= (and start!117940 res!923128) b!1381391))

(assert (= (and b!1381391 res!923130) b!1381392))

(assert (= (and b!1381392 res!923129) b!1381393))

(declare-fun m!1266639 () Bool)

(assert (=> start!117940 m!1266639))

(declare-fun m!1266641 () Bool)

(assert (=> start!117940 m!1266641))

(declare-fun m!1266643 () Bool)

(assert (=> b!1381392 m!1266643))

(assert (=> b!1381392 m!1266643))

(declare-fun m!1266645 () Bool)

(assert (=> b!1381392 m!1266645))

(declare-fun m!1266647 () Bool)

(assert (=> b!1381393 m!1266647))

(push 1)

(assert (not b!1381393))

(assert (not start!117940))

(assert (not b!1381392))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

