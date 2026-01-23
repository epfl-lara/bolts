; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!358796 () Bool)

(assert start!358796)

(declare-fun b!3834220 () Bool)

(declare-fun b_free!101853 () Bool)

(declare-fun b_next!102557 () Bool)

(assert (=> b!3834220 (= b_free!101853 (not b_next!102557))))

(declare-fun tp!1160480 () Bool)

(declare-fun b_and!285043 () Bool)

(assert (=> b!3834220 (= tp!1160480 b_and!285043)))

(declare-fun b_free!101855 () Bool)

(declare-fun b_next!102559 () Bool)

(assert (=> b!3834220 (= b_free!101855 (not b_next!102559))))

(declare-fun tp!1160479 () Bool)

(declare-fun b_and!285045 () Bool)

(assert (=> b!3834220 (= tp!1160479 b_and!285045)))

(declare-fun b!3834218 () Bool)

(declare-fun b_free!101857 () Bool)

(declare-fun b_next!102561 () Bool)

(assert (=> b!3834218 (= b_free!101857 (not b_next!102561))))

(declare-fun tp!1160472 () Bool)

(declare-fun b_and!285047 () Bool)

(assert (=> b!3834218 (= tp!1160472 b_and!285047)))

(declare-fun b_free!101859 () Bool)

(declare-fun b_next!102563 () Bool)

(assert (=> b!3834218 (= b_free!101859 (not b_next!102563))))

(declare-fun tp!1160485 () Bool)

(declare-fun b_and!285049 () Bool)

(assert (=> b!3834218 (= tp!1160485 b_and!285049)))

(declare-fun b!3834211 () Bool)

(declare-fun b_free!101861 () Bool)

(declare-fun b_next!102565 () Bool)

(assert (=> b!3834211 (= b_free!101861 (not b_next!102565))))

(declare-fun tp!1160487 () Bool)

(declare-fun b_and!285051 () Bool)

(assert (=> b!3834211 (= tp!1160487 b_and!285051)))

(declare-fun b_free!101863 () Bool)

(declare-fun b_next!102567 () Bool)

(assert (=> b!3834211 (= b_free!101863 (not b_next!102567))))

(declare-fun tp!1160486 () Bool)

(declare-fun b_and!285053 () Bool)

(assert (=> b!3834211 (= tp!1160486 b_and!285053)))

(declare-fun b!3834199 () Bool)

(declare-fun e!2367976 () Bool)

(declare-fun e!2367980 () Bool)

(assert (=> b!3834199 (= e!2367976 e!2367980)))

(declare-fun res!1551976 () Bool)

(assert (=> b!3834199 (=> (not res!1551976) (not e!2367980))))

(declare-datatypes ((C!22472 0))(
  ( (C!22473 (val!13330 Int)) )
))
(declare-datatypes ((List!40624 0))(
  ( (Nil!40500) (Cons!40500 (h!45920 C!22472) (t!309357 List!40624)) )
))
(declare-fun lt!1330898 () List!40624)

(declare-fun suffixResult!91 () List!40624)

(declare-datatypes ((LexerInterface!5827 0))(
  ( (LexerInterfaceExt!5824 (__x!25153 Int)) (Lexer!5825) )
))
(declare-fun thiss!20629 () LexerInterface!5827)

(declare-datatypes ((IArray!24903 0))(
  ( (IArray!24904 (innerList!12509 List!40624)) )
))
(declare-datatypes ((Conc!12449 0))(
  ( (Node!12449 (left!31326 Conc!12449) (right!31656 Conc!12449) (csize!25128 Int) (cheight!12660 Int)) (Leaf!19275 (xs!15755 IArray!24903) (csize!25129 Int)) (Empty!12449) )
))
(declare-datatypes ((BalanceConc!24492 0))(
  ( (BalanceConc!24493 (c!668564 Conc!12449)) )
))
(declare-datatypes ((List!40625 0))(
  ( (Nil!40501) (Cons!40501 (h!45921 (_ BitVec 16)) (t!309358 List!40625)) )
))
(declare-datatypes ((TokenValue!6468 0))(
  ( (FloatLiteralValue!12936 (text!45721 List!40625)) (TokenValueExt!6467 (__x!25154 Int)) (Broken!32340 (value!198391 List!40625)) (Object!6591) (End!6468) (Def!6468) (Underscore!6468) (Match!6468) (Else!6468) (Error!6468) (Case!6468) (If!6468) (Extends!6468) (Abstract!6468) (Class!6468) (Val!6468) (DelimiterValue!12936 (del!6528 List!40625)) (KeywordValue!6474 (value!198392 List!40625)) (CommentValue!12936 (value!198393 List!40625)) (WhitespaceValue!12936 (value!198394 List!40625)) (IndentationValue!6468 (value!198395 List!40625)) (String!46057) (Int32!6468) (Broken!32341 (value!198396 List!40625)) (Boolean!6469) (Unit!58237) (OperatorValue!6471 (op!6528 List!40625)) (IdentifierValue!12936 (value!198397 List!40625)) (IdentifierValue!12937 (value!198398 List!40625)) (WhitespaceValue!12937 (value!198399 List!40625)) (True!12936) (False!12936) (Broken!32342 (value!198400 List!40625)) (Broken!32343 (value!198401 List!40625)) (True!12937) (RightBrace!6468) (RightBracket!6468) (Colon!6468) (Null!6468) (Comma!6468) (LeftBracket!6468) (False!12937) (LeftBrace!6468) (ImaginaryLiteralValue!6468 (text!45722 List!40625)) (StringLiteralValue!19404 (value!198402 List!40625)) (EOFValue!6468 (value!198403 List!40625)) (IdentValue!6468 (value!198404 List!40625)) (DelimiterValue!12937 (value!198405 List!40625)) (DedentValue!6468 (value!198406 List!40625)) (NewLineValue!6468 (value!198407 List!40625)) (IntegerValue!19404 (value!198408 (_ BitVec 32)) (text!45723 List!40625)) (IntegerValue!19405 (value!198409 Int) (text!45724 List!40625)) (Times!6468) (Or!6468) (Equal!6468) (Minus!6468) (Broken!32344 (value!198410 List!40625)) (And!6468) (Div!6468) (LessEqual!6468) (Mod!6468) (Concat!17611) (Not!6468) (Plus!6468) (SpaceValue!6468 (value!198411 List!40625)) (IntegerValue!19406 (value!198412 Int) (text!45725 List!40625)) (StringLiteralValue!19405 (text!45726 List!40625)) (FloatLiteralValue!12937 (text!45727 List!40625)) (BytesLiteralValue!6468 (value!198413 List!40625)) (CommentValue!12937 (value!198414 List!40625)) (StringLiteralValue!19406 (value!198415 List!40625)) (ErrorTokenValue!6468 (msg!6529 List!40625)) )
))
(declare-datatypes ((Regex!11143 0))(
  ( (ElementMatch!11143 (c!668565 C!22472)) (Concat!17612 (regOne!22798 Regex!11143) (regTwo!22798 Regex!11143)) (EmptyExpr!11143) (Star!11143 (reg!11472 Regex!11143)) (EmptyLang!11143) (Union!11143 (regOne!22799 Regex!11143) (regTwo!22799 Regex!11143)) )
))
(declare-datatypes ((String!46058 0))(
  ( (String!46059 (value!198416 String)) )
))
(declare-datatypes ((TokenValueInjection!12364 0))(
  ( (TokenValueInjection!12365 (toValue!8646 Int) (toChars!8505 Int)) )
))
(declare-datatypes ((Rule!12276 0))(
  ( (Rule!12277 (regex!6238 Regex!11143) (tag!7098 String!46058) (isSeparator!6238 Bool) (transformation!6238 TokenValueInjection!12364)) )
))
(declare-datatypes ((List!40626 0))(
  ( (Nil!40502) (Cons!40502 (h!45922 Rule!12276) (t!309359 List!40626)) )
))
(declare-fun rules!2768 () List!40626)

(declare-datatypes ((Token!11614 0))(
  ( (Token!11615 (value!198417 TokenValue!6468) (rule!9070 Rule!12276) (size!30507 Int) (originalCharacters!6838 List!40624)) )
))
(declare-datatypes ((List!40627 0))(
  ( (Nil!40503) (Cons!40503 (h!45923 Token!11614) (t!309360 List!40627)) )
))
(declare-fun prefixTokens!80 () List!40627)

(declare-fun suffixTokens!72 () List!40627)

(declare-datatypes ((tuple2!39674 0))(
  ( (tuple2!39675 (_1!22971 List!40627) (_2!22971 List!40624)) )
))
(declare-fun lexList!1595 (LexerInterface!5827 List!40626 List!40624) tuple2!39674)

(declare-fun ++!10233 (List!40627 List!40627) List!40627)

(assert (=> b!3834199 (= res!1551976 (= (lexList!1595 thiss!20629 rules!2768 lt!1330898) (tuple2!39675 (++!10233 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun prefix!426 () List!40624)

(declare-fun suffix!1176 () List!40624)

(declare-fun ++!10234 (List!40624 List!40624) List!40624)

(assert (=> b!3834199 (= lt!1330898 (++!10234 prefix!426 suffix!1176))))

(declare-fun b!3834200 () Bool)

(declare-fun res!1551973 () Bool)

(assert (=> b!3834200 (=> (not res!1551973) (not e!2367980))))

(assert (=> b!3834200 (= res!1551973 (= (lexList!1595 thiss!20629 rules!2768 suffix!1176) (tuple2!39675 suffixTokens!72 suffixResult!91)))))

(declare-fun tp!1160477 () Bool)

(declare-fun e!2367975 () Bool)

(declare-fun e!2367978 () Bool)

(declare-fun b!3834201 () Bool)

(declare-fun inv!54640 (Token!11614) Bool)

(assert (=> b!3834201 (= e!2367975 (and (inv!54640 (h!45923 suffixTokens!72)) e!2367978 tp!1160477))))

(declare-fun tp!1160478 () Bool)

(declare-fun e!2367972 () Bool)

(declare-fun b!3834202 () Bool)

(declare-fun e!2367982 () Bool)

(declare-fun inv!21 (TokenValue!6468) Bool)

(assert (=> b!3834202 (= e!2367972 (and (inv!21 (value!198417 (h!45923 prefixTokens!80))) e!2367982 tp!1160478))))

(declare-fun b!3834203 () Bool)

(declare-fun e!2367966 () Bool)

(declare-fun tp!1160475 () Bool)

(declare-fun inv!54637 (String!46058) Bool)

(declare-fun inv!54641 (TokenValueInjection!12364) Bool)

(assert (=> b!3834203 (= e!2367982 (and tp!1160475 (inv!54637 (tag!7098 (rule!9070 (h!45923 prefixTokens!80)))) (inv!54641 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) e!2367966))))

(declare-fun b!3834204 () Bool)

(declare-fun tp!1160482 () Bool)

(declare-fun e!2367964 () Bool)

(assert (=> b!3834204 (= e!2367964 (and (inv!54640 (h!45923 prefixTokens!80)) e!2367972 tp!1160482))))

(declare-fun b!3834205 () Bool)

(declare-fun e!2367969 () Bool)

(declare-fun e!2367970 () Bool)

(declare-fun tp!1160484 () Bool)

(assert (=> b!3834205 (= e!2367969 (and e!2367970 tp!1160484))))

(declare-fun b!3834206 () Bool)

(declare-fun e!2367965 () Bool)

(declare-fun lt!1330896 () List!40624)

(declare-fun size!30508 (List!40624) Int)

(assert (=> b!3834206 (= e!2367965 (not (>= (size!30508 lt!1330898) (size!30508 lt!1330896))))))

(declare-datatypes ((tuple2!39676 0))(
  ( (tuple2!39677 (_1!22972 Token!11614) (_2!22972 List!40624)) )
))
(declare-datatypes ((Option!8656 0))(
  ( (None!8655) (Some!8655 (v!38943 tuple2!39676)) )
))
(declare-fun lt!1330899 () Option!8656)

(declare-fun isPrefix!3337 (List!40624 List!40624) Bool)

(assert (=> b!3834206 (isPrefix!3337 lt!1330896 (++!10234 lt!1330896 (_2!22972 (v!38943 lt!1330899))))))

(declare-datatypes ((Unit!58238 0))(
  ( (Unit!58239) )
))
(declare-fun lt!1330897 () Unit!58238)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2200 (List!40624 List!40624) Unit!58238)

(assert (=> b!3834206 (= lt!1330897 (lemmaConcatTwoListThenFirstIsPrefix!2200 lt!1330896 (_2!22972 (v!38943 lt!1330899))))))

(declare-fun list!15086 (BalanceConc!24492) List!40624)

(declare-fun charsOf!4066 (Token!11614) BalanceConc!24492)

(assert (=> b!3834206 (= lt!1330896 (list!15086 (charsOf!4066 (_1!22972 (v!38943 lt!1330899)))))))

(declare-fun ruleValid!2190 (LexerInterface!5827 Rule!12276) Bool)

(assert (=> b!3834206 (ruleValid!2190 thiss!20629 (rule!9070 (_1!22972 (v!38943 lt!1330899))))))

(declare-fun lt!1330894 () Unit!58238)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1270 (LexerInterface!5827 Rule!12276 List!40626) Unit!58238)

(assert (=> b!3834206 (= lt!1330894 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1270 thiss!20629 (rule!9070 (_1!22972 (v!38943 lt!1330899))) rules!2768))))

(declare-fun lt!1330895 () Unit!58238)

(declare-fun lemmaCharactersSize!899 (Token!11614) Unit!58238)

(assert (=> b!3834206 (= lt!1330895 (lemmaCharactersSize!899 (_1!22972 (v!38943 lt!1330899))))))

(declare-fun tp!1160473 () Bool)

(declare-fun e!2367971 () Bool)

(declare-fun b!3834207 () Bool)

(declare-fun e!2367977 () Bool)

(assert (=> b!3834207 (= e!2367977 (and tp!1160473 (inv!54637 (tag!7098 (rule!9070 (h!45923 suffixTokens!72)))) (inv!54641 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) e!2367971))))

(declare-fun b!3834208 () Bool)

(declare-fun res!1551980 () Bool)

(assert (=> b!3834208 (=> (not res!1551980) (not e!2367976))))

(declare-fun isEmpty!23914 (List!40624) Bool)

(assert (=> b!3834208 (= res!1551980 (not (isEmpty!23914 prefix!426)))))

(declare-fun b!3834209 () Bool)

(declare-fun res!1551979 () Bool)

(assert (=> b!3834209 (=> (not res!1551979) (not e!2367976))))

(declare-fun isEmpty!23915 (List!40626) Bool)

(assert (=> b!3834209 (= res!1551979 (not (isEmpty!23915 rules!2768)))))

(declare-fun b!3834210 () Bool)

(declare-fun e!2367973 () Bool)

(declare-fun tp_is_empty!19257 () Bool)

(declare-fun tp!1160474 () Bool)

(assert (=> b!3834210 (= e!2367973 (and tp_is_empty!19257 tp!1160474))))

(declare-fun res!1551974 () Bool)

(assert (=> start!358796 (=> (not res!1551974) (not e!2367976))))

(get-info :version)

(assert (=> start!358796 (= res!1551974 ((_ is Lexer!5825) thiss!20629))))

(assert (=> start!358796 e!2367976))

(declare-fun e!2367967 () Bool)

(assert (=> start!358796 e!2367967))

(assert (=> start!358796 true))

(declare-fun e!2367963 () Bool)

(assert (=> start!358796 e!2367963))

(assert (=> start!358796 e!2367969))

(assert (=> start!358796 e!2367964))

(assert (=> start!358796 e!2367975))

(assert (=> start!358796 e!2367973))

(assert (=> b!3834211 (= e!2367966 (and tp!1160487 tp!1160486))))

(declare-fun b!3834212 () Bool)

(assert (=> b!3834212 (= e!2367980 e!2367965)))

(declare-fun res!1551978 () Bool)

(assert (=> b!3834212 (=> (not res!1551978) (not e!2367965))))

(assert (=> b!3834212 (= res!1551978 ((_ is Some!8655) lt!1330899))))

(declare-fun maxPrefix!3131 (LexerInterface!5827 List!40626 List!40624) Option!8656)

(assert (=> b!3834212 (= lt!1330899 (maxPrefix!3131 thiss!20629 rules!2768 lt!1330898))))

(declare-fun b!3834213 () Bool)

(declare-fun res!1551977 () Bool)

(assert (=> b!3834213 (=> (not res!1551977) (not e!2367976))))

(declare-fun rulesInvariant!5170 (LexerInterface!5827 List!40626) Bool)

(assert (=> b!3834213 (= res!1551977 (rulesInvariant!5170 thiss!20629 rules!2768))))

(declare-fun e!2367968 () Bool)

(declare-fun tp!1160481 () Bool)

(declare-fun b!3834214 () Bool)

(assert (=> b!3834214 (= e!2367970 (and tp!1160481 (inv!54637 (tag!7098 (h!45922 rules!2768))) (inv!54641 (transformation!6238 (h!45922 rules!2768))) e!2367968))))

(declare-fun b!3834215 () Bool)

(declare-fun tp!1160476 () Bool)

(assert (=> b!3834215 (= e!2367967 (and tp_is_empty!19257 tp!1160476))))

(declare-fun b!3834216 () Bool)

(declare-fun tp!1160488 () Bool)

(assert (=> b!3834216 (= e!2367963 (and tp_is_empty!19257 tp!1160488))))

(declare-fun b!3834217 () Bool)

(declare-fun tp!1160483 () Bool)

(assert (=> b!3834217 (= e!2367978 (and (inv!21 (value!198417 (h!45923 suffixTokens!72))) e!2367977 tp!1160483))))

(assert (=> b!3834218 (= e!2367968 (and tp!1160472 tp!1160485))))

(declare-fun b!3834219 () Bool)

(declare-fun res!1551975 () Bool)

(assert (=> b!3834219 (=> (not res!1551975) (not e!2367976))))

(declare-fun isEmpty!23916 (List!40627) Bool)

(assert (=> b!3834219 (= res!1551975 (not (isEmpty!23916 prefixTokens!80)))))

(assert (=> b!3834220 (= e!2367971 (and tp!1160480 tp!1160479))))

(assert (= (and start!358796 res!1551974) b!3834209))

(assert (= (and b!3834209 res!1551979) b!3834213))

(assert (= (and b!3834213 res!1551977) b!3834219))

(assert (= (and b!3834219 res!1551975) b!3834208))

(assert (= (and b!3834208 res!1551980) b!3834199))

(assert (= (and b!3834199 res!1551976) b!3834200))

(assert (= (and b!3834200 res!1551973) b!3834212))

(assert (= (and b!3834212 res!1551978) b!3834206))

(assert (= (and start!358796 ((_ is Cons!40500) suffixResult!91)) b!3834215))

(assert (= (and start!358796 ((_ is Cons!40500) suffix!1176)) b!3834216))

(assert (= b!3834214 b!3834218))

(assert (= b!3834205 b!3834214))

(assert (= (and start!358796 ((_ is Cons!40502) rules!2768)) b!3834205))

(assert (= b!3834203 b!3834211))

(assert (= b!3834202 b!3834203))

(assert (= b!3834204 b!3834202))

(assert (= (and start!358796 ((_ is Cons!40503) prefixTokens!80)) b!3834204))

(assert (= b!3834207 b!3834220))

(assert (= b!3834217 b!3834207))

(assert (= b!3834201 b!3834217))

(assert (= (and start!358796 ((_ is Cons!40503) suffixTokens!72)) b!3834201))

(assert (= (and start!358796 ((_ is Cons!40500) prefix!426)) b!3834210))

(declare-fun m!4388427 () Bool)

(assert (=> b!3834203 m!4388427))

(declare-fun m!4388429 () Bool)

(assert (=> b!3834203 m!4388429))

(declare-fun m!4388431 () Bool)

(assert (=> b!3834217 m!4388431))

(declare-fun m!4388433 () Bool)

(assert (=> b!3834214 m!4388433))

(declare-fun m!4388435 () Bool)

(assert (=> b!3834214 m!4388435))

(declare-fun m!4388437 () Bool)

(assert (=> b!3834204 m!4388437))

(declare-fun m!4388439 () Bool)

(assert (=> b!3834199 m!4388439))

(declare-fun m!4388441 () Bool)

(assert (=> b!3834199 m!4388441))

(declare-fun m!4388443 () Bool)

(assert (=> b!3834199 m!4388443))

(declare-fun m!4388445 () Bool)

(assert (=> b!3834200 m!4388445))

(declare-fun m!4388447 () Bool)

(assert (=> b!3834219 m!4388447))

(declare-fun m!4388449 () Bool)

(assert (=> b!3834208 m!4388449))

(declare-fun m!4388451 () Bool)

(assert (=> b!3834212 m!4388451))

(declare-fun m!4388453 () Bool)

(assert (=> b!3834201 m!4388453))

(declare-fun m!4388455 () Bool)

(assert (=> b!3834202 m!4388455))

(declare-fun m!4388457 () Bool)

(assert (=> b!3834206 m!4388457))

(declare-fun m!4388459 () Bool)

(assert (=> b!3834206 m!4388459))

(declare-fun m!4388461 () Bool)

(assert (=> b!3834206 m!4388461))

(declare-fun m!4388463 () Bool)

(assert (=> b!3834206 m!4388463))

(declare-fun m!4388465 () Bool)

(assert (=> b!3834206 m!4388465))

(declare-fun m!4388467 () Bool)

(assert (=> b!3834206 m!4388467))

(declare-fun m!4388469 () Bool)

(assert (=> b!3834206 m!4388469))

(declare-fun m!4388471 () Bool)

(assert (=> b!3834206 m!4388471))

(declare-fun m!4388473 () Bool)

(assert (=> b!3834206 m!4388473))

(assert (=> b!3834206 m!4388459))

(assert (=> b!3834206 m!4388465))

(declare-fun m!4388475 () Bool)

(assert (=> b!3834206 m!4388475))

(declare-fun m!4388477 () Bool)

(assert (=> b!3834209 m!4388477))

(declare-fun m!4388479 () Bool)

(assert (=> b!3834207 m!4388479))

(declare-fun m!4388481 () Bool)

(assert (=> b!3834207 m!4388481))

(declare-fun m!4388483 () Bool)

(assert (=> b!3834213 m!4388483))

(check-sat (not b_next!102559) tp_is_empty!19257 (not b!3834215) (not b!3834204) (not b_next!102567) (not b!3834216) b_and!285045 (not b!3834200) (not b!3834214) (not b!3834217) (not b!3834212) (not b!3834202) (not b!3834213) (not b!3834201) (not b!3834205) (not b!3834210) b_and!285053 (not b!3834206) (not b_next!102561) (not b!3834203) b_and!285051 (not b!3834208) b_and!285043 (not b_next!102557) (not b!3834219) (not b!3834209) (not b!3834207) (not b_next!102565) (not b_next!102563) b_and!285047 b_and!285049 (not b!3834199))
(check-sat (not b_next!102559) b_and!285053 (not b_next!102561) (not b_next!102567) b_and!285051 b_and!285045 (not b_next!102565) b_and!285049 b_and!285043 (not b_next!102557) (not b_next!102563) b_and!285047)
(get-model)

(declare-fun b!3834248 () Bool)

(declare-fun e!2368002 () Bool)

(declare-fun inv!16 (TokenValue!6468) Bool)

(assert (=> b!3834248 (= e!2368002 (inv!16 (value!198417 (h!45923 prefixTokens!80))))))

(declare-fun b!3834249 () Bool)

(declare-fun e!2368003 () Bool)

(declare-fun inv!15 (TokenValue!6468) Bool)

(assert (=> b!3834249 (= e!2368003 (inv!15 (value!198417 (h!45923 prefixTokens!80))))))

(declare-fun b!3834250 () Bool)

(declare-fun res!1551998 () Bool)

(assert (=> b!3834250 (=> res!1551998 e!2368003)))

(assert (=> b!3834250 (= res!1551998 (not ((_ is IntegerValue!19406) (value!198417 (h!45923 prefixTokens!80)))))))

(declare-fun e!2368004 () Bool)

(assert (=> b!3834250 (= e!2368004 e!2368003)))

(declare-fun d!1138050 () Bool)

(declare-fun c!668571 () Bool)

(assert (=> d!1138050 (= c!668571 ((_ is IntegerValue!19404) (value!198417 (h!45923 prefixTokens!80))))))

(assert (=> d!1138050 (= (inv!21 (value!198417 (h!45923 prefixTokens!80))) e!2368002)))

(declare-fun b!3834251 () Bool)

(assert (=> b!3834251 (= e!2368002 e!2368004)))

(declare-fun c!668570 () Bool)

(assert (=> b!3834251 (= c!668570 ((_ is IntegerValue!19405) (value!198417 (h!45923 prefixTokens!80))))))

(declare-fun b!3834252 () Bool)

(declare-fun inv!17 (TokenValue!6468) Bool)

(assert (=> b!3834252 (= e!2368004 (inv!17 (value!198417 (h!45923 prefixTokens!80))))))

(assert (= (and d!1138050 c!668571) b!3834248))

(assert (= (and d!1138050 (not c!668571)) b!3834251))

(assert (= (and b!3834251 c!668570) b!3834252))

(assert (= (and b!3834251 (not c!668570)) b!3834250))

(assert (= (and b!3834250 (not res!1551998)) b!3834249))

(declare-fun m!4388513 () Bool)

(assert (=> b!3834248 m!4388513))

(declare-fun m!4388515 () Bool)

(assert (=> b!3834249 m!4388515))

(declare-fun m!4388517 () Bool)

(assert (=> b!3834252 m!4388517))

(assert (=> b!3834202 d!1138050))

(declare-fun d!1138058 () Bool)

(declare-fun res!1552001 () Bool)

(declare-fun e!2368007 () Bool)

(assert (=> d!1138058 (=> (not res!1552001) (not e!2368007))))

(declare-fun rulesValid!2409 (LexerInterface!5827 List!40626) Bool)

(assert (=> d!1138058 (= res!1552001 (rulesValid!2409 thiss!20629 rules!2768))))

(assert (=> d!1138058 (= (rulesInvariant!5170 thiss!20629 rules!2768) e!2368007)))

(declare-fun b!3834255 () Bool)

(declare-datatypes ((List!40628 0))(
  ( (Nil!40504) (Cons!40504 (h!45924 String!46058) (t!309433 List!40628)) )
))
(declare-fun noDuplicateTag!2410 (LexerInterface!5827 List!40626 List!40628) Bool)

(assert (=> b!3834255 (= e!2368007 (noDuplicateTag!2410 thiss!20629 rules!2768 Nil!40504))))

(assert (= (and d!1138058 res!1552001) b!3834255))

(declare-fun m!4388519 () Bool)

(assert (=> d!1138058 m!4388519))

(declare-fun m!4388521 () Bool)

(assert (=> b!3834255 m!4388521))

(assert (=> b!3834213 d!1138058))

(declare-fun d!1138060 () Bool)

(assert (=> d!1138060 (= (inv!54637 (tag!7098 (h!45922 rules!2768))) (= (mod (str.len (value!198416 (tag!7098 (h!45922 rules!2768)))) 2) 0))))

(assert (=> b!3834214 d!1138060))

(declare-fun d!1138062 () Bool)

(declare-fun res!1552004 () Bool)

(declare-fun e!2368010 () Bool)

(assert (=> d!1138062 (=> (not res!1552004) (not e!2368010))))

(declare-fun semiInverseModEq!2675 (Int Int) Bool)

(assert (=> d!1138062 (= res!1552004 (semiInverseModEq!2675 (toChars!8505 (transformation!6238 (h!45922 rules!2768))) (toValue!8646 (transformation!6238 (h!45922 rules!2768)))))))

(assert (=> d!1138062 (= (inv!54641 (transformation!6238 (h!45922 rules!2768))) e!2368010)))

(declare-fun b!3834258 () Bool)

(declare-fun equivClasses!2574 (Int Int) Bool)

(assert (=> b!3834258 (= e!2368010 (equivClasses!2574 (toChars!8505 (transformation!6238 (h!45922 rules!2768))) (toValue!8646 (transformation!6238 (h!45922 rules!2768)))))))

(assert (= (and d!1138062 res!1552004) b!3834258))

(declare-fun m!4388523 () Bool)

(assert (=> d!1138062 m!4388523))

(declare-fun m!4388525 () Bool)

(assert (=> b!3834258 m!4388525))

(assert (=> b!3834214 d!1138062))

(declare-fun d!1138064 () Bool)

(assert (=> d!1138064 (= (inv!54637 (tag!7098 (rule!9070 (h!45923 prefixTokens!80)))) (= (mod (str.len (value!198416 (tag!7098 (rule!9070 (h!45923 prefixTokens!80))))) 2) 0))))

(assert (=> b!3834203 d!1138064))

(declare-fun d!1138066 () Bool)

(declare-fun res!1552005 () Bool)

(declare-fun e!2368011 () Bool)

(assert (=> d!1138066 (=> (not res!1552005) (not e!2368011))))

(assert (=> d!1138066 (= res!1552005 (semiInverseModEq!2675 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (toValue!8646 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80))))))))

(assert (=> d!1138066 (= (inv!54641 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) e!2368011)))

(declare-fun b!3834259 () Bool)

(assert (=> b!3834259 (= e!2368011 (equivClasses!2574 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (toValue!8646 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80))))))))

(assert (= (and d!1138066 res!1552005) b!3834259))

(declare-fun m!4388527 () Bool)

(assert (=> d!1138066 m!4388527))

(declare-fun m!4388529 () Bool)

(assert (=> b!3834259 m!4388529))

(assert (=> b!3834203 d!1138066))

(declare-fun d!1138068 () Bool)

(declare-fun res!1552010 () Bool)

(declare-fun e!2368014 () Bool)

(assert (=> d!1138068 (=> (not res!1552010) (not e!2368014))))

(assert (=> d!1138068 (= res!1552010 (not (isEmpty!23914 (originalCharacters!6838 (h!45923 prefixTokens!80)))))))

(assert (=> d!1138068 (= (inv!54640 (h!45923 prefixTokens!80)) e!2368014)))

(declare-fun b!3834264 () Bool)

(declare-fun res!1552011 () Bool)

(assert (=> b!3834264 (=> (not res!1552011) (not e!2368014))))

(declare-fun dynLambda!17532 (Int TokenValue!6468) BalanceConc!24492)

(assert (=> b!3834264 (= res!1552011 (= (originalCharacters!6838 (h!45923 prefixTokens!80)) (list!15086 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (value!198417 (h!45923 prefixTokens!80))))))))

(declare-fun b!3834265 () Bool)

(assert (=> b!3834265 (= e!2368014 (= (size!30507 (h!45923 prefixTokens!80)) (size!30508 (originalCharacters!6838 (h!45923 prefixTokens!80)))))))

(assert (= (and d!1138068 res!1552010) b!3834264))

(assert (= (and b!3834264 res!1552011) b!3834265))

(declare-fun b_lambda!112095 () Bool)

(assert (=> (not b_lambda!112095) (not b!3834264)))

(declare-fun t!309374 () Bool)

(declare-fun tb!220057 () Bool)

(assert (=> (and b!3834220 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80))))) t!309374) tb!220057))

(declare-fun b!3834270 () Bool)

(declare-fun e!2368017 () Bool)

(declare-fun tp!1160495 () Bool)

(declare-fun inv!54644 (Conc!12449) Bool)

(assert (=> b!3834270 (= e!2368017 (and (inv!54644 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (value!198417 (h!45923 prefixTokens!80))))) tp!1160495))))

(declare-fun result!268248 () Bool)

(declare-fun inv!54645 (BalanceConc!24492) Bool)

(assert (=> tb!220057 (= result!268248 (and (inv!54645 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (value!198417 (h!45923 prefixTokens!80)))) e!2368017))))

(assert (= tb!220057 b!3834270))

(declare-fun m!4388531 () Bool)

(assert (=> b!3834270 m!4388531))

(declare-fun m!4388533 () Bool)

(assert (=> tb!220057 m!4388533))

(assert (=> b!3834264 t!309374))

(declare-fun b_and!285067 () Bool)

(assert (= b_and!285045 (and (=> t!309374 result!268248) b_and!285067)))

(declare-fun t!309376 () Bool)

(declare-fun tb!220059 () Bool)

(assert (=> (and b!3834218 (= (toChars!8505 (transformation!6238 (h!45922 rules!2768))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80))))) t!309376) tb!220059))

(declare-fun result!268252 () Bool)

(assert (= result!268252 result!268248))

(assert (=> b!3834264 t!309376))

(declare-fun b_and!285069 () Bool)

(assert (= b_and!285049 (and (=> t!309376 result!268252) b_and!285069)))

(declare-fun t!309378 () Bool)

(declare-fun tb!220061 () Bool)

(assert (=> (and b!3834211 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80))))) t!309378) tb!220061))

(declare-fun result!268254 () Bool)

(assert (= result!268254 result!268248))

(assert (=> b!3834264 t!309378))

(declare-fun b_and!285071 () Bool)

(assert (= b_and!285053 (and (=> t!309378 result!268254) b_and!285071)))

(declare-fun m!4388535 () Bool)

(assert (=> d!1138068 m!4388535))

(declare-fun m!4388537 () Bool)

(assert (=> b!3834264 m!4388537))

(assert (=> b!3834264 m!4388537))

(declare-fun m!4388539 () Bool)

(assert (=> b!3834264 m!4388539))

(declare-fun m!4388541 () Bool)

(assert (=> b!3834265 m!4388541))

(assert (=> b!3834204 d!1138068))

(declare-fun d!1138070 () Bool)

(assert (=> d!1138070 (= (size!30507 (_1!22972 (v!38943 lt!1330899))) (size!30508 (originalCharacters!6838 (_1!22972 (v!38943 lt!1330899)))))))

(declare-fun Unit!58241 () Unit!58238)

(assert (=> d!1138070 (= (lemmaCharactersSize!899 (_1!22972 (v!38943 lt!1330899))) Unit!58241)))

(declare-fun bs!582385 () Bool)

(assert (= bs!582385 d!1138070))

(declare-fun m!4388543 () Bool)

(assert (=> bs!582385 m!4388543))

(assert (=> b!3834206 d!1138070))

(declare-fun d!1138072 () Bool)

(declare-fun res!1552019 () Bool)

(declare-fun e!2368029 () Bool)

(assert (=> d!1138072 (=> (not res!1552019) (not e!2368029))))

(declare-fun validRegex!5074 (Regex!11143) Bool)

(assert (=> d!1138072 (= res!1552019 (validRegex!5074 (regex!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))))))

(assert (=> d!1138072 (= (ruleValid!2190 thiss!20629 (rule!9070 (_1!22972 (v!38943 lt!1330899)))) e!2368029)))

(declare-fun b!3834290 () Bool)

(declare-fun res!1552020 () Bool)

(assert (=> b!3834290 (=> (not res!1552020) (not e!2368029))))

(declare-fun nullable!3875 (Regex!11143) Bool)

(assert (=> b!3834290 (= res!1552020 (not (nullable!3875 (regex!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899)))))))))

(declare-fun b!3834291 () Bool)

(assert (=> b!3834291 (= e!2368029 (not (= (tag!7098 (rule!9070 (_1!22972 (v!38943 lt!1330899)))) (String!46059 ""))))))

(assert (= (and d!1138072 res!1552019) b!3834290))

(assert (= (and b!3834290 res!1552020) b!3834291))

(declare-fun m!4388557 () Bool)

(assert (=> d!1138072 m!4388557))

(declare-fun m!4388559 () Bool)

(assert (=> b!3834290 m!4388559))

(assert (=> b!3834206 d!1138072))

(declare-fun e!2368035 () Bool)

(declare-fun b!3834303 () Bool)

(declare-fun lt!1330911 () List!40624)

(assert (=> b!3834303 (= e!2368035 (or (not (= (_2!22972 (v!38943 lt!1330899)) Nil!40500)) (= lt!1330911 lt!1330896)))))

(declare-fun b!3834301 () Bool)

(declare-fun e!2368034 () List!40624)

(assert (=> b!3834301 (= e!2368034 (Cons!40500 (h!45920 lt!1330896) (++!10234 (t!309357 lt!1330896) (_2!22972 (v!38943 lt!1330899)))))))

(declare-fun b!3834300 () Bool)

(assert (=> b!3834300 (= e!2368034 (_2!22972 (v!38943 lt!1330899)))))

(declare-fun d!1138076 () Bool)

(assert (=> d!1138076 e!2368035))

(declare-fun res!1552025 () Bool)

(assert (=> d!1138076 (=> (not res!1552025) (not e!2368035))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6010 (List!40624) (InoxSet C!22472))

(assert (=> d!1138076 (= res!1552025 (= (content!6010 lt!1330911) ((_ map or) (content!6010 lt!1330896) (content!6010 (_2!22972 (v!38943 lt!1330899))))))))

(assert (=> d!1138076 (= lt!1330911 e!2368034)))

(declare-fun c!668580 () Bool)

(assert (=> d!1138076 (= c!668580 ((_ is Nil!40500) lt!1330896))))

(assert (=> d!1138076 (= (++!10234 lt!1330896 (_2!22972 (v!38943 lt!1330899))) lt!1330911)))

(declare-fun b!3834302 () Bool)

(declare-fun res!1552026 () Bool)

(assert (=> b!3834302 (=> (not res!1552026) (not e!2368035))))

(assert (=> b!3834302 (= res!1552026 (= (size!30508 lt!1330911) (+ (size!30508 lt!1330896) (size!30508 (_2!22972 (v!38943 lt!1330899))))))))

(assert (= (and d!1138076 c!668580) b!3834300))

(assert (= (and d!1138076 (not c!668580)) b!3834301))

(assert (= (and d!1138076 res!1552025) b!3834302))

(assert (= (and b!3834302 res!1552026) b!3834303))

(declare-fun m!4388561 () Bool)

(assert (=> b!3834301 m!4388561))

(declare-fun m!4388563 () Bool)

(assert (=> d!1138076 m!4388563))

(declare-fun m!4388565 () Bool)

(assert (=> d!1138076 m!4388565))

(declare-fun m!4388567 () Bool)

(assert (=> d!1138076 m!4388567))

(declare-fun m!4388569 () Bool)

(assert (=> b!3834302 m!4388569))

(assert (=> b!3834302 m!4388471))

(declare-fun m!4388571 () Bool)

(assert (=> b!3834302 m!4388571))

(assert (=> b!3834206 d!1138076))

(declare-fun d!1138078 () Bool)

(declare-fun lt!1330914 () Int)

(assert (=> d!1138078 (>= lt!1330914 0)))

(declare-fun e!2368038 () Int)

(assert (=> d!1138078 (= lt!1330914 e!2368038)))

(declare-fun c!668583 () Bool)

(assert (=> d!1138078 (= c!668583 ((_ is Nil!40500) lt!1330896))))

(assert (=> d!1138078 (= (size!30508 lt!1330896) lt!1330914)))

(declare-fun b!3834308 () Bool)

(assert (=> b!3834308 (= e!2368038 0)))

(declare-fun b!3834309 () Bool)

(assert (=> b!3834309 (= e!2368038 (+ 1 (size!30508 (t!309357 lt!1330896))))))

(assert (= (and d!1138078 c!668583) b!3834308))

(assert (= (and d!1138078 (not c!668583)) b!3834309))

(declare-fun m!4388573 () Bool)

(assert (=> b!3834309 m!4388573))

(assert (=> b!3834206 d!1138078))

(declare-fun d!1138080 () Bool)

(declare-fun lt!1330915 () Int)

(assert (=> d!1138080 (>= lt!1330915 0)))

(declare-fun e!2368039 () Int)

(assert (=> d!1138080 (= lt!1330915 e!2368039)))

(declare-fun c!668584 () Bool)

(assert (=> d!1138080 (= c!668584 ((_ is Nil!40500) lt!1330898))))

(assert (=> d!1138080 (= (size!30508 lt!1330898) lt!1330915)))

(declare-fun b!3834310 () Bool)

(assert (=> b!3834310 (= e!2368039 0)))

(declare-fun b!3834311 () Bool)

(assert (=> b!3834311 (= e!2368039 (+ 1 (size!30508 (t!309357 lt!1330898))))))

(assert (= (and d!1138080 c!668584) b!3834310))

(assert (= (and d!1138080 (not c!668584)) b!3834311))

(declare-fun m!4388575 () Bool)

(assert (=> b!3834311 m!4388575))

(assert (=> b!3834206 d!1138080))

(declare-fun d!1138082 () Bool)

(declare-fun list!15088 (Conc!12449) List!40624)

(assert (=> d!1138082 (= (list!15086 (charsOf!4066 (_1!22972 (v!38943 lt!1330899)))) (list!15088 (c!668564 (charsOf!4066 (_1!22972 (v!38943 lt!1330899))))))))

(declare-fun bs!582386 () Bool)

(assert (= bs!582386 d!1138082))

(declare-fun m!4388577 () Bool)

(assert (=> bs!582386 m!4388577))

(assert (=> b!3834206 d!1138082))

(declare-fun d!1138084 () Bool)

(assert (=> d!1138084 (ruleValid!2190 thiss!20629 (rule!9070 (_1!22972 (v!38943 lt!1330899))))))

(declare-fun lt!1330918 () Unit!58238)

(declare-fun choose!22545 (LexerInterface!5827 Rule!12276 List!40626) Unit!58238)

(assert (=> d!1138084 (= lt!1330918 (choose!22545 thiss!20629 (rule!9070 (_1!22972 (v!38943 lt!1330899))) rules!2768))))

(declare-fun contains!8216 (List!40626 Rule!12276) Bool)

(assert (=> d!1138084 (contains!8216 rules!2768 (rule!9070 (_1!22972 (v!38943 lt!1330899))))))

(assert (=> d!1138084 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1270 thiss!20629 (rule!9070 (_1!22972 (v!38943 lt!1330899))) rules!2768) lt!1330918)))

