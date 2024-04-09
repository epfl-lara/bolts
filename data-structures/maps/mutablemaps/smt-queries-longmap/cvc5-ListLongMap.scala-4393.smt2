; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60438 () Bool)

(assert start!60438)

(declare-fun b!678694 () Bool)

(declare-fun res!445257 () Bool)

(declare-fun e!386738 () Bool)

(assert (=> b!678694 (=> (not res!445257) (not e!386738))))

(declare-datatypes ((array!39408 0))(
  ( (array!39409 (arr!18891 (Array (_ BitVec 32) (_ BitVec 64))) (size!19255 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39408)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!12985 0))(
  ( (Nil!12982) (Cons!12981 (h!14026 (_ BitVec 64)) (t!19221 List!12985)) )
))
(declare-fun acc!681 () List!12985)

(declare-fun arrayNoDuplicates!0 (array!39408 (_ BitVec 32) List!12985) Bool)

(assert (=> b!678694 (= res!445257 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun res!445259 () Bool)

(assert (=> start!60438 (=> (not res!445259) (not e!386738))))

(assert (=> start!60438 (= res!445259 (and (bvslt (size!19255 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19255 a!3626))))))

(assert (=> start!60438 e!386738))

(assert (=> start!60438 true))

(declare-fun array_inv!14665 (array!39408) Bool)

(assert (=> start!60438 (array_inv!14665 a!3626)))

(declare-fun b!678695 () Bool)

(declare-fun res!445258 () Bool)

(assert (=> b!678695 (=> (not res!445258) (not e!386738))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39408 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!678695 (= res!445258 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!678696 () Bool)

(declare-fun res!445264 () Bool)

(assert (=> b!678696 (=> (not res!445264) (not e!386738))))

(assert (=> b!678696 (= res!445264 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12982))))

(declare-fun b!678697 () Bool)

(declare-fun res!445252 () Bool)

(assert (=> b!678697 (=> (not res!445252) (not e!386738))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!678697 (= res!445252 (validKeyInArray!0 k!2843))))

(declare-fun b!678698 () Bool)

(declare-fun e!386740 () Bool)

(declare-fun contains!3528 (List!12985 (_ BitVec 64)) Bool)

(assert (=> b!678698 (= e!386740 (not (contains!3528 acc!681 k!2843)))))

(declare-fun b!678699 () Bool)

(declare-fun res!445256 () Bool)

(assert (=> b!678699 (=> (not res!445256) (not e!386738))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!678699 (= res!445256 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19255 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!678700 () Bool)

(declare-fun res!445260 () Bool)

(assert (=> b!678700 (=> (not res!445260) (not e!386738))))

(assert (=> b!678700 (= res!445260 (not (contains!3528 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678701 () Bool)

(declare-fun res!445262 () Bool)

(assert (=> b!678701 (=> (not res!445262) (not e!386738))))

(assert (=> b!678701 (= res!445262 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19255 a!3626))))))

(declare-fun b!678702 () Bool)

(declare-fun res!445263 () Bool)

(assert (=> b!678702 (=> (not res!445263) (not e!386738))))

(declare-fun e!386737 () Bool)

(assert (=> b!678702 (= res!445263 e!386737)))

(declare-fun res!445265 () Bool)

(assert (=> b!678702 (=> res!445265 e!386737)))

(declare-fun e!386736 () Bool)

(assert (=> b!678702 (= res!445265 e!386736)))

(declare-fun res!445255 () Bool)

(assert (=> b!678702 (=> (not res!445255) (not e!386736))))

(assert (=> b!678702 (= res!445255 (bvsgt from!3004 i!1382))))

(declare-fun b!678703 () Bool)

(declare-fun res!445261 () Bool)

(assert (=> b!678703 (=> (not res!445261) (not e!386738))))

(assert (=> b!678703 (= res!445261 (not (contains!3528 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678704 () Bool)

(assert (=> b!678704 (= e!386738 (not true))))

(assert (=> b!678704 (arrayContainsKey!0 (array!39409 (store (arr!18891 a!3626) i!1382 k!2843) (size!19255 a!3626)) k!2843 from!3004)))

(declare-fun b!678705 () Bool)

(assert (=> b!678705 (= e!386737 e!386740)))

(declare-fun res!445254 () Bool)

(assert (=> b!678705 (=> (not res!445254) (not e!386740))))

(assert (=> b!678705 (= res!445254 (bvsle from!3004 i!1382))))

(declare-fun b!678706 () Bool)

(declare-fun res!445253 () Bool)

(assert (=> b!678706 (=> (not res!445253) (not e!386738))))

(declare-fun noDuplicate!775 (List!12985) Bool)

(assert (=> b!678706 (= res!445253 (noDuplicate!775 acc!681))))

(declare-fun b!678707 () Bool)

(assert (=> b!678707 (= e!386736 (contains!3528 acc!681 k!2843))))

(assert (= (and start!60438 res!445259) b!678706))

(assert (= (and b!678706 res!445253) b!678700))

(assert (= (and b!678700 res!445260) b!678703))

(assert (= (and b!678703 res!445261) b!678702))

(assert (= (and b!678702 res!445255) b!678707))

(assert (= (and b!678702 (not res!445265)) b!678705))

(assert (= (and b!678705 res!445254) b!678698))

(assert (= (and b!678702 res!445263) b!678696))

(assert (= (and b!678696 res!445264) b!678694))

(assert (= (and b!678694 res!445257) b!678701))

(assert (= (and b!678701 res!445262) b!678697))

(assert (= (and b!678697 res!445252) b!678695))

(assert (= (and b!678695 res!445258) b!678699))

(assert (= (and b!678699 res!445256) b!678704))

(declare-fun m!644367 () Bool)

(assert (=> b!678700 m!644367))

(declare-fun m!644369 () Bool)

(assert (=> b!678706 m!644369))

(declare-fun m!644371 () Bool)

(assert (=> b!678703 m!644371))

(declare-fun m!644373 () Bool)

(assert (=> b!678697 m!644373))

(declare-fun m!644375 () Bool)

(assert (=> b!678695 m!644375))

(declare-fun m!644377 () Bool)

(assert (=> b!678696 m!644377))

(declare-fun m!644379 () Bool)

(assert (=> b!678707 m!644379))

(assert (=> b!678698 m!644379))

(declare-fun m!644381 () Bool)

(assert (=> b!678694 m!644381))

(declare-fun m!644383 () Bool)

(assert (=> start!60438 m!644383))

(declare-fun m!644385 () Bool)

(assert (=> b!678704 m!644385))

(declare-fun m!644387 () Bool)

(assert (=> b!678704 m!644387))

(push 1)

(assert (not b!678698))

(assert (not start!60438))

(assert (not b!678706))

(assert (not b!678707))

(assert (not b!678696))

(assert (not b!678704))

(assert (not b!678703))

(assert (not b!678695))

(assert (not b!678697))

(assert (not b!678694))

(assert (not b!678700))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

