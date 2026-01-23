; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!55470 () Bool)

(assert start!55470)

(declare-fun b!591415 () Bool)

(declare-fun b_free!16605 () Bool)

(declare-fun b_next!16621 () Bool)

(assert (=> b!591415 (= b_free!16605 (not b_next!16621))))

(declare-fun tp!184438 () Bool)

(declare-fun b_and!58283 () Bool)

(assert (=> b!591415 (= tp!184438 b_and!58283)))

(declare-fun b_free!16607 () Bool)

(declare-fun b_next!16623 () Bool)

(assert (=> b!591415 (= b_free!16607 (not b_next!16623))))

(declare-fun tp!184439 () Bool)

(declare-fun b_and!58285 () Bool)

(assert (=> b!591415 (= tp!184439 b_and!58285)))

(declare-fun b!591409 () Bool)

(declare-fun b_free!16609 () Bool)

(declare-fun b_next!16625 () Bool)

(assert (=> b!591409 (= b_free!16609 (not b_next!16625))))

(declare-fun tp!184446 () Bool)

(declare-fun b_and!58287 () Bool)

(assert (=> b!591409 (= tp!184446 b_and!58287)))

(declare-fun b_free!16611 () Bool)

(declare-fun b_next!16627 () Bool)

(assert (=> b!591409 (= b_free!16611 (not b_next!16627))))

(declare-fun tp!184444 () Bool)

(declare-fun b_and!58289 () Bool)

(assert (=> b!591409 (= tp!184444 b_and!58289)))

(declare-fun b!591398 () Bool)

(declare-fun e!357610 () Bool)

(declare-fun tp_is_empty!3319 () Bool)

(declare-fun tp!184442 () Bool)

(assert (=> b!591398 (= e!357610 (and tp_is_empty!3319 tp!184442))))

(declare-fun b!591399 () Bool)

(declare-fun e!357608 () Bool)

(declare-fun e!357620 () Bool)

(declare-fun tp!184437 () Bool)

(assert (=> b!591399 (= e!357608 (and e!357620 tp!184437))))

(declare-fun b!591400 () Bool)

(declare-fun e!357615 () Bool)

(declare-fun e!357614 () Bool)

(assert (=> b!591400 (= e!357615 e!357614)))

(declare-fun res!254970 () Bool)

(assert (=> b!591400 (=> (not res!254970) (not e!357614))))

(declare-datatypes ((C!3886 0))(
  ( (C!3887 (val!2169 Int)) )
))
(declare-datatypes ((List!5853 0))(
  ( (Nil!5843) (Cons!5843 (h!11244 C!3886) (t!79004 List!5853)) )
))
(declare-fun lt!250600 () List!5853)

(declare-fun input!2705 () List!5853)

(assert (=> b!591400 (= res!254970 (= lt!250600 input!2705))))

(declare-datatypes ((List!5854 0))(
  ( (Nil!5844) (Cons!5844 (h!11245 (_ BitVec 16)) (t!79005 List!5854)) )
))
(declare-datatypes ((TokenValue!1172 0))(
  ( (FloatLiteralValue!2344 (text!8649 List!5854)) (TokenValueExt!1171 (__x!4242 Int)) (Broken!5860 (value!37560 List!5854)) (Object!1181) (End!1172) (Def!1172) (Underscore!1172) (Match!1172) (Else!1172) (Error!1172) (Case!1172) (If!1172) (Extends!1172) (Abstract!1172) (Class!1172) (Val!1172) (DelimiterValue!2344 (del!1232 List!5854)) (KeywordValue!1178 (value!37561 List!5854)) (CommentValue!2344 (value!37562 List!5854)) (WhitespaceValue!2344 (value!37563 List!5854)) (IndentationValue!1172 (value!37564 List!5854)) (String!7605) (Int32!1172) (Broken!5861 (value!37565 List!5854)) (Boolean!1173) (Unit!10613) (OperatorValue!1175 (op!1232 List!5854)) (IdentifierValue!2344 (value!37566 List!5854)) (IdentifierValue!2345 (value!37567 List!5854)) (WhitespaceValue!2345 (value!37568 List!5854)) (True!2344) (False!2344) (Broken!5862 (value!37569 List!5854)) (Broken!5863 (value!37570 List!5854)) (True!2345) (RightBrace!1172) (RightBracket!1172) (Colon!1172) (Null!1172) (Comma!1172) (LeftBracket!1172) (False!2345) (LeftBrace!1172) (ImaginaryLiteralValue!1172 (text!8650 List!5854)) (StringLiteralValue!3516 (value!37571 List!5854)) (EOFValue!1172 (value!37572 List!5854)) (IdentValue!1172 (value!37573 List!5854)) (DelimiterValue!2345 (value!37574 List!5854)) (DedentValue!1172 (value!37575 List!5854)) (NewLineValue!1172 (value!37576 List!5854)) (IntegerValue!3516 (value!37577 (_ BitVec 32)) (text!8651 List!5854)) (IntegerValue!3517 (value!37578 Int) (text!8652 List!5854)) (Times!1172) (Or!1172) (Equal!1172) (Minus!1172) (Broken!5864 (value!37579 List!5854)) (And!1172) (Div!1172) (LessEqual!1172) (Mod!1172) (Concat!2654) (Not!1172) (Plus!1172) (SpaceValue!1172 (value!37580 List!5854)) (IntegerValue!3518 (value!37581 Int) (text!8653 List!5854)) (StringLiteralValue!3517 (text!8654 List!5854)) (FloatLiteralValue!2345 (text!8655 List!5854)) (BytesLiteralValue!1172 (value!37582 List!5854)) (CommentValue!2345 (value!37583 List!5854)) (StringLiteralValue!3518 (value!37584 List!5854)) (ErrorTokenValue!1172 (msg!1233 List!5854)) )
))
(declare-datatypes ((Regex!1482 0))(
  ( (ElementMatch!1482 (c!110321 C!3886)) (Concat!2655 (regOne!3476 Regex!1482) (regTwo!3476 Regex!1482)) (EmptyExpr!1482) (Star!1482 (reg!1811 Regex!1482)) (EmptyLang!1482) (Union!1482 (regOne!3477 Regex!1482) (regTwo!3477 Regex!1482)) )
))
(declare-datatypes ((String!7606 0))(
  ( (String!7607 (value!37585 String)) )
))
(declare-datatypes ((IArray!3731 0))(
  ( (IArray!3732 (innerList!1923 List!5853)) )
))
(declare-datatypes ((Conc!1865 0))(
  ( (Node!1865 (left!4748 Conc!1865) (right!5078 Conc!1865) (csize!3960 Int) (cheight!2076 Int)) (Leaf!2947 (xs!4502 IArray!3731) (csize!3961 Int)) (Empty!1865) )
))
(declare-datatypes ((BalanceConc!3738 0))(
  ( (BalanceConc!3739 (c!110322 Conc!1865)) )
))
(declare-datatypes ((TokenValueInjection!2112 0))(
  ( (TokenValueInjection!2113 (toValue!2035 Int) (toChars!1894 Int)) )
))
(declare-datatypes ((Rule!2096 0))(
  ( (Rule!2097 (regex!1148 Regex!1482) (tag!1410 String!7606) (isSeparator!1148 Bool) (transformation!1148 TokenValueInjection!2112)) )
))
(declare-datatypes ((Token!2032 0))(
  ( (Token!2033 (value!37586 TokenValue!1172) (rule!1916 Rule!2096) (size!4628 Int) (originalCharacters!1187 List!5853)) )
))
(declare-fun token!491 () Token!2032)

(declare-fun list!2445 (BalanceConc!3738) List!5853)

(declare-fun charsOf!777 (Token!2032) BalanceConc!3738)

(assert (=> b!591400 (= lt!250600 (list!2445 (charsOf!777 token!491)))))

(declare-fun b!591401 () Bool)

(declare-fun res!254965 () Bool)

(declare-fun e!357617 () Bool)

(assert (=> b!591401 (=> (not res!254965) (not e!357617))))

(declare-fun suffix!1342 () List!5853)

(declare-fun lt!250591 () List!5853)

(declare-fun ++!1636 (List!5853 List!5853) List!5853)

(assert (=> b!591401 (= res!254965 (= (++!1636 lt!250600 suffix!1342) lt!250591))))

(declare-fun b!591402 () Bool)

(declare-fun e!357612 () Bool)

(assert (=> b!591402 (= e!357614 e!357612)))

(declare-fun res!254966 () Bool)

(assert (=> b!591402 (=> (not res!254966) (not e!357612))))

(declare-datatypes ((tuple2!6786 0))(
  ( (tuple2!6787 (_1!3657 Token!2032) (_2!3657 List!5853)) )
))
(declare-datatypes ((Option!1499 0))(
  ( (None!1498) (Some!1498 (v!16383 tuple2!6786)) )
))
(declare-fun lt!250596 () Option!1499)

(declare-fun isDefined!1310 (Option!1499) Bool)

(assert (=> b!591402 (= res!254966 (isDefined!1310 lt!250596))))

(declare-datatypes ((List!5855 0))(
  ( (Nil!5845) (Cons!5845 (h!11246 Rule!2096) (t!79006 List!5855)) )
))
(declare-fun rules!3103 () List!5855)

(declare-datatypes ((LexerInterface!1034 0))(
  ( (LexerInterfaceExt!1031 (__x!4243 Int)) (Lexer!1032) )
))
(declare-fun thiss!22590 () LexerInterface!1034)

(declare-fun maxPrefix!732 (LexerInterface!1034 List!5855 List!5853) Option!1499)

(assert (=> b!591402 (= lt!250596 (maxPrefix!732 thiss!22590 rules!3103 lt!250591))))

(assert (=> b!591402 (= lt!250591 (++!1636 input!2705 suffix!1342))))

(declare-fun b!591403 () Bool)

(declare-datatypes ((Unit!10614 0))(
  ( (Unit!10615) )
))
(declare-fun e!357623 () Unit!10614)

(declare-fun Unit!10616 () Unit!10614)

(assert (=> b!591403 (= e!357623 Unit!10616)))

(declare-fun res!254964 () Bool)

(assert (=> start!55470 (=> (not res!254964) (not e!357615))))

(assert (=> start!55470 (= res!254964 (is-Lexer!1032 thiss!22590))))

(assert (=> start!55470 e!357615))

(declare-fun e!357613 () Bool)

(assert (=> start!55470 e!357613))

(assert (=> start!55470 e!357608))

(declare-fun e!357622 () Bool)

(declare-fun inv!7400 (Token!2032) Bool)

(assert (=> start!55470 (and (inv!7400 token!491) e!357622)))

(assert (=> start!55470 true))

(assert (=> start!55470 e!357610))

(declare-fun b!591404 () Bool)

(declare-fun res!254962 () Bool)

(assert (=> b!591404 (=> (not res!254962) (not e!357615))))

(declare-fun isEmpty!4219 (List!5853) Bool)

(assert (=> b!591404 (= res!254962 (not (isEmpty!4219 input!2705)))))

(declare-fun b!591405 () Bool)

(declare-fun e!357619 () Bool)

(assert (=> b!591405 (= e!357619 e!357617)))

(declare-fun res!254963 () Bool)

(assert (=> b!591405 (=> (not res!254963) (not e!357617))))

(declare-fun lt!250601 () Option!1499)

(assert (=> b!591405 (= res!254963 (is-Some!1498 lt!250601))))

(assert (=> b!591405 (= lt!250601 (maxPrefix!732 thiss!22590 rules!3103 input!2705))))

(declare-fun b!591406 () Bool)

(declare-fun Unit!10617 () Unit!10614)

(assert (=> b!591406 (= e!357623 Unit!10617)))

(assert (=> b!591406 false))

(declare-fun b!591407 () Bool)

(declare-fun tp!184440 () Bool)

(declare-fun e!357609 () Bool)

(declare-fun inv!21 (TokenValue!1172) Bool)

(assert (=> b!591407 (= e!357622 (and (inv!21 (value!37586 token!491)) e!357609 tp!184440))))

(declare-fun b!591408 () Bool)

(declare-fun res!254968 () Bool)

(assert (=> b!591408 (=> (not res!254968) (not e!357615))))

(declare-fun rulesInvariant!997 (LexerInterface!1034 List!5855) Bool)

(assert (=> b!591408 (= res!254968 (rulesInvariant!997 thiss!22590 rules!3103))))

(declare-fun e!357607 () Bool)

(assert (=> b!591409 (= e!357607 (and tp!184446 tp!184444))))

(declare-fun b!591410 () Bool)

