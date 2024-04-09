; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60372 () Bool)

(assert start!60372)

(declare-fun b!677965 () Bool)

(declare-fun res!444570 () Bool)

(declare-fun e!386386 () Bool)

(assert (=> b!677965 (=> (not res!444570) (not e!386386))))

(declare-datatypes ((List!12970 0))(
  ( (Nil!12967) (Cons!12966 (h!14011 (_ BitVec 64)) (t!19206 List!12970)) )
))
(declare-fun acc!681 () List!12970)

(declare-fun noDuplicate!760 (List!12970) Bool)

(assert (=> b!677965 (= res!444570 (noDuplicate!760 acc!681))))

(declare-fun b!677966 () Bool)

(declare-fun res!444568 () Bool)

(assert (=> b!677966 (=> (not res!444568) (not e!386386))))

(declare-datatypes ((array!39375 0))(
  ( (array!39376 (arr!18876 (Array (_ BitVec 32) (_ BitVec 64))) (size!19240 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39375)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39375 (_ BitVec 32) List!12970) Bool)

(assert (=> b!677966 (= res!444568 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!677967 () Bool)

(declare-fun e!386385 () Bool)

(declare-fun e!386388 () Bool)

(assert (=> b!677967 (= e!386385 e!386388)))

(declare-fun res!444564 () Bool)

(assert (=> b!677967 (=> (not res!444564) (not e!386388))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!677967 (= res!444564 (bvsle from!3004 i!1382))))

(declare-fun b!677969 () Bool)

(declare-fun res!444574 () Bool)

(assert (=> b!677969 (=> (not res!444574) (not e!386386))))

(assert (=> b!677969 (= res!444574 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12967))))

(declare-fun b!677970 () Bool)

(declare-datatypes ((Unit!23764 0))(
  ( (Unit!23765) )
))
(declare-fun e!386387 () Unit!23764)

(declare-fun Unit!23766 () Unit!23764)

(assert (=> b!677970 (= e!386387 Unit!23766)))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39375 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!677970 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312813 () Unit!23764)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39375 (_ BitVec 64) (_ BitVec 32)) Unit!23764)

