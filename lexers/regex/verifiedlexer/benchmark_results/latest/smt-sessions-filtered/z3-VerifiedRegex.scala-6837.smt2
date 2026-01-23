; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!359528 () Bool)

(assert start!359528)

(declare-fun b!3839841 () Bool)

(declare-fun b_free!102321 () Bool)

(declare-fun b_next!103025 () Bool)

(assert (=> b!3839841 (= b_free!102321 (not b_next!103025))))

(declare-fun tp!1162961 () Bool)

(declare-fun b_and!285919 () Bool)

(assert (=> b!3839841 (= tp!1162961 b_and!285919)))

(declare-fun b_free!102323 () Bool)

(declare-fun b_next!103027 () Bool)

(assert (=> b!3839841 (= b_free!102323 (not b_next!103027))))

(declare-fun tp!1162966 () Bool)

(declare-fun b_and!285921 () Bool)

(assert (=> b!3839841 (= tp!1162966 b_and!285921)))

(declare-fun b!3839840 () Bool)

(declare-fun b_free!102325 () Bool)

(declare-fun b_next!103029 () Bool)

(assert (=> b!3839840 (= b_free!102325 (not b_next!103029))))

(declare-fun tp!1162960 () Bool)

(declare-fun b_and!285923 () Bool)

(assert (=> b!3839840 (= tp!1162960 b_and!285923)))

(declare-fun b_free!102327 () Bool)

(declare-fun b_next!103031 () Bool)

(assert (=> b!3839840 (= b_free!102327 (not b_next!103031))))

(declare-fun tp!1162957 () Bool)

(declare-fun b_and!285925 () Bool)

(assert (=> b!3839840 (= tp!1162957 b_and!285925)))

(declare-fun b!3839846 () Bool)

(declare-fun b_free!102329 () Bool)

(declare-fun b_next!103033 () Bool)

(assert (=> b!3839846 (= b_free!102329 (not b_next!103033))))

(declare-fun tp!1162976 () Bool)

(declare-fun b_and!285927 () Bool)

(assert (=> b!3839846 (= tp!1162976 b_and!285927)))

(declare-fun b_free!102331 () Bool)

(declare-fun b_next!103035 () Bool)

(assert (=> b!3839846 (= b_free!102331 (not b_next!103035))))

(declare-fun tp!1162974 () Bool)

(declare-fun b_and!285929 () Bool)

(assert (=> b!3839846 (= tp!1162974 b_and!285929)))

(declare-fun b!3839860 () Bool)

(declare-fun b_free!102333 () Bool)

(declare-fun b_next!103037 () Bool)

(assert (=> b!3839860 (= b_free!102333 (not b_next!103037))))

(declare-fun tp!1162975 () Bool)

(declare-fun b_and!285931 () Bool)

(assert (=> b!3839860 (= tp!1162975 b_and!285931)))

(declare-fun b_free!102335 () Bool)

(declare-fun b_next!103039 () Bool)

(assert (=> b!3839860 (= b_free!102335 (not b_next!103039))))

(declare-fun tp!1162963 () Bool)

(declare-fun b_and!285933 () Bool)

(assert (=> b!3839860 (= tp!1162963 b_and!285933)))

(declare-fun b!3839832 () Bool)

(declare-fun e!2372026 () Bool)

(declare-fun e!2372021 () Bool)

(declare-fun tp!1162964 () Bool)

(assert (=> b!3839832 (= e!2372026 (and e!2372021 tp!1162964))))

(declare-fun res!1554110 () Bool)

(declare-fun e!2372019 () Bool)

(assert (=> start!359528 (=> (not res!1554110) (not e!2372019))))

(declare-datatypes ((LexerInterface!5851 0))(
  ( (LexerInterfaceExt!5848 (__x!25201 Int)) (Lexer!5849) )
))
(declare-fun thiss!20629 () LexerInterface!5851)

(get-info :version)

(assert (=> start!359528 (= res!1554110 ((_ is Lexer!5849) thiss!20629))))

(assert (=> start!359528 e!2372019))

(declare-fun e!2372011 () Bool)

(assert (=> start!359528 e!2372011))

(assert (=> start!359528 true))

(declare-fun e!2372015 () Bool)

(assert (=> start!359528 e!2372015))

(assert (=> start!359528 e!2372026))

(declare-fun e!2372023 () Bool)

(assert (=> start!359528 e!2372023))

(declare-fun e!2372008 () Bool)

(assert (=> start!359528 e!2372008))

(declare-fun e!2372009 () Bool)

(assert (=> start!359528 e!2372009))

(declare-fun e!2372022 () Bool)

(declare-datatypes ((List!40730 0))(
  ( (Nil!40606) (Cons!40606 (h!46026 (_ BitVec 16)) (t!310259 List!40730)) )
))
(declare-datatypes ((TokenValue!6492 0))(
  ( (FloatLiteralValue!12984 (text!45889 List!40730)) (TokenValueExt!6491 (__x!25202 Int)) (Broken!32460 (value!199075 List!40730)) (Object!6615) (End!6492) (Def!6492) (Underscore!6492) (Match!6492) (Else!6492) (Error!6492) (Case!6492) (If!6492) (Extends!6492) (Abstract!6492) (Class!6492) (Val!6492) (DelimiterValue!12984 (del!6552 List!40730)) (KeywordValue!6498 (value!199076 List!40730)) (CommentValue!12984 (value!199077 List!40730)) (WhitespaceValue!12984 (value!199078 List!40730)) (IndentationValue!6492 (value!199079 List!40730)) (String!46177) (Int32!6492) (Broken!32461 (value!199080 List!40730)) (Boolean!6493) (Unit!58319) (OperatorValue!6495 (op!6552 List!40730)) (IdentifierValue!12984 (value!199081 List!40730)) (IdentifierValue!12985 (value!199082 List!40730)) (WhitespaceValue!12985 (value!199083 List!40730)) (True!12984) (False!12984) (Broken!32462 (value!199084 List!40730)) (Broken!32463 (value!199085 List!40730)) (True!12985) (RightBrace!6492) (RightBracket!6492) (Colon!6492) (Null!6492) (Comma!6492) (LeftBracket!6492) (False!12985) (LeftBrace!6492) (ImaginaryLiteralValue!6492 (text!45890 List!40730)) (StringLiteralValue!19476 (value!199086 List!40730)) (EOFValue!6492 (value!199087 List!40730)) (IdentValue!6492 (value!199088 List!40730)) (DelimiterValue!12985 (value!199089 List!40730)) (DedentValue!6492 (value!199090 List!40730)) (NewLineValue!6492 (value!199091 List!40730)) (IntegerValue!19476 (value!199092 (_ BitVec 32)) (text!45891 List!40730)) (IntegerValue!19477 (value!199093 Int) (text!45892 List!40730)) (Times!6492) (Or!6492) (Equal!6492) (Minus!6492) (Broken!32464 (value!199094 List!40730)) (And!6492) (Div!6492) (LessEqual!6492) (Mod!6492) (Concat!17659) (Not!6492) (Plus!6492) (SpaceValue!6492 (value!199095 List!40730)) (IntegerValue!19478 (value!199096 Int) (text!45893 List!40730)) (StringLiteralValue!19477 (text!45894 List!40730)) (FloatLiteralValue!12985 (text!45895 List!40730)) (BytesLiteralValue!6492 (value!199097 List!40730)) (CommentValue!12985 (value!199098 List!40730)) (StringLiteralValue!19478 (value!199099 List!40730)) (ErrorTokenValue!6492 (msg!6553 List!40730)) )
))
(declare-datatypes ((C!22520 0))(
  ( (C!22521 (val!13354 Int)) )
))
(declare-datatypes ((Regex!11167 0))(
  ( (ElementMatch!11167 (c!669296 C!22520)) (Concat!17660 (regOne!22846 Regex!11167) (regTwo!22846 Regex!11167)) (EmptyExpr!11167) (Star!11167 (reg!11496 Regex!11167)) (EmptyLang!11167) (Union!11167 (regOne!22847 Regex!11167) (regTwo!22847 Regex!11167)) )
))
(declare-datatypes ((String!46178 0))(
  ( (String!46179 (value!199100 String)) )
))
(declare-datatypes ((List!40731 0))(
  ( (Nil!40607) (Cons!40607 (h!46027 C!22520) (t!310260 List!40731)) )
))
(declare-datatypes ((IArray!24951 0))(
  ( (IArray!24952 (innerList!12533 List!40731)) )
))
(declare-datatypes ((Conc!12473 0))(
  ( (Node!12473 (left!31374 Conc!12473) (right!31704 Conc!12473) (csize!25176 Int) (cheight!12684 Int)) (Leaf!19311 (xs!15779 IArray!24951) (csize!25177 Int)) (Empty!12473) )
))
(declare-datatypes ((BalanceConc!24540 0))(
  ( (BalanceConc!24541 (c!669297 Conc!12473)) )
))
(declare-datatypes ((TokenValueInjection!12412 0))(
  ( (TokenValueInjection!12413 (toValue!8678 Int) (toChars!8537 Int)) )
))
(declare-datatypes ((Rule!12324 0))(
  ( (Rule!12325 (regex!6262 Regex!11167) (tag!7122 String!46178) (isSeparator!6262 Bool) (transformation!6262 TokenValueInjection!12412)) )
))
(declare-datatypes ((Token!11662 0))(
  ( (Token!11663 (value!199101 TokenValue!6492) (rule!9098 Rule!12324) (size!30567 Int) (originalCharacters!6862 List!40731)) )
))
(declare-datatypes ((tuple2!39778 0))(
  ( (tuple2!39779 (_1!23023 Token!11662) (_2!23023 List!40731)) )
))
(declare-datatypes ((Option!8680 0))(
  ( (None!8679) (Some!8679 (v!38971 tuple2!39778)) )
))
(declare-fun err!4201 () Option!8680)

(declare-fun tp!1162962 () Bool)

(declare-fun b!3839833 () Bool)

(declare-fun e!2372005 () Bool)

(declare-fun inv!54753 (String!46178) Bool)

(declare-fun inv!54756 (TokenValueInjection!12412) Bool)

(assert (=> b!3839833 (= e!2372005 (and tp!1162962 (inv!54753 (tag!7122 (rule!9098 (_1!23023 (v!38971 err!4201))))) (inv!54756 (transformation!6262 (rule!9098 (_1!23023 (v!38971 err!4201))))) e!2372022))))

(declare-fun b!3839834 () Bool)

(declare-fun tp_is_empty!19305 () Bool)

(declare-fun tp!1162965 () Bool)

(assert (=> b!3839834 (= e!2372015 (and tp_is_empty!19305 tp!1162965))))

(declare-fun b!3839835 () Bool)

(declare-fun e!2372024 () Option!8680)

(declare-fun e!2372001 () Option!8680)

(assert (=> b!3839835 (= e!2372024 e!2372001)))

(declare-fun c!669295 () Bool)

(declare-datatypes ((List!40732 0))(
  ( (Nil!40608) (Cons!40608 (h!46028 Rule!12324) (t!310261 List!40732)) )
))
(declare-fun rules!2768 () List!40732)

(assert (=> b!3839835 (= c!669295 ((_ is Cons!40608) rules!2768))))

(declare-fun e!2371998 () Bool)

(declare-fun e!2372028 () Bool)

(declare-fun b!3839836 () Bool)

(declare-datatypes ((List!40733 0))(
  ( (Nil!40609) (Cons!40609 (h!46029 Token!11662) (t!310262 List!40733)) )
))
(declare-fun suffixTokens!72 () List!40733)

(declare-fun tp!1162972 () Bool)

(assert (=> b!3839836 (= e!2371998 (and tp!1162972 (inv!54753 (tag!7122 (rule!9098 (h!46029 suffixTokens!72)))) (inv!54756 (transformation!6262 (rule!9098 (h!46029 suffixTokens!72)))) e!2372028))))

(declare-fun b!3839837 () Bool)

(declare-fun res!1554111 () Bool)

(assert (=> b!3839837 (=> (not res!1554111) (not e!2372019))))

(declare-fun rulesInvariant!5194 (LexerInterface!5851 List!40732) Bool)

(assert (=> b!3839837 (= res!1554111 (rulesInvariant!5194 thiss!20629 rules!2768))))

(declare-fun b!3839838 () Bool)

(declare-fun res!1554106 () Bool)

(declare-fun e!2372027 () Bool)

(assert (=> b!3839838 (=> res!1554106 e!2372027)))

(declare-fun lt!1332620 () Option!8680)

(declare-fun suffix!1176 () List!40731)

(declare-datatypes ((tuple2!39780 0))(
  ( (tuple2!39781 (_1!23024 List!40733) (_2!23024 List!40731)) )
))
(declare-fun lt!1332621 () tuple2!39780)

(assert (=> b!3839838 (= res!1554106 (or (not (= lt!1332621 (tuple2!39781 (_1!23024 lt!1332621) (_2!23024 lt!1332621)))) (not (= (_2!23023 (v!38971 lt!1332620)) suffix!1176))))))

(declare-fun b!3839839 () Bool)

(assert (=> b!3839839 true))

(declare-fun e!2372000 () Bool)

(assert (=> b!3839839 e!2372000))

(assert (=> b!3839839 (= e!2372001 err!4201)))

(declare-fun e!2372006 () Bool)

(assert (=> b!3839840 (= e!2372006 (and tp!1162960 tp!1162957))))

(declare-fun e!2372029 () Bool)

(assert (=> b!3839841 (= e!2372029 (and tp!1162961 tp!1162966))))

(declare-fun e!2372010 () Bool)

(declare-fun prefixTokens!80 () List!40733)

(declare-fun tp!1162978 () Bool)

(declare-fun b!3839842 () Bool)

(declare-fun inv!54757 (Token!11662) Bool)

(assert (=> b!3839842 (= e!2372023 (and (inv!54757 (h!46029 prefixTokens!80)) e!2372010 tp!1162978))))

(declare-fun e!2372013 () Bool)

(declare-fun b!3839843 () Bool)

(declare-fun tp!1162959 () Bool)

(declare-fun inv!21 (TokenValue!6492) Bool)

(assert (=> b!3839843 (= e!2372013 (and (inv!21 (value!199101 (_1!23023 (v!38971 err!4201)))) e!2372005 tp!1162959))))

(declare-fun call!281928 () Option!8680)

(declare-fun bm!281923 () Bool)

(declare-fun lt!1332613 () List!40731)

(declare-fun maxPrefixOneRule!2239 (LexerInterface!5851 Rule!12324 List!40731) Option!8680)

(assert (=> bm!281923 (= call!281928 (maxPrefixOneRule!2239 thiss!20629 (h!46028 rules!2768) lt!1332613))))

(declare-fun tp!1162971 () Bool)

(declare-fun b!3839844 () Bool)

(assert (=> b!3839844 (= e!2372021 (and tp!1162971 (inv!54753 (tag!7122 (h!46028 rules!2768))) (inv!54756 (transformation!6262 (h!46028 rules!2768))) e!2372029))))

(declare-fun b!3839845 () Bool)

(declare-fun res!1554115 () Bool)

(assert (=> b!3839845 (=> (not res!1554115) (not e!2372019))))

(declare-fun isEmpty!23996 (List!40732) Bool)

(assert (=> b!3839845 (= res!1554115 (not (isEmpty!23996 rules!2768)))))

(assert (=> b!3839846 (= e!2372022 (and tp!1162976 tp!1162974))))

(declare-fun b!3839847 () Bool)

(declare-fun res!1554113 () Bool)

(declare-fun e!2372007 () Bool)

(assert (=> b!3839847 (=> (not res!1554113) (not e!2372007))))

(declare-fun suffixResult!91 () List!40731)

(declare-fun lexList!1619 (LexerInterface!5851 List!40732 List!40731) tuple2!39780)

