; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61800 () Bool)

(assert start!61800)

(declare-fun b!691411 () Bool)

(declare-fun e!393460 () Bool)

(declare-datatypes ((List!13147 0))(
  ( (Nil!13144) (Cons!13143 (h!14188 (_ BitVec 64)) (t!19422 List!13147)) )
))
(declare-fun acc!681 () List!13147)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3690 (List!13147 (_ BitVec 64)) Bool)

(assert (=> b!691411 (= e!393460 (not (contains!3690 acc!681 k!2843)))))

(declare-fun b!691412 () Bool)

(declare-fun res!455927 () Bool)

(declare-fun e!393462 () Bool)

(assert (=> b!691412 (=> (not res!455927) (not e!393462))))

(declare-datatypes ((array!39777 0))(
  ( (array!39778 (arr!19053 (Array (_ BitVec 32) (_ BitVec 64))) (size!19436 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39777)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!691412 (= res!455927 (validKeyInArray!0 (select (arr!19053 a!3626) from!3004)))))

(declare-fun b!691413 () Bool)

(declare-fun res!455939 () Bool)

(assert (=> b!691413 (=> (not res!455939) (not e!393462))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!691413 (= res!455939 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19436 a!3626))))))

(declare-fun b!691414 () Bool)

(declare-datatypes ((Unit!24382 0))(
  ( (Unit!24383) )
))
(declare-fun e!393461 () Unit!24382)

(declare-fun Unit!24384 () Unit!24382)

(assert (=> b!691414 (= e!393461 Unit!24384)))

(declare-fun b!691415 () Bool)

(declare-fun res!455935 () Bool)

(assert (=> b!691415 (=> (not res!455935) (not e!393462))))

(declare-fun arrayNoDuplicates!0 (array!39777 (_ BitVec 32) List!13147) Bool)

