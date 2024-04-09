; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60262 () Bool)

(assert start!60262)

(declare-fun b!674995 () Bool)

(declare-fun res!441613 () Bool)

(declare-fun e!385180 () Bool)

(assert (=> b!674995 (=> (not res!441613) (not e!385180))))

(declare-datatypes ((array!39265 0))(
  ( (array!39266 (arr!18821 (Array (_ BitVec 32) (_ BitVec 64))) (size!19185 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39265)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39265 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!674995 (= res!441613 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!674996 () Bool)

(declare-fun res!441610 () Bool)

(assert (=> b!674996 (=> (not res!441610) (not e!385180))))

(declare-datatypes ((List!12915 0))(
  ( (Nil!12912) (Cons!12911 (h!13956 (_ BitVec 64)) (t!19151 List!12915)) )
))
(declare-fun acc!681 () List!12915)

(declare-fun contains!3458 (List!12915 (_ BitVec 64)) Bool)

(assert (=> b!674996 (= res!441610 (not (contains!3458 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674997 () Bool)

(declare-fun res!441595 () Bool)

(assert (=> b!674997 (=> (not res!441595) (not e!385180))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!674997 (= res!441595 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19185 a!3626))))))

(declare-fun b!674998 () Bool)

(declare-fun e!385181 () Bool)

(assert (=> b!674998 (= e!385181 (not (contains!3458 acc!681 k!2843)))))

(declare-fun b!674999 () Bool)

(declare-fun res!441596 () Bool)

(assert (=> b!674999 (=> (not res!441596) (not e!385180))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39265 (_ BitVec 32) List!12915) Bool)

(assert (=> b!674999 (= res!441596 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!675000 () Bool)

(assert (=> b!675000 (= e!385180 false)))

(declare-fun lt!312654 () Bool)

(assert (=> b!675000 (= lt!312654 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!675001 () Bool)

(declare-fun res!441611 () Bool)

(assert (=> b!675001 (=> (not res!441611) (not e!385180))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!675001 (= res!441611 (validKeyInArray!0 k!2843))))

(declare-fun res!441601 () Bool)

(assert (=> start!60262 (=> (not res!441601) (not e!385180))))

(assert (=> start!60262 (= res!441601 (and (bvslt (size!19185 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19185 a!3626))))))

(assert (=> start!60262 e!385180))

(assert (=> start!60262 true))

(declare-fun array_inv!14595 (array!39265) Bool)

(assert (=> start!60262 (array_inv!14595 a!3626)))

(declare-fun b!675002 () Bool)

(declare-fun res!441597 () Bool)

(assert (=> b!675002 (=> (not res!441597) (not e!385180))))

(assert (=> b!675002 (= res!441597 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19185 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!675003 () Bool)

(declare-fun e!385178 () Bool)

(assert (=> b!675003 (= e!385178 (contains!3458 acc!681 k!2843))))

(declare-fun b!675004 () Bool)

(declare-fun e!385177 () Bool)

(assert (=> b!675004 (= e!385177 e!385181)))

(declare-fun res!441602 () Bool)

(assert (=> b!675004 (=> (not res!441602) (not e!385181))))

(assert (=> b!675004 (= res!441602 (bvsle from!3004 i!1382))))

(declare-fun b!675005 () Bool)

(declare-fun res!441604 () Bool)

(assert (=> b!675005 (=> (not res!441604) (not e!385180))))

(declare-fun noDuplicate!705 (List!12915) Bool)

(assert (=> b!675005 (= res!441604 (noDuplicate!705 acc!681))))

(declare-fun b!675006 () Bool)

(declare-fun res!441600 () Bool)

(assert (=> b!675006 (=> (not res!441600) (not e!385180))))

(assert (=> b!675006 (= res!441600 (not (contains!3458 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!675007 () Bool)

(declare-fun e!385179 () Bool)

(assert (=> b!675007 (= e!385179 (not (contains!3458 acc!681 k!2843)))))

(declare-fun b!675008 () Bool)

(declare-fun res!441599 () Bool)

(assert (=> b!675008 (=> (not res!441599) (not e!385180))))

(assert (=> b!675008 (= res!441599 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!675009 () Bool)

(declare-fun res!441607 () Bool)

(assert (=> b!675009 (=> (not res!441607) (not e!385180))))

(assert (=> b!675009 (= res!441607 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12912))))

(declare-fun b!675010 () Bool)

(declare-fun res!441614 () Bool)

(assert (=> b!675010 (=> (not res!441614) (not e!385180))))

(declare-fun e!385182 () Bool)

(assert (=> b!675010 (= res!441614 e!385182)))

(declare-fun res!441609 () Bool)

(assert (=> b!675010 (=> res!441609 e!385182)))

(declare-fun e!385183 () Bool)

(assert (=> b!675010 (= res!441609 e!385183)))

(declare-fun res!441598 () Bool)

(assert (=> b!675010 (=> (not res!441598) (not e!385183))))

(assert (=> b!675010 (= res!441598 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675011 () Bool)

(assert (=> b!675011 (= e!385182 e!385179)))

(declare-fun res!441612 () Bool)

(assert (=> b!675011 (=> (not res!441612) (not e!385179))))

(assert (=> b!675011 (= res!441612 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675012 () Bool)

(assert (=> b!675012 (= e!385183 (contains!3458 acc!681 k!2843))))

(declare-fun b!675013 () Bool)

(declare-fun res!441606 () Bool)

(assert (=> b!675013 (=> (not res!441606) (not e!385180))))

(assert (=> b!675013 (= res!441606 e!385177)))

(declare-fun res!441603 () Bool)

(assert (=> b!675013 (=> res!441603 e!385177)))

(assert (=> b!675013 (= res!441603 e!385178)))

(declare-fun res!441605 () Bool)

(assert (=> b!675013 (=> (not res!441605) (not e!385178))))

(assert (=> b!675013 (= res!441605 (bvsgt from!3004 i!1382))))

(declare-fun b!675014 () Bool)

(declare-fun res!441608 () Bool)

(assert (=> b!675014 (=> (not res!441608) (not e!385180))))

(assert (=> b!675014 (= res!441608 (not (validKeyInArray!0 (select (arr!18821 a!3626) from!3004))))))

(assert (= (and start!60262 res!441601) b!675005))

(assert (= (and b!675005 res!441604) b!675006))

(assert (= (and b!675006 res!441600) b!674996))

(assert (= (and b!674996 res!441610) b!675013))

(assert (= (and b!675013 res!441605) b!675003))

(assert (= (and b!675013 (not res!441603)) b!675004))

(assert (= (and b!675004 res!441602) b!674998))

(assert (= (and b!675013 res!441606) b!675009))

(assert (= (and b!675009 res!441607) b!674999))

(assert (= (and b!674999 res!441596) b!674997))

(assert (= (and b!674997 res!441595) b!675001))

(assert (= (and b!675001 res!441611) b!674995))

(assert (= (and b!674995 res!441613) b!675002))

(assert (= (and b!675002 res!441597) b!675014))

(assert (= (and b!675014 res!441608) b!675008))

(assert (= (and b!675008 res!441599) b!675010))

(assert (= (and b!675010 res!441598) b!675012))

(assert (= (and b!675010 (not res!441609)) b!675011))

(assert (= (and b!675011 res!441612) b!675007))

(assert (= (and b!675010 res!441614) b!675000))

(declare-fun m!642657 () Bool)

(assert (=> b!674996 m!642657))

(declare-fun m!642659 () Bool)

(assert (=> b!675001 m!642659))

(declare-fun m!642661 () Bool)

(assert (=> b!675003 m!642661))

(declare-fun m!642663 () Bool)

(assert (=> b!675005 m!642663))

(declare-fun m!642665 () Bool)

(assert (=> b!675000 m!642665))

(declare-fun m!642667 () Bool)

(assert (=> b!675009 m!642667))

(declare-fun m!642669 () Bool)

(assert (=> b!675014 m!642669))

(assert (=> b!675014 m!642669))

(declare-fun m!642671 () Bool)

(assert (=> b!675014 m!642671))

(declare-fun m!642673 () Bool)

(assert (=> b!674995 m!642673))

(declare-fun m!642675 () Bool)

(assert (=> b!674999 m!642675))

(assert (=> b!674998 m!642661))

(declare-fun m!642677 () Bool)

(assert (=> b!675006 m!642677))

(declare-fun m!642679 () Bool)

(assert (=> start!60262 m!642679))

(assert (=> b!675012 m!642661))

(assert (=> b!675007 m!642661))

(push 1)

(assert (not b!675007))

(assert (not b!674999))

(assert (not start!60262))

(assert (not b!675006))

(assert (not b!675003))

(assert (not b!675000))

(assert (not b!675001))

(assert (not b!675005))

(assert (not b!675012))

(assert (not b!674996))

(assert (not b!675009))

(assert (not b!674998))

(assert (not b!674995))

(assert (not b!675014))

(check-sat)

(pop 1)