(assert (=> b!3839847 (= res!1554113 (= (lexList!1619 thiss!20629 rules!2768 suffix!1176) (tuple2!39781 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3839848 () Bool)

(declare-fun res!1554107 () Bool)

(assert (=> b!3839848 (=> (not res!1554107) (not e!2372019))))

(declare-fun prefix!426 () List!40731)

(declare-fun isEmpty!23997 (List!40731) Bool)

(assert (=> b!3839848 (= res!1554107 (not (isEmpty!23997 prefix!426)))))

(declare-fun b!3839849 () Bool)

(assert (=> b!3839849 (= e!2372019 e!2372007)))

(declare-fun res!1554112 () Bool)

(assert (=> b!3839849 (=> (not res!1554112) (not e!2372007))))

(declare-fun lt!1332614 () List!40733)

(declare-fun lt!1332607 () tuple2!39780)

(assert (=> b!3839849 (= res!1554112 (= lt!1332607 (tuple2!39781 lt!1332614 suffixResult!91)))))

(assert (=> b!3839849 (= lt!1332607 (lexList!1619 thiss!20629 rules!2768 lt!1332613))))

(declare-fun ++!10281 (List!40733 List!40733) List!40733)

(assert (=> b!3839849 (= lt!1332614 (++!10281 prefixTokens!80 suffixTokens!72))))

(declare-fun ++!10282 (List!40731 List!40731) List!40731)

(assert (=> b!3839849 (= lt!1332613 (++!10282 prefix!426 suffix!1176))))

(declare-fun b!3839850 () Bool)

(declare-fun tp!1162968 () Bool)

(declare-fun e!2372016 () Bool)

(assert (=> b!3839850 (= e!2372016 (and tp!1162968 (inv!54753 (tag!7122 (rule!9098 (h!46029 prefixTokens!80)))) (inv!54756 (transformation!6262 (rule!9098 (h!46029 prefixTokens!80)))) e!2372006))))

(declare-fun b!3839851 () Bool)

(declare-fun tp!1162969 () Bool)

(assert (=> b!3839851 (= e!2372009 (and tp_is_empty!19305 tp!1162969))))

(declare-fun tp!1162970 () Bool)

(declare-fun b!3839852 () Bool)

(assert (=> b!3839852 (= e!2372010 (and (inv!21 (value!199101 (h!46029 prefixTokens!80))) e!2372016 tp!1162970))))

(declare-fun tp!1162973 () Bool)

(declare-fun b!3839853 () Bool)

(declare-fun e!2372020 () Bool)

(assert (=> b!3839853 (= e!2372020 (and (inv!21 (value!199101 (h!46029 suffixTokens!72))) e!2371998 tp!1162973))))

(declare-fun b!3839854 () Bool)

(declare-fun lt!1332608 () Option!8680)

(declare-fun maxPrefix!3155 (LexerInterface!5851 List!40732 List!40731) Option!8680)

(assert (=> b!3839854 (= lt!1332608 (maxPrefix!3155 thiss!20629 (t!310261 rules!2768) lt!1332613))))

(declare-fun lt!1332623 () Option!8680)

(assert (=> b!3839854 (= lt!1332623 call!281928)))

(assert (=> b!3839854 (= e!2372001 (ite (and ((_ is None!8679) lt!1332623) ((_ is None!8679) lt!1332608)) None!8679 (ite ((_ is None!8679) lt!1332608) lt!1332623 (ite ((_ is None!8679) lt!1332623) lt!1332608 (ite (>= (size!30567 (_1!23023 (v!38971 lt!1332623))) (size!30567 (_1!23023 (v!38971 lt!1332608)))) (Some!8679 (v!38971 lt!1332623)) lt!1332608)))))))

(declare-fun b!3839855 () Bool)

(declare-fun res!1554118 () Bool)

(assert (=> b!3839855 (=> res!1554118 e!2372027)))

(assert (=> b!3839855 (= res!1554118 (not (= lt!1332607 (tuple2!39781 (++!10281 (Cons!40609 (_1!23023 (v!38971 lt!1332620)) Nil!40609) (_1!23024 lt!1332621)) (_2!23024 lt!1332621)))))))

(declare-fun b!3839856 () Bool)

(declare-fun tp!1162958 () Bool)

(assert (=> b!3839856 (= e!2372008 (and (inv!54757 (h!46029 suffixTokens!72)) e!2372020 tp!1162958))))

(declare-fun b!3839857 () Bool)

(declare-fun e!2372004 () Bool)

(assert (=> b!3839857 (= e!2372004 (not e!2372027))))

(declare-fun res!1554109 () Bool)

(assert (=> b!3839857 (=> res!1554109 e!2372027)))

(declare-fun lt!1332616 () List!40731)

(assert (=> b!3839857 (= res!1554109 (not (= lt!1332616 lt!1332613)))))

(assert (=> b!3839857 (= lt!1332621 (lexList!1619 thiss!20629 rules!2768 (_2!23023 (v!38971 lt!1332620))))))

(declare-fun lt!1332622 () Int)

(declare-fun lt!1332618 () List!40731)

(declare-fun lt!1332609 () List!40731)

(declare-fun lt!1332619 () TokenValue!6492)

(assert (=> b!3839857 (and (= (size!30567 (_1!23023 (v!38971 lt!1332620))) lt!1332622) (= (originalCharacters!6862 (_1!23023 (v!38971 lt!1332620))) lt!1332609) (= (v!38971 lt!1332620) (tuple2!39779 (Token!11663 lt!1332619 (rule!9098 (_1!23023 (v!38971 lt!1332620))) lt!1332622 lt!1332609) lt!1332618)))))

(declare-fun size!30568 (List!40731) Int)

(assert (=> b!3839857 (= lt!1332622 (size!30568 lt!1332609))))

(declare-fun e!2372030 () Bool)

(assert (=> b!3839857 e!2372030))

(declare-fun res!1554114 () Bool)

(assert (=> b!3839857 (=> (not res!1554114) (not e!2372030))))

(assert (=> b!3839857 (= res!1554114 (= (value!199101 (_1!23023 (v!38971 lt!1332620))) lt!1332619))))

(declare-fun apply!9505 (TokenValueInjection!12412 BalanceConc!24540) TokenValue!6492)

(declare-fun seqFromList!4533 (List!40731) BalanceConc!24540)

(assert (=> b!3839857 (= lt!1332619 (apply!9505 (transformation!6262 (rule!9098 (_1!23023 (v!38971 lt!1332620)))) (seqFromList!4533 lt!1332609)))))

(assert (=> b!3839857 (= (_2!23023 (v!38971 lt!1332620)) lt!1332618)))

(declare-datatypes ((Unit!58320 0))(
  ( (Unit!58321) )
))
(declare-fun lt!1332610 () Unit!58320)

(declare-fun lemmaSamePrefixThenSameSuffix!1582 (List!40731 List!40731 List!40731 List!40731 List!40731) Unit!58320)

(assert (=> b!3839857 (= lt!1332610 (lemmaSamePrefixThenSameSuffix!1582 lt!1332609 (_2!23023 (v!38971 lt!1332620)) lt!1332609 lt!1332618 lt!1332613))))

(declare-fun getSuffix!1816 (List!40731 List!40731) List!40731)

(assert (=> b!3839857 (= lt!1332618 (getSuffix!1816 lt!1332613 lt!1332609))))

(declare-fun isPrefix!3361 (List!40731 List!40731) Bool)

(assert (=> b!3839857 (isPrefix!3361 lt!1332609 lt!1332616)))

(assert (=> b!3839857 (= lt!1332616 (++!10282 lt!1332609 (_2!23023 (v!38971 lt!1332620))))))

(declare-fun lt!1332615 () Unit!58320)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2224 (List!40731 List!40731) Unit!58320)

(assert (=> b!3839857 (= lt!1332615 (lemmaConcatTwoListThenFirstIsPrefix!2224 lt!1332609 (_2!23023 (v!38971 lt!1332620))))))

(declare-fun list!15124 (BalanceConc!24540) List!40731)

(declare-fun charsOf!4090 (Token!11662) BalanceConc!24540)

(assert (=> b!3839857 (= lt!1332609 (list!15124 (charsOf!4090 (_1!23023 (v!38971 lt!1332620)))))))

(declare-fun ruleValid!2214 (LexerInterface!5851 Rule!12324) Bool)

(assert (=> b!3839857 (ruleValid!2214 thiss!20629 (rule!9098 (_1!23023 (v!38971 lt!1332620))))))

(declare-fun lt!1332611 () Unit!58320)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1294 (LexerInterface!5851 Rule!12324 List!40732) Unit!58320)

(assert (=> b!3839857 (= lt!1332611 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1294 thiss!20629 (rule!9098 (_1!23023 (v!38971 lt!1332620))) rules!2768))))

(declare-fun lt!1332617 () Unit!58320)

(declare-fun lemmaCharactersSize!923 (Token!11662) Unit!58320)

(assert (=> b!3839857 (= lt!1332617 (lemmaCharactersSize!923 (_1!23023 (v!38971 lt!1332620))))))

(declare-fun tp!1162967 () Bool)

(declare-fun b!3839858 () Bool)

(assert (=> b!3839858 (= e!2372000 (and (inv!54757 (_1!23023 (v!38971 err!4201))) e!2372013 tp!1162967))))

(declare-fun b!3839859 () Bool)

(declare-fun rulesValidInductive!2212 (LexerInterface!5851 List!40732) Bool)

(assert (=> b!3839859 (= e!2372027 (rulesValidInductive!2212 thiss!20629 rules!2768))))

(declare-fun e!2372017 () Bool)

(assert (=> b!3839859 e!2372017))

(declare-fun res!1554116 () Bool)

(assert (=> b!3839859 (=> (not res!1554116) (not e!2372017))))

(assert (=> b!3839859 (= res!1554116 (isPrefix!3361 lt!1332613 lt!1332613))))

(declare-fun lt!1332612 () Unit!58320)

(declare-fun lemmaIsPrefixRefl!2134 (List!40731 List!40731) Unit!58320)

(assert (=> b!3839859 (= lt!1332612 (lemmaIsPrefixRefl!2134 lt!1332613 lt!1332613))))

(assert (=> b!3839859 (= lt!1332607 (tuple2!39781 (Cons!40609 (_1!23023 (v!38971 lt!1332620)) (_1!23024 lt!1332621)) (_2!23024 lt!1332621)))))

(assert (=> b!3839860 (= e!2372028 (and tp!1162975 tp!1162963))))

(declare-fun b!3839861 () Bool)

(declare-fun res!1554117 () Bool)

(assert (=> b!3839861 (=> (not res!1554117) (not e!2372019))))

(declare-fun isEmpty!23998 (List!40733) Bool)

(assert (=> b!3839861 (= res!1554117 (not (isEmpty!23998 prefixTokens!80)))))

(declare-fun b!3839862 () Bool)

(assert (=> b!3839862 (= e!2372024 call!281928)))

(declare-fun b!3839863 () Bool)

(declare-fun tp!1162977 () Bool)

(assert (=> b!3839863 (= e!2372011 (and tp_is_empty!19305 tp!1162977))))

(declare-fun b!3839864 () Bool)

(assert (=> b!3839864 (= e!2372007 e!2372004)))

(declare-fun res!1554108 () Bool)

(assert (=> b!3839864 (=> (not res!1554108) (not e!2372004))))

(assert (=> b!3839864 (= res!1554108 ((_ is Some!8679) lt!1332620))))

(assert (=> b!3839864 (= lt!1332620 (maxPrefix!3155 thiss!20629 rules!2768 lt!1332613))))

(declare-fun b!3839865 () Bool)

(assert (=> b!3839865 (= e!2372017 (= lt!1332620 e!2372024))))

(declare-fun c!669294 () Bool)

(assert (=> b!3839865 (= c!669294 (and ((_ is Cons!40608) rules!2768) ((_ is Nil!40608) (t!310261 rules!2768))))))

(declare-fun b!3839866 () Bool)

(assert (=> b!3839866 (= e!2372030 (= (size!30567 (_1!23023 (v!38971 lt!1332620))) (size!30568 (originalCharacters!6862 (_1!23023 (v!38971 lt!1332620))))))))

(assert (= (and start!359528 res!1554110) b!3839845))

(assert (= (and b!3839845 res!1554115) b!3839837))

(assert (= (and b!3839837 res!1554111) b!3839861))

(assert (= (and b!3839861 res!1554117) b!3839848))

(assert (= (and b!3839848 res!1554107) b!3839849))

(assert (= (and b!3839849 res!1554112) b!3839847))

(assert (= (and b!3839847 res!1554113) b!3839864))

(assert (= (and b!3839864 res!1554108) b!3839857))

(assert (= (and b!3839857 res!1554114) b!3839866))

(assert (= (and b!3839857 (not res!1554109)) b!3839855))

(assert (= (and b!3839855 (not res!1554118)) b!3839838))

(assert (= (and b!3839838 (not res!1554106)) b!3839859))

(assert (= (and b!3839859 res!1554116) b!3839865))

(assert (= (and b!3839865 c!669294) b!3839862))

(assert (= (and b!3839865 (not c!669294)) b!3839835))

(assert (= (and b!3839835 c!669295) b!3839854))

(assert (= (and b!3839835 (not c!669295)) b!3839839))

(assert (= b!3839833 b!3839846))

(assert (= b!3839843 b!3839833))

(assert (= b!3839858 b!3839843))

(assert (= (and b!3839839 ((_ is Some!8679) err!4201)) b!3839858))

(assert (= (or b!3839862 b!3839854) bm!281923))

(assert (= (and start!359528 ((_ is Cons!40607) suffixResult!91)) b!3839863))

(assert (= (and start!359528 ((_ is Cons!40607) suffix!1176)) b!3839834))

(assert (= b!3839844 b!3839841))

(assert (= b!3839832 b!3839844))

(assert (= (and start!359528 ((_ is Cons!40608) rules!2768)) b!3839832))

(assert (= b!3839850 b!3839840))

(assert (= b!3839852 b!3839850))

(assert (= b!3839842 b!3839852))

(assert (= (and start!359528 ((_ is Cons!40609) prefixTokens!80)) b!3839842))

(assert (= b!3839836 b!3839860))

(assert (= b!3839853 b!3839836))

(assert (= b!3839856 b!3839853))

(assert (= (and start!359528 ((_ is Cons!40609) suffixTokens!72)) b!3839856))

(assert (= (and start!359528 ((_ is Cons!40607) prefix!426)) b!3839851))

(declare-fun m!4394085 () Bool)

(assert (=> b!3839837 m!4394085))

(declare-fun m!4394087 () Bool)

(assert (=> b!3839856 m!4394087))

(declare-fun m!4394089 () Bool)

(assert (=> b!3839843 m!4394089))

(declare-fun m!4394091 () Bool)

(assert (=> b!3839859 m!4394091))

(declare-fun m!4394093 () Bool)

(assert (=> b!3839859 m!4394093))

(declare-fun m!4394095 () Bool)

(assert (=> b!3839859 m!4394095))

(declare-fun m!4394097 () Bool)

(assert (=> b!3839836 m!4394097))

(declare-fun m!4394099 () Bool)

(assert (=> b!3839836 m!4394099))

(declare-fun m!4394101 () Bool)

(assert (=> b!3839853 m!4394101))

(declare-fun m!4394103 () Bool)

(assert (=> b!3839842 m!4394103))

(declare-fun m!4394105 () Bool)

(assert (=> bm!281923 m!4394105))

(declare-fun m!4394107 () Bool)

(assert (=> b!3839833 m!4394107))

(declare-fun m!4394109 () Bool)

(assert (=> b!3839833 m!4394109))

(declare-fun m!4394111 () Bool)

(assert (=> b!3839866 m!4394111))

(declare-fun m!4394113 () Bool)

(assert (=> b!3839861 m!4394113))

(declare-fun m!4394115 () Bool)

(assert (=> b!3839845 m!4394115))

(declare-fun m!4394117 () Bool)

(assert (=> b!3839852 m!4394117))

(declare-fun m!4394119 () Bool)

(assert (=> b!3839844 m!4394119))

(declare-fun m!4394121 () Bool)

(assert (=> b!3839844 m!4394121))

(declare-fun m!4394123 () Bool)

(assert (=> b!3839850 m!4394123))

(declare-fun m!4394125 () Bool)

(assert (=> b!3839850 m!4394125))

(declare-fun m!4394127 () Bool)

(assert (=> b!3839849 m!4394127))

(declare-fun m!4394129 () Bool)

(assert (=> b!3839849 m!4394129))

(declare-fun m!4394131 () Bool)

(assert (=> b!3839849 m!4394131))

(declare-fun m!4394133 () Bool)

(assert (=> b!3839854 m!4394133))

(declare-fun m!4394135 () Bool)

(assert (=> b!3839858 m!4394135))

(declare-fun m!4394137 () Bool)

(assert (=> b!3839847 m!4394137))

(declare-fun m!4394139 () Bool)

(assert (=> b!3839855 m!4394139))

(declare-fun m!4394141 () Bool)

(assert (=> b!3839857 m!4394141))

(declare-fun m!4394143 () Bool)

(assert (=> b!3839857 m!4394143))

(declare-fun m!4394145 () Bool)

(assert (=> b!3839857 m!4394145))

(declare-fun m!4394147 () Bool)

(assert (=> b!3839857 m!4394147))

(declare-fun m!4394149 () Bool)

(assert (=> b!3839857 m!4394149))

(declare-fun m!4394151 () Bool)

(assert (=> b!3839857 m!4394151))

(declare-fun m!4394153 () Bool)

(assert (=> b!3839857 m!4394153))

(declare-fun m!4394155 () Bool)

(assert (=> b!3839857 m!4394155))

(declare-fun m!4394157 () Bool)

(assert (=> b!3839857 m!4394157))

(declare-fun m!4394159 () Bool)

(assert (=> b!3839857 m!4394159))

(declare-fun m!4394161 () Bool)

(assert (=> b!3839857 m!4394161))

(assert (=> b!3839857 m!4394149))

(declare-fun m!4394163 () Bool)

(assert (=> b!3839857 m!4394163))

(declare-fun m!4394165 () Bool)

(assert (=> b!3839857 m!4394165))

(assert (=> b!3839857 m!4394155))

(declare-fun m!4394167 () Bool)

(assert (=> b!3839857 m!4394167))

(declare-fun m!4394169 () Bool)

(assert (=> b!3839848 m!4394169))

(declare-fun m!4394171 () Bool)

(assert (=> b!3839864 m!4394171))

(check-sat b_and!285921 (not b!3839851) (not b_next!103039) (not b!3839848) (not b_next!103035) (not b!3839857) (not b_next!103029) (not b!3839856) (not b!3839845) (not b!3839836) b_and!285929 (not b_next!103033) b_and!285919 (not b_next!103031) (not b!3839858) (not b_next!103027) b_and!285923 (not b!3839864) (not b!3839844) (not b!3839853) (not b!3839861) (not b!3839866) b_and!285931 (not b!3839847) b_and!285933 (not b!3839863) b_and!285927 (not b!3839854) (not b!3839837) (not b!3839859) (not b!3839832) (not b!3839834) (not b_next!103025) tp_is_empty!19305 b_and!285925 (not b!3839850) (not b!3839833) (not b!3839842) (not b!3839843) (not b!3839855) (not bm!281923) (not b!3839852) (not b_next!103037) (not b!3839849))
(check-sat b_and!285921 (not b_next!103039) b_and!285931 b_and!285933 b_and!285927 (not b_next!103035) (not b_next!103025) b_and!285925 (not b_next!103029) (not b_next!103037) b_and!285929 (not b_next!103033) b_and!285919 (not b_next!103031) (not b_next!103027) b_and!285923)
(get-model)

(declare-fun b!3839898 () Bool)

(declare-fun e!2372049 () Bool)

(declare-fun e!2372050 () Bool)

(assert (=> b!3839898 (= e!2372049 e!2372050)))

(declare-fun c!669306 () Bool)

(assert (=> b!3839898 (= c!669306 ((_ is IntegerValue!19477) (value!199101 (h!46029 prefixTokens!80))))))

(declare-fun b!3839899 () Bool)

(declare-fun e!2372051 () Bool)

(declare-fun inv!15 (TokenValue!6492) Bool)

(assert (=> b!3839899 (= e!2372051 (inv!15 (value!199101 (h!46029 prefixTokens!80))))))

(declare-fun b!3839900 () Bool)

(declare-fun inv!17 (TokenValue!6492) Bool)

(assert (=> b!3839900 (= e!2372050 (inv!17 (value!199101 (h!46029 prefixTokens!80))))))

(declare-fun b!3839901 () Bool)

(declare-fun inv!16 (TokenValue!6492) Bool)

(assert (=> b!3839901 (= e!2372049 (inv!16 (value!199101 (h!46029 prefixTokens!80))))))

(declare-fun d!1139506 () Bool)

(declare-fun c!669307 () Bool)

(assert (=> d!1139506 (= c!669307 ((_ is IntegerValue!19476) (value!199101 (h!46029 prefixTokens!80))))))

(assert (=> d!1139506 (= (inv!21 (value!199101 (h!46029 prefixTokens!80))) e!2372049)))

(declare-fun b!3839902 () Bool)

(declare-fun res!1554137 () Bool)

(assert (=> b!3839902 (=> res!1554137 e!2372051)))

(assert (=> b!3839902 (= res!1554137 (not ((_ is IntegerValue!19478) (value!199101 (h!46029 prefixTokens!80)))))))

(assert (=> b!3839902 (= e!2372050 e!2372051)))

(assert (= (and d!1139506 c!669307) b!3839901))

(assert (= (and d!1139506 (not c!669307)) b!3839898))

(assert (= (and b!3839898 c!669306) b!3839900))

(assert (= (and b!3839898 (not c!669306)) b!3839902))

(assert (= (and b!3839902 (not res!1554137)) b!3839899))

(declare-fun m!4394185 () Bool)

(assert (=> b!3839899 m!4394185))

(declare-fun m!4394187 () Bool)

(assert (=> b!3839900 m!4394187))

(declare-fun m!4394189 () Bool)

(assert (=> b!3839901 m!4394189))

(assert (=> b!3839852 d!1139506))

(declare-fun d!1139508 () Bool)

(declare-fun res!1554149 () Bool)

(declare-fun e!2372063 () Bool)

(assert (=> d!1139508 (=> (not res!1554149) (not e!2372063))))

(assert (=> d!1139508 (= res!1554149 (not (isEmpty!23997 (originalCharacters!6862 (h!46029 prefixTokens!80)))))))

(assert (=> d!1139508 (= (inv!54757 (h!46029 prefixTokens!80)) e!2372063)))

(declare-fun b!3839924 () Bool)

(declare-fun res!1554150 () Bool)

(assert (=> b!3839924 (=> (not res!1554150) (not e!2372063))))

(declare-fun dynLambda!17569 (Int TokenValue!6492) BalanceConc!24540)

(assert (=> b!3839924 (= res!1554150 (= (originalCharacters!6862 (h!46029 prefixTokens!80)) (list!15124 (dynLambda!17569 (toChars!8537 (transformation!6262 (rule!9098 (h!46029 prefixTokens!80)))) (value!199101 (h!46029 prefixTokens!80))))))))

(declare-fun b!3839925 () Bool)

(assert (=> b!3839925 (= e!2372063 (= (size!30567 (h!46029 prefixTokens!80)) (size!30568 (originalCharacters!6862 (h!46029 prefixTokens!80)))))))

(assert (= (and d!1139508 res!1554149) b!3839924))

(assert (= (and b!3839924 res!1554150) b!3839925))

(declare-fun b_lambda!112261 () Bool)

(assert (=> (not b_lambda!112261) (not b!3839924)))

(declare-fun t!310272 () Bool)

(declare-fun tb!220845 () Bool)

(assert (=> (and b!3839841 (= (toChars!8537 (transformation!6262 (h!46028 rules!2768))) (toChars!8537 (transformation!6262 (rule!9098 (h!46029 prefixTokens!80))))) t!310272) tb!220845))

(declare-fun b!3839938 () Bool)

(declare-fun e!2372070 () Bool)

(declare-fun tp!1162984 () Bool)

(declare-fun inv!54760 (Conc!12473) Bool)

(assert (=> b!3839938 (= e!2372070 (and (inv!54760 (c!669297 (dynLambda!17569 (toChars!8537 (transformation!6262 (rule!9098 (h!46029 prefixTokens!80)))) (value!199101 (h!46029 prefixTokens!80))))) tp!1162984))))

(declare-fun result!269164 () Bool)

(declare-fun inv!54761 (BalanceConc!24540) Bool)

(assert (=> tb!220845 (= result!269164 (and (inv!54761 (dynLambda!17569 (toChars!8537 (transformation!6262 (rule!9098 (h!46029 prefixTokens!80)))) (value!199101 (h!46029 prefixTokens!80)))) e!2372070))))

(assert (= tb!220845 b!3839938))

(declare-fun m!4394215 () Bool)

(assert (=> b!3839938 m!4394215))

(declare-fun m!4394217 () Bool)

(assert (=> tb!220845 m!4394217))

(assert (=> b!3839924 t!310272))

(declare-fun b_and!285943 () Bool)

(assert (= b_and!285921 (and (=> t!310272 result!269164) b_and!285943)))

(declare-fun t!310274 () Bool)

(declare-fun tb!220847 () Bool)

(assert (=> (and b!3839840 (= (toChars!8537 (transformation!6262 (rule!9098 (h!46029 prefixTokens!80)))) (toChars!8537 (transformation!6262 (rule!9098 (h!46029 prefixTokens!80))))) t!310274) tb!220847))

(declare-fun result!269168 () Bool)

(assert (= result!269168 result!269164))

(assert (=> b!3839924 t!310274))

(declare-fun b_and!285945 () Bool)

(assert (= b_and!285925 (and (=> t!310274 result!269168) b_and!285945)))

(declare-fun t!310276 () Bool)

(declare-fun tb!220849 () Bool)

(assert (=> (and b!3839846 (= (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 err!4201))))) (toChars!8537 (transformation!6262 (rule!9098 (h!46029 prefixTokens!80))))) t!310276) tb!220849))

(declare-fun result!269170 () Bool)

(assert (= result!269170 result!269164))

(assert (=> b!3839924 t!310276))

(declare-fun b_and!285947 () Bool)

(assert (= b_and!285929 (and (=> t!310276 result!269170) b_and!285947)))

(declare-fun tb!220851 () Bool)

(declare-fun t!310278 () Bool)

(assert (=> (and b!3839860 (= (toChars!8537 (transformation!6262 (rule!9098 (h!46029 suffixTokens!72)))) (toChars!8537 (transformation!6262 (rule!9098 (h!46029 prefixTokens!80))))) t!310278) tb!220851))

(declare-fun result!269172 () Bool)

(assert (= result!269172 result!269164))

(assert (=> b!3839924 t!310278))

(declare-fun b_and!285949 () Bool)

