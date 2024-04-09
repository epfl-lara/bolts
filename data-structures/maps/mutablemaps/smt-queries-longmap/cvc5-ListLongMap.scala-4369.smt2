; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60258 () Bool)

(assert start!60258)

(declare-fun b!674875 () Bool)

(declare-fun res!441478 () Bool)

(declare-fun e!385132 () Bool)

(assert (=> b!674875 (=> (not res!441478) (not e!385132))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!674875 (= res!441478 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!674876 () Bool)

(declare-fun res!441484 () Bool)

(assert (=> b!674876 (=> (not res!441484) (not e!385132))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!674876 (= res!441484 (validKeyInArray!0 k!2843))))

(declare-fun b!674877 () Bool)

(assert (=> b!674877 (= e!385132 false)))

(declare-fun lt!312648 () Bool)

(declare-datatypes ((array!39261 0))(
  ( (array!39262 (arr!18819 (Array (_ BitVec 32) (_ BitVec 64))) (size!19183 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39261)

(declare-datatypes ((List!12913 0))(
  ( (Nil!12910) (Cons!12909 (h!13954 (_ BitVec 64)) (t!19149 List!12913)) )
))
(declare-fun acc!681 () List!12913)

(declare-fun arrayNoDuplicates!0 (array!39261 (_ BitVec 32) List!12913) Bool)

(assert (=> b!674877 (= lt!312648 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!674878 () Bool)

(declare-fun res!441486 () Bool)

(assert (=> b!674878 (=> (not res!441486) (not e!385132))))

(declare-fun e!385135 () Bool)

(assert (=> b!674878 (= res!441486 e!385135)))

(declare-fun res!441491 () Bool)

(assert (=> b!674878 (=> res!441491 e!385135)))

(declare-fun e!385129 () Bool)

(assert (=> b!674878 (= res!441491 e!385129)))

(declare-fun res!441492 () Bool)

(assert (=> b!674878 (=> (not res!441492) (not e!385129))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!674878 (= res!441492 (bvsgt from!3004 i!1382))))

(declare-fun b!674880 () Bool)

(declare-fun res!441494 () Bool)

(assert (=> b!674880 (=> (not res!441494) (not e!385132))))

(declare-fun arrayContainsKey!0 (array!39261 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!674880 (= res!441494 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!674881 () Bool)

(declare-fun res!441487 () Bool)

(assert (=> b!674881 (=> (not res!441487) (not e!385132))))

(assert (=> b!674881 (= res!441487 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19183 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!674882 () Bool)

(declare-fun contains!3456 (List!12913 (_ BitVec 64)) Bool)

(assert (=> b!674882 (= e!385129 (contains!3456 acc!681 k!2843))))

(declare-fun b!674883 () Bool)

(declare-fun res!441477 () Bool)

(assert (=> b!674883 (=> (not res!441477) (not e!385132))))

(assert (=> b!674883 (= res!441477 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19183 a!3626))))))

(declare-fun b!674884 () Bool)

(declare-fun e!385128 () Bool)

(assert (=> b!674884 (= e!385128 (not (contains!3456 acc!681 k!2843)))))

(declare-fun b!674885 () Bool)

(declare-fun res!441479 () Bool)

(assert (=> b!674885 (=> (not res!441479) (not e!385132))))

(assert (=> b!674885 (= res!441479 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12910))))

(declare-fun b!674886 () Bool)

(declare-fun e!385134 () Bool)

(assert (=> b!674886 (= e!385134 (not (contains!3456 acc!681 k!2843)))))

(declare-fun b!674887 () Bool)

(declare-fun res!441482 () Bool)

(assert (=> b!674887 (=> (not res!441482) (not e!385132))))

(assert (=> b!674887 (= res!441482 (not (contains!3456 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674888 () Bool)

(declare-fun res!441483 () Bool)

(assert (=> b!674888 (=> (not res!441483) (not e!385132))))

(assert (=> b!674888 (= res!441483 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!674889 () Bool)

(declare-fun e!385133 () Bool)

(assert (=> b!674889 (= e!385133 e!385134)))

(declare-fun res!441490 () Bool)

(assert (=> b!674889 (=> (not res!441490) (not e!385134))))

(assert (=> b!674889 (= res!441490 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!674890 () Bool)

(declare-fun res!441485 () Bool)

(assert (=> b!674890 (=> (not res!441485) (not e!385132))))

(assert (=> b!674890 (= res!441485 (not (validKeyInArray!0 (select (arr!18819 a!3626) from!3004))))))

(declare-fun b!674891 () Bool)

(declare-fun res!441480 () Bool)

(assert (=> b!674891 (=> (not res!441480) (not e!385132))))

(declare-fun noDuplicate!703 (List!12913) Bool)

(assert (=> b!674891 (= res!441480 (noDuplicate!703 acc!681))))

(declare-fun b!674892 () Bool)

(declare-fun res!441476 () Bool)

(assert (=> b!674892 (=> (not res!441476) (not e!385132))))

(assert (=> b!674892 (= res!441476 (not (contains!3456 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674879 () Bool)

(assert (=> b!674879 (= e!385135 e!385128)))

(declare-fun res!441489 () Bool)

(assert (=> b!674879 (=> (not res!441489) (not e!385128))))

(assert (=> b!674879 (= res!441489 (bvsle from!3004 i!1382))))

(declare-fun res!441488 () Bool)

(assert (=> start!60258 (=> (not res!441488) (not e!385132))))

(assert (=> start!60258 (= res!441488 (and (bvslt (size!19183 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19183 a!3626))))))

(assert (=> start!60258 e!385132))

(assert (=> start!60258 true))

(declare-fun array_inv!14593 (array!39261) Bool)

(assert (=> start!60258 (array_inv!14593 a!3626)))

(declare-fun b!674893 () Bool)

(declare-fun res!441481 () Bool)

(assert (=> b!674893 (=> (not res!441481) (not e!385132))))

(assert (=> b!674893 (= res!441481 e!385133)))

(declare-fun res!441493 () Bool)

(assert (=> b!674893 (=> res!441493 e!385133)))

(declare-fun e!385131 () Bool)

(assert (=> b!674893 (= res!441493 e!385131)))

(declare-fun res!441475 () Bool)

(assert (=> b!674893 (=> (not res!441475) (not e!385131))))

(assert (=> b!674893 (= res!441475 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!674894 () Bool)

(assert (=> b!674894 (= e!385131 (contains!3456 acc!681 k!2843))))

(assert (= (and start!60258 res!441488) b!674891))

(assert (= (and b!674891 res!441480) b!674892))

(assert (= (and b!674892 res!441476) b!674887))

(assert (= (and b!674887 res!441482) b!674878))

(assert (= (and b!674878 res!441492) b!674882))

(assert (= (and b!674878 (not res!441491)) b!674879))

(assert (= (and b!674879 res!441489) b!674884))

(assert (= (and b!674878 res!441486) b!674885))

(assert (= (and b!674885 res!441479) b!674888))

(assert (= (and b!674888 res!441483) b!674883))

(assert (= (and b!674883 res!441477) b!674876))

(assert (= (and b!674876 res!441484) b!674880))

(assert (= (and b!674880 res!441494) b!674881))

(assert (= (and b!674881 res!441487) b!674890))

(assert (= (and b!674890 res!441485) b!674875))

(assert (= (and b!674875 res!441478) b!674893))

(assert (= (and b!674893 res!441475) b!674894))

(assert (= (and b!674893 (not res!441493)) b!674889))

(assert (= (and b!674889 res!441490) b!674886))

(assert (= (and b!674893 res!441481) b!674877))

(declare-fun m!642609 () Bool)

(assert (=> b!674892 m!642609))

(declare-fun m!642611 () Bool)

(assert (=> b!674886 m!642611))

(declare-fun m!642613 () Bool)

(assert (=> b!674885 m!642613))

(declare-fun m!642615 () Bool)

(assert (=> b!674877 m!642615))

(assert (=> b!674894 m!642611))

(declare-fun m!642617 () Bool)

(assert (=> b!674876 m!642617))

(declare-fun m!642619 () Bool)

(assert (=> b!674887 m!642619))

(declare-fun m!642621 () Bool)

(assert (=> start!60258 m!642621))

(declare-fun m!642623 () Bool)

(assert (=> b!674888 m!642623))

(declare-fun m!642625 () Bool)

(assert (=> b!674880 m!642625))

(assert (=> b!674882 m!642611))

(declare-fun m!642627 () Bool)

(assert (=> b!674891 m!642627))

(assert (=> b!674884 m!642611))

(declare-fun m!642629 () Bool)

(assert (=> b!674890 m!642629))

(assert (=> b!674890 m!642629))

(declare-fun m!642631 () Bool)

(assert (=> b!674890 m!642631))

(push 1)

(assert (not b!674880))

(assert (not b!674884))

(assert (not b!674882))

(assert (not b!674885))

(assert (not b!674892))

(assert (not b!674891))

(assert (not start!60258))

(assert (not b!674888))

(assert (not b!674887))

(assert (not b!674894))

(assert (not b!674886))

(assert (not b!674877))

(assert (not b!674890))

(assert (not b!674876))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

