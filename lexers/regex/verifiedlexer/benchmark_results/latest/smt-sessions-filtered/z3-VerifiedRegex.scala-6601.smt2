; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!348886 () Bool)

(assert start!348886)

(declare-fun b!3702326 () Bool)

(declare-fun b_free!98681 () Bool)

(declare-fun b_next!99385 () Bool)

(assert (=> b!3702326 (= b_free!98681 (not b_next!99385))))

(declare-fun tp!1125365 () Bool)

(declare-fun b_and!276891 () Bool)

(assert (=> b!3702326 (= tp!1125365 b_and!276891)))

(declare-fun b_free!98683 () Bool)

(declare-fun b_next!99387 () Bool)

(assert (=> b!3702326 (= b_free!98683 (not b_next!99387))))

(declare-fun tp!1125366 () Bool)

(declare-fun b_and!276893 () Bool)

(assert (=> b!3702326 (= tp!1125366 b_and!276893)))

(declare-fun b!3702337 () Bool)

(declare-fun b_free!98685 () Bool)

(declare-fun b_next!99389 () Bool)

(assert (=> b!3702337 (= b_free!98685 (not b_next!99389))))

(declare-fun tp!1125360 () Bool)

(declare-fun b_and!276895 () Bool)

(assert (=> b!3702337 (= tp!1125360 b_and!276895)))

(declare-fun b_free!98687 () Bool)

(declare-fun b_next!99391 () Bool)

(assert (=> b!3702337 (= b_free!98687 (not b_next!99391))))

(declare-fun tp!1125361 () Bool)

(declare-fun b_and!276897 () Bool)

(assert (=> b!3702337 (= tp!1125361 b_and!276897)))

(declare-fun e!2292884 () Bool)

(assert (=> b!3702326 (= e!2292884 (and tp!1125365 tp!1125366))))

(declare-fun b!3702327 () Bool)

(declare-fun e!2292885 () Bool)

(declare-datatypes ((List!39470 0))(
  ( (Nil!39346) (Cons!39346 (h!44766 (_ BitVec 16)) (t!302129 List!39470)) )
))
(declare-datatypes ((TokenValue!6212 0))(
  ( (FloatLiteralValue!12424 (text!43929 List!39470)) (TokenValueExt!6211 (__x!24641 Int)) (Broken!31060 (value!190915 List!39470)) (Object!6335) (End!6212) (Def!6212) (Underscore!6212) (Match!6212) (Else!6212) (Error!6212) (Case!6212) (If!6212) (Extends!6212) (Abstract!6212) (Class!6212) (Val!6212) (DelimiterValue!12424 (del!6272 List!39470)) (KeywordValue!6218 (value!190916 List!39470)) (CommentValue!12424 (value!190917 List!39470)) (WhitespaceValue!12424 (value!190918 List!39470)) (IndentationValue!6212 (value!190919 List!39470)) (String!44393) (Int32!6212) (Broken!31061 (value!190920 List!39470)) (Boolean!6213) (Unit!57315) (OperatorValue!6215 (op!6272 List!39470)) (IdentifierValue!12424 (value!190921 List!39470)) (IdentifierValue!12425 (value!190922 List!39470)) (WhitespaceValue!12425 (value!190923 List!39470)) (True!12424) (False!12424) (Broken!31062 (value!190924 List!39470)) (Broken!31063 (value!190925 List!39470)) (True!12425) (RightBrace!6212) (RightBracket!6212) (Colon!6212) (Null!6212) (Comma!6212) (LeftBracket!6212) (False!12425) (LeftBrace!6212) (ImaginaryLiteralValue!6212 (text!43930 List!39470)) (StringLiteralValue!18636 (value!190926 List!39470)) (EOFValue!6212 (value!190927 List!39470)) (IdentValue!6212 (value!190928 List!39470)) (DelimiterValue!12425 (value!190929 List!39470)) (DedentValue!6212 (value!190930 List!39470)) (NewLineValue!6212 (value!190931 List!39470)) (IntegerValue!18636 (value!190932 (_ BitVec 32)) (text!43931 List!39470)) (IntegerValue!18637 (value!190933 Int) (text!43932 List!39470)) (Times!6212) (Or!6212) (Equal!6212) (Minus!6212) (Broken!31064 (value!190934 List!39470)) (And!6212) (Div!6212) (LessEqual!6212) (Mod!6212) (Concat!16953) (Not!6212) (Plus!6212) (SpaceValue!6212 (value!190935 List!39470)) (IntegerValue!18638 (value!190936 Int) (text!43933 List!39470)) (StringLiteralValue!18637 (text!43934 List!39470)) (FloatLiteralValue!12425 (text!43935 List!39470)) (BytesLiteralValue!6212 (value!190937 List!39470)) (CommentValue!12425 (value!190938 List!39470)) (StringLiteralValue!18638 (value!190939 List!39470)) (ErrorTokenValue!6212 (msg!6273 List!39470)) )
))
(declare-datatypes ((C!21668 0))(
  ( (C!21669 (val!12882 Int)) )
))
(declare-datatypes ((List!39471 0))(
  ( (Nil!39347) (Cons!39347 (h!44767 C!21668) (t!302130 List!39471)) )
))
(declare-datatypes ((IArray!24163 0))(
  ( (IArray!24164 (innerList!12139 List!39471)) )
))
(declare-datatypes ((Conc!12079 0))(
  ( (Node!12079 (left!30624 Conc!12079) (right!30954 Conc!12079) (csize!24388 Int) (cheight!12290 Int)) (Leaf!18681 (xs!15281 IArray!24163) (csize!24389 Int)) (Empty!12079) )
))
(declare-datatypes ((BalanceConc!23772 0))(
  ( (BalanceConc!23773 (c!639732 Conc!12079)) )
))
(declare-datatypes ((Regex!10741 0))(
  ( (ElementMatch!10741 (c!639733 C!21668)) (Concat!16954 (regOne!21994 Regex!10741) (regTwo!21994 Regex!10741)) (EmptyExpr!10741) (Star!10741 (reg!11070 Regex!10741)) (EmptyLang!10741) (Union!10741 (regOne!21995 Regex!10741) (regTwo!21995 Regex!10741)) )
))
(declare-datatypes ((String!44394 0))(
  ( (String!44395 (value!190940 String)) )
))
(declare-datatypes ((TokenValueInjection!11852 0))(
  ( (TokenValueInjection!11853 (toValue!8322 Int) (toChars!8181 Int)) )
))
(declare-datatypes ((Rule!11764 0))(
  ( (Rule!11765 (regex!5982 Regex!10741) (tag!6820 String!44394) (isSeparator!5982 Bool) (transformation!5982 TokenValueInjection!11852)) )
))
(declare-datatypes ((Token!11318 0))(
  ( (Token!11319 (value!190941 TokenValue!6212) (rule!8852 Rule!11764) (size!30000 Int) (originalCharacters!6690 List!39471)) )
))
(declare-datatypes ((tuple2!39204 0))(
  ( (tuple2!39205 (_1!22736 Token!11318) (_2!22736 List!39471)) )
))
(declare-datatypes ((Option!8526 0))(
  ( (None!8525) (Some!8525 (v!38487 tuple2!39204)) )
))
(declare-fun lt!1295622 () Option!8526)