(declare-fun tp!184441 () Bool)

(declare-fun inv!7397 (String!7606) Bool)

(declare-fun inv!7401 (TokenValueInjection!2112) Bool)

(assert (=> b!591410 (= e!357620 (and tp!184441 (inv!7397 (tag!1410 (h!11246 rules!3103))) (inv!7401 (transformation!1148 (h!11246 rules!3103))) e!357607))))

(declare-fun b!591411 () Bool)

(declare-fun res!254967 () Bool)

(assert (=> b!591411 (=> (not res!254967) (not e!357615))))

(declare-fun isEmpty!4220 (List!5855) Bool)

(assert (=> b!591411 (= res!254967 (not (isEmpty!4220 rules!3103)))))

(declare-fun tp!184445 () Bool)

(declare-fun b!591412 () Bool)

(declare-fun e!357621 () Bool)

(assert (=> b!591412 (= e!357609 (and tp!184445 (inv!7397 (tag!1410 (rule!1916 token!491))) (inv!7401 (transformation!1148 (rule!1916 token!491))) e!357621))))

(declare-fun b!591413 () Bool)

(declare-fun e!357611 () Bool)

(declare-fun size!4629 (List!5853) Int)

(assert (=> b!591413 (= e!357611 (= (size!4628 (_1!3657 (v!16383 lt!250601))) (size!4629 (originalCharacters!1187 (_1!3657 (v!16383 lt!250601))))))))

(declare-fun b!591414 () Bool)

(declare-fun lt!250595 () Int)

(assert (=> b!591414 (= e!357617 (not (= (size!4628 (_1!3657 (v!16383 lt!250601))) lt!250595)))))

(assert (=> b!591414 e!357611))

(declare-fun res!254969 () Bool)

(assert (=> b!591414 (=> (not res!254969) (not e!357611))))

(declare-fun lt!250605 () List!5853)

(declare-fun apply!1401 (TokenValueInjection!2112 BalanceConc!3738) TokenValue!1172)

(declare-fun seqFromList!1324 (List!5853) BalanceConc!3738)

(assert (=> b!591414 (= res!254969 (= (value!37586 (_1!3657 (v!16383 lt!250601))) (apply!1401 (transformation!1148 (rule!1916 (_1!3657 (v!16383 lt!250601)))) (seqFromList!1324 lt!250605))))))

(declare-fun lt!250607 () Unit!10614)

(declare-fun lemmaInv!256 (TokenValueInjection!2112) Unit!10614)

(assert (=> b!591414 (= lt!250607 (lemmaInv!256 (transformation!1148 (rule!1916 token!491))))))

(declare-fun lt!250594 () Unit!10614)

(assert (=> b!591414 (= lt!250594 (lemmaInv!256 (transformation!1148 (rule!1916 (_1!3657 (v!16383 lt!250601))))))))

(declare-fun ruleValid!346 (LexerInterface!1034 Rule!2096) Bool)

(assert (=> b!591414 (ruleValid!346 thiss!22590 (rule!1916 token!491))))

(declare-fun lt!250603 () Unit!10614)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!193 (LexerInterface!1034 Rule!2096 List!5855) Unit!10614)

(assert (=> b!591414 (= lt!250603 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!193 thiss!22590 (rule!1916 token!491) rules!3103))))

(assert (=> b!591414 (ruleValid!346 thiss!22590 (rule!1916 (_1!3657 (v!16383 lt!250601))))))

(declare-fun lt!250606 () Unit!10614)

(assert (=> b!591414 (= lt!250606 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!193 thiss!22590 (rule!1916 (_1!3657 (v!16383 lt!250601))) rules!3103))))

(declare-fun isPrefix!776 (List!5853 List!5853) Bool)

(assert (=> b!591414 (isPrefix!776 input!2705 input!2705)))

(declare-fun lt!250604 () Unit!10614)

(declare-fun lemmaIsPrefixRefl!512 (List!5853 List!5853) Unit!10614)

(assert (=> b!591414 (= lt!250604 (lemmaIsPrefixRefl!512 input!2705 input!2705))))

(declare-fun lt!250608 () List!5853)

(assert (=> b!591414 (= (_2!3657 (v!16383 lt!250601)) lt!250608)))

(declare-fun lt!250593 () Unit!10614)

(declare-fun lemmaSamePrefixThenSameSuffix!489 (List!5853 List!5853 List!5853 List!5853 List!5853) Unit!10614)

(assert (=> b!591414 (= lt!250593 (lemmaSamePrefixThenSameSuffix!489 lt!250605 (_2!3657 (v!16383 lt!250601)) lt!250605 lt!250608 input!2705))))

(declare-fun getSuffix!293 (List!5853 List!5853) List!5853)

(assert (=> b!591414 (= lt!250608 (getSuffix!293 input!2705 lt!250605))))

(assert (=> b!591414 (isPrefix!776 lt!250605 (++!1636 lt!250605 (_2!3657 (v!16383 lt!250601))))))

(declare-fun lt!250597 () Unit!10614)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!621 (List!5853 List!5853) Unit!10614)

(assert (=> b!591414 (= lt!250597 (lemmaConcatTwoListThenFirstIsPrefix!621 lt!250605 (_2!3657 (v!16383 lt!250601))))))

(declare-fun lt!250602 () Unit!10614)

(declare-fun lemmaCharactersSize!207 (Token!2032) Unit!10614)

(assert (=> b!591414 (= lt!250602 (lemmaCharactersSize!207 token!491))))

(declare-fun lt!250598 () Unit!10614)

(assert (=> b!591414 (= lt!250598 (lemmaCharactersSize!207 (_1!3657 (v!16383 lt!250601))))))

(declare-fun lt!250592 () Unit!10614)

(assert (=> b!591414 (= lt!250592 e!357623)))

(declare-fun c!110320 () Bool)

(assert (=> b!591414 (= c!110320 (> lt!250595 (size!4629 lt!250600)))))

(assert (=> b!591414 (= lt!250595 (size!4629 lt!250605))))

(assert (=> b!591414 (= lt!250605 (list!2445 (charsOf!777 (_1!3657 (v!16383 lt!250601)))))))

(assert (=> b!591414 (= lt!250601 (Some!1498 (v!16383 lt!250601)))))

(declare-fun lt!250599 () Unit!10614)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!221 (List!5853 List!5853 List!5853 List!5853) Unit!10614)

(assert (=> b!591414 (= lt!250599 (lemmaConcatSameAndSameSizesThenSameLists!221 lt!250600 suffix!1342 input!2705 suffix!1342))))

(assert (=> b!591415 (= e!357621 (and tp!184438 tp!184439))))

(declare-fun b!591416 () Bool)

(declare-fun tp!184443 () Bool)

(assert (=> b!591416 (= e!357613 (and tp_is_empty!3319 tp!184443))))

(declare-fun b!591417 () Bool)

(assert (=> b!591417 (= e!357612 e!357619)))

(declare-fun res!254961 () Bool)

(assert (=> b!591417 (=> (not res!254961) (not e!357619))))

(declare-fun lt!250609 () tuple2!6786)

(assert (=> b!591417 (= res!254961 (and (= (_1!3657 lt!250609) token!491) (= (_2!3657 lt!250609) suffix!1342)))))

(declare-fun get!2237 (Option!1499) tuple2!6786)

(assert (=> b!591417 (= lt!250609 (get!2237 lt!250596))))

(assert (= (and start!55470 res!254964) b!591411))

(assert (= (and b!591411 res!254967) b!591408))

(assert (= (and b!591408 res!254968) b!591404))

(assert (= (and b!591404 res!254962) b!591400))

(assert (= (and b!591400 res!254970) b!591402))

(assert (= (and b!591402 res!254966) b!591417))

(assert (= (and b!591417 res!254961) b!591405))

(assert (= (and b!591405 res!254963) b!591401))

(assert (= (and b!591401 res!254965) b!591414))

(assert (= (and b!591414 c!110320) b!591406))

(assert (= (and b!591414 (not c!110320)) b!591403))

(assert (= (and b!591414 res!254969) b!591413))

(assert (= (and start!55470 (is-Cons!5843 suffix!1342)) b!591416))

(assert (= b!591410 b!591409))

(assert (= b!591399 b!591410))

(assert (= (and start!55470 (is-Cons!5845 rules!3103)) b!591399))

(assert (= b!591412 b!591415))

(assert (= b!591407 b!591412))

(assert (= start!55470 b!591407))

(assert (= (and start!55470 (is-Cons!5843 input!2705)) b!591398))

(declare-fun m!852673 () Bool)

(assert (=> b!591413 m!852673))

(declare-fun m!852675 () Bool)

(assert (=> b!591412 m!852675))

(declare-fun m!852677 () Bool)

(assert (=> b!591412 m!852677))

(declare-fun m!852679 () Bool)

(assert (=> b!591408 m!852679))

(declare-fun m!852681 () Bool)

(assert (=> start!55470 m!852681))

(declare-fun m!852683 () Bool)

(assert (=> b!591411 m!852683))

(declare-fun m!852685 () Bool)

(assert (=> b!591400 m!852685))

(assert (=> b!591400 m!852685))

(declare-fun m!852687 () Bool)

(assert (=> b!591400 m!852687))

(declare-fun m!852689 () Bool)

(assert (=> b!591417 m!852689))

(declare-fun m!852691 () Bool)

(assert (=> b!591410 m!852691))

(declare-fun m!852693 () Bool)

(assert (=> b!591410 m!852693))

(declare-fun m!852695 () Bool)

(assert (=> b!591401 m!852695))

(declare-fun m!852697 () Bool)

(assert (=> b!591404 m!852697))

(declare-fun m!852699 () Bool)

(assert (=> b!591414 m!852699))

(declare-fun m!852701 () Bool)

(assert (=> b!591414 m!852701))

(declare-fun m!852703 () Bool)

(assert (=> b!591414 m!852703))

(declare-fun m!852705 () Bool)

(assert (=> b!591414 m!852705))

(declare-fun m!852707 () Bool)

(assert (=> b!591414 m!852707))

(declare-fun m!852709 () Bool)

(assert (=> b!591414 m!852709))

(declare-fun m!852711 () Bool)

(assert (=> b!591414 m!852711))

(declare-fun m!852713 () Bool)

(assert (=> b!591414 m!852713))

(declare-fun m!852715 () Bool)

(assert (=> b!591414 m!852715))

(declare-fun m!852717 () Bool)

(assert (=> b!591414 m!852717))

(declare-fun m!852719 () Bool)

(assert (=> b!591414 m!852719))

(declare-fun m!852721 () Bool)

(assert (=> b!591414 m!852721))

(declare-fun m!852723 () Bool)

(assert (=> b!591414 m!852723))

(declare-fun m!852725 () Bool)

(assert (=> b!591414 m!852725))

(declare-fun m!852727 () Bool)

(assert (=> b!591414 m!852727))

(declare-fun m!852729 () Bool)

(assert (=> b!591414 m!852729))

(assert (=> b!591414 m!852705))

(declare-fun m!852731 () Bool)

(assert (=> b!591414 m!852731))

(declare-fun m!852733 () Bool)

(assert (=> b!591414 m!852733))

(declare-fun m!852735 () Bool)

(assert (=> b!591414 m!852735))

(assert (=> b!591414 m!852727))

(declare-fun m!852737 () Bool)

(assert (=> b!591414 m!852737))

(declare-fun m!852739 () Bool)

(assert (=> b!591414 m!852739))

(assert (=> b!591414 m!852711))

(declare-fun m!852741 () Bool)

(assert (=> b!591414 m!852741))

(declare-fun m!852743 () Bool)

(assert (=> b!591402 m!852743))

(declare-fun m!852745 () Bool)

(assert (=> b!591402 m!852745))

(declare-fun m!852747 () Bool)

(assert (=> b!591402 m!852747))

(declare-fun m!852749 () Bool)

(assert (=> b!591405 m!852749))

(declare-fun m!852751 () Bool)

(assert (=> b!591407 m!852751))

(push 1)

(assert (not b!591402))

(assert b_and!58285)

(assert (not b!591417))

(assert (not b!591399))

(assert (not b!591404))

(assert (not b!591416))

(assert (not start!55470))

(assert (not b!591414))

(assert (not b_next!16627))

(assert (not b!591413))

(assert (not b!591412))

(assert (not b_next!16625))

(assert tp_is_empty!3319)

(assert b_and!58287)

(assert (not b!591401))

(assert (not b!591411))

(assert (not b!591398))

(assert (not b_next!16623))

(assert (not b!591400))

(assert (not b!591407))

