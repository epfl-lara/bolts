; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60370 () Bool)

(assert start!60370)

(declare-fun b!677922 () Bool)

(declare-fun res!444526 () Bool)

(declare-fun e!386371 () Bool)

(assert (=> b!677922 (=> (not res!444526) (not e!386371))))

(declare-datatypes ((List!12969 0))(
  ( (Nil!12966) (Cons!12965 (h!14010 (_ BitVec 64)) (t!19205 List!12969)) )
))
(declare-fun acc!681 () List!12969)

(declare-fun contains!3512 (List!12969 (_ BitVec 64)) Bool)

(assert (=> b!677922 (= res!444526 (not (contains!3512 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677923 () Bool)

(declare-fun res!444522 () Bool)

(assert (=> b!677923 (=> (not res!444522) (not e!386371))))

(assert (=> b!677923 (= res!444522 (not (contains!3512 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677924 () Bool)

(declare-fun res!444529 () Bool)

(assert (=> b!677924 (=> (not res!444529) (not e!386371))))

(declare-fun noDuplicate!759 (List!12969) Bool)

(assert (=> b!677924 (= res!444529 (noDuplicate!759 acc!681))))

(declare-fun res!444527 () Bool)

(assert (=> start!60370 (=> (not res!444527) (not e!386371))))

(declare-datatypes ((array!39373 0))(
  ( (array!39374 (arr!18875 (Array (_ BitVec 32) (_ BitVec 64))) (size!19239 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39373)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!60370 (= res!444527 (and (bvslt (size!19239 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19239 a!3626))))))

(assert (=> start!60370 e!386371))

(assert (=> start!60370 true))

(declare-fun array_inv!14649 (array!39373) Bool)

(assert (=> start!60370 (array_inv!14649 a!3626)))

(declare-fun b!677925 () Bool)

(declare-fun res!444523 () Bool)

(assert (=> b!677925 (=> (not res!444523) (not e!386371))))

(declare-fun arrayNoDuplicates!0 (array!39373 (_ BitVec 32) List!12969) Bool)

(assert (=> b!677925 (= res!444523 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12966))))

(declare-fun b!677926 () Bool)

(assert (=> b!677926 (= e!386371 false)))

(declare-fun lt!312807 () Bool)

(assert (=> b!677926 (= lt!312807 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!677927 () Bool)

(declare-fun e!386368 () Bool)

(declare-fun e!386367 () Bool)

(assert (=> b!677927 (= e!386368 e!386367)))

(declare-fun res!444528 () Bool)

(assert (=> b!677927 (=> (not res!444528) (not e!386367))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!677927 (= res!444528 (bvsle from!3004 i!1382))))

(declare-fun b!677928 () Bool)

(declare-fun e!386370 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!677928 (= e!386370 (contains!3512 acc!681 k!2843))))

(declare-fun b!677929 () Bool)

(assert (=> b!677929 (= e!386367 (not (contains!3512 acc!681 k!2843)))))

(declare-fun b!677930 () Bool)

(declare-fun res!444525 () Bool)

(assert (=> b!677930 (=> (not res!444525) (not e!386371))))

(assert (=> b!677930 (= res!444525 e!386368)))

(declare-fun res!444524 () Bool)

(assert (=> b!677930 (=> res!444524 e!386368)))

(assert (=> b!677930 (= res!444524 e!386370)))

(declare-fun res!444530 () Bool)

(assert (=> b!677930 (=> (not res!444530) (not e!386370))))

(assert (=> b!677930 (= res!444530 (bvsgt from!3004 i!1382))))

(assert (= (and start!60370 res!444527) b!677924))

(assert (= (and b!677924 res!444529) b!677923))

(assert (= (and b!677923 res!444522) b!677922))

(assert (= (and b!677922 res!444526) b!677930))

(assert (= (and b!677930 res!444530) b!677928))

(assert (= (and b!677930 (not res!444524)) b!677927))

(assert (= (and b!677927 res!444528) b!677929))

(assert (= (and b!677930 res!444525) b!677925))

(assert (= (and b!677925 res!444523) b!677926))

(declare-fun m!643927 () Bool)

(assert (=> b!677929 m!643927))

(declare-fun m!643929 () Bool)

(assert (=> b!677924 m!643929))

(declare-fun m!643931 () Bool)

(assert (=> b!677926 m!643931))

(declare-fun m!643933 () Bool)

(assert (=> start!60370 m!643933))

(declare-fun m!643935 () Bool)

(assert (=> b!677922 m!643935))

(declare-fun m!643937 () Bool)

(assert (=> b!677923 m!643937))

(declare-fun m!643939 () Bool)

(assert (=> b!677925 m!643939))

(assert (=> b!677928 m!643927))

(push 1)

(assert (not b!677922))

(assert (not b!677923))

(assert (not b!677926))

(assert (not start!60370))

(assert (not b!677928))

(assert (not b!677925))

(assert (not b!677924))

(assert (not b!677929))

(check-sat)

(pop 1)