(declare-fun token!544 () Token!11318)

(declare-fun get!13104 (Option!8526) tuple2!39204)

(assert (=> b!3702327 (= e!2292885 (not (= (_1!22736 (get!13104 lt!1295622)) token!544)))))

(declare-fun e!2292890 () Bool)

(declare-fun b!3702328 () Bool)

(declare-fun tp!1125359 () Bool)

(declare-fun inv!52881 (String!44394) Bool)

(declare-fun inv!52884 (TokenValueInjection!11852) Bool)

(assert (=> b!3702328 (= e!2292890 (and tp!1125359 (inv!52881 (tag!6820 (rule!8852 token!544))) (inv!52884 (transformation!5982 (rule!8852 token!544))) e!2292884))))

(declare-fun b!3702329 () Bool)

(declare-fun e!2292888 () Bool)

(declare-fun tp_is_empty!18557 () Bool)

(declare-fun tp!1125363 () Bool)

(assert (=> b!3702329 (= e!2292888 (and tp_is_empty!18557 tp!1125363))))

(declare-fun b!3702330 () Bool)

(declare-fun res!1506052 () Bool)

(declare-fun e!2292889 () Bool)

(assert (=> b!3702330 (=> (not res!1506052) (not e!2292889))))

(declare-datatypes ((List!39472 0))(
  ( (Nil!39348) (Cons!39348 (h!44768 Rule!11764) (t!302131 List!39472)) )
))
(declare-fun rules!3598 () List!39472)

(declare-fun isEmpty!23450 (List!39472) Bool)

(assert (=> b!3702330 (= res!1506052 (not (isEmpty!23450 rules!3598)))))

(declare-fun b!3702331 () Bool)

(declare-fun e!2292896 () Bool)

(declare-fun e!2292893 () Bool)

(declare-fun tp!1125358 () Bool)

(assert (=> b!3702331 (= e!2292896 (and e!2292893 tp!1125358))))

(declare-fun res!1506050 () Bool)

(assert (=> start!348886 (=> (not res!1506050) (not e!2292889))))

(declare-datatypes ((LexerInterface!5571 0))(
  ( (LexerInterfaceExt!5568 (__x!24642 Int)) (Lexer!5569) )
))
(declare-fun thiss!25322 () LexerInterface!5571)

(get-info :version)

(assert (=> start!348886 (= res!1506050 ((_ is Lexer!5569) thiss!25322))))

(assert (=> start!348886 e!2292889))

(assert (=> start!348886 true))

(assert (=> start!348886 e!2292896))

(declare-fun e!2292894 () Bool)

(declare-fun inv!52885 (Token!11318) Bool)

(assert (=> start!348886 (and (inv!52885 token!544) e!2292894)))

(assert (=> start!348886 e!2292888))

(declare-fun b!3702332 () Bool)

(declare-fun e!2292887 () Bool)

(assert (=> b!3702332 (= e!2292887 (isEmpty!23450 (t!302131 rules!3598)))))

(declare-fun b!3702333 () Bool)

(declare-fun res!1506047 () Bool)

(declare-fun e!2292886 () Bool)

(assert (=> b!3702333 (=> (not res!1506047) (not e!2292886))))

(assert (=> b!3702333 (= res!1506047 ((_ is Cons!39348) rules!3598))))

(declare-fun b!3702334 () Bool)

(declare-fun res!1506053 () Bool)

(assert (=> b!3702334 (=> (not res!1506053) (not e!2292886))))

(declare-fun lt!1295621 () Option!8526)

(assert (=> b!3702334 (= res!1506053 (= (_1!22736 (get!13104 lt!1295621)) token!544))))

(declare-fun b!3702335 () Bool)

(declare-fun e!2292891 () Bool)

(declare-fun tp!1125362 () Bool)

(assert (=> b!3702335 (= e!2292893 (and tp!1125362 (inv!52881 (tag!6820 (h!44768 rules!3598))) (inv!52884 (transformation!5982 (h!44768 rules!3598))) e!2292891))))

(declare-fun b!3702336 () Bool)

(assert (=> b!3702336 (= e!2292889 e!2292886)))

(declare-fun res!1506046 () Bool)

(assert (=> b!3702336 (=> (not res!1506046) (not e!2292886))))

(declare-fun isDefined!6715 (Option!8526) Bool)

(assert (=> b!3702336 (= res!1506046 (isDefined!6715 lt!1295621))))

(declare-fun input!3172 () List!39471)

(declare-fun maxPrefix!3093 (LexerInterface!5571 List!39472 List!39471) Option!8526)

(assert (=> b!3702336 (= lt!1295621 (maxPrefix!3093 thiss!25322 rules!3598 input!3172))))

(assert (=> b!3702337 (= e!2292891 (and tp!1125360 tp!1125361))))

(declare-fun b!3702338 () Bool)

(assert (=> b!3702338 (= e!2292886 e!2292887)))

(declare-fun res!1506051 () Bool)

(assert (=> b!3702338 (=> (not res!1506051) (not e!2292887))))

(assert (=> b!3702338 (= res!1506051 e!2292885)))

(declare-fun res!1506048 () Bool)

(assert (=> b!3702338 (=> res!1506048 e!2292885)))

(assert (=> b!3702338 (= res!1506048 (not (isDefined!6715 lt!1295622)))))

(declare-fun maxPrefixOneRule!2203 (LexerInterface!5571 Rule!11764 List!39471) Option!8526)

(assert (=> b!3702338 (= lt!1295622 (maxPrefixOneRule!2203 thiss!25322 (h!44768 rules!3598) input!3172))))

(declare-fun b!3702339 () Bool)

(declare-fun res!1506049 () Bool)

(assert (=> b!3702339 (=> (not res!1506049) (not e!2292889))))

(declare-fun rulesInvariant!4968 (LexerInterface!5571 List!39472) Bool)

(assert (=> b!3702339 (= res!1506049 (rulesInvariant!4968 thiss!25322 rules!3598))))

(declare-fun tp!1125364 () Bool)

(declare-fun b!3702340 () Bool)

(declare-fun inv!21 (TokenValue!6212) Bool)

(assert (=> b!3702340 (= e!2292894 (and (inv!21 (value!190941 token!544)) e!2292890 tp!1125364))))

(assert (= (and start!348886 res!1506050) b!3702339))

(assert (= (and b!3702339 res!1506049) b!3702330))

(assert (= (and b!3702330 res!1506052) b!3702336))

(assert (= (and b!3702336 res!1506046) b!3702334))

(assert (= (and b!3702334 res!1506053) b!3702333))

(assert (= (and b!3702333 res!1506047) b!3702338))

(assert (= (and b!3702338 (not res!1506048)) b!3702327))

(assert (= (and b!3702338 res!1506051) b!3702332))

(assert (= b!3702335 b!3702337))

