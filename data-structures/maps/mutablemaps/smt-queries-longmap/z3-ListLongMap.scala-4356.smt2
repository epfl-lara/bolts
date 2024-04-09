; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60182 () Bool)

(assert start!60182)

(declare-fun b!671887 () Bool)

(declare-fun e!383887 () Bool)

(declare-fun e!383889 () Bool)

(assert (=> b!671887 (= e!383887 e!383889)))

(declare-fun res!438723 () Bool)

(assert (=> b!671887 (=> (not res!438723) (not e!383889))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!671887 (= res!438723 (bvsle from!3004 i!1382))))

(declare-fun b!671888 () Bool)

(declare-fun res!438730 () Bool)

(declare-fun e!383884 () Bool)

(assert (=> b!671888 (=> (not res!438730) (not e!383884))))

(declare-datatypes ((List!12875 0))(
  ( (Nil!12872) (Cons!12871 (h!13916 (_ BitVec 64)) (t!19111 List!12875)) )
))
(declare-fun acc!681 () List!12875)

(declare-fun contains!3418 (List!12875 (_ BitVec 64)) Bool)

(assert (=> b!671888 (= res!438730 (not (contains!3418 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671889 () Bool)

(declare-fun res!438721 () Bool)

(assert (=> b!671889 (=> (not res!438721) (not e!383884))))

(declare-datatypes ((array!39185 0))(
  ( (array!39186 (arr!18781 (Array (_ BitVec 32) (_ BitVec 64))) (size!19145 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39185)

(assert (=> b!671889 (= res!438721 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19145 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!671890 () Bool)

(declare-fun res!438715 () Bool)

(assert (=> b!671890 (=> (not res!438715) (not e!383884))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39185 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!671890 (= res!438715 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!671891 () Bool)

(declare-fun res!438725 () Bool)

(assert (=> b!671891 (=> (not res!438725) (not e!383884))))

(declare-fun arrayNoDuplicates!0 (array!39185 (_ BitVec 32) List!12875) Bool)

(assert (=> b!671891 (= res!438725 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12872))))

(declare-fun b!671892 () Bool)

(declare-datatypes ((Unit!23588 0))(
  ( (Unit!23589) )
))
(declare-fun e!383886 () Unit!23588)

(declare-fun Unit!23590 () Unit!23588)

(assert (=> b!671892 (= e!383886 Unit!23590)))

(declare-fun b!671893 () Bool)

(declare-fun e!383881 () Bool)

(declare-fun e!383888 () Bool)

(assert (=> b!671893 (= e!383881 e!383888)))

(declare-fun res!438727 () Bool)

(assert (=> b!671893 (=> (not res!438727) (not e!383888))))

(assert (=> b!671893 (= res!438727 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!671894 () Bool)

(declare-fun e!383880 () Bool)

(declare-fun e!383883 () Bool)

(assert (=> b!671894 (= e!383880 e!383883)))

(declare-fun res!438720 () Bool)

(assert (=> b!671894 (=> (not res!438720) (not e!383883))))

(assert (=> b!671894 (= res!438720 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun lt!312199 () List!12875)

(declare-fun $colon$colon!266 (List!12875 (_ BitVec 64)) List!12875)

(assert (=> b!671894 (= lt!312199 ($colon$colon!266 acc!681 (select (arr!18781 a!3626) from!3004)))))

(declare-fun b!671895 () Bool)

(assert (=> b!671895 (= e!383883 false)))

(declare-fun lt!312198 () Bool)

(assert (=> b!671895 (= lt!312198 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312199))))

(declare-fun b!671896 () Bool)

(assert (=> b!671896 (= e!383888 (not (contains!3418 lt!312199 k0!2843)))))

(declare-fun b!671897 () Bool)

(declare-fun res!438722 () Bool)

(assert (=> b!671897 (=> (not res!438722) (not e!383883))))

(assert (=> b!671897 (= res!438722 (not (contains!3418 lt!312199 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671898 () Bool)

(declare-fun res!438716 () Bool)

(assert (=> b!671898 (=> (not res!438716) (not e!383883))))

(assert (=> b!671898 (= res!438716 (not (contains!3418 lt!312199 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671899 () Bool)

(assert (=> b!671899 (= e!383889 (not (contains!3418 acc!681 k0!2843)))))

(declare-fun b!671900 () Bool)

(declare-fun res!438717 () Bool)

(assert (=> b!671900 (=> (not res!438717) (not e!383884))))

(assert (=> b!671900 (= res!438717 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!671901 () Bool)

(assert (=> b!671901 (= e!383884 e!383880)))

(declare-fun res!438719 () Bool)

(assert (=> b!671901 (=> (not res!438719) (not e!383880))))

(assert (=> b!671901 (= res!438719 (not (= (select (arr!18781 a!3626) from!3004) k0!2843)))))

(declare-fun lt!312201 () Unit!23588)

(assert (=> b!671901 (= lt!312201 e!383886)))

(declare-fun c!76955 () Bool)

(assert (=> b!671901 (= c!76955 (= (select (arr!18781 a!3626) from!3004) k0!2843))))

(declare-fun b!671902 () Bool)

(declare-fun res!438733 () Bool)

(assert (=> b!671902 (=> (not res!438733) (not e!383884))))

(declare-fun noDuplicate!665 (List!12875) Bool)

(assert (=> b!671902 (= res!438733 (noDuplicate!665 acc!681))))

(declare-fun res!438731 () Bool)

(assert (=> start!60182 (=> (not res!438731) (not e!383884))))

(assert (=> start!60182 (= res!438731 (and (bvslt (size!19145 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19145 a!3626))))))

(assert (=> start!60182 e!383884))

(assert (=> start!60182 true))

(declare-fun array_inv!14555 (array!39185) Bool)

(assert (=> start!60182 (array_inv!14555 a!3626)))

(declare-fun b!671903 () Bool)

(declare-fun res!438712 () Bool)

(assert (=> b!671903 (=> (not res!438712) (not e!383884))))

(assert (=> b!671903 (= res!438712 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19145 a!3626))))))

(declare-fun b!671904 () Bool)

(declare-fun res!438734 () Bool)

(assert (=> b!671904 (=> (not res!438734) (not e!383884))))

(assert (=> b!671904 (= res!438734 (not (contains!3418 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671905 () Bool)

(declare-fun res!438728 () Bool)

(assert (=> b!671905 (=> (not res!438728) (not e!383884))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!671905 (= res!438728 (validKeyInArray!0 (select (arr!18781 a!3626) from!3004)))))

(declare-fun b!671906 () Bool)

(declare-fun res!438732 () Bool)

(assert (=> b!671906 (=> (not res!438732) (not e!383884))))

(assert (=> b!671906 (= res!438732 e!383887)))

(declare-fun res!438714 () Bool)

(assert (=> b!671906 (=> res!438714 e!383887)))

(declare-fun e!383885 () Bool)

(assert (=> b!671906 (= res!438714 e!383885)))

(declare-fun res!438724 () Bool)

(assert (=> b!671906 (=> (not res!438724) (not e!383885))))

(assert (=> b!671906 (= res!438724 (bvsgt from!3004 i!1382))))

(declare-fun b!671907 () Bool)

(declare-fun res!438726 () Bool)

(assert (=> b!671907 (=> (not res!438726) (not e!383883))))

(assert (=> b!671907 (= res!438726 (noDuplicate!665 lt!312199))))

(declare-fun b!671908 () Bool)

(declare-fun e!383882 () Bool)

(assert (=> b!671908 (= e!383882 (contains!3418 lt!312199 k0!2843))))

(declare-fun b!671909 () Bool)

(declare-fun res!438713 () Bool)

(assert (=> b!671909 (=> (not res!438713) (not e!383883))))

(assert (=> b!671909 (= res!438713 e!383881)))

(declare-fun res!438718 () Bool)

(assert (=> b!671909 (=> res!438718 e!383881)))

(assert (=> b!671909 (= res!438718 e!383882)))

(declare-fun res!438729 () Bool)

(assert (=> b!671909 (=> (not res!438729) (not e!383882))))

(assert (=> b!671909 (= res!438729 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!671910 () Bool)

(declare-fun Unit!23591 () Unit!23588)

(assert (=> b!671910 (= e!383886 Unit!23591)))

(assert (=> b!671910 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun lt!312200 () Unit!23588)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39185 (_ BitVec 64) (_ BitVec 32)) Unit!23588)

(assert (=> b!671910 (= lt!312200 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!671910 false))

(declare-fun b!671911 () Bool)

(assert (=> b!671911 (= e!383885 (contains!3418 acc!681 k0!2843))))

(declare-fun b!671912 () Bool)

(declare-fun res!438711 () Bool)

(assert (=> b!671912 (=> (not res!438711) (not e!383884))))

(assert (=> b!671912 (= res!438711 (validKeyInArray!0 k0!2843))))

(assert (= (and start!60182 res!438731) b!671902))

(assert (= (and b!671902 res!438733) b!671888))

(assert (= (and b!671888 res!438730) b!671904))

(assert (= (and b!671904 res!438734) b!671906))

(assert (= (and b!671906 res!438724) b!671911))

(assert (= (and b!671906 (not res!438714)) b!671887))

(assert (= (and b!671887 res!438723) b!671899))

(assert (= (and b!671906 res!438732) b!671891))

(assert (= (and b!671891 res!438725) b!671900))

(assert (= (and b!671900 res!438717) b!671903))

(assert (= (and b!671903 res!438712) b!671912))

(assert (= (and b!671912 res!438711) b!671890))

(assert (= (and b!671890 res!438715) b!671889))

(assert (= (and b!671889 res!438721) b!671905))

(assert (= (and b!671905 res!438728) b!671901))

(assert (= (and b!671901 c!76955) b!671910))

(assert (= (and b!671901 (not c!76955)) b!671892))

(assert (= (and b!671901 res!438719) b!671894))

(assert (= (and b!671894 res!438720) b!671907))

(assert (= (and b!671907 res!438726) b!671897))

(assert (= (and b!671897 res!438722) b!671898))

(assert (= (and b!671898 res!438716) b!671909))

(assert (= (and b!671909 res!438729) b!671908))

(assert (= (and b!671909 (not res!438718)) b!671893))

(assert (= (and b!671893 res!438727) b!671896))

(assert (= (and b!671909 res!438713) b!671895))

(declare-fun m!641093 () Bool)

(assert (=> b!671905 m!641093))

(assert (=> b!671905 m!641093))

(declare-fun m!641095 () Bool)

(assert (=> b!671905 m!641095))

(declare-fun m!641097 () Bool)

(assert (=> b!671912 m!641097))

(declare-fun m!641099 () Bool)

(assert (=> b!671907 m!641099))

(declare-fun m!641101 () Bool)

(assert (=> b!671902 m!641101))

(assert (=> b!671901 m!641093))

(declare-fun m!641103 () Bool)

(assert (=> b!671890 m!641103))

(assert (=> b!671894 m!641093))

(assert (=> b!671894 m!641093))

(declare-fun m!641105 () Bool)

(assert (=> b!671894 m!641105))

(declare-fun m!641107 () Bool)

(assert (=> start!60182 m!641107))

(declare-fun m!641109 () Bool)

(assert (=> b!671896 m!641109))

(declare-fun m!641111 () Bool)

(assert (=> b!671900 m!641111))

(declare-fun m!641113 () Bool)

(assert (=> b!671910 m!641113))

(declare-fun m!641115 () Bool)

(assert (=> b!671910 m!641115))

(declare-fun m!641117 () Bool)

(assert (=> b!671897 m!641117))

(assert (=> b!671908 m!641109))

(declare-fun m!641119 () Bool)

(assert (=> b!671904 m!641119))

(declare-fun m!641121 () Bool)

(assert (=> b!671895 m!641121))

(declare-fun m!641123 () Bool)

(assert (=> b!671888 m!641123))

(declare-fun m!641125 () Bool)

(assert (=> b!671898 m!641125))

(declare-fun m!641127 () Bool)

(assert (=> b!671891 m!641127))

(declare-fun m!641129 () Bool)

(assert (=> b!671911 m!641129))

(assert (=> b!671899 m!641129))

(check-sat (not b!671905) (not b!671911) (not b!671888) (not b!671900) (not b!671894) (not b!671898) (not b!671907) (not b!671904) (not b!671897) (not b!671895) (not b!671899) (not b!671908) (not start!60182) (not b!671891) (not b!671896) (not b!671890) (not b!671912) (not b!671902) (not b!671910))
(check-sat)