(declare-fun bs!582387 () Bool)

(assert (= bs!582387 d!1138084))

(assert (=> bs!582387 m!4388457))

(declare-fun m!4388579 () Bool)

(assert (=> bs!582387 m!4388579))

(declare-fun m!4388581 () Bool)

(assert (=> bs!582387 m!4388581))

(assert (=> b!3834206 d!1138084))

(declare-fun d!1138086 () Bool)

(declare-fun lt!1330921 () BalanceConc!24492)

(assert (=> d!1138086 (= (list!15086 lt!1330921) (originalCharacters!6838 (_1!22972 (v!38943 lt!1330899))))))

(assert (=> d!1138086 (= lt!1330921 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))) (value!198417 (_1!22972 (v!38943 lt!1330899)))))))

(assert (=> d!1138086 (= (charsOf!4066 (_1!22972 (v!38943 lt!1330899))) lt!1330921)))

(declare-fun b_lambda!112097 () Bool)

(assert (=> (not b_lambda!112097) (not d!1138086)))

(declare-fun tb!220063 () Bool)

(declare-fun t!309380 () Bool)

(assert (=> (and b!3834220 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899)))))) t!309380) tb!220063))

(declare-fun b!3834312 () Bool)

(declare-fun e!2368040 () Bool)

(declare-fun tp!1160496 () Bool)

(assert (=> b!3834312 (= e!2368040 (and (inv!54644 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))) (value!198417 (_1!22972 (v!38943 lt!1330899)))))) tp!1160496))))

(declare-fun result!268256 () Bool)

(assert (=> tb!220063 (= result!268256 (and (inv!54645 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))) (value!198417 (_1!22972 (v!38943 lt!1330899))))) e!2368040))))

(assert (= tb!220063 b!3834312))

(declare-fun m!4388583 () Bool)

(assert (=> b!3834312 m!4388583))

(declare-fun m!4388585 () Bool)

(assert (=> tb!220063 m!4388585))

(assert (=> d!1138086 t!309380))

(declare-fun b_and!285073 () Bool)

(assert (= b_and!285067 (and (=> t!309380 result!268256) b_and!285073)))

(declare-fun t!309382 () Bool)

(declare-fun tb!220065 () Bool)

(assert (=> (and b!3834218 (= (toChars!8505 (transformation!6238 (h!45922 rules!2768))) (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899)))))) t!309382) tb!220065))

(declare-fun result!268258 () Bool)

(assert (= result!268258 result!268256))

(assert (=> d!1138086 t!309382))

(declare-fun b_and!285075 () Bool)

(assert (= b_and!285069 (and (=> t!309382 result!268258) b_and!285075)))

(declare-fun tb!220067 () Bool)

(declare-fun t!309384 () Bool)

(assert (=> (and b!3834211 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899)))))) t!309384) tb!220067))

(declare-fun result!268260 () Bool)

(assert (= result!268260 result!268256))

(assert (=> d!1138086 t!309384))

(declare-fun b_and!285077 () Bool)

(assert (= b_and!285071 (and (=> t!309384 result!268260) b_and!285077)))

(declare-fun m!4388587 () Bool)

(assert (=> d!1138086 m!4388587))

(declare-fun m!4388589 () Bool)

(assert (=> d!1138086 m!4388589))

(assert (=> b!3834206 d!1138086))

(declare-fun d!1138088 () Bool)

(assert (=> d!1138088 (isPrefix!3337 lt!1330896 (++!10234 lt!1330896 (_2!22972 (v!38943 lt!1330899))))))

(declare-fun lt!1330934 () Unit!58238)

(declare-fun choose!22546 (List!40624 List!40624) Unit!58238)

(assert (=> d!1138088 (= lt!1330934 (choose!22546 lt!1330896 (_2!22972 (v!38943 lt!1330899))))))

(assert (=> d!1138088 (= (lemmaConcatTwoListThenFirstIsPrefix!2200 lt!1330896 (_2!22972 (v!38943 lt!1330899))) lt!1330934)))

(declare-fun bs!582388 () Bool)

(assert (= bs!582388 d!1138088))

(assert (=> bs!582388 m!4388465))

(assert (=> bs!582388 m!4388465))

(assert (=> bs!582388 m!4388467))

(declare-fun m!4388591 () Bool)

(assert (=> bs!582388 m!4388591))

(assert (=> b!3834206 d!1138088))

(declare-fun b!3834367 () Bool)

(declare-fun e!2368069 () Bool)

(declare-fun tail!5797 (List!40624) List!40624)

(assert (=> b!3834367 (= e!2368069 (isPrefix!3337 (tail!5797 lt!1330896) (tail!5797 (++!10234 lt!1330896 (_2!22972 (v!38943 lt!1330899))))))))

(declare-fun b!3834368 () Bool)

(declare-fun e!2368067 () Bool)

(assert (=> b!3834368 (= e!2368067 (>= (size!30508 (++!10234 lt!1330896 (_2!22972 (v!38943 lt!1330899)))) (size!30508 lt!1330896)))))

(declare-fun b!3834365 () Bool)

(declare-fun e!2368068 () Bool)

(assert (=> b!3834365 (= e!2368068 e!2368069)))

(declare-fun res!1552062 () Bool)

(assert (=> b!3834365 (=> (not res!1552062) (not e!2368069))))

(assert (=> b!3834365 (= res!1552062 (not ((_ is Nil!40500) (++!10234 lt!1330896 (_2!22972 (v!38943 lt!1330899))))))))

(declare-fun b!3834366 () Bool)

(declare-fun res!1552064 () Bool)

(assert (=> b!3834366 (=> (not res!1552064) (not e!2368069))))

(declare-fun head!8070 (List!40624) C!22472)

(assert (=> b!3834366 (= res!1552064 (= (head!8070 lt!1330896) (head!8070 (++!10234 lt!1330896 (_2!22972 (v!38943 lt!1330899))))))))

(declare-fun d!1138090 () Bool)

(assert (=> d!1138090 e!2368067))

(declare-fun res!1552063 () Bool)

(assert (=> d!1138090 (=> res!1552063 e!2368067)))

(declare-fun lt!1330942 () Bool)

(assert (=> d!1138090 (= res!1552063 (not lt!1330942))))

(assert (=> d!1138090 (= lt!1330942 e!2368068)))

(declare-fun res!1552061 () Bool)

(assert (=> d!1138090 (=> res!1552061 e!2368068)))

(assert (=> d!1138090 (= res!1552061 ((_ is Nil!40500) lt!1330896))))

(assert (=> d!1138090 (= (isPrefix!3337 lt!1330896 (++!10234 lt!1330896 (_2!22972 (v!38943 lt!1330899)))) lt!1330942)))

(assert (= (and d!1138090 (not res!1552061)) b!3834365))

(assert (= (and b!3834365 res!1552062) b!3834366))

(assert (= (and b!3834366 res!1552064) b!3834367))

(assert (= (and d!1138090 (not res!1552063)) b!3834368))

(declare-fun m!4388639 () Bool)

(assert (=> b!3834367 m!4388639))

(assert (=> b!3834367 m!4388465))

(declare-fun m!4388641 () Bool)

(assert (=> b!3834367 m!4388641))

(assert (=> b!3834367 m!4388639))

(assert (=> b!3834367 m!4388641))

(declare-fun m!4388643 () Bool)

(assert (=> b!3834367 m!4388643))

(assert (=> b!3834368 m!4388465))

(declare-fun m!4388645 () Bool)

(assert (=> b!3834368 m!4388645))

(assert (=> b!3834368 m!4388471))

(declare-fun m!4388647 () Bool)

(assert (=> b!3834366 m!4388647))

(assert (=> b!3834366 m!4388465))

(declare-fun m!4388649 () Bool)

(assert (=> b!3834366 m!4388649))

(assert (=> b!3834206 d!1138090))

(declare-fun b!3834369 () Bool)

(declare-fun e!2368070 () Bool)

(assert (=> b!3834369 (= e!2368070 (inv!16 (value!198417 (h!45923 suffixTokens!72))))))

(declare-fun b!3834370 () Bool)

(declare-fun e!2368071 () Bool)

(assert (=> b!3834370 (= e!2368071 (inv!15 (value!198417 (h!45923 suffixTokens!72))))))

(declare-fun b!3834371 () Bool)

(declare-fun res!1552065 () Bool)

(assert (=> b!3834371 (=> res!1552065 e!2368071)))

(assert (=> b!3834371 (= res!1552065 (not ((_ is IntegerValue!19406) (value!198417 (h!45923 suffixTokens!72)))))))

(declare-fun e!2368072 () Bool)

(assert (=> b!3834371 (= e!2368072 e!2368071)))

(declare-fun d!1138108 () Bool)

(declare-fun c!668595 () Bool)

(assert (=> d!1138108 (= c!668595 ((_ is IntegerValue!19404) (value!198417 (h!45923 suffixTokens!72))))))

(assert (=> d!1138108 (= (inv!21 (value!198417 (h!45923 suffixTokens!72))) e!2368070)))

(declare-fun b!3834372 () Bool)

(assert (=> b!3834372 (= e!2368070 e!2368072)))

(declare-fun c!668594 () Bool)

(assert (=> b!3834372 (= c!668594 ((_ is IntegerValue!19405) (value!198417 (h!45923 suffixTokens!72))))))

(declare-fun b!3834373 () Bool)

(assert (=> b!3834373 (= e!2368072 (inv!17 (value!198417 (h!45923 suffixTokens!72))))))

(assert (= (and d!1138108 c!668595) b!3834369))

(assert (= (and d!1138108 (not c!668595)) b!3834372))

(assert (= (and b!3834372 c!668594) b!3834373))

(assert (= (and b!3834372 (not c!668594)) b!3834371))

(assert (= (and b!3834371 (not res!1552065)) b!3834370))

(declare-fun m!4388651 () Bool)

(assert (=> b!3834369 m!4388651))

(declare-fun m!4388653 () Bool)

(assert (=> b!3834370 m!4388653))

(declare-fun m!4388655 () Bool)

(assert (=> b!3834373 m!4388655))

(assert (=> b!3834217 d!1138108))

(declare-fun d!1138110 () Bool)

(assert (=> d!1138110 (= (inv!54637 (tag!7098 (rule!9070 (h!45923 suffixTokens!72)))) (= (mod (str.len (value!198416 (tag!7098 (rule!9070 (h!45923 suffixTokens!72))))) 2) 0))))

(assert (=> b!3834207 d!1138110))

(declare-fun d!1138112 () Bool)

(declare-fun res!1552070 () Bool)

(declare-fun e!2368075 () Bool)

(assert (=> d!1138112 (=> (not res!1552070) (not e!2368075))))

(assert (=> d!1138112 (= res!1552070 (semiInverseModEq!2675 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (toValue!8646 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72))))))))

(assert (=> d!1138112 (= (inv!54641 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) e!2368075)))

(declare-fun b!3834378 () Bool)

(assert (=> b!3834378 (= e!2368075 (equivClasses!2574 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (toValue!8646 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72))))))))

(assert (= (and d!1138112 res!1552070) b!3834378))

(declare-fun m!4388657 () Bool)

(assert (=> d!1138112 m!4388657))

(declare-fun m!4388659 () Bool)

(assert (=> b!3834378 m!4388659))

(assert (=> b!3834207 d!1138112))

(declare-fun d!1138114 () Bool)

(assert (=> d!1138114 (= (isEmpty!23914 prefix!426) ((_ is Nil!40500) prefix!426))))

(assert (=> b!3834208 d!1138114))

(declare-fun d!1138118 () Bool)

(assert (=> d!1138118 (= (isEmpty!23916 prefixTokens!80) ((_ is Nil!40503) prefixTokens!80))))

(assert (=> b!3834219 d!1138118))

(declare-fun d!1138122 () Bool)

(assert (=> d!1138122 (= (isEmpty!23915 rules!2768) ((_ is Nil!40502) rules!2768))))

(assert (=> b!3834209 d!1138122))

(declare-fun b!3834514 () Bool)

(declare-fun e!2368168 () tuple2!39674)

(assert (=> b!3834514 (= e!2368168 (tuple2!39675 Nil!40503 lt!1330898))))

(declare-fun b!3834515 () Bool)

(declare-fun e!2368170 () Bool)

(declare-fun lt!1330977 () tuple2!39674)

(assert (=> b!3834515 (= e!2368170 (not (isEmpty!23916 (_1!22971 lt!1330977))))))

(declare-fun b!3834516 () Bool)

(declare-fun e!2368169 () Bool)

(assert (=> b!3834516 (= e!2368169 e!2368170)))

(declare-fun res!1552106 () Bool)

(assert (=> b!3834516 (= res!1552106 (< (size!30508 (_2!22971 lt!1330977)) (size!30508 lt!1330898)))))

(assert (=> b!3834516 (=> (not res!1552106) (not e!2368170))))

(declare-fun b!3834517 () Bool)

(assert (=> b!3834517 (= e!2368169 (= (_2!22971 lt!1330977) lt!1330898))))

(declare-fun d!1138126 () Bool)

(assert (=> d!1138126 e!2368169))

(declare-fun c!668616 () Bool)

(declare-fun size!30510 (List!40627) Int)

(assert (=> d!1138126 (= c!668616 (> (size!30510 (_1!22971 lt!1330977)) 0))))

(assert (=> d!1138126 (= lt!1330977 e!2368168)))

(declare-fun c!668615 () Bool)

(declare-fun lt!1330976 () Option!8656)

(assert (=> d!1138126 (= c!668615 ((_ is Some!8655) lt!1330976))))

(assert (=> d!1138126 (= lt!1330976 (maxPrefix!3131 thiss!20629 rules!2768 lt!1330898))))

(assert (=> d!1138126 (= (lexList!1595 thiss!20629 rules!2768 lt!1330898) lt!1330977)))

(declare-fun b!3834513 () Bool)

(declare-fun lt!1330975 () tuple2!39674)

(assert (=> b!3834513 (= e!2368168 (tuple2!39675 (Cons!40503 (_1!22972 (v!38943 lt!1330976)) (_1!22971 lt!1330975)) (_2!22971 lt!1330975)))))

(assert (=> b!3834513 (= lt!1330975 (lexList!1595 thiss!20629 rules!2768 (_2!22972 (v!38943 lt!1330976))))))

(assert (= (and d!1138126 c!668615) b!3834513))

(assert (= (and d!1138126 (not c!668615)) b!3834514))

(assert (= (and d!1138126 c!668616) b!3834516))

(assert (= (and d!1138126 (not c!668616)) b!3834517))

(assert (= (and b!3834516 res!1552106) b!3834515))

(declare-fun m!4388775 () Bool)

(assert (=> b!3834515 m!4388775))

(declare-fun m!4388777 () Bool)

(assert (=> b!3834516 m!4388777))

(assert (=> b!3834516 m!4388463))

(declare-fun m!4388779 () Bool)

(assert (=> d!1138126 m!4388779))

(assert (=> d!1138126 m!4388451))

(declare-fun m!4388781 () Bool)

(assert (=> b!3834513 m!4388781))

(assert (=> b!3834199 d!1138126))

(declare-fun e!2368175 () Bool)

(declare-fun b!3834529 () Bool)

(declare-fun lt!1330980 () List!40627)

(assert (=> b!3834529 (= e!2368175 (or (not (= suffixTokens!72 Nil!40503)) (= lt!1330980 prefixTokens!80)))))

(declare-fun d!1138152 () Bool)

(assert (=> d!1138152 e!2368175))

(declare-fun res!1552112 () Bool)

(assert (=> d!1138152 (=> (not res!1552112) (not e!2368175))))

(declare-fun content!6012 (List!40627) (InoxSet Token!11614))

(assert (=> d!1138152 (= res!1552112 (= (content!6012 lt!1330980) ((_ map or) (content!6012 prefixTokens!80) (content!6012 suffixTokens!72))))))

(declare-fun e!2368176 () List!40627)

(assert (=> d!1138152 (= lt!1330980 e!2368176)))

(declare-fun c!668619 () Bool)

(assert (=> d!1138152 (= c!668619 ((_ is Nil!40503) prefixTokens!80))))

(assert (=> d!1138152 (= (++!10233 prefixTokens!80 suffixTokens!72) lt!1330980)))

(declare-fun b!3834526 () Bool)

(assert (=> b!3834526 (= e!2368176 suffixTokens!72)))

(declare-fun b!3834527 () Bool)

(assert (=> b!3834527 (= e!2368176 (Cons!40503 (h!45923 prefixTokens!80) (++!10233 (t!309360 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3834528 () Bool)

(declare-fun res!1552111 () Bool)

(assert (=> b!3834528 (=> (not res!1552111) (not e!2368175))))

(assert (=> b!3834528 (= res!1552111 (= (size!30510 lt!1330980) (+ (size!30510 prefixTokens!80) (size!30510 suffixTokens!72))))))

(assert (= (and d!1138152 c!668619) b!3834526))

(assert (= (and d!1138152 (not c!668619)) b!3834527))

(assert (= (and d!1138152 res!1552112) b!3834528))

(assert (= (and b!3834528 res!1552111) b!3834529))

(declare-fun m!4388783 () Bool)

(assert (=> d!1138152 m!4388783))

(declare-fun m!4388785 () Bool)

(assert (=> d!1138152 m!4388785))

(declare-fun m!4388787 () Bool)

(assert (=> d!1138152 m!4388787))

(declare-fun m!4388789 () Bool)

(assert (=> b!3834527 m!4388789))

(declare-fun m!4388791 () Bool)

(assert (=> b!3834528 m!4388791))

(declare-fun m!4388793 () Bool)

(assert (=> b!3834528 m!4388793))

(declare-fun m!4388795 () Bool)

(assert (=> b!3834528 m!4388795))

(assert (=> b!3834199 d!1138152))

(declare-fun lt!1330981 () List!40624)

(declare-fun b!3834533 () Bool)

(declare-fun e!2368178 () Bool)

(assert (=> b!3834533 (= e!2368178 (or (not (= suffix!1176 Nil!40500)) (= lt!1330981 prefix!426)))))

(declare-fun b!3834531 () Bool)

(declare-fun e!2368177 () List!40624)

(assert (=> b!3834531 (= e!2368177 (Cons!40500 (h!45920 prefix!426) (++!10234 (t!309357 prefix!426) suffix!1176)))))

(declare-fun b!3834530 () Bool)

(assert (=> b!3834530 (= e!2368177 suffix!1176)))

(declare-fun d!1138154 () Bool)

(assert (=> d!1138154 e!2368178))

(declare-fun res!1552113 () Bool)

(assert (=> d!1138154 (=> (not res!1552113) (not e!2368178))))

(assert (=> d!1138154 (= res!1552113 (= (content!6010 lt!1330981) ((_ map or) (content!6010 prefix!426) (content!6010 suffix!1176))))))

(assert (=> d!1138154 (= lt!1330981 e!2368177)))

(declare-fun c!668620 () Bool)

(assert (=> d!1138154 (= c!668620 ((_ is Nil!40500) prefix!426))))

(assert (=> d!1138154 (= (++!10234 prefix!426 suffix!1176) lt!1330981)))

(declare-fun b!3834532 () Bool)

(declare-fun res!1552114 () Bool)

(assert (=> b!3834532 (=> (not res!1552114) (not e!2368178))))

(assert (=> b!3834532 (= res!1552114 (= (size!30508 lt!1330981) (+ (size!30508 prefix!426) (size!30508 suffix!1176))))))

(assert (= (and d!1138154 c!668620) b!3834530))

(assert (= (and d!1138154 (not c!668620)) b!3834531))

(assert (= (and d!1138154 res!1552113) b!3834532))

(assert (= (and b!3834532 res!1552114) b!3834533))

(declare-fun m!4388797 () Bool)

(assert (=> b!3834531 m!4388797))

(declare-fun m!4388799 () Bool)

(assert (=> d!1138154 m!4388799))

(declare-fun m!4388801 () Bool)

(assert (=> d!1138154 m!4388801))

(declare-fun m!4388803 () Bool)

(assert (=> d!1138154 m!4388803))

(declare-fun m!4388805 () Bool)

(assert (=> b!3834532 m!4388805))

(declare-fun m!4388807 () Bool)

(assert (=> b!3834532 m!4388807))

(declare-fun m!4388809 () Bool)

(assert (=> b!3834532 m!4388809))

(assert (=> b!3834199 d!1138154))

(declare-fun b!3834535 () Bool)

(declare-fun e!2368179 () tuple2!39674)

(assert (=> b!3834535 (= e!2368179 (tuple2!39675 Nil!40503 suffix!1176))))

(declare-fun b!3834536 () Bool)

(declare-fun e!2368181 () Bool)

(declare-fun lt!1330984 () tuple2!39674)

(assert (=> b!3834536 (= e!2368181 (not (isEmpty!23916 (_1!22971 lt!1330984))))))

(declare-fun b!3834537 () Bool)

(declare-fun e!2368180 () Bool)

(assert (=> b!3834537 (= e!2368180 e!2368181)))

(declare-fun res!1552115 () Bool)

(assert (=> b!3834537 (= res!1552115 (< (size!30508 (_2!22971 lt!1330984)) (size!30508 suffix!1176)))))

(assert (=> b!3834537 (=> (not res!1552115) (not e!2368181))))

(declare-fun b!3834538 () Bool)

(assert (=> b!3834538 (= e!2368180 (= (_2!22971 lt!1330984) suffix!1176))))

(declare-fun d!1138156 () Bool)

(assert (=> d!1138156 e!2368180))

(declare-fun c!668622 () Bool)

(assert (=> d!1138156 (= c!668622 (> (size!30510 (_1!22971 lt!1330984)) 0))))

(assert (=> d!1138156 (= lt!1330984 e!2368179)))

(declare-fun c!668621 () Bool)

(declare-fun lt!1330983 () Option!8656)

(assert (=> d!1138156 (= c!668621 ((_ is Some!8655) lt!1330983))))

(assert (=> d!1138156 (= lt!1330983 (maxPrefix!3131 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1138156 (= (lexList!1595 thiss!20629 rules!2768 suffix!1176) lt!1330984)))

(declare-fun b!3834534 () Bool)

(declare-fun lt!1330982 () tuple2!39674)

(assert (=> b!3834534 (= e!2368179 (tuple2!39675 (Cons!40503 (_1!22972 (v!38943 lt!1330983)) (_1!22971 lt!1330982)) (_2!22971 lt!1330982)))))

(assert (=> b!3834534 (= lt!1330982 (lexList!1595 thiss!20629 rules!2768 (_2!22972 (v!38943 lt!1330983))))))

(assert (= (and d!1138156 c!668621) b!3834534))

(assert (= (and d!1138156 (not c!668621)) b!3834535))

(assert (= (and d!1138156 c!668622) b!3834537))

(assert (= (and d!1138156 (not c!668622)) b!3834538))

(assert (= (and b!3834537 res!1552115) b!3834536))

(declare-fun m!4388811 () Bool)

(assert (=> b!3834536 m!4388811))

(declare-fun m!4388813 () Bool)

(assert (=> b!3834537 m!4388813))

(assert (=> b!3834537 m!4388809))

(declare-fun m!4388815 () Bool)

(assert (=> d!1138156 m!4388815))

(declare-fun m!4388817 () Bool)

(assert (=> d!1138156 m!4388817))

(declare-fun m!4388819 () Bool)

(assert (=> b!3834534 m!4388819))

(assert (=> b!3834200 d!1138156))

(declare-fun b!3834557 () Bool)

(declare-fun e!2368190 () Option!8656)

(declare-fun call!281836 () Option!8656)

(assert (=> b!3834557 (= e!2368190 call!281836)))

(declare-fun bm!281831 () Bool)

(declare-fun maxPrefixOneRule!2227 (LexerInterface!5827 Rule!12276 List!40624) Option!8656)

(assert (=> bm!281831 (= call!281836 (maxPrefixOneRule!2227 thiss!20629 (h!45922 rules!2768) lt!1330898))))

(declare-fun b!3834558 () Bool)

(declare-fun e!2368188 () Bool)

(declare-fun lt!1330998 () Option!8656)

(declare-fun get!13433 (Option!8656) tuple2!39676)

(assert (=> b!3834558 (= e!2368188 (contains!8216 rules!2768 (rule!9070 (_1!22972 (get!13433 lt!1330998)))))))

(declare-fun b!3834559 () Bool)

(declare-fun e!2368189 () Bool)

(assert (=> b!3834559 (= e!2368189 e!2368188)))

(declare-fun res!1552135 () Bool)

(assert (=> b!3834559 (=> (not res!1552135) (not e!2368188))))

(declare-fun isDefined!6815 (Option!8656) Bool)

(assert (=> b!3834559 (= res!1552135 (isDefined!6815 lt!1330998))))

(declare-fun b!3834560 () Bool)

(declare-fun res!1552134 () Bool)

(assert (=> b!3834560 (=> (not res!1552134) (not e!2368188))))

(declare-fun matchR!5326 (Regex!11143 List!40624) Bool)

(assert (=> b!3834560 (= res!1552134 (matchR!5326 (regex!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998)))) (list!15086 (charsOf!4066 (_1!22972 (get!13433 lt!1330998))))))))

(declare-fun b!3834562 () Bool)

(declare-fun res!1552131 () Bool)

(assert (=> b!3834562 (=> (not res!1552131) (not e!2368188))))

(declare-fun apply!9483 (TokenValueInjection!12364 BalanceConc!24492) TokenValue!6468)

(declare-fun seqFromList!4511 (List!40624) BalanceConc!24492)

(assert (=> b!3834562 (= res!1552131 (= (value!198417 (_1!22972 (get!13433 lt!1330998))) (apply!9483 (transformation!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998)))) (seqFromList!4511 (originalCharacters!6838 (_1!22972 (get!13433 lt!1330998)))))))))

(declare-fun b!3834563 () Bool)

(declare-fun res!1552130 () Bool)

(assert (=> b!3834563 (=> (not res!1552130) (not e!2368188))))

(assert (=> b!3834563 (= res!1552130 (= (++!10234 (list!15086 (charsOf!4066 (_1!22972 (get!13433 lt!1330998)))) (_2!22972 (get!13433 lt!1330998))) lt!1330898))))

(declare-fun b!3834561 () Bool)

(declare-fun res!1552132 () Bool)

(assert (=> b!3834561 (=> (not res!1552132) (not e!2368188))))

(assert (=> b!3834561 (= res!1552132 (= (list!15086 (charsOf!4066 (_1!22972 (get!13433 lt!1330998)))) (originalCharacters!6838 (_1!22972 (get!13433 lt!1330998)))))))

(declare-fun d!1138158 () Bool)

(assert (=> d!1138158 e!2368189))

(declare-fun res!1552136 () Bool)

(assert (=> d!1138158 (=> res!1552136 e!2368189)))

(declare-fun isEmpty!23918 (Option!8656) Bool)

(assert (=> d!1138158 (= res!1552136 (isEmpty!23918 lt!1330998))))

(assert (=> d!1138158 (= lt!1330998 e!2368190)))

(declare-fun c!668625 () Bool)

(assert (=> d!1138158 (= c!668625 (and ((_ is Cons!40502) rules!2768) ((_ is Nil!40502) (t!309359 rules!2768))))))

(declare-fun lt!1330999 () Unit!58238)

(declare-fun lt!1330995 () Unit!58238)

(assert (=> d!1138158 (= lt!1330999 lt!1330995)))

(assert (=> d!1138158 (isPrefix!3337 lt!1330898 lt!1330898)))

(declare-fun lemmaIsPrefixRefl!2122 (List!40624 List!40624) Unit!58238)

(assert (=> d!1138158 (= lt!1330995 (lemmaIsPrefixRefl!2122 lt!1330898 lt!1330898))))

(declare-fun rulesValidInductive!2200 (LexerInterface!5827 List!40626) Bool)

(assert (=> d!1138158 (rulesValidInductive!2200 thiss!20629 rules!2768)))

(assert (=> d!1138158 (= (maxPrefix!3131 thiss!20629 rules!2768 lt!1330898) lt!1330998)))

(declare-fun b!3834564 () Bool)

(declare-fun res!1552133 () Bool)

(assert (=> b!3834564 (=> (not res!1552133) (not e!2368188))))

(assert (=> b!3834564 (= res!1552133 (< (size!30508 (_2!22972 (get!13433 lt!1330998))) (size!30508 lt!1330898)))))

(declare-fun b!3834565 () Bool)

(declare-fun lt!1330996 () Option!8656)

(declare-fun lt!1330997 () Option!8656)

(assert (=> b!3834565 (= e!2368190 (ite (and ((_ is None!8655) lt!1330996) ((_ is None!8655) lt!1330997)) None!8655 (ite ((_ is None!8655) lt!1330997) lt!1330996 (ite ((_ is None!8655) lt!1330996) lt!1330997 (ite (>= (size!30507 (_1!22972 (v!38943 lt!1330996))) (size!30507 (_1!22972 (v!38943 lt!1330997)))) lt!1330996 lt!1330997)))))))

(assert (=> b!3834565 (= lt!1330996 call!281836)))

(assert (=> b!3834565 (= lt!1330997 (maxPrefix!3131 thiss!20629 (t!309359 rules!2768) lt!1330898))))

(assert (= (and d!1138158 c!668625) b!3834557))

(assert (= (and d!1138158 (not c!668625)) b!3834565))

(assert (= (or b!3834557 b!3834565) bm!281831))

(assert (= (and d!1138158 (not res!1552136)) b!3834559))

(assert (= (and b!3834559 res!1552135) b!3834561))

(assert (= (and b!3834561 res!1552132) b!3834564))

(assert (= (and b!3834564 res!1552133) b!3834563))

(assert (= (and b!3834563 res!1552130) b!3834562))

(assert (= (and b!3834562 res!1552131) b!3834560))

(assert (= (and b!3834560 res!1552134) b!3834558))

(declare-fun m!4388821 () Bool)

(assert (=> bm!281831 m!4388821))

(declare-fun m!4388823 () Bool)

(assert (=> b!3834562 m!4388823))

(declare-fun m!4388825 () Bool)

(assert (=> b!3834562 m!4388825))

(assert (=> b!3834562 m!4388825))

(declare-fun m!4388827 () Bool)

(assert (=> b!3834562 m!4388827))

(assert (=> b!3834560 m!4388823))

(declare-fun m!4388829 () Bool)

(assert (=> b!3834560 m!4388829))

(assert (=> b!3834560 m!4388829))

(declare-fun m!4388831 () Bool)

(assert (=> b!3834560 m!4388831))

(assert (=> b!3834560 m!4388831))

(declare-fun m!4388833 () Bool)

(assert (=> b!3834560 m!4388833))

(declare-fun m!4388835 () Bool)

(assert (=> b!3834565 m!4388835))

(assert (=> b!3834563 m!4388823))

(assert (=> b!3834563 m!4388829))

(assert (=> b!3834563 m!4388829))

(assert (=> b!3834563 m!4388831))

(assert (=> b!3834563 m!4388831))

(declare-fun m!4388837 () Bool)

(assert (=> b!3834563 m!4388837))

(assert (=> b!3834564 m!4388823))

(declare-fun m!4388839 () Bool)

(assert (=> b!3834564 m!4388839))

(assert (=> b!3834564 m!4388463))

(declare-fun m!4388841 () Bool)

(assert (=> b!3834559 m!4388841))

(assert (=> b!3834561 m!4388823))

(assert (=> b!3834561 m!4388829))

(assert (=> b!3834561 m!4388829))

(assert (=> b!3834561 m!4388831))

(assert (=> b!3834558 m!4388823))

(declare-fun m!4388843 () Bool)

(assert (=> b!3834558 m!4388843))

(declare-fun m!4388845 () Bool)

(assert (=> d!1138158 m!4388845))

(declare-fun m!4388847 () Bool)

(assert (=> d!1138158 m!4388847))

(declare-fun m!4388849 () Bool)

(assert (=> d!1138158 m!4388849))

(declare-fun m!4388851 () Bool)

(assert (=> d!1138158 m!4388851))

(assert (=> b!3834212 d!1138158))

(declare-fun d!1138160 () Bool)

(declare-fun res!1552137 () Bool)

(declare-fun e!2368191 () Bool)

(assert (=> d!1138160 (=> (not res!1552137) (not e!2368191))))

(assert (=> d!1138160 (= res!1552137 (not (isEmpty!23914 (originalCharacters!6838 (h!45923 suffixTokens!72)))))))

(assert (=> d!1138160 (= (inv!54640 (h!45923 suffixTokens!72)) e!2368191)))

(declare-fun b!3834566 () Bool)

(declare-fun res!1552138 () Bool)

(assert (=> b!3834566 (=> (not res!1552138) (not e!2368191))))

(assert (=> b!3834566 (= res!1552138 (= (originalCharacters!6838 (h!45923 suffixTokens!72)) (list!15086 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (value!198417 (h!45923 suffixTokens!72))))))))

(declare-fun b!3834567 () Bool)

(assert (=> b!3834567 (= e!2368191 (= (size!30507 (h!45923 suffixTokens!72)) (size!30508 (originalCharacters!6838 (h!45923 suffixTokens!72)))))))

(assert (= (and d!1138160 res!1552137) b!3834566))

(assert (= (and b!3834566 res!1552138) b!3834567))

(declare-fun b_lambda!112105 () Bool)

(assert (=> (not b_lambda!112105) (not b!3834566)))

(declare-fun t!309410 () Bool)

(declare-fun tb!220093 () Bool)

(assert (=> (and b!3834220 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72))))) t!309410) tb!220093))

(declare-fun b!3834568 () Bool)

(declare-fun e!2368192 () Bool)

(declare-fun tp!1160562 () Bool)

(assert (=> b!3834568 (= e!2368192 (and (inv!54644 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (value!198417 (h!45923 suffixTokens!72))))) tp!1160562))))

(declare-fun result!268294 () Bool)

(assert (=> tb!220093 (= result!268294 (and (inv!54645 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (value!198417 (h!45923 suffixTokens!72)))) e!2368192))))

(assert (= tb!220093 b!3834568))

(declare-fun m!4388853 () Bool)

(assert (=> b!3834568 m!4388853))

(declare-fun m!4388855 () Bool)

(assert (=> tb!220093 m!4388855))

(assert (=> b!3834566 t!309410))

(declare-fun b_and!285097 () Bool)

(assert (= b_and!285073 (and (=> t!309410 result!268294) b_and!285097)))

(declare-fun t!309412 () Bool)

(declare-fun tb!220095 () Bool)

(assert (=> (and b!3834218 (= (toChars!8505 (transformation!6238 (h!45922 rules!2768))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72))))) t!309412) tb!220095))

(declare-fun result!268296 () Bool)

(assert (= result!268296 result!268294))

(assert (=> b!3834566 t!309412))

(declare-fun b_and!285099 () Bool)

(assert (= b_and!285075 (and (=> t!309412 result!268296) b_and!285099)))

(declare-fun t!309414 () Bool)

(declare-fun tb!220097 () Bool)

(assert (=> (and b!3834211 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72))))) t!309414) tb!220097))

(declare-fun result!268298 () Bool)

(assert (= result!268298 result!268294))

(assert (=> b!3834566 t!309414))

(declare-fun b_and!285101 () Bool)

(assert (= b_and!285077 (and (=> t!309414 result!268298) b_and!285101)))

(declare-fun m!4388857 () Bool)

(assert (=> d!1138160 m!4388857))

(declare-fun m!4388859 () Bool)

(assert (=> b!3834566 m!4388859))

(assert (=> b!3834566 m!4388859))

(declare-fun m!4388861 () Bool)

(assert (=> b!3834566 m!4388861))

(declare-fun m!4388863 () Bool)

(assert (=> b!3834567 m!4388863))

(assert (=> b!3834201 d!1138160))

(declare-fun b!3834573 () Bool)

(declare-fun e!2368195 () Bool)

(declare-fun tp!1160565 () Bool)

(assert (=> b!3834573 (= e!2368195 (and tp_is_empty!19257 tp!1160565))))

(assert (=> b!3834202 (= tp!1160478 e!2368195)))

(assert (= (and b!3834202 ((_ is Cons!40500) (originalCharacters!6838 (h!45923 prefixTokens!80)))) b!3834573))

(declare-fun b!3834584 () Bool)

(declare-fun e!2368198 () Bool)

(assert (=> b!3834584 (= e!2368198 tp_is_empty!19257)))

(declare-fun b!3834587 () Bool)

(declare-fun tp!1160579 () Bool)

(declare-fun tp!1160576 () Bool)

(assert (=> b!3834587 (= e!2368198 (and tp!1160579 tp!1160576))))

(declare-fun b!3834586 () Bool)

(declare-fun tp!1160578 () Bool)

(assert (=> b!3834586 (= e!2368198 tp!1160578)))

(assert (=> b!3834214 (= tp!1160481 e!2368198)))

(declare-fun b!3834585 () Bool)

(declare-fun tp!1160577 () Bool)

(declare-fun tp!1160580 () Bool)

