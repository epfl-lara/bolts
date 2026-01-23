; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745864 () Bool)

(assert start!745864)

(declare-fun b!7905242 () Bool)

(declare-fun b_free!134883 () Bool)

(declare-fun b_next!135673 () Bool)

(assert (=> b!7905242 (= b_free!134883 (not b_next!135673))))

(declare-fun tp!2354929 () Bool)

(declare-fun b_and!353039 () Bool)

(assert (=> b!7905242 (= tp!2354929 b_and!353039)))

(declare-fun b_free!134885 () Bool)

(declare-fun b_next!135675 () Bool)

(assert (=> b!7905242 (= b_free!134885 (not b_next!135675))))

(declare-fun tp!2354924 () Bool)

(declare-fun b_and!353041 () Bool)

(assert (=> b!7905242 (= tp!2354924 b_and!353041)))

(declare-fun b!7905245 () Bool)

(declare-fun b_free!134887 () Bool)

(declare-fun b_next!135677 () Bool)

(assert (=> b!7905245 (= b_free!134887 (not b_next!135677))))

(declare-fun tp!2354923 () Bool)

(declare-fun b_and!353043 () Bool)

(assert (=> b!7905245 (= tp!2354923 b_and!353043)))

(declare-fun b_free!134889 () Bool)

(declare-fun b_next!135679 () Bool)

(assert (=> b!7905245 (= b_free!134889 (not b_next!135679))))

(declare-fun tp!2354926 () Bool)

(declare-fun b_and!353045 () Bool)

(assert (=> b!7905245 (= tp!2354926 b_and!353045)))

(declare-fun b!7905235 () Bool)