(assert (=> b!691415 (= res!455935 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun res!455937 () Bool)

(assert (=> start!61800 (=> (not res!455937) (not e!393462))))

(assert (=> start!61800 (= res!455937 (and (bvslt (size!19436 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19436 a!3626))))))

(assert (=> start!61800 e!393462))

(assert (=> start!61800 true))

(declare-fun array_inv!14827 (array!39777) Bool)

(assert (=> start!61800 (array_inv!14827 a!3626)))

(declare-fun b!691416 () Bool)

(declare-fun res!455936 () Bool)

(assert (=> b!691416 (=> (not res!455936) (not e!393462))))

(assert (=> b!691416 (= res!455936 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13144))))

(declare-fun b!691417 () Bool)

(declare-fun res!455928 () Bool)

(assert (=> b!691417 (=> (not res!455928) (not e!393462))))

(assert (=> b!691417 (= res!455928 (not (contains!3690 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691418 () Bool)

(declare-fun res!455934 () Bool)

(assert (=> b!691418 (=> (not res!455934) (not e!393462))))

(assert (=> b!691418 (= res!455934 (validKeyInArray!0 k!2843))))

(declare-fun b!691419 () Bool)

(declare-fun res!455929 () Bool)

(assert (=> b!691419 (=> (not res!455929) (not e!393462))))

(assert (=> b!691419 (= res!455929 (not (contains!3690 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691420 () Bool)

(declare-fun res!455938 () Bool)

(assert (=> b!691420 (=> (not res!455938) (not e!393462))))

(declare-fun e!393463 () Bool)

(assert (=> b!691420 (= res!455938 e!393463)))

(declare-fun res!455925 () Bool)

(assert (=> b!691420 (=> res!455925 e!393463)))

(declare-fun e!393459 () Bool)

(assert (=> b!691420 (= res!455925 e!393459)))

(declare-fun res!455933 () Bool)

(assert (=> b!691420 (=> (not res!455933) (not e!393459))))

(assert (=> b!691420 (= res!455933 (bvsgt from!3004 i!1382))))

(declare-fun b!691421 () Bool)

(assert (=> b!691421 (= e!393463 e!393460)))

(declare-fun res!455932 () Bool)

(assert (=> b!691421 (=> (not res!455932) (not e!393460))))

(assert (=> b!691421 (= res!455932 (bvsle from!3004 i!1382))))

(declare-fun b!691422 () Bool)

(declare-fun res!455930 () Bool)

(assert (=> b!691422 (=> (not res!455930) (not e!393462))))

(declare-fun arrayContainsKey!0 (array!39777 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!691422 (= res!455930 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!691423 () Bool)

(declare-fun res!455926 () Bool)

(assert (=> b!691423 (=> (not res!455926) (not e!393462))))

(assert (=> b!691423 (= res!455926 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19436 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!691424 () Bool)

(declare-fun Unit!24385 () Unit!24382)

(assert (=> b!691424 (= e!393461 Unit!24385)))

(assert (=> b!691424 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316427 () Unit!24382)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39777 (_ BitVec 64) (_ BitVec 32)) Unit!24382)

(assert (=> b!691424 (= lt!316427 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!691424 false))

(declare-fun b!691425 () Bool)

(assert (=> b!691425 (= e!393462 false)))

(declare-fun lt!316428 () Unit!24382)

(assert (=> b!691425 (= lt!316428 e!393461)))

(declare-fun c!78110 () Bool)

(assert (=> b!691425 (= c!78110 (= (select (arr!19053 a!3626) from!3004) k!2843))))

(declare-fun b!691426 () Bool)

(assert (=> b!691426 (= e!393459 (contains!3690 acc!681 k!2843))))

(declare-fun b!691427 () Bool)

(declare-fun res!455931 () Bool)

(assert (=> b!691427 (=> (not res!455931) (not e!393462))))

(declare-fun noDuplicate!937 (List!13147) Bool)

(assert (=> b!691427 (= res!455931 (noDuplicate!937 acc!681))))

(assert (= (and start!61800 res!455937) b!691427))

(assert (= (and b!691427 res!455931) b!691419))

(assert (= (and b!691419 res!455929) b!691417))

(assert (= (and b!691417 res!455928) b!691420))

(assert (= (and b!691420 res!455933) b!691426))

(assert (= (and b!691420 (not res!455925)) b!691421))

(assert (= (and b!691421 res!455932) b!691411))

(assert (= (and b!691420 res!455938) b!691416))

(assert (= (and b!691416 res!455936) b!691415))

(assert (= (and b!691415 res!455935) b!691413))

(assert (= (and b!691413 res!455939) b!691418))

(assert (= (and b!691418 res!455934) b!691422))

(assert (= (and b!691422 res!455930) b!691423))

(assert (= (and b!691423 res!455926) b!691412))

(assert (= (and b!691412 res!455927) b!691425))

(assert (= (and b!691425 c!78110) b!691424))

(assert (= (and b!691425 (not c!78110)) b!691414))

(declare-fun m!654417 () Bool)

(assert (=> b!691419 m!654417))

(declare-fun m!654419 () Bool)

(assert (=> b!691425 m!654419))

(declare-fun m!654421 () Bool)

(assert (=> b!691416 m!654421))

(declare-fun m!654423 () Bool)

(assert (=> b!691417 m!654423))

(declare-fun m!654425 () Bool)

(assert (=> b!691418 m!654425))

(declare-fun m!654427 () Bool)

(assert (=> b!691427 m!654427))

(declare-fun m!654429 () Bool)

(assert (=> b!691426 m!654429))

(declare-fun m!654431 () Bool)

(assert (=> b!691424 m!654431))

(declare-fun m!654433 () Bool)

(assert (=> b!691424 m!654433))

(declare-fun m!654435 () Bool)

(assert (=> b!691422 m!654435))

(assert (=> b!691412 m!654419))

(assert (=> b!691412 m!654419))

(declare-fun m!654437 () Bool)

(assert (=> b!691412 m!654437))

(declare-fun m!654439 () Bool)

(assert (=> b!691415 m!654439))

(assert (=> b!691411 m!654429))

(declare-fun m!654441 () Bool)

(assert (=> start!61800 m!654441))

(push 1)

(assert (not b!691411))

(assert (not b!691418))

(assert (not start!61800))

(assert (not b!691417))

(assert (not b!691419))

(assert (not b!691416))

(assert (not b!691424))

(assert (not b!691427))

(assert (not b!691415))

(assert (not b!691422))

(assert (not b!691426))

(assert (not b!691412))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