(assert (= b!3702331 b!3702335))

(assert (= (and start!348886 ((_ is Cons!39348) rules!3598)) b!3702331))

(assert (= b!3702328 b!3702326))

(assert (= b!3702340 b!3702328))

(assert (= start!348886 b!3702340))

(assert (= (and start!348886 ((_ is Cons!39347) input!3172)) b!3702329))

(declare-fun m!4213451 () Bool)

(assert (=> b!3702338 m!4213451))

(declare-fun m!4213453 () Bool)

(assert (=> b!3702338 m!4213453))

(declare-fun m!4213455 () Bool)

(assert (=> b!3702340 m!4213455))

(declare-fun m!4213457 () Bool)

(assert (=> b!3702327 m!4213457))

(declare-fun m!4213459 () Bool)

(assert (=> b!3702334 m!4213459))

(declare-fun m!4213461 () Bool)

(assert (=> b!3702332 m!4213461))

(declare-fun m!4213463 () Bool)

(assert (=> b!3702336 m!4213463))

(declare-fun m!4213465 () Bool)

(assert (=> b!3702336 m!4213465))

(declare-fun m!4213467 () Bool)

(assert (=> b!3702339 m!4213467))

(declare-fun m!4213469 () Bool)

(assert (=> b!3702328 m!4213469))

(declare-fun m!4213471 () Bool)

(assert (=> b!3702328 m!4213471))

(declare-fun m!4213473 () Bool)

(assert (=> start!348886 m!4213473))

(declare-fun m!4213475 () Bool)

(assert (=> b!3702335 m!4213475))

(declare-fun m!4213477 () Bool)

(assert (=> b!3702335 m!4213477))

(declare-fun m!4213479 () Bool)

(assert (=> b!3702330 m!4213479))

(check-sat (not b!3702339) b_and!276893 (not b!3702336) (not b!3702329) (not start!348886) b_and!276897 (not b!3702328) (not b!3702335) (not b!3702334) (not b!3702340) (not b!3702332) (not b!3702338) (not b!3702330) (not b_next!99387) (not b!3702331) b_and!276895 b_and!276891 (not b!3702327) (not b_next!99389) tp_is_empty!18557 (not b_next!99391) (not b_next!99385))
(check-sat b_and!276895 b_and!276893 b_and!276891 (not b_next!99389) b_and!276897 (not b_next!99387) (not b_next!99391) (not b_next!99385))
(get-model)

(declare-fun d!1085668 () Bool)

(assert (=> d!1085668 (= (inv!52881 (tag!6820 (h!44768 rules!3598))) (= (mod (str.len (value!190940 (tag!6820 (h!44768 rules!3598)))) 2) 0))))

(assert (=> b!3702335 d!1085668))

(declare-fun d!1085670 () Bool)

(declare-fun res!1506064 () Bool)

(declare-fun e!2292899 () Bool)

(assert (=> d!1085670 (=> (not res!1506064) (not e!2292899))))

(declare-fun semiInverseModEq!2556 (Int Int) Bool)

(assert (=> d!1085670 (= res!1506064 (semiInverseModEq!2556 (toChars!8181 (transformation!5982 (h!44768 rules!3598))) (toValue!8322 (transformation!5982 (h!44768 rules!3598)))))))

(assert (=> d!1085670 (= (inv!52884 (transformation!5982 (h!44768 rules!3598))) e!2292899)))

(declare-fun b!3702343 () Bool)

(declare-fun equivClasses!2455 (Int Int) Bool)

(assert (=> b!3702343 (= e!2292899 (equivClasses!2455 (toChars!8181 (transformation!5982 (h!44768 rules!3598))) (toValue!8322 (transformation!5982 (h!44768 rules!3598)))))))

(assert (= (and d!1085670 res!1506064) b!3702343))

(declare-fun m!4213481 () Bool)

(assert (=> d!1085670 m!4213481))

(declare-fun m!4213483 () Bool)

(assert (=> b!3702343 m!4213483))

(assert (=> b!3702335 d!1085670))

(declare-fun d!1085676 () Bool)

(assert (=> d!1085676 (= (isEmpty!23450 rules!3598) ((_ is Nil!39348) rules!3598))))

(assert (=> b!3702330 d!1085676))

(declare-fun b!3702360 () Bool)

(declare-fun e!2292910 () Bool)

(declare-fun inv!16 (TokenValue!6212) Bool)

(assert (=> b!3702360 (= e!2292910 (inv!16 (value!190941 token!544)))))

(declare-fun b!3702361 () Bool)

(declare-fun e!2292911 () Bool)

(assert (=> b!3702361 (= e!2292910 e!2292911)))

(declare-fun c!639739 () Bool)

(assert (=> b!3702361 (= c!639739 ((_ is IntegerValue!18637) (value!190941 token!544)))))

(declare-fun b!3702362 () Bool)

(declare-fun res!1506073 () Bool)

(declare-fun e!2292909 () Bool)

(assert (=> b!3702362 (=> res!1506073 e!2292909)))

(assert (=> b!3702362 (= res!1506073 (not ((_ is IntegerValue!18638) (value!190941 token!544))))))

(assert (=> b!3702362 (= e!2292911 e!2292909)))

(declare-fun b!3702363 () Bool)

(declare-fun inv!17 (TokenValue!6212) Bool)

(assert (=> b!3702363 (= e!2292911 (inv!17 (value!190941 token!544)))))

(declare-fun d!1085678 () Bool)

(declare-fun c!639738 () Bool)

(assert (=> d!1085678 (= c!639738 ((_ is IntegerValue!18636) (value!190941 token!544)))))

(assert (=> d!1085678 (= (inv!21 (value!190941 token!544)) e!2292910)))

(declare-fun b!3702364 () Bool)

(declare-fun inv!15 (TokenValue!6212) Bool)

(assert (=> b!3702364 (= e!2292909 (inv!15 (value!190941 token!544)))))

(assert (= (and d!1085678 c!639738) b!3702360))

(assert (= (and d!1085678 (not c!639738)) b!3702361))

(assert (= (and b!3702361 c!639739) b!3702363))

(assert (= (and b!3702361 (not c!639739)) b!3702362))

(assert (= (and b!3702362 (not res!1506073)) b!3702364))

(declare-fun m!4213485 () Bool)

(assert (=> b!3702360 m!4213485))

(declare-fun m!4213487 () Bool)

(assert (=> b!3702363 m!4213487))

(declare-fun m!4213489 () Bool)

(assert (=> b!3702364 m!4213489))

(assert (=> b!3702340 d!1085678))

(declare-fun d!1085680 () Bool)

(declare-fun res!1506076 () Bool)

(declare-fun e!2292917 () Bool)

(assert (=> d!1085680 (=> (not res!1506076) (not e!2292917))))

(declare-fun rulesValid!2313 (LexerInterface!5571 List!39472) Bool)

(assert (=> d!1085680 (= res!1506076 (rulesValid!2313 thiss!25322 rules!3598))))

