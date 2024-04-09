; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61980 () Bool)

(assert start!61980)

(declare-fun b!692906 () Bool)

(declare-fun res!457246 () Bool)

(declare-fun e!394275 () Bool)

(assert (=> b!692906 (=> (not res!457246) (not e!394275))))

(declare-datatypes ((List!13165 0))(
  ( (Nil!13162) (Cons!13161 (h!14206 (_ BitVec 64)) (t!19449 List!13165)) )
))
(declare-fun acc!681 () List!13165)

(declare-fun contains!3708 (List!13165 (_ BitVec 64)) Bool)

(assert (=> b!692906 (= res!457246 (not (contains!3708 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!692907 () Bool)

(declare-datatypes ((Unit!24454 0))(
  ( (Unit!24455) )
))
(declare-fun e!394280 () Unit!24454)

(declare-fun Unit!24456 () Unit!24454)

(assert (=> b!692907 (= e!394280 Unit!24456)))

(declare-datatypes ((array!39822 0))(
  ( (array!39823 (arr!19071 (Array (_ BitVec 32) (_ BitVec 64))) (size!19454 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39822)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!39822 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!692907 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316646 () Unit!24454)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39822 (_ BitVec 64) (_ BitVec 32)) Unit!24454)

(assert (=> b!692907 (= lt!316646 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!692907 false))

(declare-fun b!692908 () Bool)

(declare-fun res!457247 () Bool)

(assert (=> b!692908 (=> (not res!457247) (not e!394275))))

(assert (=> b!692908 (= res!457247 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!692909 () Bool)

(declare-fun res!457262 () Bool)

(assert (=> b!692909 (=> (not res!457262) (not e!394275))))

(assert (=> b!692909 (= res!457262 (not (contains!3708 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!692910 () Bool)

(declare-fun res!457256 () Bool)

(assert (=> b!692910 (=> (not res!457256) (not e!394275))))

(declare-fun noDuplicate!955 (List!13165) Bool)

(assert (=> b!692910 (= res!457256 (noDuplicate!955 acc!681))))

(declare-fun b!692911 () Bool)

(declare-fun res!457241 () Bool)

(assert (=> b!692911 (=> (not res!457241) (not e!394275))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!692911 (= res!457241 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19454 a!3626))))))

(declare-fun b!692912 () Bool)

(declare-fun e!394281 () Bool)

(assert (=> b!692912 (= e!394275 e!394281)))

(declare-fun res!457260 () Bool)

(assert (=> b!692912 (=> (not res!457260) (not e!394281))))

(assert (=> b!692912 (= res!457260 (not (= (select (arr!19071 a!3626) from!3004) k!2843)))))

(declare-fun lt!316645 () Unit!24454)

(assert (=> b!692912 (= lt!316645 e!394280)))

(declare-fun c!78200 () Bool)

(assert (=> b!692912 (= c!78200 (= (select (arr!19071 a!3626) from!3004) k!2843))))

(declare-fun b!692913 () Bool)

(declare-fun e!394276 () Bool)

(assert (=> b!692913 (= e!394276 (not (contains!3708 acc!681 k!2843)))))

(declare-fun b!692914 () Bool)

(declare-fun res!457249 () Bool)

(assert (=> b!692914 (=> (not res!457249) (not e!394275))))

(assert (=> b!692914 (= res!457249 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19454 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!692915 () Bool)

(declare-fun e!394274 () Bool)

(assert (=> b!692915 (= e!394281 e!394274)))

(declare-fun res!457244 () Bool)

(assert (=> b!692915 (=> (not res!457244) (not e!394274))))

(assert (=> b!692915 (= res!457244 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun lt!316647 () List!13165)

(declare-fun $colon$colon!418 (List!13165 (_ BitVec 64)) List!13165)

(assert (=> b!692915 (= lt!316647 ($colon$colon!418 acc!681 (select (arr!19071 a!3626) from!3004)))))

(declare-fun b!692916 () Bool)

(declare-fun e!394279 () Bool)

(assert (=> b!692916 (= e!394279 (contains!3708 acc!681 k!2843))))

(declare-fun b!692917 () Bool)

(declare-fun e!394278 () Bool)

(assert (=> b!692917 (= e!394278 (not (contains!3708 lt!316647 k!2843)))))

(declare-fun res!457257 () Bool)

(assert (=> start!61980 (=> (not res!457257) (not e!394275))))

(assert (=> start!61980 (= res!457257 (and (bvslt (size!19454 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19454 a!3626))))))

(assert (=> start!61980 e!394275))

(assert (=> start!61980 true))

(declare-fun array_inv!14845 (array!39822) Bool)

(assert (=> start!61980 (array_inv!14845 a!3626)))

(declare-fun b!692918 () Bool)

(declare-fun res!457245 () Bool)

(assert (=> b!692918 (=> (not res!457245) (not e!394274))))

(assert (=> b!692918 (= res!457245 (noDuplicate!955 lt!316647))))

(declare-fun b!692919 () Bool)

(declare-fun res!457250 () Bool)

(assert (=> b!692919 (=> (not res!457250) (not e!394275))))

(declare-fun arrayNoDuplicates!0 (array!39822 (_ BitVec 32) List!13165) Bool)

(assert (=> b!692919 (= res!457250 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13162))))

(declare-fun b!692920 () Bool)

(assert (=> b!692920 (= e!394274 false)))

(declare-fun lt!316644 () Bool)

(declare-fun e!394282 () Bool)

(assert (=> b!692920 (= lt!316644 e!394282)))

(declare-fun res!457251 () Bool)

(assert (=> b!692920 (=> res!457251 e!394282)))

(declare-fun e!394273 () Bool)

(assert (=> b!692920 (= res!457251 e!394273)))

(declare-fun res!457242 () Bool)

(assert (=> b!692920 (=> (not res!457242) (not e!394273))))

(assert (=> b!692920 (= res!457242 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!692921 () Bool)

(declare-fun res!457252 () Bool)

(assert (=> b!692921 (=> (not res!457252) (not e!394275))))

(declare-fun e!394277 () Bool)

(assert (=> b!692921 (= res!457252 e!394277)))

(declare-fun res!457240 () Bool)

(assert (=> b!692921 (=> res!457240 e!394277)))

(assert (=> b!692921 (= res!457240 e!394279)))

(declare-fun res!457243 () Bool)

(assert (=> b!692921 (=> (not res!457243) (not e!394279))))

(assert (=> b!692921 (= res!457243 (bvsgt from!3004 i!1382))))

(declare-fun b!692922 () Bool)

(assert (=> b!692922 (= e!394277 e!394276)))

(declare-fun res!457261 () Bool)

(assert (=> b!692922 (=> (not res!457261) (not e!394276))))

(assert (=> b!692922 (= res!457261 (bvsle from!3004 i!1382))))

(declare-fun b!692923 () Bool)

(assert (=> b!692923 (= e!394282 e!394278)))

(declare-fun res!457259 () Bool)

(assert (=> b!692923 (=> (not res!457259) (not e!394278))))

(assert (=> b!692923 (= res!457259 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!692924 () Bool)

(declare-fun res!457255 () Bool)

(assert (=> b!692924 (=> (not res!457255) (not e!394274))))

(assert (=> b!692924 (= res!457255 (not (contains!3708 lt!316647 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!692925 () Bool)

(declare-fun res!457248 () Bool)

(assert (=> b!692925 (=> (not res!457248) (not e!394274))))

(assert (=> b!692925 (= res!457248 (not (contains!3708 lt!316647 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!692926 () Bool)

(declare-fun res!457254 () Bool)

(assert (=> b!692926 (=> (not res!457254) (not e!394275))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!692926 (= res!457254 (validKeyInArray!0 (select (arr!19071 a!3626) from!3004)))))

(declare-fun b!692927 () Bool)

(declare-fun Unit!24457 () Unit!24454)

(assert (=> b!692927 (= e!394280 Unit!24457)))

(declare-fun b!692928 () Bool)

(assert (=> b!692928 (= e!394273 (contains!3708 lt!316647 k!2843))))

(declare-fun b!692929 () Bool)

(declare-fun res!457258 () Bool)

(assert (=> b!692929 (=> (not res!457258) (not e!394275))))

(assert (=> b!692929 (= res!457258 (validKeyInArray!0 k!2843))))

(declare-fun b!692930 () Bool)

(declare-fun res!457253 () Bool)

(assert (=> b!692930 (=> (not res!457253) (not e!394275))))

(assert (=> b!692930 (= res!457253 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!61980 res!457257) b!692910))

(assert (= (and b!692910 res!457256) b!692909))

(assert (= (and b!692909 res!457262) b!692906))

(assert (= (and b!692906 res!457246) b!692921))

(assert (= (and b!692921 res!457243) b!692916))

(assert (= (and b!692921 (not res!457240)) b!692922))

(assert (= (and b!692922 res!457261) b!692913))

(assert (= (and b!692921 res!457252) b!692919))

(assert (= (and b!692919 res!457250) b!692930))

(assert (= (and b!692930 res!457253) b!692911))

(assert (= (and b!692911 res!457241) b!692929))

(assert (= (and b!692929 res!457258) b!692908))

(assert (= (and b!692908 res!457247) b!692914))

(assert (= (and b!692914 res!457249) b!692926))

(assert (= (and b!692926 res!457254) b!692912))

(assert (= (and b!692912 c!78200) b!692907))

(assert (= (and b!692912 (not c!78200)) b!692927))

(assert (= (and b!692912 res!457260) b!692915))

(assert (= (and b!692915 res!457244) b!692918))

(assert (= (and b!692918 res!457245) b!692924))

(assert (= (and b!692924 res!457255) b!692925))

(assert (= (and b!692925 res!457248) b!692920))

(assert (= (and b!692920 res!457242) b!692928))

(assert (= (and b!692920 (not res!457251)) b!692923))

(assert (= (and b!692923 res!457259) b!692917))

(declare-fun m!655383 () Bool)

(assert (=> b!692915 m!655383))

(assert (=> b!692915 m!655383))

(declare-fun m!655385 () Bool)

(assert (=> b!692915 m!655385))

(declare-fun m!655387 () Bool)

(assert (=> b!692930 m!655387))

(declare-fun m!655389 () Bool)

(assert (=> b!692929 m!655389))

(declare-fun m!655391 () Bool)

(assert (=> b!692909 m!655391))

(declare-fun m!655393 () Bool)

(assert (=> b!692918 m!655393))

(declare-fun m!655395 () Bool)

(assert (=> b!692913 m!655395))

(assert (=> b!692916 m!655395))

(declare-fun m!655397 () Bool)

(assert (=> b!692907 m!655397))

(declare-fun m!655399 () Bool)

(assert (=> b!692907 m!655399))

(assert (=> b!692912 m!655383))

(declare-fun m!655401 () Bool)

(assert (=> start!61980 m!655401))

(declare-fun m!655403 () Bool)

(assert (=> b!692925 m!655403))

(assert (=> b!692926 m!655383))

(assert (=> b!692926 m!655383))

(declare-fun m!655405 () Bool)

(assert (=> b!692926 m!655405))

(declare-fun m!655407 () Bool)

(assert (=> b!692906 m!655407))

(declare-fun m!655409 () Bool)

(assert (=> b!692917 m!655409))

(declare-fun m!655411 () Bool)

(assert (=> b!692908 m!655411))

(assert (=> b!692928 m!655409))

(declare-fun m!655413 () Bool)

(assert (=> b!692910 m!655413))

(declare-fun m!655415 () Bool)

(assert (=> b!692919 m!655415))

(declare-fun m!655417 () Bool)

(assert (=> b!692924 m!655417))

(push 1)