(assert (not b_next!16621))

(assert (not b!591410))

(assert b_and!58289)

(assert (not b!591408))

(assert (not b!591405))

(assert b_and!58283)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!16623))

(assert b_and!58285)

(assert (not b_next!16621))

(assert (not b_next!16627))

(assert b_and!58289)

(assert (not b_next!16625))

(assert b_and!58287)

(assert b_and!58283)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!591503 () Bool)

(declare-fun e!357695 () Bool)

(declare-fun inv!15 (TokenValue!1172) Bool)

(assert (=> b!591503 (= e!357695 (inv!15 (value!37586 token!491)))))

(declare-fun b!591504 () Bool)

(declare-fun e!357696 () Bool)

(declare-fun inv!16 (TokenValue!1172) Bool)

(assert (=> b!591504 (= e!357696 (inv!16 (value!37586 token!491)))))

(declare-fun b!591505 () Bool)

(declare-fun res!255021 () Bool)

(assert (=> b!591505 (=> res!255021 e!357695)))

(assert (=> b!591505 (= res!255021 (not (is-IntegerValue!3518 (value!37586 token!491))))))

(declare-fun e!357694 () Bool)

(assert (=> b!591505 (= e!357694 e!357695)))

(declare-fun b!591506 () Bool)

(assert (=> b!591506 (= e!357696 e!357694)))

(declare-fun c!110334 () Bool)

(assert (=> b!591506 (= c!110334 (is-IntegerValue!3517 (value!37586 token!491)))))

(declare-fun d!208040 () Bool)

(declare-fun c!110333 () Bool)

(assert (=> d!208040 (= c!110333 (is-IntegerValue!3516 (value!37586 token!491)))))

(assert (=> d!208040 (= (inv!21 (value!37586 token!491)) e!357696)))

(declare-fun b!591507 () Bool)

(declare-fun inv!17 (TokenValue!1172) Bool)

(assert (=> b!591507 (= e!357694 (inv!17 (value!37586 token!491)))))

(assert (= (and d!208040 c!110333) b!591504))

(assert (= (and d!208040 (not c!110333)) b!591506))

(assert (= (and b!591506 c!110334) b!591507))

(assert (= (and b!591506 (not c!110334)) b!591505))

(assert (= (and b!591505 (not res!255021)) b!591503))

(declare-fun m!852853 () Bool)

(assert (=> b!591503 m!852853))

(declare-fun m!852855 () Bool)

(assert (=> b!591504 m!852855))

(declare-fun m!852857 () Bool)

(assert (=> b!591507 m!852857))

(assert (=> b!591407 d!208040))

(declare-fun d!208048 () Bool)

(assert (=> d!208048 (= (get!2237 lt!250596) (v!16383 lt!250596))))

(assert (=> b!591417 d!208048))

(declare-fun d!208050 () Bool)

(declare-fun res!255024 () Bool)

(declare-fun e!357699 () Bool)

(assert (=> d!208050 (=> (not res!255024) (not e!357699))))

(declare-fun rulesValid!416 (LexerInterface!1034 List!5855) Bool)

(assert (=> d!208050 (= res!255024 (rulesValid!416 thiss!22590 rules!3103))))

(assert (=> d!208050 (= (rulesInvariant!997 thiss!22590 rules!3103) e!357699)))

(declare-fun b!591510 () Bool)

(declare-datatypes ((List!5859 0))(
  ( (Nil!5849) (Cons!5849 (h!11250 String!7606) (t!79040 List!5859)) )
))
(declare-fun noDuplicateTag!416 (LexerInterface!1034 List!5855 List!5859) Bool)

(assert (=> b!591510 (= e!357699 (noDuplicateTag!416 thiss!22590 rules!3103 Nil!5849))))

(assert (= (and d!208050 res!255024) b!591510))

(declare-fun m!852859 () Bool)

(assert (=> d!208050 m!852859))

(declare-fun m!852861 () Bool)

(assert (=> b!591510 m!852861))

(assert (=> b!591408 d!208050))

(declare-fun d!208052 () Bool)

(assert (=> d!208052 (= (inv!7397 (tag!1410 (h!11246 rules!3103))) (= (mod (str.len (value!37585 (tag!1410 (h!11246 rules!3103)))) 2) 0))))

(assert (=> b!591410 d!208052))

(declare-fun d!208054 () Bool)

(declare-fun res!255027 () Bool)

(declare-fun e!357702 () Bool)

(assert (=> d!208054 (=> (not res!255027) (not e!357702))))

(declare-fun semiInverseModEq!452 (Int Int) Bool)

(assert (=> d!208054 (= res!255027 (semiInverseModEq!452 (toChars!1894 (transformation!1148 (h!11246 rules!3103))) (toValue!2035 (transformation!1148 (h!11246 rules!3103)))))))

(assert (=> d!208054 (= (inv!7401 (transformation!1148 (h!11246 rules!3103))) e!357702)))

(declare-fun b!591513 () Bool)

(declare-fun equivClasses!435 (Int Int) Bool)

(assert (=> b!591513 (= e!357702 (equivClasses!435 (toChars!1894 (transformation!1148 (h!11246 rules!3103))) (toValue!2035 (transformation!1148 (h!11246 rules!3103)))))))

(assert (= (and d!208054 res!255027) b!591513))

(declare-fun m!852863 () Bool)

(assert (=> d!208054 m!852863))

(declare-fun m!852865 () Bool)

(assert (=> b!591513 m!852865))

(assert (=> b!591410 d!208054))

(declare-fun d!208056 () Bool)

(assert (=> d!208056 (= (isEmpty!4220 rules!3103) (is-Nil!5845 rules!3103))))

(assert (=> b!591411 d!208056))

(declare-fun d!208058 () Bool)

(declare-fun list!2447 (Conc!1865) List!5853)

(assert (=> d!208058 (= (list!2445 (charsOf!777 token!491)) (list!2447 (c!110322 (charsOf!777 token!491))))))

(declare-fun bs!70354 () Bool)

(assert (= bs!70354 d!208058))

(declare-fun m!852867 () Bool)

(assert (=> bs!70354 m!852867))

(assert (=> b!591400 d!208058))

(declare-fun d!208060 () Bool)

(declare-fun lt!250669 () BalanceConc!3738)

(assert (=> d!208060 (= (list!2445 lt!250669) (originalCharacters!1187 token!491))))

(declare-fun dynLambda!3405 (Int TokenValue!1172) BalanceConc!3738)

(assert (=> d!208060 (= lt!250669 (dynLambda!3405 (toChars!1894 (transformation!1148 (rule!1916 token!491))) (value!37586 token!491)))))

(assert (=> d!208060 (= (charsOf!777 token!491) lt!250669)))

(declare-fun b_lambda!23291 () Bool)

(assert (=> (not b_lambda!23291) (not d!208060)))

(declare-fun t!79015 () Bool)

(declare-fun tb!51695 () Bool)

(assert (=> (and b!591415 (= (toChars!1894 (transformation!1148 (rule!1916 token!491))) (toChars!1894 (transformation!1148 (rule!1916 token!491)))) t!79015) tb!51695))

(declare-fun b!591518 () Bool)

(declare-fun e!357705 () Bool)

(declare-fun tp!184482 () Bool)

(declare-fun inv!7404 (Conc!1865) Bool)

(assert (=> b!591518 (= e!357705 (and (inv!7404 (c!110322 (dynLambda!3405 (toChars!1894 (transformation!1148 (rule!1916 token!491))) (value!37586 token!491)))) tp!184482))))

(declare-fun result!57996 () Bool)

(declare-fun inv!7405 (BalanceConc!3738) Bool)

(assert (=> tb!51695 (= result!57996 (and (inv!7405 (dynLambda!3405 (toChars!1894 (transformation!1148 (rule!1916 token!491))) (value!37586 token!491))) e!357705))))

(assert (= tb!51695 b!591518))

(declare-fun m!852869 () Bool)

(assert (=> b!591518 m!852869))

(declare-fun m!852871 () Bool)

(assert (=> tb!51695 m!852871))

(assert (=> d!208060 t!79015))

(declare-fun b_and!58303 () Bool)

(assert (= b_and!58285 (and (=> t!79015 result!57996) b_and!58303)))

(declare-fun tb!51697 () Bool)

(declare-fun t!79017 () Bool)

(assert (=> (and b!591409 (= (toChars!1894 (transformation!1148 (h!11246 rules!3103))) (toChars!1894 (transformation!1148 (rule!1916 token!491)))) t!79017) tb!51697))

(declare-fun result!58000 () Bool)

(assert (= result!58000 result!57996))

(assert (=> d!208060 t!79017))

(declare-fun b_and!58305 () Bool)

(assert (= b_and!58289 (and (=> t!79017 result!58000) b_and!58305)))

(declare-fun m!852873 () Bool)

(assert (=> d!208060 m!852873))

(declare-fun m!852875 () Bool)

(assert (=> d!208060 m!852875))

(assert (=> b!591400 d!208060))

(declare-fun d!208062 () Bool)

(declare-fun isEmpty!4223 (Option!1499) Bool)

(assert (=> d!208062 (= (isDefined!1310 lt!250596) (not (isEmpty!4223 lt!250596)))))

(declare-fun bs!70355 () Bool)

(assert (= bs!70355 d!208062))

(declare-fun m!852877 () Bool)

(assert (=> bs!70355 m!852877))

(assert (=> b!591402 d!208062))

(declare-fun b!591555 () Bool)

(declare-fun res!255056 () Bool)

(declare-fun e!357720 () Bool)

(assert (=> b!591555 (=> (not res!255056) (not e!357720))))

(declare-fun lt!250692 () Option!1499)

(assert (=> b!591555 (= res!255056 (= (++!1636 (list!2445 (charsOf!777 (_1!3657 (get!2237 lt!250692)))) (_2!3657 (get!2237 lt!250692))) lt!250591))))

(declare-fun b!591556 () Bool)

(declare-fun res!255057 () Bool)

(assert (=> b!591556 (=> (not res!255057) (not e!357720))))

(assert (=> b!591556 (= res!255057 (= (value!37586 (_1!3657 (get!2237 lt!250692))) (apply!1401 (transformation!1148 (rule!1916 (_1!3657 (get!2237 lt!250692)))) (seqFromList!1324 (originalCharacters!1187 (_1!3657 (get!2237 lt!250692)))))))))

(declare-fun call!40326 () Option!1499)

(declare-fun bm!40321 () Bool)

(declare-fun maxPrefixOneRule!417 (LexerInterface!1034 Rule!2096 List!5853) Option!1499)

(assert (=> bm!40321 (= call!40326 (maxPrefixOneRule!417 thiss!22590 (h!11246 rules!3103) lt!250591))))

(declare-fun b!591557 () Bool)

(declare-fun res!255062 () Bool)

(assert (=> b!591557 (=> (not res!255062) (not e!357720))))

(assert (=> b!591557 (= res!255062 (< (size!4629 (_2!3657 (get!2237 lt!250692))) (size!4629 lt!250591)))))

(declare-fun b!591558 () Bool)

(declare-fun contains!1376 (List!5855 Rule!2096) Bool)

(assert (=> b!591558 (= e!357720 (contains!1376 rules!3103 (rule!1916 (_1!3657 (get!2237 lt!250692)))))))

(declare-fun b!591559 () Bool)

(declare-fun res!255060 () Bool)

(assert (=> b!591559 (=> (not res!255060) (not e!357720))))

(assert (=> b!591559 (= res!255060 (= (list!2445 (charsOf!777 (_1!3657 (get!2237 lt!250692)))) (originalCharacters!1187 (_1!3657 (get!2237 lt!250692)))))))

(declare-fun b!591560 () Bool)

(declare-fun res!255061 () Bool)

(assert (=> b!591560 (=> (not res!255061) (not e!357720))))

(declare-fun matchR!613 (Regex!1482 List!5853) Bool)

(assert (=> b!591560 (= res!255061 (matchR!613 (regex!1148 (rule!1916 (_1!3657 (get!2237 lt!250692)))) (list!2445 (charsOf!777 (_1!3657 (get!2237 lt!250692))))))))

(declare-fun b!591561 () Bool)

(declare-fun e!357718 () Option!1499)

(declare-fun lt!250693 () Option!1499)

(declare-fun lt!250691 () Option!1499)

(assert (=> b!591561 (= e!357718 (ite (and (is-None!1498 lt!250693) (is-None!1498 lt!250691)) None!1498 (ite (is-None!1498 lt!250691) lt!250693 (ite (is-None!1498 lt!250693) lt!250691 (ite (>= (size!4628 (_1!3657 (v!16383 lt!250693))) (size!4628 (_1!3657 (v!16383 lt!250691)))) lt!250693 lt!250691)))))))