(assert (=> b!3834585 (= e!2368198 (and tp!1160577 tp!1160580))))

(assert (= (and b!3834214 ((_ is ElementMatch!11143) (regex!6238 (h!45922 rules!2768)))) b!3834584))

(assert (= (and b!3834214 ((_ is Concat!17612) (regex!6238 (h!45922 rules!2768)))) b!3834585))

(assert (= (and b!3834214 ((_ is Star!11143) (regex!6238 (h!45922 rules!2768)))) b!3834586))

(assert (= (and b!3834214 ((_ is Union!11143) (regex!6238 (h!45922 rules!2768)))) b!3834587))

(declare-fun b!3834588 () Bool)

(declare-fun e!2368199 () Bool)

(assert (=> b!3834588 (= e!2368199 tp_is_empty!19257)))

(declare-fun b!3834591 () Bool)

(declare-fun tp!1160584 () Bool)

(declare-fun tp!1160581 () Bool)

(assert (=> b!3834591 (= e!2368199 (and tp!1160584 tp!1160581))))

(declare-fun b!3834590 () Bool)

(declare-fun tp!1160583 () Bool)

(assert (=> b!3834590 (= e!2368199 tp!1160583)))

(assert (=> b!3834203 (= tp!1160475 e!2368199)))

(declare-fun b!3834589 () Bool)

(declare-fun tp!1160582 () Bool)

(declare-fun tp!1160585 () Bool)

(assert (=> b!3834589 (= e!2368199 (and tp!1160582 tp!1160585))))

(assert (= (and b!3834203 ((_ is ElementMatch!11143) (regex!6238 (rule!9070 (h!45923 prefixTokens!80))))) b!3834588))

(assert (= (and b!3834203 ((_ is Concat!17612) (regex!6238 (rule!9070 (h!45923 prefixTokens!80))))) b!3834589))

(assert (= (and b!3834203 ((_ is Star!11143) (regex!6238 (rule!9070 (h!45923 prefixTokens!80))))) b!3834590))

(assert (= (and b!3834203 ((_ is Union!11143) (regex!6238 (rule!9070 (h!45923 prefixTokens!80))))) b!3834591))

(declare-fun b!3834605 () Bool)

(declare-fun b_free!101877 () Bool)

(declare-fun b_next!102581 () Bool)

(assert (=> b!3834605 (= b_free!101877 (not b_next!102581))))

(declare-fun tp!1160596 () Bool)

(declare-fun b_and!285103 () Bool)

(assert (=> b!3834605 (= tp!1160596 b_and!285103)))

(declare-fun b_free!101879 () Bool)

(declare-fun b_next!102583 () Bool)

(assert (=> b!3834605 (= b_free!101879 (not b_next!102583))))

(declare-fun t!309416 () Bool)

(declare-fun tb!220099 () Bool)

(assert (=> (and b!3834605 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80))))) t!309416) tb!220099))

(declare-fun result!268306 () Bool)

(assert (= result!268306 result!268248))

(assert (=> b!3834264 t!309416))

(declare-fun tb!220101 () Bool)

(declare-fun t!309418 () Bool)

(assert (=> (and b!3834605 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80))))) (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899)))))) t!309418) tb!220101))

(declare-fun result!268308 () Bool)

(assert (= result!268308 result!268256))

(assert (=> d!1138086 t!309418))

(declare-fun tb!220103 () Bool)

(declare-fun t!309420 () Bool)

(assert (=> (and b!3834605 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72))))) t!309420) tb!220103))

(declare-fun result!268310 () Bool)

(assert (= result!268310 result!268294))

(assert (=> b!3834566 t!309420))

(declare-fun b_and!285105 () Bool)

(declare-fun tp!1160597 () Bool)

(assert (=> b!3834605 (= tp!1160597 (and (=> t!309416 result!268306) (=> t!309418 result!268308) (=> t!309420 result!268310) b_and!285105))))

(declare-fun e!2368217 () Bool)

(assert (=> b!3834204 (= tp!1160482 e!2368217)))

(declare-fun e!2368216 () Bool)

(assert (=> b!3834605 (= e!2368216 (and tp!1160596 tp!1160597))))

(declare-fun e!2368215 () Bool)

(declare-fun b!3834602 () Bool)

(declare-fun tp!1160599 () Bool)

(assert (=> b!3834602 (= e!2368217 (and (inv!54640 (h!45923 (t!309360 prefixTokens!80))) e!2368215 tp!1160599))))

(declare-fun tp!1160600 () Bool)

(declare-fun b!3834604 () Bool)

(declare-fun e!2368212 () Bool)

(assert (=> b!3834604 (= e!2368212 (and tp!1160600 (inv!54637 (tag!7098 (rule!9070 (h!45923 (t!309360 prefixTokens!80))))) (inv!54641 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80))))) e!2368216))))

(declare-fun b!3834603 () Bool)

(declare-fun tp!1160598 () Bool)

(assert (=> b!3834603 (= e!2368215 (and (inv!21 (value!198417 (h!45923 (t!309360 prefixTokens!80)))) e!2368212 tp!1160598))))

(assert (= b!3834604 b!3834605))

(assert (= b!3834603 b!3834604))

(assert (= b!3834602 b!3834603))

(assert (= (and b!3834204 ((_ is Cons!40503) (t!309360 prefixTokens!80))) b!3834602))

(declare-fun m!4388865 () Bool)

(assert (=> b!3834602 m!4388865))

(declare-fun m!4388867 () Bool)

(assert (=> b!3834604 m!4388867))

(declare-fun m!4388869 () Bool)

(assert (=> b!3834604 m!4388869))

(declare-fun m!4388871 () Bool)

(assert (=> b!3834603 m!4388871))

(declare-fun b!3834606 () Bool)

(declare-fun e!2368218 () Bool)

(declare-fun tp!1160601 () Bool)

(assert (=> b!3834606 (= e!2368218 (and tp_is_empty!19257 tp!1160601))))

(assert (=> b!3834215 (= tp!1160476 e!2368218)))

(assert (= (and b!3834215 ((_ is Cons!40500) (t!309357 suffixResult!91))) b!3834606))

(declare-fun b!3834607 () Bool)

(declare-fun e!2368219 () Bool)

(declare-fun tp!1160602 () Bool)

(assert (=> b!3834607 (= e!2368219 (and tp_is_empty!19257 tp!1160602))))

(assert (=> b!3834216 (= tp!1160488 e!2368219)))

(assert (= (and b!3834216 ((_ is Cons!40500) (t!309357 suffix!1176))) b!3834607))

(declare-fun b!3834618 () Bool)

(declare-fun b_free!101881 () Bool)

(declare-fun b_next!102585 () Bool)

(assert (=> b!3834618 (= b_free!101881 (not b_next!102585))))

(declare-fun tp!1160614 () Bool)

(declare-fun b_and!285107 () Bool)

(assert (=> b!3834618 (= tp!1160614 b_and!285107)))

(declare-fun b_free!101883 () Bool)

(declare-fun b_next!102587 () Bool)

(assert (=> b!3834618 (= b_free!101883 (not b_next!102587))))

(declare-fun tb!220105 () Bool)

(declare-fun t!309422 () Bool)

(assert (=> (and b!3834618 (= (toChars!8505 (transformation!6238 (h!45922 (t!309359 rules!2768)))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80))))) t!309422) tb!220105))

(declare-fun result!268314 () Bool)

(assert (= result!268314 result!268248))

(assert (=> b!3834264 t!309422))

(declare-fun tb!220107 () Bool)

(declare-fun t!309424 () Bool)

(assert (=> (and b!3834618 (= (toChars!8505 (transformation!6238 (h!45922 (t!309359 rules!2768)))) (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899)))))) t!309424) tb!220107))

(declare-fun result!268316 () Bool)

(assert (= result!268316 result!268256))

(assert (=> d!1138086 t!309424))

(declare-fun tb!220109 () Bool)

(declare-fun t!309426 () Bool)

(assert (=> (and b!3834618 (= (toChars!8505 (transformation!6238 (h!45922 (t!309359 rules!2768)))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72))))) t!309426) tb!220109))

(declare-fun result!268318 () Bool)

(assert (= result!268318 result!268294))

(assert (=> b!3834566 t!309426))

(declare-fun tp!1160611 () Bool)

(declare-fun b_and!285109 () Bool)

(assert (=> b!3834618 (= tp!1160611 (and (=> t!309422 result!268314) (=> t!309424 result!268316) (=> t!309426 result!268318) b_and!285109))))

(declare-fun e!2368228 () Bool)

(assert (=> b!3834618 (= e!2368228 (and tp!1160614 tp!1160611))))

(declare-fun e!2368230 () Bool)

(declare-fun tp!1160613 () Bool)

(declare-fun b!3834617 () Bool)

(assert (=> b!3834617 (= e!2368230 (and tp!1160613 (inv!54637 (tag!7098 (h!45922 (t!309359 rules!2768)))) (inv!54641 (transformation!6238 (h!45922 (t!309359 rules!2768)))) e!2368228))))

(declare-fun b!3834616 () Bool)

(declare-fun e!2368229 () Bool)

(declare-fun tp!1160612 () Bool)

(assert (=> b!3834616 (= e!2368229 (and e!2368230 tp!1160612))))

(assert (=> b!3834205 (= tp!1160484 e!2368229)))

(assert (= b!3834617 b!3834618))

(assert (= b!3834616 b!3834617))

(assert (= (and b!3834205 ((_ is Cons!40502) (t!309359 rules!2768))) b!3834616))

(declare-fun m!4388873 () Bool)

(assert (=> b!3834617 m!4388873))

(declare-fun m!4388875 () Bool)

(assert (=> b!3834617 m!4388875))

(declare-fun b!3834619 () Bool)

(declare-fun e!2368232 () Bool)

(declare-fun tp!1160615 () Bool)

(assert (=> b!3834619 (= e!2368232 (and tp_is_empty!19257 tp!1160615))))

(assert (=> b!3834217 (= tp!1160483 e!2368232)))

(assert (= (and b!3834217 ((_ is Cons!40500) (originalCharacters!6838 (h!45923 suffixTokens!72)))) b!3834619))

(declare-fun b!3834620 () Bool)

(declare-fun e!2368233 () Bool)

(assert (=> b!3834620 (= e!2368233 tp_is_empty!19257)))

(declare-fun b!3834623 () Bool)

(declare-fun tp!1160619 () Bool)

(declare-fun tp!1160616 () Bool)

(assert (=> b!3834623 (= e!2368233 (and tp!1160619 tp!1160616))))

(declare-fun b!3834622 () Bool)

(declare-fun tp!1160618 () Bool)

(assert (=> b!3834622 (= e!2368233 tp!1160618)))

(assert (=> b!3834207 (= tp!1160473 e!2368233)))

(declare-fun b!3834621 () Bool)

(declare-fun tp!1160617 () Bool)

(declare-fun tp!1160620 () Bool)

(assert (=> b!3834621 (= e!2368233 (and tp!1160617 tp!1160620))))

(assert (= (and b!3834207 ((_ is ElementMatch!11143) (regex!6238 (rule!9070 (h!45923 suffixTokens!72))))) b!3834620))

(assert (= (and b!3834207 ((_ is Concat!17612) (regex!6238 (rule!9070 (h!45923 suffixTokens!72))))) b!3834621))

(assert (= (and b!3834207 ((_ is Star!11143) (regex!6238 (rule!9070 (h!45923 suffixTokens!72))))) b!3834622))

(assert (= (and b!3834207 ((_ is Union!11143) (regex!6238 (rule!9070 (h!45923 suffixTokens!72))))) b!3834623))

(declare-fun b!3834624 () Bool)

(declare-fun e!2368234 () Bool)

(declare-fun tp!1160621 () Bool)

(assert (=> b!3834624 (= e!2368234 (and tp_is_empty!19257 tp!1160621))))

(assert (=> b!3834210 (= tp!1160474 e!2368234)))

(assert (= (and b!3834210 ((_ is Cons!40500) (t!309357 prefix!426))) b!3834624))

(declare-fun b!3834628 () Bool)

(declare-fun b_free!101885 () Bool)

(declare-fun b_next!102589 () Bool)

(assert (=> b!3834628 (= b_free!101885 (not b_next!102589))))

(declare-fun tp!1160622 () Bool)

(declare-fun b_and!285111 () Bool)

(assert (=> b!3834628 (= tp!1160622 b_and!285111)))

(declare-fun b_free!101887 () Bool)

(declare-fun b_next!102591 () Bool)

(assert (=> b!3834628 (= b_free!101887 (not b_next!102591))))

(declare-fun t!309428 () Bool)

(declare-fun tb!220111 () Bool)

(assert (=> (and b!3834628 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80))))) t!309428) tb!220111))

(declare-fun result!268320 () Bool)

(assert (= result!268320 result!268248))

(assert (=> b!3834264 t!309428))

(declare-fun tb!220113 () Bool)

(declare-fun t!309430 () Bool)

(assert (=> (and b!3834628 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72))))) (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899)))))) t!309430) tb!220113))

(declare-fun result!268322 () Bool)

(assert (= result!268322 result!268256))

(assert (=> d!1138086 t!309430))

(declare-fun t!309432 () Bool)

(declare-fun tb!220115 () Bool)

(assert (=> (and b!3834628 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72))))) t!309432) tb!220115))

(declare-fun result!268324 () Bool)

(assert (= result!268324 result!268294))

(assert (=> b!3834566 t!309432))

(declare-fun b_and!285113 () Bool)

(declare-fun tp!1160623 () Bool)

(assert (=> b!3834628 (= tp!1160623 (and (=> t!309428 result!268320) (=> t!309430 result!268322) (=> t!309432 result!268324) b_and!285113))))

(declare-fun e!2368240 () Bool)

(assert (=> b!3834201 (= tp!1160477 e!2368240)))

(declare-fun e!2368239 () Bool)

(assert (=> b!3834628 (= e!2368239 (and tp!1160622 tp!1160623))))

(declare-fun b!3834625 () Bool)

(declare-fun e!2368238 () Bool)

(declare-fun tp!1160625 () Bool)

(assert (=> b!3834625 (= e!2368240 (and (inv!54640 (h!45923 (t!309360 suffixTokens!72))) e!2368238 tp!1160625))))

(declare-fun e!2368235 () Bool)

(declare-fun tp!1160626 () Bool)

(declare-fun b!3834627 () Bool)

(assert (=> b!3834627 (= e!2368235 (and tp!1160626 (inv!54637 (tag!7098 (rule!9070 (h!45923 (t!309360 suffixTokens!72))))) (inv!54641 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72))))) e!2368239))))

(declare-fun b!3834626 () Bool)

(declare-fun tp!1160624 () Bool)

(assert (=> b!3834626 (= e!2368238 (and (inv!21 (value!198417 (h!45923 (t!309360 suffixTokens!72)))) e!2368235 tp!1160624))))

(assert (= b!3834627 b!3834628))

(assert (= b!3834626 b!3834627))

(assert (= b!3834625 b!3834626))

(assert (= (and b!3834201 ((_ is Cons!40503) (t!309360 suffixTokens!72))) b!3834625))

(declare-fun m!4388877 () Bool)

(assert (=> b!3834625 m!4388877))

(declare-fun m!4388879 () Bool)

(assert (=> b!3834627 m!4388879))

(declare-fun m!4388881 () Bool)

(assert (=> b!3834627 m!4388881))

(declare-fun m!4388883 () Bool)

(assert (=> b!3834626 m!4388883))

(declare-fun b_lambda!112107 () Bool)

(assert (= b_lambda!112105 (or (and b!3834618 b_free!101883 (= (toChars!8505 (transformation!6238 (h!45922 (t!309359 rules!2768)))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))))) (and b!3834211 b_free!101863 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))))) (and b!3834628 b_free!101887 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))))) (and b!3834220 b_free!101855) (and b!3834218 b_free!101859 (= (toChars!8505 (transformation!6238 (h!45922 rules!2768))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))))) (and b!3834605 b_free!101879 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))))) b_lambda!112107)))

(declare-fun b_lambda!112109 () Bool)

(assert (= b_lambda!112095 (or (and b!3834220 b_free!101855 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))))) (and b!3834218 b_free!101859 (= (toChars!8505 (transformation!6238 (h!45922 rules!2768))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))))) (and b!3834211 b_free!101863) (and b!3834605 b_free!101879 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))))) (and b!3834618 b_free!101883 (= (toChars!8505 (transformation!6238 (h!45922 (t!309359 rules!2768)))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))))) (and b!3834628 b_free!101887 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))))) b_lambda!112109)))

(check-sat (not b!3834290) (not b!3834537) (not tb!220057) (not tb!220063) (not b!3834591) (not b!3834602) (not b_next!102559) (not b_next!102581) (not d!1138068) (not b!3834528) (not b!3834565) (not b!3834270) (not b!3834590) (not b!3834617) (not b!3834312) tp_is_empty!19257 (not b!3834301) (not b!3834567) (not b!3834255) (not b_next!102585) b_and!285111 (not b!3834370) (not b!3834564) (not b!3834373) (not d!1138156) (not b!3834562) (not b!3834531) (not b!3834259) (not b!3834252) (not b!3834513) (not b_next!102589) (not b_next!102583) (not b_next!102561) (not b!3834563) (not b!3834515) (not b!3834603) (not b_next!102567) (not tb!220093) (not b!3834585) b_and!285051 (not b!3834248) (not b!3834309) (not b!3834249) (not b!3834607) (not b_next!102591) (not b_next!102557) (not b!3834624) b_and!285043 (not b!3834587) (not b!3834264) (not b!3834534) (not d!1138112) (not b!3834560) (not b!3834589) (not b!3834616) (not b_lambda!112107) (not d!1138158) (not b!3834621) (not b!3834606) (not b!3834566) (not d!1138062) (not b!3834532) (not b!3834623) (not b!3834559) b_and!285113 (not b!3834627) (not b!3834378) (not d!1138058) (not d!1138066) (not b!3834302) (not d!1138072) (not d!1138154) b_and!285099 (not b!3834568) (not d!1138082) (not b_lambda!112109) (not b!3834367) (not b!3834366) (not b!3834311) (not b!3834622) (not b_next!102565) (not b!3834265) (not b!3834604) (not b!3834561) (not b!3834258) (not b!3834536) b_and!285107 (not bm!281831) (not d!1138088) (not b_lambda!112097) (not d!1138070) b_and!285105 (not b!3834586) b_and!285109 (not b_next!102563) (not d!1138084) b_and!285047 (not d!1138160) (not b!3834573) (not b!3834625) b_and!285103 (not b!3834619) (not b!3834368) (not b!3834626) (not b!3834369) (not d!1138076) (not d!1138152) (not d!1138086) b_and!285101 b_and!285097 (not d!1138126) (not b!3834527) (not b!3834516) (not b!3834558) (not b_next!102587))
(check-sat (not b_next!102559) (not b_next!102581) (not b_next!102585) b_and!285111 (not b_next!102567) b_and!285051 b_and!285113 b_and!285099 (not b_next!102565) b_and!285107 b_and!285103 (not b_next!102587) (not b_next!102589) (not b_next!102583) (not b_next!102561) b_and!285043 (not b_next!102591) (not b_next!102557) b_and!285105 b_and!285109 (not b_next!102563) b_and!285047 b_and!285101 b_and!285097)
(get-model)

(declare-fun d!1138192 () Bool)

(declare-fun lt!1331014 () Int)

(assert (=> d!1138192 (>= lt!1331014 0)))

(declare-fun e!2368281 () Int)

(assert (=> d!1138192 (= lt!1331014 e!2368281)))

(declare-fun c!668646 () Bool)

(assert (=> d!1138192 (= c!668646 ((_ is Nil!40500) (originalCharacters!6838 (h!45923 suffixTokens!72))))))

(assert (=> d!1138192 (= (size!30508 (originalCharacters!6838 (h!45923 suffixTokens!72))) lt!1331014)))

(declare-fun b!3834707 () Bool)

(assert (=> b!3834707 (= e!2368281 0)))

(declare-fun b!3834708 () Bool)

(assert (=> b!3834708 (= e!2368281 (+ 1 (size!30508 (t!309357 (originalCharacters!6838 (h!45923 suffixTokens!72))))))))

(assert (= (and d!1138192 c!668646) b!3834707))

(assert (= (and d!1138192 (not c!668646)) b!3834708))

(declare-fun m!4388971 () Bool)

(assert (=> b!3834708 m!4388971))

(assert (=> b!3834567 d!1138192))

(declare-fun d!1138194 () Bool)

(assert (=> d!1138194 (= (get!13433 lt!1330998) (v!38943 lt!1330998))))

(assert (=> b!3834562 d!1138194))

(declare-fun d!1138196 () Bool)

(declare-fun dynLambda!17536 (Int BalanceConc!24492) TokenValue!6468)

(assert (=> d!1138196 (= (apply!9483 (transformation!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998)))) (seqFromList!4511 (originalCharacters!6838 (_1!22972 (get!13433 lt!1330998))))) (dynLambda!17536 (toValue!8646 (transformation!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998))))) (seqFromList!4511 (originalCharacters!6838 (_1!22972 (get!13433 lt!1330998))))))))

(declare-fun b_lambda!112113 () Bool)

(assert (=> (not b_lambda!112113) (not d!1138196)))

(declare-fun tb!220129 () Bool)

(declare-fun t!309448 () Bool)

(assert (=> (and b!3834218 (= (toValue!8646 (transformation!6238 (h!45922 rules!2768))) (toValue!8646 (transformation!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998)))))) t!309448) tb!220129))

(declare-fun result!268338 () Bool)

(assert (=> tb!220129 (= result!268338 (inv!21 (dynLambda!17536 (toValue!8646 (transformation!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998))))) (seqFromList!4511 (originalCharacters!6838 (_1!22972 (get!13433 lt!1330998)))))))))

(declare-fun m!4388973 () Bool)

(assert (=> tb!220129 m!4388973))

(assert (=> d!1138196 t!309448))

(declare-fun b_and!285127 () Bool)

(assert (= b_and!285047 (and (=> t!309448 result!268338) b_and!285127)))

(declare-fun tb!220131 () Bool)

(declare-fun t!309450 () Bool)

(assert (=> (and b!3834211 (= (toValue!8646 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (toValue!8646 (transformation!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998)))))) t!309450) tb!220131))

(declare-fun result!268342 () Bool)

(assert (= result!268342 result!268338))

(assert (=> d!1138196 t!309450))

(declare-fun b_and!285129 () Bool)

(assert (= b_and!285051 (and (=> t!309450 result!268342) b_and!285129)))

(declare-fun t!309452 () Bool)

(declare-fun tb!220133 () Bool)

(assert (=> (and b!3834220 (= (toValue!8646 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (toValue!8646 (transformation!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998)))))) t!309452) tb!220133))

(declare-fun result!268344 () Bool)

(assert (= result!268344 result!268338))

(assert (=> d!1138196 t!309452))

(declare-fun b_and!285131 () Bool)

(assert (= b_and!285043 (and (=> t!309452 result!268344) b_and!285131)))

(declare-fun t!309454 () Bool)

(declare-fun tb!220135 () Bool)

(assert (=> (and b!3834605 (= (toValue!8646 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80))))) (toValue!8646 (transformation!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998)))))) t!309454) tb!220135))

(declare-fun result!268346 () Bool)

(assert (= result!268346 result!268338))

(assert (=> d!1138196 t!309454))

(declare-fun b_and!285133 () Bool)

(assert (= b_and!285103 (and (=> t!309454 result!268346) b_and!285133)))

(declare-fun tb!220137 () Bool)

(declare-fun t!309456 () Bool)

(assert (=> (and b!3834618 (= (toValue!8646 (transformation!6238 (h!45922 (t!309359 rules!2768)))) (toValue!8646 (transformation!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998)))))) t!309456) tb!220137))

(declare-fun result!268348 () Bool)

(assert (= result!268348 result!268338))

(assert (=> d!1138196 t!309456))

(declare-fun b_and!285135 () Bool)

(assert (= b_and!285107 (and (=> t!309456 result!268348) b_and!285135)))

(declare-fun t!309458 () Bool)

(declare-fun tb!220139 () Bool)

(assert (=> (and b!3834628 (= (toValue!8646 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72))))) (toValue!8646 (transformation!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998)))))) t!309458) tb!220139))

(declare-fun result!268350 () Bool)

(assert (= result!268350 result!268338))

(assert (=> d!1138196 t!309458))

(declare-fun b_and!285137 () Bool)

(assert (= b_and!285111 (and (=> t!309458 result!268350) b_and!285137)))

(assert (=> d!1138196 m!4388825))

(declare-fun m!4388975 () Bool)

(assert (=> d!1138196 m!4388975))

(assert (=> b!3834562 d!1138196))

(declare-fun d!1138198 () Bool)

(declare-fun fromListB!2084 (List!40624) BalanceConc!24492)

(assert (=> d!1138198 (= (seqFromList!4511 (originalCharacters!6838 (_1!22972 (get!13433 lt!1330998)))) (fromListB!2084 (originalCharacters!6838 (_1!22972 (get!13433 lt!1330998)))))))

(declare-fun bs!582398 () Bool)

(assert (= bs!582398 d!1138198))

(declare-fun m!4388977 () Bool)

(assert (=> bs!582398 m!4388977))

(assert (=> b!3834562 d!1138198))

(assert (=> d!1138088 d!1138090))

(assert (=> d!1138088 d!1138076))

(declare-fun d!1138200 () Bool)

(assert (=> d!1138200 (isPrefix!3337 lt!1330896 (++!10234 lt!1330896 (_2!22972 (v!38943 lt!1330899))))))

(assert (=> d!1138200 true))

(declare-fun _$46!1496 () Unit!58238)

(assert (=> d!1138200 (= (choose!22546 lt!1330896 (_2!22972 (v!38943 lt!1330899))) _$46!1496)))

(declare-fun bs!582399 () Bool)

(assert (= bs!582399 d!1138200))

(assert (=> bs!582399 m!4388465))

(assert (=> bs!582399 m!4388465))

(assert (=> bs!582399 m!4388467))

(assert (=> d!1138088 d!1138200))

(declare-fun d!1138202 () Bool)

(declare-fun c!668649 () Bool)

(assert (=> d!1138202 (= c!668649 ((_ is Nil!40500) lt!1330981))))

(declare-fun e!2368287 () (InoxSet C!22472))

(assert (=> d!1138202 (= (content!6010 lt!1330981) e!2368287)))

(declare-fun b!3834715 () Bool)

(assert (=> b!3834715 (= e!2368287 ((as const (Array C!22472 Bool)) false))))

(declare-fun b!3834716 () Bool)

(assert (=> b!3834716 (= e!2368287 ((_ map or) (store ((as const (Array C!22472 Bool)) false) (h!45920 lt!1330981) true) (content!6010 (t!309357 lt!1330981))))))

(assert (= (and d!1138202 c!668649) b!3834715))

(assert (= (and d!1138202 (not c!668649)) b!3834716))

(declare-fun m!4388979 () Bool)

(assert (=> b!3834716 m!4388979))

(declare-fun m!4388981 () Bool)

(assert (=> b!3834716 m!4388981))

(assert (=> d!1138154 d!1138202))

(declare-fun d!1138204 () Bool)

(declare-fun c!668650 () Bool)

(assert (=> d!1138204 (= c!668650 ((_ is Nil!40500) prefix!426))))

(declare-fun e!2368288 () (InoxSet C!22472))

(assert (=> d!1138204 (= (content!6010 prefix!426) e!2368288)))

(declare-fun b!3834717 () Bool)

(assert (=> b!3834717 (= e!2368288 ((as const (Array C!22472 Bool)) false))))

(declare-fun b!3834718 () Bool)

(assert (=> b!3834718 (= e!2368288 ((_ map or) (store ((as const (Array C!22472 Bool)) false) (h!45920 prefix!426) true) (content!6010 (t!309357 prefix!426))))))

(assert (= (and d!1138204 c!668650) b!3834717))

(assert (= (and d!1138204 (not c!668650)) b!3834718))

(declare-fun m!4388983 () Bool)

(assert (=> b!3834718 m!4388983))

(declare-fun m!4388985 () Bool)

(assert (=> b!3834718 m!4388985))

(assert (=> d!1138154 d!1138204))

(declare-fun d!1138206 () Bool)

(declare-fun c!668651 () Bool)

(assert (=> d!1138206 (= c!668651 ((_ is Nil!40500) suffix!1176))))

(declare-fun e!2368289 () (InoxSet C!22472))

(assert (=> d!1138206 (= (content!6010 suffix!1176) e!2368289)))

(declare-fun b!3834719 () Bool)

(assert (=> b!3834719 (= e!2368289 ((as const (Array C!22472 Bool)) false))))

(declare-fun b!3834720 () Bool)

(assert (=> b!3834720 (= e!2368289 ((_ map or) (store ((as const (Array C!22472 Bool)) false) (h!45920 suffix!1176) true) (content!6010 (t!309357 suffix!1176))))))

(assert (= (and d!1138206 c!668651) b!3834719))

(assert (= (and d!1138206 (not c!668651)) b!3834720))

(declare-fun m!4388987 () Bool)

(assert (=> b!3834720 m!4388987))

(declare-fun m!4388989 () Bool)

(assert (=> b!3834720 m!4388989))

(assert (=> d!1138154 d!1138206))

(declare-fun d!1138208 () Bool)

(assert (=> d!1138208 true))

(declare-fun order!22119 () Int)

(declare-fun order!22117 () Int)

(declare-fun lambda!126021 () Int)

(declare-fun dynLambda!17537 (Int Int) Int)

(declare-fun dynLambda!17538 (Int Int) Int)

(assert (=> d!1138208 (< (dynLambda!17537 order!22117 (toValue!8646 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72))))) (dynLambda!17538 order!22119 lambda!126021))))

(declare-fun Forall2!1025 (Int) Bool)

(assert (=> d!1138208 (= (equivClasses!2574 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (toValue!8646 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72))))) (Forall2!1025 lambda!126021))))

(declare-fun bs!582415 () Bool)

(assert (= bs!582415 d!1138208))

(declare-fun m!4389169 () Bool)

(assert (=> bs!582415 m!4389169))

(assert (=> b!3834378 d!1138208))

(declare-fun b!3834878 () Bool)

(declare-fun res!1552262 () Bool)

(declare-fun e!2368383 () Bool)

(assert (=> b!3834878 (=> (not res!1552262) (not e!2368383))))

(declare-fun call!281844 () Bool)

(assert (=> b!3834878 (= res!1552262 (not call!281844))))

(declare-fun b!3834879 () Bool)

(declare-fun res!1552263 () Bool)

(declare-fun e!2368380 () Bool)

(assert (=> b!3834879 (=> res!1552263 e!2368380)))

(assert (=> b!3834879 (= res!1552263 e!2368383)))

(declare-fun res!1552266 () Bool)

(assert (=> b!3834879 (=> (not res!1552266) (not e!2368383))))

(declare-fun lt!1331065 () Bool)

(assert (=> b!3834879 (= res!1552266 lt!1331065)))

(declare-fun b!3834880 () Bool)

(declare-fun e!2368382 () Bool)

(declare-fun e!2368381 () Bool)

(assert (=> b!3834880 (= e!2368382 e!2368381)))

(declare-fun c!668688 () Bool)

(assert (=> b!3834880 (= c!668688 ((_ is EmptyLang!11143) (regex!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998))))))))

(declare-fun bm!281839 () Bool)

(assert (=> bm!281839 (= call!281844 (isEmpty!23914 (list!15086 (charsOf!4066 (_1!22972 (get!13433 lt!1330998))))))))

(declare-fun b!3834881 () Bool)

(assert (=> b!3834881 (= e!2368383 (= (head!8070 (list!15086 (charsOf!4066 (_1!22972 (get!13433 lt!1330998))))) (c!668565 (regex!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998)))))))))

(declare-fun b!3834882 () Bool)

(declare-fun res!1552267 () Bool)

(declare-fun e!2368384 () Bool)

(assert (=> b!3834882 (=> res!1552267 e!2368384)))

(assert (=> b!3834882 (= res!1552267 (not (isEmpty!23914 (tail!5797 (list!15086 (charsOf!4066 (_1!22972 (get!13433 lt!1330998))))))))))

(declare-fun b!3834883 () Bool)

(declare-fun e!2368378 () Bool)

(declare-fun derivativeStep!3392 (Regex!11143 C!22472) Regex!11143)

(assert (=> b!3834883 (= e!2368378 (matchR!5326 (derivativeStep!3392 (regex!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998)))) (head!8070 (list!15086 (charsOf!4066 (_1!22972 (get!13433 lt!1330998)))))) (tail!5797 (list!15086 (charsOf!4066 (_1!22972 (get!13433 lt!1330998)))))))))

(declare-fun b!3834884 () Bool)

(declare-fun e!2368379 () Bool)

(assert (=> b!3834884 (= e!2368380 e!2368379)))

(declare-fun res!1552264 () Bool)

(assert (=> b!3834884 (=> (not res!1552264) (not e!2368379))))

(assert (=> b!3834884 (= res!1552264 (not lt!1331065))))

(declare-fun b!3834886 () Bool)

(assert (=> b!3834886 (= e!2368379 e!2368384)))

(declare-fun res!1552268 () Bool)

(assert (=> b!3834886 (=> res!1552268 e!2368384)))

(assert (=> b!3834886 (= res!1552268 call!281844)))

(declare-fun b!3834887 () Bool)

(assert (=> b!3834887 (= e!2368384 (not (= (head!8070 (list!15086 (charsOf!4066 (_1!22972 (get!13433 lt!1330998))))) (c!668565 (regex!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998))))))))))

(declare-fun b!3834888 () Bool)

(assert (=> b!3834888 (= e!2368381 (not lt!1331065))))

(declare-fun b!3834889 () Bool)

(assert (=> b!3834889 (= e!2368382 (= lt!1331065 call!281844))))

(declare-fun b!3834885 () Bool)

(assert (=> b!3834885 (= e!2368378 (nullable!3875 (regex!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998))))))))

(declare-fun d!1138288 () Bool)

(assert (=> d!1138288 e!2368382))

(declare-fun c!668687 () Bool)

(assert (=> d!1138288 (= c!668687 ((_ is EmptyExpr!11143) (regex!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998))))))))

(assert (=> d!1138288 (= lt!1331065 e!2368378)))

(declare-fun c!668686 () Bool)

(assert (=> d!1138288 (= c!668686 (isEmpty!23914 (list!15086 (charsOf!4066 (_1!22972 (get!13433 lt!1330998))))))))

(assert (=> d!1138288 (validRegex!5074 (regex!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998)))))))

(assert (=> d!1138288 (= (matchR!5326 (regex!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998)))) (list!15086 (charsOf!4066 (_1!22972 (get!13433 lt!1330998))))) lt!1331065)))

(declare-fun b!3834890 () Bool)

(declare-fun res!1552261 () Bool)

(assert (=> b!3834890 (=> (not res!1552261) (not e!2368383))))

(assert (=> b!3834890 (= res!1552261 (isEmpty!23914 (tail!5797 (list!15086 (charsOf!4066 (_1!22972 (get!13433 lt!1330998)))))))))

(declare-fun b!3834891 () Bool)

(declare-fun res!1552265 () Bool)

(assert (=> b!3834891 (=> res!1552265 e!2368380)))

(assert (=> b!3834891 (= res!1552265 (not ((_ is ElementMatch!11143) (regex!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998)))))))))

(assert (=> b!3834891 (= e!2368381 e!2368380)))

(assert (= (and d!1138288 c!668686) b!3834885))

(assert (= (and d!1138288 (not c!668686)) b!3834883))

(assert (= (and d!1138288 c!668687) b!3834889))

(assert (= (and d!1138288 (not c!668687)) b!3834880))

(assert (= (and b!3834880 c!668688) b!3834888))

(assert (= (and b!3834880 (not c!668688)) b!3834891))

(assert (= (and b!3834891 (not res!1552265)) b!3834879))

(assert (= (and b!3834879 res!1552266) b!3834878))

(assert (= (and b!3834878 res!1552262) b!3834890))

(assert (= (and b!3834890 res!1552261) b!3834881))

(assert (= (and b!3834879 (not res!1552263)) b!3834884))

(assert (= (and b!3834884 res!1552264) b!3834886))

(assert (= (and b!3834886 (not res!1552268)) b!3834882))

(assert (= (and b!3834882 (not res!1552267)) b!3834887))

(assert (= (or b!3834889 b!3834878 b!3834886) bm!281839))

(assert (=> b!3834883 m!4388831))

(declare-fun m!4389205 () Bool)

(assert (=> b!3834883 m!4389205))

(assert (=> b!3834883 m!4389205))

(declare-fun m!4389209 () Bool)

(assert (=> b!3834883 m!4389209))

(assert (=> b!3834883 m!4388831))

(declare-fun m!4389213 () Bool)

(assert (=> b!3834883 m!4389213))

(assert (=> b!3834883 m!4389209))

(assert (=> b!3834883 m!4389213))

(declare-fun m!4389215 () Bool)

(assert (=> b!3834883 m!4389215))

(assert (=> bm!281839 m!4388831))

(declare-fun m!4389217 () Bool)

(assert (=> bm!281839 m!4389217))

(declare-fun m!4389219 () Bool)

(assert (=> b!3834885 m!4389219))

(assert (=> b!3834882 m!4388831))

(assert (=> b!3834882 m!4389213))

(assert (=> b!3834882 m!4389213))

(declare-fun m!4389223 () Bool)

(assert (=> b!3834882 m!4389223))

(assert (=> b!3834890 m!4388831))

(assert (=> b!3834890 m!4389213))

(assert (=> b!3834890 m!4389213))

(assert (=> b!3834890 m!4389223))

(assert (=> b!3834887 m!4388831))

(assert (=> b!3834887 m!4389205))

(assert (=> d!1138288 m!4388831))

(assert (=> d!1138288 m!4389217))

(declare-fun m!4389231 () Bool)

(assert (=> d!1138288 m!4389231))

(assert (=> b!3834881 m!4388831))

(assert (=> b!3834881 m!4389205))

(assert (=> b!3834560 d!1138288))

(assert (=> b!3834560 d!1138194))

(declare-fun d!1138320 () Bool)

(assert (=> d!1138320 (= (list!15086 (charsOf!4066 (_1!22972 (get!13433 lt!1330998)))) (list!15088 (c!668564 (charsOf!4066 (_1!22972 (get!13433 lt!1330998))))))))

(declare-fun bs!582419 () Bool)

(assert (= bs!582419 d!1138320))

(declare-fun m!4389233 () Bool)

(assert (=> bs!582419 m!4389233))

(assert (=> b!3834560 d!1138320))

(declare-fun d!1138326 () Bool)

(declare-fun lt!1331068 () BalanceConc!24492)

(assert (=> d!1138326 (= (list!15086 lt!1331068) (originalCharacters!6838 (_1!22972 (get!13433 lt!1330998))))))

(assert (=> d!1138326 (= lt!1331068 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998))))) (value!198417 (_1!22972 (get!13433 lt!1330998)))))))

(assert (=> d!1138326 (= (charsOf!4066 (_1!22972 (get!13433 lt!1330998))) lt!1331068)))

(declare-fun b_lambda!112121 () Bool)

(assert (=> (not b_lambda!112121) (not d!1138326)))

(declare-fun t!309496 () Bool)

(declare-fun tb!220177 () Bool)

(assert (=> (and b!3834220 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998)))))) t!309496) tb!220177))

