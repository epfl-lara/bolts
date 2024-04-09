; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61570 () Bool)

(assert start!61570)

(declare-fun b!687974 () Bool)

(declare-fun e!391890 () Bool)

(assert (=> b!687974 (= e!391890 true)))

(declare-fun lt!315610 () Bool)

(declare-fun e!391885 () Bool)

(assert (=> b!687974 (= lt!315610 e!391885)))

(declare-fun res!452910 () Bool)

(assert (=> b!687974 (=> res!452910 e!391885)))

(declare-fun e!391882 () Bool)

(assert (=> b!687974 (= res!452910 e!391882)))

(declare-fun res!452900 () Bool)

(assert (=> b!687974 (=> (not res!452900) (not e!391882))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!687974 (= res!452900 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun res!452903 () Bool)

(declare-fun e!391881 () Bool)

(assert (=> start!61570 (=> (not res!452903) (not e!391881))))

(declare-datatypes ((array!39667 0))(
  ( (array!39668 (arr!19001 (Array (_ BitVec 32) (_ BitVec 64))) (size!19382 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39667)

(assert (=> start!61570 (= res!452903 (and (bvslt (size!19382 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19382 a!3626))))))

(assert (=> start!61570 e!391881))

(assert (=> start!61570 true))

(declare-fun array_inv!14775 (array!39667) Bool)

(assert (=> start!61570 (array_inv!14775 a!3626)))

(declare-fun b!687975 () Bool)

(declare-fun res!452902 () Bool)

(assert (=> b!687975 (=> (not res!452902) (not e!391881))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39667 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!687975 (= res!452902 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!687976 () Bool)

(declare-fun res!452906 () Bool)

(assert (=> b!687976 (=> (not res!452906) (not e!391881))))

(declare-datatypes ((List!13095 0))(
  ( (Nil!13092) (Cons!13091 (h!14136 (_ BitVec 64)) (t!19367 List!13095)) )
))
(declare-fun acc!681 () List!13095)

(declare-fun noDuplicate!885 (List!13095) Bool)

(assert (=> b!687976 (= res!452906 (noDuplicate!885 acc!681))))

(declare-fun b!687977 () Bool)

(declare-fun e!391884 () Bool)

(declare-fun e!391883 () Bool)

(assert (=> b!687977 (= e!391884 e!391883)))

(declare-fun res!452901 () Bool)

(assert (=> b!687977 (=> (not res!452901) (not e!391883))))

(assert (=> b!687977 (= res!452901 (bvsle from!3004 i!1382))))

(declare-fun b!687978 () Bool)

(declare-fun res!452909 () Bool)

(assert (=> b!687978 (=> (not res!452909) (not e!391881))))

(assert (=> b!687978 (= res!452909 e!391884)))

(declare-fun res!452895 () Bool)

(assert (=> b!687978 (=> res!452895 e!391884)))

(declare-fun e!391889 () Bool)

(assert (=> b!687978 (= res!452895 e!391889)))

(declare-fun res!452911 () Bool)

(assert (=> b!687978 (=> (not res!452911) (not e!391889))))

(assert (=> b!687978 (= res!452911 (bvsgt from!3004 i!1382))))

(declare-fun b!687979 () Bool)

(declare-fun contains!3638 (List!13095 (_ BitVec 64)) Bool)

(assert (=> b!687979 (= e!391889 (contains!3638 acc!681 k!2843))))

(declare-fun b!687980 () Bool)

(declare-datatypes ((Unit!24242 0))(
  ( (Unit!24243) )
))
(declare-fun e!391891 () Unit!24242)

(declare-fun Unit!24244 () Unit!24242)

(assert (=> b!687980 (= e!391891 Unit!24244)))

(declare-fun lt!315609 () Unit!24242)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39667 (_ BitVec 64) (_ BitVec 32)) Unit!24242)

(assert (=> b!687980 (= lt!315609 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!687980 false))

(declare-fun b!687981 () Bool)

(declare-fun lt!315617 () List!13095)

(assert (=> b!687981 (= e!391882 (contains!3638 lt!315617 k!2843))))

(declare-fun b!687982 () Bool)

(assert (=> b!687982 (= e!391881 (not e!391890))))

(declare-fun res!452892 () Bool)

(assert (=> b!687982 (=> res!452892 e!391890)))

(assert (=> b!687982 (= res!452892 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun arrayNoDuplicates!0 (array!39667 (_ BitVec 32) List!13095) Bool)

(assert (=> b!687982 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315617)))

(declare-fun lt!315618 () Unit!24242)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39667 (_ BitVec 64) (_ BitVec 32) List!13095 List!13095) Unit!24242)

(assert (=> b!687982 (= lt!315618 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315617))))

(declare-fun -!188 (List!13095 (_ BitVec 64)) List!13095)

(assert (=> b!687982 (= (-!188 lt!315617 k!2843) acc!681)))

(declare-fun $colon$colon!387 (List!13095 (_ BitVec 64)) List!13095)

(assert (=> b!687982 (= lt!315617 ($colon$colon!387 acc!681 k!2843))))

(declare-fun lt!315613 () Unit!24242)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13095) Unit!24242)

(assert (=> b!687982 (= lt!315613 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!223 (List!13095 List!13095) Bool)

(assert (=> b!687982 (subseq!223 acc!681 acc!681)))

(declare-fun lt!315614 () Unit!24242)

(declare-fun lemmaListSubSeqRefl!0 (List!13095) Unit!24242)

(assert (=> b!687982 (= lt!315614 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!687982 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315612 () Unit!24242)

(declare-fun e!391887 () Unit!24242)

(assert (=> b!687982 (= lt!315612 e!391887)))

(declare-fun c!77909 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!687982 (= c!77909 (validKeyInArray!0 (select (arr!19001 a!3626) from!3004)))))

(declare-fun lt!315616 () Unit!24242)

(assert (=> b!687982 (= lt!315616 e!391891)))

(declare-fun c!77908 () Bool)

(assert (=> b!687982 (= c!77908 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!687982 (arrayContainsKey!0 (array!39668 (store (arr!19001 a!3626) i!1382 k!2843) (size!19382 a!3626)) k!2843 from!3004)))

(declare-fun b!687983 () Bool)

(declare-fun res!452907 () Bool)

(assert (=> b!687983 (=> (not res!452907) (not e!391881))))

(assert (=> b!687983 (= res!452907 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13092))))

(declare-fun b!687984 () Bool)

(declare-fun e!391888 () Bool)

(assert (=> b!687984 (= e!391885 e!391888)))

(declare-fun res!452908 () Bool)

(assert (=> b!687984 (=> (not res!452908) (not e!391888))))

(assert (=> b!687984 (= res!452908 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!687985 () Bool)

(declare-fun res!452893 () Bool)

(assert (=> b!687985 (=> (not res!452893) (not e!391881))))

(assert (=> b!687985 (= res!452893 (not (contains!3638 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!687986 () Bool)

(assert (=> b!687986 (= e!391883 (not (contains!3638 acc!681 k!2843)))))

(declare-fun b!687987 () Bool)

(declare-fun res!452898 () Bool)

(assert (=> b!687987 (=> res!452898 e!391890)))

(assert (=> b!687987 (= res!452898 (contains!3638 lt!315617 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687988 () Bool)

(declare-fun res!452899 () Bool)

(assert (=> b!687988 (=> (not res!452899) (not e!391881))))

(assert (=> b!687988 (= res!452899 (validKeyInArray!0 k!2843))))

(declare-fun b!687989 () Bool)

(declare-fun res!452894 () Bool)

(assert (=> b!687989 (=> (not res!452894) (not e!391881))))

(assert (=> b!687989 (= res!452894 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!687990 () Bool)

(declare-fun res!452912 () Bool)

(assert (=> b!687990 (=> (not res!452912) (not e!391881))))

(assert (=> b!687990 (= res!452912 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19382 a!3626))))))

(declare-fun b!687991 () Bool)

(declare-fun res!452896 () Bool)

(assert (=> b!687991 (=> res!452896 e!391890)))

(assert (=> b!687991 (= res!452896 (contains!3638 lt!315617 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687992 () Bool)

(assert (=> b!687992 (= e!391888 (not (contains!3638 lt!315617 k!2843)))))

(declare-fun b!687993 () Bool)

(declare-fun res!452905 () Bool)

(assert (=> b!687993 (=> (not res!452905) (not e!391881))))

(assert (=> b!687993 (= res!452905 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19382 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!687994 () Bool)

(declare-fun res!452897 () Bool)

(assert (=> b!687994 (=> (not res!452897) (not e!391881))))

(assert (=> b!687994 (= res!452897 (not (contains!3638 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!687995 () Bool)

(declare-fun Unit!24245 () Unit!24242)

(assert (=> b!687995 (= e!391887 Unit!24245)))

(declare-fun b!687996 () Bool)

(declare-fun Unit!24246 () Unit!24242)

(assert (=> b!687996 (= e!391891 Unit!24246)))

(declare-fun b!687997 () Bool)

(declare-fun res!452904 () Bool)

(assert (=> b!687997 (=> res!452904 e!391890)))

(assert (=> b!687997 (= res!452904 (not (noDuplicate!885 lt!315617)))))

(declare-fun b!687998 () Bool)

(declare-fun lt!315615 () Unit!24242)

(assert (=> b!687998 (= e!391887 lt!315615)))

(declare-fun lt!315611 () Unit!24242)

(assert (=> b!687998 (= lt!315611 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!687998 (subseq!223 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39667 List!13095 List!13095 (_ BitVec 32)) Unit!24242)

(assert (=> b!687998 (= lt!315615 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!387 acc!681 (select (arr!19001 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!687998 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(assert (= (and start!61570 res!452903) b!687976))

(assert (= (and b!687976 res!452906) b!687985))

(assert (= (and b!687985 res!452893) b!687994))

(assert (= (and b!687994 res!452897) b!687978))

(assert (= (and b!687978 res!452911) b!687979))

(assert (= (and b!687978 (not res!452895)) b!687977))

(assert (= (and b!687977 res!452901) b!687986))

(assert (= (and b!687978 res!452909) b!687983))

(assert (= (and b!687983 res!452907) b!687989))

(assert (= (and b!687989 res!452894) b!687990))

(assert (= (and b!687990 res!452912) b!687988))

(assert (= (and b!687988 res!452899) b!687975))

(assert (= (and b!687975 res!452902) b!687993))

(assert (= (and b!687993 res!452905) b!687982))

(assert (= (and b!687982 c!77908) b!687980))

(assert (= (and b!687982 (not c!77908)) b!687996))

(assert (= (and b!687982 c!77909) b!687998))

(assert (= (and b!687982 (not c!77909)) b!687995))

(assert (= (and b!687982 (not res!452892)) b!687997))

(assert (= (and b!687997 (not res!452904)) b!687991))

(assert (= (and b!687991 (not res!452896)) b!687987))

(assert (= (and b!687987 (not res!452898)) b!687974))

(assert (= (and b!687974 res!452900) b!687981))

(assert (= (and b!687974 (not res!452910)) b!687984))

(assert (= (and b!687984 res!452908) b!687992))

(declare-fun m!651995 () Bool)

(assert (=> b!687986 m!651995))

(declare-fun m!651997 () Bool)

(assert (=> b!687981 m!651997))

(declare-fun m!651999 () Bool)

(assert (=> b!687988 m!651999))

(declare-fun m!652001 () Bool)

(assert (=> b!687994 m!652001))

(declare-fun m!652003 () Bool)

(assert (=> b!687987 m!652003))

(declare-fun m!652005 () Bool)

(assert (=> start!61570 m!652005))

(assert (=> b!687979 m!651995))

(declare-fun m!652007 () Bool)

(assert (=> b!687983 m!652007))

(declare-fun m!652009 () Bool)

(assert (=> b!687989 m!652009))

(declare-fun m!652011 () Bool)

(assert (=> b!687998 m!652011))

(declare-fun m!652013 () Bool)

(assert (=> b!687998 m!652013))

(declare-fun m!652015 () Bool)

(assert (=> b!687998 m!652015))

(declare-fun m!652017 () Bool)

(assert (=> b!687998 m!652017))

(assert (=> b!687998 m!652013))

(assert (=> b!687998 m!652015))

(declare-fun m!652019 () Bool)

(assert (=> b!687998 m!652019))

(declare-fun m!652021 () Bool)

(assert (=> b!687998 m!652021))

(declare-fun m!652023 () Bool)

(assert (=> b!687985 m!652023))

(declare-fun m!652025 () Bool)

(assert (=> b!687982 m!652025))

(assert (=> b!687982 m!652011))

(assert (=> b!687982 m!652013))

(declare-fun m!652027 () Bool)

(assert (=> b!687982 m!652027))

(declare-fun m!652029 () Bool)

(assert (=> b!687982 m!652029))

(assert (=> b!687982 m!652019))

(declare-fun m!652031 () Bool)

(assert (=> b!687982 m!652031))

(declare-fun m!652033 () Bool)

(assert (=> b!687982 m!652033))

(declare-fun m!652035 () Bool)

(assert (=> b!687982 m!652035))

(declare-fun m!652037 () Bool)

(assert (=> b!687982 m!652037))

(assert (=> b!687982 m!652013))

(declare-fun m!652039 () Bool)

(assert (=> b!687982 m!652039))

(declare-fun m!652041 () Bool)

(assert (=> b!687982 m!652041))

(assert (=> b!687982 m!652021))

(declare-fun m!652043 () Bool)

(assert (=> b!687980 m!652043))

(declare-fun m!652045 () Bool)

(assert (=> b!687976 m!652045))

(declare-fun m!652047 () Bool)

(assert (=> b!687975 m!652047))

(assert (=> b!687992 m!651997))

(declare-fun m!652049 () Bool)

(assert (=> b!687997 m!652049))

(declare-fun m!652051 () Bool)

(assert (=> b!687991 m!652051))

(push 1)

(assert (not b!687980))

(assert (not b!687998))

(assert (not b!687997))

(assert (not b!687985))

(assert (not b!687983))

(assert (not b!687981))

(assert (not b!687992))

(assert (not b!687988))

(assert (not b!687975))

(assert (not b!687994))

(assert (not b!687991))

(assert (not start!61570))

(assert (not b!687976))

(assert (not b!687989))

(assert (not b!687979))

(assert (not b!687986))

(assert (not b!687982))

(assert (not b!687987))

(check-sat)

