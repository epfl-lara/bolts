; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103940 () Bool)

(assert start!103940)

(declare-fun b!1243583 () Bool)

(declare-fun res!829494 () Bool)

(declare-fun e!704974 () Bool)

(assert (=> b!1243583 (=> (not res!829494) (not e!704974))))

(declare-datatypes ((array!79978 0))(
  ( (array!79979 (arr!38578 (Array (_ BitVec 32) (_ BitVec 64))) (size!39115 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79978)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> b!1243583 (= res!829494 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39115 a!3892)) (not (= newFrom!287 (size!39115 a!3892)))))))

(declare-fun b!1243584 () Bool)

(declare-fun res!829493 () Bool)

(assert (=> b!1243584 (=> (not res!829493) (not e!704974))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1243584 (= res!829493 (validKeyInArray!0 (select (arr!38578 a!3892) from!3270)))))

(declare-fun res!829487 () Bool)

(assert (=> start!103940 (=> (not res!829487) (not e!704974))))

(assert (=> start!103940 (= res!829487 (and (bvslt (size!39115 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39115 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39115 a!3892))))))

(assert (=> start!103940 e!704974))

(declare-fun array_inv!29354 (array!79978) Bool)

(assert (=> start!103940 (array_inv!29354 a!3892)))

(assert (=> start!103940 true))

(declare-fun b!1243585 () Bool)

(declare-fun res!829491 () Bool)

(declare-fun e!704973 () Bool)

(assert (=> b!1243585 (=> (not res!829491) (not e!704973))))

(declare-datatypes ((List!27559 0))(
  ( (Nil!27556) (Cons!27555 (h!28764 (_ BitVec 64)) (t!41035 List!27559)) )
))
(declare-fun contains!7431 (List!27559 (_ BitVec 64)) Bool)

(assert (=> b!1243585 (= res!829491 (not (contains!7431 Nil!27556 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243586 () Bool)

(declare-fun res!829485 () Bool)

(assert (=> b!1243586 (=> (not res!829485) (not e!704973))))

(declare-fun lt!562393 () List!27559)

(assert (=> b!1243586 (= res!829485 (not (contains!7431 lt!562393 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243587 () Bool)

(assert (=> b!1243587 (= e!704974 e!704973)))

(declare-fun res!829490 () Bool)

(assert (=> b!1243587 (=> (not res!829490) (not e!704973))))

(assert (=> b!1243587 (= res!829490 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1243587 (= lt!562393 (Cons!27555 (select (arr!38578 a!3892) from!3270) Nil!27556))))

(declare-fun b!1243588 () Bool)

(declare-fun res!829488 () Bool)

(assert (=> b!1243588 (=> (not res!829488) (not e!704974))))

(declare-fun arrayNoDuplicates!0 (array!79978 (_ BitVec 32) List!27559) Bool)

(assert (=> b!1243588 (= res!829488 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27556))))

(declare-fun b!1243589 () Bool)

(declare-fun res!829495 () Bool)

(assert (=> b!1243589 (=> (not res!829495) (not e!704973))))

(assert (=> b!1243589 (= res!829495 (not (contains!7431 Nil!27556 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243590 () Bool)

(declare-fun res!829486 () Bool)

(assert (=> b!1243590 (=> (not res!829486) (not e!704973))))

(declare-fun subseq!642 (List!27559 List!27559) Bool)

(assert (=> b!1243590 (= res!829486 (subseq!642 Nil!27556 lt!562393))))

(declare-fun b!1243591 () Bool)

(declare-fun res!829492 () Bool)

(assert (=> b!1243591 (=> (not res!829492) (not e!704973))))

(assert (=> b!1243591 (= res!829492 (not (contains!7431 lt!562393 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243592 () Bool)

(declare-fun res!829489 () Bool)

(assert (=> b!1243592 (=> (not res!829489) (not e!704973))))

(declare-fun noDuplicate!2021 (List!27559) Bool)

(assert (=> b!1243592 (= res!829489 (noDuplicate!2021 lt!562393))))

(declare-fun b!1243593 () Bool)

(assert (=> b!1243593 (= e!704973 false)))

(declare-fun lt!562391 () Bool)

(assert (=> b!1243593 (= lt!562391 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562393))))

(declare-datatypes ((Unit!41235 0))(
  ( (Unit!41236) )
))
(declare-fun lt!562392 () Unit!41235)

(declare-fun noDuplicateSubseq!96 (List!27559 List!27559) Unit!41235)

(assert (=> b!1243593 (= lt!562392 (noDuplicateSubseq!96 Nil!27556 lt!562393))))

(assert (= (and start!103940 res!829487) b!1243588))

(assert (= (and b!1243588 res!829488) b!1243583))

(assert (= (and b!1243583 res!829494) b!1243584))

(assert (= (and b!1243584 res!829493) b!1243587))

(assert (= (and b!1243587 res!829490) b!1243592))

(assert (= (and b!1243592 res!829489) b!1243586))

(assert (= (and b!1243586 res!829485) b!1243591))

(assert (= (and b!1243591 res!829492) b!1243589))

(assert (= (and b!1243589 res!829495) b!1243585))

(assert (= (and b!1243585 res!829491) b!1243590))

(assert (= (and b!1243590 res!829486) b!1243593))

(declare-fun m!1146105 () Bool)

(assert (=> b!1243591 m!1146105))

(declare-fun m!1146107 () Bool)

(assert (=> b!1243589 m!1146107))

(declare-fun m!1146109 () Bool)

(assert (=> b!1243588 m!1146109))

(declare-fun m!1146111 () Bool)

(assert (=> b!1243593 m!1146111))

(declare-fun m!1146113 () Bool)

(assert (=> b!1243593 m!1146113))

(declare-fun m!1146115 () Bool)

(assert (=> b!1243587 m!1146115))

(declare-fun m!1146117 () Bool)

(assert (=> start!103940 m!1146117))

(declare-fun m!1146119 () Bool)

(assert (=> b!1243592 m!1146119))

(assert (=> b!1243584 m!1146115))

(assert (=> b!1243584 m!1146115))

(declare-fun m!1146121 () Bool)

(assert (=> b!1243584 m!1146121))

(declare-fun m!1146123 () Bool)

(assert (=> b!1243585 m!1146123))

(declare-fun m!1146125 () Bool)

(assert (=> b!1243586 m!1146125))

(declare-fun m!1146127 () Bool)

(assert (=> b!1243590 m!1146127))

(check-sat (not b!1243584) (not b!1243588) (not b!1243586) (not b!1243592) (not b!1243589) (not start!103940) (not b!1243593) (not b!1243585) (not b!1243590) (not b!1243591))
(check-sat)
