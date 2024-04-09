; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62548 () Bool)

(assert start!62548)

(declare-fun b!704355 () Bool)

(declare-fun e!397624 () Bool)

(assert (=> b!704355 (= e!397624 false)))

(declare-datatypes ((array!40183 0))(
  ( (array!40184 (arr!19244 (Array (_ BitVec 32) (_ BitVec 64))) (size!19627 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40183)

(declare-fun lt!317793 () Bool)

(declare-datatypes ((List!13338 0))(
  ( (Nil!13335) (Cons!13334 (h!14379 (_ BitVec 64)) (t!19628 List!13338)) )
))
(declare-fun acc!652 () List!13338)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!40183 (_ BitVec 32) List!13338) Bool)

(assert (=> b!704355 (= lt!317793 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!704356 () Bool)

(declare-fun res!468349 () Bool)

(assert (=> b!704356 (=> (not res!468349) (not e!397624))))

(declare-fun contains!3881 (List!13338 (_ BitVec 64)) Bool)

(assert (=> b!704356 (= res!468349 (not (contains!3881 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704357 () Bool)

(declare-fun res!468339 () Bool)

(assert (=> b!704357 (=> (not res!468339) (not e!397624))))

(declare-fun newAcc!49 () List!13338)

(assert (=> b!704357 (= res!468339 (not (contains!3881 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704358 () Bool)

(declare-fun res!468356 () Bool)

(assert (=> b!704358 (=> (not res!468356) (not e!397624))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40183 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!704358 (= res!468356 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!704359 () Bool)

(declare-fun res!468343 () Bool)

(assert (=> b!704359 (=> (not res!468343) (not e!397624))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!704359 (= res!468343 (not (validKeyInArray!0 (select (arr!19244 a!3591) from!2969))))))

(declare-fun b!704360 () Bool)

(declare-fun res!468350 () Bool)

(assert (=> b!704360 (=> (not res!468350) (not e!397624))))

(declare-fun -!290 (List!13338 (_ BitVec 64)) List!13338)

(assert (=> b!704360 (= res!468350 (= (-!290 newAcc!49 k!2824) acc!652))))

(declare-fun b!704361 () Bool)

(declare-fun res!468351 () Bool)

(assert (=> b!704361 (=> (not res!468351) (not e!397624))))

(assert (=> b!704361 (= res!468351 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!704362 () Bool)

(declare-fun res!468344 () Bool)

(assert (=> b!704362 (=> (not res!468344) (not e!397624))))

(declare-fun subseq!325 (List!13338 List!13338) Bool)

(assert (=> b!704362 (= res!468344 (subseq!325 acc!652 newAcc!49))))

(declare-fun b!704363 () Bool)

(declare-fun res!468348 () Bool)

(assert (=> b!704363 (=> (not res!468348) (not e!397624))))

(assert (=> b!704363 (= res!468348 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun res!468340 () Bool)

(assert (=> start!62548 (=> (not res!468340) (not e!397624))))

(assert (=> start!62548 (= res!468340 (and (bvslt (size!19627 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19627 a!3591))))))

(assert (=> start!62548 e!397624))

(assert (=> start!62548 true))

(declare-fun array_inv!15018 (array!40183) Bool)

(assert (=> start!62548 (array_inv!15018 a!3591)))

(declare-fun b!704364 () Bool)

(declare-fun res!468341 () Bool)

(assert (=> b!704364 (=> (not res!468341) (not e!397624))))

(assert (=> b!704364 (= res!468341 (not (contains!3881 acc!652 k!2824)))))

(declare-fun b!704365 () Bool)

(declare-fun res!468346 () Bool)

(assert (=> b!704365 (=> (not res!468346) (not e!397624))))

(assert (=> b!704365 (= res!468346 (validKeyInArray!0 k!2824))))

(declare-fun b!704366 () Bool)

(declare-fun res!468342 () Bool)

(assert (=> b!704366 (=> (not res!468342) (not e!397624))))

(assert (=> b!704366 (= res!468342 (not (contains!3881 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704367 () Bool)

(declare-fun res!468352 () Bool)

(assert (=> b!704367 (=> (not res!468352) (not e!397624))))

(declare-fun noDuplicate!1128 (List!13338) Bool)

(assert (=> b!704367 (= res!468352 (noDuplicate!1128 acc!652))))

(declare-fun b!704368 () Bool)

(declare-fun res!468353 () Bool)

(assert (=> b!704368 (=> (not res!468353) (not e!397624))))

(assert (=> b!704368 (= res!468353 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!704369 () Bool)

(declare-fun res!468347 () Bool)

(assert (=> b!704369 (=> (not res!468347) (not e!397624))))

(assert (=> b!704369 (= res!468347 (contains!3881 newAcc!49 k!2824))))

(declare-fun b!704370 () Bool)

(declare-fun res!468345 () Bool)

(assert (=> b!704370 (=> (not res!468345) (not e!397624))))

(assert (=> b!704370 (= res!468345 (not (contains!3881 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704371 () Bool)

(declare-fun res!468354 () Bool)

(assert (=> b!704371 (=> (not res!468354) (not e!397624))))

(assert (=> b!704371 (= res!468354 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19627 a!3591)))))

(declare-fun b!704372 () Bool)

(declare-fun res!468355 () Bool)

(assert (=> b!704372 (=> (not res!468355) (not e!397624))))

(assert (=> b!704372 (= res!468355 (noDuplicate!1128 newAcc!49))))

(assert (= (and start!62548 res!468340) b!704367))

(assert (= (and b!704367 res!468352) b!704372))

(assert (= (and b!704372 res!468355) b!704356))

(assert (= (and b!704356 res!468349) b!704366))

(assert (= (and b!704366 res!468342) b!704361))

(assert (= (and b!704361 res!468351) b!704364))

(assert (= (and b!704364 res!468341) b!704365))

(assert (= (and b!704365 res!468346) b!704368))

(assert (= (and b!704368 res!468353) b!704362))

(assert (= (and b!704362 res!468344) b!704369))

(assert (= (and b!704369 res!468347) b!704360))

(assert (= (and b!704360 res!468350) b!704357))

(assert (= (and b!704357 res!468339) b!704370))

(assert (= (and b!704370 res!468345) b!704371))

(assert (= (and b!704371 res!468354) b!704359))

(assert (= (and b!704359 res!468343) b!704363))

(assert (= (and b!704363 res!468348) b!704358))

(assert (= (and b!704358 res!468356) b!704355))

(declare-fun m!662895 () Bool)

(assert (=> b!704362 m!662895))

(declare-fun m!662897 () Bool)

(assert (=> b!704369 m!662897))

(declare-fun m!662899 () Bool)

(assert (=> b!704366 m!662899))

(declare-fun m!662901 () Bool)

(assert (=> b!704360 m!662901))

(declare-fun m!662903 () Bool)

(assert (=> b!704367 m!662903))

(declare-fun m!662905 () Bool)

(assert (=> b!704357 m!662905))

(declare-fun m!662907 () Bool)

(assert (=> b!704365 m!662907))

(declare-fun m!662909 () Bool)

(assert (=> b!704359 m!662909))

(assert (=> b!704359 m!662909))

(declare-fun m!662911 () Bool)

(assert (=> b!704359 m!662911))

(declare-fun m!662913 () Bool)

(assert (=> b!704355 m!662913))

(declare-fun m!662915 () Bool)

(assert (=> b!704370 m!662915))

(declare-fun m!662917 () Bool)

(assert (=> b!704361 m!662917))

(declare-fun m!662919 () Bool)

(assert (=> start!62548 m!662919))

(declare-fun m!662921 () Bool)

(assert (=> b!704356 m!662921))

(declare-fun m!662923 () Bool)

(assert (=> b!704364 m!662923))

(declare-fun m!662925 () Bool)

(assert (=> b!704372 m!662925))

(declare-fun m!662927 () Bool)

(assert (=> b!704368 m!662927))

(declare-fun m!662929 () Bool)

(assert (=> b!704358 m!662929))

(push 1)

(assert (not b!704361))

(assert (not b!704365))

(assert (not b!704369))

(assert (not b!704358))

(assert (not b!704364))

(assert (not b!704356))

(assert (not start!62548))

(assert (not b!704368))

(assert (not b!704355))

(assert (not b!704359))

(assert (not b!704357))

(assert (not b!704366))

(assert (not b!704360))

(assert (not b!704362))

(assert (not b!704372))

(assert (not b!704367))

(assert (not b!704370))

(check-sat)

