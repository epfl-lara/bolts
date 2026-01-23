; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745868 () Bool)

(assert start!745868)

(declare-fun b!7905336 () Bool)

(declare-fun b_free!134899 () Bool)

(declare-fun b_next!135689 () Bool)

(assert (=> b!7905336 (= b_free!134899 (not b_next!135689))))

(declare-fun tp!2354984 () Bool)

(declare-fun b_and!353055 () Bool)

(assert (=> b!7905336 (= tp!2354984 b_and!353055)))

(declare-fun b_free!134901 () Bool)

(declare-fun b_next!135691 () Bool)

(assert (=> b!7905336 (= b_free!134901 (not b_next!135691))))

(declare-fun tp!2354985 () Bool)

(declare-fun b_and!353057 () Bool)

(assert (=> b!7905336 (= tp!2354985 b_and!353057)))

(declare-fun b!7905335 () Bool)

(declare-fun b_free!134903 () Bool)

(declare-fun b_next!135693 () Bool)

(assert (=> b!7905335 (= b_free!134903 (not b_next!135693))))

(declare-fun tp!2354989 () Bool)

(declare-fun b_and!353059 () Bool)

(assert (=> b!7905335 (= tp!2354989 b_and!353059)))

(declare-fun b_free!134905 () Bool)

(declare-fun b_next!135695 () Bool)

(assert (=> b!7905335 (= b_free!134905 (not b_next!135695))))

(declare-fun tp!2354986 () Bool)

(declare-fun b_and!353061 () Bool)

(assert (=> b!7905335 (= tp!2354986 b_and!353061)))

(declare-fun b!7905324 () Bool)

(declare-fun res!3136925 () Bool)

(declare-fun e!4666318 () Bool)

(assert (=> b!7905324 (=> (not res!3136925) (not e!4666318))))

(declare-datatypes ((LexerInterface!8208 0))(
  ( (LexerInterfaceExt!8205 (__x!35151 Int)) (Lexer!8206) )
))
(declare-fun thiss!14377 () LexerInterface!8208)