(assert (= b_and!285933 (and (=> t!310278 result!269172) b_and!285949)))

(declare-fun m!4394219 () Bool)

(assert (=> d!1139508 m!4394219))

(declare-fun m!4394229 () Bool)

(assert (=> b!3839924 m!4394229))

(assert (=> b!3839924 m!4394229))

(declare-fun m!4394237 () Bool)

(assert (=> b!3839924 m!4394237))

(declare-fun m!4394239 () Bool)

(assert (=> b!3839925 m!4394239))

(assert (=> b!3839842 d!1139508))

(declare-fun d!1139516 () Bool)

(assert (=> d!1139516 (= (inv!54753 (tag!7122 (rule!9098 (h!46029 prefixTokens!80)))) (= (mod (str.len (value!199100 (tag!7122 (rule!9098 (h!46029 prefixTokens!80))))) 2) 0))))

(assert (=> b!3839850 d!1139516))

(declare-fun d!1139520 () Bool)

(declare-fun res!1554159 () Bool)

(declare-fun e!2372075 () Bool)

(assert (=> d!1139520 (=> (not res!1554159) (not e!2372075))))

(declare-fun semiInverseModEq!2685 (Int Int) Bool)

(assert (=> d!1139520 (= res!1554159 (semiInverseModEq!2685 (toChars!8537 (transformation!6262 (rule!9098 (h!46029 prefixTokens!80)))) (toValue!8678 (transformation!6262 (rule!9098 (h!46029 prefixTokens!80))))))))

(assert (=> d!1139520 (= (inv!54756 (transformation!6262 (rule!9098 (h!46029 prefixTokens!80)))) e!2372075)))

(declare-fun b!3839945 () Bool)

(declare-fun equivClasses!2584 (Int Int) Bool)

(assert (=> b!3839945 (= e!2372075 (equivClasses!2584 (toChars!8537 (transformation!6262 (rule!9098 (h!46029 prefixTokens!80)))) (toValue!8678 (transformation!6262 (rule!9098 (h!46029 prefixTokens!80))))))))

(assert (= (and d!1139520 res!1554159) b!3839945))

(declare-fun m!4394241 () Bool)

(assert (=> d!1139520 m!4394241))

(declare-fun m!4394243 () Bool)

(assert (=> b!3839945 m!4394243))

(assert (=> b!3839850 d!1139520))

(declare-fun d!1139522 () Bool)

(assert (=> d!1139522 (= (isEmpty!23998 prefixTokens!80) ((_ is Nil!40609) prefixTokens!80))))

(assert (=> b!3839861 d!1139522))

(declare-fun b!3840024 () Bool)

(declare-fun e!2372117 () Bool)

(declare-fun lt!1332683 () tuple2!39780)

(assert (=> b!3840024 (= e!2372117 (not (isEmpty!23998 (_1!23024 lt!1332683))))))

(declare-fun b!3840025 () Bool)

(declare-fun e!2372118 () tuple2!39780)

(declare-fun lt!1332682 () Option!8680)

(declare-fun lt!1332684 () tuple2!39780)

(assert (=> b!3840025 (= e!2372118 (tuple2!39781 (Cons!40609 (_1!23023 (v!38971 lt!1332682)) (_1!23024 lt!1332684)) (_2!23024 lt!1332684)))))

(assert (=> b!3840025 (= lt!1332684 (lexList!1619 thiss!20629 rules!2768 (_2!23023 (v!38971 lt!1332682))))))

(declare-fun b!3840026 () Bool)

(declare-fun e!2372119 () Bool)

(assert (=> b!3840026 (= e!2372119 e!2372117)))

(declare-fun res!1554204 () Bool)

(assert (=> b!3840026 (= res!1554204 (< (size!30568 (_2!23024 lt!1332683)) (size!30568 lt!1332613)))))

(assert (=> b!3840026 (=> (not res!1554204) (not e!2372117))))

(declare-fun b!3840027 () Bool)

(assert (=> b!3840027 (= e!2372118 (tuple2!39781 Nil!40609 lt!1332613))))

(declare-fun d!1139524 () Bool)

(assert (=> d!1139524 e!2372119))

(declare-fun c!669333 () Bool)

(declare-fun size!30570 (List!40733) Int)

(assert (=> d!1139524 (= c!669333 (> (size!30570 (_1!23024 lt!1332683)) 0))))

(assert (=> d!1139524 (= lt!1332683 e!2372118)))

(declare-fun c!669332 () Bool)

(assert (=> d!1139524 (= c!669332 ((_ is Some!8679) lt!1332682))))

(assert (=> d!1139524 (= lt!1332682 (maxPrefix!3155 thiss!20629 rules!2768 lt!1332613))))

(assert (=> d!1139524 (= (lexList!1619 thiss!20629 rules!2768 lt!1332613) lt!1332683)))

(declare-fun b!3840028 () Bool)

(assert (=> b!3840028 (= e!2372119 (= (_2!23024 lt!1332683) lt!1332613))))

(assert (= (and d!1139524 c!669332) b!3840025))

(assert (= (and d!1139524 (not c!669332)) b!3840027))

(assert (= (and d!1139524 c!669333) b!3840026))

(assert (= (and d!1139524 (not c!669333)) b!3840028))

(assert (= (and b!3840026 res!1554204) b!3840024))

(declare-fun m!4394339 () Bool)

(assert (=> b!3840024 m!4394339))

(declare-fun m!4394341 () Bool)

(assert (=> b!3840025 m!4394341))

(declare-fun m!4394343 () Bool)

(assert (=> b!3840026 m!4394343))

(declare-fun m!4394345 () Bool)

(assert (=> b!3840026 m!4394345))

(declare-fun m!4394347 () Bool)

(assert (=> d!1139524 m!4394347))

(assert (=> d!1139524 m!4394171))

(assert (=> b!3839849 d!1139524))

(declare-fun d!1139554 () Bool)

(declare-fun e!2372135 () Bool)

(assert (=> d!1139554 e!2372135))

(declare-fun res!1554221 () Bool)

(assert (=> d!1139554 (=> (not res!1554221) (not e!2372135))))

(declare-fun lt!1332698 () List!40733)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6035 (List!40733) (InoxSet Token!11662))

(assert (=> d!1139554 (= res!1554221 (= (content!6035 lt!1332698) ((_ map or) (content!6035 prefixTokens!80) (content!6035 suffixTokens!72))))))

(declare-fun e!2372136 () List!40733)

(assert (=> d!1139554 (= lt!1332698 e!2372136)))

(declare-fun c!669339 () Bool)

(assert (=> d!1139554 (= c!669339 ((_ is Nil!40609) prefixTokens!80))))

(assert (=> d!1139554 (= (++!10281 prefixTokens!80 suffixTokens!72) lt!1332698)))

(declare-fun b!3840058 () Bool)

(declare-fun res!1554222 () Bool)

(assert (=> b!3840058 (=> (not res!1554222) (not e!2372135))))

(assert (=> b!3840058 (= res!1554222 (= (size!30570 lt!1332698) (+ (size!30570 prefixTokens!80) (size!30570 suffixTokens!72))))))

(declare-fun b!3840056 () Bool)

(assert (=> b!3840056 (= e!2372136 suffixTokens!72)))

(declare-fun b!3840059 () Bool)

(assert (=> b!3840059 (= e!2372135 (or (not (= suffixTokens!72 Nil!40609)) (= lt!1332698 prefixTokens!80)))))

(declare-fun b!3840057 () Bool)

(assert (=> b!3840057 (= e!2372136 (Cons!40609 (h!46029 prefixTokens!80) (++!10281 (t!310262 prefixTokens!80) suffixTokens!72)))))

(assert (= (and d!1139554 c!669339) b!3840056))

(assert (= (and d!1139554 (not c!669339)) b!3840057))

(assert (= (and d!1139554 res!1554221) b!3840058))

(assert (= (and b!3840058 res!1554222) b!3840059))

(declare-fun m!4394397 () Bool)

(assert (=> d!1139554 m!4394397))

(declare-fun m!4394399 () Bool)

(assert (=> d!1139554 m!4394399))

(declare-fun m!4394401 () Bool)

(assert (=> d!1139554 m!4394401))

(declare-fun m!4394403 () Bool)

(assert (=> b!3840058 m!4394403))

(declare-fun m!4394405 () Bool)

(assert (=> b!3840058 m!4394405))

(declare-fun m!4394407 () Bool)

(assert (=> b!3840058 m!4394407))

(declare-fun m!4394409 () Bool)

(assert (=> b!3840057 m!4394409))

(assert (=> b!3839849 d!1139554))

(declare-fun lt!1332701 () List!40731)

(declare-fun b!3840071 () Bool)

(declare-fun e!2372142 () Bool)

(assert (=> b!3840071 (= e!2372142 (or (not (= suffix!1176 Nil!40607)) (= lt!1332701 prefix!426)))))

(declare-fun b!3840068 () Bool)

(declare-fun e!2372141 () List!40731)

(assert (=> b!3840068 (= e!2372141 suffix!1176)))

(declare-fun d!1139574 () Bool)

(assert (=> d!1139574 e!2372142))

(declare-fun res!1554227 () Bool)

(assert (=> d!1139574 (=> (not res!1554227) (not e!2372142))))

(declare-fun content!6036 (List!40731) (InoxSet C!22520))

(assert (=> d!1139574 (= res!1554227 (= (content!6036 lt!1332701) ((_ map or) (content!6036 prefix!426) (content!6036 suffix!1176))))))

(assert (=> d!1139574 (= lt!1332701 e!2372141)))

(declare-fun c!669342 () Bool)

(assert (=> d!1139574 (= c!669342 ((_ is Nil!40607) prefix!426))))

(assert (=> d!1139574 (= (++!10282 prefix!426 suffix!1176) lt!1332701)))

(declare-fun b!3840070 () Bool)

(declare-fun res!1554228 () Bool)

(assert (=> b!3840070 (=> (not res!1554228) (not e!2372142))))

(assert (=> b!3840070 (= res!1554228 (= (size!30568 lt!1332701) (+ (size!30568 prefix!426) (size!30568 suffix!1176))))))

(declare-fun b!3840069 () Bool)

(assert (=> b!3840069 (= e!2372141 (Cons!40607 (h!46027 prefix!426) (++!10282 (t!310260 prefix!426) suffix!1176)))))

(assert (= (and d!1139574 c!669342) b!3840068))

(assert (= (and d!1139574 (not c!669342)) b!3840069))

(assert (= (and d!1139574 res!1554227) b!3840070))

(assert (= (and b!3840070 res!1554228) b!3840071))

(declare-fun m!4394411 () Bool)

(assert (=> d!1139574 m!4394411))

(declare-fun m!4394413 () Bool)

(assert (=> d!1139574 m!4394413))

(declare-fun m!4394415 () Bool)

(assert (=> d!1139574 m!4394415))

(declare-fun m!4394417 () Bool)

(assert (=> b!3840070 m!4394417))

(declare-fun m!4394419 () Bool)

(assert (=> b!3840070 m!4394419))

(declare-fun m!4394421 () Bool)

(assert (=> b!3840070 m!4394421))

(declare-fun m!4394423 () Bool)

(assert (=> b!3840069 m!4394423))

(assert (=> b!3839849 d!1139574))

(declare-fun d!1139576 () Bool)

(assert (=> d!1139576 (= (isEmpty!23997 prefix!426) ((_ is Nil!40607) prefix!426))))

(assert (=> b!3839848 d!1139576))

(declare-fun d!1139578 () Bool)

(assert (=> d!1139578 true))

(declare-fun lt!1332721 () Bool)

(declare-fun lambda!126080 () Int)

(declare-fun forall!8274 (List!40732 Int) Bool)

(assert (=> d!1139578 (= lt!1332721 (forall!8274 rules!2768 lambda!126080))))

(declare-fun e!2372163 () Bool)

(assert (=> d!1139578 (= lt!1332721 e!2372163)))

(declare-fun res!1554259 () Bool)

(assert (=> d!1139578 (=> res!1554259 e!2372163)))

(assert (=> d!1139578 (= res!1554259 (not ((_ is Cons!40608) rules!2768)))))

(assert (=> d!1139578 (= (rulesValidInductive!2212 thiss!20629 rules!2768) lt!1332721)))

(declare-fun b!3840107 () Bool)

(declare-fun e!2372164 () Bool)

(assert (=> b!3840107 (= e!2372163 e!2372164)))

(declare-fun res!1554258 () Bool)

(assert (=> b!3840107 (=> (not res!1554258) (not e!2372164))))

(assert (=> b!3840107 (= res!1554258 (ruleValid!2214 thiss!20629 (h!46028 rules!2768)))))

(declare-fun b!3840108 () Bool)

(assert (=> b!3840108 (= e!2372164 (rulesValidInductive!2212 thiss!20629 (t!310261 rules!2768)))))

(assert (= (and d!1139578 (not res!1554259)) b!3840107))

(assert (= (and b!3840107 res!1554258) b!3840108))

(declare-fun m!4394469 () Bool)

(assert (=> d!1139578 m!4394469))

(declare-fun m!4394471 () Bool)

(assert (=> b!3840107 m!4394471))

(declare-fun m!4394473 () Bool)

(assert (=> b!3840108 m!4394473))

(assert (=> b!3839859 d!1139578))

(declare-fun d!1139582 () Bool)

(declare-fun e!2372171 () Bool)

(assert (=> d!1139582 e!2372171))

(declare-fun res!1554269 () Bool)

(assert (=> d!1139582 (=> res!1554269 e!2372171)))

(declare-fun lt!1332724 () Bool)

(assert (=> d!1139582 (= res!1554269 (not lt!1332724))))

(declare-fun e!2372172 () Bool)

(assert (=> d!1139582 (= lt!1332724 e!2372172)))

(declare-fun res!1554271 () Bool)

(assert (=> d!1139582 (=> res!1554271 e!2372172)))

(assert (=> d!1139582 (= res!1554271 ((_ is Nil!40607) lt!1332613))))

(assert (=> d!1139582 (= (isPrefix!3361 lt!1332613 lt!1332613) lt!1332724)))

(declare-fun b!3840121 () Bool)

(declare-fun e!2372173 () Bool)

(declare-fun tail!5807 (List!40731) List!40731)

(assert (=> b!3840121 (= e!2372173 (isPrefix!3361 (tail!5807 lt!1332613) (tail!5807 lt!1332613)))))

(declare-fun b!3840120 () Bool)

(declare-fun res!1554270 () Bool)

(assert (=> b!3840120 (=> (not res!1554270) (not e!2372173))))

(declare-fun head!8080 (List!40731) C!22520)

(assert (=> b!3840120 (= res!1554270 (= (head!8080 lt!1332613) (head!8080 lt!1332613)))))

(declare-fun b!3840119 () Bool)

(assert (=> b!3840119 (= e!2372172 e!2372173)))

(declare-fun res!1554268 () Bool)

(assert (=> b!3840119 (=> (not res!1554268) (not e!2372173))))

(assert (=> b!3840119 (= res!1554268 (not ((_ is Nil!40607) lt!1332613)))))

(declare-fun b!3840122 () Bool)

(assert (=> b!3840122 (= e!2372171 (>= (size!30568 lt!1332613) (size!30568 lt!1332613)))))

(assert (= (and d!1139582 (not res!1554271)) b!3840119))

(assert (= (and b!3840119 res!1554268) b!3840120))

(assert (= (and b!3840120 res!1554270) b!3840121))

(assert (= (and d!1139582 (not res!1554269)) b!3840122))

(declare-fun m!4394475 () Bool)

(assert (=> b!3840121 m!4394475))

(assert (=> b!3840121 m!4394475))

(assert (=> b!3840121 m!4394475))

(assert (=> b!3840121 m!4394475))

(declare-fun m!4394477 () Bool)

(assert (=> b!3840121 m!4394477))

(declare-fun m!4394479 () Bool)

(assert (=> b!3840120 m!4394479))

(assert (=> b!3840120 m!4394479))

(assert (=> b!3840122 m!4394345))

(assert (=> b!3840122 m!4394345))

(assert (=> b!3839859 d!1139582))

(declare-fun d!1139584 () Bool)

(assert (=> d!1139584 (isPrefix!3361 lt!1332613 lt!1332613)))

(declare-fun lt!1332727 () Unit!58320)

(declare-fun choose!22576 (List!40731 List!40731) Unit!58320)

(assert (=> d!1139584 (= lt!1332727 (choose!22576 lt!1332613 lt!1332613))))

(assert (=> d!1139584 (= (lemmaIsPrefixRefl!2134 lt!1332613 lt!1332613) lt!1332727)))

(declare-fun bs!582599 () Bool)

(assert (= bs!582599 d!1139584))

(assert (=> bs!582599 m!4394093))

(declare-fun m!4394481 () Bool)

(assert (=> bs!582599 m!4394481))

(assert (=> b!3839859 d!1139584))

(declare-fun d!1139586 () Bool)

(declare-fun res!1554272 () Bool)

(declare-fun e!2372174 () Bool)

(assert (=> d!1139586 (=> (not res!1554272) (not e!2372174))))

(assert (=> d!1139586 (= res!1554272 (not (isEmpty!23997 (originalCharacters!6862 (_1!23023 (v!38971 err!4201))))))))

(assert (=> d!1139586 (= (inv!54757 (_1!23023 (v!38971 err!4201))) e!2372174)))

(declare-fun b!3840123 () Bool)

(declare-fun res!1554273 () Bool)

(assert (=> b!3840123 (=> (not res!1554273) (not e!2372174))))

(assert (=> b!3840123 (= res!1554273 (= (originalCharacters!6862 (_1!23023 (v!38971 err!4201))) (list!15124 (dynLambda!17569 (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 err!4201))))) (value!199101 (_1!23023 (v!38971 err!4201)))))))))

(declare-fun b!3840124 () Bool)

(assert (=> b!3840124 (= e!2372174 (= (size!30567 (_1!23023 (v!38971 err!4201))) (size!30568 (originalCharacters!6862 (_1!23023 (v!38971 err!4201))))))))

(assert (= (and d!1139586 res!1554272) b!3840123))

(assert (= (and b!3840123 res!1554273) b!3840124))

(declare-fun b_lambda!112267 () Bool)

(assert (=> (not b_lambda!112267) (not b!3840123)))

(declare-fun t!310296 () Bool)

(declare-fun tb!220869 () Bool)

(assert (=> (and b!3839841 (= (toChars!8537 (transformation!6262 (h!46028 rules!2768))) (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 err!4201)))))) t!310296) tb!220869))

(declare-fun b!3840125 () Bool)

(declare-fun e!2372175 () Bool)

(declare-fun tp!1162986 () Bool)

(assert (=> b!3840125 (= e!2372175 (and (inv!54760 (c!669297 (dynLambda!17569 (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 err!4201))))) (value!199101 (_1!23023 (v!38971 err!4201)))))) tp!1162986))))

(declare-fun result!269192 () Bool)

(assert (=> tb!220869 (= result!269192 (and (inv!54761 (dynLambda!17569 (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 err!4201))))) (value!199101 (_1!23023 (v!38971 err!4201))))) e!2372175))))

(assert (= tb!220869 b!3840125))

(declare-fun m!4394483 () Bool)

(assert (=> b!3840125 m!4394483))

(declare-fun m!4394485 () Bool)

(assert (=> tb!220869 m!4394485))

(assert (=> b!3840123 t!310296))

(declare-fun b_and!285967 () Bool)

(assert (= b_and!285943 (and (=> t!310296 result!269192) b_and!285967)))

(declare-fun tb!220871 () Bool)

(declare-fun t!310298 () Bool)

(assert (=> (and b!3839840 (= (toChars!8537 (transformation!6262 (rule!9098 (h!46029 prefixTokens!80)))) (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 err!4201)))))) t!310298) tb!220871))

(declare-fun result!269194 () Bool)

(assert (= result!269194 result!269192))

(assert (=> b!3840123 t!310298))

(declare-fun b_and!285969 () Bool)

(assert (= b_and!285945 (and (=> t!310298 result!269194) b_and!285969)))

(declare-fun t!310300 () Bool)

(declare-fun tb!220873 () Bool)

(assert (=> (and b!3839846 (= (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 err!4201))))) (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 err!4201)))))) t!310300) tb!220873))

(declare-fun result!269196 () Bool)

(assert (= result!269196 result!269192))

(assert (=> b!3840123 t!310300))

(declare-fun b_and!285971 () Bool)

(assert (= b_and!285947 (and (=> t!310300 result!269196) b_and!285971)))

(declare-fun tb!220875 () Bool)

(declare-fun t!310302 () Bool)

(assert (=> (and b!3839860 (= (toChars!8537 (transformation!6262 (rule!9098 (h!46029 suffixTokens!72)))) (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 err!4201)))))) t!310302) tb!220875))

(declare-fun result!269198 () Bool)

(assert (= result!269198 result!269192))

(assert (=> b!3840123 t!310302))

(declare-fun b_and!285973 () Bool)

(assert (= b_and!285949 (and (=> t!310302 result!269198) b_and!285973)))

(declare-fun m!4394487 () Bool)

(assert (=> d!1139586 m!4394487))

(declare-fun m!4394489 () Bool)

(assert (=> b!3840123 m!4394489))

(assert (=> b!3840123 m!4394489))

(declare-fun m!4394491 () Bool)