(declare-datatypes ((List!74362 0))(
  ( (Nil!74238) (Cons!74238 (h!80686 (_ BitVec 16)) (t!389563 List!74362)) )
))
(declare-datatypes ((TokenValue!8930 0))(
  ( (FloatLiteralValue!17860 (text!62955 List!74362)) (TokenValueExt!8929 (__x!35147 Int)) (Broken!44650 (value!287454 List!74362)) (Object!9053) (End!8930) (Def!8930) (Underscore!8930) (Match!8930) (Else!8930) (Error!8930) (Case!8930) (If!8930) (Extends!8930) (Abstract!8930) (Class!8930) (Val!8930) (DelimiterValue!17860 (del!8990 List!74362)) (KeywordValue!8936 (value!287455 List!74362)) (CommentValue!17860 (value!287456 List!74362)) (WhitespaceValue!17860 (value!287457 List!74362)) (IndentationValue!8930 (value!287458 List!74362)) (String!83071) (Int32!8930) (Broken!44651 (value!287459 List!74362)) (Boolean!8931) (Unit!169280) (OperatorValue!8933 (op!8990 List!74362)) (IdentifierValue!17860 (value!287460 List!74362)) (IdentifierValue!17861 (value!287461 List!74362)) (WhitespaceValue!17861 (value!287462 List!74362)) (True!17860) (False!17860) (Broken!44652 (value!287463 List!74362)) (Broken!44653 (value!287464 List!74362)) (True!17861) (RightBrace!8930) (RightBracket!8930) (Colon!8930) (Null!8930) (Comma!8930) (LeftBracket!8930) (False!17861) (LeftBrace!8930) (ImaginaryLiteralValue!8930 (text!62956 List!74362)) (StringLiteralValue!26790 (value!287465 List!74362)) (EOFValue!8930 (value!287466 List!74362)) (IdentValue!8930 (value!287467 List!74362)) (DelimiterValue!17861 (value!287468 List!74362)) (DedentValue!8930 (value!287469 List!74362)) (NewLineValue!8930 (value!287470 List!74362)) (IntegerValue!26790 (value!287471 (_ BitVec 32)) (text!62957 List!74362)) (IntegerValue!26791 (value!287472 Int) (text!62958 List!74362)) (Times!8930) (Or!8930) (Equal!8930) (Minus!8930) (Broken!44654 (value!287473 List!74362)) (And!8930) (Div!8930) (LessEqual!8930) (Mod!8930) (Concat!30247) (Not!8930) (Plus!8930) (SpaceValue!8930 (value!287474 List!74362)) (IntegerValue!26792 (value!287475 Int) (text!62959 List!74362)) (StringLiteralValue!26791 (text!62960 List!74362)) (FloatLiteralValue!17861 (text!62961 List!74362)) (BytesLiteralValue!8930 (value!287476 List!74362)) (CommentValue!17861 (value!287477 List!74362)) (StringLiteralValue!26792 (value!287478 List!74362)) (ErrorTokenValue!8930 (msg!8991 List!74362)) )
))
(declare-datatypes ((C!42964 0))(
  ( (C!42965 (val!31946 Int)) )
))
(declare-datatypes ((List!74363 0))(
  ( (Nil!74239) (Cons!74239 (h!80687 C!42964) (t!389564 List!74363)) )
))
(declare-datatypes ((IArray!31637 0))(
  ( (IArray!31638 (innerList!15876 List!74363)) )
))
(declare-datatypes ((Conc!15788 0))(
  ( (Node!15788 (left!56626 Conc!15788) (right!56956 Conc!15788) (csize!31806 Int) (cheight!15999 Int)) (Leaf!30063 (xs!19170 IArray!31637) (csize!31807 Int)) (Empty!15788) )
))
(declare-datatypes ((BalanceConc!30694 0))(
  ( (BalanceConc!30695 (c!1450645 Conc!15788)) )
))
(declare-datatypes ((String!83072 0))(
  ( (String!83073 (value!287479 String)) )
))
(declare-datatypes ((Regex!21317 0))(
  ( (ElementMatch!21317 (c!1450646 C!42964)) (Concat!30248 (regOne!43146 Regex!21317) (regTwo!43146 Regex!21317)) (EmptyExpr!21317) (Star!21317 (reg!21646 Regex!21317)) (EmptyLang!21317) (Union!21317 (regOne!43147 Regex!21317) (regTwo!43147 Regex!21317)) )
))
(declare-datatypes ((TokenValueInjection!17168 0))(
  ( (TokenValueInjection!17169 (toValue!11671 Int) (toChars!11530 Int)) )
))
(declare-datatypes ((Rule!17028 0))(
  ( (Rule!17029 (regex!8614 Regex!21317) (tag!9478 String!83072) (isSeparator!8614 Bool) (transformation!8614 TokenValueInjection!17168)) )
))
(declare-datatypes ((Token!15648 0))(
  ( (Token!15649 (value!287480 TokenValue!8930) (rule!11906 Rule!17028) (size!43027 Int) (originalCharacters!8855 List!74363)) )
))
(declare-datatypes ((tuple2!70262 0))(
  ( (tuple2!70263 (_1!38434 Token!15648) (_2!38434 List!74363)) )
))
(declare-datatypes ((Option!17896 0))(
  ( (None!17895) (Some!17895 (v!55040 tuple2!70262)) )
))
(declare-fun err!4649 () Option!17896)

(declare-fun tp!2354921 () Bool)

(declare-fun e!4666239 () Bool)

(declare-fun e!4666241 () Bool)

(declare-fun inv!95240 (Token!15648) Bool)

(assert (=> b!7905235 (= e!4666241 (and (inv!95240 (_1!38434 (v!55040 err!4649))) e!4666239 tp!2354921))))

(declare-fun b!7905236 () Bool)

(declare-fun e!4666234 () Bool)

(declare-datatypes ((List!74364 0))(
  ( (Nil!74240) (Cons!74240 (h!80688 Rule!17028) (t!389565 List!74364)) )
))
(declare-fun rulesArg!141 () List!74364)

(declare-fun e!4666235 () Bool)

(declare-fun tp!2354927 () Bool)

(declare-fun inv!95237 (String!83072) Bool)

(declare-fun inv!95241 (TokenValueInjection!17168) Bool)

(assert (=> b!7905236 (= e!4666234 (and tp!2354927 (inv!95237 (tag!9478 (h!80688 rulesArg!141))) (inv!95241 (transformation!8614 (h!80688 rulesArg!141))) e!4666235))))

(declare-fun b!7905237 () Bool)

(declare-fun tp!2354928 () Bool)

(declare-fun e!4666238 () Bool)

(declare-fun inv!21 (TokenValue!8930) Bool)