(assert (=> b!591561 (= lt!250693 call!40326)))

(assert (=> b!591561 (= lt!250691 (maxPrefix!732 thiss!22590 (t!79006 rules!3103) lt!250591))))

(declare-fun d!208064 () Bool)

(declare-fun e!357719 () Bool)

(assert (=> d!208064 e!357719))

(declare-fun res!255059 () Bool)

(assert (=> d!208064 (=> res!255059 e!357719)))

(assert (=> d!208064 (= res!255059 (isEmpty!4223 lt!250692))))

(assert (=> d!208064 (= lt!250692 e!357718)))

(declare-fun c!110339 () Bool)

(assert (=> d!208064 (= c!110339 (and (is-Cons!5845 rules!3103) (is-Nil!5845 (t!79006 rules!3103))))))

(declare-fun lt!250690 () Unit!10614)

(declare-fun lt!250694 () Unit!10614)

(assert (=> d!208064 (= lt!250690 lt!250694)))

(assert (=> d!208064 (isPrefix!776 lt!250591 lt!250591)))

(assert (=> d!208064 (= lt!250694 (lemmaIsPrefixRefl!512 lt!250591 lt!250591))))

(declare-fun rulesValidInductive!421 (LexerInterface!1034 List!5855) Bool)

(assert (=> d!208064 (rulesValidInductive!421 thiss!22590 rules!3103)))

(assert (=> d!208064 (= (maxPrefix!732 thiss!22590 rules!3103 lt!250591) lt!250692)))

(declare-fun b!591562 () Bool)

(assert (=> b!591562 (= e!357718 call!40326)))

(declare-fun b!591563 () Bool)

(assert (=> b!591563 (= e!357719 e!357720)))

(declare-fun res!255058 () Bool)

(assert (=> b!591563 (=> (not res!255058) (not e!357720))))

(assert (=> b!591563 (= res!255058 (isDefined!1310 lt!250692))))

(assert (= (and d!208064 c!110339) b!591562))

(assert (= (and d!208064 (not c!110339)) b!591561))

(assert (= (or b!591562 b!591561) bm!40321))

(assert (= (and d!208064 (not res!255059)) b!591563))

(assert (= (and b!591563 res!255058) b!591559))

(assert (= (and b!591559 res!255060) b!591557))

(assert (= (and b!591557 res!255062) b!591555))

(assert (= (and b!591555 res!255056) b!591556))

(assert (= (and b!591556 res!255057) b!591560))

(assert (= (and b!591560 res!255061) b!591558))

(declare-fun m!852879 () Bool)

(assert (=> b!591558 m!852879))

(declare-fun m!852881 () Bool)

(assert (=> b!591558 m!852881))

(declare-fun m!852883 () Bool)

(assert (=> b!591563 m!852883))

(assert (=> b!591557 m!852879))

(declare-fun m!852885 () Bool)

(assert (=> b!591557 m!852885))

(declare-fun m!852887 () Bool)

(assert (=> b!591557 m!852887))

(declare-fun m!852889 () Bool)

(assert (=> bm!40321 m!852889))

(assert (=> b!591560 m!852879))

(declare-fun m!852891 () Bool)

(assert (=> b!591560 m!852891))

(assert (=> b!591560 m!852891))

(declare-fun m!852893 () Bool)

(assert (=> b!591560 m!852893))

(assert (=> b!591560 m!852893))

(declare-fun m!852895 () Bool)

(assert (=> b!591560 m!852895))

(declare-fun m!852897 () Bool)

(assert (=> b!591561 m!852897))

(assert (=> b!591555 m!852879))

(assert (=> b!591555 m!852891))

(assert (=> b!591555 m!852891))

(assert (=> b!591555 m!852893))

(assert (=> b!591555 m!852893))

(declare-fun m!852899 () Bool)

(assert (=> b!591555 m!852899))

(assert (=> b!591556 m!852879))

(declare-fun m!852901 () Bool)

(assert (=> b!591556 m!852901))

(assert (=> b!591556 m!852901))

(declare-fun m!852903 () Bool)

(assert (=> b!591556 m!852903))

(assert (=> b!591559 m!852879))

(assert (=> b!591559 m!852891))

(assert (=> b!591559 m!852891))

(assert (=> b!591559 m!852893))

(declare-fun m!852905 () Bool)

(assert (=> d!208064 m!852905))

(declare-fun m!852907 () Bool)

(assert (=> d!208064 m!852907))

(declare-fun m!852909 () Bool)

(assert (=> d!208064 m!852909))

(declare-fun m!852911 () Bool)

(assert (=> d!208064 m!852911))

(assert (=> b!591402 d!208064))

(declare-fun b!591581 () Bool)

(declare-fun e!357728 () List!5853)

(assert (=> b!591581 (= e!357728 suffix!1342)))

(declare-fun b!591583 () Bool)

(declare-fun res!255074 () Bool)

(declare-fun e!357729 () Bool)

(assert (=> b!591583 (=> (not res!255074) (not e!357729))))

(declare-fun lt!250702 () List!5853)

(assert (=> b!591583 (= res!255074 (= (size!4629 lt!250702) (+ (size!4629 input!2705) (size!4629 suffix!1342))))))

(declare-fun b!591582 () Bool)

(assert (=> b!591582 (= e!357728 (Cons!5843 (h!11244 input!2705) (++!1636 (t!79004 input!2705) suffix!1342)))))

(declare-fun d!208066 () Bool)

(assert (=> d!208066 e!357729))

(declare-fun res!255075 () Bool)

(assert (=> d!208066 (=> (not res!255075) (not e!357729))))

(declare-fun content!1052 (List!5853) (Set C!3886))

(assert (=> d!208066 (= res!255075 (= (content!1052 lt!250702) (set.union (content!1052 input!2705) (content!1052 suffix!1342))))))

(assert (=> d!208066 (= lt!250702 e!357728)))

(declare-fun c!110343 () Bool)

(assert (=> d!208066 (= c!110343 (is-Nil!5843 input!2705))))

(assert (=> d!208066 (= (++!1636 input!2705 suffix!1342) lt!250702)))

(declare-fun b!591584 () Bool)

(assert (=> b!591584 (= e!357729 (or (not (= suffix!1342 Nil!5843)) (= lt!250702 input!2705)))))

(assert (= (and d!208066 c!110343) b!591581))

(assert (= (and d!208066 (not c!110343)) b!591582))

(assert (= (and d!208066 res!255075) b!591583))

(assert (= (and b!591583 res!255074) b!591584))

(declare-fun m!852941 () Bool)

(assert (=> b!591583 m!852941))

(declare-fun m!852943 () Bool)

(assert (=> b!591583 m!852943))

(declare-fun m!852945 () Bool)

(assert (=> b!591583 m!852945))

(declare-fun m!852947 () Bool)

(assert (=> b!591582 m!852947))

(declare-fun m!852949 () Bool)

(assert (=> d!208066 m!852949))

(declare-fun m!852951 () Bool)

(assert (=> d!208066 m!852951))

(declare-fun m!852953 () Bool)

(assert (=> d!208066 m!852953))

(assert (=> b!591402 d!208066))

(declare-fun d!208068 () Bool)

(assert (=> d!208068 (= (inv!7397 (tag!1410 (rule!1916 token!491))) (= (mod (str.len (value!37585 (tag!1410 (rule!1916 token!491)))) 2) 0))))

(assert (=> b!591412 d!208068))

(declare-fun d!208070 () Bool)

(declare-fun res!255076 () Bool)

(declare-fun e!357730 () Bool)

(assert (=> d!208070 (=> (not res!255076) (not e!357730))))

(assert (=> d!208070 (= res!255076 (semiInverseModEq!452 (toChars!1894 (transformation!1148 (rule!1916 token!491))) (toValue!2035 (transformation!1148 (rule!1916 token!491)))))))

(assert (=> d!208070 (= (inv!7401 (transformation!1148 (rule!1916 token!491))) e!357730)))

(declare-fun b!591585 () Bool)

(assert (=> b!591585 (= e!357730 (equivClasses!435 (toChars!1894 (transformation!1148 (rule!1916 token!491))) (toValue!2035 (transformation!1148 (rule!1916 token!491)))))))

(assert (= (and d!208070 res!255076) b!591585))

(declare-fun m!852955 () Bool)

(assert (=> d!208070 m!852955))

(declare-fun m!852957 () Bool)

(assert (=> b!591585 m!852957))

(assert (=> b!591412 d!208070))

(declare-fun b!591586 () Bool)

(declare-fun e!357731 () List!5853)

(assert (=> b!591586 (= e!357731 suffix!1342)))

(declare-fun b!591588 () Bool)

(declare-fun res!255077 () Bool)

(declare-fun e!357732 () Bool)

(assert (=> b!591588 (=> (not res!255077) (not e!357732))))

(declare-fun lt!250703 () List!5853)

(assert (=> b!591588 (= res!255077 (= (size!4629 lt!250703) (+ (size!4629 lt!250600) (size!4629 suffix!1342))))))

(declare-fun b!591587 () Bool)

(assert (=> b!591587 (= e!357731 (Cons!5843 (h!11244 lt!250600) (++!1636 (t!79004 lt!250600) suffix!1342)))))

(declare-fun d!208072 () Bool)

(assert (=> d!208072 e!357732))

(declare-fun res!255078 () Bool)

(assert (=> d!208072 (=> (not res!255078) (not e!357732))))

(assert (=> d!208072 (= res!255078 (= (content!1052 lt!250703) (set.union (content!1052 lt!250600) (content!1052 suffix!1342))))))

(assert (=> d!208072 (= lt!250703 e!357731)))

(declare-fun c!110344 () Bool)

(assert (=> d!208072 (= c!110344 (is-Nil!5843 lt!250600))))

(assert (=> d!208072 (= (++!1636 lt!250600 suffix!1342) lt!250703)))

(declare-fun b!591589 () Bool)

(assert (=> b!591589 (= e!357732 (or (not (= suffix!1342 Nil!5843)) (= lt!250703 lt!250600)))))

(assert (= (and d!208072 c!110344) b!591586))

(assert (= (and d!208072 (not c!110344)) b!591587))

(assert (= (and d!208072 res!255078) b!591588))

(assert (= (and b!591588 res!255077) b!591589))

(declare-fun m!852961 () Bool)

(assert (=> b!591588 m!852961))

(assert (=> b!591588 m!852725))

(assert (=> b!591588 m!852945))

(declare-fun m!852963 () Bool)

(assert (=> b!591587 m!852963))

(declare-fun m!852965 () Bool)

(assert (=> d!208072 m!852965))

(declare-fun m!852967 () Bool)

(assert (=> d!208072 m!852967))

(assert (=> d!208072 m!852953))

(assert (=> b!591401 d!208072))

(declare-fun d!208076 () Bool)

(declare-fun e!357735 () Bool)

(assert (=> d!208076 e!357735))

(declare-fun res!255081 () Bool)

(assert (=> d!208076 (=> (not res!255081) (not e!357735))))

(assert (=> d!208076 (= res!255081 (semiInverseModEq!452 (toChars!1894 (transformation!1148 (rule!1916 (_1!3657 (v!16383 lt!250601))))) (toValue!2035 (transformation!1148 (rule!1916 (_1!3657 (v!16383 lt!250601)))))))))

(declare-fun Unit!10623 () Unit!10614)

(assert (=> d!208076 (= (lemmaInv!256 (transformation!1148 (rule!1916 (_1!3657 (v!16383 lt!250601))))) Unit!10623)))

(declare-fun b!591592 () Bool)

(assert (=> b!591592 (= e!357735 (equivClasses!435 (toChars!1894 (transformation!1148 (rule!1916 (_1!3657 (v!16383 lt!250601))))) (toValue!2035 (transformation!1148 (rule!1916 (_1!3657 (v!16383 lt!250601)))))))))

(assert (= (and d!208076 res!255081) b!591592))

(declare-fun m!852971 () Bool)

(assert (=> d!208076 m!852971))

(declare-fun m!852973 () Bool)

(assert (=> b!591592 m!852973))

(assert (=> b!591414 d!208076))

(declare-fun d!208080 () Bool)

(declare-fun fromListB!579 (List!5853) BalanceConc!3738)

(assert (=> d!208080 (= (seqFromList!1324 lt!250605) (fromListB!579 lt!250605))))

(declare-fun bs!70357 () Bool)