(assert (=> b!3840123 m!4394491))

(declare-fun m!4394493 () Bool)

(assert (=> b!3840124 m!4394493))

(assert (=> b!3839858 d!1139586))

(declare-fun d!1139588 () Bool)

(declare-fun res!1554276 () Bool)

(declare-fun e!2372178 () Bool)

(assert (=> d!1139588 (=> (not res!1554276) (not e!2372178))))

(declare-fun rulesValid!2419 (LexerInterface!5851 List!40732) Bool)

(assert (=> d!1139588 (= res!1554276 (rulesValid!2419 thiss!20629 rules!2768))))

(assert (=> d!1139588 (= (rulesInvariant!5194 thiss!20629 rules!2768) e!2372178)))

(declare-fun b!3840128 () Bool)

(declare-datatypes ((List!40734 0))(
  ( (Nil!40610) (Cons!40610 (h!46030 String!46178) (t!310403 List!40734)) )
))
(declare-fun noDuplicateTag!2420 (LexerInterface!5851 List!40732 List!40734) Bool)

(assert (=> b!3840128 (= e!2372178 (noDuplicateTag!2420 thiss!20629 rules!2768 Nil!40610))))

(assert (= (and d!1139588 res!1554276) b!3840128))

(declare-fun m!4394495 () Bool)

(assert (=> d!1139588 m!4394495))

(declare-fun m!4394497 () Bool)

(assert (=> b!3840128 m!4394497))

(assert (=> b!3839837 d!1139588))

(declare-fun b!3840129 () Bool)

(declare-fun e!2372179 () Bool)

(declare-fun lt!1332729 () tuple2!39780)

(assert (=> b!3840129 (= e!2372179 (not (isEmpty!23998 (_1!23024 lt!1332729))))))

(declare-fun b!3840130 () Bool)

(declare-fun e!2372180 () tuple2!39780)

(declare-fun lt!1332728 () Option!8680)

(declare-fun lt!1332730 () tuple2!39780)

(assert (=> b!3840130 (= e!2372180 (tuple2!39781 (Cons!40609 (_1!23023 (v!38971 lt!1332728)) (_1!23024 lt!1332730)) (_2!23024 lt!1332730)))))

(assert (=> b!3840130 (= lt!1332730 (lexList!1619 thiss!20629 rules!2768 (_2!23023 (v!38971 lt!1332728))))))

(declare-fun b!3840131 () Bool)

(declare-fun e!2372181 () Bool)

(assert (=> b!3840131 (= e!2372181 e!2372179)))

(declare-fun res!1554277 () Bool)

(assert (=> b!3840131 (= res!1554277 (< (size!30568 (_2!23024 lt!1332729)) (size!30568 suffix!1176)))))

(assert (=> b!3840131 (=> (not res!1554277) (not e!2372179))))

(declare-fun b!3840132 () Bool)

(assert (=> b!3840132 (= e!2372180 (tuple2!39781 Nil!40609 suffix!1176))))

(declare-fun d!1139590 () Bool)

(assert (=> d!1139590 e!2372181))

(declare-fun c!669347 () Bool)

(assert (=> d!1139590 (= c!669347 (> (size!30570 (_1!23024 lt!1332729)) 0))))

(assert (=> d!1139590 (= lt!1332729 e!2372180)))

(declare-fun c!669346 () Bool)

(assert (=> d!1139590 (= c!669346 ((_ is Some!8679) lt!1332728))))

(assert (=> d!1139590 (= lt!1332728 (maxPrefix!3155 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1139590 (= (lexList!1619 thiss!20629 rules!2768 suffix!1176) lt!1332729)))

(declare-fun b!3840133 () Bool)

(assert (=> b!3840133 (= e!2372181 (= (_2!23024 lt!1332729) suffix!1176))))

(assert (= (and d!1139590 c!669346) b!3840130))

(assert (= (and d!1139590 (not c!669346)) b!3840132))

(assert (= (and d!1139590 c!669347) b!3840131))

(assert (= (and d!1139590 (not c!669347)) b!3840133))

(assert (= (and b!3840131 res!1554277) b!3840129))

(declare-fun m!4394499 () Bool)

(assert (=> b!3840129 m!4394499))

(declare-fun m!4394501 () Bool)

(assert (=> b!3840130 m!4394501))

(declare-fun m!4394503 () Bool)

(assert (=> b!3840131 m!4394503))

(assert (=> b!3840131 m!4394421))

(declare-fun m!4394505 () Bool)

(assert (=> d!1139590 m!4394505))

(declare-fun m!4394507 () Bool)

(assert (=> d!1139590 m!4394507))

(assert (=> b!3839847 d!1139590))

(declare-fun d!1139592 () Bool)

(assert (=> d!1139592 (ruleValid!2214 thiss!20629 (rule!9098 (_1!23023 (v!38971 lt!1332620))))))

(declare-fun lt!1332735 () Unit!58320)

(declare-fun choose!22578 (LexerInterface!5851 Rule!12324 List!40732) Unit!58320)

(assert (=> d!1139592 (= lt!1332735 (choose!22578 thiss!20629 (rule!9098 (_1!23023 (v!38971 lt!1332620))) rules!2768))))

(declare-fun contains!8230 (List!40732 Rule!12324) Bool)

(assert (=> d!1139592 (contains!8230 rules!2768 (rule!9098 (_1!23023 (v!38971 lt!1332620))))))

(assert (=> d!1139592 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1294 thiss!20629 (rule!9098 (_1!23023 (v!38971 lt!1332620))) rules!2768) lt!1332735)))

(declare-fun bs!582600 () Bool)

(assert (= bs!582600 d!1139592))

(assert (=> bs!582600 m!4394161))

(declare-fun m!4394515 () Bool)

(assert (=> bs!582600 m!4394515))

(declare-fun m!4394517 () Bool)

(assert (=> bs!582600 m!4394517))

(assert (=> b!3839857 d!1139592))

(declare-fun e!2372188 () Bool)

(declare-fun b!3840145 () Bool)

(declare-fun lt!1332736 () List!40731)

(assert (=> b!3840145 (= e!2372188 (or (not (= (_2!23023 (v!38971 lt!1332620)) Nil!40607)) (= lt!1332736 lt!1332609)))))

(declare-fun b!3840142 () Bool)

(declare-fun e!2372187 () List!40731)

(assert (=> b!3840142 (= e!2372187 (_2!23023 (v!38971 lt!1332620)))))

(declare-fun d!1139598 () Bool)

(assert (=> d!1139598 e!2372188))

(declare-fun res!1554284 () Bool)

(assert (=> d!1139598 (=> (not res!1554284) (not e!2372188))))

(assert (=> d!1139598 (= res!1554284 (= (content!6036 lt!1332736) ((_ map or) (content!6036 lt!1332609) (content!6036 (_2!23023 (v!38971 lt!1332620))))))))

(assert (=> d!1139598 (= lt!1332736 e!2372187)))

(declare-fun c!669348 () Bool)

(assert (=> d!1139598 (= c!669348 ((_ is Nil!40607) lt!1332609))))

(assert (=> d!1139598 (= (++!10282 lt!1332609 (_2!23023 (v!38971 lt!1332620))) lt!1332736)))

(declare-fun b!3840144 () Bool)

(declare-fun res!1554285 () Bool)

(assert (=> b!3840144 (=> (not res!1554285) (not e!2372188))))

(assert (=> b!3840144 (= res!1554285 (= (size!30568 lt!1332736) (+ (size!30568 lt!1332609) (size!30568 (_2!23023 (v!38971 lt!1332620))))))))

(declare-fun b!3840143 () Bool)

(assert (=> b!3840143 (= e!2372187 (Cons!40607 (h!46027 lt!1332609) (++!10282 (t!310260 lt!1332609) (_2!23023 (v!38971 lt!1332620)))))))

(assert (= (and d!1139598 c!669348) b!3840142))

(assert (= (and d!1139598 (not c!669348)) b!3840143))

(assert (= (and d!1139598 res!1554284) b!3840144))

(assert (= (and b!3840144 res!1554285) b!3840145))

(declare-fun m!4394519 () Bool)

(assert (=> d!1139598 m!4394519))

(declare-fun m!4394521 () Bool)

(assert (=> d!1139598 m!4394521))

(declare-fun m!4394523 () Bool)

(assert (=> d!1139598 m!4394523))

(declare-fun m!4394525 () Bool)

(assert (=> b!3840144 m!4394525))

(assert (=> b!3840144 m!4394153))

(declare-fun m!4394527 () Bool)

(assert (=> b!3840144 m!4394527))

(declare-fun m!4394529 () Bool)

(assert (=> b!3840143 m!4394529))

(assert (=> b!3839857 d!1139598))

(declare-fun d!1139600 () Bool)

(assert (=> d!1139600 (= (_2!23023 (v!38971 lt!1332620)) lt!1332618)))

(declare-fun lt!1332742 () Unit!58320)

(declare-fun choose!22579 (List!40731 List!40731 List!40731 List!40731 List!40731) Unit!58320)

(assert (=> d!1139600 (= lt!1332742 (choose!22579 lt!1332609 (_2!23023 (v!38971 lt!1332620)) lt!1332609 lt!1332618 lt!1332613))))

(assert (=> d!1139600 (isPrefix!3361 lt!1332609 lt!1332613)))

(assert (=> d!1139600 (= (lemmaSamePrefixThenSameSuffix!1582 lt!1332609 (_2!23023 (v!38971 lt!1332620)) lt!1332609 lt!1332618 lt!1332613) lt!1332742)))

(declare-fun bs!582602 () Bool)

(assert (= bs!582602 d!1139600))

(declare-fun m!4394533 () Bool)

(assert (=> bs!582602 m!4394533))

(declare-fun m!4394535 () Bool)

(assert (=> bs!582602 m!4394535))

(assert (=> b!3839857 d!1139600))

(declare-fun d!1139604 () Bool)

(declare-fun res!1554293 () Bool)

(declare-fun e!2372200 () Bool)

(assert (=> d!1139604 (=> (not res!1554293) (not e!2372200))))

(declare-fun validRegex!5084 (Regex!11167) Bool)

(assert (=> d!1139604 (= res!1554293 (validRegex!5084 (regex!6262 (rule!9098 (_1!23023 (v!38971 lt!1332620))))))))

(assert (=> d!1139604 (= (ruleValid!2214 thiss!20629 (rule!9098 (_1!23023 (v!38971 lt!1332620)))) e!2372200)))

(declare-fun b!3840165 () Bool)

(declare-fun res!1554294 () Bool)

(assert (=> b!3840165 (=> (not res!1554294) (not e!2372200))))

(declare-fun nullable!3885 (Regex!11167) Bool)

(assert (=> b!3840165 (= res!1554294 (not (nullable!3885 (regex!6262 (rule!9098 (_1!23023 (v!38971 lt!1332620)))))))))

(declare-fun b!3840166 () Bool)

(assert (=> b!3840166 (= e!2372200 (not (= (tag!7122 (rule!9098 (_1!23023 (v!38971 lt!1332620)))) (String!46179 ""))))))

(assert (= (and d!1139604 res!1554293) b!3840165))

(assert (= (and b!3840165 res!1554294) b!3840166))

(declare-fun m!4394543 () Bool)

(assert (=> d!1139604 m!4394543))

(declare-fun m!4394545 () Bool)

(assert (=> b!3840165 m!4394545))

(assert (=> b!3839857 d!1139604))

(declare-fun d!1139608 () Bool)

(assert (=> d!1139608 (isPrefix!3361 lt!1332609 (++!10282 lt!1332609 (_2!23023 (v!38971 lt!1332620))))))

(declare-fun lt!1332745 () Unit!58320)

(declare-fun choose!22580 (List!40731 List!40731) Unit!58320)

(assert (=> d!1139608 (= lt!1332745 (choose!22580 lt!1332609 (_2!23023 (v!38971 lt!1332620))))))

(assert (=> d!1139608 (= (lemmaConcatTwoListThenFirstIsPrefix!2224 lt!1332609 (_2!23023 (v!38971 lt!1332620))) lt!1332745)))

(declare-fun bs!582603 () Bool)

(assert (= bs!582603 d!1139608))

(assert (=> bs!582603 m!4394145))

(assert (=> bs!582603 m!4394145))

(declare-fun m!4394563 () Bool)

(assert (=> bs!582603 m!4394563))

(declare-fun m!4394565 () Bool)

(assert (=> bs!582603 m!4394565))

(assert (=> b!3839857 d!1139608))

(declare-fun d!1139612 () Bool)

(assert (=> d!1139612 (= (size!30567 (_1!23023 (v!38971 lt!1332620))) (size!30568 (originalCharacters!6862 (_1!23023 (v!38971 lt!1332620)))))))

(declare-fun Unit!58323 () Unit!58320)

(assert (=> d!1139612 (= (lemmaCharactersSize!923 (_1!23023 (v!38971 lt!1332620))) Unit!58323)))

(declare-fun bs!582604 () Bool)

(assert (= bs!582604 d!1139612))

(assert (=> bs!582604 m!4394111))

(assert (=> b!3839857 d!1139612))

(declare-fun d!1139622 () Bool)

(declare-fun lt!1332750 () List!40731)

(assert (=> d!1139622 (= (++!10282 lt!1332609 lt!1332750) lt!1332613)))

(declare-fun e!2372215 () List!40731)

(assert (=> d!1139622 (= lt!1332750 e!2372215)))

(declare-fun c!669361 () Bool)

(assert (=> d!1139622 (= c!669361 ((_ is Cons!40607) lt!1332609))))

(assert (=> d!1139622 (>= (size!30568 lt!1332613) (size!30568 lt!1332609))))

(assert (=> d!1139622 (= (getSuffix!1816 lt!1332613 lt!1332609) lt!1332750)))

(declare-fun b!3840190 () Bool)

(assert (=> b!3840190 (= e!2372215 (getSuffix!1816 (tail!5807 lt!1332613) (t!310260 lt!1332609)))))

(declare-fun b!3840191 () Bool)

(assert (=> b!3840191 (= e!2372215 lt!1332613)))

(assert (= (and d!1139622 c!669361) b!3840190))

(assert (= (and d!1139622 (not c!669361)) b!3840191))

(declare-fun m!4394605 () Bool)

(assert (=> d!1139622 m!4394605))

(assert (=> d!1139622 m!4394345))

(assert (=> d!1139622 m!4394153))

(assert (=> b!3840190 m!4394475))

(assert (=> b!3840190 m!4394475))

(declare-fun m!4394607 () Bool)

(assert (=> b!3840190 m!4394607))

(assert (=> b!3839857 d!1139622))

(declare-fun d!1139632 () Bool)

(declare-fun lt!1332753 () Int)

(assert (=> d!1139632 (>= lt!1332753 0)))

(declare-fun e!2372227 () Int)

(assert (=> d!1139632 (= lt!1332753 e!2372227)))

(declare-fun c!669366 () Bool)

(assert (=> d!1139632 (= c!669366 ((_ is Nil!40607) lt!1332609))))

(assert (=> d!1139632 (= (size!30568 lt!1332609) lt!1332753)))

(declare-fun b!3840209 () Bool)

(assert (=> b!3840209 (= e!2372227 0)))

(declare-fun b!3840210 () Bool)

(assert (=> b!3840210 (= e!2372227 (+ 1 (size!30568 (t!310260 lt!1332609))))))

(assert (= (and d!1139632 c!669366) b!3840209))

(assert (= (and d!1139632 (not c!669366)) b!3840210))

(declare-fun m!4394619 () Bool)

(assert (=> b!3840210 m!4394619))

(assert (=> b!3839857 d!1139632))

(declare-fun b!3840217 () Bool)

(declare-fun e!2372232 () Bool)

(declare-fun lt!1332755 () tuple2!39780)

(assert (=> b!3840217 (= e!2372232 (not (isEmpty!23998 (_1!23024 lt!1332755))))))

(declare-fun b!3840218 () Bool)

(declare-fun e!2372233 () tuple2!39780)

(declare-fun lt!1332754 () Option!8680)

(declare-fun lt!1332756 () tuple2!39780)

(assert (=> b!3840218 (= e!2372233 (tuple2!39781 (Cons!40609 (_1!23023 (v!38971 lt!1332754)) (_1!23024 lt!1332756)) (_2!23024 lt!1332756)))))

(assert (=> b!3840218 (= lt!1332756 (lexList!1619 thiss!20629 rules!2768 (_2!23023 (v!38971 lt!1332754))))))

(declare-fun b!3840219 () Bool)

(declare-fun e!2372234 () Bool)

(assert (=> b!3840219 (= e!2372234 e!2372232)))

(declare-fun res!1554308 () Bool)

(assert (=> b!3840219 (= res!1554308 (< (size!30568 (_2!23024 lt!1332755)) (size!30568 (_2!23023 (v!38971 lt!1332620)))))))

(assert (=> b!3840219 (=> (not res!1554308) (not e!2372232))))

(declare-fun b!3840220 () Bool)

(assert (=> b!3840220 (= e!2372233 (tuple2!39781 Nil!40609 (_2!23023 (v!38971 lt!1332620))))))

(declare-fun d!1139636 () Bool)

(assert (=> d!1139636 e!2372234))

(declare-fun c!669368 () Bool)

(assert (=> d!1139636 (= c!669368 (> (size!30570 (_1!23024 lt!1332755)) 0))))

(assert (=> d!1139636 (= lt!1332755 e!2372233)))

(declare-fun c!669367 () Bool)

(assert (=> d!1139636 (= c!669367 ((_ is Some!8679) lt!1332754))))

(assert (=> d!1139636 (= lt!1332754 (maxPrefix!3155 thiss!20629 rules!2768 (_2!23023 (v!38971 lt!1332620))))))

(assert (=> d!1139636 (= (lexList!1619 thiss!20629 rules!2768 (_2!23023 (v!38971 lt!1332620))) lt!1332755)))

(declare-fun b!3840221 () Bool)

(assert (=> b!3840221 (= e!2372234 (= (_2!23024 lt!1332755) (_2!23023 (v!38971 lt!1332620))))))

(assert (= (and d!1139636 c!669367) b!3840218))

(assert (= (and d!1139636 (not c!669367)) b!3840220))

(assert (= (and d!1139636 c!669368) b!3840219))

(assert (= (and d!1139636 (not c!669368)) b!3840221))

(assert (= (and b!3840219 res!1554308) b!3840217))

(declare-fun m!4394621 () Bool)

(assert (=> b!3840217 m!4394621))

(declare-fun m!4394623 () Bool)

(assert (=> b!3840218 m!4394623))

(declare-fun m!4394625 () Bool)

(assert (=> b!3840219 m!4394625))

(assert (=> b!3840219 m!4394527))

(declare-fun m!4394627 () Bool)

(assert (=> d!1139636 m!4394627))

(declare-fun m!4394629 () Bool)

(assert (=> d!1139636 m!4394629))

(assert (=> b!3839857 d!1139636))

(declare-fun d!1139638 () Bool)

(declare-fun lt!1332759 () BalanceConc!24540)

(assert (=> d!1139638 (= (list!15124 lt!1332759) (originalCharacters!6862 (_1!23023 (v!38971 lt!1332620))))))

(assert (=> d!1139638 (= lt!1332759 (dynLambda!17569 (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 lt!1332620))))) (value!199101 (_1!23023 (v!38971 lt!1332620)))))))

(assert (=> d!1139638 (= (charsOf!4090 (_1!23023 (v!38971 lt!1332620))) lt!1332759)))

(declare-fun b_lambda!112273 () Bool)

(assert (=> (not b_lambda!112273) (not d!1139638)))

(declare-fun t!310320 () Bool)

(declare-fun tb!220893 () Bool)

(assert (=> (and b!3839841 (= (toChars!8537 (transformation!6262 (h!46028 rules!2768))) (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 lt!1332620)))))) t!310320) tb!220893))

(declare-fun b!3840232 () Bool)

(declare-fun e!2372251 () Bool)

(declare-fun tp!1163009 () Bool)

(assert (=> b!3840232 (= e!2372251 (and (inv!54760 (c!669297 (dynLambda!17569 (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 lt!1332620))))) (value!199101 (_1!23023 (v!38971 lt!1332620)))))) tp!1163009))))

(declare-fun result!269220 () Bool)

(assert (=> tb!220893 (= result!269220 (and (inv!54761 (dynLambda!17569 (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 lt!1332620))))) (value!199101 (_1!23023 (v!38971 lt!1332620))))) e!2372251))))

(assert (= tb!220893 b!3840232))

(declare-fun m!4394631 () Bool)

(assert (=> b!3840232 m!4394631))

(declare-fun m!4394633 () Bool)

(assert (=> tb!220893 m!4394633))

(assert (=> d!1139638 t!310320))

(declare-fun b_and!285993 () Bool)

(assert (= b_and!285967 (and (=> t!310320 result!269220) b_and!285993)))

(declare-fun t!310324 () Bool)

(declare-fun tb!220897 () Bool)

(assert (=> (and b!3839840 (= (toChars!8537 (transformation!6262 (rule!9098 (h!46029 prefixTokens!80)))) (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 lt!1332620)))))) t!310324) tb!220897))

(declare-fun result!269224 () Bool)

(assert (= result!269224 result!269220))

(assert (=> d!1139638 t!310324))

(declare-fun b_and!285995 () Bool)

(assert (= b_and!285969 (and (=> t!310324 result!269224) b_and!285995)))

