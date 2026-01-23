; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49276 () Bool)

(assert start!49276)

(declare-fun b!534570 () Bool)

(declare-fun b_free!14553 () Bool)

(declare-fun b_next!14569 () Bool)

(assert (=> b!534570 (= b_free!14553 (not b_next!14569))))

(declare-fun tp!170592 () Bool)

(declare-fun b_and!52267 () Bool)

(assert (=> b!534570 (= tp!170592 b_and!52267)))

(declare-fun b_free!14555 () Bool)

(declare-fun b_next!14571 () Bool)

(assert (=> b!534570 (= b_free!14555 (not b_next!14571))))

(declare-fun tp!170594 () Bool)

(declare-fun b_and!52269 () Bool)

(assert (=> b!534570 (= tp!170594 b_and!52269)))

(declare-fun b!534575 () Bool)

(declare-fun b_free!14557 () Bool)

(declare-fun b_next!14573 () Bool)

(assert (=> b!534575 (= b_free!14557 (not b_next!14573))))

(declare-fun tp!170596 () Bool)

(declare-fun b_and!52271 () Bool)

(assert (=> b!534575 (= tp!170596 b_and!52271)))

(declare-fun b_free!14559 () Bool)

(declare-fun b_next!14575 () Bool)

(assert (=> b!534575 (= b_free!14559 (not b_next!14575))))

(declare-fun tp!170593 () Bool)

(declare-fun b_and!52273 () Bool)

(assert (=> b!534575 (= tp!170593 b_and!52273)))

(declare-fun b!534553 () Bool)

(declare-fun res!225993 () Bool)

(declare-fun e!322163 () Bool)

(assert (=> b!534553 (=> (not res!225993) (not e!322163))))

