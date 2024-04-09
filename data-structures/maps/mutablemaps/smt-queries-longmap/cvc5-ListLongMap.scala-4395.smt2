; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60450 () Bool)

(assert start!60450)

(declare-fun b!678948 () Bool)

(declare-fun e!386833 () Bool)

(declare-datatypes ((List!12991 0))(
  ( (Nil!12988) (Cons!12987 (h!14032 (_ BitVec 64)) (t!19227 List!12991)) )
))
(declare-fun acc!681 () List!12991)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3534 (List!12991 (_ BitVec 64)) Bool)

(assert (=> b!678948 (= e!386833 (contains!3534 acc!681 k!2843))))

(declare-fun b!678949 () Bool)

(declare-fun res!445515 () Bool)

(declare-fun e!386828 () Bool)

(assert (=> b!678949 (=> (not res!445515) (not e!386828))))

(declare-datatypes ((array!39420 0))(
  ( (array!39421 (arr!18897 (Array (_ BitVec 32) (_ BitVec 64))) (size!19261 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39420)

(declare-fun arrayContainsKey!0 (array!39420 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!678949 (= res!445515 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun res!445512 () Bool)

(assert (=> start!60450 (=> (not res!445512) (not e!386828))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!60450 (= res!445512 (and (bvslt (size!19261 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19261 a!3626))))))

(assert (=> start!60450 e!386828))

(assert (=> start!60450 true))

(declare-fun array_inv!14671 (array!39420) Bool)

(assert (=> start!60450 (array_inv!14671 a!3626)))

(declare-fun b!678950 () Bool)

(declare-fun e!386830 () Bool)

(assert (=> b!678950 (= e!386830 (not (contains!3534 acc!681 k!2843)))))

(declare-fun b!678951 () Bool)

(declare-fun res!445506 () Bool)

(assert (=> b!678951 (=> (not res!445506) (not e!386828))))

(declare-fun arrayNoDuplicates!0 (array!39420 (_ BitVec 32) List!12991) Bool)

(assert (=> b!678951 (= res!445506 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!678952 () Bool)

(declare-fun res!445509 () Bool)

(assert (=> b!678952 (=> (not res!445509) (not e!386828))))

(declare-fun e!386831 () Bool)

(assert (=> b!678952 (= res!445509 e!386831)))

(declare-fun res!445507 () Bool)

(assert (=> b!678952 (=> res!445507 e!386831)))

(assert (=> b!678952 (= res!445507 e!386833)))

(declare-fun res!445513 () Bool)

(assert (=> b!678952 (=> (not res!445513) (not e!386833))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!678952 (= res!445513 (bvsgt from!3004 i!1382))))

(declare-fun b!678953 () Bool)

(declare-fun res!445516 () Bool)

(assert (=> b!678953 (=> (not res!445516) (not e!386828))))

(assert (=> b!678953 (= res!445516 (not (contains!3534 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678954 () Bool)

(declare-fun res!445519 () Bool)

(assert (=> b!678954 (=> (not res!445519) (not e!386828))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!678954 (= res!445519 (validKeyInArray!0 k!2843))))

(declare-fun b!678955 () Bool)

(assert (=> b!678955 (= e!386831 e!386830)))

(declare-fun res!445511 () Bool)

(assert (=> b!678955 (=> (not res!445511) (not e!386830))))

(assert (=> b!678955 (= res!445511 (bvsle from!3004 i!1382))))

(declare-fun b!678956 () Bool)

(declare-fun res!445508 () Bool)

(assert (=> b!678956 (=> (not res!445508) (not e!386828))))

(assert (=> b!678956 (= res!445508 (not (contains!3534 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678957 () Bool)

(declare-fun res!445514 () Bool)

(assert (=> b!678957 (=> (not res!445514) (not e!386828))))

(assert (=> b!678957 (= res!445514 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19261 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!678958 () Bool)

(declare-fun e!386832 () Bool)

(assert (=> b!678958 (= e!386828 (not e!386832))))

(declare-fun res!445510 () Bool)

(assert (=> b!678958 (=> res!445510 e!386832)))

(assert (=> b!678958 (= res!445510 (not (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004))))))

(assert (=> b!678958 (arrayContainsKey!0 (array!39421 (store (arr!18897 a!3626) i!1382 k!2843) (size!19261 a!3626)) k!2843 from!3004)))

(declare-fun b!678959 () Bool)

(declare-fun res!445520 () Bool)

(assert (=> b!678959 (=> (not res!445520) (not e!386828))))

(declare-fun noDuplicate!781 (List!12991) Bool)

(assert (=> b!678959 (= res!445520 (noDuplicate!781 acc!681))))

(declare-fun b!678960 () Bool)

(assert (=> b!678960 (= e!386832 (arrayContainsKey!0 a!3626 k!2843 from!3004))))

(declare-fun b!678961 () Bool)

(declare-fun res!445518 () Bool)

(assert (=> b!678961 (=> (not res!445518) (not e!386828))))

(assert (=> b!678961 (= res!445518 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12988))))

(declare-fun b!678962 () Bool)

(declare-fun res!445517 () Bool)

(assert (=> b!678962 (=> (not res!445517) (not e!386828))))

(assert (=> b!678962 (= res!445517 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19261 a!3626))))))

(assert (= (and start!60450 res!445512) b!678959))

(assert (= (and b!678959 res!445520) b!678956))

(assert (= (and b!678956 res!445508) b!678953))

(assert (= (and b!678953 res!445516) b!678952))

(assert (= (and b!678952 res!445513) b!678948))

(assert (= (and b!678952 (not res!445507)) b!678955))

(assert (= (and b!678955 res!445511) b!678950))

(assert (= (and b!678952 res!445509) b!678961))

(assert (= (and b!678961 res!445518) b!678951))

(assert (= (and b!678951 res!445506) b!678962))

(assert (= (and b!678962 res!445517) b!678954))

(assert (= (and b!678954 res!445519) b!678949))

(assert (= (and b!678949 res!445515) b!678957))

(assert (= (and b!678957 res!445514) b!678958))

(assert (= (and b!678958 (not res!445510)) b!678960))

(declare-fun m!644499 () Bool)

(assert (=> b!678960 m!644499))

(declare-fun m!644501 () Bool)

(assert (=> b!678961 m!644501))

(declare-fun m!644503 () Bool)

(assert (=> b!678959 m!644503))

(declare-fun m!644505 () Bool)

(assert (=> b!678953 m!644505))

(declare-fun m!644507 () Bool)

(assert (=> b!678958 m!644507))

(declare-fun m!644509 () Bool)

(assert (=> b!678958 m!644509))

(declare-fun m!644511 () Bool)

(assert (=> b!678958 m!644511))

(declare-fun m!644513 () Bool)

(assert (=> b!678951 m!644513))

(declare-fun m!644515 () Bool)

(assert (=> b!678949 m!644515))

(declare-fun m!644517 () Bool)

(assert (=> b!678956 m!644517))

(declare-fun m!644519 () Bool)

(assert (=> b!678950 m!644519))

(declare-fun m!644521 () Bool)

(assert (=> b!678954 m!644521))

(assert (=> b!678948 m!644519))

(declare-fun m!644523 () Bool)

(assert (=> start!60450 m!644523))

(push 1)

(assert (not b!678953))

(assert (not b!678948))

(assert (not b!678960))

(assert (not b!678949))

(assert (not b!678954))

(assert (not b!678959))

(assert (not b!678951))

(assert (not b!678958))

(assert (not start!60450))

(assert (not b!678956))

(assert (not b!678950))

(assert (not b!678961))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!93401 () Bool)

(declare-fun lt!312861 () Bool)

(declare-fun content!267 (List!12991) (Set (_ BitVec 64)))

(assert (=> d!93401 (= lt!312861 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!267 acc!681)))))

(declare-fun e!386955 () Bool)

(assert (=> d!93401 (= lt!312861 e!386955)))

(declare-fun res!445687 () Bool)

(assert (=> d!93401 (=> (not res!445687) (not e!386955))))

(assert (=> d!93401 (= res!445687 (is-Cons!12987 acc!681))))

(assert (=> d!93401 (= (contains!3534 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!312861)))

(declare-fun b!679145 () Bool)

(declare-fun e!386954 () Bool)

(assert (=> b!679145 (= e!386955 e!386954)))

(declare-fun res!445688 () Bool)

(assert (=> b!679145 (=> res!445688 e!386954)))

(assert (=> b!679145 (= res!445688 (= (h!14032 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!679146 () Bool)

(assert (=> b!679146 (= e!386954 (contains!3534 (t!19227 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93401 res!445687) b!679145))

(assert (= (and b!679145 (not res!445688)) b!679146))

(declare-fun m!644661 () Bool)

(assert (=> d!93401 m!644661))

(declare-fun m!644663 () Bool)

(assert (=> d!93401 m!644663))

(declare-fun m!644665 () Bool)

(assert (=> b!679146 m!644665))

(assert (=> b!678956 d!93401))

(declare-fun d!93411 () Bool)

(assert (=> d!93411 (= (validKeyInArray!0 k!2843) (and (not (= k!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!678954 d!93411))

(declare-fun d!93415 () Bool)

(declare-fun lt!312863 () Bool)

(assert (=> d!93415 (= lt!312863 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!267 acc!681)))))

(declare-fun e!386959 () Bool)

(assert (=> d!93415 (= lt!312863 e!386959)))

(declare-fun res!445691 () Bool)

(assert (=> d!93415 (=> (not res!445691) (not e!386959))))

(assert (=> d!93415 (= res!445691 (is-Cons!12987 acc!681))))

(assert (=> d!93415 (= (contains!3534 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!312863)))

(declare-fun b!679149 () Bool)

(declare-fun e!386958 () Bool)

(assert (=> b!679149 (= e!386959 e!386958)))

(declare-fun res!445692 () Bool)

(assert (=> b!679149 (=> res!445692 e!386958)))

(assert (=> b!679149 (= res!445692 (= (h!14032 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!679150 () Bool)

(assert (=> b!679150 (= e!386958 (contains!3534 (t!19227 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93415 res!445691) b!679149))

(assert (= (and b!679149 (not res!445692)) b!679150))

(assert (=> d!93415 m!644661))

(declare-fun m!644671 () Bool)

(assert (=> d!93415 m!644671))

(declare-fun m!644673 () Bool)

(assert (=> b!679150 m!644673))

(assert (=> b!678953 d!93415))

(declare-fun d!93417 () Bool)

(declare-fun lt!312864 () Bool)

(assert (=> d!93417 (= lt!312864 (set.member k!2843 (content!267 acc!681)))))

(declare-fun e!386965 () Bool)

(assert (=> d!93417 (= lt!312864 e!386965)))

(declare-fun res!445697 () Bool)

(assert (=> d!93417 (=> (not res!445697) (not e!386965))))

(assert (=> d!93417 (= res!445697 (is-Cons!12987 acc!681))))

(assert (=> d!93417 (= (contains!3534 acc!681 k!2843) lt!312864)))

(declare-fun b!679155 () Bool)

(declare-fun e!386964 () Bool)

(assert (=> b!679155 (= e!386965 e!386964)))

(declare-fun res!445698 () Bool)

(assert (=> b!679155 (=> res!445698 e!386964)))

(assert (=> b!679155 (= res!445698 (= (h!14032 acc!681) k!2843))))

(declare-fun b!679156 () Bool)

(assert (=> b!679156 (= e!386964 (contains!3534 (t!19227 acc!681) k!2843))))

(assert (= (and d!93417 res!445697) b!679155))

(assert (= (and b!679155 (not res!445698)) b!679156))

(assert (=> d!93417 m!644661))

(declare-fun m!644675 () Bool)

(assert (=> d!93417 m!644675))

(declare-fun m!644677 () Bool)

(assert (=> b!679156 m!644677))

(assert (=> b!678950 d!93417))

(declare-fun d!93419 () Bool)

(assert (=> d!93419 (= (array_inv!14671 a!3626) (bvsge (size!19261 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!60450 d!93419))

(declare-fun b!679169 () Bool)

(declare-fun e!386978 () Bool)

(declare-fun e!386979 () Bool)

(assert (=> b!679169 (= e!386978 e!386979)))

(declare-fun res!445709 () Bool)

(assert (=> b!679169 (=> (not res!445709) (not e!386979))))

(declare-fun e!386976 () Bool)

(assert (=> b!679169 (= res!445709 (not e!386976))))

(declare-fun res!445707 () Bool)

(assert (=> b!679169 (=> (not res!445707) (not e!386976))))

(assert (=> b!679169 (= res!445707 (validKeyInArray!0 (select (arr!18897 a!3626) #b00000000000000000000000000000000)))))

(declare-fun d!93421 () Bool)

(declare-fun res!445708 () Bool)

(assert (=> d!93421 (=> res!445708 e!386978)))

(assert (=> d!93421 (= res!445708 (bvsge #b00000000000000000000000000000000 (size!19261 a!3626)))))

(assert (=> d!93421 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12988) e!386978)))

(declare-fun b!679170 () Bool)

(assert (=> b!679170 (= e!386976 (contains!3534 Nil!12988 (select (arr!18897 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!679171 () Bool)

(declare-fun e!386977 () Bool)

(assert (=> b!679171 (= e!386979 e!386977)))

(declare-fun c!77098 () Bool)

(assert (=> b!679171 (= c!77098 (validKeyInArray!0 (select (arr!18897 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!679172 () Bool)

(declare-fun call!33934 () Bool)

(assert (=> b!679172 (= e!386977 call!33934)))

(declare-fun bm!33931 () Bool)

(assert (=> bm!33931 (= call!33934 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77098 (Cons!12987 (select (arr!18897 a!3626) #b00000000000000000000000000000000) Nil!12988) Nil!12988)))))

(declare-fun b!679173 () Bool)

(assert (=> b!679173 (= e!386977 call!33934)))

(assert (= (and d!93421 (not res!445708)) b!679169))

(assert (= (and b!679169 res!445707) b!679170))

(assert (= (and b!679169 res!445709) b!679171))

(assert (= (and b!679171 c!77098) b!679172))

(assert (= (and b!679171 (not c!77098)) b!679173))

(assert (= (or b!679172 b!679173) bm!33931))

(declare-fun m!644683 () Bool)

(assert (=> b!679169 m!644683))

(assert (=> b!679169 m!644683))

(declare-fun m!644685 () Bool)

(assert (=> b!679169 m!644685))

(assert (=> b!679170 m!644683))

(assert (=> b!679170 m!644683))

(declare-fun m!644687 () Bool)

(assert (=> b!679170 m!644687))

(assert (=> b!679171 m!644683))

(assert (=> b!679171 m!644683))

(assert (=> b!679171 m!644685))

(assert (=> bm!33931 m!644683))

(declare-fun m!644689 () Bool)

(assert (=> bm!33931 m!644689))

(assert (=> b!678961 d!93421))

(declare-fun b!679174 () Bool)

(declare-fun e!386982 () Bool)

(declare-fun e!386983 () Bool)

(assert (=> b!679174 (= e!386982 e!386983)))

(declare-fun res!445712 () Bool)

(assert (=> b!679174 (=> (not res!445712) (not e!386983))))

(declare-fun e!386980 () Bool)

(assert (=> b!679174 (= res!445712 (not e!386980))))

(declare-fun res!445710 () Bool)

(assert (=> b!679174 (=> (not res!445710) (not e!386980))))

(assert (=> b!679174 (= res!445710 (validKeyInArray!0 (select (arr!18897 a!3626) from!3004)))))

(declare-fun d!93423 () Bool)

(declare-fun res!445711 () Bool)

(assert (=> d!93423 (=> res!445711 e!386982)))

(assert (=> d!93423 (= res!445711 (bvsge from!3004 (size!19261 a!3626)))))

(assert (=> d!93423 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!386982)))

(declare-fun b!679175 () Bool)

(assert (=> b!679175 (= e!386980 (contains!3534 acc!681 (select (arr!18897 a!3626) from!3004)))))

(declare-fun b!679176 () Bool)

(declare-fun e!386981 () Bool)

(assert (=> b!679176 (= e!386983 e!386981)))

(declare-fun c!77099 () Bool)

(assert (=> b!679176 (= c!77099 (validKeyInArray!0 (select (arr!18897 a!3626) from!3004)))))

(declare-fun b!679177 () Bool)

(declare-fun call!33935 () Bool)

(assert (=> b!679177 (= e!386981 call!33935)))

(declare-fun bm!33932 () Bool)

(assert (=> bm!33932 (= call!33935 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77099 (Cons!12987 (select (arr!18897 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!679178 () Bool)

(assert (=> b!679178 (= e!386981 call!33935)))

(assert (= (and d!93423 (not res!445711)) b!679174))

(assert (= (and b!679174 res!445710) b!679175))

(assert (= (and b!679174 res!445712) b!679176))

(assert (= (and b!679176 c!77099) b!679177))

(assert (= (and b!679176 (not c!77099)) b!679178))

(assert (= (or b!679177 b!679178) bm!33932))

(declare-fun m!644691 () Bool)

(assert (=> b!679174 m!644691))

(assert (=> b!679174 m!644691))

(declare-fun m!644693 () Bool)

(assert (=> b!679174 m!644693))

(assert (=> b!679175 m!644691))

(assert (=> b!679175 m!644691))

(declare-fun m!644695 () Bool)

(assert (=> b!679175 m!644695))

(assert (=> b!679176 m!644691))

(assert (=> b!679176 m!644691))

(assert (=> b!679176 m!644693))

(assert (=> bm!33932 m!644691))

(declare-fun m!644697 () Bool)

(assert (=> bm!33932 m!644697))

(assert (=> b!678951 d!93423))

(declare-fun d!93425 () Bool)

(declare-fun res!445717 () Bool)

(declare-fun e!386988 () Bool)

(assert (=> d!93425 (=> res!445717 e!386988)))

(assert (=> d!93425 (= res!445717 (= (select (arr!18897 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!93425 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!386988)))

(declare-fun b!679183 () Bool)

(declare-fun e!386989 () Bool)

(assert (=> b!679183 (= e!386988 e!386989)))

(declare-fun res!445718 () Bool)

(assert (=> b!679183 (=> (not res!445718) (not e!386989))))

(assert (=> b!679183 (= res!445718 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19261 a!3626)))))

(declare-fun b!679184 () Bool)

(assert (=> b!679184 (= e!386989 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!93425 (not res!445717)) b!679183))

(assert (= (and b!679183 res!445718) b!679184))

(assert (=> d!93425 m!644683))

(declare-fun m!644699 () Bool)

(assert (=> b!679184 m!644699))

(assert (=> b!678949 d!93425))

(declare-fun d!93427 () Bool)

(declare-fun res!445719 () Bool)

