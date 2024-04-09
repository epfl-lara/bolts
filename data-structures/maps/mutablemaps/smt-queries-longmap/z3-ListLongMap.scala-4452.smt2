; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61928 () Bool)

(assert start!61928)

(declare-fun b!692600 () Bool)

(declare-fun res!456973 () Bool)

(declare-fun e!394074 () Bool)

(assert (=> b!692600 (=> (not res!456973) (not e!394074))))

(declare-fun e!394072 () Bool)

(assert (=> b!692600 (= res!456973 e!394072)))

(declare-fun res!456992 () Bool)

(assert (=> b!692600 (=> res!456992 e!394072)))

(declare-fun e!394073 () Bool)

(assert (=> b!692600 (= res!456992 e!394073)))

(declare-fun res!456972 () Bool)

(assert (=> b!692600 (=> (not res!456972) (not e!394073))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!692600 (= res!456972 (bvsgt from!3004 i!1382))))

(declare-fun b!692601 () Bool)

(declare-datatypes ((Unit!24446 0))(
  ( (Unit!24447) )
))
(declare-fun e!394067 () Unit!24446)

(declare-fun Unit!24448 () Unit!24446)

(assert (=> b!692601 (= e!394067 Unit!24448)))

(declare-datatypes ((array!39815 0))(
  ( (array!39816 (arr!19069 (Array (_ BitVec 32) (_ BitVec 64))) (size!19452 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39815)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39815 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!692601 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun lt!316591 () Unit!24446)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39815 (_ BitVec 64) (_ BitVec 32)) Unit!24446)

(assert (=> b!692601 (= lt!316591 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!692601 false))

(declare-fun b!692602 () Bool)

(declare-fun res!456990 () Bool)

(assert (=> b!692602 (=> (not res!456990) (not e!394074))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!692602 (= res!456990 (validKeyInArray!0 k0!2843))))

(declare-fun b!692603 () Bool)

(declare-fun res!456977 () Bool)

(assert (=> b!692603 (=> (not res!456977) (not e!394074))))

(declare-datatypes ((List!13163 0))(
  ( (Nil!13160) (Cons!13159 (h!14204 (_ BitVec 64)) (t!19444 List!13163)) )
))
(declare-fun acc!681 () List!13163)

(declare-fun contains!3706 (List!13163 (_ BitVec 64)) Bool)

(assert (=> b!692603 (= res!456977 (not (contains!3706 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!692604 () Bool)

(declare-fun e!394068 () Bool)

(assert (=> b!692604 (= e!394074 e!394068)))

(declare-fun res!456981 () Bool)

(assert (=> b!692604 (=> (not res!456981) (not e!394068))))

(assert (=> b!692604 (= res!456981 (not (= (select (arr!19069 a!3626) from!3004) k0!2843)))))

(declare-fun lt!316592 () Unit!24446)

(assert (=> b!692604 (= lt!316592 e!394067)))

(declare-fun c!78182 () Bool)

(assert (=> b!692604 (= c!78182 (= (select (arr!19069 a!3626) from!3004) k0!2843))))

(declare-fun b!692605 () Bool)

(declare-fun e!394071 () Bool)

(assert (=> b!692605 (= e!394071 (not (contains!3706 acc!681 k0!2843)))))

(declare-fun b!692606 () Bool)

(declare-fun res!456978 () Bool)

(assert (=> b!692606 (=> (not res!456978) (not e!394074))))

(assert (=> b!692606 (= res!456978 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!692607 () Bool)

(assert (=> b!692607 (= e!394073 (contains!3706 acc!681 k0!2843))))

(declare-fun b!692608 () Bool)

(declare-fun res!456974 () Bool)

(assert (=> b!692608 (=> (not res!456974) (not e!394074))))

(declare-fun arrayNoDuplicates!0 (array!39815 (_ BitVec 32) List!13163) Bool)

(assert (=> b!692608 (= res!456974 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13160))))

(declare-fun b!692609 () Bool)

(declare-fun res!456975 () Bool)

(assert (=> b!692609 (=> (not res!456975) (not e!394074))))

(assert (=> b!692609 (= res!456975 (validKeyInArray!0 (select (arr!19069 a!3626) from!3004)))))

(declare-fun b!692610 () Bool)

(declare-fun res!456991 () Bool)

(declare-fun e!394066 () Bool)

(assert (=> b!692610 (=> (not res!456991) (not e!394066))))

(declare-fun lt!316593 () List!13163)

(assert (=> b!692610 (= res!456991 (not (contains!3706 lt!316593 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!692611 () Bool)

(assert (=> b!692611 (= e!394068 e!394066)))

(declare-fun res!456970 () Bool)

(assert (=> b!692611 (=> (not res!456970) (not e!394066))))

(assert (=> b!692611 (= res!456970 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!416 (List!13163 (_ BitVec 64)) List!13163)

(assert (=> b!692611 (= lt!316593 ($colon$colon!416 acc!681 (select (arr!19069 a!3626) from!3004)))))

(declare-fun b!692612 () Bool)

(declare-fun e!394075 () Bool)

(assert (=> b!692612 (= e!394075 (not (contains!3706 lt!316593 k0!2843)))))

(declare-fun b!692613 () Bool)

(declare-fun res!456980 () Bool)

(assert (=> b!692613 (=> (not res!456980) (not e!394074))))

(assert (=> b!692613 (= res!456980 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!692614 () Bool)

(declare-fun res!456985 () Bool)

(assert (=> b!692614 (=> (not res!456985) (not e!394074))))

(assert (=> b!692614 (= res!456985 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19452 a!3626))))))

(declare-fun res!456984 () Bool)

(assert (=> start!61928 (=> (not res!456984) (not e!394074))))

(assert (=> start!61928 (= res!456984 (and (bvslt (size!19452 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19452 a!3626))))))

(assert (=> start!61928 e!394074))

(assert (=> start!61928 true))

(declare-fun array_inv!14843 (array!39815) Bool)

(assert (=> start!61928 (array_inv!14843 a!3626)))

(declare-fun b!692615 () Bool)

(declare-fun res!456989 () Bool)

(assert (=> b!692615 (=> (not res!456989) (not e!394066))))

(assert (=> b!692615 (= res!456989 (not (contains!3706 lt!316593 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!692616 () Bool)

(declare-fun e!394069 () Bool)

(assert (=> b!692616 (= e!394069 (contains!3706 lt!316593 k0!2843))))

(declare-fun b!692617 () Bool)

(declare-fun res!456987 () Bool)

(assert (=> b!692617 (=> (not res!456987) (not e!394074))))

(assert (=> b!692617 (= res!456987 (not (contains!3706 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!692618 () Bool)

(assert (=> b!692618 (= e!394066 e!394069)))

(declare-fun res!456971 () Bool)

(assert (=> b!692618 (=> res!456971 e!394069)))

(assert (=> b!692618 (= res!456971 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!692619 () Bool)

(declare-fun res!456976 () Bool)

(assert (=> b!692619 (=> (not res!456976) (not e!394074))))

(assert (=> b!692619 (= res!456976 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19452 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!692620 () Bool)

(declare-fun res!456986 () Bool)

(assert (=> b!692620 (=> (not res!456986) (not e!394074))))

(declare-fun noDuplicate!953 (List!13163) Bool)

(assert (=> b!692620 (= res!456986 (noDuplicate!953 acc!681))))

(declare-fun b!692621 () Bool)

(declare-fun res!456988 () Bool)

(assert (=> b!692621 (=> (not res!456988) (not e!394066))))

(assert (=> b!692621 (= res!456988 (noDuplicate!953 lt!316593))))

(declare-fun b!692622 () Bool)

(declare-fun res!456982 () Bool)

(assert (=> b!692622 (=> (not res!456982) (not e!394066))))

(assert (=> b!692622 (= res!456982 e!394075)))

(declare-fun res!456979 () Bool)

(assert (=> b!692622 (=> res!456979 e!394075)))

(assert (=> b!692622 (= res!456979 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!692623 () Bool)

(assert (=> b!692623 (= e!394072 e!394071)))

(declare-fun res!456983 () Bool)

(assert (=> b!692623 (=> (not res!456983) (not e!394071))))

(assert (=> b!692623 (= res!456983 (bvsle from!3004 i!1382))))

(declare-fun b!692624 () Bool)

(declare-fun Unit!24449 () Unit!24446)

(assert (=> b!692624 (= e!394067 Unit!24449)))

(assert (= (and start!61928 res!456984) b!692620))

(assert (= (and b!692620 res!456986) b!692603))

(assert (= (and b!692603 res!456977) b!692617))

(assert (= (and b!692617 res!456987) b!692600))

(assert (= (and b!692600 res!456972) b!692607))

(assert (= (and b!692600 (not res!456992)) b!692623))

(assert (= (and b!692623 res!456983) b!692605))

(assert (= (and b!692600 res!456973) b!692608))

(assert (= (and b!692608 res!456974) b!692613))

(assert (= (and b!692613 res!456980) b!692614))

(assert (= (and b!692614 res!456985) b!692602))

(assert (= (and b!692602 res!456990) b!692606))

(assert (= (and b!692606 res!456978) b!692619))

(assert (= (and b!692619 res!456976) b!692609))

(assert (= (and b!692609 res!456975) b!692604))

(assert (= (and b!692604 c!78182) b!692601))

(assert (= (and b!692604 (not c!78182)) b!692624))

(assert (= (and b!692604 res!456981) b!692611))

(assert (= (and b!692611 res!456970) b!692621))

(assert (= (and b!692621 res!456988) b!692615))

(assert (= (and b!692615 res!456989) b!692610))

(assert (= (and b!692610 res!456991) b!692622))

(assert (= (and b!692622 (not res!456979)) b!692612))

(assert (= (and b!692622 res!456982) b!692618))

(assert (= (and b!692618 (not res!456971)) b!692616))

(declare-fun m!655149 () Bool)

(assert (=> b!692615 m!655149))

(declare-fun m!655151 () Bool)

(assert (=> b!692601 m!655151))

(declare-fun m!655153 () Bool)

(assert (=> b!692601 m!655153))

(declare-fun m!655155 () Bool)

(assert (=> b!692610 m!655155))

(declare-fun m!655157 () Bool)

(assert (=> b!692603 m!655157))

(declare-fun m!655159 () Bool)

(assert (=> start!61928 m!655159))

(declare-fun m!655161 () Bool)

(assert (=> b!692613 m!655161))

(declare-fun m!655163 () Bool)

(assert (=> b!692616 m!655163))

(declare-fun m!655165 () Bool)

(assert (=> b!692606 m!655165))

(declare-fun m!655167 () Bool)

(assert (=> b!692620 m!655167))

(declare-fun m!655169 () Bool)

(assert (=> b!692609 m!655169))

(assert (=> b!692609 m!655169))

(declare-fun m!655171 () Bool)

(assert (=> b!692609 m!655171))

(declare-fun m!655173 () Bool)

(assert (=> b!692617 m!655173))

(assert (=> b!692611 m!655169))

(assert (=> b!692611 m!655169))

(declare-fun m!655175 () Bool)

(assert (=> b!692611 m!655175))

(assert (=> b!692604 m!655169))

(assert (=> b!692612 m!655163))

(declare-fun m!655177 () Bool)

(assert (=> b!692605 m!655177))

(assert (=> b!692607 m!655177))

(declare-fun m!655179 () Bool)

(assert (=> b!692621 m!655179))

(declare-fun m!655181 () Bool)

(assert (=> b!692608 m!655181))

(declare-fun m!655183 () Bool)

(assert (=> b!692602 m!655183))

(check-sat (not b!692607) (not b!692606) (not b!692611) (not start!61928) (not b!692602) (not b!692620) (not b!692621) (not b!692610) (not b!692612) (not b!692609) (not b!692616) (not b!692615) (not b!692603) (not b!692613) (not b!692617) (not b!692608) (not b!692605) (not b!692601))
(check-sat)
(get-model)

(declare-fun d!95583 () Bool)

(declare-fun lt!316605 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!316 (List!13163) (InoxSet (_ BitVec 64)))

(assert (=> d!95583 (= lt!316605 (select (content!316 lt!316593) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!394111 () Bool)

(assert (=> d!95583 (= lt!316605 e!394111)))

(declare-fun res!457066 () Bool)

(assert (=> d!95583 (=> (not res!457066) (not e!394111))))

(get-info :version)

(assert (=> d!95583 (= res!457066 ((_ is Cons!13159) lt!316593))))

(assert (=> d!95583 (= (contains!3706 lt!316593 #b0000000000000000000000000000000000000000000000000000000000000000) lt!316605)))

(declare-fun b!692704 () Bool)

(declare-fun e!394110 () Bool)

(assert (=> b!692704 (= e!394111 e!394110)))

(declare-fun res!457067 () Bool)

(assert (=> b!692704 (=> res!457067 e!394110)))

(assert (=> b!692704 (= res!457067 (= (h!14204 lt!316593) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692705 () Bool)

(assert (=> b!692705 (= e!394110 (contains!3706 (t!19444 lt!316593) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95583 res!457066) b!692704))

(assert (= (and b!692704 (not res!457067)) b!692705))

(declare-fun m!655221 () Bool)

(assert (=> d!95583 m!655221))

(declare-fun m!655223 () Bool)

(assert (=> d!95583 m!655223))

(declare-fun m!655225 () Bool)

(assert (=> b!692705 m!655225))

(assert (=> b!692615 d!95583))

(declare-fun d!95585 () Bool)

(declare-fun lt!316606 () Bool)

(assert (=> d!95585 (= lt!316606 (select (content!316 acc!681) k0!2843))))

(declare-fun e!394113 () Bool)

(assert (=> d!95585 (= lt!316606 e!394113)))

(declare-fun res!457068 () Bool)

(assert (=> d!95585 (=> (not res!457068) (not e!394113))))

(assert (=> d!95585 (= res!457068 ((_ is Cons!13159) acc!681))))

(assert (=> d!95585 (= (contains!3706 acc!681 k0!2843) lt!316606)))

(declare-fun b!692706 () Bool)

(declare-fun e!394112 () Bool)

(assert (=> b!692706 (= e!394113 e!394112)))

(declare-fun res!457069 () Bool)

(assert (=> b!692706 (=> res!457069 e!394112)))

(assert (=> b!692706 (= res!457069 (= (h!14204 acc!681) k0!2843))))

(declare-fun b!692707 () Bool)

(assert (=> b!692707 (= e!394112 (contains!3706 (t!19444 acc!681) k0!2843))))

(assert (= (and d!95585 res!457068) b!692706))

(assert (= (and b!692706 (not res!457069)) b!692707))

(declare-fun m!655227 () Bool)

(assert (=> d!95585 m!655227))

(declare-fun m!655229 () Bool)

(assert (=> d!95585 m!655229))

(declare-fun m!655231 () Bool)

(assert (=> b!692707 m!655231))

(assert (=> b!692605 d!95585))

(declare-fun d!95587 () Bool)

(declare-fun lt!316607 () Bool)

(assert (=> d!95587 (= lt!316607 (select (content!316 lt!316593) k0!2843))))

(declare-fun e!394115 () Bool)

(assert (=> d!95587 (= lt!316607 e!394115)))

(declare-fun res!457070 () Bool)

(assert (=> d!95587 (=> (not res!457070) (not e!394115))))

(assert (=> d!95587 (= res!457070 ((_ is Cons!13159) lt!316593))))

(assert (=> d!95587 (= (contains!3706 lt!316593 k0!2843) lt!316607)))

(declare-fun b!692708 () Bool)

(declare-fun e!394114 () Bool)

(assert (=> b!692708 (= e!394115 e!394114)))

(declare-fun res!457071 () Bool)

(assert (=> b!692708 (=> res!457071 e!394114)))

(assert (=> b!692708 (= res!457071 (= (h!14204 lt!316593) k0!2843))))

(declare-fun b!692709 () Bool)

(assert (=> b!692709 (= e!394114 (contains!3706 (t!19444 lt!316593) k0!2843))))

(assert (= (and d!95587 res!457070) b!692708))

(assert (= (and b!692708 (not res!457071)) b!692709))

(assert (=> d!95587 m!655221))

(declare-fun m!655233 () Bool)

(assert (=> d!95587 m!655233))

(declare-fun m!655235 () Bool)

(assert (=> b!692709 m!655235))

(assert (=> b!692616 d!95587))

(declare-fun d!95589 () Bool)

(declare-fun res!457076 () Bool)

(declare-fun e!394120 () Bool)

(assert (=> d!95589 (=> res!457076 e!394120)))

(assert (=> d!95589 (= res!457076 (= (select (arr!19069 a!3626) #b00000000000000000000000000000000) k0!2843))))

(assert (=> d!95589 (= (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000) e!394120)))

(declare-fun b!692714 () Bool)

(declare-fun e!394121 () Bool)

(assert (=> b!692714 (= e!394120 e!394121)))

(declare-fun res!457077 () Bool)

(assert (=> b!692714 (=> (not res!457077) (not e!394121))))

(assert (=> b!692714 (= res!457077 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19452 a!3626)))))

(declare-fun b!692715 () Bool)

(assert (=> b!692715 (= e!394121 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!95589 (not res!457076)) b!692714))

(assert (= (and b!692714 res!457077) b!692715))

(declare-fun m!655237 () Bool)

(assert (=> d!95589 m!655237))

(declare-fun m!655239 () Bool)

(assert (=> b!692715 m!655239))

(assert (=> b!692606 d!95589))

(declare-fun d!95591 () Bool)

(declare-fun lt!316608 () Bool)

(assert (=> d!95591 (= lt!316608 (select (content!316 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!394123 () Bool)

(assert (=> d!95591 (= lt!316608 e!394123)))

(declare-fun res!457078 () Bool)

(assert (=> d!95591 (=> (not res!457078) (not e!394123))))

(assert (=> d!95591 (= res!457078 ((_ is Cons!13159) acc!681))))

(assert (=> d!95591 (= (contains!3706 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!316608)))

(declare-fun b!692716 () Bool)

(declare-fun e!394122 () Bool)

(assert (=> b!692716 (= e!394123 e!394122)))

(declare-fun res!457079 () Bool)

(assert (=> b!692716 (=> res!457079 e!394122)))

(assert (=> b!692716 (= res!457079 (= (h!14204 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692717 () Bool)

(assert (=> b!692717 (= e!394122 (contains!3706 (t!19444 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95591 res!457078) b!692716))

(assert (= (and b!692716 (not res!457079)) b!692717))

(assert (=> d!95591 m!655227))

(declare-fun m!655241 () Bool)

(assert (=> d!95591 m!655241))

(declare-fun m!655243 () Bool)

(assert (=> b!692717 m!655243))

(assert (=> b!692617 d!95591))

(assert (=> b!692607 d!95585))

(declare-fun bm!34247 () Bool)

(declare-fun call!34250 () Bool)

(declare-fun c!78188 () Bool)

(assert (=> bm!34247 (= call!34250 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!78188 (Cons!13159 (select (arr!19069 a!3626) #b00000000000000000000000000000000) Nil!13160) Nil!13160)))))

(declare-fun b!692736 () Bool)

(declare-fun e!394142 () Bool)

(declare-fun e!394140 () Bool)

(assert (=> b!692736 (= e!394142 e!394140)))

(assert (=> b!692736 (= c!78188 (validKeyInArray!0 (select (arr!19069 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!692737 () Bool)

(declare-fun e!394143 () Bool)

(assert (=> b!692737 (= e!394143 e!394142)))

(declare-fun res!457095 () Bool)

(assert (=> b!692737 (=> (not res!457095) (not e!394142))))

(declare-fun e!394141 () Bool)

(assert (=> b!692737 (= res!457095 (not e!394141))))

(declare-fun res!457096 () Bool)

(assert (=> b!692737 (=> (not res!457096) (not e!394141))))

(assert (=> b!692737 (= res!457096 (validKeyInArray!0 (select (arr!19069 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!692738 () Bool)

(assert (=> b!692738 (= e!394140 call!34250)))

(declare-fun b!692739 () Bool)

(assert (=> b!692739 (= e!394141 (contains!3706 Nil!13160 (select (arr!19069 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!692740 () Bool)

(assert (=> b!692740 (= e!394140 call!34250)))

(declare-fun d!95593 () Bool)

(declare-fun res!457094 () Bool)

(assert (=> d!95593 (=> res!457094 e!394143)))

(assert (=> d!95593 (= res!457094 (bvsge #b00000000000000000000000000000000 (size!19452 a!3626)))))

(assert (=> d!95593 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13160) e!394143)))

(assert (= (and d!95593 (not res!457094)) b!692737))

(assert (= (and b!692737 res!457096) b!692739))

(assert (= (and b!692737 res!457095) b!692736))

(assert (= (and b!692736 c!78188) b!692740))

(assert (= (and b!692736 (not c!78188)) b!692738))

(assert (= (or b!692740 b!692738) bm!34247))

(assert (=> bm!34247 m!655237))

(declare-fun m!655249 () Bool)

(assert (=> bm!34247 m!655249))

(assert (=> b!692736 m!655237))

(assert (=> b!692736 m!655237))

(declare-fun m!655251 () Bool)

(assert (=> b!692736 m!655251))

(assert (=> b!692737 m!655237))

(assert (=> b!692737 m!655237))

(assert (=> b!692737 m!655251))

(assert (=> b!692739 m!655237))

(assert (=> b!692739 m!655237))

(declare-fun m!655253 () Bool)

(assert (=> b!692739 m!655253))

(assert (=> b!692608 d!95593))

(declare-fun d!95603 () Bool)

(assert (=> d!95603 (= (array_inv!14843 a!3626) (bvsge (size!19452 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!61928 d!95603))

(declare-fun d!95609 () Bool)

(assert (=> d!95609 (= (validKeyInArray!0 (select (arr!19069 a!3626) from!3004)) (and (not (= (select (arr!19069 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19069 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!692609 d!95609))

(declare-fun d!95611 () Bool)

(declare-fun res!457117 () Bool)

(declare-fun e!394164 () Bool)

(assert (=> d!95611 (=> res!457117 e!394164)))

(assert (=> d!95611 (= res!457117 ((_ is Nil!13160) acc!681))))

(assert (=> d!95611 (= (noDuplicate!953 acc!681) e!394164)))

(declare-fun b!692761 () Bool)

(declare-fun e!394165 () Bool)

(assert (=> b!692761 (= e!394164 e!394165)))

(declare-fun res!457118 () Bool)

(assert (=> b!692761 (=> (not res!457118) (not e!394165))))

(assert (=> b!692761 (= res!457118 (not (contains!3706 (t!19444 acc!681) (h!14204 acc!681))))))

(declare-fun b!692762 () Bool)

(assert (=> b!692762 (= e!394165 (noDuplicate!953 (t!19444 acc!681)))))

(assert (= (and d!95611 (not res!457117)) b!692761))

(assert (= (and b!692761 res!457118) b!692762))

(declare-fun m!655269 () Bool)

(assert (=> b!692761 m!655269))

(declare-fun m!655271 () Bool)

(assert (=> b!692762 m!655271))

(assert (=> b!692620 d!95611))

(declare-fun d!95619 () Bool)

(declare-fun lt!316612 () Bool)

(assert (=> d!95619 (= lt!316612 (select (content!316 lt!316593) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!394167 () Bool)

(assert (=> d!95619 (= lt!316612 e!394167)))

(declare-fun res!457119 () Bool)

(assert (=> d!95619 (=> (not res!457119) (not e!394167))))

(assert (=> d!95619 (= res!457119 ((_ is Cons!13159) lt!316593))))

(assert (=> d!95619 (= (contains!3706 lt!316593 #b1000000000000000000000000000000000000000000000000000000000000000) lt!316612)))

(declare-fun b!692763 () Bool)

(declare-fun e!394166 () Bool)

(assert (=> b!692763 (= e!394167 e!394166)))

(declare-fun res!457120 () Bool)

(assert (=> b!692763 (=> res!457120 e!394166)))

(assert (=> b!692763 (= res!457120 (= (h!14204 lt!316593) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692764 () Bool)

(assert (=> b!692764 (= e!394166 (contains!3706 (t!19444 lt!316593) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95619 res!457119) b!692763))

(assert (= (and b!692763 (not res!457120)) b!692764))

(assert (=> d!95619 m!655221))

(declare-fun m!655273 () Bool)

(assert (=> d!95619 m!655273))

(declare-fun m!655275 () Bool)

(assert (=> b!692764 m!655275))

(assert (=> b!692610 d!95619))

(declare-fun d!95621 () Bool)

(declare-fun res!457121 () Bool)

(declare-fun e!394168 () Bool)

(assert (=> d!95621 (=> res!457121 e!394168)))

(assert (=> d!95621 (= res!457121 ((_ is Nil!13160) lt!316593))))

(assert (=> d!95621 (= (noDuplicate!953 lt!316593) e!394168)))

(declare-fun b!692765 () Bool)

(declare-fun e!394169 () Bool)

(assert (=> b!692765 (= e!394168 e!394169)))

(declare-fun res!457122 () Bool)

(assert (=> b!692765 (=> (not res!457122) (not e!394169))))

(assert (=> b!692765 (= res!457122 (not (contains!3706 (t!19444 lt!316593) (h!14204 lt!316593))))))

(declare-fun b!692766 () Bool)

(assert (=> b!692766 (= e!394169 (noDuplicate!953 (t!19444 lt!316593)))))

(assert (= (and d!95621 (not res!457121)) b!692765))

(assert (= (and b!692765 res!457122) b!692766))

(declare-fun m!655277 () Bool)

(assert (=> b!692765 m!655277))

(declare-fun m!655279 () Bool)

(assert (=> b!692766 m!655279))

(assert (=> b!692621 d!95621))

(declare-fun d!95623 () Bool)

(assert (=> d!95623 (= ($colon$colon!416 acc!681 (select (arr!19069 a!3626) from!3004)) (Cons!13159 (select (arr!19069 a!3626) from!3004) acc!681))))

(assert (=> b!692611 d!95623))

(declare-fun d!95625 () Bool)

(declare-fun res!457123 () Bool)

(declare-fun e!394170 () Bool)

(assert (=> d!95625 (=> res!457123 e!394170)))

(assert (=> d!95625 (= res!457123 (= (select (arr!19069 a!3626) from!3004) k0!2843))))

(assert (=> d!95625 (= (arrayContainsKey!0 a!3626 k0!2843 from!3004) e!394170)))

(declare-fun b!692767 () Bool)

(declare-fun e!394171 () Bool)

(assert (=> b!692767 (= e!394170 e!394171)))

(declare-fun res!457124 () Bool)

(assert (=> b!692767 (=> (not res!457124) (not e!394171))))

(assert (=> b!692767 (= res!457124 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19452 a!3626)))))

(declare-fun b!692768 () Bool)

(assert (=> b!692768 (= e!394171 (arrayContainsKey!0 a!3626 k0!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!95625 (not res!457123)) b!692767))

(assert (= (and b!692767 res!457124) b!692768))

(assert (=> d!95625 m!655169))

(declare-fun m!655281 () Bool)

(assert (=> b!692768 m!655281))

(assert (=> b!692601 d!95625))

(declare-fun d!95627 () Bool)

(assert (=> d!95627 (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))

(declare-fun lt!316618 () Unit!24446)

(declare-fun choose!13 (array!39815 (_ BitVec 64) (_ BitVec 32)) Unit!24446)

(assert (=> d!95627 (= lt!316618 (choose!13 a!3626 k0!2843 from!3004))))

(assert (=> d!95627 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!95627 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004) lt!316618)))

(declare-fun bs!20270 () Bool)

(assert (= bs!20270 d!95627))

(assert (=> bs!20270 m!655165))

(declare-fun m!655289 () Bool)

(assert (=> bs!20270 m!655289))

(assert (=> b!692601 d!95627))

(assert (=> b!692612 d!95587))

(declare-fun d!95631 () Bool)

(assert (=> d!95631 (= (validKeyInArray!0 k0!2843) (and (not (= k0!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!692602 d!95631))

(declare-fun c!78191 () Bool)

(declare-fun bm!34250 () Bool)

(declare-fun call!34253 () Bool)

(assert (=> bm!34250 (= call!34253 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78191 (Cons!13159 (select (arr!19069 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!692785 () Bool)

(declare-fun e!394188 () Bool)

(declare-fun e!394186 () Bool)

(assert (=> b!692785 (= e!394188 e!394186)))

(assert (=> b!692785 (= c!78191 (validKeyInArray!0 (select (arr!19069 a!3626) from!3004)))))

(declare-fun b!692786 () Bool)

(declare-fun e!394189 () Bool)

(assert (=> b!692786 (= e!394189 e!394188)))

(declare-fun res!457138 () Bool)

(assert (=> b!692786 (=> (not res!457138) (not e!394188))))

(declare-fun e!394187 () Bool)

(assert (=> b!692786 (= res!457138 (not e!394187))))

(declare-fun res!457139 () Bool)

(assert (=> b!692786 (=> (not res!457139) (not e!394187))))

(assert (=> b!692786 (= res!457139 (validKeyInArray!0 (select (arr!19069 a!3626) from!3004)))))

(declare-fun b!692787 () Bool)

(assert (=> b!692787 (= e!394186 call!34253)))

(declare-fun b!692788 () Bool)

(assert (=> b!692788 (= e!394187 (contains!3706 acc!681 (select (arr!19069 a!3626) from!3004)))))

(declare-fun b!692789 () Bool)

(assert (=> b!692789 (= e!394186 call!34253)))

(declare-fun d!95633 () Bool)

(declare-fun res!457137 () Bool)

(assert (=> d!95633 (=> res!457137 e!394189)))

(assert (=> d!95633 (= res!457137 (bvsge from!3004 (size!19452 a!3626)))))

(assert (=> d!95633 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!394189)))

(assert (= (and d!95633 (not res!457137)) b!692786))

(assert (= (and b!692786 res!457139) b!692788))

(assert (= (and b!692786 res!457138) b!692785))

(assert (= (and b!692785 c!78191) b!692789))

(assert (= (and b!692785 (not c!78191)) b!692787))

(assert (= (or b!692789 b!692787) bm!34250))

(assert (=> bm!34250 m!655169))

(declare-fun m!655291 () Bool)

(assert (=> bm!34250 m!655291))

(assert (=> b!692785 m!655169))

(assert (=> b!692785 m!655169))

(assert (=> b!692785 m!655171))

(assert (=> b!692786 m!655169))

(assert (=> b!692786 m!655169))

(assert (=> b!692786 m!655171))

(assert (=> b!692788 m!655169))

(assert (=> b!692788 m!655169))

(declare-fun m!655293 () Bool)

(assert (=> b!692788 m!655293))

(assert (=> b!692613 d!95633))

(declare-fun d!95635 () Bool)

(declare-fun lt!316619 () Bool)

(assert (=> d!95635 (= lt!316619 (select (content!316 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!394195 () Bool)

(assert (=> d!95635 (= lt!316619 e!394195)))

(declare-fun res!457143 () Bool)

(assert (=> d!95635 (=> (not res!457143) (not e!394195))))

(assert (=> d!95635 (= res!457143 ((_ is Cons!13159) acc!681))))

(assert (=> d!95635 (= (contains!3706 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!316619)))

(declare-fun b!692795 () Bool)

(declare-fun e!394194 () Bool)

(assert (=> b!692795 (= e!394195 e!394194)))

(declare-fun res!457144 () Bool)

(assert (=> b!692795 (=> res!457144 e!394194)))

(assert (=> b!692795 (= res!457144 (= (h!14204 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692796 () Bool)

(assert (=> b!692796 (= e!394194 (contains!3706 (t!19444 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95635 res!457143) b!692795))

(assert (= (and b!692795 (not res!457144)) b!692796))

(assert (=> d!95635 m!655227))

(declare-fun m!655295 () Bool)

(assert (=> d!95635 m!655295))

(declare-fun m!655297 () Bool)

(assert (=> b!692796 m!655297))

(assert (=> b!692603 d!95635))

(check-sat (not b!692717) (not b!692766) (not b!692709) (not b!692739) (not d!95587) (not d!95583) (not d!95591) (not d!95627) (not b!692705) (not b!692707) (not b!692796) (not d!95635) (not b!692788) (not b!692765) (not b!692715) (not b!692764) (not b!692768) (not b!692736) (not d!95585) (not bm!34247) (not d!95619) (not b!692785) (not b!692762) (not bm!34250) (not b!692737) (not b!692761) (not b!692786))
(check-sat)
