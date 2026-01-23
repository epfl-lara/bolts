; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522390 () Bool)

(assert start!522390)

(declare-fun b!4955763 () Bool)

(declare-fun b_free!132231 () Bool)

(declare-fun b_next!133021 () Bool)

(assert (=> b!4955763 (= b_free!132231 (not b_next!133021))))

(declare-fun tp!1389694 () Bool)

(declare-fun b_and!347083 () Bool)

(assert (=> b!4955763 (= tp!1389694 b_and!347083)))

(declare-fun b_free!132233 () Bool)

(declare-fun b_next!133023 () Bool)

(assert (=> b!4955763 (= b_free!132233 (not b_next!133023))))

(declare-fun tp!1389696 () Bool)

(declare-fun b_and!347085 () Bool)

(assert (=> b!4955763 (= tp!1389696 b_and!347085)))

(declare-fun b!4955760 () Bool)

(declare-fun e!3096690 () Bool)

(declare-fun e!3096697 () Bool)

(assert (=> b!4955760 (= e!3096690 (not e!3096697))))

(declare-fun res!2114367 () Bool)

(assert (=> b!4955760 (=> res!2114367 e!3096697)))

(declare-datatypes ((List!57298 0))(
  ( (Nil!57174) (Cons!57174 (h!63622 (_ BitVec 16)) (t!367864 List!57298)) )
))
(declare-datatypes ((TokenValue!8614 0))(
  ( (FloatLiteralValue!17228 (text!60743 List!57298)) (TokenValueExt!8613 (__x!34521 Int)) (Broken!43070 (value!266080 List!57298)) (Object!8737) (End!8614) (Def!8614) (Underscore!8614) (Match!8614) (Else!8614) (Error!8614) (Case!8614) (If!8614) (Extends!8614) (Abstract!8614) (Class!8614) (Val!8614) (DelimiterValue!17228 (del!8674 List!57298)) (KeywordValue!8620 (value!266081 List!57298)) (CommentValue!17228 (value!266082 List!57298)) (WhitespaceValue!17228 (value!266083 List!57298)) (IndentationValue!8614 (value!266084 List!57298)) (String!64943) (Int32!8614) (Broken!43071 (value!266085 List!57298)) (Boolean!8615) (Unit!148068) (OperatorValue!8617 (op!8674 List!57298)) (IdentifierValue!17228 (value!266086 List!57298)) (IdentifierValue!17229 (value!266087 List!57298)) (WhitespaceValue!17229 (value!266088 List!57298)) (True!17228) (False!17228) (Broken!43072 (value!266089 List!57298)) (Broken!43073 (value!266090 List!57298)) (True!17229) (RightBrace!8614) (RightBracket!8614) (Colon!8614) (Null!8614) (Comma!8614) (LeftBracket!8614) (False!17229) (LeftBrace!8614) (ImaginaryLiteralValue!8614 (text!60744 List!57298)) (StringLiteralValue!25842 (value!266091 List!57298)) (EOFValue!8614 (value!266092 List!57298)) (IdentValue!8614 (value!266093 List!57298)) (DelimiterValue!17229 (value!266094 List!57298)) (DedentValue!8614 (value!266095 List!57298)) (NewLineValue!8614 (value!266096 List!57298)) (IntegerValue!25842 (value!266097 (_ BitVec 32)) (text!60745 List!57298)) (IntegerValue!25843 (value!266098 Int) (text!60746 List!57298)) (Times!8614) (Or!8614) (Equal!8614) (Minus!8614) (Broken!43074 (value!266099 List!57298)) (And!8614) (Div!8614) (LessEqual!8614) (Mod!8614) (Concat!22151) (Not!8614) (Plus!8614) (SpaceValue!8614 (value!266100 List!57298)) (IntegerValue!25844 (value!266101 Int) (text!60747 List!57298)) (StringLiteralValue!25843 (text!60748 List!57298)) (FloatLiteralValue!17229 (text!60749 List!57298)) (BytesLiteralValue!8614 (value!266102 List!57298)) (CommentValue!17229 (value!266103 List!57298)) (StringLiteralValue!25844 (value!266104 List!57298)) (ErrorTokenValue!8614 (msg!8675 List!57298)) )
))
(declare-datatypes ((C!27324 0))(
  ( (C!27325 (val!23028 Int)) )
))
(declare-datatypes ((List!57299 0))(
  ( (Nil!57175) (Cons!57175 (h!63623 C!27324) (t!367865 List!57299)) )
))
(declare-datatypes ((IArray!30173 0))(
  ( (IArray!30174 (innerList!15144 List!57299)) )
))
(declare-datatypes ((Regex!13537 0))(
  ( (ElementMatch!13537 (c!846119 C!27324)) (Concat!22152 (regOne!27586 Regex!13537) (regTwo!27586 Regex!13537)) (EmptyExpr!13537) (Star!13537 (reg!13866 Regex!13537)) (EmptyLang!13537) (Union!13537 (regOne!27587 Regex!13537) (regTwo!27587 Regex!13537)) )
))
(declare-datatypes ((String!64944 0))(
  ( (String!64945 (value!266105 String)) )
))
(declare-datatypes ((Conc!15056 0))(
  ( (Node!15056 (left!41710 Conc!15056) (right!42040 Conc!15056) (csize!30342 Int) (cheight!15267 Int)) (Leaf!25033 (xs!18382 IArray!30173) (csize!30343 Int)) (Empty!15056) )
))
(declare-datatypes ((BalanceConc!29542 0))(
  ( (BalanceConc!29543 (c!846120 Conc!15056)) )
))
(declare-datatypes ((TokenValueInjection!16536 0))(
  ( (TokenValueInjection!16537 (toValue!11255 Int) (toChars!11114 Int)) )
))
(declare-datatypes ((Rule!16408 0))(
  ( (Rule!16409 (regex!8304 Regex!13537) (tag!9168 String!64944) (isSeparator!8304 Bool) (transformation!8304 TokenValueInjection!16536)) )
))
(declare-datatypes ((List!57300 0))(
  ( (Nil!57176) (Cons!57176 (h!63624 Rule!16408) (t!367866 List!57300)) )
))
(declare-fun rulesArg!259 () List!57300)

