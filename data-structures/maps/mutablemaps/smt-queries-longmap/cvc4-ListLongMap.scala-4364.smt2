; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60232 () Bool)

(assert start!60232)

(declare-fun b!673837 () Bool)

(declare-fun e!384706 () Bool)

(declare-fun e!384713 () Bool)

(assert (=> b!673837 (= e!384706 e!384713)))

(declare-fun res!440517 () Bool)

(assert (=> b!673837 (=> (not res!440517) (not e!384713))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!673837 (= res!440517 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-datatypes ((List!12900 0))(
  ( (Nil!12897) (Cons!12896 (h!13941 (_ BitVec 64)) (t!19136 List!12900)) )
))
(declare-fun lt!312499 () List!12900)

(declare-datatypes ((array!39235 0))(
  ( (array!39236 (arr!18806 (Array (_ BitVec 32) (_ BitVec 64))) (size!19170 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39235)

(declare-fun acc!681 () List!12900)

(declare-fun $colon$colon!291 (List!12900 (_ BitVec 64)) List!12900)

(assert (=> b!673837 (= lt!312499 ($colon$colon!291 acc!681 (select (arr!18806 a!3626) from!3004)))))

(declare-fun b!673838 () Bool)

(declare-fun res!440516 () Bool)

(declare-fun e!384707 () Bool)

(assert (=> b!673838 (=> (not res!440516) (not e!384707))))

(declare-fun e!384710 () Bool)

(assert (=> b!673838 (= res!440516 e!384710)))

(declare-fun res!440530 () Bool)

(assert (=> b!673838 (=> res!440530 e!384710)))

(declare-fun e!384705 () Bool)

(assert (=> b!673838 (= res!440530 e!384705)))

(declare-fun res!440532 () Bool)

(assert (=> b!673838 (=> (not res!440532) (not e!384705))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!673838 (= res!440532 (bvsgt from!3004 i!1382))))

(declare-fun b!673839 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3443 (List!12900 (_ BitVec 64)) Bool)

(assert (=> b!673839 (= e!384705 (contains!3443 acc!681 k!2843))))

(declare-fun b!673840 () Bool)

(declare-fun res!440529 () Bool)

(assert (=> b!673840 (=> (not res!440529) (not e!384713))))

(declare-fun e!384714 () Bool)

(assert (=> b!673840 (= res!440529 e!384714)))

(declare-fun res!440534 () Bool)

(assert (=> b!673840 (=> res!440534 e!384714)))

(declare-fun e!384712 () Bool)

(assert (=> b!673840 (= res!440534 e!384712)))

(declare-fun res!440520 () Bool)

(assert (=> b!673840 (=> (not res!440520) (not e!384712))))

(assert (=> b!673840 (= res!440520 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!673841 () Bool)

(declare-fun res!440518 () Bool)

(assert (=> b!673841 (=> (not res!440518) (not e!384707))))

(declare-fun arrayNoDuplicates!0 (array!39235 (_ BitVec 32) List!12900) Bool)

(assert (=> b!673841 (= res!440518 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!673842 () Bool)

(declare-fun res!440533 () Bool)

(assert (=> b!673842 (=> (not res!440533) (not e!384707))))

(assert (=> b!673842 (= res!440533 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19170 a!3626))))))

(declare-fun res!440521 () Bool)

(assert (=> start!60232 (=> (not res!440521) (not e!384707))))

(assert (=> start!60232 (= res!440521 (and (bvslt (size!19170 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19170 a!3626))))))

(assert (=> start!60232 e!384707))

(assert (=> start!60232 true))

(declare-fun array_inv!14580 (array!39235) Bool)

(assert (=> start!60232 (array_inv!14580 a!3626)))

(declare-fun b!673843 () Bool)

(declare-fun res!440523 () Bool)

(assert (=> b!673843 (=> (not res!440523) (not e!384707))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!673843 (= res!440523 (validKeyInArray!0 (select (arr!18806 a!3626) from!3004)))))

(declare-fun b!673844 () Bool)

(declare-fun e!384708 () Bool)

(assert (=> b!673844 (= e!384714 e!384708)))

(declare-fun res!440519 () Bool)

(assert (=> b!673844 (=> (not res!440519) (not e!384708))))

(assert (=> b!673844 (= res!440519 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!673845 () Bool)

(declare-fun res!440525 () Bool)

(assert (=> b!673845 (=> (not res!440525) (not e!384707))))

(assert (=> b!673845 (= res!440525 (not (contains!3443 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673846 () Bool)

(declare-fun res!440531 () Bool)

(assert (=> b!673846 (=> (not res!440531) (not e!384707))))

(assert (=> b!673846 (= res!440531 (not (contains!3443 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673847 () Bool)

(declare-fun res!440528 () Bool)

(assert (=> b!673847 (=> (not res!440528) (not e!384707))))

(declare-fun noDuplicate!690 (List!12900) Bool)

(assert (=> b!673847 (= res!440528 (noDuplicate!690 acc!681))))

(declare-fun b!673848 () Bool)

(assert (=> b!673848 (= e!384708 (not (contains!3443 lt!312499 k!2843)))))

(declare-fun b!673849 () Bool)

(assert (=> b!673849 (= e!384712 (contains!3443 lt!312499 k!2843))))

(declare-fun b!673850 () Bool)

(declare-fun res!440511 () Bool)

(assert (=> b!673850 (=> (not res!440511) (not e!384707))))

(assert (=> b!673850 (= res!440511 (validKeyInArray!0 k!2843))))

(declare-fun b!673851 () Bool)

(declare-fun res!440527 () Bool)

(assert (=> b!673851 (=> (not res!440527) (not e!384713))))

(assert (=> b!673851 (= res!440527 (not (contains!3443 lt!312499 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673852 () Bool)

(declare-fun e!384709 () Bool)

(assert (=> b!673852 (= e!384710 e!384709)))

(declare-fun res!440515 () Bool)

(assert (=> b!673852 (=> (not res!440515) (not e!384709))))

(assert (=> b!673852 (= res!440515 (bvsle from!3004 i!1382))))

(declare-fun b!673853 () Bool)

(declare-fun res!440514 () Bool)

(assert (=> b!673853 (=> (not res!440514) (not e!384713))))

(assert (=> b!673853 (= res!440514 (not (contains!3443 lt!312499 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673854 () Bool)

(assert (=> b!673854 (= e!384707 e!384706)))

(declare-fun res!440522 () Bool)

(assert (=> b!673854 (=> (not res!440522) (not e!384706))))

(assert (=> b!673854 (= res!440522 (not (= (select (arr!18806 a!3626) from!3004) k!2843)))))

(declare-datatypes ((Unit!23688 0))(
  ( (Unit!23689) )
))
(declare-fun lt!312501 () Unit!23688)

(declare-fun e!384715 () Unit!23688)

(assert (=> b!673854 (= lt!312501 e!384715)))

(declare-fun c!77030 () Bool)

(assert (=> b!673854 (= c!77030 (= (select (arr!18806 a!3626) from!3004) k!2843))))

(declare-fun b!673855 () Bool)

(assert (=> b!673855 (= e!384713 false)))

(declare-fun lt!312500 () Bool)

(assert (=> b!673855 (= lt!312500 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312499))))

(declare-fun b!673856 () Bool)

(assert (=> b!673856 (= e!384709 (not (contains!3443 acc!681 k!2843)))))

(declare-fun b!673857 () Bool)

(declare-fun res!440526 () Bool)

(assert (=> b!673857 (=> (not res!440526) (not e!384707))))

(declare-fun arrayContainsKey!0 (array!39235 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!673857 (= res!440526 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!673858 () Bool)

(declare-fun Unit!23690 () Unit!23688)

(assert (=> b!673858 (= e!384715 Unit!23690)))

(declare-fun b!673859 () Bool)

(declare-fun res!440513 () Bool)

(assert (=> b!673859 (=> (not res!440513) (not e!384707))))

(assert (=> b!673859 (= res!440513 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12897))))

(declare-fun b!673860 () Bool)

(declare-fun res!440512 () Bool)

(assert (=> b!673860 (=> (not res!440512) (not e!384713))))

(assert (=> b!673860 (= res!440512 (noDuplicate!690 lt!312499))))

(declare-fun b!673861 () Bool)

(declare-fun res!440524 () Bool)

(assert (=> b!673861 (=> (not res!440524) (not e!384707))))

(assert (=> b!673861 (= res!440524 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19170 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!673862 () Bool)

(declare-fun Unit!23691 () Unit!23688)

(assert (=> b!673862 (= e!384715 Unit!23691)))

(assert (=> b!673862 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312498 () Unit!23688)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39235 (_ BitVec 64) (_ BitVec 32)) Unit!23688)

(assert (=> b!673862 (= lt!312498 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!673862 false))

(assert (= (and start!60232 res!440521) b!673847))

(assert (= (and b!673847 res!440528) b!673845))

(assert (= (and b!673845 res!440525) b!673846))

(assert (= (and b!673846 res!440531) b!673838))

(assert (= (and b!673838 res!440532) b!673839))

(assert (= (and b!673838 (not res!440530)) b!673852))

(assert (= (and b!673852 res!440515) b!673856))

(assert (= (and b!673838 res!440516) b!673859))

(assert (= (and b!673859 res!440513) b!673841))

(assert (= (and b!673841 res!440518) b!673842))

(assert (= (and b!673842 res!440533) b!673850))

(assert (= (and b!673850 res!440511) b!673857))

(assert (= (and b!673857 res!440526) b!673861))

(assert (= (and b!673861 res!440524) b!673843))

(assert (= (and b!673843 res!440523) b!673854))

(assert (= (and b!673854 c!77030) b!673862))

(assert (= (and b!673854 (not c!77030)) b!673858))

(assert (= (and b!673854 res!440522) b!673837))

(assert (= (and b!673837 res!440517) b!673860))

(assert (= (and b!673860 res!440512) b!673853))

(assert (= (and b!673853 res!440514) b!673851))

(assert (= (and b!673851 res!440527) b!673840))

(assert (= (and b!673840 res!440520) b!673849))

(assert (= (and b!673840 (not res!440534)) b!673844))

(assert (= (and b!673844 res!440519) b!673848))

(assert (= (and b!673840 res!440529) b!673855))

(declare-fun m!642043 () Bool)

(assert (=> b!673853 m!642043))

(declare-fun m!642045 () Bool)

(assert (=> b!673841 m!642045))

(declare-fun m!642047 () Bool)

(assert (=> b!673857 m!642047))

(declare-fun m!642049 () Bool)

(assert (=> b!673855 m!642049))

(declare-fun m!642051 () Bool)

(assert (=> b!673847 m!642051))

(declare-fun m!642053 () Bool)

(assert (=> b!673848 m!642053))

(declare-fun m!642055 () Bool)

(assert (=> b!673856 m!642055))

(declare-fun m!642057 () Bool)

(assert (=> b!673859 m!642057))

(declare-fun m!642059 () Bool)

(assert (=> b!673843 m!642059))

(assert (=> b!673843 m!642059))

(declare-fun m!642061 () Bool)

(assert (=> b!673843 m!642061))

(declare-fun m!642063 () Bool)

(assert (=> b!673862 m!642063))

(declare-fun m!642065 () Bool)

(assert (=> b!673862 m!642065))

(assert (=> b!673837 m!642059))

(assert (=> b!673837 m!642059))

(declare-fun m!642067 () Bool)

(assert (=> b!673837 m!642067))

(declare-fun m!642069 () Bool)

(assert (=> start!60232 m!642069))

(declare-fun m!642071 () Bool)

(assert (=> b!673860 m!642071))

(assert (=> b!673849 m!642053))

(assert (=> b!673839 m!642055))

(assert (=> b!673854 m!642059))

(declare-fun m!642073 () Bool)

(assert (=> b!673846 m!642073))

(declare-fun m!642075 () Bool)

(assert (=> b!673851 m!642075))

(declare-fun m!642077 () Bool)

(assert (=> b!673845 m!642077))

(declare-fun m!642079 () Bool)

(assert (=> b!673850 m!642079))

(push 1)

