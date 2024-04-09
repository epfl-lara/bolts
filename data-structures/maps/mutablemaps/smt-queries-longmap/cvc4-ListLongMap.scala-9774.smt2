; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115854 () Bool)

(assert start!115854)

(declare-fun b!1369263 () Bool)

(declare-fun e!775672 () Bool)

(declare-fun e!775670 () Bool)

(assert (=> b!1369263 (= e!775672 e!775670)))

(declare-fun res!912867 () Bool)

(assert (=> b!1369263 (=> (not res!912867) (not e!775670))))

(declare-datatypes ((array!92924 0))(
  ( (array!92925 (arr!44880 (Array (_ BitVec 32) (_ BitVec 64))) (size!45431 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92924)

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((List!32128 0))(
  ( (Nil!32125) (Cons!32124 (h!33333 (_ BitVec 64)) (t!46829 List!32128)) )
))
(declare-fun acc!866 () List!32128)

(declare-fun arrayNoDuplicates!0 (array!92924 (_ BitVec 32) List!32128) Bool)

(assert (=> b!1369263 (= res!912867 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45195 0))(
  ( (Unit!45196) )
))
(declare-fun lt!602180 () Unit!45195)

(declare-fun newAcc!98 () List!32128)

(declare-fun noDuplicateSubseq!244 (List!32128 List!32128) Unit!45195)

(assert (=> b!1369263 (= lt!602180 (noDuplicateSubseq!244 newAcc!98 acc!866))))

(declare-fun b!1369264 () Bool)

(declare-fun res!912862 () Bool)

(assert (=> b!1369264 (=> (not res!912862) (not e!775672))))

(declare-fun contains!9666 (List!32128 (_ BitVec 64)) Bool)

(assert (=> b!1369264 (= res!912862 (not (contains!9666 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369265 () Bool)

(declare-fun res!912863 () Bool)

(assert (=> b!1369265 (=> (not res!912863) (not e!775672))))

(assert (=> b!1369265 (= res!912863 (not (contains!9666 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!912864 () Bool)

(assert (=> start!115854 (=> (not res!912864) (not e!775672))))

(assert (=> start!115854 (= res!912864 (and (bvslt (size!45431 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45431 a!3861))))))

(assert (=> start!115854 e!775672))

(declare-fun array_inv!33825 (array!92924) Bool)

(assert (=> start!115854 (array_inv!33825 a!3861)))

(assert (=> start!115854 true))

(declare-fun b!1369266 () Bool)

(declare-fun res!912866 () Bool)

(assert (=> b!1369266 (=> (not res!912866) (not e!775672))))

(assert (=> b!1369266 (= res!912866 (not (contains!9666 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369267 () Bool)

(declare-fun noDuplicate!2545 (List!32128) Bool)

(assert (=> b!1369267 (= e!775670 (not (noDuplicate!2545 newAcc!98)))))

(declare-fun b!1369268 () Bool)

(declare-fun res!912868 () Bool)

(assert (=> b!1369268 (=> (not res!912868) (not e!775672))))

(assert (=> b!1369268 (= res!912868 (not (contains!9666 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369269 () Bool)

(declare-fun res!912870 () Bool)

(assert (=> b!1369269 (=> (not res!912870) (not e!775670))))

(assert (=> b!1369269 (= res!912870 (bvsge from!3239 (size!45431 a!3861)))))

(declare-fun b!1369270 () Bool)

(declare-fun res!912865 () Bool)

(assert (=> b!1369270 (=> (not res!912865) (not e!775672))))

(declare-fun subseq!1057 (List!32128 List!32128) Bool)

(assert (=> b!1369270 (= res!912865 (subseq!1057 newAcc!98 acc!866))))

(declare-fun b!1369271 () Bool)

(declare-fun res!912869 () Bool)

(assert (=> b!1369271 (=> (not res!912869) (not e!775672))))

(assert (=> b!1369271 (= res!912869 (noDuplicate!2545 acc!866))))

(assert (= (and start!115854 res!912864) b!1369271))

(assert (= (and b!1369271 res!912869) b!1369265))

(assert (= (and b!1369265 res!912863) b!1369266))

(assert (= (and b!1369266 res!912866) b!1369264))

(assert (= (and b!1369264 res!912862) b!1369268))

(assert (= (and b!1369268 res!912868) b!1369270))

(assert (= (and b!1369270 res!912865) b!1369263))

(assert (= (and b!1369263 res!912867) b!1369269))

(assert (= (and b!1369269 res!912870) b!1369267))

(declare-fun m!1253099 () Bool)

(assert (=> start!115854 m!1253099))

(declare-fun m!1253101 () Bool)

(assert (=> b!1369265 m!1253101))

(declare-fun m!1253103 () Bool)

(assert (=> b!1369266 m!1253103))

(declare-fun m!1253105 () Bool)

(assert (=> b!1369270 m!1253105))

(declare-fun m!1253107 () Bool)

(assert (=> b!1369271 m!1253107))

(declare-fun m!1253109 () Bool)

(assert (=> b!1369263 m!1253109))

(declare-fun m!1253111 () Bool)

(assert (=> b!1369263 m!1253111))

(declare-fun m!1253113 () Bool)

(assert (=> b!1369264 m!1253113))

(declare-fun m!1253115 () Bool)

(assert (=> b!1369268 m!1253115))

(declare-fun m!1253117 () Bool)

(assert (=> b!1369267 m!1253117))

(push 1)

(assert (not b!1369265))

(assert (not b!1369268))

(assert (not b!1369267))

(assert (not b!1369266))

(assert (not b!1369263))

(assert (not b!1369270))

(assert (not b!1369264))

(assert (not b!1369271))

(assert (not start!115854))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!146927 () Bool)

(declare-fun lt!602190 () Bool)

(declare-fun content!731 (List!32128) (Set (_ BitVec 64)))

(assert (=> d!146927 (= lt!602190 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!731 newAcc!98)))))

(declare-fun e!775701 () Bool)

(assert (=> d!146927 (= lt!602190 e!775701)))

(declare-fun res!912896 () Bool)

(assert (=> d!146927 (=> (not res!912896) (not e!775701))))

(assert (=> d!146927 (= res!912896 (is-Cons!32124 newAcc!98))))

(assert (=> d!146927 (= (contains!9666 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602190)))

(declare-fun b!1369303 () Bool)

(declare-fun e!775702 () Bool)

(assert (=> b!1369303 (= e!775701 e!775702)))

(declare-fun res!912897 () Bool)

(assert (=> b!1369303 (=> res!912897 e!775702)))

(assert (=> b!1369303 (= res!912897 (= (h!33333 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1369304 () Bool)

(assert (=> b!1369304 (= e!775702 (contains!9666 (t!46829 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146927 res!912896) b!1369303))

(assert (= (and b!1369303 (not res!912897)) b!1369304))

(declare-fun m!1253143 () Bool)

(assert (=> d!146927 m!1253143))

(declare-fun m!1253147 () Bool)

(assert (=> d!146927 m!1253147))

(declare-fun m!1253149 () Bool)

(assert (=> b!1369304 m!1253149))

(assert (=> b!1369268 d!146927))

(declare-fun c!127650 () Bool)

(declare-fun bm!65506 () Bool)

(declare-fun call!65509 () Bool)

(assert (=> bm!65506 (= call!65509 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127650 (Cons!32124 (select (arr!44880 a!3861) from!3239) acc!866) acc!866)))))

(declare-fun b!1369348 () Bool)

(declare-fun e!775743 () Bool)

(declare-fun e!775745 () Bool)

(assert (=> b!1369348 (= e!775743 e!775745)))

(declare-fun res!912933 () Bool)

(assert (=> b!1369348 (=> (not res!912933) (not e!775745))))

(declare-fun e!775744 () Bool)

(assert (=> b!1369348 (= res!912933 (not e!775744))))

(declare-fun res!912934 () Bool)

(assert (=> b!1369348 (=> (not res!912934) (not e!775744))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1369348 (= res!912934 (validKeyInArray!0 (select (arr!44880 a!3861) from!3239)))))

(declare-fun d!146941 () Bool)

(declare-fun res!912935 () Bool)

(assert (=> d!146941 (=> res!912935 e!775743)))

(assert (=> d!146941 (= res!912935 (bvsge from!3239 (size!45431 a!3861)))))

(assert (=> d!146941 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!775743)))

(declare-fun b!1369349 () Bool)

(assert (=> b!1369349 (= e!775744 (contains!9666 acc!866 (select (arr!44880 a!3861) from!3239)))))

(declare-fun b!1369350 () Bool)

(declare-fun e!775742 () Bool)

(assert (=> b!1369350 (= e!775745 e!775742)))

(assert (=> b!1369350 (= c!127650 (validKeyInArray!0 (select (arr!44880 a!3861) from!3239)))))

(declare-fun b!1369351 () Bool)

(assert (=> b!1369351 (= e!775742 call!65509)))

(declare-fun b!1369352 () Bool)

(assert (=> b!1369352 (= e!775742 call!65509)))

(assert (= (and d!146941 (not res!912935)) b!1369348))

(assert (= (and b!1369348 res!912934) b!1369349))

(assert (= (and b!1369348 res!912933) b!1369350))

(assert (= (and b!1369350 c!127650) b!1369351))

(assert (= (and b!1369350 (not c!127650)) b!1369352))

(assert (= (or b!1369351 b!1369352) bm!65506))

(declare-fun m!1253175 () Bool)

(assert (=> bm!65506 m!1253175))

(declare-fun m!1253177 () Bool)

(assert (=> bm!65506 m!1253177))

(assert (=> b!1369348 m!1253175))

(assert (=> b!1369348 m!1253175))

(declare-fun m!1253179 () Bool)

(assert (=> b!1369348 m!1253179))

(assert (=> b!1369349 m!1253175))

(assert (=> b!1369349 m!1253175))

(declare-fun m!1253181 () Bool)

(assert (=> b!1369349 m!1253181))

(assert (=> b!1369350 m!1253175))

(assert (=> b!1369350 m!1253175))

(assert (=> b!1369350 m!1253179))

(assert (=> b!1369263 d!146941))

(declare-fun d!146953 () Bool)

(assert (=> d!146953 (noDuplicate!2545 newAcc!98)))

(declare-fun lt!602198 () Unit!45195)

(declare-fun choose!2010 (List!32128 List!32128) Unit!45195)

(assert (=> d!146953 (= lt!602198 (choose!2010 newAcc!98 acc!866))))

(declare-fun e!775760 () Bool)

(assert (=> d!146953 e!775760))

(declare-fun res!912949 () Bool)

(assert (=> d!146953 (=> (not res!912949) (not e!775760))))

(assert (=> d!146953 (= res!912949 (subseq!1057 newAcc!98 acc!866))))

(assert (=> d!146953 (= (noDuplicateSubseq!244 newAcc!98 acc!866) lt!602198)))

