; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60282 () Bool)

(assert start!60282)

(declare-fun b!675595 () Bool)

(declare-fun res!442197 () Bool)

(declare-fun e!385421 () Bool)

(assert (=> b!675595 (=> (not res!442197) (not e!385421))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39285 0))(
  ( (array!39286 (arr!18831 (Array (_ BitVec 32) (_ BitVec 64))) (size!19195 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39285)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!675595 (= res!442197 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19195 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!675596 () Bool)

(declare-fun e!385419 () Bool)

(declare-datatypes ((List!12925 0))(
  ( (Nil!12922) (Cons!12921 (h!13966 (_ BitVec 64)) (t!19161 List!12925)) )
))
(declare-fun acc!681 () List!12925)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3468 (List!12925 (_ BitVec 64)) Bool)

(assert (=> b!675596 (= e!385419 (not (contains!3468 acc!681 k!2843)))))

(declare-fun b!675597 () Bool)

(assert (=> b!675597 (= e!385421 false)))

(declare-fun lt!312684 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39285 (_ BitVec 32) List!12925) Bool)

(assert (=> b!675597 (= lt!312684 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!675598 () Bool)

(declare-fun res!442214 () Bool)

(assert (=> b!675598 (=> (not res!442214) (not e!385421))))

(assert (=> b!675598 (= res!442214 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19195 a!3626))))))

(declare-fun b!675599 () Bool)

(declare-fun res!442204 () Bool)

(assert (=> b!675599 (=> (not res!442204) (not e!385421))))

(assert (=> b!675599 (= res!442204 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12922))))

(declare-fun b!675600 () Bool)

(declare-fun e!385423 () Bool)

(assert (=> b!675600 (= e!385423 (contains!3468 acc!681 k!2843))))

(declare-fun b!675601 () Bool)

(declare-fun e!385422 () Bool)

(assert (=> b!675601 (= e!385422 e!385419)))

(declare-fun res!442195 () Bool)

(assert (=> b!675601 (=> (not res!442195) (not e!385419))))