(get-info :version)

(assert (=> b!4955760 (= res!2114367 (or (and ((_ is Cons!57176) rulesArg!259) ((_ is Nil!57176) (t!367866 rulesArg!259))) (not ((_ is Cons!57176) rulesArg!259))))))

(declare-fun lt!2045307 () List!57299)

(declare-fun isPrefix!5157 (List!57299 List!57299) Bool)

(assert (=> b!4955760 (isPrefix!5157 lt!2045307 lt!2045307)))

(declare-datatypes ((Unit!148069 0))(
  ( (Unit!148070) )
))
(declare-fun lt!2045306 () Unit!148069)

(declare-fun lemmaIsPrefixRefl!3481 (List!57299 List!57299) Unit!148069)

(assert (=> b!4955760 (= lt!2045306 (lemmaIsPrefixRefl!3481 lt!2045307 lt!2045307))))

(declare-fun res!2114362 () Bool)

(declare-fun e!3096692 () Bool)

(assert (=> start!522390 (=> (not res!2114362) (not e!3096692))))

(declare-datatypes ((LexerInterface!7896 0))(
  ( (LexerInterfaceExt!7893 (__x!34522 Int)) (Lexer!7894) )
))
(declare-fun thiss!15247 () LexerInterface!7896)

(assert (=> start!522390 (= res!2114362 ((_ is Lexer!7894) thiss!15247))))

(assert (=> start!522390 e!3096692))

(assert (=> start!522390 true))

(declare-fun e!3096695 () Bool)

(assert (=> start!522390 e!3096695))

(declare-fun input!1342 () BalanceConc!29542)

(declare-fun e!3096691 () Bool)

(declare-fun inv!74581 (BalanceConc!29542) Bool)

(assert (=> start!522390 (and (inv!74581 input!1342) e!3096691)))

(declare-fun totalInput!464 () BalanceConc!29542)

(declare-fun e!3096696 () Bool)