(declare-fun b!3834904 () Bool)

(declare-fun e!2368392 () Bool)

(declare-fun tp!1160630 () Bool)

(assert (=> b!3834904 (= e!2368392 (and (inv!54644 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998))))) (value!198417 (_1!22972 (get!13433 lt!1330998)))))) tp!1160630))))

(declare-fun result!268390 () Bool)

(assert (=> tb!220177 (= result!268390 (and (inv!54645 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998))))) (value!198417 (_1!22972 (get!13433 lt!1330998))))) e!2368392))))

(assert (= tb!220177 b!3834904))

(declare-fun m!4389253 () Bool)

(assert (=> b!3834904 m!4389253))

(declare-fun m!4389255 () Bool)

(assert (=> tb!220177 m!4389255))

(assert (=> d!1138326 t!309496))

(declare-fun b_and!285175 () Bool)

(assert (= b_and!285097 (and (=> t!309496 result!268390) b_and!285175)))

(declare-fun tb!220179 () Bool)

(declare-fun t!309498 () Bool)

(assert (=> (and b!3834628 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72))))) (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998)))))) t!309498) tb!220179))

(declare-fun result!268392 () Bool)

(assert (= result!268392 result!268390))

(assert (=> d!1138326 t!309498))

(declare-fun b_and!285177 () Bool)

(assert (= b_and!285113 (and (=> t!309498 result!268392) b_and!285177)))

(declare-fun tb!220181 () Bool)

(declare-fun t!309500 () Bool)

(assert (=> (and b!3834211 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998)))))) t!309500) tb!220181))

(declare-fun result!268394 () Bool)

(assert (= result!268394 result!268390))

(assert (=> d!1138326 t!309500))

(declare-fun b_and!285179 () Bool)

(assert (= b_and!285101 (and (=> t!309500 result!268394) b_and!285179)))

(declare-fun t!309502 () Bool)

(declare-fun tb!220183 () Bool)

(assert (=> (and b!3834218 (= (toChars!8505 (transformation!6238 (h!45922 rules!2768))) (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998)))))) t!309502) tb!220183))

(declare-fun result!268396 () Bool)

(assert (= result!268396 result!268390))

(assert (=> d!1138326 t!309502))

(declare-fun b_and!285181 () Bool)

(assert (= b_and!285099 (and (=> t!309502 result!268396) b_and!285181)))

(declare-fun tb!220185 () Bool)

(declare-fun t!309504 () Bool)

(assert (=> (and b!3834618 (= (toChars!8505 (transformation!6238 (h!45922 (t!309359 rules!2768)))) (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998)))))) t!309504) tb!220185))

(declare-fun result!268398 () Bool)

(assert (= result!268398 result!268390))

(assert (=> d!1138326 t!309504))

(declare-fun b_and!285183 () Bool)

(assert (= b_and!285109 (and (=> t!309504 result!268398) b_and!285183)))

(declare-fun t!309506 () Bool)

(declare-fun tb!220187 () Bool)

(assert (=> (and b!3834605 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80))))) (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998)))))) t!309506) tb!220187))

(declare-fun result!268400 () Bool)

(assert (= result!268400 result!268390))

(assert (=> d!1138326 t!309506))

(declare-fun b_and!285185 () Bool)

(assert (= b_and!285105 (and (=> t!309506 result!268400) b_and!285185)))

(declare-fun m!4389259 () Bool)

(assert (=> d!1138326 m!4389259))

(declare-fun m!4389261 () Bool)

(assert (=> d!1138326 m!4389261))

(assert (=> b!3834560 d!1138326))

(declare-fun d!1138340 () Bool)

(assert (=> d!1138340 (= (isEmpty!23916 (_1!22971 lt!1330977)) ((_ is Nil!40503) (_1!22971 lt!1330977)))))

(assert (=> b!3834515 d!1138340))

(declare-fun d!1138342 () Bool)

(declare-fun c!668694 () Bool)

(assert (=> d!1138342 (= c!668694 ((_ is Nil!40500) lt!1330911))))

(declare-fun e!2368394 () (InoxSet C!22472))

(assert (=> d!1138342 (= (content!6010 lt!1330911) e!2368394)))

(declare-fun b!3834907 () Bool)

(assert (=> b!3834907 (= e!2368394 ((as const (Array C!22472 Bool)) false))))

(declare-fun b!3834908 () Bool)

(assert (=> b!3834908 (= e!2368394 ((_ map or) (store ((as const (Array C!22472 Bool)) false) (h!45920 lt!1330911) true) (content!6010 (t!309357 lt!1330911))))))

(assert (= (and d!1138342 c!668694) b!3834907))

(assert (= (and d!1138342 (not c!668694)) b!3834908))

(declare-fun m!4389263 () Bool)

(assert (=> b!3834908 m!4389263))

(declare-fun m!4389265 () Bool)

(assert (=> b!3834908 m!4389265))

(assert (=> d!1138076 d!1138342))

(declare-fun d!1138344 () Bool)

(declare-fun c!668695 () Bool)

(assert (=> d!1138344 (= c!668695 ((_ is Nil!40500) lt!1330896))))

(declare-fun e!2368395 () (InoxSet C!22472))

(assert (=> d!1138344 (= (content!6010 lt!1330896) e!2368395)))

(declare-fun b!3834909 () Bool)

(assert (=> b!3834909 (= e!2368395 ((as const (Array C!22472 Bool)) false))))

(declare-fun b!3834910 () Bool)

(assert (=> b!3834910 (= e!2368395 ((_ map or) (store ((as const (Array C!22472 Bool)) false) (h!45920 lt!1330896) true) (content!6010 (t!309357 lt!1330896))))))

(assert (= (and d!1138344 c!668695) b!3834909))

(assert (= (and d!1138344 (not c!668695)) b!3834910))

(declare-fun m!4389267 () Bool)

(assert (=> b!3834910 m!4389267))

(declare-fun m!4389269 () Bool)

(assert (=> b!3834910 m!4389269))

(assert (=> d!1138076 d!1138344))

(declare-fun d!1138346 () Bool)

(declare-fun c!668696 () Bool)

(assert (=> d!1138346 (= c!668696 ((_ is Nil!40500) (_2!22972 (v!38943 lt!1330899))))))

(declare-fun e!2368396 () (InoxSet C!22472))

(assert (=> d!1138346 (= (content!6010 (_2!22972 (v!38943 lt!1330899))) e!2368396)))

(declare-fun b!3834911 () Bool)

(assert (=> b!3834911 (= e!2368396 ((as const (Array C!22472 Bool)) false))))

(declare-fun b!3834912 () Bool)

(assert (=> b!3834912 (= e!2368396 ((_ map or) (store ((as const (Array C!22472 Bool)) false) (h!45920 (_2!22972 (v!38943 lt!1330899))) true) (content!6010 (t!309357 (_2!22972 (v!38943 lt!1330899))))))))

(assert (= (and d!1138346 c!668696) b!3834911))

(assert (= (and d!1138346 (not c!668696)) b!3834912))

(declare-fun m!4389271 () Bool)

(assert (=> b!3834912 m!4389271))

(declare-fun m!4389273 () Bool)

(assert (=> b!3834912 m!4389273))

(assert (=> d!1138076 d!1138346))

(declare-fun d!1138348 () Bool)

(declare-fun lt!1331069 () Int)

(assert (=> d!1138348 (>= lt!1331069 0)))

(declare-fun e!2368397 () Int)

(assert (=> d!1138348 (= lt!1331069 e!2368397)))

(declare-fun c!668697 () Bool)

(assert (=> d!1138348 (= c!668697 ((_ is Nil!40500) (originalCharacters!6838 (h!45923 prefixTokens!80))))))

(assert (=> d!1138348 (= (size!30508 (originalCharacters!6838 (h!45923 prefixTokens!80))) lt!1331069)))

(declare-fun b!3834913 () Bool)

(assert (=> b!3834913 (= e!2368397 0)))

(declare-fun b!3834914 () Bool)

(assert (=> b!3834914 (= e!2368397 (+ 1 (size!30508 (t!309357 (originalCharacters!6838 (h!45923 prefixTokens!80))))))))

(assert (= (and d!1138348 c!668697) b!3834913))

(assert (= (and d!1138348 (not c!668697)) b!3834914))

(declare-fun m!4389275 () Bool)

(assert (=> b!3834914 m!4389275))

(assert (=> b!3834265 d!1138348))

(declare-fun d!1138350 () Bool)

(declare-fun lt!1331072 () Bool)

(declare-fun content!6014 (List!40626) (InoxSet Rule!12276))

(assert (=> d!1138350 (= lt!1331072 (select (content!6014 rules!2768) (rule!9070 (_1!22972 (get!13433 lt!1330998)))))))

(declare-fun e!2368405 () Bool)

(assert (=> d!1138350 (= lt!1331072 e!2368405)))

(declare-fun res!1552279 () Bool)

(assert (=> d!1138350 (=> (not res!1552279) (not e!2368405))))

(assert (=> d!1138350 (= res!1552279 ((_ is Cons!40502) rules!2768))))

(assert (=> d!1138350 (= (contains!8216 rules!2768 (rule!9070 (_1!22972 (get!13433 lt!1330998)))) lt!1331072)))

(declare-fun b!3834923 () Bool)

(declare-fun e!2368404 () Bool)

(assert (=> b!3834923 (= e!2368405 e!2368404)))

(declare-fun res!1552278 () Bool)

(assert (=> b!3834923 (=> res!1552278 e!2368404)))

(assert (=> b!3834923 (= res!1552278 (= (h!45922 rules!2768) (rule!9070 (_1!22972 (get!13433 lt!1330998)))))))

(declare-fun b!3834924 () Bool)

(assert (=> b!3834924 (= e!2368404 (contains!8216 (t!309359 rules!2768) (rule!9070 (_1!22972 (get!13433 lt!1330998)))))))

(assert (= (and d!1138350 res!1552279) b!3834923))

(assert (= (and b!3834923 (not res!1552278)) b!3834924))

(declare-fun m!4389279 () Bool)

(assert (=> d!1138350 m!4389279))

(declare-fun m!4389281 () Bool)

(assert (=> d!1138350 m!4389281))

(declare-fun m!4389283 () Bool)

(assert (=> b!3834924 m!4389283))

(assert (=> b!3834558 d!1138350))

(assert (=> b!3834558 d!1138194))

(declare-fun d!1138354 () Bool)

(declare-fun c!668705 () Bool)

(assert (=> d!1138354 (= c!668705 ((_ is Node!12449) (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (value!198417 (h!45923 prefixTokens!80))))))))

(declare-fun e!2368417 () Bool)

(assert (=> d!1138354 (= (inv!54644 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (value!198417 (h!45923 prefixTokens!80))))) e!2368417)))

(declare-fun b!3834944 () Bool)

(declare-fun inv!54648 (Conc!12449) Bool)

(assert (=> b!3834944 (= e!2368417 (inv!54648 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (value!198417 (h!45923 prefixTokens!80))))))))

(declare-fun b!3834945 () Bool)

(declare-fun e!2368418 () Bool)

(assert (=> b!3834945 (= e!2368417 e!2368418)))

(declare-fun res!1552285 () Bool)

(assert (=> b!3834945 (= res!1552285 (not ((_ is Leaf!19275) (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (value!198417 (h!45923 prefixTokens!80)))))))))

(assert (=> b!3834945 (=> res!1552285 e!2368418)))

(declare-fun b!3834946 () Bool)

(declare-fun inv!54649 (Conc!12449) Bool)

(assert (=> b!3834946 (= e!2368418 (inv!54649 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (value!198417 (h!45923 prefixTokens!80))))))))

(assert (= (and d!1138354 c!668705) b!3834944))

(assert (= (and d!1138354 (not c!668705)) b!3834945))

(assert (= (and b!3834945 (not res!1552285)) b!3834946))

(declare-fun m!4389307 () Bool)

(assert (=> b!3834944 m!4389307))

(declare-fun m!4389311 () Bool)

(assert (=> b!3834946 m!4389311))

(assert (=> b!3834270 d!1138354))

(declare-fun b!3834948 () Bool)

(declare-fun e!2368419 () tuple2!39674)

(assert (=> b!3834948 (= e!2368419 (tuple2!39675 Nil!40503 (_2!22972 (v!38943 lt!1330976))))))

(declare-fun b!3834949 () Bool)

(declare-fun e!2368421 () Bool)

(declare-fun lt!1331081 () tuple2!39674)

(assert (=> b!3834949 (= e!2368421 (not (isEmpty!23916 (_1!22971 lt!1331081))))))

(declare-fun b!3834950 () Bool)

(declare-fun e!2368420 () Bool)

(assert (=> b!3834950 (= e!2368420 e!2368421)))

(declare-fun res!1552286 () Bool)

(assert (=> b!3834950 (= res!1552286 (< (size!30508 (_2!22971 lt!1331081)) (size!30508 (_2!22972 (v!38943 lt!1330976)))))))

(assert (=> b!3834950 (=> (not res!1552286) (not e!2368421))))

(declare-fun b!3834951 () Bool)

(assert (=> b!3834951 (= e!2368420 (= (_2!22971 lt!1331081) (_2!22972 (v!38943 lt!1330976))))))

(declare-fun d!1138370 () Bool)

(assert (=> d!1138370 e!2368420))

(declare-fun c!668707 () Bool)

(assert (=> d!1138370 (= c!668707 (> (size!30510 (_1!22971 lt!1331081)) 0))))

(assert (=> d!1138370 (= lt!1331081 e!2368419)))

(declare-fun c!668706 () Bool)

(declare-fun lt!1331080 () Option!8656)

(assert (=> d!1138370 (= c!668706 ((_ is Some!8655) lt!1331080))))

(assert (=> d!1138370 (= lt!1331080 (maxPrefix!3131 thiss!20629 rules!2768 (_2!22972 (v!38943 lt!1330976))))))

(assert (=> d!1138370 (= (lexList!1595 thiss!20629 rules!2768 (_2!22972 (v!38943 lt!1330976))) lt!1331081)))

(declare-fun b!3834947 () Bool)

(declare-fun lt!1331079 () tuple2!39674)

(assert (=> b!3834947 (= e!2368419 (tuple2!39675 (Cons!40503 (_1!22972 (v!38943 lt!1331080)) (_1!22971 lt!1331079)) (_2!22971 lt!1331079)))))

(assert (=> b!3834947 (= lt!1331079 (lexList!1595 thiss!20629 rules!2768 (_2!22972 (v!38943 lt!1331080))))))

(assert (= (and d!1138370 c!668706) b!3834947))

(assert (= (and d!1138370 (not c!668706)) b!3834948))

(assert (= (and d!1138370 c!668707) b!3834950))

(assert (= (and d!1138370 (not c!668707)) b!3834951))

(assert (= (and b!3834950 res!1552286) b!3834949))

(declare-fun m!4389325 () Bool)

(assert (=> b!3834949 m!4389325))

(declare-fun m!4389327 () Bool)

(assert (=> b!3834950 m!4389327))

(declare-fun m!4389329 () Bool)

(assert (=> b!3834950 m!4389329))

(declare-fun m!4389331 () Bool)

(assert (=> d!1138370 m!4389331))

(declare-fun m!4389333 () Bool)

(assert (=> d!1138370 m!4389333))

(declare-fun m!4389335 () Bool)

(assert (=> b!3834947 m!4389335))

(assert (=> b!3834513 d!1138370))

(declare-fun d!1138380 () Bool)

(assert (=> d!1138380 (= (isEmpty!23916 (_1!22971 lt!1330984)) ((_ is Nil!40503) (_1!22971 lt!1330984)))))

(assert (=> b!3834536 d!1138380))

(declare-fun d!1138382 () Bool)

(declare-fun charsToBigInt!0 (List!40625 Int) Int)

(assert (=> d!1138382 (= (inv!15 (value!198417 (h!45923 prefixTokens!80))) (= (charsToBigInt!0 (text!45725 (value!198417 (h!45923 prefixTokens!80))) 0) (value!198412 (value!198417 (h!45923 prefixTokens!80)))))))

(declare-fun bs!582430 () Bool)

(assert (= bs!582430 d!1138382))

(declare-fun m!4389353 () Bool)

(assert (=> bs!582430 m!4389353))

(assert (=> b!3834249 d!1138382))

(declare-fun d!1138392 () Bool)

(declare-fun lt!1331089 () Int)

(assert (=> d!1138392 (>= lt!1331089 0)))

(declare-fun e!2368435 () Int)

(assert (=> d!1138392 (= lt!1331089 e!2368435)))

(declare-fun c!668716 () Bool)

(assert (=> d!1138392 (= c!668716 ((_ is Nil!40503) (_1!22971 lt!1330977)))))

(assert (=> d!1138392 (= (size!30510 (_1!22971 lt!1330977)) lt!1331089)))

(declare-fun b!3834975 () Bool)

(assert (=> b!3834975 (= e!2368435 0)))

(declare-fun b!3834976 () Bool)

(assert (=> b!3834976 (= e!2368435 (+ 1 (size!30510 (t!309360 (_1!22971 lt!1330977)))))))

(assert (= (and d!1138392 c!668716) b!3834975))

(assert (= (and d!1138392 (not c!668716)) b!3834976))

(declare-fun m!4389367 () Bool)

(assert (=> b!3834976 m!4389367))

(assert (=> d!1138126 d!1138392))

(assert (=> d!1138126 d!1138158))

(declare-fun b!3834978 () Bool)

(declare-fun e!2368436 () tuple2!39674)

(assert (=> b!3834978 (= e!2368436 (tuple2!39675 Nil!40503 (_2!22972 (v!38943 lt!1330983))))))

(declare-fun b!3834979 () Bool)

(declare-fun e!2368438 () Bool)

(declare-fun lt!1331092 () tuple2!39674)

(assert (=> b!3834979 (= e!2368438 (not (isEmpty!23916 (_1!22971 lt!1331092))))))

(declare-fun b!3834980 () Bool)

(declare-fun e!2368437 () Bool)

(assert (=> b!3834980 (= e!2368437 e!2368438)))

(declare-fun res!1552294 () Bool)

(assert (=> b!3834980 (= res!1552294 (< (size!30508 (_2!22971 lt!1331092)) (size!30508 (_2!22972 (v!38943 lt!1330983)))))))

(assert (=> b!3834980 (=> (not res!1552294) (not e!2368438))))

(declare-fun b!3834981 () Bool)

(assert (=> b!3834981 (= e!2368437 (= (_2!22971 lt!1331092) (_2!22972 (v!38943 lt!1330983))))))

(declare-fun d!1138398 () Bool)

(assert (=> d!1138398 e!2368437))

(declare-fun c!668718 () Bool)

(assert (=> d!1138398 (= c!668718 (> (size!30510 (_1!22971 lt!1331092)) 0))))

(assert (=> d!1138398 (= lt!1331092 e!2368436)))

(declare-fun c!668717 () Bool)

(declare-fun lt!1331091 () Option!8656)

(assert (=> d!1138398 (= c!668717 ((_ is Some!8655) lt!1331091))))

(assert (=> d!1138398 (= lt!1331091 (maxPrefix!3131 thiss!20629 rules!2768 (_2!22972 (v!38943 lt!1330983))))))

(assert (=> d!1138398 (= (lexList!1595 thiss!20629 rules!2768 (_2!22972 (v!38943 lt!1330983))) lt!1331092)))

(declare-fun b!3834977 () Bool)

(declare-fun lt!1331090 () tuple2!39674)

(assert (=> b!3834977 (= e!2368436 (tuple2!39675 (Cons!40503 (_1!22972 (v!38943 lt!1331091)) (_1!22971 lt!1331090)) (_2!22971 lt!1331090)))))

(assert (=> b!3834977 (= lt!1331090 (lexList!1595 thiss!20629 rules!2768 (_2!22972 (v!38943 lt!1331091))))))

(assert (= (and d!1138398 c!668717) b!3834977))

(assert (= (and d!1138398 (not c!668717)) b!3834978))

(assert (= (and d!1138398 c!668718) b!3834980))

(assert (= (and d!1138398 (not c!668718)) b!3834981))

(assert (= (and b!3834980 res!1552294) b!3834979))

(declare-fun m!4389369 () Bool)

(assert (=> b!3834979 m!4389369))

(declare-fun m!4389371 () Bool)

(assert (=> b!3834980 m!4389371))

(declare-fun m!4389373 () Bool)

(assert (=> b!3834980 m!4389373))

(declare-fun m!4389375 () Bool)

(assert (=> d!1138398 m!4389375))

(declare-fun m!4389377 () Bool)

(assert (=> d!1138398 m!4389377))

(declare-fun m!4389379 () Bool)

(assert (=> b!3834977 m!4389379))

(assert (=> b!3834534 d!1138398))

(declare-fun d!1138400 () Bool)

(declare-fun c!668723 () Bool)

(assert (=> d!1138400 (= c!668723 ((_ is Node!12449) (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (value!198417 (h!45923 suffixTokens!72))))))))

(declare-fun e!2368447 () Bool)

(assert (=> d!1138400 (= (inv!54644 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (value!198417 (h!45923 suffixTokens!72))))) e!2368447)))

(declare-fun b!3834994 () Bool)

(assert (=> b!3834994 (= e!2368447 (inv!54648 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (value!198417 (h!45923 suffixTokens!72))))))))

(declare-fun b!3834995 () Bool)

(declare-fun e!2368448 () Bool)

(assert (=> b!3834995 (= e!2368447 e!2368448)))

(declare-fun res!1552299 () Bool)

(assert (=> b!3834995 (= res!1552299 (not ((_ is Leaf!19275) (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (value!198417 (h!45923 suffixTokens!72)))))))))

(assert (=> b!3834995 (=> res!1552299 e!2368448)))

(declare-fun b!3834996 () Bool)

(assert (=> b!3834996 (= e!2368448 (inv!54649 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (value!198417 (h!45923 suffixTokens!72))))))))

(assert (= (and d!1138400 c!668723) b!3834994))

(assert (= (and d!1138400 (not c!668723)) b!3834995))

(assert (= (and b!3834995 (not res!1552299)) b!3834996))

(declare-fun m!4389381 () Bool)

(assert (=> b!3834994 m!4389381))

(declare-fun m!4389383 () Bool)

(assert (=> b!3834996 m!4389383))

(assert (=> b!3834568 d!1138400))

(declare-fun d!1138402 () Bool)

(declare-fun isBalanced!3618 (Conc!12449) Bool)

(assert (=> d!1138402 (= (inv!54645 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (value!198417 (h!45923 prefixTokens!80)))) (isBalanced!3618 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (value!198417 (h!45923 prefixTokens!80))))))))

(declare-fun bs!582431 () Bool)

(assert (= bs!582431 d!1138402))

(declare-fun m!4389385 () Bool)

(assert (=> bs!582431 m!4389385))

(assert (=> tb!220057 d!1138402))

(declare-fun d!1138404 () Bool)

(declare-fun c!668726 () Bool)

(assert (=> d!1138404 (= c!668726 ((_ is Nil!40503) lt!1330980))))

(declare-fun e!2368457 () (InoxSet Token!11614))

(assert (=> d!1138404 (= (content!6012 lt!1330980) e!2368457)))

(declare-fun b!3835007 () Bool)

(assert (=> b!3835007 (= e!2368457 ((as const (Array Token!11614 Bool)) false))))

(declare-fun b!3835008 () Bool)

(assert (=> b!3835008 (= e!2368457 ((_ map or) (store ((as const (Array Token!11614 Bool)) false) (h!45923 lt!1330980) true) (content!6012 (t!309360 lt!1330980))))))

(assert (= (and d!1138404 c!668726) b!3835007))

(assert (= (and d!1138404 (not c!668726)) b!3835008))

(declare-fun m!4389387 () Bool)

(assert (=> b!3835008 m!4389387))

(declare-fun m!4389389 () Bool)

(assert (=> b!3835008 m!4389389))

(assert (=> d!1138152 d!1138404))

(declare-fun d!1138406 () Bool)

(declare-fun c!668727 () Bool)

(assert (=> d!1138406 (= c!668727 ((_ is Nil!40503) prefixTokens!80))))

(declare-fun e!2368460 () (InoxSet Token!11614))

(assert (=> d!1138406 (= (content!6012 prefixTokens!80) e!2368460)))

(declare-fun b!3835009 () Bool)

(assert (=> b!3835009 (= e!2368460 ((as const (Array Token!11614 Bool)) false))))

(declare-fun b!3835010 () Bool)

(assert (=> b!3835010 (= e!2368460 ((_ map or) (store ((as const (Array Token!11614 Bool)) false) (h!45923 prefixTokens!80) true) (content!6012 (t!309360 prefixTokens!80))))))

(assert (= (and d!1138406 c!668727) b!3835009))

(assert (= (and d!1138406 (not c!668727)) b!3835010))

(declare-fun m!4389391 () Bool)

(assert (=> b!3835010 m!4389391))

(declare-fun m!4389393 () Bool)

(assert (=> b!3835010 m!4389393))

(assert (=> d!1138152 d!1138406))

(declare-fun d!1138408 () Bool)

(declare-fun c!668730 () Bool)

(assert (=> d!1138408 (= c!668730 ((_ is Nil!40503) suffixTokens!72))))

(declare-fun e!2368466 () (InoxSet Token!11614))

(assert (=> d!1138408 (= (content!6012 suffixTokens!72) e!2368466)))

(declare-fun b!3835020 () Bool)

(assert (=> b!3835020 (= e!2368466 ((as const (Array Token!11614 Bool)) false))))

(declare-fun b!3835021 () Bool)

(assert (=> b!3835021 (= e!2368466 ((_ map or) (store ((as const (Array Token!11614 Bool)) false) (h!45923 suffixTokens!72) true) (content!6012 (t!309360 suffixTokens!72))))))

(assert (= (and d!1138408 c!668730) b!3835020))

(assert (= (and d!1138408 (not c!668730)) b!3835021))

(declare-fun m!4389395 () Bool)

(assert (=> b!3835021 m!4389395))

(declare-fun m!4389397 () Bool)

(assert (=> b!3835021 m!4389397))

(assert (=> d!1138152 d!1138408))

(declare-fun b!3835081 () Bool)

(declare-fun res!1552322 () Bool)

(declare-fun e!2368500 () Bool)

(assert (=> b!3835081 (=> res!1552322 e!2368500)))

(assert (=> b!3835081 (= res!1552322 (not ((_ is Concat!17612) (regex!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899)))))))))

(declare-fun e!2368501 () Bool)

(assert (=> b!3835081 (= e!2368501 e!2368500)))

(declare-fun d!1138410 () Bool)

(declare-fun res!1552326 () Bool)

(declare-fun e!2368498 () Bool)

(assert (=> d!1138410 (=> res!1552326 e!2368498)))

(assert (=> d!1138410 (= res!1552326 ((_ is ElementMatch!11143) (regex!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))))))

(assert (=> d!1138410 (= (validRegex!5074 (regex!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))) e!2368498)))

(declare-fun b!3835082 () Bool)

(declare-fun e!2368499 () Bool)

(assert (=> b!3835082 (= e!2368499 e!2368501)))

(declare-fun c!668742 () Bool)

(assert (=> b!3835082 (= c!668742 ((_ is Union!11143) (regex!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))))))

(declare-fun b!3835083 () Bool)

(declare-fun e!2368503 () Bool)

(assert (=> b!3835083 (= e!2368499 e!2368503)))

(declare-fun res!1552324 () Bool)

(assert (=> b!3835083 (= res!1552324 (not (nullable!3875 (reg!11472 (regex!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))))))))

(assert (=> b!3835083 (=> (not res!1552324) (not e!2368503))))

(declare-fun b!3835084 () Bool)

(declare-fun e!2368502 () Bool)

(assert (=> b!3835084 (= e!2368500 e!2368502)))

(declare-fun res!1552325 () Bool)

(assert (=> b!3835084 (=> (not res!1552325) (not e!2368502))))

(declare-fun call!281862 () Bool)

(assert (=> b!3835084 (= res!1552325 call!281862)))

(declare-fun b!3835085 () Bool)

(declare-fun call!281860 () Bool)

(assert (=> b!3835085 (= e!2368502 call!281860)))

(declare-fun b!3835086 () Bool)

(declare-fun res!1552323 () Bool)

(declare-fun e!2368497 () Bool)

(assert (=> b!3835086 (=> (not res!1552323) (not e!2368497))))

(assert (=> b!3835086 (= res!1552323 call!281860)))

(assert (=> b!3835086 (= e!2368501 e!2368497)))

(declare-fun bm!281855 () Bool)

(declare-fun call!281861 () Bool)

(assert (=> bm!281855 (= call!281862 call!281861)))

(declare-fun b!3835087 () Bool)

(assert (=> b!3835087 (= e!2368498 e!2368499)))

(declare-fun c!668743 () Bool)

(assert (=> b!3835087 (= c!668743 ((_ is Star!11143) (regex!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))))))

(declare-fun b!3835088 () Bool)

(assert (=> b!3835088 (= e!2368497 call!281862)))

(declare-fun bm!281856 () Bool)

(assert (=> bm!281856 (= call!281860 (validRegex!5074 (ite c!668742 (regOne!22799 (regex!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))) (regTwo!22798 (regex!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))))))))

(declare-fun bm!281857 () Bool)

(assert (=> bm!281857 (= call!281861 (validRegex!5074 (ite c!668743 (reg!11472 (regex!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))) (ite c!668742 (regTwo!22799 (regex!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))) (regOne!22798 (regex!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899)))))))))))

(declare-fun b!3835089 () Bool)

(assert (=> b!3835089 (= e!2368503 call!281861)))

(assert (= (and d!1138410 (not res!1552326)) b!3835087))

(assert (= (and b!3835087 c!668743) b!3835083))

(assert (= (and b!3835087 (not c!668743)) b!3835082))

(assert (= (and b!3835083 res!1552324) b!3835089))

(assert (= (and b!3835082 c!668742) b!3835086))

(assert (= (and b!3835082 (not c!668742)) b!3835081))

(assert (= (and b!3835086 res!1552323) b!3835088))

(assert (= (and b!3835081 (not res!1552322)) b!3835084))

(assert (= (and b!3835084 res!1552325) b!3835085))

(assert (= (or b!3835088 b!3835084) bm!281855))

(assert (= (or b!3835086 b!3835085) bm!281856))

(assert (= (or b!3835089 bm!281855) bm!281857))

(declare-fun m!4389417 () Bool)

(assert (=> b!3835083 m!4389417))

(declare-fun m!4389419 () Bool)

(assert (=> bm!281856 m!4389419))

(declare-fun m!4389421 () Bool)

(assert (=> bm!281857 m!4389421))

(assert (=> d!1138072 d!1138410))

(declare-fun d!1138416 () Bool)

(declare-fun lt!1331093 () Int)

(assert (=> d!1138416 (>= lt!1331093 0)))

(declare-fun e!2368510 () Int)

(assert (=> d!1138416 (= lt!1331093 e!2368510)))

(declare-fun c!668744 () Bool)

(assert (=> d!1138416 (= c!668744 ((_ is Nil!40500) (t!309357 lt!1330898)))))

(assert (=> d!1138416 (= (size!30508 (t!309357 lt!1330898)) lt!1331093)))

(declare-fun b!3835106 () Bool)

(assert (=> b!3835106 (= e!2368510 0)))

(declare-fun b!3835107 () Bool)

(assert (=> b!3835107 (= e!2368510 (+ 1 (size!30508 (t!309357 (t!309357 lt!1330898)))))))

(assert (= (and d!1138416 c!668744) b!3835106))

(assert (= (and d!1138416 (not c!668744)) b!3835107))

(declare-fun m!4389423 () Bool)

(assert (=> b!3835107 m!4389423))

(assert (=> b!3834311 d!1138416))

(declare-fun d!1138418 () Bool)

(declare-fun lt!1331094 () Int)

(assert (=> d!1138418 (>= lt!1331094 0)))

(declare-fun e!2368511 () Int)

(assert (=> d!1138418 (= lt!1331094 e!2368511)))

(declare-fun c!668745 () Bool)

(assert (=> d!1138418 (= c!668745 ((_ is Nil!40500) lt!1330981))))

(assert (=> d!1138418 (= (size!30508 lt!1330981) lt!1331094)))

(declare-fun b!3835108 () Bool)

(assert (=> b!3835108 (= e!2368511 0)))

(declare-fun b!3835109 () Bool)

(assert (=> b!3835109 (= e!2368511 (+ 1 (size!30508 (t!309357 lt!1330981))))))

(assert (= (and d!1138418 c!668745) b!3835108))

(assert (= (and d!1138418 (not c!668745)) b!3835109))

(declare-fun m!4389425 () Bool)

(assert (=> b!3835109 m!4389425))

(assert (=> b!3834532 d!1138418))

(declare-fun d!1138420 () Bool)

(declare-fun lt!1331095 () Int)

(assert (=> d!1138420 (>= lt!1331095 0)))

(declare-fun e!2368512 () Int)

(assert (=> d!1138420 (= lt!1331095 e!2368512)))

(declare-fun c!668746 () Bool)

(assert (=> d!1138420 (= c!668746 ((_ is Nil!40500) prefix!426))))

(assert (=> d!1138420 (= (size!30508 prefix!426) lt!1331095)))

(declare-fun b!3835110 () Bool)

(assert (=> b!3835110 (= e!2368512 0)))

(declare-fun b!3835111 () Bool)

(assert (=> b!3835111 (= e!2368512 (+ 1 (size!30508 (t!309357 prefix!426))))))

(assert (= (and d!1138420 c!668746) b!3835110))

(assert (= (and d!1138420 (not c!668746)) b!3835111))

(declare-fun m!4389427 () Bool)

(assert (=> b!3835111 m!4389427))

(assert (=> b!3834532 d!1138420))

(declare-fun d!1138422 () Bool)

(declare-fun lt!1331096 () Int)

(assert (=> d!1138422 (>= lt!1331096 0)))

(declare-fun e!2368513 () Int)

(assert (=> d!1138422 (= lt!1331096 e!2368513)))

(declare-fun c!668747 () Bool)

(assert (=> d!1138422 (= c!668747 ((_ is Nil!40500) suffix!1176))))

(assert (=> d!1138422 (= (size!30508 suffix!1176) lt!1331096)))

(declare-fun b!3835112 () Bool)

(assert (=> b!3835112 (= e!2368513 0)))

(declare-fun b!3835113 () Bool)

(assert (=> b!3835113 (= e!2368513 (+ 1 (size!30508 (t!309357 suffix!1176))))))

(assert (= (and d!1138422 c!668747) b!3835112))

(assert (= (and d!1138422 (not c!668747)) b!3835113))

(declare-fun m!4389429 () Bool)

(assert (=> b!3835113 m!4389429))

(assert (=> b!3834532 d!1138422))

(declare-fun d!1138424 () Bool)

(assert (=> d!1138424 (= (inv!15 (value!198417 (h!45923 suffixTokens!72))) (= (charsToBigInt!0 (text!45725 (value!198417 (h!45923 suffixTokens!72))) 0) (value!198412 (value!198417 (h!45923 suffixTokens!72)))))))

(declare-fun bs!582432 () Bool)

(assert (= bs!582432 d!1138424))

(declare-fun m!4389431 () Bool)

(assert (=> bs!582432 m!4389431))

(assert (=> b!3834370 d!1138424))

(declare-fun d!1138426 () Bool)

(declare-fun lt!1331097 () Int)

(assert (=> d!1138426 (>= lt!1331097 0)))

(declare-fun e!2368514 () Int)

(assert (=> d!1138426 (= lt!1331097 e!2368514)))

(declare-fun c!668748 () Bool)

(assert (=> d!1138426 (= c!668748 ((_ is Nil!40500) lt!1330911))))

(assert (=> d!1138426 (= (size!30508 lt!1330911) lt!1331097)))

(declare-fun b!3835114 () Bool)

(assert (=> b!3835114 (= e!2368514 0)))

(declare-fun b!3835115 () Bool)

(assert (=> b!3835115 (= e!2368514 (+ 1 (size!30508 (t!309357 lt!1330911))))))

(assert (= (and d!1138426 c!668748) b!3835114))

(assert (= (and d!1138426 (not c!668748)) b!3835115))

(declare-fun m!4389433 () Bool)

(assert (=> b!3835115 m!4389433))

(assert (=> b!3834302 d!1138426))

(assert (=> b!3834302 d!1138078))

(declare-fun d!1138428 () Bool)

(declare-fun lt!1331098 () Int)

(assert (=> d!1138428 (>= lt!1331098 0)))

(declare-fun e!2368517 () Int)

(assert (=> d!1138428 (= lt!1331098 e!2368517)))

(declare-fun c!668749 () Bool)

(assert (=> d!1138428 (= c!668749 ((_ is Nil!40500) (_2!22972 (v!38943 lt!1330899))))))

(assert (=> d!1138428 (= (size!30508 (_2!22972 (v!38943 lt!1330899))) lt!1331098)))

(declare-fun b!3835119 () Bool)

(assert (=> b!3835119 (= e!2368517 0)))

(declare-fun b!3835120 () Bool)

(assert (=> b!3835120 (= e!2368517 (+ 1 (size!30508 (t!309357 (_2!22972 (v!38943 lt!1330899))))))))

(assert (= (and d!1138428 c!668749) b!3835119))

(assert (= (and d!1138428 (not c!668749)) b!3835120))

(declare-fun m!4389437 () Bool)

(assert (=> b!3835120 m!4389437))

(assert (=> b!3834302 d!1138428))

(declare-fun d!1138430 () Bool)

(assert (=> d!1138430 (= (head!8070 lt!1330896) (h!45920 lt!1330896))))

(assert (=> b!3834366 d!1138430))

(declare-fun d!1138432 () Bool)

(assert (=> d!1138432 (= (head!8070 (++!10234 lt!1330896 (_2!22972 (v!38943 lt!1330899)))) (h!45920 (++!10234 lt!1330896 (_2!22972 (v!38943 lt!1330899)))))))

(assert (=> b!3834366 d!1138432))

(declare-fun d!1138434 () Bool)

(declare-fun c!668750 () Bool)

(assert (=> d!1138434 (= c!668750 ((_ is Node!12449) (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))) (value!198417 (_1!22972 (v!38943 lt!1330899)))))))))

(declare-fun e!2368521 () Bool)

(assert (=> d!1138434 (= (inv!54644 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))) (value!198417 (_1!22972 (v!38943 lt!1330899)))))) e!2368521)))

(declare-fun b!3835128 () Bool)

(assert (=> b!3835128 (= e!2368521 (inv!54648 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))) (value!198417 (_1!22972 (v!38943 lt!1330899)))))))))

(declare-fun b!3835129 () Bool)

(declare-fun e!2368522 () Bool)

(assert (=> b!3835129 (= e!2368521 e!2368522)))

(declare-fun res!1552327 () Bool)

(assert (=> b!3835129 (= res!1552327 (not ((_ is Leaf!19275) (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))) (value!198417 (_1!22972 (v!38943 lt!1330899))))))))))

(assert (=> b!3835129 (=> res!1552327 e!2368522)))

(declare-fun b!3835130 () Bool)

(assert (=> b!3835130 (= e!2368522 (inv!54649 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))) (value!198417 (_1!22972 (v!38943 lt!1330899)))))))))

(assert (= (and d!1138434 c!668750) b!3835128))

(assert (= (and d!1138434 (not c!668750)) b!3835129))

