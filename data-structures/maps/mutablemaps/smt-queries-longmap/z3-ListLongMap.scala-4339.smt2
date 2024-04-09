; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60080 () Bool)

(assert start!60080)

(declare-fun b!668759 () Bool)

(declare-fun e!382585 () Bool)

(declare-fun e!382580 () Bool)

(assert (=> b!668759 (= e!382585 e!382580)))

(declare-fun res!435910 () Bool)

(assert (=> b!668759 (=> (not res!435910) (not e!382580))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!668759 (= res!435910 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!668760 () Bool)

(declare-fun res!435917 () Bool)

(declare-fun e!382581 () Bool)

(assert (=> b!668760 (=> (not res!435917) (not e!382581))))

(declare-datatypes ((List!12824 0))(
  ( (Nil!12821) (Cons!12820 (h!13865 (_ BitVec 64)) (t!19060 List!12824)) )
))
(declare-fun acc!681 () List!12824)

(declare-fun contains!3367 (List!12824 (_ BitVec 64)) Bool)

(assert (=> b!668760 (= res!435917 (not (contains!3367 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!668761 () Bool)

(declare-fun res!435908 () Bool)

(declare-fun e!382579 () Bool)

(assert (=> b!668761 (=> res!435908 e!382579)))

(declare-fun lt!311377 () List!12824)

(assert (=> b!668761 (= res!435908 (contains!3367 lt!311377 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!668763 () Bool)

(declare-fun e!382584 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!668763 (= e!382584 (contains!3367 acc!681 k0!2843))))

(declare-fun b!668764 () Bool)

(declare-fun e!382582 () Bool)

(assert (=> b!668764 (= e!382582 (not (contains!3367 acc!681 k0!2843)))))

(declare-fun b!668765 () Bool)

(declare-fun res!435899 () Bool)

(assert (=> b!668765 (=> (not res!435899) (not e!382581))))

(assert (=> b!668765 (= res!435899 (not (contains!3367 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!668766 () Bool)

(declare-fun res!435913 () Bool)

(assert (=> b!668766 (=> (not res!435913) (not e!382581))))

(declare-fun noDuplicate!614 (List!12824) Bool)

(assert (=> b!668766 (= res!435913 (noDuplicate!614 acc!681))))

(declare-fun b!668767 () Bool)

(declare-fun res!435905 () Bool)

(assert (=> b!668767 (=> (not res!435905) (not e!382581))))

(declare-datatypes ((array!39083 0))(
  ( (array!39084 (arr!18730 (Array (_ BitVec 32) (_ BitVec 64))) (size!19094 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39083)

(declare-fun arrayNoDuplicates!0 (array!39083 (_ BitVec 32) List!12824) Bool)

(assert (=> b!668767 (= res!435905 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!668768 () Bool)

(declare-datatypes ((Unit!23445 0))(
  ( (Unit!23446) )
))
(declare-fun e!382576 () Unit!23445)

(declare-fun lt!311376 () Unit!23445)

(assert (=> b!668768 (= e!382576 lt!311376)))

(declare-fun lt!311374 () Unit!23445)

(declare-fun lemmaListSubSeqRefl!0 (List!12824) Unit!23445)

(assert (=> b!668768 (= lt!311374 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!105 (List!12824 List!12824) Bool)

(assert (=> b!668768 (subseq!105 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39083 List!12824 List!12824 (_ BitVec 32)) Unit!23445)

(declare-fun $colon$colon!236 (List!12824 (_ BitVec 64)) List!12824)

(assert (=> b!668768 (= lt!311376 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!236 acc!681 (select (arr!18730 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!668768 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!668769 () Bool)

(declare-fun res!435900 () Bool)

(assert (=> b!668769 (=> (not res!435900) (not e!382581))))

(assert (=> b!668769 (= res!435900 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12821))))

(declare-fun b!668770 () Bool)

(assert (=> b!668770 (= e!382580 (not (contains!3367 lt!311377 k0!2843)))))

(declare-fun b!668771 () Bool)

(assert (=> b!668771 (= e!382581 (not e!382579))))

(declare-fun res!435906 () Bool)

(assert (=> b!668771 (=> res!435906 e!382579)))

(assert (=> b!668771 (= res!435906 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!668771 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311377)))

(declare-fun lt!311378 () Unit!23445)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39083 (_ BitVec 64) (_ BitVec 32) List!12824 List!12824) Unit!23445)

(assert (=> b!668771 (= lt!311378 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311377))))

(declare-fun -!103 (List!12824 (_ BitVec 64)) List!12824)

(assert (=> b!668771 (= (-!103 lt!311377 k0!2843) acc!681)))

(assert (=> b!668771 (= lt!311377 ($colon$colon!236 acc!681 k0!2843))))

(declare-fun lt!311382 () Unit!23445)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12824) Unit!23445)

(assert (=> b!668771 (= lt!311382 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!668771 (subseq!105 acc!681 acc!681)))

(declare-fun lt!311379 () Unit!23445)

(assert (=> b!668771 (= lt!311379 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!668771 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311375 () Unit!23445)

(assert (=> b!668771 (= lt!311375 e!382576)))

(declare-fun c!76799 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!668771 (= c!76799 (validKeyInArray!0 (select (arr!18730 a!3626) from!3004)))))

(declare-fun lt!311373 () Unit!23445)

(declare-fun e!382578 () Unit!23445)

(assert (=> b!668771 (= lt!311373 e!382578)))

(declare-fun c!76798 () Bool)

(declare-fun arrayContainsKey!0 (array!39083 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!668771 (= c!76798 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!668771 (arrayContainsKey!0 (array!39084 (store (arr!18730 a!3626) i!1382 k0!2843) (size!19094 a!3626)) k0!2843 from!3004)))

(declare-fun b!668772 () Bool)

(declare-fun res!435898 () Bool)

(assert (=> b!668772 (=> (not res!435898) (not e!382581))))

(assert (=> b!668772 (= res!435898 (validKeyInArray!0 k0!2843))))

(declare-fun b!668773 () Bool)

(declare-fun res!435897 () Bool)

(assert (=> b!668773 (=> (not res!435897) (not e!382581))))

(assert (=> b!668773 (= res!435897 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19094 a!3626))))))

(declare-fun res!435916 () Bool)

(assert (=> start!60080 (=> (not res!435916) (not e!382581))))

(assert (=> start!60080 (= res!435916 (and (bvslt (size!19094 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19094 a!3626))))))

(assert (=> start!60080 e!382581))

(assert (=> start!60080 true))

(declare-fun array_inv!14504 (array!39083) Bool)

(assert (=> start!60080 (array_inv!14504 a!3626)))

(declare-fun b!668762 () Bool)

(assert (=> b!668762 (= e!382579 true)))

(declare-fun lt!311381 () Bool)

(assert (=> b!668762 (= lt!311381 e!382585)))

(declare-fun res!435902 () Bool)

(assert (=> b!668762 (=> res!435902 e!382585)))

(declare-fun e!382577 () Bool)

(assert (=> b!668762 (= res!435902 e!382577)))

(declare-fun res!435907 () Bool)

(assert (=> b!668762 (=> (not res!435907) (not e!382577))))

(assert (=> b!668762 (= res!435907 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!668774 () Bool)

(declare-fun Unit!23447 () Unit!23445)

(assert (=> b!668774 (= e!382578 Unit!23447)))

(declare-fun lt!311380 () Unit!23445)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39083 (_ BitVec 64) (_ BitVec 32)) Unit!23445)

(assert (=> b!668774 (= lt!311380 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!668774 false))

(declare-fun b!668775 () Bool)

(declare-fun Unit!23448 () Unit!23445)

(assert (=> b!668775 (= e!382576 Unit!23448)))

(declare-fun b!668776 () Bool)

(declare-fun res!435903 () Bool)

(assert (=> b!668776 (=> res!435903 e!382579)))

(assert (=> b!668776 (= res!435903 (not (noDuplicate!614 lt!311377)))))

(declare-fun b!668777 () Bool)

(declare-fun e!382575 () Bool)

(assert (=> b!668777 (= e!382575 e!382582)))

(declare-fun res!435914 () Bool)

(assert (=> b!668777 (=> (not res!435914) (not e!382582))))

(assert (=> b!668777 (= res!435914 (bvsle from!3004 i!1382))))

(declare-fun b!668778 () Bool)

(declare-fun res!435915 () Bool)

(assert (=> b!668778 (=> (not res!435915) (not e!382581))))

(assert (=> b!668778 (= res!435915 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19094 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!668779 () Bool)

(declare-fun res!435912 () Bool)

(assert (=> b!668779 (=> res!435912 e!382579)))

(assert (=> b!668779 (= res!435912 (contains!3367 lt!311377 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!668780 () Bool)

(declare-fun res!435911 () Bool)

(assert (=> b!668780 (=> (not res!435911) (not e!382581))))

(assert (=> b!668780 (= res!435911 e!382575)))

(declare-fun res!435904 () Bool)

(assert (=> b!668780 (=> res!435904 e!382575)))

(assert (=> b!668780 (= res!435904 e!382584)))

(declare-fun res!435901 () Bool)

(assert (=> b!668780 (=> (not res!435901) (not e!382584))))

(assert (=> b!668780 (= res!435901 (bvsgt from!3004 i!1382))))

(declare-fun b!668781 () Bool)

(declare-fun res!435909 () Bool)

(assert (=> b!668781 (=> (not res!435909) (not e!382581))))

(assert (=> b!668781 (= res!435909 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!668782 () Bool)

(assert (=> b!668782 (= e!382577 (contains!3367 lt!311377 k0!2843))))

(declare-fun b!668783 () Bool)

(declare-fun Unit!23449 () Unit!23445)

(assert (=> b!668783 (= e!382578 Unit!23449)))

(assert (= (and start!60080 res!435916) b!668766))

(assert (= (and b!668766 res!435913) b!668765))

(assert (= (and b!668765 res!435899) b!668760))

(assert (= (and b!668760 res!435917) b!668780))

(assert (= (and b!668780 res!435901) b!668763))

(assert (= (and b!668780 (not res!435904)) b!668777))

(assert (= (and b!668777 res!435914) b!668764))

(assert (= (and b!668780 res!435911) b!668769))

(assert (= (and b!668769 res!435900) b!668767))

(assert (= (and b!668767 res!435905) b!668773))

(assert (= (and b!668773 res!435897) b!668772))

(assert (= (and b!668772 res!435898) b!668781))

(assert (= (and b!668781 res!435909) b!668778))

(assert (= (and b!668778 res!435915) b!668771))

(assert (= (and b!668771 c!76798) b!668774))

(assert (= (and b!668771 (not c!76798)) b!668783))

(assert (= (and b!668771 c!76799) b!668768))

(assert (= (and b!668771 (not c!76799)) b!668775))

(assert (= (and b!668771 (not res!435906)) b!668776))

(assert (= (and b!668776 (not res!435903)) b!668761))

(assert (= (and b!668761 (not res!435908)) b!668779))

(assert (= (and b!668779 (not res!435912)) b!668762))

(assert (= (and b!668762 res!435907) b!668782))

(assert (= (and b!668762 (not res!435902)) b!668759))

(assert (= (and b!668759 res!435910) b!668770))

(declare-fun m!639031 () Bool)

(assert (=> b!668768 m!639031))

(declare-fun m!639033 () Bool)

(assert (=> b!668768 m!639033))

(declare-fun m!639035 () Bool)

(assert (=> b!668768 m!639035))

(declare-fun m!639037 () Bool)

(assert (=> b!668768 m!639037))

(assert (=> b!668768 m!639033))

(assert (=> b!668768 m!639035))

(declare-fun m!639039 () Bool)

(assert (=> b!668768 m!639039))

(declare-fun m!639041 () Bool)

(assert (=> b!668768 m!639041))

(declare-fun m!639043 () Bool)

(assert (=> b!668761 m!639043))

(declare-fun m!639045 () Bool)

(assert (=> b!668767 m!639045))

(declare-fun m!639047 () Bool)

(assert (=> b!668770 m!639047))

(declare-fun m!639049 () Bool)

(assert (=> b!668760 m!639049))

(declare-fun m!639051 () Bool)

(assert (=> b!668763 m!639051))

(assert (=> b!668764 m!639051))

(declare-fun m!639053 () Bool)

(assert (=> b!668774 m!639053))

(declare-fun m!639055 () Bool)

(assert (=> b!668766 m!639055))

(declare-fun m!639057 () Bool)

(assert (=> b!668781 m!639057))

(declare-fun m!639059 () Bool)

(assert (=> start!60080 m!639059))

(assert (=> b!668771 m!639031))

(assert (=> b!668771 m!639033))

(declare-fun m!639061 () Bool)

(assert (=> b!668771 m!639061))

(declare-fun m!639063 () Bool)

(assert (=> b!668771 m!639063))

(declare-fun m!639065 () Bool)

(assert (=> b!668771 m!639065))

(assert (=> b!668771 m!639039))

(declare-fun m!639067 () Bool)

(assert (=> b!668771 m!639067))

(declare-fun m!639069 () Bool)

(assert (=> b!668771 m!639069))

(declare-fun m!639071 () Bool)

(assert (=> b!668771 m!639071))

(declare-fun m!639073 () Bool)

(assert (=> b!668771 m!639073))

(assert (=> b!668771 m!639033))

(declare-fun m!639075 () Bool)

(assert (=> b!668771 m!639075))

(declare-fun m!639077 () Bool)

(assert (=> b!668771 m!639077))

(assert (=> b!668771 m!639041))

(declare-fun m!639079 () Bool)

(assert (=> b!668765 m!639079))

(assert (=> b!668782 m!639047))

(declare-fun m!639081 () Bool)

(assert (=> b!668776 m!639081))

(declare-fun m!639083 () Bool)

(assert (=> b!668769 m!639083))

(declare-fun m!639085 () Bool)

(assert (=> b!668772 m!639085))

(declare-fun m!639087 () Bool)

(assert (=> b!668779 m!639087))

(check-sat (not b!668771) (not b!668764) (not start!60080) (not b!668774) (not b!668776) (not b!668760) (not b!668779) (not b!668767) (not b!668761) (not b!668768) (not b!668782) (not b!668763) (not b!668770) (not b!668781) (not b!668766) (not b!668772) (not b!668765) (not b!668769))