(assert (=> start!522390 (and (inv!74581 totalInput!464) e!3096696)))

(declare-fun b!4955761 () Bool)

(declare-fun e!3096693 () Bool)

(declare-fun tp!1389691 () Bool)

(assert (=> b!4955761 (= e!3096695 (and e!3096693 tp!1389691))))

(declare-fun b!4955762 () Bool)

(declare-fun tp!1389692 () Bool)

(declare-fun inv!74582 (Conc!15056) Bool)

(assert (=> b!4955762 (= e!3096691 (and (inv!74582 (c!846120 input!1342)) tp!1389692))))

(declare-fun e!3096699 () Bool)

(assert (=> b!4955763 (= e!3096699 (and tp!1389694 tp!1389696))))

(declare-fun tp!1389693 () Bool)

(declare-fun b!4955764 () Bool)

(declare-fun inv!74577 (String!64944) Bool)

(declare-fun inv!74583 (TokenValueInjection!16536) Bool)

(assert (=> b!4955764 (= e!3096693 (and tp!1389693 (inv!74577 (tag!9168 (h!63624 rulesArg!259))) (inv!74583 (transformation!8304 (h!63624 rulesArg!259))) e!3096699))))

(declare-fun b!4955765 () Bool)

(declare-fun e!3096694 () Bool)

(declare-fun lt!2045309 () Bool)

(declare-fun lt!2045310 () Bool)

(assert (=> b!4955765 (= e!3096694 (or (not (= lt!2045309 lt!2045310)) (not lt!2045309) lt!2045310))))

(declare-datatypes ((Token!15108 0))(
  ( (Token!15109 (value!266106 TokenValue!8614) (rule!11520 Rule!16408) (size!37926 Int) (originalCharacters!8585 List!57299)) )
))
(declare-datatypes ((tuple2!61732 0))(
  ( (tuple2!61733 (_1!34169 Token!15108) (_2!34169 List!57299)) )
))
(declare-datatypes ((Option!14277 0))(
  ( (None!14276) (Some!14276 (v!50261 tuple2!61732)) )
))
(declare-fun isDefined!11219 (Option!14277) Bool)

(declare-fun maxPrefixZipper!701 (LexerInterface!7896 List!57300 List!57299) Option!14277)

(assert (=> b!4955765 (= lt!2045310 (isDefined!11219 (maxPrefixZipper!701 thiss!15247 rulesArg!259 lt!2045307)))))

(assert (=> b!4955765 (= lt!2045309 false)))

(declare-fun b!4955766 () Bool)

(declare-fun res!2114365 () Bool)

(assert (=> b!4955766 (=> (not res!2114365) (not e!3096692))))

(declare-fun rulesValidInductive!3207 (LexerInterface!7896 List!57300) Bool)

(assert (=> b!4955766 (= res!2114365 (rulesValidInductive!3207 thiss!15247 rulesArg!259))))

(declare-fun b!4955767 () Bool)

(declare-fun tp!1389695 () Bool)

(assert (=> b!4955767 (= e!3096696 (and (inv!74582 (c!846120 totalInput!464)) tp!1389695))))

(declare-fun b!4955768 () Bool)

(assert (=> b!4955768 (= e!3096697 e!3096694)))

(declare-fun res!2114363 () Bool)

(assert (=> b!4955768 (=> res!2114363 e!3096694)))

(declare-datatypes ((tuple2!61734 0))(
  ( (tuple2!61735 (_1!34170 Token!15108) (_2!34170 BalanceConc!29542)) )
))
(declare-datatypes ((Option!14278 0))(
  ( (None!14277) (Some!14277 (v!50262 tuple2!61734)) )
))
(declare-fun lt!2045308 () Option!14278)

(declare-fun lt!2045305 () Option!14278)

(assert (=> b!4955768 (= res!2114363 (or (not ((_ is None!14277) lt!2045308)) (not ((_ is None!14277) lt!2045305))))))

(declare-fun maxPrefixZipperSequenceV2!635 (LexerInterface!7896 List!57300 BalanceConc!29542 BalanceConc!29542) Option!14278)

