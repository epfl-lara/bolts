; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!358792 () Bool)

(assert start!358792)

(declare-fun b!3834080 () Bool)

(declare-fun b_free!101829 () Bool)

(declare-fun b_next!102533 () Bool)

(assert (=> b!3834080 (= b_free!101829 (not b_next!102533))))

(declare-fun tp!1160379 () Bool)

(declare-fun b_and!285019 () Bool)

(assert (=> b!3834080 (= tp!1160379 b_and!285019)))

(declare-fun b_free!101831 () Bool)

(declare-fun b_next!102535 () Bool)

(assert (=> b!3834080 (= b_free!101831 (not b_next!102535))))

(declare-fun tp!1160370 () Bool)

(declare-fun b_and!285021 () Bool)

(assert (=> b!3834080 (= tp!1160370 b_and!285021)))

(declare-fun b!3834085 () Bool)

(declare-fun b_free!101833 () Bool)

(declare-fun b_next!102537 () Bool)

(assert (=> b!3834085 (= b_free!101833 (not b_next!102537))))

(declare-fun tp!1160375 () Bool)

(declare-fun b_and!285023 () Bool)

(assert (=> b!3834085 (= tp!1160375 b_and!285023)))

(declare-fun b_free!101835 () Bool)

(declare-fun b_next!102539 () Bool)

(assert (=> b!3834085 (= b_free!101835 (not b_next!102539))))

(declare-fun tp!1160382 () Bool)

(declare-fun b_and!285025 () Bool)

(assert (=> b!3834085 (= tp!1160382 b_and!285025)))

(declare-fun b!3834082 () Bool)

(declare-fun b_free!101837 () Bool)

(declare-fun b_next!102541 () Bool)

(assert (=> b!3834082 (= b_free!101837 (not b_next!102541))))

(declare-fun tp!1160384 () Bool)

(declare-fun b_and!285027 () Bool)

(assert (=> b!3834082 (= tp!1160384 b_and!285027)))

(declare-fun b_free!101839 () Bool)

(declare-fun b_next!102543 () Bool)

(assert (=> b!3834082 (= b_free!101839 (not b_next!102543))))

(declare-fun tp!1160385 () Bool)

(declare-fun b_and!285029 () Bool)

(assert (=> b!3834082 (= tp!1160385 b_and!285029)))

(declare-fun b!3834066 () Bool)

(declare-fun e!2367849 () Bool)

(declare-fun e!2367852 () Bool)

(assert (=> b!3834066 (= e!2367849 e!2367852)))

(declare-fun res!1551932 () Bool)

(assert (=> b!3834066 (=> (not res!1551932) (not e!2367852))))

