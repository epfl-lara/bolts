; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60310 () Bool)

(assert start!60310)

(declare-fun b!676435 () Bool)

(declare-fun res!443048 () Bool)

(declare-fun e!385755 () Bool)

(assert (=> b!676435 (=> (not res!443048) (not e!385755))))

(declare-datatypes ((List!12939 0))(
  ( (Nil!12936) (Cons!12935 (h!13980 (_ BitVec 64)) (t!19175 List!12939)) )
))
(declare-fun acc!681 () List!12939)

(declare-fun contains!3482 (List!12939 (_ BitVec 64)) Bool)

(assert (=> b!676435 (= res!443048 (not (contains!3482 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676436 () Bool)

(declare-fun e!385756 () Bool)

(declare-fun e!385752 () Bool)

(assert (=> b!676436 (= e!385756 e!385752)))

(declare-fun res!443047 () Bool)

(assert (=> b!676436 (=> (not res!443047) (not e!385752))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!676436 (= res!443047 (bvsle from!3004 i!1382))))

(declare-fun res!443038 () Bool)

(assert (=> start!60310 (=> (not res!443038) (not e!385755))))

(declare-datatypes ((array!39313 0))(
  ( (array!39314 (arr!18845 (Array (_ BitVec 32) (_ BitVec 64))) (size!19209 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39313)

(assert (=> start!60310 (= res!443038 (and (bvslt (size!19209 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19209 a!3626))))))

(assert (=> start!60310 e!385755))

(assert (=> start!60310 true))

(declare-fun array_inv!14619 (array!39313) Bool)

(assert (=> start!60310 (array_inv!14619 a!3626)))

(declare-fun b!676437 () Bool)

(declare-fun e!385753 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!676437 (= e!385753 (not (contains!3482 acc!681 k!2843)))))

(declare-fun b!676438 () Bool)

(assert (=> b!676438 (= e!385752 (not (contains!3482 acc!681 k!2843)))))

(declare-fun b!676439 () Bool)

(declare-fun res!443044 () Bool)

(assert (=> b!676439 (=> (not res!443044) (not e!385755))))

(declare-fun e!385754 () Bool)

(assert (=> b!676439 (= res!443044 e!385754)))

(declare-fun res!443035 () Bool)

(assert (=> b!676439 (=> res!443035 e!385754)))

(declare-fun e!385758 () Bool)

(assert (=> b!676439 (= res!443035 e!385758)))

(declare-fun res!443046 () Bool)

(assert (=> b!676439 (=> (not res!443046) (not e!385758))))

(assert (=> b!676439 (= res!443046 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!676440 () Bool)

(declare-fun res!443037 () Bool)

(assert (=> b!676440 (=> (not res!443037) (not e!385755))))

(assert (=> b!676440 (= res!443037 (not (contains!3482 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676441 () Bool)

(declare-fun res!443039 () Bool)

(assert (=> b!676441 (=> (not res!443039) (not e!385755))))

(assert (=> b!676441 (= res!443039 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19209 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!676442 () Bool)

(assert (=> b!676442 (= e!385754 e!385753)))

(declare-fun res!443042 () Bool)

(assert (=> b!676442 (=> (not res!443042) (not e!385753))))

(assert (=> b!676442 (= res!443042 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!676443 () Bool)

(declare-fun res!443049 () Bool)

(assert (=> b!676443 (=> (not res!443049) (not e!385755))))

(assert (=> b!676443 (= res!443049 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19209 a!3626))))))

(declare-fun b!676444 () Bool)

(declare-fun res!443053 () Bool)

(assert (=> b!676444 (=> (not res!443053) (not e!385755))))

(declare-fun noDuplicate!729 (List!12939) Bool)

(assert (=> b!676444 (= res!443053 (noDuplicate!729 acc!681))))

(declare-fun b!676445 () Bool)

(declare-fun res!443054 () Bool)

(assert (=> b!676445 (=> (not res!443054) (not e!385755))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!676445 (= res!443054 (not (validKeyInArray!0 (select (arr!18845 a!3626) from!3004))))))

(declare-fun b!676446 () Bool)

(assert (=> b!676446 (= e!385755 false)))

(declare-fun lt!312726 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39313 (_ BitVec 32) List!12939) Bool)

(assert (=> b!676446 (= lt!312726 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!676447 () Bool)

(declare-fun res!443036 () Bool)

(assert (=> b!676447 (=> (not res!443036) (not e!385755))))

(assert (=> b!676447 (= res!443036 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!676448 () Bool)

(declare-fun res!443043 () Bool)

(assert (=> b!676448 (=> (not res!443043) (not e!385755))))

(declare-fun arrayContainsKey!0 (array!39313 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!676448 (= res!443043 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!676449 () Bool)

(assert (=> b!676449 (= e!385758 (contains!3482 acc!681 k!2843))))

(declare-fun b!676450 () Bool)

(declare-fun e!385759 () Bool)

(assert (=> b!676450 (= e!385759 (contains!3482 acc!681 k!2843))))

(declare-fun b!676451 () Bool)

(declare-fun res!443041 () Bool)

(assert (=> b!676451 (=> (not res!443041) (not e!385755))))

(assert (=> b!676451 (= res!443041 (validKeyInArray!0 k!2843))))

(declare-fun b!676452 () Bool)

(declare-fun res!443052 () Bool)

(assert (=> b!676452 (=> (not res!443052) (not e!385755))))

(assert (=> b!676452 (= res!443052 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!676453 () Bool)

(declare-fun res!443050 () Bool)

(assert (=> b!676453 (=> (not res!443050) (not e!385755))))

(assert (=> b!676453 (= res!443050 e!385756)))

(declare-fun res!443051 () Bool)

(assert (=> b!676453 (=> res!443051 e!385756)))

(assert (=> b!676453 (= res!443051 e!385759)))

(declare-fun res!443045 () Bool)

(assert (=> b!676453 (=> (not res!443045) (not e!385759))))

(assert (=> b!676453 (= res!443045 (bvsgt from!3004 i!1382))))

(declare-fun b!676454 () Bool)

(declare-fun res!443040 () Bool)

(assert (=> b!676454 (=> (not res!443040) (not e!385755))))

(assert (=> b!676454 (= res!443040 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12936))))

(assert (= (and start!60310 res!443038) b!676444))

(assert (= (and b!676444 res!443053) b!676440))

(assert (= (and b!676440 res!443037) b!676435))

(assert (= (and b!676435 res!443048) b!676453))

(assert (= (and b!676453 res!443045) b!676450))

(assert (= (and b!676453 (not res!443051)) b!676436))

(assert (= (and b!676436 res!443047) b!676438))

(assert (= (and b!676453 res!443050) b!676454))

(assert (= (and b!676454 res!443040) b!676447))

(assert (= (and b!676447 res!443036) b!676443))

(assert (= (and b!676443 res!443049) b!676451))

(assert (= (and b!676451 res!443041) b!676448))

(assert (= (and b!676448 res!443043) b!676441))

(assert (= (and b!676441 res!443039) b!676445))

(assert (= (and b!676445 res!443054) b!676452))

(assert (= (and b!676452 res!443052) b!676439))

(assert (= (and b!676439 res!443046) b!676449))

(assert (= (and b!676439 (not res!443035)) b!676442))

(assert (= (and b!676442 res!443042) b!676437))

(assert (= (and b!676439 res!443044) b!676446))

(declare-fun m!643233 () Bool)

(assert (=> b!676449 m!643233))

(declare-fun m!643235 () Bool)

(assert (=> start!60310 m!643235))

(declare-fun m!643237 () Bool)

(assert (=> b!676435 m!643237))

(declare-fun m!643239 () Bool)

(assert (=> b!676440 m!643239))

(declare-fun m!643241 () Bool)

(assert (=> b!676451 m!643241))

(assert (=> b!676438 m!643233))

(assert (=> b!676437 m!643233))

(declare-fun m!643243 () Bool)

(assert (=> b!676446 m!643243))

(declare-fun m!643245 () Bool)

(assert (=> b!676445 m!643245))

(assert (=> b!676445 m!643245))

(declare-fun m!643247 () Bool)

(assert (=> b!676445 m!643247))

(declare-fun m!643249 () Bool)

(assert (=> b!676454 m!643249))

(declare-fun m!643251 () Bool)

(assert (=> b!676448 m!643251))

(declare-fun m!643253 () Bool)

(assert (=> b!676447 m!643253))

(assert (=> b!676450 m!643233))

(declare-fun m!643255 () Bool)

(assert (=> b!676444 m!643255))

(push 1)

(assert (not b!676440))

(assert (not b!676444))

(assert (not b!676435))

(assert (not b!676447))

(assert (not b!676437))

(assert (not b!676449))

(assert (not b!676448))

(assert (not b!676451))

(assert (not b!676445))

(assert (not b!676446))

(assert (not start!60310))

(assert (not b!676454))

(assert (not b!676438))

