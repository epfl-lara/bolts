; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62224 () Bool)

(assert start!62224)

(declare-fun b!696589 () Bool)

(declare-fun e!396088 () Bool)

(declare-fun e!396082 () Bool)

(assert (=> b!696589 (= e!396088 e!396082)))

(declare-fun res!460696 () Bool)

(assert (=> b!696589 (=> (not res!460696) (not e!396082))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!696589 (= res!460696 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!696590 () Bool)

(declare-fun res!460684 () Bool)

(declare-fun e!396085 () Bool)

(assert (=> b!696590 (=> (not res!460684) (not e!396085))))

(declare-datatypes ((array!39937 0))(
  ( (array!39938 (arr!19124 (Array (_ BitVec 32) (_ BitVec 64))) (size!19507 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39937)

(assert (=> b!696590 (= res!460684 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19507 a!3626))))))

(declare-fun b!696592 () Bool)

(declare-fun res!460683 () Bool)

(assert (=> b!696592 (=> (not res!460683) (not e!396085))))

(declare-fun e!396087 () Bool)

(assert (=> b!696592 (= res!460683 e!396087)))

(declare-fun res!460687 () Bool)

(assert (=> b!696592 (=> res!460687 e!396087)))

(declare-fun e!396083 () Bool)

(assert (=> b!696592 (= res!460687 e!396083)))

(declare-fun res!460685 () Bool)

(assert (=> b!696592 (=> (not res!460685) (not e!396083))))

(assert (=> b!696592 (= res!460685 (bvsgt from!3004 i!1382))))

(declare-fun b!696593 () Bool)

(declare-fun res!460697 () Bool)

(assert (=> b!696593 (=> (not res!460697) (not e!396085))))

(declare-datatypes ((List!13218 0))(
  ( (Nil!13215) (Cons!13214 (h!14259 (_ BitVec 64)) (t!19508 List!13218)) )
))
(declare-fun arrayNoDuplicates!0 (array!39937 (_ BitVec 32) List!13218) Bool)

(assert (=> b!696593 (= res!460697 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13215))))

(declare-fun b!696594 () Bool)

(assert (=> b!696594 (= e!396085 false)))

(declare-fun acc!681 () List!13218)

(declare-fun lt!317067 () Bool)

(assert (=> b!696594 (= lt!317067 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!696595 () Bool)

(declare-fun e!396086 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3761 (List!13218 (_ BitVec 64)) Bool)

(assert (=> b!696595 (= e!396086 (not (contains!3761 acc!681 k!2843)))))

(declare-fun b!696596 () Bool)

(declare-fun res!460682 () Bool)

(assert (=> b!696596 (=> (not res!460682) (not e!396085))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!696596 (= res!460682 (validKeyInArray!0 k!2843))))

(declare-fun b!696597 () Bool)

(assert (=> b!696597 (= e!396083 (contains!3761 acc!681 k!2843))))

(declare-fun b!696598 () Bool)

(declare-fun res!460688 () Bool)

(assert (=> b!696598 (=> (not res!460688) (not e!396085))))

(assert (=> b!696598 (= res!460688 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!696599 () Bool)

(declare-fun res!460699 () Bool)

(assert (=> b!696599 (=> (not res!460699) (not e!396085))))

(assert (=> b!696599 (= res!460699 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!696591 () Bool)

(declare-fun res!460686 () Bool)

(assert (=> b!696591 (=> (not res!460686) (not e!396085))))

(declare-fun arrayContainsKey!0 (array!39937 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!696591 (= res!460686 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun res!460692 () Bool)

(assert (=> start!62224 (=> (not res!460692) (not e!396085))))

(assert (=> start!62224 (= res!460692 (and (bvslt (size!19507 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19507 a!3626))))))

(assert (=> start!62224 e!396085))

(assert (=> start!62224 true))

(declare-fun array_inv!14898 (array!39937) Bool)

(assert (=> start!62224 (array_inv!14898 a!3626)))

(declare-fun b!696600 () Bool)

(declare-fun res!460693 () Bool)

(assert (=> b!696600 (=> (not res!460693) (not e!396085))))

(declare-fun noDuplicate!1008 (List!13218) Bool)

(assert (=> b!696600 (= res!460693 (noDuplicate!1008 acc!681))))

(declare-fun b!696601 () Bool)

(assert (=> b!696601 (= e!396087 e!396086)))

(declare-fun res!460700 () Bool)

(assert (=> b!696601 (=> (not res!460700) (not e!396086))))

(assert (=> b!696601 (= res!460700 (bvsle from!3004 i!1382))))

(declare-fun b!696602 () Bool)

(declare-fun res!460695 () Bool)

(assert (=> b!696602 (=> (not res!460695) (not e!396085))))

(assert (=> b!696602 (= res!460695 (not (validKeyInArray!0 (select (arr!19124 a!3626) from!3004))))))

(declare-fun b!696603 () Bool)

(declare-fun e!396084 () Bool)

(assert (=> b!696603 (= e!396084 (contains!3761 acc!681 k!2843))))

(declare-fun b!696604 () Bool)

(assert (=> b!696604 (= e!396082 (not (contains!3761 acc!681 k!2843)))))

(declare-fun b!696605 () Bool)

(declare-fun res!460698 () Bool)

(assert (=> b!696605 (=> (not res!460698) (not e!396085))))

(assert (=> b!696605 (= res!460698 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19507 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!696606 () Bool)

(declare-fun res!460690 () Bool)

(assert (=> b!696606 (=> (not res!460690) (not e!396085))))

(assert (=> b!696606 (= res!460690 (not (contains!3761 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!696607 () Bool)

(declare-fun res!460681 () Bool)

(assert (=> b!696607 (=> (not res!460681) (not e!396085))))

(assert (=> b!696607 (= res!460681 (not (contains!3761 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!696608 () Bool)

(declare-fun res!460689 () Bool)

(assert (=> b!696608 (=> (not res!460689) (not e!396085))))

(assert (=> b!696608 (= res!460689 e!396088)))

(declare-fun res!460691 () Bool)

(assert (=> b!696608 (=> res!460691 e!396088)))

(assert (=> b!696608 (= res!460691 e!396084)))

(declare-fun res!460694 () Bool)

(assert (=> b!696608 (=> (not res!460694) (not e!396084))))

(assert (=> b!696608 (= res!460694 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(assert (= (and start!62224 res!460692) b!696600))

(assert (= (and b!696600 res!460693) b!696606))

(assert (= (and b!696606 res!460690) b!696607))

(assert (= (and b!696607 res!460681) b!696592))

(assert (= (and b!696592 res!460685) b!696597))

(assert (= (and b!696592 (not res!460687)) b!696601))

(assert (= (and b!696601 res!460700) b!696595))

(assert (= (and b!696592 res!460683) b!696593))

(assert (= (and b!696593 res!460697) b!696598))

(assert (= (and b!696598 res!460688) b!696590))

(assert (= (and b!696590 res!460684) b!696596))

(assert (= (and b!696596 res!460682) b!696591))

(assert (= (and b!696591 res!460686) b!696605))

(assert (= (and b!696605 res!460698) b!696602))

(assert (= (and b!696602 res!460695) b!696599))

(assert (= (and b!696599 res!460699) b!696608))

(assert (= (and b!696608 res!460694) b!696603))

(assert (= (and b!696608 (not res!460691)) b!696589))

(assert (= (and b!696589 res!460696) b!696604))

(assert (= (and b!696608 res!460689) b!696594))

(declare-fun m!657441 () Bool)

(assert (=> b!696604 m!657441))

(declare-fun m!657443 () Bool)

(assert (=> b!696607 m!657443))

(assert (=> b!696595 m!657441))

(declare-fun m!657445 () Bool)

(assert (=> b!696606 m!657445))

(assert (=> b!696603 m!657441))

(declare-fun m!657447 () Bool)

(assert (=> b!696593 m!657447))

(declare-fun m!657449 () Bool)

(assert (=> start!62224 m!657449))

(declare-fun m!657451 () Bool)

(assert (=> b!696598 m!657451))

(declare-fun m!657453 () Bool)

(assert (=> b!696600 m!657453))

(declare-fun m!657455 () Bool)

(assert (=> b!696591 m!657455))

(declare-fun m!657457 () Bool)

(assert (=> b!696594 m!657457))

(assert (=> b!696597 m!657441))

(declare-fun m!657459 () Bool)

(assert (=> b!696602 m!657459))

(assert (=> b!696602 m!657459))

(declare-fun m!657461 () Bool)

(assert (=> b!696602 m!657461))

(declare-fun m!657463 () Bool)

(assert (=> b!696596 m!657463))

(push 1)

(assert (not b!696602))

(assert (not b!696606))

(assert (not b!696596))

(assert (not b!696595))

(assert (not b!696607))

(assert (not b!696604))

(assert (not start!62224))

(assert (not b!696594))

(assert (not b!696597))

(assert (not b!696593))

(assert (not b!696591))

(assert (not b!696600))

(assert (not b!696598))

(assert (not b!696603))

(check-sat)

(pop 1)