(assert (=> b!7905237 (= e!4666239 (and (inv!21 (value!287480 (_1!38434 (v!55040 err!4649)))) e!4666238 tp!2354928))))

(declare-fun b!7905238 () Bool)

(declare-fun e!4666232 () Bool)

(declare-fun e!4666233 () Bool)

(assert (=> b!7905238 (= e!4666232 (not e!4666233))))

(declare-fun res!3136888 () Bool)

(assert (=> b!7905238 (=> res!3136888 e!4666233)))

(get-info :version)

(assert (=> b!7905238 (= res!3136888 (or (and ((_ is Cons!74240) rulesArg!141) ((_ is Nil!74240) (t!389565 rulesArg!141))) ((_ is Cons!74240) rulesArg!141)))))

(declare-fun input!1184 () List!74363)

(declare-fun isPrefix!6447 (List!74363 List!74363) Bool)

(assert (=> b!7905238 (isPrefix!6447 input!1184 input!1184)))

(declare-datatypes ((Unit!169281 0))(
  ( (Unit!169282) )
))
(declare-fun lt!2684949 () Unit!169281)

(declare-fun lemmaIsPrefixRefl!3958 (List!74363 List!74363) Unit!169281)

(assert (=> b!7905238 (= lt!2684949 (lemmaIsPrefixRefl!3958 input!1184 input!1184))))

(declare-fun b!7905239 () Bool)

(declare-fun res!3136885 () Bool)

(assert (=> b!7905239 (=> (not res!3136885) (not e!4666232))))

(declare-fun isEmpty!42600 (List!74364) Bool)

(assert (=> b!7905239 (= res!3136885 (not (isEmpty!42600 rulesArg!141)))))

(declare-fun b!7905240 () Bool)

(declare-fun res!3136886 () Bool)

(assert (=> b!7905240 (=> (not res!3136886) (not e!4666232))))

(declare-datatypes ((LexerInterface!8206 0))(
  ( (LexerInterfaceExt!8203 (__x!35148 Int)) (Lexer!8204) )
))
(declare-fun thiss!14377 () LexerInterface!8206)

(declare-fun rulesValidInductive!3425 (LexerInterface!8206 List!74364) Bool)

(assert (=> b!7905240 (= res!3136886 (rulesValidInductive!3425 thiss!14377 rulesArg!141))))

(declare-fun b!7905241 () Bool)

(declare-fun e!4666229 () Bool)

(assert (=> b!7905241 (= e!4666229 true)))

(declare-fun lt!2684950 () List!74363)

(declare-fun lt!2684948 () Option!17896)

(declare-fun list!19249 (BalanceConc!30694) List!74363)

(declare-fun charsOf!5558 (Token!15648) BalanceConc!30694)

(declare-fun get!26675 (Option!17896) tuple2!70262)

(assert (=> b!7905241 (= lt!2684950 (list!19249 (charsOf!5558 (_1!38434 (get!26675 lt!2684948)))))))

(assert (=> b!7905242 (= e!4666235 (and tp!2354929 tp!2354924))))

(declare-fun res!3136884 () Bool)

(assert (=> start!745864 (=> (not res!3136884) (not e!4666232))))

(assert (=> start!745864 (= res!3136884 ((_ is Lexer!8204) thiss!14377))))

(assert (=> start!745864 e!4666232))

(assert (=> start!745864 true))

(declare-fun e!4666242 () Bool)

(assert (=> start!745864 e!4666242))

(declare-fun e!4666231 () Bool)

(assert (=> start!745864 e!4666231))

(declare-fun b!7905243 () Bool)

(assert (=> b!7905243 (= e!4666233 e!4666229)))

(declare-fun res!3136887 () Bool)

(assert (=> b!7905243 (=> res!3136887 e!4666229)))

(declare-fun isEmpty!42601 (Option!17896) Bool)

(assert (=> b!7905243 (= res!3136887 (isEmpty!42601 lt!2684948))))

(assert (=> b!7905243 (= lt!2684948 err!4649)))

(assert (=> b!7905243 true))

(assert (=> b!7905243 e!4666241))

(declare-fun b!7905244 () Bool)

(declare-fun res!3136889 () Bool)

