; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60662 () Bool)

(assert start!60662)

(declare-fun b!680902 () Bool)

(declare-fun e!387910 () Bool)

(assert (=> b!680902 (= e!387910 true)))

(declare-fun lt!313161 () Bool)

(declare-datatypes ((List!13019 0))(
  ( (Nil!13016) (Cons!13015 (h!14060 (_ BitVec 64)) (t!19261 List!13019)) )
))
(declare-fun lt!313163 () List!13019)

(declare-fun contains!3562 (List!13019 (_ BitVec 64)) Bool)

(assert (=> b!680902 (= lt!313161 (contains!3562 lt!313163 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!680903 () Bool)

(declare-fun res!447269 () Bool)

(declare-fun e!387904 () Bool)

(assert (=> b!680903 (=> (not res!447269) (not e!387904))))

(declare-datatypes ((array!39485 0))(
  ( (array!39486 (arr!18925 (Array (_ BitVec 32) (_ BitVec 64))) (size!19289 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39485)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39485 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!680903 (= res!447269 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!680904 () Bool)

(declare-datatypes ((Unit!23870 0))(
  ( (Unit!23871) )
))
(declare-fun e!387909 () Unit!23870)

(declare-fun Unit!23872 () Unit!23870)

(assert (=> b!680904 (= e!387909 Unit!23872)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lt!313160 () Unit!23870)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39485 (_ BitVec 64) (_ BitVec 32)) Unit!23870)

(assert (=> b!680904 (= lt!313160 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!680904 false))

(declare-fun b!680905 () Bool)

(declare-fun e!387903 () Bool)

(declare-fun acc!681 () List!13019)

(assert (=> b!680905 (= e!387903 (contains!3562 acc!681 k0!2843))))

(declare-fun b!680906 () Bool)

(declare-fun Unit!23873 () Unit!23870)

(assert (=> b!680906 (= e!387909 Unit!23873)))

(declare-fun b!680907 () Bool)

(declare-fun e!387905 () Bool)

(assert (=> b!680907 (= e!387904 (not e!387905))))

(declare-fun res!447264 () Bool)

(assert (=> b!680907 (=> res!447264 e!387905)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!680907 (= res!447264 (not (validKeyInArray!0 (select (arr!18925 a!3626) from!3004))))))

(declare-fun lt!313164 () Unit!23870)

(assert (=> b!680907 (= lt!313164 e!387909)))

(declare-fun c!77192 () Bool)

(assert (=> b!680907 (= c!77192 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!680907 (arrayContainsKey!0 (array!39486 (store (arr!18925 a!3626) i!1382 k0!2843) (size!19289 a!3626)) k0!2843 from!3004)))

(declare-fun b!680908 () Bool)

(declare-fun res!447258 () Bool)

(assert (=> b!680908 (=> (not res!447258) (not e!387904))))

(declare-fun arrayNoDuplicates!0 (array!39485 (_ BitVec 32) List!13019) Bool)

(assert (=> b!680908 (= res!447258 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13016))))

(declare-fun b!680909 () Bool)

(declare-fun res!447268 () Bool)

(assert (=> b!680909 (=> (not res!447268) (not e!387904))))

(declare-fun e!387907 () Bool)

(assert (=> b!680909 (= res!447268 e!387907)))

(declare-fun res!447255 () Bool)

(assert (=> b!680909 (=> res!447255 e!387907)))

(assert (=> b!680909 (= res!447255 e!387903)))

(declare-fun res!447252 () Bool)

(assert (=> b!680909 (=> (not res!447252) (not e!387903))))

(assert (=> b!680909 (= res!447252 (bvsgt from!3004 i!1382))))

(declare-fun b!680910 () Bool)

(declare-fun res!447256 () Bool)

(assert (=> b!680910 (=> (not res!447256) (not e!387904))))

(assert (=> b!680910 (= res!447256 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!680911 () Bool)

(declare-fun res!447261 () Bool)

(assert (=> b!680911 (=> (not res!447261) (not e!387904))))

(assert (=> b!680911 (= res!447261 (not (contains!3562 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!447263 () Bool)

(assert (=> start!60662 (=> (not res!447263) (not e!387904))))

(assert (=> start!60662 (= res!447263 (and (bvslt (size!19289 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19289 a!3626))))))

(assert (=> start!60662 e!387904))

(assert (=> start!60662 true))

(declare-fun array_inv!14699 (array!39485) Bool)

(assert (=> start!60662 (array_inv!14699 a!3626)))

(declare-fun b!680912 () Bool)

(declare-fun res!447254 () Bool)

(assert (=> b!680912 (=> (not res!447254) (not e!387904))))

(assert (=> b!680912 (= res!447254 (validKeyInArray!0 k0!2843))))

(declare-fun b!680913 () Bool)

(declare-fun res!447265 () Bool)

(assert (=> b!680913 (=> (not res!447265) (not e!387904))))

(assert (=> b!680913 (= res!447265 (not (contains!3562 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!680914 () Bool)

(declare-fun e!387906 () Bool)

(assert (=> b!680914 (= e!387906 (not (contains!3562 acc!681 k0!2843)))))

(declare-fun b!680915 () Bool)

(declare-fun res!447262 () Bool)

(assert (=> b!680915 (=> (not res!447262) (not e!387904))))

(declare-fun noDuplicate!809 (List!13019) Bool)

(assert (=> b!680915 (= res!447262 (noDuplicate!809 acc!681))))

(declare-fun b!680916 () Bool)

(declare-fun res!447257 () Bool)

(assert (=> b!680916 (=> res!447257 e!387910)))

(assert (=> b!680916 (= res!447257 (contains!3562 lt!313163 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!680917 () Bool)

(assert (=> b!680917 (= e!387907 e!387906)))

(declare-fun res!447260 () Bool)

(assert (=> b!680917 (=> (not res!447260) (not e!387906))))

(assert (=> b!680917 (= res!447260 (bvsle from!3004 i!1382))))

(declare-fun b!680918 () Bool)

(declare-fun res!447266 () Bool)

(assert (=> b!680918 (=> (not res!447266) (not e!387904))))

(assert (=> b!680918 (= res!447266 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19289 a!3626))))))

(declare-fun b!680919 () Bool)

(declare-fun res!447259 () Bool)

(assert (=> b!680919 (=> res!447259 e!387910)))

(assert (=> b!680919 (= res!447259 (not (noDuplicate!809 lt!313163)))))

(declare-fun b!680920 () Bool)

(declare-fun res!447267 () Bool)

(assert (=> b!680920 (=> (not res!447267) (not e!387904))))

(assert (=> b!680920 (= res!447267 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19289 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!680921 () Bool)

(assert (=> b!680921 (= e!387905 e!387910)))

(declare-fun res!447253 () Bool)

(assert (=> b!680921 (=> res!447253 e!387910)))

(assert (=> b!680921 (= res!447253 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!311 (List!13019 (_ BitVec 64)) List!13019)

(assert (=> b!680921 (= lt!313163 ($colon$colon!311 acc!681 (select (arr!18925 a!3626) from!3004)))))

(declare-fun subseq!147 (List!13019 List!13019) Bool)

(assert (=> b!680921 (subseq!147 acc!681 acc!681)))

(declare-fun lt!313162 () Unit!23870)

(declare-fun lemmaListSubSeqRefl!0 (List!13019) Unit!23870)

(assert (=> b!680921 (= lt!313162 (lemmaListSubSeqRefl!0 acc!681))))

(assert (= (and start!60662 res!447263) b!680915))

(assert (= (and b!680915 res!447262) b!680911))

(assert (= (and b!680911 res!447261) b!680913))

(assert (= (and b!680913 res!447265) b!680909))

(assert (= (and b!680909 res!447252) b!680905))

(assert (= (and b!680909 (not res!447255)) b!680917))

(assert (= (and b!680917 res!447260) b!680914))

(assert (= (and b!680909 res!447268) b!680908))

(assert (= (and b!680908 res!447258) b!680910))

(assert (= (and b!680910 res!447256) b!680918))

(assert (= (and b!680918 res!447266) b!680912))

(assert (= (and b!680912 res!447254) b!680903))

(assert (= (and b!680903 res!447269) b!680920))

(assert (= (and b!680920 res!447267) b!680907))

(assert (= (and b!680907 c!77192) b!680904))

(assert (= (and b!680907 (not c!77192)) b!680906))

(assert (= (and b!680907 (not res!447264)) b!680921))

(assert (= (and b!680921 (not res!447253)) b!680919))

(assert (= (and b!680919 (not res!447259)) b!680916))

(assert (= (and b!680916 (not res!447257)) b!680902))

(declare-fun m!645903 () Bool)

(assert (=> b!680921 m!645903))

(assert (=> b!680921 m!645903))

(declare-fun m!645905 () Bool)

(assert (=> b!680921 m!645905))

(declare-fun m!645907 () Bool)

(assert (=> b!680921 m!645907))

(declare-fun m!645909 () Bool)

(assert (=> b!680921 m!645909))

(declare-fun m!645911 () Bool)

(assert (=> b!680904 m!645911))

(declare-fun m!645913 () Bool)

(assert (=> b!680916 m!645913))

(declare-fun m!645915 () Bool)

(assert (=> b!680915 m!645915))

(declare-fun m!645917 () Bool)

(assert (=> b!680910 m!645917))

(declare-fun m!645919 () Bool)

(assert (=> b!680908 m!645919))

(declare-fun m!645921 () Bool)

(assert (=> b!680919 m!645921))

(assert (=> b!680907 m!645903))

(declare-fun m!645923 () Bool)

(assert (=> b!680907 m!645923))

(declare-fun m!645925 () Bool)

(assert (=> b!680907 m!645925))

(assert (=> b!680907 m!645903))

(declare-fun m!645927 () Bool)

(assert (=> b!680907 m!645927))

(declare-fun m!645929 () Bool)

(assert (=> b!680907 m!645929))

(declare-fun m!645931 () Bool)

(assert (=> start!60662 m!645931))

(declare-fun m!645933 () Bool)

(assert (=> b!680911 m!645933))

(declare-fun m!645935 () Bool)

(assert (=> b!680902 m!645935))

(declare-fun m!645937 () Bool)

(assert (=> b!680912 m!645937))

(declare-fun m!645939 () Bool)

(assert (=> b!680905 m!645939))

(declare-fun m!645941 () Bool)

(assert (=> b!680903 m!645941))

(assert (=> b!680914 m!645939))

(declare-fun m!645943 () Bool)

(assert (=> b!680913 m!645943))

(check-sat (not b!680914) (not b!680915) (not b!680907) (not b!680908) (not b!680913) (not b!680905) (not b!680903) (not b!680902) (not b!680912) (not start!60662) (not b!680921) (not b!680910) (not b!680919) (not b!680916) (not b!680904) (not b!680911))
(check-sat)
