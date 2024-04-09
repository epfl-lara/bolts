; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60668 () Bool)

(assert start!60668)

(declare-fun b!681087 () Bool)

(declare-fun res!447427 () Bool)

(declare-fun e!387980 () Bool)

(assert (=> b!681087 (=> (not res!447427) (not e!387980))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39491 0))(
  ( (array!39492 (arr!18928 (Array (_ BitVec 32) (_ BitVec 64))) (size!19292 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39491)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!681087 (= res!447427 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19292 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!681088 () Bool)

(declare-fun res!447431 () Bool)

(declare-fun e!387977 () Bool)

(assert (=> b!681088 (=> res!447431 e!387977)))

(declare-datatypes ((List!13022 0))(
  ( (Nil!13019) (Cons!13018 (h!14063 (_ BitVec 64)) (t!19264 List!13022)) )
))
(declare-fun lt!313200 () List!13022)

(declare-fun noDuplicate!812 (List!13022) Bool)

(assert (=> b!681088 (= res!447431 (not (noDuplicate!812 lt!313200)))))

(declare-fun b!681090 () Bool)

(declare-fun e!387978 () Bool)

(declare-fun acc!681 () List!13022)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3565 (List!13022 (_ BitVec 64)) Bool)

(assert (=> b!681090 (= e!387978 (not (contains!3565 acc!681 k0!2843)))))

(declare-fun b!681091 () Bool)

(declare-fun res!447430 () Bool)

(assert (=> b!681091 (=> (not res!447430) (not e!387980))))

(assert (=> b!681091 (= res!447430 (noDuplicate!812 acc!681))))

(declare-fun b!681092 () Bool)

(declare-fun subseq!150 (List!13022 List!13022) Bool)

(assert (=> b!681092 (= e!387977 (subseq!150 acc!681 lt!313200))))

(declare-fun b!681093 () Bool)

(declare-fun res!447423 () Bool)

(assert (=> b!681093 (=> (not res!447423) (not e!387980))))

(declare-fun arrayContainsKey!0 (array!39491 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!681093 (= res!447423 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!681094 () Bool)

(declare-fun res!447437 () Bool)

(assert (=> b!681094 (=> (not res!447437) (not e!387980))))

(assert (=> b!681094 (= res!447437 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19292 a!3626))))))

(declare-fun b!681095 () Bool)

(declare-fun res!447426 () Bool)

(assert (=> b!681095 (=> (not res!447426) (not e!387980))))

(declare-fun arrayNoDuplicates!0 (array!39491 (_ BitVec 32) List!13022) Bool)

(assert (=> b!681095 (= res!447426 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!681096 () Bool)

(declare-fun res!447419 () Bool)

(assert (=> b!681096 (=> (not res!447419) (not e!387980))))

(assert (=> b!681096 (= res!447419 (not (contains!3565 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!681097 () Bool)

(declare-fun e!387979 () Bool)

(assert (=> b!681097 (= e!387979 (contains!3565 acc!681 k0!2843))))

(declare-fun b!681098 () Bool)

(declare-datatypes ((Unit!23882 0))(
  ( (Unit!23883) )
))
(declare-fun e!387981 () Unit!23882)

(declare-fun Unit!23884 () Unit!23882)

(assert (=> b!681098 (= e!387981 Unit!23884)))

(declare-fun b!681099 () Bool)

(declare-fun res!447425 () Bool)

(assert (=> b!681099 (=> (not res!447425) (not e!387980))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!681099 (= res!447425 (validKeyInArray!0 k0!2843))))

(declare-fun b!681089 () Bool)

(declare-fun res!447420 () Bool)

(assert (=> b!681089 (=> (not res!447420) (not e!387980))))

(assert (=> b!681089 (= res!447420 (not (contains!3565 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!447436 () Bool)

(assert (=> start!60668 (=> (not res!447436) (not e!387980))))

(assert (=> start!60668 (= res!447436 (and (bvslt (size!19292 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19292 a!3626))))))

(assert (=> start!60668 e!387980))

(assert (=> start!60668 true))

(declare-fun array_inv!14702 (array!39491) Bool)

(assert (=> start!60668 (array_inv!14702 a!3626)))

(declare-fun b!681100 () Bool)

(declare-fun Unit!23885 () Unit!23882)

(assert (=> b!681100 (= e!387981 Unit!23885)))

(declare-fun lt!313201 () Unit!23882)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39491 (_ BitVec 64) (_ BitVec 32)) Unit!23882)

(assert (=> b!681100 (= lt!313201 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!681100 false))

(declare-fun b!681101 () Bool)

(declare-fun e!387976 () Bool)

(assert (=> b!681101 (= e!387976 e!387977)))

(declare-fun res!447428 () Bool)

(assert (=> b!681101 (=> res!447428 e!387977)))

(assert (=> b!681101 (= res!447428 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!314 (List!13022 (_ BitVec 64)) List!13022)

(assert (=> b!681101 (= lt!313200 ($colon$colon!314 acc!681 (select (arr!18928 a!3626) from!3004)))))

(assert (=> b!681101 (subseq!150 acc!681 acc!681)))

(declare-fun lt!313202 () Unit!23882)

(declare-fun lemmaListSubSeqRefl!0 (List!13022) Unit!23882)

(assert (=> b!681101 (= lt!313202 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!681102 () Bool)

(declare-fun res!447432 () Bool)

(assert (=> b!681102 (=> res!447432 e!387977)))

(assert (=> b!681102 (= res!447432 (contains!3565 lt!313200 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681103 () Bool)

(declare-fun e!387982 () Bool)

(assert (=> b!681103 (= e!387982 e!387978)))

(declare-fun res!447429 () Bool)

(assert (=> b!681103 (=> (not res!447429) (not e!387978))))

(assert (=> b!681103 (= res!447429 (bvsle from!3004 i!1382))))

(declare-fun b!681104 () Bool)

(declare-fun res!447422 () Bool)

(assert (=> b!681104 (=> res!447422 e!387977)))

(assert (=> b!681104 (= res!447422 (contains!3565 lt!313200 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681105 () Bool)

(declare-fun res!447433 () Bool)

(assert (=> b!681105 (=> (not res!447433) (not e!387980))))

(assert (=> b!681105 (= res!447433 e!387982)))

(declare-fun res!447434 () Bool)

(assert (=> b!681105 (=> res!447434 e!387982)))

(assert (=> b!681105 (= res!447434 e!387979)))

(declare-fun res!447435 () Bool)

(assert (=> b!681105 (=> (not res!447435) (not e!387979))))

(assert (=> b!681105 (= res!447435 (bvsgt from!3004 i!1382))))

(declare-fun b!681106 () Bool)

(declare-fun res!447421 () Bool)

(assert (=> b!681106 (=> (not res!447421) (not e!387980))))

(assert (=> b!681106 (= res!447421 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13019))))

(declare-fun b!681107 () Bool)

(assert (=> b!681107 (= e!387980 (not e!387976))))

(declare-fun res!447424 () Bool)

(assert (=> b!681107 (=> res!447424 e!387976)))

(assert (=> b!681107 (= res!447424 (not (validKeyInArray!0 (select (arr!18928 a!3626) from!3004))))))

(declare-fun lt!313203 () Unit!23882)

(assert (=> b!681107 (= lt!313203 e!387981)))

(declare-fun c!77201 () Bool)

(assert (=> b!681107 (= c!77201 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!681107 (arrayContainsKey!0 (array!39492 (store (arr!18928 a!3626) i!1382 k0!2843) (size!19292 a!3626)) k0!2843 from!3004)))

(assert (= (and start!60668 res!447436) b!681091))

(assert (= (and b!681091 res!447430) b!681089))

(assert (= (and b!681089 res!447420) b!681096))

(assert (= (and b!681096 res!447419) b!681105))

(assert (= (and b!681105 res!447435) b!681097))

(assert (= (and b!681105 (not res!447434)) b!681103))

(assert (= (and b!681103 res!447429) b!681090))

(assert (= (and b!681105 res!447433) b!681106))

(assert (= (and b!681106 res!447421) b!681095))

(assert (= (and b!681095 res!447426) b!681094))

(assert (= (and b!681094 res!447437) b!681099))

(assert (= (and b!681099 res!447425) b!681093))

(assert (= (and b!681093 res!447423) b!681087))

(assert (= (and b!681087 res!447427) b!681107))

(assert (= (and b!681107 c!77201) b!681100))

(assert (= (and b!681107 (not c!77201)) b!681098))

(assert (= (and b!681107 (not res!447424)) b!681101))

(assert (= (and b!681101 (not res!447428)) b!681088))

(assert (= (and b!681088 (not res!447431)) b!681104))

(assert (= (and b!681104 (not res!447422)) b!681102))

(assert (= (and b!681102 (not res!447432)) b!681092))

(declare-fun m!646031 () Bool)

(assert (=> b!681099 m!646031))

(declare-fun m!646033 () Bool)

(assert (=> b!681107 m!646033))

(declare-fun m!646035 () Bool)

(assert (=> b!681107 m!646035))

(declare-fun m!646037 () Bool)

(assert (=> b!681107 m!646037))

(assert (=> b!681107 m!646033))

(declare-fun m!646039 () Bool)

(assert (=> b!681107 m!646039))

(declare-fun m!646041 () Bool)

(assert (=> b!681107 m!646041))

(declare-fun m!646043 () Bool)

(assert (=> b!681088 m!646043))

(declare-fun m!646045 () Bool)

(assert (=> b!681091 m!646045))

(declare-fun m!646047 () Bool)

(assert (=> b!681095 m!646047))

(declare-fun m!646049 () Bool)

(assert (=> b!681100 m!646049))

(declare-fun m!646051 () Bool)

(assert (=> start!60668 m!646051))

(declare-fun m!646053 () Bool)

(assert (=> b!681092 m!646053))

(declare-fun m!646055 () Bool)

(assert (=> b!681102 m!646055))

(declare-fun m!646057 () Bool)

(assert (=> b!681090 m!646057))

(declare-fun m!646059 () Bool)

(assert (=> b!681096 m!646059))

(assert (=> b!681101 m!646033))

(assert (=> b!681101 m!646033))

(declare-fun m!646061 () Bool)

(assert (=> b!681101 m!646061))

(declare-fun m!646063 () Bool)

(assert (=> b!681101 m!646063))

(declare-fun m!646065 () Bool)

(assert (=> b!681101 m!646065))

(declare-fun m!646067 () Bool)

(assert (=> b!681104 m!646067))

(assert (=> b!681097 m!646057))

(declare-fun m!646069 () Bool)

(assert (=> b!681106 m!646069))

(declare-fun m!646071 () Bool)

(assert (=> b!681093 m!646071))

(declare-fun m!646073 () Bool)

(assert (=> b!681089 m!646073))

(check-sat (not b!681106) (not b!681104) (not b!681107) (not b!681100) (not b!681099) (not b!681088) (not b!681101) (not b!681096) (not b!681092) (not b!681091) (not b!681093) (not b!681097) (not start!60668) (not b!681095) (not b!681090) (not b!681089) (not b!681102))
(check-sat)
(get-model)

(declare-fun d!93671 () Bool)

(assert (=> d!93671 (= (validKeyInArray!0 (select (arr!18928 a!3626) from!3004)) (and (not (= (select (arr!18928 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18928 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!681107 d!93671))

(declare-fun d!93673 () Bool)

(declare-fun res!447499 () Bool)

(declare-fun e!388011 () Bool)

(assert (=> d!93673 (=> res!447499 e!388011)))

(assert (=> d!93673 (= res!447499 (= (select (arr!18928 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k0!2843))))

(assert (=> d!93673 (= (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!388011)))

(declare-fun b!681175 () Bool)

(declare-fun e!388012 () Bool)

(assert (=> b!681175 (= e!388011 e!388012)))

(declare-fun res!447500 () Bool)

(assert (=> b!681175 (=> (not res!447500) (not e!388012))))

(assert (=> b!681175 (= res!447500 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19292 a!3626)))))

(declare-fun b!681176 () Bool)

(assert (=> b!681176 (= e!388012 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93673 (not res!447499)) b!681175))

(assert (= (and b!681175 res!447500) b!681176))

(declare-fun m!646119 () Bool)

(assert (=> d!93673 m!646119))

(declare-fun m!646121 () Bool)

(assert (=> b!681176 m!646121))

(assert (=> b!681107 d!93673))

(declare-fun d!93675 () Bool)

(declare-fun res!447501 () Bool)

(declare-fun e!388013 () Bool)

(assert (=> d!93675 (=> res!447501 e!388013)))

(assert (=> d!93675 (= res!447501 (= (select (arr!18928 (array!39492 (store (arr!18928 a!3626) i!1382 k0!2843) (size!19292 a!3626))) from!3004) k0!2843))))

(assert (=> d!93675 (= (arrayContainsKey!0 (array!39492 (store (arr!18928 a!3626) i!1382 k0!2843) (size!19292 a!3626)) k0!2843 from!3004) e!388013)))

(declare-fun b!681177 () Bool)

(declare-fun e!388014 () Bool)

(assert (=> b!681177 (= e!388013 e!388014)))

(declare-fun res!447502 () Bool)

(assert (=> b!681177 (=> (not res!447502) (not e!388014))))

(assert (=> b!681177 (= res!447502 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19292 (array!39492 (store (arr!18928 a!3626) i!1382 k0!2843) (size!19292 a!3626)))))))

(declare-fun b!681178 () Bool)

(assert (=> b!681178 (= e!388014 (arrayContainsKey!0 (array!39492 (store (arr!18928 a!3626) i!1382 k0!2843) (size!19292 a!3626)) k0!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93675 (not res!447501)) b!681177))

(assert (= (and b!681177 res!447502) b!681178))

(declare-fun m!646123 () Bool)

(assert (=> d!93675 m!646123))

(declare-fun m!646125 () Bool)

(assert (=> b!681178 m!646125))

(assert (=> b!681107 d!93675))

(declare-fun d!93677 () Bool)

(declare-fun lt!313218 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!275 (List!13022) (InoxSet (_ BitVec 64)))

(assert (=> d!93677 (= lt!313218 (select (content!275 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!388019 () Bool)

(assert (=> d!93677 (= lt!313218 e!388019)))

(declare-fun res!447508 () Bool)

(assert (=> d!93677 (=> (not res!447508) (not e!388019))))

(get-info :version)

(assert (=> d!93677 (= res!447508 ((_ is Cons!13018) acc!681))))

(assert (=> d!93677 (= (contains!3565 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!313218)))

(declare-fun b!681183 () Bool)

(declare-fun e!388020 () Bool)

(assert (=> b!681183 (= e!388019 e!388020)))

(declare-fun res!447507 () Bool)

(assert (=> b!681183 (=> res!447507 e!388020)))

(assert (=> b!681183 (= res!447507 (= (h!14063 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681184 () Bool)

(assert (=> b!681184 (= e!388020 (contains!3565 (t!19264 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93677 res!447508) b!681183))

(assert (= (and b!681183 (not res!447507)) b!681184))

(declare-fun m!646127 () Bool)

(assert (=> d!93677 m!646127))

(declare-fun m!646129 () Bool)

(assert (=> d!93677 m!646129))

(declare-fun m!646131 () Bool)

(assert (=> b!681184 m!646131))

(assert (=> b!681096 d!93677))

(declare-fun d!93685 () Bool)

(assert (=> d!93685 (= (array_inv!14702 a!3626) (bvsge (size!19292 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!60668 d!93685))

(declare-fun d!93687 () Bool)

(declare-fun lt!313221 () Bool)

(assert (=> d!93687 (= lt!313221 (select (content!275 acc!681) k0!2843))))

(declare-fun e!388031 () Bool)

(assert (=> d!93687 (= lt!313221 e!388031)))

(declare-fun res!447518 () Bool)

(assert (=> d!93687 (=> (not res!447518) (not e!388031))))

(assert (=> d!93687 (= res!447518 ((_ is Cons!13018) acc!681))))

(assert (=> d!93687 (= (contains!3565 acc!681 k0!2843) lt!313221)))

(declare-fun b!681193 () Bool)

(declare-fun e!388032 () Bool)

(assert (=> b!681193 (= e!388031 e!388032)))

(declare-fun res!447517 () Bool)

(assert (=> b!681193 (=> res!447517 e!388032)))

(assert (=> b!681193 (= res!447517 (= (h!14063 acc!681) k0!2843))))

(declare-fun b!681194 () Bool)

(assert (=> b!681194 (= e!388032 (contains!3565 (t!19264 acc!681) k0!2843))))

(assert (= (and d!93687 res!447518) b!681193))

(assert (= (and b!681193 (not res!447517)) b!681194))

(assert (=> d!93687 m!646127))

(declare-fun m!646133 () Bool)

(assert (=> d!93687 m!646133))

(declare-fun m!646135 () Bool)

(assert (=> b!681194 m!646135))

(assert (=> b!681097 d!93687))

(declare-fun d!93689 () Bool)

(assert (=> d!93689 (= (validKeyInArray!0 k0!2843) (and (not (= k0!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!681099 d!93689))

(declare-fun d!93691 () Bool)

(declare-fun res!447533 () Bool)

(declare-fun e!388045 () Bool)

(assert (=> d!93691 (=> res!447533 e!388045)))

(assert (=> d!93691 (= res!447533 ((_ is Nil!13019) lt!313200))))

(assert (=> d!93691 (= (noDuplicate!812 lt!313200) e!388045)))

(declare-fun b!681209 () Bool)

(declare-fun e!388046 () Bool)

(assert (=> b!681209 (= e!388045 e!388046)))

(declare-fun res!447534 () Bool)

(assert (=> b!681209 (=> (not res!447534) (not e!388046))))

(assert (=> b!681209 (= res!447534 (not (contains!3565 (t!19264 lt!313200) (h!14063 lt!313200))))))

(declare-fun b!681210 () Bool)

(assert (=> b!681210 (= e!388046 (noDuplicate!812 (t!19264 lt!313200)))))

(assert (= (and d!93691 (not res!447533)) b!681209))

(assert (= (and b!681209 res!447534) b!681210))

(declare-fun m!646147 () Bool)

(assert (=> b!681209 m!646147))

(declare-fun m!646149 () Bool)

(assert (=> b!681210 m!646149))

(assert (=> b!681088 d!93691))

(assert (=> b!681090 d!93687))

(declare-fun d!93699 () Bool)

(assert (=> d!93699 (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))

(declare-fun lt!313230 () Unit!23882)

(declare-fun choose!13 (array!39491 (_ BitVec 64) (_ BitVec 32)) Unit!23882)

(assert (=> d!93699 (= lt!313230 (choose!13 a!3626 k0!2843 from!3004))))

(assert (=> d!93699 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!93699 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004) lt!313230)))

(declare-fun bs!19995 () Bool)

(assert (= bs!19995 d!93699))

(assert (=> bs!19995 m!646071))

(declare-fun m!646161 () Bool)

(assert (=> bs!19995 m!646161))

(assert (=> b!681100 d!93699))

(declare-fun d!93709 () Bool)

(declare-fun lt!313231 () Bool)

(assert (=> d!93709 (= lt!313231 (select (content!275 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!388059 () Bool)

(assert (=> d!93709 (= lt!313231 e!388059)))

(declare-fun res!447548 () Bool)

(assert (=> d!93709 (=> (not res!447548) (not e!388059))))

(assert (=> d!93709 (= res!447548 ((_ is Cons!13018) acc!681))))

(assert (=> d!93709 (= (contains!3565 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!313231)))

(declare-fun b!681223 () Bool)

(declare-fun e!388060 () Bool)

(assert (=> b!681223 (= e!388059 e!388060)))

(declare-fun res!447547 () Bool)

(assert (=> b!681223 (=> res!447547 e!388060)))

(assert (=> b!681223 (= res!447547 (= (h!14063 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681224 () Bool)

(assert (=> b!681224 (= e!388060 (contains!3565 (t!19264 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93709 res!447548) b!681223))

(assert (= (and b!681223 (not res!447547)) b!681224))

(assert (=> d!93709 m!646127))

(declare-fun m!646163 () Bool)

(assert (=> d!93709 m!646163))

(declare-fun m!646165 () Bool)

(assert (=> b!681224 m!646165))

(assert (=> b!681089 d!93709))

(declare-fun d!93711 () Bool)

(declare-fun lt!313232 () Bool)

(assert (=> d!93711 (= lt!313232 (select (content!275 lt!313200) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!388061 () Bool)

(assert (=> d!93711 (= lt!313232 e!388061)))

(declare-fun res!447550 () Bool)

(assert (=> d!93711 (=> (not res!447550) (not e!388061))))

(assert (=> d!93711 (= res!447550 ((_ is Cons!13018) lt!313200))))

(assert (=> d!93711 (= (contains!3565 lt!313200 #b1000000000000000000000000000000000000000000000000000000000000000) lt!313232)))

(declare-fun b!681225 () Bool)

(declare-fun e!388062 () Bool)

(assert (=> b!681225 (= e!388061 e!388062)))

(declare-fun res!447549 () Bool)

(assert (=> b!681225 (=> res!447549 e!388062)))

(assert (=> b!681225 (= res!447549 (= (h!14063 lt!313200) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681226 () Bool)

(assert (=> b!681226 (= e!388062 (contains!3565 (t!19264 lt!313200) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93711 res!447550) b!681225))

(assert (= (and b!681225 (not res!447549)) b!681226))

(declare-fun m!646167 () Bool)

(assert (=> d!93711 m!646167))

(declare-fun m!646169 () Bool)

(assert (=> d!93711 m!646169))

(declare-fun m!646171 () Bool)

(assert (=> b!681226 m!646171))

(assert (=> b!681102 d!93711))

(declare-fun d!93713 () Bool)

(declare-fun res!447553 () Bool)

(declare-fun e!388065 () Bool)

(assert (=> d!93713 (=> res!447553 e!388065)))

(assert (=> d!93713 (= res!447553 ((_ is Nil!13019) acc!681))))

(assert (=> d!93713 (= (noDuplicate!812 acc!681) e!388065)))

(declare-fun b!681229 () Bool)

(declare-fun e!388066 () Bool)

(assert (=> b!681229 (= e!388065 e!388066)))

(declare-fun res!447554 () Bool)

(assert (=> b!681229 (=> (not res!447554) (not e!388066))))

(assert (=> b!681229 (= res!447554 (not (contains!3565 (t!19264 acc!681) (h!14063 acc!681))))))

(declare-fun b!681230 () Bool)

(assert (=> b!681230 (= e!388066 (noDuplicate!812 (t!19264 acc!681)))))

(assert (= (and d!93713 (not res!447553)) b!681229))

(assert (= (and b!681229 res!447554) b!681230))

(declare-fun m!646177 () Bool)

(assert (=> b!681229 m!646177))

(declare-fun m!646179 () Bool)

(assert (=> b!681230 m!646179))

(assert (=> b!681091 d!93713))

(declare-fun d!93717 () Bool)

(assert (=> d!93717 (= ($colon$colon!314 acc!681 (select (arr!18928 a!3626) from!3004)) (Cons!13018 (select (arr!18928 a!3626) from!3004) acc!681))))

(assert (=> b!681101 d!93717))

(declare-fun b!681260 () Bool)

(declare-fun e!388096 () Bool)

(declare-fun e!388098 () Bool)

(assert (=> b!681260 (= e!388096 e!388098)))

(declare-fun res!447583 () Bool)

(assert (=> b!681260 (=> res!447583 e!388098)))

(declare-fun e!388095 () Bool)

(assert (=> b!681260 (= res!447583 e!388095)))

(declare-fun res!447585 () Bool)

(assert (=> b!681260 (=> (not res!447585) (not e!388095))))

(assert (=> b!681260 (= res!447585 (= (h!14063 acc!681) (h!14063 acc!681)))))

(declare-fun d!93721 () Bool)

(declare-fun res!447586 () Bool)

(declare-fun e!388097 () Bool)

(assert (=> d!93721 (=> res!447586 e!388097)))

(assert (=> d!93721 (= res!447586 ((_ is Nil!13019) acc!681))))

(assert (=> d!93721 (= (subseq!150 acc!681 acc!681) e!388097)))

(declare-fun b!681262 () Bool)

(assert (=> b!681262 (= e!388098 (subseq!150 acc!681 (t!19264 acc!681)))))

(declare-fun b!681261 () Bool)

(assert (=> b!681261 (= e!388095 (subseq!150 (t!19264 acc!681) (t!19264 acc!681)))))

(declare-fun b!681259 () Bool)

(assert (=> b!681259 (= e!388097 e!388096)))

(declare-fun res!447584 () Bool)

(assert (=> b!681259 (=> (not res!447584) (not e!388096))))

(assert (=> b!681259 (= res!447584 ((_ is Cons!13018) acc!681))))

(assert (= (and d!93721 (not res!447586)) b!681259))

(assert (= (and b!681259 res!447584) b!681260))

(assert (= (and b!681260 res!447585) b!681261))

(assert (= (and b!681260 (not res!447583)) b!681262))

(declare-fun m!646195 () Bool)

(assert (=> b!681262 m!646195))

(declare-fun m!646197 () Bool)

(assert (=> b!681261 m!646197))

(assert (=> b!681101 d!93721))

(declare-fun d!93727 () Bool)

(assert (=> d!93727 (subseq!150 acc!681 acc!681)))

(declare-fun lt!313238 () Unit!23882)

(declare-fun choose!36 (List!13022) Unit!23882)

(assert (=> d!93727 (= lt!313238 (choose!36 acc!681))))

(assert (=> d!93727 (= (lemmaListSubSeqRefl!0 acc!681) lt!313238)))

(declare-fun bs!19996 () Bool)

(assert (= bs!19996 d!93727))

(assert (=> bs!19996 m!646063))

(declare-fun m!646207 () Bool)

(assert (=> bs!19996 m!646207))

(assert (=> b!681101 d!93727))

(declare-fun b!681274 () Bool)

(declare-fun e!388110 () Bool)

(declare-fun e!388112 () Bool)

(assert (=> b!681274 (= e!388110 e!388112)))

(declare-fun res!447597 () Bool)

(assert (=> b!681274 (=> res!447597 e!388112)))

(declare-fun e!388109 () Bool)

(assert (=> b!681274 (= res!447597 e!388109)))

(declare-fun res!447599 () Bool)

(assert (=> b!681274 (=> (not res!447599) (not e!388109))))

(assert (=> b!681274 (= res!447599 (= (h!14063 acc!681) (h!14063 lt!313200)))))

(declare-fun d!93735 () Bool)

(declare-fun res!447600 () Bool)

(declare-fun e!388111 () Bool)

(assert (=> d!93735 (=> res!447600 e!388111)))

(assert (=> d!93735 (= res!447600 ((_ is Nil!13019) acc!681))))

(assert (=> d!93735 (= (subseq!150 acc!681 lt!313200) e!388111)))

(declare-fun b!681276 () Bool)

(assert (=> b!681276 (= e!388112 (subseq!150 acc!681 (t!19264 lt!313200)))))

(declare-fun b!681275 () Bool)

(assert (=> b!681275 (= e!388109 (subseq!150 (t!19264 acc!681) (t!19264 lt!313200)))))

(declare-fun b!681273 () Bool)

(assert (=> b!681273 (= e!388111 e!388110)))

(declare-fun res!447598 () Bool)

(assert (=> b!681273 (=> (not res!447598) (not e!388110))))

(assert (=> b!681273 (= res!447598 ((_ is Cons!13018) lt!313200))))

(assert (= (and d!93735 (not res!447600)) b!681273))

(assert (= (and b!681273 res!447598) b!681274))

(assert (= (and b!681274 res!447599) b!681275))

(assert (= (and b!681274 (not res!447597)) b!681276))

(declare-fun m!646209 () Bool)

(assert (=> b!681276 m!646209))

(declare-fun m!646211 () Bool)

(assert (=> b!681275 m!646211))

(assert (=> b!681092 d!93735))

(declare-fun d!93737 () Bool)

(declare-fun lt!313241 () Bool)

(assert (=> d!93737 (= lt!313241 (select (content!275 lt!313200) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!388113 () Bool)

(assert (=> d!93737 (= lt!313241 e!388113)))

(declare-fun res!447602 () Bool)

(assert (=> d!93737 (=> (not res!447602) (not e!388113))))

(assert (=> d!93737 (= res!447602 ((_ is Cons!13018) lt!313200))))

(assert (=> d!93737 (= (contains!3565 lt!313200 #b0000000000000000000000000000000000000000000000000000000000000000) lt!313241)))

(declare-fun b!681277 () Bool)

(declare-fun e!388114 () Bool)

(assert (=> b!681277 (= e!388113 e!388114)))

(declare-fun res!447601 () Bool)

(assert (=> b!681277 (=> res!447601 e!388114)))

(assert (=> b!681277 (= res!447601 (= (h!14063 lt!313200) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681278 () Bool)

(assert (=> b!681278 (= e!388114 (contains!3565 (t!19264 lt!313200) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93737 res!447602) b!681277))

(assert (= (and b!681277 (not res!447601)) b!681278))

(assert (=> d!93737 m!646167))

(declare-fun m!646215 () Bool)

(assert (=> d!93737 m!646215))

(declare-fun m!646217 () Bool)

(assert (=> b!681278 m!646217))

(assert (=> b!681104 d!93737))

(declare-fun d!93743 () Bool)

(declare-fun res!447603 () Bool)

(declare-fun e!388115 () Bool)

(assert (=> d!93743 (=> res!447603 e!388115)))

(assert (=> d!93743 (= res!447603 (= (select (arr!18928 a!3626) #b00000000000000000000000000000000) k0!2843))))

(assert (=> d!93743 (= (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000) e!388115)))

(declare-fun b!681279 () Bool)

(declare-fun e!388116 () Bool)

(assert (=> b!681279 (= e!388115 e!388116)))

(declare-fun res!447604 () Bool)

(assert (=> b!681279 (=> (not res!447604) (not e!388116))))

(assert (=> b!681279 (= res!447604 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19292 a!3626)))))

(declare-fun b!681280 () Bool)

(assert (=> b!681280 (= e!388116 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!93743 (not res!447603)) b!681279))

(assert (= (and b!681279 res!447604) b!681280))

(declare-fun m!646219 () Bool)

(assert (=> d!93743 m!646219))

(declare-fun m!646221 () Bool)

(assert (=> b!681280 m!646221))

(assert (=> b!681093 d!93743))

(declare-fun b!681316 () Bool)

(declare-fun e!388148 () Bool)

(declare-fun call!33965 () Bool)

(assert (=> b!681316 (= e!388148 call!33965)))

(declare-fun b!681317 () Bool)

(declare-fun e!388147 () Bool)

(assert (=> b!681317 (= e!388147 (contains!3565 Nil!13019 (select (arr!18928 a!3626) #b00000000000000000000000000000000)))))

(declare-fun d!93747 () Bool)

(declare-fun res!447632 () Bool)

(declare-fun e!388149 () Bool)

(assert (=> d!93747 (=> res!447632 e!388149)))

(assert (=> d!93747 (= res!447632 (bvsge #b00000000000000000000000000000000 (size!19292 a!3626)))))

(assert (=> d!93747 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13019) e!388149)))

(declare-fun b!681318 () Bool)

(assert (=> b!681318 (= e!388148 call!33965)))

(declare-fun b!681319 () Bool)

(declare-fun e!388150 () Bool)

(assert (=> b!681319 (= e!388150 e!388148)))

(declare-fun c!77210 () Bool)

(assert (=> b!681319 (= c!77210 (validKeyInArray!0 (select (arr!18928 a!3626) #b00000000000000000000000000000000)))))

(declare-fun bm!33962 () Bool)

(assert (=> bm!33962 (= call!33965 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77210 (Cons!13018 (select (arr!18928 a!3626) #b00000000000000000000000000000000) Nil!13019) Nil!13019)))))

(declare-fun b!681320 () Bool)

(assert (=> b!681320 (= e!388149 e!388150)))

(declare-fun res!447631 () Bool)

(assert (=> b!681320 (=> (not res!447631) (not e!388150))))

(assert (=> b!681320 (= res!447631 (not e!388147))))

(declare-fun res!447630 () Bool)

(assert (=> b!681320 (=> (not res!447630) (not e!388147))))

(assert (=> b!681320 (= res!447630 (validKeyInArray!0 (select (arr!18928 a!3626) #b00000000000000000000000000000000)))))

(assert (= (and d!93747 (not res!447632)) b!681320))

(assert (= (and b!681320 res!447630) b!681317))

(assert (= (and b!681320 res!447631) b!681319))

(assert (= (and b!681319 c!77210) b!681316))

(assert (= (and b!681319 (not c!77210)) b!681318))

(assert (= (or b!681316 b!681318) bm!33962))

(assert (=> b!681317 m!646219))

(assert (=> b!681317 m!646219))

(declare-fun m!646251 () Bool)

(assert (=> b!681317 m!646251))

(assert (=> b!681319 m!646219))

(assert (=> b!681319 m!646219))

(declare-fun m!646253 () Bool)

(assert (=> b!681319 m!646253))

(assert (=> bm!33962 m!646219))

(declare-fun m!646257 () Bool)

(assert (=> bm!33962 m!646257))

(assert (=> b!681320 m!646219))

(assert (=> b!681320 m!646219))

(assert (=> b!681320 m!646253))

(assert (=> b!681106 d!93747))

(declare-fun b!681323 () Bool)

(declare-fun e!388156 () Bool)

(declare-fun call!33966 () Bool)

(assert (=> b!681323 (= e!388156 call!33966)))

(declare-fun e!388155 () Bool)

(declare-fun b!681324 () Bool)

(assert (=> b!681324 (= e!388155 (contains!3565 acc!681 (select (arr!18928 a!3626) from!3004)))))

(declare-fun d!93767 () Bool)

(declare-fun res!447639 () Bool)

(declare-fun e!388157 () Bool)

(assert (=> d!93767 (=> res!447639 e!388157)))

(assert (=> d!93767 (= res!447639 (bvsge from!3004 (size!19292 a!3626)))))

(assert (=> d!93767 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!388157)))

(declare-fun b!681325 () Bool)

(assert (=> b!681325 (= e!388156 call!33966)))

(declare-fun b!681326 () Bool)

(declare-fun e!388158 () Bool)

(assert (=> b!681326 (= e!388158 e!388156)))

(declare-fun c!77211 () Bool)

(assert (=> b!681326 (= c!77211 (validKeyInArray!0 (select (arr!18928 a!3626) from!3004)))))

(declare-fun bm!33963 () Bool)

(assert (=> bm!33963 (= call!33966 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77211 (Cons!13018 (select (arr!18928 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!681328 () Bool)

(assert (=> b!681328 (= e!388157 e!388158)))

(declare-fun res!447638 () Bool)

(assert (=> b!681328 (=> (not res!447638) (not e!388158))))

(assert (=> b!681328 (= res!447638 (not e!388155))))

(declare-fun res!447637 () Bool)

(assert (=> b!681328 (=> (not res!447637) (not e!388155))))

(assert (=> b!681328 (= res!447637 (validKeyInArray!0 (select (arr!18928 a!3626) from!3004)))))

(assert (= (and d!93767 (not res!447639)) b!681328))

(assert (= (and b!681328 res!447637) b!681324))

(assert (= (and b!681328 res!447638) b!681326))

(assert (= (and b!681326 c!77211) b!681323))

(assert (= (and b!681326 (not c!77211)) b!681325))

(assert (= (or b!681323 b!681325) bm!33963))

(assert (=> b!681324 m!646033))

(assert (=> b!681324 m!646033))

(declare-fun m!646263 () Bool)

(assert (=> b!681324 m!646263))

(assert (=> b!681326 m!646033))

(assert (=> b!681326 m!646033))

(assert (=> b!681326 m!646039))

(assert (=> bm!33963 m!646033))

(declare-fun m!646265 () Bool)

(assert (=> bm!33963 m!646265))

(assert (=> b!681328 m!646033))

(assert (=> b!681328 m!646033))

(assert (=> b!681328 m!646039))

(assert (=> b!681095 d!93767))

(check-sat (not b!681226) (not b!681317) (not b!681326) (not b!681209) (not b!681261) (not b!681262) (not b!681275) (not d!93699) (not b!681224) (not d!93687) (not b!681229) (not b!681278) (not bm!33962) (not d!93711) (not b!681184) (not d!93727) (not b!681280) (not d!93737) (not bm!33963) (not b!681276) (not d!93709) (not b!681194) (not b!681324) (not b!681230) (not d!93677) (not b!681319) (not b!681176) (not b!681320) (not b!681178) (not b!681328) (not b!681210))
(check-sat)