(assert (=> b!4955768 (= lt!2045305 (maxPrefixZipperSequenceV2!635 thiss!15247 (t!367866 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!288 (LexerInterface!7896 Rule!16408 BalanceConc!29542 BalanceConc!29542) Option!14278)

(assert (=> b!4955768 (= lt!2045308 (maxPrefixOneRuleZipperSequenceV2!288 thiss!15247 (h!63624 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4955769 () Bool)

(declare-fun res!2114366 () Bool)

(assert (=> b!4955769 (=> (not res!2114366) (not e!3096692))))

(declare-fun isEmpty!30744 (List!57300) Bool)

(assert (=> b!4955769 (= res!2114366 (not (isEmpty!30744 rulesArg!259)))))

(declare-fun b!4955770 () Bool)

(assert (=> b!4955770 (= e!3096692 e!3096690)))

(declare-fun res!2114364 () Bool)

(assert (=> b!4955770 (=> (not res!2114364) (not e!3096690))))

(declare-fun isSuffix!1103 (List!57299 List!57299) Bool)

(declare-fun list!18245 (BalanceConc!29542) List!57299)

(assert (=> b!4955770 (= res!2114364 (isSuffix!1103 lt!2045307 (list!18245 totalInput!464)))))

(assert (=> b!4955770 (= lt!2045307 (list!18245 input!1342))))

(assert (= (and start!522390 res!2114362) b!4955766))

(assert (= (and b!4955766 res!2114365) b!4955769))

(assert (= (and b!4955769 res!2114366) b!4955770))

(assert (= (and b!4955770 res!2114364) b!4955760))

(assert (= (and b!4955760 (not res!2114367)) b!4955768))

(assert (= (and b!4955768 (not res!2114363)) b!4955765))

(assert (= b!4955764 b!4955763))

(assert (= b!4955761 b!4955764))

(assert (= (and start!522390 ((_ is Cons!57176) rulesArg!259)) b!4955761))

(assert (= start!522390 b!4955762))

(assert (= start!522390 b!4955767))

(declare-fun m!5980374 () Bool)

(assert (=> b!4955760 m!5980374))

(declare-fun m!5980376 () Bool)

(assert (=> b!4955760 m!5980376))

(declare-fun m!5980378 () Bool)

(assert (=> b!4955770 m!5980378))

(assert (=> b!4955770 m!5980378))

(declare-fun m!5980380 () Bool)

(assert (=> b!4955770 m!5980380))

(declare-fun m!5980382 () Bool)

(assert (=> b!4955770 m!5980382))

(declare-fun m!5980384 () Bool)

(assert (=> b!4955767 m!5980384))

(declare-fun m!5980386 () Bool)

(assert (=> b!4955762 m!5980386))

(declare-fun m!5980388 () Bool)

(assert (=> start!522390 m!5980388))

(declare-fun m!5980390 () Bool)

(assert (=> start!522390 m!5980390))

(declare-fun m!5980392 () Bool)

(assert (=> b!4955769 m!5980392))

(declare-fun m!5980394 () Bool)

(assert (=> b!4955768 m!5980394))

(declare-fun m!5980396 () Bool)

(assert (=> b!4955768 m!5980396))

(declare-fun m!5980398 () Bool)

(assert (=> b!4955765 m!5980398))

(assert (=> b!4955765 m!5980398))

(declare-fun m!5980400 () Bool)

(assert (=> b!4955765 m!5980400))

(declare-fun m!5980402 () Bool)

(assert (=> b!4955764 m!5980402))

(declare-fun m!5980404 () Bool)

(assert (=> b!4955764 m!5980404))

(declare-fun m!5980406 () Bool)

(assert (=> b!4955766 m!5980406))

(check-sat b_and!347085 (not b_next!133023) (not b!4955768) (not b!4955761) (not b!4955762) (not b!4955764) (not b!4955767) (not b!4955765) (not start!522390) b_and!347083 (not b!4955769) (not b_next!133021) (not b!4955766) (not b!4955770) (not b!4955760))
(check-sat b_and!347083 b_and!347085 (not b_next!133021) (not b_next!133023))