(declare-datatypes ((List!74368 0))(
  ( (Nil!74244) (Cons!74244 (h!80692 (_ BitVec 16)) (t!389569 List!74368)) )
))
(declare-datatypes ((TokenValue!8932 0))(
  ( (FloatLiteralValue!17864 (text!62969 List!74368)) (TokenValueExt!8931 (__x!35152 Int)) (Broken!44660 (value!287511 List!74368)) (Object!9055) (End!8932) (Def!8932) (Underscore!8932) (Match!8932) (Else!8932) (Error!8932) (Case!8932) (If!8932) (Extends!8932) (Abstract!8932) (Class!8932) (Val!8932) (DelimiterValue!17864 (del!8992 List!74368)) (KeywordValue!8938 (value!287512 List!74368)) (CommentValue!17864 (value!287513 List!74368)) (WhitespaceValue!17864 (value!287514 List!74368)) (IndentationValue!8932 (value!287515 List!74368)) (String!83081) (Int32!8932) (Broken!44661 (value!287516 List!74368)) (Boolean!8933) (Unit!169286) (OperatorValue!8935 (op!8992 List!74368)) (IdentifierValue!17864 (value!287517 List!74368)) (IdentifierValue!17865 (value!287518 List!74368)) (WhitespaceValue!17865 (value!287519 List!74368)) (True!17864) (False!17864) (Broken!44662 (value!287520 List!74368)) (Broken!44663 (value!287521 List!74368)) (True!17865) (RightBrace!8932) (RightBracket!8932) (Colon!8932) (Null!8932) (Comma!8932) (LeftBracket!8932) (False!17865) (LeftBrace!8932) (ImaginaryLiteralValue!8932 (text!62970 List!74368)) (StringLiteralValue!26796 (value!287522 List!74368)) (EOFValue!8932 (value!287523 List!74368)) (IdentValue!8932 (value!287524 List!74368)) (DelimiterValue!17865 (value!287525 List!74368)) (DedentValue!8932 (value!287526 List!74368)) (NewLineValue!8932 (value!287527 List!74368)) (IntegerValue!26796 (value!287528 (_ BitVec 32)) (text!62971 List!74368)) (IntegerValue!26797 (value!287529 Int) (text!62972 List!74368)) (Times!8932) (Or!8932) (Equal!8932) (Minus!8932) (Broken!44664 (value!287530 List!74368)) (And!8932) (Div!8932) (LessEqual!8932) (Mod!8932) (Concat!30251) (Not!8932) (Plus!8932) (SpaceValue!8932 (value!287531 List!74368)) (IntegerValue!26798 (value!287532 Int) (text!62973 List!74368)) (StringLiteralValue!26797 (text!62974 List!74368)) (FloatLiteralValue!17865 (text!62975 List!74368)) (BytesLiteralValue!8932 (value!287533 List!74368)) (CommentValue!17865 (value!287534 List!74368)) (StringLiteralValue!26798 (value!287535 List!74368)) (ErrorTokenValue!8932 (msg!8993 List!74368)) )
))
(declare-datatypes ((C!42968 0))(
  ( (C!42969 (val!31948 Int)) )
))
(declare-datatypes ((List!74369 0))(
  ( (Nil!74245) (Cons!74245 (h!80693 C!42968) (t!389570 List!74369)) )
))
(declare-datatypes ((IArray!31641 0))(
  ( (IArray!31642 (innerList!15878 List!74369)) )
))
(declare-datatypes ((Conc!15790 0))(
  ( (Node!15790 (left!56629 Conc!15790) (right!56959 Conc!15790) (csize!31810 Int) (cheight!16001 Int)) (Leaf!30066 (xs!19172 IArray!31641) (csize!31811 Int)) (Empty!15790) )
))
(declare-datatypes ((BalanceConc!30698 0))(
  ( (BalanceConc!30699 (c!1450649 Conc!15790)) )
))
(declare-datatypes ((Regex!21319 0))(
  ( (ElementMatch!21319 (c!1450650 C!42968)) (Concat!30252 (regOne!43150 Regex!21319) (regTwo!43150 Regex!21319)) (EmptyExpr!21319) (Star!21319 (reg!21648 Regex!21319)) (EmptyLang!21319) (Union!21319 (regOne!43151 Regex!21319) (regTwo!43151 Regex!21319)) )
))
(declare-datatypes ((String!83082 0))(
  ( (String!83083 (value!287536 String)) )
))
(declare-datatypes ((TokenValueInjection!17172 0))(
  ( (TokenValueInjection!17173 (toValue!11673 Int) (toChars!11532 Int)) )
))
(declare-datatypes ((Rule!17032 0))(
  ( (Rule!17033 (regex!8616 Regex!21319) (tag!9480 String!83082) (isSeparator!8616 Bool) (transformation!8616 TokenValueInjection!17172)) )
))
(declare-datatypes ((List!74370 0))(
  ( (Nil!74246) (Cons!74246 (h!80694 Rule!17032) (t!389571 List!74370)) )
))
(declare-fun rulesArg!141 () List!74370)

(declare-fun rulesValidInductive!3427 (LexerInterface!8208 List!74370) Bool)

(assert (=> b!7905324 (= res!3136925 (rulesValidInductive!3427 thiss!14377 rulesArg!141))))

(declare-fun res!3136931 () Bool)

(assert (=> start!745868 (=> (not res!3136931) (not e!4666318))))

(get-info :version)

(assert (=> start!745868 (= res!3136931 ((_ is Lexer!8206) thiss!14377))))

(assert (=> start!745868 e!4666318))

(assert (=> start!745868 true))

(declare-fun e!4666319 () Bool)

(assert (=> start!745868 e!4666319))

(declare-fun e!4666323 () Bool)

(assert (=> start!745868 e!4666323))

(declare-fun b!7905325 () Bool)

(declare-fun tp!2354990 () Bool)

(declare-fun e!4666326 () Bool)

(declare-datatypes ((Token!15652 0))(
  ( (Token!15653 (value!287537 TokenValue!8932) (rule!11908 Rule!17032) (size!43030 Int) (originalCharacters!8857 List!74369)) )
))
(declare-datatypes ((tuple2!70266 0))(
  ( (tuple2!70267 (_1!38436 Token!15652) (_2!38436 List!74369)) )
))
(declare-datatypes ((Option!17898 0))(
  ( (None!17897) (Some!17897 (v!55042 tuple2!70266)) )
))
(declare-fun err!4657 () Option!17898)

(declare-fun e!4666322 () Bool)

(declare-fun inv!95247 (Token!15652) Bool)

(assert (=> b!7905325 (= e!4666322 (and (inv!95247 (_1!38436 (v!55042 err!4657))) e!4666326 tp!2354990))))

(declare-fun b!7905326 () Bool)

(declare-fun e!4666328 () Bool)