(assert (= bs!70357 d!208080))

(declare-fun m!852975 () Bool)

(assert (=> bs!70357 m!852975))

(assert (=> b!591414 d!208080))

(declare-fun d!208082 () Bool)

(assert (=> d!208082 (ruleValid!346 thiss!22590 (rule!1916 (_1!3657 (v!16383 lt!250601))))))

(declare-fun lt!250709 () Unit!10614)

(declare-fun choose!4268 (LexerInterface!1034 Rule!2096 List!5855) Unit!10614)

(assert (=> d!208082 (= lt!250709 (choose!4268 thiss!22590 (rule!1916 (_1!3657 (v!16383 lt!250601))) rules!3103))))

(assert (=> d!208082 (contains!1376 rules!3103 (rule!1916 (_1!3657 (v!16383 lt!250601))))))

(assert (=> d!208082 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!193 thiss!22590 (rule!1916 (_1!3657 (v!16383 lt!250601))) rules!3103) lt!250709)))

(declare-fun bs!70358 () Bool)

(assert (= bs!70358 d!208082))

(assert (=> bs!70358 m!852717))

(declare-fun m!852977 () Bool)

(assert (=> bs!70358 m!852977))

(declare-fun m!852979 () Bool)

(assert (=> bs!70358 m!852979))

(assert (=> b!591414 d!208082))

(declare-fun b!591608 () Bool)

(declare-fun e!357745 () Bool)

(assert (=> b!591608 (= e!357745 (>= (size!4629 (++!1636 lt!250605 (_2!3657 (v!16383 lt!250601)))) (size!4629 lt!250605)))))

(declare-fun b!591607 () Bool)

(declare-fun e!357746 () Bool)

(declare-fun tail!780 (List!5853) List!5853)

(assert (=> b!591607 (= e!357746 (isPrefix!776 (tail!780 lt!250605) (tail!780 (++!1636 lt!250605 (_2!3657 (v!16383 lt!250601))))))))

(declare-fun d!208084 () Bool)

(assert (=> d!208084 e!357745))

(declare-fun res!255093 () Bool)

(assert (=> d!208084 (=> res!255093 e!357745)))

(declare-fun lt!250714 () Bool)

(assert (=> d!208084 (= res!255093 (not lt!250714))))

(declare-fun e!357744 () Bool)

(assert (=> d!208084 (= lt!250714 e!357744)))

(declare-fun res!255092 () Bool)

(assert (=> d!208084 (=> res!255092 e!357744)))

(assert (=> d!208084 (= res!255092 (is-Nil!5843 lt!250605))))

(assert (=> d!208084 (= (isPrefix!776 lt!250605 (++!1636 lt!250605 (_2!3657 (v!16383 lt!250601)))) lt!250714)))

(declare-fun b!591605 () Bool)

(assert (=> b!591605 (= e!357744 e!357746)))

(declare-fun res!255091 () Bool)

(assert (=> b!591605 (=> (not res!255091) (not e!357746))))

(assert (=> b!591605 (= res!255091 (not (is-Nil!5843 (++!1636 lt!250605 (_2!3657 (v!16383 lt!250601))))))))

(declare-fun b!591606 () Bool)

(declare-fun res!255090 () Bool)

(assert (=> b!591606 (=> (not res!255090) (not e!357746))))

(declare-fun head!1251 (List!5853) C!3886)

(assert (=> b!591606 (= res!255090 (= (head!1251 lt!250605) (head!1251 (++!1636 lt!250605 (_2!3657 (v!16383 lt!250601))))))))

(assert (= (and d!208084 (not res!255092)) b!591605))

(assert (= (and b!591605 res!255091) b!591606))

(assert (= (and b!591606 res!255090) b!591607))

(assert (= (and d!208084 (not res!255093)) b!591608))

(assert (=> b!591608 m!852705))

(declare-fun m!852983 () Bool)

(assert (=> b!591608 m!852983))

(assert (=> b!591608 m!852715))

(declare-fun m!852985 () Bool)

(assert (=> b!591607 m!852985))

(assert (=> b!591607 m!852705))

(declare-fun m!852987 () Bool)

(assert (=> b!591607 m!852987))

(assert (=> b!591607 m!852985))

(assert (=> b!591607 m!852987))

(declare-fun m!852989 () Bool)

(assert (=> b!591607 m!852989))

(declare-fun m!852991 () Bool)

(assert (=> b!591606 m!852991))

(assert (=> b!591606 m!852705))

(declare-fun m!852993 () Bool)

(assert (=> b!591606 m!852993))

(assert (=> b!591414 d!208084))

(declare-fun d!208090 () Bool)

(assert (=> d!208090 (= (_2!3657 (v!16383 lt!250601)) lt!250608)))

(declare-fun lt!250718 () Unit!10614)

(declare-fun choose!4269 (List!5853 List!5853 List!5853 List!5853 List!5853) Unit!10614)

(assert (=> d!208090 (= lt!250718 (choose!4269 lt!250605 (_2!3657 (v!16383 lt!250601)) lt!250605 lt!250608 input!2705))))

(assert (=> d!208090 (isPrefix!776 lt!250605 input!2705)))

(assert (=> d!208090 (= (lemmaSamePrefixThenSameSuffix!489 lt!250605 (_2!3657 (v!16383 lt!250601)) lt!250605 lt!250608 input!2705) lt!250718)))

(declare-fun bs!70359 () Bool)

(assert (= bs!70359 d!208090))

(declare-fun m!852997 () Bool)

(assert (=> bs!70359 m!852997))

(declare-fun m!852999 () Bool)

(assert (=> bs!70359 m!852999))

(assert (=> b!591414 d!208090))

(declare-fun d!208094 () Bool)

(declare-fun res!255098 () Bool)

(declare-fun e!357751 () Bool)

(assert (=> d!208094 (=> (not res!255098) (not e!357751))))

(declare-fun validRegex!505 (Regex!1482) Bool)

(assert (=> d!208094 (= res!255098 (validRegex!505 (regex!1148 (rule!1916 (_1!3657 (v!16383 lt!250601))))))))

(assert (=> d!208094 (= (ruleValid!346 thiss!22590 (rule!1916 (_1!3657 (v!16383 lt!250601)))) e!357751)))

(declare-fun b!591617 () Bool)

(declare-fun res!255099 () Bool)

(assert (=> b!591617 (=> (not res!255099) (not e!357751))))

(declare-fun nullable!410 (Regex!1482) Bool)

(assert (=> b!591617 (= res!255099 (not (nullable!410 (regex!1148 (rule!1916 (_1!3657 (v!16383 lt!250601)))))))))

(declare-fun b!591618 () Bool)

(assert (=> b!591618 (= e!357751 (not (= (tag!1410 (rule!1916 (_1!3657 (v!16383 lt!250601)))) (String!7607 ""))))))

(assert (= (and d!208094 res!255098) b!591617))

(assert (= (and b!591617 res!255099) b!591618))

(declare-fun m!853003 () Bool)

(assert (=> d!208094 m!853003))

(declare-fun m!853005 () Bool)

(assert (=> b!591617 m!853005))

(assert (=> b!591414 d!208094))

(declare-fun d!208100 () Bool)

