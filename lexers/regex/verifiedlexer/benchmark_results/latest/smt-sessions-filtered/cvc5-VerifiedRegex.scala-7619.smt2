; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!402532 () Bool)

(assert start!402532)

(declare-fun b!4211861 () Bool)

(declare-fun b_free!123299 () Bool)

(declare-fun b_next!124003 () Bool)

(assert (=> b!4211861 (= b_free!123299 (not b_next!124003))))

(declare-fun tp!1287916 () Bool)

(declare-fun b_and!331509 () Bool)

(assert (=> b!4211861 (= tp!1287916 b_and!331509)))

(declare-fun b_free!123301 () Bool)

(declare-fun b_next!124005 () Bool)

(assert (=> b!4211861 (= b_free!123301 (not b_next!124005))))

(declare-fun tp!1287927 () Bool)

(declare-fun b_and!331511 () Bool)

(assert (=> b!4211861 (= tp!1287927 b_and!331511)))

(declare-fun b!4211882 () Bool)

(declare-fun b_free!123303 () Bool)

(declare-fun b_next!124007 () Bool)

(assert (=> b!4211882 (= b_free!123303 (not b_next!124007))))

(declare-fun tp!1287926 () Bool)

(declare-fun b_and!331513 () Bool)

(assert (=> b!4211882 (= tp!1287926 b_and!331513)))

(declare-fun b_free!123305 () Bool)

(declare-fun b_next!124009 () Bool)

(assert (=> b!4211882 (= b_free!123305 (not b_next!124009))))

(declare-fun tp!1287918 () Bool)

(declare-fun b_and!331515 () Bool)

(assert (=> b!4211882 (= tp!1287918 b_and!331515)))

(declare-fun b!4211849 () Bool)

(declare-fun b_free!123307 () Bool)

(declare-fun b_next!124011 () Bool)

(assert (=> b!4211849 (= b_free!123307 (not b_next!124011))))

(declare-fun tp!1287913 () Bool)

(declare-fun b_and!331517 () Bool)

(assert (=> b!4211849 (= tp!1287913 b_and!331517)))

(declare-fun b_free!123309 () Bool)

(declare-fun b_next!124013 () Bool)

(assert (=> b!4211849 (= b_free!123309 (not b_next!124013))))

(declare-fun tp!1287924 () Bool)

(declare-fun b_and!331519 () Bool)

(assert (=> b!4211849 (= tp!1287924 b_and!331519)))

(declare-fun b!4211879 () Bool)

(declare-fun b_free!123311 () Bool)

(declare-fun b_next!124015 () Bool)

(assert (=> b!4211879 (= b_free!123311 (not b_next!124015))))

(declare-fun tp!1287910 () Bool)

(declare-fun b_and!331521 () Bool)

(assert (=> b!4211879 (= tp!1287910 b_and!331521)))

(declare-fun b_free!123313 () Bool)

(declare-fun b_next!124017 () Bool)

(assert (=> b!4211879 (= b_free!123313 (not b_next!124017))))

(declare-fun tp!1287914 () Bool)

(declare-fun b_and!331523 () Bool)

(assert (=> b!4211879 (= tp!1287914 b_and!331523)))

(declare-fun e!2614627 () Bool)

(assert (=> b!4211849 (= e!2614627 (and tp!1287913 tp!1287924))))

(declare-fun b!4211850 () Bool)

(declare-fun res!1730271 () Bool)

(declare-fun e!2614633 () Bool)

(assert (=> b!4211850 (=> res!1730271 e!2614633)))

(declare-datatypes ((LexerInterface!7346 0))(
  ( (LexerInterfaceExt!7343 (__x!28185 Int)) (Lexer!7344) )
))
(declare-fun thiss!26544 () LexerInterface!7346)

(declare-datatypes ((List!46430 0))(
  ( (Nil!46306) (Cons!46306 (h!51726 (_ BitVec 16)) (t!348069 List!46430)) )
))
(declare-datatypes ((TokenValue!7981 0))(
  ( (FloatLiteralValue!15962 (text!56312 List!46430)) (TokenValueExt!7980 (__x!28186 Int)) (Broken!39905 (value!241408 List!46430)) (Object!8104) (End!7981) (Def!7981) (Underscore!7981) (Match!7981) (Else!7981) (Error!7981) (Case!7981) (If!7981) (Extends!7981) (Abstract!7981) (Class!7981) (Val!7981) (DelimiterValue!15962 (del!8041 List!46430)) (KeywordValue!7987 (value!241409 List!46430)) (CommentValue!15962 (value!241410 List!46430)) (WhitespaceValue!15962 (value!241411 List!46430)) (IndentationValue!7981 (value!241412 List!46430)) (String!53776) (Int32!7981) (Broken!39906 (value!241413 List!46430)) (Boolean!7982) (Unit!65425) (OperatorValue!7984 (op!8041 List!46430)) (IdentifierValue!15962 (value!241414 List!46430)) (IdentifierValue!15963 (value!241415 List!46430)) (WhitespaceValue!15963 (value!241416 List!46430)) (True!15962) (False!15962) (Broken!39907 (value!241417 List!46430)) (Broken!39908 (value!241418 List!46430)) (True!15963) (RightBrace!7981) (RightBracket!7981) (Colon!7981) (Null!7981) (Comma!7981) (LeftBracket!7981) (False!15963) (LeftBrace!7981) (ImaginaryLiteralValue!7981 (text!56313 List!46430)) (StringLiteralValue!23943 (value!241419 List!46430)) (EOFValue!7981 (value!241420 List!46430)) (IdentValue!7981 (value!241421 List!46430)) (DelimiterValue!15963 (value!241422 List!46430)) (DedentValue!7981 (value!241423 List!46430)) (NewLineValue!7981 (value!241424 List!46430)) (IntegerValue!23943 (value!241425 (_ BitVec 32)) (text!56314 List!46430)) (IntegerValue!23944 (value!241426 Int) (text!56315 List!46430)) (Times!7981) (Or!7981) (Equal!7981) (Minus!7981) (Broken!39909 (value!241427 List!46430)) (And!7981) (Div!7981) (LessEqual!7981) (Mod!7981) (Concat!20637) (Not!7981) (Plus!7981) (SpaceValue!7981 (value!241428 List!46430)) (IntegerValue!23945 (value!241429 Int) (text!56316 List!46430)) (StringLiteralValue!23944 (text!56317 List!46430)) (FloatLiteralValue!15963 (text!56318 List!46430)) (BytesLiteralValue!7981 (value!241430 List!46430)) (CommentValue!15963 (value!241431 List!46430)) (StringLiteralValue!23945 (value!241432 List!46430)) (ErrorTokenValue!7981 (msg!8042 List!46430)) )
))
(declare-datatypes ((C!25506 0))(
  ( (C!25507 (val!14915 Int)) )
))
(declare-datatypes ((List!46431 0))(
  ( (Nil!46307) (Cons!46307 (h!51727 C!25506) (t!348070 List!46431)) )
))
(declare-datatypes ((IArray!27929 0))(
  ( (IArray!27930 (innerList!14022 List!46431)) )
))
(declare-datatypes ((Regex!12656 0))(
  ( (ElementMatch!12656 (c!717449 C!25506)) (Concat!20638 (regOne!25824 Regex!12656) (regTwo!25824 Regex!12656)) (EmptyExpr!12656) (Star!12656 (reg!12985 Regex!12656)) (EmptyLang!12656) (Union!12656 (regOne!25825 Regex!12656) (regTwo!25825 Regex!12656)) )
))
(declare-datatypes ((String!53777 0))(
  ( (String!53778 (value!241433 String)) )
))
(declare-datatypes ((Conc!13962 0))(
  ( (Node!13962 (left!34473 Conc!13962) (right!34803 Conc!13962) (csize!28154 Int) (cheight!14173 Int)) (Leaf!21582 (xs!17268 IArray!27929) (csize!28155 Int)) (Empty!13962) )
))
(declare-datatypes ((BalanceConc!27518 0))(
  ( (BalanceConc!27519 (c!717450 Conc!13962)) )
))
(declare-datatypes ((TokenValueInjection!15390 0))(
  ( (TokenValueInjection!15391 (toValue!10471 Int) (toChars!10330 Int)) )
))
(declare-datatypes ((Rule!15302 0))(
  ( (Rule!15303 (regex!7751 Regex!12656) (tag!8615 String!53777) (isSeparator!7751 Bool) (transformation!7751 TokenValueInjection!15390)) )
))
(declare-datatypes ((List!46432 0))(
  ( (Nil!46308) (Cons!46308 (h!51728 Rule!15302) (t!348071 List!46432)) )
))
(declare-fun rules!3967 () List!46432)

(declare-fun rulesValidInductive!2877 (LexerInterface!7346 List!46432) Bool)

(assert (=> b!4211850 (= res!1730271 (not (rulesValidInductive!2877 thiss!26544 (t!348071 rules!3967))))))

(declare-fun b!4211851 () Bool)

(declare-fun res!1730267 () Bool)

(assert (=> b!4211851 (=> res!1730267 e!2614633)))

(declare-datatypes ((Token!14204 0))(
  ( (Token!14205 (value!241434 TokenValue!7981) (rule!10867 Rule!15302) (size!34016 Int) (originalCharacters!8133 List!46431)) )
))
(declare-datatypes ((tuple2!44048 0))(
  ( (tuple2!44049 (_1!25158 Token!14204) (_2!25158 List!46431)) )
))
(declare-datatypes ((Option!9939 0))(
  ( (None!9938) (Some!9938 (v!40810 tuple2!44048)) )
))
(declare-fun lt!1499258 () Option!9939)

(declare-fun input!3517 () List!46431)

(declare-fun maxPrefixOneRule!3341 (LexerInterface!7346 Rule!15302 List!46431) Option!9939)

(assert (=> b!4211851 (= res!1730267 (not (= (maxPrefixOneRule!3341 thiss!26544 (h!51728 rules!3967) input!3517) lt!1499258)))))

(declare-fun b!4211852 () Bool)

(declare-fun res!1730275 () Bool)

(declare-fun e!2614615 () Bool)

(assert (=> b!4211852 (=> (not res!1730275) (not e!2614615))))

(declare-fun p!3001 () List!46431)

(declare-fun isPrefix!4610 (List!46431 List!46431) Bool)

(assert (=> b!4211852 (= res!1730275 (isPrefix!4610 p!3001 input!3517))))

(declare-fun res!1730272 () Bool)

(assert (=> start!402532 (=> (not res!1730272) (not e!2614615))))

(assert (=> start!402532 (= res!1730272 (is-Lexer!7344 thiss!26544))))

(assert (=> start!402532 e!2614615))

(declare-fun tBis!41 () Token!14204)

(declare-fun e!2614629 () Bool)

(declare-fun inv!60928 (Token!14204) Bool)

(assert (=> start!402532 (and (inv!60928 tBis!41) e!2614629)))

(assert (=> start!402532 true))

(declare-fun e!2614616 () Bool)

(assert (=> start!402532 e!2614616))

(declare-fun e!2614614 () Bool)

(assert (=> start!402532 e!2614614))

(declare-fun e!2614623 () Bool)

(assert (=> start!402532 e!2614623))

(declare-fun e!2614624 () Bool)

(assert (=> start!402532 e!2614624))

(declare-fun t!8364 () Token!14204)

(declare-fun e!2614635 () Bool)

(assert (=> start!402532 (and (inv!60928 t!8364) e!2614635)))

(declare-fun e!2614631 () Bool)

(assert (=> start!402532 e!2614631))

(declare-fun e!2614628 () Bool)

(assert (=> start!402532 e!2614628))

(declare-fun e!2614622 () Bool)

(assert (=> start!402532 e!2614622))

(declare-fun b!4211853 () Bool)

(declare-fun res!1730263 () Bool)

(assert (=> b!4211853 (=> res!1730263 e!2614633)))

(declare-fun pBis!121 () List!46431)

(declare-fun list!16746 (BalanceConc!27518) List!46431)

(declare-fun charsOf!5174 (Token!14204) BalanceConc!27518)

(assert (=> b!4211853 (= res!1730263 (not (= (list!16746 (charsOf!5174 tBis!41)) pBis!121)))))

(declare-fun e!2614612 () Bool)

(declare-fun b!4211854 () Bool)

(declare-fun tp!1287922 () Bool)

(declare-fun inv!21 (TokenValue!7981) Bool)

(assert (=> b!4211854 (= e!2614629 (and (inv!21 (value!241434 tBis!41)) e!2614612 tp!1287922))))

(declare-fun b!4211855 () Bool)

(declare-fun res!1730270 () Bool)

(assert (=> b!4211855 (=> (not res!1730270) (not e!2614615))))

(declare-fun rBis!178 () Rule!15302)

(declare-fun contains!9572 (List!46432 Rule!15302) Bool)

(assert (=> b!4211855 (= res!1730270 (contains!9572 rules!3967 rBis!178))))

(declare-fun tp!1287919 () Bool)

(declare-fun b!4211856 () Bool)

(declare-fun inv!60925 (String!53777) Bool)

(declare-fun inv!60929 (TokenValueInjection!15390) Bool)

(assert (=> b!4211856 (= e!2614612 (and tp!1287919 (inv!60925 (tag!8615 (rule!10867 tBis!41))) (inv!60929 (transformation!7751 (rule!10867 tBis!41))) e!2614627))))

(declare-fun b!4211857 () Bool)

(declare-fun res!1730276 () Bool)

(assert (=> b!4211857 (=> (not res!1730276) (not e!2614615))))

(assert (=> b!4211857 (= res!1730276 (isPrefix!4610 pBis!121 input!3517))))

(declare-fun e!2614620 () Bool)

(declare-fun b!4211858 () Bool)

(declare-fun tp!1287909 () Bool)

(assert (=> b!4211858 (= e!2614635 (and (inv!21 (value!241434 t!8364)) e!2614620 tp!1287909))))

(declare-fun b!4211859 () Bool)

(declare-fun res!1730268 () Bool)

(assert (=> b!4211859 (=> res!1730268 e!2614633)))

(declare-fun isEmpty!27422 (List!46432) Bool)

(assert (=> b!4211859 (= res!1730268 (isEmpty!27422 (t!348071 rules!3967)))))

(declare-fun tp!1287923 () Bool)

(declare-fun e!2614630 () Bool)

(declare-fun b!4211860 () Bool)

(assert (=> b!4211860 (= e!2614616 (and tp!1287923 (inv!60925 (tag!8615 rBis!178)) (inv!60929 (transformation!7751 rBis!178)) e!2614630))))

(assert (=> b!4211861 (= e!2614630 (and tp!1287916 tp!1287927))))

(declare-fun b!4211862 () Bool)

(assert (=> b!4211862 (= e!2614633 (contains!9572 (t!348071 rules!3967) rBis!178))))

(declare-fun b!4211863 () Bool)

(declare-fun res!1730274 () Bool)

(assert (=> b!4211863 (=> res!1730274 e!2614633)))

(assert (=> b!4211863 (= res!1730274 (not (= (rule!10867 tBis!41) rBis!178)))))

(declare-fun b!4211864 () Bool)

(declare-fun tp_is_empty!22279 () Bool)

(declare-fun tp!1287917 () Bool)

(assert (=> b!4211864 (= e!2614624 (and tp_is_empty!22279 tp!1287917))))

(declare-fun b!4211865 () Bool)

(declare-fun res!1730260 () Bool)

(declare-fun e!2614617 () Bool)

(assert (=> b!4211865 (=> (not res!1730260) (not e!2614617))))

(declare-fun ruleValid!3463 (LexerInterface!7346 Rule!15302) Bool)

(assert (=> b!4211865 (= res!1730260 (ruleValid!3463 thiss!26544 rBis!178))))

(declare-fun b!4211866 () Bool)

(declare-fun tp!1287920 () Bool)

(assert (=> b!4211866 (= e!2614614 (and tp_is_empty!22279 tp!1287920))))