(declare-datatypes ((List!40616 0))(
  ( (Nil!40492) (Cons!40492 (h!45912 (_ BitVec 16)) (t!309349 List!40616)) )
))
(declare-datatypes ((TokenValue!6466 0))(
  ( (FloatLiteralValue!12932 (text!45707 List!40616)) (TokenValueExt!6465 (__x!25149 Int)) (Broken!32330 (value!198334 List!40616)) (Object!6589) (End!6466) (Def!6466) (Underscore!6466) (Match!6466) (Else!6466) (Error!6466) (Case!6466) (If!6466) (Extends!6466) (Abstract!6466) (Class!6466) (Val!6466) (DelimiterValue!12932 (del!6526 List!40616)) (KeywordValue!6472 (value!198335 List!40616)) (CommentValue!12932 (value!198336 List!40616)) (WhitespaceValue!12932 (value!198337 List!40616)) (IndentationValue!6466 (value!198338 List!40616)) (String!46047) (Int32!6466) (Broken!32331 (value!198339 List!40616)) (Boolean!6467) (Unit!58231) (OperatorValue!6469 (op!6526 List!40616)) (IdentifierValue!12932 (value!198340 List!40616)) (IdentifierValue!12933 (value!198341 List!40616)) (WhitespaceValue!12933 (value!198342 List!40616)) (True!12932) (False!12932) (Broken!32332 (value!198343 List!40616)) (Broken!32333 (value!198344 List!40616)) (True!12933) (RightBrace!6466) (RightBracket!6466) (Colon!6466) (Null!6466) (Comma!6466) (LeftBracket!6466) (False!12933) (LeftBrace!6466) (ImaginaryLiteralValue!6466 (text!45708 List!40616)) (StringLiteralValue!19398 (value!198345 List!40616)) (EOFValue!6466 (value!198346 List!40616)) (IdentValue!6466 (value!198347 List!40616)) (DelimiterValue!12933 (value!198348 List!40616)) (DedentValue!6466 (value!198349 List!40616)) (NewLineValue!6466 (value!198350 List!40616)) (IntegerValue!19398 (value!198351 (_ BitVec 32)) (text!45709 List!40616)) (IntegerValue!19399 (value!198352 Int) (text!45710 List!40616)) (Times!6466) (Or!6466) (Equal!6466) (Minus!6466) (Broken!32334 (value!198353 List!40616)) (And!6466) (Div!6466) (LessEqual!6466) (Mod!6466) (Concat!17607) (Not!6466) (Plus!6466) (SpaceValue!6466 (value!198354 List!40616)) (IntegerValue!19400 (value!198355 Int) (text!45711 List!40616)) (StringLiteralValue!19399 (text!45712 List!40616)) (FloatLiteralValue!12933 (text!45713 List!40616)) (BytesLiteralValue!6466 (value!198356 List!40616)) (CommentValue!12933 (value!198357 List!40616)) (StringLiteralValue!19400 (value!198358 List!40616)) (ErrorTokenValue!6466 (msg!6527 List!40616)) )
))
(declare-datatypes ((C!22468 0))(
  ( (C!22469 (val!13328 Int)) )
))
(declare-datatypes ((Regex!11141 0))(
  ( (ElementMatch!11141 (c!668558 C!22468)) (Concat!17608 (regOne!22794 Regex!11141) (regTwo!22794 Regex!11141)) (EmptyExpr!11141) (Star!11141 (reg!11470 Regex!11141)) (EmptyLang!11141) (Union!11141 (regOne!22795 Regex!11141) (regTwo!22795 Regex!11141)) )
))
(declare-datatypes ((String!46048 0))(
  ( (String!46049 (value!198359 String)) )
))
(declare-datatypes ((List!40617 0))(
  ( (Nil!40493) (Cons!40493 (h!45913 C!22468) (t!309350 List!40617)) )
))
(declare-datatypes ((IArray!24899 0))(
  ( (IArray!24900 (innerList!12507 List!40617)) )
))
(declare-datatypes ((Conc!12447 0))(
  ( (Node!12447 (left!31323 Conc!12447) (right!31653 Conc!12447) (csize!25124 Int) (cheight!12658 Int)) (Leaf!19272 (xs!15753 IArray!24899) (csize!25125 Int)) (Empty!12447) )
))
(declare-datatypes ((BalanceConc!24488 0))(
  ( (BalanceConc!24489 (c!668559 Conc!12447)) )
))
(declare-datatypes ((TokenValueInjection!12360 0))(
  ( (TokenValueInjection!12361 (toValue!8644 Int) (toChars!8503 Int)) )
))
(declare-datatypes ((Rule!12272 0))(
  ( (Rule!12273 (regex!6236 Regex!11141) (tag!7096 String!46048) (isSeparator!6236 Bool) (transformation!6236 TokenValueInjection!12360)) )
))
(declare-datatypes ((Token!11610 0))(
  ( (Token!11611 (value!198360 TokenValue!6466) (rule!9068 Rule!12272) (size!30504 Int) (originalCharacters!6836 List!40617)) )
))
(declare-datatypes ((tuple2!39666 0))(
  ( (tuple2!39667 (_1!22967 Token!11610) (_2!22967 List!40617)) )
))
(declare-datatypes ((Option!8654 0))(
  ( (None!8653) (Some!8653 (v!38941 tuple2!39666)) )
))
(declare-fun lt!1330863 () Option!8654)

(get-info :version)

(assert (=> b!3834066 (= res!1551932 ((_ is Some!8653) lt!1330863))))

(declare-datatypes ((LexerInterface!5825 0))(
  ( (LexerInterfaceExt!5822 (__x!25150 Int)) (Lexer!5823) )
))
(declare-fun thiss!20629 () LexerInterface!5825)

(declare-datatypes ((List!40618 0))(
  ( (Nil!40494) (Cons!40494 (h!45914 Rule!12272) (t!309351 List!40618)) )
))
(declare-fun rules!2768 () List!40618)

(declare-fun lt!1330861 () List!40617)

(declare-fun maxPrefix!3129 (LexerInterface!5825 List!40618 List!40617) Option!8654)

(assert (=> b!3834066 (= lt!1330863 (maxPrefix!3129 thiss!20629 rules!2768 lt!1330861))))

(declare-fun e!2367835 () Bool)

(declare-fun b!3834067 () Bool)