(declare-fun t!310326 () Bool)

(declare-fun tb!220899 () Bool)

(assert (=> (and b!3839846 (= (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 err!4201))))) (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 lt!1332620)))))) t!310326) tb!220899))

(declare-fun result!269226 () Bool)

(assert (= result!269226 result!269220))

(assert (=> d!1139638 t!310326))

(declare-fun b_and!285997 () Bool)

(assert (= b_and!285971 (and (=> t!310326 result!269226) b_and!285997)))

(declare-fun t!310328 () Bool)

(declare-fun tb!220901 () Bool)

(assert (=> (and b!3839860 (= (toChars!8537 (transformation!6262 (rule!9098 (h!46029 suffixTokens!72)))) (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 lt!1332620)))))) t!310328) tb!220901))

(declare-fun result!269228 () Bool)

(assert (= result!269228 result!269220))

(assert (=> d!1139638 t!310328))

(declare-fun b_and!285999 () Bool)

(assert (= b_and!285973 (and (=> t!310328 result!269228) b_and!285999)))

(declare-fun m!4394635 () Bool)

(assert (=> d!1139638 m!4394635))

(declare-fun m!4394637 () Bool)

(assert (=> d!1139638 m!4394637))

(assert (=> b!3839857 d!1139638))

(declare-fun d!1139640 () Bool)

(declare-fun fromListB!2095 (List!40731) BalanceConc!24540)

(assert (=> d!1139640 (= (seqFromList!4533 lt!1332609) (fromListB!2095 lt!1332609))))

(declare-fun bs!582605 () Bool)

(assert (= bs!582605 d!1139640))

(declare-fun m!4394655 () Bool)

(assert (=> bs!582605 m!4394655))

(assert (=> b!3839857 d!1139640))

(declare-fun d!1139642 () Bool)

(declare-fun e!2372260 () Bool)

(assert (=> d!1139642 e!2372260))

(declare-fun res!1554310 () Bool)

(assert (=> d!1139642 (=> res!1554310 e!2372260)))

(declare-fun lt!1332760 () Bool)

(assert (=> d!1139642 (= res!1554310 (not lt!1332760))))

(declare-fun e!2372261 () Bool)

(assert (=> d!1139642 (= lt!1332760 e!2372261)))

(declare-fun res!1554312 () Bool)

(assert (=> d!1139642 (=> res!1554312 e!2372261)))

(assert (=> d!1139642 (= res!1554312 ((_ is Nil!40607) lt!1332609))))

(assert (=> d!1139642 (= (isPrefix!3361 lt!1332609 lt!1332616) lt!1332760)))

(declare-fun b!3840245 () Bool)

(declare-fun e!2372262 () Bool)

(assert (=> b!3840245 (= e!2372262 (isPrefix!3361 (tail!5807 lt!1332609) (tail!5807 lt!1332616)))))

(declare-fun b!3840244 () Bool)

(declare-fun res!1554311 () Bool)

(assert (=> b!3840244 (=> (not res!1554311) (not e!2372262))))

(assert (=> b!3840244 (= res!1554311 (= (head!8080 lt!1332609) (head!8080 lt!1332616)))))

(declare-fun b!3840243 () Bool)

(assert (=> b!3840243 (= e!2372261 e!2372262)))

(declare-fun res!1554309 () Bool)

(assert (=> b!3840243 (=> (not res!1554309) (not e!2372262))))

(assert (=> b!3840243 (= res!1554309 (not ((_ is Nil!40607) lt!1332616)))))

(declare-fun b!3840246 () Bool)

(assert (=> b!3840246 (= e!2372260 (>= (size!30568 lt!1332616) (size!30568 lt!1332609)))))

(assert (= (and d!1139642 (not res!1554312)) b!3840243))

(assert (= (and b!3840243 res!1554309) b!3840244))

(assert (= (and b!3840244 res!1554311) b!3840245))

(assert (= (and d!1139642 (not res!1554310)) b!3840246))

(declare-fun m!4394657 () Bool)

(assert (=> b!3840245 m!4394657))

(declare-fun m!4394659 () Bool)

(assert (=> b!3840245 m!4394659))

(assert (=> b!3840245 m!4394657))

(assert (=> b!3840245 m!4394659))

(declare-fun m!4394661 () Bool)

(assert (=> b!3840245 m!4394661))

(declare-fun m!4394663 () Bool)

(assert (=> b!3840244 m!4394663))

(declare-fun m!4394665 () Bool)

(assert (=> b!3840244 m!4394665))

(declare-fun m!4394667 () Bool)

(assert (=> b!3840246 m!4394667))

(assert (=> b!3840246 m!4394153))

(assert (=> b!3839857 d!1139642))

(declare-fun d!1139644 () Bool)

(declare-fun list!15126 (Conc!12473) List!40731)

(assert (=> d!1139644 (= (list!15124 (charsOf!4090 (_1!23023 (v!38971 lt!1332620)))) (list!15126 (c!669297 (charsOf!4090 (_1!23023 (v!38971 lt!1332620))))))))

(declare-fun bs!582606 () Bool)

(assert (= bs!582606 d!1139644))

(declare-fun m!4394669 () Bool)

(assert (=> bs!582606 m!4394669))

(assert (=> b!3839857 d!1139644))

(declare-fun d!1139646 () Bool)

(declare-fun dynLambda!17570 (Int BalanceConc!24540) TokenValue!6492)

(assert (=> d!1139646 (= (apply!9505 (transformation!6262 (rule!9098 (_1!23023 (v!38971 lt!1332620)))) (seqFromList!4533 lt!1332609)) (dynLambda!17570 (toValue!8678 (transformation!6262 (rule!9098 (_1!23023 (v!38971 lt!1332620))))) (seqFromList!4533 lt!1332609)))))

(declare-fun b_lambda!112275 () Bool)

(assert (=> (not b_lambda!112275) (not d!1139646)))

(declare-fun t!310348 () Bool)

(declare-fun tb!220921 () Bool)

(assert (=> (and b!3839841 (= (toValue!8678 (transformation!6262 (h!46028 rules!2768))) (toValue!8678 (transformation!6262 (rule!9098 (_1!23023 (v!38971 lt!1332620)))))) t!310348) tb!220921))

(declare-fun result!269252 () Bool)

(assert (=> tb!220921 (= result!269252 (inv!21 (dynLambda!17570 (toValue!8678 (transformation!6262 (rule!9098 (_1!23023 (v!38971 lt!1332620))))) (seqFromList!4533 lt!1332609))))))

(declare-fun m!4394671 () Bool)

(assert (=> tb!220921 m!4394671))

(assert (=> d!1139646 t!310348))

(declare-fun b_and!286009 () Bool)

(assert (= b_and!285919 (and (=> t!310348 result!269252) b_and!286009)))

(declare-fun tb!220925 () Bool)

(declare-fun t!310352 () Bool)

(assert (=> (and b!3839840 (= (toValue!8678 (transformation!6262 (rule!9098 (h!46029 prefixTokens!80)))) (toValue!8678 (transformation!6262 (rule!9098 (_1!23023 (v!38971 lt!1332620)))))) t!310352) tb!220925))

(declare-fun result!269258 () Bool)

(assert (= result!269258 result!269252))

(assert (=> d!1139646 t!310352))

(declare-fun b_and!286013 () Bool)

(assert (= b_and!285923 (and (=> t!310352 result!269258) b_and!286013)))

(declare-fun t!310356 () Bool)

(declare-fun tb!220929 () Bool)

(assert (=> (and b!3839846 (= (toValue!8678 (transformation!6262 (rule!9098 (_1!23023 (v!38971 err!4201))))) (toValue!8678 (transformation!6262 (rule!9098 (_1!23023 (v!38971 lt!1332620)))))) t!310356) tb!220929))

(declare-fun result!269262 () Bool)

(assert (= result!269262 result!269252))

(assert (=> d!1139646 t!310356))

(declare-fun b_and!286015 () Bool)

(assert (= b_and!285927 (and (=> t!310356 result!269262) b_and!286015)))

(declare-fun t!310362 () Bool)

(declare-fun tb!220935 () Bool)

(assert (=> (and b!3839860 (= (toValue!8678 (transformation!6262 (rule!9098 (h!46029 suffixTokens!72)))) (toValue!8678 (transformation!6262 (rule!9098 (_1!23023 (v!38971 lt!1332620)))))) t!310362) tb!220935))

(declare-fun result!269268 () Bool)

(assert (= result!269268 result!269252))

(assert (=> d!1139646 t!310362))

(declare-fun b_and!286017 () Bool)

(assert (= b_and!285931 (and (=> t!310362 result!269268) b_and!286017)))

(assert (=> d!1139646 m!4394149))

(declare-fun m!4394673 () Bool)

(assert (=> d!1139646 m!4394673))

(assert (=> b!3839857 d!1139646))

(declare-fun d!1139648 () Bool)

(declare-fun res!1554313 () Bool)

(declare-fun e!2372280 () Bool)

(assert (=> d!1139648 (=> (not res!1554313) (not e!2372280))))

(assert (=> d!1139648 (= res!1554313 (not (isEmpty!23997 (originalCharacters!6862 (h!46029 suffixTokens!72)))))))

(assert (=> d!1139648 (= (inv!54757 (h!46029 suffixTokens!72)) e!2372280)))

(declare-fun b!3840269 () Bool)

(declare-fun res!1554314 () Bool)

(assert (=> b!3840269 (=> (not res!1554314) (not e!2372280))))

(assert (=> b!3840269 (= res!1554314 (= (originalCharacters!6862 (h!46029 suffixTokens!72)) (list!15124 (dynLambda!17569 (toChars!8537 (transformation!6262 (rule!9098 (h!46029 suffixTokens!72)))) (value!199101 (h!46029 suffixTokens!72))))))))

(declare-fun b!3840270 () Bool)

(assert (=> b!3840270 (= e!2372280 (= (size!30567 (h!46029 suffixTokens!72)) (size!30568 (originalCharacters!6862 (h!46029 suffixTokens!72)))))))

(assert (= (and d!1139648 res!1554313) b!3840269))

(assert (= (and b!3840269 res!1554314) b!3840270))

(declare-fun b_lambda!112277 () Bool)

(assert (=> (not b_lambda!112277) (not b!3840269)))

(declare-fun tb!220939 () Bool)

(declare-fun t!310366 () Bool)

(assert (=> (and b!3839841 (= (toChars!8537 (transformation!6262 (h!46028 rules!2768))) (toChars!8537 (transformation!6262 (rule!9098 (h!46029 suffixTokens!72))))) t!310366) tb!220939))

(declare-fun b!3840280 () Bool)

(declare-fun e!2372284 () Bool)

(declare-fun tp!1163054 () Bool)

(assert (=> b!3840280 (= e!2372284 (and (inv!54760 (c!669297 (dynLambda!17569 (toChars!8537 (transformation!6262 (rule!9098 (h!46029 suffixTokens!72)))) (value!199101 (h!46029 suffixTokens!72))))) tp!1163054))))

(declare-fun result!269272 () Bool)

(assert (=> tb!220939 (= result!269272 (and (inv!54761 (dynLambda!17569 (toChars!8537 (transformation!6262 (rule!9098 (h!46029 suffixTokens!72)))) (value!199101 (h!46029 suffixTokens!72)))) e!2372284))))

(assert (= tb!220939 b!3840280))

(declare-fun m!4394679 () Bool)

(assert (=> b!3840280 m!4394679))

(declare-fun m!4394681 () Bool)

(assert (=> tb!220939 m!4394681))

(assert (=> b!3840269 t!310366))

(declare-fun b_and!286019 () Bool)

(assert (= b_and!285993 (and (=> t!310366 result!269272) b_and!286019)))

(declare-fun tb!220941 () Bool)

(declare-fun t!310368 () Bool)

(assert (=> (and b!3839840 (= (toChars!8537 (transformation!6262 (rule!9098 (h!46029 prefixTokens!80)))) (toChars!8537 (transformation!6262 (rule!9098 (h!46029 suffixTokens!72))))) t!310368) tb!220941))

(declare-fun result!269274 () Bool)

(assert (= result!269274 result!269272))

(assert (=> b!3840269 t!310368))

(declare-fun b_and!286021 () Bool)

(assert (= b_and!285995 (and (=> t!310368 result!269274) b_and!286021)))

(declare-fun tb!220943 () Bool)

(declare-fun t!310370 () Bool)

(assert (=> (and b!3839846 (= (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 err!4201))))) (toChars!8537 (transformation!6262 (rule!9098 (h!46029 suffixTokens!72))))) t!310370) tb!220943))

(declare-fun result!269276 () Bool)

(assert (= result!269276 result!269272))

(assert (=> b!3840269 t!310370))

(declare-fun b_and!286023 () Bool)

(assert (= b_and!285997 (and (=> t!310370 result!269276) b_and!286023)))

(declare-fun t!310372 () Bool)

(declare-fun tb!220945 () Bool)

(assert (=> (and b!3839860 (= (toChars!8537 (transformation!6262 (rule!9098 (h!46029 suffixTokens!72)))) (toChars!8537 (transformation!6262 (rule!9098 (h!46029 suffixTokens!72))))) t!310372) tb!220945))

(declare-fun result!269278 () Bool)

(assert (= result!269278 result!269272))

(assert (=> b!3840269 t!310372))

(declare-fun b_and!286025 () Bool)

(assert (= b_and!285999 (and (=> t!310372 result!269278) b_and!286025)))

(declare-fun m!4394683 () Bool)

(assert (=> d!1139648 m!4394683))

(declare-fun m!4394685 () Bool)

(assert (=> b!3840269 m!4394685))

(assert (=> b!3840269 m!4394685))

(declare-fun m!4394687 () Bool)

(assert (=> b!3840269 m!4394687))

(declare-fun m!4394689 () Bool)

(assert (=> b!3840270 m!4394689))

(assert (=> b!3839856 d!1139648))

(declare-fun d!1139650 () Bool)

(assert (=> d!1139650 (= (inv!54753 (tag!7122 (rule!9098 (h!46029 suffixTokens!72)))) (= (mod (str.len (value!199100 (tag!7122 (rule!9098 (h!46029 suffixTokens!72))))) 2) 0))))

(assert (=> b!3839836 d!1139650))

(declare-fun d!1139652 () Bool)

(declare-fun res!1554315 () Bool)

(declare-fun e!2372288 () Bool)

(assert (=> d!1139652 (=> (not res!1554315) (not e!2372288))))

(assert (=> d!1139652 (= res!1554315 (semiInverseModEq!2685 (toChars!8537 (transformation!6262 (rule!9098 (h!46029 suffixTokens!72)))) (toValue!8678 (transformation!6262 (rule!9098 (h!46029 suffixTokens!72))))))))

(assert (=> d!1139652 (= (inv!54756 (transformation!6262 (rule!9098 (h!46029 suffixTokens!72)))) e!2372288)))

(declare-fun b!3840287 () Bool)

(assert (=> b!3840287 (= e!2372288 (equivClasses!2584 (toChars!8537 (transformation!6262 (rule!9098 (h!46029 suffixTokens!72)))) (toValue!8678 (transformation!6262 (rule!9098 (h!46029 suffixTokens!72))))))))

(assert (= (and d!1139652 res!1554315) b!3840287))

(declare-fun m!4394691 () Bool)

(assert (=> d!1139652 m!4394691))

(declare-fun m!4394693 () Bool)

(assert (=> b!3840287 m!4394693))

(assert (=> b!3839836 d!1139652))

(declare-fun d!1139654 () Bool)

(declare-fun lt!1332761 () Int)

(assert (=> d!1139654 (>= lt!1332761 0)))

(declare-fun e!2372289 () Int)

(assert (=> d!1139654 (= lt!1332761 e!2372289)))

(declare-fun c!669369 () Bool)

(assert (=> d!1139654 (= c!669369 ((_ is Nil!40607) (originalCharacters!6862 (_1!23023 (v!38971 lt!1332620)))))))

(assert (=> d!1139654 (= (size!30568 (originalCharacters!6862 (_1!23023 (v!38971 lt!1332620)))) lt!1332761)))

(declare-fun b!3840288 () Bool)

(assert (=> b!3840288 (= e!2372289 0)))

(declare-fun b!3840289 () Bool)

(assert (=> b!3840289 (= e!2372289 (+ 1 (size!30568 (t!310260 (originalCharacters!6862 (_1!23023 (v!38971 lt!1332620)))))))))

(assert (= (and d!1139654 c!669369) b!3840288))

(assert (= (and d!1139654 (not c!669369)) b!3840289))

(declare-fun m!4394695 () Bool)

(assert (=> b!3840289 m!4394695))

(assert (=> b!3839866 d!1139654))

(declare-fun d!1139656 () Bool)

(assert (=> d!1139656 (= (isEmpty!23996 rules!2768) ((_ is Nil!40608) rules!2768))))

(assert (=> b!3839845 d!1139656))

(declare-fun d!1139658 () Bool)

(assert (=> d!1139658 (= (inv!54753 (tag!7122 (h!46028 rules!2768))) (= (mod (str.len (value!199100 (tag!7122 (h!46028 rules!2768)))) 2) 0))))

(assert (=> b!3839844 d!1139658))

(declare-fun d!1139660 () Bool)

(declare-fun res!1554316 () Bool)

(declare-fun e!2372290 () Bool)

(assert (=> d!1139660 (=> (not res!1554316) (not e!2372290))))

(assert (=> d!1139660 (= res!1554316 (semiInverseModEq!2685 (toChars!8537 (transformation!6262 (h!46028 rules!2768))) (toValue!8678 (transformation!6262 (h!46028 rules!2768)))))))

(assert (=> d!1139660 (= (inv!54756 (transformation!6262 (h!46028 rules!2768))) e!2372290)))

(declare-fun b!3840290 () Bool)

(assert (=> b!3840290 (= e!2372290 (equivClasses!2584 (toChars!8537 (transformation!6262 (h!46028 rules!2768))) (toValue!8678 (transformation!6262 (h!46028 rules!2768)))))))

(assert (= (and d!1139660 res!1554316) b!3840290))

(declare-fun m!4394697 () Bool)

(assert (=> d!1139660 m!4394697))

(declare-fun m!4394699 () Bool)

(assert (=> b!3840290 m!4394699))

(assert (=> b!3839844 d!1139660))

(declare-fun d!1139662 () Bool)

(declare-fun e!2372291 () Bool)

(assert (=> d!1139662 e!2372291))

(declare-fun res!1554317 () Bool)

(assert (=> d!1139662 (=> (not res!1554317) (not e!2372291))))

(declare-fun lt!1332762 () List!40733)

(assert (=> d!1139662 (= res!1554317 (= (content!6035 lt!1332762) ((_ map or) (content!6035 (Cons!40609 (_1!23023 (v!38971 lt!1332620)) Nil!40609)) (content!6035 (_1!23024 lt!1332621)))))))

(declare-fun e!2372292 () List!40733)

(assert (=> d!1139662 (= lt!1332762 e!2372292)))

(declare-fun c!669370 () Bool)

(assert (=> d!1139662 (= c!669370 ((_ is Nil!40609) (Cons!40609 (_1!23023 (v!38971 lt!1332620)) Nil!40609)))))

(assert (=> d!1139662 (= (++!10281 (Cons!40609 (_1!23023 (v!38971 lt!1332620)) Nil!40609) (_1!23024 lt!1332621)) lt!1332762)))

(declare-fun b!3840293 () Bool)

(declare-fun res!1554318 () Bool)

(assert (=> b!3840293 (=> (not res!1554318) (not e!2372291))))

(assert (=> b!3840293 (= res!1554318 (= (size!30570 lt!1332762) (+ (size!30570 (Cons!40609 (_1!23023 (v!38971 lt!1332620)) Nil!40609)) (size!30570 (_1!23024 lt!1332621)))))))

(declare-fun b!3840291 () Bool)

(assert (=> b!3840291 (= e!2372292 (_1!23024 lt!1332621))))

(declare-fun b!3840294 () Bool)

(assert (=> b!3840294 (= e!2372291 (or (not (= (_1!23024 lt!1332621) Nil!40609)) (= lt!1332762 (Cons!40609 (_1!23023 (v!38971 lt!1332620)) Nil!40609))))))

(declare-fun b!3840292 () Bool)

(assert (=> b!3840292 (= e!2372292 (Cons!40609 (h!46029 (Cons!40609 (_1!23023 (v!38971 lt!1332620)) Nil!40609)) (++!10281 (t!310262 (Cons!40609 (_1!23023 (v!38971 lt!1332620)) Nil!40609)) (_1!23024 lt!1332621))))))

(assert (= (and d!1139662 c!669370) b!3840291))

(assert (= (and d!1139662 (not c!669370)) b!3840292))

(assert (= (and d!1139662 res!1554317) b!3840293))

(assert (= (and b!3840293 res!1554318) b!3840294))

(declare-fun m!4394701 () Bool)

(assert (=> d!1139662 m!4394701))

(declare-fun m!4394703 () Bool)

(assert (=> d!1139662 m!4394703))

(declare-fun m!4394705 () Bool)

(assert (=> d!1139662 m!4394705))

(declare-fun m!4394707 () Bool)

(assert (=> b!3840293 m!4394707))

(declare-fun m!4394709 () Bool)

(assert (=> b!3840293 m!4394709))

(declare-fun m!4394711 () Bool)