(assert (=> d!1085680 (= (rulesInvariant!4968 thiss!25322 rules!3598) e!2292917)))

(declare-fun b!3702372 () Bool)

(declare-datatypes ((List!39474 0))(
  ( (Nil!39350) (Cons!39350 (h!44770 String!44394) (t!302145 List!39474)) )
))
(declare-fun noDuplicateTag!2309 (LexerInterface!5571 List!39472 List!39474) Bool)

(assert (=> b!3702372 (= e!2292917 (noDuplicateTag!2309 thiss!25322 rules!3598 Nil!39350))))

(assert (= (and d!1085680 res!1506076) b!3702372))

(declare-fun m!4213503 () Bool)

(assert (=> d!1085680 m!4213503))

(declare-fun m!4213505 () Bool)

(assert (=> b!3702372 m!4213505))

(assert (=> b!3702339 d!1085680))

(declare-fun d!1085684 () Bool)

(assert (=> d!1085684 (= (get!13104 lt!1295621) (v!38487 lt!1295621))))

(assert (=> b!3702334 d!1085684))

(declare-fun d!1085686 () Bool)

(assert (=> d!1085686 (= (inv!52881 (tag!6820 (rule!8852 token!544))) (= (mod (str.len (value!190940 (tag!6820 (rule!8852 token!544)))) 2) 0))))

(assert (=> b!3702328 d!1085686))

(declare-fun d!1085688 () Bool)

(declare-fun res!1506077 () Bool)

(declare-fun e!2292918 () Bool)

(assert (=> d!1085688 (=> (not res!1506077) (not e!2292918))))

(assert (=> d!1085688 (= res!1506077 (semiInverseModEq!2556 (toChars!8181 (transformation!5982 (rule!8852 token!544))) (toValue!8322 (transformation!5982 (rule!8852 token!544)))))))

(assert (=> d!1085688 (= (inv!52884 (transformation!5982 (rule!8852 token!544))) e!2292918)))

(declare-fun b!3702373 () Bool)

(assert (=> b!3702373 (= e!2292918 (equivClasses!2455 (toChars!8181 (transformation!5982 (rule!8852 token!544))) (toValue!8322 (transformation!5982 (rule!8852 token!544)))))))

(assert (= (and d!1085688 res!1506077) b!3702373))

(declare-fun m!4213507 () Bool)

(assert (=> d!1085688 m!4213507))

(declare-fun m!4213509 () Bool)

(assert (=> b!3702373 m!4213509))

(assert (=> b!3702328 d!1085688))

(declare-fun d!1085690 () Bool)

(assert (=> d!1085690 (= (get!13104 lt!1295622) (v!38487 lt!1295622))))

(assert (=> b!3702327 d!1085690))

(declare-fun d!1085692 () Bool)

(declare-fun isEmpty!23453 (Option!8526) Bool)

(assert (=> d!1085692 (= (isDefined!6715 lt!1295622) (not (isEmpty!23453 lt!1295622)))))

(declare-fun bs!574524 () Bool)

(assert (= bs!574524 d!1085692))

(declare-fun m!4213511 () Bool)

(assert (=> bs!574524 m!4213511))

(assert (=> b!3702338 d!1085692))

(declare-fun b!3702432 () Bool)

(declare-fun e!2292951 () Bool)

(declare-fun matchR!5274 (Regex!10741 List!39471) Bool)

(declare-datatypes ((tuple2!39208 0))(
  ( (tuple2!39209 (_1!22738 List!39471) (_2!22738 List!39471)) )
))
(declare-fun findLongestMatchInner!1128 (Regex!10741 List!39471 Int List!39471 List!39471 Int) tuple2!39208)

(declare-fun size!30003 (List!39471) Int)

(assert (=> b!3702432 (= e!2292951 (matchR!5274 (regex!5982 (h!44768 rules!3598)) (_1!22738 (findLongestMatchInner!1128 (regex!5982 (h!44768 rules!3598)) Nil!39347 (size!30003 Nil!39347) input!3172 input!3172 (size!30003 input!3172)))))))

(declare-fun b!3702433 () Bool)

(declare-fun res!1506117 () Bool)

(declare-fun e!2292954 () Bool)

(assert (=> b!3702433 (=> (not res!1506117) (not e!2292954))))

(declare-fun lt!1295646 () Option!8526)

(assert (=> b!3702433 (= res!1506117 (< (size!30003 (_2!22736 (get!13104 lt!1295646))) (size!30003 input!3172)))))

(declare-fun b!3702434 () Bool)

(declare-fun e!2292952 () Option!8526)

(declare-fun lt!1295645 () tuple2!39208)

(declare-fun apply!9408 (TokenValueInjection!11852 BalanceConc!23772) TokenValue!6212)

(declare-fun seqFromList!4487 (List!39471) BalanceConc!23772)

(declare-fun size!30004 (BalanceConc!23772) Int)

(assert (=> b!3702434 (= e!2292952 (Some!8525 (tuple2!39205 (Token!11319 (apply!9408 (transformation!5982 (h!44768 rules!3598)) (seqFromList!4487 (_1!22738 lt!1295645))) (h!44768 rules!3598) (size!30004 (seqFromList!4487 (_1!22738 lt!1295645))) (_1!22738 lt!1295645)) (_2!22738 lt!1295645))))))

(declare-datatypes ((Unit!57318 0))(
  ( (Unit!57319) )
))
(declare-fun lt!1295644 () Unit!57318)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1101 (Regex!10741 List!39471) Unit!57318)

(assert (=> b!3702434 (= lt!1295644 (longestMatchIsAcceptedByMatchOrIsEmpty!1101 (regex!5982 (h!44768 rules!3598)) input!3172))))

(declare-fun res!1506119 () Bool)

(declare-fun isEmpty!23454 (List!39471) Bool)

(assert (=> b!3702434 (= res!1506119 (isEmpty!23454 (_1!22738 (findLongestMatchInner!1128 (regex!5982 (h!44768 rules!3598)) Nil!39347 (size!30003 Nil!39347) input!3172 input!3172 (size!30003 input!3172)))))))

(assert (=> b!3702434 (=> res!1506119 e!2292951)))

(assert (=> b!3702434 e!2292951))

(declare-fun lt!1295647 () Unit!57318)

(assert (=> b!3702434 (= lt!1295647 lt!1295644)))

(declare-fun lt!1295643 () Unit!57318)

(declare-fun lemmaSemiInverse!1634 (TokenValueInjection!11852 BalanceConc!23772) Unit!57318)

(assert (=> b!3702434 (= lt!1295643 (lemmaSemiInverse!1634 (transformation!5982 (h!44768 rules!3598)) (seqFromList!4487 (_1!22738 lt!1295645))))))

(declare-fun b!3702435 () Bool)

(declare-fun res!1506116 () Bool)

(assert (=> b!3702435 (=> (not res!1506116) (not e!2292954))))

(assert (=> b!3702435 (= res!1506116 (= (value!190941 (_1!22736 (get!13104 lt!1295646))) (apply!9408 (transformation!5982 (rule!8852 (_1!22736 (get!13104 lt!1295646)))) (seqFromList!4487 (originalCharacters!6690 (_1!22736 (get!13104 lt!1295646)))))))))

