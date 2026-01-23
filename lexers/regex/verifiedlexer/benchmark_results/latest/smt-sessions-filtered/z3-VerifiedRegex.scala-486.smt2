; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13622 () Bool)

(assert start!13622)

(declare-fun b!131490 () Bool)

(declare-fun e!75881 () Bool)

(declare-datatypes ((B!765 0))(
  ( (B!766 (val!868 Int)) )
))
(declare-datatypes ((List!2186 0))(
  ( (Nil!2180) (Cons!2180 (h!7577 B!765) (t!22772 List!2186)) )
))
(declare-fun baseList!9 () List!2186)

(declare-fun lt!39753 () List!2186)

(declare-fun isPrefix!175 (List!2186 List!2186) Bool)

(assert (=> b!131490 (= e!75881 (isPrefix!175 baseList!9 lt!39753))))

(declare-fun b!131491 () Bool)

(declare-fun res!61034 () Bool)

(declare-fun e!75887 () Bool)

(assert (=> b!131491 (=> (not res!61034) (not e!75887))))

(declare-fun newList!20 () List!2186)

(declare-fun contains!360 (List!2186 B!765) Bool)

(assert (=> b!131491 (= res!61034 (contains!360 baseList!9 (h!7577 newList!20)))))

(declare-fun b!131492 () Bool)

(declare-fun e!75889 () Bool)

(assert (=> b!131492 (= e!75887 (not e!75889))))

(declare-fun res!61035 () Bool)

(assert (=> b!131492 (=> res!61035 e!75889)))

(declare-fun lt!39755 () Bool)

(assert (=> b!131492 (= res!61035 lt!39755)))

(declare-fun e!75884 () Bool)

(assert (=> b!131492 e!75884))

(declare-fun res!61036 () Bool)

(assert (=> b!131492 (=> (not res!61036) (not e!75884))))

(assert (=> b!131492 (= res!61036 (not lt!39755))))

(declare-fun noDuplicate!76 (List!2186) Bool)

(assert (=> b!131492 (= lt!39755 (not (noDuplicate!76 lt!39753)))))

(declare-fun concatWithoutDuplicates!34 (List!2186 List!2186) List!2186)

(assert (=> b!131492 (= lt!39753 (concatWithoutDuplicates!34 baseList!9 (t!22772 newList!20)))))

(declare-fun subseq!49 (List!2186 List!2186) Bool)

(assert (=> b!131492 (subseq!49 baseList!9 baseList!9)))

(declare-datatypes ((Unit!1740 0))(
  ( (Unit!1741) )
))
(declare-fun lt!39749 () Unit!1740)

(declare-fun lemmaSubseqRefl!36 (List!2186) Unit!1740)

(assert (=> b!131492 (= lt!39749 (lemmaSubseqRefl!36 baseList!9))))

(declare-fun b!131493 () Bool)

(declare-fun res!61033 () Bool)

(declare-fun e!75886 () Bool)

(assert (=> b!131493 (=> res!61033 e!75886)))

(declare-fun lt!39752 () List!2186)

(assert (=> b!131493 (= res!61033 (not (subseq!49 lt!39753 lt!39752)))))

(declare-fun b!131494 () Bool)

(assert (=> b!131494 (= e!75889 e!75886)))

(declare-fun res!61041 () Bool)

