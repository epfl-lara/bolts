; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745956 () Bool)

(assert start!745956)

(declare-fun b!7906028 () Bool)

(declare-fun b_free!134971 () Bool)

(declare-fun b_next!135761 () Bool)

(assert (=> b!7906028 (= b_free!134971 (not b_next!135761))))

(declare-fun tp!2355304 () Bool)

(declare-fun b_and!353151 () Bool)

(assert (=> b!7906028 (= tp!2355304 b_and!353151)))

(declare-fun b_free!134973 () Bool)

(declare-fun b_next!135763 () Bool)

(assert (=> b!7906028 (= b_free!134973 (not b_next!135763))))

(declare-fun tp!2355305 () Bool)

(declare-fun b_and!353153 () Bool)

(assert (=> b!7906028 (= tp!2355305 b_and!353153)))

(declare-fun b!7906034 () Bool)

(declare-fun b_free!134975 () Bool)

(declare-fun b_next!135765 () Bool)

(assert (=> b!7906034 (= b_free!134975 (not b_next!135765))))

(declare-fun tp!2355307 () Bool)

(declare-fun b_and!353155 () Bool)

(assert (=> b!7906034 (= tp!2355307 b_and!353155)))

(declare-fun b_free!134977 () Bool)

(declare-fun b_next!135767 () Bool)

(assert (=> b!7906034 (= b_free!134977 (not b_next!135767))))

(declare-fun tp!2355308 () Bool)

(declare-fun b_and!353157 () Bool)

(assert (=> b!7906034 (= tp!2355308 b_and!353157)))

(declare-fun b!7906024 () Bool)

(declare-fun e!4666866 () Bool)

(declare-fun e!4666862 () Bool)

(assert (=> b!7906024 (= e!4666866 (not e!4666862))))

(declare-fun res!3137269 () Bool)

(assert (=> b!7906024 (=> res!3137269 e!4666862)))