(assert (=> b!3840293 m!4394711))

(declare-fun m!4394713 () Bool)

(assert (=> b!3840292 m!4394713))

(assert (=> b!3839855 d!1139662))

(declare-fun b!3840313 () Bool)

(declare-fun res!1554333 () Bool)

(declare-fun e!2372299 () Bool)

(assert (=> b!3840313 (=> (not res!1554333) (not e!2372299))))

(declare-fun lt!1332775 () Option!8680)

(declare-fun matchR!5336 (Regex!11167 List!40731) Bool)

(declare-fun get!13455 (Option!8680) tuple2!39778)

(assert (=> b!3840313 (= res!1554333 (matchR!5336 (regex!6262 (rule!9098 (_1!23023 (get!13455 lt!1332775)))) (list!15124 (charsOf!4090 (_1!23023 (get!13455 lt!1332775))))))))

(declare-fun b!3840314 () Bool)

(declare-fun e!2372301 () Bool)

(assert (=> b!3840314 (= e!2372301 e!2372299)))

(declare-fun res!1554337 () Bool)

(assert (=> b!3840314 (=> (not res!1554337) (not e!2372299))))

(declare-fun isDefined!6825 (Option!8680) Bool)

(assert (=> b!3840314 (= res!1554337 (isDefined!6825 lt!1332775))))

(declare-fun bm!281930 () Bool)

(declare-fun call!281935 () Option!8680)

(assert (=> bm!281930 (= call!281935 (maxPrefixOneRule!2239 thiss!20629 (h!46028 (t!310261 rules!2768)) lt!1332613))))

(declare-fun b!3840315 () Bool)

(declare-fun e!2372300 () Option!8680)

(declare-fun lt!1332776 () Option!8680)

(declare-fun lt!1332774 () Option!8680)

(assert (=> b!3840315 (= e!2372300 (ite (and ((_ is None!8679) lt!1332776) ((_ is None!8679) lt!1332774)) None!8679 (ite ((_ is None!8679) lt!1332774) lt!1332776 (ite ((_ is None!8679) lt!1332776) lt!1332774 (ite (>= (size!30567 (_1!23023 (v!38971 lt!1332776))) (size!30567 (_1!23023 (v!38971 lt!1332774)))) lt!1332776 lt!1332774)))))))

(assert (=> b!3840315 (= lt!1332776 call!281935)))

(assert (=> b!3840315 (= lt!1332774 (maxPrefix!3155 thiss!20629 (t!310261 (t!310261 rules!2768)) lt!1332613))))

(declare-fun b!3840316 () Bool)

(declare-fun res!1554336 () Bool)

(assert (=> b!3840316 (=> (not res!1554336) (not e!2372299))))

(assert (=> b!3840316 (= res!1554336 (= (list!15124 (charsOf!4090 (_1!23023 (get!13455 lt!1332775)))) (originalCharacters!6862 (_1!23023 (get!13455 lt!1332775)))))))

(declare-fun b!3840317 () Bool)

(assert (=> b!3840317 (= e!2372300 call!281935)))

(declare-fun b!3840318 () Bool)

(assert (=> b!3840318 (= e!2372299 (contains!8230 (t!310261 rules!2768) (rule!9098 (_1!23023 (get!13455 lt!1332775)))))))

(declare-fun b!3840319 () Bool)

(declare-fun res!1554339 () Bool)

(assert (=> b!3840319 (=> (not res!1554339) (not e!2372299))))

(assert (=> b!3840319 (= res!1554339 (= (value!199101 (_1!23023 (get!13455 lt!1332775))) (apply!9505 (transformation!6262 (rule!9098 (_1!23023 (get!13455 lt!1332775)))) (seqFromList!4533 (originalCharacters!6862 (_1!23023 (get!13455 lt!1332775)))))))))

(declare-fun d!1139664 () Bool)

(assert (=> d!1139664 e!2372301))

(declare-fun res!1554334 () Bool)

(assert (=> d!1139664 (=> res!1554334 e!2372301)))

(declare-fun isEmpty!24000 (Option!8680) Bool)

(assert (=> d!1139664 (= res!1554334 (isEmpty!24000 lt!1332775))))

(assert (=> d!1139664 (= lt!1332775 e!2372300)))

(declare-fun c!669373 () Bool)

(assert (=> d!1139664 (= c!669373 (and ((_ is Cons!40608) (t!310261 rules!2768)) ((_ is Nil!40608) (t!310261 (t!310261 rules!2768)))))))

(declare-fun lt!1332777 () Unit!58320)

(declare-fun lt!1332773 () Unit!58320)

(assert (=> d!1139664 (= lt!1332777 lt!1332773)))

(assert (=> d!1139664 (isPrefix!3361 lt!1332613 lt!1332613)))

(assert (=> d!1139664 (= lt!1332773 (lemmaIsPrefixRefl!2134 lt!1332613 lt!1332613))))

(assert (=> d!1139664 (rulesValidInductive!2212 thiss!20629 (t!310261 rules!2768))))

(assert (=> d!1139664 (= (maxPrefix!3155 thiss!20629 (t!310261 rules!2768) lt!1332613) lt!1332775)))

(declare-fun b!3840320 () Bool)

(declare-fun res!1554338 () Bool)

(assert (=> b!3840320 (=> (not res!1554338) (not e!2372299))))

(assert (=> b!3840320 (= res!1554338 (= (++!10282 (list!15124 (charsOf!4090 (_1!23023 (get!13455 lt!1332775)))) (_2!23023 (get!13455 lt!1332775))) lt!1332613))))

(declare-fun b!3840321 () Bool)

(declare-fun res!1554335 () Bool)

(assert (=> b!3840321 (=> (not res!1554335) (not e!2372299))))

(assert (=> b!3840321 (= res!1554335 (< (size!30568 (_2!23023 (get!13455 lt!1332775))) (size!30568 lt!1332613)))))

(assert (= (and d!1139664 c!669373) b!3840317))

(assert (= (and d!1139664 (not c!669373)) b!3840315))

(assert (= (or b!3840317 b!3840315) bm!281930))

(assert (= (and d!1139664 (not res!1554334)) b!3840314))

(assert (= (and b!3840314 res!1554337) b!3840316))

(assert (= (and b!3840316 res!1554336) b!3840321))

(assert (= (and b!3840321 res!1554335) b!3840320))

(assert (= (and b!3840320 res!1554338) b!3840319))

(assert (= (and b!3840319 res!1554339) b!3840313))

(assert (= (and b!3840313 res!1554333) b!3840318))

(declare-fun m!4394715 () Bool)

(assert (=> bm!281930 m!4394715))

(declare-fun m!4394717 () Bool)

(assert (=> d!1139664 m!4394717))

(assert (=> d!1139664 m!4394093))

(assert (=> d!1139664 m!4394095))

(assert (=> d!1139664 m!4394473))

(declare-fun m!4394719 () Bool)

(assert (=> b!3840321 m!4394719))

(declare-fun m!4394721 () Bool)

(assert (=> b!3840321 m!4394721))

(assert (=> b!3840321 m!4394345))

(assert (=> b!3840319 m!4394719))

(declare-fun m!4394723 () Bool)

(assert (=> b!3840319 m!4394723))

(assert (=> b!3840319 m!4394723))

(declare-fun m!4394725 () Bool)

(assert (=> b!3840319 m!4394725))

(assert (=> b!3840316 m!4394719))

(declare-fun m!4394727 () Bool)

(assert (=> b!3840316 m!4394727))

(assert (=> b!3840316 m!4394727))

(declare-fun m!4394729 () Bool)

(assert (=> b!3840316 m!4394729))

(assert (=> b!3840318 m!4394719))

(declare-fun m!4394731 () Bool)

(assert (=> b!3840318 m!4394731))

(assert (=> b!3840320 m!4394719))

(assert (=> b!3840320 m!4394727))

(assert (=> b!3840320 m!4394727))

(assert (=> b!3840320 m!4394729))

(assert (=> b!3840320 m!4394729))

(declare-fun m!4394733 () Bool)

(assert (=> b!3840320 m!4394733))

(declare-fun m!4394735 () Bool)

(assert (=> b!3840315 m!4394735))

(assert (=> b!3840313 m!4394719))

(assert (=> b!3840313 m!4394727))

(assert (=> b!3840313 m!4394727))

(assert (=> b!3840313 m!4394729))

(assert (=> b!3840313 m!4394729))

(declare-fun m!4394737 () Bool)

(assert (=> b!3840313 m!4394737))

(declare-fun m!4394739 () Bool)

(assert (=> b!3840314 m!4394739))

(assert (=> b!3839854 d!1139664))

(declare-fun d!1139666 () Bool)

(assert (=> d!1139666 (= (inv!54753 (tag!7122 (rule!9098 (_1!23023 (v!38971 err!4201))))) (= (mod (str.len (value!199100 (tag!7122 (rule!9098 (_1!23023 (v!38971 err!4201)))))) 2) 0))))

(assert (=> b!3839833 d!1139666))

(declare-fun d!1139668 () Bool)

(declare-fun res!1554340 () Bool)

(declare-fun e!2372302 () Bool)

(assert (=> d!1139668 (=> (not res!1554340) (not e!2372302))))

(assert (=> d!1139668 (= res!1554340 (semiInverseModEq!2685 (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 err!4201))))) (toValue!8678 (transformation!6262 (rule!9098 (_1!23023 (v!38971 err!4201)))))))))

(assert (=> d!1139668 (= (inv!54756 (transformation!6262 (rule!9098 (_1!23023 (v!38971 err!4201))))) e!2372302)))

(declare-fun b!3840322 () Bool)

(assert (=> b!3840322 (= e!2372302 (equivClasses!2584 (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 err!4201))))) (toValue!8678 (transformation!6262 (rule!9098 (_1!23023 (v!38971 err!4201)))))))))

(assert (= (and d!1139668 res!1554340) b!3840322))

(declare-fun m!4394741 () Bool)

(assert (=> d!1139668 m!4394741))

(declare-fun m!4394743 () Bool)

(assert (=> b!3840322 m!4394743))

(assert (=> b!3839833 d!1139668))

(declare-fun b!3840323 () Bool)

(declare-fun res!1554341 () Bool)

(declare-fun e!2372303 () Bool)

(assert (=> b!3840323 (=> (not res!1554341) (not e!2372303))))

(declare-fun lt!1332780 () Option!8680)

(assert (=> b!3840323 (= res!1554341 (matchR!5336 (regex!6262 (rule!9098 (_1!23023 (get!13455 lt!1332780)))) (list!15124 (charsOf!4090 (_1!23023 (get!13455 lt!1332780))))))))

(declare-fun b!3840324 () Bool)

(declare-fun e!2372305 () Bool)

(assert (=> b!3840324 (= e!2372305 e!2372303)))

(declare-fun res!1554345 () Bool)

(assert (=> b!3840324 (=> (not res!1554345) (not e!2372303))))

(assert (=> b!3840324 (= res!1554345 (isDefined!6825 lt!1332780))))

(declare-fun call!281936 () Option!8680)

(declare-fun bm!281931 () Bool)

(assert (=> bm!281931 (= call!281936 (maxPrefixOneRule!2239 thiss!20629 (h!46028 rules!2768) lt!1332613))))

(declare-fun b!3840325 () Bool)

(declare-fun e!2372304 () Option!8680)

(declare-fun lt!1332781 () Option!8680)

(declare-fun lt!1332779 () Option!8680)

(assert (=> b!3840325 (= e!2372304 (ite (and ((_ is None!8679) lt!1332781) ((_ is None!8679) lt!1332779)) None!8679 (ite ((_ is None!8679) lt!1332779) lt!1332781 (ite ((_ is None!8679) lt!1332781) lt!1332779 (ite (>= (size!30567 (_1!23023 (v!38971 lt!1332781))) (size!30567 (_1!23023 (v!38971 lt!1332779)))) lt!1332781 lt!1332779)))))))

(assert (=> b!3840325 (= lt!1332781 call!281936)))

(assert (=> b!3840325 (= lt!1332779 (maxPrefix!3155 thiss!20629 (t!310261 rules!2768) lt!1332613))))

(declare-fun b!3840326 () Bool)

(declare-fun res!1554344 () Bool)

(assert (=> b!3840326 (=> (not res!1554344) (not e!2372303))))

(assert (=> b!3840326 (= res!1554344 (= (list!15124 (charsOf!4090 (_1!23023 (get!13455 lt!1332780)))) (originalCharacters!6862 (_1!23023 (get!13455 lt!1332780)))))))

(declare-fun b!3840327 () Bool)

(assert (=> b!3840327 (= e!2372304 call!281936)))

(declare-fun b!3840328 () Bool)

(assert (=> b!3840328 (= e!2372303 (contains!8230 rules!2768 (rule!9098 (_1!23023 (get!13455 lt!1332780)))))))

(declare-fun b!3840329 () Bool)

(declare-fun res!1554347 () Bool)

(assert (=> b!3840329 (=> (not res!1554347) (not e!2372303))))

(assert (=> b!3840329 (= res!1554347 (= (value!199101 (_1!23023 (get!13455 lt!1332780))) (apply!9505 (transformation!6262 (rule!9098 (_1!23023 (get!13455 lt!1332780)))) (seqFromList!4533 (originalCharacters!6862 (_1!23023 (get!13455 lt!1332780)))))))))

(declare-fun d!1139670 () Bool)

(assert (=> d!1139670 e!2372305))

(declare-fun res!1554342 () Bool)

(assert (=> d!1139670 (=> res!1554342 e!2372305)))

(assert (=> d!1139670 (= res!1554342 (isEmpty!24000 lt!1332780))))

(assert (=> d!1139670 (= lt!1332780 e!2372304)))

(declare-fun c!669374 () Bool)

(assert (=> d!1139670 (= c!669374 (and ((_ is Cons!40608) rules!2768) ((_ is Nil!40608) (t!310261 rules!2768))))))

(declare-fun lt!1332782 () Unit!58320)

(declare-fun lt!1332778 () Unit!58320)

(assert (=> d!1139670 (= lt!1332782 lt!1332778)))

(assert (=> d!1139670 (isPrefix!3361 lt!1332613 lt!1332613)))

(assert (=> d!1139670 (= lt!1332778 (lemmaIsPrefixRefl!2134 lt!1332613 lt!1332613))))

(assert (=> d!1139670 (rulesValidInductive!2212 thiss!20629 rules!2768)))

(assert (=> d!1139670 (= (maxPrefix!3155 thiss!20629 rules!2768 lt!1332613) lt!1332780)))

(declare-fun b!3840330 () Bool)

(declare-fun res!1554346 () Bool)

(assert (=> b!3840330 (=> (not res!1554346) (not e!2372303))))

(assert (=> b!3840330 (= res!1554346 (= (++!10282 (list!15124 (charsOf!4090 (_1!23023 (get!13455 lt!1332780)))) (_2!23023 (get!13455 lt!1332780))) lt!1332613))))

(declare-fun b!3840331 () Bool)

(declare-fun res!1554343 () Bool)

(assert (=> b!3840331 (=> (not res!1554343) (not e!2372303))))

(assert (=> b!3840331 (= res!1554343 (< (size!30568 (_2!23023 (get!13455 lt!1332780))) (size!30568 lt!1332613)))))

(assert (= (and d!1139670 c!669374) b!3840327))

(assert (= (and d!1139670 (not c!669374)) b!3840325))

(assert (= (or b!3840327 b!3840325) bm!281931))

(assert (= (and d!1139670 (not res!1554342)) b!3840324))

(assert (= (and b!3840324 res!1554345) b!3840326))

(assert (= (and b!3840326 res!1554344) b!3840331))

(assert (= (and b!3840331 res!1554343) b!3840330))

(assert (= (and b!3840330 res!1554346) b!3840329))

(assert (= (and b!3840329 res!1554347) b!3840323))

(assert (= (and b!3840323 res!1554341) b!3840328))

(assert (=> bm!281931 m!4394105))

(declare-fun m!4394745 () Bool)

(assert (=> d!1139670 m!4394745))

(assert (=> d!1139670 m!4394093))

(assert (=> d!1139670 m!4394095))

(assert (=> d!1139670 m!4394091))

(declare-fun m!4394747 () Bool)

(assert (=> b!3840331 m!4394747))

(declare-fun m!4394749 () Bool)

(assert (=> b!3840331 m!4394749))

(assert (=> b!3840331 m!4394345))

(assert (=> b!3840329 m!4394747))

(declare-fun m!4394751 () Bool)

(assert (=> b!3840329 m!4394751))

(assert (=> b!3840329 m!4394751))

(declare-fun m!4394753 () Bool)

(assert (=> b!3840329 m!4394753))

(assert (=> b!3840326 m!4394747))

(declare-fun m!4394755 () Bool)

(assert (=> b!3840326 m!4394755))

(assert (=> b!3840326 m!4394755))

(declare-fun m!4394757 () Bool)

(assert (=> b!3840326 m!4394757))

(assert (=> b!3840328 m!4394747))

(declare-fun m!4394759 () Bool)

(assert (=> b!3840328 m!4394759))

(assert (=> b!3840330 m!4394747))

(assert (=> b!3840330 m!4394755))

(assert (=> b!3840330 m!4394755))

(assert (=> b!3840330 m!4394757))

(assert (=> b!3840330 m!4394757))

(declare-fun m!4394761 () Bool)

(assert (=> b!3840330 m!4394761))

(assert (=> b!3840325 m!4394133))

(assert (=> b!3840323 m!4394747))

(assert (=> b!3840323 m!4394755))

(assert (=> b!3840323 m!4394755))

(assert (=> b!3840323 m!4394757))

(assert (=> b!3840323 m!4394757))

(declare-fun m!4394763 () Bool)

(assert (=> b!3840323 m!4394763))

(declare-fun m!4394765 () Bool)

(assert (=> b!3840324 m!4394765))

(assert (=> b!3839864 d!1139670))

(declare-fun b!3840350 () Bool)

(declare-fun res!1554362 () Bool)

(declare-fun e!2372314 () Bool)

(assert (=> b!3840350 (=> (not res!1554362) (not e!2372314))))

(declare-fun lt!1332794 () Option!8680)

(assert (=> b!3840350 (= res!1554362 (< (size!30568 (_2!23023 (get!13455 lt!1332794))) (size!30568 lt!1332613)))))

(declare-fun b!3840351 () Bool)

(declare-fun e!2372317 () Option!8680)

(declare-datatypes ((tuple2!39784 0))(
  ( (tuple2!39785 (_1!23026 List!40731) (_2!23026 List!40731)) )
))
(declare-fun lt!1332795 () tuple2!39784)

(declare-fun size!30572 (BalanceConc!24540) Int)

(assert (=> b!3840351 (= e!2372317 (Some!8679 (tuple2!39779 (Token!11663 (apply!9505 (transformation!6262 (h!46028 rules!2768)) (seqFromList!4533 (_1!23026 lt!1332795))) (h!46028 rules!2768) (size!30572 (seqFromList!4533 (_1!23026 lt!1332795))) (_1!23026 lt!1332795)) (_2!23026 lt!1332795))))))

(declare-fun lt!1332797 () Unit!58320)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1125 (Regex!11167 List!40731) Unit!58320)

(assert (=> b!3840351 (= lt!1332797 (longestMatchIsAcceptedByMatchOrIsEmpty!1125 (regex!6262 (h!46028 rules!2768)) lt!1332613))))

(declare-fun res!1554364 () Bool)

(declare-fun findLongestMatchInner!1152 (Regex!11167 List!40731 Int List!40731 List!40731 Int) tuple2!39784)

(assert (=> b!3840351 (= res!1554364 (isEmpty!23997 (_1!23026 (findLongestMatchInner!1152 (regex!6262 (h!46028 rules!2768)) Nil!40607 (size!30568 Nil!40607) lt!1332613 lt!1332613 (size!30568 lt!1332613)))))))

(declare-fun e!2372316 () Bool)

(assert (=> b!3840351 (=> res!1554364 e!2372316)))

(assert (=> b!3840351 e!2372316))

(declare-fun lt!1332796 () Unit!58320)

(assert (=> b!3840351 (= lt!1332796 lt!1332797)))

(declare-fun lt!1332793 () Unit!58320)

(declare-fun lemmaSemiInverse!1656 (TokenValueInjection!12412 BalanceConc!24540) Unit!58320)

(assert (=> b!3840351 (= lt!1332793 (lemmaSemiInverse!1656 (transformation!6262 (h!46028 rules!2768)) (seqFromList!4533 (_1!23026 lt!1332795))))))

(declare-fun b!3840352 () Bool)

(declare-fun res!1554363 () Bool)

(assert (=> b!3840352 (=> (not res!1554363) (not e!2372314))))

(assert (=> b!3840352 (= res!1554363 (= (++!10282 (list!15124 (charsOf!4090 (_1!23023 (get!13455 lt!1332794)))) (_2!23023 (get!13455 lt!1332794))) lt!1332613))))

(declare-fun d!1139672 () Bool)

(declare-fun e!2372315 () Bool)

(assert (=> d!1139672 e!2372315))

(declare-fun res!1554368 () Bool)

(assert (=> d!1139672 (=> res!1554368 e!2372315)))

(assert (=> d!1139672 (= res!1554368 (isEmpty!24000 lt!1332794))))

(assert (=> d!1139672 (= lt!1332794 e!2372317)))

(declare-fun c!669377 () Bool)