(assert (=> b!131494 (=> res!61041 e!75886)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!39748 () (InoxSet B!765))

(declare-fun content!293 (List!2186) (InoxSet B!765))

(assert (=> b!131494 (= res!61041 (not (= (content!293 lt!39752) lt!39748)))))

(assert (=> b!131494 (= lt!39748 (content!293 lt!39753))))

(declare-fun ++!456 (List!2186 List!2186) List!2186)

(assert (=> b!131494 (= lt!39752 (++!456 baseList!9 (t!22772 newList!20)))))

(declare-fun b!131495 () Bool)

(declare-fun e!75883 () Bool)

(assert (=> b!131495 (= e!75886 e!75883)))

(declare-fun res!61044 () Bool)

(assert (=> b!131495 (=> res!61044 e!75883)))

(declare-fun lt!39758 () List!2186)

(declare-fun lt!39747 () List!2186)

(assert (=> b!131495 (= res!61044 (not (= lt!39758 lt!39747)))))

(assert (=> b!131495 (= lt!39747 lt!39758)))

(declare-fun lt!39754 () List!2186)

(assert (=> b!131495 (= lt!39758 (++!456 baseList!9 (++!456 lt!39754 (t!22772 newList!20))))))

(declare-fun lt!39751 () Unit!1740)

(declare-fun lemmaConcatAssociativity!138 (List!2186 List!2186 List!2186) Unit!1740)

(assert (=> b!131495 (= lt!39751 (lemmaConcatAssociativity!138 baseList!9 lt!39754 (t!22772 newList!20)))))

(assert (=> b!131495 (subseq!49 lt!39753 lt!39747)))

(assert (=> b!131495 (= lt!39747 (++!456 (++!456 baseList!9 lt!39754) (t!22772 newList!20)))))

(declare-fun lt!39757 () Unit!1740)

(declare-fun lemmaBiggerSndListPreservesSubSeq!12 (List!2186 List!2186 List!2186 List!2186) Unit!1740)

(assert (=> b!131495 (= lt!39757 (lemmaBiggerSndListPreservesSubSeq!12 lt!39753 baseList!9 (t!22772 newList!20) lt!39754))))

(assert (=> b!131495 (= lt!39754 (Cons!2180 (h!7577 newList!20) Nil!2180))))

(declare-fun b!131496 () Bool)

(declare-fun res!61042 () Bool)

(assert (=> b!131496 (=> res!61042 e!75883)))

(assert (=> b!131496 (= res!61042 (not (isPrefix!175 baseList!9 lt!39753)))))

(declare-fun b!131497 () Bool)

(declare-fun e!75882 () Bool)

(declare-fun tp_is_empty!1409 () Bool)

(declare-fun tp!70414 () Bool)

(assert (=> b!131497 (= e!75882 (and tp_is_empty!1409 tp!70414))))

(declare-fun b!131498 () Bool)

(assert (=> b!131498 (= e!75884 e!75881)))

(declare-fun res!61043 () Bool)

(assert (=> b!131498 (=> (not res!61043) (not e!75881))))

(declare-fun lt!39756 () List!2186)

(assert (=> b!131498 (= res!61043 (= (content!293 lt!39756) (content!293 lt!39753)))))

(assert (=> b!131498 (= lt!39756 (++!456 baseList!9 (t!22772 newList!20)))))

(declare-fun b!131499 () Bool)

(declare-fun e!75888 () Bool)

(declare-fun tp!70413 () Bool)

(assert (=> b!131499 (= e!75888 (and tp_is_empty!1409 tp!70413))))

(declare-fun b!131501 () Bool)

(declare-fun res!61039 () Bool)

(assert (=> b!131501 (=> (not res!61039) (not e!75881))))

(assert (=> b!131501 (= res!61039 (subseq!49 lt!39753 lt!39756))))

(declare-fun b!131502 () Bool)

(declare-fun res!61038 () Bool)

(assert (=> b!131502 (=> (not res!61038) (not e!75887))))

(get-info :version)

(assert (=> b!131502 (= res!61038 ((_ is Cons!2180) newList!20))))

(declare-fun b!131500 () Bool)

(declare-fun e!75885 () Bool)

(declare-fun lt!39750 () List!2186)

(assert (=> b!131500 (= e!75885 (subseq!49 lt!39753 lt!39750))))

(declare-fun res!61040 () Bool)

(assert (=> start!13622 (=> (not res!61040) (not e!75887))))

(assert (=> start!13622 (= res!61040 (noDuplicate!76 baseList!9))))

(assert (=> start!13622 e!75887))

(assert (=> start!13622 e!75888))

(assert (=> start!13622 e!75882))

(declare-fun b!131503 () Bool)

(assert (=> b!131503 (= e!75883 e!75885)))

(declare-fun res!61037 () Bool)

(assert (=> b!131503 (=> (not res!61037) (not e!75885))))

(assert (=> b!131503 (= res!61037 (= (content!293 lt!39750) lt!39748))))

(assert (=> b!131503 (= lt!39750 (++!456 baseList!9 newList!20))))

(declare-fun b!131504 () Bool)

(declare-fun res!61032 () Bool)

(assert (=> b!131504 (=> res!61032 e!75883)))

(assert (=> b!131504 (= res!61032 (not (subseq!49 lt!39753 lt!39758)))))

(assert (= (and start!13622 res!61040) b!131502))

(assert (= (and b!131502 res!61038) b!131491))

(assert (= (and b!131491 res!61034) b!131492))

(assert (= (and b!131492 res!61036) b!131498))

(assert (= (and b!131498 res!61043) b!131501))

(assert (= (and b!131501 res!61039) b!131490))

(assert (= (and b!131492 (not res!61035)) b!131494))

(assert (= (and b!131494 (not res!61041)) b!131493))

(assert (= (and b!131493 (not res!61033)) b!131495))

(assert (= (and b!131495 (not res!61044)) b!131504))

(assert (= (and b!131504 (not res!61032)) b!131496))

(assert (= (and b!131496 (not res!61042)) b!131503))

(assert (= (and b!131503 res!61037) b!131500))

(assert (= (and start!13622 ((_ is Cons!2180) baseList!9)) b!131499))

(assert (= (and start!13622 ((_ is Cons!2180) newList!20)) b!131497))

(declare-fun m!116141 () Bool)

(assert (=> start!13622 m!116141))

(declare-fun m!116143 () Bool)

(assert (=> b!131496 m!116143))

(declare-fun m!116145 () Bool)

(assert (=> b!131500 m!116145))

(declare-fun m!116147 () Bool)

(assert (=> b!131494 m!116147))

(declare-fun m!116149 () Bool)

(assert (=> b!131494 m!116149))

(declare-fun m!116151 () Bool)

(assert (=> b!131494 m!116151))

(declare-fun m!116153 () Bool)

(assert (=> b!131504 m!116153))

(declare-fun m!116155 () Bool)

(assert (=> b!131495 m!116155))

(declare-fun m!116157 () Bool)

(assert (=> b!131495 m!116157))

(assert (=> b!131495 m!116155))

(declare-fun m!116159 () Bool)

(assert (=> b!131495 m!116159))

(declare-fun m!116161 () Bool)

(assert (=> b!131495 m!116161))

(declare-fun m!116163 () Bool)

(assert (=> b!131495 m!116163))

(assert (=> b!131495 m!116161))

(declare-fun m!116165 () Bool)

(assert (=> b!131495 m!116165))

(declare-fun m!116167 () Bool)

(assert (=> b!131495 m!116167))

(declare-fun m!116169 () Bool)

(assert (=> b!131498 m!116169))

(assert (=> b!131498 m!116149))

(assert (=> b!131498 m!116151))

(declare-fun m!116171 () Bool)

(assert (=> b!131501 m!116171))

(declare-fun m!116173 () Bool)

(assert (=> b!131493 m!116173))

(declare-fun m!116175 () Bool)

(assert (=> b!131492 m!116175))

(declare-fun m!116177 () Bool)

(assert (=> b!131492 m!116177))

(declare-fun m!116179 () Bool)

(assert (=> b!131492 m!116179))

(declare-fun m!116181 () Bool)

(assert (=> b!131492 m!116181))

(assert (=> b!131490 m!116143))

(declare-fun m!116183 () Bool)

(assert (=> b!131491 m!116183))

(declare-fun m!116185 () Bool)

(assert (=> b!131503 m!116185))

(declare-fun m!116187 () Bool)

(assert (=> b!131503 m!116187))

(check-sat (not b!131492) (not b!131493) (not b!131499) (not b!131500) (not b!131503) (not b!131494) tp_is_empty!1409 (not b!131495) (not b!131490) (not b!131501) (not b!131496) (not b!131491) (not b!131504) (not b!131497) (not b!131498) (not start!13622))
(check-sat)
(get-model)

(declare-fun d!31019 () Bool)

(declare-fun res!61059 () Bool)

(declare-fun e!75906 () Bool)

(assert (=> d!31019 (=> res!61059 e!75906)))

(assert (=> d!31019 (= res!61059 ((_ is Nil!2180) lt!39753))))

(assert (=> d!31019 (= (subseq!49 lt!39753 lt!39750) e!75906)))

(declare-fun b!131521 () Bool)

(declare-fun e!75905 () Bool)

(assert (=> b!131521 (= e!75905 (subseq!49 (t!22772 lt!39753) (t!22772 lt!39750)))))

(declare-fun b!131519 () Bool)

(declare-fun e!75907 () Bool)

(assert (=> b!131519 (= e!75906 e!75907)))

(declare-fun res!61062 () Bool)

(assert (=> b!131519 (=> (not res!61062) (not e!75907))))

(assert (=> b!131519 (= res!61062 ((_ is Cons!2180) lt!39750))))

(declare-fun b!131520 () Bool)

(declare-fun e!75904 () Bool)

(assert (=> b!131520 (= e!75907 e!75904)))

(declare-fun res!61061 () Bool)

(assert (=> b!131520 (=> res!61061 e!75904)))

(assert (=> b!131520 (= res!61061 e!75905)))

(declare-fun res!61060 () Bool)

(assert (=> b!131520 (=> (not res!61060) (not e!75905))))

(assert (=> b!131520 (= res!61060 (= (h!7577 lt!39753) (h!7577 lt!39750)))))

(declare-fun b!131522 () Bool)

(assert (=> b!131522 (= e!75904 (subseq!49 lt!39753 (t!22772 lt!39750)))))

(assert (= (and d!31019 (not res!61059)) b!131519))

(assert (= (and b!131519 res!61062) b!131520))

(assert (= (and b!131520 res!61060) b!131521))

(assert (= (and b!131520 (not res!61061)) b!131522))

(declare-fun m!116193 () Bool)

(assert (=> b!131521 m!116193))

(declare-fun m!116195 () Bool)

(assert (=> b!131522 m!116195))

(assert (=> b!131500 d!31019))

(declare-fun b!131541 () Bool)

(declare-fun res!61083 () Bool)

(declare-fun e!75919 () Bool)

(assert (=> b!131541 (=> (not res!61083) (not e!75919))))

(declare-fun head!521 (List!2186) B!765)

(assert (=> b!131541 (= res!61083 (= (head!521 baseList!9) (head!521 lt!39753)))))

(declare-fun b!131542 () Bool)

(declare-fun tail!267 (List!2186) List!2186)

(assert (=> b!131542 (= e!75919 (isPrefix!175 (tail!267 baseList!9) (tail!267 lt!39753)))))

(declare-fun d!31025 () Bool)

(declare-fun e!75918 () Bool)

(assert (=> d!31025 e!75918))

(declare-fun res!61081 () Bool)

(assert (=> d!31025 (=> res!61081 e!75918)))

(declare-fun lt!39764 () Bool)

(assert (=> d!31025 (= res!61081 (not lt!39764))))

(declare-fun e!75917 () Bool)

(assert (=> d!31025 (= lt!39764 e!75917)))

(declare-fun res!61080 () Bool)

(assert (=> d!31025 (=> res!61080 e!75917)))

(assert (=> d!31025 (= res!61080 ((_ is Nil!2180) baseList!9))))

(assert (=> d!31025 (= (isPrefix!175 baseList!9 lt!39753) lt!39764)))

(declare-fun b!131540 () Bool)

(assert (=> b!131540 (= e!75917 e!75919)))

(declare-fun res!61082 () Bool)

(assert (=> b!131540 (=> (not res!61082) (not e!75919))))

(assert (=> b!131540 (= res!61082 (not ((_ is Nil!2180) lt!39753)))))

(declare-fun b!131543 () Bool)

(declare-fun size!1982 (List!2186) Int)

(assert (=> b!131543 (= e!75918 (>= (size!1982 lt!39753) (size!1982 baseList!9)))))

(assert (= (and d!31025 (not res!61080)) b!131540))

(assert (= (and b!131540 res!61082) b!131541))

(assert (= (and b!131541 res!61083) b!131542))

(assert (= (and d!31025 (not res!61081)) b!131543))

(declare-fun m!116205 () Bool)

(assert (=> b!131541 m!116205))

(declare-fun m!116207 () Bool)

(assert (=> b!131541 m!116207))

(declare-fun m!116211 () Bool)

(assert (=> b!131542 m!116211))

(declare-fun m!116215 () Bool)

(assert (=> b!131542 m!116215))

(assert (=> b!131542 m!116211))

(assert (=> b!131542 m!116215))

(declare-fun m!116217 () Bool)

(assert (=> b!131542 m!116217))

(declare-fun m!116219 () Bool)

(assert (=> b!131543 m!116219))

(declare-fun m!116221 () Bool)

(assert (=> b!131543 m!116221))

(assert (=> b!131490 d!31025))

(declare-fun d!31029 () Bool)

(declare-fun res!61084 () Bool)

(declare-fun e!75922 () Bool)

(assert (=> d!31029 (=> res!61084 e!75922)))

(assert (=> d!31029 (= res!61084 ((_ is Nil!2180) lt!39753))))

(assert (=> d!31029 (= (subseq!49 lt!39753 lt!39756) e!75922)))

(declare-fun b!131546 () Bool)

(declare-fun e!75921 () Bool)

(assert (=> b!131546 (= e!75921 (subseq!49 (t!22772 lt!39753) (t!22772 lt!39756)))))

(declare-fun b!131544 () Bool)

(declare-fun e!75923 () Bool)

(assert (=> b!131544 (= e!75922 e!75923)))

(declare-fun res!61087 () Bool)

(assert (=> b!131544 (=> (not res!61087) (not e!75923))))

(assert (=> b!131544 (= res!61087 ((_ is Cons!2180) lt!39756))))

(declare-fun b!131545 () Bool)

(declare-fun e!75920 () Bool)

(assert (=> b!131545 (= e!75923 e!75920)))

(declare-fun res!61086 () Bool)

(assert (=> b!131545 (=> res!61086 e!75920)))

(assert (=> b!131545 (= res!61086 e!75921)))

(declare-fun res!61085 () Bool)

(assert (=> b!131545 (=> (not res!61085) (not e!75921))))

(assert (=> b!131545 (= res!61085 (= (h!7577 lt!39753) (h!7577 lt!39756)))))

(declare-fun b!131547 () Bool)

(assert (=> b!131547 (= e!75920 (subseq!49 lt!39753 (t!22772 lt!39756)))))

(assert (= (and d!31029 (not res!61084)) b!131544))

(assert (= (and b!131544 res!61087) b!131545))

(assert (= (and b!131545 res!61085) b!131546))

(assert (= (and b!131545 (not res!61086)) b!131547))

(declare-fun m!116223 () Bool)

(assert (=> b!131546 m!116223))

(declare-fun m!116225 () Bool)

(assert (=> b!131547 m!116225))

(assert (=> b!131501 d!31029))

(declare-fun d!31031 () Bool)

(declare-fun lt!39767 () Bool)

(assert (=> d!31031 (= lt!39767 (select (content!293 baseList!9) (h!7577 newList!20)))))

(declare-fun e!75936 () Bool)

(assert (=> d!31031 (= lt!39767 e!75936)))

(declare-fun res!61101 () Bool)

(assert (=> d!31031 (=> (not res!61101) (not e!75936))))

(assert (=> d!31031 (= res!61101 ((_ is Cons!2180) baseList!9))))

(assert (=> d!31031 (= (contains!360 baseList!9 (h!7577 newList!20)) lt!39767)))

(declare-fun b!131560 () Bool)

(declare-fun e!75937 () Bool)

(assert (=> b!131560 (= e!75936 e!75937)))

(declare-fun res!61100 () Bool)

(assert (=> b!131560 (=> res!61100 e!75937)))

(assert (=> b!131560 (= res!61100 (= (h!7577 baseList!9) (h!7577 newList!20)))))

(declare-fun b!131561 () Bool)

(assert (=> b!131561 (= e!75937 (contains!360 (t!22772 baseList!9) (h!7577 newList!20)))))

(assert (= (and d!31031 res!61101) b!131560))

(assert (= (and b!131560 (not res!61100)) b!131561))

(declare-fun m!116227 () Bool)

(assert (=> d!31031 m!116227))

(declare-fun m!116229 () Bool)

(assert (=> d!31031 m!116229))

(declare-fun m!116231 () Bool)

(assert (=> b!131561 m!116231))

(assert (=> b!131491 d!31031))

(declare-fun d!31033 () Bool)

(declare-fun c!28363 () Bool)

(assert (=> d!31033 (= c!28363 ((_ is Nil!2180) lt!39756))))

(declare-fun e!75944 () (InoxSet B!765))

(assert (=> d!31033 (= (content!293 lt!39756) e!75944)))

(declare-fun b!131570 () Bool)

(assert (=> b!131570 (= e!75944 ((as const (Array B!765 Bool)) false))))

(declare-fun b!131571 () Bool)

(assert (=> b!131571 (= e!75944 ((_ map or) (store ((as const (Array B!765 Bool)) false) (h!7577 lt!39756) true) (content!293 (t!22772 lt!39756))))))

(assert (= (and d!31033 c!28363) b!131570))

(assert (= (and d!31033 (not c!28363)) b!131571))

(declare-fun m!116239 () Bool)

(assert (=> b!131571 m!116239))

(declare-fun m!116241 () Bool)

(assert (=> b!131571 m!116241))

(assert (=> b!131498 d!31033))

(declare-fun d!31039 () Bool)

(declare-fun c!28364 () Bool)

(assert (=> d!31039 (= c!28364 ((_ is Nil!2180) lt!39753))))

(declare-fun e!75945 () (InoxSet B!765))

(assert (=> d!31039 (= (content!293 lt!39753) e!75945)))

(declare-fun b!131572 () Bool)

(assert (=> b!131572 (= e!75945 ((as const (Array B!765 Bool)) false))))

(declare-fun b!131573 () Bool)

(assert (=> b!131573 (= e!75945 ((_ map or) (store ((as const (Array B!765 Bool)) false) (h!7577 lt!39753) true) (content!293 (t!22772 lt!39753))))))

(assert (= (and d!31039 c!28364) b!131572))

(assert (= (and d!31039 (not c!28364)) b!131573))

(declare-fun m!116243 () Bool)

(assert (=> b!131573 m!116243))

(declare-fun m!116245 () Bool)

(assert (=> b!131573 m!116245))

(assert (=> b!131498 d!31039))

(declare-fun b!131595 () Bool)

(declare-fun e!75956 () List!2186)

(assert (=> b!131595 (= e!75956 (Cons!2180 (h!7577 baseList!9) (++!456 (t!22772 baseList!9) (t!22772 newList!20))))))

(declare-fun b!131596 () Bool)

(declare-fun res!61111 () Bool)

(declare-fun e!75957 () Bool)

(assert (=> b!131596 (=> (not res!61111) (not e!75957))))

(declare-fun lt!39775 () List!2186)

(assert (=> b!131596 (= res!61111 (= (size!1982 lt!39775) (+ (size!1982 baseList!9) (size!1982 (t!22772 newList!20)))))))

(declare-fun d!31041 () Bool)

(assert (=> d!31041 e!75957))

(declare-fun res!61110 () Bool)

(assert (=> d!31041 (=> (not res!61110) (not e!75957))))

(assert (=> d!31041 (= res!61110 (= (content!293 lt!39775) ((_ map or) (content!293 baseList!9) (content!293 (t!22772 newList!20)))))))

(assert (=> d!31041 (= lt!39775 e!75956)))

(declare-fun c!28373 () Bool)

(assert (=> d!31041 (= c!28373 ((_ is Nil!2180) baseList!9))))

(assert (=> d!31041 (= (++!456 baseList!9 (t!22772 newList!20)) lt!39775)))

(declare-fun b!131597 () Bool)

(assert (=> b!131597 (= e!75957 (or (not (= (t!22772 newList!20) Nil!2180)) (= lt!39775 baseList!9)))))

(declare-fun b!131594 () Bool)

(assert (=> b!131594 (= e!75956 (t!22772 newList!20))))

(assert (= (and d!31041 c!28373) b!131594))

(assert (= (and d!31041 (not c!28373)) b!131595))

(assert (= (and d!31041 res!61110) b!131596))

(assert (= (and b!131596 res!61111) b!131597))

(declare-fun m!116255 () Bool)

(assert (=> b!131595 m!116255))

(declare-fun m!116257 () Bool)

(assert (=> b!131596 m!116257))

(assert (=> b!131596 m!116221))

(declare-fun m!116259 () Bool)

(assert (=> b!131596 m!116259))

(declare-fun m!116261 () Bool)

(assert (=> d!31041 m!116261))

(assert (=> d!31041 m!116227))

(declare-fun m!116263 () Bool)

(assert (=> d!31041 m!116263))

(assert (=> b!131498 d!31041))

(declare-fun d!31047 () Bool)

(declare-fun res!61126 () Bool)

(declare-fun e!75970 () Bool)

(assert (=> d!31047 (=> res!61126 e!75970)))

(assert (=> d!31047 (= res!61126 ((_ is Nil!2180) baseList!9))))

(assert (=> d!31047 (= (noDuplicate!76 baseList!9) e!75970)))

(declare-fun b!131614 () Bool)

(declare-fun e!75971 () Bool)

(assert (=> b!131614 (= e!75970 e!75971)))

(declare-fun res!61127 () Bool)

(assert (=> b!131614 (=> (not res!61127) (not e!75971))))

(assert (=> b!131614 (= res!61127 (not (contains!360 (t!22772 baseList!9) (h!7577 baseList!9))))))

(declare-fun b!131615 () Bool)

(assert (=> b!131615 (= e!75971 (noDuplicate!76 (t!22772 baseList!9)))))

(assert (= (and d!31047 (not res!61126)) b!131614))

(assert (= (and b!131614 res!61127) b!131615))

(declare-fun m!116283 () Bool)

(assert (=> b!131614 m!116283))

(declare-fun m!116289 () Bool)

(assert (=> b!131615 m!116289))

(assert (=> start!13622 d!31047))

(declare-fun d!31055 () Bool)

(declare-fun c!28376 () Bool)

(assert (=> d!31055 (= c!28376 ((_ is Nil!2180) lt!39752))))

(declare-fun e!75977 () (InoxSet B!765))

(assert (=> d!31055 (= (content!293 lt!39752) e!75977)))

(declare-fun b!131622 () Bool)

(assert (=> b!131622 (= e!75977 ((as const (Array B!765 Bool)) false))))

(declare-fun b!131623 () Bool)

(assert (=> b!131623 (= e!75977 ((_ map or) (store ((as const (Array B!765 Bool)) false) (h!7577 lt!39752) true) (content!293 (t!22772 lt!39752))))))

(assert (= (and d!31055 c!28376) b!131622))

(assert (= (and d!31055 (not c!28376)) b!131623))

(declare-fun m!116293 () Bool)

(assert (=> b!131623 m!116293))

(declare-fun m!116297 () Bool)

(assert (=> b!131623 m!116297))

(assert (=> b!131494 d!31055))

(assert (=> b!131494 d!31039))

(assert (=> b!131494 d!31041))

(declare-fun b!131625 () Bool)

(declare-fun e!75978 () List!2186)

(assert (=> b!131625 (= e!75978 (Cons!2180 (h!7577 (++!456 baseList!9 lt!39754)) (++!456 (t!22772 (++!456 baseList!9 lt!39754)) (t!22772 newList!20))))))

(declare-fun b!131626 () Bool)

(declare-fun res!61133 () Bool)

(declare-fun e!75979 () Bool)

(assert (=> b!131626 (=> (not res!61133) (not e!75979))))

(declare-fun lt!39777 () List!2186)

(assert (=> b!131626 (= res!61133 (= (size!1982 lt!39777) (+ (size!1982 (++!456 baseList!9 lt!39754)) (size!1982 (t!22772 newList!20)))))))

(declare-fun d!31059 () Bool)

(assert (=> d!31059 e!75979))

(declare-fun res!61132 () Bool)

(assert (=> d!31059 (=> (not res!61132) (not e!75979))))

(assert (=> d!31059 (= res!61132 (= (content!293 lt!39777) ((_ map or) (content!293 (++!456 baseList!9 lt!39754)) (content!293 (t!22772 newList!20)))))))

(assert (=> d!31059 (= lt!39777 e!75978)))

(declare-fun c!28377 () Bool)

(assert (=> d!31059 (= c!28377 ((_ is Nil!2180) (++!456 baseList!9 lt!39754)))))

(assert (=> d!31059 (= (++!456 (++!456 baseList!9 lt!39754) (t!22772 newList!20)) lt!39777)))

(declare-fun b!131627 () Bool)

(assert (=> b!131627 (= e!75979 (or (not (= (t!22772 newList!20) Nil!2180)) (= lt!39777 (++!456 baseList!9 lt!39754))))))

(declare-fun b!131624 () Bool)

(assert (=> b!131624 (= e!75978 (t!22772 newList!20))))

(assert (= (and d!31059 c!28377) b!131624))

(assert (= (and d!31059 (not c!28377)) b!131625))

(assert (= (and d!31059 res!61132) b!131626))

(assert (= (and b!131626 res!61133) b!131627))

(declare-fun m!116299 () Bool)

(assert (=> b!131625 m!116299))

(declare-fun m!116301 () Bool)

(assert (=> b!131626 m!116301))

(assert (=> b!131626 m!116155))

(declare-fun m!116303 () Bool)

(assert (=> b!131626 m!116303))

(assert (=> b!131626 m!116259))

(declare-fun m!116305 () Bool)

(assert (=> d!31059 m!116305))

(assert (=> d!31059 m!116155))

(declare-fun m!116307 () Bool)

(assert (=> d!31059 m!116307))

(assert (=> d!31059 m!116263))

(assert (=> b!131495 d!31059))

(declare-fun b!131629 () Bool)

(declare-fun e!75980 () List!2186)

(assert (=> b!131629 (= e!75980 (Cons!2180 (h!7577 baseList!9) (++!456 (t!22772 baseList!9) (++!456 lt!39754 (t!22772 newList!20)))))))

(declare-fun b!131630 () Bool)

(declare-fun res!61135 () Bool)

(declare-fun e!75981 () Bool)

(assert (=> b!131630 (=> (not res!61135) (not e!75981))))

(declare-fun lt!39778 () List!2186)

(assert (=> b!131630 (= res!61135 (= (size!1982 lt!39778) (+ (size!1982 baseList!9) (size!1982 (++!456 lt!39754 (t!22772 newList!20))))))))

(declare-fun d!31061 () Bool)

(assert (=> d!31061 e!75981))

(declare-fun res!61134 () Bool)

(assert (=> d!31061 (=> (not res!61134) (not e!75981))))

(assert (=> d!31061 (= res!61134 (= (content!293 lt!39778) ((_ map or) (content!293 baseList!9) (content!293 (++!456 lt!39754 (t!22772 newList!20))))))))

(assert (=> d!31061 (= lt!39778 e!75980)))

(declare-fun c!28378 () Bool)

(assert (=> d!31061 (= c!28378 ((_ is Nil!2180) baseList!9))))

(assert (=> d!31061 (= (++!456 baseList!9 (++!456 lt!39754 (t!22772 newList!20))) lt!39778)))

(declare-fun b!131631 () Bool)

(assert (=> b!131631 (= e!75981 (or (not (= (++!456 lt!39754 (t!22772 newList!20)) Nil!2180)) (= lt!39778 baseList!9)))))

(declare-fun b!131628 () Bool)

(assert (=> b!131628 (= e!75980 (++!456 lt!39754 (t!22772 newList!20)))))

(assert (= (and d!31061 c!28378) b!131628))

(assert (= (and d!31061 (not c!28378)) b!131629))

(assert (= (and d!31061 res!61134) b!131630))

(assert (= (and b!131630 res!61135) b!131631))

(assert (=> b!131629 m!116161))

(declare-fun m!116309 () Bool)

(assert (=> b!131629 m!116309))

(declare-fun m!116311 () Bool)

(assert (=> b!131630 m!116311))

(assert (=> b!131630 m!116221))

(assert (=> b!131630 m!116161))

(declare-fun m!116313 () Bool)

(assert (=> b!131630 m!116313))

(declare-fun m!116315 () Bool)

(assert (=> d!31061 m!116315))

(assert (=> d!31061 m!116227))

(assert (=> d!31061 m!116161))

(declare-fun m!116317 () Bool)

(assert (=> d!31061 m!116317))

(assert (=> b!131495 d!31061))

(declare-fun b!131637 () Bool)

(declare-fun e!75986 () List!2186)

(assert (=> b!131637 (= e!75986 (Cons!2180 (h!7577 baseList!9) (++!456 (t!22772 baseList!9) lt!39754)))))

(declare-fun b!131638 () Bool)

(declare-fun res!61141 () Bool)

(declare-fun e!75987 () Bool)

(assert (=> b!131638 (=> (not res!61141) (not e!75987))))

(declare-fun lt!39781 () List!2186)

(assert (=> b!131638 (= res!61141 (= (size!1982 lt!39781) (+ (size!1982 baseList!9) (size!1982 lt!39754))))))

(declare-fun d!31063 () Bool)

(assert (=> d!31063 e!75987))

(declare-fun res!61140 () Bool)

(assert (=> d!31063 (=> (not res!61140) (not e!75987))))

(assert (=> d!31063 (= res!61140 (= (content!293 lt!39781) ((_ map or) (content!293 baseList!9) (content!293 lt!39754))))))

(assert (=> d!31063 (= lt!39781 e!75986)))

(declare-fun c!28379 () Bool)

(assert (=> d!31063 (= c!28379 ((_ is Nil!2180) baseList!9))))

(assert (=> d!31063 (= (++!456 baseList!9 lt!39754) lt!39781)))

(declare-fun b!131639 () Bool)

(assert (=> b!131639 (= e!75987 (or (not (= lt!39754 Nil!2180)) (= lt!39781 baseList!9)))))

(declare-fun b!131636 () Bool)

(assert (=> b!131636 (= e!75986 lt!39754)))

(assert (= (and d!31063 c!28379) b!131636))

(assert (= (and d!31063 (not c!28379)) b!131637))

(assert (= (and d!31063 res!61140) b!131638))

(assert (= (and b!131638 res!61141) b!131639))

(declare-fun m!116319 () Bool)

(assert (=> b!131637 m!116319))

(declare-fun m!116321 () Bool)

(assert (=> b!131638 m!116321))

(assert (=> b!131638 m!116221))

(declare-fun m!116323 () Bool)

(assert (=> b!131638 m!116323))

(declare-fun m!116325 () Bool)

(assert (=> d!31063 m!116325))

(assert (=> d!31063 m!116227))

(declare-fun m!116327 () Bool)

(assert (=> d!31063 m!116327))

(assert (=> b!131495 d!31063))

(declare-fun d!31065 () Bool)

(assert (=> d!31065 (subseq!49 lt!39753 (++!456 (++!456 baseList!9 lt!39754) (t!22772 newList!20)))))

(declare-fun lt!39787 () Unit!1740)

(declare-fun choose!1668 (List!2186 List!2186 List!2186 List!2186) Unit!1740)

(assert (=> d!31065 (= lt!39787 (choose!1668 lt!39753 baseList!9 (t!22772 newList!20) lt!39754))))

(assert (=> d!31065 (subseq!49 lt!39753 (++!456 baseList!9 (t!22772 newList!20)))))

(assert (=> d!31065 (= (lemmaBiggerSndListPreservesSubSeq!12 lt!39753 baseList!9 (t!22772 newList!20) lt!39754) lt!39787)))

(declare-fun bs!12631 () Bool)

(assert (= bs!12631 d!31065))

(declare-fun m!116337 () Bool)

(assert (=> bs!12631 m!116337))

(assert (=> bs!12631 m!116151))

(declare-fun m!116339 () Bool)

(assert (=> bs!12631 m!116339))

(assert (=> bs!12631 m!116155))

(assert (=> bs!12631 m!116159))

(assert (=> bs!12631 m!116155))

(assert (=> bs!12631 m!116159))

(declare-fun m!116341 () Bool)

(assert (=> bs!12631 m!116341))

(assert (=> bs!12631 m!116151))

(assert (=> b!131495 d!31065))

(declare-fun b!131653 () Bool)

(declare-fun e!75998 () List!2186)

(assert (=> b!131653 (= e!75998 (Cons!2180 (h!7577 lt!39754) (++!456 (t!22772 lt!39754) (t!22772 newList!20))))))

(declare-fun b!131654 () Bool)

(declare-fun res!61155 () Bool)

(declare-fun e!75999 () Bool)

(assert (=> b!131654 (=> (not res!61155) (not e!75999))))

(declare-fun lt!39788 () List!2186)

(assert (=> b!131654 (= res!61155 (= (size!1982 lt!39788) (+ (size!1982 lt!39754) (size!1982 (t!22772 newList!20)))))))

(declare-fun d!31071 () Bool)

(assert (=> d!31071 e!75999))

(declare-fun res!61154 () Bool)

(assert (=> d!31071 (=> (not res!61154) (not e!75999))))

(assert (=> d!31071 (= res!61154 (= (content!293 lt!39788) ((_ map or) (content!293 lt!39754) (content!293 (t!22772 newList!20)))))))

(assert (=> d!31071 (= lt!39788 e!75998)))

(declare-fun c!28380 () Bool)

(assert (=> d!31071 (= c!28380 ((_ is Nil!2180) lt!39754))))

(assert (=> d!31071 (= (++!456 lt!39754 (t!22772 newList!20)) lt!39788)))

(declare-fun b!131655 () Bool)

(assert (=> b!131655 (= e!75999 (or (not (= (t!22772 newList!20) Nil!2180)) (= lt!39788 lt!39754)))))

(declare-fun b!131652 () Bool)

(assert (=> b!131652 (= e!75998 (t!22772 newList!20))))

(assert (= (and d!31071 c!28380) b!131652))

(assert (= (and d!31071 (not c!28380)) b!131653))

(assert (= (and d!31071 res!61154) b!131654))

(assert (= (and b!131654 res!61155) b!131655))

(declare-fun m!116353 () Bool)

(assert (=> b!131653 m!116353))

(declare-fun m!116357 () Bool)

(assert (=> b!131654 m!116357))

(assert (=> b!131654 m!116323))

(assert (=> b!131654 m!116259))

(declare-fun m!116359 () Bool)

(assert (=> d!31071 m!116359))

(assert (=> d!31071 m!116327))

(assert (=> d!31071 m!116263))

(assert (=> b!131495 d!31071))

(declare-fun d!31075 () Bool)

(declare-fun res!61164 () Bool)

(declare-fun e!76009 () Bool)

(assert (=> d!31075 (=> res!61164 e!76009)))

(assert (=> d!31075 (= res!61164 ((_ is Nil!2180) lt!39753))))

(assert (=> d!31075 (= (subseq!49 lt!39753 lt!39747) e!76009)))

(declare-fun b!131666 () Bool)

(declare-fun e!76008 () Bool)

(assert (=> b!131666 (= e!76008 (subseq!49 (t!22772 lt!39753) (t!22772 lt!39747)))))

(declare-fun b!131664 () Bool)

(declare-fun e!76010 () Bool)

(assert (=> b!131664 (= e!76009 e!76010)))

(declare-fun res!61167 () Bool)

(assert (=> b!131664 (=> (not res!61167) (not e!76010))))

(assert (=> b!131664 (= res!61167 ((_ is Cons!2180) lt!39747))))

(declare-fun b!131665 () Bool)

(declare-fun e!76007 () Bool)

(assert (=> b!131665 (= e!76010 e!76007)))

(declare-fun res!61166 () Bool)

(assert (=> b!131665 (=> res!61166 e!76007)))

(assert (=> b!131665 (= res!61166 e!76008)))

(declare-fun res!61165 () Bool)

(assert (=> b!131665 (=> (not res!61165) (not e!76008))))

(assert (=> b!131665 (= res!61165 (= (h!7577 lt!39753) (h!7577 lt!39747)))))

(declare-fun b!131667 () Bool)

(assert (=> b!131667 (= e!76007 (subseq!49 lt!39753 (t!22772 lt!39747)))))

(assert (= (and d!31075 (not res!61164)) b!131664))

(assert (= (and b!131664 res!61167) b!131665))

(assert (= (and b!131665 res!61165) b!131666))

(assert (= (and b!131665 (not res!61166)) b!131667))

(declare-fun m!116365 () Bool)

(assert (=> b!131666 m!116365))

(declare-fun m!116367 () Bool)

(assert (=> b!131667 m!116367))

(assert (=> b!131495 d!31075))

(declare-fun d!31079 () Bool)

(assert (=> d!31079 (= (++!456 (++!456 baseList!9 lt!39754) (t!22772 newList!20)) (++!456 baseList!9 (++!456 lt!39754 (t!22772 newList!20))))))

(declare-fun lt!39796 () Unit!1740)

(declare-fun choose!1671 (List!2186 List!2186 List!2186) Unit!1740)

(assert (=> d!31079 (= lt!39796 (choose!1671 baseList!9 lt!39754 (t!22772 newList!20)))))

(assert (=> d!31079 (= (lemmaConcatAssociativity!138 baseList!9 lt!39754 (t!22772 newList!20)) lt!39796)))

(declare-fun bs!12632 () Bool)

(assert (= bs!12632 d!31079))

(assert (=> bs!12632 m!116155))

(assert (=> bs!12632 m!116161))

(assert (=> bs!12632 m!116163))

(declare-fun m!116393 () Bool)

(assert (=> bs!12632 m!116393))

(assert (=> bs!12632 m!116155))

(assert (=> bs!12632 m!116159))

(assert (=> bs!12632 m!116161))

(assert (=> b!131495 d!31079))

(assert (=> b!131496 d!31025))

(declare-fun d!31087 () Bool)

(declare-fun res!61176 () Bool)

(declare-fun e!76019 () Bool)

(assert (=> d!31087 (=> res!61176 e!76019)))

(assert (=> d!31087 (= res!61176 ((_ is Nil!2180) lt!39753))))

(assert (=> d!31087 (= (noDuplicate!76 lt!39753) e!76019)))

(declare-fun b!131680 () Bool)

(declare-fun e!76020 () Bool)

(assert (=> b!131680 (= e!76019 e!76020)))

(declare-fun res!61177 () Bool)

(assert (=> b!131680 (=> (not res!61177) (not e!76020))))

(assert (=> b!131680 (= res!61177 (not (contains!360 (t!22772 lt!39753) (h!7577 lt!39753))))))

(declare-fun b!131681 () Bool)

(assert (=> b!131681 (= e!76020 (noDuplicate!76 (t!22772 lt!39753)))))

(assert (= (and d!31087 (not res!61176)) b!131680))

(assert (= (and b!131680 res!61177) b!131681))

(declare-fun m!116395 () Bool)

(assert (=> b!131680 m!116395))

(declare-fun m!116399 () Bool)

(assert (=> b!131681 m!116399))

(assert (=> b!131492 d!31087))

(declare-fun d!31089 () Bool)

(declare-fun e!76038 () Bool)

(assert (=> d!31089 e!76038))

(declare-fun res!61195 () Bool)

(assert (=> d!31089 (=> (not res!61195) (not e!76038))))

(declare-fun lt!39806 () List!2186)

(assert (=> d!31089 (= res!61195 (noDuplicate!76 lt!39806))))

(declare-fun choose!1672 (List!2186 List!2186) List!2186)

(assert (=> d!31089 (= lt!39806 (choose!1672 baseList!9 (t!22772 newList!20)))))

(assert (=> d!31089 (noDuplicate!76 baseList!9)))

(assert (=> d!31089 (= (concatWithoutDuplicates!34 baseList!9 (t!22772 newList!20)) lt!39806)))

(declare-fun b!131712 () Bool)

(declare-fun res!61194 () Bool)

(assert (=> b!131712 (=> (not res!61194) (not e!76038))))

(assert (=> b!131712 (= res!61194 (= (content!293 (++!456 baseList!9 (t!22772 newList!20))) (content!293 lt!39806)))))

(declare-fun b!131713 () Bool)

(declare-fun res!61196 () Bool)

(assert (=> b!131713 (=> (not res!61196) (not e!76038))))

(assert (=> b!131713 (= res!61196 (subseq!49 lt!39806 (++!456 baseList!9 (t!22772 newList!20))))))

(declare-fun b!131714 () Bool)

(assert (=> b!131714 (= e!76038 (isPrefix!175 baseList!9 lt!39806))))

(assert (= (and d!31089 res!61195) b!131712))

(assert (= (and b!131712 res!61194) b!131713))

(assert (= (and b!131713 res!61196) b!131714))

(declare-fun m!116441 () Bool)

(assert (=> d!31089 m!116441))

(declare-fun m!116443 () Bool)

(assert (=> d!31089 m!116443))

(assert (=> d!31089 m!116141))

(assert (=> b!131712 m!116151))

(assert (=> b!131712 m!116151))

(declare-fun m!116445 () Bool)

(assert (=> b!131712 m!116445))

(declare-fun m!116447 () Bool)

(assert (=> b!131712 m!116447))

(assert (=> b!131713 m!116151))

(assert (=> b!131713 m!116151))

(declare-fun m!116449 () Bool)

(assert (=> b!131713 m!116449))

(declare-fun m!116451 () Bool)

(assert (=> b!131714 m!116451))

(assert (=> b!131492 d!31089))

(declare-fun d!31103 () Bool)

(declare-fun res!61197 () Bool)

(declare-fun e!76041 () Bool)

(assert (=> d!31103 (=> res!61197 e!76041)))

(assert (=> d!31103 (= res!61197 ((_ is Nil!2180) baseList!9))))

(assert (=> d!31103 (= (subseq!49 baseList!9 baseList!9) e!76041)))

(declare-fun b!131717 () Bool)

(declare-fun e!76040 () Bool)

(assert (=> b!131717 (= e!76040 (subseq!49 (t!22772 baseList!9) (t!22772 baseList!9)))))

(declare-fun b!131715 () Bool)

(declare-fun e!76042 () Bool)

(assert (=> b!131715 (= e!76041 e!76042)))

(declare-fun res!61200 () Bool)

(assert (=> b!131715 (=> (not res!61200) (not e!76042))))

(assert (=> b!131715 (= res!61200 ((_ is Cons!2180) baseList!9))))

(declare-fun b!131716 () Bool)

(declare-fun e!76039 () Bool)

(assert (=> b!131716 (= e!76042 e!76039)))

(declare-fun res!61199 () Bool)

(assert (=> b!131716 (=> res!61199 e!76039)))

(assert (=> b!131716 (= res!61199 e!76040)))

(declare-fun res!61198 () Bool)

(assert (=> b!131716 (=> (not res!61198) (not e!76040))))

(assert (=> b!131716 (= res!61198 (= (h!7577 baseList!9) (h!7577 baseList!9)))))

(declare-fun b!131718 () Bool)

(assert (=> b!131718 (= e!76039 (subseq!49 baseList!9 (t!22772 baseList!9)))))

(assert (= (and d!31103 (not res!61197)) b!131715))

(assert (= (and b!131715 res!61200) b!131716))

(assert (= (and b!131716 res!61198) b!131717))

(assert (= (and b!131716 (not res!61199)) b!131718))

(declare-fun m!116453 () Bool)

(assert (=> b!131717 m!116453))

(declare-fun m!116455 () Bool)

(assert (=> b!131718 m!116455))

(assert (=> b!131492 d!31103))

(declare-fun d!31105 () Bool)

(assert (=> d!31105 (subseq!49 baseList!9 baseList!9)))

(declare-fun lt!39809 () Unit!1740)

(declare-fun choose!1673 (List!2186) Unit!1740)

(assert (=> d!31105 (= lt!39809 (choose!1673 baseList!9))))

(assert (=> d!31105 (= (lemmaSubseqRefl!36 baseList!9) lt!39809)))

(declare-fun bs!12635 () Bool)

(assert (= bs!12635 d!31105))

(assert (=> bs!12635 m!116179))

(declare-fun m!116457 () Bool)

(assert (=> bs!12635 m!116457))

(assert (=> b!131492 d!31105))

(declare-fun d!31107 () Bool)

(declare-fun c!28387 () Bool)

(assert (=> d!31107 (= c!28387 ((_ is Nil!2180) lt!39750))))

(declare-fun e!76043 () (InoxSet B!765))

(assert (=> d!31107 (= (content!293 lt!39750) e!76043)))

(declare-fun b!131719 () Bool)

(assert (=> b!131719 (= e!76043 ((as const (Array B!765 Bool)) false))))

(declare-fun b!131720 () Bool)

(assert (=> b!131720 (= e!76043 ((_ map or) (store ((as const (Array B!765 Bool)) false) (h!7577 lt!39750) true) (content!293 (t!22772 lt!39750))))))

(assert (= (and d!31107 c!28387) b!131719))

(assert (= (and d!31107 (not c!28387)) b!131720))

(declare-fun m!116459 () Bool)

(assert (=> b!131720 m!116459))

(declare-fun m!116461 () Bool)

(assert (=> b!131720 m!116461))

(assert (=> b!131503 d!31107))

(declare-fun b!131722 () Bool)

(declare-fun e!76044 () List!2186)

(assert (=> b!131722 (= e!76044 (Cons!2180 (h!7577 baseList!9) (++!456 (t!22772 baseList!9) newList!20)))))

(declare-fun b!131723 () Bool)

(declare-fun res!61202 () Bool)

(declare-fun e!76045 () Bool)

(assert (=> b!131723 (=> (not res!61202) (not e!76045))))

(declare-fun lt!39810 () List!2186)

(assert (=> b!131723 (= res!61202 (= (size!1982 lt!39810) (+ (size!1982 baseList!9) (size!1982 newList!20))))))

(declare-fun d!31109 () Bool)

(assert (=> d!31109 e!76045))

(declare-fun res!61201 () Bool)

(assert (=> d!31109 (=> (not res!61201) (not e!76045))))

(assert (=> d!31109 (= res!61201 (= (content!293 lt!39810) ((_ map or) (content!293 baseList!9) (content!293 newList!20))))))

(assert (=> d!31109 (= lt!39810 e!76044)))

(declare-fun c!28388 () Bool)

(assert (=> d!31109 (= c!28388 ((_ is Nil!2180) baseList!9))))

(assert (=> d!31109 (= (++!456 baseList!9 newList!20) lt!39810)))

(declare-fun b!131724 () Bool)

(assert (=> b!131724 (= e!76045 (or (not (= newList!20 Nil!2180)) (= lt!39810 baseList!9)))))

(declare-fun b!131721 () Bool)

(assert (=> b!131721 (= e!76044 newList!20)))

(assert (= (and d!31109 c!28388) b!131721))

(assert (= (and d!31109 (not c!28388)) b!131722))

(assert (= (and d!31109 res!61201) b!131723))

(assert (= (and b!131723 res!61202) b!131724))

(declare-fun m!116463 () Bool)

(assert (=> b!131722 m!116463))

(declare-fun m!116465 () Bool)

(assert (=> b!131723 m!116465))

(assert (=> b!131723 m!116221))

(declare-fun m!116467 () Bool)

(assert (=> b!131723 m!116467))

(declare-fun m!116469 () Bool)

(assert (=> d!31109 m!116469))

(assert (=> d!31109 m!116227))

(declare-fun m!116471 () Bool)

(assert (=> d!31109 m!116471))

(assert (=> b!131503 d!31109))

(declare-fun d!31111 () Bool)

(declare-fun res!61203 () Bool)

(declare-fun e!76048 () Bool)

(assert (=> d!31111 (=> res!61203 e!76048)))

(assert (=> d!31111 (= res!61203 ((_ is Nil!2180) lt!39753))))

(assert (=> d!31111 (= (subseq!49 lt!39753 lt!39752) e!76048)))

(declare-fun b!131727 () Bool)

(declare-fun e!76047 () Bool)

(assert (=> b!131727 (= e!76047 (subseq!49 (t!22772 lt!39753) (t!22772 lt!39752)))))

(declare-fun b!131725 () Bool)

(declare-fun e!76049 () Bool)

(assert (=> b!131725 (= e!76048 e!76049)))

(declare-fun res!61206 () Bool)

(assert (=> b!131725 (=> (not res!61206) (not e!76049))))

(assert (=> b!131725 (= res!61206 ((_ is Cons!2180) lt!39752))))

(declare-fun b!131726 () Bool)

(declare-fun e!76046 () Bool)

(assert (=> b!131726 (= e!76049 e!76046)))

(declare-fun res!61205 () Bool)

(assert (=> b!131726 (=> res!61205 e!76046)))

(assert (=> b!131726 (= res!61205 e!76047)))

(declare-fun res!61204 () Bool)

(assert (=> b!131726 (=> (not res!61204) (not e!76047))))

(assert (=> b!131726 (= res!61204 (= (h!7577 lt!39753) (h!7577 lt!39752)))))

(declare-fun b!131728 () Bool)

(assert (=> b!131728 (= e!76046 (subseq!49 lt!39753 (t!22772 lt!39752)))))

(assert (= (and d!31111 (not res!61203)) b!131725))

(assert (= (and b!131725 res!61206) b!131726))

(assert (= (and b!131726 res!61204) b!131727))

(assert (= (and b!131726 (not res!61205)) b!131728))

(declare-fun m!116473 () Bool)

(assert (=> b!131727 m!116473))

(declare-fun m!116475 () Bool)

(assert (=> b!131728 m!116475))

(assert (=> b!131493 d!31111))

(declare-fun d!31113 () Bool)

(declare-fun res!61207 () Bool)

(declare-fun e!76052 () Bool)

(assert (=> d!31113 (=> res!61207 e!76052)))

(assert (=> d!31113 (= res!61207 ((_ is Nil!2180) lt!39753))))

(assert (=> d!31113 (= (subseq!49 lt!39753 lt!39758) e!76052)))

(declare-fun b!131731 () Bool)

(declare-fun e!76051 () Bool)

(assert (=> b!131731 (= e!76051 (subseq!49 (t!22772 lt!39753) (t!22772 lt!39758)))))

(declare-fun b!131729 () Bool)

(declare-fun e!76053 () Bool)

(assert (=> b!131729 (= e!76052 e!76053)))

(declare-fun res!61210 () Bool)

(assert (=> b!131729 (=> (not res!61210) (not e!76053))))

(assert (=> b!131729 (= res!61210 ((_ is Cons!2180) lt!39758))))

(declare-fun b!131730 () Bool)

(declare-fun e!76050 () Bool)

(assert (=> b!131730 (= e!76053 e!76050)))

(declare-fun res!61209 () Bool)

(assert (=> b!131730 (=> res!61209 e!76050)))

(assert (=> b!131730 (= res!61209 e!76051)))

(declare-fun res!61208 () Bool)

(assert (=> b!131730 (=> (not res!61208) (not e!76051))))

(assert (=> b!131730 (= res!61208 (= (h!7577 lt!39753) (h!7577 lt!39758)))))

(declare-fun b!131732 () Bool)

(assert (=> b!131732 (= e!76050 (subseq!49 lt!39753 (t!22772 lt!39758)))))

(assert (= (and d!31113 (not res!61207)) b!131729))

(assert (= (and b!131729 res!61210) b!131730))

(assert (= (and b!131730 res!61208) b!131731))

(assert (= (and b!131730 (not res!61209)) b!131732))

(declare-fun m!116477 () Bool)

(assert (=> b!131731 m!116477))

(declare-fun m!116479 () Bool)

(assert (=> b!131732 m!116479))

(assert (=> b!131504 d!31113))

(declare-fun b!131737 () Bool)

(declare-fun e!76056 () Bool)

(declare-fun tp!70421 () Bool)

(assert (=> b!131737 (= e!76056 (and tp_is_empty!1409 tp!70421))))

(assert (=> b!131497 (= tp!70414 e!76056)))

(assert (= (and b!131497 ((_ is Cons!2180) (t!22772 newList!20))) b!131737))

(declare-fun b!131738 () Bool)

(declare-fun e!76057 () Bool)

(declare-fun tp!70422 () Bool)

(assert (=> b!131738 (= e!76057 (and tp_is_empty!1409 tp!70422))))

(assert (=> b!131499 (= tp!70413 e!76057)))

(assert (= (and b!131499 ((_ is Cons!2180) (t!22772 baseList!9))) b!131738))

(check-sat (not b!131522) (not b!131681) (not b!131547) (not b!131625) (not d!31059) (not b!131714) (not b!131629) (not b!131626) (not b!131666) (not b!131732) (not b!131615) (not b!131737) (not b!131542) (not b!131720) (not b!131723) (not b!131717) (not b!131653) (not d!31089) (not b!131718) (not b!131713) (not b!131546) (not b!131727) (not b!131561) (not b!131654) tp_is_empty!1409 (not b!131623) (not b!131680) (not b!131543) (not b!131728) (not b!131614) (not b!131638) (not b!131596) (not b!131637) (not b!131573) (not d!31065) (not d!31031) (not b!131521) (not d!31041) (not d!31109) (not b!131712) (not b!131595) (not b!131738) (not d!31079) (not b!131630) (not b!131731) (not b!131541) (not b!131571) (not b!131667) (not d!31071) (not d!31061) (not d!31105) (not d!31063) (not b!131722))
(check-sat)
(get-model)

(declare-fun d!31115 () Bool)

(declare-fun res!61211 () Bool)

(declare-fun e!76060 () Bool)

(assert (=> d!31115 (=> res!61211 e!76060)))

(assert (=> d!31115 (= res!61211 ((_ is Nil!2180) (t!22772 baseList!9)))))

(assert (=> d!31115 (= (subseq!49 (t!22772 baseList!9) (t!22772 baseList!9)) e!76060)))

(declare-fun b!131741 () Bool)

(declare-fun e!76059 () Bool)

(assert (=> b!131741 (= e!76059 (subseq!49 (t!22772 (t!22772 baseList!9)) (t!22772 (t!22772 baseList!9))))))

(declare-fun b!131739 () Bool)

(declare-fun e!76061 () Bool)

(assert (=> b!131739 (= e!76060 e!76061)))

(declare-fun res!61214 () Bool)

(assert (=> b!131739 (=> (not res!61214) (not e!76061))))

(assert (=> b!131739 (= res!61214 ((_ is Cons!2180) (t!22772 baseList!9)))))

(declare-fun b!131740 () Bool)

(declare-fun e!76058 () Bool)

(assert (=> b!131740 (= e!76061 e!76058)))

(declare-fun res!61213 () Bool)

(assert (=> b!131740 (=> res!61213 e!76058)))

(assert (=> b!131740 (= res!61213 e!76059)))

(declare-fun res!61212 () Bool)

(assert (=> b!131740 (=> (not res!61212) (not e!76059))))

(assert (=> b!131740 (= res!61212 (= (h!7577 (t!22772 baseList!9)) (h!7577 (t!22772 baseList!9))))))

(declare-fun b!131742 () Bool)

(assert (=> b!131742 (= e!76058 (subseq!49 (t!22772 baseList!9) (t!22772 (t!22772 baseList!9))))))

(assert (= (and d!31115 (not res!61211)) b!131739))

(assert (= (and b!131739 res!61214) b!131740))

(assert (= (and b!131740 res!61212) b!131741))

(assert (= (and b!131740 (not res!61213)) b!131742))

(declare-fun m!116481 () Bool)

(assert (=> b!131741 m!116481))

(declare-fun m!116483 () Bool)

(assert (=> b!131742 m!116483))

(assert (=> b!131717 d!31115))

(declare-fun d!31117 () Bool)

(declare-fun res!61215 () Bool)

(declare-fun e!76064 () Bool)

(assert (=> d!31117 (=> res!61215 e!76064)))

(assert (=> d!31117 (= res!61215 ((_ is Nil!2180) lt!39753))))

(assert (=> d!31117 (= (subseq!49 lt!39753 (t!22772 lt!39752)) e!76064)))

(declare-fun b!131745 () Bool)

(declare-fun e!76063 () Bool)

(assert (=> b!131745 (= e!76063 (subseq!49 (t!22772 lt!39753) (t!22772 (t!22772 lt!39752))))))

(declare-fun b!131743 () Bool)

(declare-fun e!76065 () Bool)

(assert (=> b!131743 (= e!76064 e!76065)))

(declare-fun res!61218 () Bool)

(assert (=> b!131743 (=> (not res!61218) (not e!76065))))

(assert (=> b!131743 (= res!61218 ((_ is Cons!2180) (t!22772 lt!39752)))))

(declare-fun b!131744 () Bool)

(declare-fun e!76062 () Bool)

(assert (=> b!131744 (= e!76065 e!76062)))

(declare-fun res!61217 () Bool)

(assert (=> b!131744 (=> res!61217 e!76062)))

(assert (=> b!131744 (= res!61217 e!76063)))

(declare-fun res!61216 () Bool)

(assert (=> b!131744 (=> (not res!61216) (not e!76063))))

(assert (=> b!131744 (= res!61216 (= (h!7577 lt!39753) (h!7577 (t!22772 lt!39752))))))

(declare-fun b!131746 () Bool)

(assert (=> b!131746 (= e!76062 (subseq!49 lt!39753 (t!22772 (t!22772 lt!39752))))))

(assert (= (and d!31117 (not res!61215)) b!131743))

(assert (= (and b!131743 res!61218) b!131744))

(assert (= (and b!131744 res!61216) b!131745))

(assert (= (and b!131744 (not res!61217)) b!131746))

(declare-fun m!116485 () Bool)

(assert (=> b!131745 m!116485))

(declare-fun m!116487 () Bool)

(assert (=> b!131746 m!116487))

(assert (=> b!131728 d!31117))

(declare-fun d!31119 () Bool)

(declare-fun lt!39811 () Bool)

(assert (=> d!31119 (= lt!39811 (select (content!293 (t!22772 lt!39753)) (h!7577 lt!39753)))))

(declare-fun e!76066 () Bool)

(assert (=> d!31119 (= lt!39811 e!76066)))

(declare-fun res!61220 () Bool)

(assert (=> d!31119 (=> (not res!61220) (not e!76066))))

(assert (=> d!31119 (= res!61220 ((_ is Cons!2180) (t!22772 lt!39753)))))

(assert (=> d!31119 (= (contains!360 (t!22772 lt!39753) (h!7577 lt!39753)) lt!39811)))

(declare-fun b!131747 () Bool)

(declare-fun e!76067 () Bool)

(assert (=> b!131747 (= e!76066 e!76067)))

(declare-fun res!61219 () Bool)

(assert (=> b!131747 (=> res!61219 e!76067)))

(assert (=> b!131747 (= res!61219 (= (h!7577 (t!22772 lt!39753)) (h!7577 lt!39753)))))

(declare-fun b!131748 () Bool)

(assert (=> b!131748 (= e!76067 (contains!360 (t!22772 (t!22772 lt!39753)) (h!7577 lt!39753)))))

(assert (= (and d!31119 res!61220) b!131747))

(assert (= (and b!131747 (not res!61219)) b!131748))

(assert (=> d!31119 m!116245))

(declare-fun m!116489 () Bool)

(assert (=> d!31119 m!116489))

(declare-fun m!116491 () Bool)

(assert (=> b!131748 m!116491))

(assert (=> b!131680 d!31119))

(assert (=> d!31065 d!31041))

(declare-fun d!31121 () Bool)

(declare-fun res!61221 () Bool)

(declare-fun e!76070 () Bool)

(assert (=> d!31121 (=> res!61221 e!76070)))

(assert (=> d!31121 (= res!61221 ((_ is Nil!2180) lt!39753))))

(assert (=> d!31121 (= (subseq!49 lt!39753 (++!456 (++!456 baseList!9 lt!39754) (t!22772 newList!20))) e!76070)))

(declare-fun e!76069 () Bool)

(declare-fun b!131751 () Bool)

(assert (=> b!131751 (= e!76069 (subseq!49 (t!22772 lt!39753) (t!22772 (++!456 (++!456 baseList!9 lt!39754) (t!22772 newList!20)))))))

(declare-fun b!131749 () Bool)

(declare-fun e!76071 () Bool)

(assert (=> b!131749 (= e!76070 e!76071)))

(declare-fun res!61224 () Bool)

(assert (=> b!131749 (=> (not res!61224) (not e!76071))))

(assert (=> b!131749 (= res!61224 ((_ is Cons!2180) (++!456 (++!456 baseList!9 lt!39754) (t!22772 newList!20))))))

(declare-fun b!131750 () Bool)

(declare-fun e!76068 () Bool)

(assert (=> b!131750 (= e!76071 e!76068)))

(declare-fun res!61223 () Bool)

(assert (=> b!131750 (=> res!61223 e!76068)))

(assert (=> b!131750 (= res!61223 e!76069)))

(declare-fun res!61222 () Bool)

(assert (=> b!131750 (=> (not res!61222) (not e!76069))))

(assert (=> b!131750 (= res!61222 (= (h!7577 lt!39753) (h!7577 (++!456 (++!456 baseList!9 lt!39754) (t!22772 newList!20)))))))

(declare-fun b!131752 () Bool)

(assert (=> b!131752 (= e!76068 (subseq!49 lt!39753 (t!22772 (++!456 (++!456 baseList!9 lt!39754) (t!22772 newList!20)))))))

(assert (= (and d!31121 (not res!61221)) b!131749))

(assert (= (and b!131749 res!61224) b!131750))

(assert (= (and b!131750 res!61222) b!131751))

(assert (= (and b!131750 (not res!61223)) b!131752))

(declare-fun m!116493 () Bool)

(assert (=> b!131751 m!116493))

(declare-fun m!116495 () Bool)

(assert (=> b!131752 m!116495))

(assert (=> d!31065 d!31121))

(declare-fun d!31123 () Bool)

(declare-fun res!61225 () Bool)

(declare-fun e!76074 () Bool)

(assert (=> d!31123 (=> res!61225 e!76074)))

(assert (=> d!31123 (= res!61225 ((_ is Nil!2180) lt!39753))))

(assert (=> d!31123 (= (subseq!49 lt!39753 (++!456 baseList!9 (t!22772 newList!20))) e!76074)))

(declare-fun e!76073 () Bool)

(declare-fun b!131755 () Bool)

(assert (=> b!131755 (= e!76073 (subseq!49 (t!22772 lt!39753) (t!22772 (++!456 baseList!9 (t!22772 newList!20)))))))

(declare-fun b!131753 () Bool)

(declare-fun e!76075 () Bool)

(assert (=> b!131753 (= e!76074 e!76075)))

(declare-fun res!61228 () Bool)

(assert (=> b!131753 (=> (not res!61228) (not e!76075))))

(assert (=> b!131753 (= res!61228 ((_ is Cons!2180) (++!456 baseList!9 (t!22772 newList!20))))))

(declare-fun b!131754 () Bool)

(declare-fun e!76072 () Bool)

(assert (=> b!131754 (= e!76075 e!76072)))

(declare-fun res!61227 () Bool)

(assert (=> b!131754 (=> res!61227 e!76072)))

(assert (=> b!131754 (= res!61227 e!76073)))

(declare-fun res!61226 () Bool)

(assert (=> b!131754 (=> (not res!61226) (not e!76073))))

(assert (=> b!131754 (= res!61226 (= (h!7577 lt!39753) (h!7577 (++!456 baseList!9 (t!22772 newList!20)))))))

(declare-fun b!131756 () Bool)

(assert (=> b!131756 (= e!76072 (subseq!49 lt!39753 (t!22772 (++!456 baseList!9 (t!22772 newList!20)))))))

(assert (= (and d!31123 (not res!61225)) b!131753))

(assert (= (and b!131753 res!61228) b!131754))

(assert (= (and b!131754 res!61226) b!131755))

(assert (= (and b!131754 (not res!61227)) b!131756))

(declare-fun m!116497 () Bool)

(assert (=> b!131755 m!116497))

(declare-fun m!116499 () Bool)

(assert (=> b!131756 m!116499))

(assert (=> d!31065 d!31123))

(assert (=> d!31065 d!31059))

(declare-fun d!31125 () Bool)

(assert (=> d!31125 (subseq!49 lt!39753 (++!456 (++!456 baseList!9 lt!39754) (t!22772 newList!20)))))

(assert (=> d!31125 true))

(declare-fun _$71!114 () Unit!1740)

(assert (=> d!31125 (= (choose!1668 lt!39753 baseList!9 (t!22772 newList!20) lt!39754) _$71!114)))

(declare-fun bs!12636 () Bool)

(assert (= bs!12636 d!31125))

(assert (=> bs!12636 m!116155))

(assert (=> bs!12636 m!116155))

(assert (=> bs!12636 m!116159))

(assert (=> bs!12636 m!116159))

(assert (=> bs!12636 m!116341))

(assert (=> d!31065 d!31125))

(assert (=> d!31065 d!31063))

(declare-fun d!31127 () Bool)

(declare-fun c!28389 () Bool)

(assert (=> d!31127 (= c!28389 ((_ is Nil!2180) (t!22772 lt!39750)))))

(declare-fun e!76076 () (InoxSet B!765))

(assert (=> d!31127 (= (content!293 (t!22772 lt!39750)) e!76076)))

(declare-fun b!131757 () Bool)

(assert (=> b!131757 (= e!76076 ((as const (Array B!765 Bool)) false))))

(declare-fun b!131758 () Bool)

(assert (=> b!131758 (= e!76076 ((_ map or) (store ((as const (Array B!765 Bool)) false) (h!7577 (t!22772 lt!39750)) true) (content!293 (t!22772 (t!22772 lt!39750)))))))

(assert (= (and d!31127 c!28389) b!131757))

(assert (= (and d!31127 (not c!28389)) b!131758))

(declare-fun m!116501 () Bool)

(assert (=> b!131758 m!116501))

(declare-fun m!116503 () Bool)

(assert (=> b!131758 m!116503))

(assert (=> b!131720 d!31127))

(declare-fun d!31129 () Bool)

(declare-fun c!28390 () Bool)

(assert (=> d!31129 (= c!28390 ((_ is Nil!2180) lt!39777))))

(declare-fun e!76077 () (InoxSet B!765))

(assert (=> d!31129 (= (content!293 lt!39777) e!76077)))

(declare-fun b!131759 () Bool)

(assert (=> b!131759 (= e!76077 ((as const (Array B!765 Bool)) false))))

(declare-fun b!131760 () Bool)

(assert (=> b!131760 (= e!76077 ((_ map or) (store ((as const (Array B!765 Bool)) false) (h!7577 lt!39777) true) (content!293 (t!22772 lt!39777))))))

(assert (= (and d!31129 c!28390) b!131759))

(assert (= (and d!31129 (not c!28390)) b!131760))

(declare-fun m!116505 () Bool)

(assert (=> b!131760 m!116505))

(declare-fun m!116507 () Bool)

(assert (=> b!131760 m!116507))

(assert (=> d!31059 d!31129))

(declare-fun d!31131 () Bool)

(declare-fun c!28391 () Bool)

(assert (=> d!31131 (= c!28391 ((_ is Nil!2180) (++!456 baseList!9 lt!39754)))))

(declare-fun e!76078 () (InoxSet B!765))

(assert (=> d!31131 (= (content!293 (++!456 baseList!9 lt!39754)) e!76078)))

(declare-fun b!131761 () Bool)

(assert (=> b!131761 (= e!76078 ((as const (Array B!765 Bool)) false))))

(declare-fun b!131762 () Bool)

(assert (=> b!131762 (= e!76078 ((_ map or) (store ((as const (Array B!765 Bool)) false) (h!7577 (++!456 baseList!9 lt!39754)) true) (content!293 (t!22772 (++!456 baseList!9 lt!39754)))))))

(assert (= (and d!31131 c!28391) b!131761))

(assert (= (and d!31131 (not c!28391)) b!131762))

(declare-fun m!116509 () Bool)

(assert (=> b!131762 m!116509))

(declare-fun m!116511 () Bool)

(assert (=> b!131762 m!116511))

(assert (=> d!31059 d!31131))

(declare-fun d!31133 () Bool)

(declare-fun c!28392 () Bool)

(assert (=> d!31133 (= c!28392 ((_ is Nil!2180) (t!22772 newList!20)))))

(declare-fun e!76079 () (InoxSet B!765))

(assert (=> d!31133 (= (content!293 (t!22772 newList!20)) e!76079)))

(declare-fun b!131763 () Bool)

(assert (=> b!131763 (= e!76079 ((as const (Array B!765 Bool)) false))))

(declare-fun b!131764 () Bool)

(assert (=> b!131764 (= e!76079 ((_ map or) (store ((as const (Array B!765 Bool)) false) (h!7577 (t!22772 newList!20)) true) (content!293 (t!22772 (t!22772 newList!20)))))))

(assert (= (and d!31133 c!28392) b!131763))

(assert (= (and d!31133 (not c!28392)) b!131764))

(declare-fun m!116513 () Bool)

(assert (=> b!131764 m!116513))

(declare-fun m!116515 () Bool)

(assert (=> b!131764 m!116515))

(assert (=> d!31059 d!31133))

(declare-fun d!31135 () Bool)

(declare-fun lt!39814 () Int)

(assert (=> d!31135 (>= lt!39814 0)))

(declare-fun e!76082 () Int)

(assert (=> d!31135 (= lt!39814 e!76082)))

(declare-fun c!28395 () Bool)

(assert (=> d!31135 (= c!28395 ((_ is Nil!2180) lt!39781))))

(assert (=> d!31135 (= (size!1982 lt!39781) lt!39814)))

(declare-fun b!131769 () Bool)

(assert (=> b!131769 (= e!76082 0)))

(declare-fun b!131770 () Bool)

(assert (=> b!131770 (= e!76082 (+ 1 (size!1982 (t!22772 lt!39781))))))

(assert (= (and d!31135 c!28395) b!131769))

(assert (= (and d!31135 (not c!28395)) b!131770))

(declare-fun m!116517 () Bool)

(assert (=> b!131770 m!116517))

(assert (=> b!131638 d!31135))

(declare-fun d!31137 () Bool)

(declare-fun lt!39815 () Int)

(assert (=> d!31137 (>= lt!39815 0)))

(declare-fun e!76083 () Int)

(assert (=> d!31137 (= lt!39815 e!76083)))

(declare-fun c!28396 () Bool)

(assert (=> d!31137 (= c!28396 ((_ is Nil!2180) baseList!9))))

(assert (=> d!31137 (= (size!1982 baseList!9) lt!39815)))

(declare-fun b!131771 () Bool)

(assert (=> b!131771 (= e!76083 0)))

(declare-fun b!131772 () Bool)

(assert (=> b!131772 (= e!76083 (+ 1 (size!1982 (t!22772 baseList!9))))))

(assert (= (and d!31137 c!28396) b!131771))

(assert (= (and d!31137 (not c!28396)) b!131772))

(declare-fun m!116519 () Bool)

(assert (=> b!131772 m!116519))

(assert (=> b!131638 d!31137))

(declare-fun d!31139 () Bool)

(declare-fun lt!39816 () Int)

(assert (=> d!31139 (>= lt!39816 0)))

(declare-fun e!76084 () Int)

(assert (=> d!31139 (= lt!39816 e!76084)))

(declare-fun c!28397 () Bool)

(assert (=> d!31139 (= c!28397 ((_ is Nil!2180) lt!39754))))

(assert (=> d!31139 (= (size!1982 lt!39754) lt!39816)))

(declare-fun b!131773 () Bool)

(assert (=> b!131773 (= e!76084 0)))

(declare-fun b!131774 () Bool)

(assert (=> b!131774 (= e!76084 (+ 1 (size!1982 (t!22772 lt!39754))))))

(assert (= (and d!31139 c!28397) b!131773))

(assert (= (and d!31139 (not c!28397)) b!131774))

(declare-fun m!116521 () Bool)

(assert (=> b!131774 m!116521))

(assert (=> b!131638 d!31139))

(declare-fun b!131776 () Bool)

(declare-fun e!76085 () List!2186)

(assert (=> b!131776 (= e!76085 (Cons!2180 (h!7577 (t!22772 (++!456 baseList!9 lt!39754))) (++!456 (t!22772 (t!22772 (++!456 baseList!9 lt!39754))) (t!22772 newList!20))))))

(declare-fun b!131777 () Bool)

(declare-fun res!61230 () Bool)

(declare-fun e!76086 () Bool)

(assert (=> b!131777 (=> (not res!61230) (not e!76086))))

(declare-fun lt!39817 () List!2186)

(assert (=> b!131777 (= res!61230 (= (size!1982 lt!39817) (+ (size!1982 (t!22772 (++!456 baseList!9 lt!39754))) (size!1982 (t!22772 newList!20)))))))

(declare-fun d!31141 () Bool)

(assert (=> d!31141 e!76086))

(declare-fun res!61229 () Bool)

(assert (=> d!31141 (=> (not res!61229) (not e!76086))))

(assert (=> d!31141 (= res!61229 (= (content!293 lt!39817) ((_ map or) (content!293 (t!22772 (++!456 baseList!9 lt!39754))) (content!293 (t!22772 newList!20)))))))

(assert (=> d!31141 (= lt!39817 e!76085)))

(declare-fun c!28398 () Bool)

(assert (=> d!31141 (= c!28398 ((_ is Nil!2180) (t!22772 (++!456 baseList!9 lt!39754))))))

(assert (=> d!31141 (= (++!456 (t!22772 (++!456 baseList!9 lt!39754)) (t!22772 newList!20)) lt!39817)))

(declare-fun b!131778 () Bool)

(assert (=> b!131778 (= e!76086 (or (not (= (t!22772 newList!20) Nil!2180)) (= lt!39817 (t!22772 (++!456 baseList!9 lt!39754)))))))

(declare-fun b!131775 () Bool)

(assert (=> b!131775 (= e!76085 (t!22772 newList!20))))

(assert (= (and d!31141 c!28398) b!131775))

(assert (= (and d!31141 (not c!28398)) b!131776))

(assert (= (and d!31141 res!61229) b!131777))

(assert (= (and b!131777 res!61230) b!131778))

(declare-fun m!116523 () Bool)

(assert (=> b!131776 m!116523))

(declare-fun m!116525 () Bool)

(assert (=> b!131777 m!116525))

(declare-fun m!116527 () Bool)

(assert (=> b!131777 m!116527))

(assert (=> b!131777 m!116259))

(declare-fun m!116529 () Bool)

(assert (=> d!31141 m!116529))

(assert (=> d!31141 m!116511))

(assert (=> d!31141 m!116263))

(assert (=> b!131625 d!31141))

(declare-fun d!31143 () Bool)

(declare-fun c!28399 () Bool)

(assert (=> d!31143 (= c!28399 ((_ is Nil!2180) lt!39775))))

(declare-fun e!76087 () (InoxSet B!765))

(assert (=> d!31143 (= (content!293 lt!39775) e!76087)))

(declare-fun b!131779 () Bool)

(assert (=> b!131779 (= e!76087 ((as const (Array B!765 Bool)) false))))

(declare-fun b!131780 () Bool)

(assert (=> b!131780 (= e!76087 ((_ map or) (store ((as const (Array B!765 Bool)) false) (h!7577 lt!39775) true) (content!293 (t!22772 lt!39775))))))

(assert (= (and d!31143 c!28399) b!131779))

(assert (= (and d!31143 (not c!28399)) b!131780))

(declare-fun m!116531 () Bool)

(assert (=> b!131780 m!116531))

(declare-fun m!116533 () Bool)

(assert (=> b!131780 m!116533))

(assert (=> d!31041 d!31143))

(declare-fun d!31145 () Bool)

(declare-fun c!28400 () Bool)

(assert (=> d!31145 (= c!28400 ((_ is Nil!2180) baseList!9))))

(declare-fun e!76088 () (InoxSet B!765))

(assert (=> d!31145 (= (content!293 baseList!9) e!76088)))

(declare-fun b!131781 () Bool)

(assert (=> b!131781 (= e!76088 ((as const (Array B!765 Bool)) false))))

(declare-fun b!131782 () Bool)

(assert (=> b!131782 (= e!76088 ((_ map or) (store ((as const (Array B!765 Bool)) false) (h!7577 baseList!9) true) (content!293 (t!22772 baseList!9))))))

(assert (= (and d!31145 c!28400) b!131781))

(assert (= (and d!31145 (not c!28400)) b!131782))

(declare-fun m!116535 () Bool)

(assert (=> b!131782 m!116535))

(declare-fun m!116537 () Bool)

(assert (=> b!131782 m!116537))

(assert (=> d!31041 d!31145))

(assert (=> d!31041 d!31133))

(declare-fun d!31147 () Bool)

(declare-fun res!61231 () Bool)

(declare-fun e!76091 () Bool)

(assert (=> d!31147 (=> res!61231 e!76091)))

(assert (=> d!31147 (= res!61231 ((_ is Nil!2180) (t!22772 lt!39753)))))

(assert (=> d!31147 (= (subseq!49 (t!22772 lt!39753) (t!22772 lt!39756)) e!76091)))

(declare-fun b!131785 () Bool)

(declare-fun e!76090 () Bool)

(assert (=> b!131785 (= e!76090 (subseq!49 (t!22772 (t!22772 lt!39753)) (t!22772 (t!22772 lt!39756))))))

(declare-fun b!131783 () Bool)

(declare-fun e!76092 () Bool)

(assert (=> b!131783 (= e!76091 e!76092)))

(declare-fun res!61234 () Bool)

(assert (=> b!131783 (=> (not res!61234) (not e!76092))))

(assert (=> b!131783 (= res!61234 ((_ is Cons!2180) (t!22772 lt!39756)))))

(declare-fun b!131784 () Bool)

(declare-fun e!76089 () Bool)

(assert (=> b!131784 (= e!76092 e!76089)))

(declare-fun res!61233 () Bool)

(assert (=> b!131784 (=> res!61233 e!76089)))

(assert (=> b!131784 (= res!61233 e!76090)))

(declare-fun res!61232 () Bool)

(assert (=> b!131784 (=> (not res!61232) (not e!76090))))

(assert (=> b!131784 (= res!61232 (= (h!7577 (t!22772 lt!39753)) (h!7577 (t!22772 lt!39756))))))

(declare-fun b!131786 () Bool)

(assert (=> b!131786 (= e!76089 (subseq!49 (t!22772 lt!39753) (t!22772 (t!22772 lt!39756))))))

(assert (= (and d!31147 (not res!61231)) b!131783))

(assert (= (and b!131783 res!61234) b!131784))

(assert (= (and b!131784 res!61232) b!131785))

(assert (= (and b!131784 (not res!61233)) b!131786))

(declare-fun m!116539 () Bool)

(assert (=> b!131785 m!116539))

(declare-fun m!116541 () Bool)

(assert (=> b!131786 m!116541))

(assert (=> b!131546 d!31147))

(declare-fun d!31149 () Bool)

(declare-fun c!28401 () Bool)

(assert (=> d!31149 (= c!28401 ((_ is Nil!2180) (t!22772 lt!39756)))))

(declare-fun e!76093 () (InoxSet B!765))

(assert (=> d!31149 (= (content!293 (t!22772 lt!39756)) e!76093)))

(declare-fun b!131787 () Bool)

(assert (=> b!131787 (= e!76093 ((as const (Array B!765 Bool)) false))))

(declare-fun b!131788 () Bool)

(assert (=> b!131788 (= e!76093 ((_ map or) (store ((as const (Array B!765 Bool)) false) (h!7577 (t!22772 lt!39756)) true) (content!293 (t!22772 (t!22772 lt!39756)))))))

(assert (= (and d!31149 c!28401) b!131787))

(assert (= (and d!31149 (not c!28401)) b!131788))

(declare-fun m!116543 () Bool)

(assert (=> b!131788 m!116543))

(declare-fun m!116545 () Bool)

(assert (=> b!131788 m!116545))

(assert (=> b!131571 d!31149))

(declare-fun b!131790 () Bool)

(declare-fun res!61238 () Bool)

(declare-fun e!76096 () Bool)

(assert (=> b!131790 (=> (not res!61238) (not e!76096))))

(assert (=> b!131790 (= res!61238 (= (head!521 (tail!267 baseList!9)) (head!521 (tail!267 lt!39753))))))

(declare-fun b!131791 () Bool)

(assert (=> b!131791 (= e!76096 (isPrefix!175 (tail!267 (tail!267 baseList!9)) (tail!267 (tail!267 lt!39753))))))

(declare-fun d!31151 () Bool)

(declare-fun e!76095 () Bool)

(assert (=> d!31151 e!76095))

(declare-fun res!61236 () Bool)

(assert (=> d!31151 (=> res!61236 e!76095)))

(declare-fun lt!39818 () Bool)

(assert (=> d!31151 (= res!61236 (not lt!39818))))

(declare-fun e!76094 () Bool)

(assert (=> d!31151 (= lt!39818 e!76094)))

(declare-fun res!61235 () Bool)

(assert (=> d!31151 (=> res!61235 e!76094)))

(assert (=> d!31151 (= res!61235 ((_ is Nil!2180) (tail!267 baseList!9)))))

(assert (=> d!31151 (= (isPrefix!175 (tail!267 baseList!9) (tail!267 lt!39753)) lt!39818)))

(declare-fun b!131789 () Bool)

(assert (=> b!131789 (= e!76094 e!76096)))

(declare-fun res!61237 () Bool)

(assert (=> b!131789 (=> (not res!61237) (not e!76096))))

(assert (=> b!131789 (= res!61237 (not ((_ is Nil!2180) (tail!267 lt!39753))))))

(declare-fun b!131792 () Bool)

(assert (=> b!131792 (= e!76095 (>= (size!1982 (tail!267 lt!39753)) (size!1982 (tail!267 baseList!9))))))

(assert (= (and d!31151 (not res!61235)) b!131789))

(assert (= (and b!131789 res!61237) b!131790))

(assert (= (and b!131790 res!61238) b!131791))

(assert (= (and d!31151 (not res!61236)) b!131792))

(assert (=> b!131790 m!116211))

(declare-fun m!116547 () Bool)

(assert (=> b!131790 m!116547))

(assert (=> b!131790 m!116215))

(declare-fun m!116549 () Bool)

(assert (=> b!131790 m!116549))

(assert (=> b!131791 m!116211))

(declare-fun m!116551 () Bool)

(assert (=> b!131791 m!116551))

(assert (=> b!131791 m!116215))

(declare-fun m!116553 () Bool)

(assert (=> b!131791 m!116553))

(assert (=> b!131791 m!116551))

(assert (=> b!131791 m!116553))

(declare-fun m!116555 () Bool)

(assert (=> b!131791 m!116555))

(assert (=> b!131792 m!116215))

(declare-fun m!116557 () Bool)

(assert (=> b!131792 m!116557))

(assert (=> b!131792 m!116211))

(declare-fun m!116559 () Bool)

(assert (=> b!131792 m!116559))

(assert (=> b!131542 d!31151))

(declare-fun d!31153 () Bool)

(assert (=> d!31153 (= (tail!267 baseList!9) (t!22772 baseList!9))))

(assert (=> b!131542 d!31153))

(declare-fun d!31155 () Bool)

(assert (=> d!31155 (= (tail!267 lt!39753) (t!22772 lt!39753))))

(assert (=> b!131542 d!31155))

(declare-fun d!31157 () Bool)

(declare-fun c!28402 () Bool)

(assert (=> d!31157 (= c!28402 ((_ is Nil!2180) lt!39810))))

(declare-fun e!76097 () (InoxSet B!765))

(assert (=> d!31157 (= (content!293 lt!39810) e!76097)))

(declare-fun b!131793 () Bool)

(assert (=> b!131793 (= e!76097 ((as const (Array B!765 Bool)) false))))

(declare-fun b!131794 () Bool)

(assert (=> b!131794 (= e!76097 ((_ map or) (store ((as const (Array B!765 Bool)) false) (h!7577 lt!39810) true) (content!293 (t!22772 lt!39810))))))

(assert (= (and d!31157 c!28402) b!131793))

(assert (= (and d!31157 (not c!28402)) b!131794))

(declare-fun m!116561 () Bool)

(assert (=> b!131794 m!116561))

(declare-fun m!116563 () Bool)

(assert (=> b!131794 m!116563))

(assert (=> d!31109 d!31157))

(assert (=> d!31109 d!31145))

(declare-fun d!31159 () Bool)

(declare-fun c!28403 () Bool)

(assert (=> d!31159 (= c!28403 ((_ is Nil!2180) newList!20))))

(declare-fun e!76098 () (InoxSet B!765))

(assert (=> d!31159 (= (content!293 newList!20) e!76098)))

(declare-fun b!131795 () Bool)

(assert (=> b!131795 (= e!76098 ((as const (Array B!765 Bool)) false))))

(declare-fun b!131796 () Bool)

(assert (=> b!131796 (= e!76098 ((_ map or) (store ((as const (Array B!765 Bool)) false) (h!7577 newList!20) true) (content!293 (t!22772 newList!20))))))

(assert (= (and d!31159 c!28403) b!131795))

(assert (= (and d!31159 (not c!28403)) b!131796))

(declare-fun m!116565 () Bool)

(assert (=> b!131796 m!116565))

(assert (=> b!131796 m!116263))

(assert (=> d!31109 d!31159))

(declare-fun d!31161 () Bool)

(declare-fun c!28404 () Bool)

(assert (=> d!31161 (= c!28404 ((_ is Nil!2180) lt!39788))))

(declare-fun e!76099 () (InoxSet B!765))

(assert (=> d!31161 (= (content!293 lt!39788) e!76099)))

(declare-fun b!131797 () Bool)

(assert (=> b!131797 (= e!76099 ((as const (Array B!765 Bool)) false))))

(declare-fun b!131798 () Bool)

(assert (=> b!131798 (= e!76099 ((_ map or) (store ((as const (Array B!765 Bool)) false) (h!7577 lt!39788) true) (content!293 (t!22772 lt!39788))))))

(assert (= (and d!31161 c!28404) b!131797))

(assert (= (and d!31161 (not c!28404)) b!131798))

(declare-fun m!116567 () Bool)

(assert (=> b!131798 m!116567))

(declare-fun m!116569 () Bool)

(assert (=> b!131798 m!116569))

(assert (=> d!31071 d!31161))

(declare-fun d!31163 () Bool)

(declare-fun c!28405 () Bool)

(assert (=> d!31163 (= c!28405 ((_ is Nil!2180) lt!39754))))

(declare-fun e!76100 () (InoxSet B!765))

(assert (=> d!31163 (= (content!293 lt!39754) e!76100)))

(declare-fun b!131799 () Bool)

(assert (=> b!131799 (= e!76100 ((as const (Array B!765 Bool)) false))))

(declare-fun b!131800 () Bool)

(assert (=> b!131800 (= e!76100 ((_ map or) (store ((as const (Array B!765 Bool)) false) (h!7577 lt!39754) true) (content!293 (t!22772 lt!39754))))))

(assert (= (and d!31163 c!28405) b!131799))

(assert (= (and d!31163 (not c!28405)) b!131800))

(declare-fun m!116571 () Bool)

(assert (=> b!131800 m!116571))

(declare-fun m!116573 () Bool)

(assert (=> b!131800 m!116573))

(assert (=> d!31071 d!31163))

(assert (=> d!31071 d!31133))

(declare-fun d!31165 () Bool)

(declare-fun lt!39819 () Bool)

(assert (=> d!31165 (= lt!39819 (select (content!293 (t!22772 baseList!9)) (h!7577 baseList!9)))))

(declare-fun e!76101 () Bool)

(assert (=> d!31165 (= lt!39819 e!76101)))

(declare-fun res!61240 () Bool)

(assert (=> d!31165 (=> (not res!61240) (not e!76101))))

(assert (=> d!31165 (= res!61240 ((_ is Cons!2180) (t!22772 baseList!9)))))

(assert (=> d!31165 (= (contains!360 (t!22772 baseList!9) (h!7577 baseList!9)) lt!39819)))

(declare-fun b!131801 () Bool)

(declare-fun e!76102 () Bool)

(assert (=> b!131801 (= e!76101 e!76102)))

(declare-fun res!61239 () Bool)

(assert (=> b!131801 (=> res!61239 e!76102)))

(assert (=> b!131801 (= res!61239 (= (h!7577 (t!22772 baseList!9)) (h!7577 baseList!9)))))

(declare-fun b!131802 () Bool)

(assert (=> b!131802 (= e!76102 (contains!360 (t!22772 (t!22772 baseList!9)) (h!7577 baseList!9)))))

(assert (= (and d!31165 res!61240) b!131801))

(assert (= (and b!131801 (not res!61239)) b!131802))

(assert (=> d!31165 m!116537))

(declare-fun m!116575 () Bool)

(assert (=> d!31165 m!116575))

(declare-fun m!116577 () Bool)

(assert (=> b!131802 m!116577))

(assert (=> b!131614 d!31165))

(declare-fun b!131804 () Bool)

(declare-fun e!76103 () List!2186)

(assert (=> b!131804 (= e!76103 (Cons!2180 (h!7577 (t!22772 lt!39754)) (++!456 (t!22772 (t!22772 lt!39754)) (t!22772 newList!20))))))

(declare-fun b!131805 () Bool)

(declare-fun res!61242 () Bool)

(declare-fun e!76104 () Bool)

(assert (=> b!131805 (=> (not res!61242) (not e!76104))))

(declare-fun lt!39820 () List!2186)

(assert (=> b!131805 (= res!61242 (= (size!1982 lt!39820) (+ (size!1982 (t!22772 lt!39754)) (size!1982 (t!22772 newList!20)))))))

(declare-fun d!31167 () Bool)

(assert (=> d!31167 e!76104))

(declare-fun res!61241 () Bool)

(assert (=> d!31167 (=> (not res!61241) (not e!76104))))

(assert (=> d!31167 (= res!61241 (= (content!293 lt!39820) ((_ map or) (content!293 (t!22772 lt!39754)) (content!293 (t!22772 newList!20)))))))

(assert (=> d!31167 (= lt!39820 e!76103)))

(declare-fun c!28406 () Bool)

(assert (=> d!31167 (= c!28406 ((_ is Nil!2180) (t!22772 lt!39754)))))

(assert (=> d!31167 (= (++!456 (t!22772 lt!39754) (t!22772 newList!20)) lt!39820)))

(declare-fun b!131806 () Bool)

(assert (=> b!131806 (= e!76104 (or (not (= (t!22772 newList!20) Nil!2180)) (= lt!39820 (t!22772 lt!39754))))))

(declare-fun b!131803 () Bool)

(assert (=> b!131803 (= e!76103 (t!22772 newList!20))))

(assert (= (and d!31167 c!28406) b!131803))

(assert (= (and d!31167 (not c!28406)) b!131804))

(assert (= (and d!31167 res!61241) b!131805))

(assert (= (and b!131805 res!61242) b!131806))

(declare-fun m!116579 () Bool)

(assert (=> b!131804 m!116579))

(declare-fun m!116581 () Bool)

(assert (=> b!131805 m!116581))

(assert (=> b!131805 m!116521))

(assert (=> b!131805 m!116259))

(declare-fun m!116583 () Bool)

(assert (=> d!31167 m!116583))

(assert (=> d!31167 m!116573))

(assert (=> d!31167 m!116263))

(assert (=> b!131653 d!31167))

(declare-fun d!31169 () Bool)

(declare-fun res!61243 () Bool)

(declare-fun e!76107 () Bool)

(assert (=> d!31169 (=> res!61243 e!76107)))

(assert (=> d!31169 (= res!61243 ((_ is Nil!2180) (t!22772 lt!39753)))))

(assert (=> d!31169 (= (subseq!49 (t!22772 lt!39753) (t!22772 lt!39747)) e!76107)))

(declare-fun b!131809 () Bool)

(declare-fun e!76106 () Bool)

(assert (=> b!131809 (= e!76106 (subseq!49 (t!22772 (t!22772 lt!39753)) (t!22772 (t!22772 lt!39747))))))

(declare-fun b!131807 () Bool)

(declare-fun e!76108 () Bool)

(assert (=> b!131807 (= e!76107 e!76108)))

(declare-fun res!61246 () Bool)

(assert (=> b!131807 (=> (not res!61246) (not e!76108))))

(assert (=> b!131807 (= res!61246 ((_ is Cons!2180) (t!22772 lt!39747)))))

(declare-fun b!131808 () Bool)

(declare-fun e!76105 () Bool)

(assert (=> b!131808 (= e!76108 e!76105)))

(declare-fun res!61245 () Bool)

(assert (=> b!131808 (=> res!61245 e!76105)))

(assert (=> b!131808 (= res!61245 e!76106)))

(declare-fun res!61244 () Bool)

(assert (=> b!131808 (=> (not res!61244) (not e!76106))))

(assert (=> b!131808 (= res!61244 (= (h!7577 (t!22772 lt!39753)) (h!7577 (t!22772 lt!39747))))))

(declare-fun b!131810 () Bool)

(assert (=> b!131810 (= e!76105 (subseq!49 (t!22772 lt!39753) (t!22772 (t!22772 lt!39747))))))

(assert (= (and d!31169 (not res!61243)) b!131807))

(assert (= (and b!131807 res!61246) b!131808))

(assert (= (and b!131808 res!61244) b!131809))

(assert (= (and b!131808 (not res!61245)) b!131810))

(declare-fun m!116585 () Bool)

(assert (=> b!131809 m!116585))

(declare-fun m!116587 () Bool)

(assert (=> b!131810 m!116587))

(assert (=> b!131666 d!31169))

(declare-fun d!31171 () Bool)

(declare-fun res!61247 () Bool)

(declare-fun e!76111 () Bool)

(assert (=> d!31171 (=> res!61247 e!76111)))

(assert (=> d!31171 (= res!61247 ((_ is Nil!2180) (t!22772 lt!39753)))))

(assert (=> d!31171 (= (subseq!49 (t!22772 lt!39753) (t!22772 lt!39750)) e!76111)))

(declare-fun b!131813 () Bool)

(declare-fun e!76110 () Bool)

(assert (=> b!131813 (= e!76110 (subseq!49 (t!22772 (t!22772 lt!39753)) (t!22772 (t!22772 lt!39750))))))

(declare-fun b!131811 () Bool)

(declare-fun e!76112 () Bool)

(assert (=> b!131811 (= e!76111 e!76112)))

(declare-fun res!61250 () Bool)

(assert (=> b!131811 (=> (not res!61250) (not e!76112))))

(assert (=> b!131811 (= res!61250 ((_ is Cons!2180) (t!22772 lt!39750)))))

(declare-fun b!131812 () Bool)

(declare-fun e!76109 () Bool)

(assert (=> b!131812 (= e!76112 e!76109)))

(declare-fun res!61249 () Bool)

(assert (=> b!131812 (=> res!61249 e!76109)))

(assert (=> b!131812 (= res!61249 e!76110)))

(declare-fun res!61248 () Bool)

(assert (=> b!131812 (=> (not res!61248) (not e!76110))))

(assert (=> b!131812 (= res!61248 (= (h!7577 (t!22772 lt!39753)) (h!7577 (t!22772 lt!39750))))))

(declare-fun b!131814 () Bool)

(assert (=> b!131814 (= e!76109 (subseq!49 (t!22772 lt!39753) (t!22772 (t!22772 lt!39750))))))

(assert (= (and d!31171 (not res!61247)) b!131811))

(assert (= (and b!131811 res!61250) b!131812))

(assert (= (and b!131812 res!61248) b!131813))

(assert (= (and b!131812 (not res!61249)) b!131814))

(declare-fun m!116589 () Bool)

(assert (=> b!131813 m!116589))

(declare-fun m!116591 () Bool)

(assert (=> b!131814 m!116591))

(assert (=> b!131521 d!31171))

(declare-fun d!31173 () Bool)

(declare-fun lt!39821 () Int)

(assert (=> d!31173 (>= lt!39821 0)))

(declare-fun e!76113 () Int)

(assert (=> d!31173 (= lt!39821 e!76113)))

(declare-fun c!28407 () Bool)

(assert (=> d!31173 (= c!28407 ((_ is Nil!2180) lt!39778))))

(assert (=> d!31173 (= (size!1982 lt!39778) lt!39821)))

(declare-fun b!131815 () Bool)

(assert (=> b!131815 (= e!76113 0)))

(declare-fun b!131816 () Bool)

(assert (=> b!131816 (= e!76113 (+ 1 (size!1982 (t!22772 lt!39778))))))

(assert (= (and d!31173 c!28407) b!131815))

(assert (= (and d!31173 (not c!28407)) b!131816))

(declare-fun m!116593 () Bool)

(assert (=> b!131816 m!116593))

(assert (=> b!131630 d!31173))

(assert (=> b!131630 d!31137))

(declare-fun d!31175 () Bool)

(declare-fun lt!39822 () Int)

(assert (=> d!31175 (>= lt!39822 0)))

(declare-fun e!76114 () Int)

(assert (=> d!31175 (= lt!39822 e!76114)))

(declare-fun c!28408 () Bool)

(assert (=> d!31175 (= c!28408 ((_ is Nil!2180) (++!456 lt!39754 (t!22772 newList!20))))))

(assert (=> d!31175 (= (size!1982 (++!456 lt!39754 (t!22772 newList!20))) lt!39822)))

(declare-fun b!131817 () Bool)

(assert (=> b!131817 (= e!76114 0)))

(declare-fun b!131818 () Bool)

(assert (=> b!131818 (= e!76114 (+ 1 (size!1982 (t!22772 (++!456 lt!39754 (t!22772 newList!20))))))))

(assert (= (and d!31175 c!28408) b!131817))

(assert (= (and d!31175 (not c!28408)) b!131818))

(declare-fun m!116595 () Bool)

(assert (=> b!131818 m!116595))

(assert (=> b!131630 d!31175))

(assert (=> d!31079 d!31059))

(declare-fun d!31177 () Bool)

(assert (=> d!31177 (= (++!456 (++!456 baseList!9 lt!39754) (t!22772 newList!20)) (++!456 baseList!9 (++!456 lt!39754 (t!22772 newList!20))))))

(assert (=> d!31177 true))

(declare-fun _$52!549 () Unit!1740)

(assert (=> d!31177 (= (choose!1671 baseList!9 lt!39754 (t!22772 newList!20)) _$52!549)))

(declare-fun bs!12637 () Bool)

(assert (= bs!12637 d!31177))

(assert (=> bs!12637 m!116155))

(assert (=> bs!12637 m!116155))

(assert (=> bs!12637 m!116159))

(assert (=> bs!12637 m!116161))

(assert (=> bs!12637 m!116161))

(assert (=> bs!12637 m!116163))

(assert (=> d!31079 d!31177))

(assert (=> d!31079 d!31061))

(assert (=> d!31079 d!31063))

(assert (=> d!31079 d!31071))

(declare-fun b!131820 () Bool)

(declare-fun e!76115 () List!2186)

(assert (=> b!131820 (= e!76115 (Cons!2180 (h!7577 (t!22772 baseList!9)) (++!456 (t!22772 (t!22772 baseList!9)) newList!20)))))

(declare-fun b!131821 () Bool)

(declare-fun res!61252 () Bool)

(declare-fun e!76116 () Bool)

(assert (=> b!131821 (=> (not res!61252) (not e!76116))))

(declare-fun lt!39823 () List!2186)

(assert (=> b!131821 (= res!61252 (= (size!1982 lt!39823) (+ (size!1982 (t!22772 baseList!9)) (size!1982 newList!20))))))

(declare-fun d!31179 () Bool)

(assert (=> d!31179 e!76116))

(declare-fun res!61251 () Bool)

(assert (=> d!31179 (=> (not res!61251) (not e!76116))))

(assert (=> d!31179 (= res!61251 (= (content!293 lt!39823) ((_ map or) (content!293 (t!22772 baseList!9)) (content!293 newList!20))))))

(assert (=> d!31179 (= lt!39823 e!76115)))

(declare-fun c!28409 () Bool)

(assert (=> d!31179 (= c!28409 ((_ is Nil!2180) (t!22772 baseList!9)))))

(assert (=> d!31179 (= (++!456 (t!22772 baseList!9) newList!20) lt!39823)))

(declare-fun b!131822 () Bool)

(assert (=> b!131822 (= e!76116 (or (not (= newList!20 Nil!2180)) (= lt!39823 (t!22772 baseList!9))))))

(declare-fun b!131819 () Bool)

(assert (=> b!131819 (= e!76115 newList!20)))

(assert (= (and d!31179 c!28409) b!131819))

(assert (= (and d!31179 (not c!28409)) b!131820))

(assert (= (and d!31179 res!61251) b!131821))

(assert (= (and b!131821 res!61252) b!131822))

(declare-fun m!116597 () Bool)

(assert (=> b!131820 m!116597))

(declare-fun m!116599 () Bool)

(assert (=> b!131821 m!116599))

(assert (=> b!131821 m!116519))

(assert (=> b!131821 m!116467))

(declare-fun m!116601 () Bool)

(assert (=> d!31179 m!116601))

(assert (=> d!31179 m!116537))

(assert (=> d!31179 m!116471))

(assert (=> b!131722 d!31179))

(declare-fun d!31181 () Bool)

(declare-fun res!61253 () Bool)

(declare-fun e!76119 () Bool)

(assert (=> d!31181 (=> res!61253 e!76119)))

(assert (=> d!31181 (= res!61253 ((_ is Nil!2180) lt!39753))))

(assert (=> d!31181 (= (subseq!49 lt!39753 (t!22772 lt!39758)) e!76119)))

(declare-fun b!131825 () Bool)

(declare-fun e!76118 () Bool)

(assert (=> b!131825 (= e!76118 (subseq!49 (t!22772 lt!39753) (t!22772 (t!22772 lt!39758))))))

(declare-fun b!131823 () Bool)

(declare-fun e!76120 () Bool)

(assert (=> b!131823 (= e!76119 e!76120)))

(declare-fun res!61256 () Bool)

(assert (=> b!131823 (=> (not res!61256) (not e!76120))))

(assert (=> b!131823 (= res!61256 ((_ is Cons!2180) (t!22772 lt!39758)))))

(declare-fun b!131824 () Bool)

(declare-fun e!76117 () Bool)

(assert (=> b!131824 (= e!76120 e!76117)))

(declare-fun res!61255 () Bool)

(assert (=> b!131824 (=> res!61255 e!76117)))

(assert (=> b!131824 (= res!61255 e!76118)))

(declare-fun res!61254 () Bool)

(assert (=> b!131824 (=> (not res!61254) (not e!76118))))

(assert (=> b!131824 (= res!61254 (= (h!7577 lt!39753) (h!7577 (t!22772 lt!39758))))))

(declare-fun b!131826 () Bool)

(assert (=> b!131826 (= e!76117 (subseq!49 lt!39753 (t!22772 (t!22772 lt!39758))))))

(assert (= (and d!31181 (not res!61253)) b!131823))

(assert (= (and b!131823 res!61256) b!131824))

(assert (= (and b!131824 res!61254) b!131825))

(assert (= (and b!131824 (not res!61255)) b!131826))

(declare-fun m!116603 () Bool)

(assert (=> b!131825 m!116603))

(declare-fun m!116605 () Bool)

(assert (=> b!131826 m!116605))

(assert (=> b!131732 d!31181))

(declare-fun b!131828 () Bool)

(declare-fun e!76121 () List!2186)

(assert (=> b!131828 (= e!76121 (Cons!2180 (h!7577 (t!22772 baseList!9)) (++!456 (t!22772 (t!22772 baseList!9)) (t!22772 newList!20))))))

(declare-fun b!131829 () Bool)

(declare-fun res!61258 () Bool)

(declare-fun e!76122 () Bool)

(assert (=> b!131829 (=> (not res!61258) (not e!76122))))

(declare-fun lt!39824 () List!2186)

(assert (=> b!131829 (= res!61258 (= (size!1982 lt!39824) (+ (size!1982 (t!22772 baseList!9)) (size!1982 (t!22772 newList!20)))))))

(declare-fun d!31183 () Bool)

(assert (=> d!31183 e!76122))

(declare-fun res!61257 () Bool)

(assert (=> d!31183 (=> (not res!61257) (not e!76122))))

(assert (=> d!31183 (= res!61257 (= (content!293 lt!39824) ((_ map or) (content!293 (t!22772 baseList!9)) (content!293 (t!22772 newList!20)))))))

(assert (=> d!31183 (= lt!39824 e!76121)))

(declare-fun c!28410 () Bool)

(assert (=> d!31183 (= c!28410 ((_ is Nil!2180) (t!22772 baseList!9)))))

(assert (=> d!31183 (= (++!456 (t!22772 baseList!9) (t!22772 newList!20)) lt!39824)))

(declare-fun b!131830 () Bool)

(assert (=> b!131830 (= e!76122 (or (not (= (t!22772 newList!20) Nil!2180)) (= lt!39824 (t!22772 baseList!9))))))

(declare-fun b!131827 () Bool)

(assert (=> b!131827 (= e!76121 (t!22772 newList!20))))

(assert (= (and d!31183 c!28410) b!131827))

(assert (= (and d!31183 (not c!28410)) b!131828))

(assert (= (and d!31183 res!61257) b!131829))

(assert (= (and b!131829 res!61258) b!131830))

(declare-fun m!116607 () Bool)

(assert (=> b!131828 m!116607))

(declare-fun m!116609 () Bool)

(assert (=> b!131829 m!116609))

(assert (=> b!131829 m!116519))

(assert (=> b!131829 m!116259))

(declare-fun m!116611 () Bool)

(assert (=> d!31183 m!116611))

(assert (=> d!31183 m!116537))

(assert (=> d!31183 m!116263))

(assert (=> b!131595 d!31183))

(declare-fun d!31185 () Bool)

(declare-fun res!61259 () Bool)

(declare-fun e!76125 () Bool)

(assert (=> d!31185 (=> res!61259 e!76125)))

(assert (=> d!31185 (= res!61259 ((_ is Nil!2180) lt!39806))))

(assert (=> d!31185 (= (subseq!49 lt!39806 (++!456 baseList!9 (t!22772 newList!20))) e!76125)))

(declare-fun e!76124 () Bool)

(declare-fun b!131833 () Bool)

(assert (=> b!131833 (= e!76124 (subseq!49 (t!22772 lt!39806) (t!22772 (++!456 baseList!9 (t!22772 newList!20)))))))

(declare-fun b!131831 () Bool)

(declare-fun e!76126 () Bool)

(assert (=> b!131831 (= e!76125 e!76126)))

(declare-fun res!61262 () Bool)

(assert (=> b!131831 (=> (not res!61262) (not e!76126))))

(assert (=> b!131831 (= res!61262 ((_ is Cons!2180) (++!456 baseList!9 (t!22772 newList!20))))))

(declare-fun b!131832 () Bool)

(declare-fun e!76123 () Bool)

(assert (=> b!131832 (= e!76126 e!76123)))

(declare-fun res!61261 () Bool)

(assert (=> b!131832 (=> res!61261 e!76123)))

(assert (=> b!131832 (= res!61261 e!76124)))

(declare-fun res!61260 () Bool)

(assert (=> b!131832 (=> (not res!61260) (not e!76124))))

(assert (=> b!131832 (= res!61260 (= (h!7577 lt!39806) (h!7577 (++!456 baseList!9 (t!22772 newList!20)))))))

(declare-fun b!131834 () Bool)

(assert (=> b!131834 (= e!76123 (subseq!49 lt!39806 (t!22772 (++!456 baseList!9 (t!22772 newList!20)))))))

(assert (= (and d!31185 (not res!61259)) b!131831))

(assert (= (and b!131831 res!61262) b!131832))

(assert (= (and b!131832 res!61260) b!131833))

(assert (= (and b!131832 (not res!61261)) b!131834))

(declare-fun m!116613 () Bool)

(assert (=> b!131833 m!116613))

(declare-fun m!116615 () Bool)

(assert (=> b!131834 m!116615))

(assert (=> b!131713 d!31185))

(assert (=> b!131713 d!31041))

(declare-fun d!31187 () Bool)

(declare-fun c!28411 () Bool)

(assert (=> d!31187 (= c!28411 ((_ is Nil!2180) lt!39778))))

(declare-fun e!76127 () (InoxSet B!765))

(assert (=> d!31187 (= (content!293 lt!39778) e!76127)))

(declare-fun b!131835 () Bool)

(assert (=> b!131835 (= e!76127 ((as const (Array B!765 Bool)) false))))

(declare-fun b!131836 () Bool)

(assert (=> b!131836 (= e!76127 ((_ map or) (store ((as const (Array B!765 Bool)) false) (h!7577 lt!39778) true) (content!293 (t!22772 lt!39778))))))

(assert (= (and d!31187 c!28411) b!131835))

(assert (= (and d!31187 (not c!28411)) b!131836))

(declare-fun m!116617 () Bool)

(assert (=> b!131836 m!116617))

(declare-fun m!116619 () Bool)

(assert (=> b!131836 m!116619))

(assert (=> d!31061 d!31187))

(assert (=> d!31061 d!31145))

(declare-fun d!31189 () Bool)

(declare-fun c!28412 () Bool)

(assert (=> d!31189 (= c!28412 ((_ is Nil!2180) (++!456 lt!39754 (t!22772 newList!20))))))

(declare-fun e!76128 () (InoxSet B!765))

(assert (=> d!31189 (= (content!293 (++!456 lt!39754 (t!22772 newList!20))) e!76128)))

(declare-fun b!131837 () Bool)

(assert (=> b!131837 (= e!76128 ((as const (Array B!765 Bool)) false))))

(declare-fun b!131838 () Bool)

(assert (=> b!131838 (= e!76128 ((_ map or) (store ((as const (Array B!765 Bool)) false) (h!7577 (++!456 lt!39754 (t!22772 newList!20))) true) (content!293 (t!22772 (++!456 lt!39754 (t!22772 newList!20))))))))

(assert (= (and d!31189 c!28412) b!131837))

(assert (= (and d!31189 (not c!28412)) b!131838))

(declare-fun m!116621 () Bool)

(assert (=> b!131838 m!116621))

(declare-fun m!116623 () Bool)

(assert (=> b!131838 m!116623))

(assert (=> d!31061 d!31189))

(declare-fun d!31191 () Bool)

(assert (=> d!31191 (= (head!521 baseList!9) (h!7577 baseList!9))))

(assert (=> b!131541 d!31191))

(declare-fun d!31193 () Bool)

(assert (=> d!31193 (= (head!521 lt!39753) (h!7577 lt!39753))))

(assert (=> b!131541 d!31193))

(declare-fun d!31195 () Bool)

(declare-fun res!61263 () Bool)

(declare-fun e!76131 () Bool)

(assert (=> d!31195 (=> res!61263 e!76131)))

(assert (=> d!31195 (= res!61263 ((_ is Nil!2180) (t!22772 lt!39753)))))

(assert (=> d!31195 (= (subseq!49 (t!22772 lt!39753) (t!22772 lt!39752)) e!76131)))

(declare-fun b!131841 () Bool)

(declare-fun e!76130 () Bool)

(assert (=> b!131841 (= e!76130 (subseq!49 (t!22772 (t!22772 lt!39753)) (t!22772 (t!22772 lt!39752))))))

(declare-fun b!131839 () Bool)

(declare-fun e!76132 () Bool)

(assert (=> b!131839 (= e!76131 e!76132)))

(declare-fun res!61266 () Bool)

(assert (=> b!131839 (=> (not res!61266) (not e!76132))))

(assert (=> b!131839 (= res!61266 ((_ is Cons!2180) (t!22772 lt!39752)))))

(declare-fun b!131840 () Bool)

(declare-fun e!76129 () Bool)

(assert (=> b!131840 (= e!76132 e!76129)))

(declare-fun res!61265 () Bool)

(assert (=> b!131840 (=> res!61265 e!76129)))

(assert (=> b!131840 (= res!61265 e!76130)))

(declare-fun res!61264 () Bool)

(assert (=> b!131840 (=> (not res!61264) (not e!76130))))

(assert (=> b!131840 (= res!61264 (= (h!7577 (t!22772 lt!39753)) (h!7577 (t!22772 lt!39752))))))

(declare-fun b!131842 () Bool)

(assert (=> b!131842 (= e!76129 (subseq!49 (t!22772 lt!39753) (t!22772 (t!22772 lt!39752))))))

(assert (= (and d!31195 (not res!61263)) b!131839))

(assert (= (and b!131839 res!61266) b!131840))

(assert (= (and b!131840 res!61264) b!131841))

(assert (= (and b!131840 (not res!61265)) b!131842))

(declare-fun m!116625 () Bool)

(assert (=> b!131841 m!116625))

(assert (=> b!131842 m!116485))

(assert (=> b!131727 d!31195))

(declare-fun d!31197 () Bool)

(declare-fun c!28413 () Bool)

(assert (=> d!31197 (= c!28413 ((_ is Nil!2180) lt!39781))))

(declare-fun e!76133 () (InoxSet B!765))

(assert (=> d!31197 (= (content!293 lt!39781) e!76133)))

(declare-fun b!131843 () Bool)

(assert (=> b!131843 (= e!76133 ((as const (Array B!765 Bool)) false))))

(declare-fun b!131844 () Bool)

(assert (=> b!131844 (= e!76133 ((_ map or) (store ((as const (Array B!765 Bool)) false) (h!7577 lt!39781) true) (content!293 (t!22772 lt!39781))))))

(assert (= (and d!31197 c!28413) b!131843))

(assert (= (and d!31197 (not c!28413)) b!131844))

(declare-fun m!116627 () Bool)

(assert (=> b!131844 m!116627))

(declare-fun m!116629 () Bool)

(assert (=> b!131844 m!116629))

(assert (=> d!31063 d!31197))

(assert (=> d!31063 d!31145))

(assert (=> d!31063 d!31163))

(declare-fun d!31199 () Bool)

(declare-fun lt!39825 () Bool)

(assert (=> d!31199 (= lt!39825 (select (content!293 (t!22772 baseList!9)) (h!7577 newList!20)))))

(declare-fun e!76134 () Bool)

(assert (=> d!31199 (= lt!39825 e!76134)))

(declare-fun res!61268 () Bool)

(assert (=> d!31199 (=> (not res!61268) (not e!76134))))

(assert (=> d!31199 (= res!61268 ((_ is Cons!2180) (t!22772 baseList!9)))))

(assert (=> d!31199 (= (contains!360 (t!22772 baseList!9) (h!7577 newList!20)) lt!39825)))

(declare-fun b!131845 () Bool)

(declare-fun e!76135 () Bool)

(assert (=> b!131845 (= e!76134 e!76135)))

(declare-fun res!61267 () Bool)

(assert (=> b!131845 (=> res!61267 e!76135)))

(assert (=> b!131845 (= res!61267 (= (h!7577 (t!22772 baseList!9)) (h!7577 newList!20)))))

(declare-fun b!131846 () Bool)

(assert (=> b!131846 (= e!76135 (contains!360 (t!22772 (t!22772 baseList!9)) (h!7577 newList!20)))))

(assert (= (and d!31199 res!61268) b!131845))

(assert (= (and b!131845 (not res!61267)) b!131846))

(assert (=> d!31199 m!116537))

(declare-fun m!116631 () Bool)

(assert (=> d!31199 m!116631))

(declare-fun m!116633 () Bool)

(assert (=> b!131846 m!116633))

(assert (=> b!131561 d!31199))

(declare-fun d!31201 () Bool)

(declare-fun res!61269 () Bool)

(declare-fun e!76138 () Bool)

(assert (=> d!31201 (=> res!61269 e!76138)))

(assert (=> d!31201 (= res!61269 ((_ is Nil!2180) baseList!9))))

(assert (=> d!31201 (= (subseq!49 baseList!9 (t!22772 baseList!9)) e!76138)))

(declare-fun b!131849 () Bool)

(declare-fun e!76137 () Bool)

(assert (=> b!131849 (= e!76137 (subseq!49 (t!22772 baseList!9) (t!22772 (t!22772 baseList!9))))))

(declare-fun b!131847 () Bool)

(declare-fun e!76139 () Bool)

(assert (=> b!131847 (= e!76138 e!76139)))

(declare-fun res!61272 () Bool)

(assert (=> b!131847 (=> (not res!61272) (not e!76139))))

(assert (=> b!131847 (= res!61272 ((_ is Cons!2180) (t!22772 baseList!9)))))

(declare-fun b!131848 () Bool)

(declare-fun e!76136 () Bool)

(assert (=> b!131848 (= e!76139 e!76136)))

(declare-fun res!61271 () Bool)

(assert (=> b!131848 (=> res!61271 e!76136)))

(assert (=> b!131848 (= res!61271 e!76137)))

(declare-fun res!61270 () Bool)

(assert (=> b!131848 (=> (not res!61270) (not e!76137))))

(assert (=> b!131848 (= res!61270 (= (h!7577 baseList!9) (h!7577 (t!22772 baseList!9))))))

(declare-fun b!131850 () Bool)

(assert (=> b!131850 (= e!76136 (subseq!49 baseList!9 (t!22772 (t!22772 baseList!9))))))

(assert (= (and d!31201 (not res!61269)) b!131847))

(assert (= (and b!131847 res!61272) b!131848))

(assert (= (and b!131848 res!61270) b!131849))

(assert (= (and b!131848 (not res!61271)) b!131850))

(assert (=> b!131849 m!116483))

(declare-fun m!116635 () Bool)

(assert (=> b!131850 m!116635))

(assert (=> b!131718 d!31201))

(declare-fun b!131852 () Bool)

(declare-fun e!76140 () List!2186)

(assert (=> b!131852 (= e!76140 (Cons!2180 (h!7577 (t!22772 baseList!9)) (++!456 (t!22772 (t!22772 baseList!9)) lt!39754)))))

(declare-fun b!131853 () Bool)

(declare-fun res!61274 () Bool)

(declare-fun e!76141 () Bool)

(assert (=> b!131853 (=> (not res!61274) (not e!76141))))

(declare-fun lt!39826 () List!2186)

(assert (=> b!131853 (= res!61274 (= (size!1982 lt!39826) (+ (size!1982 (t!22772 baseList!9)) (size!1982 lt!39754))))))

(declare-fun d!31203 () Bool)

(assert (=> d!31203 e!76141))

(declare-fun res!61273 () Bool)

(assert (=> d!31203 (=> (not res!61273) (not e!76141))))

(assert (=> d!31203 (= res!61273 (= (content!293 lt!39826) ((_ map or) (content!293 (t!22772 baseList!9)) (content!293 lt!39754))))))

(assert (=> d!31203 (= lt!39826 e!76140)))

(declare-fun c!28414 () Bool)

(assert (=> d!31203 (= c!28414 ((_ is Nil!2180) (t!22772 baseList!9)))))

(assert (=> d!31203 (= (++!456 (t!22772 baseList!9) lt!39754) lt!39826)))

(declare-fun b!131854 () Bool)

(assert (=> b!131854 (= e!76141 (or (not (= lt!39754 Nil!2180)) (= lt!39826 (t!22772 baseList!9))))))

(declare-fun b!131851 () Bool)

(assert (=> b!131851 (= e!76140 lt!39754)))

(assert (= (and d!31203 c!28414) b!131851))

(assert (= (and d!31203 (not c!28414)) b!131852))

(assert (= (and d!31203 res!61273) b!131853))

(assert (= (and b!131853 res!61274) b!131854))

(declare-fun m!116637 () Bool)

(assert (=> b!131852 m!116637))

(declare-fun m!116639 () Bool)

(assert (=> b!131853 m!116639))

(assert (=> b!131853 m!116519))

(assert (=> b!131853 m!116323))

(declare-fun m!116641 () Bool)

(assert (=> d!31203 m!116641))

(assert (=> d!31203 m!116537))

(assert (=> d!31203 m!116327))

(assert (=> b!131637 d!31203))

(declare-fun d!31205 () Bool)

(declare-fun res!61275 () Bool)

(declare-fun e!76142 () Bool)

(assert (=> d!31205 (=> res!61275 e!76142)))

(assert (=> d!31205 (= res!61275 ((_ is Nil!2180) (t!22772 lt!39753)))))

(assert (=> d!31205 (= (noDuplicate!76 (t!22772 lt!39753)) e!76142)))

(declare-fun b!131855 () Bool)

(declare-fun e!76143 () Bool)

(assert (=> b!131855 (= e!76142 e!76143)))

(declare-fun res!61276 () Bool)

(assert (=> b!131855 (=> (not res!61276) (not e!76143))))

(assert (=> b!131855 (= res!61276 (not (contains!360 (t!22772 (t!22772 lt!39753)) (h!7577 (t!22772 lt!39753)))))))

(declare-fun b!131856 () Bool)

(assert (=> b!131856 (= e!76143 (noDuplicate!76 (t!22772 (t!22772 lt!39753))))))

(assert (= (and d!31205 (not res!61275)) b!131855))

(assert (= (and b!131855 res!61276) b!131856))

(declare-fun m!116643 () Bool)

(assert (=> b!131855 m!116643))

(declare-fun m!116645 () Bool)

(assert (=> b!131856 m!116645))

(assert (=> b!131681 d!31205))

(declare-fun d!31207 () Bool)

(declare-fun res!61277 () Bool)

(declare-fun e!76146 () Bool)

(assert (=> d!31207 (=> res!61277 e!76146)))

(assert (=> d!31207 (= res!61277 ((_ is Nil!2180) lt!39753))))

(assert (=> d!31207 (= (subseq!49 lt!39753 (t!22772 lt!39756)) e!76146)))

(declare-fun b!131859 () Bool)

(declare-fun e!76145 () Bool)

(assert (=> b!131859 (= e!76145 (subseq!49 (t!22772 lt!39753) (t!22772 (t!22772 lt!39756))))))

(declare-fun b!131857 () Bool)

(declare-fun e!76147 () Bool)

(assert (=> b!131857 (= e!76146 e!76147)))

(declare-fun res!61280 () Bool)

(assert (=> b!131857 (=> (not res!61280) (not e!76147))))

(assert (=> b!131857 (= res!61280 ((_ is Cons!2180) (t!22772 lt!39756)))))

(declare-fun b!131858 () Bool)

(declare-fun e!76144 () Bool)

(assert (=> b!131858 (= e!76147 e!76144)))

(declare-fun res!61279 () Bool)

(assert (=> b!131858 (=> res!61279 e!76144)))

(assert (=> b!131858 (= res!61279 e!76145)))

(declare-fun res!61278 () Bool)

(assert (=> b!131858 (=> (not res!61278) (not e!76145))))

(assert (=> b!131858 (= res!61278 (= (h!7577 lt!39753) (h!7577 (t!22772 lt!39756))))))

(declare-fun b!131860 () Bool)

(assert (=> b!131860 (= e!76144 (subseq!49 lt!39753 (t!22772 (t!22772 lt!39756))))))

(assert (= (and d!31207 (not res!61277)) b!131857))

(assert (= (and b!131857 res!61280) b!131858))

(assert (= (and b!131858 res!61278) b!131859))

(assert (= (and b!131858 (not res!61279)) b!131860))

(assert (=> b!131859 m!116541))

(declare-fun m!116647 () Bool)

(assert (=> b!131860 m!116647))

(assert (=> b!131547 d!31207))

(assert (=> d!31105 d!31103))

(declare-fun d!31209 () Bool)

(assert (=> d!31209 (subseq!49 baseList!9 baseList!9)))

(assert (=> d!31209 true))

(declare-fun _$75!231 () Unit!1740)

(assert (=> d!31209 (= (choose!1673 baseList!9) _$75!231)))

(declare-fun bs!12638 () Bool)

(assert (= bs!12638 d!31209))

(assert (=> bs!12638 m!116179))

(assert (=> d!31105 d!31209))

(declare-fun d!31211 () Bool)

(declare-fun lt!39827 () Int)

(assert (=> d!31211 (>= lt!39827 0)))

(declare-fun e!76148 () Int)

(assert (=> d!31211 (= lt!39827 e!76148)))

(declare-fun c!28415 () Bool)

(assert (=> d!31211 (= c!28415 ((_ is Nil!2180) lt!39753))))

(assert (=> d!31211 (= (size!1982 lt!39753) lt!39827)))

(declare-fun b!131861 () Bool)

(assert (=> b!131861 (= e!76148 0)))

(declare-fun b!131862 () Bool)

(assert (=> b!131862 (= e!76148 (+ 1 (size!1982 (t!22772 lt!39753))))))

(assert (= (and d!31211 c!28415) b!131861))

(assert (= (and d!31211 (not c!28415)) b!131862))

(declare-fun m!116649 () Bool)

(assert (=> b!131862 m!116649))

(assert (=> b!131543 d!31211))

(assert (=> b!131543 d!31137))

(declare-fun d!31213 () Bool)

(declare-fun res!61281 () Bool)

(declare-fun e!76151 () Bool)

(assert (=> d!31213 (=> res!61281 e!76151)))

(assert (=> d!31213 (= res!61281 ((_ is Nil!2180) lt!39753))))

(assert (=> d!31213 (= (subseq!49 lt!39753 (t!22772 lt!39747)) e!76151)))

(declare-fun b!131865 () Bool)

(declare-fun e!76150 () Bool)

(assert (=> b!131865 (= e!76150 (subseq!49 (t!22772 lt!39753) (t!22772 (t!22772 lt!39747))))))

(declare-fun b!131863 () Bool)

(declare-fun e!76152 () Bool)

(assert (=> b!131863 (= e!76151 e!76152)))

(declare-fun res!61284 () Bool)

(assert (=> b!131863 (=> (not res!61284) (not e!76152))))

(assert (=> b!131863 (= res!61284 ((_ is Cons!2180) (t!22772 lt!39747)))))

(declare-fun b!131864 () Bool)

(declare-fun e!76149 () Bool)

(assert (=> b!131864 (= e!76152 e!76149)))

(declare-fun res!61283 () Bool)

(assert (=> b!131864 (=> res!61283 e!76149)))

(assert (=> b!131864 (= res!61283 e!76150)))

(declare-fun res!61282 () Bool)

(assert (=> b!131864 (=> (not res!61282) (not e!76150))))

(assert (=> b!131864 (= res!61282 (= (h!7577 lt!39753) (h!7577 (t!22772 lt!39747))))))

(declare-fun b!131866 () Bool)

(assert (=> b!131866 (= e!76149 (subseq!49 lt!39753 (t!22772 (t!22772 lt!39747))))))

(assert (= (and d!31213 (not res!61281)) b!131863))

(assert (= (and b!131863 res!61284) b!131864))

(assert (= (and b!131864 res!61282) b!131865))

(assert (= (and b!131864 (not res!61283)) b!131866))

(assert (=> b!131865 m!116587))

(declare-fun m!116651 () Bool)

(assert (=> b!131866 m!116651))

(assert (=> b!131667 d!31213))

(declare-fun b!131868 () Bool)

(declare-fun e!76153 () List!2186)

(assert (=> b!131868 (= e!76153 (Cons!2180 (h!7577 (t!22772 baseList!9)) (++!456 (t!22772 (t!22772 baseList!9)) (++!456 lt!39754 (t!22772 newList!20)))))))

(declare-fun b!131869 () Bool)

(declare-fun res!61286 () Bool)

(declare-fun e!76154 () Bool)

(assert (=> b!131869 (=> (not res!61286) (not e!76154))))

(declare-fun lt!39828 () List!2186)

(assert (=> b!131869 (= res!61286 (= (size!1982 lt!39828) (+ (size!1982 (t!22772 baseList!9)) (size!1982 (++!456 lt!39754 (t!22772 newList!20))))))))

(declare-fun d!31215 () Bool)

(assert (=> d!31215 e!76154))

(declare-fun res!61285 () Bool)

(assert (=> d!31215 (=> (not res!61285) (not e!76154))))

(assert (=> d!31215 (= res!61285 (= (content!293 lt!39828) ((_ map or) (content!293 (t!22772 baseList!9)) (content!293 (++!456 lt!39754 (t!22772 newList!20))))))))

(assert (=> d!31215 (= lt!39828 e!76153)))

(declare-fun c!28416 () Bool)

(assert (=> d!31215 (= c!28416 ((_ is Nil!2180) (t!22772 baseList!9)))))

(assert (=> d!31215 (= (++!456 (t!22772 baseList!9) (++!456 lt!39754 (t!22772 newList!20))) lt!39828)))

(declare-fun b!131870 () Bool)

(assert (=> b!131870 (= e!76154 (or (not (= (++!456 lt!39754 (t!22772 newList!20)) Nil!2180)) (= lt!39828 (t!22772 baseList!9))))))

(declare-fun b!131867 () Bool)

(assert (=> b!131867 (= e!76153 (++!456 lt!39754 (t!22772 newList!20)))))

(assert (= (and d!31215 c!28416) b!131867))

(assert (= (and d!31215 (not c!28416)) b!131868))

(assert (= (and d!31215 res!61285) b!131869))

(assert (= (and b!131869 res!61286) b!131870))

(assert (=> b!131868 m!116161))

(declare-fun m!116653 () Bool)

(assert (=> b!131868 m!116653))

(declare-fun m!116655 () Bool)

(assert (=> b!131869 m!116655))

(assert (=> b!131869 m!116519))

(assert (=> b!131869 m!116161))

(assert (=> b!131869 m!116313))

(declare-fun m!116657 () Bool)

(assert (=> d!31215 m!116657))

(assert (=> d!31215 m!116537))

(assert (=> d!31215 m!116161))

(assert (=> d!31215 m!116317))

(assert (=> b!131629 d!31215))

(declare-fun d!31217 () Bool)

(declare-fun lt!39829 () Int)

(assert (=> d!31217 (>= lt!39829 0)))

(declare-fun e!76155 () Int)

(assert (=> d!31217 (= lt!39829 e!76155)))

(declare-fun c!28417 () Bool)

(assert (=> d!31217 (= c!28417 ((_ is Nil!2180) lt!39777))))

(assert (=> d!31217 (= (size!1982 lt!39777) lt!39829)))

(declare-fun b!131871 () Bool)

(assert (=> b!131871 (= e!76155 0)))

(declare-fun b!131872 () Bool)

(assert (=> b!131872 (= e!76155 (+ 1 (size!1982 (t!22772 lt!39777))))))

(assert (= (and d!31217 c!28417) b!131871))

(assert (= (and d!31217 (not c!28417)) b!131872))

(declare-fun m!116659 () Bool)

(assert (=> b!131872 m!116659))

(assert (=> b!131626 d!31217))

(declare-fun d!31219 () Bool)

(declare-fun lt!39830 () Int)

(assert (=> d!31219 (>= lt!39830 0)))

(declare-fun e!76156 () Int)

(assert (=> d!31219 (= lt!39830 e!76156)))

(declare-fun c!28418 () Bool)

(assert (=> d!31219 (= c!28418 ((_ is Nil!2180) (++!456 baseList!9 lt!39754)))))

(assert (=> d!31219 (= (size!1982 (++!456 baseList!9 lt!39754)) lt!39830)))

(declare-fun b!131873 () Bool)

(assert (=> b!131873 (= e!76156 0)))

(declare-fun b!131874 () Bool)

(assert (=> b!131874 (= e!76156 (+ 1 (size!1982 (t!22772 (++!456 baseList!9 lt!39754)))))))

(assert (= (and d!31219 c!28418) b!131873))

(assert (= (and d!31219 (not c!28418)) b!131874))

(assert (=> b!131874 m!116527))

(assert (=> b!131626 d!31219))

(declare-fun d!31221 () Bool)

(declare-fun lt!39831 () Int)

(assert (=> d!31221 (>= lt!39831 0)))

(declare-fun e!76157 () Int)

(assert (=> d!31221 (= lt!39831 e!76157)))

(declare-fun c!28419 () Bool)

(assert (=> d!31221 (= c!28419 ((_ is Nil!2180) (t!22772 newList!20)))))

(assert (=> d!31221 (= (size!1982 (t!22772 newList!20)) lt!39831)))

(declare-fun b!131875 () Bool)

(assert (=> b!131875 (= e!76157 0)))

(declare-fun b!131876 () Bool)

(assert (=> b!131876 (= e!76157 (+ 1 (size!1982 (t!22772 (t!22772 newList!20)))))))

(assert (= (and d!31221 c!28419) b!131875))

(assert (= (and d!31221 (not c!28419)) b!131876))

(declare-fun m!116661 () Bool)

(assert (=> b!131876 m!116661))

(assert (=> b!131626 d!31221))

(declare-fun d!31223 () Bool)

(declare-fun c!28420 () Bool)

(assert (=> d!31223 (= c!28420 ((_ is Nil!2180) (t!22772 lt!39752)))))

(declare-fun e!76158 () (InoxSet B!765))

(assert (=> d!31223 (= (content!293 (t!22772 lt!39752)) e!76158)))

(declare-fun b!131877 () Bool)

(assert (=> b!131877 (= e!76158 ((as const (Array B!765 Bool)) false))))

(declare-fun b!131878 () Bool)

(assert (=> b!131878 (= e!76158 ((_ map or) (store ((as const (Array B!765 Bool)) false) (h!7577 (t!22772 lt!39752)) true) (content!293 (t!22772 (t!22772 lt!39752)))))))

(assert (= (and d!31223 c!28420) b!131877))

(assert (= (and d!31223 (not c!28420)) b!131878))

(declare-fun m!116663 () Bool)

(assert (=> b!131878 m!116663))

(declare-fun m!116665 () Bool)

(assert (=> b!131878 m!116665))

(assert (=> b!131623 d!31223))

(assert (=> d!31031 d!31145))

(declare-fun d!31225 () Bool)

(declare-fun res!61287 () Bool)

(declare-fun e!76161 () Bool)

(assert (=> d!31225 (=> res!61287 e!76161)))

(assert (=> d!31225 (= res!61287 ((_ is Nil!2180) lt!39753))))

(assert (=> d!31225 (= (subseq!49 lt!39753 (t!22772 lt!39750)) e!76161)))

(declare-fun b!131881 () Bool)

(declare-fun e!76160 () Bool)

(assert (=> b!131881 (= e!76160 (subseq!49 (t!22772 lt!39753) (t!22772 (t!22772 lt!39750))))))

(declare-fun b!131879 () Bool)

(declare-fun e!76162 () Bool)

(assert (=> b!131879 (= e!76161 e!76162)))

(declare-fun res!61290 () Bool)

(assert (=> b!131879 (=> (not res!61290) (not e!76162))))

(assert (=> b!131879 (= res!61290 ((_ is Cons!2180) (t!22772 lt!39750)))))

(declare-fun b!131880 () Bool)

(declare-fun e!76159 () Bool)

(assert (=> b!131880 (= e!76162 e!76159)))

(declare-fun res!61289 () Bool)

(assert (=> b!131880 (=> res!61289 e!76159)))

(assert (=> b!131880 (= res!61289 e!76160)))

(declare-fun res!61288 () Bool)

(assert (=> b!131880 (=> (not res!61288) (not e!76160))))

(assert (=> b!131880 (= res!61288 (= (h!7577 lt!39753) (h!7577 (t!22772 lt!39750))))))

(declare-fun b!131882 () Bool)

(assert (=> b!131882 (= e!76159 (subseq!49 lt!39753 (t!22772 (t!22772 lt!39750))))))

(assert (= (and d!31225 (not res!61287)) b!131879))

(assert (= (and b!131879 res!61290) b!131880))

(assert (= (and b!131880 res!61288) b!131881))

(assert (= (and b!131880 (not res!61289)) b!131882))

(assert (=> b!131881 m!116591))

(declare-fun m!116667 () Bool)

(assert (=> b!131882 m!116667))

(assert (=> b!131522 d!31225))

(declare-fun d!31227 () Bool)

(declare-fun res!61291 () Bool)

(declare-fun e!76165 () Bool)

(assert (=> d!31227 (=> res!61291 e!76165)))

(assert (=> d!31227 (= res!61291 ((_ is Nil!2180) (t!22772 lt!39753)))))

(assert (=> d!31227 (= (subseq!49 (t!22772 lt!39753) (t!22772 lt!39758)) e!76165)))

(declare-fun b!131885 () Bool)

(declare-fun e!76164 () Bool)

(assert (=> b!131885 (= e!76164 (subseq!49 (t!22772 (t!22772 lt!39753)) (t!22772 (t!22772 lt!39758))))))

(declare-fun b!131883 () Bool)

(declare-fun e!76166 () Bool)

(assert (=> b!131883 (= e!76165 e!76166)))

(declare-fun res!61294 () Bool)

(assert (=> b!131883 (=> (not res!61294) (not e!76166))))

(assert (=> b!131883 (= res!61294 ((_ is Cons!2180) (t!22772 lt!39758)))))

(declare-fun b!131884 () Bool)

(declare-fun e!76163 () Bool)

(assert (=> b!131884 (= e!76166 e!76163)))

(declare-fun res!61293 () Bool)

(assert (=> b!131884 (=> res!61293 e!76163)))

(assert (=> b!131884 (= res!61293 e!76164)))

(declare-fun res!61292 () Bool)

(assert (=> b!131884 (=> (not res!61292) (not e!76164))))

(assert (=> b!131884 (= res!61292 (= (h!7577 (t!22772 lt!39753)) (h!7577 (t!22772 lt!39758))))))

(declare-fun b!131886 () Bool)

(assert (=> b!131886 (= e!76163 (subseq!49 (t!22772 lt!39753) (t!22772 (t!22772 lt!39758))))))

(assert (= (and d!31227 (not res!61291)) b!131883))

(assert (= (and b!131883 res!61294) b!131884))

(assert (= (and b!131884 res!61292) b!131885))

(assert (= (and b!131884 (not res!61293)) b!131886))

(declare-fun m!116669 () Bool)

(assert (=> b!131885 m!116669))

(assert (=> b!131886 m!116603))

(assert (=> b!131731 d!31227))

(declare-fun d!31229 () Bool)

(declare-fun lt!39832 () Int)

(assert (=> d!31229 (>= lt!39832 0)))

(declare-fun e!76167 () Int)

(assert (=> d!31229 (= lt!39832 e!76167)))

(declare-fun c!28421 () Bool)

(assert (=> d!31229 (= c!28421 ((_ is Nil!2180) lt!39775))))

(assert (=> d!31229 (= (size!1982 lt!39775) lt!39832)))

(declare-fun b!131887 () Bool)

(assert (=> b!131887 (= e!76167 0)))

(declare-fun b!131888 () Bool)

(assert (=> b!131888 (= e!76167 (+ 1 (size!1982 (t!22772 lt!39775))))))

(assert (= (and d!31229 c!28421) b!131887))

(assert (= (and d!31229 (not c!28421)) b!131888))

(declare-fun m!116671 () Bool)

(assert (=> b!131888 m!116671))

(assert (=> b!131596 d!31229))

(assert (=> b!131596 d!31137))

(assert (=> b!131596 d!31221))

(declare-fun d!31231 () Bool)

(declare-fun c!28422 () Bool)

(assert (=> d!31231 (= c!28422 ((_ is Nil!2180) (++!456 baseList!9 (t!22772 newList!20))))))

(declare-fun e!76168 () (InoxSet B!765))

(assert (=> d!31231 (= (content!293 (++!456 baseList!9 (t!22772 newList!20))) e!76168)))

(declare-fun b!131889 () Bool)

(assert (=> b!131889 (= e!76168 ((as const (Array B!765 Bool)) false))))

(declare-fun b!131890 () Bool)

(assert (=> b!131890 (= e!76168 ((_ map or) (store ((as const (Array B!765 Bool)) false) (h!7577 (++!456 baseList!9 (t!22772 newList!20))) true) (content!293 (t!22772 (++!456 baseList!9 (t!22772 newList!20))))))))

(assert (= (and d!31231 c!28422) b!131889))

(assert (= (and d!31231 (not c!28422)) b!131890))

(declare-fun m!116673 () Bool)

(assert (=> b!131890 m!116673))

(declare-fun m!116675 () Bool)

(assert (=> b!131890 m!116675))

(assert (=> b!131712 d!31231))

(assert (=> b!131712 d!31041))

(declare-fun d!31233 () Bool)

(declare-fun c!28423 () Bool)

(assert (=> d!31233 (= c!28423 ((_ is Nil!2180) lt!39806))))

(declare-fun e!76169 () (InoxSet B!765))

(assert (=> d!31233 (= (content!293 lt!39806) e!76169)))

(declare-fun b!131891 () Bool)

(assert (=> b!131891 (= e!76169 ((as const (Array B!765 Bool)) false))))

(declare-fun b!131892 () Bool)

(assert (=> b!131892 (= e!76169 ((_ map or) (store ((as const (Array B!765 Bool)) false) (h!7577 lt!39806) true) (content!293 (t!22772 lt!39806))))))

(assert (= (and d!31233 c!28423) b!131891))

(assert (= (and d!31233 (not c!28423)) b!131892))

(declare-fun m!116677 () Bool)

(assert (=> b!131892 m!116677))

(declare-fun m!116679 () Bool)

(assert (=> b!131892 m!116679))

(assert (=> b!131712 d!31233))

(declare-fun d!31235 () Bool)

(declare-fun c!28424 () Bool)

(assert (=> d!31235 (= c!28424 ((_ is Nil!2180) (t!22772 lt!39753)))))

(declare-fun e!76170 () (InoxSet B!765))

(assert (=> d!31235 (= (content!293 (t!22772 lt!39753)) e!76170)))

(declare-fun b!131893 () Bool)

(assert (=> b!131893 (= e!76170 ((as const (Array B!765 Bool)) false))))

(declare-fun b!131894 () Bool)

(assert (=> b!131894 (= e!76170 ((_ map or) (store ((as const (Array B!765 Bool)) false) (h!7577 (t!22772 lt!39753)) true) (content!293 (t!22772 (t!22772 lt!39753)))))))

(assert (= (and d!31235 c!28424) b!131893))

(assert (= (and d!31235 (not c!28424)) b!131894))

(declare-fun m!116681 () Bool)

(assert (=> b!131894 m!116681))

(declare-fun m!116683 () Bool)

(assert (=> b!131894 m!116683))

(assert (=> b!131573 d!31235))

(declare-fun d!31237 () Bool)

(declare-fun res!61295 () Bool)

(declare-fun e!76171 () Bool)

(assert (=> d!31237 (=> res!61295 e!76171)))

(assert (=> d!31237 (= res!61295 ((_ is Nil!2180) lt!39806))))

(assert (=> d!31237 (= (noDuplicate!76 lt!39806) e!76171)))

(declare-fun b!131895 () Bool)

(declare-fun e!76172 () Bool)

(assert (=> b!131895 (= e!76171 e!76172)))

(declare-fun res!61296 () Bool)

(assert (=> b!131895 (=> (not res!61296) (not e!76172))))

(assert (=> b!131895 (= res!61296 (not (contains!360 (t!22772 lt!39806) (h!7577 lt!39806))))))

(declare-fun b!131896 () Bool)

(assert (=> b!131896 (= e!76172 (noDuplicate!76 (t!22772 lt!39806)))))

(assert (= (and d!31237 (not res!61295)) b!131895))

(assert (= (and b!131895 res!61296) b!131896))

(declare-fun m!116685 () Bool)

(assert (=> b!131895 m!116685))

(declare-fun m!116687 () Bool)

(assert (=> b!131896 m!116687))

(assert (=> d!31089 d!31237))

(declare-fun b!131907 () Bool)

(declare-fun res!61307 () Bool)

(declare-fun e!76178 () Bool)

(assert (=> b!131907 (=> (not res!61307) (not e!76178))))

(declare-fun res!61306 () List!2186)

(assert (=> b!131907 (= res!61307 (subseq!49 res!61306 (++!456 baseList!9 (t!22772 newList!20))))))

(declare-fun b!131906 () Bool)

(declare-fun res!61308 () Bool)

(assert (=> b!131906 (=> (not res!61308) (not e!76178))))

(assert (=> b!131906 (= res!61308 (= (content!293 (++!456 baseList!9 (t!22772 newList!20))) (content!293 res!61306)))))

(declare-fun b!131908 () Bool)

(assert (=> b!131908 (= e!76178 (isPrefix!175 baseList!9 res!61306))))

(declare-fun b!131905 () Bool)

(declare-fun e!76177 () Bool)

(declare-fun tp!70425 () Bool)

(assert (=> b!131905 (= e!76177 (and tp_is_empty!1409 tp!70425))))

(declare-fun d!31239 () Bool)

(assert (=> d!31239 e!76178))

(declare-fun res!61305 () Bool)

(assert (=> d!31239 (=> (not res!61305) (not e!76178))))

(assert (=> d!31239 (= res!61305 (noDuplicate!76 res!61306))))

(assert (=> d!31239 e!76177))

(assert (=> d!31239 (= (choose!1672 baseList!9 (t!22772 newList!20)) res!61306)))

(assert (= (and d!31239 ((_ is Cons!2180) res!61306)) b!131905))

(assert (= (and d!31239 res!61305) b!131906))

(assert (= (and b!131906 res!61308) b!131907))

(assert (= (and b!131907 res!61307) b!131908))

(assert (=> b!131907 m!116151))

(assert (=> b!131907 m!116151))

(declare-fun m!116689 () Bool)

(assert (=> b!131907 m!116689))

(assert (=> b!131906 m!116151))

(assert (=> b!131906 m!116151))

(assert (=> b!131906 m!116445))

(declare-fun m!116691 () Bool)

(assert (=> b!131906 m!116691))

(declare-fun m!116693 () Bool)

(assert (=> b!131908 m!116693))

(declare-fun m!116695 () Bool)

(assert (=> d!31239 m!116695))

(assert (=> d!31089 d!31239))

(assert (=> d!31089 d!31047))

(declare-fun d!31241 () Bool)

(declare-fun res!61309 () Bool)

(declare-fun e!76179 () Bool)

(assert (=> d!31241 (=> res!61309 e!76179)))

(assert (=> d!31241 (= res!61309 ((_ is Nil!2180) (t!22772 baseList!9)))))

(assert (=> d!31241 (= (noDuplicate!76 (t!22772 baseList!9)) e!76179)))

(declare-fun b!131909 () Bool)

(declare-fun e!76180 () Bool)

(assert (=> b!131909 (= e!76179 e!76180)))

(declare-fun res!61310 () Bool)

(assert (=> b!131909 (=> (not res!61310) (not e!76180))))

(assert (=> b!131909 (= res!61310 (not (contains!360 (t!22772 (t!22772 baseList!9)) (h!7577 (t!22772 baseList!9)))))))

(declare-fun b!131910 () Bool)

(assert (=> b!131910 (= e!76180 (noDuplicate!76 (t!22772 (t!22772 baseList!9))))))

(assert (= (and d!31241 (not res!61309)) b!131909))

(assert (= (and b!131909 res!61310) b!131910))

(declare-fun m!116697 () Bool)

(assert (=> b!131909 m!116697))

(declare-fun m!116699 () Bool)

(assert (=> b!131910 m!116699))

(assert (=> b!131615 d!31241))

(declare-fun d!31243 () Bool)

(declare-fun lt!39833 () Int)

(assert (=> d!31243 (>= lt!39833 0)))

(declare-fun e!76181 () Int)

(assert (=> d!31243 (= lt!39833 e!76181)))

(declare-fun c!28425 () Bool)

(assert (=> d!31243 (= c!28425 ((_ is Nil!2180) lt!39788))))

(assert (=> d!31243 (= (size!1982 lt!39788) lt!39833)))

(declare-fun b!131911 () Bool)

(assert (=> b!131911 (= e!76181 0)))

(declare-fun b!131912 () Bool)

(assert (=> b!131912 (= e!76181 (+ 1 (size!1982 (t!22772 lt!39788))))))

(assert (= (and d!31243 c!28425) b!131911))

(assert (= (and d!31243 (not c!28425)) b!131912))

(declare-fun m!116701 () Bool)

(assert (=> b!131912 m!116701))

(assert (=> b!131654 d!31243))

(assert (=> b!131654 d!31139))

(assert (=> b!131654 d!31221))

(declare-fun b!131914 () Bool)

(declare-fun res!61314 () Bool)

(declare-fun e!76184 () Bool)

(assert (=> b!131914 (=> (not res!61314) (not e!76184))))

(assert (=> b!131914 (= res!61314 (= (head!521 baseList!9) (head!521 lt!39806)))))

(declare-fun b!131915 () Bool)

(assert (=> b!131915 (= e!76184 (isPrefix!175 (tail!267 baseList!9) (tail!267 lt!39806)))))

(declare-fun d!31245 () Bool)

(declare-fun e!76183 () Bool)

(assert (=> d!31245 e!76183))

(declare-fun res!61312 () Bool)

(assert (=> d!31245 (=> res!61312 e!76183)))

(declare-fun lt!39834 () Bool)

(assert (=> d!31245 (= res!61312 (not lt!39834))))

(declare-fun e!76182 () Bool)

(assert (=> d!31245 (= lt!39834 e!76182)))

(declare-fun res!61311 () Bool)

(assert (=> d!31245 (=> res!61311 e!76182)))

(assert (=> d!31245 (= res!61311 ((_ is Nil!2180) baseList!9))))

(assert (=> d!31245 (= (isPrefix!175 baseList!9 lt!39806) lt!39834)))

(declare-fun b!131913 () Bool)

(assert (=> b!131913 (= e!76182 e!76184)))

(declare-fun res!61313 () Bool)

(assert (=> b!131913 (=> (not res!61313) (not e!76184))))

(assert (=> b!131913 (= res!61313 (not ((_ is Nil!2180) lt!39806)))))

(declare-fun b!131916 () Bool)

(assert (=> b!131916 (= e!76183 (>= (size!1982 lt!39806) (size!1982 baseList!9)))))

(assert (= (and d!31245 (not res!61311)) b!131913))

(assert (= (and b!131913 res!61313) b!131914))

(assert (= (and b!131914 res!61314) b!131915))

(assert (= (and d!31245 (not res!61312)) b!131916))

(assert (=> b!131914 m!116205))

(declare-fun m!116703 () Bool)

(assert (=> b!131914 m!116703))

(assert (=> b!131915 m!116211))

(declare-fun m!116705 () Bool)

(assert (=> b!131915 m!116705))

(assert (=> b!131915 m!116211))

(assert (=> b!131915 m!116705))

(declare-fun m!116707 () Bool)

(assert (=> b!131915 m!116707))

(declare-fun m!116709 () Bool)

(assert (=> b!131916 m!116709))

(assert (=> b!131916 m!116221))

(assert (=> b!131714 d!31245))

(declare-fun d!31247 () Bool)

(declare-fun lt!39835 () Int)

(assert (=> d!31247 (>= lt!39835 0)))

(declare-fun e!76185 () Int)

(assert (=> d!31247 (= lt!39835 e!76185)))

(declare-fun c!28426 () Bool)

(assert (=> d!31247 (= c!28426 ((_ is Nil!2180) lt!39810))))

(assert (=> d!31247 (= (size!1982 lt!39810) lt!39835)))

(declare-fun b!131917 () Bool)

(assert (=> b!131917 (= e!76185 0)))

(declare-fun b!131918 () Bool)

(assert (=> b!131918 (= e!76185 (+ 1 (size!1982 (t!22772 lt!39810))))))

(assert (= (and d!31247 c!28426) b!131917))

(assert (= (and d!31247 (not c!28426)) b!131918))

(declare-fun m!116711 () Bool)

(assert (=> b!131918 m!116711))

(assert (=> b!131723 d!31247))

(assert (=> b!131723 d!31137))

(declare-fun d!31249 () Bool)

(declare-fun lt!39836 () Int)

(assert (=> d!31249 (>= lt!39836 0)))

(declare-fun e!76186 () Int)

(assert (=> d!31249 (= lt!39836 e!76186)))

(declare-fun c!28427 () Bool)

(assert (=> d!31249 (= c!28427 ((_ is Nil!2180) newList!20))))

(assert (=> d!31249 (= (size!1982 newList!20) lt!39836)))

(declare-fun b!131919 () Bool)

(assert (=> b!131919 (= e!76186 0)))

(declare-fun b!131920 () Bool)

(assert (=> b!131920 (= e!76186 (+ 1 (size!1982 (t!22772 newList!20))))))

(assert (= (and d!31249 c!28427) b!131919))

(assert (= (and d!31249 (not c!28427)) b!131920))

(assert (=> b!131920 m!116259))

(assert (=> b!131723 d!31249))

(declare-fun b!131921 () Bool)

(declare-fun e!76187 () Bool)

(declare-fun tp!70426 () Bool)

(assert (=> b!131921 (= e!76187 (and tp_is_empty!1409 tp!70426))))

(assert (=> b!131737 (= tp!70421 e!76187)))

(assert (= (and b!131737 ((_ is Cons!2180) (t!22772 (t!22772 newList!20)))) b!131921))

(declare-fun b!131922 () Bool)

(declare-fun e!76188 () Bool)

(declare-fun tp!70427 () Bool)

(assert (=> b!131922 (= e!76188 (and tp_is_empty!1409 tp!70427))))

(assert (=> b!131738 (= tp!70422 e!76188)))

(assert (= (and b!131738 ((_ is Cons!2180) (t!22772 (t!22772 baseList!9)))) b!131922))

(check-sat (not b!131813) (not b!131814) (not b!131788) (not b!131872) (not b!131856) (not b!131746) (not b!131907) (not b!131853) (not b!131852) (not b!131908) (not b!131876) (not b!131905) (not b!131895) (not b!131774) (not d!31209) (not d!31199) (not b!131818) (not b!131881) (not b!131914) (not b!131785) (not b!131745) (not b!131828) (not b!131764) (not b!131869) (not b!131850) (not b!131844) (not b!131770) (not b!131866) (not b!131772) (not b!131885) (not b!131821) (not b!131820) (not b!131878) (not b!131760) (not d!31125) (not b!131855) (not b!131800) (not b!131916) (not b!131786) (not b!131741) (not b!131906) (not d!31167) (not b!131892) (not b!131809) (not b!131912) (not b!131829) (not d!31119) (not d!31239) (not d!31165) (not b!131862) (not d!31179) (not d!31215) (not b!131846) (not b!131782) (not b!131802) (not b!131780) (not b!131758) (not b!131833) (not b!131825) (not b!131777) (not b!131918) (not b!131762) (not b!131748) (not b!131791) (not b!131921) (not b!131920) (not b!131836) tp_is_empty!1409 (not b!131804) (not b!131752) (not b!131896) (not b!131922) (not b!131859) (not b!131776) (not d!31203) (not b!131790) (not b!131834) (not b!131868) (not b!131742) (not b!131874) (not b!131882) (not b!131849) (not b!131751) (not b!131794) (not b!131798) (not b!131841) (not b!131842) (not b!131915) (not d!31183) (not b!131810) (not b!131890) (not d!31141) (not b!131865) (not b!131755) (not b!131838) (not b!131816) (not d!31177) (not b!131888) (not b!131796) (not b!131756) (not b!131886) (not b!131792) (not b!131826) (not b!131894) (not b!131909) (not b!131805) (not b!131910) (not b!131860))
(check-sat)