(declare-fun e!4666325 () Bool)

(assert (=> b!7905326 (= e!4666328 e!4666325)))

(declare-fun res!3136930 () Bool)

(assert (=> b!7905326 (=> res!3136930 e!4666325)))

(declare-fun lt!2684979 () tuple2!70266)

(declare-fun list!19251 (BalanceConc!30698) List!74369)

(declare-fun charsOf!5560 (Token!15652) BalanceConc!30698)

(assert (=> b!7905326 (= res!3136930 (not (= (list!19251 (charsOf!5560 (_1!38436 lt!2684979))) (originalCharacters!8857 (_1!38436 lt!2684979)))))))

(declare-fun lt!2684978 () Option!17898)

(declare-fun get!26678 (Option!17898) tuple2!70266)

(assert (=> b!7905326 (= lt!2684979 (get!26678 lt!2684978))))

(declare-fun b!7905327 () Bool)

(declare-fun e!4666324 () Bool)

(assert (=> b!7905327 (= e!4666324 e!4666328)))

(declare-fun res!3136928 () Bool)

(assert (=> b!7905327 (=> res!3136928 e!4666328)))

(declare-fun isEmpty!42604 (Option!17898) Bool)

(assert (=> b!7905327 (= res!3136928 (isEmpty!42604 lt!2684978))))

(assert (=> b!7905327 (= lt!2684978 err!4657)))

(assert (=> b!7905327 true))

(assert (=> b!7905327 e!4666322))

(declare-fun b!7905328 () Bool)

(declare-fun tp_is_empty!53013 () Bool)

(declare-fun tp!2354983 () Bool)

(assert (=> b!7905328 (= e!4666323 (and tp_is_empty!53013 tp!2354983))))

(declare-fun b!7905329 () Bool)

(declare-fun e!4666331 () Bool)

(declare-fun tp!2354987 () Bool)

(assert (=> b!7905329 (= e!4666319 (and e!4666331 tp!2354987))))

(declare-fun e!4666321 () Bool)

(declare-fun b!7905330 () Bool)

(declare-fun tp!2354982 () Bool)

(declare-fun inv!21 (TokenValue!8932) Bool)

(assert (=> b!7905330 (= e!4666326 (and (inv!21 (value!287537 (_1!38436 (v!55042 err!4657)))) e!4666321 tp!2354982))))

(declare-fun e!4666329 () Bool)

(declare-fun tp!2354988 () Bool)

(declare-fun b!7905331 () Bool)

(declare-fun inv!95244 (String!83082) Bool)

(declare-fun inv!95248 (TokenValueInjection!17172) Bool)

(assert (=> b!7905331 (= e!4666331 (and tp!2354988 (inv!95244 (tag!9480 (h!80694 rulesArg!141))) (inv!95248 (transformation!8616 (h!80694 rulesArg!141))) e!4666329))))

(declare-fun b!7905332 () Bool)

(declare-fun res!3136929 () Bool)

(assert (=> b!7905332 (=> (not res!3136929) (not e!4666318))))

(declare-fun isEmpty!42605 (List!74370) Bool)

(assert (=> b!7905332 (= res!3136929 (not (isEmpty!42605 rulesArg!141)))))

(declare-fun tp!2354981 () Bool)

(declare-fun e!4666327 () Bool)

(declare-fun b!7905333 () Bool)

(assert (=> b!7905333 (= e!4666321 (and tp!2354981 (inv!95244 (tag!9480 (rule!11908 (_1!38436 (v!55042 err!4657))))) (inv!95248 (transformation!8616 (rule!11908 (_1!38436 (v!55042 err!4657))))) e!4666327))))

(declare-fun b!7905334 () Bool)

(assert (=> b!7905334 (= e!4666318 (not e!4666324))))

(declare-fun res!3136926 () Bool)

(assert (=> b!7905334 (=> res!3136926 e!4666324)))

(assert (=> b!7905334 (= res!3136926 (or (and ((_ is Cons!74246) rulesArg!141) ((_ is Nil!74246) (t!389571 rulesArg!141))) ((_ is Cons!74246) rulesArg!141)))))

(declare-fun input!1184 () List!74369)

(declare-fun isPrefix!6449 (List!74369 List!74369) Bool)

(assert (=> b!7905334 (isPrefix!6449 input!1184 input!1184)))

(declare-datatypes ((Unit!169287 0))(
  ( (Unit!169288) )
))
(declare-fun lt!2684976 () Unit!169287)