(declare-fun b!3702437 () Bool)

(declare-fun res!1506121 () Bool)

(assert (=> b!3702437 (=> (not res!1506121) (not e!2292954))))

(assert (=> b!3702437 (= res!1506121 (= (rule!8852 (_1!22736 (get!13104 lt!1295646))) (h!44768 rules!3598)))))

(declare-fun b!3702438 () Bool)

(declare-fun e!2292953 () Bool)

(assert (=> b!3702438 (= e!2292953 e!2292954)))

(declare-fun res!1506120 () Bool)

(assert (=> b!3702438 (=> (not res!1506120) (not e!2292954))))

(declare-fun list!14697 (BalanceConc!23772) List!39471)

(declare-fun charsOf!3971 (Token!11318) BalanceConc!23772)

(assert (=> b!3702438 (= res!1506120 (matchR!5274 (regex!5982 (h!44768 rules!3598)) (list!14697 (charsOf!3971 (_1!22736 (get!13104 lt!1295646))))))))

(declare-fun b!3702439 () Bool)

(assert (=> b!3702439 (= e!2292952 None!8525)))

(declare-fun b!3702440 () Bool)

(assert (=> b!3702440 (= e!2292954 (= (size!30000 (_1!22736 (get!13104 lt!1295646))) (size!30003 (originalCharacters!6690 (_1!22736 (get!13104 lt!1295646))))))))

(declare-fun d!1085694 () Bool)

(assert (=> d!1085694 e!2292953))

(declare-fun res!1506118 () Bool)

(assert (=> d!1085694 (=> res!1506118 e!2292953)))

(assert (=> d!1085694 (= res!1506118 (isEmpty!23453 lt!1295646))))

(assert (=> d!1085694 (= lt!1295646 e!2292952)))

(declare-fun c!639750 () Bool)

(assert (=> d!1085694 (= c!639750 (isEmpty!23454 (_1!22738 lt!1295645)))))

(declare-fun findLongestMatch!1043 (Regex!10741 List!39471) tuple2!39208)

(assert (=> d!1085694 (= lt!1295645 (findLongestMatch!1043 (regex!5982 (h!44768 rules!3598)) input!3172))))

(declare-fun ruleValid!2166 (LexerInterface!5571 Rule!11764) Bool)

(assert (=> d!1085694 (ruleValid!2166 thiss!25322 (h!44768 rules!3598))))

(assert (=> d!1085694 (= (maxPrefixOneRule!2203 thiss!25322 (h!44768 rules!3598) input!3172) lt!1295646)))

(declare-fun b!3702436 () Bool)

(declare-fun res!1506122 () Bool)

(assert (=> b!3702436 (=> (not res!1506122) (not e!2292954))))

(declare-fun ++!9768 (List!39471 List!39471) List!39471)

(assert (=> b!3702436 (= res!1506122 (= (++!9768 (list!14697 (charsOf!3971 (_1!22736 (get!13104 lt!1295646)))) (_2!22736 (get!13104 lt!1295646))) input!3172))))

(assert (= (and d!1085694 c!639750) b!3702439))

(assert (= (and d!1085694 (not c!639750)) b!3702434))

(assert (= (and b!3702434 (not res!1506119)) b!3702432))

(assert (= (and d!1085694 (not res!1506118)) b!3702438))

(assert (= (and b!3702438 res!1506120) b!3702436))

(assert (= (and b!3702436 res!1506122) b!3702433))

(assert (= (and b!3702433 res!1506117) b!3702437))

(assert (= (and b!3702437 res!1506121) b!3702435))

(assert (= (and b!3702435 res!1506116) b!3702440))

(declare-fun m!4213533 () Bool)

(assert (=> b!3702432 m!4213533))

(declare-fun m!4213535 () Bool)

(assert (=> b!3702432 m!4213535))

(assert (=> b!3702432 m!4213533))

(assert (=> b!3702432 m!4213535))

(declare-fun m!4213537 () Bool)

(assert (=> b!3702432 m!4213537))

(declare-fun m!4213539 () Bool)

(assert (=> b!3702432 m!4213539))

(declare-fun m!4213541 () Bool)

(assert (=> b!3702438 m!4213541))

(declare-fun m!4213543 () Bool)

(assert (=> b!3702438 m!4213543))

(assert (=> b!3702438 m!4213543))

(declare-fun m!4213545 () Bool)

(assert (=> b!3702438 m!4213545))

(assert (=> b!3702438 m!4213545))

(declare-fun m!4213547 () Bool)

(assert (=> b!3702438 m!4213547))

(assert (=> b!3702436 m!4213541))

(assert (=> b!3702436 m!4213543))

(assert (=> b!3702436 m!4213543))

(assert (=> b!3702436 m!4213545))

(assert (=> b!3702436 m!4213545))

(declare-fun m!4213553 () Bool)

(assert (=> b!3702436 m!4213553))

(assert (=> b!3702440 m!4213541))

(declare-fun m!4213559 () Bool)

(assert (=> b!3702440 m!4213559))

(assert (=> b!3702435 m!4213541))

(declare-fun m!4213567 () Bool)

(assert (=> b!3702435 m!4213567))

(assert (=> b!3702435 m!4213567))

(declare-fun m!4213575 () Bool)

(assert (=> b!3702435 m!4213575))

(assert (=> b!3702434 m!4213535))

(assert (=> b!3702434 m!4213533))

(assert (=> b!3702434 m!4213535))

(assert (=> b!3702434 m!4213537))

(declare-fun m!4213589 () Bool)

(assert (=> b!3702434 m!4213589))

(declare-fun m!4213591 () Bool)

(assert (=> b!3702434 m!4213591))

(assert (=> b!3702434 m!4213589))

(declare-fun m!4213593 () Bool)

(assert (=> b!3702434 m!4213593))

(declare-fun m!4213595 () Bool)

(assert (=> b!3702434 m!4213595))

(assert (=> b!3702434 m!4213589))

(assert (=> b!3702434 m!4213589))

(declare-fun m!4213601 () Bool)

(assert (=> b!3702434 m!4213601))

(assert (=> b!3702434 m!4213533))

(declare-fun m!4213605 () Bool)

(assert (=> b!3702434 m!4213605))

(assert (=> b!3702437 m!4213541))

(declare-fun m!4213611 () Bool)

(assert (=> d!1085694 m!4213611))

(declare-fun m!4213615 () Bool)

(assert (=> d!1085694 m!4213615))

(declare-fun m!4213619 () Bool)

(assert (=> d!1085694 m!4213619))

(declare-fun m!4213621 () Bool)

(assert (=> d!1085694 m!4213621))

(assert (=> b!3702433 m!4213541))

(declare-fun m!4213623 () Bool)

(assert (=> b!3702433 m!4213623))

(assert (=> b!3702433 m!4213535))

(assert (=> b!3702338 d!1085694))

(declare-fun d!1085718 () Bool)