(declare-datatypes ((List!40619 0))(
  ( (Nil!40495) (Cons!40495 (h!45915 Token!11610) (t!309352 List!40619)) )
))
(declare-fun prefixTokens!80 () List!40619)

(declare-fun e!2367845 () Bool)

(declare-fun tp!1160383 () Bool)

(declare-fun inv!54633 (Token!11610) Bool)

(assert (=> b!3834067 (= e!2367835 (and (inv!54633 (h!45915 prefixTokens!80)) e!2367845 tp!1160383))))

(declare-fun tp!1160377 () Bool)

(declare-fun e!2367838 () Bool)

(declare-fun e!2367843 () Bool)

(declare-fun b!3834068 () Bool)

(declare-fun inv!54630 (String!46048) Bool)

(declare-fun inv!54634 (TokenValueInjection!12360) Bool)

(assert (=> b!3834068 (= e!2367843 (and tp!1160377 (inv!54630 (tag!7096 (rule!9068 (h!45915 prefixTokens!80)))) (inv!54634 (transformation!6236 (rule!9068 (h!45915 prefixTokens!80)))) e!2367838))))

(declare-fun b!3834069 () Bool)

(declare-fun res!1551924 () Bool)

(declare-fun e!2367837 () Bool)

(assert (=> b!3834069 (=> (not res!1551924) (not e!2367837))))

(declare-fun isEmpty!23908 (List!40618) Bool)

(assert (=> b!3834069 (= res!1551924 (not (isEmpty!23908 rules!2768)))))

(declare-fun b!3834070 () Bool)

(declare-fun e!2367850 () Bool)

(declare-fun e!2367847 () Bool)

(declare-fun tp!1160386 () Bool)

(assert (=> b!3834070 (= e!2367850 (and e!2367847 tp!1160386))))

(declare-fun b!3834071 () Bool)

(declare-fun e!2367836 () Bool)

(declare-fun suffixTokens!72 () List!40619)

(declare-fun e!2367848 () Bool)

(declare-fun tp!1160376 () Bool)

(assert (=> b!3834071 (= e!2367848 (and tp!1160376 (inv!54630 (tag!7096 (rule!9068 (h!45915 suffixTokens!72)))) (inv!54634 (transformation!6236 (rule!9068 (h!45915 suffixTokens!72)))) e!2367836))))

(declare-fun b!3834073 () Bool)

(declare-fun e!2367834 () Bool)

(assert (=> b!3834073 (= e!2367834 false)))

(declare-fun lt!1330862 () Bool)

(declare-fun rulesValidInductive!2198 (LexerInterface!5825 List!40618) Bool)

(assert (=> b!3834073 (= lt!1330862 (rulesValidInductive!2198 thiss!20629 rules!2768))))

(declare-fun b!3834074 () Bool)

(declare-fun res!1551925 () Bool)

(assert (=> b!3834074 (=> (not res!1551925) (not e!2367837))))

(declare-fun rulesInvariant!5168 (LexerInterface!5825 List!40618) Bool)

(assert (=> b!3834074 (= res!1551925 (rulesInvariant!5168 thiss!20629 rules!2768))))

(declare-fun tp!1160374 () Bool)

(declare-fun e!2367841 () Bool)

(declare-fun b!3834075 () Bool)

(declare-fun inv!21 (TokenValue!6466) Bool)

(assert (=> b!3834075 (= e!2367841 (and (inv!21 (value!198360 (h!45915 suffixTokens!72))) e!2367848 tp!1160374))))

(declare-fun b!3834076 () Bool)

(declare-fun e!2367831 () Bool)

(declare-fun tp_is_empty!19253 () Bool)

(declare-fun tp!1160371 () Bool)

(assert (=> b!3834076 (= e!2367831 (and tp_is_empty!19253 tp!1160371))))

(declare-fun b!3834077 () Bool)

(declare-fun res!1551931 () Bool)

(assert (=> b!3834077 (=> (not res!1551931) (not e!2367837))))

(declare-fun isEmpty!23909 (List!40619) Bool)

(assert (=> b!3834077 (= res!1551931 (not (isEmpty!23909 prefixTokens!80)))))

(declare-fun e!2367844 () Bool)

(declare-fun b!3834078 () Bool)

(declare-fun tp!1160381 () Bool)

(assert (=> b!3834078 (= e!2367844 (and (inv!54633 (h!45915 suffixTokens!72)) e!2367841 tp!1160381))))

(declare-fun b!3834079 () Bool)

(declare-fun e!2367846 () Bool)