(declare-datatypes ((List!74392 0))(
  ( (Nil!74268) (Cons!74268 (h!80716 (_ BitVec 16)) (t!389629 List!74392)) )
))
(declare-datatypes ((TokenValue!8940 0))(
  ( (FloatLiteralValue!17880 (text!63025 List!74392)) (TokenValueExt!8939 (__x!35167 Int)) (Broken!44700 (value!287739 List!74392)) (Object!9063) (End!8940) (Def!8940) (Underscore!8940) (Match!8940) (Else!8940) (Error!8940) (Case!8940) (If!8940) (Extends!8940) (Abstract!8940) (Class!8940) (Val!8940) (DelimiterValue!17880 (del!9000 List!74392)) (KeywordValue!8946 (value!287740 List!74392)) (CommentValue!17880 (value!287741 List!74392)) (WhitespaceValue!17880 (value!287742 List!74392)) (IndentationValue!8940 (value!287743 List!74392)) (String!83121) (Int32!8940) (Broken!44701 (value!287744 List!74392)) (Boolean!8941) (Unit!169310) (OperatorValue!8943 (op!9000 List!74392)) (IdentifierValue!17880 (value!287745 List!74392)) (IdentifierValue!17881 (value!287746 List!74392)) (WhitespaceValue!17881 (value!287747 List!74392)) (True!17880) (False!17880) (Broken!44702 (value!287748 List!74392)) (Broken!44703 (value!287749 List!74392)) (True!17881) (RightBrace!8940) (RightBracket!8940) (Colon!8940) (Null!8940) (Comma!8940) (LeftBracket!8940) (False!17881) (LeftBrace!8940) (ImaginaryLiteralValue!8940 (text!63026 List!74392)) (StringLiteralValue!26820 (value!287750 List!74392)) (EOFValue!8940 (value!287751 List!74392)) (IdentValue!8940 (value!287752 List!74392)) (DelimiterValue!17881 (value!287753 List!74392)) (DedentValue!8940 (value!287754 List!74392)) (NewLineValue!8940 (value!287755 List!74392)) (IntegerValue!26820 (value!287756 (_ BitVec 32)) (text!63027 List!74392)) (IntegerValue!26821 (value!287757 Int) (text!63028 List!74392)) (Times!8940) (Or!8940) (Equal!8940) (Minus!8940) (Broken!44704 (value!287758 List!74392)) (And!8940) (Div!8940) (LessEqual!8940) (Mod!8940) (Concat!30267) (Not!8940) (Plus!8940) (SpaceValue!8940 (value!287759 List!74392)) (IntegerValue!26822 (value!287760 Int) (text!63029 List!74392)) (StringLiteralValue!26821 (text!63030 List!74392)) (FloatLiteralValue!17881 (text!63031 List!74392)) (BytesLiteralValue!8940 (value!287761 List!74392)) (CommentValue!17881 (value!287762 List!74392)) (StringLiteralValue!26822 (value!287763 List!74392)) (ErrorTokenValue!8940 (msg!9001 List!74392)) )
))
(declare-datatypes ((C!42984 0))(
  ( (C!42985 (val!31956 Int)) )
))
(declare-datatypes ((List!74393 0))(
  ( (Nil!74269) (Cons!74269 (h!80717 C!42984) (t!389630 List!74393)) )
))
(declare-datatypes ((IArray!31657 0))(
  ( (IArray!31658 (innerList!15886 List!74393)) )
))
(declare-datatypes ((Conc!15798 0))(
  ( (Node!15798 (left!56645 Conc!15798) (right!56975 Conc!15798) (csize!31826 Int) (cheight!16009 Int)) (Leaf!30078 (xs!19180 IArray!31657) (csize!31827 Int)) (Empty!15798) )
))
(declare-datatypes ((BalanceConc!30714 0))(
  ( (BalanceConc!30715 (c!1450709 Conc!15798)) )
))
(declare-datatypes ((Regex!21327 0))(
  ( (ElementMatch!21327 (c!1450710 C!42984)) (Concat!30268 (regOne!43166 Regex!21327) (regTwo!43166 Regex!21327)) (EmptyExpr!21327) (Star!21327 (reg!21656 Regex!21327)) (EmptyLang!21327) (Union!21327 (regOne!43167 Regex!21327) (regTwo!43167 Regex!21327)) )
))
(declare-datatypes ((String!83122 0))(
  ( (String!83123 (value!287764 String)) )
))
(declare-datatypes ((TokenValueInjection!17188 0))(
  ( (TokenValueInjection!17189 (toValue!11681 Int) (toChars!11540 Int)) )
))
(declare-datatypes ((Rule!17048 0))(
  ( (Rule!17049 (regex!8624 Regex!21327) (tag!9488 String!83122) (isSeparator!8624 Bool) (transformation!8624 TokenValueInjection!17188)) )
))
(declare-datatypes ((List!74394 0))(
  ( (Nil!74270) (Cons!74270 (h!80718 Rule!17048) (t!389631 List!74394)) )
))
(declare-fun rulesArg!141 () List!74394)

(get-info :version)

(assert (=> b!7906024 (= res!3137269 (or (and ((_ is Cons!74270) rulesArg!141) ((_ is Nil!74270) (t!389631 rulesArg!141))) ((_ is Cons!74270) rulesArg!141)))))

(declare-fun input!1184 () List!74393)

(declare-fun isPrefix!6457 (List!74393 List!74393) Bool)

(assert (=> b!7906024 (isPrefix!6457 input!1184 input!1184)))

(declare-datatypes ((Unit!169311 0))(
  ( (Unit!169312) )
))
(declare-fun lt!2685112 () Unit!169311)

(declare-fun lemmaIsPrefixRefl!3968 (List!74393 List!74393) Unit!169311)

(assert (=> b!7906024 (= lt!2685112 (lemmaIsPrefixRefl!3968 input!1184 input!1184))))

(declare-fun b!7906025 () Bool)

(declare-fun res!3137277 () Bool)

(assert (=> b!7906025 (=> (not res!3137277) (not e!4666866))))

(declare-fun isEmpty!42622 (List!74394) Bool)