(assert (=> d!1139672 (= c!669377 (isEmpty!23997 (_1!23026 lt!1332795)))))

(declare-fun findLongestMatch!1065 (Regex!11167 List!40731) tuple2!39784)

(assert (=> d!1139672 (= lt!1332795 (findLongestMatch!1065 (regex!6262 (h!46028 rules!2768)) lt!1332613))))

(assert (=> d!1139672 (ruleValid!2214 thiss!20629 (h!46028 rules!2768))))

(assert (=> d!1139672 (= (maxPrefixOneRule!2239 thiss!20629 (h!46028 rules!2768) lt!1332613) lt!1332794)))

(declare-fun b!3840353 () Bool)

(assert (=> b!3840353 (= e!2372317 None!8679)))

(declare-fun b!3840354 () Bool)

(declare-fun res!1554367 () Bool)

(assert (=> b!3840354 (=> (not res!1554367) (not e!2372314))))

(assert (=> b!3840354 (= res!1554367 (= (value!199101 (_1!23023 (get!13455 lt!1332794))) (apply!9505 (transformation!6262 (rule!9098 (_1!23023 (get!13455 lt!1332794)))) (seqFromList!4533 (originalCharacters!6862 (_1!23023 (get!13455 lt!1332794)))))))))

(declare-fun b!3840355 () Bool)

(assert (=> b!3840355 (= e!2372315 e!2372314)))

(declare-fun res!1554365 () Bool)

(assert (=> b!3840355 (=> (not res!1554365) (not e!2372314))))

(assert (=> b!3840355 (= res!1554365 (matchR!5336 (regex!6262 (h!46028 rules!2768)) (list!15124 (charsOf!4090 (_1!23023 (get!13455 lt!1332794))))))))

(declare-fun b!3840356 () Bool)

(assert (=> b!3840356 (= e!2372314 (= (size!30567 (_1!23023 (get!13455 lt!1332794))) (size!30568 (originalCharacters!6862 (_1!23023 (get!13455 lt!1332794))))))))

(declare-fun b!3840357 () Bool)

(declare-fun res!1554366 () Bool)

(assert (=> b!3840357 (=> (not res!1554366) (not e!2372314))))

(assert (=> b!3840357 (= res!1554366 (= (rule!9098 (_1!23023 (get!13455 lt!1332794))) (h!46028 rules!2768)))))

(declare-fun b!3840358 () Bool)

(assert (=> b!3840358 (= e!2372316 (matchR!5336 (regex!6262 (h!46028 rules!2768)) (_1!23026 (findLongestMatchInner!1152 (regex!6262 (h!46028 rules!2768)) Nil!40607 (size!30568 Nil!40607) lt!1332613 lt!1332613 (size!30568 lt!1332613)))))))

(assert (= (and d!1139672 c!669377) b!3840353))

(assert (= (and d!1139672 (not c!669377)) b!3840351))

(assert (= (and b!3840351 (not res!1554364)) b!3840358))

(assert (= (and d!1139672 (not res!1554368)) b!3840355))

(assert (= (and b!3840355 res!1554365) b!3840352))

(assert (= (and b!3840352 res!1554363) b!3840350))

(assert (= (and b!3840350 res!1554362) b!3840357))

(assert (= (and b!3840357 res!1554366) b!3840354))

(assert (= (and b!3840354 res!1554367) b!3840356))

(declare-fun m!4394767 () Bool)

(assert (=> b!3840351 m!4394767))

(declare-fun m!4394769 () Bool)

(assert (=> b!3840351 m!4394769))

(declare-fun m!4394771 () Bool)

(assert (=> b!3840351 m!4394771))

(declare-fun m!4394773 () Bool)

(assert (=> b!3840351 m!4394773))

(assert (=> b!3840351 m!4394767))

(declare-fun m!4394775 () Bool)

(assert (=> b!3840351 m!4394775))

(declare-fun m!4394777 () Bool)

(assert (=> b!3840351 m!4394777))

(assert (=> b!3840351 m!4394345))

(assert (=> b!3840351 m!4394767))

(declare-fun m!4394779 () Bool)

(assert (=> b!3840351 m!4394779))

(assert (=> b!3840351 m!4394767))

(assert (=> b!3840351 m!4394777))

(assert (=> b!3840351 m!4394345))

(declare-fun m!4394781 () Bool)

(assert (=> b!3840351 m!4394781))

(assert (=> b!3840358 m!4394777))

(assert (=> b!3840358 m!4394345))

(assert (=> b!3840358 m!4394777))

(assert (=> b!3840358 m!4394345))

(assert (=> b!3840358 m!4394781))

(declare-fun m!4394783 () Bool)

(assert (=> b!3840358 m!4394783))

(declare-fun m!4394785 () Bool)

(assert (=> d!1139672 m!4394785))

(declare-fun m!4394787 () Bool)

(assert (=> d!1139672 m!4394787))

(declare-fun m!4394789 () Bool)

(assert (=> d!1139672 m!4394789))

(assert (=> d!1139672 m!4394471))

(declare-fun m!4394791 () Bool)

(assert (=> b!3840355 m!4394791))

(declare-fun m!4394793 () Bool)

(assert (=> b!3840355 m!4394793))

(assert (=> b!3840355 m!4394793))

(declare-fun m!4394795 () Bool)

(assert (=> b!3840355 m!4394795))

(assert (=> b!3840355 m!4394795))

(declare-fun m!4394797 () Bool)

(assert (=> b!3840355 m!4394797))

(assert (=> b!3840356 m!4394791))

(declare-fun m!4394799 () Bool)

(assert (=> b!3840356 m!4394799))

(assert (=> b!3840352 m!4394791))

(assert (=> b!3840352 m!4394793))

(assert (=> b!3840352 m!4394793))

(assert (=> b!3840352 m!4394795))

(assert (=> b!3840352 m!4394795))

(declare-fun m!4394801 () Bool)

(assert (=> b!3840352 m!4394801))

(assert (=> b!3840357 m!4394791))

(assert (=> b!3840354 m!4394791))

(declare-fun m!4394803 () Bool)

(assert (=> b!3840354 m!4394803))

(assert (=> b!3840354 m!4394803))

(declare-fun m!4394805 () Bool)

(assert (=> b!3840354 m!4394805))

(assert (=> b!3840350 m!4394791))

(declare-fun m!4394807 () Bool)

(assert (=> b!3840350 m!4394807))

(assert (=> b!3840350 m!4394345))

(assert (=> bm!281923 d!1139672))

(declare-fun b!3840359 () Bool)

(declare-fun e!2372318 () Bool)

(declare-fun e!2372319 () Bool)

(assert (=> b!3840359 (= e!2372318 e!2372319)))

(declare-fun c!669378 () Bool)

(assert (=> b!3840359 (= c!669378 ((_ is IntegerValue!19477) (value!199101 (_1!23023 (v!38971 err!4201)))))))

(declare-fun b!3840360 () Bool)

(declare-fun e!2372320 () Bool)

(assert (=> b!3840360 (= e!2372320 (inv!15 (value!199101 (_1!23023 (v!38971 err!4201)))))))

(declare-fun b!3840361 () Bool)

(assert (=> b!3840361 (= e!2372319 (inv!17 (value!199101 (_1!23023 (v!38971 err!4201)))))))

(declare-fun b!3840362 () Bool)

(assert (=> b!3840362 (= e!2372318 (inv!16 (value!199101 (_1!23023 (v!38971 err!4201)))))))

(declare-fun d!1139674 () Bool)

(declare-fun c!669379 () Bool)

(assert (=> d!1139674 (= c!669379 ((_ is IntegerValue!19476) (value!199101 (_1!23023 (v!38971 err!4201)))))))

(assert (=> d!1139674 (= (inv!21 (value!199101 (_1!23023 (v!38971 err!4201)))) e!2372318)))

(declare-fun b!3840363 () Bool)

(declare-fun res!1554369 () Bool)

(assert (=> b!3840363 (=> res!1554369 e!2372320)))

(assert (=> b!3840363 (= res!1554369 (not ((_ is IntegerValue!19478) (value!199101 (_1!23023 (v!38971 err!4201))))))))

(assert (=> b!3840363 (= e!2372319 e!2372320)))

(assert (= (and d!1139674 c!669379) b!3840362))

(assert (= (and d!1139674 (not c!669379)) b!3840359))

(assert (= (and b!3840359 c!669378) b!3840361))

(assert (= (and b!3840359 (not c!669378)) b!3840363))

(assert (= (and b!3840363 (not res!1554369)) b!3840360))

(declare-fun m!4394809 () Bool)

(assert (=> b!3840360 m!4394809))

(declare-fun m!4394811 () Bool)

(assert (=> b!3840361 m!4394811))

(declare-fun m!4394813 () Bool)

(assert (=> b!3840362 m!4394813))

(assert (=> b!3839843 d!1139674))

(declare-fun b!3840364 () Bool)

(declare-fun e!2372321 () Bool)

(declare-fun e!2372322 () Bool)

(assert (=> b!3840364 (= e!2372321 e!2372322)))

(declare-fun c!669380 () Bool)

(assert (=> b!3840364 (= c!669380 ((_ is IntegerValue!19477) (value!199101 (h!46029 suffixTokens!72))))))

(declare-fun b!3840365 () Bool)

(declare-fun e!2372323 () Bool)

(assert (=> b!3840365 (= e!2372323 (inv!15 (value!199101 (h!46029 suffixTokens!72))))))

(declare-fun b!3840366 () Bool)

(assert (=> b!3840366 (= e!2372322 (inv!17 (value!199101 (h!46029 suffixTokens!72))))))

(declare-fun b!3840367 () Bool)

(assert (=> b!3840367 (= e!2372321 (inv!16 (value!199101 (h!46029 suffixTokens!72))))))

(declare-fun d!1139676 () Bool)

(declare-fun c!669381 () Bool)

(assert (=> d!1139676 (= c!669381 ((_ is IntegerValue!19476) (value!199101 (h!46029 suffixTokens!72))))))

(assert (=> d!1139676 (= (inv!21 (value!199101 (h!46029 suffixTokens!72))) e!2372321)))

(declare-fun b!3840368 () Bool)

(declare-fun res!1554370 () Bool)

(assert (=> b!3840368 (=> res!1554370 e!2372323)))

(assert (=> b!3840368 (= res!1554370 (not ((_ is IntegerValue!19478) (value!199101 (h!46029 suffixTokens!72)))))))

(assert (=> b!3840368 (= e!2372322 e!2372323)))

(assert (= (and d!1139676 c!669381) b!3840367))

(assert (= (and d!1139676 (not c!669381)) b!3840364))

(assert (= (and b!3840364 c!669380) b!3840366))

(assert (= (and b!3840364 (not c!669380)) b!3840368))

(assert (= (and b!3840368 (not res!1554370)) b!3840365))

(declare-fun m!4394815 () Bool)

(assert (=> b!3840365 m!4394815))

(declare-fun m!4394817 () Bool)

(assert (=> b!3840366 m!4394817))

(declare-fun m!4394819 () Bool)

(assert (=> b!3840367 m!4394819))

(assert (=> b!3839853 d!1139676))

(declare-fun b!3840373 () Bool)

(declare-fun e!2372326 () Bool)

(declare-fun tp!1163064 () Bool)

(assert (=> b!3840373 (= e!2372326 (and tp_is_empty!19305 tp!1163064))))

(assert (=> b!3839852 (= tp!1162970 e!2372326)))

(assert (= (and b!3839852 ((_ is Cons!40607) (originalCharacters!6862 (h!46029 prefixTokens!80)))) b!3840373))

(declare-fun b!3840384 () Bool)

(declare-fun b_free!102349 () Bool)

(declare-fun b_next!103053 () Bool)

(assert (=> b!3840384 (= b_free!102349 (not b_next!103053))))

(declare-fun tb!220947 () Bool)

(declare-fun t!310374 () Bool)

(assert (=> (and b!3840384 (= (toValue!8678 (transformation!6262 (h!46028 (t!310261 rules!2768)))) (toValue!8678 (transformation!6262 (rule!9098 (_1!23023 (v!38971 lt!1332620)))))) t!310374) tb!220947))

(declare-fun result!269284 () Bool)

(assert (= result!269284 result!269252))

(assert (=> d!1139646 t!310374))

(declare-fun b_and!286027 () Bool)

(declare-fun tp!1163073 () Bool)

(assert (=> b!3840384 (= tp!1163073 (and (=> t!310374 result!269284) b_and!286027))))

(declare-fun b_free!102351 () Bool)

(declare-fun b_next!103055 () Bool)

(assert (=> b!3840384 (= b_free!102351 (not b_next!103055))))

(declare-fun t!310376 () Bool)

(declare-fun tb!220949 () Bool)

(assert (=> (and b!3840384 (= (toChars!8537 (transformation!6262 (h!46028 (t!310261 rules!2768)))) (toChars!8537 (transformation!6262 (rule!9098 (h!46029 prefixTokens!80))))) t!310376) tb!220949))

(declare-fun result!269286 () Bool)

(assert (= result!269286 result!269164))

(assert (=> b!3839924 t!310376))

(declare-fun tb!220951 () Bool)

(declare-fun t!310378 () Bool)

(assert (=> (and b!3840384 (= (toChars!8537 (transformation!6262 (h!46028 (t!310261 rules!2768)))) (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 err!4201)))))) t!310378) tb!220951))

(declare-fun result!269288 () Bool)

(assert (= result!269288 result!269192))

(assert (=> b!3840123 t!310378))

(declare-fun t!310380 () Bool)

(declare-fun tb!220953 () Bool)

(assert (=> (and b!3840384 (= (toChars!8537 (transformation!6262 (h!46028 (t!310261 rules!2768)))) (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 lt!1332620)))))) t!310380) tb!220953))

(declare-fun result!269290 () Bool)

(assert (= result!269290 result!269220))

(assert (=> d!1139638 t!310380))

(declare-fun tb!220955 () Bool)

(declare-fun t!310382 () Bool)

(assert (=> (and b!3840384 (= (toChars!8537 (transformation!6262 (h!46028 (t!310261 rules!2768)))) (toChars!8537 (transformation!6262 (rule!9098 (h!46029 suffixTokens!72))))) t!310382) tb!220955))

(declare-fun result!269292 () Bool)

(assert (= result!269292 result!269272))

(assert (=> b!3840269 t!310382))

(declare-fun tp!1163075 () Bool)

(declare-fun b_and!286029 () Bool)

(assert (=> b!3840384 (= tp!1163075 (and (=> t!310376 result!269286) (=> t!310378 result!269288) (=> t!310380 result!269290) (=> t!310382 result!269292) b_and!286029))))

(declare-fun e!2372338 () Bool)

(assert (=> b!3840384 (= e!2372338 (and tp!1163073 tp!1163075))))

(declare-fun e!2372336 () Bool)

(declare-fun tp!1163076 () Bool)

(declare-fun b!3840383 () Bool)

(assert (=> b!3840383 (= e!2372336 (and tp!1163076 (inv!54753 (tag!7122 (h!46028 (t!310261 rules!2768)))) (inv!54756 (transformation!6262 (h!46028 (t!310261 rules!2768)))) e!2372338))))

(declare-fun b!3840382 () Bool)

(declare-fun e!2372335 () Bool)

(declare-fun tp!1163074 () Bool)

(assert (=> b!3840382 (= e!2372335 (and e!2372336 tp!1163074))))

(assert (=> b!3839832 (= tp!1162964 e!2372335)))

(assert (= b!3840383 b!3840384))

(assert (= b!3840382 b!3840383))

(assert (= (and b!3839832 ((_ is Cons!40608) (t!310261 rules!2768))) b!3840382))

(declare-fun m!4394821 () Bool)

(assert (=> b!3840383 m!4394821))

(declare-fun m!4394823 () Bool)

(assert (=> b!3840383 m!4394823))

(declare-fun b!3840385 () Bool)

(declare-fun e!2372339 () Bool)

(declare-fun tp!1163077 () Bool)

(assert (=> b!3840385 (= e!2372339 (and tp_is_empty!19305 tp!1163077))))

(assert (=> b!3839863 (= tp!1162977 e!2372339)))

(assert (= (and b!3839863 ((_ is Cons!40607) (t!310260 suffixResult!91))) b!3840385))

(declare-fun b!3840399 () Bool)

(declare-fun b_free!102353 () Bool)

(declare-fun b_next!103057 () Bool)

(assert (=> b!3840399 (= b_free!102353 (not b_next!103057))))

(declare-fun tb!220957 () Bool)

(declare-fun t!310384 () Bool)

(assert (=> (and b!3840399 (= (toValue!8678 (transformation!6262 (rule!9098 (h!46029 (t!310262 prefixTokens!80))))) (toValue!8678 (transformation!6262 (rule!9098 (_1!23023 (v!38971 lt!1332620)))))) t!310384) tb!220957))

(declare-fun result!269296 () Bool)

(assert (= result!269296 result!269252))

(assert (=> d!1139646 t!310384))

(declare-fun tp!1163089 () Bool)

(declare-fun b_and!286031 () Bool)

(assert (=> b!3840399 (= tp!1163089 (and (=> t!310384 result!269296) b_and!286031))))

(declare-fun b_free!102355 () Bool)

(declare-fun b_next!103059 () Bool)

(assert (=> b!3840399 (= b_free!102355 (not b_next!103059))))

(declare-fun t!310386 () Bool)

(declare-fun tb!220959 () Bool)

(assert (=> (and b!3840399 (= (toChars!8537 (transformation!6262 (rule!9098 (h!46029 (t!310262 prefixTokens!80))))) (toChars!8537 (transformation!6262 (rule!9098 (h!46029 prefixTokens!80))))) t!310386) tb!220959))

(declare-fun result!269298 () Bool)

(assert (= result!269298 result!269164))

(assert (=> b!3839924 t!310386))

(declare-fun t!310388 () Bool)

(declare-fun tb!220961 () Bool)

(assert (=> (and b!3840399 (= (toChars!8537 (transformation!6262 (rule!9098 (h!46029 (t!310262 prefixTokens!80))))) (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 err!4201)))))) t!310388) tb!220961))

(declare-fun result!269300 () Bool)

(assert (= result!269300 result!269192))

(assert (=> b!3840123 t!310388))

(declare-fun tb!220963 () Bool)

(declare-fun t!310390 () Bool)

(assert (=> (and b!3840399 (= (toChars!8537 (transformation!6262 (rule!9098 (h!46029 (t!310262 prefixTokens!80))))) (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 lt!1332620)))))) t!310390) tb!220963))

(declare-fun result!269302 () Bool)

(assert (= result!269302 result!269220))

(assert (=> d!1139638 t!310390))

(declare-fun t!310392 () Bool)

(declare-fun tb!220965 () Bool)

(assert (=> (and b!3840399 (= (toChars!8537 (transformation!6262 (rule!9098 (h!46029 (t!310262 prefixTokens!80))))) (toChars!8537 (transformation!6262 (rule!9098 (h!46029 suffixTokens!72))))) t!310392) tb!220965))

(declare-fun result!269304 () Bool)

(assert (= result!269304 result!269272))

(assert (=> b!3840269 t!310392))

(declare-fun b_and!286033 () Bool)

(declare-fun tp!1163090 () Bool)

(assert (=> b!3840399 (= tp!1163090 (and (=> t!310386 result!269298) (=> t!310388 result!269300) (=> t!310390 result!269302) (=> t!310392 result!269304) b_and!286033))))

(declare-fun e!2372356 () Bool)

(assert (=> b!3840399 (= e!2372356 (and tp!1163089 tp!1163090))))

(declare-fun e!2372353 () Bool)

(declare-fun tp!1163091 () Bool)

(declare-fun e!2372352 () Bool)

(declare-fun b!3840396 () Bool)

(assert (=> b!3840396 (= e!2372353 (and (inv!54757 (h!46029 (t!310262 prefixTokens!80))) e!2372352 tp!1163091))))

(assert (=> b!3839842 (= tp!1162978 e!2372353)))

(declare-fun tp!1163088 () Bool)

(declare-fun b!3840397 () Bool)

(declare-fun e!2372354 () Bool)

(assert (=> b!3840397 (= e!2372352 (and (inv!21 (value!199101 (h!46029 (t!310262 prefixTokens!80)))) e!2372354 tp!1163088))))

(declare-fun tp!1163092 () Bool)

(declare-fun b!3840398 () Bool)

(assert (=> b!3840398 (= e!2372354 (and tp!1163092 (inv!54753 (tag!7122 (rule!9098 (h!46029 (t!310262 prefixTokens!80))))) (inv!54756 (transformation!6262 (rule!9098 (h!46029 (t!310262 prefixTokens!80))))) e!2372356))))

(assert (= b!3840398 b!3840399))

(assert (= b!3840397 b!3840398))

(assert (= b!3840396 b!3840397))

(assert (= (and b!3839842 ((_ is Cons!40609) (t!310262 prefixTokens!80))) b!3840396))

(declare-fun m!4394825 () Bool)

(assert (=> b!3840396 m!4394825))

(declare-fun m!4394827 () Bool)

(assert (=> b!3840397 m!4394827))

(declare-fun m!4394829 () Bool)

(assert (=> b!3840398 m!4394829))

(declare-fun m!4394831 () Bool)

(assert (=> b!3840398 m!4394831))

(declare-fun b!3840400 () Bool)

