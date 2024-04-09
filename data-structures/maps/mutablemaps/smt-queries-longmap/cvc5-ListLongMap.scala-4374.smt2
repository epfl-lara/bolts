; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60288 () Bool)

(assert start!60288)

(declare-fun b!675775 () Bool)

(declare-fun e!385492 () Bool)

(declare-datatypes ((List!12928 0))(
  ( (Nil!12925) (Cons!12924 (h!13969 (_ BitVec 64)) (t!19164 List!12928)) )
))
(declare-fun acc!681 () List!12928)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3471 (List!12928 (_ BitVec 64)) Bool)

(assert (=> b!675775 (= e!385492 (contains!3471 acc!681 k!2843))))

(declare-fun b!675776 () Bool)

(declare-fun res!442393 () Bool)

(declare-fun e!385495 () Bool)

(assert (=> b!675776 (=> (not res!442393) (not e!385495))))

(declare-datatypes ((array!39291 0))(
  ( (array!39292 (arr!18834 (Array (_ BitVec 32) (_ BitVec 64))) (size!19198 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39291)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!675776 (= res!442393 (not (validKeyInArray!0 (select (arr!18834 a!3626) from!3004))))))

(declare-fun b!675777 () Bool)

(declare-fun e!385488 () Bool)

(assert (=> b!675777 (= e!385488 (not (contains!3471 acc!681 k!2843)))))

(declare-fun b!675778 () Bool)

(declare-fun res!442394 () Bool)

(assert (=> b!675778 (=> (not res!442394) (not e!385495))))

(declare-fun arrayNoDuplicates!0 (array!39291 (_ BitVec 32) List!12928) Bool)

(assert (=> b!675778 (= res!442394 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!675779 () Bool)

(declare-fun res!442386 () Bool)

(assert (=> b!675779 (=> (not res!442386) (not e!385495))))

(declare-fun noDuplicate!718 (List!12928) Bool)

(assert (=> b!675779 (= res!442386 (noDuplicate!718 acc!681))))

(declare-fun b!675780 () Bool)

(declare-fun e!385489 () Bool)

(assert (=> b!675780 (= e!385489 (not (contains!3471 acc!681 k!2843)))))

(declare-fun b!675781 () Bool)

(declare-fun res!442388 () Bool)

(assert (=> b!675781 (=> (not res!442388) (not e!385495))))

(assert (=> b!675781 (= res!442388 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12925))))

(declare-fun b!675782 () Bool)

(declare-fun res!442380 () Bool)

(assert (=> b!675782 (=> (not res!442380) (not e!385495))))

(assert (=> b!675782 (= res!442380 (not (contains!3471 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!675784 () Bool)

(declare-fun e!385494 () Bool)

(assert (=> b!675784 (= e!385494 e!385488)))

(declare-fun res!442381 () Bool)

(assert (=> b!675784 (=> (not res!442381) (not e!385488))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!675784 (= res!442381 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675785 () Bool)

(declare-fun res!442389 () Bool)

(assert (=> b!675785 (=> (not res!442389) (not e!385495))))

(assert (=> b!675785 (= res!442389 (not (contains!3471 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!675786 () Bool)

(declare-fun res!442378 () Bool)

(assert (=> b!675786 (=> (not res!442378) (not e!385495))))

(declare-fun e!385491 () Bool)

(assert (=> b!675786 (= res!442378 e!385491)))

(declare-fun res!442382 () Bool)

(assert (=> b!675786 (=> res!442382 e!385491)))

(assert (=> b!675786 (= res!442382 e!385492)))

(declare-fun res!442375 () Bool)

(assert (=> b!675786 (=> (not res!442375) (not e!385492))))

(assert (=> b!675786 (= res!442375 (bvsgt from!3004 i!1382))))

(declare-fun b!675787 () Bool)

(assert (=> b!675787 (= e!385495 false)))

(declare-fun lt!312693 () Bool)

(assert (=> b!675787 (= lt!312693 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!675788 () Bool)

(declare-fun res!442383 () Bool)

(assert (=> b!675788 (=> (not res!442383) (not e!385495))))

(assert (=> b!675788 (= res!442383 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!675789 () Bool)

(declare-fun e!385493 () Bool)

(assert (=> b!675789 (= e!385493 (contains!3471 acc!681 k!2843))))

(declare-fun b!675790 () Bool)

(declare-fun res!442387 () Bool)

(assert (=> b!675790 (=> (not res!442387) (not e!385495))))

(assert (=> b!675790 (= res!442387 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19198 a!3626))))))

(declare-fun b!675791 () Bool)

(declare-fun res!442391 () Bool)

(assert (=> b!675791 (=> (not res!442391) (not e!385495))))

(assert (=> b!675791 (= res!442391 (validKeyInArray!0 k!2843))))

(declare-fun b!675792 () Bool)

(assert (=> b!675792 (= e!385491 e!385489)))

(declare-fun res!442390 () Bool)

(assert (=> b!675792 (=> (not res!442390) (not e!385489))))

(assert (=> b!675792 (= res!442390 (bvsle from!3004 i!1382))))

(declare-fun res!442384 () Bool)

(assert (=> start!60288 (=> (not res!442384) (not e!385495))))

(assert (=> start!60288 (= res!442384 (and (bvslt (size!19198 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19198 a!3626))))))

(assert (=> start!60288 e!385495))

(assert (=> start!60288 true))

(declare-fun array_inv!14608 (array!39291) Bool)

(assert (=> start!60288 (array_inv!14608 a!3626)))

(declare-fun b!675783 () Bool)

(declare-fun res!442385 () Bool)

(assert (=> b!675783 (=> (not res!442385) (not e!385495))))

(assert (=> b!675783 (= res!442385 e!385494)))

(declare-fun res!442376 () Bool)

(assert (=> b!675783 (=> res!442376 e!385494)))

(assert (=> b!675783 (= res!442376 e!385493)))

(declare-fun res!442392 () Bool)

(assert (=> b!675783 (=> (not res!442392) (not e!385493))))

(assert (=> b!675783 (= res!442392 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675793 () Bool)

(declare-fun res!442379 () Bool)

(assert (=> b!675793 (=> (not res!442379) (not e!385495))))

(declare-fun arrayContainsKey!0 (array!39291 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!675793 (= res!442379 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!675794 () Bool)

(declare-fun res!442377 () Bool)

(assert (=> b!675794 (=> (not res!442377) (not e!385495))))

(assert (=> b!675794 (= res!442377 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19198 a!3626)) (not (= from!3004 i!1382))))))

(assert (= (and start!60288 res!442384) b!675779))

(assert (= (and b!675779 res!442386) b!675785))

(assert (= (and b!675785 res!442389) b!675782))

(assert (= (and b!675782 res!442380) b!675786))

(assert (= (and b!675786 res!442375) b!675775))

(assert (= (and b!675786 (not res!442382)) b!675792))

(assert (= (and b!675792 res!442390) b!675780))

(assert (= (and b!675786 res!442378) b!675781))

(assert (= (and b!675781 res!442388) b!675778))

(assert (= (and b!675778 res!442394) b!675790))

(assert (= (and b!675790 res!442387) b!675791))

(assert (= (and b!675791 res!442391) b!675793))

(assert (= (and b!675793 res!442379) b!675794))

(assert (= (and b!675794 res!442377) b!675776))

(assert (= (and b!675776 res!442393) b!675788))

(assert (= (and b!675788 res!442383) b!675783))

(assert (= (and b!675783 res!442392) b!675789))

(assert (= (and b!675783 (not res!442376)) b!675784))

(assert (= (and b!675784 res!442381) b!675777))

(assert (= (and b!675783 res!442385) b!675787))

(declare-fun m!642969 () Bool)

(assert (=> b!675776 m!642969))

(assert (=> b!675776 m!642969))

(declare-fun m!642971 () Bool)

(assert (=> b!675776 m!642971))

(declare-fun m!642973 () Bool)

(assert (=> b!675793 m!642973))

(declare-fun m!642975 () Bool)

(assert (=> b!675791 m!642975))

(declare-fun m!642977 () Bool)

(assert (=> b!675780 m!642977))

(declare-fun m!642979 () Bool)

(assert (=> b!675782 m!642979))

(declare-fun m!642981 () Bool)

(assert (=> b!675787 m!642981))

(declare-fun m!642983 () Bool)

(assert (=> start!60288 m!642983))

(assert (=> b!675775 m!642977))

(declare-fun m!642985 () Bool)

(assert (=> b!675785 m!642985))

(assert (=> b!675777 m!642977))

(declare-fun m!642987 () Bool)

(assert (=> b!675778 m!642987))

(assert (=> b!675789 m!642977))

(declare-fun m!642989 () Bool)

(assert (=> b!675781 m!642989))

(declare-fun m!642991 () Bool)

(assert (=> b!675779 m!642991))

(push 1)

(assert (not b!675776))

(assert (not b!675793))

(assert (not b!675778))

(assert (not b!675777))

(assert (not b!675791))

(assert (not b!675779))

(assert (not start!60288))

(assert (not b!675775))

(assert (not b!675782))

(assert (not b!675781))

(assert (not b!675780))

(assert (not b!675785))

(assert (not b!675787))

(assert (not b!675789))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