(declare-datatypes ((C!3476 0))(
  ( (C!3477 (val!1964 Int)) )
))
(declare-datatypes ((Regex!1277 0))(
  ( (ElementMatch!1277 (c!101830 C!3476)) (Concat!2244 (regOne!3066 Regex!1277) (regTwo!3066 Regex!1277)) (EmptyExpr!1277) (Star!1277 (reg!1606 Regex!1277)) (EmptyLang!1277) (Union!1277 (regOne!3067 Regex!1277) (regTwo!3067 Regex!1277)) )
))
(declare-datatypes ((String!6578 0))(
  ( (String!6579 (value!31716 String)) )
))
(declare-datatypes ((List!5161 0))(
  ( (Nil!5151) (Cons!5151 (h!10552 (_ BitVec 16)) (t!74018 List!5161)) )
))
(declare-datatypes ((TokenValue!967 0))(
  ( (FloatLiteralValue!1934 (text!7214 List!5161)) (TokenValueExt!966 (__x!3832 Int)) (Broken!4835 (value!31717 List!5161)) (Object!976) (End!967) (Def!967) (Underscore!967) (Match!967) (Else!967) (Error!967) (Case!967) (If!967) (Extends!967) (Abstract!967) (Class!967) (Val!967) (DelimiterValue!1934 (del!1027 List!5161)) (KeywordValue!973 (value!31718 List!5161)) (CommentValue!1934 (value!31719 List!5161)) (WhitespaceValue!1934 (value!31720 List!5161)) (IndentationValue!967 (value!31721 List!5161)) (String!6580) (Int32!967) (Broken!4836 (value!31722 List!5161)) (Boolean!968) (Unit!8990) (OperatorValue!970 (op!1027 List!5161)) (IdentifierValue!1934 (value!31723 List!5161)) (IdentifierValue!1935 (value!31724 List!5161)) (WhitespaceValue!1935 (value!31725 List!5161)) (True!1934) (False!1934) (Broken!4837 (value!31726 List!5161)) (Broken!4838 (value!31727 List!5161)) (True!1935) (RightBrace!967) (RightBracket!967) (Colon!967) (Null!967) (Comma!967) (LeftBracket!967) (False!1935) (LeftBrace!967) (ImaginaryLiteralValue!967 (text!7215 List!5161)) (StringLiteralValue!2901 (value!31728 List!5161)) (EOFValue!967 (value!31729 List!5161)) (IdentValue!967 (value!31730 List!5161)) (DelimiterValue!1935 (value!31731 List!5161)) (DedentValue!967 (value!31732 List!5161)) (NewLineValue!967 (value!31733 List!5161)) (IntegerValue!2901 (value!31734 (_ BitVec 32)) (text!7216 List!5161)) (IntegerValue!2902 (value!31735 Int) (text!7217 List!5161)) (Times!967) (Or!967) (Equal!967) (Minus!967) (Broken!4839 (value!31736 List!5161)) (And!967) (Div!967) (LessEqual!967) (Mod!967) (Concat!2245) (Not!967) (Plus!967) (SpaceValue!967 (value!31737 List!5161)) (IntegerValue!2903 (value!31738 Int) (text!7218 List!5161)) (StringLiteralValue!2902 (text!7219 List!5161)) (FloatLiteralValue!1935 (text!7220 List!5161)) (BytesLiteralValue!967 (value!31739 List!5161)) (CommentValue!1935 (value!31740 List!5161)) (StringLiteralValue!2903 (value!31741 List!5161)) (ErrorTokenValue!967 (msg!1028 List!5161)) )
))
(declare-datatypes ((List!5162 0))(
  ( (Nil!5152) (Cons!5152 (h!10553 C!3476) (t!74019 List!5162)) )
))
(declare-datatypes ((IArray!3321 0))(
  ( (IArray!3322 (innerList!1718 List!5162)) )
))
(declare-datatypes ((Conc!1660 0))(
  ( (Node!1660 (left!4328 Conc!1660) (right!4658 Conc!1660) (csize!3550 Int) (cheight!1871 Int)) (Leaf!2639 (xs!4297 IArray!3321) (csize!3551 Int)) (Empty!1660) )
))
(declare-datatypes ((BalanceConc!3328 0))(
  ( (BalanceConc!3329 (c!101831 Conc!1660)) )
))
(declare-datatypes ((TokenValueInjection!1702 0))(
  ( (TokenValueInjection!1703 (toValue!1790 Int) (toChars!1649 Int)) )
))
(declare-datatypes ((Rule!1686 0))(
  ( (Rule!1687 (regex!943 Regex!1277) (tag!1205 String!6578) (isSeparator!943 Bool) (transformation!943 TokenValueInjection!1702)) )
))
(declare-datatypes ((List!5163 0))(
  ( (Nil!5153) (Cons!5153 (h!10554 Rule!1686) (t!74020 List!5163)) )
))
(declare-fun rules!3103 () List!5163)

(declare-fun isEmpty!3726 (List!5163) Bool)

(assert (=> b!534553 (= res!225993 (not (isEmpty!3726 rules!3103)))))

(declare-fun b!534554 () Bool)

(declare-fun e!322158 () Bool)

(declare-fun e!322155 () Bool)

(assert (=> b!534554 (= e!322158 e!322155)))

(declare-fun res!225985 () Bool)

(assert (=> b!534554 (=> (not res!225985) (not e!322155))))

(declare-fun lt!220379 () List!5162)

(declare-fun lt!220398 () List!5162)

(assert (=> b!534554 (= res!225985 (= lt!220379 lt!220398))))

(declare-fun lt!220395 () List!5162)

(declare-fun suffix!1342 () List!5162)

(declare-fun ++!1431 (List!5162 List!5162) List!5162)

(assert (=> b!534554 (= lt!220379 (++!1431 lt!220395 suffix!1342))))

(declare-fun b!534555 () Bool)

(declare-fun e!322160 () Bool)

(declare-fun tp_is_empty!2909 () Bool)

(declare-fun tp!170589 () Bool)

(assert (=> b!534555 (= e!322160 (and tp_is_empty!2909 tp!170589))))

(declare-fun b!534556 () Bool)

(declare-fun e!322149 () Bool)

(declare-fun e!322156 () Bool)

(assert (=> b!534556 (= e!322149 e!322156)))

(declare-fun res!225992 () Bool)

(assert (=> b!534556 (=> (not res!225992) (not e!322156))))

