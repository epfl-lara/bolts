; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60240 () Bool)

(assert start!60240)

(declare-fun b!674160 () Bool)

(declare-fun e!384845 () Bool)

(declare-fun e!384840 () Bool)

(assert (=> b!674160 (= e!384845 e!384840)))

(declare-fun res!440812 () Bool)

(assert (=> b!674160 (=> (not res!440812) (not e!384840))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!39243 0))(
  ( (array!39244 (arr!18810 (Array (_ BitVec 32) (_ BitVec 64))) (size!19174 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39243)

(assert (=> b!674160 (= res!440812 (not (= (select (arr!18810 a!3626) from!3004) k!2843)))))

(declare-datatypes ((Unit!23704 0))(
  ( (Unit!23705) )
))
(declare-fun lt!312548 () Unit!23704)

(declare-fun e!384846 () Unit!23704)

(assert (=> b!674160 (= lt!312548 e!384846)))

(declare-fun c!77042 () Bool)

(assert (=> b!674160 (= c!77042 (= (select (arr!18810 a!3626) from!3004) k!2843))))

(declare-fun b!674161 () Bool)

(declare-fun e!384837 () Bool)

(declare-datatypes ((List!12904 0))(
  ( (Nil!12901) (Cons!12900 (h!13945 (_ BitVec 64)) (t!19140 List!12904)) )
))
(declare-fun acc!681 () List!12904)

(declare-fun contains!3447 (List!12904 (_ BitVec 64)) Bool)

(assert (=> b!674161 (= e!384837 (not (contains!3447 acc!681 k!2843)))))

(declare-fun b!674162 () Bool)

(declare-fun e!384843 () Bool)

(assert (=> b!674162 (= e!384840 e!384843)))

(declare-fun res!440811 () Bool)

(assert (=> b!674162 (=> (not res!440811) (not e!384843))))

(assert (=> b!674162 (= res!440811 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun lt!312546 () List!12904)

(declare-fun $colon$colon!295 (List!12904 (_ BitVec 64)) List!12904)

(assert (=> b!674162 (= lt!312546 ($colon$colon!295 acc!681 (select (arr!18810 a!3626) from!3004)))))

(declare-fun b!674163 () Bool)

(declare-fun Unit!23706 () Unit!23704)

(assert (=> b!674163 (= e!384846 Unit!23706)))

(declare-fun b!674164 () Bool)

(declare-fun e!384842 () Bool)

(assert (=> b!674164 (= e!384842 (contains!3447 lt!312546 k!2843))))

(declare-fun b!674165 () Bool)

(declare-fun res!440821 () Bool)

(assert (=> b!674165 (=> (not res!440821) (not e!384843))))

(assert (=> b!674165 (= res!440821 (not (contains!3447 lt!312546 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674166 () Bool)

(declare-fun res!440826 () Bool)

(assert (=> b!674166 (=> (not res!440826) (not e!384845))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!674166 (= res!440826 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19174 a!3626))))))

(declare-fun b!674167 () Bool)

(declare-fun res!440823 () Bool)

(assert (=> b!674167 (=> (not res!440823) (not e!384845))))

(declare-fun e!384847 () Bool)

(assert (=> b!674167 (= res!440823 e!384847)))

(declare-fun res!440830 () Bool)

(assert (=> b!674167 (=> res!440830 e!384847)))

(declare-fun e!384841 () Bool)

(assert (=> b!674167 (= res!440830 e!384841)))

(declare-fun res!440815 () Bool)

(assert (=> b!674167 (=> (not res!440815) (not e!384841))))

(assert (=> b!674167 (= res!440815 (bvsgt from!3004 i!1382))))

(declare-fun b!674168 () Bool)

(declare-fun res!440832 () Bool)

(assert (=> b!674168 (=> (not res!440832) (not e!384845))))

(assert (=> b!674168 (= res!440832 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19174 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!674169 () Bool)

(assert (=> b!674169 (= e!384843 (not true))))

(declare-fun arrayNoDuplicates!0 (array!39243 (_ BitVec 32) List!12904) Bool)

(assert (=> b!674169 (arrayNoDuplicates!0 (array!39244 (store (arr!18810 a!3626) i!1382 k!2843) (size!19174 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) lt!312546)))

(declare-fun lt!312549 () Unit!23704)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39243 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12904) Unit!23704)

(assert (=> b!674169 (= lt!312549 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!312546))))

(declare-fun b!674170 () Bool)

(assert (=> b!674170 (= e!384841 (contains!3447 acc!681 k!2843))))

(declare-fun b!674171 () Bool)

(declare-fun res!440810 () Bool)

(assert (=> b!674171 (=> (not res!440810) (not e!384845))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!674171 (= res!440810 (validKeyInArray!0 k!2843))))

(declare-fun b!674172 () Bool)

(declare-fun res!440822 () Bool)

(assert (=> b!674172 (=> (not res!440822) (not e!384845))))

(declare-fun arrayContainsKey!0 (array!39243 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!674172 (= res!440822 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!674173 () Bool)

(declare-fun res!440813 () Bool)

(assert (=> b!674173 (=> (not res!440813) (not e!384843))))

(declare-fun e!384838 () Bool)

(assert (=> b!674173 (= res!440813 e!384838)))

(declare-fun res!440827 () Bool)

(assert (=> b!674173 (=> res!440827 e!384838)))

(assert (=> b!674173 (= res!440827 e!384842)))

(declare-fun res!440819 () Bool)

(assert (=> b!674173 (=> (not res!440819) (not e!384842))))

(assert (=> b!674173 (= res!440819 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!674174 () Bool)

(declare-fun res!440833 () Bool)

(assert (=> b!674174 (=> (not res!440833) (not e!384845))))

(assert (=> b!674174 (= res!440833 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!674175 () Bool)

(declare-fun Unit!23707 () Unit!23704)

(assert (=> b!674175 (= e!384846 Unit!23707)))

(assert (=> b!674175 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312547 () Unit!23704)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39243 (_ BitVec 64) (_ BitVec 32)) Unit!23704)

(assert (=> b!674175 (= lt!312547 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!674175 false))

(declare-fun b!674176 () Bool)

(assert (=> b!674176 (= e!384847 e!384837)))

(declare-fun res!440814 () Bool)

(assert (=> b!674176 (=> (not res!440814) (not e!384837))))

(assert (=> b!674176 (= res!440814 (bvsle from!3004 i!1382))))

(declare-fun b!674177 () Bool)

(declare-fun res!440818 () Bool)

(assert (=> b!674177 (=> (not res!440818) (not e!384843))))

(assert (=> b!674177 (= res!440818 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312546))))

(declare-fun b!674178 () Bool)

(declare-fun e!384839 () Bool)

(assert (=> b!674178 (= e!384839 (not (contains!3447 lt!312546 k!2843)))))

(declare-fun b!674179 () Bool)

(declare-fun res!440820 () Bool)

(assert (=> b!674179 (=> (not res!440820) (not e!384845))))

(assert (=> b!674179 (= res!440820 (not (contains!3447 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674180 () Bool)

(declare-fun res!440817 () Bool)

(assert (=> b!674180 (=> (not res!440817) (not e!384845))))

(assert (=> b!674180 (= res!440817 (validKeyInArray!0 (select (arr!18810 a!3626) from!3004)))))

(declare-fun b!674181 () Bool)

(declare-fun res!440828 () Bool)

(assert (=> b!674181 (=> (not res!440828) (not e!384843))))

(declare-fun noDuplicate!694 (List!12904) Bool)

(assert (=> b!674181 (= res!440828 (noDuplicate!694 lt!312546))))

(declare-fun b!674182 () Bool)

(declare-fun res!440834 () Bool)

(assert (=> b!674182 (=> (not res!440834) (not e!384843))))

(assert (=> b!674182 (= res!440834 (not (contains!3447 lt!312546 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!440816 () Bool)

(assert (=> start!60240 (=> (not res!440816) (not e!384845))))

(assert (=> start!60240 (= res!440816 (and (bvslt (size!19174 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19174 a!3626))))))

(assert (=> start!60240 e!384845))

(assert (=> start!60240 true))

(declare-fun array_inv!14584 (array!39243) Bool)

(assert (=> start!60240 (array_inv!14584 a!3626)))

(declare-fun b!674183 () Bool)

(declare-fun res!440829 () Bool)

(assert (=> b!674183 (=> (not res!440829) (not e!384845))))

(assert (=> b!674183 (= res!440829 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12901))))

(declare-fun b!674184 () Bool)

(assert (=> b!674184 (= e!384838 e!384839)))

(declare-fun res!440825 () Bool)

(assert (=> b!674184 (=> (not res!440825) (not e!384839))))

(assert (=> b!674184 (= res!440825 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!674185 () Bool)

(declare-fun res!440831 () Bool)

(assert (=> b!674185 (=> (not res!440831) (not e!384845))))

(assert (=> b!674185 (= res!440831 (noDuplicate!694 acc!681))))

(declare-fun b!674186 () Bool)

(declare-fun res!440824 () Bool)

(assert (=> b!674186 (=> (not res!440824) (not e!384845))))

(assert (=> b!674186 (= res!440824 (not (contains!3447 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60240 res!440816) b!674185))

(assert (= (and b!674185 res!440831) b!674179))

(assert (= (and b!674179 res!440820) b!674186))

(assert (= (and b!674186 res!440824) b!674167))

(assert (= (and b!674167 res!440815) b!674170))

(assert (= (and b!674167 (not res!440830)) b!674176))

(assert (= (and b!674176 res!440814) b!674161))

(assert (= (and b!674167 res!440823) b!674183))

(assert (= (and b!674183 res!440829) b!674174))

(assert (= (and b!674174 res!440833) b!674166))

(assert (= (and b!674166 res!440826) b!674171))

(assert (= (and b!674171 res!440810) b!674172))

(assert (= (and b!674172 res!440822) b!674168))

(assert (= (and b!674168 res!440832) b!674180))

(assert (= (and b!674180 res!440817) b!674160))

(assert (= (and b!674160 c!77042) b!674175))

(assert (= (and b!674160 (not c!77042)) b!674163))

(assert (= (and b!674160 res!440812) b!674162))

(assert (= (and b!674162 res!440811) b!674181))

(assert (= (and b!674181 res!440828) b!674165))

(assert (= (and b!674165 res!440821) b!674182))

(assert (= (and b!674182 res!440834) b!674173))

(assert (= (and b!674173 res!440819) b!674164))

(assert (= (and b!674173 (not res!440827)) b!674184))

(assert (= (and b!674184 res!440825) b!674178))

(assert (= (and b!674173 res!440813) b!674177))

(assert (= (and b!674177 res!440818) b!674169))

(declare-fun m!642213 () Bool)

(assert (=> b!674183 m!642213))

(declare-fun m!642215 () Bool)

(assert (=> b!674165 m!642215))

(declare-fun m!642217 () Bool)

(assert (=> b!674162 m!642217))

(assert (=> b!674162 m!642217))

(declare-fun m!642219 () Bool)

(assert (=> b!674162 m!642219))

(declare-fun m!642221 () Bool)

(assert (=> b!674170 m!642221))

(declare-fun m!642223 () Bool)

(assert (=> b!674181 m!642223))

(declare-fun m!642225 () Bool)

(assert (=> b!674164 m!642225))

(declare-fun m!642227 () Bool)

(assert (=> b!674177 m!642227))

(assert (=> b!674180 m!642217))

(assert (=> b!674180 m!642217))

(declare-fun m!642229 () Bool)

(assert (=> b!674180 m!642229))

(declare-fun m!642231 () Bool)

(assert (=> b!674171 m!642231))

(assert (=> b!674161 m!642221))

(assert (=> b!674160 m!642217))

(declare-fun m!642233 () Bool)

(assert (=> b!674175 m!642233))

(declare-fun m!642235 () Bool)

(assert (=> b!674175 m!642235))

(declare-fun m!642237 () Bool)

(assert (=> start!60240 m!642237))

(declare-fun m!642239 () Bool)

(assert (=> b!674185 m!642239))

(declare-fun m!642241 () Bool)

(assert (=> b!674186 m!642241))

(declare-fun m!642243 () Bool)

(assert (=> b!674174 m!642243))

(declare-fun m!642245 () Bool)

(assert (=> b!674169 m!642245))

(declare-fun m!642247 () Bool)

(assert (=> b!674169 m!642247))

(declare-fun m!642249 () Bool)

(assert (=> b!674169 m!642249))

(declare-fun m!642251 () Bool)

(assert (=> b!674179 m!642251))

(declare-fun m!642253 () Bool)

(assert (=> b!674182 m!642253))

(declare-fun m!642255 () Bool)

(assert (=> b!674172 m!642255))

(assert (=> b!674178 m!642225))

(push 1)