(declare-fun res!1506134 () Bool)

(declare-fun e!2292961 () Bool)

(assert (=> d!1085718 (=> (not res!1506134) (not e!2292961))))

(assert (=> d!1085718 (= res!1506134 (not (isEmpty!23454 (originalCharacters!6690 token!544))))))

(assert (=> d!1085718 (= (inv!52885 token!544) e!2292961)))

(declare-fun b!3702454 () Bool)

(declare-fun res!1506135 () Bool)

(assert (=> b!3702454 (=> (not res!1506135) (not e!2292961))))

(declare-fun dynLambda!17196 (Int TokenValue!6212) BalanceConc!23772)

(assert (=> b!3702454 (= res!1506135 (= (originalCharacters!6690 token!544) (list!14697 (dynLambda!17196 (toChars!8181 (transformation!5982 (rule!8852 token!544))) (value!190941 token!544)))))))

(declare-fun b!3702455 () Bool)

(assert (=> b!3702455 (= e!2292961 (= (size!30000 token!544) (size!30003 (originalCharacters!6690 token!544))))))

(assert (= (and d!1085718 res!1506134) b!3702454))

(assert (= (and b!3702454 res!1506135) b!3702455))

(declare-fun b_lambda!109821 () Bool)

(assert (=> (not b_lambda!109821) (not b!3702454)))

(declare-fun t!302137 () Bool)

(declare-fun tb!214377 () Bool)

(assert (=> (and b!3702326 (= (toChars!8181 (transformation!5982 (rule!8852 token!544))) (toChars!8181 (transformation!5982 (rule!8852 token!544)))) t!302137) tb!214377))

(declare-fun b!3702460 () Bool)

(declare-fun e!2292964 () Bool)

(declare-fun tp!1125372 () Bool)

(declare-fun inv!52888 (Conc!12079) Bool)

(assert (=> b!3702460 (= e!2292964 (and (inv!52888 (c!639732 (dynLambda!17196 (toChars!8181 (transformation!5982 (rule!8852 token!544))) (value!190941 token!544)))) tp!1125372))))

(declare-fun result!261196 () Bool)

(declare-fun inv!52889 (BalanceConc!23772) Bool)

(assert (=> tb!214377 (= result!261196 (and (inv!52889 (dynLambda!17196 (toChars!8181 (transformation!5982 (rule!8852 token!544))) (value!190941 token!544))) e!2292964))))

(assert (= tb!214377 b!3702460))

(declare-fun m!4213627 () Bool)

(assert (=> b!3702460 m!4213627))

(declare-fun m!4213629 () Bool)

(assert (=> tb!214377 m!4213629))

(assert (=> b!3702454 t!302137))

(declare-fun b_and!276903 () Bool)

(assert (= b_and!276893 (and (=> t!302137 result!261196) b_and!276903)))

(declare-fun t!302139 () Bool)

(declare-fun tb!214379 () Bool)

(assert (=> (and b!3702337 (= (toChars!8181 (transformation!5982 (h!44768 rules!3598))) (toChars!8181 (transformation!5982 (rule!8852 token!544)))) t!302139) tb!214379))

(declare-fun result!261200 () Bool)

(assert (= result!261200 result!261196))

(assert (=> b!3702454 t!302139))

(declare-fun b_and!276905 () Bool)

(assert (= b_and!276897 (and (=> t!302139 result!261200) b_and!276905)))

(declare-fun m!4213631 () Bool)

(assert (=> d!1085718 m!4213631))

(declare-fun m!4213633 () Bool)

(assert (=> b!3702454 m!4213633))

(assert (=> b!3702454 m!4213633))

(declare-fun m!4213635 () Bool)

(assert (=> b!3702454 m!4213635))

(declare-fun m!4213637 () Bool)

(assert (=> b!3702455 m!4213637))

(assert (=> start!348886 d!1085718))

(declare-fun d!1085722 () Bool)

(assert (=> d!1085722 (= (isEmpty!23450 (t!302131 rules!3598)) ((_ is Nil!39348) (t!302131 rules!3598)))))

(assert (=> b!3702332 d!1085722))

(declare-fun d!1085724 () Bool)

(assert (=> d!1085724 (= (isDefined!6715 lt!1295621) (not (isEmpty!23453 lt!1295621)))))

(declare-fun bs!574527 () Bool)

(assert (= bs!574527 d!1085724))

(declare-fun m!4213639 () Bool)

(assert (=> bs!574527 m!4213639))

(assert (=> b!3702336 d!1085724))

(declare-fun d!1085726 () Bool)

(declare-fun e!2293000 () Bool)

(assert (=> d!1085726 e!2293000))

(declare-fun res!1506172 () Bool)

(assert (=> d!1085726 (=> res!1506172 e!2293000)))

(declare-fun lt!1295681 () Option!8526)

(assert (=> d!1085726 (= res!1506172 (isEmpty!23453 lt!1295681))))

(declare-fun e!2293002 () Option!8526)

(assert (=> d!1085726 (= lt!1295681 e!2293002)))

(declare-fun c!639757 () Bool)

(assert (=> d!1085726 (= c!639757 (and ((_ is Cons!39348) rules!3598) ((_ is Nil!39348) (t!302131 rules!3598))))))

(declare-fun lt!1295682 () Unit!57318)

(declare-fun lt!1295678 () Unit!57318)

(assert (=> d!1085726 (= lt!1295682 lt!1295678)))

(declare-fun isPrefix!3289 (List!39471 List!39471) Bool)

(assert (=> d!1085726 (isPrefix!3289 input!3172 input!3172)))

(declare-fun lemmaIsPrefixRefl!2074 (List!39471 List!39471) Unit!57318)

(assert (=> d!1085726 (= lt!1295678 (lemmaIsPrefixRefl!2074 input!3172 input!3172))))

(declare-fun rulesValidInductive!2155 (LexerInterface!5571 List!39472) Bool)

(assert (=> d!1085726 (rulesValidInductive!2155 thiss!25322 rules!3598)))

(assert (=> d!1085726 (= (maxPrefix!3093 thiss!25322 rules!3598 input!3172) lt!1295681)))

(declare-fun b!3702541 () Bool)

(declare-fun res!1506173 () Bool)

(declare-fun e!2293001 () Bool)

(assert (=> b!3702541 (=> (not res!1506173) (not e!2293001))))

(assert (=> b!3702541 (= res!1506173 (= (value!190941 (_1!22736 (get!13104 lt!1295681))) (apply!9408 (transformation!5982 (rule!8852 (_1!22736 (get!13104 lt!1295681)))) (seqFromList!4487 (originalCharacters!6690 (_1!22736 (get!13104 lt!1295681)))))))))

(declare-fun b!3702542 () Bool)

(declare-fun res!1506171 () Bool)

(assert (=> b!3702542 (=> (not res!1506171) (not e!2293001))))

(assert (=> b!3702542 (= res!1506171 (= (list!14697 (charsOf!3971 (_1!22736 (get!13104 lt!1295681)))) (originalCharacters!6690 (_1!22736 (get!13104 lt!1295681)))))))