(declare-fun lemmaIsPrefixRefl!3960 (List!74369 List!74369) Unit!169287)

(assert (=> b!7905334 (= lt!2684976 (lemmaIsPrefixRefl!3960 input!1184 input!1184))))

(assert (=> b!7905335 (= e!4666327 (and tp!2354989 tp!2354986))))

(assert (=> b!7905336 (= e!4666329 (and tp!2354984 tp!2354985))))

(declare-fun b!7905337 () Bool)

(assert (=> b!7905337 (= e!4666325 true)))

(declare-fun lt!2684980 () Int)

(declare-fun size!43031 (List!74369) Int)

(assert (=> b!7905337 (= lt!2684980 (size!43031 input!1184))))

(declare-fun lt!2684977 () Int)

(assert (=> b!7905337 (= lt!2684977 (size!43031 (_2!38436 lt!2684979)))))

(declare-fun b!7905338 () Bool)

(declare-fun res!3136927 () Bool)

(assert (=> b!7905338 (=> res!3136927 e!4666328)))

(declare-fun isDefined!14474 (Option!17898) Bool)

(assert (=> b!7905338 (= res!3136927 (not (isDefined!14474 lt!2684978)))))

(assert (= (and start!745868 res!3136931) b!7905324))

(assert (= (and b!7905324 res!3136925) b!7905332))

(assert (= (and b!7905332 res!3136929) b!7905334))

(assert (= (and b!7905334 (not res!3136926)) b!7905327))

(assert (= b!7905333 b!7905335))

(assert (= b!7905330 b!7905333))

(assert (= b!7905325 b!7905330))

(assert (= (and b!7905327 ((_ is Some!17897) err!4657)) b!7905325))

(assert (= (and b!7905327 (not res!3136928)) b!7905338))

(assert (= (and b!7905338 (not res!3136927)) b!7905326))

(assert (= (and b!7905326 (not res!3136930)) b!7905337))

(assert (= b!7905331 b!7905336))

(assert (= b!7905329 b!7905331))

(assert (= (and start!745868 ((_ is Cons!74246) rulesArg!141)) b!7905329))

(assert (= (and start!745868 ((_ is Cons!74245) input!1184)) b!7905328))

(declare-fun m!8279906 () Bool)

(assert (=> b!7905324 m!8279906))

(declare-fun m!8279908 () Bool)

(assert (=> b!7905327 m!8279908))

(declare-fun m!8279910 () Bool)

(assert (=> b!7905331 m!8279910))

(declare-fun m!8279912 () Bool)

(assert (=> b!7905331 m!8279912))

(declare-fun m!8279914 () Bool)

(assert (=> b!7905326 m!8279914))

(assert (=> b!7905326 m!8279914))

(declare-fun m!8279916 () Bool)

(assert (=> b!7905326 m!8279916))

(declare-fun m!8279918 () Bool)

(assert (=> b!7905326 m!8279918))

(declare-fun m!8279920 () Bool)

(assert (=> b!7905337 m!8279920))

(declare-fun m!8279922 () Bool)

(assert (=> b!7905337 m!8279922))

(declare-fun m!8279924 () Bool)

(assert (=> b!7905325 m!8279924))

(declare-fun m!8279926 () Bool)

(assert (=> b!7905334 m!8279926))

(declare-fun m!8279928 () Bool)

(assert (=> b!7905334 m!8279928))

(declare-fun m!8279930 () Bool)

(assert (=> b!7905333 m!8279930))

(declare-fun m!8279932 () Bool)

(assert (=> b!7905333 m!8279932))

(declare-fun m!8279934 () Bool)

(assert (=> b!7905338 m!8279934))

(declare-fun m!8279936 () Bool)

(assert (=> b!7905330 m!8279936))

(declare-fun m!8279938 () Bool)

(assert (=> b!7905332 m!8279938))

(check-sat (not b!7905338) (not b!7905330) (not b!7905331) (not b!7905327) (not b!7905326) (not b!7905334) b_and!353055 (not b!7905328) (not b!7905332) b_and!353061 (not b_next!135693) (not b_next!135689) (not b!7905325) (not b_next!135691) (not b!7905329) (not b!7905337) (not b_next!135695) tp_is_empty!53013 (not b!7905324) (not b!7905333) b_and!353059 b_and!353057)
(check-sat b_and!353055 b_and!353061 (not b_next!135693) (not b_next!135689) (not b_next!135691) (not b_next!135695) b_and!353059 b_and!353057)