(assert (=> b!7905244 (=> res!3136889 e!4666229)))

(declare-fun isDefined!14472 (Option!17896) Bool)

(assert (=> b!7905244 (= res!3136889 (not (isDefined!14472 lt!2684948)))))

(declare-fun e!4666230 () Bool)

(assert (=> b!7905245 (= e!4666230 (and tp!2354923 tp!2354926))))

(declare-fun b!7905246 () Bool)

(declare-fun tp_is_empty!53009 () Bool)

(declare-fun tp!2354925 () Bool)

(assert (=> b!7905246 (= e!4666231 (and tp_is_empty!53009 tp!2354925))))

(declare-fun b!7905247 () Bool)

(declare-fun tp!2354930 () Bool)

(assert (=> b!7905247 (= e!4666242 (and e!4666234 tp!2354930))))

(declare-fun tp!2354922 () Bool)

(declare-fun b!7905248 () Bool)

(assert (=> b!7905248 (= e!4666238 (and tp!2354922 (inv!95237 (tag!9478 (rule!11906 (_1!38434 (v!55040 err!4649))))) (inv!95241 (transformation!8614 (rule!11906 (_1!38434 (v!55040 err!4649))))) e!4666230))))

(assert (= (and start!745864 res!3136884) b!7905240))

(assert (= (and b!7905240 res!3136886) b!7905239))

(assert (= (and b!7905239 res!3136885) b!7905238))

(assert (= (and b!7905238 (not res!3136888)) b!7905243))

(assert (= b!7905248 b!7905245))

(assert (= b!7905237 b!7905248))

(assert (= b!7905235 b!7905237))

(assert (= (and b!7905243 ((_ is Some!17895) err!4649)) b!7905235))

(assert (= (and b!7905243 (not res!3136887)) b!7905244))

(assert (= (and b!7905244 (not res!3136889)) b!7905241))

(assert (= b!7905236 b!7905242))

(assert (= b!7905247 b!7905236))

(assert (= (and start!745864 ((_ is Cons!74240) rulesArg!141)) b!7905247))

(assert (= (and start!745864 ((_ is Cons!74239) input!1184)) b!7905246))

(declare-fun m!8279842 () Bool)

(assert (=> b!7905235 m!8279842))

(declare-fun m!8279844 () Bool)

(assert (=> b!7905238 m!8279844))

(declare-fun m!8279846 () Bool)

(assert (=> b!7905238 m!8279846))

(declare-fun m!8279848 () Bool)

(assert (=> b!7905240 m!8279848))

(declare-fun m!8279850 () Bool)

(assert (=> b!7905239 m!8279850))

(declare-fun m!8279852 () Bool)

(assert (=> b!7905241 m!8279852))

(declare-fun m!8279854 () Bool)

(assert (=> b!7905241 m!8279854))

(assert (=> b!7905241 m!8279854))

(declare-fun m!8279856 () Bool)

(assert (=> b!7905241 m!8279856))

(declare-fun m!8279858 () Bool)

(assert (=> b!7905236 m!8279858))

(declare-fun m!8279860 () Bool)

(assert (=> b!7905236 m!8279860))

(declare-fun m!8279862 () Bool)

(assert (=> b!7905243 m!8279862))

(declare-fun m!8279864 () Bool)

(assert (=> b!7905237 m!8279864))

(declare-fun m!8279866 () Bool)

(assert (=> b!7905248 m!8279866))

(declare-fun m!8279868 () Bool)

(assert (=> b!7905248 m!8279868))

(declare-fun m!8279870 () Bool)

(assert (=> b!7905244 m!8279870))

(check-sat (not b!7905237) (not b!7905236) b_and!353043 (not b!7905247) b_and!353039 (not b!7905244) (not b!7905241) (not b_next!135673) (not b_next!135677) b_and!353041 (not b!7905240) (not b!7905248) (not b_next!135679) (not b!7905246) (not b!7905243) b_and!353045 (not b!7905239) (not b!7905238) (not b_next!135675) (not b!7905235) tp_is_empty!53009)
(check-sat b_and!353043 b_and!353045 b_and!353039 (not b_next!135673) (not b_next!135677) b_and!353041 (not b_next!135675) (not b_next!135679))