(declare-fun b!4211867 () Bool)

(declare-fun e!2614625 () Bool)

(declare-fun tp!1287921 () Bool)

(assert (=> b!4211867 (= e!2614623 (and e!2614625 tp!1287921))))

(declare-fun b!4211868 () Bool)

(declare-fun tp!1287915 () Bool)

(assert (=> b!4211868 (= e!2614622 (and tp_is_empty!22279 tp!1287915))))

(declare-fun b!4211869 () Bool)

(declare-fun tp!1287928 () Bool)

(assert (=> b!4211869 (= e!2614628 (and tp_is_empty!22279 tp!1287928))))

(declare-fun b!4211870 () Bool)

(declare-fun res!1730262 () Bool)

(assert (=> b!4211870 (=> res!1730262 e!2614633)))

(assert (=> b!4211870 (= res!1730262 (or (and (is-Cons!46308 rules!3967) (is-Nil!46308 (t!348071 rules!3967))) (not (is-Cons!46308 rules!3967)) (= (h!51728 rules!3967) rBis!178)))))

(declare-fun b!4211871 () Bool)

(declare-fun tp!1287925 () Bool)

(assert (=> b!4211871 (= e!2614631 (and tp_is_empty!22279 tp!1287925))))

(declare-fun b!4211872 () Bool)

(declare-fun res!1730269 () Bool)

(assert (=> b!4211872 (=> (not res!1730269) (not e!2614615))))

(declare-fun rulesInvariant!6557 (LexerInterface!7346 List!46432) Bool)

(assert (=> b!4211872 (= res!1730269 (rulesInvariant!6557 thiss!26544 rules!3967))))

(declare-fun b!4211873 () Bool)

(declare-fun res!1730265 () Bool)

(assert (=> b!4211873 (=> (not res!1730265) (not e!2614615))))

(declare-fun suffix!1557 () List!46431)

(declare-fun ++!11825 (List!46431 List!46431) List!46431)

(assert (=> b!4211873 (= res!1730265 (= (++!11825 p!3001 suffix!1557) input!3517))))

(declare-fun b!4211874 () Bool)

(declare-fun res!1730277 () Bool)

(assert (=> b!4211874 (=> res!1730277 e!2614633)))

(declare-fun isEmpty!27423 (Option!9939) Bool)

(declare-fun maxPrefix!4386 (LexerInterface!7346 List!46432 List!46431) Option!9939)

(assert (=> b!4211874 (= res!1730277 (not (isEmpty!27423 (maxPrefix!4386 thiss!26544 (t!348071 rules!3967) input!3517))))))

(declare-fun b!4211875 () Bool)

(declare-fun e!2614618 () Bool)

(declare-fun tp!1287911 () Bool)

(assert (=> b!4211875 (= e!2614620 (and tp!1287911 (inv!60925 (tag!8615 (rule!10867 t!8364))) (inv!60929 (transformation!7751 (rule!10867 t!8364))) e!2614618))))

(declare-fun b!4211876 () Bool)

(assert (=> b!4211876 (= e!2614617 (not e!2614633))))

(declare-fun res!1730261 () Bool)

(assert (=> b!4211876 (=> res!1730261 e!2614633)))

(declare-fun suffixBis!41 () List!46431)

(assert (=> b!4211876 (= res!1730261 (not (= (maxPrefixOneRule!3341 thiss!26544 rBis!178 input!3517) (Some!9938 (tuple2!44049 tBis!41 suffixBis!41)))))))

(assert (=> b!4211876 (isPrefix!4610 input!3517 input!3517)))

(declare-datatypes ((Unit!65426 0))(
  ( (Unit!65427) )
))
(declare-fun lt!1499257 () Unit!65426)

(declare-fun lemmaIsPrefixRefl!3027 (List!46431 List!46431) Unit!65426)

(assert (=> b!4211876 (= lt!1499257 (lemmaIsPrefixRefl!3027 input!3517 input!3517))))

(declare-fun b!4211877 () Bool)

(declare-fun res!1730264 () Bool)

(assert (=> b!4211877 (=> res!1730264 e!2614633)))