(declare-datatypes ((Token!1622 0))(
  ( (Token!1623 (value!31742 TokenValue!967) (rule!1645 Rule!1686) (size!4156 Int) (originalCharacters!982 List!5162)) )
))
(declare-datatypes ((tuple2!6244 0))(
  ( (tuple2!6245 (_1!3386 Token!1622) (_2!3386 List!5162)) )
))
(declare-datatypes ((Option!1293 0))(
  ( (None!1292) (Some!1292 (v!16099 tuple2!6244)) )
))
(declare-fun lt!220382 () Option!1293)

(declare-fun isDefined!1105 (Option!1293) Bool)

(assert (=> b!534556 (= res!225992 (isDefined!1105 lt!220382))))

(declare-datatypes ((LexerInterface!829 0))(
  ( (LexerInterfaceExt!826 (__x!3833 Int)) (Lexer!827) )
))
(declare-fun thiss!22590 () LexerInterface!829)

(declare-fun maxPrefix!527 (LexerInterface!829 List!5163 List!5162) Option!1293)

(assert (=> b!534556 (= lt!220382 (maxPrefix!527 thiss!22590 rules!3103 lt!220398))))

(declare-fun input!2705 () List!5162)

(assert (=> b!534556 (= lt!220398 (++!1431 input!2705 suffix!1342))))

(declare-fun b!534557 () Bool)

(declare-fun e!322145 () Bool)

(declare-fun e!322151 () Bool)

(declare-fun tp!170591 () Bool)

(assert (=> b!534557 (= e!322145 (and e!322151 tp!170591))))

(declare-fun tp!170595 () Bool)

(declare-fun e!322157 () Bool)

(declare-fun b!534558 () Bool)

(declare-fun inv!6465 (String!6578) Bool)

(declare-fun inv!6468 (TokenValueInjection!1702) Bool)

(assert (=> b!534558 (= e!322151 (and tp!170595 (inv!6465 (tag!1205 (h!10554 rules!3103))) (inv!6468 (transformation!943 (h!10554 rules!3103))) e!322157))))

(declare-fun b!534559 () Bool)

(declare-fun e!322148 () Bool)

(declare-fun tp!170588 () Bool)

(assert (=> b!534559 (= e!322148 (and tp_is_empty!2909 tp!170588))))

(declare-fun token!491 () Token!1622)

(declare-fun tp!170590 () Bool)

(declare-fun b!534560 () Bool)

(declare-fun e!322144 () Bool)

(declare-fun e!322153 () Bool)

(declare-fun inv!21 (TokenValue!967) Bool)

(assert (=> b!534560 (= e!322144 (and (inv!21 (value!31742 token!491)) e!322153 tp!170590))))

(declare-fun b!534561 () Bool)

(declare-fun e!322154 () Bool)

(declare-fun e!322147 () Bool)

(assert (=> b!534561 (= e!322154 e!322147)))

(declare-fun res!225989 () Bool)

(assert (=> b!534561 (=> res!225989 e!322147)))

(declare-fun isPrefix!585 (List!5162 List!5162) Bool)

(assert (=> b!534561 (= res!225989 (not (isPrefix!585 lt!220395 lt!220398)))))

(declare-fun lt!220375 () List!5162)

(declare-fun getSuffix!108 (List!5162 List!5162) List!5162)

(assert (=> b!534561 (= lt!220375 (getSuffix!108 lt!220398 lt!220395))))

(declare-fun b!534562 () Bool)

(declare-datatypes ((Unit!8991 0))(
  ( (Unit!8992) )
))
(declare-fun e!322159 () Unit!8991)

(declare-fun Unit!8993 () Unit!8991)

(assert (=> b!534562 (= e!322159 Unit!8993)))

(assert (=> b!534562 false))

(declare-fun res!225994 () Bool)

(assert (=> start!49276 (=> (not res!225994) (not e!322163))))

(get-info :version)

(assert (=> start!49276 (= res!225994 ((_ is Lexer!827) thiss!22590))))

(assert (=> start!49276 e!322163))

(assert (=> start!49276 e!322160))

(assert (=> start!49276 e!322145))

(declare-fun inv!6469 (Token!1622) Bool)