(assert (=> b!7906025 (= res!3137277 (not (isEmpty!42622 rulesArg!141)))))

(declare-fun b!7906026 () Bool)

(declare-fun res!3137276 () Bool)

(assert (=> b!7906026 (=> (not res!3137276) (not e!4666866))))

(declare-datatypes ((LexerInterface!8216 0))(
  ( (LexerInterfaceExt!8213 (__x!35168 Int)) (Lexer!8214) )
))
(declare-fun thiss!14377 () LexerInterface!8216)

(declare-fun rulesValidInductive!3435 (LexerInterface!8216 List!74394) Bool)

(assert (=> b!7906026 (= res!3137276 (rulesValidInductive!3435 thiss!14377 rulesArg!141))))

(declare-fun b!7906027 () Bool)

(declare-fun e!4666861 () Bool)

(declare-fun e!4666871 () Bool)

(assert (=> b!7906027 (= e!4666861 e!4666871)))

(declare-fun res!3137279 () Bool)

(assert (=> b!7906027 (=> res!3137279 e!4666871)))

(declare-fun lt!2685111 () List!74393)

(declare-datatypes ((Token!15668 0))(
  ( (Token!15669 (value!287765 TokenValue!8940) (rule!11916 Rule!17048) (size!43046 Int) (originalCharacters!8865 List!74393)) )
))
(declare-datatypes ((tuple2!70282 0))(
  ( (tuple2!70283 (_1!38444 Token!15668) (_2!38444 List!74393)) )
))
(declare-fun lt!2685114 () tuple2!70282)

(assert (=> b!7906027 (= res!3137279 (not (= lt!2685111 (originalCharacters!8865 (_1!38444 lt!2685114)))))))

(declare-fun list!19261 (BalanceConc!30714) List!74393)

(declare-fun charsOf!5568 (Token!15668) BalanceConc!30714)

(assert (=> b!7906027 (= lt!2685111 (list!19261 (charsOf!5568 (_1!38444 lt!2685114))))))

(declare-datatypes ((Option!17906 0))(
  ( (None!17905) (Some!17905 (v!55050 tuple2!70282)) )
))
(declare-fun lt!2685113 () Option!17906)

(declare-fun get!26690 (Option!17906) tuple2!70282)

(assert (=> b!7906027 (= lt!2685114 (get!26690 lt!2685113))))

(declare-fun e!4666869 () Bool)

(assert (=> b!7906028 (= e!4666869 (and tp!2355304 tp!2355305))))

(declare-fun b!7906029 () Bool)

(declare-fun res!3137271 () Bool)

(assert (=> b!7906029 (=> res!3137271 e!4666871)))

(declare-fun size!43047 (List!74393) Int)

(assert (=> b!7906029 (= res!3137271 (>= (size!43047 (_2!38444 lt!2685114)) (size!43047 input!1184)))))

(declare-fun b!7906030 () Bool)

(declare-fun res!3137270 () Bool)

(assert (=> b!7906030 (=> res!3137270 e!4666871)))

(declare-fun matchR!10654 (Regex!21327 List!74393) Bool)

(assert (=> b!7906030 (= res!3137270 (not (matchR!10654 (regex!8624 (rule!11916 (_1!38444 lt!2685114))) lt!2685111)))))

(declare-fun tp!2355309 () Bool)

(declare-fun b!7906031 () Bool)

(declare-fun err!4689 () Option!17906)

(declare-fun e!4666860 () Bool)

(declare-fun e!4666858 () Bool)

(declare-fun inv!95276 (String!83122) Bool)

(declare-fun inv!95279 (TokenValueInjection!17188) Bool)

(assert (=> b!7906031 (= e!4666860 (and tp!2355309 (inv!95276 (tag!9488 (rule!11916 (_1!38444 (v!55050 err!4689))))) (inv!95279 (transformation!8624 (rule!11916 (_1!38444 (v!55050 err!4689))))) e!4666858))))

(declare-fun b!7906032 () Bool)

(assert (=> b!7906032 (= e!4666871 true)))

(declare-fun res!3137278 () Bool)

