; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62176 () Bool)

(assert start!62176)

(declare-fun b!696088 () Bool)

(declare-fun res!460211 () Bool)

(declare-fun e!395816 () Bool)

(assert (=> b!696088 (=> (not res!460211) (not e!395816))))

(declare-datatypes ((array!39922 0))(
  ( (array!39923 (arr!19118 (Array (_ BitVec 32) (_ BitVec 64))) (size!19501 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39922)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!13212 0))(
  ( (Nil!13209) (Cons!13208 (h!14253 (_ BitVec 64)) (t!19502 List!13212)) )
))
(declare-fun acc!681 () List!13212)

(declare-fun arrayNoDuplicates!0 (array!39922 (_ BitVec 32) List!13212) Bool)

(assert (=> b!696088 (= res!460211 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!696089 () Bool)

(declare-fun res!460214 () Bool)

(assert (=> b!696089 (=> (not res!460214) (not e!395816))))

(declare-fun e!395811 () Bool)

(assert (=> b!696089 (= res!460214 e!395811)))

(declare-fun res!460218 () Bool)

(assert (=> b!696089 (=> res!460218 e!395811)))

(declare-fun e!395818 () Bool)

(assert (=> b!696089 (= res!460218 e!395818)))

(declare-fun res!460225 () Bool)

(assert (=> b!696089 (=> (not res!460225) (not e!395818))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!696089 (= res!460225 (bvsgt from!3004 i!1382))))

(declare-fun b!696090 () Bool)

(declare-fun res!460217 () Bool)

(assert (=> b!696090 (=> (not res!460217) (not e!395816))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!696090 (= res!460217 (validKeyInArray!0 k!2843))))

(declare-fun b!696091 () Bool)

(declare-fun e!395817 () Bool)

(declare-fun contains!3755 (List!13212 (_ BitVec 64)) Bool)

(assert (=> b!696091 (= e!395817 (contains!3755 acc!681 k!2843))))

(declare-fun b!696092 () Bool)

(declare-fun res!460219 () Bool)

(assert (=> b!696092 (=> (not res!460219) (not e!395816))))

(assert (=> b!696092 (= res!460219 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19501 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!696093 () Bool)

(declare-fun e!395814 () Bool)

(assert (=> b!696093 (= e!395811 e!395814)))

(declare-fun res!460227 () Bool)

(assert (=> b!696093 (=> (not res!460227) (not e!395814))))

(assert (=> b!696093 (= res!460227 (bvsle from!3004 i!1382))))

(declare-fun b!696094 () Bool)

(declare-fun res!460222 () Bool)

(assert (=> b!696094 (=> (not res!460222) (not e!395816))))

(declare-fun e!395815 () Bool)

(assert (=> b!696094 (= res!460222 e!395815)))

(declare-fun res!460215 () Bool)

(assert (=> b!696094 (=> res!460215 e!395815)))

(assert (=> b!696094 (= res!460215 e!395817)))

(declare-fun res!460228 () Bool)

(assert (=> b!696094 (=> (not res!460228) (not e!395817))))

(assert (=> b!696094 (= res!460228 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!696095 () Bool)

(declare-fun res!460226 () Bool)

(assert (=> b!696095 (=> (not res!460226) (not e!395816))))

(declare-fun arrayContainsKey!0 (array!39922 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!696095 (= res!460226 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!696096 () Bool)

(assert (=> b!696096 (= e!395818 (contains!3755 acc!681 k!2843))))

(declare-fun b!696097 () Bool)

(declare-fun res!460213 () Bool)

(assert (=> b!696097 (=> (not res!460213) (not e!395816))))

(assert (=> b!696097 (= res!460213 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19501 a!3626))))))

(declare-fun b!696098 () Bool)

(assert (=> b!696098 (= e!395814 (not (contains!3755 acc!681 k!2843)))))

(declare-fun b!696099 () Bool)

(declare-fun res!460216 () Bool)

(assert (=> b!696099 (=> (not res!460216) (not e!395816))))

(assert (=> b!696099 (= res!460216 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13209))))

(declare-fun res!460221 () Bool)

(assert (=> start!62176 (=> (not res!460221) (not e!395816))))

(assert (=> start!62176 (= res!460221 (and (bvslt (size!19501 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19501 a!3626))))))

(assert (=> start!62176 e!395816))

(assert (=> start!62176 true))

(declare-fun array_inv!14892 (array!39922) Bool)

(assert (=> start!62176 (array_inv!14892 a!3626)))

(declare-fun b!696100 () Bool)

(assert (=> b!696100 (= e!395816 (not (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))))

(declare-fun b!696101 () Bool)

(declare-fun res!460210 () Bool)

(assert (=> b!696101 (=> (not res!460210) (not e!395816))))

(declare-fun noDuplicate!1002 (List!13212) Bool)

(assert (=> b!696101 (= res!460210 (noDuplicate!1002 acc!681))))

(declare-fun b!696102 () Bool)

(declare-fun res!460212 () Bool)

(assert (=> b!696102 (=> (not res!460212) (not e!395816))))

(assert (=> b!696102 (= res!460212 (not (validKeyInArray!0 (select (arr!19118 a!3626) from!3004))))))

(declare-fun b!696103 () Bool)

(declare-fun e!395812 () Bool)

(assert (=> b!696103 (= e!395812 (not (contains!3755 acc!681 k!2843)))))

(declare-fun b!696104 () Bool)

(declare-fun res!460224 () Bool)

(assert (=> b!696104 (=> (not res!460224) (not e!395816))))

(assert (=> b!696104 (= res!460224 (not (contains!3755 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!696105 () Bool)

(declare-fun res!460229 () Bool)

(assert (=> b!696105 (=> (not res!460229) (not e!395816))))

(assert (=> b!696105 (= res!460229 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!696106 () Bool)

(declare-fun res!460220 () Bool)

(assert (=> b!696106 (=> (not res!460220) (not e!395816))))

(assert (=> b!696106 (= res!460220 (not (contains!3755 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!696107 () Bool)

(assert (=> b!696107 (= e!395815 e!395812)))

(declare-fun res!460223 () Bool)

(assert (=> b!696107 (=> (not res!460223) (not e!395812))))

(assert (=> b!696107 (= res!460223 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(assert (= (and start!62176 res!460221) b!696101))

(assert (= (and b!696101 res!460210) b!696106))

(assert (= (and b!696106 res!460220) b!696104))

(assert (= (and b!696104 res!460224) b!696089))

(assert (= (and b!696089 res!460225) b!696096))

(assert (= (and b!696089 (not res!460218)) b!696093))

(assert (= (and b!696093 res!460227) b!696098))

(assert (= (and b!696089 res!460214) b!696099))

(assert (= (and b!696099 res!460216) b!696088))

(assert (= (and b!696088 res!460211) b!696097))

(assert (= (and b!696097 res!460213) b!696090))

(assert (= (and b!696090 res!460217) b!696095))

(assert (= (and b!696095 res!460226) b!696092))

(assert (= (and b!696092 res!460219) b!696102))

(assert (= (and b!696102 res!460212) b!696105))

(assert (= (and b!696105 res!460229) b!696094))

(assert (= (and b!696094 res!460228) b!696091))

(assert (= (and b!696094 (not res!460215)) b!696107))

(assert (= (and b!696107 res!460223) b!696103))

(assert (= (and b!696094 res!460222) b!696100))

(declare-fun m!657177 () Bool)

(assert (=> b!696101 m!657177))

(declare-fun m!657179 () Bool)

(assert (=> b!696102 m!657179))

(assert (=> b!696102 m!657179))

(declare-fun m!657181 () Bool)

(assert (=> b!696102 m!657181))

(declare-fun m!657183 () Bool)

(assert (=> b!696096 m!657183))

(declare-fun m!657185 () Bool)

(assert (=> b!696106 m!657185))

(declare-fun m!657187 () Bool)

(assert (=> b!696088 m!657187))

(declare-fun m!657189 () Bool)

(assert (=> b!696090 m!657189))

(declare-fun m!657191 () Bool)

(assert (=> b!696099 m!657191))

(assert (=> b!696091 m!657183))

(declare-fun m!657193 () Bool)

(assert (=> b!696095 m!657193))

(declare-fun m!657195 () Bool)

(assert (=> b!696104 m!657195))

(declare-fun m!657197 () Bool)

(assert (=> start!62176 m!657197))

(assert (=> b!696098 m!657183))

(declare-fun m!657199 () Bool)

(assert (=> b!696100 m!657199))

(assert (=> b!696103 m!657183))

(push 1)

(assert (not b!696099))

(assert (not b!696096))

(assert (not b!696103))

(assert (not b!696098))

(assert (not b!696088))

(assert (not b!696095))

(assert (not b!696102))

(assert (not b!696090))

(assert (not b!696091))

(assert (not start!62176))

(assert (not b!696106))

(assert (not b!696100))

(assert (not b!696101))

(assert (not b!696104))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!395886 () Bool)

(declare-fun b!696181 () Bool)

(assert (=> b!696181 (= e!395886 (contains!3755 acc!681 (select (arr!19118 a!3626) from!3004)))))

(declare-fun b!696182 () Bool)

(declare-fun e!395885 () Bool)

(declare-fun e!395887 () Bool)

(assert (=> b!696182 (= e!395885 e!395887)))

(declare-fun res!460291 () Bool)

(assert (=> b!696182 (=> (not res!460291) (not e!395887))))

(assert (=> b!696182 (= res!460291 (not e!395886))))

(declare-fun res!460290 () Bool)

(assert (=> b!696182 (=> (not res!460290) (not e!395886))))

(assert (=> b!696182 (= res!460290 (validKeyInArray!0 (select (arr!19118 a!3626) from!3004)))))

(declare-fun d!95969 () Bool)

(declare-fun res!460289 () Bool)

(assert (=> d!95969 (=> res!460289 e!395885)))

(assert (=> d!95969 (= res!460289 (bvsge from!3004 (size!19501 a!3626)))))

(assert (=> d!95969 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!395885)))

(declare-fun b!696183 () Bool)

(declare-fun e!395888 () Bool)

(declare-fun call!34303 () Bool)

(assert (=> b!696183 (= e!395888 call!34303)))

(declare-fun b!696184 () Bool)

(assert (=> b!696184 (= e!395887 e!395888)))

(declare-fun c!78313 () Bool)

(assert (=> b!696184 (= c!78313 (validKeyInArray!0 (select (arr!19118 a!3626) from!3004)))))

(declare-fun b!696185 () Bool)

(assert (=> b!696185 (= e!395888 call!34303)))

(declare-fun bm!34300 () Bool)

(assert (=> bm!34300 (= call!34303 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78313 (Cons!13208 (select (arr!19118 a!3626) from!3004) acc!681) acc!681)))))

(assert (= (and d!95969 (not res!460289)) b!696182))

(assert (= (and b!696182 res!460290) b!696181))

(assert (= (and b!696182 res!460291) b!696184))

(assert (= (and b!696184 c!78313) b!696185))

(assert (= (and b!696184 (not c!78313)) b!696183))

(assert (= (or b!696185 b!696183) bm!34300))

(assert (=> b!696181 m!657179))

(assert (=> b!696181 m!657179))

(declare-fun m!657259 () Bool)

(assert (=> b!696181 m!657259))

(assert (=> b!696182 m!657179))

(assert (=> b!696182 m!657179))

(assert (=> b!696182 m!657181))

(assert (=> b!696184 m!657179))

(assert (=> b!696184 m!657179))

(assert (=> b!696184 m!657181))

(assert (=> bm!34300 m!657179))

(declare-fun m!657261 () Bool)

(assert (=> bm!34300 m!657261))

(assert (=> b!696088 d!95969))

(declare-fun b!696186 () Bool)

(declare-fun e!395890 () Bool)

(assert (=> b!696186 (= e!395890 (contains!3755 Nil!13209 (select (arr!19118 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!696187 () Bool)

(declare-fun e!395889 () Bool)

(declare-fun e!395891 () Bool)

(assert (=> b!696187 (= e!395889 e!395891)))

(declare-fun res!460294 () Bool)

(assert (=> b!696187 (=> (not res!460294) (not e!395891))))

(assert (=> b!696187 (= res!460294 (not e!395890))))

(declare-fun res!460293 () Bool)

(assert (=> b!696187 (=> (not res!460293) (not e!395890))))

(assert (=> b!696187 (= res!460293 (validKeyInArray!0 (select (arr!19118 a!3626) #b00000000000000000000000000000000)))))

(declare-fun d!95989 () Bool)

(declare-fun res!460292 () Bool)

(assert (=> d!95989 (=> res!460292 e!395889)))

(assert (=> d!95989 (= res!460292 (bvsge #b00000000000000000000000000000000 (size!19501 a!3626)))))

(assert (=> d!95989 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13209) e!395889)))

(declare-fun b!696188 () Bool)

(declare-fun e!395892 () Bool)

(declare-fun call!34304 () Bool)

(assert (=> b!696188 (= e!395892 call!34304)))

(declare-fun b!696189 () Bool)

(assert (=> b!696189 (= e!395891 e!395892)))

(declare-fun c!78314 () Bool)

(assert (=> b!696189 (= c!78314 (validKeyInArray!0 (select (arr!19118 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!696190 () Bool)

(assert (=> b!696190 (= e!395892 call!34304)))

(declare-fun bm!34301 () Bool)

(assert (=> bm!34301 (= call!34304 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!78314 (Cons!13208 (select (arr!19118 a!3626) #b00000000000000000000000000000000) Nil!13209) Nil!13209)))))

(assert (= (and d!95989 (not res!460292)) b!696187))

(assert (= (and b!696187 res!460293) b!696186))

(assert (= (and b!696187 res!460294) b!696189))

(assert (= (and b!696189 c!78314) b!696190))

(assert (= (and b!696189 (not c!78314)) b!696188))

(assert (= (or b!696190 b!696188) bm!34301))

(declare-fun m!657263 () Bool)

(assert (=> b!696186 m!657263))

(assert (=> b!696186 m!657263))

(declare-fun m!657265 () Bool)

(assert (=> b!696186 m!657265))

(assert (=> b!696187 m!657263))

(assert (=> b!696187 m!657263))

(declare-fun m!657267 () Bool)

(assert (=> b!696187 m!657267))

(assert (=> b!696189 m!657263))

(assert (=> b!696189 m!657263))

(assert (=> b!696189 m!657267))

(assert (=> bm!34301 m!657263))

(declare-fun m!657269 () Bool)

(assert (=> bm!34301 m!657269))

(assert (=> b!696099 d!95989))

(declare-fun d!95991 () Bool)

(declare-fun lt!317047 () Bool)

(declare-fun content!327 (List!13212) (Set (_ BitVec 64)))

(assert (=> d!95991 (= lt!317047 (member k!2843 (content!327 acc!681)))))

(declare-fun e!395909 () Bool)

(assert (=> d!95991 (= lt!317047 e!395909)))

(declare-fun res!460309 () Bool)

(assert (=> d!95991 (=> (not res!460309) (not e!395909))))

(assert (=> d!95991 (= res!460309 (is-Cons!13208 acc!681))))

(assert (=> d!95991 (= (contains!3755 acc!681 k!2843) lt!317047)))

(declare-fun b!696210 () Bool)

(declare-fun e!395910 () Bool)

(assert (=> b!696210 (= e!395909 e!395910)))

(declare-fun res!460308 () Bool)

(assert (=> b!696210 (=> res!460308 e!395910)))

(assert (=> b!696210 (= res!460308 (= (h!14253 acc!681) k!2843))))

(declare-fun b!696211 () Bool)

(assert (=> b!696211 (= e!395910 (contains!3755 (t!19502 acc!681) k!2843))))