(assert (=> b!677970 (= lt!312813 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!677970 false))

(declare-fun b!677971 () Bool)

(declare-fun res!444569 () Bool)

(assert (=> b!677971 (=> (not res!444569) (not e!386386))))

(assert (=> b!677971 (= res!444569 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!677972 () Bool)

(declare-fun e!386389 () Bool)

(declare-fun contains!3513 (List!12970 (_ BitVec 64)) Bool)

(assert (=> b!677972 (= e!386389 (contains!3513 acc!681 k!2843))))

(declare-fun b!677973 () Bool)

(assert (=> b!677973 (= e!386386 (= (select (arr!18876 a!3626) from!3004) k!2843))))

(declare-fun lt!312812 () Unit!23764)

(assert (=> b!677973 (= lt!312812 e!386387)))

(declare-fun c!77069 () Bool)

(assert (=> b!677973 (= c!77069 (= (select (arr!18876 a!3626) from!3004) k!2843))))

(declare-fun b!677974 () Bool)

(declare-fun res!444571 () Bool)

(assert (=> b!677974 (=> (not res!444571) (not e!386386))))

(assert (=> b!677974 (= res!444571 e!386385)))

(declare-fun res!444565 () Bool)

(assert (=> b!677974 (=> res!444565 e!386385)))

(assert (=> b!677974 (= res!444565 e!386389)))

(declare-fun res!444566 () Bool)

(assert (=> b!677974 (=> (not res!444566) (not e!386389))))

(assert (=> b!677974 (= res!444566 (bvsgt from!3004 i!1382))))

(declare-fun b!677975 () Bool)

(declare-fun res!444563 () Bool)

(assert (=> b!677975 (=> (not res!444563) (not e!386386))))

(assert (=> b!677975 (= res!444563 (not (contains!3513 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677976 () Bool)

(assert (=> b!677976 (= e!386388 (not (contains!3513 acc!681 k!2843)))))

(declare-fun res!444575 () Bool)

(assert (=> start!60372 (=> (not res!444575) (not e!386386))))

(assert (=> start!60372 (= res!444575 (and (bvslt (size!19240 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19240 a!3626))))))

(assert (=> start!60372 e!386386))

(assert (=> start!60372 true))

(declare-fun array_inv!14650 (array!39375) Bool)

(assert (=> start!60372 (array_inv!14650 a!3626)))

(declare-fun b!677968 () Bool)

(declare-fun res!444572 () Bool)

(assert (=> b!677968 (=> (not res!444572) (not e!386386))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!677968 (= res!444572 (validKeyInArray!0 (select (arr!18876 a!3626) from!3004)))))

(declare-fun b!677977 () Bool)

(declare-fun res!444573 () Bool)

(assert (=> b!677977 (=> (not res!444573) (not e!386386))))

(assert (=> b!677977 (= res!444573 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19240 a!3626))))))

(declare-fun b!677978 () Bool)

(declare-fun res!444567 () Bool)

(assert (=> b!677978 (=> (not res!444567) (not e!386386))))

(assert (=> b!677978 (= res!444567 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19240 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!677979 () Bool)

(declare-fun Unit!23767 () Unit!23764)

(assert (=> b!677979 (= e!386387 Unit!23767)))

(declare-fun b!677980 () Bool)

(declare-fun res!444561 () Bool)

(assert (=> b!677980 (=> (not res!444561) (not e!386386))))

(assert (=> b!677980 (= res!444561 (not (contains!3513 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677981 () Bool)

(declare-fun res!444562 () Bool)

(assert (=> b!677981 (=> (not res!444562) (not e!386386))))

(assert (=> b!677981 (= res!444562 (validKeyInArray!0 k!2843))))

(assert (= (and start!60372 res!444575) b!677965))

(assert (= (and b!677965 res!444570) b!677980))

(assert (= (and b!677980 res!444561) b!677975))

(assert (= (and b!677975 res!444563) b!677974))

(assert (= (and b!677974 res!444566) b!677972))

(assert (= (and b!677974 (not res!444565)) b!677967))

(assert (= (and b!677967 res!444564) b!677976))

(assert (= (and b!677974 res!444571) b!677969))

(assert (= (and b!677969 res!444574) b!677966))

(assert (= (and b!677966 res!444568) b!677977))

(assert (= (and b!677977 res!444573) b!677981))

(assert (= (and b!677981 res!444562) b!677971))

(assert (= (and b!677971 res!444569) b!677978))

(assert (= (and b!677978 res!444567) b!677968))

(assert (= (and b!677968 res!444572) b!677973))

(assert (= (and b!677973 c!77069) b!677970))

(assert (= (and b!677973 (not c!77069)) b!677979))

(declare-fun m!643941 () Bool)

(assert (=> b!677970 m!643941))

(declare-fun m!643943 () Bool)

(assert (=> b!677970 m!643943))

(declare-fun m!643945 () Bool)

(assert (=> b!677965 m!643945))

(declare-fun m!643947 () Bool)

(assert (=> b!677975 m!643947))

(declare-fun m!643949 () Bool)

(assert (=> b!677966 m!643949))

(declare-fun m!643951 () Bool)

(assert (=> b!677972 m!643951))

(declare-fun m!643953 () Bool)

(assert (=> b!677980 m!643953))

(declare-fun m!643955 () Bool)

(assert (=> b!677973 m!643955))

(declare-fun m!643957 () Bool)

(assert (=> b!677969 m!643957))

(assert (=> b!677976 m!643951))

(declare-fun m!643959 () Bool)

(assert (=> b!677981 m!643959))

(declare-fun m!643961 () Bool)

(assert (=> b!677971 m!643961))

(declare-fun m!643963 () Bool)

(assert (=> start!60372 m!643963))

(assert (=> b!677968 m!643955))

(assert (=> b!677968 m!643955))

(declare-fun m!643965 () Bool)

(assert (=> b!677968 m!643965))

(push 1)

(assert (not b!677968))

(assert (not b!677966))

(assert (not b!677971))

(assert (not b!677975))

(assert (not b!677970))

(assert (not b!677972))

(assert (not b!677981))

(assert (not b!677969))

(assert (not b!677980))

(assert (not b!677965))

(assert (not b!677976))

(assert (not start!60372))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