(assert (= (and b!3835129 (not res!1552327)) b!3835130))

(declare-fun m!4389449 () Bool)

(assert (=> b!3835128 m!4389449))

(declare-fun m!4389451 () Bool)

(assert (=> b!3835130 m!4389451))

(assert (=> b!3834312 d!1138434))

(declare-fun d!1138436 () Bool)

(assert (=> d!1138436 (= (inv!54637 (tag!7098 (rule!9070 (h!45923 (t!309360 prefixTokens!80))))) (= (mod (str.len (value!198416 (tag!7098 (rule!9070 (h!45923 (t!309360 prefixTokens!80)))))) 2) 0))))

(assert (=> b!3834604 d!1138436))

(declare-fun d!1138438 () Bool)

(declare-fun res!1552328 () Bool)

(declare-fun e!2368525 () Bool)

(assert (=> d!1138438 (=> (not res!1552328) (not e!2368525))))

(assert (=> d!1138438 (= res!1552328 (semiInverseModEq!2675 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80))))) (toValue!8646 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80)))))))))

(assert (=> d!1138438 (= (inv!54641 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80))))) e!2368525)))

(declare-fun b!3835139 () Bool)

(assert (=> b!3835139 (= e!2368525 (equivClasses!2574 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80))))) (toValue!8646 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80)))))))))

(assert (= (and d!1138438 res!1552328) b!3835139))

(declare-fun m!4389453 () Bool)

(assert (=> d!1138438 m!4389453))

(declare-fun m!4389455 () Bool)

(assert (=> b!3835139 m!4389455))

(assert (=> b!3834604 d!1138438))

(declare-fun d!1138440 () Bool)

(declare-fun lt!1331099 () Int)

(assert (=> d!1138440 (>= lt!1331099 0)))

(declare-fun e!2368534 () Int)

(assert (=> d!1138440 (= lt!1331099 e!2368534)))

(declare-fun c!668751 () Bool)

(assert (=> d!1138440 (= c!668751 ((_ is Nil!40500) (++!10234 lt!1330896 (_2!22972 (v!38943 lt!1330899)))))))

(assert (=> d!1138440 (= (size!30508 (++!10234 lt!1330896 (_2!22972 (v!38943 lt!1330899)))) lt!1331099)))

(declare-fun b!3835146 () Bool)

(assert (=> b!3835146 (= e!2368534 0)))

(declare-fun b!3835147 () Bool)

(assert (=> b!3835147 (= e!2368534 (+ 1 (size!30508 (t!309357 (++!10234 lt!1330896 (_2!22972 (v!38943 lt!1330899)))))))))

(assert (= (and d!1138440 c!668751) b!3835146))

(assert (= (and d!1138440 (not c!668751)) b!3835147))

(declare-fun m!4389457 () Bool)

(assert (=> b!3835147 m!4389457))

(assert (=> b!3834368 d!1138440))

(assert (=> b!3834368 d!1138078))

(declare-fun d!1138442 () Bool)

(declare-fun nullableFct!1108 (Regex!11143) Bool)

(assert (=> d!1138442 (= (nullable!3875 (regex!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))) (nullableFct!1108 (regex!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))))))

(declare-fun bs!582433 () Bool)

(assert (= bs!582433 d!1138442))

(declare-fun m!4389459 () Bool)

(assert (=> bs!582433 m!4389459))

(assert (=> b!3834290 d!1138442))

(declare-fun d!1138444 () Bool)

(declare-fun res!1552329 () Bool)

(declare-fun e!2368535 () Bool)

(assert (=> d!1138444 (=> (not res!1552329) (not e!2368535))))

(assert (=> d!1138444 (= res!1552329 (not (isEmpty!23914 (originalCharacters!6838 (h!45923 (t!309360 prefixTokens!80))))))))

(assert (=> d!1138444 (= (inv!54640 (h!45923 (t!309360 prefixTokens!80))) e!2368535)))

(declare-fun b!3835148 () Bool)

(declare-fun res!1552330 () Bool)

(assert (=> b!3835148 (=> (not res!1552330) (not e!2368535))))

(assert (=> b!3835148 (= res!1552330 (= (originalCharacters!6838 (h!45923 (t!309360 prefixTokens!80))) (list!15086 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80))))) (value!198417 (h!45923 (t!309360 prefixTokens!80)))))))))

(declare-fun b!3835149 () Bool)

(assert (=> b!3835149 (= e!2368535 (= (size!30507 (h!45923 (t!309360 prefixTokens!80))) (size!30508 (originalCharacters!6838 (h!45923 (t!309360 prefixTokens!80))))))))

(assert (= (and d!1138444 res!1552329) b!3835148))

(assert (= (and b!3835148 res!1552330) b!3835149))

(declare-fun b_lambda!112123 () Bool)

(assert (=> (not b_lambda!112123) (not b!3835148)))

(declare-fun t!309523 () Bool)

(declare-fun tb!220203 () Bool)

(assert (=> (and b!3834618 (= (toChars!8505 (transformation!6238 (h!45922 (t!309359 rules!2768)))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80)))))) t!309523) tb!220203))

(declare-fun b!3835153 () Bool)

(declare-fun e!2368540 () Bool)

(declare-fun tp!1160711 () Bool)

(assert (=> b!3835153 (= e!2368540 (and (inv!54644 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80))))) (value!198417 (h!45923 (t!309360 prefixTokens!80)))))) tp!1160711))))

(declare-fun result!268418 () Bool)

(assert (=> tb!220203 (= result!268418 (and (inv!54645 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80))))) (value!198417 (h!45923 (t!309360 prefixTokens!80))))) e!2368540))))

(assert (= tb!220203 b!3835153))

(declare-fun m!4389469 () Bool)

(assert (=> b!3835153 m!4389469))

(declare-fun m!4389471 () Bool)

(assert (=> tb!220203 m!4389471))

(assert (=> b!3835148 t!309523))

(declare-fun b_and!285193 () Bool)

(assert (= b_and!285183 (and (=> t!309523 result!268418) b_and!285193)))

(declare-fun t!309527 () Bool)

(declare-fun tb!220207 () Bool)

(assert (=> (and b!3834218 (= (toChars!8505 (transformation!6238 (h!45922 rules!2768))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80)))))) t!309527) tb!220207))

(declare-fun result!268422 () Bool)

(assert (= result!268422 result!268418))

(assert (=> b!3835148 t!309527))

(declare-fun b_and!285195 () Bool)

(assert (= b_and!285181 (and (=> t!309527 result!268422) b_and!285195)))

(declare-fun tb!220209 () Bool)

(declare-fun t!309529 () Bool)

(assert (=> (and b!3834628 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80)))))) t!309529) tb!220209))

(declare-fun result!268424 () Bool)

(assert (= result!268424 result!268418))

(assert (=> b!3835148 t!309529))

(declare-fun b_and!285199 () Bool)

(assert (= b_and!285177 (and (=> t!309529 result!268424) b_and!285199)))

(declare-fun t!309533 () Bool)

(declare-fun tb!220213 () Bool)

(assert (=> (and b!3834220 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80)))))) t!309533) tb!220213))

(declare-fun result!268428 () Bool)

(assert (= result!268428 result!268418))

(assert (=> b!3835148 t!309533))

(declare-fun b_and!285201 () Bool)

(assert (= b_and!285175 (and (=> t!309533 result!268428) b_and!285201)))

(declare-fun t!309537 () Bool)

(declare-fun tb!220217 () Bool)

(assert (=> (and b!3834605 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80)))))) t!309537) tb!220217))

(declare-fun result!268432 () Bool)

(assert (= result!268432 result!268418))

(assert (=> b!3835148 t!309537))

(declare-fun b_and!285203 () Bool)

(assert (= b_and!285185 (and (=> t!309537 result!268432) b_and!285203)))

(declare-fun t!309541 () Bool)

(declare-fun tb!220221 () Bool)

(assert (=> (and b!3834211 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80)))))) t!309541) tb!220221))

(declare-fun result!268436 () Bool)

(assert (= result!268436 result!268418))

(assert (=> b!3835148 t!309541))

(declare-fun b_and!285205 () Bool)

(assert (= b_and!285179 (and (=> t!309541 result!268436) b_and!285205)))

(declare-fun m!4389473 () Bool)

(assert (=> d!1138444 m!4389473))

(declare-fun m!4389475 () Bool)

(assert (=> b!3835148 m!4389475))

(assert (=> b!3835148 m!4389475))

(declare-fun m!4389477 () Bool)

(assert (=> b!3835148 m!4389477))

(declare-fun m!4389479 () Bool)

(assert (=> b!3835149 m!4389479))

(assert (=> b!3834602 d!1138444))

(declare-fun b!3835154 () Bool)

(declare-fun e!2368541 () Bool)

(assert (=> b!3835154 (= e!2368541 (inv!16 (value!198417 (h!45923 (t!309360 suffixTokens!72)))))))

(declare-fun b!3835155 () Bool)

(declare-fun e!2368542 () Bool)

(assert (=> b!3835155 (= e!2368542 (inv!15 (value!198417 (h!45923 (t!309360 suffixTokens!72)))))))

(declare-fun b!3835156 () Bool)

(declare-fun res!1552331 () Bool)

(assert (=> b!3835156 (=> res!1552331 e!2368542)))

(assert (=> b!3835156 (= res!1552331 (not ((_ is IntegerValue!19406) (value!198417 (h!45923 (t!309360 suffixTokens!72))))))))

(declare-fun e!2368543 () Bool)

(assert (=> b!3835156 (= e!2368543 e!2368542)))

(declare-fun d!1138446 () Bool)

(declare-fun c!668753 () Bool)

(assert (=> d!1138446 (= c!668753 ((_ is IntegerValue!19404) (value!198417 (h!45923 (t!309360 suffixTokens!72)))))))

(assert (=> d!1138446 (= (inv!21 (value!198417 (h!45923 (t!309360 suffixTokens!72)))) e!2368541)))

(declare-fun b!3835157 () Bool)

(assert (=> b!3835157 (= e!2368541 e!2368543)))

(declare-fun c!668752 () Bool)

(assert (=> b!3835157 (= c!668752 ((_ is IntegerValue!19405) (value!198417 (h!45923 (t!309360 suffixTokens!72)))))))

(declare-fun b!3835158 () Bool)

(assert (=> b!3835158 (= e!2368543 (inv!17 (value!198417 (h!45923 (t!309360 suffixTokens!72)))))))

(assert (= (and d!1138446 c!668753) b!3835154))

(assert (= (and d!1138446 (not c!668753)) b!3835157))

(assert (= (and b!3835157 c!668752) b!3835158))

(assert (= (and b!3835157 (not c!668752)) b!3835156))

(assert (= (and b!3835156 (not res!1552331)) b!3835155))

(declare-fun m!4389485 () Bool)

(assert (=> b!3835154 m!4389485))

(declare-fun m!4389487 () Bool)

(assert (=> b!3835155 m!4389487))

(declare-fun m!4389489 () Bool)

(assert (=> b!3835158 m!4389489))

(assert (=> b!3834626 d!1138446))

(declare-fun d!1138448 () Bool)

(declare-fun c!668758 () Bool)

(assert (=> d!1138448 (= c!668758 ((_ is Empty!12449) (c!668564 (charsOf!4066 (_1!22972 (v!38943 lt!1330899))))))))

(declare-fun e!2368565 () List!40624)

(assert (=> d!1138448 (= (list!15088 (c!668564 (charsOf!4066 (_1!22972 (v!38943 lt!1330899))))) e!2368565)))

(declare-fun b!3835204 () Bool)

(assert (=> b!3835204 (= e!2368565 Nil!40500)))

(declare-fun b!3835207 () Bool)

(declare-fun e!2368566 () List!40624)

(assert (=> b!3835207 (= e!2368566 (++!10234 (list!15088 (left!31326 (c!668564 (charsOf!4066 (_1!22972 (v!38943 lt!1330899)))))) (list!15088 (right!31656 (c!668564 (charsOf!4066 (_1!22972 (v!38943 lt!1330899))))))))))

(declare-fun b!3835205 () Bool)

(assert (=> b!3835205 (= e!2368565 e!2368566)))

(declare-fun c!668759 () Bool)

(assert (=> b!3835205 (= c!668759 ((_ is Leaf!19275) (c!668564 (charsOf!4066 (_1!22972 (v!38943 lt!1330899))))))))

(declare-fun b!3835206 () Bool)

(declare-fun list!15089 (IArray!24903) List!40624)

(assert (=> b!3835206 (= e!2368566 (list!15089 (xs!15755 (c!668564 (charsOf!4066 (_1!22972 (v!38943 lt!1330899)))))))))

(assert (= (and d!1138448 c!668758) b!3835204))

(assert (= (and d!1138448 (not c!668758)) b!3835205))

(assert (= (and b!3835205 c!668759) b!3835206))

(assert (= (and b!3835205 (not c!668759)) b!3835207))

(declare-fun m!4389505 () Bool)

(assert (=> b!3835207 m!4389505))

(declare-fun m!4389507 () Bool)

(assert (=> b!3835207 m!4389507))

(assert (=> b!3835207 m!4389505))

(assert (=> b!3835207 m!4389507))

(declare-fun m!4389509 () Bool)

(assert (=> b!3835207 m!4389509))

(declare-fun m!4389511 () Bool)

(assert (=> b!3835206 m!4389511))

(assert (=> d!1138082 d!1138448))

(declare-fun b!3835209 () Bool)

(declare-fun e!2368570 () Option!8656)

(declare-fun call!281863 () Option!8656)

(assert (=> b!3835209 (= e!2368570 call!281863)))

(declare-fun bm!281858 () Bool)

(assert (=> bm!281858 (= call!281863 (maxPrefixOneRule!2227 thiss!20629 (h!45922 (t!309359 rules!2768)) lt!1330898))))

(declare-fun b!3835210 () Bool)

(declare-fun e!2368568 () Bool)

(declare-fun lt!1331103 () Option!8656)

(assert (=> b!3835210 (= e!2368568 (contains!8216 (t!309359 rules!2768) (rule!9070 (_1!22972 (get!13433 lt!1331103)))))))

(declare-fun b!3835211 () Bool)

(declare-fun e!2368569 () Bool)

(assert (=> b!3835211 (= e!2368569 e!2368568)))

(declare-fun res!1552337 () Bool)

(assert (=> b!3835211 (=> (not res!1552337) (not e!2368568))))

(assert (=> b!3835211 (= res!1552337 (isDefined!6815 lt!1331103))))

(declare-fun b!3835212 () Bool)

(declare-fun res!1552336 () Bool)

(assert (=> b!3835212 (=> (not res!1552336) (not e!2368568))))

(assert (=> b!3835212 (= res!1552336 (matchR!5326 (regex!6238 (rule!9070 (_1!22972 (get!13433 lt!1331103)))) (list!15086 (charsOf!4066 (_1!22972 (get!13433 lt!1331103))))))))

(declare-fun b!3835214 () Bool)

(declare-fun res!1552333 () Bool)

(assert (=> b!3835214 (=> (not res!1552333) (not e!2368568))))

(assert (=> b!3835214 (= res!1552333 (= (value!198417 (_1!22972 (get!13433 lt!1331103))) (apply!9483 (transformation!6238 (rule!9070 (_1!22972 (get!13433 lt!1331103)))) (seqFromList!4511 (originalCharacters!6838 (_1!22972 (get!13433 lt!1331103)))))))))

(declare-fun b!3835215 () Bool)

(declare-fun res!1552332 () Bool)

(assert (=> b!3835215 (=> (not res!1552332) (not e!2368568))))

(assert (=> b!3835215 (= res!1552332 (= (++!10234 (list!15086 (charsOf!4066 (_1!22972 (get!13433 lt!1331103)))) (_2!22972 (get!13433 lt!1331103))) lt!1330898))))

(declare-fun b!3835213 () Bool)

(declare-fun res!1552334 () Bool)

(assert (=> b!3835213 (=> (not res!1552334) (not e!2368568))))

(assert (=> b!3835213 (= res!1552334 (= (list!15086 (charsOf!4066 (_1!22972 (get!13433 lt!1331103)))) (originalCharacters!6838 (_1!22972 (get!13433 lt!1331103)))))))

(declare-fun d!1138450 () Bool)

(assert (=> d!1138450 e!2368569))

(declare-fun res!1552338 () Bool)

(assert (=> d!1138450 (=> res!1552338 e!2368569)))

(assert (=> d!1138450 (= res!1552338 (isEmpty!23918 lt!1331103))))

(assert (=> d!1138450 (= lt!1331103 e!2368570)))

(declare-fun c!668760 () Bool)

(assert (=> d!1138450 (= c!668760 (and ((_ is Cons!40502) (t!309359 rules!2768)) ((_ is Nil!40502) (t!309359 (t!309359 rules!2768)))))))

(declare-fun lt!1331104 () Unit!58238)

(declare-fun lt!1331100 () Unit!58238)

(assert (=> d!1138450 (= lt!1331104 lt!1331100)))

(assert (=> d!1138450 (isPrefix!3337 lt!1330898 lt!1330898)))

(assert (=> d!1138450 (= lt!1331100 (lemmaIsPrefixRefl!2122 lt!1330898 lt!1330898))))

(assert (=> d!1138450 (rulesValidInductive!2200 thiss!20629 (t!309359 rules!2768))))

(assert (=> d!1138450 (= (maxPrefix!3131 thiss!20629 (t!309359 rules!2768) lt!1330898) lt!1331103)))

(declare-fun b!3835216 () Bool)

(declare-fun res!1552335 () Bool)

(assert (=> b!3835216 (=> (not res!1552335) (not e!2368568))))

(assert (=> b!3835216 (= res!1552335 (< (size!30508 (_2!22972 (get!13433 lt!1331103))) (size!30508 lt!1330898)))))

(declare-fun b!3835217 () Bool)

(declare-fun lt!1331101 () Option!8656)

(declare-fun lt!1331102 () Option!8656)

(assert (=> b!3835217 (= e!2368570 (ite (and ((_ is None!8655) lt!1331101) ((_ is None!8655) lt!1331102)) None!8655 (ite ((_ is None!8655) lt!1331102) lt!1331101 (ite ((_ is None!8655) lt!1331101) lt!1331102 (ite (>= (size!30507 (_1!22972 (v!38943 lt!1331101))) (size!30507 (_1!22972 (v!38943 lt!1331102)))) lt!1331101 lt!1331102)))))))

(assert (=> b!3835217 (= lt!1331101 call!281863)))

(assert (=> b!3835217 (= lt!1331102 (maxPrefix!3131 thiss!20629 (t!309359 (t!309359 rules!2768)) lt!1330898))))

(assert (= (and d!1138450 c!668760) b!3835209))

(assert (= (and d!1138450 (not c!668760)) b!3835217))

(assert (= (or b!3835209 b!3835217) bm!281858))

(assert (= (and d!1138450 (not res!1552338)) b!3835211))

(assert (= (and b!3835211 res!1552337) b!3835213))

(assert (= (and b!3835213 res!1552334) b!3835216))

(assert (= (and b!3835216 res!1552335) b!3835215))

(assert (= (and b!3835215 res!1552332) b!3835214))

(assert (= (and b!3835214 res!1552333) b!3835212))

(assert (= (and b!3835212 res!1552336) b!3835210))

(declare-fun m!4389513 () Bool)

(assert (=> bm!281858 m!4389513))

(declare-fun m!4389515 () Bool)

(assert (=> b!3835214 m!4389515))

(declare-fun m!4389517 () Bool)

(assert (=> b!3835214 m!4389517))

(assert (=> b!3835214 m!4389517))

(declare-fun m!4389519 () Bool)

(assert (=> b!3835214 m!4389519))

(assert (=> b!3835212 m!4389515))

(declare-fun m!4389521 () Bool)

(assert (=> b!3835212 m!4389521))

(assert (=> b!3835212 m!4389521))

(declare-fun m!4389523 () Bool)

(assert (=> b!3835212 m!4389523))

(assert (=> b!3835212 m!4389523))

(declare-fun m!4389525 () Bool)

(assert (=> b!3835212 m!4389525))

(declare-fun m!4389527 () Bool)

(assert (=> b!3835217 m!4389527))

(assert (=> b!3835215 m!4389515))

(assert (=> b!3835215 m!4389521))

(assert (=> b!3835215 m!4389521))

(assert (=> b!3835215 m!4389523))

(assert (=> b!3835215 m!4389523))

(declare-fun m!4389529 () Bool)

(assert (=> b!3835215 m!4389529))

(assert (=> b!3835216 m!4389515))

(declare-fun m!4389531 () Bool)

(assert (=> b!3835216 m!4389531))

(assert (=> b!3835216 m!4388463))

(declare-fun m!4389533 () Bool)

(assert (=> b!3835211 m!4389533))

(assert (=> b!3835213 m!4389515))

(assert (=> b!3835213 m!4389521))

(assert (=> b!3835213 m!4389521))

(assert (=> b!3835213 m!4389523))

(assert (=> b!3835210 m!4389515))

(declare-fun m!4389535 () Bool)

(assert (=> b!3835210 m!4389535))

(declare-fun m!4389537 () Bool)

(assert (=> d!1138450 m!4389537))

(assert (=> d!1138450 m!4388847))

(assert (=> d!1138450 m!4388849))

(declare-fun m!4389539 () Bool)

(assert (=> d!1138450 m!4389539))

(assert (=> b!3834565 d!1138450))

(declare-fun d!1138452 () Bool)

(declare-fun lt!1331105 () Int)

(assert (=> d!1138452 (>= lt!1331105 0)))

(declare-fun e!2368571 () Int)

(assert (=> d!1138452 (= lt!1331105 e!2368571)))

(declare-fun c!668761 () Bool)

(assert (=> d!1138452 (= c!668761 ((_ is Nil!40503) (_1!22971 lt!1330984)))))

(assert (=> d!1138452 (= (size!30510 (_1!22971 lt!1330984)) lt!1331105)))

(declare-fun b!3835218 () Bool)

(assert (=> b!3835218 (= e!2368571 0)))

(declare-fun b!3835219 () Bool)

(assert (=> b!3835219 (= e!2368571 (+ 1 (size!30510 (t!309360 (_1!22971 lt!1330984)))))))

(assert (= (and d!1138452 c!668761) b!3835218))

(assert (= (and d!1138452 (not c!668761)) b!3835219))

(declare-fun m!4389541 () Bool)

(assert (=> b!3835219 m!4389541))

(assert (=> d!1138156 d!1138452))

(declare-fun b!3835220 () Bool)

(declare-fun e!2368574 () Option!8656)

(declare-fun call!281864 () Option!8656)

(assert (=> b!3835220 (= e!2368574 call!281864)))

(declare-fun bm!281859 () Bool)

(assert (=> bm!281859 (= call!281864 (maxPrefixOneRule!2227 thiss!20629 (h!45922 rules!2768) suffix!1176))))

(declare-fun b!3835221 () Bool)

(declare-fun e!2368572 () Bool)

(declare-fun lt!1331109 () Option!8656)

(assert (=> b!3835221 (= e!2368572 (contains!8216 rules!2768 (rule!9070 (_1!22972 (get!13433 lt!1331109)))))))

(declare-fun b!3835222 () Bool)

(declare-fun e!2368573 () Bool)

(assert (=> b!3835222 (= e!2368573 e!2368572)))

(declare-fun res!1552344 () Bool)

(assert (=> b!3835222 (=> (not res!1552344) (not e!2368572))))

(assert (=> b!3835222 (= res!1552344 (isDefined!6815 lt!1331109))))

(declare-fun b!3835223 () Bool)

(declare-fun res!1552343 () Bool)

(assert (=> b!3835223 (=> (not res!1552343) (not e!2368572))))

(assert (=> b!3835223 (= res!1552343 (matchR!5326 (regex!6238 (rule!9070 (_1!22972 (get!13433 lt!1331109)))) (list!15086 (charsOf!4066 (_1!22972 (get!13433 lt!1331109))))))))

(declare-fun b!3835225 () Bool)

(declare-fun res!1552340 () Bool)

(assert (=> b!3835225 (=> (not res!1552340) (not e!2368572))))

(assert (=> b!3835225 (= res!1552340 (= (value!198417 (_1!22972 (get!13433 lt!1331109))) (apply!9483 (transformation!6238 (rule!9070 (_1!22972 (get!13433 lt!1331109)))) (seqFromList!4511 (originalCharacters!6838 (_1!22972 (get!13433 lt!1331109)))))))))

(declare-fun b!3835226 () Bool)

(declare-fun res!1552339 () Bool)

(assert (=> b!3835226 (=> (not res!1552339) (not e!2368572))))

(assert (=> b!3835226 (= res!1552339 (= (++!10234 (list!15086 (charsOf!4066 (_1!22972 (get!13433 lt!1331109)))) (_2!22972 (get!13433 lt!1331109))) suffix!1176))))

(declare-fun b!3835224 () Bool)

(declare-fun res!1552341 () Bool)

(assert (=> b!3835224 (=> (not res!1552341) (not e!2368572))))

(assert (=> b!3835224 (= res!1552341 (= (list!15086 (charsOf!4066 (_1!22972 (get!13433 lt!1331109)))) (originalCharacters!6838 (_1!22972 (get!13433 lt!1331109)))))))

(declare-fun d!1138454 () Bool)

(assert (=> d!1138454 e!2368573))

(declare-fun res!1552345 () Bool)

(assert (=> d!1138454 (=> res!1552345 e!2368573)))

(assert (=> d!1138454 (= res!1552345 (isEmpty!23918 lt!1331109))))

(assert (=> d!1138454 (= lt!1331109 e!2368574)))

(declare-fun c!668762 () Bool)

(assert (=> d!1138454 (= c!668762 (and ((_ is Cons!40502) rules!2768) ((_ is Nil!40502) (t!309359 rules!2768))))))

(declare-fun lt!1331110 () Unit!58238)

(declare-fun lt!1331106 () Unit!58238)

(assert (=> d!1138454 (= lt!1331110 lt!1331106)))

(assert (=> d!1138454 (isPrefix!3337 suffix!1176 suffix!1176)))

(assert (=> d!1138454 (= lt!1331106 (lemmaIsPrefixRefl!2122 suffix!1176 suffix!1176))))

(assert (=> d!1138454 (rulesValidInductive!2200 thiss!20629 rules!2768)))

(assert (=> d!1138454 (= (maxPrefix!3131 thiss!20629 rules!2768 suffix!1176) lt!1331109)))

(declare-fun b!3835227 () Bool)

(declare-fun res!1552342 () Bool)

(assert (=> b!3835227 (=> (not res!1552342) (not e!2368572))))

(assert (=> b!3835227 (= res!1552342 (< (size!30508 (_2!22972 (get!13433 lt!1331109))) (size!30508 suffix!1176)))))

(declare-fun b!3835228 () Bool)

(declare-fun lt!1331107 () Option!8656)

(declare-fun lt!1331108 () Option!8656)

(assert (=> b!3835228 (= e!2368574 (ite (and ((_ is None!8655) lt!1331107) ((_ is None!8655) lt!1331108)) None!8655 (ite ((_ is None!8655) lt!1331108) lt!1331107 (ite ((_ is None!8655) lt!1331107) lt!1331108 (ite (>= (size!30507 (_1!22972 (v!38943 lt!1331107))) (size!30507 (_1!22972 (v!38943 lt!1331108)))) lt!1331107 lt!1331108)))))))

(assert (=> b!3835228 (= lt!1331107 call!281864)))

(assert (=> b!3835228 (= lt!1331108 (maxPrefix!3131 thiss!20629 (t!309359 rules!2768) suffix!1176))))

(assert (= (and d!1138454 c!668762) b!3835220))

(assert (= (and d!1138454 (not c!668762)) b!3835228))

(assert (= (or b!3835220 b!3835228) bm!281859))

(assert (= (and d!1138454 (not res!1552345)) b!3835222))

(assert (= (and b!3835222 res!1552344) b!3835224))

(assert (= (and b!3835224 res!1552341) b!3835227))

(assert (= (and b!3835227 res!1552342) b!3835226))

(assert (= (and b!3835226 res!1552339) b!3835225))

(assert (= (and b!3835225 res!1552340) b!3835223))

(assert (= (and b!3835223 res!1552343) b!3835221))

(declare-fun m!4389543 () Bool)

(assert (=> bm!281859 m!4389543))

(declare-fun m!4389545 () Bool)

(assert (=> b!3835225 m!4389545))

(declare-fun m!4389547 () Bool)

(assert (=> b!3835225 m!4389547))

(assert (=> b!3835225 m!4389547))

(declare-fun m!4389549 () Bool)

(assert (=> b!3835225 m!4389549))

(assert (=> b!3835223 m!4389545))

(declare-fun m!4389551 () Bool)

(assert (=> b!3835223 m!4389551))

(assert (=> b!3835223 m!4389551))

(declare-fun m!4389553 () Bool)

(assert (=> b!3835223 m!4389553))

(assert (=> b!3835223 m!4389553))

(declare-fun m!4389555 () Bool)

(assert (=> b!3835223 m!4389555))

(declare-fun m!4389557 () Bool)

(assert (=> b!3835228 m!4389557))

(assert (=> b!3835226 m!4389545))

(assert (=> b!3835226 m!4389551))

(assert (=> b!3835226 m!4389551))

(assert (=> b!3835226 m!4389553))

(assert (=> b!3835226 m!4389553))

(declare-fun m!4389559 () Bool)

(assert (=> b!3835226 m!4389559))

(assert (=> b!3835227 m!4389545))

(declare-fun m!4389561 () Bool)

(assert (=> b!3835227 m!4389561))

(assert (=> b!3835227 m!4388809))

(declare-fun m!4389563 () Bool)

(assert (=> b!3835222 m!4389563))

(assert (=> b!3835224 m!4389545))

(assert (=> b!3835224 m!4389551))

(assert (=> b!3835224 m!4389551))

(assert (=> b!3835224 m!4389553))

(assert (=> b!3835221 m!4389545))

(declare-fun m!4389565 () Bool)

(assert (=> b!3835221 m!4389565))

(declare-fun m!4389567 () Bool)

(assert (=> d!1138454 m!4389567))

(declare-fun m!4389569 () Bool)

(assert (=> d!1138454 m!4389569))

(declare-fun m!4389571 () Bool)

(assert (=> d!1138454 m!4389571))

(assert (=> d!1138454 m!4388851))

(assert (=> d!1138156 d!1138454))

(declare-fun d!1138456 () Bool)

(assert (=> d!1138456 (= (list!15086 lt!1330921) (list!15088 (c!668564 lt!1330921)))))

(declare-fun bs!582434 () Bool)

(assert (= bs!582434 d!1138456))

(declare-fun m!4389573 () Bool)

(assert (=> bs!582434 m!4389573))

(assert (=> d!1138086 d!1138456))

(declare-fun e!2368575 () Bool)

(declare-fun lt!1331111 () List!40627)

(declare-fun b!3835232 () Bool)

(assert (=> b!3835232 (= e!2368575 (or (not (= suffixTokens!72 Nil!40503)) (= lt!1331111 (t!309360 prefixTokens!80))))))

(declare-fun d!1138458 () Bool)

(assert (=> d!1138458 e!2368575))

(declare-fun res!1552347 () Bool)

(assert (=> d!1138458 (=> (not res!1552347) (not e!2368575))))

(assert (=> d!1138458 (= res!1552347 (= (content!6012 lt!1331111) ((_ map or) (content!6012 (t!309360 prefixTokens!80)) (content!6012 suffixTokens!72))))))

(declare-fun e!2368576 () List!40627)

(assert (=> d!1138458 (= lt!1331111 e!2368576)))

(declare-fun c!668763 () Bool)

(assert (=> d!1138458 (= c!668763 ((_ is Nil!40503) (t!309360 prefixTokens!80)))))

(assert (=> d!1138458 (= (++!10233 (t!309360 prefixTokens!80) suffixTokens!72) lt!1331111)))

(declare-fun b!3835229 () Bool)

(assert (=> b!3835229 (= e!2368576 suffixTokens!72)))

(declare-fun b!3835230 () Bool)

(assert (=> b!3835230 (= e!2368576 (Cons!40503 (h!45923 (t!309360 prefixTokens!80)) (++!10233 (t!309360 (t!309360 prefixTokens!80)) suffixTokens!72)))))

(declare-fun b!3835231 () Bool)

(declare-fun res!1552346 () Bool)

(assert (=> b!3835231 (=> (not res!1552346) (not e!2368575))))

(assert (=> b!3835231 (= res!1552346 (= (size!30510 lt!1331111) (+ (size!30510 (t!309360 prefixTokens!80)) (size!30510 suffixTokens!72))))))

(assert (= (and d!1138458 c!668763) b!3835229))

(assert (= (and d!1138458 (not c!668763)) b!3835230))

(assert (= (and d!1138458 res!1552347) b!3835231))

(assert (= (and b!3835231 res!1552346) b!3835232))

(declare-fun m!4389575 () Bool)

(assert (=> d!1138458 m!4389575))

(assert (=> d!1138458 m!4389393))

(assert (=> d!1138458 m!4388787))

(declare-fun m!4389577 () Bool)

(assert (=> b!3835230 m!4389577))

(declare-fun m!4389579 () Bool)

(assert (=> b!3835231 m!4389579))

(declare-fun m!4389581 () Bool)

(assert (=> b!3835231 m!4389581))

(assert (=> b!3835231 m!4388795))

(assert (=> b!3834527 d!1138458))

(declare-fun d!1138460 () Bool)

(assert (=> d!1138460 true))

(declare-fun lambda!126029 () Int)

(declare-fun order!22125 () Int)

(declare-fun order!22123 () Int)

(declare-fun dynLambda!17541 (Int Int) Int)

(declare-fun dynLambda!17542 (Int Int) Int)

(assert (=> d!1138460 (< (dynLambda!17541 order!22123 (toChars!8505 (transformation!6238 (h!45922 rules!2768)))) (dynLambda!17542 order!22125 lambda!126029))))

(assert (=> d!1138460 true))

(assert (=> d!1138460 (< (dynLambda!17537 order!22117 (toValue!8646 (transformation!6238 (h!45922 rules!2768)))) (dynLambda!17542 order!22125 lambda!126029))))

(declare-fun Forall!1428 (Int) Bool)

(assert (=> d!1138460 (= (semiInverseModEq!2675 (toChars!8505 (transformation!6238 (h!45922 rules!2768))) (toValue!8646 (transformation!6238 (h!45922 rules!2768)))) (Forall!1428 lambda!126029))))

(declare-fun bs!582435 () Bool)

(assert (= bs!582435 d!1138460))

(declare-fun m!4389583 () Bool)

(assert (=> bs!582435 m!4389583))

(assert (=> d!1138062 d!1138460))

(declare-fun bs!582436 () Bool)

(declare-fun d!1138462 () Bool)

(assert (= bs!582436 (and d!1138462 d!1138460)))

(declare-fun lambda!126030 () Int)

(assert (=> bs!582436 (= (and (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (toChars!8505 (transformation!6238 (h!45922 rules!2768)))) (= (toValue!8646 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (toValue!8646 (transformation!6238 (h!45922 rules!2768))))) (= lambda!126030 lambda!126029))))

(assert (=> d!1138462 true))

(assert (=> d!1138462 (< (dynLambda!17541 order!22123 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72))))) (dynLambda!17542 order!22125 lambda!126030))))

(assert (=> d!1138462 true))

(assert (=> d!1138462 (< (dynLambda!17537 order!22117 (toValue!8646 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72))))) (dynLambda!17542 order!22125 lambda!126030))))

(assert (=> d!1138462 (= (semiInverseModEq!2675 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (toValue!8646 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72))))) (Forall!1428 lambda!126030))))

(declare-fun bs!582437 () Bool)

(assert (= bs!582437 d!1138462))

(declare-fun m!4389585 () Bool)

(assert (=> bs!582437 m!4389585))

(assert (=> d!1138112 d!1138462))

(declare-fun b!3835240 () Bool)

(declare-fun e!2368578 () Bool)

(declare-fun lt!1331112 () List!40624)

(assert (=> b!3835240 (= e!2368578 (or (not (= (_2!22972 (get!13433 lt!1330998)) Nil!40500)) (= lt!1331112 (list!15086 (charsOf!4066 (_1!22972 (get!13433 lt!1330998)))))))))

(declare-fun b!3835238 () Bool)

(declare-fun e!2368577 () List!40624)

(assert (=> b!3835238 (= e!2368577 (Cons!40500 (h!45920 (list!15086 (charsOf!4066 (_1!22972 (get!13433 lt!1330998))))) (++!10234 (t!309357 (list!15086 (charsOf!4066 (_1!22972 (get!13433 lt!1330998))))) (_2!22972 (get!13433 lt!1330998)))))))

(declare-fun b!3835237 () Bool)

(assert (=> b!3835237 (= e!2368577 (_2!22972 (get!13433 lt!1330998)))))

(declare-fun d!1138464 () Bool)

(assert (=> d!1138464 e!2368578))

(declare-fun res!1552348 () Bool)

(assert (=> d!1138464 (=> (not res!1552348) (not e!2368578))))

(assert (=> d!1138464 (= res!1552348 (= (content!6010 lt!1331112) ((_ map or) (content!6010 (list!15086 (charsOf!4066 (_1!22972 (get!13433 lt!1330998))))) (content!6010 (_2!22972 (get!13433 lt!1330998))))))))

(assert (=> d!1138464 (= lt!1331112 e!2368577)))

(declare-fun c!668764 () Bool)

(assert (=> d!1138464 (= c!668764 ((_ is Nil!40500) (list!15086 (charsOf!4066 (_1!22972 (get!13433 lt!1330998))))))))

(assert (=> d!1138464 (= (++!10234 (list!15086 (charsOf!4066 (_1!22972 (get!13433 lt!1330998)))) (_2!22972 (get!13433 lt!1330998))) lt!1331112)))

(declare-fun b!3835239 () Bool)

(declare-fun res!1552349 () Bool)

(assert (=> b!3835239 (=> (not res!1552349) (not e!2368578))))

(assert (=> b!3835239 (= res!1552349 (= (size!30508 lt!1331112) (+ (size!30508 (list!15086 (charsOf!4066 (_1!22972 (get!13433 lt!1330998))))) (size!30508 (_2!22972 (get!13433 lt!1330998))))))))

(assert (= (and d!1138464 c!668764) b!3835237))

(assert (= (and d!1138464 (not c!668764)) b!3835238))

(assert (= (and d!1138464 res!1552348) b!3835239))

(assert (= (and b!3835239 res!1552349) b!3835240))

(declare-fun m!4389587 () Bool)

(assert (=> b!3835238 m!4389587))

(declare-fun m!4389589 () Bool)

(assert (=> d!1138464 m!4389589))

(assert (=> d!1138464 m!4388831))

(declare-fun m!4389591 () Bool)

(assert (=> d!1138464 m!4389591))

(declare-fun m!4389593 () Bool)

(assert (=> d!1138464 m!4389593))

(declare-fun m!4389595 () Bool)

(assert (=> b!3835239 m!4389595))

(assert (=> b!3835239 m!4388831))

(declare-fun m!4389597 () Bool)

(assert (=> b!3835239 m!4389597))

(assert (=> b!3835239 m!4388839))

(assert (=> b!3834563 d!1138464))

(assert (=> b!3834563 d!1138320))

(assert (=> b!3834563 d!1138326))

(assert (=> b!3834563 d!1138194))

(declare-fun d!1138466 () Bool)

