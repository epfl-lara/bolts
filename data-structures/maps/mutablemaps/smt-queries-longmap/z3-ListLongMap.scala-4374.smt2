; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60290 () Bool)

(assert start!60290)

(declare-fun b!675835 () Bool)

(declare-fun res!442435 () Bool)

(declare-fun e!385514 () Bool)

(assert (=> b!675835 (=> (not res!442435) (not e!385514))))

(declare-datatypes ((List!12929 0))(
  ( (Nil!12926) (Cons!12925 (h!13970 (_ BitVec 64)) (t!19165 List!12929)) )
))
(declare-fun acc!681 () List!12929)

(declare-fun contains!3472 (List!12929 (_ BitVec 64)) Bool)

(assert (=> b!675835 (= res!442435 (not (contains!3472 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!675836 () Bool)

(declare-fun res!442446 () Bool)

(assert (=> b!675836 (=> (not res!442446) (not e!385514))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39293 0))(
  ( (array!39294 (arr!18835 (Array (_ BitVec 32) (_ BitVec 64))) (size!19199 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39293)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!675836 (= res!442446 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19199 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!675837 () Bool)

(declare-fun res!442450 () Bool)

(assert (=> b!675837 (=> (not res!442450) (not e!385514))))

(assert (=> b!675837 (= res!442450 (not (contains!3472 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!675838 () Bool)

(declare-fun e!385513 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!675838 (= e!385513 (contains!3472 acc!681 k0!2843))))

(declare-fun b!675839 () Bool)

(declare-fun res!442439 () Bool)

(assert (=> b!675839 (=> (not res!442439) (not e!385514))))

(declare-fun arrayNoDuplicates!0 (array!39293 (_ BitVec 32) List!12929) Bool)

(assert (=> b!675839 (= res!442439 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!675840 () Bool)

(declare-fun res!442443 () Bool)

(assert (=> b!675840 (=> (not res!442443) (not e!385514))))

(assert (=> b!675840 (= res!442443 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!675841 () Bool)

(declare-fun res!442444 () Bool)

(assert (=> b!675841 (=> (not res!442444) (not e!385514))))

(declare-fun arrayContainsKey!0 (array!39293 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!675841 (= res!442444 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!675842 () Bool)

(declare-fun e!385512 () Bool)

(declare-fun e!385519 () Bool)

(assert (=> b!675842 (= e!385512 e!385519)))

(declare-fun res!442448 () Bool)

(assert (=> b!675842 (=> (not res!442448) (not e!385519))))

(assert (=> b!675842 (= res!442448 (bvsle from!3004 i!1382))))

(declare-fun b!675843 () Bool)

(declare-fun e!385518 () Bool)

(assert (=> b!675843 (= e!385518 (not (contains!3472 acc!681 k0!2843)))))

(declare-fun b!675844 () Bool)

(declare-fun e!385516 () Bool)

(assert (=> b!675844 (= e!385516 e!385518)))

(declare-fun res!442451 () Bool)

(assert (=> b!675844 (=> (not res!442451) (not e!385518))))

(assert (=> b!675844 (= res!442451 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675845 () Bool)

(declare-fun res!442452 () Bool)

(assert (=> b!675845 (=> (not res!442452) (not e!385514))))

(assert (=> b!675845 (= res!442452 e!385516)))

(declare-fun res!442438 () Bool)

(assert (=> b!675845 (=> res!442438 e!385516)))

(assert (=> b!675845 (= res!442438 e!385513)))

(declare-fun res!442440 () Bool)

(assert (=> b!675845 (=> (not res!442440) (not e!385513))))

(assert (=> b!675845 (= res!442440 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675846 () Bool)

(assert (=> b!675846 (= e!385514 false)))

(declare-fun lt!312696 () Bool)

(assert (=> b!675846 (= lt!312696 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!675847 () Bool)

(declare-fun res!442447 () Bool)

(assert (=> b!675847 (=> (not res!442447) (not e!385514))))

(assert (=> b!675847 (= res!442447 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12926))))

(declare-fun res!442454 () Bool)

(assert (=> start!60290 (=> (not res!442454) (not e!385514))))

(assert (=> start!60290 (= res!442454 (and (bvslt (size!19199 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19199 a!3626))))))

(assert (=> start!60290 e!385514))

(assert (=> start!60290 true))

(declare-fun array_inv!14609 (array!39293) Bool)

(assert (=> start!60290 (array_inv!14609 a!3626)))

(declare-fun b!675848 () Bool)

(declare-fun res!442436 () Bool)

(assert (=> b!675848 (=> (not res!442436) (not e!385514))))

(assert (=> b!675848 (= res!442436 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19199 a!3626))))))

(declare-fun b!675849 () Bool)

(declare-fun res!442437 () Bool)

(assert (=> b!675849 (=> (not res!442437) (not e!385514))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!675849 (= res!442437 (validKeyInArray!0 k0!2843))))

(declare-fun b!675850 () Bool)

(declare-fun res!442442 () Bool)

(assert (=> b!675850 (=> (not res!442442) (not e!385514))))

(assert (=> b!675850 (= res!442442 e!385512)))

(declare-fun res!442449 () Bool)

(assert (=> b!675850 (=> res!442449 e!385512)))

(declare-fun e!385517 () Bool)

(assert (=> b!675850 (= res!442449 e!385517)))

(declare-fun res!442445 () Bool)

(assert (=> b!675850 (=> (not res!442445) (not e!385517))))

(assert (=> b!675850 (= res!442445 (bvsgt from!3004 i!1382))))

(declare-fun b!675851 () Bool)

(assert (=> b!675851 (= e!385519 (not (contains!3472 acc!681 k0!2843)))))

(declare-fun b!675852 () Bool)

(declare-fun res!442441 () Bool)

(assert (=> b!675852 (=> (not res!442441) (not e!385514))))

(assert (=> b!675852 (= res!442441 (not (validKeyInArray!0 (select (arr!18835 a!3626) from!3004))))))

(declare-fun b!675853 () Bool)

(assert (=> b!675853 (= e!385517 (contains!3472 acc!681 k0!2843))))

(declare-fun b!675854 () Bool)

(declare-fun res!442453 () Bool)

(assert (=> b!675854 (=> (not res!442453) (not e!385514))))

(declare-fun noDuplicate!719 (List!12929) Bool)

(assert (=> b!675854 (= res!442453 (noDuplicate!719 acc!681))))

(assert (= (and start!60290 res!442454) b!675854))

(assert (= (and b!675854 res!442453) b!675837))

(assert (= (and b!675837 res!442450) b!675835))

(assert (= (and b!675835 res!442435) b!675850))

(assert (= (and b!675850 res!442445) b!675853))

(assert (= (and b!675850 (not res!442449)) b!675842))

(assert (= (and b!675842 res!442448) b!675851))

(assert (= (and b!675850 res!442442) b!675847))

(assert (= (and b!675847 res!442447) b!675839))

(assert (= (and b!675839 res!442439) b!675848))

(assert (= (and b!675848 res!442436) b!675849))

(assert (= (and b!675849 res!442437) b!675841))

(assert (= (and b!675841 res!442444) b!675836))

(assert (= (and b!675836 res!442446) b!675852))

(assert (= (and b!675852 res!442441) b!675840))

(assert (= (and b!675840 res!442443) b!675845))

(assert (= (and b!675845 res!442440) b!675838))

(assert (= (and b!675845 (not res!442438)) b!675844))

(assert (= (and b!675844 res!442451) b!675843))

(assert (= (and b!675845 res!442452) b!675846))

(declare-fun m!642993 () Bool)

(assert (=> start!60290 m!642993))

(declare-fun m!642995 () Bool)

(assert (=> b!675851 m!642995))

(declare-fun m!642997 () Bool)

(assert (=> b!675846 m!642997))

(declare-fun m!642999 () Bool)

(assert (=> b!675841 m!642999))

(declare-fun m!643001 () Bool)

(assert (=> b!675835 m!643001))

(declare-fun m!643003 () Bool)

(assert (=> b!675847 m!643003))

(declare-fun m!643005 () Bool)

(assert (=> b!675849 m!643005))

(assert (=> b!675843 m!642995))

(declare-fun m!643007 () Bool)

(assert (=> b!675839 m!643007))

(assert (=> b!675853 m!642995))

(declare-fun m!643009 () Bool)

(assert (=> b!675852 m!643009))

(assert (=> b!675852 m!643009))

(declare-fun m!643011 () Bool)

(assert (=> b!675852 m!643011))

(assert (=> b!675838 m!642995))

(declare-fun m!643013 () Bool)

(assert (=> b!675837 m!643013))

(declare-fun m!643015 () Bool)

(assert (=> b!675854 m!643015))

(check-sat (not b!675852) (not b!675837) (not b!675849) (not b!675847) (not b!675838) (not b!675851) (not b!675835) (not start!60290) (not b!675843) (not b!675854) (not b!675853) (not b!675839) (not b!675846) (not b!675841))