(assert (=> start!49276 (and (inv!6469 token!491) e!322144)))

(assert (=> start!49276 true))

(assert (=> start!49276 e!322148))

(declare-fun b!534563 () Bool)

(assert (=> b!534563 (= e!322147 true)))

(declare-fun lt!220376 () List!5162)

(assert (=> b!534563 (= lt!220376 (++!1431 lt!220395 lt!220375))))

(declare-fun b!534564 () Bool)

(assert (=> b!534564 (= e!322155 (not e!322154))))

(declare-fun res!225986 () Bool)

(assert (=> b!534564 (=> res!225986 e!322154)))

(assert (=> b!534564 (= res!225986 (not (isPrefix!585 input!2705 lt!220379)))))

(assert (=> b!534564 (isPrefix!585 lt!220395 lt!220379)))

(declare-fun lt!220394 () Unit!8991)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!436 (List!5162 List!5162) Unit!8991)

(assert (=> b!534564 (= lt!220394 (lemmaConcatTwoListThenFirstIsPrefix!436 lt!220395 suffix!1342))))

(assert (=> b!534564 (isPrefix!585 input!2705 lt!220398)))

(declare-fun lt!220389 () Unit!8991)

(assert (=> b!534564 (= lt!220389 (lemmaConcatTwoListThenFirstIsPrefix!436 input!2705 suffix!1342))))

(declare-fun e!322161 () Bool)

(assert (=> b!534564 e!322161))

(declare-fun res!225984 () Bool)

(assert (=> b!534564 (=> (not res!225984) (not e!322161))))

(declare-fun lt!220378 () Option!1293)

(declare-fun lt!220380 () TokenValue!967)

(assert (=> b!534564 (= res!225984 (= (value!31742 (_1!3386 (v!16099 lt!220378))) lt!220380))))

(declare-fun lt!220377 () List!5162)

(declare-fun apply!1218 (TokenValueInjection!1702 BalanceConc!3328) TokenValue!967)

(declare-fun seqFromList!1141 (List!5162) BalanceConc!3328)

(assert (=> b!534564 (= lt!220380 (apply!1218 (transformation!943 (rule!1645 (_1!3386 (v!16099 lt!220378)))) (seqFromList!1141 lt!220377)))))

(declare-fun lt!220392 () Unit!8991)

(declare-fun lemmaInv!91 (TokenValueInjection!1702) Unit!8991)

(assert (=> b!534564 (= lt!220392 (lemmaInv!91 (transformation!943 (rule!1645 token!491))))))

(declare-fun lt!220396 () Unit!8991)

(assert (=> b!534564 (= lt!220396 (lemmaInv!91 (transformation!943 (rule!1645 (_1!3386 (v!16099 lt!220378))))))))

(declare-fun ruleValid!163 (LexerInterface!829 Rule!1686) Bool)

(assert (=> b!534564 (ruleValid!163 thiss!22590 (rule!1645 token!491))))

(declare-fun lt!220390 () Unit!8991)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!22 (LexerInterface!829 Rule!1686 List!5163) Unit!8991)

(assert (=> b!534564 (= lt!220390 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!22 thiss!22590 (rule!1645 token!491) rules!3103))))

(assert (=> b!534564 (ruleValid!163 thiss!22590 (rule!1645 (_1!3386 (v!16099 lt!220378))))))

(declare-fun lt!220384 () Unit!8991)

(assert (=> b!534564 (= lt!220384 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!22 thiss!22590 (rule!1645 (_1!3386 (v!16099 lt!220378))) rules!3103))))

(assert (=> b!534564 (isPrefix!585 input!2705 input!2705)))

(declare-fun lt!220386 () Unit!8991)

(declare-fun lemmaIsPrefixRefl!325 (List!5162 List!5162) Unit!8991)

(assert (=> b!534564 (= lt!220386 (lemmaIsPrefixRefl!325 input!2705 input!2705))))

(declare-fun lt!220385 () List!5162)

(assert (=> b!534564 (= (_2!3386 (v!16099 lt!220378)) lt!220385)))

(declare-fun lt!220383 () Unit!8991)