(declare-fun call!267504 () Option!8526)

(declare-fun bm!267499 () Bool)

(assert (=> bm!267499 (= call!267504 (maxPrefixOneRule!2203 thiss!25322 (h!44768 rules!3598) input!3172))))

(declare-fun b!3702543 () Bool)

(declare-fun lt!1295679 () Option!8526)

(declare-fun lt!1295680 () Option!8526)

(assert (=> b!3702543 (= e!2293002 (ite (and ((_ is None!8525) lt!1295679) ((_ is None!8525) lt!1295680)) None!8525 (ite ((_ is None!8525) lt!1295680) lt!1295679 (ite ((_ is None!8525) lt!1295679) lt!1295680 (ite (>= (size!30000 (_1!22736 (v!38487 lt!1295679))) (size!30000 (_1!22736 (v!38487 lt!1295680)))) lt!1295679 lt!1295680)))))))

(assert (=> b!3702543 (= lt!1295679 call!267504)))

(assert (=> b!3702543 (= lt!1295680 (maxPrefix!3093 thiss!25322 (t!302131 rules!3598) input!3172))))

(declare-fun b!3702544 () Bool)

(declare-fun contains!7845 (List!39472 Rule!11764) Bool)

(assert (=> b!3702544 (= e!2293001 (contains!7845 rules!3598 (rule!8852 (_1!22736 (get!13104 lt!1295681)))))))

(declare-fun b!3702545 () Bool)

(assert (=> b!3702545 (= e!2293002 call!267504)))

(declare-fun b!3702546 () Bool)

(declare-fun res!1506177 () Bool)

(assert (=> b!3702546 (=> (not res!1506177) (not e!2293001))))

(assert (=> b!3702546 (= res!1506177 (< (size!30003 (_2!22736 (get!13104 lt!1295681))) (size!30003 input!3172)))))

(declare-fun b!3702547 () Bool)

(declare-fun res!1506174 () Bool)

(assert (=> b!3702547 (=> (not res!1506174) (not e!2293001))))

(assert (=> b!3702547 (= res!1506174 (matchR!5274 (regex!5982 (rule!8852 (_1!22736 (get!13104 lt!1295681)))) (list!14697 (charsOf!3971 (_1!22736 (get!13104 lt!1295681))))))))

(declare-fun b!3702548 () Bool)

(declare-fun res!1506176 () Bool)

(assert (=> b!3702548 (=> (not res!1506176) (not e!2293001))))

(assert (=> b!3702548 (= res!1506176 (= (++!9768 (list!14697 (charsOf!3971 (_1!22736 (get!13104 lt!1295681)))) (_2!22736 (get!13104 lt!1295681))) input!3172))))

(declare-fun b!3702549 () Bool)

(assert (=> b!3702549 (= e!2293000 e!2293001)))

(declare-fun res!1506175 () Bool)

(assert (=> b!3702549 (=> (not res!1506175) (not e!2293001))))

(assert (=> b!3702549 (= res!1506175 (isDefined!6715 lt!1295681))))

(assert (= (and d!1085726 c!639757) b!3702545))

(assert (= (and d!1085726 (not c!639757)) b!3702543))

(assert (= (or b!3702545 b!3702543) bm!267499))

(assert (= (and d!1085726 (not res!1506172)) b!3702549))

(assert (= (and b!3702549 res!1506175) b!3702542))

(assert (= (and b!3702542 res!1506171) b!3702546))

(assert (= (and b!3702546 res!1506177) b!3702548))

(assert (= (and b!3702548 res!1506176) b!3702541))

(assert (= (and b!3702541 res!1506173) b!3702547))

(assert (= (and b!3702547 res!1506174) b!3702544))

(declare-fun m!4213675 () Bool)

(assert (=> b!3702546 m!4213675))

(declare-fun m!4213677 () Bool)

(assert (=> b!3702546 m!4213677))

(assert (=> b!3702546 m!4213535))

(assert (=> b!3702544 m!4213675))

(declare-fun m!4213679 () Bool)

(assert (=> b!3702544 m!4213679))

(assert (=> b!3702548 m!4213675))

(declare-fun m!4213681 () Bool)

(assert (=> b!3702548 m!4213681))

(assert (=> b!3702548 m!4213681))

(declare-fun m!4213683 () Bool)

(assert (=> b!3702548 m!4213683))

(assert (=> b!3702548 m!4213683))

(declare-fun m!4213685 () Bool)

(assert (=> b!3702548 m!4213685))

(declare-fun m!4213687 () Bool)

(assert (=> b!3702549 m!4213687))

(declare-fun m!4213689 () Bool)

(assert (=> b!3702543 m!4213689))

(assert (=> b!3702541 m!4213675))

(declare-fun m!4213691 () Bool)

(assert (=> b!3702541 m!4213691))

(assert (=> b!3702541 m!4213691))

(declare-fun m!4213693 () Bool)

(assert (=> b!3702541 m!4213693))

(assert (=> b!3702542 m!4213675))

(assert (=> b!3702542 m!4213681))

(assert (=> b!3702542 m!4213681))

(assert (=> b!3702542 m!4213683))

(assert (=> b!3702547 m!4213675))

(assert (=> b!3702547 m!4213681))

(assert (=> b!3702547 m!4213681))

(assert (=> b!3702547 m!4213683))

(assert (=> b!3702547 m!4213683))

(declare-fun m!4213695 () Bool)

(assert (=> b!3702547 m!4213695))

(assert (=> bm!267499 m!4213453))

(declare-fun m!4213697 () Bool)

(assert (=> d!1085726 m!4213697))

(declare-fun m!4213699 () Bool)

(assert (=> d!1085726 m!4213699))

(declare-fun m!4213701 () Bool)

(assert (=> d!1085726 m!4213701))

(declare-fun m!4213703 () Bool)

(assert (=> d!1085726 m!4213703))

(assert (=> b!3702336 d!1085726))

(declare-fun b!3702563 () Bool)

(declare-fun e!2293005 () Bool)

(declare-fun tp!1125422 () Bool)

(declare-fun tp!1125419 () Bool)

(assert (=> b!3702563 (= e!2293005 (and tp!1125422 tp!1125419))))

(declare-fun b!3702561 () Bool)

(declare-fun tp!1125423 () Bool)

(declare-fun tp!1125421 () Bool)

(assert (=> b!3702561 (= e!2293005 (and tp!1125423 tp!1125421))))

(declare-fun b!3702562 () Bool)

(declare-fun tp!1125420 () Bool)

(assert (=> b!3702562 (= e!2293005 tp!1125420)))

(declare-fun b!3702560 () Bool)

(assert (=> b!3702560 (= e!2293005 tp_is_empty!18557)))

(assert (=> b!3702335 (= tp!1125362 e!2293005)))

(assert (= (and b!3702335 ((_ is ElementMatch!10741) (regex!5982 (h!44768 rules!3598)))) b!3702560))

(assert (= (and b!3702335 ((_ is Concat!16954) (regex!5982 (h!44768 rules!3598)))) b!3702561))