(assert (=> d!208100 (and (= lt!250600 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!250722 () Unit!10614)

(declare-fun choose!4270 (List!5853 List!5853 List!5853 List!5853) Unit!10614)

(assert (=> d!208100 (= lt!250722 (choose!4270 lt!250600 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!208100 (= (++!1636 lt!250600 suffix!1342) (++!1636 input!2705 suffix!1342))))

(assert (=> d!208100 (= (lemmaConcatSameAndSameSizesThenSameLists!221 lt!250600 suffix!1342 input!2705 suffix!1342) lt!250722)))

(declare-fun bs!70361 () Bool)

(assert (= bs!70361 d!208100))

(declare-fun m!853007 () Bool)

(assert (=> bs!70361 m!853007))

(assert (=> bs!70361 m!852695))

(assert (=> bs!70361 m!852747))

(assert (=> b!591414 d!208100))

(declare-fun d!208104 () Bool)

(assert (=> d!208104 (= (size!4628 (_1!3657 (v!16383 lt!250601))) (size!4629 (originalCharacters!1187 (_1!3657 (v!16383 lt!250601)))))))

(declare-fun Unit!10624 () Unit!10614)

(assert (=> d!208104 (= (lemmaCharactersSize!207 (_1!3657 (v!16383 lt!250601))) Unit!10624)))

(declare-fun bs!70362 () Bool)

(assert (= bs!70362 d!208104))

(assert (=> bs!70362 m!852673))

(assert (=> b!591414 d!208104))

(declare-fun d!208106 () Bool)

(declare-fun lt!250726 () Int)

(assert (=> d!208106 (>= lt!250726 0)))

(declare-fun e!357757 () Int)

(assert (=> d!208106 (= lt!250726 e!357757)))

(declare-fun c!110351 () Bool)

(assert (=> d!208106 (= c!110351 (is-Nil!5843 lt!250600))))

(assert (=> d!208106 (= (size!4629 lt!250600) lt!250726)))

(declare-fun b!591629 () Bool)

(assert (=> b!591629 (= e!357757 0)))

(declare-fun b!591630 () Bool)

(assert (=> b!591630 (= e!357757 (+ 1 (size!4629 (t!79004 lt!250600))))))

(assert (= (and d!208106 c!110351) b!591629))

(assert (= (and d!208106 (not c!110351)) b!591630))

(declare-fun m!853013 () Bool)

(assert (=> b!591630 m!853013))

(assert (=> b!591414 d!208106))

(declare-fun d!208110 () Bool)

(declare-fun lt!250727 () BalanceConc!3738)

(assert (=> d!208110 (= (list!2445 lt!250727) (originalCharacters!1187 (_1!3657 (v!16383 lt!250601))))))

(assert (=> d!208110 (= lt!250727 (dynLambda!3405 (toChars!1894 (transformation!1148 (rule!1916 (_1!3657 (v!16383 lt!250601))))) (value!37586 (_1!3657 (v!16383 lt!250601)))))))

(assert (=> d!208110 (= (charsOf!777 (_1!3657 (v!16383 lt!250601))) lt!250727)))

(declare-fun b_lambda!23297 () Bool)

(assert (=> (not b_lambda!23297) (not d!208110)))

(declare-fun t!79021 () Bool)

(declare-fun tb!51701 () Bool)

(assert (=> (and b!591415 (= (toChars!1894 (transformation!1148 (rule!1916 token!491))) (toChars!1894 (transformation!1148 (rule!1916 (_1!3657 (v!16383 lt!250601)))))) t!79021) tb!51701))

(declare-fun b!591632 () Bool)

(declare-fun e!357759 () Bool)

(declare-fun tp!184484 () Bool)

(assert (=> b!591632 (= e!357759 (and (inv!7404 (c!110322 (dynLambda!3405 (toChars!1894 (transformation!1148 (rule!1916 (_1!3657 (v!16383 lt!250601))))) (value!37586 (_1!3657 (v!16383 lt!250601)))))) tp!184484))))

(declare-fun result!58004 () Bool)

(assert (=> tb!51701 (= result!58004 (and (inv!7405 (dynLambda!3405 (toChars!1894 (transformation!1148 (rule!1916 (_1!3657 (v!16383 lt!250601))))) (value!37586 (_1!3657 (v!16383 lt!250601))))) e!357759))))

(assert (= tb!51701 b!591632))

(declare-fun m!853021 () Bool)

(assert (=> b!591632 m!853021))

(declare-fun m!853023 () Bool)

(assert (=> tb!51701 m!853023))

(assert (=> d!208110 t!79021))

(declare-fun b_and!58315 () Bool)

(assert (= b_and!58303 (and (=> t!79021 result!58004) b_and!58315)))

(declare-fun t!79025 () Bool)

(declare-fun tb!51705 () Bool)

(assert (=> (and b!591409 (= (toChars!1894 (transformation!1148 (h!11246 rules!3103))) (toChars!1894 (transformation!1148 (rule!1916 (_1!3657 (v!16383 lt!250601)))))) t!79025) tb!51705))

(declare-fun result!58008 () Bool)

(assert (= result!58008 result!58004))

(assert (=> d!208110 t!79025))

(declare-fun b_and!58317 () Bool)

(assert (= b_and!58305 (and (=> t!79025 result!58008) b_and!58317)))

(declare-fun m!853027 () Bool)

(assert (=> d!208110 m!853027))

(declare-fun m!853029 () Bool)

(assert (=> d!208110 m!853029))

(assert (=> b!591414 d!208110))

(declare-fun b!591636 () Bool)

(declare-fun e!357761 () Bool)

(assert (=> b!591636 (= e!357761 (>= (size!4629 input!2705) (size!4629 input!2705)))))

(declare-fun b!591635 () Bool)

(declare-fun e!357762 () Bool)

(assert (=> b!591635 (= e!357762 (isPrefix!776 (tail!780 input!2705) (tail!780 input!2705)))))

(declare-fun d!208114 () Bool)

(assert (=> d!208114 e!357761))

(declare-fun res!255109 () Bool)

(assert (=> d!208114 (=> res!255109 e!357761)))

(declare-fun lt!250728 () Bool)

(assert (=> d!208114 (= res!255109 (not lt!250728))))

(declare-fun e!357760 () Bool)

(assert (=> d!208114 (= lt!250728 e!357760)))

(declare-fun res!255108 () Bool)

(assert (=> d!208114 (=> res!255108 e!357760)))

(assert (=> d!208114 (= res!255108 (is-Nil!5843 input!2705))))

(assert (=> d!208114 (= (isPrefix!776 input!2705 input!2705) lt!250728)))

(declare-fun b!591633 () Bool)

(assert (=> b!591633 (= e!357760 e!357762)))

(declare-fun res!255107 () Bool)

(assert (=> b!591633 (=> (not res!255107) (not e!357762))))

(assert (=> b!591633 (= res!255107 (not (is-Nil!5843 input!2705)))))

(declare-fun b!591634 () Bool)

(declare-fun res!255106 () Bool)

(assert (=> b!591634 (=> (not res!255106) (not e!357762))))

(assert (=> b!591634 (= res!255106 (= (head!1251 input!2705) (head!1251 input!2705)))))

(assert (= (and d!208114 (not res!255108)) b!591633))

(assert (= (and b!591633 res!255107) b!591634))

(assert (= (and b!591634 res!255106) b!591635))

(assert (= (and d!208114 (not res!255109)) b!591636))

(assert (=> b!591636 m!852943))

(assert (=> b!591636 m!852943))

(declare-fun m!853033 () Bool)

(assert (=> b!591635 m!853033))

(assert (=> b!591635 m!853033))

(assert (=> b!591635 m!853033))

(assert (=> b!591635 m!853033))

(declare-fun m!853035 () Bool)

(assert (=> b!591635 m!853035))

(declare-fun m!853037 () Bool)

(assert (=> b!591634 m!853037))

(assert (=> b!591634 m!853037))

(assert (=> b!591414 d!208114))

(declare-fun d!208118 () Bool)

(declare-fun lt!250729 () Int)

(assert (=> d!208118 (>= lt!250729 0)))

(declare-fun e!357763 () Int)

(assert (=> d!208118 (= lt!250729 e!357763)))

(declare-fun c!110352 () Bool)

(assert (=> d!208118 (= c!110352 (is-Nil!5843 lt!250605))))

(assert (=> d!208118 (= (size!4629 lt!250605) lt!250729)))

(declare-fun b!591637 () Bool)

(assert (=> b!591637 (= e!357763 0)))

(declare-fun b!591638 () Bool)

(assert (=> b!591638 (= e!357763 (+ 1 (size!4629 (t!79004 lt!250605))))))

(assert (= (and d!208118 c!110352) b!591637))

(assert (= (and d!208118 (not c!110352)) b!591638))

(declare-fun m!853039 () Bool)

(assert (=> b!591638 m!853039))

(assert (=> b!591414 d!208118))

(declare-fun d!208120 () Bool)

(declare-fun e!357764 () Bool)

(assert (=> d!208120 e!357764))

(declare-fun res!255110 () Bool)

(assert (=> d!208120 (=> (not res!255110) (not e!357764))))

(assert (=> d!208120 (= res!255110 (semiInverseModEq!452 (toChars!1894 (transformation!1148 (rule!1916 token!491))) (toValue!2035 (transformation!1148 (rule!1916 token!491)))))))

(declare-fun Unit!10625 () Unit!10614)

(assert (=> d!208120 (= (lemmaInv!256 (transformation!1148 (rule!1916 token!491))) Unit!10625)))

(declare-fun b!591639 () Bool)

(assert (=> b!591639 (= e!357764 (equivClasses!435 (toChars!1894 (transformation!1148 (rule!1916 token!491))) (toValue!2035 (transformation!1148 (rule!1916 token!491)))))))

(assert (= (and d!208120 res!255110) b!591639))

(assert (=> d!208120 m!852955))

(assert (=> b!591639 m!852957))

(assert (=> b!591414 d!208120))

(declare-fun d!208122 () Bool)

(assert (=> d!208122 (= (size!4628 token!491) (size!4629 (originalCharacters!1187 token!491)))))

(declare-fun Unit!10626 () Unit!10614)

(assert (=> d!208122 (= (lemmaCharactersSize!207 token!491) Unit!10626)))

(declare-fun bs!70364 () Bool)

(assert (= bs!70364 d!208122))

(declare-fun m!853041 () Bool)

(assert (=> bs!70364 m!853041))

(assert (=> b!591414 d!208122))

(declare-fun d!208124 () Bool)

(assert (=> d!208124 (= (list!2445 (charsOf!777 (_1!3657 (v!16383 lt!250601)))) (list!2447 (c!110322 (charsOf!777 (_1!3657 (v!16383 lt!250601))))))))

(declare-fun bs!70365 () Bool)

(assert (= bs!70365 d!208124))

(declare-fun m!853043 () Bool)

(assert (=> bs!70365 m!853043))

(assert (=> b!591414 d!208124))

(declare-fun d!208126 () Bool)

(assert (=> d!208126 (isPrefix!776 lt!250605 (++!1636 lt!250605 (_2!3657 (v!16383 lt!250601))))))

(declare-fun lt!250734 () Unit!10614)

(declare-fun choose!4271 (List!5853 List!5853) Unit!10614)

(assert (=> d!208126 (= lt!250734 (choose!4271 lt!250605 (_2!3657 (v!16383 lt!250601))))))

(assert (=> d!208126 (= (lemmaConcatTwoListThenFirstIsPrefix!621 lt!250605 (_2!3657 (v!16383 lt!250601))) lt!250734)))

(declare-fun bs!70366 () Bool)

(assert (= bs!70366 d!208126))

(assert (=> bs!70366 m!852705))

(assert (=> bs!70366 m!852705))

(assert (=> bs!70366 m!852731))

(declare-fun m!853045 () Bool)

(assert (=> bs!70366 m!853045))

(assert (=> b!591414 d!208126))

(declare-fun d!208128 () Bool)

(assert (=> d!208128 (ruleValid!346 thiss!22590 (rule!1916 token!491))))

(declare-fun lt!250736 () Unit!10614)

(assert (=> d!208128 (= lt!250736 (choose!4268 thiss!22590 (rule!1916 token!491) rules!3103))))

(assert (=> d!208128 (contains!1376 rules!3103 (rule!1916 token!491))))

(assert (=> d!208128 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!193 thiss!22590 (rule!1916 token!491) rules!3103) lt!250736)))

(declare-fun bs!70367 () Bool)

(assert (= bs!70367 d!208128))

(assert (=> bs!70367 m!852701))

(declare-fun m!853047 () Bool)

(assert (=> bs!70367 m!853047))

(declare-fun m!853049 () Bool)

(assert (=> bs!70367 m!853049))

(assert (=> b!591414 d!208128))

(declare-fun d!208130 () Bool)

(declare-fun lt!250739 () List!5853)

(assert (=> d!208130 (= (++!1636 lt!250605 lt!250739) input!2705)))

(declare-fun e!357767 () List!5853)

(assert (=> d!208130 (= lt!250739 e!357767)))

(declare-fun c!110355 () Bool)

(assert (=> d!208130 (= c!110355 (is-Cons!5843 lt!250605))))

(assert (=> d!208130 (>= (size!4629 input!2705) (size!4629 lt!250605))))

(assert (=> d!208130 (= (getSuffix!293 input!2705 lt!250605) lt!250739)))

(declare-fun b!591644 () Bool)

(assert (=> b!591644 (= e!357767 (getSuffix!293 (tail!780 input!2705) (t!79004 lt!250605)))))

(declare-fun b!591645 () Bool)

(assert (=> b!591645 (= e!357767 input!2705)))

(assert (= (and d!208130 c!110355) b!591644))

(assert (= (and d!208130 (not c!110355)) b!591645))

(declare-fun m!853053 () Bool)

(assert (=> d!208130 m!853053))

(assert (=> d!208130 m!852943))

(assert (=> d!208130 m!852715))

(assert (=> b!591644 m!853033))

(assert (=> b!591644 m!853033))

(declare-fun m!853055 () Bool)

(assert (=> b!591644 m!853055))

(assert (=> b!591414 d!208130))

(declare-fun d!208134 () Bool)

(declare-fun res!255111 () Bool)

(declare-fun e!357768 () Bool)

(assert (=> d!208134 (=> (not res!255111) (not e!357768))))

(assert (=> d!208134 (= res!255111 (validRegex!505 (regex!1148 (rule!1916 token!491))))))

(assert (=> d!208134 (= (ruleValid!346 thiss!22590 (rule!1916 token!491)) e!357768)))

(declare-fun b!591646 () Bool)

(declare-fun res!255112 () Bool)

(assert (=> b!591646 (=> (not res!255112) (not e!357768))))

(assert (=> b!591646 (= res!255112 (not (nullable!410 (regex!1148 (rule!1916 token!491)))))))

(declare-fun b!591647 () Bool)

(assert (=> b!591647 (= e!357768 (not (= (tag!1410 (rule!1916 token!491)) (String!7607 ""))))))

(assert (= (and d!208134 res!255111) b!591646))

(assert (= (and b!591646 res!255112) b!591647))

(declare-fun m!853057 () Bool)

(assert (=> d!208134 m!853057))

(declare-fun m!853059 () Bool)

(assert (=> b!591646 m!853059))

(assert (=> b!591414 d!208134))

(declare-fun d!208136 () Bool)

(declare-fun dynLambda!3407 (Int BalanceConc!3738) TokenValue!1172)

(assert (=> d!208136 (= (apply!1401 (transformation!1148 (rule!1916 (_1!3657 (v!16383 lt!250601)))) (seqFromList!1324 lt!250605)) (dynLambda!3407 (toValue!2035 (transformation!1148 (rule!1916 (_1!3657 (v!16383 lt!250601))))) (seqFromList!1324 lt!250605)))))

(declare-fun b_lambda!23299 () Bool)

(assert (=> (not b_lambda!23299) (not d!208136)))

(declare-fun tb!51707 () Bool)

(declare-fun t!79027 () Bool)

(assert (=> (and b!591415 (= (toValue!2035 (transformation!1148 (rule!1916 token!491))) (toValue!2035 (transformation!1148 (rule!1916 (_1!3657 (v!16383 lt!250601)))))) t!79027) tb!51707))

(declare-fun result!58010 () Bool)

(assert (=> tb!51707 (= result!58010 (inv!21 (dynLambda!3407 (toValue!2035 (transformation!1148 (rule!1916 (_1!3657 (v!16383 lt!250601))))) (seqFromList!1324 lt!250605))))))

(declare-fun m!853069 () Bool)

(assert (=> tb!51707 m!853069))

(assert (=> d!208136 t!79027))

(declare-fun b_and!58319 () Bool)

(assert (= b_and!58283 (and (=> t!79027 result!58010) b_and!58319)))

(declare-fun tb!51709 () Bool)

(declare-fun t!79029 () Bool)

(assert (=> (and b!591409 (= (toValue!2035 (transformation!1148 (h!11246 rules!3103))) (toValue!2035 (transformation!1148 (rule!1916 (_1!3657 (v!16383 lt!250601)))))) t!79029) tb!51709))

(declare-fun result!58014 () Bool)

(assert (= result!58014 result!58010))

(assert (=> d!208136 t!79029))

(declare-fun b_and!58321 () Bool)

(assert (= b_and!58287 (and (=> t!79029 result!58014) b_and!58321)))

(assert (=> d!208136 m!852727))

(declare-fun m!853071 () Bool)

(assert (=> d!208136 m!853071))

(assert (=> b!591414 d!208136))

(declare-fun b!591652 () Bool)

(declare-fun e!357773 () List!5853)

(assert (=> b!591652 (= e!357773 (_2!3657 (v!16383 lt!250601)))))

(declare-fun b!591654 () Bool)

(declare-fun res!255115 () Bool)

(declare-fun e!357774 () Bool)

(assert (=> b!591654 (=> (not res!255115) (not e!357774))))

(declare-fun lt!250743 () List!5853)

(assert (=> b!591654 (= res!255115 (= (size!4629 lt!250743) (+ (size!4629 lt!250605) (size!4629 (_2!3657 (v!16383 lt!250601))))))))

(declare-fun b!591653 () Bool)

(assert (=> b!591653 (= e!357773 (Cons!5843 (h!11244 lt!250605) (++!1636 (t!79004 lt!250605) (_2!3657 (v!16383 lt!250601)))))))

(declare-fun d!208142 () Bool)

(assert (=> d!208142 e!357774))

(declare-fun res!255116 () Bool)

(assert (=> d!208142 (=> (not res!255116) (not e!357774))))

(assert (=> d!208142 (= res!255116 (= (content!1052 lt!250743) (set.union (content!1052 lt!250605) (content!1052 (_2!3657 (v!16383 lt!250601))))))))

(assert (=> d!208142 (= lt!250743 e!357773)))

(declare-fun c!110356 () Bool)

(assert (=> d!208142 (= c!110356 (is-Nil!5843 lt!250605))))

(assert (=> d!208142 (= (++!1636 lt!250605 (_2!3657 (v!16383 lt!250601))) lt!250743)))

(declare-fun b!591655 () Bool)

(assert (=> b!591655 (= e!357774 (or (not (= (_2!3657 (v!16383 lt!250601)) Nil!5843)) (= lt!250743 lt!250605)))))

(assert (= (and d!208142 c!110356) b!591652))

(assert (= (and d!208142 (not c!110356)) b!591653))

(assert (= (and d!208142 res!255116) b!591654))

(assert (= (and b!591654 res!255115) b!591655))

(declare-fun m!853073 () Bool)

(assert (=> b!591654 m!853073))

(assert (=> b!591654 m!852715))

(declare-fun m!853075 () Bool)

(assert (=> b!591654 m!853075))

(declare-fun m!853077 () Bool)

(assert (=> b!591653 m!853077))

(declare-fun m!853079 () Bool)

(assert (=> d!208142 m!853079))

(declare-fun m!853081 () Bool)

(assert (=> d!208142 m!853081))

(declare-fun m!853083 () Bool)

(assert (=> d!208142 m!853083))

(assert (=> b!591414 d!208142))

(declare-fun d!208144 () Bool)

(assert (=> d!208144 (isPrefix!776 input!2705 input!2705)))

(declare-fun lt!250746 () Unit!10614)

(declare-fun choose!4272 (List!5853 List!5853) Unit!10614)

(assert (=> d!208144 (= lt!250746 (choose!4272 input!2705 input!2705))))

(assert (=> d!208144 (= (lemmaIsPrefixRefl!512 input!2705 input!2705) lt!250746)))

(declare-fun bs!70370 () Bool)

(assert (= bs!70370 d!208144))

(assert (=> bs!70370 m!852739))

(declare-fun m!853085 () Bool)

(assert (=> bs!70370 m!853085))

(assert (=> b!591414 d!208144))

(declare-fun d!208146 () Bool)

(declare-fun lt!250747 () Int)

(assert (=> d!208146 (>= lt!250747 0)))

(declare-fun e!357778 () Int)

(assert (=> d!208146 (= lt!250747 e!357778)))

(declare-fun c!110357 () Bool)

(assert (=> d!208146 (= c!110357 (is-Nil!5843 (originalCharacters!1187 (_1!3657 (v!16383 lt!250601)))))))

(assert (=> d!208146 (= (size!4629 (originalCharacters!1187 (_1!3657 (v!16383 lt!250601)))) lt!250747)))

(declare-fun b!591658 () Bool)

(assert (=> b!591658 (= e!357778 0)))

(declare-fun b!591659 () Bool)

(assert (=> b!591659 (= e!357778 (+ 1 (size!4629 (t!79004 (originalCharacters!1187 (_1!3657 (v!16383 lt!250601)))))))))

(assert (= (and d!208146 c!110357) b!591658))

(assert (= (and d!208146 (not c!110357)) b!591659))

(declare-fun m!853089 () Bool)

(assert (=> b!591659 m!853089))

(assert (=> b!591413 d!208146))

(declare-fun d!208148 () Bool)

(assert (=> d!208148 (= (isEmpty!4219 input!2705) (is-Nil!5843 input!2705))))

(assert (=> b!591404 d!208148))

(declare-fun d!208152 () Bool)

(declare-fun res!255121 () Bool)

(declare-fun e!357781 () Bool)

(assert (=> d!208152 (=> (not res!255121) (not e!357781))))

(assert (=> d!208152 (= res!255121 (not (isEmpty!4219 (originalCharacters!1187 token!491))))))

(assert (=> d!208152 (= (inv!7400 token!491) e!357781)))

(declare-fun b!591664 () Bool)

(declare-fun res!255122 () Bool)

(assert (=> b!591664 (=> (not res!255122) (not e!357781))))

(assert (=> b!591664 (= res!255122 (= (originalCharacters!1187 token!491) (list!2445 (dynLambda!3405 (toChars!1894 (transformation!1148 (rule!1916 token!491))) (value!37586 token!491)))))))

(declare-fun b!591665 () Bool)

(assert (=> b!591665 (= e!357781 (= (size!4628 token!491) (size!4629 (originalCharacters!1187 token!491))))))

(assert (= (and d!208152 res!255121) b!591664))

(assert (= (and b!591664 res!255122) b!591665))

(declare-fun b_lambda!23303 () Bool)

(assert (=> (not b_lambda!23303) (not b!591664)))

(assert (=> b!591664 t!79015))

(declare-fun b_and!58327 () Bool)

(assert (= b_and!58315 (and (=> t!79015 result!57996) b_and!58327)))

(assert (=> b!591664 t!79017))

(declare-fun b_and!58329 () Bool)

(assert (= b_and!58317 (and (=> t!79017 result!58000) b_and!58329)))

(declare-fun m!853097 () Bool)

(assert (=> d!208152 m!853097))

(assert (=> b!591664 m!852875))

(assert (=> b!591664 m!852875))

(declare-fun m!853101 () Bool)

(assert (=> b!591664 m!853101))

(assert (=> b!591665 m!853041))

(assert (=> start!55470 d!208152))

(declare-fun b!591666 () Bool)

(declare-fun res!255123 () Bool)

(declare-fun e!357784 () Bool)

(assert (=> b!591666 (=> (not res!255123) (not e!357784))))

(declare-fun lt!250754 () Option!1499)

(assert (=> b!591666 (= res!255123 (= (++!1636 (list!2445 (charsOf!777 (_1!3657 (get!2237 lt!250754)))) (_2!3657 (get!2237 lt!250754))) input!2705))))

(declare-fun b!591667 () Bool)

(declare-fun res!255124 () Bool)

(assert (=> b!591667 (=> (not res!255124) (not e!357784))))

(assert (=> b!591667 (= res!255124 (= (value!37586 (_1!3657 (get!2237 lt!250754))) (apply!1401 (transformation!1148 (rule!1916 (_1!3657 (get!2237 lt!250754)))) (seqFromList!1324 (originalCharacters!1187 (_1!3657 (get!2237 lt!250754)))))))))

(declare-fun call!40328 () Option!1499)

(declare-fun bm!40323 () Bool)

(assert (=> bm!40323 (= call!40328 (maxPrefixOneRule!417 thiss!22590 (h!11246 rules!3103) input!2705))))

(declare-fun b!591668 () Bool)

(declare-fun res!255129 () Bool)

(assert (=> b!591668 (=> (not res!255129) (not e!357784))))

(assert (=> b!591668 (= res!255129 (< (size!4629 (_2!3657 (get!2237 lt!250754))) (size!4629 input!2705)))))

(declare-fun b!591669 () Bool)

(assert (=> b!591669 (= e!357784 (contains!1376 rules!3103 (rule!1916 (_1!3657 (get!2237 lt!250754)))))))

(declare-fun b!591670 () Bool)

(declare-fun res!255127 () Bool)

(assert (=> b!591670 (=> (not res!255127) (not e!357784))))

(assert (=> b!591670 (= res!255127 (= (list!2445 (charsOf!777 (_1!3657 (get!2237 lt!250754)))) (originalCharacters!1187 (_1!3657 (get!2237 lt!250754)))))))

(declare-fun b!591671 () Bool)

(declare-fun res!255128 () Bool)

(assert (=> b!591671 (=> (not res!255128) (not e!357784))))

(assert (=> b!591671 (= res!255128 (matchR!613 (regex!1148 (rule!1916 (_1!3657 (get!2237 lt!250754)))) (list!2445 (charsOf!777 (_1!3657 (get!2237 lt!250754))))))))

(declare-fun b!591672 () Bool)

(declare-fun e!357782 () Option!1499)

(declare-fun lt!250755 () Option!1499)

(declare-fun lt!250753 () Option!1499)

(assert (=> b!591672 (= e!357782 (ite (and (is-None!1498 lt!250755) (is-None!1498 lt!250753)) None!1498 (ite (is-None!1498 lt!250753) lt!250755 (ite (is-None!1498 lt!250755) lt!250753 (ite (>= (size!4628 (_1!3657 (v!16383 lt!250755))) (size!4628 (_1!3657 (v!16383 lt!250753)))) lt!250755 lt!250753)))))))

(assert (=> b!591672 (= lt!250755 call!40328)))

(assert (=> b!591672 (= lt!250753 (maxPrefix!732 thiss!22590 (t!79006 rules!3103) input!2705))))

(declare-fun d!208158 () Bool)

(declare-fun e!357783 () Bool)

(assert (=> d!208158 e!357783))

(declare-fun res!255126 () Bool)

(assert (=> d!208158 (=> res!255126 e!357783)))

(assert (=> d!208158 (= res!255126 (isEmpty!4223 lt!250754))))

(assert (=> d!208158 (= lt!250754 e!357782)))

(declare-fun c!110358 () Bool)

(assert (=> d!208158 (= c!110358 (and (is-Cons!5845 rules!3103) (is-Nil!5845 (t!79006 rules!3103))))))

(declare-fun lt!250752 () Unit!10614)

(declare-fun lt!250756 () Unit!10614)

(assert (=> d!208158 (= lt!250752 lt!250756)))

(assert (=> d!208158 (isPrefix!776 input!2705 input!2705)))

(assert (=> d!208158 (= lt!250756 (lemmaIsPrefixRefl!512 input!2705 input!2705))))

(assert (=> d!208158 (rulesValidInductive!421 thiss!22590 rules!3103)))

(assert (=> d!208158 (= (maxPrefix!732 thiss!22590 rules!3103 input!2705) lt!250754)))

(declare-fun b!591673 () Bool)

(assert (=> b!591673 (= e!357782 call!40328)))

(declare-fun b!591674 () Bool)

(assert (=> b!591674 (= e!357783 e!357784)))

(declare-fun res!255125 () Bool)

(assert (=> b!591674 (=> (not res!255125) (not e!357784))))

(assert (=> b!591674 (= res!255125 (isDefined!1310 lt!250754))))

(assert (= (and d!208158 c!110358) b!591673))

(assert (= (and d!208158 (not c!110358)) b!591672))

(assert (= (or b!591673 b!591672) bm!40323))

(assert (= (and d!208158 (not res!255126)) b!591674))

(assert (= (and b!591674 res!255125) b!591670))

(assert (= (and b!591670 res!255127) b!591668))

(assert (= (and b!591668 res!255129) b!591666))

(assert (= (and b!591666 res!255123) b!591667))

(assert (= (and b!591667 res!255124) b!591671))

(assert (= (and b!591671 res!255128) b!591669))

(declare-fun m!853103 () Bool)

(assert (=> b!591669 m!853103))

(declare-fun m!853105 () Bool)

(assert (=> b!591669 m!853105))

(declare-fun m!853107 () Bool)

(assert (=> b!591674 m!853107))

(assert (=> b!591668 m!853103))

(declare-fun m!853109 () Bool)

(assert (=> b!591668 m!853109))

(assert (=> b!591668 m!852943))

(declare-fun m!853111 () Bool)

(assert (=> bm!40323 m!853111))

(assert (=> b!591671 m!853103))

(declare-fun m!853113 () Bool)

(assert (=> b!591671 m!853113))

(assert (=> b!591671 m!853113))

(declare-fun m!853115 () Bool)

(assert (=> b!591671 m!853115))

(assert (=> b!591671 m!853115))

(declare-fun m!853117 () Bool)

(assert (=> b!591671 m!853117))

(declare-fun m!853119 () Bool)

(assert (=> b!591672 m!853119))

(assert (=> b!591666 m!853103))

(assert (=> b!591666 m!853113))

(assert (=> b!591666 m!853113))

(assert (=> b!591666 m!853115))

(assert (=> b!591666 m!853115))

(declare-fun m!853121 () Bool)

(assert (=> b!591666 m!853121))

(assert (=> b!591667 m!853103))

(declare-fun m!853123 () Bool)

(assert (=> b!591667 m!853123))

(assert (=> b!591667 m!853123))

(declare-fun m!853125 () Bool)

(assert (=> b!591667 m!853125))

(assert (=> b!591670 m!853103))

(assert (=> b!591670 m!853113))

(assert (=> b!591670 m!853113))

(assert (=> b!591670 m!853115))

(declare-fun m!853127 () Bool)

(assert (=> d!208158 m!853127))

(assert (=> d!208158 m!852739))

(assert (=> d!208158 m!852735))

(assert (=> d!208158 m!852911))

(assert (=> b!591405 d!208158))

(declare-fun b!591679 () Bool)

(declare-fun e!357787 () Bool)

(declare-fun tp!184487 () Bool)

(assert (=> b!591679 (= e!357787 (and tp_is_empty!3319 tp!184487))))

(assert (=> b!591407 (= tp!184440 e!357787)))

(assert (= (and b!591407 (is-Cons!5843 (originalCharacters!1187 token!491))) b!591679))

(declare-fun b!591693 () Bool)

(declare-fun e!357790 () Bool)

(declare-fun tp!184499 () Bool)

(declare-fun tp!184500 () Bool)

(assert (=> b!591693 (= e!357790 (and tp!184499 tp!184500))))

(declare-fun b!591690 () Bool)

(assert (=> b!591690 (= e!357790 tp_is_empty!3319)))

(declare-fun b!591692 () Bool)

(declare-fun tp!184502 () Bool)

(assert (=> b!591692 (= e!357790 tp!184502)))

(declare-fun b!591691 () Bool)

(declare-fun tp!184498 () Bool)

(declare-fun tp!184501 () Bool)

(assert (=> b!591691 (= e!357790 (and tp!184498 tp!184501))))

(assert (=> b!591412 (= tp!184445 e!357790)))

(assert (= (and b!591412 (is-ElementMatch!1482 (regex!1148 (rule!1916 token!491)))) b!591690))

(assert (= (and b!591412 (is-Concat!2655 (regex!1148 (rule!1916 token!491)))) b!591691))

(assert (= (and b!591412 (is-Star!1482 (regex!1148 (rule!1916 token!491)))) b!591692))

(assert (= (and b!591412 (is-Union!1482 (regex!1148 (rule!1916 token!491)))) b!591693))

(declare-fun b!591694 () Bool)

(declare-fun e!357791 () Bool)

(declare-fun tp!184503 () Bool)

(assert (=> b!591694 (= e!357791 (and tp_is_empty!3319 tp!184503))))

(assert (=> b!591398 (= tp!184442 e!357791)))

(assert (= (and b!591398 (is-Cons!5843 (t!79004 input!2705))) b!591694))

(declare-fun b!591698 () Bool)

(declare-fun e!357792 () Bool)

(declare-fun tp!184505 () Bool)

(declare-fun tp!184506 () Bool)

(assert (=> b!591698 (= e!357792 (and tp!184505 tp!184506))))

(declare-fun b!591695 () Bool)

(assert (=> b!591695 (= e!357792 tp_is_empty!3319)))

(declare-fun b!591697 () Bool)

(declare-fun tp!184508 () Bool)

(assert (=> b!591697 (= e!357792 tp!184508)))

(declare-fun b!591696 () Bool)

(declare-fun tp!184504 () Bool)

(declare-fun tp!184507 () Bool)

(assert (=> b!591696 (= e!357792 (and tp!184504 tp!184507))))

(assert (=> b!591410 (= tp!184441 e!357792)))

(assert (= (and b!591410 (is-ElementMatch!1482 (regex!1148 (h!11246 rules!3103)))) b!591695))

(assert (= (and b!591410 (is-Concat!2655 (regex!1148 (h!11246 rules!3103)))) b!591696))

(assert (= (and b!591410 (is-Star!1482 (regex!1148 (h!11246 rules!3103)))) b!591697))

(assert (= (and b!591410 (is-Union!1482 (regex!1148 (h!11246 rules!3103)))) b!591698))

(declare-fun b!591709 () Bool)

(declare-fun b_free!16621 () Bool)

(declare-fun b_next!16637 () Bool)

(assert (=> b!591709 (= b_free!16621 (not b_next!16637))))

(declare-fun t!79035 () Bool)

(declare-fun tb!51715 () Bool)

(assert (=> (and b!591709 (= (toValue!2035 (transformation!1148 (h!11246 (t!79006 rules!3103)))) (toValue!2035 (transformation!1148 (rule!1916 (_1!3657 (v!16383 lt!250601)))))) t!79035) tb!51715))

(declare-fun result!58028 () Bool)

(assert (= result!58028 result!58010))

(assert (=> d!208136 t!79035))

(declare-fun tp!184519 () Bool)

(declare-fun b_and!58331 () Bool)

(assert (=> b!591709 (= tp!184519 (and (=> t!79035 result!58028) b_and!58331))))

(declare-fun b_free!16623 () Bool)

(declare-fun b_next!16639 () Bool)

(assert (=> b!591709 (= b_free!16623 (not b_next!16639))))

(declare-fun tb!51717 () Bool)

(declare-fun t!79037 () Bool)

(assert (=> (and b!591709 (= (toChars!1894 (transformation!1148 (h!11246 (t!79006 rules!3103)))) (toChars!1894 (transformation!1148 (rule!1916 token!491)))) t!79037) tb!51717))

(declare-fun result!58030 () Bool)

(assert (= result!58030 result!57996))

(assert (=> d!208060 t!79037))

(declare-fun t!79039 () Bool)

(declare-fun tb!51719 () Bool)

(assert (=> (and b!591709 (= (toChars!1894 (transformation!1148 (h!11246 (t!79006 rules!3103)))) (toChars!1894 (transformation!1148 (rule!1916 (_1!3657 (v!16383 lt!250601)))))) t!79039) tb!51719))

(declare-fun result!58032 () Bool)

(assert (= result!58032 result!58004))

(assert (=> d!208110 t!79039))

(assert (=> b!591664 t!79037))

(declare-fun b_and!58333 () Bool)

(declare-fun tp!184517 () Bool)

(assert (=> b!591709 (= tp!184517 (and (=> t!79037 result!58030) (=> t!79039 result!58032) b_and!58333))))

(declare-fun e!357804 () Bool)

(assert (=> b!591709 (= e!357804 (and tp!184519 tp!184517))))

(declare-fun b!591708 () Bool)

(declare-fun e!357802 () Bool)

(declare-fun tp!184520 () Bool)

(assert (=> b!591708 (= e!357802 (and tp!184520 (inv!7397 (tag!1410 (h!11246 (t!79006 rules!3103)))) (inv!7401 (transformation!1148 (h!11246 (t!79006 rules!3103)))) e!357804))))

(declare-fun b!591707 () Bool)

(declare-fun e!357801 () Bool)

(declare-fun tp!184518 () Bool)

(assert (=> b!591707 (= e!357801 (and e!357802 tp!184518))))

(assert (=> b!591399 (= tp!184437 e!357801)))

(assert (= b!591708 b!591709))

(assert (= b!591707 b!591708))

(assert (= (and b!591399 (is-Cons!5845 (t!79006 rules!3103))) b!591707))

(declare-fun m!853131 () Bool)

(assert (=> b!591708 m!853131))

(declare-fun m!853133 () Bool)

(assert (=> b!591708 m!853133))

(declare-fun b!591712 () Bool)

(declare-fun e!357805 () Bool)

(declare-fun tp!184521 () Bool)

(assert (=> b!591712 (= e!357805 (and tp_is_empty!3319 tp!184521))))

(assert (=> b!591416 (= tp!184443 e!357805)))

(assert (= (and b!591416 (is-Cons!5843 (t!79004 suffix!1342))) b!591712))

(declare-fun b_lambda!23305 () Bool)

(assert (= b_lambda!23291 (or (and b!591415 b_free!16607) (and b!591409 b_free!16611 (= (toChars!1894 (transformation!1148 (h!11246 rules!3103))) (toChars!1894 (transformation!1148 (rule!1916 token!491))))) (and b!591709 b_free!16623 (= (toChars!1894 (transformation!1148 (h!11246 (t!79006 rules!3103)))) (toChars!1894 (transformation!1148 (rule!1916 token!491))))) b_lambda!23305)))

(declare-fun b_lambda!23307 () Bool)

(assert (= b_lambda!23303 (or (and b!591415 b_free!16607) (and b!591409 b_free!16611 (= (toChars!1894 (transformation!1148 (h!11246 rules!3103))) (toChars!1894 (transformation!1148 (rule!1916 token!491))))) (and b!591709 b_free!16623 (= (toChars!1894 (transformation!1148 (h!11246 (t!79006 rules!3103)))) (toChars!1894 (transformation!1148 (rule!1916 token!491))))) b_lambda!23307)))

(push 1)

(assert (not b!591668))

(assert (not d!208100))

(assert b_and!58329)

(assert (not b!591636))

(assert (not b!591708))

(assert b_and!58327)

(assert (not d!208126))

(assert (not b!591561))

(assert (not b!591638))

(assert (not b!591696))

(assert (not b!591679))

(assert (not b!591670))

(assert (not b!591556))

(assert (not d!208104))

(assert (not b!591665))

(assert (not b!591634))

(assert (not b!591518))

(assert (not b_lambda!23307))

(assert (not d!208070))

(assert b_and!58331)

(assert b_and!58321)

(assert (not d!208110))

(assert (not b!591712))

(assert (not d!208082))

(assert (not d!208158))

(assert (not b!591563))

(assert (not b_lambda!23297))

(assert (not b_next!16623))

(assert (not b!591592))

(assert (not b!591635))

(assert (not b!591630))

(assert (not b!591607))

(assert (not bm!40321))

(assert (not b!591672))

(assert (not b!591507))

(assert (not d!208066))

(assert (not b_next!16621))

(assert (not d!208076))

(assert (not d!208054))

(assert (not b!591691))

(assert (not d!208130))

(assert (not b!591646))

(assert (not tb!51707))

(assert (not d!208124))

(assert b_and!58319)

(assert (not b!591653))

(assert (not d!208120))

(assert (not b!591503))

(assert (not b_lambda!23299))

(assert (not b!591555))

(assert (not b!591697))

(assert (not b!591707))

(assert (not b!591606))

(assert (not tb!51701))

(assert (not d!208080))

(assert (not b!591557))

(assert (not b!591654))

(assert (not b!591559))

(assert (not b!591585))

(assert (not b!591639))

(assert (not b!591666))

(assert (not b!591617))

(assert (not b!591692))

(assert (not d!208122))

(assert (not d!208090))

(assert (not d!208142))

(assert (not b!591632))

(assert (not b_next!16637))

(assert (not b_lambda!23305))

(assert (not d!208062))

(assert (not d!208064))

(assert (not b!591671))

(assert (not b!591674))

(assert (not d!208050))

(assert (not d!208128))

(assert (not d!208094))

(assert (not d!208060))

(assert (not b_next!16627))

(assert (not b!591560))

(assert (not tb!51695))

(assert (not b!591588))

(assert (not b!591558))

(assert (not b_next!16625))

(assert (not d!208152))

(assert (not b!591608))

(assert (not b!591664))

(assert (not b!591694))

(assert (not bm!40323))

(assert tp_is_empty!3319)

(assert (not b!591659))

(assert (not b!591667))

(assert (not b!591504))

(assert (not b!591510))

(assert (not b_next!16639))

(assert (not b!591582))

(assert (not b!591644))

(assert (not d!208072))

(assert (not b!591693))

(assert b_and!58333)

(assert (not b!591583))

(assert (not d!208144))

(assert (not b!591698))

(assert (not d!208058))

(assert (not d!208134))

(assert (not b!591587))

(assert (not b!591669))

(assert (not b!591513))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58327)

(assert (not b_next!16623))

(assert (not b_next!16621))

(assert b_and!58319)

(assert (not b_next!16637))

(assert (not b_next!16627))

(assert (not b_next!16625))

(assert (not b_next!16639))

(assert b_and!58329)

(assert b_and!58333)

(assert b_and!58321)

(assert b_and!58331)

(check-sat)

(pop 1)