(declare-fun tp!1160373 () Bool)

(assert (=> b!3834079 (= e!2367846 (and tp_is_empty!19253 tp!1160373))))

(assert (=> b!3834080 (= e!2367836 (and tp!1160379 tp!1160370))))

(declare-fun b!3834081 () Bool)

(assert (=> b!3834081 (= e!2367837 e!2367849)))

(declare-fun res!1551929 () Bool)

(assert (=> b!3834081 (=> (not res!1551929) (not e!2367849))))

(declare-fun suffixResult!91 () List!40617)

(declare-datatypes ((tuple2!39668 0))(
  ( (tuple2!39669 (_1!22968 List!40619) (_2!22968 List!40617)) )
))
(declare-fun lexList!1593 (LexerInterface!5825 List!40618 List!40617) tuple2!39668)

(declare-fun ++!10229 (List!40619 List!40619) List!40619)

(assert (=> b!3834081 (= res!1551929 (= (lexList!1593 thiss!20629 rules!2768 lt!1330861) (tuple2!39669 (++!10229 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun prefix!426 () List!40617)

(declare-fun suffix!1176 () List!40617)

(declare-fun ++!10230 (List!40617 List!40617) List!40617)

(assert (=> b!3834081 (= lt!1330861 (++!10230 prefix!426 suffix!1176))))

(assert (=> b!3834082 (= e!2367838 (and tp!1160384 tp!1160385))))

(declare-fun b!3834083 () Bool)

(declare-fun res!1551927 () Bool)

(assert (=> b!3834083 (=> (not res!1551927) (not e!2367849))))

(assert (=> b!3834083 (= res!1551927 (= (lexList!1593 thiss!20629 rules!2768 suffix!1176) (tuple2!39669 suffixTokens!72 suffixResult!91)))))

(declare-fun res!1551928 () Bool)

(assert (=> start!358792 (=> (not res!1551928) (not e!2367837))))

(assert (=> start!358792 (= res!1551928 ((_ is Lexer!5823) thiss!20629))))

(assert (=> start!358792 e!2367837))

(assert (=> start!358792 e!2367831))

(assert (=> start!358792 true))

(assert (=> start!358792 e!2367846))

(assert (=> start!358792 e!2367850))

(assert (=> start!358792 e!2367835))

(assert (=> start!358792 e!2367844))

(declare-fun e!2367833 () Bool)

(assert (=> start!358792 e!2367833))

(declare-fun b!3834072 () Bool)

(declare-fun tp!1160372 () Bool)

(assert (=> b!3834072 (= e!2367833 (and tp_is_empty!19253 tp!1160372))))

(declare-fun b!3834084 () Bool)

(declare-fun res!1551930 () Bool)

(assert (=> b!3834084 (=> (not res!1551930) (not e!2367837))))

(declare-fun isEmpty!23910 (List!40617) Bool)

(assert (=> b!3834084 (= res!1551930 (not (isEmpty!23910 prefix!426)))))

(declare-fun e!2367840 () Bool)

(assert (=> b!3834085 (= e!2367840 (and tp!1160375 tp!1160382))))

(declare-fun b!3834086 () Bool)

(declare-fun tp!1160380 () Bool)

(assert (=> b!3834086 (= e!2367847 (and tp!1160380 (inv!54630 (tag!7096 (h!45914 rules!2768))) (inv!54634 (transformation!6236 (h!45914 rules!2768))) e!2367840))))

(declare-fun b!3834087 () Bool)

(declare-fun tp!1160378 () Bool)

(assert (=> b!3834087 (= e!2367845 (and (inv!21 (value!198360 (h!45915 prefixTokens!80))) e!2367843 tp!1160378))))

(declare-fun b!3834088 () Bool)

(assert (=> b!3834088 (= e!2367852 e!2367834)))

(declare-fun res!1551926 () Bool)

(assert (=> b!3834088 (=> (not res!1551926) (not e!2367834))))

(declare-fun contains!8214 (List!40618 Rule!12272) Bool)

(assert (=> b!3834088 (= res!1551926 (contains!8214 rules!2768 (rule!9068 (_1!22967 (v!38941 lt!1330863)))))))

(declare-datatypes ((Unit!58232 0))(
  ( (Unit!58233) )
))
(declare-fun lt!1330860 () Unit!58232)

(declare-fun lemmaCharactersSize!897 (Token!11610) Unit!58232)

(assert (=> b!3834088 (= lt!1330860 (lemmaCharactersSize!897 (_1!22967 (v!38941 lt!1330863))))))

(assert (= (and start!358792 res!1551928) b!3834069))

(assert (= (and b!3834069 res!1551924) b!3834074))

(assert (= (and b!3834074 res!1551925) b!3834077))

(assert (= (and b!3834077 res!1551931) b!3834084))

(assert (= (and b!3834084 res!1551930) b!3834081))

(assert (= (and b!3834081 res!1551929) b!3834083))

(assert (= (and b!3834083 res!1551927) b!3834066))

(assert (= (and b!3834066 res!1551932) b!3834088))

(assert (= (and b!3834088 res!1551926) b!3834073))

(assert (= (and start!358792 ((_ is Cons!40493) suffixResult!91)) b!3834076))

(assert (= (and start!358792 ((_ is Cons!40493) suffix!1176)) b!3834079))

(assert (= b!3834086 b!3834085))

(assert (= b!3834070 b!3834086))

(assert (= (and start!358792 ((_ is Cons!40494) rules!2768)) b!3834070))

(assert (= b!3834068 b!3834082))

(assert (= b!3834087 b!3834068))

(assert (= b!3834067 b!3834087))

(assert (= (and start!358792 ((_ is Cons!40495) prefixTokens!80)) b!3834067))

(assert (= b!3834071 b!3834080))

(assert (= b!3834075 b!3834071))

(assert (= b!3834078 b!3834075))

(assert (= (and start!358792 ((_ is Cons!40495) suffixTokens!72)) b!3834078))

(assert (= (and start!358792 ((_ is Cons!40493) prefix!426)) b!3834072))

(declare-fun m!4388325 () Bool)

(assert (=> b!3834086 m!4388325))

(declare-fun m!4388327 () Bool)

(assert (=> b!3834086 m!4388327))

(declare-fun m!4388329 () Bool)

(assert (=> b!3834084 m!4388329))

(declare-fun m!4388331 () Bool)

(assert (=> b!3834071 m!4388331))

(declare-fun m!4388333 () Bool)

(assert (=> b!3834071 m!4388333))

(declare-fun m!4388335 () Bool)

(assert (=> b!3834069 m!4388335))

(declare-fun m!4388337 () Bool)

(assert (=> b!3834081 m!4388337))

(declare-fun m!4388339 () Bool)

(assert (=> b!3834081 m!4388339))

(declare-fun m!4388341 () Bool)

(assert (=> b!3834081 m!4388341))

(declare-fun m!4388343 () Bool)

(assert (=> b!3834077 m!4388343))

(declare-fun m!4388345 () Bool)

(assert (=> b!3834067 m!4388345))

(declare-fun m!4388347 () Bool)

(assert (=> b!3834074 m!4388347))

(declare-fun m!4388349 () Bool)

(assert (=> b!3834073 m!4388349))

(declare-fun m!4388351 () Bool)

(assert (=> b!3834088 m!4388351))

(declare-fun m!4388353 () Bool)

(assert (=> b!3834088 m!4388353))

(declare-fun m!4388355 () Bool)

(assert (=> b!3834075 m!4388355))

(declare-fun m!4388357 () Bool)

(assert (=> b!3834087 m!4388357))

(declare-fun m!4388359 () Bool)

(assert (=> b!3834068 m!4388359))

(declare-fun m!4388361 () Bool)

(assert (=> b!3834068 m!4388361))

(declare-fun m!4388363 () Bool)

(assert (=> b!3834066 m!4388363))

(declare-fun m!4388365 () Bool)

(assert (=> b!3834083 m!4388365))

(declare-fun m!4388367 () Bool)

(assert (=> b!3834078 m!4388367))

(check-sat (not b!3834067) (not b!3834086) (not b!3834087) (not b_next!102543) (not b_next!102533) b_and!285019 (not b!3834068) (not b!3834084) (not b_next!102537) (not b!3834072) (not b!3834079) (not b!3834083) b_and!285023 (not b!3834070) b_and!285021 (not b!3834078) b_and!285029 (not b!3834069) b_and!285025 (not b!3834066) (not b!3834076) (not b!3834073) (not b_next!102535) b_and!285027 (not b!3834088) (not b!3834075) (not b!3834081) (not b_next!102541) (not b!3834074) (not b!3834071) (not b_next!102539) tp_is_empty!19253 (not b!3834077))
(check-sat (not b_next!102537) b_and!285023 b_and!285021 b_and!285029 b_and!285025 (not b_next!102543) (not b_next!102533) b_and!285019 (not b_next!102535) b_and!285027 (not b_next!102539) (not b_next!102541))