(assert (=> b!675601 (= res!442195 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675602 () Bool)

(declare-fun res!442205 () Bool)

(assert (=> b!675602 (=> (not res!442205) (not e!385421))))

(assert (=> b!675602 (= res!442205 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!675604 () Bool)

(declare-fun res!442201 () Bool)

(assert (=> b!675604 (=> (not res!442201) (not e!385421))))

(declare-fun noDuplicate!715 (List!12925) Bool)

(assert (=> b!675604 (= res!442201 (noDuplicate!715 acc!681))))

(declare-fun b!675605 () Bool)

(declare-fun res!442198 () Bool)

(assert (=> b!675605 (=> (not res!442198) (not e!385421))))

(declare-fun arrayContainsKey!0 (array!39285 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!675605 (= res!442198 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!675606 () Bool)

(declare-fun res!442213 () Bool)

(assert (=> b!675606 (=> (not res!442213) (not e!385421))))

(assert (=> b!675606 (= res!442213 e!385422)))

(declare-fun res!442202 () Bool)

(assert (=> b!675606 (=> res!442202 e!385422)))

(declare-fun e!385416 () Bool)

(assert (=> b!675606 (= res!442202 e!385416)))

(declare-fun res!442203 () Bool)

(assert (=> b!675606 (=> (not res!442203) (not e!385416))))

(assert (=> b!675606 (= res!442203 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675607 () Bool)

(declare-fun res!442199 () Bool)

(assert (=> b!675607 (=> (not res!442199) (not e!385421))))

(assert (=> b!675607 (= res!442199 (not (contains!3468 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!675608 () Bool)

(assert (=> b!675608 (= e!385416 (contains!3468 acc!681 k!2843))))

(declare-fun b!675609 () Bool)

(declare-fun res!442196 () Bool)

(assert (=> b!675609 (=> (not res!442196) (not e!385421))))

(declare-fun e!385418 () Bool)

(assert (=> b!675609 (= res!442196 e!385418)))

(declare-fun res!442210 () Bool)

(assert (=> b!675609 (=> res!442210 e!385418)))

(assert (=> b!675609 (= res!442210 e!385423)))

(declare-fun res!442211 () Bool)

(assert (=> b!675609 (=> (not res!442211) (not e!385423))))

(assert (=> b!675609 (= res!442211 (bvsgt from!3004 i!1382))))

(declare-fun b!675610 () Bool)

(declare-fun res!442200 () Bool)

(assert (=> b!675610 (=> (not res!442200) (not e!385421))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!675610 (= res!442200 (not (validKeyInArray!0 (select (arr!18831 a!3626) from!3004))))))

(declare-fun b!675611 () Bool)

(declare-fun e!385420 () Bool)

(assert (=> b!675611 (= e!385418 e!385420)))

(declare-fun res!442212 () Bool)

(assert (=> b!675611 (=> (not res!442212) (not e!385420))))

(assert (=> b!675611 (= res!442212 (bvsle from!3004 i!1382))))

(declare-fun res!442209 () Bool)

(assert (=> start!60282 (=> (not res!442209) (not e!385421))))

(assert (=> start!60282 (= res!442209 (and (bvslt (size!19195 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19195 a!3626))))))

(assert (=> start!60282 e!385421))

(assert (=> start!60282 true))

(declare-fun array_inv!14605 (array!39285) Bool)

(assert (=> start!60282 (array_inv!14605 a!3626)))

(declare-fun b!675603 () Bool)

(assert (=> b!675603 (= e!385420 (not (contains!3468 acc!681 k!2843)))))

(declare-fun b!675612 () Bool)

(declare-fun res!442208 () Bool)

(assert (=> b!675612 (=> (not res!442208) (not e!385421))))

(assert (=> b!675612 (= res!442208 (not (contains!3468 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!675613 () Bool)

(declare-fun res!442206 () Bool)

(assert (=> b!675613 (=> (not res!442206) (not e!385421))))

(assert (=> b!675613 (= res!442206 (validKeyInArray!0 k!2843))))

(declare-fun b!675614 () Bool)

(declare-fun res!442207 () Bool)

(assert (=> b!675614 (=> (not res!442207) (not e!385421))))

(assert (=> b!675614 (= res!442207 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (= (and start!60282 res!442209) b!675604))

(assert (= (and b!675604 res!442201) b!675607))

(assert (= (and b!675607 res!442199) b!675612))

(assert (= (and b!675612 res!442208) b!675609))

(assert (= (and b!675609 res!442211) b!675600))

(assert (= (and b!675609 (not res!442210)) b!675611))

(assert (= (and b!675611 res!442212) b!675603))

(assert (= (and b!675609 res!442196) b!675599))

(assert (= (and b!675599 res!442204) b!675602))

(assert (= (and b!675602 res!442205) b!675598))

(assert (= (and b!675598 res!442214) b!675613))

(assert (= (and b!675613 res!442206) b!675605))

(assert (= (and b!675605 res!442198) b!675595))

(assert (= (and b!675595 res!442197) b!675610))

(assert (= (and b!675610 res!442200) b!675614))

(assert (= (and b!675614 res!442207) b!675606))

(assert (= (and b!675606 res!442203) b!675608))

(assert (= (and b!675606 (not res!442202)) b!675601))

(assert (= (and b!675601 res!442195) b!675596))

(assert (= (and b!675606 res!442213) b!675597))

(declare-fun m!642897 () Bool)

(assert (=> b!675604 m!642897))

(declare-fun m!642899 () Bool)

(assert (=> b!675607 m!642899))

(declare-fun m!642901 () Bool)

(assert (=> b!675613 m!642901))

(declare-fun m!642903 () Bool)

(assert (=> b!675608 m!642903))

(declare-fun m!642905 () Bool)

(assert (=> b!675599 m!642905))

(assert (=> b!675603 m!642903))

(declare-fun m!642907 () Bool)

(assert (=> b!675610 m!642907))

(assert (=> b!675610 m!642907))

(declare-fun m!642909 () Bool)

(assert (=> b!675610 m!642909))

(declare-fun m!642911 () Bool)

(assert (=> start!60282 m!642911))

(declare-fun m!642913 () Bool)

(assert (=> b!675602 m!642913))

(declare-fun m!642915 () Bool)

(assert (=> b!675597 m!642915))

(declare-fun m!642917 () Bool)

(assert (=> b!675612 m!642917))

(declare-fun m!642919 () Bool)

(assert (=> b!675605 m!642919))

(assert (=> b!675600 m!642903))

(assert (=> b!675596 m!642903))

(push 1)

(assert (not b!675610))

(assert (not b!675607))

(assert (not b!675596))

(assert (not b!675597))

(assert (not b!675608))

(assert (not b!675599))

(assert (not b!675605))

(assert (not b!675604))

(assert (not b!675600))

(assert (not b!675603))

(assert (not b!675602))

(assert (not start!60282))

(assert (not b!675613))

(assert (not b!675612))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

