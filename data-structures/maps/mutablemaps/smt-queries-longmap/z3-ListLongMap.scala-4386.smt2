; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60362 () Bool)

(assert start!60362)

(declare-fun b!677814 () Bool)

(declare-fun res!444416 () Bool)

(declare-fun e!386307 () Bool)

(assert (=> b!677814 (=> (not res!444416) (not e!386307))))

(declare-datatypes ((List!12965 0))(
  ( (Nil!12962) (Cons!12961 (h!14006 (_ BitVec 64)) (t!19201 List!12965)) )
))
(declare-fun acc!681 () List!12965)

(declare-fun contains!3508 (List!12965 (_ BitVec 64)) Bool)

(assert (=> b!677814 (= res!444416 (not (contains!3508 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677815 () Bool)

(declare-fun e!386309 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!677815 (= e!386309 (not (contains!3508 acc!681 k0!2843)))))

(declare-fun b!677816 () Bool)

(declare-fun e!386310 () Bool)

(assert (=> b!677816 (= e!386310 e!386309)))

(declare-fun res!444422 () Bool)

(assert (=> b!677816 (=> (not res!444422) (not e!386309))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!677816 (= res!444422 (bvsle from!3004 i!1382))))

(declare-fun b!677817 () Bool)

(declare-fun res!444420 () Bool)

(assert (=> b!677817 (=> (not res!444420) (not e!386307))))

(declare-datatypes ((array!39365 0))(
  ( (array!39366 (arr!18871 (Array (_ BitVec 32) (_ BitVec 64))) (size!19235 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39365)

(declare-fun arrayNoDuplicates!0 (array!39365 (_ BitVec 32) List!12965) Bool)

(assert (=> b!677817 (= res!444420 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12962))))

(declare-fun b!677818 () Bool)

(declare-fun res!444418 () Bool)

(assert (=> b!677818 (=> (not res!444418) (not e!386307))))

(assert (=> b!677818 (= res!444418 (not (contains!3508 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677819 () Bool)

(declare-fun res!444414 () Bool)

(assert (=> b!677819 (=> (not res!444414) (not e!386307))))

(assert (=> b!677819 (= res!444414 e!386310)))

(declare-fun res!444421 () Bool)

(assert (=> b!677819 (=> res!444421 e!386310)))

(declare-fun e!386308 () Bool)

(assert (=> b!677819 (= res!444421 e!386308)))

(declare-fun res!444417 () Bool)

(assert (=> b!677819 (=> (not res!444417) (not e!386308))))

(assert (=> b!677819 (= res!444417 (bvsgt from!3004 i!1382))))

(declare-fun res!444419 () Bool)

(assert (=> start!60362 (=> (not res!444419) (not e!386307))))

(assert (=> start!60362 (= res!444419 (and (bvslt (size!19235 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19235 a!3626))))))

(assert (=> start!60362 e!386307))

(assert (=> start!60362 true))

(declare-fun array_inv!14645 (array!39365) Bool)

(assert (=> start!60362 (array_inv!14645 a!3626)))

(declare-fun b!677820 () Bool)

(assert (=> b!677820 (= e!386308 (contains!3508 acc!681 k0!2843))))

(declare-fun b!677821 () Bool)

(assert (=> b!677821 (= e!386307 false)))

(declare-fun lt!312795 () Bool)

(assert (=> b!677821 (= lt!312795 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!677822 () Bool)

(declare-fun res!444415 () Bool)

(assert (=> b!677822 (=> (not res!444415) (not e!386307))))

(declare-fun noDuplicate!755 (List!12965) Bool)

(assert (=> b!677822 (= res!444415 (noDuplicate!755 acc!681))))

(assert (= (and start!60362 res!444419) b!677822))

(assert (= (and b!677822 res!444415) b!677814))

(assert (= (and b!677814 res!444416) b!677818))

(assert (= (and b!677818 res!444418) b!677819))

(assert (= (and b!677819 res!444417) b!677820))

(assert (= (and b!677819 (not res!444421)) b!677816))

(assert (= (and b!677816 res!444422) b!677815))

(assert (= (and b!677819 res!444414) b!677817))

(assert (= (and b!677817 res!444420) b!677821))

(declare-fun m!643871 () Bool)

(assert (=> b!677822 m!643871))

(declare-fun m!643873 () Bool)

(assert (=> b!677820 m!643873))

(declare-fun m!643875 () Bool)

(assert (=> b!677817 m!643875))

(declare-fun m!643877 () Bool)

(assert (=> b!677814 m!643877))

(assert (=> b!677815 m!643873))

(declare-fun m!643879 () Bool)

(assert (=> start!60362 m!643879))

(declare-fun m!643881 () Bool)

(assert (=> b!677818 m!643881))

(declare-fun m!643883 () Bool)

(assert (=> b!677821 m!643883))

(check-sat (not b!677815) (not start!60362) (not b!677814) (not b!677817) (not b!677818) (not b!677822) (not b!677821) (not b!677820))
(check-sat)
