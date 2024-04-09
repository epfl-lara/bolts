; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60260 () Bool)

(assert start!60260)

(declare-fun b!674935 () Bool)

(declare-fun res!441542 () Bool)

(declare-fun e!385154 () Bool)

(assert (=> b!674935 (=> (not res!441542) (not e!385154))))

(declare-datatypes ((array!39263 0))(
  ( (array!39264 (arr!18820 (Array (_ BitVec 32) (_ BitVec 64))) (size!19184 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39263)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!12914 0))(
  ( (Nil!12911) (Cons!12910 (h!13955 (_ BitVec 64)) (t!19150 List!12914)) )
))
(declare-fun acc!681 () List!12914)

(declare-fun arrayNoDuplicates!0 (array!39263 (_ BitVec 32) List!12914) Bool)

(assert (=> b!674935 (= res!441542 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!674936 () Bool)

(declare-fun res!441554 () Bool)

(assert (=> b!674936 (=> (not res!441554) (not e!385154))))

(declare-fun contains!3457 (List!12914 (_ BitVec 64)) Bool)

(assert (=> b!674936 (= res!441554 (not (contains!3457 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674937 () Bool)

(declare-fun res!441535 () Bool)

(assert (=> b!674937 (=> (not res!441535) (not e!385154))))

(assert (=> b!674937 (= res!441535 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12911))))

(declare-fun b!674938 () Bool)

(declare-fun res!441538 () Bool)

(assert (=> b!674938 (=> (not res!441538) (not e!385154))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!674938 (= res!441538 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19184 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!674939 () Bool)

(declare-fun res!441551 () Bool)

(assert (=> b!674939 (=> (not res!441551) (not e!385154))))

(declare-fun e!385156 () Bool)

(assert (=> b!674939 (= res!441551 e!385156)))

(declare-fun res!441546 () Bool)

(assert (=> b!674939 (=> res!441546 e!385156)))

(declare-fun e!385157 () Bool)

(assert (=> b!674939 (= res!441546 e!385157)))

(declare-fun res!441547 () Bool)

(assert (=> b!674939 (=> (not res!441547) (not e!385157))))

(assert (=> b!674939 (= res!441547 (bvsgt from!3004 i!1382))))

(declare-fun b!674940 () Bool)

(declare-fun res!441539 () Bool)

(assert (=> b!674940 (=> (not res!441539) (not e!385154))))

(assert (=> b!674940 (= res!441539 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!674942 () Bool)

(declare-fun res!441549 () Bool)

(assert (=> b!674942 (=> (not res!441549) (not e!385154))))

(assert (=> b!674942 (= res!441549 (not (contains!3457 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674943 () Bool)

(declare-fun e!385155 () Bool)

(assert (=> b!674943 (= e!385156 e!385155)))

(declare-fun res!441536 () Bool)

(assert (=> b!674943 (=> (not res!441536) (not e!385155))))

(assert (=> b!674943 (= res!441536 (bvsle from!3004 i!1382))))

(declare-fun b!674944 () Bool)

(assert (=> b!674944 (= e!385154 false)))

(declare-fun lt!312651 () Bool)

(assert (=> b!674944 (= lt!312651 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!674945 () Bool)

(declare-fun res!441550 () Bool)

(assert (=> b!674945 (=> (not res!441550) (not e!385154))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39263 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!674945 (= res!441550 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!674946 () Bool)

(declare-fun e!385153 () Bool)

(assert (=> b!674946 (= e!385153 (contains!3457 acc!681 k0!2843))))

(declare-fun b!674947 () Bool)

(declare-fun res!441545 () Bool)

(assert (=> b!674947 (=> (not res!441545) (not e!385154))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!674947 (= res!441545 (validKeyInArray!0 k0!2843))))

(declare-fun b!674948 () Bool)

(declare-fun res!441540 () Bool)

(assert (=> b!674948 (=> (not res!441540) (not e!385154))))

(assert (=> b!674948 (= res!441540 (not (validKeyInArray!0 (select (arr!18820 a!3626) from!3004))))))

(declare-fun b!674949 () Bool)

(declare-fun e!385159 () Bool)

(assert (=> b!674949 (= e!385159 (not (contains!3457 acc!681 k0!2843)))))

(declare-fun b!674950 () Bool)

(declare-fun res!441541 () Bool)

(assert (=> b!674950 (=> (not res!441541) (not e!385154))))

(declare-fun noDuplicate!704 (List!12914) Bool)

(assert (=> b!674950 (= res!441541 (noDuplicate!704 acc!681))))

(declare-fun b!674951 () Bool)

(assert (=> b!674951 (= e!385157 (contains!3457 acc!681 k0!2843))))

(declare-fun b!674952 () Bool)

(assert (=> b!674952 (= e!385155 (not (contains!3457 acc!681 k0!2843)))))

(declare-fun b!674953 () Bool)

(declare-fun res!441548 () Bool)

(assert (=> b!674953 (=> (not res!441548) (not e!385154))))

(declare-fun e!385158 () Bool)

(assert (=> b!674953 (= res!441548 e!385158)))

(declare-fun res!441553 () Bool)

(assert (=> b!674953 (=> res!441553 e!385158)))

(assert (=> b!674953 (= res!441553 e!385153)))

(declare-fun res!441552 () Bool)

(assert (=> b!674953 (=> (not res!441552) (not e!385153))))

(assert (=> b!674953 (= res!441552 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!674954 () Bool)

(assert (=> b!674954 (= e!385158 e!385159)))

(declare-fun res!441543 () Bool)

(assert (=> b!674954 (=> (not res!441543) (not e!385159))))

(assert (=> b!674954 (= res!441543 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun res!441537 () Bool)

(assert (=> start!60260 (=> (not res!441537) (not e!385154))))

(assert (=> start!60260 (= res!441537 (and (bvslt (size!19184 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19184 a!3626))))))

(assert (=> start!60260 e!385154))

(assert (=> start!60260 true))

(declare-fun array_inv!14594 (array!39263) Bool)

(assert (=> start!60260 (array_inv!14594 a!3626)))

(declare-fun b!674941 () Bool)

(declare-fun res!441544 () Bool)

(assert (=> b!674941 (=> (not res!441544) (not e!385154))))

(assert (=> b!674941 (= res!441544 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19184 a!3626))))))

(assert (= (and start!60260 res!441537) b!674950))

(assert (= (and b!674950 res!441541) b!674936))

(assert (= (and b!674936 res!441554) b!674942))

(assert (= (and b!674942 res!441549) b!674939))

(assert (= (and b!674939 res!441547) b!674951))

(assert (= (and b!674939 (not res!441546)) b!674943))

(assert (= (and b!674943 res!441536) b!674952))

(assert (= (and b!674939 res!441551) b!674937))

(assert (= (and b!674937 res!441535) b!674935))

(assert (= (and b!674935 res!441542) b!674941))

(assert (= (and b!674941 res!441544) b!674947))

(assert (= (and b!674947 res!441545) b!674945))

(assert (= (and b!674945 res!441550) b!674938))

(assert (= (and b!674938 res!441538) b!674948))

(assert (= (and b!674948 res!441540) b!674940))

(assert (= (and b!674940 res!441539) b!674953))

(assert (= (and b!674953 res!441552) b!674946))

(assert (= (and b!674953 (not res!441553)) b!674954))

(assert (= (and b!674954 res!441543) b!674949))

(assert (= (and b!674953 res!441548) b!674944))

(declare-fun m!642633 () Bool)

(assert (=> b!674945 m!642633))

(declare-fun m!642635 () Bool)

(assert (=> b!674950 m!642635))

(declare-fun m!642637 () Bool)

(assert (=> b!674937 m!642637))

(declare-fun m!642639 () Bool)

(assert (=> b!674947 m!642639))

(declare-fun m!642641 () Bool)

(assert (=> b!674946 m!642641))

(declare-fun m!642643 () Bool)

(assert (=> start!60260 m!642643))

(assert (=> b!674949 m!642641))

(declare-fun m!642645 () Bool)

(assert (=> b!674944 m!642645))

(declare-fun m!642647 () Bool)

(assert (=> b!674936 m!642647))

(declare-fun m!642649 () Bool)

(assert (=> b!674948 m!642649))

(assert (=> b!674948 m!642649))

(declare-fun m!642651 () Bool)

(assert (=> b!674948 m!642651))

(assert (=> b!674952 m!642641))

(declare-fun m!642653 () Bool)

(assert (=> b!674942 m!642653))

(declare-fun m!642655 () Bool)

(assert (=> b!674935 m!642655))

(assert (=> b!674951 m!642641))

(check-sat (not b!674948) (not b!674951) (not b!674935) (not b!674937) (not b!674945) (not b!674950) (not b!674942) (not b!674952) (not b!674947) (not b!674949) (not b!674946) (not start!60260) (not b!674944) (not b!674936))