(assert (=> start!745956 (=> (not res!3137278) (not e!4666866))))

(assert (=> start!745956 (= res!3137278 ((_ is Lexer!8214) thiss!14377))))

(assert (=> start!745956 e!4666866))

(assert (=> start!745956 true))

(declare-fun e!4666872 () Bool)

(assert (=> start!745956 e!4666872))

(declare-fun e!4666868 () Bool)

(assert (=> start!745956 e!4666868))

(declare-fun b!7906033 () Bool)

(declare-fun e!4666865 () Bool)

(declare-fun tp!2355310 () Bool)

(assert (=> b!7906033 (= e!4666872 (and e!4666865 tp!2355310))))

(assert (=> b!7906034 (= e!4666858 (and tp!2355307 tp!2355308))))

(declare-fun b!7906035 () Bool)

(declare-fun res!3137273 () Bool)

(assert (=> b!7906035 (=> res!3137273 e!4666871)))

(declare-fun apply!14347 (TokenValueInjection!17188 BalanceConc!30714) TokenValue!8940)

(declare-fun seqFromList!6165 (List!74393) BalanceConc!30714)

(assert (=> b!7906035 (= res!3137273 (not (= (value!287765 (_1!38444 lt!2685114)) (apply!14347 (transformation!8624 (rule!11916 (_1!38444 lt!2685114))) (seqFromList!6165 (originalCharacters!8865 (_1!38444 lt!2685114)))))))))

(declare-fun b!7906036 () Bool)

(declare-fun res!3137275 () Bool)

(assert (=> b!7906036 (=> res!3137275 e!4666871)))

(declare-fun ++!18178 (List!74393 List!74393) List!74393)

(assert (=> b!7906036 (= res!3137275 (not (= (++!18178 lt!2685111 (_2!38444 lt!2685114)) input!1184)))))

(declare-fun tp!2355311 () Bool)

(declare-fun b!7906037 () Bool)

(assert (=> b!7906037 (= e!4666865 (and tp!2355311 (inv!95276 (tag!9488 (h!80718 rulesArg!141))) (inv!95279 (transformation!8624 (h!80718 rulesArg!141))) e!4666869))))

(declare-fun b!7906038 () Bool)

(declare-fun res!3137272 () Bool)

(assert (=> b!7906038 (=> res!3137272 e!4666861)))

(declare-fun isDefined!14482 (Option!17906) Bool)

(assert (=> b!7906038 (= res!3137272 (not (isDefined!14482 lt!2685113)))))

(declare-fun e!4666870 () Bool)

(declare-fun b!7906039 () Bool)

(declare-fun e!4666859 () Bool)

(declare-fun tp!2355306 () Bool)

(declare-fun inv!95280 (Token!15668) Bool)

(assert (=> b!7906039 (= e!4666870 (and (inv!95280 (_1!38444 (v!55050 err!4689))) e!4666859 tp!2355306))))

(declare-fun b!7906040 () Bool)

(declare-fun tp_is_empty!53029 () Bool)

(declare-fun tp!2355312 () Bool)

(assert (=> b!7906040 (= e!4666868 (and tp_is_empty!53029 tp!2355312))))

(declare-fun b!7906041 () Bool)

(assert (=> b!7906041 (= e!4666862 e!4666861)))

(declare-fun res!3137274 () Bool)

(assert (=> b!7906041 (=> res!3137274 e!4666861)))

(declare-fun isEmpty!42623 (Option!17906) Bool)

(assert (=> b!7906041 (= res!3137274 (isEmpty!42623 lt!2685113))))

(assert (=> b!7906041 (= lt!2685113 err!4689)))

(assert (=> b!7906041 true))

(assert (=> b!7906041 e!4666870))

(declare-fun b!7906042 () Bool)

(declare-fun tp!2355303 () Bool)

(declare-fun inv!21 (TokenValue!8940) Bool)

(assert (=> b!7906042 (= e!4666859 (and (inv!21 (value!287765 (_1!38444 (v!55050 err!4689)))) e!4666860 tp!2355303))))

