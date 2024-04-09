; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60388 () Bool)

(assert start!60388)

(declare-fun b!678273 () Bool)

(declare-fun e!386514 () Bool)

(declare-datatypes ((List!12978 0))(
  ( (Nil!12975) (Cons!12974 (h!14019 (_ BitVec 64)) (t!19214 List!12978)) )
))
(declare-fun acc!681 () List!12978)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3521 (List!12978 (_ BitVec 64)) Bool)

(assert (=> b!678273 (= e!386514 (contains!3521 acc!681 k!2843))))

(declare-fun res!444863 () Bool)

(declare-fun e!386512 () Bool)

(assert (=> start!60388 (=> (not res!444863) (not e!386512))))

(declare-datatypes ((array!39391 0))(
  ( (array!39392 (arr!18884 (Array (_ BitVec 32) (_ BitVec 64))) (size!19248 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39391)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!60388 (= res!444863 (and (bvslt (size!19248 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19248 a!3626))))))

(assert (=> start!60388 e!386512))

(assert (=> start!60388 true))

(declare-fun array_inv!14658 (array!39391) Bool)

(assert (=> start!60388 (array_inv!14658 a!3626)))

(declare-fun b!678274 () Bool)

(declare-fun res!444858 () Bool)

(assert (=> b!678274 (=> (not res!444858) (not e!386512))))

(declare-fun noDuplicate!768 (List!12978) Bool)

(assert (=> b!678274 (= res!444858 (noDuplicate!768 acc!681))))

(declare-fun b!678275 () Bool)

(assert (=> b!678275 (= e!386512 false)))

(declare-fun lt!312834 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39391 (_ BitVec 32) List!12978) Bool)

(assert (=> b!678275 (= lt!312834 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!678276 () Bool)

(declare-fun e!386513 () Bool)

(declare-fun e!386511 () Bool)

(assert (=> b!678276 (= e!386513 e!386511)))

(declare-fun res!444862 () Bool)

(assert (=> b!678276 (=> (not res!444862) (not e!386511))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!678276 (= res!444862 (bvsle from!3004 i!1382))))

(declare-fun b!678277 () Bool)

(declare-fun res!444861 () Bool)

(assert (=> b!678277 (=> (not res!444861) (not e!386512))))

(assert (=> b!678277 (= res!444861 e!386513)))

(declare-fun res!444855 () Bool)

(assert (=> b!678277 (=> res!444855 e!386513)))

(assert (=> b!678277 (= res!444855 e!386514)))

(declare-fun res!444860 () Bool)

(assert (=> b!678277 (=> (not res!444860) (not e!386514))))

(assert (=> b!678277 (= res!444860 (bvsgt from!3004 i!1382))))

(declare-fun b!678278 () Bool)

(declare-fun res!444857 () Bool)

(assert (=> b!678278 (=> (not res!444857) (not e!386512))))

(assert (=> b!678278 (= res!444857 (not (contains!3521 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678279 () Bool)

(declare-fun res!444856 () Bool)

(assert (=> b!678279 (=> (not res!444856) (not e!386512))))

(assert (=> b!678279 (= res!444856 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12975))))

(declare-fun b!678280 () Bool)

(assert (=> b!678280 (= e!386511 (not (contains!3521 acc!681 k!2843)))))

(declare-fun b!678281 () Bool)

(declare-fun res!444859 () Bool)

(assert (=> b!678281 (=> (not res!444859) (not e!386512))))

(assert (=> b!678281 (= res!444859 (not (contains!3521 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60388 res!444863) b!678274))

(assert (= (and b!678274 res!444858) b!678281))

(assert (= (and b!678281 res!444859) b!678278))

(assert (= (and b!678278 res!444857) b!678277))

(assert (= (and b!678277 res!444860) b!678273))

(assert (= (and b!678277 (not res!444855)) b!678276))

(assert (= (and b!678276 res!444862) b!678280))

(assert (= (and b!678277 res!444861) b!678279))

(assert (= (and b!678279 res!444856) b!678275))

(declare-fun m!644101 () Bool)

(assert (=> b!678281 m!644101))

(declare-fun m!644103 () Bool)

(assert (=> b!678278 m!644103))

(declare-fun m!644105 () Bool)

(assert (=> b!678280 m!644105))

(declare-fun m!644107 () Bool)

(assert (=> b!678275 m!644107))

(declare-fun m!644109 () Bool)

(assert (=> b!678274 m!644109))

(declare-fun m!644111 () Bool)

(assert (=> start!60388 m!644111))

(assert (=> b!678273 m!644105))

(declare-fun m!644113 () Bool)

(assert (=> b!678279 m!644113))

(push 1)

(assert (not b!678275))

(assert (not start!60388))

(assert (not b!678281))

(assert (not b!678273))

(assert (not b!678278))

(assert (not b!678279))

(assert (not b!678274))

(assert (not b!678280))

(check-sat)

(pop 1)

