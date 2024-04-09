; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60004 () Bool)

(assert start!60004)

(declare-fun b!665909 () Bool)

(declare-fun res!433517 () Bool)

(declare-fun e!381464 () Bool)

(assert (=> b!665909 (=> (not res!433517) (not e!381464))))

(declare-datatypes ((array!39007 0))(
  ( (array!39008 (arr!18692 (Array (_ BitVec 32) (_ BitVec 64))) (size!19056 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39007)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39007 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!665909 (= res!433517 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!665910 () Bool)

(declare-fun res!433518 () Bool)

(assert (=> b!665910 (=> (not res!433518) (not e!381464))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!665910 (= res!433518 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19056 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!665911 () Bool)

(declare-fun res!433506 () Bool)

(assert (=> b!665911 (=> (not res!433506) (not e!381464))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!665911 (= res!433506 (validKeyInArray!0 k!2843))))

(declare-fun b!665912 () Bool)

(declare-fun res!433522 () Bool)

(assert (=> b!665912 (=> (not res!433522) (not e!381464))))

(declare-datatypes ((List!12786 0))(
  ( (Nil!12783) (Cons!12782 (h!13827 (_ BitVec 64)) (t!19022 List!12786)) )
))
(declare-fun acc!681 () List!12786)

(declare-fun contains!3329 (List!12786 (_ BitVec 64)) Bool)

(assert (=> b!665912 (= res!433522 (not (contains!3329 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!665913 () Bool)

(declare-fun res!433514 () Bool)

(assert (=> b!665913 (=> (not res!433514) (not e!381464))))

(declare-fun arrayNoDuplicates!0 (array!39007 (_ BitVec 32) List!12786) Bool)

(assert (=> b!665913 (= res!433514 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!665915 () Bool)

(declare-datatypes ((Unit!23255 0))(
  ( (Unit!23256) )
))
(declare-fun e!381463 () Unit!23255)

(declare-fun Unit!23257 () Unit!23255)

(assert (=> b!665915 (= e!381463 Unit!23257)))

(declare-fun lt!310239 () Unit!23255)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39007 (_ BitVec 64) (_ BitVec 32)) Unit!23255)

(assert (=> b!665915 (= lt!310239 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!665915 false))

(declare-fun b!665916 () Bool)

(declare-fun res!433523 () Bool)

(assert (=> b!665916 (=> (not res!433523) (not e!381464))))

(assert (=> b!665916 (= res!433523 (not (contains!3329 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!665917 () Bool)

(declare-fun res!433503 () Bool)

(assert (=> b!665917 (=> (not res!433503) (not e!381464))))

(assert (=> b!665917 (= res!433503 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19056 a!3626))))))

(declare-fun b!665918 () Bool)

(declare-fun e!381461 () Bool)

(assert (=> b!665918 (= e!381461 (contains!3329 acc!681 k!2843))))

(declare-fun b!665919 () Bool)

(declare-fun res!433519 () Bool)

(assert (=> b!665919 (=> (not res!433519) (not e!381464))))

(declare-fun noDuplicate!576 (List!12786) Bool)

(assert (=> b!665919 (= res!433519 (noDuplicate!576 acc!681))))

(declare-fun b!665920 () Bool)

(declare-fun res!433521 () Bool)

(declare-fun e!381465 () Bool)

(assert (=> b!665920 (=> res!433521 e!381465)))

(declare-fun lt!310237 () List!12786)

(assert (=> b!665920 (= res!433521 (not (contains!3329 lt!310237 k!2843)))))

(declare-fun b!665921 () Bool)

(declare-fun res!433508 () Bool)

(assert (=> b!665921 (=> res!433508 e!381465)))

(declare-fun subseq!67 (List!12786 List!12786) Bool)

(assert (=> b!665921 (= res!433508 (not (subseq!67 acc!681 lt!310237)))))

(declare-fun b!665922 () Bool)

(declare-fun res!433509 () Bool)

(assert (=> b!665922 (=> (not res!433509) (not e!381464))))

(declare-fun e!381466 () Bool)

(assert (=> b!665922 (= res!433509 e!381466)))

(declare-fun res!433504 () Bool)

(assert (=> b!665922 (=> res!433504 e!381466)))

(assert (=> b!665922 (= res!433504 e!381461)))

(declare-fun res!433511 () Bool)

(assert (=> b!665922 (=> (not res!433511) (not e!381461))))

(assert (=> b!665922 (= res!433511 (bvsgt from!3004 i!1382))))

(declare-fun b!665923 () Bool)

(declare-fun res!433520 () Bool)

(assert (=> b!665923 (=> res!433520 e!381465)))

(assert (=> b!665923 (= res!433520 (contains!3329 acc!681 k!2843))))

(declare-fun b!665924 () Bool)

(assert (=> b!665924 (= e!381465 true)))

(declare-fun lt!310238 () Bool)

(assert (=> b!665924 (= lt!310238 (contains!3329 lt!310237 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!665925 () Bool)

(assert (=> b!665925 (= e!381464 (not e!381465))))

(declare-fun res!433512 () Bool)

(assert (=> b!665925 (=> res!433512 e!381465)))

(assert (=> b!665925 (= res!433512 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!65 (List!12786 (_ BitVec 64)) List!12786)

(assert (=> b!665925 (= (-!65 lt!310237 k!2843) acc!681)))

(declare-fun $colon$colon!198 (List!12786 (_ BitVec 64)) List!12786)

(assert (=> b!665925 (= lt!310237 ($colon$colon!198 acc!681 k!2843))))

(declare-fun lt!310240 () Unit!23255)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12786) Unit!23255)

(assert (=> b!665925 (= lt!310240 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!665925 (subseq!67 acc!681 acc!681)))

(declare-fun lt!310242 () Unit!23255)

(declare-fun lemmaListSubSeqRefl!0 (List!12786) Unit!23255)

(assert (=> b!665925 (= lt!310242 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!665925 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310236 () Unit!23255)

(declare-fun e!381460 () Unit!23255)

(assert (=> b!665925 (= lt!310236 e!381460)))

(declare-fun c!76571 () Bool)

(assert (=> b!665925 (= c!76571 (validKeyInArray!0 (select (arr!18692 a!3626) from!3004)))))

(declare-fun lt!310241 () Unit!23255)

(assert (=> b!665925 (= lt!310241 e!381463)))

(declare-fun c!76570 () Bool)

(declare-fun lt!310235 () Bool)

(assert (=> b!665925 (= c!76570 lt!310235)))

(assert (=> b!665925 (= lt!310235 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!665925 (arrayContainsKey!0 (array!39008 (store (arr!18692 a!3626) i!1382 k!2843) (size!19056 a!3626)) k!2843 from!3004)))

(declare-fun res!433510 () Bool)

(assert (=> start!60004 (=> (not res!433510) (not e!381464))))

(assert (=> start!60004 (= res!433510 (and (bvslt (size!19056 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19056 a!3626))))))

(assert (=> start!60004 e!381464))

(assert (=> start!60004 true))

(declare-fun array_inv!14466 (array!39007) Bool)

(assert (=> start!60004 (array_inv!14466 a!3626)))

(declare-fun b!665914 () Bool)

(declare-fun e!381459 () Bool)

(assert (=> b!665914 (= e!381459 (not (contains!3329 acc!681 k!2843)))))

(declare-fun b!665926 () Bool)

(declare-fun Unit!23258 () Unit!23255)

(assert (=> b!665926 (= e!381460 Unit!23258)))

(declare-fun b!665927 () Bool)

(assert (=> b!665927 (= e!381466 e!381459)))

(declare-fun res!433513 () Bool)

(assert (=> b!665927 (=> (not res!433513) (not e!381459))))

(assert (=> b!665927 (= res!433513 (bvsle from!3004 i!1382))))

(declare-fun b!665928 () Bool)

(declare-fun res!433505 () Bool)

(assert (=> b!665928 (=> (not res!433505) (not e!381464))))

(assert (=> b!665928 (= res!433505 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12783))))

(declare-fun b!665929 () Bool)

(declare-fun lt!310233 () Unit!23255)

(assert (=> b!665929 (= e!381460 lt!310233)))

(declare-fun lt!310234 () Unit!23255)

(assert (=> b!665929 (= lt!310234 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!665929 (subseq!67 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39007 List!12786 List!12786 (_ BitVec 32)) Unit!23255)

(assert (=> b!665929 (= lt!310233 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!198 acc!681 (select (arr!18692 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!665929 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!665930 () Bool)

(declare-fun res!433507 () Bool)

(assert (=> b!665930 (=> res!433507 e!381465)))

(assert (=> b!665930 (= res!433507 lt!310235)))

(declare-fun b!665931 () Bool)

(declare-fun res!433516 () Bool)

(assert (=> b!665931 (=> res!433516 e!381465)))

(assert (=> b!665931 (= res!433516 (not (noDuplicate!576 lt!310237)))))

(declare-fun b!665932 () Bool)

(declare-fun Unit!23259 () Unit!23255)

(assert (=> b!665932 (= e!381463 Unit!23259)))

(declare-fun b!665933 () Bool)

(declare-fun res!433515 () Bool)

(assert (=> b!665933 (=> res!433515 e!381465)))

(assert (=> b!665933 (= res!433515 (contains!3329 lt!310237 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!60004 res!433510) b!665919))

(assert (= (and b!665919 res!433519) b!665912))

(assert (= (and b!665912 res!433522) b!665916))

(assert (= (and b!665916 res!433523) b!665922))

(assert (= (and b!665922 res!433511) b!665918))

(assert (= (and b!665922 (not res!433504)) b!665927))

(assert (= (and b!665927 res!433513) b!665914))

(assert (= (and b!665922 res!433509) b!665928))

(assert (= (and b!665928 res!433505) b!665913))

(assert (= (and b!665913 res!433514) b!665917))

(assert (= (and b!665917 res!433503) b!665911))

(assert (= (and b!665911 res!433506) b!665909))

(assert (= (and b!665909 res!433517) b!665910))

(assert (= (and b!665910 res!433518) b!665925))

(assert (= (and b!665925 c!76570) b!665915))

(assert (= (and b!665925 (not c!76570)) b!665932))

(assert (= (and b!665925 c!76571) b!665929))

(assert (= (and b!665925 (not c!76571)) b!665926))

(assert (= (and b!665925 (not res!433512)) b!665931))

(assert (= (and b!665931 (not res!433516)) b!665930))

(assert (= (and b!665930 (not res!433507)) b!665923))

(assert (= (and b!665923 (not res!433520)) b!665921))

(assert (= (and b!665921 (not res!433508)) b!665920))

(assert (= (and b!665920 (not res!433521)) b!665933))

(assert (= (and b!665933 (not res!433515)) b!665924))

(declare-fun m!636859 () Bool)

(assert (=> b!665921 m!636859))

(declare-fun m!636861 () Bool)

(assert (=> b!665931 m!636861))

(declare-fun m!636863 () Bool)

(assert (=> b!665912 m!636863))

(declare-fun m!636865 () Bool)

(assert (=> b!665911 m!636865))

(declare-fun m!636867 () Bool)

(assert (=> b!665920 m!636867))

(declare-fun m!636869 () Bool)

(assert (=> b!665929 m!636869))

(declare-fun m!636871 () Bool)

(assert (=> b!665929 m!636871))

(declare-fun m!636873 () Bool)

(assert (=> b!665929 m!636873))

(declare-fun m!636875 () Bool)

(assert (=> b!665929 m!636875))

(assert (=> b!665929 m!636871))

(assert (=> b!665929 m!636873))

(declare-fun m!636877 () Bool)

(assert (=> b!665929 m!636877))

(declare-fun m!636879 () Bool)

(assert (=> b!665929 m!636879))

(declare-fun m!636881 () Bool)

(assert (=> b!665933 m!636881))

(declare-fun m!636883 () Bool)

(assert (=> b!665916 m!636883))

(declare-fun m!636885 () Bool)

(assert (=> b!665919 m!636885))

(declare-fun m!636887 () Bool)

(assert (=> b!665915 m!636887))

(declare-fun m!636889 () Bool)

(assert (=> start!60004 m!636889))

(declare-fun m!636891 () Bool)

(assert (=> b!665914 m!636891))

(declare-fun m!636893 () Bool)

(assert (=> b!665909 m!636893))

(assert (=> b!665923 m!636891))

(assert (=> b!665925 m!636869))

(assert (=> b!665925 m!636871))

(declare-fun m!636895 () Bool)

(assert (=> b!665925 m!636895))

(declare-fun m!636897 () Bool)

(assert (=> b!665925 m!636897))

(assert (=> b!665925 m!636877))

(declare-fun m!636899 () Bool)

(assert (=> b!665925 m!636899))

(declare-fun m!636901 () Bool)

(assert (=> b!665925 m!636901))

(declare-fun m!636903 () Bool)

(assert (=> b!665925 m!636903))

(assert (=> b!665925 m!636871))

(declare-fun m!636905 () Bool)

(assert (=> b!665925 m!636905))

(declare-fun m!636907 () Bool)

(assert (=> b!665925 m!636907))

(assert (=> b!665925 m!636879))

(assert (=> b!665918 m!636891))

(declare-fun m!636909 () Bool)

(assert (=> b!665913 m!636909))

(declare-fun m!636911 () Bool)

(assert (=> b!665928 m!636911))

(declare-fun m!636913 () Bool)

(assert (=> b!665924 m!636913))

(push 1)

(assert (not b!665925))

(assert (not b!665933))

(assert (not start!60004))

(assert (not b!665931))

(assert (not b!665924))

(assert (not b!665920))

(assert (not b!665911))

(assert (not b!665916))

(assert (not b!665929))

(assert (not b!665918))

(assert (not b!665921))

(assert (not b!665919))

(assert (not b!665914))

(assert (not b!665915))

(assert (not b!665923))

(assert (not b!665928))

(assert (not b!665912))

(assert (not b!665913))

(assert (not b!665909))

(check-sat)