(assert (=> b!4211877 (= res!1730264 (not (= (++!11825 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4211878 () Bool)

(assert (=> b!4211878 (= e!2614615 e!2614617)))

(declare-fun res!1730266 () Bool)

(assert (=> b!4211878 (=> (not res!1730266) (not e!2614617))))

(assert (=> b!4211878 (= res!1730266 (= (maxPrefix!4386 thiss!26544 rules!3967 input!3517) lt!1499258))))

(assert (=> b!4211878 (= lt!1499258 (Some!9938 (tuple2!44049 t!8364 suffix!1557)))))

(assert (=> b!4211879 (= e!2614618 (and tp!1287910 tp!1287914))))

(declare-fun b!4211880 () Bool)

(declare-fun tp!1287912 () Bool)

(declare-fun e!2614626 () Bool)

(assert (=> b!4211880 (= e!2614625 (and tp!1287912 (inv!60925 (tag!8615 (h!51728 rules!3967))) (inv!60929 (transformation!7751 (h!51728 rules!3967))) e!2614626))))

(declare-fun b!4211881 () Bool)

(declare-fun res!1730273 () Bool)

(assert (=> b!4211881 (=> (not res!1730273) (not e!2614615))))

(assert (=> b!4211881 (= res!1730273 (not (isEmpty!27422 rules!3967)))))

(assert (=> b!4211882 (= e!2614626 (and tp!1287926 tp!1287918))))

(assert (= (and start!402532 res!1730272) b!4211873))

(assert (= (and b!4211873 res!1730265) b!4211852))

(assert (= (and b!4211852 res!1730275) b!4211857))

(assert (= (and b!4211857 res!1730276) b!4211881))

(assert (= (and b!4211881 res!1730273) b!4211872))

(assert (= (and b!4211872 res!1730269) b!4211855))

(assert (= (and b!4211855 res!1730270) b!4211878))

(assert (= (and b!4211878 res!1730266) b!4211865))

(assert (= (and b!4211865 res!1730260) b!4211876))

(assert (= (and b!4211876 (not res!1730261)) b!4211863))

(assert (= (and b!4211863 (not res!1730274)) b!4211853))

(assert (= (and b!4211853 (not res!1730263)) b!4211877))

(assert (= (and b!4211877 (not res!1730264)) b!4211870))

(assert (= (and b!4211870 (not res!1730262)) b!4211851))

(assert (= (and b!4211851 (not res!1730267)) b!4211874))

(assert (= (and b!4211874 (not res!1730277)) b!4211859))

(assert (= (and b!4211859 (not res!1730268)) b!4211850))

(assert (= (and b!4211850 (not res!1730271)) b!4211862))

(assert (= b!4211856 b!4211849))

(assert (= b!4211854 b!4211856))

(assert (= start!402532 b!4211854))

(assert (= b!4211860 b!4211861))

(assert (= start!402532 b!4211860))

(assert (= (and start!402532 (is-Cons!46307 p!3001)) b!4211866))

(assert (= b!4211880 b!4211882))

(assert (= b!4211867 b!4211880))

(assert (= (and start!402532 (is-Cons!46308 rules!3967)) b!4211867))

(assert (= (and start!402532 (is-Cons!46307 input!3517)) b!4211864))

(assert (= b!4211875 b!4211879))

(assert (= b!4211858 b!4211875))

(assert (= start!402532 b!4211858))

(assert (= (and start!402532 (is-Cons!46307 pBis!121)) b!4211871))

(assert (= (and start!402532 (is-Cons!46307 suffix!1557)) b!4211869))

(assert (= (and start!402532 (is-Cons!46307 suffixBis!41)) b!4211868))

(declare-fun m!4799711 () Bool)

(assert (=> b!4211855 m!4799711))

(declare-fun m!4799713 () Bool)

(assert (=> b!4211877 m!4799713))

(declare-fun m!4799715 () Bool)

(assert (=> b!4211852 m!4799715))

(declare-fun m!4799717 () Bool)

(assert (=> b!4211865 m!4799717))

(declare-fun m!4799719 () Bool)

(assert (=> b!4211853 m!4799719))

(assert (=> b!4211853 m!4799719))

(declare-fun m!4799721 () Bool)

(assert (=> b!4211853 m!4799721))

(declare-fun m!4799723 () Bool)

(assert (=> start!402532 m!4799723))

(declare-fun m!4799725 () Bool)

(assert (=> start!402532 m!4799725))

(declare-fun m!4799727 () Bool)

(assert (=> b!4211856 m!4799727))

(declare-fun m!4799729 () Bool)

(assert (=> b!4211856 m!4799729))

(declare-fun m!4799731 () Bool)

(assert (=> b!4211880 m!4799731))

(declare-fun m!4799733 () Bool)

(assert (=> b!4211880 m!4799733))

(declare-fun m!4799735 () Bool)

(assert (=> b!4211874 m!4799735))

(assert (=> b!4211874 m!4799735))

(declare-fun m!4799737 () Bool)

(assert (=> b!4211874 m!4799737))

(declare-fun m!4799739 () Bool)

(assert (=> b!4211860 m!4799739))

(declare-fun m!4799741 () Bool)

(assert (=> b!4211860 m!4799741))

(declare-fun m!4799743 () Bool)

(assert (=> b!4211858 m!4799743))

(declare-fun m!4799745 () Bool)

(assert (=> b!4211873 m!4799745))

(declare-fun m!4799747 () Bool)

(assert (=> b!4211881 m!4799747))

(declare-fun m!4799749 () Bool)

(assert (=> b!4211859 m!4799749))

(declare-fun m!4799751 () Bool)

(assert (=> b!4211878 m!4799751))

(declare-fun m!4799753 () Bool)

(assert (=> b!4211854 m!4799753))

(declare-fun m!4799755 () Bool)

(assert (=> b!4211876 m!4799755))

(declare-fun m!4799757 () Bool)

(assert (=> b!4211876 m!4799757))

(declare-fun m!4799759 () Bool)

(assert (=> b!4211876 m!4799759))

(declare-fun m!4799761 () Bool)

(assert (=> b!4211850 m!4799761))

(declare-fun m!4799763 () Bool)

(assert (=> b!4211875 m!4799763))

(declare-fun m!4799765 () Bool)

(assert (=> b!4211875 m!4799765))

(declare-fun m!4799767 () Bool)

(assert (=> b!4211872 m!4799767))

(declare-fun m!4799769 () Bool)

(assert (=> b!4211851 m!4799769))

(declare-fun m!4799771 () Bool)

(assert (=> b!4211857 m!4799771))

(declare-fun m!4799773 () Bool)

(assert (=> b!4211862 m!4799773))

(push 1)

(assert b_and!331517)

(assert (not b_next!124017))

(assert (not b!4211859))

(assert (not b!4211867))

(assert (not b!4211864))

(assert (not b!4211873))

(assert (not b!4211865))

(assert (not b!4211851))

(assert b_and!331521)

(assert (not b!4211857))

(assert (not b_next!124003))

(assert b_and!331511)

(assert (not b!4211868))

(assert (not b!4211878))

(assert (not b!4211858))

(assert (not b!4211853))

(assert (not b!4211881))

(assert (not b!4211850))

(assert (not b_next!124005))

(assert (not b_next!124013))

(assert (not b!4211871))

(assert (not b_next!124011))

(assert b_and!331513)

(assert b_and!331509)

(assert (not b_next!124007))

(assert b_and!331523)

(assert (not b!4211872))

(assert (not b!4211866))

(assert (not b!4211876))

(assert (not b!4211880))

(assert (not b!4211854))

(assert (not b!4211860))

(assert (not b_next!124009))

(assert tp_is_empty!22279)

(assert (not b!4211855))

(assert b_and!331515)

(assert (not b!4211877))

(assert (not b!4211869))

(assert (not b!4211862))

(assert (not b!4211875))

(assert (not start!402532))

(assert b_and!331519)

(assert (not b_next!124015))

(assert (not b!4211874))

(assert (not b!4211852))

(assert (not b!4211856))

(check-sat)

(pop 1)

(push 1)

(assert b_and!331517)

(assert (not b_next!124017))

(assert b_and!331523)

(assert (not b_next!124009))

(assert b_and!331521)

(assert (not b_next!124003))

(assert b_and!331511)

(assert b_and!331515)

(assert (not b_next!124005))

(assert (not b_next!124013))

(assert (not b_next!124011))

(assert b_and!331513)

(assert b_and!331509)

(assert (not b_next!124007))

(assert b_and!331519)

(assert (not b_next!124015))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4211994 () Bool)

(declare-fun e!2614716 () List!46431)

(assert (=> b!4211994 (= e!2614716 (Cons!46307 (h!51727 pBis!121) (++!11825 (t!348070 pBis!121) suffixBis!41)))))

(declare-fun lt!1499267 () List!46431)

(declare-fun b!4211996 () Bool)

(declare-fun e!2614715 () Bool)

(assert (=> b!4211996 (= e!2614715 (or (not (= suffixBis!41 Nil!46307)) (= lt!1499267 pBis!121)))))

(declare-fun b!4211993 () Bool)

(assert (=> b!4211993 (= e!2614716 suffixBis!41)))

(declare-fun b!4211995 () Bool)

(declare-fun res!1730348 () Bool)

(assert (=> b!4211995 (=> (not res!1730348) (not e!2614715))))

(declare-fun size!34018 (List!46431) Int)

(assert (=> b!4211995 (= res!1730348 (= (size!34018 lt!1499267) (+ (size!34018 pBis!121) (size!34018 suffixBis!41))))))

(declare-fun d!1241276 () Bool)

(assert (=> d!1241276 e!2614715))

(declare-fun res!1730349 () Bool)

(assert (=> d!1241276 (=> (not res!1730349) (not e!2614715))))

(declare-fun content!7250 (List!46431) (Set C!25506))

(assert (=> d!1241276 (= res!1730349 (= (content!7250 lt!1499267) (set.union (content!7250 pBis!121) (content!7250 suffixBis!41))))))

(assert (=> d!1241276 (= lt!1499267 e!2614716)))

(declare-fun c!717456 () Bool)

(assert (=> d!1241276 (= c!717456 (is-Nil!46307 pBis!121))))

(assert (=> d!1241276 (= (++!11825 pBis!121 suffixBis!41) lt!1499267)))

(assert (= (and d!1241276 c!717456) b!4211993))

(assert (= (and d!1241276 (not c!717456)) b!4211994))

(assert (= (and d!1241276 res!1730349) b!4211995))

(assert (= (and b!4211995 res!1730348) b!4211996))

(declare-fun m!4799839 () Bool)

(assert (=> b!4211994 m!4799839))

(declare-fun m!4799841 () Bool)

(assert (=> b!4211995 m!4799841))

(declare-fun m!4799843 () Bool)

(assert (=> b!4211995 m!4799843))

(declare-fun m!4799845 () Bool)

(assert (=> b!4211995 m!4799845))

(declare-fun m!4799847 () Bool)

(assert (=> d!1241276 m!4799847))

(declare-fun m!4799849 () Bool)

(assert (=> d!1241276 m!4799849))

(declare-fun m!4799851 () Bool)

(assert (=> d!1241276 m!4799851))

(assert (=> b!4211877 d!1241276))

(declare-fun d!1241278 () Bool)

(declare-fun lt!1499270 () Bool)

(declare-fun content!7251 (List!46432) (Set Rule!15302))

(assert (=> d!1241278 (= lt!1499270 (set.member rBis!178 (content!7251 rules!3967)))))

(declare-fun e!2614721 () Bool)

(assert (=> d!1241278 (= lt!1499270 e!2614721)))

(declare-fun res!1730355 () Bool)

(assert (=> d!1241278 (=> (not res!1730355) (not e!2614721))))

(assert (=> d!1241278 (= res!1730355 (is-Cons!46308 rules!3967))))

(assert (=> d!1241278 (= (contains!9572 rules!3967 rBis!178) lt!1499270)))

(declare-fun b!4212001 () Bool)

(declare-fun e!2614722 () Bool)

(assert (=> b!4212001 (= e!2614721 e!2614722)))

(declare-fun res!1730354 () Bool)

(assert (=> b!4212001 (=> res!1730354 e!2614722)))

(assert (=> b!4212001 (= res!1730354 (= (h!51728 rules!3967) rBis!178))))

(declare-fun b!4212002 () Bool)

(assert (=> b!4212002 (= e!2614722 (contains!9572 (t!348071 rules!3967) rBis!178))))

(assert (= (and d!1241278 res!1730355) b!4212001))

(assert (= (and b!4212001 (not res!1730354)) b!4212002))

(declare-fun m!4799853 () Bool)

(assert (=> d!1241278 m!4799853))

(declare-fun m!4799855 () Bool)

(assert (=> d!1241278 m!4799855))

(assert (=> b!4212002 m!4799773))

(assert (=> b!4211855 d!1241278))

(declare-fun b!4212021 () Bool)

(declare-fun e!2614731 () Bool)

(declare-fun lt!1499282 () Option!9939)

(declare-fun get!15061 (Option!9939) tuple2!44048)

(assert (=> b!4212021 (= e!2614731 (= (size!34016 (_1!25158 (get!15061 lt!1499282))) (size!34018 (originalCharacters!8133 (_1!25158 (get!15061 lt!1499282))))))))

(declare-fun b!4212022 () Bool)

(declare-fun e!2614732 () Option!9939)

(declare-datatypes ((tuple2!44052 0))(
  ( (tuple2!44053 (_1!25160 List!46431) (_2!25160 List!46431)) )
))
(declare-fun lt!1499284 () tuple2!44052)

(declare-fun apply!10686 (TokenValueInjection!15390 BalanceConc!27518) TokenValue!7981)

(declare-fun seqFromList!5746 (List!46431) BalanceConc!27518)

(declare-fun size!34019 (BalanceConc!27518) Int)

(assert (=> b!4212022 (= e!2614732 (Some!9938 (tuple2!44049 (Token!14205 (apply!10686 (transformation!7751 rBis!178) (seqFromList!5746 (_1!25160 lt!1499284))) rBis!178 (size!34019 (seqFromList!5746 (_1!25160 lt!1499284))) (_1!25160 lt!1499284)) (_2!25160 lt!1499284))))))

(declare-fun lt!1499285 () Unit!65426)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1619 (Regex!12656 List!46431) Unit!65426)

(assert (=> b!4212022 (= lt!1499285 (longestMatchIsAcceptedByMatchOrIsEmpty!1619 (regex!7751 rBis!178) input!3517))))

(declare-fun res!1730374 () Bool)

(declare-fun isEmpty!27426 (List!46431) Bool)

(declare-fun findLongestMatchInner!1646 (Regex!12656 List!46431 Int List!46431 List!46431 Int) tuple2!44052)

(assert (=> b!4212022 (= res!1730374 (isEmpty!27426 (_1!25160 (findLongestMatchInner!1646 (regex!7751 rBis!178) Nil!46307 (size!34018 Nil!46307) input!3517 input!3517 (size!34018 input!3517)))))))

(declare-fun e!2614734 () Bool)

(assert (=> b!4212022 (=> res!1730374 e!2614734)))

(assert (=> b!4212022 e!2614734))

(declare-fun lt!1499281 () Unit!65426)

(assert (=> b!4212022 (= lt!1499281 lt!1499285)))

(declare-fun lt!1499283 () Unit!65426)

(declare-fun lemmaSemiInverse!2487 (TokenValueInjection!15390 BalanceConc!27518) Unit!65426)

(assert (=> b!4212022 (= lt!1499283 (lemmaSemiInverse!2487 (transformation!7751 rBis!178) (seqFromList!5746 (_1!25160 lt!1499284))))))

(declare-fun b!4212023 () Bool)

(declare-fun res!1730376 () Bool)

(assert (=> b!4212023 (=> (not res!1730376) (not e!2614731))))

(assert (=> b!4212023 (= res!1730376 (= (rule!10867 (_1!25158 (get!15061 lt!1499282))) rBis!178))))

(declare-fun b!4212025 () Bool)

(declare-fun res!1730372 () Bool)

(assert (=> b!4212025 (=> (not res!1730372) (not e!2614731))))

(assert (=> b!4212025 (= res!1730372 (= (value!241434 (_1!25158 (get!15061 lt!1499282))) (apply!10686 (transformation!7751 (rule!10867 (_1!25158 (get!15061 lt!1499282)))) (seqFromList!5746 (originalCharacters!8133 (_1!25158 (get!15061 lt!1499282)))))))))

(declare-fun b!4212026 () Bool)

(assert (=> b!4212026 (= e!2614732 None!9938)))

(declare-fun b!4212027 () Bool)

(declare-fun matchR!6365 (Regex!12656 List!46431) Bool)

(assert (=> b!4212027 (= e!2614734 (matchR!6365 (regex!7751 rBis!178) (_1!25160 (findLongestMatchInner!1646 (regex!7751 rBis!178) Nil!46307 (size!34018 Nil!46307) input!3517 input!3517 (size!34018 input!3517)))))))

(declare-fun b!4212028 () Bool)

(declare-fun res!1730370 () Bool)

(assert (=> b!4212028 (=> (not res!1730370) (not e!2614731))))

(assert (=> b!4212028 (= res!1730370 (= (++!11825 (list!16746 (charsOf!5174 (_1!25158 (get!15061 lt!1499282)))) (_2!25158 (get!15061 lt!1499282))) input!3517))))

(declare-fun b!4212029 () Bool)

(declare-fun res!1730371 () Bool)

(assert (=> b!4212029 (=> (not res!1730371) (not e!2614731))))

(assert (=> b!4212029 (= res!1730371 (< (size!34018 (_2!25158 (get!15061 lt!1499282))) (size!34018 input!3517)))))

(declare-fun d!1241280 () Bool)

(declare-fun e!2614733 () Bool)

(assert (=> d!1241280 e!2614733))

(declare-fun res!1730375 () Bool)

(assert (=> d!1241280 (=> res!1730375 e!2614733)))

(assert (=> d!1241280 (= res!1730375 (isEmpty!27423 lt!1499282))))

(assert (=> d!1241280 (= lt!1499282 e!2614732)))

(declare-fun c!717459 () Bool)

(assert (=> d!1241280 (= c!717459 (isEmpty!27426 (_1!25160 lt!1499284)))))

(declare-fun findLongestMatch!1559 (Regex!12656 List!46431) tuple2!44052)

(assert (=> d!1241280 (= lt!1499284 (findLongestMatch!1559 (regex!7751 rBis!178) input!3517))))

(assert (=> d!1241280 (ruleValid!3463 thiss!26544 rBis!178)))

(assert (=> d!1241280 (= (maxPrefixOneRule!3341 thiss!26544 rBis!178 input!3517) lt!1499282)))

(declare-fun b!4212024 () Bool)

(assert (=> b!4212024 (= e!2614733 e!2614731)))

(declare-fun res!1730373 () Bool)

(assert (=> b!4212024 (=> (not res!1730373) (not e!2614731))))

(assert (=> b!4212024 (= res!1730373 (matchR!6365 (regex!7751 rBis!178) (list!16746 (charsOf!5174 (_1!25158 (get!15061 lt!1499282))))))))

(assert (= (and d!1241280 c!717459) b!4212026))

(assert (= (and d!1241280 (not c!717459)) b!4212022))

(assert (= (and b!4212022 (not res!1730374)) b!4212027))

(assert (= (and d!1241280 (not res!1730375)) b!4212024))

(assert (= (and b!4212024 res!1730373) b!4212028))

(assert (= (and b!4212028 res!1730370) b!4212029))

(assert (= (and b!4212029 res!1730371) b!4212023))

(assert (= (and b!4212023 res!1730376) b!4212025))

(assert (= (and b!4212025 res!1730372) b!4212021))

(declare-fun m!4799857 () Bool)

(assert (=> b!4212024 m!4799857))

(declare-fun m!4799859 () Bool)

(assert (=> b!4212024 m!4799859))

(assert (=> b!4212024 m!4799859))

(declare-fun m!4799861 () Bool)

(assert (=> b!4212024 m!4799861))

(assert (=> b!4212024 m!4799861))

(declare-fun m!4799863 () Bool)

(assert (=> b!4212024 m!4799863))

(assert (=> b!4212023 m!4799857))

(assert (=> b!4212029 m!4799857))

(declare-fun m!4799865 () Bool)

(assert (=> b!4212029 m!4799865))

(declare-fun m!4799867 () Bool)

(assert (=> b!4212029 m!4799867))

(declare-fun m!4799869 () Bool)

(assert (=> b!4212027 m!4799869))

(assert (=> b!4212027 m!4799867))

(assert (=> b!4212027 m!4799869))

(assert (=> b!4212027 m!4799867))

(declare-fun m!4799871 () Bool)

(assert (=> b!4212027 m!4799871))

(declare-fun m!4799873 () Bool)

(assert (=> b!4212027 m!4799873))

(assert (=> b!4212025 m!4799857))

(declare-fun m!4799875 () Bool)

(assert (=> b!4212025 m!4799875))

(assert (=> b!4212025 m!4799875))

(declare-fun m!4799877 () Bool)

(assert (=> b!4212025 m!4799877))

(assert (=> b!4212021 m!4799857))

(declare-fun m!4799879 () Bool)

(assert (=> b!4212021 m!4799879))

(declare-fun m!4799881 () Bool)

(assert (=> b!4212022 m!4799881))

(declare-fun m!4799883 () Bool)

(assert (=> b!4212022 m!4799883))

(assert (=> b!4212022 m!4799881))

(assert (=> b!4212022 m!4799869))

(assert (=> b!4212022 m!4799867))

(assert (=> b!4212022 m!4799871))

(assert (=> b!4212022 m!4799881))

(declare-fun m!4799885 () Bool)

(assert (=> b!4212022 m!4799885))

(declare-fun m!4799887 () Bool)

(assert (=> b!4212022 m!4799887))

(declare-fun m!4799889 () Bool)

(assert (=> b!4212022 m!4799889))

(assert (=> b!4212022 m!4799869))

(assert (=> b!4212022 m!4799867))

(assert (=> b!4212022 m!4799881))

(declare-fun m!4799891 () Bool)

(assert (=> b!4212022 m!4799891))

(assert (=> b!4212028 m!4799857))

(assert (=> b!4212028 m!4799859))

(assert (=> b!4212028 m!4799859))

(assert (=> b!4212028 m!4799861))

(assert (=> b!4212028 m!4799861))

(declare-fun m!4799893 () Bool)

(assert (=> b!4212028 m!4799893))

(declare-fun m!4799895 () Bool)

(assert (=> d!1241280 m!4799895))

(declare-fun m!4799897 () Bool)

(assert (=> d!1241280 m!4799897))

(declare-fun m!4799899 () Bool)

(assert (=> d!1241280 m!4799899))

(assert (=> d!1241280 m!4799717))

(assert (=> b!4211876 d!1241280))

(declare-fun d!1241284 () Bool)

(declare-fun e!2614742 () Bool)

(assert (=> d!1241284 e!2614742))

(declare-fun res!1730388 () Bool)

(assert (=> d!1241284 (=> res!1730388 e!2614742)))

(declare-fun lt!1499288 () Bool)

(assert (=> d!1241284 (= res!1730388 (not lt!1499288))))

(declare-fun e!2614743 () Bool)

(assert (=> d!1241284 (= lt!1499288 e!2614743)))

(declare-fun res!1730385 () Bool)

(assert (=> d!1241284 (=> res!1730385 e!2614743)))

(assert (=> d!1241284 (= res!1730385 (is-Nil!46307 input!3517))))

(assert (=> d!1241284 (= (isPrefix!4610 input!3517 input!3517) lt!1499288)))

(declare-fun b!4212039 () Bool)

(declare-fun res!1730386 () Bool)

(declare-fun e!2614741 () Bool)

(assert (=> b!4212039 (=> (not res!1730386) (not e!2614741))))

(declare-fun head!8935 (List!46431) C!25506)

(assert (=> b!4212039 (= res!1730386 (= (head!8935 input!3517) (head!8935 input!3517)))))

(declare-fun b!4212040 () Bool)

(declare-fun tail!6782 (List!46431) List!46431)

(assert (=> b!4212040 (= e!2614741 (isPrefix!4610 (tail!6782 input!3517) (tail!6782 input!3517)))))

(declare-fun b!4212038 () Bool)

(assert (=> b!4212038 (= e!2614743 e!2614741)))

(declare-fun res!1730387 () Bool)

(assert (=> b!4212038 (=> (not res!1730387) (not e!2614741))))

(assert (=> b!4212038 (= res!1730387 (not (is-Nil!46307 input!3517)))))

(declare-fun b!4212041 () Bool)

(assert (=> b!4212041 (= e!2614742 (>= (size!34018 input!3517) (size!34018 input!3517)))))

(assert (= (and d!1241284 (not res!1730385)) b!4212038))

(assert (= (and b!4212038 res!1730387) b!4212039))

(assert (= (and b!4212039 res!1730386) b!4212040))

(assert (= (and d!1241284 (not res!1730388)) b!4212041))

(declare-fun m!4799901 () Bool)

(assert (=> b!4212039 m!4799901))

(assert (=> b!4212039 m!4799901))

(declare-fun m!4799903 () Bool)

(assert (=> b!4212040 m!4799903))

(assert (=> b!4212040 m!4799903))

(assert (=> b!4212040 m!4799903))

(assert (=> b!4212040 m!4799903))

(declare-fun m!4799905 () Bool)

(assert (=> b!4212040 m!4799905))

(assert (=> b!4212041 m!4799867))

(assert (=> b!4212041 m!4799867))

(assert (=> b!4211876 d!1241284))

(declare-fun d!1241286 () Bool)

(assert (=> d!1241286 (isPrefix!4610 input!3517 input!3517)))

(declare-fun lt!1499291 () Unit!65426)

(declare-fun choose!25803 (List!46431 List!46431) Unit!65426)

(assert (=> d!1241286 (= lt!1499291 (choose!25803 input!3517 input!3517))))

(assert (=> d!1241286 (= (lemmaIsPrefixRefl!3027 input!3517 input!3517) lt!1499291)))

(declare-fun bs!597456 () Bool)

(assert (= bs!597456 d!1241286))

(assert (=> bs!597456 m!4799757))

(declare-fun m!4799907 () Bool)

(assert (=> bs!597456 m!4799907))

(assert (=> b!4211876 d!1241286))

(declare-fun d!1241288 () Bool)

(declare-fun res!1730393 () Bool)

(declare-fun e!2614746 () Bool)

(assert (=> d!1241288 (=> (not res!1730393) (not e!2614746))))

(declare-fun validRegex!5745 (Regex!12656) Bool)

(assert (=> d!1241288 (= res!1730393 (validRegex!5745 (regex!7751 rBis!178)))))

(assert (=> d!1241288 (= (ruleValid!3463 thiss!26544 rBis!178) e!2614746)))

(declare-fun b!4212046 () Bool)

(declare-fun res!1730394 () Bool)

(assert (=> b!4212046 (=> (not res!1730394) (not e!2614746))))

(declare-fun nullable!4458 (Regex!12656) Bool)

(assert (=> b!4212046 (= res!1730394 (not (nullable!4458 (regex!7751 rBis!178))))))

(declare-fun b!4212047 () Bool)

(assert (=> b!4212047 (= e!2614746 (not (= (tag!8615 rBis!178) (String!53778 ""))))))

(assert (= (and d!1241288 res!1730393) b!4212046))

(assert (= (and b!4212046 res!1730394) b!4212047))

(declare-fun m!4799909 () Bool)

(assert (=> d!1241288 m!4799909))

(declare-fun m!4799911 () Bool)

(assert (=> b!4212046 m!4799911))

(assert (=> b!4211865 d!1241288))

(declare-fun d!1241290 () Bool)

(declare-fun c!717465 () Bool)

(assert (=> d!1241290 (= c!717465 (is-IntegerValue!23943 (value!241434 tBis!41)))))

(declare-fun e!2614754 () Bool)

(assert (=> d!1241290 (= (inv!21 (value!241434 tBis!41)) e!2614754)))

(declare-fun b!4212058 () Bool)

(declare-fun inv!16 (TokenValue!7981) Bool)

(assert (=> b!4212058 (= e!2614754 (inv!16 (value!241434 tBis!41)))))

(declare-fun b!4212059 () Bool)

(declare-fun res!1730397 () Bool)

(declare-fun e!2614753 () Bool)

(assert (=> b!4212059 (=> res!1730397 e!2614753)))

(assert (=> b!4212059 (= res!1730397 (not (is-IntegerValue!23945 (value!241434 tBis!41))))))

(declare-fun e!2614755 () Bool)

(assert (=> b!4212059 (= e!2614755 e!2614753)))

(declare-fun b!4212060 () Bool)

(declare-fun inv!15 (TokenValue!7981) Bool)

(assert (=> b!4212060 (= e!2614753 (inv!15 (value!241434 tBis!41)))))

(declare-fun b!4212061 () Bool)

(assert (=> b!4212061 (= e!2614754 e!2614755)))

(declare-fun c!717464 () Bool)

(assert (=> b!4212061 (= c!717464 (is-IntegerValue!23944 (value!241434 tBis!41)))))

(declare-fun b!4212062 () Bool)

(declare-fun inv!17 (TokenValue!7981) Bool)

(assert (=> b!4212062 (= e!2614755 (inv!17 (value!241434 tBis!41)))))

(assert (= (and d!1241290 c!717465) b!4212058))

(assert (= (and d!1241290 (not c!717465)) b!4212061))

(assert (= (and b!4212061 c!717464) b!4212062))

(assert (= (and b!4212061 (not c!717464)) b!4212059))

(assert (= (and b!4212059 (not res!1730397)) b!4212060))

(declare-fun m!4799913 () Bool)

(assert (=> b!4212058 m!4799913))

(declare-fun m!4799915 () Bool)

(assert (=> b!4212060 m!4799915))

(declare-fun m!4799917 () Bool)

(assert (=> b!4212062 m!4799917))

(assert (=> b!4211854 d!1241290))

(declare-fun d!1241292 () Bool)

(assert (=> d!1241292 (= (inv!60925 (tag!8615 (rule!10867 t!8364))) (= (mod (str.len (value!241433 (tag!8615 (rule!10867 t!8364)))) 2) 0))))

(assert (=> b!4211875 d!1241292))

(declare-fun d!1241294 () Bool)

(declare-fun res!1730400 () Bool)

(declare-fun e!2614758 () Bool)

(assert (=> d!1241294 (=> (not res!1730400) (not e!2614758))))

(declare-fun semiInverseModEq!3367 (Int Int) Bool)

(assert (=> d!1241294 (= res!1730400 (semiInverseModEq!3367 (toChars!10330 (transformation!7751 (rule!10867 t!8364))) (toValue!10471 (transformation!7751 (rule!10867 t!8364)))))))

(assert (=> d!1241294 (= (inv!60929 (transformation!7751 (rule!10867 t!8364))) e!2614758)))

(declare-fun b!4212065 () Bool)

(declare-fun equivClasses!3266 (Int Int) Bool)

(assert (=> b!4212065 (= e!2614758 (equivClasses!3266 (toChars!10330 (transformation!7751 (rule!10867 t!8364))) (toValue!10471 (transformation!7751 (rule!10867 t!8364)))))))

(assert (= (and d!1241294 res!1730400) b!4212065))

(declare-fun m!4799919 () Bool)

(assert (=> d!1241294 m!4799919))

(declare-fun m!4799921 () Bool)

(assert (=> b!4212065 m!4799921))

(assert (=> b!4211875 d!1241294))

(declare-fun d!1241296 () Bool)

(declare-fun list!16748 (Conc!13962) List!46431)

(assert (=> d!1241296 (= (list!16746 (charsOf!5174 tBis!41)) (list!16748 (c!717450 (charsOf!5174 tBis!41))))))

(declare-fun bs!597457 () Bool)

(assert (= bs!597457 d!1241296))

(declare-fun m!4799923 () Bool)

(assert (=> bs!597457 m!4799923))

(assert (=> b!4211853 d!1241296))

(declare-fun d!1241298 () Bool)

(declare-fun lt!1499294 () BalanceConc!27518)

(assert (=> d!1241298 (= (list!16746 lt!1499294) (originalCharacters!8133 tBis!41))))

(declare-fun dynLambda!19971 (Int TokenValue!7981) BalanceConc!27518)

(assert (=> d!1241298 (= lt!1499294 (dynLambda!19971 (toChars!10330 (transformation!7751 (rule!10867 tBis!41))) (value!241434 tBis!41)))))

(assert (=> d!1241298 (= (charsOf!5174 tBis!41) lt!1499294)))

(declare-fun b_lambda!124071 () Bool)

(assert (=> (not b_lambda!124071) (not d!1241298)))

(declare-fun tb!252839 () Bool)

(declare-fun t!348076 () Bool)

(assert (=> (and b!4211861 (= (toChars!10330 (transformation!7751 rBis!178)) (toChars!10330 (transformation!7751 (rule!10867 tBis!41)))) t!348076) tb!252839))

(declare-fun b!4212070 () Bool)

(declare-fun e!2614761 () Bool)

(declare-fun tp!1287991 () Bool)

(declare-fun inv!60932 (Conc!13962) Bool)

(assert (=> b!4212070 (= e!2614761 (and (inv!60932 (c!717450 (dynLambda!19971 (toChars!10330 (transformation!7751 (rule!10867 tBis!41))) (value!241434 tBis!41)))) tp!1287991))))

(declare-fun result!308152 () Bool)

(declare-fun inv!60933 (BalanceConc!27518) Bool)

(assert (=> tb!252839 (= result!308152 (and (inv!60933 (dynLambda!19971 (toChars!10330 (transformation!7751 (rule!10867 tBis!41))) (value!241434 tBis!41))) e!2614761))))

(assert (= tb!252839 b!4212070))

(declare-fun m!4799925 () Bool)

(assert (=> b!4212070 m!4799925))

(declare-fun m!4799927 () Bool)

(assert (=> tb!252839 m!4799927))

(assert (=> d!1241298 t!348076))

(declare-fun b_and!331541 () Bool)

(assert (= b_and!331511 (and (=> t!348076 result!308152) b_and!331541)))

(declare-fun tb!252841 () Bool)

(declare-fun t!348078 () Bool)

(assert (=> (and b!4211882 (= (toChars!10330 (transformation!7751 (h!51728 rules!3967))) (toChars!10330 (transformation!7751 (rule!10867 tBis!41)))) t!348078) tb!252841))

(declare-fun result!308156 () Bool)

(assert (= result!308156 result!308152))

(assert (=> d!1241298 t!348078))

(declare-fun b_and!331543 () Bool)

(assert (= b_and!331515 (and (=> t!348078 result!308156) b_and!331543)))

(declare-fun t!348080 () Bool)

(declare-fun tb!252843 () Bool)

(assert (=> (and b!4211849 (= (toChars!10330 (transformation!7751 (rule!10867 tBis!41))) (toChars!10330 (transformation!7751 (rule!10867 tBis!41)))) t!348080) tb!252843))

(declare-fun result!308158 () Bool)

(assert (= result!308158 result!308152))

(assert (=> d!1241298 t!348080))

(declare-fun b_and!331545 () Bool)

(assert (= b_and!331519 (and (=> t!348080 result!308158) b_and!331545)))

(declare-fun tb!252845 () Bool)

(declare-fun t!348082 () Bool)

(assert (=> (and b!4211879 (= (toChars!10330 (transformation!7751 (rule!10867 t!8364))) (toChars!10330 (transformation!7751 (rule!10867 tBis!41)))) t!348082) tb!252845))

(declare-fun result!308160 () Bool)

(assert (= result!308160 result!308152))

(assert (=> d!1241298 t!348082))

(declare-fun b_and!331547 () Bool)

(assert (= b_and!331523 (and (=> t!348082 result!308160) b_and!331547)))

(declare-fun m!4799929 () Bool)

(assert (=> d!1241298 m!4799929))

(declare-fun m!4799931 () Bool)

(assert (=> d!1241298 m!4799931))

(assert (=> b!4211853 d!1241298))

(declare-fun d!1241300 () Bool)

(assert (=> d!1241300 (= (isEmpty!27423 (maxPrefix!4386 thiss!26544 (t!348071 rules!3967) input!3517)) (not (is-Some!9938 (maxPrefix!4386 thiss!26544 (t!348071 rules!3967) input!3517))))))

(assert (=> b!4211874 d!1241300))

(declare-fun call!292977 () Option!9939)

(declare-fun bm!292972 () Bool)

(assert (=> bm!292972 (= call!292977 (maxPrefixOneRule!3341 thiss!26544 (h!51728 (t!348071 rules!3967)) input!3517))))

(declare-fun b!4212107 () Bool)

(declare-fun res!1730434 () Bool)

(declare-fun e!2614777 () Bool)

(assert (=> b!4212107 (=> (not res!1730434) (not e!2614777))))

(declare-fun lt!1499316 () Option!9939)

(assert (=> b!4212107 (= res!1730434 (= (++!11825 (list!16746 (charsOf!5174 (_1!25158 (get!15061 lt!1499316)))) (_2!25158 (get!15061 lt!1499316))) input!3517))))

(declare-fun b!4212108 () Bool)

(declare-fun res!1730430 () Bool)

(assert (=> b!4212108 (=> (not res!1730430) (not e!2614777))))

(assert (=> b!4212108 (= res!1730430 (< (size!34018 (_2!25158 (get!15061 lt!1499316))) (size!34018 input!3517)))))

(declare-fun b!4212109 () Bool)

(assert (=> b!4212109 (= e!2614777 (contains!9572 (t!348071 rules!3967) (rule!10867 (_1!25158 (get!15061 lt!1499316)))))))

(declare-fun b!4212110 () Bool)

(declare-fun res!1730429 () Bool)

(assert (=> b!4212110 (=> (not res!1730429) (not e!2614777))))

(assert (=> b!4212110 (= res!1730429 (= (list!16746 (charsOf!5174 (_1!25158 (get!15061 lt!1499316)))) (originalCharacters!8133 (_1!25158 (get!15061 lt!1499316)))))))

(declare-fun b!4212111 () Bool)

(declare-fun e!2614778 () Option!9939)

(declare-fun lt!1499319 () Option!9939)

(declare-fun lt!1499315 () Option!9939)

(assert (=> b!4212111 (= e!2614778 (ite (and (is-None!9938 lt!1499319) (is-None!9938 lt!1499315)) None!9938 (ite (is-None!9938 lt!1499315) lt!1499319 (ite (is-None!9938 lt!1499319) lt!1499315 (ite (>= (size!34016 (_1!25158 (v!40810 lt!1499319))) (size!34016 (_1!25158 (v!40810 lt!1499315)))) lt!1499319 lt!1499315)))))))

(assert (=> b!4212111 (= lt!1499319 call!292977)))

(assert (=> b!4212111 (= lt!1499315 (maxPrefix!4386 thiss!26544 (t!348071 (t!348071 rules!3967)) input!3517))))

(declare-fun b!4212112 () Bool)

(declare-fun res!1730431 () Bool)

(assert (=> b!4212112 (=> (not res!1730431) (not e!2614777))))

(assert (=> b!4212112 (= res!1730431 (= (value!241434 (_1!25158 (get!15061 lt!1499316))) (apply!10686 (transformation!7751 (rule!10867 (_1!25158 (get!15061 lt!1499316)))) (seqFromList!5746 (originalCharacters!8133 (_1!25158 (get!15061 lt!1499316)))))))))

(declare-fun b!4212113 () Bool)

(declare-fun res!1730432 () Bool)

(assert (=> b!4212113 (=> (not res!1730432) (not e!2614777))))

(assert (=> b!4212113 (= res!1730432 (matchR!6365 (regex!7751 (rule!10867 (_1!25158 (get!15061 lt!1499316)))) (list!16746 (charsOf!5174 (_1!25158 (get!15061 lt!1499316))))))))

(declare-fun d!1241302 () Bool)

(declare-fun e!2614776 () Bool)

(assert (=> d!1241302 e!2614776))

(declare-fun res!1730435 () Bool)

(assert (=> d!1241302 (=> res!1730435 e!2614776)))

(assert (=> d!1241302 (= res!1730435 (isEmpty!27423 lt!1499316))))

(assert (=> d!1241302 (= lt!1499316 e!2614778)))

(declare-fun c!717470 () Bool)

(assert (=> d!1241302 (= c!717470 (and (is-Cons!46308 (t!348071 rules!3967)) (is-Nil!46308 (t!348071 (t!348071 rules!3967)))))))

(declare-fun lt!1499317 () Unit!65426)

(declare-fun lt!1499318 () Unit!65426)

(assert (=> d!1241302 (= lt!1499317 lt!1499318)))

(assert (=> d!1241302 (isPrefix!4610 input!3517 input!3517)))

(assert (=> d!1241302 (= lt!1499318 (lemmaIsPrefixRefl!3027 input!3517 input!3517))))

(assert (=> d!1241302 (rulesValidInductive!2877 thiss!26544 (t!348071 rules!3967))))

(assert (=> d!1241302 (= (maxPrefix!4386 thiss!26544 (t!348071 rules!3967) input!3517) lt!1499316)))

(declare-fun b!4212114 () Bool)

(assert (=> b!4212114 (= e!2614778 call!292977)))

(declare-fun b!4212115 () Bool)

(assert (=> b!4212115 (= e!2614776 e!2614777)))

(declare-fun res!1730433 () Bool)

(assert (=> b!4212115 (=> (not res!1730433) (not e!2614777))))

(declare-fun isDefined!7387 (Option!9939) Bool)

(assert (=> b!4212115 (= res!1730433 (isDefined!7387 lt!1499316))))

(assert (= (and d!1241302 c!717470) b!4212114))

(assert (= (and d!1241302 (not c!717470)) b!4212111))

(assert (= (or b!4212114 b!4212111) bm!292972))

(assert (= (and d!1241302 (not res!1730435)) b!4212115))

(assert (= (and b!4212115 res!1730433) b!4212110))

(assert (= (and b!4212110 res!1730429) b!4212108))

(assert (= (and b!4212108 res!1730430) b!4212107))

(assert (= (and b!4212107 res!1730434) b!4212112))

(assert (= (and b!4212112 res!1730431) b!4212113))

(assert (= (and b!4212113 res!1730432) b!4212109))

(declare-fun m!4799933 () Bool)

(assert (=> b!4212115 m!4799933))

(declare-fun m!4799935 () Bool)

(assert (=> b!4212112 m!4799935))

(declare-fun m!4799937 () Bool)

(assert (=> b!4212112 m!4799937))

(assert (=> b!4212112 m!4799937))

(declare-fun m!4799939 () Bool)

(assert (=> b!4212112 m!4799939))

(assert (=> b!4212110 m!4799935))

(declare-fun m!4799941 () Bool)

(assert (=> b!4212110 m!4799941))

(assert (=> b!4212110 m!4799941))

(declare-fun m!4799943 () Bool)

(assert (=> b!4212110 m!4799943))

(declare-fun m!4799945 () Bool)

(assert (=> b!4212111 m!4799945))

(declare-fun m!4799947 () Bool)

(assert (=> d!1241302 m!4799947))

(assert (=> d!1241302 m!4799757))

(assert (=> d!1241302 m!4799759))

(assert (=> d!1241302 m!4799761))

(assert (=> b!4212108 m!4799935))

(declare-fun m!4799949 () Bool)

(assert (=> b!4212108 m!4799949))

(assert (=> b!4212108 m!4799867))

(assert (=> b!4212107 m!4799935))

(assert (=> b!4212107 m!4799941))

(assert (=> b!4212107 m!4799941))

(assert (=> b!4212107 m!4799943))

(assert (=> b!4212107 m!4799943))

(declare-fun m!4799951 () Bool)

(assert (=> b!4212107 m!4799951))

(assert (=> b!4212113 m!4799935))

(assert (=> b!4212113 m!4799941))

(assert (=> b!4212113 m!4799941))

(assert (=> b!4212113 m!4799943))

(assert (=> b!4212113 m!4799943))

(declare-fun m!4799953 () Bool)

(assert (=> b!4212113 m!4799953))

(declare-fun m!4799955 () Bool)

(assert (=> bm!292972 m!4799955))

(assert (=> b!4212109 m!4799935))

(declare-fun m!4799957 () Bool)

(assert (=> b!4212109 m!4799957))

(assert (=> b!4211874 d!1241302))

(declare-fun d!1241304 () Bool)

(declare-fun e!2614780 () Bool)

(assert (=> d!1241304 e!2614780))

(declare-fun res!1730439 () Bool)

(assert (=> d!1241304 (=> res!1730439 e!2614780)))

(declare-fun lt!1499320 () Bool)

(assert (=> d!1241304 (= res!1730439 (not lt!1499320))))

(declare-fun e!2614781 () Bool)

(assert (=> d!1241304 (= lt!1499320 e!2614781)))

(declare-fun res!1730436 () Bool)

(assert (=> d!1241304 (=> res!1730436 e!2614781)))

(assert (=> d!1241304 (= res!1730436 (is-Nil!46307 p!3001))))

(assert (=> d!1241304 (= (isPrefix!4610 p!3001 input!3517) lt!1499320)))

(declare-fun b!4212117 () Bool)

(declare-fun res!1730437 () Bool)

(declare-fun e!2614779 () Bool)

(assert (=> b!4212117 (=> (not res!1730437) (not e!2614779))))

(assert (=> b!4212117 (= res!1730437 (= (head!8935 p!3001) (head!8935 input!3517)))))

(declare-fun b!4212118 () Bool)

(assert (=> b!4212118 (= e!2614779 (isPrefix!4610 (tail!6782 p!3001) (tail!6782 input!3517)))))

(declare-fun b!4212116 () Bool)

(assert (=> b!4212116 (= e!2614781 e!2614779)))

(declare-fun res!1730438 () Bool)

(assert (=> b!4212116 (=> (not res!1730438) (not e!2614779))))

(assert (=> b!4212116 (= res!1730438 (not (is-Nil!46307 input!3517)))))

(declare-fun b!4212119 () Bool)

(assert (=> b!4212119 (= e!2614780 (>= (size!34018 input!3517) (size!34018 p!3001)))))

(assert (= (and d!1241304 (not res!1730436)) b!4212116))

(assert (= (and b!4212116 res!1730438) b!4212117))

(assert (= (and b!4212117 res!1730437) b!4212118))

(assert (= (and d!1241304 (not res!1730439)) b!4212119))

(declare-fun m!4799959 () Bool)

(assert (=> b!4212117 m!4799959))

(assert (=> b!4212117 m!4799901))

(declare-fun m!4799961 () Bool)

(assert (=> b!4212118 m!4799961))

(assert (=> b!4212118 m!4799903))

(assert (=> b!4212118 m!4799961))

(assert (=> b!4212118 m!4799903))

(declare-fun m!4799963 () Bool)

(assert (=> b!4212118 m!4799963))

(assert (=> b!4212119 m!4799867))

(declare-fun m!4799965 () Bool)

(assert (=> b!4212119 m!4799965))

(assert (=> b!4211852 d!1241304))

(declare-fun b!4212121 () Bool)

(declare-fun e!2614783 () List!46431)

(assert (=> b!4212121 (= e!2614783 (Cons!46307 (h!51727 p!3001) (++!11825 (t!348070 p!3001) suffix!1557)))))

(declare-fun b!4212123 () Bool)

(declare-fun e!2614782 () Bool)

(declare-fun lt!1499321 () List!46431)

(assert (=> b!4212123 (= e!2614782 (or (not (= suffix!1557 Nil!46307)) (= lt!1499321 p!3001)))))

(declare-fun b!4212120 () Bool)

(assert (=> b!4212120 (= e!2614783 suffix!1557)))

(declare-fun b!4212122 () Bool)

(declare-fun res!1730440 () Bool)

(assert (=> b!4212122 (=> (not res!1730440) (not e!2614782))))

(assert (=> b!4212122 (= res!1730440 (= (size!34018 lt!1499321) (+ (size!34018 p!3001) (size!34018 suffix!1557))))))

(declare-fun d!1241306 () Bool)

(assert (=> d!1241306 e!2614782))

(declare-fun res!1730441 () Bool)

(assert (=> d!1241306 (=> (not res!1730441) (not e!2614782))))

(assert (=> d!1241306 (= res!1730441 (= (content!7250 lt!1499321) (set.union (content!7250 p!3001) (content!7250 suffix!1557))))))

(assert (=> d!1241306 (= lt!1499321 e!2614783)))

(declare-fun c!717471 () Bool)

(assert (=> d!1241306 (= c!717471 (is-Nil!46307 p!3001))))

(assert (=> d!1241306 (= (++!11825 p!3001 suffix!1557) lt!1499321)))

(assert (= (and d!1241306 c!717471) b!4212120))

(assert (= (and d!1241306 (not c!717471)) b!4212121))

(assert (= (and d!1241306 res!1730441) b!4212122))

(assert (= (and b!4212122 res!1730440) b!4212123))

(declare-fun m!4799967 () Bool)

(assert (=> b!4212121 m!4799967))

(declare-fun m!4799969 () Bool)

(assert (=> b!4212122 m!4799969))

(assert (=> b!4212122 m!4799965))

(declare-fun m!4799971 () Bool)

(assert (=> b!4212122 m!4799971))

(declare-fun m!4799973 () Bool)

(assert (=> d!1241306 m!4799973))

(declare-fun m!4799975 () Bool)

(assert (=> d!1241306 m!4799975))

(declare-fun m!4799977 () Bool)

(assert (=> d!1241306 m!4799977))

(assert (=> b!4211873 d!1241306))

(declare-fun d!1241308 () Bool)

(declare-fun lt!1499322 () Bool)

(assert (=> d!1241308 (= lt!1499322 (set.member rBis!178 (content!7251 (t!348071 rules!3967))))))

(declare-fun e!2614784 () Bool)

(assert (=> d!1241308 (= lt!1499322 e!2614784)))

(declare-fun res!1730443 () Bool)

(assert (=> d!1241308 (=> (not res!1730443) (not e!2614784))))

(assert (=> d!1241308 (= res!1730443 (is-Cons!46308 (t!348071 rules!3967)))))

(assert (=> d!1241308 (= (contains!9572 (t!348071 rules!3967) rBis!178) lt!1499322)))

(declare-fun b!4212124 () Bool)

(declare-fun e!2614785 () Bool)

(assert (=> b!4212124 (= e!2614784 e!2614785)))

(declare-fun res!1730442 () Bool)

(assert (=> b!4212124 (=> res!1730442 e!2614785)))

(assert (=> b!4212124 (= res!1730442 (= (h!51728 (t!348071 rules!3967)) rBis!178))))

(declare-fun b!4212125 () Bool)

(assert (=> b!4212125 (= e!2614785 (contains!9572 (t!348071 (t!348071 rules!3967)) rBis!178))))

(assert (= (and d!1241308 res!1730443) b!4212124))

(assert (= (and b!4212124 (not res!1730442)) b!4212125))

(declare-fun m!4799979 () Bool)

(assert (=> d!1241308 m!4799979))

(declare-fun m!4799981 () Bool)

(assert (=> d!1241308 m!4799981))

(declare-fun m!4799983 () Bool)

(assert (=> b!4212125 m!4799983))

(assert (=> b!4211862 d!1241308))

(declare-fun b!4212126 () Bool)

(declare-fun e!2614786 () Bool)

(declare-fun lt!1499324 () Option!9939)

(assert (=> b!4212126 (= e!2614786 (= (size!34016 (_1!25158 (get!15061 lt!1499324))) (size!34018 (originalCharacters!8133 (_1!25158 (get!15061 lt!1499324))))))))

(declare-fun b!4212127 () Bool)

(declare-fun e!2614787 () Option!9939)

(declare-fun lt!1499326 () tuple2!44052)

(assert (=> b!4212127 (= e!2614787 (Some!9938 (tuple2!44049 (Token!14205 (apply!10686 (transformation!7751 (h!51728 rules!3967)) (seqFromList!5746 (_1!25160 lt!1499326))) (h!51728 rules!3967) (size!34019 (seqFromList!5746 (_1!25160 lt!1499326))) (_1!25160 lt!1499326)) (_2!25160 lt!1499326))))))

(declare-fun lt!1499327 () Unit!65426)

(assert (=> b!4212127 (= lt!1499327 (longestMatchIsAcceptedByMatchOrIsEmpty!1619 (regex!7751 (h!51728 rules!3967)) input!3517))))

(declare-fun res!1730448 () Bool)

(assert (=> b!4212127 (= res!1730448 (isEmpty!27426 (_1!25160 (findLongestMatchInner!1646 (regex!7751 (h!51728 rules!3967)) Nil!46307 (size!34018 Nil!46307) input!3517 input!3517 (size!34018 input!3517)))))))

(declare-fun e!2614789 () Bool)

(assert (=> b!4212127 (=> res!1730448 e!2614789)))

(assert (=> b!4212127 e!2614789))

(declare-fun lt!1499323 () Unit!65426)

(assert (=> b!4212127 (= lt!1499323 lt!1499327)))

(declare-fun lt!1499325 () Unit!65426)

(assert (=> b!4212127 (= lt!1499325 (lemmaSemiInverse!2487 (transformation!7751 (h!51728 rules!3967)) (seqFromList!5746 (_1!25160 lt!1499326))))))

(declare-fun b!4212128 () Bool)

(declare-fun res!1730450 () Bool)

(assert (=> b!4212128 (=> (not res!1730450) (not e!2614786))))

(assert (=> b!4212128 (= res!1730450 (= (rule!10867 (_1!25158 (get!15061 lt!1499324))) (h!51728 rules!3967)))))

(declare-fun b!4212130 () Bool)

(declare-fun res!1730446 () Bool)

(assert (=> b!4212130 (=> (not res!1730446) (not e!2614786))))

(assert (=> b!4212130 (= res!1730446 (= (value!241434 (_1!25158 (get!15061 lt!1499324))) (apply!10686 (transformation!7751 (rule!10867 (_1!25158 (get!15061 lt!1499324)))) (seqFromList!5746 (originalCharacters!8133 (_1!25158 (get!15061 lt!1499324)))))))))

(declare-fun b!4212131 () Bool)

(assert (=> b!4212131 (= e!2614787 None!9938)))

(declare-fun b!4212132 () Bool)

(assert (=> b!4212132 (= e!2614789 (matchR!6365 (regex!7751 (h!51728 rules!3967)) (_1!25160 (findLongestMatchInner!1646 (regex!7751 (h!51728 rules!3967)) Nil!46307 (size!34018 Nil!46307) input!3517 input!3517 (size!34018 input!3517)))))))

(declare-fun b!4212133 () Bool)

(declare-fun res!1730444 () Bool)

(assert (=> b!4212133 (=> (not res!1730444) (not e!2614786))))

(assert (=> b!4212133 (= res!1730444 (= (++!11825 (list!16746 (charsOf!5174 (_1!25158 (get!15061 lt!1499324)))) (_2!25158 (get!15061 lt!1499324))) input!3517))))

(declare-fun b!4212134 () Bool)

(declare-fun res!1730445 () Bool)

(assert (=> b!4212134 (=> (not res!1730445) (not e!2614786))))

(assert (=> b!4212134 (= res!1730445 (< (size!34018 (_2!25158 (get!15061 lt!1499324))) (size!34018 input!3517)))))

(declare-fun d!1241310 () Bool)

(declare-fun e!2614788 () Bool)

(assert (=> d!1241310 e!2614788))

(declare-fun res!1730449 () Bool)

(assert (=> d!1241310 (=> res!1730449 e!2614788)))

(assert (=> d!1241310 (= res!1730449 (isEmpty!27423 lt!1499324))))

(assert (=> d!1241310 (= lt!1499324 e!2614787)))

(declare-fun c!717472 () Bool)

(assert (=> d!1241310 (= c!717472 (isEmpty!27426 (_1!25160 lt!1499326)))))

(assert (=> d!1241310 (= lt!1499326 (findLongestMatch!1559 (regex!7751 (h!51728 rules!3967)) input!3517))))

(assert (=> d!1241310 (ruleValid!3463 thiss!26544 (h!51728 rules!3967))))

(assert (=> d!1241310 (= (maxPrefixOneRule!3341 thiss!26544 (h!51728 rules!3967) input!3517) lt!1499324)))

(declare-fun b!4212129 () Bool)

(assert (=> b!4212129 (= e!2614788 e!2614786)))

(declare-fun res!1730447 () Bool)

(assert (=> b!4212129 (=> (not res!1730447) (not e!2614786))))

(assert (=> b!4212129 (= res!1730447 (matchR!6365 (regex!7751 (h!51728 rules!3967)) (list!16746 (charsOf!5174 (_1!25158 (get!15061 lt!1499324))))))))

(assert (= (and d!1241310 c!717472) b!4212131))

(assert (= (and d!1241310 (not c!717472)) b!4212127))

(assert (= (and b!4212127 (not res!1730448)) b!4212132))

(assert (= (and d!1241310 (not res!1730449)) b!4212129))

(assert (= (and b!4212129 res!1730447) b!4212133))

(assert (= (and b!4212133 res!1730444) b!4212134))

(assert (= (and b!4212134 res!1730445) b!4212128))

(assert (= (and b!4212128 res!1730450) b!4212130))

(assert (= (and b!4212130 res!1730446) b!4212126))

(declare-fun m!4799985 () Bool)

(assert (=> b!4212129 m!4799985))

(declare-fun m!4799987 () Bool)

(assert (=> b!4212129 m!4799987))

(assert (=> b!4212129 m!4799987))

(declare-fun m!4799989 () Bool)

(assert (=> b!4212129 m!4799989))

(assert (=> b!4212129 m!4799989))

(declare-fun m!4799991 () Bool)

(assert (=> b!4212129 m!4799991))

(assert (=> b!4212128 m!4799985))

(assert (=> b!4212134 m!4799985))

(declare-fun m!4799993 () Bool)

(assert (=> b!4212134 m!4799993))

(assert (=> b!4212134 m!4799867))

(assert (=> b!4212132 m!4799869))

(assert (=> b!4212132 m!4799867))

(assert (=> b!4212132 m!4799869))

(assert (=> b!4212132 m!4799867))

(declare-fun m!4799995 () Bool)

(assert (=> b!4212132 m!4799995))

(declare-fun m!4799997 () Bool)

(assert (=> b!4212132 m!4799997))

(assert (=> b!4212130 m!4799985))

(declare-fun m!4799999 () Bool)

(assert (=> b!4212130 m!4799999))

(assert (=> b!4212130 m!4799999))

(declare-fun m!4800001 () Bool)

(assert (=> b!4212130 m!4800001))

(assert (=> b!4212126 m!4799985))

(declare-fun m!4800003 () Bool)

(assert (=> b!4212126 m!4800003))

(declare-fun m!4800005 () Bool)

(assert (=> b!4212127 m!4800005))

(declare-fun m!4800007 () Bool)

(assert (=> b!4212127 m!4800007))

(assert (=> b!4212127 m!4800005))

(assert (=> b!4212127 m!4799869))

(assert (=> b!4212127 m!4799867))

(assert (=> b!4212127 m!4799995))

(assert (=> b!4212127 m!4800005))

(declare-fun m!4800009 () Bool)

(assert (=> b!4212127 m!4800009))

(declare-fun m!4800011 () Bool)

(assert (=> b!4212127 m!4800011))

(declare-fun m!4800013 () Bool)

(assert (=> b!4212127 m!4800013))

(assert (=> b!4212127 m!4799869))

(assert (=> b!4212127 m!4799867))

(assert (=> b!4212127 m!4800005))

(declare-fun m!4800015 () Bool)

(assert (=> b!4212127 m!4800015))

(assert (=> b!4212133 m!4799985))

(assert (=> b!4212133 m!4799987))

(assert (=> b!4212133 m!4799987))

(assert (=> b!4212133 m!4799989))

(assert (=> b!4212133 m!4799989))

(declare-fun m!4800017 () Bool)

(assert (=> b!4212133 m!4800017))

(declare-fun m!4800019 () Bool)

(assert (=> d!1241310 m!4800019))

(declare-fun m!4800021 () Bool)

(assert (=> d!1241310 m!4800021))

(declare-fun m!4800023 () Bool)

(assert (=> d!1241310 m!4800023))

(declare-fun m!4800025 () Bool)

(assert (=> d!1241310 m!4800025))

(assert (=> b!4211851 d!1241310))

(declare-fun d!1241312 () Bool)

(declare-fun res!1730460 () Bool)

(declare-fun e!2614796 () Bool)

(assert (=> d!1241312 (=> (not res!1730460) (not e!2614796))))

(declare-fun rulesValid!3035 (LexerInterface!7346 List!46432) Bool)

(assert (=> d!1241312 (= res!1730460 (rulesValid!3035 thiss!26544 rules!3967))))

(assert (=> d!1241312 (= (rulesInvariant!6557 thiss!26544 rules!3967) e!2614796)))

(declare-fun b!4212146 () Bool)

(declare-datatypes ((List!46436 0))(
  ( (Nil!46312) (Cons!46312 (h!51732 String!53777) (t!348115 List!46436)) )
))
(declare-fun noDuplicateTag!3196 (LexerInterface!7346 List!46432 List!46436) Bool)

(assert (=> b!4212146 (= e!2614796 (noDuplicateTag!3196 thiss!26544 rules!3967 Nil!46312))))

(assert (= (and d!1241312 res!1730460) b!4212146))

(declare-fun m!4800027 () Bool)

(assert (=> d!1241312 m!4800027))

(declare-fun m!4800029 () Bool)

(assert (=> b!4212146 m!4800029))

(assert (=> b!4211872 d!1241312))

(declare-fun d!1241314 () Bool)

(assert (=> d!1241314 true))

(declare-fun lt!1499358 () Bool)

(declare-fun lambda!129790 () Int)

(declare-fun forall!8495 (List!46432 Int) Bool)

(assert (=> d!1241314 (= lt!1499358 (forall!8495 (t!348071 rules!3967) lambda!129790))))

(declare-fun e!2614841 () Bool)

(assert (=> d!1241314 (= lt!1499358 e!2614841)))

(declare-fun res!1730506 () Bool)

(assert (=> d!1241314 (=> res!1730506 e!2614841)))

(assert (=> d!1241314 (= res!1730506 (not (is-Cons!46308 (t!348071 rules!3967))))))

(assert (=> d!1241314 (= (rulesValidInductive!2877 thiss!26544 (t!348071 rules!3967)) lt!1499358)))

(declare-fun b!4212218 () Bool)

(declare-fun e!2614840 () Bool)

(assert (=> b!4212218 (= e!2614841 e!2614840)))

(declare-fun res!1730505 () Bool)

(assert (=> b!4212218 (=> (not res!1730505) (not e!2614840))))

(assert (=> b!4212218 (= res!1730505 (ruleValid!3463 thiss!26544 (h!51728 (t!348071 rules!3967))))))

(declare-fun b!4212219 () Bool)

(assert (=> b!4212219 (= e!2614840 (rulesValidInductive!2877 thiss!26544 (t!348071 (t!348071 rules!3967))))))

(assert (= (and d!1241314 (not res!1730506)) b!4212218))

(assert (= (and b!4212218 res!1730505) b!4212219))

(declare-fun m!4800141 () Bool)

(assert (=> d!1241314 m!4800141))

(declare-fun m!4800143 () Bool)

(assert (=> b!4212218 m!4800143))

(declare-fun m!4800145 () Bool)

(assert (=> b!4212219 m!4800145))

(assert (=> b!4211850 d!1241314))

(declare-fun d!1241346 () Bool)

(assert (=> d!1241346 (= (inv!60925 (tag!8615 rBis!178)) (= (mod (str.len (value!241433 (tag!8615 rBis!178))) 2) 0))))

(assert (=> b!4211860 d!1241346))

(declare-fun d!1241348 () Bool)

(declare-fun res!1730507 () Bool)

(declare-fun e!2614842 () Bool)

(assert (=> d!1241348 (=> (not res!1730507) (not e!2614842))))

(assert (=> d!1241348 (= res!1730507 (semiInverseModEq!3367 (toChars!10330 (transformation!7751 rBis!178)) (toValue!10471 (transformation!7751 rBis!178))))))

(assert (=> d!1241348 (= (inv!60929 (transformation!7751 rBis!178)) e!2614842)))

(declare-fun b!4212222 () Bool)

(assert (=> b!4212222 (= e!2614842 (equivClasses!3266 (toChars!10330 (transformation!7751 rBis!178)) (toValue!10471 (transformation!7751 rBis!178))))))

(assert (= (and d!1241348 res!1730507) b!4212222))

(declare-fun m!4800147 () Bool)

(assert (=> d!1241348 m!4800147))

(declare-fun m!4800149 () Bool)

(assert (=> b!4212222 m!4800149))

(assert (=> b!4211860 d!1241348))

(declare-fun d!1241350 () Bool)

(assert (=> d!1241350 (= (isEmpty!27422 rules!3967) (is-Nil!46308 rules!3967))))

(assert (=> b!4211881 d!1241350))

(declare-fun d!1241352 () Bool)

(declare-fun res!1730512 () Bool)

(declare-fun e!2614845 () Bool)

(assert (=> d!1241352 (=> (not res!1730512) (not e!2614845))))

(assert (=> d!1241352 (= res!1730512 (not (isEmpty!27426 (originalCharacters!8133 tBis!41))))))

(assert (=> d!1241352 (= (inv!60928 tBis!41) e!2614845)))

(declare-fun b!4212227 () Bool)

(declare-fun res!1730513 () Bool)

(assert (=> b!4212227 (=> (not res!1730513) (not e!2614845))))

(assert (=> b!4212227 (= res!1730513 (= (originalCharacters!8133 tBis!41) (list!16746 (dynLambda!19971 (toChars!10330 (transformation!7751 (rule!10867 tBis!41))) (value!241434 tBis!41)))))))

(declare-fun b!4212228 () Bool)

(assert (=> b!4212228 (= e!2614845 (= (size!34016 tBis!41) (size!34018 (originalCharacters!8133 tBis!41))))))

(assert (= (and d!1241352 res!1730512) b!4212227))

(assert (= (and b!4212227 res!1730513) b!4212228))

(declare-fun b_lambda!124075 () Bool)

(assert (=> (not b_lambda!124075) (not b!4212227)))

(assert (=> b!4212227 t!348076))

(declare-fun b_and!331557 () Bool)

(assert (= b_and!331541 (and (=> t!348076 result!308152) b_and!331557)))

(assert (=> b!4212227 t!348078))

(declare-fun b_and!331559 () Bool)

(assert (= b_and!331543 (and (=> t!348078 result!308156) b_and!331559)))

(assert (=> b!4212227 t!348080))

(declare-fun b_and!331561 () Bool)

(assert (= b_and!331545 (and (=> t!348080 result!308158) b_and!331561)))

(assert (=> b!4212227 t!348082))

(declare-fun b_and!331563 () Bool)

(assert (= b_and!331547 (and (=> t!348082 result!308160) b_and!331563)))

(declare-fun m!4800151 () Bool)

(assert (=> d!1241352 m!4800151))

(assert (=> b!4212227 m!4799931))

(assert (=> b!4212227 m!4799931))

(declare-fun m!4800153 () Bool)

(assert (=> b!4212227 m!4800153))

(declare-fun m!4800155 () Bool)

(assert (=> b!4212228 m!4800155))

(assert (=> start!402532 d!1241352))

(declare-fun d!1241354 () Bool)

(declare-fun res!1730514 () Bool)

(declare-fun e!2614846 () Bool)

(assert (=> d!1241354 (=> (not res!1730514) (not e!2614846))))

(assert (=> d!1241354 (= res!1730514 (not (isEmpty!27426 (originalCharacters!8133 t!8364))))))

(assert (=> d!1241354 (= (inv!60928 t!8364) e!2614846)))

(declare-fun b!4212229 () Bool)

(declare-fun res!1730515 () Bool)

(assert (=> b!4212229 (=> (not res!1730515) (not e!2614846))))

(assert (=> b!4212229 (= res!1730515 (= (originalCharacters!8133 t!8364) (list!16746 (dynLambda!19971 (toChars!10330 (transformation!7751 (rule!10867 t!8364))) (value!241434 t!8364)))))))

(declare-fun b!4212230 () Bool)

(assert (=> b!4212230 (= e!2614846 (= (size!34016 t!8364) (size!34018 (originalCharacters!8133 t!8364))))))

(assert (= (and d!1241354 res!1730514) b!4212229))

(assert (= (and b!4212229 res!1730515) b!4212230))

(declare-fun b_lambda!124077 () Bool)

(assert (=> (not b_lambda!124077) (not b!4212229)))

(declare-fun t!348092 () Bool)

(declare-fun tb!252855 () Bool)

(assert (=> (and b!4211861 (= (toChars!10330 (transformation!7751 rBis!178)) (toChars!10330 (transformation!7751 (rule!10867 t!8364)))) t!348092) tb!252855))

(declare-fun b!4212231 () Bool)

(declare-fun e!2614847 () Bool)

(declare-fun tp!1287995 () Bool)

(assert (=> b!4212231 (= e!2614847 (and (inv!60932 (c!717450 (dynLambda!19971 (toChars!10330 (transformation!7751 (rule!10867 t!8364))) (value!241434 t!8364)))) tp!1287995))))

(declare-fun result!308172 () Bool)

(assert (=> tb!252855 (= result!308172 (and (inv!60933 (dynLambda!19971 (toChars!10330 (transformation!7751 (rule!10867 t!8364))) (value!241434 t!8364))) e!2614847))))

(assert (= tb!252855 b!4212231))

(declare-fun m!4800157 () Bool)

(assert (=> b!4212231 m!4800157))

(declare-fun m!4800159 () Bool)

(assert (=> tb!252855 m!4800159))

(assert (=> b!4212229 t!348092))

(declare-fun b_and!331565 () Bool)

(assert (= b_and!331557 (and (=> t!348092 result!308172) b_and!331565)))

(declare-fun t!348094 () Bool)

(declare-fun tb!252857 () Bool)

(assert (=> (and b!4211882 (= (toChars!10330 (transformation!7751 (h!51728 rules!3967))) (toChars!10330 (transformation!7751 (rule!10867 t!8364)))) t!348094) tb!252857))

(declare-fun result!308174 () Bool)

(assert (= result!308174 result!308172))

(assert (=> b!4212229 t!348094))

(declare-fun b_and!331567 () Bool)

(assert (= b_and!331559 (and (=> t!348094 result!308174) b_and!331567)))

(declare-fun tb!252859 () Bool)

(declare-fun t!348096 () Bool)

(assert (=> (and b!4211849 (= (toChars!10330 (transformation!7751 (rule!10867 tBis!41))) (toChars!10330 (transformation!7751 (rule!10867 t!8364)))) t!348096) tb!252859))

(declare-fun result!308176 () Bool)

(assert (= result!308176 result!308172))

(assert (=> b!4212229 t!348096))

(declare-fun b_and!331569 () Bool)

(assert (= b_and!331561 (and (=> t!348096 result!308176) b_and!331569)))

(declare-fun t!348098 () Bool)

(declare-fun tb!252861 () Bool)

(assert (=> (and b!4211879 (= (toChars!10330 (transformation!7751 (rule!10867 t!8364))) (toChars!10330 (transformation!7751 (rule!10867 t!8364)))) t!348098) tb!252861))

(declare-fun result!308178 () Bool)

(assert (= result!308178 result!308172))

(assert (=> b!4212229 t!348098))

(declare-fun b_and!331571 () Bool)

(assert (= b_and!331563 (and (=> t!348098 result!308178) b_and!331571)))

(declare-fun m!4800161 () Bool)

(assert (=> d!1241354 m!4800161))

(declare-fun m!4800163 () Bool)

(assert (=> b!4212229 m!4800163))

(assert (=> b!4212229 m!4800163))

(declare-fun m!4800165 () Bool)

(assert (=> b!4212229 m!4800165))

(declare-fun m!4800167 () Bool)

(assert (=> b!4212230 m!4800167))

(assert (=> start!402532 d!1241354))

(declare-fun d!1241356 () Bool)

(assert (=> d!1241356 (= (isEmpty!27422 (t!348071 rules!3967)) (is-Nil!46308 (t!348071 rules!3967)))))

(assert (=> b!4211859 d!1241356))

(declare-fun d!1241358 () Bool)

(assert (=> d!1241358 (= (inv!60925 (tag!8615 (h!51728 rules!3967))) (= (mod (str.len (value!241433 (tag!8615 (h!51728 rules!3967)))) 2) 0))))

(assert (=> b!4211880 d!1241358))

(declare-fun d!1241360 () Bool)

(declare-fun res!1730516 () Bool)

(declare-fun e!2614848 () Bool)

(assert (=> d!1241360 (=> (not res!1730516) (not e!2614848))))

(assert (=> d!1241360 (= res!1730516 (semiInverseModEq!3367 (toChars!10330 (transformation!7751 (h!51728 rules!3967))) (toValue!10471 (transformation!7751 (h!51728 rules!3967)))))))

(assert (=> d!1241360 (= (inv!60929 (transformation!7751 (h!51728 rules!3967))) e!2614848)))

(declare-fun b!4212232 () Bool)

(assert (=> b!4212232 (= e!2614848 (equivClasses!3266 (toChars!10330 (transformation!7751 (h!51728 rules!3967))) (toValue!10471 (transformation!7751 (h!51728 rules!3967)))))))

(assert (= (and d!1241360 res!1730516) b!4212232))

(declare-fun m!4800169 () Bool)

(assert (=> d!1241360 m!4800169))

(declare-fun m!4800171 () Bool)

(assert (=> b!4212232 m!4800171))

(assert (=> b!4211880 d!1241360))

(declare-fun d!1241362 () Bool)

(declare-fun c!717486 () Bool)

(assert (=> d!1241362 (= c!717486 (is-IntegerValue!23943 (value!241434 t!8364)))))

(declare-fun e!2614850 () Bool)

(assert (=> d!1241362 (= (inv!21 (value!241434 t!8364)) e!2614850)))

(declare-fun b!4212233 () Bool)

(assert (=> b!4212233 (= e!2614850 (inv!16 (value!241434 t!8364)))))

(declare-fun b!4212234 () Bool)

(declare-fun res!1730517 () Bool)

(declare-fun e!2614849 () Bool)

(assert (=> b!4212234 (=> res!1730517 e!2614849)))

(assert (=> b!4212234 (= res!1730517 (not (is-IntegerValue!23945 (value!241434 t!8364))))))

(declare-fun e!2614851 () Bool)

(assert (=> b!4212234 (= e!2614851 e!2614849)))

(declare-fun b!4212235 () Bool)

(assert (=> b!4212235 (= e!2614849 (inv!15 (value!241434 t!8364)))))

(declare-fun b!4212236 () Bool)

(assert (=> b!4212236 (= e!2614850 e!2614851)))

(declare-fun c!717485 () Bool)

(assert (=> b!4212236 (= c!717485 (is-IntegerValue!23944 (value!241434 t!8364)))))

(declare-fun b!4212237 () Bool)

(assert (=> b!4212237 (= e!2614851 (inv!17 (value!241434 t!8364)))))

(assert (= (and d!1241362 c!717486) b!4212233))

(assert (= (and d!1241362 (not c!717486)) b!4212236))

(assert (= (and b!4212236 c!717485) b!4212237))

(assert (= (and b!4212236 (not c!717485)) b!4212234))

(assert (= (and b!4212234 (not res!1730517)) b!4212235))

(declare-fun m!4800173 () Bool)

(assert (=> b!4212233 m!4800173))

(declare-fun m!4800175 () Bool)

(assert (=> b!4212235 m!4800175))

(declare-fun m!4800177 () Bool)

(assert (=> b!4212237 m!4800177))

(assert (=> b!4211858 d!1241362))

(declare-fun d!1241364 () Bool)

(declare-fun e!2614853 () Bool)

(assert (=> d!1241364 e!2614853))

(declare-fun res!1730521 () Bool)

(assert (=> d!1241364 (=> res!1730521 e!2614853)))

(declare-fun lt!1499359 () Bool)

(assert (=> d!1241364 (= res!1730521 (not lt!1499359))))

(declare-fun e!2614854 () Bool)

(assert (=> d!1241364 (= lt!1499359 e!2614854)))

(declare-fun res!1730518 () Bool)

(assert (=> d!1241364 (=> res!1730518 e!2614854)))

(assert (=> d!1241364 (= res!1730518 (is-Nil!46307 pBis!121))))

(assert (=> d!1241364 (= (isPrefix!4610 pBis!121 input!3517) lt!1499359)))

(declare-fun b!4212239 () Bool)

(declare-fun res!1730519 () Bool)

(declare-fun e!2614852 () Bool)

(assert (=> b!4212239 (=> (not res!1730519) (not e!2614852))))

(assert (=> b!4212239 (= res!1730519 (= (head!8935 pBis!121) (head!8935 input!3517)))))

(declare-fun b!4212240 () Bool)

(assert (=> b!4212240 (= e!2614852 (isPrefix!4610 (tail!6782 pBis!121) (tail!6782 input!3517)))))

(declare-fun b!4212238 () Bool)

(assert (=> b!4212238 (= e!2614854 e!2614852)))

(declare-fun res!1730520 () Bool)

(assert (=> b!4212238 (=> (not res!1730520) (not e!2614852))))

(assert (=> b!4212238 (= res!1730520 (not (is-Nil!46307 input!3517)))))

(declare-fun b!4212241 () Bool)

(assert (=> b!4212241 (= e!2614853 (>= (size!34018 input!3517) (size!34018 pBis!121)))))

(assert (= (and d!1241364 (not res!1730518)) b!4212238))

(assert (= (and b!4212238 res!1730520) b!4212239))

(assert (= (and b!4212239 res!1730519) b!4212240))

(assert (= (and d!1241364 (not res!1730521)) b!4212241))

(declare-fun m!4800179 () Bool)

(assert (=> b!4212239 m!4800179))

(assert (=> b!4212239 m!4799901))

(declare-fun m!4800181 () Bool)

(assert (=> b!4212240 m!4800181))

(assert (=> b!4212240 m!4799903))

(assert (=> b!4212240 m!4800181))

(assert (=> b!4212240 m!4799903))

(declare-fun m!4800183 () Bool)

(assert (=> b!4212240 m!4800183))

(assert (=> b!4212241 m!4799867))

(assert (=> b!4212241 m!4799843))

(assert (=> b!4211857 d!1241364))

(declare-fun bm!292976 () Bool)

(declare-fun call!292981 () Option!9939)

(assert (=> bm!292976 (= call!292981 (maxPrefixOneRule!3341 thiss!26544 (h!51728 rules!3967) input!3517))))

(declare-fun b!4212242 () Bool)

(declare-fun res!1730527 () Bool)

(declare-fun e!2614856 () Bool)

(assert (=> b!4212242 (=> (not res!1730527) (not e!2614856))))

(declare-fun lt!1499361 () Option!9939)

(assert (=> b!4212242 (= res!1730527 (= (++!11825 (list!16746 (charsOf!5174 (_1!25158 (get!15061 lt!1499361)))) (_2!25158 (get!15061 lt!1499361))) input!3517))))

(declare-fun b!4212243 () Bool)

(declare-fun res!1730523 () Bool)

(assert (=> b!4212243 (=> (not res!1730523) (not e!2614856))))

(assert (=> b!4212243 (= res!1730523 (< (size!34018 (_2!25158 (get!15061 lt!1499361))) (size!34018 input!3517)))))

(declare-fun b!4212244 () Bool)

(assert (=> b!4212244 (= e!2614856 (contains!9572 rules!3967 (rule!10867 (_1!25158 (get!15061 lt!1499361)))))))

(declare-fun b!4212245 () Bool)

(declare-fun res!1730522 () Bool)

(assert (=> b!4212245 (=> (not res!1730522) (not e!2614856))))

(assert (=> b!4212245 (= res!1730522 (= (list!16746 (charsOf!5174 (_1!25158 (get!15061 lt!1499361)))) (originalCharacters!8133 (_1!25158 (get!15061 lt!1499361)))))))

(declare-fun b!4212246 () Bool)

(declare-fun e!2614857 () Option!9939)

(declare-fun lt!1499364 () Option!9939)

(declare-fun lt!1499360 () Option!9939)

(assert (=> b!4212246 (= e!2614857 (ite (and (is-None!9938 lt!1499364) (is-None!9938 lt!1499360)) None!9938 (ite (is-None!9938 lt!1499360) lt!1499364 (ite (is-None!9938 lt!1499364) lt!1499360 (ite (>= (size!34016 (_1!25158 (v!40810 lt!1499364))) (size!34016 (_1!25158 (v!40810 lt!1499360)))) lt!1499364 lt!1499360)))))))

(assert (=> b!4212246 (= lt!1499364 call!292981)))

(assert (=> b!4212246 (= lt!1499360 (maxPrefix!4386 thiss!26544 (t!348071 rules!3967) input!3517))))

(declare-fun b!4212247 () Bool)

(declare-fun res!1730524 () Bool)

(assert (=> b!4212247 (=> (not res!1730524) (not e!2614856))))

(assert (=> b!4212247 (= res!1730524 (= (value!241434 (_1!25158 (get!15061 lt!1499361))) (apply!10686 (transformation!7751 (rule!10867 (_1!25158 (get!15061 lt!1499361)))) (seqFromList!5746 (originalCharacters!8133 (_1!25158 (get!15061 lt!1499361)))))))))

(declare-fun b!4212248 () Bool)

(declare-fun res!1730525 () Bool)

(assert (=> b!4212248 (=> (not res!1730525) (not e!2614856))))

(assert (=> b!4212248 (= res!1730525 (matchR!6365 (regex!7751 (rule!10867 (_1!25158 (get!15061 lt!1499361)))) (list!16746 (charsOf!5174 (_1!25158 (get!15061 lt!1499361))))))))

(declare-fun d!1241366 () Bool)

(declare-fun e!2614855 () Bool)

(assert (=> d!1241366 e!2614855))

(declare-fun res!1730528 () Bool)

(assert (=> d!1241366 (=> res!1730528 e!2614855)))

(assert (=> d!1241366 (= res!1730528 (isEmpty!27423 lt!1499361))))

(assert (=> d!1241366 (= lt!1499361 e!2614857)))

(declare-fun c!717487 () Bool)

(assert (=> d!1241366 (= c!717487 (and (is-Cons!46308 rules!3967) (is-Nil!46308 (t!348071 rules!3967))))))

(declare-fun lt!1499362 () Unit!65426)

(declare-fun lt!1499363 () Unit!65426)

(assert (=> d!1241366 (= lt!1499362 lt!1499363)))

(assert (=> d!1241366 (isPrefix!4610 input!3517 input!3517)))

(assert (=> d!1241366 (= lt!1499363 (lemmaIsPrefixRefl!3027 input!3517 input!3517))))

(assert (=> d!1241366 (rulesValidInductive!2877 thiss!26544 rules!3967)))

(assert (=> d!1241366 (= (maxPrefix!4386 thiss!26544 rules!3967 input!3517) lt!1499361)))

(declare-fun b!4212249 () Bool)

(assert (=> b!4212249 (= e!2614857 call!292981)))

(declare-fun b!4212250 () Bool)

(assert (=> b!4212250 (= e!2614855 e!2614856)))

(declare-fun res!1730526 () Bool)

(assert (=> b!4212250 (=> (not res!1730526) (not e!2614856))))

(assert (=> b!4212250 (= res!1730526 (isDefined!7387 lt!1499361))))

(assert (= (and d!1241366 c!717487) b!4212249))

(assert (= (and d!1241366 (not c!717487)) b!4212246))

(assert (= (or b!4212249 b!4212246) bm!292976))

(assert (= (and d!1241366 (not res!1730528)) b!4212250))

(assert (= (and b!4212250 res!1730526) b!4212245))

(assert (= (and b!4212245 res!1730522) b!4212243))

(assert (= (and b!4212243 res!1730523) b!4212242))

(assert (= (and b!4212242 res!1730527) b!4212247))

(assert (= (and b!4212247 res!1730524) b!4212248))

(assert (= (and b!4212248 res!1730525) b!4212244))

(declare-fun m!4800185 () Bool)

(assert (=> b!4212250 m!4800185))

(declare-fun m!4800187 () Bool)

(assert (=> b!4212247 m!4800187))

(declare-fun m!4800189 () Bool)

(assert (=> b!4212247 m!4800189))

(assert (=> b!4212247 m!4800189))

(declare-fun m!4800191 () Bool)

(assert (=> b!4212247 m!4800191))

(assert (=> b!4212245 m!4800187))

(declare-fun m!4800193 () Bool)

(assert (=> b!4212245 m!4800193))

(assert (=> b!4212245 m!4800193))

(declare-fun m!4800195 () Bool)

(assert (=> b!4212245 m!4800195))

(assert (=> b!4212246 m!4799735))

(declare-fun m!4800197 () Bool)

(assert (=> d!1241366 m!4800197))

(assert (=> d!1241366 m!4799757))

(assert (=> d!1241366 m!4799759))

(declare-fun m!4800199 () Bool)

(assert (=> d!1241366 m!4800199))

(assert (=> b!4212243 m!4800187))

(declare-fun m!4800201 () Bool)

(assert (=> b!4212243 m!4800201))

(assert (=> b!4212243 m!4799867))

(assert (=> b!4212242 m!4800187))

(assert (=> b!4212242 m!4800193))

(assert (=> b!4212242 m!4800193))

(assert (=> b!4212242 m!4800195))

(assert (=> b!4212242 m!4800195))

(declare-fun m!4800203 () Bool)

(assert (=> b!4212242 m!4800203))

(assert (=> b!4212248 m!4800187))

(assert (=> b!4212248 m!4800193))

(assert (=> b!4212248 m!4800193))

(assert (=> b!4212248 m!4800195))

(assert (=> b!4212248 m!4800195))

(declare-fun m!4800205 () Bool)

(assert (=> b!4212248 m!4800205))

(assert (=> bm!292976 m!4799769))

(assert (=> b!4212244 m!4800187))

(declare-fun m!4800207 () Bool)

(assert (=> b!4212244 m!4800207))

(assert (=> b!4211878 d!1241366))

(declare-fun d!1241368 () Bool)

(assert (=> d!1241368 (= (inv!60925 (tag!8615 (rule!10867 tBis!41))) (= (mod (str.len (value!241433 (tag!8615 (rule!10867 tBis!41)))) 2) 0))))

(assert (=> b!4211856 d!1241368))

(declare-fun d!1241370 () Bool)

(declare-fun res!1730529 () Bool)

(declare-fun e!2614858 () Bool)

(assert (=> d!1241370 (=> (not res!1730529) (not e!2614858))))

(assert (=> d!1241370 (= res!1730529 (semiInverseModEq!3367 (toChars!10330 (transformation!7751 (rule!10867 tBis!41))) (toValue!10471 (transformation!7751 (rule!10867 tBis!41)))))))

(assert (=> d!1241370 (= (inv!60929 (transformation!7751 (rule!10867 tBis!41))) e!2614858)))

(declare-fun b!4212251 () Bool)

(assert (=> b!4212251 (= e!2614858 (equivClasses!3266 (toChars!10330 (transformation!7751 (rule!10867 tBis!41))) (toValue!10471 (transformation!7751 (rule!10867 tBis!41)))))))

(assert (= (and d!1241370 res!1730529) b!4212251))

(declare-fun m!4800209 () Bool)

(assert (=> d!1241370 m!4800209))

(declare-fun m!4800211 () Bool)

(assert (=> b!4212251 m!4800211))

(assert (=> b!4211856 d!1241370))

(declare-fun b!4212256 () Bool)

(declare-fun e!2614861 () Bool)

(declare-fun tp!1287998 () Bool)

(assert (=> b!4212256 (= e!2614861 (and tp_is_empty!22279 tp!1287998))))

(assert (=> b!4211866 (= tp!1287920 e!2614861)))

(assert (= (and b!4211866 (is-Cons!46307 (t!348070 p!3001))) b!4212256))

(declare-fun b!4212257 () Bool)

(declare-fun e!2614862 () Bool)

(declare-fun tp!1287999 () Bool)

(assert (=> b!4212257 (= e!2614862 (and tp_is_empty!22279 tp!1287999))))

(assert (=> b!4211854 (= tp!1287922 e!2614862)))

(assert (= (and b!4211854 (is-Cons!46307 (originalCharacters!8133 tBis!41))) b!4212257))

(declare-fun b!4212270 () Bool)

(declare-fun e!2614865 () Bool)

(declare-fun tp!1288012 () Bool)

(assert (=> b!4212270 (= e!2614865 tp!1288012)))

(declare-fun b!4212269 () Bool)

(declare-fun tp!1288013 () Bool)

(declare-fun tp!1288010 () Bool)

(assert (=> b!4212269 (= e!2614865 (and tp!1288013 tp!1288010))))

(declare-fun b!4212271 () Bool)

(declare-fun tp!1288011 () Bool)

(declare-fun tp!1288014 () Bool)

(assert (=> b!4212271 (= e!2614865 (and tp!1288011 tp!1288014))))

(assert (=> b!4211875 (= tp!1287911 e!2614865)))

(declare-fun b!4212268 () Bool)

(assert (=> b!4212268 (= e!2614865 tp_is_empty!22279)))

(assert (= (and b!4211875 (is-ElementMatch!12656 (regex!7751 (rule!10867 t!8364)))) b!4212268))

(assert (= (and b!4211875 (is-Concat!20638 (regex!7751 (rule!10867 t!8364)))) b!4212269))

(assert (= (and b!4211875 (is-Star!12656 (regex!7751 (rule!10867 t!8364)))) b!4212270))

(assert (= (and b!4211875 (is-Union!12656 (regex!7751 (rule!10867 t!8364)))) b!4212271))

(declare-fun b!4212272 () Bool)

(declare-fun e!2614866 () Bool)

(declare-fun tp!1288015 () Bool)

(assert (=> b!4212272 (= e!2614866 (and tp_is_empty!22279 tp!1288015))))

(assert (=> b!4211864 (= tp!1287917 e!2614866)))

(assert (= (and b!4211864 (is-Cons!46307 (t!348070 input!3517))) b!4212272))

(declare-fun b!4212273 () Bool)

(declare-fun e!2614867 () Bool)

(declare-fun tp!1288016 () Bool)

(assert (=> b!4212273 (= e!2614867 (and tp_is_empty!22279 tp!1288016))))

(assert (=> b!4211871 (= tp!1287925 e!2614867)))

(assert (= (and b!4211871 (is-Cons!46307 (t!348070 pBis!121))) b!4212273))

(declare-fun b!4212276 () Bool)

(declare-fun e!2614868 () Bool)

(declare-fun tp!1288019 () Bool)

(assert (=> b!4212276 (= e!2614868 tp!1288019)))

(declare-fun b!4212275 () Bool)

(declare-fun tp!1288020 () Bool)

(declare-fun tp!1288017 () Bool)

(assert (=> b!4212275 (= e!2614868 (and tp!1288020 tp!1288017))))

(declare-fun b!4212277 () Bool)

(declare-fun tp!1288018 () Bool)

(declare-fun tp!1288021 () Bool)

(assert (=> b!4212277 (= e!2614868 (and tp!1288018 tp!1288021))))

(assert (=> b!4211860 (= tp!1287923 e!2614868)))

(declare-fun b!4212274 () Bool)

(assert (=> b!4212274 (= e!2614868 tp_is_empty!22279)))

(assert (= (and b!4211860 (is-ElementMatch!12656 (regex!7751 rBis!178))) b!4212274))

(assert (= (and b!4211860 (is-Concat!20638 (regex!7751 rBis!178))) b!4212275))

(assert (= (and b!4211860 (is-Star!12656 (regex!7751 rBis!178))) b!4212276))

(assert (= (and b!4211860 (is-Union!12656 (regex!7751 rBis!178))) b!4212277))

(declare-fun b!4212280 () Bool)

(declare-fun e!2614869 () Bool)

(declare-fun tp!1288024 () Bool)

(assert (=> b!4212280 (= e!2614869 tp!1288024)))

(declare-fun b!4212279 () Bool)

(declare-fun tp!1288025 () Bool)

(declare-fun tp!1288022 () Bool)

(assert (=> b!4212279 (= e!2614869 (and tp!1288025 tp!1288022))))

(declare-fun b!4212281 () Bool)

(declare-fun tp!1288023 () Bool)

(declare-fun tp!1288026 () Bool)

(assert (=> b!4212281 (= e!2614869 (and tp!1288023 tp!1288026))))

(assert (=> b!4211880 (= tp!1287912 e!2614869)))

(declare-fun b!4212278 () Bool)

(assert (=> b!4212278 (= e!2614869 tp_is_empty!22279)))

(assert (= (and b!4211880 (is-ElementMatch!12656 (regex!7751 (h!51728 rules!3967)))) b!4212278))

(assert (= (and b!4211880 (is-Concat!20638 (regex!7751 (h!51728 rules!3967)))) b!4212279))

(assert (= (and b!4211880 (is-Star!12656 (regex!7751 (h!51728 rules!3967)))) b!4212280))

(assert (= (and b!4211880 (is-Union!12656 (regex!7751 (h!51728 rules!3967)))) b!4212281))

(declare-fun b!4212282 () Bool)

(declare-fun e!2614870 () Bool)

(declare-fun tp!1288027 () Bool)

(assert (=> b!4212282 (= e!2614870 (and tp_is_empty!22279 tp!1288027))))

(assert (=> b!4211869 (= tp!1287928 e!2614870)))

(assert (= (and b!4211869 (is-Cons!46307 (t!348070 suffix!1557))) b!4212282))

(declare-fun b!4212283 () Bool)

(declare-fun e!2614871 () Bool)

(declare-fun tp!1288028 () Bool)

(assert (=> b!4212283 (= e!2614871 (and tp_is_empty!22279 tp!1288028))))

(assert (=> b!4211858 (= tp!1287909 e!2614871)))

(assert (= (and b!4211858 (is-Cons!46307 (originalCharacters!8133 t!8364))) b!4212283))

(declare-fun b!4212284 () Bool)

(declare-fun e!2614872 () Bool)

(declare-fun tp!1288029 () Bool)

(assert (=> b!4212284 (= e!2614872 (and tp_is_empty!22279 tp!1288029))))

(assert (=> b!4211868 (= tp!1287915 e!2614872)))

(assert (= (and b!4211868 (is-Cons!46307 (t!348070 suffixBis!41))) b!4212284))

(declare-fun b!4212295 () Bool)

(declare-fun b_free!123331 () Bool)

(declare-fun b_next!124035 () Bool)

(assert (=> b!4212295 (= b_free!123331 (not b_next!124035))))

(declare-fun tp!1288038 () Bool)

(declare-fun b_and!331573 () Bool)

(assert (=> b!4212295 (= tp!1288038 b_and!331573)))

(declare-fun b_free!123333 () Bool)

(declare-fun b_next!124037 () Bool)

(assert (=> b!4212295 (= b_free!123333 (not b_next!124037))))

(declare-fun t!348100 () Bool)

(declare-fun tb!252863 () Bool)

(assert (=> (and b!4212295 (= (toChars!10330 (transformation!7751 (h!51728 (t!348071 rules!3967)))) (toChars!10330 (transformation!7751 (rule!10867 tBis!41)))) t!348100) tb!252863))

(declare-fun result!308186 () Bool)

(assert (= result!308186 result!308152))

(assert (=> d!1241298 t!348100))

(assert (=> b!4212227 t!348100))

(declare-fun tb!252865 () Bool)

(declare-fun t!348102 () Bool)

(assert (=> (and b!4212295 (= (toChars!10330 (transformation!7751 (h!51728 (t!348071 rules!3967)))) (toChars!10330 (transformation!7751 (rule!10867 t!8364)))) t!348102) tb!252865))

(declare-fun result!308188 () Bool)

(assert (= result!308188 result!308172))

(assert (=> b!4212229 t!348102))

(declare-fun b_and!331575 () Bool)

(declare-fun tp!1288040 () Bool)

(assert (=> b!4212295 (= tp!1288040 (and (=> t!348100 result!308186) (=> t!348102 result!308188) b_and!331575))))

(declare-fun e!2614883 () Bool)

(assert (=> b!4212295 (= e!2614883 (and tp!1288038 tp!1288040))))

(declare-fun b!4212294 () Bool)

(declare-fun tp!1288041 () Bool)

(declare-fun e!2614881 () Bool)

(assert (=> b!4212294 (= e!2614881 (and tp!1288041 (inv!60925 (tag!8615 (h!51728 (t!348071 rules!3967)))) (inv!60929 (transformation!7751 (h!51728 (t!348071 rules!3967)))) e!2614883))))

(declare-fun b!4212293 () Bool)

(declare-fun e!2614882 () Bool)

(declare-fun tp!1288039 () Bool)

(assert (=> b!4212293 (= e!2614882 (and e!2614881 tp!1288039))))

(assert (=> b!4211867 (= tp!1287921 e!2614882)))

(assert (= b!4212294 b!4212295))

(assert (= b!4212293 b!4212294))

(assert (= (and b!4211867 (is-Cons!46308 (t!348071 rules!3967))) b!4212293))

(declare-fun m!4800213 () Bool)

(assert (=> b!4212294 m!4800213))

(declare-fun m!4800215 () Bool)

(assert (=> b!4212294 m!4800215))

(declare-fun b!4212298 () Bool)

(declare-fun e!2614885 () Bool)

(declare-fun tp!1288044 () Bool)

(assert (=> b!4212298 (= e!2614885 tp!1288044)))

(declare-fun b!4212297 () Bool)

(declare-fun tp!1288045 () Bool)

(declare-fun tp!1288042 () Bool)

(assert (=> b!4212297 (= e!2614885 (and tp!1288045 tp!1288042))))

(declare-fun b!4212299 () Bool)

(declare-fun tp!1288043 () Bool)

(declare-fun tp!1288046 () Bool)

(assert (=> b!4212299 (= e!2614885 (and tp!1288043 tp!1288046))))

(assert (=> b!4211856 (= tp!1287919 e!2614885)))

(declare-fun b!4212296 () Bool)

(assert (=> b!4212296 (= e!2614885 tp_is_empty!22279)))

(assert (= (and b!4211856 (is-ElementMatch!12656 (regex!7751 (rule!10867 tBis!41)))) b!4212296))

(assert (= (and b!4211856 (is-Concat!20638 (regex!7751 (rule!10867 tBis!41)))) b!4212297))

(assert (= (and b!4211856 (is-Star!12656 (regex!7751 (rule!10867 tBis!41)))) b!4212298))

(assert (= (and b!4211856 (is-Union!12656 (regex!7751 (rule!10867 tBis!41)))) b!4212299))

(declare-fun b_lambda!124079 () Bool)

(assert (= b_lambda!124071 (or (and b!4212295 b_free!123333 (= (toChars!10330 (transformation!7751 (h!51728 (t!348071 rules!3967)))) (toChars!10330 (transformation!7751 (rule!10867 tBis!41))))) (and b!4211882 b_free!123305 (= (toChars!10330 (transformation!7751 (h!51728 rules!3967))) (toChars!10330 (transformation!7751 (rule!10867 tBis!41))))) (and b!4211879 b_free!123313 (= (toChars!10330 (transformation!7751 (rule!10867 t!8364))) (toChars!10330 (transformation!7751 (rule!10867 tBis!41))))) (and b!4211849 b_free!123309) (and b!4211861 b_free!123301 (= (toChars!10330 (transformation!7751 rBis!178)) (toChars!10330 (transformation!7751 (rule!10867 tBis!41))))) b_lambda!124079)))

(declare-fun b_lambda!124081 () Bool)

(assert (= b_lambda!124077 (or (and b!4211879 b_free!123313) (and b!4211861 b_free!123301 (= (toChars!10330 (transformation!7751 rBis!178)) (toChars!10330 (transformation!7751 (rule!10867 t!8364))))) (and b!4211882 b_free!123305 (= (toChars!10330 (transformation!7751 (h!51728 rules!3967))) (toChars!10330 (transformation!7751 (rule!10867 t!8364))))) (and b!4211849 b_free!123309 (= (toChars!10330 (transformation!7751 (rule!10867 tBis!41))) (toChars!10330 (transformation!7751 (rule!10867 t!8364))))) (and b!4212295 b_free!123333 (= (toChars!10330 (transformation!7751 (h!51728 (t!348071 rules!3967)))) (toChars!10330 (transformation!7751 (rule!10867 t!8364))))) b_lambda!124081)))

(declare-fun b_lambda!124083 () Bool)

(assert (= b_lambda!124075 (or (and b!4212295 b_free!123333 (= (toChars!10330 (transformation!7751 (h!51728 (t!348071 rules!3967)))) (toChars!10330 (transformation!7751 (rule!10867 tBis!41))))) (and b!4211882 b_free!123305 (= (toChars!10330 (transformation!7751 (h!51728 rules!3967))) (toChars!10330 (transformation!7751 (rule!10867 tBis!41))))) (and b!4211879 b_free!123313 (= (toChars!10330 (transformation!7751 (rule!10867 t!8364))) (toChars!10330 (transformation!7751 (rule!10867 tBis!41))))) (and b!4211849 b_free!123309) (and b!4211861 b_free!123301 (= (toChars!10330 (transformation!7751 rBis!178)) (toChars!10330 (transformation!7751 (rule!10867 tBis!41))))) b_lambda!124083)))

(push 1)

(assert (not d!1241308))

(assert (not b!4212058))

(assert (not d!1241312))

(assert b_and!331569)

(assert (not b!4212024))

(assert (not b!4212021))

(assert (not b!4212128))

(assert (not b!4212231))

(assert (not b_next!124005))

(assert (not b_next!124013))

(assert (not b_lambda!124079))

(assert (not b!4212256))

(assert (not b!4212118))

(assert (not d!1241370))

(assert (not b!4212119))

(assert (not b!4212108))

(assert (not b!4212244))

(assert (not b!4212257))

(assert (not bm!292976))

(assert (not b!4212294))

(assert (not bm!292972))

(assert (not d!1241306))

(assert (not b!4212062))

(assert (not b_next!124011))

(assert b_and!331513)

(assert (not b!4212029))

(assert (not b!4212041))

(assert b_and!331517)

(assert (not b!4211994))

(assert (not b!4212218))

(assert (not d!1241352))

(assert (not b!4212251))

(assert (not b_next!124017))

(assert (not b!4212023))

(assert (not b!4212127))

(assert b_and!331575)

(assert (not b!4212065))

(assert (not b!4212248))

(assert (not b!4212293))

(assert (not b!4212126))

(assert (not b!4212227))

(assert (not b!4212283))

(assert b_and!331573)

(assert (not b!4212146))

(assert (not b!4212028))

(assert (not b!4212233))

(assert (not b!4211995))

(assert (not d!1241280))

(assert (not b!4212282))

(assert (not b_lambda!124083))

(assert (not d!1241366))

(assert (not b!4212232))

(assert b_and!331509)

(assert (not b_next!124007))

(assert (not b!4212117))

(assert (not b!4212229))

(assert (not b!4212270))

(assert (not b!4212109))

(assert (not b!4212243))

(assert (not d!1241360))

(assert (not b!4212134))

(assert (not b!4212070))

(assert (not d!1241286))

(assert (not b!4212272))

(assert (not b!4212107))

(assert (not b!4212022))

(assert (not b!4212230))

(assert (not b!4212110))

(assert (not b!4212235))

(assert (not b!4212275))

(assert (not b!4212281))

(assert (not d!1241296))

(assert (not b!4212046))

(assert (not tb!252855))

(assert (not b!4212245))

(assert (not b!4212129))

(assert (not b!4212121))

(assert (not b!4212111))

(assert (not b_next!124009))

(assert (not b!4212122))

(assert (not b!4212276))

(assert b_and!331521)

(assert b_and!331567)

(assert (not b!4212237))

(assert tp_is_empty!22279)

(assert (not b!4212125))

(assert (not b!4212112))

(assert (not b!4212269))

(assert (not b!4212027))

(assert (not d!1241354))

(assert (not b_next!124003))

(assert (not d!1241310))

(assert (not b!4212040))

(assert (not b!4212298))

(assert (not b!4212279))

(assert (not d!1241288))

(assert b_and!331565)

(assert (not b!4212039))

(assert (not b!4212222))

(assert (not b!4212132))

(assert (not d!1241302))

(assert (not b!4212241))

(assert (not b!4212250))

(assert (not b!4212284))

(assert (not b!4212133))

(assert (not b!4212002))

(assert (not b!4212130))

(assert (not b!4212025))

(assert (not d!1241278))

(assert (not b!4212219))

(assert (not d!1241276))

(assert (not b!4212240))

(assert (not b!4212228))

(assert (not b!4212271))

(assert (not b!4212113))

(assert (not b!4212273))

(assert b_and!331571)

(assert (not b!4212246))

(assert (not b!4212060))

(assert (not b!4212247))

(assert (not b!4212280))

(assert (not b_next!124035))

(assert (not b!4212297))

(assert (not d!1241294))

(assert (not d!1241348))

(assert (not tb!252839))

(assert (not b!4212239))

(assert (not b!4212277))

(assert (not d!1241314))

(assert (not b_lambda!124081))

(assert (not b_next!124015))

(assert (not b!4212242))

(assert (not b!4212115))

(assert (not b_next!124037))

(assert (not d!1241298))

(assert (not b!4212299))

(check-sat)

(pop 1)

(push 1)

(assert b_and!331569)

(assert b_and!331517)

(assert (not b_next!124017))

(assert b_and!331575)

(assert b_and!331573)

(assert (not b_next!124009))

(assert b_and!331521)

(assert b_and!331567)

(assert (not b_next!124003))

(assert b_and!331565)

(assert b_and!331571)

(assert (not b_next!124035))

(assert (not b_next!124015))

(assert (not b_next!124037))

(assert (not b_next!124005))

(assert (not b_next!124013))

(assert (not b_next!124011))

(assert b_and!331513)

(assert b_and!331509)

(assert (not b_next!124007))

(check-sat)

(pop 1)