(declare-fun lemmaSamePrefixThenSameSuffix!312 (List!5162 List!5162 List!5162 List!5162 List!5162) Unit!8991)

(assert (=> b!534564 (= lt!220383 (lemmaSamePrefixThenSameSuffix!312 lt!220377 (_2!3386 (v!16099 lt!220378)) lt!220377 lt!220385 input!2705))))

(assert (=> b!534564 (= lt!220385 (getSuffix!108 input!2705 lt!220377))))

(assert (=> b!534564 (isPrefix!585 lt!220377 (++!1431 lt!220377 (_2!3386 (v!16099 lt!220378))))))

(declare-fun lt!220397 () Unit!8991)

(assert (=> b!534564 (= lt!220397 (lemmaConcatTwoListThenFirstIsPrefix!436 lt!220377 (_2!3386 (v!16099 lt!220378))))))

(declare-fun lt!220387 () Unit!8991)

(declare-fun lemmaCharactersSize!22 (Token!1622) Unit!8991)

(assert (=> b!534564 (= lt!220387 (lemmaCharactersSize!22 token!491))))

(declare-fun lt!220391 () Unit!8991)

(assert (=> b!534564 (= lt!220391 (lemmaCharactersSize!22 (_1!3386 (v!16099 lt!220378))))))

(declare-fun lt!220381 () Unit!8991)

(assert (=> b!534564 (= lt!220381 e!322159)))

(declare-fun c!101829 () Bool)

(declare-fun lt!220399 () Int)

(declare-fun size!4157 (List!5162) Int)

(assert (=> b!534564 (= c!101829 (> lt!220399 (size!4157 lt!220395)))))

(assert (=> b!534564 (= lt!220399 (size!4157 lt!220377))))

(declare-fun list!2143 (BalanceConc!3328) List!5162)

(declare-fun charsOf!572 (Token!1622) BalanceConc!3328)

(assert (=> b!534564 (= lt!220377 (list!2143 (charsOf!572 (_1!3386 (v!16099 lt!220378)))))))

(assert (=> b!534564 (= lt!220378 (Some!1292 (v!16099 lt!220378)))))

(declare-fun lt!220393 () Unit!8991)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!28 (List!5162 List!5162 List!5162 List!5162) Unit!8991)

