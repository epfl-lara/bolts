; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102784 () Bool)

(assert start!102784)

(declare-fun b!1234465 () Bool)

(declare-fun res!822747 () Bool)

(declare-fun e!700209 () Bool)

(assert (=> b!1234465 (=> res!822747 e!700209)))

(declare-datatypes ((List!27340 0))(
  ( (Nil!27337) (Cons!27336 (h!28545 (_ BitVec 64)) (t!40810 List!27340)) )
))
(declare-fun lt!559836 () List!27340)

(declare-fun contains!7255 (List!27340 (_ BitVec 64)) Bool)

(assert (=> b!1234465 (= res!822747 (contains!7255 lt!559836 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234466 () Bool)

(declare-fun res!822742 () Bool)

(declare-fun e!700208 () Bool)

(assert (=> b!1234466 (=> (not res!822742) (not e!700208))))

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79570 0))(
  ( (array!79571 (arr!38389 (Array (_ BitVec 32) (_ BitVec 64))) (size!38926 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79570)

(assert (=> b!1234466 (= res!822742 (not (= from!3213 (bvsub (size!38926 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1234467 () Bool)

(declare-fun res!822748 () Bool)

(assert (=> b!1234467 (=> (not res!822748) (not e!700208))))

(declare-fun acc!846 () List!27340)

(declare-fun arrayNoDuplicates!0 (array!79570 (_ BitVec 32) List!27340) Bool)

(assert (=> b!1234467 (= res!822748 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1234468 () Bool)

(assert (=> b!1234468 (= e!700208 (not e!700209))))

(declare-fun res!822749 () Bool)

(assert (=> b!1234468 (=> res!822749 e!700209)))

(assert (=> b!1234468 (= res!822749 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!510 (List!27340 List!27340) Bool)

(assert (=> b!1234468 (subseq!510 acc!846 lt!559836)))

(declare-datatypes ((Unit!40822 0))(
  ( (Unit!40823) )
))
(declare-fun lt!559833 () Unit!40822)

(declare-fun subseqTail!3 (List!27340 List!27340) Unit!40822)

(assert (=> b!1234468 (= lt!559833 (subseqTail!3 lt!559836 lt!559836))))

(assert (=> b!1234468 (subseq!510 lt!559836 lt!559836)))

(declare-fun lt!559835 () Unit!40822)

(declare-fun lemmaListSubSeqRefl!0 (List!27340) Unit!40822)

(assert (=> b!1234468 (= lt!559835 (lemmaListSubSeqRefl!0 lt!559836))))

(assert (=> b!1234468 (= lt!559836 (Cons!27336 (select (arr!38389 a!3835) from!3213) acc!846))))

(declare-fun b!1234469 () Bool)

(declare-fun res!822739 () Bool)

(assert (=> b!1234469 (=> res!822739 e!700209)))

(assert (=> b!1234469 (= res!822739 (contains!7255 lt!559836 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234470 () Bool)

(declare-fun res!822741 () Bool)

(assert (=> b!1234470 (=> (not res!822741) (not e!700208))))

(assert (=> b!1234470 (= res!822741 (not (contains!7255 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234471 () Bool)

(declare-fun res!822740 () Bool)

(assert (=> b!1234471 (=> (not res!822740) (not e!700208))))

(assert (=> b!1234471 (= res!822740 (not (contains!7255 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!822743 () Bool)

(assert (=> start!102784 (=> (not res!822743) (not e!700208))))

(assert (=> start!102784 (= res!822743 (and (bvslt (size!38926 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38926 a!3835))))))

(assert (=> start!102784 e!700208))

(declare-fun array_inv!29165 (array!79570) Bool)

(assert (=> start!102784 (array_inv!29165 a!3835)))

(assert (=> start!102784 true))

(declare-fun b!1234472 () Bool)

(declare-fun res!822745 () Bool)

(assert (=> b!1234472 (=> (not res!822745) (not e!700208))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1234472 (= res!822745 (validKeyInArray!0 (select (arr!38389 a!3835) from!3213)))))

(declare-fun b!1234473 () Bool)

(declare-fun res!822746 () Bool)

(assert (=> b!1234473 (=> (not res!822746) (not e!700208))))

(declare-fun noDuplicate!1862 (List!27340) Bool)

(assert (=> b!1234473 (= res!822746 (noDuplicate!1862 acc!846))))

(declare-fun b!1234474 () Bool)

(declare-fun res!822738 () Bool)

(assert (=> b!1234474 (=> (not res!822738) (not e!700208))))

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1234474 (= res!822738 (contains!7255 acc!846 k0!2925))))

(declare-fun b!1234475 () Bool)

(declare-fun res!822744 () Bool)

(assert (=> b!1234475 (=> res!822744 e!700209)))

(assert (=> b!1234475 (= res!822744 (not (noDuplicate!1862 lt!559836)))))

(declare-fun b!1234476 () Bool)

(assert (=> b!1234476 (= e!700209 true)))

(declare-fun lt!559837 () Bool)

(assert (=> b!1234476 (= lt!559837 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!559836))))

(declare-fun lt!559834 () Unit!40822)

(declare-fun noDuplicateSubseq!57 (List!27340 List!27340) Unit!40822)

(assert (=> b!1234476 (= lt!559834 (noDuplicateSubseq!57 acc!846 lt!559836))))

(assert (= (and start!102784 res!822743) b!1234473))

(assert (= (and b!1234473 res!822746) b!1234471))

(assert (= (and b!1234471 res!822740) b!1234470))

(assert (= (and b!1234470 res!822741) b!1234467))

(assert (= (and b!1234467 res!822748) b!1234474))

(assert (= (and b!1234474 res!822738) b!1234466))

(assert (= (and b!1234466 res!822742) b!1234472))

(assert (= (and b!1234472 res!822745) b!1234468))

(assert (= (and b!1234468 (not res!822749)) b!1234475))

(assert (= (and b!1234475 (not res!822744)) b!1234469))

(assert (= (and b!1234469 (not res!822739)) b!1234465))

(assert (= (and b!1234465 (not res!822747)) b!1234476))

(declare-fun m!1138449 () Bool)

(assert (=> b!1234470 m!1138449))

(declare-fun m!1138451 () Bool)

(assert (=> b!1234467 m!1138451))

(declare-fun m!1138453 () Bool)

(assert (=> start!102784 m!1138453))

(declare-fun m!1138455 () Bool)

(assert (=> b!1234473 m!1138455))

(declare-fun m!1138457 () Bool)

(assert (=> b!1234474 m!1138457))

(declare-fun m!1138459 () Bool)

(assert (=> b!1234465 m!1138459))

(declare-fun m!1138461 () Bool)

(assert (=> b!1234469 m!1138461))

(declare-fun m!1138463 () Bool)

(assert (=> b!1234475 m!1138463))

(declare-fun m!1138465 () Bool)

(assert (=> b!1234472 m!1138465))

(assert (=> b!1234472 m!1138465))

(declare-fun m!1138467 () Bool)

(assert (=> b!1234472 m!1138467))

(declare-fun m!1138469 () Bool)

(assert (=> b!1234471 m!1138469))

(declare-fun m!1138471 () Bool)

(assert (=> b!1234476 m!1138471))

(declare-fun m!1138473 () Bool)

(assert (=> b!1234476 m!1138473))

(declare-fun m!1138475 () Bool)

(assert (=> b!1234468 m!1138475))

(declare-fun m!1138477 () Bool)

(assert (=> b!1234468 m!1138477))

(declare-fun m!1138479 () Bool)

(assert (=> b!1234468 m!1138479))

(declare-fun m!1138481 () Bool)

(assert (=> b!1234468 m!1138481))

(assert (=> b!1234468 m!1138465))

(check-sat (not b!1234465) (not b!1234469) (not b!1234467) (not b!1234476) (not b!1234474) (not start!102784) (not b!1234471) (not b!1234468) (not b!1234470) (not b!1234473) (not b!1234475) (not b!1234472))