(declare-fun e!2372358 () Bool)

(declare-fun tp!1163093 () Bool)

(assert (=> b!3840400 (= e!2372358 (and tp_is_empty!19305 tp!1163093))))

(assert (=> b!3839851 (= tp!1162969 e!2372358)))

(assert (= (and b!3839851 ((_ is Cons!40607) (t!310260 prefix!426))) b!3840400))

(declare-fun e!2372361 () Bool)

(assert (=> b!3839850 (= tp!1162968 e!2372361)))

(declare-fun b!3840414 () Bool)

(declare-fun tp!1163105 () Bool)

(declare-fun tp!1163104 () Bool)

(assert (=> b!3840414 (= e!2372361 (and tp!1163105 tp!1163104))))

(declare-fun b!3840411 () Bool)

(assert (=> b!3840411 (= e!2372361 tp_is_empty!19305)))

(declare-fun b!3840413 () Bool)

(declare-fun tp!1163107 () Bool)

(assert (=> b!3840413 (= e!2372361 tp!1163107)))

(declare-fun b!3840412 () Bool)

(declare-fun tp!1163106 () Bool)

(declare-fun tp!1163108 () Bool)

(assert (=> b!3840412 (= e!2372361 (and tp!1163106 tp!1163108))))

(assert (= (and b!3839850 ((_ is ElementMatch!11167) (regex!6262 (rule!9098 (h!46029 prefixTokens!80))))) b!3840411))

(assert (= (and b!3839850 ((_ is Concat!17660) (regex!6262 (rule!9098 (h!46029 prefixTokens!80))))) b!3840412))

(assert (= (and b!3839850 ((_ is Star!11167) (regex!6262 (rule!9098 (h!46029 prefixTokens!80))))) b!3840413))

(assert (= (and b!3839850 ((_ is Union!11167) (regex!6262 (rule!9098 (h!46029 prefixTokens!80))))) b!3840414))

(declare-fun b!3840415 () Bool)

(declare-fun e!2372362 () Bool)

(declare-fun tp!1163109 () Bool)

(assert (=> b!3840415 (= e!2372362 (and tp_is_empty!19305 tp!1163109))))

(assert (=> b!3839858 (= tp!1162967 e!2372362)))

(assert (= (and b!3839858 ((_ is Cons!40607) (_2!23023 (v!38971 err!4201)))) b!3840415))

(declare-fun b!3840419 () Bool)

(declare-fun b_free!102357 () Bool)

(declare-fun b_next!103061 () Bool)

(assert (=> b!3840419 (= b_free!102357 (not b_next!103061))))

(declare-fun t!310394 () Bool)

(declare-fun tb!220967 () Bool)

(assert (=> (and b!3840419 (= (toValue!8678 (transformation!6262 (rule!9098 (h!46029 (t!310262 suffixTokens!72))))) (toValue!8678 (transformation!6262 (rule!9098 (_1!23023 (v!38971 lt!1332620)))))) t!310394) tb!220967))

(declare-fun result!269308 () Bool)

(assert (= result!269308 result!269252))

(assert (=> d!1139646 t!310394))

(declare-fun tp!1163111 () Bool)

(declare-fun b_and!286035 () Bool)

(assert (=> b!3840419 (= tp!1163111 (and (=> t!310394 result!269308) b_and!286035))))

(declare-fun b_free!102359 () Bool)

(declare-fun b_next!103063 () Bool)

(assert (=> b!3840419 (= b_free!102359 (not b_next!103063))))

(declare-fun tb!220969 () Bool)

(declare-fun t!310396 () Bool)

(assert (=> (and b!3840419 (= (toChars!8537 (transformation!6262 (rule!9098 (h!46029 (t!310262 suffixTokens!72))))) (toChars!8537 (transformation!6262 (rule!9098 (h!46029 prefixTokens!80))))) t!310396) tb!220969))

(declare-fun result!269310 () Bool)

(assert (= result!269310 result!269164))

(assert (=> b!3839924 t!310396))

(declare-fun tb!220971 () Bool)

(declare-fun t!310398 () Bool)

(assert (=> (and b!3840419 (= (toChars!8537 (transformation!6262 (rule!9098 (h!46029 (t!310262 suffixTokens!72))))) (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 err!4201)))))) t!310398) tb!220971))

(declare-fun result!269312 () Bool)

(assert (= result!269312 result!269192))

(assert (=> b!3840123 t!310398))

(declare-fun tb!220973 () Bool)

(declare-fun t!310400 () Bool)

(assert (=> (and b!3840419 (= (toChars!8537 (transformation!6262 (rule!9098 (h!46029 (t!310262 suffixTokens!72))))) (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 lt!1332620)))))) t!310400) tb!220973))

(declare-fun result!269314 () Bool)

(assert (= result!269314 result!269220))

(assert (=> d!1139638 t!310400))

(declare-fun t!310402 () Bool)

(declare-fun tb!220975 () Bool)

(assert (=> (and b!3840419 (= (toChars!8537 (transformation!6262 (rule!9098 (h!46029 (t!310262 suffixTokens!72))))) (toChars!8537 (transformation!6262 (rule!9098 (h!46029 suffixTokens!72))))) t!310402) tb!220975))

(declare-fun result!269316 () Bool)

(assert (= result!269316 result!269272))

(assert (=> b!3840269 t!310402))

(declare-fun b_and!286037 () Bool)

(declare-fun tp!1163112 () Bool)

(assert (=> b!3840419 (= tp!1163112 (and (=> t!310396 result!269310) (=> t!310398 result!269312) (=> t!310400 result!269314) (=> t!310402 result!269316) b_and!286037))))

(declare-fun e!2372367 () Bool)

(assert (=> b!3840419 (= e!2372367 (and tp!1163111 tp!1163112))))

(declare-fun tp!1163113 () Bool)

(declare-fun e!2372364 () Bool)

(declare-fun e!2372363 () Bool)

(declare-fun b!3840416 () Bool)

(assert (=> b!3840416 (= e!2372364 (and (inv!54757 (h!46029 (t!310262 suffixTokens!72))) e!2372363 tp!1163113))))

(assert (=> b!3839856 (= tp!1162958 e!2372364)))

(declare-fun b!3840417 () Bool)

(declare-fun tp!1163110 () Bool)

(declare-fun e!2372365 () Bool)

(assert (=> b!3840417 (= e!2372363 (and (inv!21 (value!199101 (h!46029 (t!310262 suffixTokens!72)))) e!2372365 tp!1163110))))

(declare-fun b!3840418 () Bool)

(declare-fun tp!1163114 () Bool)

(assert (=> b!3840418 (= e!2372365 (and tp!1163114 (inv!54753 (tag!7122 (rule!9098 (h!46029 (t!310262 suffixTokens!72))))) (inv!54756 (transformation!6262 (rule!9098 (h!46029 (t!310262 suffixTokens!72))))) e!2372367))))

(assert (= b!3840418 b!3840419))

(assert (= b!3840417 b!3840418))

(assert (= b!3840416 b!3840417))

(assert (= (and b!3839856 ((_ is Cons!40609) (t!310262 suffixTokens!72))) b!3840416))

(declare-fun m!4394833 () Bool)

(assert (=> b!3840416 m!4394833))

(declare-fun m!4394835 () Bool)

(assert (=> b!3840417 m!4394835))

(declare-fun m!4394837 () Bool)

(assert (=> b!3840418 m!4394837))

(declare-fun m!4394839 () Bool)

(assert (=> b!3840418 m!4394839))

(declare-fun e!2372369 () Bool)

(assert (=> b!3839836 (= tp!1162972 e!2372369)))

(declare-fun b!3840423 () Bool)

(declare-fun tp!1163116 () Bool)

(declare-fun tp!1163115 () Bool)

(assert (=> b!3840423 (= e!2372369 (and tp!1163116 tp!1163115))))

(declare-fun b!3840420 () Bool)

(assert (=> b!3840420 (= e!2372369 tp_is_empty!19305)))

(declare-fun b!3840422 () Bool)

(declare-fun tp!1163118 () Bool)

(assert (=> b!3840422 (= e!2372369 tp!1163118)))

(declare-fun b!3840421 () Bool)

(declare-fun tp!1163117 () Bool)

(declare-fun tp!1163119 () Bool)

(assert (=> b!3840421 (= e!2372369 (and tp!1163117 tp!1163119))))

(assert (= (and b!3839836 ((_ is ElementMatch!11167) (regex!6262 (rule!9098 (h!46029 suffixTokens!72))))) b!3840420))

(assert (= (and b!3839836 ((_ is Concat!17660) (regex!6262 (rule!9098 (h!46029 suffixTokens!72))))) b!3840421))

(assert (= (and b!3839836 ((_ is Star!11167) (regex!6262 (rule!9098 (h!46029 suffixTokens!72))))) b!3840422))

(assert (= (and b!3839836 ((_ is Union!11167) (regex!6262 (rule!9098 (h!46029 suffixTokens!72))))) b!3840423))

(declare-fun e!2372370 () Bool)

(assert (=> b!3839844 (= tp!1162971 e!2372370)))

(declare-fun b!3840427 () Bool)

(declare-fun tp!1163121 () Bool)

(declare-fun tp!1163120 () Bool)

(assert (=> b!3840427 (= e!2372370 (and tp!1163121 tp!1163120))))

(declare-fun b!3840424 () Bool)

(assert (=> b!3840424 (= e!2372370 tp_is_empty!19305)))

(declare-fun b!3840426 () Bool)

(declare-fun tp!1163123 () Bool)

(assert (=> b!3840426 (= e!2372370 tp!1163123)))

(declare-fun b!3840425 () Bool)

(declare-fun tp!1163122 () Bool)

(declare-fun tp!1163124 () Bool)

(assert (=> b!3840425 (= e!2372370 (and tp!1163122 tp!1163124))))

(assert (= (and b!3839844 ((_ is ElementMatch!11167) (regex!6262 (h!46028 rules!2768)))) b!3840424))

(assert (= (and b!3839844 ((_ is Concat!17660) (regex!6262 (h!46028 rules!2768)))) b!3840425))

(assert (= (and b!3839844 ((_ is Star!11167) (regex!6262 (h!46028 rules!2768)))) b!3840426))

(assert (= (and b!3839844 ((_ is Union!11167) (regex!6262 (h!46028 rules!2768)))) b!3840427))

(declare-fun b!3840428 () Bool)

(declare-fun e!2372371 () Bool)

(declare-fun tp!1163125 () Bool)

(assert (=> b!3840428 (= e!2372371 (and tp_is_empty!19305 tp!1163125))))

(assert (=> b!3839834 (= tp!1162965 e!2372371)))

(assert (= (and b!3839834 ((_ is Cons!40607) (t!310260 suffix!1176))) b!3840428))

(declare-fun e!2372372 () Bool)

(assert (=> b!3839833 (= tp!1162962 e!2372372)))

(declare-fun b!3840432 () Bool)

(declare-fun tp!1163127 () Bool)

(declare-fun tp!1163126 () Bool)

(assert (=> b!3840432 (= e!2372372 (and tp!1163127 tp!1163126))))

(declare-fun b!3840429 () Bool)

(assert (=> b!3840429 (= e!2372372 tp_is_empty!19305)))

(declare-fun b!3840431 () Bool)

(declare-fun tp!1163129 () Bool)

(assert (=> b!3840431 (= e!2372372 tp!1163129)))

(declare-fun b!3840430 () Bool)

(declare-fun tp!1163128 () Bool)

(declare-fun tp!1163130 () Bool)

(assert (=> b!3840430 (= e!2372372 (and tp!1163128 tp!1163130))))

(assert (= (and b!3839833 ((_ is ElementMatch!11167) (regex!6262 (rule!9098 (_1!23023 (v!38971 err!4201)))))) b!3840429))

(assert (= (and b!3839833 ((_ is Concat!17660) (regex!6262 (rule!9098 (_1!23023 (v!38971 err!4201)))))) b!3840430))

(assert (= (and b!3839833 ((_ is Star!11167) (regex!6262 (rule!9098 (_1!23023 (v!38971 err!4201)))))) b!3840431))

(assert (= (and b!3839833 ((_ is Union!11167) (regex!6262 (rule!9098 (_1!23023 (v!38971 err!4201)))))) b!3840432))

(declare-fun b!3840433 () Bool)

(declare-fun e!2372373 () Bool)

(declare-fun tp!1163131 () Bool)

(assert (=> b!3840433 (= e!2372373 (and tp_is_empty!19305 tp!1163131))))

(assert (=> b!3839843 (= tp!1162959 e!2372373)))

(assert (= (and b!3839843 ((_ is Cons!40607) (originalCharacters!6862 (_1!23023 (v!38971 err!4201))))) b!3840433))

(declare-fun b!3840434 () Bool)

(declare-fun e!2372374 () Bool)

(declare-fun tp!1163132 () Bool)

(assert (=> b!3840434 (= e!2372374 (and tp_is_empty!19305 tp!1163132))))

(assert (=> b!3839853 (= tp!1162973 e!2372374)))

(assert (= (and b!3839853 ((_ is Cons!40607) (originalCharacters!6862 (h!46029 suffixTokens!72)))) b!3840434))

(declare-fun b_lambda!112285 () Bool)

(assert (= b_lambda!112267 (or (and b!3840384 b_free!102351 (= (toChars!8537 (transformation!6262 (h!46028 (t!310261 rules!2768)))) (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 err!4201))))))) (and b!3839860 b_free!102335 (= (toChars!8537 (transformation!6262 (rule!9098 (h!46029 suffixTokens!72)))) (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 err!4201))))))) (and b!3840419 b_free!102359 (= (toChars!8537 (transformation!6262 (rule!9098 (h!46029 (t!310262 suffixTokens!72))))) (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 err!4201))))))) (and b!3839846 b_free!102331) (and b!3840399 b_free!102355 (= (toChars!8537 (transformation!6262 (rule!9098 (h!46029 (t!310262 prefixTokens!80))))) (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 err!4201))))))) (and b!3839840 b_free!102327 (= (toChars!8537 (transformation!6262 (rule!9098 (h!46029 prefixTokens!80)))) (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 err!4201))))))) (and b!3839841 b_free!102323 (= (toChars!8537 (transformation!6262 (h!46028 rules!2768))) (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 err!4201))))))) b_lambda!112285)))

(declare-fun b_lambda!112287 () Bool)

(assert (= b_lambda!112277 (or (and b!3840419 b_free!102359 (= (toChars!8537 (transformation!6262 (rule!9098 (h!46029 (t!310262 suffixTokens!72))))) (toChars!8537 (transformation!6262 (rule!9098 (h!46029 suffixTokens!72)))))) (and b!3840399 b_free!102355 (= (toChars!8537 (transformation!6262 (rule!9098 (h!46029 (t!310262 prefixTokens!80))))) (toChars!8537 (transformation!6262 (rule!9098 (h!46029 suffixTokens!72)))))) (and b!3839841 b_free!102323 (= (toChars!8537 (transformation!6262 (h!46028 rules!2768))) (toChars!8537 (transformation!6262 (rule!9098 (h!46029 suffixTokens!72)))))) (and b!3839846 b_free!102331 (= (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 err!4201))))) (toChars!8537 (transformation!6262 (rule!9098 (h!46029 suffixTokens!72)))))) (and b!3840384 b_free!102351 (= (toChars!8537 (transformation!6262 (h!46028 (t!310261 rules!2768)))) (toChars!8537 (transformation!6262 (rule!9098 (h!46029 suffixTokens!72)))))) (and b!3839840 b_free!102327 (= (toChars!8537 (transformation!6262 (rule!9098 (h!46029 prefixTokens!80)))) (toChars!8537 (transformation!6262 (rule!9098 (h!46029 suffixTokens!72)))))) (and b!3839860 b_free!102335) b_lambda!112287)))

(declare-fun b_lambda!112289 () Bool)

(assert (= b_lambda!112261 (or (and b!3839840 b_free!102327) (and b!3840419 b_free!102359 (= (toChars!8537 (transformation!6262 (rule!9098 (h!46029 (t!310262 suffixTokens!72))))) (toChars!8537 (transformation!6262 (rule!9098 (h!46029 prefixTokens!80)))))) (and b!3840384 b_free!102351 (= (toChars!8537 (transformation!6262 (h!46028 (t!310261 rules!2768)))) (toChars!8537 (transformation!6262 (rule!9098 (h!46029 prefixTokens!80)))))) (and b!3839860 b_free!102335 (= (toChars!8537 (transformation!6262 (rule!9098 (h!46029 suffixTokens!72)))) (toChars!8537 (transformation!6262 (rule!9098 (h!46029 prefixTokens!80)))))) (and b!3839846 b_free!102331 (= (toChars!8537 (transformation!6262 (rule!9098 (_1!23023 (v!38971 err!4201))))) (toChars!8537 (transformation!6262 (rule!9098 (h!46029 prefixTokens!80)))))) (and b!3839841 b_free!102323 (= (toChars!8537 (transformation!6262 (h!46028 rules!2768))) (toChars!8537 (transformation!6262 (rule!9098 (h!46029 prefixTokens!80)))))) (and b!3840399 b_free!102355 (= (toChars!8537 (transformation!6262 (rule!9098 (h!46029 (t!310262 prefixTokens!80))))) (toChars!8537 (transformation!6262 (rule!9098 (h!46029 prefixTokens!80)))))) b_lambda!112289)))

(check-sat (not b!3840144) (not b!3839925) (not b!3840122) (not b!3840287) (not d!1139598) (not b!3840418) (not b!3840219) b_and!286025 (not b!3840316) (not b_next!103033) (not b!3840422) (not b!3840383) (not d!1139520) (not tb!220893) (not b_next!103055) (not b_next!103031) (not b!3840396) (not b!3840190) (not b!3840246) (not d!1139648) (not b!3840290) (not b!3840367) (not b!3840129) (not b!3840373) (not b!3840057) (not b!3840270) (not b!3840413) (not b!3840124) b_and!286013 (not b_next!103027) (not b_next!103053) (not b_lambda!112285) (not d!1139672) (not bm!281931) (not b_lambda!112287) (not b!3840361) (not b!3839901) b_and!286023 (not b!3840426) (not b!3840331) (not b_next!103039) (not b!3840314) (not b!3840398) (not b!3840328) (not b!3840324) b_and!286037 (not d!1139622) (not b!3840355) b_and!286027 (not b_next!103063) (not d!1139578) (not d!1139662) (not b!3840120) b_and!286033 (not b!3840421) (not b!3840360) (not b!3840125) (not b_next!103061) (not bm!281930) (not b!3840385) (not tb!220939) (not b!3840434) (not b!3840289) (not b!3840416) (not b!3840417) (not d!1139508) (not d!1139636) (not b!3840354) (not b_lambda!112275) (not b!3840320) (not d!1139524) (not d!1139586) (not b!3840433) (not tb!220921) (not b!3840382) b_and!286015 (not b!3840070) b_and!286019 (not b!3840351) (not b!3840366) (not b!3840025) (not b!3840319) (not b!3840143) (not b!3840358) (not b!3840322) (not b!3840329) (not b!3840432) (not b!3840428) b_and!286017 (not b!3840326) b_and!286031 (not b!3840414) (not b!3840026) b_and!286021 (not b!3840245) (not tb!220869) (not b!3840318) (not b_next!103035) (not d!1139554) (not b!3840321) (not b!3839900) (not b_next!103025) (not b!3840325) (not d!1139588) (not b!3840123) (not b!3840293) (not b!3840058) (not b!3840431) (not b!3840232) (not b!3839945) (not b!3839938) tp_is_empty!19305 (not d!1139668) (not b!3840217) (not b!3840313) (not b!3840244) (not b_lambda!112273) (not b!3840218) (not b!3840397) (not d!1139652) (not d!1139664) (not b!3839899) (not b!3840165) (not d!1139600) (not d!1139640) (not b!3840427) (not tb!220845) (not b!3840357) (not b_next!103059) (not d!1139590) (not b!3840315) (not d!1139608) (not b!3840430) (not b!3840412) b_and!286035 b_and!286009 (not b!3840425) (not b!3840121) (not d!1139660) (not b!3840024) (not b!3840350) (not b!3840131) (not b!3840280) (not d!1139604) (not d!1139574) (not b!3839924) (not b!3840108) (not b!3840130) (not b_lambda!112289) (not b!3840362) (not b!3840356) (not d!1139638) (not b!3840423) (not b!3840323) (not b!3840365) (not d!1139670) (not b_next!103057) (not b!3840269) (not d!1139644) (not b!3840069) b_and!286029 (not b!3840128) (not d!1139612) (not b_next!103029) (not d!1139584) (not b!3840107) (not b!3840210) (not b!3840352) (not b!3840292) (not d!1139592) (not b!3840330) (not b_next!103037) (not b!3840400) (not b!3840415))
(check-sat b_and!286025 (not b_next!103033) (not b_next!103055) (not b_next!103031) b_and!286023 (not b_next!103061) b_and!286015 b_and!286019 (not b_next!103025) (not b_next!103059) (not b_next!103057) (not b_next!103037) b_and!286013 (not b_next!103027) (not b_next!103053) (not b_next!103039) b_and!286037 b_and!286027 (not b_next!103063) b_and!286033 (not b_next!103035) b_and!286017 b_and!286031 b_and!286021 b_and!286035 b_and!286009 b_and!286029 (not b_next!103029))
