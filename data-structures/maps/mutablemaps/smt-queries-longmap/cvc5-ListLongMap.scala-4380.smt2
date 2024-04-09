; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60324 () Bool)

(assert start!60324)

(declare-fun b!676857 () Bool)

(declare-fun e!385924 () Bool)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((array!39327 0))(
  ( (array!39328 (arr!18852 (Array (_ BitVec 32) (_ BitVec 64))) (size!19216 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39327)

(assert (=> b!676857 (= e!385924 (not (bvsle from!3004 (size!19216 a!3626))))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((List!12946 0))(
  ( (Nil!12943) (Cons!12942 (h!13987 (_ BitVec 64)) (t!19182 List!12946)) )
))
(declare-fun acc!681 () List!12946)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayNoDuplicates!0 (array!39327 (_ BitVec 32) List!12946) Bool)

(assert (=> b!676857 (arrayNoDuplicates!0 (array!39328 (store (arr!18852 a!3626) i!1382 k!2843) (size!19216 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-datatypes ((Unit!23740 0))(
  ( (Unit!23741) )
))
(declare-fun lt!312747 () Unit!23740)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39327 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12946) Unit!23740)

(assert (=> b!676857 (= lt!312747 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!676858 () Bool)

(declare-fun res!443461 () Bool)

(assert (=> b!676858 (=> (not res!443461) (not e!385924))))

(assert (=> b!676858 (= res!443461 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12943))))

(declare-fun b!676859 () Bool)

(declare-fun e!385926 () Bool)

(declare-fun e!385923 () Bool)

(assert (=> b!676859 (= e!385926 e!385923)))

(declare-fun res!443459 () Bool)

(assert (=> b!676859 (=> (not res!443459) (not e!385923))))

(assert (=> b!676859 (= res!443459 (bvsle from!3004 i!1382))))

(declare-fun b!676860 () Bool)

(declare-fun contains!3489 (List!12946 (_ BitVec 64)) Bool)

(assert (=> b!676860 (= e!385923 (not (contains!3489 acc!681 k!2843)))))

(declare-fun b!676861 () Bool)

(declare-fun e!385920 () Bool)

(declare-fun e!385922 () Bool)

(assert (=> b!676861 (= e!385920 e!385922)))

(declare-fun res!443477 () Bool)

(assert (=> b!676861 (=> (not res!443477) (not e!385922))))

(assert (=> b!676861 (= res!443477 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!676862 () Bool)

(declare-fun res!443463 () Bool)

(assert (=> b!676862 (=> (not res!443463) (not e!385924))))

(assert (=> b!676862 (= res!443463 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!676863 () Bool)

(declare-fun e!385925 () Bool)

(assert (=> b!676863 (= e!385925 (contains!3489 acc!681 k!2843))))

(declare-fun b!676864 () Bool)

(declare-fun res!443471 () Bool)

(assert (=> b!676864 (=> (not res!443471) (not e!385924))))

(assert (=> b!676864 (= res!443471 e!385920)))

(declare-fun res!443468 () Bool)

(assert (=> b!676864 (=> res!443468 e!385920)))

(declare-fun e!385927 () Bool)

(assert (=> b!676864 (= res!443468 e!385927)))

(declare-fun res!443475 () Bool)

(assert (=> b!676864 (=> (not res!443475) (not e!385927))))

(assert (=> b!676864 (= res!443475 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!676865 () Bool)

(declare-fun res!443473 () Bool)

(assert (=> b!676865 (=> (not res!443473) (not e!385924))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!676865 (= res!443473 (validKeyInArray!0 k!2843))))

(declare-fun b!676866 () Bool)

(assert (=> b!676866 (= e!385922 (not (contains!3489 acc!681 k!2843)))))

(declare-fun b!676867 () Bool)

(declare-fun res!443474 () Bool)

(assert (=> b!676867 (=> (not res!443474) (not e!385924))))

(assert (=> b!676867 (= res!443474 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!676868 () Bool)

(declare-fun res!443464 () Bool)

(assert (=> b!676868 (=> (not res!443464) (not e!385924))))

(assert (=> b!676868 (= res!443464 (not (validKeyInArray!0 (select (arr!18852 a!3626) from!3004))))))

(declare-fun b!676870 () Bool)

(declare-fun res!443470 () Bool)

(assert (=> b!676870 (=> (not res!443470) (not e!385924))))

(assert (=> b!676870 (= res!443470 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!676871 () Bool)

(declare-fun res!443469 () Bool)

(assert (=> b!676871 (=> (not res!443469) (not e!385924))))

(declare-fun noDuplicate!736 (List!12946) Bool)

(assert (=> b!676871 (= res!443469 (noDuplicate!736 acc!681))))

(declare-fun b!676872 () Bool)

(declare-fun res!443462 () Bool)

(assert (=> b!676872 (=> (not res!443462) (not e!385924))))

(assert (=> b!676872 (= res!443462 (not (contains!3489 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676873 () Bool)

(declare-fun res!443465 () Bool)

(assert (=> b!676873 (=> (not res!443465) (not e!385924))))

(assert (=> b!676873 (= res!443465 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19216 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!676874 () Bool)

(declare-fun res!443467 () Bool)

(assert (=> b!676874 (=> (not res!443467) (not e!385924))))

(assert (=> b!676874 (= res!443467 (not (contains!3489 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676875 () Bool)

(assert (=> b!676875 (= e!385927 (contains!3489 acc!681 k!2843))))

(declare-fun b!676876 () Bool)

(declare-fun res!443476 () Bool)

(assert (=> b!676876 (=> (not res!443476) (not e!385924))))

(assert (=> b!676876 (= res!443476 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19216 a!3626))))))

(declare-fun b!676877 () Bool)

(declare-fun res!443466 () Bool)

(assert (=> b!676877 (=> (not res!443466) (not e!385924))))

(declare-fun arrayContainsKey!0 (array!39327 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!676877 (= res!443466 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!676869 () Bool)

(declare-fun res!443472 () Bool)

(assert (=> b!676869 (=> (not res!443472) (not e!385924))))

(assert (=> b!676869 (= res!443472 e!385926)))

(declare-fun res!443460 () Bool)

(assert (=> b!676869 (=> res!443460 e!385926)))

(assert (=> b!676869 (= res!443460 e!385925)))

(declare-fun res!443457 () Bool)

(assert (=> b!676869 (=> (not res!443457) (not e!385925))))

(assert (=> b!676869 (= res!443457 (bvsgt from!3004 i!1382))))

(declare-fun res!443458 () Bool)

(assert (=> start!60324 (=> (not res!443458) (not e!385924))))

(assert (=> start!60324 (= res!443458 (and (bvslt (size!19216 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19216 a!3626))))))

(assert (=> start!60324 e!385924))

(assert (=> start!60324 true))

(declare-fun array_inv!14626 (array!39327) Bool)

(assert (=> start!60324 (array_inv!14626 a!3626)))

(assert (= (and start!60324 res!443458) b!676871))

(assert (= (and b!676871 res!443469) b!676874))

(assert (= (and b!676874 res!443467) b!676872))

(assert (= (and b!676872 res!443462) b!676869))

(assert (= (and b!676869 res!443457) b!676863))

(assert (= (and b!676869 (not res!443460)) b!676859))

(assert (= (and b!676859 res!443459) b!676860))

(assert (= (and b!676869 res!443472) b!676858))

(assert (= (and b!676858 res!443461) b!676870))

(assert (= (and b!676870 res!443470) b!676876))

(assert (= (and b!676876 res!443476) b!676865))

(assert (= (and b!676865 res!443473) b!676877))

(assert (= (and b!676877 res!443466) b!676873))

(assert (= (and b!676873 res!443465) b!676868))

(assert (= (and b!676868 res!443464) b!676867))

(assert (= (and b!676867 res!443474) b!676864))

(assert (= (and b!676864 res!443475) b!676875))

(assert (= (and b!676864 (not res!443468)) b!676861))

(assert (= (and b!676861 res!443477) b!676866))

(assert (= (and b!676864 res!443471) b!676862))

(assert (= (and b!676862 res!443463) b!676857))

(declare-fun m!643401 () Bool)

(assert (=> b!676875 m!643401))

(declare-fun m!643403 () Bool)

(assert (=> b!676865 m!643403))

(declare-fun m!643405 () Bool)

(assert (=> b!676858 m!643405))

(declare-fun m!643407 () Bool)

(assert (=> b!676871 m!643407))

(declare-fun m!643409 () Bool)

(assert (=> b!676870 m!643409))

(declare-fun m!643411 () Bool)

(assert (=> b!676874 m!643411))

(declare-fun m!643413 () Bool)

(assert (=> b!676862 m!643413))

(assert (=> b!676860 m!643401))

(declare-fun m!643415 () Bool)

(assert (=> b!676872 m!643415))

(assert (=> b!676866 m!643401))

(declare-fun m!643417 () Bool)

(assert (=> b!676857 m!643417))

(declare-fun m!643419 () Bool)

(assert (=> b!676857 m!643419))

(declare-fun m!643421 () Bool)

(assert (=> b!676857 m!643421))

(assert (=> b!676863 m!643401))

(declare-fun m!643423 () Bool)

(assert (=> b!676877 m!643423))

(declare-fun m!643425 () Bool)

(assert (=> start!60324 m!643425))

(declare-fun m!643427 () Bool)

(assert (=> b!676868 m!643427))

(assert (=> b!676868 m!643427))

(declare-fun m!643429 () Bool)

(assert (=> b!676868 m!643429))

(push 1)

(assert (not b!676863))

(assert (not b!676870))

(assert (not b!676874))

(assert (not b!676868))

(assert (not b!676872))

(assert (not b!676862))

(assert (not b!676871))

(assert (not b!676877))

(assert (not b!676860))

(assert (not b!676866))

(assert (not start!60324))

(assert (not b!676857))

(assert (not b!676858))

(assert (not b!676865))

(assert (not b!676875))

(check-sat)

(pop 1)

(push 1)

(check-sat)

