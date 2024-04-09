; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60186 () Bool)

(assert start!60186)

(declare-fun b!672043 () Bool)

(declare-fun e!383950 () Bool)

(declare-fun e!383951 () Bool)

(assert (=> b!672043 (= e!383950 e!383951)))

(declare-fun res!438877 () Bool)

(assert (=> b!672043 (=> (not res!438877) (not e!383951))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!672043 (= res!438877 (bvsle from!3004 i!1382))))

(declare-fun b!672044 () Bool)

(declare-datatypes ((Unit!23596 0))(
  ( (Unit!23597) )
))
(declare-fun e!383946 () Unit!23596)

(declare-fun Unit!23598 () Unit!23596)

(assert (=> b!672044 (= e!383946 Unit!23598)))

(declare-fun b!672045 () Bool)

(declare-fun Unit!23599 () Unit!23596)

(assert (=> b!672045 (= e!383946 Unit!23599)))

(declare-datatypes ((array!39189 0))(
  ( (array!39190 (arr!18783 (Array (_ BitVec 32) (_ BitVec 64))) (size!19147 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39189)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39189 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!672045 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312224 () Unit!23596)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39189 (_ BitVec 64) (_ BitVec 32)) Unit!23596)

(assert (=> b!672045 (= lt!312224 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!672045 false))

(declare-fun b!672046 () Bool)

(declare-fun e!383948 () Bool)

(declare-fun e!383947 () Bool)

(assert (=> b!672046 (= e!383948 e!383947)))

(declare-fun res!438878 () Bool)

(assert (=> b!672046 (=> (not res!438878) (not e!383947))))

(assert (=> b!672046 (= res!438878 (not (= (select (arr!18783 a!3626) from!3004) k!2843)))))

(declare-fun lt!312225 () Unit!23596)

(assert (=> b!672046 (= lt!312225 e!383946)))

(declare-fun c!76961 () Bool)

(assert (=> b!672046 (= c!76961 (= (select (arr!18783 a!3626) from!3004) k!2843))))

(declare-fun res!438871 () Bool)

(assert (=> start!60186 (=> (not res!438871) (not e!383948))))

(assert (=> start!60186 (= res!438871 (and (bvslt (size!19147 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19147 a!3626))))))

(assert (=> start!60186 e!383948))

(assert (=> start!60186 true))

(declare-fun array_inv!14557 (array!39189) Bool)

(assert (=> start!60186 (array_inv!14557 a!3626)))

(declare-fun b!672047 () Bool)

(declare-fun res!438874 () Bool)

(assert (=> b!672047 (=> (not res!438874) (not e!383948))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!672047 (= res!438874 (validKeyInArray!0 k!2843))))

(declare-fun b!672048 () Bool)

(declare-fun e!383954 () Bool)

(declare-datatypes ((List!12877 0))(
  ( (Nil!12874) (Cons!12873 (h!13918 (_ BitVec 64)) (t!19113 List!12877)) )
))
(declare-fun lt!312222 () List!12877)

(declare-fun contains!3420 (List!12877 (_ BitVec 64)) Bool)

(assert (=> b!672048 (= e!383954 (not (contains!3420 lt!312222 k!2843)))))

(declare-fun b!672049 () Bool)

(declare-fun res!438870 () Bool)

(assert (=> b!672049 (=> (not res!438870) (not e!383948))))

(assert (=> b!672049 (= res!438870 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!672050 () Bool)

(declare-fun res!438857 () Bool)

(declare-fun e!383952 () Bool)

(assert (=> b!672050 (=> (not res!438857) (not e!383952))))

(assert (=> b!672050 (= res!438857 (not (contains!3420 lt!312222 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672051 () Bool)

(declare-fun res!438864 () Bool)

(assert (=> b!672051 (=> (not res!438864) (not e!383948))))

(declare-fun arrayNoDuplicates!0 (array!39189 (_ BitVec 32) List!12877) Bool)

(assert (=> b!672051 (= res!438864 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12874))))

(declare-fun b!672052 () Bool)

(assert (=> b!672052 (= e!383952 false)))

(declare-fun lt!312223 () Bool)

(assert (=> b!672052 (= lt!312223 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312222))))

(declare-fun b!672053 () Bool)

(assert (=> b!672053 (= e!383947 e!383952)))

(declare-fun res!438876 () Bool)

(assert (=> b!672053 (=> (not res!438876) (not e!383952))))

(assert (=> b!672053 (= res!438876 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun acc!681 () List!12877)

(declare-fun $colon$colon!268 (List!12877 (_ BitVec 64)) List!12877)

(assert (=> b!672053 (= lt!312222 ($colon$colon!268 acc!681 (select (arr!18783 a!3626) from!3004)))))

(declare-fun b!672054 () Bool)

(declare-fun res!438862 () Bool)

(assert (=> b!672054 (=> (not res!438862) (not e!383948))))

(assert (=> b!672054 (= res!438862 e!383950)))

(declare-fun res!438865 () Bool)

(assert (=> b!672054 (=> res!438865 e!383950)))

(declare-fun e!383953 () Bool)

(assert (=> b!672054 (= res!438865 e!383953)))

(declare-fun res!438875 () Bool)

(assert (=> b!672054 (=> (not res!438875) (not e!383953))))

(assert (=> b!672054 (= res!438875 (bvsgt from!3004 i!1382))))

(declare-fun b!672055 () Bool)

(declare-fun res!438860 () Bool)

(assert (=> b!672055 (=> (not res!438860) (not e!383952))))

(assert (=> b!672055 (= res!438860 (not (contains!3420 lt!312222 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672056 () Bool)

(assert (=> b!672056 (= e!383951 (not (contains!3420 acc!681 k!2843)))))

(declare-fun b!672057 () Bool)

(declare-fun res!438859 () Bool)

(assert (=> b!672057 (=> (not res!438859) (not e!383948))))

(assert (=> b!672057 (= res!438859 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!672058 () Bool)

(declare-fun e!383956 () Bool)

(assert (=> b!672058 (= e!383956 (contains!3420 lt!312222 k!2843))))

(declare-fun b!672059 () Bool)

(declare-fun res!438856 () Bool)

(assert (=> b!672059 (=> (not res!438856) (not e!383948))))

(assert (=> b!672059 (= res!438856 (validKeyInArray!0 (select (arr!18783 a!3626) from!3004)))))

(declare-fun b!672060 () Bool)

(declare-fun res!438872 () Bool)

(assert (=> b!672060 (=> (not res!438872) (not e!383948))))

(assert (=> b!672060 (= res!438872 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19147 a!3626))))))

(declare-fun b!672061 () Bool)

(declare-fun res!438866 () Bool)

(assert (=> b!672061 (=> (not res!438866) (not e!383948))))

(declare-fun noDuplicate!667 (List!12877) Bool)

(assert (=> b!672061 (= res!438866 (noDuplicate!667 acc!681))))

(declare-fun b!672062 () Bool)

(declare-fun res!438863 () Bool)

(assert (=> b!672062 (=> (not res!438863) (not e!383952))))

(declare-fun e!383949 () Bool)

(assert (=> b!672062 (= res!438863 e!383949)))

(declare-fun res!438868 () Bool)

(assert (=> b!672062 (=> res!438868 e!383949)))

(assert (=> b!672062 (= res!438868 e!383956)))

(declare-fun res!438861 () Bool)

(assert (=> b!672062 (=> (not res!438861) (not e!383956))))

(assert (=> b!672062 (= res!438861 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!672063 () Bool)

(assert (=> b!672063 (= e!383949 e!383954)))

(declare-fun res!438867 () Bool)

(assert (=> b!672063 (=> (not res!438867) (not e!383954))))

(assert (=> b!672063 (= res!438867 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!672064 () Bool)

(declare-fun res!438873 () Bool)

(assert (=> b!672064 (=> (not res!438873) (not e!383952))))

(assert (=> b!672064 (= res!438873 (noDuplicate!667 lt!312222))))

(declare-fun b!672065 () Bool)

(declare-fun res!438869 () Bool)

(assert (=> b!672065 (=> (not res!438869) (not e!383948))))

(assert (=> b!672065 (= res!438869 (not (contains!3420 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672066 () Bool)

(assert (=> b!672066 (= e!383953 (contains!3420 acc!681 k!2843))))

(declare-fun b!672067 () Bool)

(declare-fun res!438858 () Bool)

(assert (=> b!672067 (=> (not res!438858) (not e!383948))))

(assert (=> b!672067 (= res!438858 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19147 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!672068 () Bool)

(declare-fun res!438855 () Bool)

(assert (=> b!672068 (=> (not res!438855) (not e!383948))))

(assert (=> b!672068 (= res!438855 (not (contains!3420 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60186 res!438871) b!672061))

(assert (= (and b!672061 res!438866) b!672068))

(assert (= (and b!672068 res!438855) b!672065))

(assert (= (and b!672065 res!438869) b!672054))

(assert (= (and b!672054 res!438875) b!672066))

(assert (= (and b!672054 (not res!438865)) b!672043))

(assert (= (and b!672043 res!438877) b!672056))

(assert (= (and b!672054 res!438862) b!672051))

(assert (= (and b!672051 res!438864) b!672057))

(assert (= (and b!672057 res!438859) b!672060))

(assert (= (and b!672060 res!438872) b!672047))

(assert (= (and b!672047 res!438874) b!672049))

(assert (= (and b!672049 res!438870) b!672067))

(assert (= (and b!672067 res!438858) b!672059))

(assert (= (and b!672059 res!438856) b!672046))

(assert (= (and b!672046 c!76961) b!672045))

(assert (= (and b!672046 (not c!76961)) b!672044))

(assert (= (and b!672046 res!438878) b!672053))

(assert (= (and b!672053 res!438876) b!672064))

(assert (= (and b!672064 res!438873) b!672050))

(assert (= (and b!672050 res!438857) b!672055))

(assert (= (and b!672055 res!438860) b!672062))

(assert (= (and b!672062 res!438861) b!672058))

(assert (= (and b!672062 (not res!438868)) b!672063))

(assert (= (and b!672063 res!438867) b!672048))

(assert (= (and b!672062 res!438863) b!672052))

(declare-fun m!641169 () Bool)

(assert (=> b!672056 m!641169))

(declare-fun m!641171 () Bool)

(assert (=> b!672050 m!641171))

(declare-fun m!641173 () Bool)

(assert (=> b!672045 m!641173))

(declare-fun m!641175 () Bool)

(assert (=> b!672045 m!641175))

(declare-fun m!641177 () Bool)

(assert (=> b!672061 m!641177))

(declare-fun m!641179 () Bool)

(assert (=> b!672057 m!641179))

(declare-fun m!641181 () Bool)

(assert (=> b!672058 m!641181))

(declare-fun m!641183 () Bool)

(assert (=> b!672068 m!641183))

(declare-fun m!641185 () Bool)

(assert (=> b!672055 m!641185))

(declare-fun m!641187 () Bool)

(assert (=> b!672065 m!641187))

(declare-fun m!641189 () Bool)

(assert (=> start!60186 m!641189))

(declare-fun m!641191 () Bool)

(assert (=> b!672047 m!641191))

(declare-fun m!641193 () Bool)

(assert (=> b!672059 m!641193))

(assert (=> b!672059 m!641193))

(declare-fun m!641195 () Bool)

(assert (=> b!672059 m!641195))

(assert (=> b!672066 m!641169))

(assert (=> b!672053 m!641193))

(assert (=> b!672053 m!641193))

(declare-fun m!641197 () Bool)

(assert (=> b!672053 m!641197))

(declare-fun m!641199 () Bool)

(assert (=> b!672064 m!641199))

(assert (=> b!672046 m!641193))

(declare-fun m!641201 () Bool)

(assert (=> b!672049 m!641201))

(declare-fun m!641203 () Bool)

(assert (=> b!672052 m!641203))

(declare-fun m!641205 () Bool)

(assert (=> b!672051 m!641205))

(assert (=> b!672048 m!641181))

(push 1)