(assert (= (and b!3702335 ((_ is Star!10741) (regex!5982 (h!44768 rules!3598)))) b!3702562))

(assert (= (and b!3702335 ((_ is Union!10741) (regex!5982 (h!44768 rules!3598)))) b!3702563))

(declare-fun b!3702568 () Bool)

(declare-fun e!2293008 () Bool)

(declare-fun tp!1125426 () Bool)

(assert (=> b!3702568 (= e!2293008 (and tp_is_empty!18557 tp!1125426))))

(assert (=> b!3702329 (= tp!1125363 e!2293008)))

(assert (= (and b!3702329 ((_ is Cons!39347) (t!302130 input!3172))) b!3702568))

(declare-fun b!3702569 () Bool)

(declare-fun e!2293009 () Bool)

(declare-fun tp!1125427 () Bool)

(assert (=> b!3702569 (= e!2293009 (and tp_is_empty!18557 tp!1125427))))

(assert (=> b!3702340 (= tp!1125364 e!2293009)))

(assert (= (and b!3702340 ((_ is Cons!39347) (originalCharacters!6690 token!544))) b!3702569))

(declare-fun b!3702573 () Bool)

(declare-fun e!2293010 () Bool)

(declare-fun tp!1125431 () Bool)

(declare-fun tp!1125428 () Bool)

(assert (=> b!3702573 (= e!2293010 (and tp!1125431 tp!1125428))))

(declare-fun b!3702571 () Bool)

(declare-fun tp!1125432 () Bool)

(declare-fun tp!1125430 () Bool)

(assert (=> b!3702571 (= e!2293010 (and tp!1125432 tp!1125430))))

(declare-fun b!3702572 () Bool)

(declare-fun tp!1125429 () Bool)

(assert (=> b!3702572 (= e!2293010 tp!1125429)))

(declare-fun b!3702570 () Bool)

(assert (=> b!3702570 (= e!2293010 tp_is_empty!18557)))

(assert (=> b!3702328 (= tp!1125359 e!2293010)))

(assert (= (and b!3702328 ((_ is ElementMatch!10741) (regex!5982 (rule!8852 token!544)))) b!3702570))

(assert (= (and b!3702328 ((_ is Concat!16954) (regex!5982 (rule!8852 token!544)))) b!3702571))

(assert (= (and b!3702328 ((_ is Star!10741) (regex!5982 (rule!8852 token!544)))) b!3702572))

(assert (= (and b!3702328 ((_ is Union!10741) (regex!5982 (rule!8852 token!544)))) b!3702573))

(declare-fun b!3702584 () Bool)

(declare-fun b_free!98693 () Bool)

(declare-fun b_next!99397 () Bool)

(assert (=> b!3702584 (= b_free!98693 (not b_next!99397))))

(declare-fun tp!1125442 () Bool)

(declare-fun b_and!276911 () Bool)

(assert (=> b!3702584 (= tp!1125442 b_and!276911)))

(declare-fun b_free!98695 () Bool)

(declare-fun b_next!99399 () Bool)

(assert (=> b!3702584 (= b_free!98695 (not b_next!99399))))

(declare-fun t!302144 () Bool)

(declare-fun tb!214383 () Bool)

(assert (=> (and b!3702584 (= (toChars!8181 (transformation!5982 (h!44768 (t!302131 rules!3598)))) (toChars!8181 (transformation!5982 (rule!8852 token!544)))) t!302144) tb!214383))

(declare-fun result!261216 () Bool)

(assert (= result!261216 result!261196))

(assert (=> b!3702454 t!302144))

(declare-fun b_and!276913 () Bool)

(declare-fun tp!1125441 () Bool)

(assert (=> b!3702584 (= tp!1125441 (and (=> t!302144 result!261216) b_and!276913))))

(declare-fun e!2293022 () Bool)

(assert (=> b!3702584 (= e!2293022 (and tp!1125442 tp!1125441))))

(declare-fun e!2293019 () Bool)

(declare-fun b!3702583 () Bool)

(declare-fun tp!1125444 () Bool)

(assert (=> b!3702583 (= e!2293019 (and tp!1125444 (inv!52881 (tag!6820 (h!44768 (t!302131 rules!3598)))) (inv!52884 (transformation!5982 (h!44768 (t!302131 rules!3598)))) e!2293022))))

(declare-fun b!3702582 () Bool)

(declare-fun e!2293021 () Bool)

(declare-fun tp!1125443 () Bool)

(assert (=> b!3702582 (= e!2293021 (and e!2293019 tp!1125443))))

(assert (=> b!3702331 (= tp!1125358 e!2293021)))

(assert (= b!3702583 b!3702584))

(assert (= b!3702582 b!3702583))

(assert (= (and b!3702331 ((_ is Cons!39348) (t!302131 rules!3598))) b!3702582))

(declare-fun m!4213705 () Bool)

(assert (=> b!3702583 m!4213705))

(declare-fun m!4213707 () Bool)

(assert (=> b!3702583 m!4213707))

(declare-fun b_lambda!109825 () Bool)

(assert (= b_lambda!109821 (or (and b!3702326 b_free!98683) (and b!3702337 b_free!98687 (= (toChars!8181 (transformation!5982 (h!44768 rules!3598))) (toChars!8181 (transformation!5982 (rule!8852 token!544))))) (and b!3702584 b_free!98695 (= (toChars!8181 (transformation!5982 (h!44768 (t!302131 rules!3598)))) (toChars!8181 (transformation!5982 (rule!8852 token!544))))) b_lambda!109825)))

(check-sat (not b!3702542) (not b!3702372) (not b!3702572) b_and!276913 (not d!1085724) (not b!3702438) (not d!1085694) (not b!3702568) (not bm!267499) (not b!3702571) (not b!3702460) (not b_next!99387) (not b!3702434) b_and!276895 b_and!276903 (not b!3702435) b_and!276891 (not d!1085680) (not b_next!99389) tp_is_empty!18557 (not b!3702363) (not b!3702432) (not b!3702437) (not b!3702563) (not b!3702455) (not b!3702549) (not b!3702562) (not d!1085726) (not b!3702364) (not b!3702573) (not b!3702433) (not b_next!99391) (not b_next!99385) (not b!3702583) (not b!3702547) (not b!3702373) (not b_lambda!109825) (not d!1085718) (not b!3702454) (not d!1085670) b_and!276905 (not tb!214377) (not b!3702561) (not b!3702440) (not b!3702544) (not b_next!99399) (not b!3702541) (not b!3702436) (not b!3702360) (not b!3702546) (not d!1085692) (not b!3702582) (not b_next!99397) b_and!276911 (not b!3702343) (not b!3702543) (not b!3702569) (not b!3702548) (not d!1085688))
(check-sat b_and!276891 b_and!276913 (not b_next!99389) b_and!276905 (not b_next!99399) (not b_next!99397) b_and!276911 (not b_next!99387) b_and!276895 b_and!276903 (not b_next!99391) (not b_next!99385))