(assert (=> d!1138466 (= (list!15086 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (value!198417 (h!45923 suffixTokens!72)))) (list!15088 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (value!198417 (h!45923 suffixTokens!72))))))))

(declare-fun bs!582438 () Bool)

(assert (= bs!582438 d!1138466))

(declare-fun m!4389599 () Bool)

(assert (=> bs!582438 m!4389599))

(assert (=> b!3834566 d!1138466))

(declare-fun bs!582439 () Bool)

(declare-fun d!1138468 () Bool)

(assert (= bs!582439 (and d!1138468 d!1138208)))

(declare-fun lambda!126031 () Int)

(assert (=> bs!582439 (= (= (toValue!8646 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (toValue!8646 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72))))) (= lambda!126031 lambda!126021))))

(assert (=> d!1138468 true))

(assert (=> d!1138468 (< (dynLambda!17537 order!22117 (toValue!8646 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80))))) (dynLambda!17538 order!22119 lambda!126031))))

(assert (=> d!1138468 (= (equivClasses!2574 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (toValue!8646 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80))))) (Forall2!1025 lambda!126031))))

(declare-fun bs!582440 () Bool)

(assert (= bs!582440 d!1138468))

(declare-fun m!4389601 () Bool)

(assert (=> bs!582440 m!4389601))

(assert (=> b!3834259 d!1138468))

(assert (=> b!3834561 d!1138320))

(assert (=> b!3834561 d!1138326))

(assert (=> b!3834561 d!1138194))

(declare-fun d!1138470 () Bool)

(declare-fun lt!1331113 () Int)

(assert (=> d!1138470 (>= lt!1331113 0)))

(declare-fun e!2368579 () Int)

(assert (=> d!1138470 (= lt!1331113 e!2368579)))

(declare-fun c!668765 () Bool)

(assert (=> d!1138470 (= c!668765 ((_ is Nil!40500) (_2!22971 lt!1330977)))))

(assert (=> d!1138470 (= (size!30508 (_2!22971 lt!1330977)) lt!1331113)))

(declare-fun b!3835241 () Bool)

(assert (=> b!3835241 (= e!2368579 0)))

(declare-fun b!3835242 () Bool)

(assert (=> b!3835242 (= e!2368579 (+ 1 (size!30508 (t!309357 (_2!22971 lt!1330977)))))))

(assert (= (and d!1138470 c!668765) b!3835241))

(assert (= (and d!1138470 (not c!668765)) b!3835242))

(declare-fun m!4389603 () Bool)

(assert (=> b!3835242 m!4389603))

(assert (=> b!3834516 d!1138470))

(assert (=> b!3834516 d!1138080))

(declare-fun d!1138472 () Bool)

(assert (=> d!1138472 (= (list!15086 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (value!198417 (h!45923 prefixTokens!80)))) (list!15088 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (value!198417 (h!45923 prefixTokens!80))))))))

(declare-fun bs!582441 () Bool)

(assert (= bs!582441 d!1138472))

(declare-fun m!4389605 () Bool)

(assert (=> bs!582441 m!4389605))

(assert (=> b!3834264 d!1138472))

(declare-fun d!1138474 () Bool)

(assert (=> d!1138474 (= (isDefined!6815 lt!1330998) (not (isEmpty!23918 lt!1330998)))))

(declare-fun bs!582442 () Bool)

(assert (= bs!582442 d!1138474))

(assert (=> bs!582442 m!4388845))

(assert (=> b!3834559 d!1138474))

(declare-fun d!1138476 () Bool)

(assert (=> d!1138476 (= (isEmpty!23914 (originalCharacters!6838 (h!45923 suffixTokens!72))) ((_ is Nil!40500) (originalCharacters!6838 (h!45923 suffixTokens!72))))))

(assert (=> d!1138160 d!1138476))

(assert (=> d!1138084 d!1138072))

(declare-fun d!1138478 () Bool)

(assert (=> d!1138478 (ruleValid!2190 thiss!20629 (rule!9070 (_1!22972 (v!38943 lt!1330899))))))

(assert (=> d!1138478 true))

(declare-fun _$65!1308 () Unit!58238)

(assert (=> d!1138478 (= (choose!22545 thiss!20629 (rule!9070 (_1!22972 (v!38943 lt!1330899))) rules!2768) _$65!1308)))

(declare-fun bs!582443 () Bool)

(assert (= bs!582443 d!1138478))

(assert (=> bs!582443 m!4388457))

(assert (=> d!1138084 d!1138478))

(declare-fun d!1138480 () Bool)

(declare-fun lt!1331114 () Bool)

(assert (=> d!1138480 (= lt!1331114 (select (content!6014 rules!2768) (rule!9070 (_1!22972 (v!38943 lt!1330899)))))))

(declare-fun e!2368581 () Bool)

(assert (=> d!1138480 (= lt!1331114 e!2368581)))

(declare-fun res!1552351 () Bool)

(assert (=> d!1138480 (=> (not res!1552351) (not e!2368581))))

(assert (=> d!1138480 (= res!1552351 ((_ is Cons!40502) rules!2768))))

(assert (=> d!1138480 (= (contains!8216 rules!2768 (rule!9070 (_1!22972 (v!38943 lt!1330899)))) lt!1331114)))

(declare-fun b!3835243 () Bool)

(declare-fun e!2368580 () Bool)

(assert (=> b!3835243 (= e!2368581 e!2368580)))

(declare-fun res!1552350 () Bool)

(assert (=> b!3835243 (=> res!1552350 e!2368580)))

(assert (=> b!3835243 (= res!1552350 (= (h!45922 rules!2768) (rule!9070 (_1!22972 (v!38943 lt!1330899)))))))

(declare-fun b!3835244 () Bool)

(assert (=> b!3835244 (= e!2368580 (contains!8216 (t!309359 rules!2768) (rule!9070 (_1!22972 (v!38943 lt!1330899)))))))

(assert (= (and d!1138480 res!1552351) b!3835243))

(assert (= (and b!3835243 (not res!1552350)) b!3835244))

(assert (=> d!1138480 m!4389279))

(declare-fun m!4389607 () Bool)

(assert (=> d!1138480 m!4389607))

(declare-fun m!4389609 () Bool)

(assert (=> b!3835244 m!4389609))

(assert (=> d!1138084 d!1138480))

(declare-fun d!1138482 () Bool)

(declare-fun lt!1331115 () Int)

(assert (=> d!1138482 (>= lt!1331115 0)))

(declare-fun e!2368582 () Int)

(assert (=> d!1138482 (= lt!1331115 e!2368582)))

(declare-fun c!668766 () Bool)

(assert (=> d!1138482 (= c!668766 ((_ is Nil!40500) (t!309357 lt!1330896)))))

(assert (=> d!1138482 (= (size!30508 (t!309357 lt!1330896)) lt!1331115)))

(declare-fun b!3835245 () Bool)

(assert (=> b!3835245 (= e!2368582 0)))

(declare-fun b!3835246 () Bool)

(assert (=> b!3835246 (= e!2368582 (+ 1 (size!30508 (t!309357 (t!309357 lt!1330896)))))))

(assert (= (and d!1138482 c!668766) b!3835245))

(assert (= (and d!1138482 (not c!668766)) b!3835246))

(declare-fun m!4389611 () Bool)

(assert (=> b!3835246 m!4389611))

(assert (=> b!3834309 d!1138482))

(declare-fun b!3835265 () Bool)

(declare-fun res!1552370 () Bool)

(declare-fun e!2368592 () Bool)

(assert (=> b!3835265 (=> (not res!1552370) (not e!2368592))))

(declare-fun lt!1331130 () Option!8656)

(assert (=> b!3835265 (= res!1552370 (< (size!30508 (_2!22972 (get!13433 lt!1331130))) (size!30508 lt!1330898)))))

(declare-fun b!3835266 () Bool)

(declare-fun res!1552372 () Bool)

(assert (=> b!3835266 (=> (not res!1552372) (not e!2368592))))

(assert (=> b!3835266 (= res!1552372 (= (++!10234 (list!15086 (charsOf!4066 (_1!22972 (get!13433 lt!1331130)))) (_2!22972 (get!13433 lt!1331130))) lt!1330898))))

(declare-fun b!3835267 () Bool)

(declare-fun e!2368593 () Option!8656)

(assert (=> b!3835267 (= e!2368593 None!8655)))

(declare-fun b!3835268 () Bool)

(declare-fun res!1552367 () Bool)

(assert (=> b!3835268 (=> (not res!1552367) (not e!2368592))))

(assert (=> b!3835268 (= res!1552367 (= (value!198417 (_1!22972 (get!13433 lt!1331130))) (apply!9483 (transformation!6238 (rule!9070 (_1!22972 (get!13433 lt!1331130)))) (seqFromList!4511 (originalCharacters!6838 (_1!22972 (get!13433 lt!1331130)))))))))

(declare-fun d!1138484 () Bool)

(declare-fun e!2368594 () Bool)

(assert (=> d!1138484 e!2368594))

(declare-fun res!1552366 () Bool)

(assert (=> d!1138484 (=> res!1552366 e!2368594)))

(assert (=> d!1138484 (= res!1552366 (isEmpty!23918 lt!1331130))))

(assert (=> d!1138484 (= lt!1331130 e!2368593)))

(declare-fun c!668769 () Bool)

(declare-datatypes ((tuple2!39680 0))(
  ( (tuple2!39681 (_1!22974 List!40624) (_2!22974 List!40624)) )
))
(declare-fun lt!1331127 () tuple2!39680)

(assert (=> d!1138484 (= c!668769 (isEmpty!23914 (_1!22974 lt!1331127)))))

(declare-fun findLongestMatch!1061 (Regex!11143 List!40624) tuple2!39680)

(assert (=> d!1138484 (= lt!1331127 (findLongestMatch!1061 (regex!6238 (h!45922 rules!2768)) lt!1330898))))

(assert (=> d!1138484 (ruleValid!2190 thiss!20629 (h!45922 rules!2768))))

(assert (=> d!1138484 (= (maxPrefixOneRule!2227 thiss!20629 (h!45922 rules!2768) lt!1330898) lt!1331130)))

(declare-fun b!3835269 () Bool)

(assert (=> b!3835269 (= e!2368594 e!2368592)))

(declare-fun res!1552368 () Bool)

(assert (=> b!3835269 (=> (not res!1552368) (not e!2368592))))

(assert (=> b!3835269 (= res!1552368 (matchR!5326 (regex!6238 (h!45922 rules!2768)) (list!15086 (charsOf!4066 (_1!22972 (get!13433 lt!1331130))))))))

(declare-fun b!3835270 () Bool)

(assert (=> b!3835270 (= e!2368592 (= (size!30507 (_1!22972 (get!13433 lt!1331130))) (size!30508 (originalCharacters!6838 (_1!22972 (get!13433 lt!1331130))))))))

(declare-fun b!3835271 () Bool)

(declare-fun size!30512 (BalanceConc!24492) Int)

(assert (=> b!3835271 (= e!2368593 (Some!8655 (tuple2!39677 (Token!11615 (apply!9483 (transformation!6238 (h!45922 rules!2768)) (seqFromList!4511 (_1!22974 lt!1331127))) (h!45922 rules!2768) (size!30512 (seqFromList!4511 (_1!22974 lt!1331127))) (_1!22974 lt!1331127)) (_2!22974 lt!1331127))))))

(declare-fun lt!1331126 () Unit!58238)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1121 (Regex!11143 List!40624) Unit!58238)

(assert (=> b!3835271 (= lt!1331126 (longestMatchIsAcceptedByMatchOrIsEmpty!1121 (regex!6238 (h!45922 rules!2768)) lt!1330898))))

(declare-fun res!1552371 () Bool)

(declare-fun findLongestMatchInner!1148 (Regex!11143 List!40624 Int List!40624 List!40624 Int) tuple2!39680)

(assert (=> b!3835271 (= res!1552371 (isEmpty!23914 (_1!22974 (findLongestMatchInner!1148 (regex!6238 (h!45922 rules!2768)) Nil!40500 (size!30508 Nil!40500) lt!1330898 lt!1330898 (size!30508 lt!1330898)))))))

(declare-fun e!2368591 () Bool)

(assert (=> b!3835271 (=> res!1552371 e!2368591)))

(assert (=> b!3835271 e!2368591))

(declare-fun lt!1331129 () Unit!58238)

(assert (=> b!3835271 (= lt!1331129 lt!1331126)))

(declare-fun lt!1331128 () Unit!58238)

(declare-fun lemmaSemiInverse!1652 (TokenValueInjection!12364 BalanceConc!24492) Unit!58238)

(assert (=> b!3835271 (= lt!1331128 (lemmaSemiInverse!1652 (transformation!6238 (h!45922 rules!2768)) (seqFromList!4511 (_1!22974 lt!1331127))))))

(declare-fun b!3835272 () Bool)

(declare-fun res!1552369 () Bool)

(assert (=> b!3835272 (=> (not res!1552369) (not e!2368592))))

(assert (=> b!3835272 (= res!1552369 (= (rule!9070 (_1!22972 (get!13433 lt!1331130))) (h!45922 rules!2768)))))

(declare-fun b!3835273 () Bool)

(assert (=> b!3835273 (= e!2368591 (matchR!5326 (regex!6238 (h!45922 rules!2768)) (_1!22974 (findLongestMatchInner!1148 (regex!6238 (h!45922 rules!2768)) Nil!40500 (size!30508 Nil!40500) lt!1330898 lt!1330898 (size!30508 lt!1330898)))))))

(assert (= (and d!1138484 c!668769) b!3835267))

(assert (= (and d!1138484 (not c!668769)) b!3835271))

(assert (= (and b!3835271 (not res!1552371)) b!3835273))

(assert (= (and d!1138484 (not res!1552366)) b!3835269))

(assert (= (and b!3835269 res!1552368) b!3835266))

(assert (= (and b!3835266 res!1552372) b!3835265))

(assert (= (and b!3835265 res!1552370) b!3835272))

(assert (= (and b!3835272 res!1552369) b!3835268))

(assert (= (and b!3835268 res!1552367) b!3835270))

(declare-fun m!4389613 () Bool)

(assert (=> b!3835270 m!4389613))

(declare-fun m!4389615 () Bool)

(assert (=> b!3835270 m!4389615))

(assert (=> b!3835269 m!4389613))

(declare-fun m!4389617 () Bool)

(assert (=> b!3835269 m!4389617))

(assert (=> b!3835269 m!4389617))

(declare-fun m!4389619 () Bool)

(assert (=> b!3835269 m!4389619))

(assert (=> b!3835269 m!4389619))

(declare-fun m!4389621 () Bool)

(assert (=> b!3835269 m!4389621))

(declare-fun m!4389623 () Bool)

(assert (=> b!3835273 m!4389623))

(assert (=> b!3835273 m!4388463))

(assert (=> b!3835273 m!4389623))

(assert (=> b!3835273 m!4388463))

(declare-fun m!4389625 () Bool)

(assert (=> b!3835273 m!4389625))

(declare-fun m!4389627 () Bool)

(assert (=> b!3835273 m!4389627))

(assert (=> b!3835272 m!4389613))

(assert (=> b!3835271 m!4389623))

(assert (=> b!3835271 m!4388463))

(assert (=> b!3835271 m!4389625))

(assert (=> b!3835271 m!4389623))

(declare-fun m!4389629 () Bool)

(assert (=> b!3835271 m!4389629))

(declare-fun m!4389631 () Bool)

(assert (=> b!3835271 m!4389631))

(declare-fun m!4389633 () Bool)

(assert (=> b!3835271 m!4389633))

(assert (=> b!3835271 m!4388463))

(assert (=> b!3835271 m!4389629))

(declare-fun m!4389635 () Bool)

(assert (=> b!3835271 m!4389635))

(assert (=> b!3835271 m!4389629))

(declare-fun m!4389637 () Bool)

(assert (=> b!3835271 m!4389637))

(declare-fun m!4389639 () Bool)

(assert (=> b!3835271 m!4389639))

(assert (=> b!3835271 m!4389629))

(declare-fun m!4389641 () Bool)

(assert (=> d!1138484 m!4389641))

(declare-fun m!4389643 () Bool)

(assert (=> d!1138484 m!4389643))

(declare-fun m!4389645 () Bool)

(assert (=> d!1138484 m!4389645))

(declare-fun m!4389647 () Bool)

(assert (=> d!1138484 m!4389647))

(assert (=> b!3835268 m!4389613))

(declare-fun m!4389649 () Bool)

(assert (=> b!3835268 m!4389649))

(assert (=> b!3835268 m!4389649))

(declare-fun m!4389651 () Bool)

(assert (=> b!3835268 m!4389651))

(assert (=> b!3835266 m!4389613))

(assert (=> b!3835266 m!4389617))

(assert (=> b!3835266 m!4389617))

(assert (=> b!3835266 m!4389619))

(assert (=> b!3835266 m!4389619))

(declare-fun m!4389653 () Bool)

(assert (=> b!3835266 m!4389653))

(assert (=> b!3835265 m!4389613))

(declare-fun m!4389655 () Bool)

(assert (=> b!3835265 m!4389655))

(assert (=> b!3835265 m!4388463))

(assert (=> bm!281831 d!1138484))

(declare-fun d!1138486 () Bool)

(declare-fun charsToInt!0 (List!40625) (_ BitVec 32))

(assert (=> d!1138486 (= (inv!16 (value!198417 (h!45923 prefixTokens!80))) (= (charsToInt!0 (text!45723 (value!198417 (h!45923 prefixTokens!80)))) (value!198408 (value!198417 (h!45923 prefixTokens!80)))))))

(declare-fun bs!582444 () Bool)

(assert (= bs!582444 d!1138486))

(declare-fun m!4389657 () Bool)

(assert (=> bs!582444 m!4389657))

(assert (=> b!3834248 d!1138486))

(declare-fun d!1138488 () Bool)

(declare-fun lt!1331131 () Int)

(assert (=> d!1138488 (>= lt!1331131 0)))

(declare-fun e!2368595 () Int)

(assert (=> d!1138488 (= lt!1331131 e!2368595)))

(declare-fun c!668770 () Bool)

(assert (=> d!1138488 (= c!668770 ((_ is Nil!40500) (_2!22971 lt!1330984)))))

(assert (=> d!1138488 (= (size!30508 (_2!22971 lt!1330984)) lt!1331131)))

(declare-fun b!3835274 () Bool)

(assert (=> b!3835274 (= e!2368595 0)))

(declare-fun b!3835275 () Bool)

(assert (=> b!3835275 (= e!2368595 (+ 1 (size!30508 (t!309357 (_2!22971 lt!1330984)))))))

(assert (= (and d!1138488 c!668770) b!3835274))

(assert (= (and d!1138488 (not c!668770)) b!3835275))

(declare-fun m!4389659 () Bool)

(assert (=> b!3835275 m!4389659))

(assert (=> b!3834537 d!1138488))

(assert (=> b!3834537 d!1138422))

(declare-fun d!1138490 () Bool)

(assert (=> d!1138490 (= (isEmpty!23914 (originalCharacters!6838 (h!45923 prefixTokens!80))) ((_ is Nil!40500) (originalCharacters!6838 (h!45923 prefixTokens!80))))))

(assert (=> d!1138068 d!1138490))

(declare-fun d!1138492 () Bool)

(declare-fun charsToBigInt!1 (List!40625) Int)

(assert (=> d!1138492 (= (inv!17 (value!198417 (h!45923 prefixTokens!80))) (= (charsToBigInt!1 (text!45724 (value!198417 (h!45923 prefixTokens!80)))) (value!198409 (value!198417 (h!45923 prefixTokens!80)))))))

(declare-fun bs!582445 () Bool)

(assert (= bs!582445 d!1138492))

(declare-fun m!4389661 () Bool)

(assert (=> bs!582445 m!4389661))

(assert (=> b!3834252 d!1138492))

(declare-fun d!1138494 () Bool)

(declare-fun res!1552377 () Bool)

(declare-fun e!2368600 () Bool)

(assert (=> d!1138494 (=> res!1552377 e!2368600)))

(assert (=> d!1138494 (= res!1552377 ((_ is Nil!40502) rules!2768))))

(assert (=> d!1138494 (= (noDuplicateTag!2410 thiss!20629 rules!2768 Nil!40504) e!2368600)))

(declare-fun b!3835280 () Bool)

(declare-fun e!2368601 () Bool)

(assert (=> b!3835280 (= e!2368600 e!2368601)))

(declare-fun res!1552378 () Bool)

(assert (=> b!3835280 (=> (not res!1552378) (not e!2368601))))

(declare-fun contains!8218 (List!40628 String!46058) Bool)

(assert (=> b!3835280 (= res!1552378 (not (contains!8218 Nil!40504 (tag!7098 (h!45922 rules!2768)))))))

(declare-fun b!3835281 () Bool)

(assert (=> b!3835281 (= e!2368601 (noDuplicateTag!2410 thiss!20629 (t!309359 rules!2768) (Cons!40504 (tag!7098 (h!45922 rules!2768)) Nil!40504)))))

(assert (= (and d!1138494 (not res!1552377)) b!3835280))

(assert (= (and b!3835280 res!1552378) b!3835281))

(declare-fun m!4389663 () Bool)

(assert (=> b!3835280 m!4389663))

(declare-fun m!4389665 () Bool)

(assert (=> b!3835281 m!4389665))

(assert (=> b!3834255 d!1138494))

(declare-fun d!1138496 () Bool)

(assert (=> d!1138496 (= (inv!54645 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))) (value!198417 (_1!22972 (v!38943 lt!1330899))))) (isBalanced!3618 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))) (value!198417 (_1!22972 (v!38943 lt!1330899)))))))))

(declare-fun bs!582446 () Bool)

(assert (= bs!582446 d!1138496))

(declare-fun m!4389667 () Bool)

(assert (=> bs!582446 m!4389667))

(assert (=> tb!220063 d!1138496))

(declare-fun bs!582447 () Bool)

(declare-fun d!1138498 () Bool)

(assert (= bs!582447 (and d!1138498 d!1138208)))

(declare-fun lambda!126032 () Int)

(assert (=> bs!582447 (= (= (toValue!8646 (transformation!6238 (h!45922 rules!2768))) (toValue!8646 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72))))) (= lambda!126032 lambda!126021))))

(declare-fun bs!582448 () Bool)

(assert (= bs!582448 (and d!1138498 d!1138468)))

(assert (=> bs!582448 (= (= (toValue!8646 (transformation!6238 (h!45922 rules!2768))) (toValue!8646 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80))))) (= lambda!126032 lambda!126031))))

(assert (=> d!1138498 true))

(assert (=> d!1138498 (< (dynLambda!17537 order!22117 (toValue!8646 (transformation!6238 (h!45922 rules!2768)))) (dynLambda!17538 order!22119 lambda!126032))))

(assert (=> d!1138498 (= (equivClasses!2574 (toChars!8505 (transformation!6238 (h!45922 rules!2768))) (toValue!8646 (transformation!6238 (h!45922 rules!2768)))) (Forall2!1025 lambda!126032))))

(declare-fun bs!582449 () Bool)

(assert (= bs!582449 d!1138498))

(declare-fun m!4389669 () Bool)

(assert (=> bs!582449 m!4389669))

(assert (=> b!3834258 d!1138498))

(declare-fun d!1138500 () Bool)

(declare-fun lt!1331132 () Int)

(assert (=> d!1138500 (>= lt!1331132 0)))

(declare-fun e!2368602 () Int)

(assert (=> d!1138500 (= lt!1331132 e!2368602)))

(declare-fun c!668771 () Bool)

(assert (=> d!1138500 (= c!668771 ((_ is Nil!40500) (originalCharacters!6838 (_1!22972 (v!38943 lt!1330899)))))))

(assert (=> d!1138500 (= (size!30508 (originalCharacters!6838 (_1!22972 (v!38943 lt!1330899)))) lt!1331132)))

(declare-fun b!3835282 () Bool)

(assert (=> b!3835282 (= e!2368602 0)))

(declare-fun b!3835283 () Bool)

(assert (=> b!3835283 (= e!2368602 (+ 1 (size!30508 (t!309357 (originalCharacters!6838 (_1!22972 (v!38943 lt!1330899)))))))))

(assert (= (and d!1138500 c!668771) b!3835282))

(assert (= (and d!1138500 (not c!668771)) b!3835283))

(declare-fun m!4389671 () Bool)

(assert (=> b!3835283 m!4389671))

(assert (=> d!1138070 d!1138500))

(declare-fun d!1138502 () Bool)

(assert (=> d!1138502 (= (inv!16 (value!198417 (h!45923 suffixTokens!72))) (= (charsToInt!0 (text!45723 (value!198417 (h!45923 suffixTokens!72)))) (value!198408 (value!198417 (h!45923 suffixTokens!72)))))))

(declare-fun bs!582450 () Bool)

(assert (= bs!582450 d!1138502))

(declare-fun m!4389673 () Bool)

(assert (=> bs!582450 m!4389673))

(assert (=> b!3834369 d!1138502))

(declare-fun e!2368604 () Bool)

(declare-fun b!3835287 () Bool)

(declare-fun lt!1331133 () List!40624)

(assert (=> b!3835287 (= e!2368604 (or (not (= (_2!22972 (v!38943 lt!1330899)) Nil!40500)) (= lt!1331133 (t!309357 lt!1330896))))))

(declare-fun b!3835285 () Bool)

(declare-fun e!2368603 () List!40624)

(assert (=> b!3835285 (= e!2368603 (Cons!40500 (h!45920 (t!309357 lt!1330896)) (++!10234 (t!309357 (t!309357 lt!1330896)) (_2!22972 (v!38943 lt!1330899)))))))

(declare-fun b!3835284 () Bool)

(assert (=> b!3835284 (= e!2368603 (_2!22972 (v!38943 lt!1330899)))))

(declare-fun d!1138504 () Bool)

(assert (=> d!1138504 e!2368604))

(declare-fun res!1552379 () Bool)

(assert (=> d!1138504 (=> (not res!1552379) (not e!2368604))))

(assert (=> d!1138504 (= res!1552379 (= (content!6010 lt!1331133) ((_ map or) (content!6010 (t!309357 lt!1330896)) (content!6010 (_2!22972 (v!38943 lt!1330899))))))))

(assert (=> d!1138504 (= lt!1331133 e!2368603)))

(declare-fun c!668772 () Bool)

(assert (=> d!1138504 (= c!668772 ((_ is Nil!40500) (t!309357 lt!1330896)))))

(assert (=> d!1138504 (= (++!10234 (t!309357 lt!1330896) (_2!22972 (v!38943 lt!1330899))) lt!1331133)))

(declare-fun b!3835286 () Bool)

(declare-fun res!1552380 () Bool)

(assert (=> b!3835286 (=> (not res!1552380) (not e!2368604))))

(assert (=> b!3835286 (= res!1552380 (= (size!30508 lt!1331133) (+ (size!30508 (t!309357 lt!1330896)) (size!30508 (_2!22972 (v!38943 lt!1330899))))))))

(assert (= (and d!1138504 c!668772) b!3835284))

(assert (= (and d!1138504 (not c!668772)) b!3835285))

(assert (= (and d!1138504 res!1552379) b!3835286))

(assert (= (and b!3835286 res!1552380) b!3835287))

(declare-fun m!4389675 () Bool)

(assert (=> b!3835285 m!4389675))

(declare-fun m!4389677 () Bool)

(assert (=> d!1138504 m!4389677))

(assert (=> d!1138504 m!4389269))

(assert (=> d!1138504 m!4388567))

(declare-fun m!4389679 () Bool)

(assert (=> b!3835286 m!4389679))

(assert (=> b!3835286 m!4388573))

(assert (=> b!3835286 m!4388571))

(assert (=> b!3834301 d!1138504))

(declare-fun d!1138506 () Bool)

(assert (=> d!1138506 (= (isEmpty!23918 lt!1330998) (not ((_ is Some!8655) lt!1330998)))))

(assert (=> d!1138158 d!1138506))

(declare-fun b!3835290 () Bool)

(declare-fun e!2368607 () Bool)

(assert (=> b!3835290 (= e!2368607 (isPrefix!3337 (tail!5797 lt!1330898) (tail!5797 lt!1330898)))))

(declare-fun b!3835291 () Bool)

(declare-fun e!2368605 () Bool)

(assert (=> b!3835291 (= e!2368605 (>= (size!30508 lt!1330898) (size!30508 lt!1330898)))))

(declare-fun b!3835288 () Bool)

(declare-fun e!2368606 () Bool)

(assert (=> b!3835288 (= e!2368606 e!2368607)))

(declare-fun res!1552382 () Bool)

(assert (=> b!3835288 (=> (not res!1552382) (not e!2368607))))

(assert (=> b!3835288 (= res!1552382 (not ((_ is Nil!40500) lt!1330898)))))

(declare-fun b!3835289 () Bool)

(declare-fun res!1552384 () Bool)

(assert (=> b!3835289 (=> (not res!1552384) (not e!2368607))))

(assert (=> b!3835289 (= res!1552384 (= (head!8070 lt!1330898) (head!8070 lt!1330898)))))

(declare-fun d!1138508 () Bool)

(assert (=> d!1138508 e!2368605))

(declare-fun res!1552383 () Bool)

(assert (=> d!1138508 (=> res!1552383 e!2368605)))

(declare-fun lt!1331134 () Bool)

(assert (=> d!1138508 (= res!1552383 (not lt!1331134))))

(assert (=> d!1138508 (= lt!1331134 e!2368606)))

(declare-fun res!1552381 () Bool)

(assert (=> d!1138508 (=> res!1552381 e!2368606)))

(assert (=> d!1138508 (= res!1552381 ((_ is Nil!40500) lt!1330898))))

(assert (=> d!1138508 (= (isPrefix!3337 lt!1330898 lt!1330898) lt!1331134)))

(assert (= (and d!1138508 (not res!1552381)) b!3835288))

(assert (= (and b!3835288 res!1552382) b!3835289))

(assert (= (and b!3835289 res!1552384) b!3835290))

(assert (= (and d!1138508 (not res!1552383)) b!3835291))

(declare-fun m!4389681 () Bool)

(assert (=> b!3835290 m!4389681))

(assert (=> b!3835290 m!4389681))

(assert (=> b!3835290 m!4389681))

(assert (=> b!3835290 m!4389681))

(declare-fun m!4389683 () Bool)

(assert (=> b!3835290 m!4389683))

(assert (=> b!3835291 m!4388463))

(assert (=> b!3835291 m!4388463))

(declare-fun m!4389685 () Bool)

(assert (=> b!3835289 m!4389685))

(assert (=> b!3835289 m!4389685))

(assert (=> d!1138158 d!1138508))

(declare-fun d!1138510 () Bool)

(assert (=> d!1138510 (isPrefix!3337 lt!1330898 lt!1330898)))

(declare-fun lt!1331137 () Unit!58238)

(declare-fun choose!22548 (List!40624 List!40624) Unit!58238)

(assert (=> d!1138510 (= lt!1331137 (choose!22548 lt!1330898 lt!1330898))))

(assert (=> d!1138510 (= (lemmaIsPrefixRefl!2122 lt!1330898 lt!1330898) lt!1331137)))

(declare-fun bs!582451 () Bool)

(assert (= bs!582451 d!1138510))

(assert (=> bs!582451 m!4388847))

(declare-fun m!4389687 () Bool)

(assert (=> bs!582451 m!4389687))

(assert (=> d!1138158 d!1138510))

(declare-fun d!1138512 () Bool)

(assert (=> d!1138512 true))

(declare-fun lt!1331140 () Bool)

(declare-fun lambda!126035 () Int)

(declare-fun forall!8269 (List!40626 Int) Bool)

(assert (=> d!1138512 (= lt!1331140 (forall!8269 rules!2768 lambda!126035))))

(declare-fun e!2368613 () Bool)

(assert (=> d!1138512 (= lt!1331140 e!2368613)))

(declare-fun res!1552390 () Bool)

(assert (=> d!1138512 (=> res!1552390 e!2368613)))

(assert (=> d!1138512 (= res!1552390 (not ((_ is Cons!40502) rules!2768)))))

(assert (=> d!1138512 (= (rulesValidInductive!2200 thiss!20629 rules!2768) lt!1331140)))

(declare-fun b!3835296 () Bool)

(declare-fun e!2368612 () Bool)

(assert (=> b!3835296 (= e!2368613 e!2368612)))

(declare-fun res!1552389 () Bool)

(assert (=> b!3835296 (=> (not res!1552389) (not e!2368612))))

(assert (=> b!3835296 (= res!1552389 (ruleValid!2190 thiss!20629 (h!45922 rules!2768)))))

(declare-fun b!3835297 () Bool)

(assert (=> b!3835297 (= e!2368612 (rulesValidInductive!2200 thiss!20629 (t!309359 rules!2768)))))

(assert (= (and d!1138512 (not res!1552390)) b!3835296))

(assert (= (and b!3835296 res!1552389) b!3835297))

(declare-fun m!4389689 () Bool)

(assert (=> d!1138512 m!4389689))

(assert (=> b!3835296 m!4389647))

(assert (=> b!3835297 m!4389539))

(assert (=> d!1138158 d!1138512))

(declare-fun d!1138514 () Bool)

(assert (=> d!1138514 (= (inv!54645 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (value!198417 (h!45923 suffixTokens!72)))) (isBalanced!3618 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (value!198417 (h!45923 suffixTokens!72))))))))

(declare-fun bs!582452 () Bool)

(assert (= bs!582452 d!1138514))

(declare-fun m!4389691 () Bool)

(assert (=> bs!582452 m!4389691))

(assert (=> tb!220093 d!1138514))

(declare-fun lt!1331141 () List!40624)

(declare-fun e!2368615 () Bool)

(declare-fun b!3835303 () Bool)

(assert (=> b!3835303 (= e!2368615 (or (not (= suffix!1176 Nil!40500)) (= lt!1331141 (t!309357 prefix!426))))))

(declare-fun b!3835301 () Bool)

(declare-fun e!2368614 () List!40624)

(assert (=> b!3835301 (= e!2368614 (Cons!40500 (h!45920 (t!309357 prefix!426)) (++!10234 (t!309357 (t!309357 prefix!426)) suffix!1176)))))

(declare-fun b!3835300 () Bool)

(assert (=> b!3835300 (= e!2368614 suffix!1176)))

(declare-fun d!1138516 () Bool)

(assert (=> d!1138516 e!2368615))

(declare-fun res!1552391 () Bool)

(assert (=> d!1138516 (=> (not res!1552391) (not e!2368615))))

(assert (=> d!1138516 (= res!1552391 (= (content!6010 lt!1331141) ((_ map or) (content!6010 (t!309357 prefix!426)) (content!6010 suffix!1176))))))

(assert (=> d!1138516 (= lt!1331141 e!2368614)))

(declare-fun c!668773 () Bool)

(assert (=> d!1138516 (= c!668773 ((_ is Nil!40500) (t!309357 prefix!426)))))

(assert (=> d!1138516 (= (++!10234 (t!309357 prefix!426) suffix!1176) lt!1331141)))

(declare-fun b!3835302 () Bool)

(declare-fun res!1552392 () Bool)

(assert (=> b!3835302 (=> (not res!1552392) (not e!2368615))))

(assert (=> b!3835302 (= res!1552392 (= (size!30508 lt!1331141) (+ (size!30508 (t!309357 prefix!426)) (size!30508 suffix!1176))))))

(assert (= (and d!1138516 c!668773) b!3835300))

(assert (= (and d!1138516 (not c!668773)) b!3835301))

(assert (= (and d!1138516 res!1552391) b!3835302))

(assert (= (and b!3835302 res!1552392) b!3835303))

(declare-fun m!4389693 () Bool)

(assert (=> b!3835301 m!4389693))

(declare-fun m!4389695 () Bool)

(assert (=> d!1138516 m!4389695))

(assert (=> d!1138516 m!4388985))

(assert (=> d!1138516 m!4388803))

(declare-fun m!4389697 () Bool)

(assert (=> b!3835302 m!4389697))

(assert (=> b!3835302 m!4389427))

(assert (=> b!3835302 m!4388809))

(assert (=> b!3834531 d!1138516))

(declare-fun b!3835306 () Bool)

(declare-fun e!2368618 () Bool)

(assert (=> b!3835306 (= e!2368618 (isPrefix!3337 (tail!5797 (tail!5797 lt!1330896)) (tail!5797 (tail!5797 (++!10234 lt!1330896 (_2!22972 (v!38943 lt!1330899)))))))))

(declare-fun b!3835307 () Bool)

(declare-fun e!2368616 () Bool)

(assert (=> b!3835307 (= e!2368616 (>= (size!30508 (tail!5797 (++!10234 lt!1330896 (_2!22972 (v!38943 lt!1330899))))) (size!30508 (tail!5797 lt!1330896))))))

(declare-fun b!3835304 () Bool)

(declare-fun e!2368617 () Bool)

(assert (=> b!3835304 (= e!2368617 e!2368618)))

(declare-fun res!1552394 () Bool)

(assert (=> b!3835304 (=> (not res!1552394) (not e!2368618))))

(assert (=> b!3835304 (= res!1552394 (not ((_ is Nil!40500) (tail!5797 (++!10234 lt!1330896 (_2!22972 (v!38943 lt!1330899)))))))))

(declare-fun b!3835305 () Bool)

(declare-fun res!1552396 () Bool)

(assert (=> b!3835305 (=> (not res!1552396) (not e!2368618))))

(assert (=> b!3835305 (= res!1552396 (= (head!8070 (tail!5797 lt!1330896)) (head!8070 (tail!5797 (++!10234 lt!1330896 (_2!22972 (v!38943 lt!1330899)))))))))

(declare-fun d!1138518 () Bool)

(assert (=> d!1138518 e!2368616))

(declare-fun res!1552395 () Bool)

(assert (=> d!1138518 (=> res!1552395 e!2368616)))

(declare-fun lt!1331142 () Bool)

(assert (=> d!1138518 (= res!1552395 (not lt!1331142))))

(assert (=> d!1138518 (= lt!1331142 e!2368617)))

(declare-fun res!1552393 () Bool)

(assert (=> d!1138518 (=> res!1552393 e!2368617)))

(assert (=> d!1138518 (= res!1552393 ((_ is Nil!40500) (tail!5797 lt!1330896)))))

(assert (=> d!1138518 (= (isPrefix!3337 (tail!5797 lt!1330896) (tail!5797 (++!10234 lt!1330896 (_2!22972 (v!38943 lt!1330899))))) lt!1331142)))

(assert (= (and d!1138518 (not res!1552393)) b!3835304))

(assert (= (and b!3835304 res!1552394) b!3835305))

(assert (= (and b!3835305 res!1552396) b!3835306))

(assert (= (and d!1138518 (not res!1552395)) b!3835307))

(assert (=> b!3835306 m!4388639))

(declare-fun m!4389699 () Bool)

(assert (=> b!3835306 m!4389699))

(assert (=> b!3835306 m!4388641))

(declare-fun m!4389701 () Bool)

(assert (=> b!3835306 m!4389701))

(assert (=> b!3835306 m!4389699))

(assert (=> b!3835306 m!4389701))

(declare-fun m!4389703 () Bool)

(assert (=> b!3835306 m!4389703))

(assert (=> b!3835307 m!4388641))

(declare-fun m!4389705 () Bool)

(assert (=> b!3835307 m!4389705))

(assert (=> b!3835307 m!4388639))