(assert (= (and start!745956 res!3137278) b!7906026))

(assert (= (and b!7906026 res!3137276) b!7906025))

(assert (= (and b!7906025 res!3137277) b!7906024))

(assert (= (and b!7906024 (not res!3137269)) b!7906041))

(assert (= b!7906031 b!7906034))

(assert (= b!7906042 b!7906031))

(assert (= b!7906039 b!7906042))

(assert (= (and b!7906041 ((_ is Some!17905) err!4689)) b!7906039))

(assert (= (and b!7906041 (not res!3137274)) b!7906038))

(assert (= (and b!7906038 (not res!3137272)) b!7906027))

(assert (= (and b!7906027 (not res!3137279)) b!7906029))

(assert (= (and b!7906029 (not res!3137271)) b!7906036))

(assert (= (and b!7906036 (not res!3137275)) b!7906035))

(assert (= (and b!7906035 (not res!3137273)) b!7906030))

(assert (= (and b!7906030 (not res!3137270)) b!7906032))

(assert (= b!7906037 b!7906028))

(assert (= b!7906033 b!7906037))

(assert (= (and start!745956 ((_ is Cons!74270) rulesArg!141)) b!7906033))

(assert (= (and start!745956 ((_ is Cons!74269) input!1184)) b!7906040))

(declare-fun m!8280382 () Bool)

(assert (=> b!7906031 m!8280382))

(declare-fun m!8280384 () Bool)

(assert (=> b!7906031 m!8280384))

(declare-fun m!8280386 () Bool)

(assert (=> b!7906035 m!8280386))

(assert (=> b!7906035 m!8280386))

(declare-fun m!8280388 () Bool)

(assert (=> b!7906035 m!8280388))

(declare-fun m!8280390 () Bool)

(assert (=> b!7906026 m!8280390))

(declare-fun m!8280392 () Bool)

(assert (=> b!7906042 m!8280392))

(declare-fun m!8280394 () Bool)

(assert (=> b!7906029 m!8280394))

(declare-fun m!8280396 () Bool)

(assert (=> b!7906029 m!8280396))

(declare-fun m!8280398 () Bool)

(assert (=> b!7906039 m!8280398))

(declare-fun m!8280400 () Bool)

(assert (=> b!7906036 m!8280400))

(declare-fun m!8280402 () Bool)

(assert (=> b!7906041 m!8280402))

(declare-fun m!8280404 () Bool)

(assert (=> b!7906024 m!8280404))

(declare-fun m!8280406 () Bool)

(assert (=> b!7906024 m!8280406))

(declare-fun m!8280408 () Bool)

(assert (=> b!7906027 m!8280408))

(assert (=> b!7906027 m!8280408))

(declare-fun m!8280410 () Bool)

(assert (=> b!7906027 m!8280410))

(declare-fun m!8280412 () Bool)

(assert (=> b!7906027 m!8280412))

(declare-fun m!8280414 () Bool)

(assert (=> b!7906030 m!8280414))

(declare-fun m!8280416 () Bool)

(assert (=> b!7906038 m!8280416))

(declare-fun m!8280418 () Bool)

(assert (=> b!7906037 m!8280418))

(declare-fun m!8280420 () Bool)

(assert (=> b!7906037 m!8280420))

(declare-fun m!8280422 () Bool)

(assert (=> b!7906025 m!8280422))

(check-sat tp_is_empty!53029 (not b!7906033) (not b!7906029) (not b!7906040) (not b!7906041) b_and!353153 (not b!7906030) (not b!7906025) (not b!7906042) (not b!7906039) b_and!353157 b_and!353151 (not b!7906026) (not b_next!135761) (not b_next!135765) (not b!7906035) (not b!7906027) (not b!7906038) b_and!353155 (not b!7906036) (not b!7906024) (not b_next!135767) (not b!7906031) (not b!7906037) (not b_next!135763))
(check-sat b_and!353153 (not b_next!135765) b_and!353155 (not b_next!135767) b_and!353157 b_and!353151 (not b_next!135761) (not b_next!135763))