(assert (=> b!534564 (= lt!220393 (lemmaConcatSameAndSameSizesThenSameLists!28 lt!220395 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!534565 () Bool)

(declare-fun Unit!8994 () Unit!8991)

(assert (=> b!534565 (= e!322159 Unit!8994)))

(declare-fun b!534566 () Bool)

(declare-fun e!322162 () Bool)

(assert (=> b!534566 (= e!322156 e!322162)))

(declare-fun res!225991 () Bool)

(assert (=> b!534566 (=> (not res!225991) (not e!322162))))

(declare-fun lt!220388 () tuple2!6244)

(assert (=> b!534566 (= res!225991 (and (= (_1!3386 lt!220388) token!491) (= (_2!3386 lt!220388) suffix!1342)))))

(declare-fun get!1929 (Option!1293) tuple2!6244)

(assert (=> b!534566 (= lt!220388 (get!1929 lt!220382))))

(declare-fun b!534567 () Bool)

(declare-fun res!225987 () Bool)

(assert (=> b!534567 (=> (not res!225987) (not e!322163))))

(declare-fun rulesInvariant!792 (LexerInterface!829 List!5163) Bool)

(assert (=> b!534567 (= res!225987 (rulesInvariant!792 thiss!22590 rules!3103))))

(declare-fun b!534568 () Bool)

(declare-fun res!225988 () Bool)

(assert (=> b!534568 (=> (not res!225988) (not e!322163))))

(declare-fun isEmpty!3727 (List!5162) Bool)

(assert (=> b!534568 (= res!225988 (not (isEmpty!3727 input!2705)))))

(declare-fun e!322164 () Bool)

(declare-fun b!534569 () Bool)

(declare-fun tp!170587 () Bool)

(assert (=> b!534569 (= e!322153 (and tp!170587 (inv!6465 (tag!1205 (rule!1645 token!491))) (inv!6468 (transformation!943 (rule!1645 token!491))) e!322164))))

(assert (=> b!534570 (= e!322157 (and tp!170592 tp!170594))))

(declare-fun b!534571 () Bool)

(assert (=> b!534571 (= e!322161 (and (= (size!4156 (_1!3386 (v!16099 lt!220378))) lt!220399) (= (originalCharacters!982 (_1!3386 (v!16099 lt!220378))) lt!220377) (= (v!16099 lt!220378) (tuple2!6245 (Token!1623 lt!220380 (rule!1645 (_1!3386 (v!16099 lt!220378))) lt!220399 lt!220377) lt!220385))))))

(declare-fun b!534572 () Bool)

(assert (=> b!534572 (= e!322163 e!322149)))

(declare-fun res!225982 () Bool)

(assert (=> b!534572 (=> (not res!225982) (not e!322149))))

(assert (=> b!534572 (= res!225982 (= lt!220395 input!2705))))

(assert (=> b!534572 (= lt!220395 (list!2143 (charsOf!572 token!491)))))

(declare-fun b!534573 () Bool)

(declare-fun res!225990 () Bool)

(assert (=> b!534573 (=> (not res!225990) (not e!322161))))

(assert (=> b!534573 (= res!225990 (= (size!4156 (_1!3386 (v!16099 lt!220378))) (size!4157 (originalCharacters!982 (_1!3386 (v!16099 lt!220378))))))))

(declare-fun b!534574 () Bool)

(assert (=> b!534574 (= e!322162 e!322158)))

(declare-fun res!225983 () Bool)

(assert (=> b!534574 (=> (not res!225983) (not e!322158))))

(assert (=> b!534574 (= res!225983 ((_ is Some!1292) lt!220378))))

(assert (=> b!534574 (= lt!220378 (maxPrefix!527 thiss!22590 rules!3103 input!2705))))

(assert (=> b!534575 (= e!322164 (and tp!170596 tp!170593))))

(assert (= (and start!49276 res!225994) b!534553))

(assert (= (and b!534553 res!225993) b!534567))

(assert (= (and b!534567 res!225987) b!534568))

(assert (= (and b!534568 res!225988) b!534572))

(assert (= (and b!534572 res!225982) b!534556))

(assert (= (and b!534556 res!225992) b!534566))

(assert (= (and b!534566 res!225991) b!534574))

(assert (= (and b!534574 res!225983) b!534554))

(assert (= (and b!534554 res!225985) b!534564))

(assert (= (and b!534564 c!101829) b!534562))

(assert (= (and b!534564 (not c!101829)) b!534565))

(assert (= (and b!534564 res!225984) b!534573))

(assert (= (and b!534573 res!225990) b!534571))

(assert (= (and b!534564 (not res!225986)) b!534561))

(assert (= (and b!534561 (not res!225989)) b!534563))

(assert (= (and start!49276 ((_ is Cons!5152) suffix!1342)) b!534555))

(assert (= b!534558 b!534570))

(assert (= b!534557 b!534558))

(assert (= (and start!49276 ((_ is Cons!5153) rules!3103)) b!534557))

(assert (= b!534569 b!534575))

(assert (= b!534560 b!534569))

(assert (= start!49276 b!534560))

(assert (= (and start!49276 ((_ is Cons!5152) input!2705)) b!534559))

(declare-fun m!780227 () Bool)

(assert (=> b!534574 m!780227))

(declare-fun m!780229 () Bool)

(assert (=> b!534567 m!780229))

(declare-fun m!780231 () Bool)

(assert (=> b!534553 m!780231))

(declare-fun m!780233 () Bool)

(assert (=> b!534564 m!780233))

(declare-fun m!780235 () Bool)

(assert (=> b!534564 m!780235))

(declare-fun m!780237 () Bool)

(assert (=> b!534564 m!780237))

(declare-fun m!780239 () Bool)

(assert (=> b!534564 m!780239))

(declare-fun m!780241 () Bool)

(assert (=> b!534564 m!780241))

(declare-fun m!780243 () Bool)

(assert (=> b!534564 m!780243))

(declare-fun m!780245 () Bool)

(assert (=> b!534564 m!780245))

(declare-fun m!780247 () Bool)

(assert (=> b!534564 m!780247))

(assert (=> b!534564 m!780233))

(declare-fun m!780249 () Bool)

(assert (=> b!534564 m!780249))

(declare-fun m!780251 () Bool)

(assert (=> b!534564 m!780251))

(declare-fun m!780253 () Bool)

(assert (=> b!534564 m!780253))

(declare-fun m!780255 () Bool)

(assert (=> b!534564 m!780255))

(declare-fun m!780257 () Bool)

(assert (=> b!534564 m!780257))

(declare-fun m!780259 () Bool)

(assert (=> b!534564 m!780259))

(declare-fun m!780261 () Bool)

(assert (=> b!534564 m!780261))

(declare-fun m!780263 () Bool)

(assert (=> b!534564 m!780263))

(declare-fun m!780265 () Bool)

(assert (=> b!534564 m!780265))

(declare-fun m!780267 () Bool)

(assert (=> b!534564 m!780267))

(declare-fun m!780269 () Bool)

(assert (=> b!534564 m!780269))

(declare-fun m!780271 () Bool)

(assert (=> b!534564 m!780271))

(declare-fun m!780273 () Bool)

(assert (=> b!534564 m!780273))

(declare-fun m!780275 () Bool)

(assert (=> b!534564 m!780275))

(assert (=> b!534564 m!780251))

(assert (=> b!534564 m!780239))

(declare-fun m!780277 () Bool)

(assert (=> b!534564 m!780277))

(declare-fun m!780279 () Bool)

(assert (=> b!534564 m!780279))

(declare-fun m!780281 () Bool)

(assert (=> b!534564 m!780281))

(declare-fun m!780283 () Bool)

(assert (=> b!534564 m!780283))

(declare-fun m!780285 () Bool)

(assert (=> b!534564 m!780285))

(declare-fun m!780287 () Bool)

(assert (=> b!534572 m!780287))

(assert (=> b!534572 m!780287))

(declare-fun m!780289 () Bool)

(assert (=> b!534572 m!780289))

(declare-fun m!780291 () Bool)

(assert (=> b!534573 m!780291))

(declare-fun m!780293 () Bool)

(assert (=> start!49276 m!780293))

(declare-fun m!780295 () Bool)

(assert (=> b!534566 m!780295))

(declare-fun m!780297 () Bool)

(assert (=> b!534560 m!780297))

(declare-fun m!780299 () Bool)

(assert (=> b!534563 m!780299))

(declare-fun m!780301 () Bool)

(assert (=> b!534569 m!780301))

(declare-fun m!780303 () Bool)

(assert (=> b!534569 m!780303))

(declare-fun m!780305 () Bool)

(assert (=> b!534568 m!780305))

(declare-fun m!780307 () Bool)

(assert (=> b!534558 m!780307))

(declare-fun m!780309 () Bool)

(assert (=> b!534558 m!780309))

(declare-fun m!780311 () Bool)

(assert (=> b!534554 m!780311))

(declare-fun m!780313 () Bool)

(assert (=> b!534561 m!780313))

(declare-fun m!780315 () Bool)

(assert (=> b!534561 m!780315))

(declare-fun m!780317 () Bool)

(assert (=> b!534556 m!780317))

(declare-fun m!780319 () Bool)

(assert (=> b!534556 m!780319))

(declare-fun m!780321 () Bool)

(assert (=> b!534556 m!780321))

(check-sat b_and!52267 (not b!534554) (not b!534564) (not b!534558) (not b!534566) b_and!52273 (not b!534557) (not start!49276) b_and!52271 (not b!534559) (not b!534563) tp_is_empty!2909 (not b!534572) (not b_next!14571) (not b!534556) (not b_next!14573) (not b_next!14575) (not b!534560) (not b!534553) (not b_next!14569) (not b!534569) (not b!534568) (not b!534573) (not b!534561) (not b!534574) (not b!534567) b_and!52269 (not b!534555))
(check-sat b_and!52267 b_and!52273 (not b_next!14569) b_and!52271 b_and!52269 (not b_next!14571) (not b_next!14573) (not b_next!14575))
