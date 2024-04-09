; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59872 () Bool)

(assert start!59872)

(declare-fun b!661501 () Bool)

(declare-fun res!429748 () Bool)

(declare-fun e!379927 () Bool)

(assert (=> b!661501 (=> (not res!429748) (not e!379927))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!38875 0))(
  ( (array!38876 (arr!18626 (Array (_ BitVec 32) (_ BitVec 64))) (size!18990 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38875)

(assert (=> b!661501 (= res!429748 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18990 a!3626))))))

(declare-fun b!661502 () Bool)

(declare-fun e!379925 () Bool)

(declare-fun e!379924 () Bool)

(assert (=> b!661502 (= e!379925 e!379924)))

(declare-fun res!429751 () Bool)

(assert (=> b!661502 (=> (not res!429751) (not e!379924))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!661502 (= res!429751 (bvsle from!3004 i!1382))))

(declare-fun b!661503 () Bool)

(declare-fun res!429742 () Bool)

(assert (=> b!661503 (=> (not res!429742) (not e!379927))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!661503 (= res!429742 (validKeyInArray!0 k!2843))))

(declare-fun b!661504 () Bool)

(declare-fun res!429750 () Bool)

(assert (=> b!661504 (=> (not res!429750) (not e!379927))))

(declare-datatypes ((List!12720 0))(
  ( (Nil!12717) (Cons!12716 (h!13761 (_ BitVec 64)) (t!18956 List!12720)) )
))
(declare-fun acc!681 () List!12720)

(declare-fun arrayNoDuplicates!0 (array!38875 (_ BitVec 32) List!12720) Bool)

(assert (=> b!661504 (= res!429750 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!661505 () Bool)

(declare-fun e!379926 () Bool)

(declare-fun contains!3263 (List!12720 (_ BitVec 64)) Bool)

(assert (=> b!661505 (= e!379926 (contains!3263 acc!681 k!2843))))

(declare-fun b!661506 () Bool)

(assert (=> b!661506 (= e!379927 (not true))))

(declare-fun arrayContainsKey!0 (array!38875 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!661506 (arrayContainsKey!0 (array!38876 (store (arr!18626 a!3626) i!1382 k!2843) (size!18990 a!3626)) k!2843 from!3004)))

(declare-fun b!661508 () Bool)

(declare-fun res!429743 () Bool)

(assert (=> b!661508 (=> (not res!429743) (not e!379927))))

(assert (=> b!661508 (= res!429743 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!661509 () Bool)

(declare-fun res!429741 () Bool)

(assert (=> b!661509 (=> (not res!429741) (not e!379927))))

(assert (=> b!661509 (= res!429741 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!18990 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!661510 () Bool)

(declare-fun res!429740 () Bool)

(assert (=> b!661510 (=> (not res!429740) (not e!379927))))

(declare-fun noDuplicate!510 (List!12720) Bool)

(assert (=> b!661510 (= res!429740 (noDuplicate!510 acc!681))))

(declare-fun b!661511 () Bool)

(declare-fun res!429739 () Bool)

(assert (=> b!661511 (=> (not res!429739) (not e!379927))))

(assert (=> b!661511 (= res!429739 (not (contains!3263 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661507 () Bool)

(declare-fun res!429746 () Bool)

(assert (=> b!661507 (=> (not res!429746) (not e!379927))))

(assert (=> b!661507 (= res!429746 e!379925)))

(declare-fun res!429749 () Bool)

(assert (=> b!661507 (=> res!429749 e!379925)))

(assert (=> b!661507 (= res!429749 e!379926)))

(declare-fun res!429752 () Bool)

(assert (=> b!661507 (=> (not res!429752) (not e!379926))))

(assert (=> b!661507 (= res!429752 (bvsgt from!3004 i!1382))))

(declare-fun res!429745 () Bool)

(assert (=> start!59872 (=> (not res!429745) (not e!379927))))

(assert (=> start!59872 (= res!429745 (and (bvslt (size!18990 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18990 a!3626))))))

(assert (=> start!59872 e!379927))

(assert (=> start!59872 true))

(declare-fun array_inv!14400 (array!38875) Bool)

(assert (=> start!59872 (array_inv!14400 a!3626)))

(declare-fun b!661512 () Bool)

(declare-fun res!429744 () Bool)

(assert (=> b!661512 (=> (not res!429744) (not e!379927))))

(assert (=> b!661512 (= res!429744 (not (contains!3263 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661513 () Bool)

(assert (=> b!661513 (= e!379924 (not (contains!3263 acc!681 k!2843)))))

(declare-fun b!661514 () Bool)

(declare-fun res!429747 () Bool)

(assert (=> b!661514 (=> (not res!429747) (not e!379927))))

(assert (=> b!661514 (= res!429747 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12717))))

(assert (= (and start!59872 res!429745) b!661510))

(assert (= (and b!661510 res!429740) b!661512))

(assert (= (and b!661512 res!429744) b!661511))

(assert (= (and b!661511 res!429739) b!661507))

(assert (= (and b!661507 res!429752) b!661505))

(assert (= (and b!661507 (not res!429749)) b!661502))

(assert (= (and b!661502 res!429751) b!661513))

(assert (= (and b!661507 res!429746) b!661514))

(assert (= (and b!661514 res!429747) b!661504))

(assert (= (and b!661504 res!429750) b!661501))

(assert (= (and b!661501 res!429748) b!661503))

(assert (= (and b!661503 res!429742) b!661508))

(assert (= (and b!661508 res!429743) b!661509))

(assert (= (and b!661509 res!429741) b!661506))

(declare-fun m!633629 () Bool)

(assert (=> b!661508 m!633629))

(declare-fun m!633631 () Bool)

(assert (=> b!661503 m!633631))

(declare-fun m!633633 () Bool)

(assert (=> b!661514 m!633633))

(declare-fun m!633635 () Bool)

(assert (=> b!661512 m!633635))

(declare-fun m!633637 () Bool)

(assert (=> b!661505 m!633637))

(declare-fun m!633639 () Bool)

(assert (=> start!59872 m!633639))

(declare-fun m!633641 () Bool)

(assert (=> b!661511 m!633641))

(declare-fun m!633643 () Bool)

(assert (=> b!661510 m!633643))

(assert (=> b!661513 m!633637))

(declare-fun m!633645 () Bool)

(assert (=> b!661504 m!633645))

(declare-fun m!633647 () Bool)

(assert (=> b!661506 m!633647))

(declare-fun m!633649 () Bool)

(assert (=> b!661506 m!633649))

(push 1)

(assert (not b!661503))

(assert (not b!661514))

(assert (not b!661508))

(assert (not b!661504))

(assert (not b!661506))

(assert (not b!661511))

(assert (not start!59872))

(assert (not b!661513))

(assert (not b!661512))

(assert (not b!661505))

(assert (not b!661510))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

