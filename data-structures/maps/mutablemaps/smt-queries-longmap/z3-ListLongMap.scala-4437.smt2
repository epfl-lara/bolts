; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61706 () Bool)

(assert start!61706)

(declare-fun b!689958 () Bool)

(declare-fun res!454537 () Bool)

(declare-fun e!392887 () Bool)

(assert (=> b!689958 (=> (not res!454537) (not e!392887))))

(declare-datatypes ((List!13118 0))(
  ( (Nil!13115) (Cons!13114 (h!14159 (_ BitVec 64)) (t!19393 List!13118)) )
))
(declare-fun acc!681 () List!13118)

(declare-fun noDuplicate!908 (List!13118) Bool)

(assert (=> b!689958 (= res!454537 (noDuplicate!908 acc!681))))

(declare-fun b!689959 () Bool)

(assert (=> b!689959 (= e!392887 false)))

(declare-datatypes ((array!39716 0))(
  ( (array!39717 (arr!19024 (Array (_ BitVec 32) (_ BitVec 64))) (size!19407 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39716)

(declare-fun lt!316350 () Bool)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39716 (_ BitVec 32) List!13118) Bool)

(assert (=> b!689959 (= lt!316350 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!689960 () Bool)

(declare-fun e!392885 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3661 (List!13118 (_ BitVec 64)) Bool)

(assert (=> b!689960 (= e!392885 (not (contains!3661 acc!681 k0!2843)))))

(declare-fun b!689961 () Bool)

(declare-fun e!392886 () Bool)

(assert (=> b!689961 (= e!392886 (contains!3661 acc!681 k0!2843))))

(declare-fun b!689962 () Bool)

(declare-fun res!454538 () Bool)

(assert (=> b!689962 (=> (not res!454538) (not e!392887))))

(declare-fun e!392884 () Bool)

(assert (=> b!689962 (= res!454538 e!392884)))

(declare-fun res!454542 () Bool)

(assert (=> b!689962 (=> res!454542 e!392884)))

(assert (=> b!689962 (= res!454542 e!392886)))

(declare-fun res!454536 () Bool)

(assert (=> b!689962 (=> (not res!454536) (not e!392886))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!689962 (= res!454536 (bvsgt from!3004 i!1382))))

(declare-fun res!454543 () Bool)

(assert (=> start!61706 (=> (not res!454543) (not e!392887))))

(assert (=> start!61706 (= res!454543 (and (bvslt (size!19407 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19407 a!3626))))))

(assert (=> start!61706 e!392887))

(assert (=> start!61706 true))

(declare-fun array_inv!14798 (array!39716) Bool)

(assert (=> start!61706 (array_inv!14798 a!3626)))

(declare-fun b!689963 () Bool)

(declare-fun res!454539 () Bool)

(assert (=> b!689963 (=> (not res!454539) (not e!392887))))

(assert (=> b!689963 (= res!454539 (not (contains!3661 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!689964 () Bool)

(declare-fun res!454541 () Bool)

(assert (=> b!689964 (=> (not res!454541) (not e!392887))))

(assert (=> b!689964 (= res!454541 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13115))))

(declare-fun b!689965 () Bool)

(declare-fun res!454540 () Bool)

(assert (=> b!689965 (=> (not res!454540) (not e!392887))))

(assert (=> b!689965 (= res!454540 (not (contains!3661 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!689966 () Bool)

(assert (=> b!689966 (= e!392884 e!392885)))

(declare-fun res!454544 () Bool)

(assert (=> b!689966 (=> (not res!454544) (not e!392885))))

(assert (=> b!689966 (= res!454544 (bvsle from!3004 i!1382))))

(assert (= (and start!61706 res!454543) b!689958))

(assert (= (and b!689958 res!454537) b!689965))

(assert (= (and b!689965 res!454540) b!689963))

(assert (= (and b!689963 res!454539) b!689962))

(assert (= (and b!689962 res!454536) b!689961))

(assert (= (and b!689962 (not res!454542)) b!689966))

(assert (= (and b!689966 res!454544) b!689960))

(assert (= (and b!689962 res!454538) b!689964))

(assert (= (and b!689964 res!454541) b!689959))

(declare-fun m!653651 () Bool)

(assert (=> b!689963 m!653651))

(declare-fun m!653653 () Bool)

(assert (=> start!61706 m!653653))

(declare-fun m!653655 () Bool)

(assert (=> b!689958 m!653655))

(declare-fun m!653657 () Bool)

(assert (=> b!689961 m!653657))

(assert (=> b!689960 m!653657))

(declare-fun m!653659 () Bool)

(assert (=> b!689959 m!653659))

(declare-fun m!653661 () Bool)

(assert (=> b!689964 m!653661))

(declare-fun m!653663 () Bool)

(assert (=> b!689965 m!653663))

(check-sat (not b!689958) (not b!689960) (not start!61706) (not b!689965) (not b!689963) (not b!689959) (not b!689964) (not b!689961))
(check-sat)
