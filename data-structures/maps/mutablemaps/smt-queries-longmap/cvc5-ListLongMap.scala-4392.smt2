; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60432 () Bool)

(assert start!60432)

(declare-fun b!678568 () Bool)

(declare-fun e!386691 () Bool)

(assert (=> b!678568 (= e!386691 (not true))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!39402 0))(
  ( (array!39403 (arr!18888 (Array (_ BitVec 32) (_ BitVec 64))) (size!19252 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39402)

(declare-fun arrayContainsKey!0 (array!39402 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!678568 (arrayContainsKey!0 (array!39403 (store (arr!18888 a!3626) i!1382 k!2843) (size!19252 a!3626)) k!2843 from!3004)))

(declare-fun b!678569 () Bool)

(declare-fun res!445126 () Bool)

(assert (=> b!678569 (=> (not res!445126) (not e!386691))))

(assert (=> b!678569 (= res!445126 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19252 a!3626))))))

(declare-fun res!445135 () Bool)

(assert (=> start!60432 (=> (not res!445135) (not e!386691))))

(assert (=> start!60432 (= res!445135 (and (bvslt (size!19252 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19252 a!3626))))))

(assert (=> start!60432 e!386691))

(assert (=> start!60432 true))

(declare-fun array_inv!14662 (array!39402) Bool)

(assert (=> start!60432 (array_inv!14662 a!3626)))

(declare-fun b!678570 () Bool)

(declare-fun res!445132 () Bool)

(assert (=> b!678570 (=> (not res!445132) (not e!386691))))

(declare-datatypes ((List!12982 0))(
  ( (Nil!12979) (Cons!12978 (h!14023 (_ BitVec 64)) (t!19218 List!12982)) )
))
(declare-fun acc!681 () List!12982)

(declare-fun noDuplicate!772 (List!12982) Bool)

(assert (=> b!678570 (= res!445132 (noDuplicate!772 acc!681))))

(declare-fun b!678571 () Bool)

(declare-fun res!445139 () Bool)

(assert (=> b!678571 (=> (not res!445139) (not e!386691))))

(declare-fun e!386695 () Bool)

(assert (=> b!678571 (= res!445139 e!386695)))

(declare-fun res!445138 () Bool)

(assert (=> b!678571 (=> res!445138 e!386695)))

(declare-fun e!386692 () Bool)

(assert (=> b!678571 (= res!445138 e!386692)))

(declare-fun res!445128 () Bool)

(assert (=> b!678571 (=> (not res!445128) (not e!386692))))

(assert (=> b!678571 (= res!445128 (bvsgt from!3004 i!1382))))

(declare-fun b!678572 () Bool)

(declare-fun e!386693 () Bool)

(declare-fun contains!3525 (List!12982 (_ BitVec 64)) Bool)

(assert (=> b!678572 (= e!386693 (not (contains!3525 acc!681 k!2843)))))

(declare-fun b!678573 () Bool)

(declare-fun res!445130 () Bool)

(assert (=> b!678573 (=> (not res!445130) (not e!386691))))

(assert (=> b!678573 (= res!445130 (not (contains!3525 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678574 () Bool)

(declare-fun res!445134 () Bool)

(assert (=> b!678574 (=> (not res!445134) (not e!386691))))

(declare-fun arrayNoDuplicates!0 (array!39402 (_ BitVec 32) List!12982) Bool)

(assert (=> b!678574 (= res!445134 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12979))))

(declare-fun b!678575 () Bool)

(assert (=> b!678575 (= e!386695 e!386693)))

(declare-fun res!445136 () Bool)

(assert (=> b!678575 (=> (not res!445136) (not e!386693))))

(assert (=> b!678575 (= res!445136 (bvsle from!3004 i!1382))))

(declare-fun b!678576 () Bool)

(declare-fun res!445133 () Bool)

(assert (=> b!678576 (=> (not res!445133) (not e!386691))))

(assert (=> b!678576 (= res!445133 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!678577 () Bool)

(declare-fun res!445127 () Bool)

(assert (=> b!678577 (=> (not res!445127) (not e!386691))))

(assert (=> b!678577 (= res!445127 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!678578 () Bool)

(assert (=> b!678578 (= e!386692 (contains!3525 acc!681 k!2843))))

(declare-fun b!678579 () Bool)

(declare-fun res!445131 () Bool)

(assert (=> b!678579 (=> (not res!445131) (not e!386691))))

(assert (=> b!678579 (= res!445131 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19252 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!678580 () Bool)

(declare-fun res!445137 () Bool)

(assert (=> b!678580 (=> (not res!445137) (not e!386691))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!678580 (= res!445137 (validKeyInArray!0 k!2843))))

(declare-fun b!678581 () Bool)

(declare-fun res!445129 () Bool)

(assert (=> b!678581 (=> (not res!445129) (not e!386691))))

(assert (=> b!678581 (= res!445129 (not (contains!3525 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60432 res!445135) b!678570))

(assert (= (and b!678570 res!445132) b!678581))

(assert (= (and b!678581 res!445129) b!678573))

(assert (= (and b!678573 res!445130) b!678571))

(assert (= (and b!678571 res!445128) b!678578))

(assert (= (and b!678571 (not res!445138)) b!678575))

(assert (= (and b!678575 res!445136) b!678572))

(assert (= (and b!678571 res!445139) b!678574))

(assert (= (and b!678574 res!445134) b!678576))

(assert (= (and b!678576 res!445133) b!678569))

(assert (= (and b!678569 res!445126) b!678580))

(assert (= (and b!678580 res!445137) b!678577))

(assert (= (and b!678577 res!445127) b!678579))

(assert (= (and b!678579 res!445131) b!678568))

(declare-fun m!644301 () Bool)

(assert (=> b!678568 m!644301))

(declare-fun m!644303 () Bool)

(assert (=> b!678568 m!644303))

(declare-fun m!644305 () Bool)

(assert (=> start!60432 m!644305))

(declare-fun m!644307 () Bool)

(assert (=> b!678576 m!644307))

(declare-fun m!644309 () Bool)

(assert (=> b!678573 m!644309))

(declare-fun m!644311 () Bool)

(assert (=> b!678577 m!644311))

(declare-fun m!644313 () Bool)

(assert (=> b!678570 m!644313))

(declare-fun m!644315 () Bool)

(assert (=> b!678581 m!644315))

(declare-fun m!644317 () Bool)

(assert (=> b!678574 m!644317))

(declare-fun m!644319 () Bool)

(assert (=> b!678580 m!644319))

(declare-fun m!644321 () Bool)

(assert (=> b!678578 m!644321))

(assert (=> b!678572 m!644321))

(push 1)

(assert (not b!678572))

(assert (not b!678568))

(assert (not b!678581))

(assert (not b!678577))

(assert (not b!678574))

(assert (not b!678570))

(assert (not b!678573))

(assert (not start!60432))

(assert (not b!678578))

(assert (not b!678576))

(assert (not b!678580))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