(declare-fun m!4389707 () Bool)

(assert (=> b!3835307 m!4389707))

(assert (=> b!3835305 m!4388639))

(declare-fun m!4389709 () Bool)

(assert (=> b!3835305 m!4389709))

(assert (=> b!3835305 m!4388641))

(declare-fun m!4389711 () Bool)

(assert (=> b!3835305 m!4389711))

(assert (=> b!3834367 d!1138518))

(declare-fun d!1138520 () Bool)

(assert (=> d!1138520 (= (tail!5797 lt!1330896) (t!309357 lt!1330896))))

(assert (=> b!3834367 d!1138520))

(declare-fun d!1138522 () Bool)

(assert (=> d!1138522 (= (tail!5797 (++!10234 lt!1330896 (_2!22972 (v!38943 lt!1330899)))) (t!309357 (++!10234 lt!1330896 (_2!22972 (v!38943 lt!1330899)))))))

(assert (=> b!3834367 d!1138522))

(declare-fun b!3835308 () Bool)

(declare-fun e!2368619 () Bool)

(assert (=> b!3835308 (= e!2368619 (inv!16 (value!198417 (h!45923 (t!309360 prefixTokens!80)))))))

(declare-fun b!3835309 () Bool)

(declare-fun e!2368620 () Bool)

(assert (=> b!3835309 (= e!2368620 (inv!15 (value!198417 (h!45923 (t!309360 prefixTokens!80)))))))

(declare-fun b!3835310 () Bool)

(declare-fun res!1552397 () Bool)

(assert (=> b!3835310 (=> res!1552397 e!2368620)))

(assert (=> b!3835310 (= res!1552397 (not ((_ is IntegerValue!19406) (value!198417 (h!45923 (t!309360 prefixTokens!80))))))))

(declare-fun e!2368621 () Bool)

(assert (=> b!3835310 (= e!2368621 e!2368620)))

(declare-fun d!1138524 () Bool)

(declare-fun c!668775 () Bool)

(assert (=> d!1138524 (= c!668775 ((_ is IntegerValue!19404) (value!198417 (h!45923 (t!309360 prefixTokens!80)))))))

(assert (=> d!1138524 (= (inv!21 (value!198417 (h!45923 (t!309360 prefixTokens!80)))) e!2368619)))

(declare-fun b!3835311 () Bool)

(assert (=> b!3835311 (= e!2368619 e!2368621)))

(declare-fun c!668774 () Bool)

(assert (=> b!3835311 (= c!668774 ((_ is IntegerValue!19405) (value!198417 (h!45923 (t!309360 prefixTokens!80)))))))

(declare-fun b!3835312 () Bool)

(assert (=> b!3835312 (= e!2368621 (inv!17 (value!198417 (h!45923 (t!309360 prefixTokens!80)))))))

(assert (= (and d!1138524 c!668775) b!3835308))

(assert (= (and d!1138524 (not c!668775)) b!3835311))

(assert (= (and b!3835311 c!668774) b!3835312))

(assert (= (and b!3835311 (not c!668774)) b!3835310))

(assert (= (and b!3835310 (not res!1552397)) b!3835309))

(declare-fun m!4389713 () Bool)

(assert (=> b!3835308 m!4389713))

(declare-fun m!4389715 () Bool)

(assert (=> b!3835309 m!4389715))

(declare-fun m!4389717 () Bool)

(assert (=> b!3835312 m!4389717))

(assert (=> b!3834603 d!1138524))

(declare-fun d!1138526 () Bool)

(assert (=> d!1138526 (= (inv!54637 (tag!7098 (rule!9070 (h!45923 (t!309360 suffixTokens!72))))) (= (mod (str.len (value!198416 (tag!7098 (rule!9070 (h!45923 (t!309360 suffixTokens!72)))))) 2) 0))))

(assert (=> b!3834627 d!1138526))

(declare-fun d!1138528 () Bool)

(declare-fun res!1552398 () Bool)

(declare-fun e!2368622 () Bool)

(assert (=> d!1138528 (=> (not res!1552398) (not e!2368622))))

(assert (=> d!1138528 (= res!1552398 (semiInverseModEq!2675 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72))))) (toValue!8646 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72)))))))))

(assert (=> d!1138528 (= (inv!54641 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72))))) e!2368622)))

(declare-fun b!3835313 () Bool)

(assert (=> b!3835313 (= e!2368622 (equivClasses!2574 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72))))) (toValue!8646 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72)))))))))

(assert (= (and d!1138528 res!1552398) b!3835313))

(declare-fun m!4389719 () Bool)

(assert (=> d!1138528 m!4389719))

(declare-fun m!4389721 () Bool)

(assert (=> b!3835313 m!4389721))

(assert (=> b!3834627 d!1138528))

(declare-fun bs!582453 () Bool)

(declare-fun d!1138530 () Bool)

(assert (= bs!582453 (and d!1138530 d!1138512)))

(declare-fun lambda!126038 () Int)

(assert (=> bs!582453 (= lambda!126038 lambda!126035)))

(assert (=> d!1138530 true))

(declare-fun lt!1331145 () Bool)

(assert (=> d!1138530 (= lt!1331145 (rulesValidInductive!2200 thiss!20629 rules!2768))))

(assert (=> d!1138530 (= lt!1331145 (forall!8269 rules!2768 lambda!126038))))

(assert (=> d!1138530 (= (rulesValid!2409 thiss!20629 rules!2768) lt!1331145)))

(declare-fun bs!582454 () Bool)

(assert (= bs!582454 d!1138530))

(assert (=> bs!582454 m!4388851))

(declare-fun m!4389723 () Bool)

(assert (=> bs!582454 m!4389723))

(assert (=> d!1138058 d!1138530))

(declare-fun d!1138532 () Bool)

(assert (=> d!1138532 (= (inv!17 (value!198417 (h!45923 suffixTokens!72))) (= (charsToBigInt!1 (text!45724 (value!198417 (h!45923 suffixTokens!72)))) (value!198409 (value!198417 (h!45923 suffixTokens!72)))))))

(declare-fun bs!582455 () Bool)

(assert (= bs!582455 d!1138532))

(declare-fun m!4389725 () Bool)

(assert (=> bs!582455 m!4389725))

(assert (=> b!3834373 d!1138532))

(declare-fun d!1138534 () Bool)

(assert (=> d!1138534 (= (inv!54637 (tag!7098 (h!45922 (t!309359 rules!2768)))) (= (mod (str.len (value!198416 (tag!7098 (h!45922 (t!309359 rules!2768))))) 2) 0))))

(assert (=> b!3834617 d!1138534))

(declare-fun d!1138536 () Bool)

(declare-fun res!1552399 () Bool)

(declare-fun e!2368623 () Bool)

(assert (=> d!1138536 (=> (not res!1552399) (not e!2368623))))

(assert (=> d!1138536 (= res!1552399 (semiInverseModEq!2675 (toChars!8505 (transformation!6238 (h!45922 (t!309359 rules!2768)))) (toValue!8646 (transformation!6238 (h!45922 (t!309359 rules!2768))))))))

(assert (=> d!1138536 (= (inv!54641 (transformation!6238 (h!45922 (t!309359 rules!2768)))) e!2368623)))

(declare-fun b!3835314 () Bool)

(assert (=> b!3835314 (= e!2368623 (equivClasses!2574 (toChars!8505 (transformation!6238 (h!45922 (t!309359 rules!2768)))) (toValue!8646 (transformation!6238 (h!45922 (t!309359 rules!2768))))))))

(assert (= (and d!1138536 res!1552399) b!3835314))

(declare-fun m!4389727 () Bool)

(assert (=> d!1138536 m!4389727))

(declare-fun m!4389729 () Bool)

(assert (=> b!3835314 m!4389729))

(assert (=> b!3834617 d!1138536))

(declare-fun bs!582456 () Bool)

(declare-fun d!1138538 () Bool)

(assert (= bs!582456 (and d!1138538 d!1138460)))

(declare-fun lambda!126039 () Int)

(assert (=> bs!582456 (= (and (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (toChars!8505 (transformation!6238 (h!45922 rules!2768)))) (= (toValue!8646 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (toValue!8646 (transformation!6238 (h!45922 rules!2768))))) (= lambda!126039 lambda!126029))))

(declare-fun bs!582457 () Bool)

(assert (= bs!582457 (and d!1138538 d!1138462)))

(assert (=> bs!582457 (= (and (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72))))) (= (toValue!8646 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (toValue!8646 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))))) (= lambda!126039 lambda!126030))))

(assert (=> d!1138538 true))

(assert (=> d!1138538 (< (dynLambda!17541 order!22123 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80))))) (dynLambda!17542 order!22125 lambda!126039))))

(assert (=> d!1138538 true))

(assert (=> d!1138538 (< (dynLambda!17537 order!22117 (toValue!8646 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80))))) (dynLambda!17542 order!22125 lambda!126039))))

(assert (=> d!1138538 (= (semiInverseModEq!2675 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (toValue!8646 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80))))) (Forall!1428 lambda!126039))))

(declare-fun bs!582458 () Bool)

(assert (= bs!582458 d!1138538))

(declare-fun m!4389731 () Bool)

(assert (=> bs!582458 m!4389731))

(assert (=> d!1138066 d!1138538))

(declare-fun d!1138540 () Bool)

(declare-fun lt!1331146 () Int)

(assert (=> d!1138540 (>= lt!1331146 0)))

(declare-fun e!2368624 () Int)

(assert (=> d!1138540 (= lt!1331146 e!2368624)))

(declare-fun c!668776 () Bool)

(assert (=> d!1138540 (= c!668776 ((_ is Nil!40503) lt!1330980))))

(assert (=> d!1138540 (= (size!30510 lt!1330980) lt!1331146)))

(declare-fun b!3835315 () Bool)

(assert (=> b!3835315 (= e!2368624 0)))

(declare-fun b!3835316 () Bool)

(assert (=> b!3835316 (= e!2368624 (+ 1 (size!30510 (t!309360 lt!1330980))))))

(assert (= (and d!1138540 c!668776) b!3835315))

(assert (= (and d!1138540 (not c!668776)) b!3835316))

(declare-fun m!4389733 () Bool)

(assert (=> b!3835316 m!4389733))

(assert (=> b!3834528 d!1138540))

(declare-fun d!1138542 () Bool)

(declare-fun lt!1331147 () Int)

(assert (=> d!1138542 (>= lt!1331147 0)))

(declare-fun e!2368625 () Int)

(assert (=> d!1138542 (= lt!1331147 e!2368625)))

(declare-fun c!668777 () Bool)

(assert (=> d!1138542 (= c!668777 ((_ is Nil!40503) prefixTokens!80))))

(assert (=> d!1138542 (= (size!30510 prefixTokens!80) lt!1331147)))

(declare-fun b!3835317 () Bool)

(assert (=> b!3835317 (= e!2368625 0)))

(declare-fun b!3835318 () Bool)

(assert (=> b!3835318 (= e!2368625 (+ 1 (size!30510 (t!309360 prefixTokens!80))))))

(assert (= (and d!1138542 c!668777) b!3835317))

(assert (= (and d!1138542 (not c!668777)) b!3835318))

(assert (=> b!3835318 m!4389581))

(assert (=> b!3834528 d!1138542))

(declare-fun d!1138544 () Bool)

(declare-fun lt!1331148 () Int)

(assert (=> d!1138544 (>= lt!1331148 0)))

(declare-fun e!2368626 () Int)

(assert (=> d!1138544 (= lt!1331148 e!2368626)))

(declare-fun c!668778 () Bool)

(assert (=> d!1138544 (= c!668778 ((_ is Nil!40503) suffixTokens!72))))

(assert (=> d!1138544 (= (size!30510 suffixTokens!72) lt!1331148)))

(declare-fun b!3835319 () Bool)

(assert (=> b!3835319 (= e!2368626 0)))

(declare-fun b!3835320 () Bool)

(assert (=> b!3835320 (= e!2368626 (+ 1 (size!30510 (t!309360 suffixTokens!72))))))

(assert (= (and d!1138544 c!668778) b!3835319))

(assert (= (and d!1138544 (not c!668778)) b!3835320))

(declare-fun m!4389735 () Bool)

(assert (=> b!3835320 m!4389735))

(assert (=> b!3834528 d!1138544))

(declare-fun d!1138546 () Bool)

(declare-fun res!1552400 () Bool)

(declare-fun e!2368627 () Bool)

(assert (=> d!1138546 (=> (not res!1552400) (not e!2368627))))

(assert (=> d!1138546 (= res!1552400 (not (isEmpty!23914 (originalCharacters!6838 (h!45923 (t!309360 suffixTokens!72))))))))

(assert (=> d!1138546 (= (inv!54640 (h!45923 (t!309360 suffixTokens!72))) e!2368627)))

(declare-fun b!3835321 () Bool)

(declare-fun res!1552401 () Bool)

(assert (=> b!3835321 (=> (not res!1552401) (not e!2368627))))

(assert (=> b!3835321 (= res!1552401 (= (originalCharacters!6838 (h!45923 (t!309360 suffixTokens!72))) (list!15086 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72))))) (value!198417 (h!45923 (t!309360 suffixTokens!72)))))))))

(declare-fun b!3835322 () Bool)

(assert (=> b!3835322 (= e!2368627 (= (size!30507 (h!45923 (t!309360 suffixTokens!72))) (size!30508 (originalCharacters!6838 (h!45923 (t!309360 suffixTokens!72))))))))

(assert (= (and d!1138546 res!1552400) b!3835321))

(assert (= (and b!3835321 res!1552401) b!3835322))

(declare-fun b_lambda!112131 () Bool)

(assert (=> (not b_lambda!112131) (not b!3835321)))

(declare-fun t!309564 () Bool)

(declare-fun tb!220243 () Bool)

(assert (=> (and b!3834628 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72)))))) t!309564) tb!220243))

(declare-fun b!3835323 () Bool)

(declare-fun e!2368628 () Bool)

(declare-fun tp!1160758 () Bool)

(assert (=> b!3835323 (= e!2368628 (and (inv!54644 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72))))) (value!198417 (h!45923 (t!309360 suffixTokens!72)))))) tp!1160758))))

(declare-fun result!268458 () Bool)

(assert (=> tb!220243 (= result!268458 (and (inv!54645 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72))))) (value!198417 (h!45923 (t!309360 suffixTokens!72))))) e!2368628))))

(assert (= tb!220243 b!3835323))

(declare-fun m!4389737 () Bool)

(assert (=> b!3835323 m!4389737))

(declare-fun m!4389739 () Bool)

(assert (=> tb!220243 m!4389739))

(assert (=> b!3835321 t!309564))

(declare-fun b_and!285211 () Bool)

(assert (= b_and!285199 (and (=> t!309564 result!268458) b_and!285211)))

(declare-fun tb!220245 () Bool)

(declare-fun t!309566 () Bool)

(assert (=> (and b!3834211 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72)))))) t!309566) tb!220245))

(declare-fun result!268460 () Bool)

(assert (= result!268460 result!268458))

(assert (=> b!3835321 t!309566))

(declare-fun b_and!285213 () Bool)

(assert (= b_and!285205 (and (=> t!309566 result!268460) b_and!285213)))

(declare-fun tb!220247 () Bool)

(declare-fun t!309568 () Bool)

(assert (=> (and b!3834605 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72)))))) t!309568) tb!220247))

(declare-fun result!268462 () Bool)

(assert (= result!268462 result!268458))

(assert (=> b!3835321 t!309568))

(declare-fun b_and!285215 () Bool)

(assert (= b_and!285203 (and (=> t!309568 result!268462) b_and!285215)))

(declare-fun tb!220249 () Bool)

(declare-fun t!309570 () Bool)

(assert (=> (and b!3834218 (= (toChars!8505 (transformation!6238 (h!45922 rules!2768))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72)))))) t!309570) tb!220249))

(declare-fun result!268464 () Bool)

(assert (= result!268464 result!268458))

(assert (=> b!3835321 t!309570))

(declare-fun b_and!285217 () Bool)

(assert (= b_and!285195 (and (=> t!309570 result!268464) b_and!285217)))

(declare-fun t!309572 () Bool)

(declare-fun tb!220251 () Bool)

(assert (=> (and b!3834220 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72)))))) t!309572) tb!220251))

(declare-fun result!268466 () Bool)

(assert (= result!268466 result!268458))

(assert (=> b!3835321 t!309572))

(declare-fun b_and!285219 () Bool)

(assert (= b_and!285201 (and (=> t!309572 result!268466) b_and!285219)))

(declare-fun tb!220253 () Bool)

(declare-fun t!309574 () Bool)

(assert (=> (and b!3834618 (= (toChars!8505 (transformation!6238 (h!45922 (t!309359 rules!2768)))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72)))))) t!309574) tb!220253))

(declare-fun result!268468 () Bool)

(assert (= result!268468 result!268458))

(assert (=> b!3835321 t!309574))

(declare-fun b_and!285221 () Bool)

(assert (= b_and!285193 (and (=> t!309574 result!268468) b_and!285221)))

(declare-fun m!4389741 () Bool)

(assert (=> d!1138546 m!4389741))

(declare-fun m!4389743 () Bool)

(assert (=> b!3835321 m!4389743))

(assert (=> b!3835321 m!4389743))

(declare-fun m!4389745 () Bool)

(assert (=> b!3835321 m!4389745))

(declare-fun m!4389747 () Bool)

(assert (=> b!3835322 m!4389747))

(assert (=> b!3834625 d!1138546))

(declare-fun d!1138548 () Bool)

(declare-fun lt!1331149 () Int)

(assert (=> d!1138548 (>= lt!1331149 0)))

(declare-fun e!2368629 () Int)

(assert (=> d!1138548 (= lt!1331149 e!2368629)))

(declare-fun c!668779 () Bool)

(assert (=> d!1138548 (= c!668779 ((_ is Nil!40500) (_2!22972 (get!13433 lt!1330998))))))

(assert (=> d!1138548 (= (size!30508 (_2!22972 (get!13433 lt!1330998))) lt!1331149)))

(declare-fun b!3835324 () Bool)

(assert (=> b!3835324 (= e!2368629 0)))

(declare-fun b!3835325 () Bool)

(assert (=> b!3835325 (= e!2368629 (+ 1 (size!30508 (t!309357 (_2!22972 (get!13433 lt!1330998))))))))

(assert (= (and d!1138548 c!668779) b!3835324))

(assert (= (and d!1138548 (not c!668779)) b!3835325))

(declare-fun m!4389749 () Bool)

(assert (=> b!3835325 m!4389749))

(assert (=> b!3834564 d!1138548))

(assert (=> b!3834564 d!1138194))

(assert (=> b!3834564 d!1138080))

(declare-fun b!3835326 () Bool)

(declare-fun e!2368630 () Bool)

(declare-fun tp!1160759 () Bool)

(assert (=> b!3835326 (= e!2368630 (and tp_is_empty!19257 tp!1160759))))

(assert (=> b!3834619 (= tp!1160615 e!2368630)))

(assert (= (and b!3834619 ((_ is Cons!40500) (t!309357 (originalCharacters!6838 (h!45923 suffixTokens!72))))) b!3835326))

(declare-fun b!3835327 () Bool)

(declare-fun e!2368631 () Bool)

(assert (=> b!3835327 (= e!2368631 tp_is_empty!19257)))

(declare-fun b!3835330 () Bool)

(declare-fun tp!1160763 () Bool)

(declare-fun tp!1160760 () Bool)

(assert (=> b!3835330 (= e!2368631 (and tp!1160763 tp!1160760))))

(declare-fun b!3835329 () Bool)

(declare-fun tp!1160762 () Bool)

(assert (=> b!3835329 (= e!2368631 tp!1160762)))

(assert (=> b!3834591 (= tp!1160584 e!2368631)))

(declare-fun b!3835328 () Bool)

(declare-fun tp!1160761 () Bool)

(declare-fun tp!1160764 () Bool)

(assert (=> b!3835328 (= e!2368631 (and tp!1160761 tp!1160764))))

(assert (= (and b!3834591 ((_ is ElementMatch!11143) (regOne!22799 (regex!6238 (rule!9070 (h!45923 prefixTokens!80)))))) b!3835327))

(assert (= (and b!3834591 ((_ is Concat!17612) (regOne!22799 (regex!6238 (rule!9070 (h!45923 prefixTokens!80)))))) b!3835328))

(assert (= (and b!3834591 ((_ is Star!11143) (regOne!22799 (regex!6238 (rule!9070 (h!45923 prefixTokens!80)))))) b!3835329))

(assert (= (and b!3834591 ((_ is Union!11143) (regOne!22799 (regex!6238 (rule!9070 (h!45923 prefixTokens!80)))))) b!3835330))

(declare-fun b!3835331 () Bool)

(declare-fun e!2368632 () Bool)

(assert (=> b!3835331 (= e!2368632 tp_is_empty!19257)))

(declare-fun b!3835334 () Bool)

(declare-fun tp!1160768 () Bool)

(declare-fun tp!1160765 () Bool)

(assert (=> b!3835334 (= e!2368632 (and tp!1160768 tp!1160765))))

(declare-fun b!3835333 () Bool)

(declare-fun tp!1160767 () Bool)

(assert (=> b!3835333 (= e!2368632 tp!1160767)))

(assert (=> b!3834591 (= tp!1160581 e!2368632)))

(declare-fun b!3835332 () Bool)

(declare-fun tp!1160766 () Bool)

(declare-fun tp!1160769 () Bool)

(assert (=> b!3835332 (= e!2368632 (and tp!1160766 tp!1160769))))

(assert (= (and b!3834591 ((_ is ElementMatch!11143) (regTwo!22799 (regex!6238 (rule!9070 (h!45923 prefixTokens!80)))))) b!3835331))

(assert (= (and b!3834591 ((_ is Concat!17612) (regTwo!22799 (regex!6238 (rule!9070 (h!45923 prefixTokens!80)))))) b!3835332))

(assert (= (and b!3834591 ((_ is Star!11143) (regTwo!22799 (regex!6238 (rule!9070 (h!45923 prefixTokens!80)))))) b!3835333))

(assert (= (and b!3834591 ((_ is Union!11143) (regTwo!22799 (regex!6238 (rule!9070 (h!45923 prefixTokens!80)))))) b!3835334))

(declare-fun b!3835335 () Bool)

(declare-fun e!2368633 () Bool)

(assert (=> b!3835335 (= e!2368633 tp_is_empty!19257)))

(declare-fun b!3835338 () Bool)

(declare-fun tp!1160773 () Bool)

(declare-fun tp!1160770 () Bool)

(assert (=> b!3835338 (= e!2368633 (and tp!1160773 tp!1160770))))

(declare-fun b!3835337 () Bool)

(declare-fun tp!1160772 () Bool)

(assert (=> b!3835337 (= e!2368633 tp!1160772)))

(assert (=> b!3834590 (= tp!1160583 e!2368633)))

(declare-fun b!3835336 () Bool)

(declare-fun tp!1160771 () Bool)

(declare-fun tp!1160774 () Bool)

(assert (=> b!3835336 (= e!2368633 (and tp!1160771 tp!1160774))))

(assert (= (and b!3834590 ((_ is ElementMatch!11143) (reg!11472 (regex!6238 (rule!9070 (h!45923 prefixTokens!80)))))) b!3835335))

(assert (= (and b!3834590 ((_ is Concat!17612) (reg!11472 (regex!6238 (rule!9070 (h!45923 prefixTokens!80)))))) b!3835336))

(assert (= (and b!3834590 ((_ is Star!11143) (reg!11472 (regex!6238 (rule!9070 (h!45923 prefixTokens!80)))))) b!3835337))

(assert (= (and b!3834590 ((_ is Union!11143) (reg!11472 (regex!6238 (rule!9070 (h!45923 prefixTokens!80)))))) b!3835338))

(declare-fun b!3835339 () Bool)

(declare-fun e!2368634 () Bool)

(assert (=> b!3835339 (= e!2368634 tp_is_empty!19257)))

(declare-fun b!3835342 () Bool)

(declare-fun tp!1160778 () Bool)

(declare-fun tp!1160775 () Bool)

(assert (=> b!3835342 (= e!2368634 (and tp!1160778 tp!1160775))))

(declare-fun b!3835341 () Bool)

(declare-fun tp!1160777 () Bool)

(assert (=> b!3835341 (= e!2368634 tp!1160777)))

(assert (=> b!3834589 (= tp!1160582 e!2368634)))

(declare-fun b!3835340 () Bool)

(declare-fun tp!1160776 () Bool)

(declare-fun tp!1160779 () Bool)

(assert (=> b!3835340 (= e!2368634 (and tp!1160776 tp!1160779))))

(assert (= (and b!3834589 ((_ is ElementMatch!11143) (regOne!22798 (regex!6238 (rule!9070 (h!45923 prefixTokens!80)))))) b!3835339))

(assert (= (and b!3834589 ((_ is Concat!17612) (regOne!22798 (regex!6238 (rule!9070 (h!45923 prefixTokens!80)))))) b!3835340))

(assert (= (and b!3834589 ((_ is Star!11143) (regOne!22798 (regex!6238 (rule!9070 (h!45923 prefixTokens!80)))))) b!3835341))

(assert (= (and b!3834589 ((_ is Union!11143) (regOne!22798 (regex!6238 (rule!9070 (h!45923 prefixTokens!80)))))) b!3835342))

(declare-fun b!3835343 () Bool)

(declare-fun e!2368635 () Bool)

(assert (=> b!3835343 (= e!2368635 tp_is_empty!19257)))

(declare-fun b!3835346 () Bool)

(declare-fun tp!1160783 () Bool)

(declare-fun tp!1160780 () Bool)

(assert (=> b!3835346 (= e!2368635 (and tp!1160783 tp!1160780))))

(declare-fun b!3835345 () Bool)

(declare-fun tp!1160782 () Bool)

(assert (=> b!3835345 (= e!2368635 tp!1160782)))

(assert (=> b!3834589 (= tp!1160585 e!2368635)))

(declare-fun b!3835344 () Bool)

(declare-fun tp!1160781 () Bool)

(declare-fun tp!1160784 () Bool)

(assert (=> b!3835344 (= e!2368635 (and tp!1160781 tp!1160784))))

(assert (= (and b!3834589 ((_ is ElementMatch!11143) (regTwo!22798 (regex!6238 (rule!9070 (h!45923 prefixTokens!80)))))) b!3835343))

(assert (= (and b!3834589 ((_ is Concat!17612) (regTwo!22798 (regex!6238 (rule!9070 (h!45923 prefixTokens!80)))))) b!3835344))

(assert (= (and b!3834589 ((_ is Star!11143) (regTwo!22798 (regex!6238 (rule!9070 (h!45923 prefixTokens!80)))))) b!3835345))

(assert (= (and b!3834589 ((_ is Union!11143) (regTwo!22798 (regex!6238 (rule!9070 (h!45923 prefixTokens!80)))))) b!3835346))

(declare-fun b!3835355 () Bool)

(declare-fun tp!1160792 () Bool)

(declare-fun e!2368641 () Bool)

(declare-fun tp!1160791 () Bool)

(assert (=> b!3835355 (= e!2368641 (and (inv!54644 (left!31326 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (value!198417 (h!45923 prefixTokens!80)))))) tp!1160792 (inv!54644 (right!31656 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (value!198417 (h!45923 prefixTokens!80)))))) tp!1160791))))

(declare-fun b!3835357 () Bool)

(declare-fun e!2368640 () Bool)

(declare-fun tp!1160793 () Bool)

(assert (=> b!3835357 (= e!2368640 tp!1160793)))

(declare-fun b!3835356 () Bool)

(declare-fun inv!54651 (IArray!24903) Bool)

(assert (=> b!3835356 (= e!2368641 (and (inv!54651 (xs!15755 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (value!198417 (h!45923 prefixTokens!80)))))) e!2368640))))

(assert (=> b!3834270 (= tp!1160495 (and (inv!54644 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (value!198417 (h!45923 prefixTokens!80))))) e!2368641))))

(assert (= (and b!3834270 ((_ is Node!12449) (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (value!198417 (h!45923 prefixTokens!80)))))) b!3835355))

(assert (= b!3835356 b!3835357))

(assert (= (and b!3834270 ((_ is Leaf!19275) (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (value!198417 (h!45923 prefixTokens!80)))))) b!3835356))

(declare-fun m!4389751 () Bool)

(assert (=> b!3835355 m!4389751))

(declare-fun m!4389753 () Bool)

(assert (=> b!3835355 m!4389753))

(declare-fun m!4389755 () Bool)

(assert (=> b!3835356 m!4389755))

(assert (=> b!3834270 m!4388531))

(declare-fun b!3835358 () Bool)

(declare-fun e!2368642 () Bool)

(declare-fun tp!1160794 () Bool)

(assert (=> b!3835358 (= e!2368642 (and tp_is_empty!19257 tp!1160794))))

(assert (=> b!3834573 (= tp!1160565 e!2368642)))

(assert (= (and b!3834573 ((_ is Cons!40500) (t!309357 (originalCharacters!6838 (h!45923 prefixTokens!80))))) b!3835358))

(declare-fun b!3835359 () Bool)

(declare-fun tp!1160796 () Bool)

(declare-fun e!2368644 () Bool)

(declare-fun tp!1160795 () Bool)

(assert (=> b!3835359 (= e!2368644 (and (inv!54644 (left!31326 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (value!198417 (h!45923 suffixTokens!72)))))) tp!1160796 (inv!54644 (right!31656 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (value!198417 (h!45923 suffixTokens!72)))))) tp!1160795))))

(declare-fun b!3835361 () Bool)

(declare-fun e!2368643 () Bool)

(declare-fun tp!1160797 () Bool)

(assert (=> b!3835361 (= e!2368643 tp!1160797)))

(declare-fun b!3835360 () Bool)

(assert (=> b!3835360 (= e!2368644 (and (inv!54651 (xs!15755 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (value!198417 (h!45923 suffixTokens!72)))))) e!2368643))))

(assert (=> b!3834568 (= tp!1160562 (and (inv!54644 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (value!198417 (h!45923 suffixTokens!72))))) e!2368644))))

(assert (= (and b!3834568 ((_ is Node!12449) (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (value!198417 (h!45923 suffixTokens!72)))))) b!3835359))

(assert (= b!3835360 b!3835361))

(assert (= (and b!3834568 ((_ is Leaf!19275) (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (value!198417 (h!45923 suffixTokens!72)))))) b!3835360))

(declare-fun m!4389757 () Bool)

(assert (=> b!3835359 m!4389757))

(declare-fun m!4389759 () Bool)

(assert (=> b!3835359 m!4389759))

(declare-fun m!4389761 () Bool)

(assert (=> b!3835360 m!4389761))

(assert (=> b!3834568 m!4388853))

(declare-fun b!3835362 () Bool)

(declare-fun e!2368645 () Bool)

(declare-fun tp!1160798 () Bool)

(assert (=> b!3835362 (= e!2368645 (and tp_is_empty!19257 tp!1160798))))

(assert (=> b!3834624 (= tp!1160621 e!2368645)))

(assert (= (and b!3834624 ((_ is Cons!40500) (t!309357 (t!309357 prefix!426)))) b!3835362))

(declare-fun b!3835363 () Bool)

(declare-fun e!2368646 () Bool)

(assert (=> b!3835363 (= e!2368646 tp_is_empty!19257)))

(declare-fun b!3835366 () Bool)

(declare-fun tp!1160802 () Bool)

(declare-fun tp!1160799 () Bool)

(assert (=> b!3835366 (= e!2368646 (and tp!1160802 tp!1160799))))

(declare-fun b!3835365 () Bool)

(declare-fun tp!1160801 () Bool)

(assert (=> b!3835365 (= e!2368646 tp!1160801)))

(assert (=> b!3834623 (= tp!1160619 e!2368646)))

(declare-fun b!3835364 () Bool)

(declare-fun tp!1160800 () Bool)

(declare-fun tp!1160803 () Bool)

(assert (=> b!3835364 (= e!2368646 (and tp!1160800 tp!1160803))))

(assert (= (and b!3834623 ((_ is ElementMatch!11143) (regOne!22799 (regex!6238 (rule!9070 (h!45923 suffixTokens!72)))))) b!3835363))

(assert (= (and b!3834623 ((_ is Concat!17612) (regOne!22799 (regex!6238 (rule!9070 (h!45923 suffixTokens!72)))))) b!3835364))

(assert (= (and b!3834623 ((_ is Star!11143) (regOne!22799 (regex!6238 (rule!9070 (h!45923 suffixTokens!72)))))) b!3835365))

(assert (= (and b!3834623 ((_ is Union!11143) (regOne!22799 (regex!6238 (rule!9070 (h!45923 suffixTokens!72)))))) b!3835366))

(declare-fun b!3835367 () Bool)

(declare-fun e!2368647 () Bool)

(assert (=> b!3835367 (= e!2368647 tp_is_empty!19257)))

(declare-fun b!3835370 () Bool)

(declare-fun tp!1160807 () Bool)

(declare-fun tp!1160804 () Bool)

(assert (=> b!3835370 (= e!2368647 (and tp!1160807 tp!1160804))))

(declare-fun b!3835369 () Bool)

(declare-fun tp!1160806 () Bool)

(assert (=> b!3835369 (= e!2368647 tp!1160806)))

(assert (=> b!3834623 (= tp!1160616 e!2368647)))

(declare-fun b!3835368 () Bool)

(declare-fun tp!1160805 () Bool)

(declare-fun tp!1160808 () Bool)

(assert (=> b!3835368 (= e!2368647 (and tp!1160805 tp!1160808))))

(assert (= (and b!3834623 ((_ is ElementMatch!11143) (regTwo!22799 (regex!6238 (rule!9070 (h!45923 suffixTokens!72)))))) b!3835367))

(assert (= (and b!3834623 ((_ is Concat!17612) (regTwo!22799 (regex!6238 (rule!9070 (h!45923 suffixTokens!72)))))) b!3835368))

(assert (= (and b!3834623 ((_ is Star!11143) (regTwo!22799 (regex!6238 (rule!9070 (h!45923 suffixTokens!72)))))) b!3835369))

(assert (= (and b!3834623 ((_ is Union!11143) (regTwo!22799 (regex!6238 (rule!9070 (h!45923 suffixTokens!72)))))) b!3835370))

(declare-fun b!3835371 () Bool)

(declare-fun e!2368648 () Bool)

(declare-fun tp!1160809 () Bool)

(assert (=> b!3835371 (= e!2368648 (and tp_is_empty!19257 tp!1160809))))

(assert (=> b!3834607 (= tp!1160602 e!2368648)))

(assert (= (and b!3834607 ((_ is Cons!40500) (t!309357 (t!309357 suffix!1176)))) b!3835371))

(declare-fun b!3835372 () Bool)

(declare-fun e!2368649 () Bool)

(assert (=> b!3835372 (= e!2368649 tp_is_empty!19257)))

(declare-fun b!3835375 () Bool)

(declare-fun tp!1160813 () Bool)

(declare-fun tp!1160810 () Bool)

(assert (=> b!3835375 (= e!2368649 (and tp!1160813 tp!1160810))))

(declare-fun b!3835374 () Bool)

(declare-fun tp!1160812 () Bool)

(assert (=> b!3835374 (= e!2368649 tp!1160812)))

(assert (=> b!3834587 (= tp!1160579 e!2368649)))

(declare-fun b!3835373 () Bool)

(declare-fun tp!1160811 () Bool)

(declare-fun tp!1160814 () Bool)

(assert (=> b!3835373 (= e!2368649 (and tp!1160811 tp!1160814))))

(assert (= (and b!3834587 ((_ is ElementMatch!11143) (regOne!22799 (regex!6238 (h!45922 rules!2768))))) b!3835372))

(assert (= (and b!3834587 ((_ is Concat!17612) (regOne!22799 (regex!6238 (h!45922 rules!2768))))) b!3835373))

(assert (= (and b!3834587 ((_ is Star!11143) (regOne!22799 (regex!6238 (h!45922 rules!2768))))) b!3835374))

(assert (= (and b!3834587 ((_ is Union!11143) (regOne!22799 (regex!6238 (h!45922 rules!2768))))) b!3835375))

(declare-fun b!3835376 () Bool)

(declare-fun e!2368650 () Bool)

(assert (=> b!3835376 (= e!2368650 tp_is_empty!19257)))

(declare-fun b!3835379 () Bool)

(declare-fun tp!1160818 () Bool)

(declare-fun tp!1160815 () Bool)

(assert (=> b!3835379 (= e!2368650 (and tp!1160818 tp!1160815))))

(declare-fun b!3835378 () Bool)

(declare-fun tp!1160817 () Bool)

(assert (=> b!3835378 (= e!2368650 tp!1160817)))

(assert (=> b!3834587 (= tp!1160576 e!2368650)))

(declare-fun b!3835377 () Bool)

(declare-fun tp!1160816 () Bool)

(declare-fun tp!1160819 () Bool)

(assert (=> b!3835377 (= e!2368650 (and tp!1160816 tp!1160819))))

(assert (= (and b!3834587 ((_ is ElementMatch!11143) (regTwo!22799 (regex!6238 (h!45922 rules!2768))))) b!3835376))

(assert (= (and b!3834587 ((_ is Concat!17612) (regTwo!22799 (regex!6238 (h!45922 rules!2768))))) b!3835377))

(assert (= (and b!3834587 ((_ is Star!11143) (regTwo!22799 (regex!6238 (h!45922 rules!2768))))) b!3835378))

(assert (= (and b!3834587 ((_ is Union!11143) (regTwo!22799 (regex!6238 (h!45922 rules!2768))))) b!3835379))

(declare-fun b!3835380 () Bool)

(declare-fun e!2368651 () Bool)

(assert (=> b!3835380 (= e!2368651 tp_is_empty!19257)))

(declare-fun b!3835383 () Bool)

(declare-fun tp!1160823 () Bool)

(declare-fun tp!1160820 () Bool)

(assert (=> b!3835383 (= e!2368651 (and tp!1160823 tp!1160820))))

(declare-fun b!3835382 () Bool)

(declare-fun tp!1160822 () Bool)

(assert (=> b!3835382 (= e!2368651 tp!1160822)))

(assert (=> b!3834622 (= tp!1160618 e!2368651)))

(declare-fun b!3835381 () Bool)

(declare-fun tp!1160821 () Bool)

(declare-fun tp!1160824 () Bool)

(assert (=> b!3835381 (= e!2368651 (and tp!1160821 tp!1160824))))

(assert (= (and b!3834622 ((_ is ElementMatch!11143) (reg!11472 (regex!6238 (rule!9070 (h!45923 suffixTokens!72)))))) b!3835380))

(assert (= (and b!3834622 ((_ is Concat!17612) (reg!11472 (regex!6238 (rule!9070 (h!45923 suffixTokens!72)))))) b!3835381))

(assert (= (and b!3834622 ((_ is Star!11143) (reg!11472 (regex!6238 (rule!9070 (h!45923 suffixTokens!72)))))) b!3835382))

(assert (= (and b!3834622 ((_ is Union!11143) (reg!11472 (regex!6238 (rule!9070 (h!45923 suffixTokens!72)))))) b!3835383))

(declare-fun b!3835384 () Bool)

(declare-fun e!2368652 () Bool)

(assert (=> b!3835384 (= e!2368652 tp_is_empty!19257)))

(declare-fun b!3835387 () Bool)

(declare-fun tp!1160828 () Bool)

(declare-fun tp!1160825 () Bool)

