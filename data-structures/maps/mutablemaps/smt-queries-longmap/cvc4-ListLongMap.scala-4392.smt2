; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60436 () Bool)

(assert start!60436)

(declare-fun b!678652 () Bool)

(declare-fun e!386722 () Bool)

(declare-fun e!386723 () Bool)

(assert (=> b!678652 (= e!386722 e!386723)))

(declare-fun res!445211 () Bool)

(assert (=> b!678652 (=> (not res!445211) (not e!386723))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!678652 (= res!445211 (bvsle from!3004 i!1382))))

(declare-fun b!678653 () Bool)

(declare-fun res!445212 () Bool)

(declare-fun e!386725 () Bool)

(assert (=> b!678653 (=> (not res!445212) (not e!386725))))

(declare-datatypes ((array!39406 0))(
  ( (array!39407 (arr!18890 (Array (_ BitVec 32) (_ BitVec 64))) (size!19254 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39406)

(assert (=> b!678653 (= res!445212 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19254 a!3626))))))

(declare-fun b!678654 () Bool)

(declare-fun res!445222 () Bool)

(assert (=> b!678654 (=> (not res!445222) (not e!386725))))

(declare-datatypes ((List!12984 0))(
  ( (Nil!12981) (Cons!12980 (h!14025 (_ BitVec 64)) (t!19220 List!12984)) )
))
(declare-fun acc!681 () List!12984)

(declare-fun arrayNoDuplicates!0 (array!39406 (_ BitVec 32) List!12984) Bool)

(assert (=> b!678654 (= res!445222 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!678655 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3527 (List!12984 (_ BitVec 64)) Bool)

(assert (=> b!678655 (= e!386723 (not (contains!3527 acc!681 k!2843)))))

(declare-fun b!678656 () Bool)

(declare-fun res!445210 () Bool)

(assert (=> b!678656 (=> (not res!445210) (not e!386725))))

(declare-fun noDuplicate!774 (List!12984) Bool)

(assert (=> b!678656 (= res!445210 (noDuplicate!774 acc!681))))

(declare-fun b!678657 () Bool)

(declare-fun res!445220 () Bool)

(assert (=> b!678657 (=> (not res!445220) (not e!386725))))

(assert (=> b!678657 (= res!445220 (not (contains!3527 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678658 () Bool)

(declare-fun res!445219 () Bool)

(assert (=> b!678658 (=> (not res!445219) (not e!386725))))

(assert (=> b!678658 (= res!445219 (not (contains!3527 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678659 () Bool)

(declare-fun res!445216 () Bool)

(assert (=> b!678659 (=> (not res!445216) (not e!386725))))

(assert (=> b!678659 (= res!445216 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12981))))

(declare-fun b!678660 () Bool)

(declare-fun res!445218 () Bool)

(assert (=> b!678660 (=> (not res!445218) (not e!386725))))

(declare-fun arrayContainsKey!0 (array!39406 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!678660 (= res!445218 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!678661 () Bool)

(declare-fun res!445215 () Bool)

(assert (=> b!678661 (=> (not res!445215) (not e!386725))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!678661 (= res!445215 (validKeyInArray!0 k!2843))))

(declare-fun b!678662 () Bool)

(declare-fun res!445213 () Bool)

(assert (=> b!678662 (=> (not res!445213) (not e!386725))))

(assert (=> b!678662 (= res!445213 e!386722)))

(declare-fun res!445221 () Bool)

(assert (=> b!678662 (=> res!445221 e!386722)))

(declare-fun e!386724 () Bool)

(assert (=> b!678662 (= res!445221 e!386724)))

(declare-fun res!445223 () Bool)

(assert (=> b!678662 (=> (not res!445223) (not e!386724))))

(assert (=> b!678662 (= res!445223 (bvsgt from!3004 i!1382))))

(declare-fun b!678663 () Bool)

(assert (=> b!678663 (= e!386725 (not true))))

(assert (=> b!678663 (arrayContainsKey!0 (array!39407 (store (arr!18890 a!3626) i!1382 k!2843) (size!19254 a!3626)) k!2843 from!3004)))

(declare-fun b!678664 () Bool)

(declare-fun res!445217 () Bool)

(assert (=> b!678664 (=> (not res!445217) (not e!386725))))

(assert (=> b!678664 (= res!445217 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19254 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!678665 () Bool)

(assert (=> b!678665 (= e!386724 (contains!3527 acc!681 k!2843))))

(declare-fun res!445214 () Bool)

(assert (=> start!60436 (=> (not res!445214) (not e!386725))))

(assert (=> start!60436 (= res!445214 (and (bvslt (size!19254 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19254 a!3626))))))

(assert (=> start!60436 e!386725))

(assert (=> start!60436 true))

(declare-fun array_inv!14664 (array!39406) Bool)

(assert (=> start!60436 (array_inv!14664 a!3626)))

(assert (= (and start!60436 res!445214) b!678656))

(assert (= (and b!678656 res!445210) b!678658))

(assert (= (and b!678658 res!445219) b!678657))

(assert (= (and b!678657 res!445220) b!678662))

(assert (= (and b!678662 res!445223) b!678665))

(assert (= (and b!678662 (not res!445221)) b!678652))

(assert (= (and b!678652 res!445211) b!678655))

(assert (= (and b!678662 res!445213) b!678659))

(assert (= (and b!678659 res!445216) b!678654))

(assert (= (and b!678654 res!445222) b!678653))

(assert (= (and b!678653 res!445212) b!678661))

(assert (= (and b!678661 res!445215) b!678660))

(assert (= (and b!678660 res!445218) b!678664))

(assert (= (and b!678664 res!445217) b!678663))

(declare-fun m!644345 () Bool)

(assert (=> b!678654 m!644345))

(declare-fun m!644347 () Bool)

(assert (=> b!678665 m!644347))

(declare-fun m!644349 () Bool)

(assert (=> start!60436 m!644349))

(declare-fun m!644351 () Bool)

(assert (=> b!678659 m!644351))

(declare-fun m!644353 () Bool)

(assert (=> b!678657 m!644353))

(declare-fun m!644355 () Bool)

(assert (=> b!678661 m!644355))

(declare-fun m!644357 () Bool)

(assert (=> b!678663 m!644357))

(declare-fun m!644359 () Bool)

(assert (=> b!678663 m!644359))

(declare-fun m!644361 () Bool)

(assert (=> b!678660 m!644361))

(declare-fun m!644363 () Bool)

(assert (=> b!678656 m!644363))

(declare-fun m!644365 () Bool)

(assert (=> b!678658 m!644365))

(assert (=> b!678655 m!644347))

(push 1)

(assert (not b!678658))

(assert (not b!678665))

(assert (not b!678654))

(assert (not b!678655))

(assert (not b!678663))

(assert (not b!678659))

(assert (not b!678660))

(assert (not b!678656))

(assert (not start!60436))

(assert (not b!678661))

(assert (not b!678657))

(check-sat)

(pop 1)