(assert (=> b!3835387 (= e!2368652 (and tp!1160828 tp!1160825))))

(declare-fun b!3835386 () Bool)

(declare-fun tp!1160827 () Bool)

(assert (=> b!3835386 (= e!2368652 tp!1160827)))

(assert (=> b!3834586 (= tp!1160578 e!2368652)))

(declare-fun b!3835385 () Bool)

(declare-fun tp!1160826 () Bool)

(declare-fun tp!1160829 () Bool)

(assert (=> b!3835385 (= e!2368652 (and tp!1160826 tp!1160829))))

(assert (= (and b!3834586 ((_ is ElementMatch!11143) (reg!11472 (regex!6238 (h!45922 rules!2768))))) b!3835384))

(assert (= (and b!3834586 ((_ is Concat!17612) (reg!11472 (regex!6238 (h!45922 rules!2768))))) b!3835385))

(assert (= (and b!3834586 ((_ is Star!11143) (reg!11472 (regex!6238 (h!45922 rules!2768))))) b!3835386))

(assert (= (and b!3834586 ((_ is Union!11143) (reg!11472 (regex!6238 (h!45922 rules!2768))))) b!3835387))

(declare-fun b!3835388 () Bool)

(declare-fun e!2368653 () Bool)

(assert (=> b!3835388 (= e!2368653 tp_is_empty!19257)))

(declare-fun b!3835391 () Bool)

(declare-fun tp!1160833 () Bool)

(declare-fun tp!1160830 () Bool)

(assert (=> b!3835391 (= e!2368653 (and tp!1160833 tp!1160830))))

(declare-fun b!3835390 () Bool)

(declare-fun tp!1160832 () Bool)

(assert (=> b!3835390 (= e!2368653 tp!1160832)))

(assert (=> b!3834621 (= tp!1160617 e!2368653)))

(declare-fun b!3835389 () Bool)

(declare-fun tp!1160831 () Bool)

(declare-fun tp!1160834 () Bool)

(assert (=> b!3835389 (= e!2368653 (and tp!1160831 tp!1160834))))

(assert (= (and b!3834621 ((_ is ElementMatch!11143) (regOne!22798 (regex!6238 (rule!9070 (h!45923 suffixTokens!72)))))) b!3835388))

(assert (= (and b!3834621 ((_ is Concat!17612) (regOne!22798 (regex!6238 (rule!9070 (h!45923 suffixTokens!72)))))) b!3835389))

(assert (= (and b!3834621 ((_ is Star!11143) (regOne!22798 (regex!6238 (rule!9070 (h!45923 suffixTokens!72)))))) b!3835390))

(assert (= (and b!3834621 ((_ is Union!11143) (regOne!22798 (regex!6238 (rule!9070 (h!45923 suffixTokens!72)))))) b!3835391))

(declare-fun b!3835392 () Bool)

(declare-fun e!2368654 () Bool)

(assert (=> b!3835392 (= e!2368654 tp_is_empty!19257)))

(declare-fun b!3835395 () Bool)

(declare-fun tp!1160838 () Bool)

(declare-fun tp!1160835 () Bool)

(assert (=> b!3835395 (= e!2368654 (and tp!1160838 tp!1160835))))

(declare-fun b!3835394 () Bool)

(declare-fun tp!1160837 () Bool)

(assert (=> b!3835394 (= e!2368654 tp!1160837)))

(assert (=> b!3834621 (= tp!1160620 e!2368654)))

(declare-fun b!3835393 () Bool)

(declare-fun tp!1160836 () Bool)

(declare-fun tp!1160839 () Bool)

(assert (=> b!3835393 (= e!2368654 (and tp!1160836 tp!1160839))))

(assert (= (and b!3834621 ((_ is ElementMatch!11143) (regTwo!22798 (regex!6238 (rule!9070 (h!45923 suffixTokens!72)))))) b!3835392))

(assert (= (and b!3834621 ((_ is Concat!17612) (regTwo!22798 (regex!6238 (rule!9070 (h!45923 suffixTokens!72)))))) b!3835393))

(assert (= (and b!3834621 ((_ is Star!11143) (regTwo!22798 (regex!6238 (rule!9070 (h!45923 suffixTokens!72)))))) b!3835394))

(assert (= (and b!3834621 ((_ is Union!11143) (regTwo!22798 (regex!6238 (rule!9070 (h!45923 suffixTokens!72)))))) b!3835395))

(declare-fun e!2368656 () Bool)

(declare-fun tp!1160841 () Bool)

(declare-fun b!3835396 () Bool)

(declare-fun tp!1160840 () Bool)

(assert (=> b!3835396 (= e!2368656 (and (inv!54644 (left!31326 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))) (value!198417 (_1!22972 (v!38943 lt!1330899))))))) tp!1160841 (inv!54644 (right!31656 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))) (value!198417 (_1!22972 (v!38943 lt!1330899))))))) tp!1160840))))

(declare-fun b!3835398 () Bool)

(declare-fun e!2368655 () Bool)

(declare-fun tp!1160842 () Bool)

(assert (=> b!3835398 (= e!2368655 tp!1160842)))

(declare-fun b!3835397 () Bool)

(assert (=> b!3835397 (= e!2368656 (and (inv!54651 (xs!15755 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))) (value!198417 (_1!22972 (v!38943 lt!1330899))))))) e!2368655))))

(assert (=> b!3834312 (= tp!1160496 (and (inv!54644 (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))) (value!198417 (_1!22972 (v!38943 lt!1330899)))))) e!2368656))))

(assert (= (and b!3834312 ((_ is Node!12449) (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))) (value!198417 (_1!22972 (v!38943 lt!1330899))))))) b!3835396))

(assert (= b!3835397 b!3835398))

(assert (= (and b!3834312 ((_ is Leaf!19275) (c!668564 (dynLambda!17532 (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))) (value!198417 (_1!22972 (v!38943 lt!1330899))))))) b!3835397))

(declare-fun m!4389763 () Bool)

(assert (=> b!3835396 m!4389763))

(declare-fun m!4389765 () Bool)

(assert (=> b!3835396 m!4389765))

(declare-fun m!4389767 () Bool)

(assert (=> b!3835397 m!4389767))

(assert (=> b!3834312 m!4388583))

(declare-fun b!3835399 () Bool)

(declare-fun e!2368657 () Bool)

(assert (=> b!3835399 (= e!2368657 tp_is_empty!19257)))

(declare-fun b!3835402 () Bool)

(declare-fun tp!1160846 () Bool)

(declare-fun tp!1160843 () Bool)

(assert (=> b!3835402 (= e!2368657 (and tp!1160846 tp!1160843))))

(declare-fun b!3835401 () Bool)

(declare-fun tp!1160845 () Bool)

(assert (=> b!3835401 (= e!2368657 tp!1160845)))

(assert (=> b!3834585 (= tp!1160577 e!2368657)))

(declare-fun b!3835400 () Bool)

(declare-fun tp!1160844 () Bool)

(declare-fun tp!1160847 () Bool)

(assert (=> b!3835400 (= e!2368657 (and tp!1160844 tp!1160847))))

(assert (= (and b!3834585 ((_ is ElementMatch!11143) (regOne!22798 (regex!6238 (h!45922 rules!2768))))) b!3835399))

(assert (= (and b!3834585 ((_ is Concat!17612) (regOne!22798 (regex!6238 (h!45922 rules!2768))))) b!3835400))

(assert (= (and b!3834585 ((_ is Star!11143) (regOne!22798 (regex!6238 (h!45922 rules!2768))))) b!3835401))

(assert (= (and b!3834585 ((_ is Union!11143) (regOne!22798 (regex!6238 (h!45922 rules!2768))))) b!3835402))

(declare-fun b!3835403 () Bool)

(declare-fun e!2368658 () Bool)

(assert (=> b!3835403 (= e!2368658 tp_is_empty!19257)))

(declare-fun b!3835406 () Bool)

(declare-fun tp!1160851 () Bool)

(declare-fun tp!1160848 () Bool)

(assert (=> b!3835406 (= e!2368658 (and tp!1160851 tp!1160848))))

(declare-fun b!3835405 () Bool)

(declare-fun tp!1160850 () Bool)

(assert (=> b!3835405 (= e!2368658 tp!1160850)))

(assert (=> b!3834585 (= tp!1160580 e!2368658)))

(declare-fun b!3835404 () Bool)

(declare-fun tp!1160849 () Bool)

(declare-fun tp!1160852 () Bool)

(assert (=> b!3835404 (= e!2368658 (and tp!1160849 tp!1160852))))

(assert (= (and b!3834585 ((_ is ElementMatch!11143) (regTwo!22798 (regex!6238 (h!45922 rules!2768))))) b!3835403))

(assert (= (and b!3834585 ((_ is Concat!17612) (regTwo!22798 (regex!6238 (h!45922 rules!2768))))) b!3835404))

(assert (= (and b!3834585 ((_ is Star!11143) (regTwo!22798 (regex!6238 (h!45922 rules!2768))))) b!3835405))

(assert (= (and b!3834585 ((_ is Union!11143) (regTwo!22798 (regex!6238 (h!45922 rules!2768))))) b!3835406))

(declare-fun b!3835407 () Bool)

(declare-fun e!2368659 () Bool)

(assert (=> b!3835407 (= e!2368659 tp_is_empty!19257)))

(declare-fun b!3835410 () Bool)

(declare-fun tp!1160856 () Bool)

(declare-fun tp!1160853 () Bool)

(assert (=> b!3835410 (= e!2368659 (and tp!1160856 tp!1160853))))

(declare-fun b!3835409 () Bool)

(declare-fun tp!1160855 () Bool)

(assert (=> b!3835409 (= e!2368659 tp!1160855)))

(assert (=> b!3834604 (= tp!1160600 e!2368659)))

(declare-fun b!3835408 () Bool)

(declare-fun tp!1160854 () Bool)

(declare-fun tp!1160857 () Bool)

(assert (=> b!3835408 (= e!2368659 (and tp!1160854 tp!1160857))))

(assert (= (and b!3834604 ((_ is ElementMatch!11143) (regex!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80)))))) b!3835407))

(assert (= (and b!3834604 ((_ is Concat!17612) (regex!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80)))))) b!3835408))

(assert (= (and b!3834604 ((_ is Star!11143) (regex!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80)))))) b!3835409))

(assert (= (and b!3834604 ((_ is Union!11143) (regex!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80)))))) b!3835410))

(declare-fun b!3835411 () Bool)

(declare-fun e!2368660 () Bool)

(declare-fun tp!1160858 () Bool)

(assert (=> b!3835411 (= e!2368660 (and tp_is_empty!19257 tp!1160858))))

(assert (=> b!3834606 (= tp!1160601 e!2368660)))

(assert (= (and b!3834606 ((_ is Cons!40500) (t!309357 (t!309357 suffixResult!91)))) b!3835411))

(declare-fun b!3835412 () Bool)

(declare-fun e!2368661 () Bool)

(declare-fun tp!1160859 () Bool)

(assert (=> b!3835412 (= e!2368661 (and tp_is_empty!19257 tp!1160859))))

(assert (=> b!3834603 (= tp!1160598 e!2368661)))

(assert (= (and b!3834603 ((_ is Cons!40500) (originalCharacters!6838 (h!45923 (t!309360 prefixTokens!80))))) b!3835412))

(declare-fun b!3835413 () Bool)

(declare-fun e!2368662 () Bool)

(assert (=> b!3835413 (= e!2368662 tp_is_empty!19257)))

(declare-fun b!3835416 () Bool)

(declare-fun tp!1160863 () Bool)

(declare-fun tp!1160860 () Bool)

(assert (=> b!3835416 (= e!2368662 (and tp!1160863 tp!1160860))))

(declare-fun b!3835415 () Bool)

(declare-fun tp!1160862 () Bool)

(assert (=> b!3835415 (= e!2368662 tp!1160862)))

(assert (=> b!3834627 (= tp!1160626 e!2368662)))

(declare-fun b!3835414 () Bool)

(declare-fun tp!1160861 () Bool)

(declare-fun tp!1160864 () Bool)

(assert (=> b!3835414 (= e!2368662 (and tp!1160861 tp!1160864))))

(assert (= (and b!3834627 ((_ is ElementMatch!11143) (regex!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72)))))) b!3835413))

(assert (= (and b!3834627 ((_ is Concat!17612) (regex!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72)))))) b!3835414))

(assert (= (and b!3834627 ((_ is Star!11143) (regex!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72)))))) b!3835415))

(assert (= (and b!3834627 ((_ is Union!11143) (regex!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72)))))) b!3835416))

(declare-fun b!3835420 () Bool)

(declare-fun b_free!101901 () Bool)

(declare-fun b_next!102605 () Bool)

(assert (=> b!3835420 (= b_free!101901 (not b_next!102605))))

(declare-fun tb!220255 () Bool)

(declare-fun t!309576 () Bool)

(assert (=> (and b!3835420 (= (toValue!8646 (transformation!6238 (rule!9070 (h!45923 (t!309360 (t!309360 prefixTokens!80)))))) (toValue!8646 (transformation!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998)))))) t!309576) tb!220255))

(declare-fun result!268472 () Bool)

(assert (= result!268472 result!268338))

(assert (=> d!1138196 t!309576))

(declare-fun b_and!285223 () Bool)

(declare-fun tp!1160865 () Bool)

(assert (=> b!3835420 (= tp!1160865 (and (=> t!309576 result!268472) b_and!285223))))

(declare-fun b_free!101903 () Bool)

(declare-fun b_next!102607 () Bool)

(assert (=> b!3835420 (= b_free!101903 (not b_next!102607))))

(declare-fun t!309578 () Bool)

(declare-fun tb!220257 () Bool)

(assert (=> (and b!3835420 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 (t!309360 prefixTokens!80)))))) (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998)))))) t!309578) tb!220257))

(declare-fun result!268474 () Bool)

(assert (= result!268474 result!268390))

(assert (=> d!1138326 t!309578))

(declare-fun t!309580 () Bool)

(declare-fun tb!220259 () Bool)

(assert (=> (and b!3835420 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 (t!309360 prefixTokens!80)))))) (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899)))))) t!309580) tb!220259))

(declare-fun result!268476 () Bool)

(assert (= result!268476 result!268256))

(assert (=> d!1138086 t!309580))

(declare-fun t!309582 () Bool)

(declare-fun tb!220261 () Bool)

(assert (=> (and b!3835420 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 (t!309360 prefixTokens!80)))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72))))) t!309582) tb!220261))

(declare-fun result!268478 () Bool)

(assert (= result!268478 result!268294))

(assert (=> b!3834566 t!309582))

(declare-fun t!309584 () Bool)

(declare-fun tb!220263 () Bool)

(assert (=> (and b!3835420 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 (t!309360 prefixTokens!80)))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80)))))) t!309584) tb!220263))

(declare-fun result!268480 () Bool)

(assert (= result!268480 result!268418))

(assert (=> b!3835148 t!309584))

(declare-fun t!309586 () Bool)

(declare-fun tb!220265 () Bool)

(assert (=> (and b!3835420 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 (t!309360 prefixTokens!80)))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80))))) t!309586) tb!220265))

(declare-fun result!268482 () Bool)

(assert (= result!268482 result!268248))

(assert (=> b!3834264 t!309586))

(declare-fun t!309588 () Bool)

(declare-fun tb!220267 () Bool)

(assert (=> (and b!3835420 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 (t!309360 prefixTokens!80)))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72)))))) t!309588) tb!220267))

(declare-fun result!268484 () Bool)

(assert (= result!268484 result!268458))

(assert (=> b!3835321 t!309588))

(declare-fun b_and!285225 () Bool)

(declare-fun tp!1160866 () Bool)

(assert (=> b!3835420 (= tp!1160866 (and (=> t!309588 result!268484) (=> t!309582 result!268478) (=> t!309586 result!268482) (=> t!309580 result!268476) (=> t!309584 result!268480) (=> t!309578 result!268474) b_and!285225))))

(declare-fun e!2368668 () Bool)

(assert (=> b!3834602 (= tp!1160599 e!2368668)))

(declare-fun e!2368667 () Bool)

(assert (=> b!3835420 (= e!2368667 (and tp!1160865 tp!1160866))))

(declare-fun tp!1160868 () Bool)

(declare-fun b!3835417 () Bool)

(declare-fun e!2368666 () Bool)

(assert (=> b!3835417 (= e!2368668 (and (inv!54640 (h!45923 (t!309360 (t!309360 prefixTokens!80)))) e!2368666 tp!1160868))))

(declare-fun e!2368663 () Bool)

(declare-fun b!3835419 () Bool)

(declare-fun tp!1160869 () Bool)

(assert (=> b!3835419 (= e!2368663 (and tp!1160869 (inv!54637 (tag!7098 (rule!9070 (h!45923 (t!309360 (t!309360 prefixTokens!80)))))) (inv!54641 (transformation!6238 (rule!9070 (h!45923 (t!309360 (t!309360 prefixTokens!80)))))) e!2368667))))

(declare-fun tp!1160867 () Bool)

(declare-fun b!3835418 () Bool)

(assert (=> b!3835418 (= e!2368666 (and (inv!21 (value!198417 (h!45923 (t!309360 (t!309360 prefixTokens!80))))) e!2368663 tp!1160867))))

(assert (= b!3835419 b!3835420))

(assert (= b!3835418 b!3835419))

(assert (= b!3835417 b!3835418))

(assert (= (and b!3834602 ((_ is Cons!40503) (t!309360 (t!309360 prefixTokens!80)))) b!3835417))

(declare-fun m!4389769 () Bool)

(assert (=> b!3835417 m!4389769))

(declare-fun m!4389771 () Bool)

(assert (=> b!3835419 m!4389771))

(declare-fun m!4389773 () Bool)

(assert (=> b!3835419 m!4389773))

(declare-fun m!4389775 () Bool)

(assert (=> b!3835418 m!4389775))

(declare-fun b!3835421 () Bool)

(declare-fun e!2368669 () Bool)

(assert (=> b!3835421 (= e!2368669 tp_is_empty!19257)))

(declare-fun b!3835424 () Bool)

(declare-fun tp!1160873 () Bool)

(declare-fun tp!1160870 () Bool)

(assert (=> b!3835424 (= e!2368669 (and tp!1160873 tp!1160870))))

(declare-fun b!3835423 () Bool)

(declare-fun tp!1160872 () Bool)

(assert (=> b!3835423 (= e!2368669 tp!1160872)))

(assert (=> b!3834617 (= tp!1160613 e!2368669)))

(declare-fun b!3835422 () Bool)

(declare-fun tp!1160871 () Bool)

(declare-fun tp!1160874 () Bool)

(assert (=> b!3835422 (= e!2368669 (and tp!1160871 tp!1160874))))

(assert (= (and b!3834617 ((_ is ElementMatch!11143) (regex!6238 (h!45922 (t!309359 rules!2768))))) b!3835421))

(assert (= (and b!3834617 ((_ is Concat!17612) (regex!6238 (h!45922 (t!309359 rules!2768))))) b!3835422))

(assert (= (and b!3834617 ((_ is Star!11143) (regex!6238 (h!45922 (t!309359 rules!2768))))) b!3835423))

(assert (= (and b!3834617 ((_ is Union!11143) (regex!6238 (h!45922 (t!309359 rules!2768))))) b!3835424))

(declare-fun b!3835425 () Bool)

(declare-fun e!2368670 () Bool)

(declare-fun tp!1160875 () Bool)

(assert (=> b!3835425 (= e!2368670 (and tp_is_empty!19257 tp!1160875))))

(assert (=> b!3834626 (= tp!1160624 e!2368670)))

(assert (= (and b!3834626 ((_ is Cons!40500) (originalCharacters!6838 (h!45923 (t!309360 suffixTokens!72))))) b!3835425))

(declare-fun b!3835428 () Bool)

(declare-fun b_free!101905 () Bool)

(declare-fun b_next!102609 () Bool)

(assert (=> b!3835428 (= b_free!101905 (not b_next!102609))))

(declare-fun t!309590 () Bool)

(declare-fun tb!220269 () Bool)

(assert (=> (and b!3835428 (= (toValue!8646 (transformation!6238 (h!45922 (t!309359 (t!309359 rules!2768))))) (toValue!8646 (transformation!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998)))))) t!309590) tb!220269))

(declare-fun result!268486 () Bool)

(assert (= result!268486 result!268338))

(assert (=> d!1138196 t!309590))

(declare-fun tp!1160879 () Bool)

(declare-fun b_and!285227 () Bool)

(assert (=> b!3835428 (= tp!1160879 (and (=> t!309590 result!268486) b_and!285227))))

(declare-fun b_free!101907 () Bool)

(declare-fun b_next!102611 () Bool)

(assert (=> b!3835428 (= b_free!101907 (not b_next!102611))))

(declare-fun t!309592 () Bool)

(declare-fun tb!220271 () Bool)

(assert (=> (and b!3835428 (= (toChars!8505 (transformation!6238 (h!45922 (t!309359 (t!309359 rules!2768))))) (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998)))))) t!309592) tb!220271))

(declare-fun result!268488 () Bool)

(assert (= result!268488 result!268390))

(assert (=> d!1138326 t!309592))

(declare-fun t!309594 () Bool)

(declare-fun tb!220273 () Bool)

(assert (=> (and b!3835428 (= (toChars!8505 (transformation!6238 (h!45922 (t!309359 (t!309359 rules!2768))))) (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899)))))) t!309594) tb!220273))

(declare-fun result!268490 () Bool)

(assert (= result!268490 result!268256))

(assert (=> d!1138086 t!309594))

(declare-fun tb!220275 () Bool)

(declare-fun t!309596 () Bool)

(assert (=> (and b!3835428 (= (toChars!8505 (transformation!6238 (h!45922 (t!309359 (t!309359 rules!2768))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72))))) t!309596) tb!220275))

(declare-fun result!268492 () Bool)

(assert (= result!268492 result!268294))

(assert (=> b!3834566 t!309596))

(declare-fun tb!220277 () Bool)

(declare-fun t!309598 () Bool)

(assert (=> (and b!3835428 (= (toChars!8505 (transformation!6238 (h!45922 (t!309359 (t!309359 rules!2768))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80)))))) t!309598) tb!220277))

(declare-fun result!268494 () Bool)

(assert (= result!268494 result!268418))

(assert (=> b!3835148 t!309598))

(declare-fun tb!220279 () Bool)

(declare-fun t!309600 () Bool)

(assert (=> (and b!3835428 (= (toChars!8505 (transformation!6238 (h!45922 (t!309359 (t!309359 rules!2768))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80))))) t!309600) tb!220279))

(declare-fun result!268496 () Bool)

(assert (= result!268496 result!268248))

(assert (=> b!3834264 t!309600))

(declare-fun t!309602 () Bool)

(declare-fun tb!220281 () Bool)

(assert (=> (and b!3835428 (= (toChars!8505 (transformation!6238 (h!45922 (t!309359 (t!309359 rules!2768))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72)))))) t!309602) tb!220281))

(declare-fun result!268498 () Bool)

(assert (= result!268498 result!268458))

(assert (=> b!3835321 t!309602))

(declare-fun tp!1160876 () Bool)

(declare-fun b_and!285229 () Bool)

(assert (=> b!3835428 (= tp!1160876 (and (=> t!309598 result!268494) (=> t!309592 result!268488) (=> t!309600 result!268496) (=> t!309594 result!268490) (=> t!309596 result!268492) (=> t!309602 result!268498) b_and!285229))))

(declare-fun e!2368671 () Bool)

(assert (=> b!3835428 (= e!2368671 (and tp!1160879 tp!1160876))))

(declare-fun e!2368673 () Bool)

(declare-fun tp!1160878 () Bool)

(declare-fun b!3835427 () Bool)

(assert (=> b!3835427 (= e!2368673 (and tp!1160878 (inv!54637 (tag!7098 (h!45922 (t!309359 (t!309359 rules!2768))))) (inv!54641 (transformation!6238 (h!45922 (t!309359 (t!309359 rules!2768))))) e!2368671))))

(declare-fun b!3835426 () Bool)

(declare-fun e!2368672 () Bool)

(declare-fun tp!1160877 () Bool)

(assert (=> b!3835426 (= e!2368672 (and e!2368673 tp!1160877))))

(assert (=> b!3834616 (= tp!1160612 e!2368672)))

(assert (= b!3835427 b!3835428))

(assert (= b!3835426 b!3835427))

(assert (= (and b!3834616 ((_ is Cons!40502) (t!309359 (t!309359 rules!2768)))) b!3835426))

(declare-fun m!4389777 () Bool)

(assert (=> b!3835427 m!4389777))

(declare-fun m!4389779 () Bool)

(assert (=> b!3835427 m!4389779))

(declare-fun b!3835432 () Bool)

(declare-fun b_free!101909 () Bool)

(declare-fun b_next!102613 () Bool)

(assert (=> b!3835432 (= b_free!101909 (not b_next!102613))))

(declare-fun tb!220283 () Bool)

(declare-fun t!309604 () Bool)

(assert (=> (and b!3835432 (= (toValue!8646 (transformation!6238 (rule!9070 (h!45923 (t!309360 (t!309360 suffixTokens!72)))))) (toValue!8646 (transformation!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998)))))) t!309604) tb!220283))

(declare-fun result!268500 () Bool)

(assert (= result!268500 result!268338))

(assert (=> d!1138196 t!309604))

(declare-fun tp!1160880 () Bool)

(declare-fun b_and!285231 () Bool)

(assert (=> b!3835432 (= tp!1160880 (and (=> t!309604 result!268500) b_and!285231))))

(declare-fun b_free!101911 () Bool)

(declare-fun b_next!102615 () Bool)

(assert (=> b!3835432 (= b_free!101911 (not b_next!102615))))

(declare-fun tb!220285 () Bool)

(declare-fun t!309606 () Bool)

(assert (=> (and b!3835432 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 (t!309360 suffixTokens!72)))))) (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (get!13433 lt!1330998)))))) t!309606) tb!220285))

(declare-fun result!268502 () Bool)

(assert (= result!268502 result!268390))

(assert (=> d!1138326 t!309606))

(declare-fun tb!220287 () Bool)

(declare-fun t!309608 () Bool)

(assert (=> (and b!3835432 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 (t!309360 suffixTokens!72)))))) (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899)))))) t!309608) tb!220287))

(declare-fun result!268504 () Bool)

(assert (= result!268504 result!268256))

(assert (=> d!1138086 t!309608))

(declare-fun t!309610 () Bool)

(declare-fun tb!220289 () Bool)

(assert (=> (and b!3835432 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 (t!309360 suffixTokens!72)))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72))))) t!309610) tb!220289))

(declare-fun result!268506 () Bool)

(assert (= result!268506 result!268294))

(assert (=> b!3834566 t!309610))

(declare-fun t!309612 () Bool)

(declare-fun tb!220291 () Bool)

(assert (=> (and b!3835432 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 (t!309360 suffixTokens!72)))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80)))))) t!309612) tb!220291))

(declare-fun result!268508 () Bool)

(assert (= result!268508 result!268418))

(assert (=> b!3835148 t!309612))

(declare-fun t!309614 () Bool)

(declare-fun tb!220293 () Bool)

(assert (=> (and b!3835432 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 (t!309360 suffixTokens!72)))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80))))) t!309614) tb!220293))

(declare-fun result!268510 () Bool)

(assert (= result!268510 result!268248))

(assert (=> b!3834264 t!309614))

(declare-fun t!309616 () Bool)

(declare-fun tb!220295 () Bool)

(assert (=> (and b!3835432 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 (t!309360 suffixTokens!72)))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72)))))) t!309616) tb!220295))

(declare-fun result!268512 () Bool)

(assert (= result!268512 result!268458))

(assert (=> b!3835321 t!309616))

(declare-fun b_and!285233 () Bool)

(declare-fun tp!1160881 () Bool)

(assert (=> b!3835432 (= tp!1160881 (and (=> t!309608 result!268504) (=> t!309616 result!268512) (=> t!309612 result!268508) (=> t!309606 result!268502) (=> t!309614 result!268510) (=> t!309610 result!268506) b_and!285233))))

(declare-fun e!2368680 () Bool)

(assert (=> b!3834625 (= tp!1160625 e!2368680)))

(declare-fun e!2368679 () Bool)

(assert (=> b!3835432 (= e!2368679 (and tp!1160880 tp!1160881))))

(declare-fun tp!1160883 () Bool)

(declare-fun b!3835429 () Bool)

(declare-fun e!2368678 () Bool)

(assert (=> b!3835429 (= e!2368680 (and (inv!54640 (h!45923 (t!309360 (t!309360 suffixTokens!72)))) e!2368678 tp!1160883))))

(declare-fun e!2368675 () Bool)

(declare-fun tp!1160884 () Bool)

(declare-fun b!3835431 () Bool)

(assert (=> b!3835431 (= e!2368675 (and tp!1160884 (inv!54637 (tag!7098 (rule!9070 (h!45923 (t!309360 (t!309360 suffixTokens!72)))))) (inv!54641 (transformation!6238 (rule!9070 (h!45923 (t!309360 (t!309360 suffixTokens!72)))))) e!2368679))))

(declare-fun b!3835430 () Bool)

(declare-fun tp!1160882 () Bool)

(assert (=> b!3835430 (= e!2368678 (and (inv!21 (value!198417 (h!45923 (t!309360 (t!309360 suffixTokens!72))))) e!2368675 tp!1160882))))

(assert (= b!3835431 b!3835432))

(assert (= b!3835430 b!3835431))

(assert (= b!3835429 b!3835430))

(assert (= (and b!3834625 ((_ is Cons!40503) (t!309360 (t!309360 suffixTokens!72)))) b!3835429))

(declare-fun m!4389781 () Bool)

(assert (=> b!3835429 m!4389781))

(declare-fun m!4389783 () Bool)

(assert (=> b!3835431 m!4389783))

(declare-fun m!4389785 () Bool)

(assert (=> b!3835431 m!4389785))

(declare-fun m!4389787 () Bool)

(assert (=> b!3835430 m!4389787))

(declare-fun b_lambda!112133 () Bool)

(assert (= b_lambda!112097 (or (and b!3834211 b_free!101863 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))))) (and b!3835432 b_free!101911 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 (t!309360 suffixTokens!72)))))) (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))))) (and b!3834220 b_free!101855 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))))) (and b!3834218 b_free!101859 (= (toChars!8505 (transformation!6238 (h!45922 rules!2768))) (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))))) (and b!3834618 b_free!101883 (= (toChars!8505 (transformation!6238 (h!45922 (t!309359 rules!2768)))) (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))))) (and b!3835428 b_free!101907 (= (toChars!8505 (transformation!6238 (h!45922 (t!309359 (t!309359 rules!2768))))) (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))))) (and b!3835420 b_free!101903 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 (t!309360 prefixTokens!80)))))) (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))))) (and b!3834628 b_free!101887 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72))))) (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))))) (and b!3834605 b_free!101879 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80))))) (toChars!8505 (transformation!6238 (rule!9070 (_1!22972 (v!38943 lt!1330899))))))) b_lambda!112133)))

(declare-fun b_lambda!112135 () Bool)

(assert (= b_lambda!112131 (or (and b!3835428 b_free!101907 (= (toChars!8505 (transformation!6238 (h!45922 (t!309359 (t!309359 rules!2768))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72))))))) (and b!3834218 b_free!101859 (= (toChars!8505 (transformation!6238 (h!45922 rules!2768))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72))))))) (and b!3834628 b_free!101887) (and b!3835420 b_free!101903 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 (t!309360 prefixTokens!80)))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72))))))) (and b!3834220 b_free!101855 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72))))))) (and b!3835432 b_free!101911 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 (t!309360 suffixTokens!72)))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72))))))) (and b!3834605 b_free!101879 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72))))))) (and b!3834211 b_free!101863 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72))))))) (and b!3834618 b_free!101883 (= (toChars!8505 (transformation!6238 (h!45922 (t!309359 rules!2768)))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72))))))) b_lambda!112135)))

(declare-fun b_lambda!112137 () Bool)

(assert (= b_lambda!112123 (or (and b!3834628 b_free!101887 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 suffixTokens!72))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80))))))) (and b!3835432 b_free!101911 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 (t!309360 suffixTokens!72)))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80))))))) (and b!3834211 b_free!101863 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 prefixTokens!80)))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80))))))) (and b!3834220 b_free!101855 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 suffixTokens!72)))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80))))))) (and b!3834605 b_free!101879) (and b!3835420 b_free!101903 (= (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 (t!309360 prefixTokens!80)))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80))))))) (and b!3834618 b_free!101883 (= (toChars!8505 (transformation!6238 (h!45922 (t!309359 rules!2768)))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80))))))) (and b!3835428 b_free!101907 (= (toChars!8505 (transformation!6238 (h!45922 (t!309359 (t!309359 rules!2768))))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80))))))) (and b!3834218 b_free!101859 (= (toChars!8505 (transformation!6238 (h!45922 rules!2768))) (toChars!8505 (transformation!6238 (rule!9070 (h!45923 (t!309360 prefixTokens!80))))))) b_lambda!112137)))

(check-sat (not b!3835297) (not b_next!102615) (not d!1138502) (not b!3835290) (not b!3835332) (not d!1138208) (not b!3835389) (not b!3835128) (not b!3835356) (not b!3835405) (not b_next!102611) (not b!3835328) (not b!3834882) (not b!3835371) (not bm!281839) (not d!1138472) b_and!285215 (not b!3835333) (not d!1138514) (not tb!220243) (not b!3834910) (not b_next!102559) (not b!3835411) (not b_next!102581) (not b!3835329) (not b!3835397) (not b!3835400) (not b!3835305) (not b!3835275) (not b!3835223) (not b!3835365) (not b!3835265) (not d!1138450) (not b!3835368) (not b!3835429) (not b!3835412) (not b!3834270) (not b!3835215) (not b!3835120) (not b!3834312) (not tb!220129) (not d!1138466) (not d!1138532) tp_is_empty!19257 (not b!3835111) (not b!3835242) (not b!3835210) (not b_next!102585) (not d!1138468) (not b!3834946) (not b!3834947) (not d!1138198) (not b!3835338) b_and!285129 (not b!3834908) (not b!3835361) (not b!3835344) (not d!1138516) (not b!3835393) (not b!3835334) (not b!3835419) (not d!1138492) b_and!285137 b_and!285225 (not b!3835246) (not b!3835113) (not b!3835206) (not b!3835216) (not d!1138530) (not b!3835415) (not b!3835271) (not d!1138444) (not b!3835314) (not b!3834912) (not b!3835316) (not b_next!102613) (not d!1138538) (not b!3835322) (not b!3835306) (not b!3835318) (not b!3835153) (not d!1138458) (not b!3835370) b_and!285223 (not b_next!102583) (not b!3835227) (not b_next!102561) (not b!3835378) (not b!3835336) (not b_lambda!112133) (not b_next!102589) (not d!1138496) (not b!3834904) (not b!3835377) (not d!1138478) (not b_next!102567) (not b!3835373) (not tb!220203) (not b!3835417) (not b!3835320) b_and!285213 (not bm!281856) b_and!285131 (not b!3835404) (not b!3835010) (not b!3835214) (not b!3835289) (not b!3835139) (not b!3835345) (not b!3834996) (not b!3835414) (not b!3835291) (not b!3835425) (not b_next!102591) (not b_next!102557) (not b!3835268) b_and!285219 (not b_next!102605) (not b!3835408) (not b!3835379) (not b!3834890) (not b!3835207) (not b!3835230) (not b!3834883) (not b_lambda!112107) b_and!285127 (not d!1138462) (not b!3835008) (not d!1138498) (not b!3835369) (not b!3835416) (not b!3835115) (not b!3835228) (not b!3835364) (not b!3835381) (not b!3835211) (not b!3834976) (not b!3835308) (not b!3834708) (not b!3835155) b_and!285133 (not b!3834944) (not b!3835296) (not b!3835390) (not d!1138464) (not b!3835302) (not b!3835238) (not b!3835406) (not b!3835244) (not d!1138370) (not b!3835147) (not b!3834950) (not b!3835221) (not b!3835383) (not d!1138402) (not b!3835430) (not b!3835217) (not b!3835212) (not b!3835358) (not b_lambda!112135) (not b!3835385) (not d!1138536) (not b!3835359) (not tb!220177) (not d!1138398) b_and!285221 (not d!1138424) (not b!3835231) (not d!1138504) (not b!3835395) (not b!3835394) (not d!1138382) (not b!3835219) (not b!3835391) b_and!285135 (not b!3835401) (not b!3835387) (not d!1138460) (not b!3834568) (not b!3835224) (not b_lambda!112109) (not b!3835154) (not d!1138454) (not bm!281857) (not b!3835386) (not b!3835342) (not b!3835341) (not b!3835431) (not b!3835273) (not b!3835323) b_and!285233 (not b!3835239) (not b_lambda!112137) (not b!3835374) (not b!3835325) (not b!3834718) (not d!1138350) (not b!3835340) (not b!3835423) (not b!3834720) (not d!1138480) (not b!3835213) (not b!3835427) (not b!3835330) (not b!3835281) (not d!1138456) (not b!3835226) (not b!3835409) (not b!3834977) (not b!3835312) (not b!3834914) (not b_next!102565) (not b!3835280) (not b!3835346) (not b!3834716) (not b!3835355) (not b!3835418) (not b!3835396) (not b!3835402) (not b!3835307) (not b!3835225) (not b!3834887) (not d!1138474) (not b!3834949) (not d!1138200) (not d!1138484) (not b!3835357) (not b!3835130) (not b!3835366) (not b!3835424) (not b!3835309) (not b!3835313) b_and!285217 (not d!1138510) (not b!3835083) (not b!3834994) (not b!3835222) (not b!3835270) (not b!3835158) (not b_next!102563) (not d!1138326) (not b!3835286) (not b!3834885) (not bm!281859) b_and!285229 (not b!3835021) (not d!1138546) (not b!3835360) b_and!285211 (not b!3835382) (not b_lambda!112121) (not b!3835272) b_and!285227 (not d!1138442) (not b!3835266) (not b!3835426) (not b!3835148) (not b!3834881) (not b!3835337) (not b!3835149) (not b!3834979) (not b!3835301) (not b_lambda!112113) (not b_next!102607) (not b!3835362) (not d!1138486) (not b!3835283) (not b!3835422) (not b!3834924) (not b!3835326) (not b!3835269) (not d!1138288) (not b!3834980) (not bm!281858) (not b!3835285) (not b!3835410) (not b_next!102609) (not d!1138528) (not b!3835107) (not b_next!102587) (not d!1138438) (not b!3835109) (not b!3835321) (not d!1138512) (not b!3835375) (not d!1138320) b_and!285231 (not b!3835398))
(check-sat (not b_next!102615) (not b_next!102581) (not b_next!102613) (not b_next!102567) b_and!285127 b_and!285133 b_and!285233 (not b_next!102565) b_and!285217 (not b_next!102607) (not b_next!102609) (not b_next!102611) (not b_next!102559) b_and!285215 (not b_next!102585) b_and!285129 b_and!285137 b_and!285225 (not b_next!102589) b_and!285223 (not b_next!102583) (not b_next!102561) b_and!285213 b_and!285131 (not b_next!102591) (not b_next!102557) b_and!285219 (not b_next!102605) b_and!285221 b_and!285135 (not b_next!102563) b_and!285229 b_and!285211 b_and!285227 b_and!285231 (not b_next!102587))
