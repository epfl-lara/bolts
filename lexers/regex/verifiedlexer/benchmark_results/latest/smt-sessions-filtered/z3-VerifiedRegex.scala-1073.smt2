; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54840 () Bool)

(assert start!54840)

(declare-fun b!588075 () Bool)

(declare-fun b_free!16437 () Bool)

(declare-fun b_next!16453 () Bool)

(assert (=> b!588075 (= b_free!16437 (not b_next!16453))))

(declare-fun tp!183430 () Bool)

(declare-fun b_and!57931 () Bool)

(assert (=> b!588075 (= tp!183430 b_and!57931)))

(declare-fun b_free!16439 () Bool)

(declare-fun b_next!16455 () Bool)

(assert (=> b!588075 (= b_free!16439 (not b_next!16455))))

(declare-fun tp!183426 () Bool)

(declare-fun b_and!57933 () Bool)

(assert (=> b!588075 (= tp!183426 b_and!57933)))

(declare-fun b!588086 () Bool)

(declare-fun b_free!16441 () Bool)

(declare-fun b_next!16457 () Bool)

(assert (=> b!588086 (= b_free!16441 (not b_next!16457))))

(declare-fun tp!183431 () Bool)

(declare-fun b_and!57935 () Bool)

(assert (=> b!588086 (= tp!183431 b_and!57935)))

(declare-fun b_free!16443 () Bool)

(declare-fun b_next!16459 () Bool)

(assert (=> b!588086 (= b_free!16443 (not b_next!16459))))

(declare-fun tp!183425 () Bool)

(declare-fun b_and!57937 () Bool)

(assert (=> b!588086 (= tp!183425 b_and!57937)))

(declare-fun b!588071 () Bool)

(declare-fun e!355449 () Bool)

(declare-fun tp_is_empty!3289 () Bool)

(declare-fun tp!183428 () Bool)

(assert (=> b!588071 (= e!355449 (and tp_is_empty!3289 tp!183428))))

(declare-fun b!588072 () Bool)

(declare-datatypes ((Unit!10510 0))(
  ( (Unit!10511) )
))
(declare-fun e!355456 () Unit!10510)

(declare-fun Unit!10512 () Unit!10510)

(assert (=> b!588072 (= e!355456 Unit!10512)))

(assert (=> b!588072 false))

(declare-fun b!588073 () Bool)

(declare-fun e!355460 () Bool)

(declare-fun e!355451 () Bool)

(assert (=> b!588073 (= e!355460 e!355451)))

(declare-fun res!253364 () Bool)

(assert (=> b!588073 (=> (not res!253364) (not e!355451))))

(declare-datatypes ((C!3856 0))(
  ( (C!3857 (val!2154 Int)) )
))
(declare-datatypes ((List!5798 0))(
  ( (Nil!5788) (Cons!5788 (h!11189 C!3856) (t!78727 List!5798)) )
))
(declare-fun lt!249109 () List!5798)

(declare-fun input!2705 () List!5798)

(assert (=> b!588073 (= res!253364 (= lt!249109 input!2705))))

(declare-datatypes ((Regex!1467 0))(
  ( (ElementMatch!1467 (c!109865 C!3856)) (Concat!2624 (regOne!3446 Regex!1467) (regTwo!3446 Regex!1467)) (EmptyExpr!1467) (Star!1467 (reg!1796 Regex!1467)) (EmptyLang!1467) (Union!1467 (regOne!3447 Regex!1467) (regTwo!3447 Regex!1467)) )
))
(declare-datatypes ((List!5799 0))(
  ( (Nil!5789) (Cons!5789 (h!11190 (_ BitVec 16)) (t!78728 List!5799)) )
))
(declare-datatypes ((String!7528 0))(
  ( (String!7529 (value!37131 String)) )
))
(declare-datatypes ((TokenValue!1157 0))(
  ( (FloatLiteralValue!2314 (text!8544 List!5799)) (TokenValueExt!1156 (__x!4212 Int)) (Broken!5785 (value!37132 List!5799)) (Object!1166) (End!1157) (Def!1157) (Underscore!1157) (Match!1157) (Else!1157) (Error!1157) (Case!1157) (If!1157) (Extends!1157) (Abstract!1157) (Class!1157) (Val!1157) (DelimiterValue!2314 (del!1217 List!5799)) (KeywordValue!1163 (value!37133 List!5799)) (CommentValue!2314 (value!37134 List!5799)) (WhitespaceValue!2314 (value!37135 List!5799)) (IndentationValue!1157 (value!37136 List!5799)) (String!7530) (Int32!1157) (Broken!5786 (value!37137 List!5799)) (Boolean!1158) (Unit!10513) (OperatorValue!1160 (op!1217 List!5799)) (IdentifierValue!2314 (value!37138 List!5799)) (IdentifierValue!2315 (value!37139 List!5799)) (WhitespaceValue!2315 (value!37140 List!5799)) (True!2314) (False!2314) (Broken!5787 (value!37141 List!5799)) (Broken!5788 (value!37142 List!5799)) (True!2315) (RightBrace!1157) (RightBracket!1157) (Colon!1157) (Null!1157) (Comma!1157) (LeftBracket!1157) (False!2315) (LeftBrace!1157) (ImaginaryLiteralValue!1157 (text!8545 List!5799)) (StringLiteralValue!3471 (value!37143 List!5799)) (EOFValue!1157 (value!37144 List!5799)) (IdentValue!1157 (value!37145 List!5799)) (DelimiterValue!2315 (value!37146 List!5799)) (DedentValue!1157 (value!37147 List!5799)) (NewLineValue!1157 (value!37148 List!5799)) (IntegerValue!3471 (value!37149 (_ BitVec 32)) (text!8546 List!5799)) (IntegerValue!3472 (value!37150 Int) (text!8547 List!5799)) (Times!1157) (Or!1157) (Equal!1157) (Minus!1157) (Broken!5789 (value!37151 List!5799)) (And!1157) (Div!1157) (LessEqual!1157) (Mod!1157) (Concat!2625) (Not!1157) (Plus!1157) (SpaceValue!1157 (value!37152 List!5799)) (IntegerValue!3473 (value!37153 Int) (text!8548 List!5799)) (StringLiteralValue!3472 (text!8549 List!5799)) (FloatLiteralValue!2315 (text!8550 List!5799)) (BytesLiteralValue!1157 (value!37154 List!5799)) (CommentValue!2315 (value!37155 List!5799)) (StringLiteralValue!3473 (value!37156 List!5799)) (ErrorTokenValue!1157 (msg!1218 List!5799)) )
))
(declare-datatypes ((IArray!3701 0))(
  ( (IArray!3702 (innerList!1908 List!5798)) )
))
(declare-datatypes ((Conc!1850 0))(
  ( (Node!1850 (left!4713 Conc!1850) (right!5043 Conc!1850) (csize!3930 Int) (cheight!2061 Int)) (Leaf!2924 (xs!4487 IArray!3701) (csize!3931 Int)) (Empty!1850) )
))
(declare-datatypes ((BalanceConc!3708 0))(
  ( (BalanceConc!3709 (c!109866 Conc!1850)) )
))
(declare-datatypes ((TokenValueInjection!2082 0))(
  ( (TokenValueInjection!2083 (toValue!2016 Int) (toChars!1875 Int)) )
))
(declare-datatypes ((Rule!2066 0))(
  ( (Rule!2067 (regex!1133 Regex!1467) (tag!1395 String!7528) (isSeparator!1133 Bool) (transformation!1133 TokenValueInjection!2082)) )
))
(declare-datatypes ((Token!2002 0))(
  ( (Token!2003 (value!37157 TokenValue!1157) (rule!1899 Rule!2066) (size!4596 Int) (originalCharacters!1172 List!5798)) )
))
(declare-fun token!491 () Token!2002)

(declare-fun list!2418 (BalanceConc!3708) List!5798)

(declare-fun charsOf!762 (Token!2002) BalanceConc!3708)

(assert (=> b!588073 (= lt!249109 (list!2418 (charsOf!762 token!491)))))

(declare-fun b!588074 () Bool)

(declare-fun e!355463 () Bool)

(declare-datatypes ((LexerInterface!1019 0))(
  ( (LexerInterfaceExt!1016 (__x!4213 Int)) (Lexer!1017) )
))
(declare-fun thiss!22590 () LexerInterface!1019)

(declare-datatypes ((List!5800 0))(
  ( (Nil!5790) (Cons!5790 (h!11191 Rule!2066) (t!78729 List!5800)) )
))
(declare-fun rules!3103 () List!5800)

(declare-fun rulesValidInductive!412 (LexerInterface!1019 List!5800) Bool)

(assert (=> b!588074 (= e!355463 (rulesValidInductive!412 thiss!22590 rules!3103))))

(declare-fun e!355450 () Bool)

(assert (=> b!588075 (= e!355450 (and tp!183430 tp!183426))))

(declare-fun b!588076 () Bool)

(declare-fun res!253359 () Bool)

(assert (=> b!588076 (=> (not res!253359) (not e!355460))))

(declare-fun isEmpty!4179 (List!5798) Bool)

(assert (=> b!588076 (= res!253359 (not (isEmpty!4179 input!2705)))))

(declare-fun b!588077 () Bool)

(declare-fun res!253360 () Bool)

(assert (=> b!588077 (=> (not res!253360) (not e!355460))))

(declare-fun isEmpty!4180 (List!5800) Bool)

(assert (=> b!588077 (= res!253360 (not (isEmpty!4180 rules!3103)))))

(declare-fun b!588078 () Bool)

(declare-fun res!253366 () Bool)

(declare-fun e!355455 () Bool)

(assert (=> b!588078 (=> (not res!253366) (not e!355455))))

(declare-fun lt!249113 () List!5798)

(declare-fun suffix!1342 () List!5798)

(declare-fun ++!1621 (List!5798 List!5798) List!5798)

(assert (=> b!588078 (= res!253366 (= (++!1621 lt!249109 suffix!1342) lt!249113))))

(declare-fun b!588079 () Bool)

(declare-fun res!253361 () Bool)

(assert (=> b!588079 (=> (not res!253361) (not e!355460))))

(declare-fun rulesInvariant!982 (LexerInterface!1019 List!5800) Bool)

(assert (=> b!588079 (= res!253361 (rulesInvariant!982 thiss!22590 rules!3103))))

(declare-fun b!588080 () Bool)

(declare-fun e!355452 () Bool)

(declare-fun e!355462 () Bool)

(declare-fun tp!183434 () Bool)

(assert (=> b!588080 (= e!355452 (and e!355462 tp!183434))))

(declare-fun b!588081 () Bool)

(declare-fun e!355448 () Bool)

(assert (=> b!588081 (= e!355451 e!355448)))

(declare-fun res!253363 () Bool)

(assert (=> b!588081 (=> (not res!253363) (not e!355448))))

(declare-datatypes ((tuple2!6752 0))(
  ( (tuple2!6753 (_1!3640 Token!2002) (_2!3640 List!5798)) )
))
(declare-datatypes ((Option!1484 0))(
  ( (None!1483) (Some!1483 (v!16360 tuple2!6752)) )
))
(declare-fun lt!249104 () Option!1484)

(declare-fun isDefined!1295 (Option!1484) Bool)

(assert (=> b!588081 (= res!253363 (isDefined!1295 lt!249104))))

(declare-fun maxPrefix!717 (LexerInterface!1019 List!5800 List!5798) Option!1484)

(assert (=> b!588081 (= lt!249104 (maxPrefix!717 thiss!22590 rules!3103 lt!249113))))

(assert (=> b!588081 (= lt!249113 (++!1621 input!2705 suffix!1342))))

(declare-fun b!588082 () Bool)

(declare-fun e!355454 () Bool)

(assert (=> b!588082 (= e!355448 e!355454)))

(declare-fun res!253365 () Bool)

(assert (=> b!588082 (=> (not res!253365) (not e!355454))))

(declare-fun lt!249111 () tuple2!6752)

(assert (=> b!588082 (= res!253365 (and (= (_1!3640 lt!249111) token!491) (= (_2!3640 lt!249111) suffix!1342)))))

(declare-fun get!2214 (Option!1484) tuple2!6752)

(assert (=> b!588082 (= lt!249111 (get!2214 lt!249104))))

(declare-fun b!588083 () Bool)

(declare-fun tp!183427 () Bool)

(declare-fun inv!7317 (String!7528) Bool)

(declare-fun inv!7320 (TokenValueInjection!2082) Bool)

(assert (=> b!588083 (= e!355462 (and tp!183427 (inv!7317 (tag!1395 (h!11191 rules!3103))) (inv!7320 (transformation!1133 (h!11191 rules!3103))) e!355450))))

(declare-fun e!355447 () Bool)

(declare-fun e!355458 () Bool)

(declare-fun tp!183432 () Bool)

(declare-fun b!588084 () Bool)

(assert (=> b!588084 (= e!355447 (and tp!183432 (inv!7317 (tag!1395 (rule!1899 token!491))) (inv!7320 (transformation!1133 (rule!1899 token!491))) e!355458))))

(declare-fun b!588085 () Bool)

(declare-fun Unit!10514 () Unit!10510)

(assert (=> b!588085 (= e!355456 Unit!10514)))

(declare-fun b!588070 () Bool)

(assert (=> b!588070 (= e!355455 (not e!355463))))

(declare-fun res!253358 () Bool)

(assert (=> b!588070 (=> res!253358 e!355463)))

(declare-fun lt!249112 () Option!1484)

(declare-fun contains!1365 (List!5800 Rule!2066) Bool)

(assert (=> b!588070 (= res!253358 (not (contains!1365 rules!3103 (rule!1899 (_1!3640 (v!16360 lt!249112))))))))

(declare-fun isPrefix!761 (List!5798 List!5798) Bool)

(assert (=> b!588070 (isPrefix!761 input!2705 input!2705)))

(declare-fun lt!249106 () Unit!10510)

(declare-fun lemmaIsPrefixRefl!497 (List!5798 List!5798) Unit!10510)

(assert (=> b!588070 (= lt!249106 (lemmaIsPrefixRefl!497 input!2705 input!2705))))

(declare-fun lt!249105 () List!5798)

(assert (=> b!588070 (= (_2!3640 (v!16360 lt!249112)) lt!249105)))

(declare-fun lt!249107 () Unit!10510)

(declare-fun lt!249115 () List!5798)

(declare-fun lemmaSamePrefixThenSameSuffix!474 (List!5798 List!5798 List!5798 List!5798 List!5798) Unit!10510)

(assert (=> b!588070 (= lt!249107 (lemmaSamePrefixThenSameSuffix!474 lt!249115 (_2!3640 (v!16360 lt!249112)) lt!249115 lt!249105 input!2705))))

(declare-fun getSuffix!278 (List!5798 List!5798) List!5798)

(assert (=> b!588070 (= lt!249105 (getSuffix!278 input!2705 lt!249115))))

(assert (=> b!588070 (isPrefix!761 lt!249115 (++!1621 lt!249115 (_2!3640 (v!16360 lt!249112))))))

(declare-fun lt!249114 () Unit!10510)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!606 (List!5798 List!5798) Unit!10510)

(assert (=> b!588070 (= lt!249114 (lemmaConcatTwoListThenFirstIsPrefix!606 lt!249115 (_2!3640 (v!16360 lt!249112))))))

(declare-fun lt!249103 () Unit!10510)

(declare-fun lemmaCharactersSize!192 (Token!2002) Unit!10510)

(assert (=> b!588070 (= lt!249103 (lemmaCharactersSize!192 token!491))))

(declare-fun lt!249110 () Unit!10510)

(assert (=> b!588070 (= lt!249110 (lemmaCharactersSize!192 (_1!3640 (v!16360 lt!249112))))))

(declare-fun lt!249108 () Unit!10510)

(assert (=> b!588070 (= lt!249108 e!355456)))

(declare-fun c!109864 () Bool)

(declare-fun size!4597 (List!5798) Int)

(assert (=> b!588070 (= c!109864 (> (size!4597 lt!249115) (size!4597 lt!249109)))))

(assert (=> b!588070 (= lt!249115 (list!2418 (charsOf!762 (_1!3640 (v!16360 lt!249112)))))))

(assert (=> b!588070 (= lt!249112 (Some!1483 (v!16360 lt!249112)))))

(declare-fun lt!249116 () Unit!10510)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!206 (List!5798 List!5798 List!5798 List!5798) Unit!10510)

(assert (=> b!588070 (= lt!249116 (lemmaConcatSameAndSameSizesThenSameLists!206 lt!249109 suffix!1342 input!2705 suffix!1342))))

(declare-fun res!253367 () Bool)

(assert (=> start!54840 (=> (not res!253367) (not e!355460))))

(get-info :version)

(assert (=> start!54840 (= res!253367 ((_ is Lexer!1017) thiss!22590))))

(assert (=> start!54840 e!355460))

(assert (=> start!54840 e!355449))

(assert (=> start!54840 e!355452))

(declare-fun e!355453 () Bool)

(declare-fun inv!7321 (Token!2002) Bool)

(assert (=> start!54840 (and (inv!7321 token!491) e!355453)))

(assert (=> start!54840 true))

(declare-fun e!355461 () Bool)

(assert (=> start!54840 e!355461))

(assert (=> b!588086 (= e!355458 (and tp!183431 tp!183425))))

(declare-fun b!588087 () Bool)

(declare-fun tp!183433 () Bool)

(assert (=> b!588087 (= e!355461 (and tp_is_empty!3289 tp!183433))))

(declare-fun b!588088 () Bool)

(declare-fun tp!183429 () Bool)

(declare-fun inv!21 (TokenValue!1157) Bool)

(assert (=> b!588088 (= e!355453 (and (inv!21 (value!37157 token!491)) e!355447 tp!183429))))

(declare-fun b!588089 () Bool)

(assert (=> b!588089 (= e!355454 e!355455)))

(declare-fun res!253362 () Bool)

(assert (=> b!588089 (=> (not res!253362) (not e!355455))))

(assert (=> b!588089 (= res!253362 ((_ is Some!1483) lt!249112))))

(assert (=> b!588089 (= lt!249112 (maxPrefix!717 thiss!22590 rules!3103 input!2705))))

(assert (= (and start!54840 res!253367) b!588077))

(assert (= (and b!588077 res!253360) b!588079))

(assert (= (and b!588079 res!253361) b!588076))

(assert (= (and b!588076 res!253359) b!588073))

(assert (= (and b!588073 res!253364) b!588081))

(assert (= (and b!588081 res!253363) b!588082))

(assert (= (and b!588082 res!253365) b!588089))

(assert (= (and b!588089 res!253362) b!588078))

(assert (= (and b!588078 res!253366) b!588070))

(assert (= (and b!588070 c!109864) b!588072))

(assert (= (and b!588070 (not c!109864)) b!588085))

(assert (= (and b!588070 (not res!253358)) b!588074))

(assert (= (and start!54840 ((_ is Cons!5788) suffix!1342)) b!588071))

(assert (= b!588083 b!588075))

(assert (= b!588080 b!588083))

(assert (= (and start!54840 ((_ is Cons!5790) rules!3103)) b!588080))

(assert (= b!588084 b!588086))

(assert (= b!588088 b!588084))

(assert (= start!54840 b!588088))

(assert (= (and start!54840 ((_ is Cons!5788) input!2705)) b!588087))

(declare-fun m!848607 () Bool)

(assert (=> b!588076 m!848607))

(declare-fun m!848609 () Bool)

(assert (=> b!588088 m!848609))

(declare-fun m!848611 () Bool)

(assert (=> b!588083 m!848611))

(declare-fun m!848613 () Bool)

(assert (=> b!588083 m!848613))

(declare-fun m!848615 () Bool)

(assert (=> b!588074 m!848615))

(declare-fun m!848617 () Bool)

(assert (=> b!588077 m!848617))

(declare-fun m!848619 () Bool)

(assert (=> b!588089 m!848619))

(declare-fun m!848621 () Bool)

(assert (=> b!588079 m!848621))

(declare-fun m!848623 () Bool)

(assert (=> b!588078 m!848623))

(declare-fun m!848625 () Bool)

(assert (=> start!54840 m!848625))

(declare-fun m!848627 () Bool)

(assert (=> b!588084 m!848627))

(declare-fun m!848629 () Bool)

(assert (=> b!588084 m!848629))

(declare-fun m!848631 () Bool)

(assert (=> b!588082 m!848631))

(declare-fun m!848633 () Bool)

(assert (=> b!588073 m!848633))

(assert (=> b!588073 m!848633))

(declare-fun m!848635 () Bool)

(assert (=> b!588073 m!848635))

(declare-fun m!848637 () Bool)

(assert (=> b!588070 m!848637))

(declare-fun m!848639 () Bool)

(assert (=> b!588070 m!848639))

(declare-fun m!848641 () Bool)

(assert (=> b!588070 m!848641))

(declare-fun m!848643 () Bool)

(assert (=> b!588070 m!848643))

(assert (=> b!588070 m!848639))

(declare-fun m!848645 () Bool)

(assert (=> b!588070 m!848645))

(declare-fun m!848647 () Bool)

(assert (=> b!588070 m!848647))

(declare-fun m!848649 () Bool)

(assert (=> b!588070 m!848649))

(declare-fun m!848651 () Bool)

(assert (=> b!588070 m!848651))

(declare-fun m!848653 () Bool)

(assert (=> b!588070 m!848653))

(declare-fun m!848655 () Bool)

(assert (=> b!588070 m!848655))

(declare-fun m!848657 () Bool)

(assert (=> b!588070 m!848657))

(declare-fun m!848659 () Bool)

(assert (=> b!588070 m!848659))

(declare-fun m!848661 () Bool)

(assert (=> b!588070 m!848661))

(declare-fun m!848663 () Bool)

(assert (=> b!588070 m!848663))

(declare-fun m!848665 () Bool)

(assert (=> b!588070 m!848665))

(assert (=> b!588070 m!848651))

(declare-fun m!848667 () Bool)

(assert (=> b!588081 m!848667))

(declare-fun m!848669 () Bool)

(assert (=> b!588081 m!848669))

(declare-fun m!848671 () Bool)

(assert (=> b!588081 m!848671))

(check-sat (not b!588079) (not b!588081) (not b!588077) b_and!57933 b_and!57931 (not b_next!16457) b_and!57935 (not b!588087) (not b!588074) (not b!588070) (not b!588076) (not b_next!16453) (not b!588089) (not b!588071) tp_is_empty!3289 (not start!54840) (not b!588084) (not b!588088) (not b!588082) (not b!588073) (not b!588080) (not b_next!16459) (not b_next!16455) (not b!588078) (not b!588083) b_and!57937)
(check-sat (not b_next!16453) b_and!57933 b_and!57931 (not b_next!16457) b_and!57935 b_and!57937 (not b_next!16459) (not b_next!16455))
(get-model)

(declare-fun d!206898 () Bool)

(assert (=> d!206898 (= (inv!7317 (tag!1395 (rule!1899 token!491))) (= (mod (str.len (value!37131 (tag!1395 (rule!1899 token!491)))) 2) 0))))

(assert (=> b!588084 d!206898))

(declare-fun d!206900 () Bool)

(declare-fun res!253374 () Bool)

(declare-fun e!355466 () Bool)

(assert (=> d!206900 (=> (not res!253374) (not e!355466))))

(declare-fun semiInverseModEq!442 (Int Int) Bool)

(assert (=> d!206900 (= res!253374 (semiInverseModEq!442 (toChars!1875 (transformation!1133 (rule!1899 token!491))) (toValue!2016 (transformation!1133 (rule!1899 token!491)))))))

(assert (=> d!206900 (= (inv!7320 (transformation!1133 (rule!1899 token!491))) e!355466)))

(declare-fun b!588092 () Bool)

(declare-fun equivClasses!425 (Int Int) Bool)

(assert (=> b!588092 (= e!355466 (equivClasses!425 (toChars!1875 (transformation!1133 (rule!1899 token!491))) (toValue!2016 (transformation!1133 (rule!1899 token!491)))))))

(assert (= (and d!206900 res!253374) b!588092))

(declare-fun m!848673 () Bool)

(assert (=> d!206900 m!848673))

(declare-fun m!848675 () Bool)

(assert (=> b!588092 m!848675))

(assert (=> b!588084 d!206900))

(declare-fun d!206902 () Bool)

(assert (=> d!206902 true))

(declare-fun lt!249153 () Bool)

(declare-fun lambda!15925 () Int)

(declare-fun forall!1547 (List!5800 Int) Bool)

(assert (=> d!206902 (= lt!249153 (forall!1547 rules!3103 lambda!15925))))

(declare-fun e!355509 () Bool)

(assert (=> d!206902 (= lt!249153 e!355509)))

(declare-fun res!253415 () Bool)

(assert (=> d!206902 (=> res!253415 e!355509)))

(assert (=> d!206902 (= res!253415 (not ((_ is Cons!5790) rules!3103)))))

(assert (=> d!206902 (= (rulesValidInductive!412 thiss!22590 rules!3103) lt!249153)))

(declare-fun b!588154 () Bool)

(declare-fun e!355510 () Bool)

(assert (=> b!588154 (= e!355509 e!355510)))

(declare-fun res!253414 () Bool)

(assert (=> b!588154 (=> (not res!253414) (not e!355510))))

(declare-fun ruleValid!330 (LexerInterface!1019 Rule!2066) Bool)

(assert (=> b!588154 (= res!253414 (ruleValid!330 thiss!22590 (h!11191 rules!3103)))))

(declare-fun b!588155 () Bool)

(assert (=> b!588155 (= e!355510 (rulesValidInductive!412 thiss!22590 (t!78729 rules!3103)))))

(assert (= (and d!206902 (not res!253415)) b!588154))

(assert (= (and b!588154 res!253414) b!588155))

(declare-fun m!848747 () Bool)

(assert (=> d!206902 m!848747))

(declare-fun m!848749 () Bool)

(assert (=> b!588154 m!848749))

(declare-fun m!848751 () Bool)

(assert (=> b!588155 m!848751))

(assert (=> b!588074 d!206902))

(declare-fun d!206936 () Bool)

(assert (=> d!206936 (= (get!2214 lt!249104) (v!16360 lt!249104))))

(assert (=> b!588082 d!206936))

(declare-fun d!206938 () Bool)

(assert (=> d!206938 (= (inv!7317 (tag!1395 (h!11191 rules!3103))) (= (mod (str.len (value!37131 (tag!1395 (h!11191 rules!3103)))) 2) 0))))

(assert (=> b!588083 d!206938))

(declare-fun d!206940 () Bool)

(declare-fun res!253416 () Bool)

(declare-fun e!355511 () Bool)

(assert (=> d!206940 (=> (not res!253416) (not e!355511))))

(assert (=> d!206940 (= res!253416 (semiInverseModEq!442 (toChars!1875 (transformation!1133 (h!11191 rules!3103))) (toValue!2016 (transformation!1133 (h!11191 rules!3103)))))))

(assert (=> d!206940 (= (inv!7320 (transformation!1133 (h!11191 rules!3103))) e!355511)))

(declare-fun b!588158 () Bool)

(assert (=> b!588158 (= e!355511 (equivClasses!425 (toChars!1875 (transformation!1133 (h!11191 rules!3103))) (toValue!2016 (transformation!1133 (h!11191 rules!3103)))))))

(assert (= (and d!206940 res!253416) b!588158))

(declare-fun m!848753 () Bool)

(assert (=> d!206940 m!848753))

(declare-fun m!848755 () Bool)

(assert (=> b!588158 m!848755))

(assert (=> b!588083 d!206940))

(declare-fun d!206942 () Bool)

(declare-fun list!2419 (Conc!1850) List!5798)

(assert (=> d!206942 (= (list!2418 (charsOf!762 token!491)) (list!2419 (c!109866 (charsOf!762 token!491))))))

(declare-fun bs!70169 () Bool)

(assert (= bs!70169 d!206942))

(declare-fun m!848757 () Bool)

(assert (=> bs!70169 m!848757))

(assert (=> b!588073 d!206942))

(declare-fun d!206944 () Bool)

(declare-fun lt!249156 () BalanceConc!3708)

(assert (=> d!206944 (= (list!2418 lt!249156) (originalCharacters!1172 token!491))))

(declare-fun dynLambda!3383 (Int TokenValue!1157) BalanceConc!3708)

(assert (=> d!206944 (= lt!249156 (dynLambda!3383 (toChars!1875 (transformation!1133 (rule!1899 token!491))) (value!37157 token!491)))))

(assert (=> d!206944 (= (charsOf!762 token!491) lt!249156)))

(declare-fun b_lambda!23159 () Bool)

(assert (=> (not b_lambda!23159) (not d!206944)))

(declare-fun t!78735 () Bool)

(declare-fun tb!51475 () Bool)

(assert (=> (and b!588075 (= (toChars!1875 (transformation!1133 (h!11191 rules!3103))) (toChars!1875 (transformation!1133 (rule!1899 token!491)))) t!78735) tb!51475))

(declare-fun b!588163 () Bool)

(declare-fun e!355514 () Bool)

(declare-fun tp!183440 () Bool)

(declare-fun inv!7322 (Conc!1850) Bool)

(assert (=> b!588163 (= e!355514 (and (inv!7322 (c!109866 (dynLambda!3383 (toChars!1875 (transformation!1133 (rule!1899 token!491))) (value!37157 token!491)))) tp!183440))))

(declare-fun result!57684 () Bool)

(declare-fun inv!7323 (BalanceConc!3708) Bool)

(assert (=> tb!51475 (= result!57684 (and (inv!7323 (dynLambda!3383 (toChars!1875 (transformation!1133 (rule!1899 token!491))) (value!37157 token!491))) e!355514))))

(assert (= tb!51475 b!588163))

(declare-fun m!848759 () Bool)

(assert (=> b!588163 m!848759))

(declare-fun m!848761 () Bool)

(assert (=> tb!51475 m!848761))

(assert (=> d!206944 t!78735))

(declare-fun b_and!57943 () Bool)

(assert (= b_and!57933 (and (=> t!78735 result!57684) b_and!57943)))

(declare-fun t!78737 () Bool)

(declare-fun tb!51477 () Bool)

(assert (=> (and b!588086 (= (toChars!1875 (transformation!1133 (rule!1899 token!491))) (toChars!1875 (transformation!1133 (rule!1899 token!491)))) t!78737) tb!51477))

(declare-fun result!57688 () Bool)

(assert (= result!57688 result!57684))

(assert (=> d!206944 t!78737))

(declare-fun b_and!57945 () Bool)

(assert (= b_and!57937 (and (=> t!78737 result!57688) b_and!57945)))

(declare-fun m!848763 () Bool)

(assert (=> d!206944 m!848763))

(declare-fun m!848765 () Bool)

(assert (=> d!206944 m!848765))

(assert (=> b!588073 d!206944))

(declare-fun d!206946 () Bool)

(declare-fun res!253419 () Bool)

(declare-fun e!355517 () Bool)

(assert (=> d!206946 (=> (not res!253419) (not e!355517))))

(declare-fun rulesValid!406 (LexerInterface!1019 List!5800) Bool)

(assert (=> d!206946 (= res!253419 (rulesValid!406 thiss!22590 rules!3103))))

(assert (=> d!206946 (= (rulesInvariant!982 thiss!22590 rules!3103) e!355517)))

(declare-fun b!588166 () Bool)

(declare-datatypes ((List!5801 0))(
  ( (Nil!5791) (Cons!5791 (h!11192 String!7528) (t!78754 List!5801)) )
))
(declare-fun noDuplicateTag!406 (LexerInterface!1019 List!5800 List!5801) Bool)

(assert (=> b!588166 (= e!355517 (noDuplicateTag!406 thiss!22590 rules!3103 Nil!5791))))

(assert (= (and d!206946 res!253419) b!588166))

(declare-fun m!848767 () Bool)

(assert (=> d!206946 m!848767))

(declare-fun m!848769 () Bool)

(assert (=> b!588166 m!848769))

(assert (=> b!588079 d!206946))

(declare-fun d!206948 () Bool)

(declare-fun res!253424 () Bool)

(declare-fun e!355520 () Bool)

(assert (=> d!206948 (=> (not res!253424) (not e!355520))))

(assert (=> d!206948 (= res!253424 (not (isEmpty!4179 (originalCharacters!1172 token!491))))))

(assert (=> d!206948 (= (inv!7321 token!491) e!355520)))

(declare-fun b!588171 () Bool)

(declare-fun res!253425 () Bool)

(assert (=> b!588171 (=> (not res!253425) (not e!355520))))

(assert (=> b!588171 (= res!253425 (= (originalCharacters!1172 token!491) (list!2418 (dynLambda!3383 (toChars!1875 (transformation!1133 (rule!1899 token!491))) (value!37157 token!491)))))))

(declare-fun b!588172 () Bool)

(assert (=> b!588172 (= e!355520 (= (size!4596 token!491) (size!4597 (originalCharacters!1172 token!491))))))

(assert (= (and d!206948 res!253424) b!588171))

(assert (= (and b!588171 res!253425) b!588172))

(declare-fun b_lambda!23161 () Bool)

(assert (=> (not b_lambda!23161) (not b!588171)))

(assert (=> b!588171 t!78735))

(declare-fun b_and!57947 () Bool)

(assert (= b_and!57943 (and (=> t!78735 result!57684) b_and!57947)))

(assert (=> b!588171 t!78737))

(declare-fun b_and!57949 () Bool)

(assert (= b_and!57945 (and (=> t!78737 result!57688) b_and!57949)))

(declare-fun m!848771 () Bool)

(assert (=> d!206948 m!848771))

(assert (=> b!588171 m!848765))

(assert (=> b!588171 m!848765))

(declare-fun m!848773 () Bool)

(assert (=> b!588171 m!848773))

(declare-fun m!848775 () Bool)

(assert (=> b!588172 m!848775))

(assert (=> start!54840 d!206948))

(declare-fun d!206950 () Bool)

(declare-fun isEmpty!4181 (Option!1484) Bool)

(assert (=> d!206950 (= (isDefined!1295 lt!249104) (not (isEmpty!4181 lt!249104)))))

(declare-fun bs!70170 () Bool)

(assert (= bs!70170 d!206950))

(declare-fun m!848777 () Bool)

(assert (=> bs!70170 m!848777))

(assert (=> b!588081 d!206950))

(declare-fun b!588195 () Bool)

(declare-fun e!355531 () Option!1484)

(declare-fun call!40248 () Option!1484)

(assert (=> b!588195 (= e!355531 call!40248)))

(declare-fun bm!40243 () Bool)

(declare-fun maxPrefixOneRule!407 (LexerInterface!1019 Rule!2066 List!5798) Option!1484)

(assert (=> bm!40243 (= call!40248 (maxPrefixOneRule!407 thiss!22590 (h!11191 rules!3103) lt!249113))))

(declare-fun b!588197 () Bool)

(declare-fun res!253448 () Bool)

(declare-fun e!355529 () Bool)

(assert (=> b!588197 (=> (not res!253448) (not e!355529))))

(declare-fun lt!249171 () Option!1484)

(declare-fun apply!1387 (TokenValueInjection!2082 BalanceConc!3708) TokenValue!1157)

(declare-fun seqFromList!1310 (List!5798) BalanceConc!3708)

(assert (=> b!588197 (= res!253448 (= (value!37157 (_1!3640 (get!2214 lt!249171))) (apply!1387 (transformation!1133 (rule!1899 (_1!3640 (get!2214 lt!249171)))) (seqFromList!1310 (originalCharacters!1172 (_1!3640 (get!2214 lt!249171)))))))))

(declare-fun b!588198 () Bool)

(assert (=> b!588198 (= e!355529 (contains!1365 rules!3103 (rule!1899 (_1!3640 (get!2214 lt!249171)))))))

(declare-fun b!588199 () Bool)

(declare-fun res!253446 () Bool)

(assert (=> b!588199 (=> (not res!253446) (not e!355529))))

(declare-fun matchR!603 (Regex!1467 List!5798) Bool)

(assert (=> b!588199 (= res!253446 (matchR!603 (regex!1133 (rule!1899 (_1!3640 (get!2214 lt!249171)))) (list!2418 (charsOf!762 (_1!3640 (get!2214 lt!249171))))))))

(declare-fun b!588200 () Bool)

(declare-fun res!253444 () Bool)

(assert (=> b!588200 (=> (not res!253444) (not e!355529))))

(assert (=> b!588200 (= res!253444 (= (++!1621 (list!2418 (charsOf!762 (_1!3640 (get!2214 lt!249171)))) (_2!3640 (get!2214 lt!249171))) lt!249113))))

(declare-fun b!588201 () Bool)

(declare-fun e!355530 () Bool)

(assert (=> b!588201 (= e!355530 e!355529)))

(declare-fun res!253443 () Bool)

(assert (=> b!588201 (=> (not res!253443) (not e!355529))))

(assert (=> b!588201 (= res!253443 (isDefined!1295 lt!249171))))

(declare-fun b!588202 () Bool)

(declare-fun res!253442 () Bool)

(assert (=> b!588202 (=> (not res!253442) (not e!355529))))

(assert (=> b!588202 (= res!253442 (= (list!2418 (charsOf!762 (_1!3640 (get!2214 lt!249171)))) (originalCharacters!1172 (_1!3640 (get!2214 lt!249171)))))))

(declare-fun b!588203 () Bool)

(declare-fun lt!249172 () Option!1484)

(declare-fun lt!249169 () Option!1484)

(assert (=> b!588203 (= e!355531 (ite (and ((_ is None!1483) lt!249172) ((_ is None!1483) lt!249169)) None!1483 (ite ((_ is None!1483) lt!249169) lt!249172 (ite ((_ is None!1483) lt!249172) lt!249169 (ite (>= (size!4596 (_1!3640 (v!16360 lt!249172))) (size!4596 (_1!3640 (v!16360 lt!249169)))) lt!249172 lt!249169)))))))

(assert (=> b!588203 (= lt!249172 call!40248)))

(assert (=> b!588203 (= lt!249169 (maxPrefix!717 thiss!22590 (t!78729 rules!3103) lt!249113))))

(declare-fun d!206952 () Bool)

(assert (=> d!206952 e!355530))

(declare-fun res!253447 () Bool)

(assert (=> d!206952 (=> res!253447 e!355530)))

(assert (=> d!206952 (= res!253447 (isEmpty!4181 lt!249171))))

(assert (=> d!206952 (= lt!249171 e!355531)))

(declare-fun c!109879 () Bool)

(assert (=> d!206952 (= c!109879 (and ((_ is Cons!5790) rules!3103) ((_ is Nil!5790) (t!78729 rules!3103))))))

(declare-fun lt!249168 () Unit!10510)

(declare-fun lt!249170 () Unit!10510)

(assert (=> d!206952 (= lt!249168 lt!249170)))

(assert (=> d!206952 (isPrefix!761 lt!249113 lt!249113)))

(assert (=> d!206952 (= lt!249170 (lemmaIsPrefixRefl!497 lt!249113 lt!249113))))

(assert (=> d!206952 (rulesValidInductive!412 thiss!22590 rules!3103)))

(assert (=> d!206952 (= (maxPrefix!717 thiss!22590 rules!3103 lt!249113) lt!249171)))

(declare-fun b!588196 () Bool)

(declare-fun res!253445 () Bool)

(assert (=> b!588196 (=> (not res!253445) (not e!355529))))

(assert (=> b!588196 (= res!253445 (< (size!4597 (_2!3640 (get!2214 lt!249171))) (size!4597 lt!249113)))))

(assert (= (and d!206952 c!109879) b!588195))

(assert (= (and d!206952 (not c!109879)) b!588203))

(assert (= (or b!588195 b!588203) bm!40243))

(assert (= (and d!206952 (not res!253447)) b!588201))

(assert (= (and b!588201 res!253443) b!588202))

(assert (= (and b!588202 res!253442) b!588196))

(assert (= (and b!588196 res!253445) b!588200))

(assert (= (and b!588200 res!253444) b!588197))

(assert (= (and b!588197 res!253448) b!588199))

(assert (= (and b!588199 res!253446) b!588198))

(declare-fun m!848785 () Bool)

(assert (=> b!588203 m!848785))

(declare-fun m!848787 () Bool)

(assert (=> b!588196 m!848787))

(declare-fun m!848789 () Bool)

(assert (=> b!588196 m!848789))

(declare-fun m!848791 () Bool)

(assert (=> b!588196 m!848791))

(declare-fun m!848793 () Bool)

(assert (=> b!588201 m!848793))

(declare-fun m!848795 () Bool)

(assert (=> d!206952 m!848795))

(declare-fun m!848797 () Bool)

(assert (=> d!206952 m!848797))

(declare-fun m!848799 () Bool)

(assert (=> d!206952 m!848799))

(assert (=> d!206952 m!848615))

(assert (=> b!588200 m!848787))

(declare-fun m!848801 () Bool)

(assert (=> b!588200 m!848801))

(assert (=> b!588200 m!848801))

(declare-fun m!848803 () Bool)

(assert (=> b!588200 m!848803))

(assert (=> b!588200 m!848803))

(declare-fun m!848805 () Bool)

(assert (=> b!588200 m!848805))

(assert (=> b!588199 m!848787))

(assert (=> b!588199 m!848801))

(assert (=> b!588199 m!848801))

(assert (=> b!588199 m!848803))

(assert (=> b!588199 m!848803))

(declare-fun m!848807 () Bool)

(assert (=> b!588199 m!848807))

(assert (=> b!588202 m!848787))

(assert (=> b!588202 m!848801))

(assert (=> b!588202 m!848801))

(assert (=> b!588202 m!848803))

(declare-fun m!848809 () Bool)

(assert (=> bm!40243 m!848809))

(assert (=> b!588198 m!848787))

(declare-fun m!848811 () Bool)

(assert (=> b!588198 m!848811))

(assert (=> b!588197 m!848787))

(declare-fun m!848813 () Bool)

(assert (=> b!588197 m!848813))

(assert (=> b!588197 m!848813))

(declare-fun m!848815 () Bool)

(assert (=> b!588197 m!848815))

(assert (=> b!588081 d!206952))

(declare-fun b!588218 () Bool)

(declare-fun res!253456 () Bool)

(declare-fun e!355540 () Bool)

(assert (=> b!588218 (=> (not res!253456) (not e!355540))))

(declare-fun lt!249176 () List!5798)

(assert (=> b!588218 (= res!253456 (= (size!4597 lt!249176) (+ (size!4597 input!2705) (size!4597 suffix!1342))))))

(declare-fun b!588219 () Bool)

(assert (=> b!588219 (= e!355540 (or (not (= suffix!1342 Nil!5788)) (= lt!249176 input!2705)))))

(declare-fun b!588217 () Bool)

(declare-fun e!355541 () List!5798)

(assert (=> b!588217 (= e!355541 (Cons!5788 (h!11189 input!2705) (++!1621 (t!78727 input!2705) suffix!1342)))))

(declare-fun b!588216 () Bool)

(assert (=> b!588216 (= e!355541 suffix!1342)))

(declare-fun d!206958 () Bool)

(assert (=> d!206958 e!355540))

(declare-fun res!253457 () Bool)

(assert (=> d!206958 (=> (not res!253457) (not e!355540))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1035 (List!5798) (InoxSet C!3856))

(assert (=> d!206958 (= res!253457 (= (content!1035 lt!249176) ((_ map or) (content!1035 input!2705) (content!1035 suffix!1342))))))

(assert (=> d!206958 (= lt!249176 e!355541)))

(declare-fun c!109882 () Bool)

(assert (=> d!206958 (= c!109882 ((_ is Nil!5788) input!2705))))

(assert (=> d!206958 (= (++!1621 input!2705 suffix!1342) lt!249176)))

(assert (= (and d!206958 c!109882) b!588216))

(assert (= (and d!206958 (not c!109882)) b!588217))

(assert (= (and d!206958 res!253457) b!588218))

(assert (= (and b!588218 res!253456) b!588219))

(declare-fun m!848833 () Bool)

(assert (=> b!588218 m!848833))

(declare-fun m!848835 () Bool)

(assert (=> b!588218 m!848835))

(declare-fun m!848837 () Bool)

(assert (=> b!588218 m!848837))

(declare-fun m!848839 () Bool)

(assert (=> b!588217 m!848839))

(declare-fun m!848841 () Bool)

(assert (=> d!206958 m!848841))

(declare-fun m!848843 () Bool)

(assert (=> d!206958 m!848843))

(declare-fun m!848845 () Bool)

(assert (=> d!206958 m!848845))

(assert (=> b!588081 d!206958))

(declare-fun d!206968 () Bool)

(declare-fun lt!249179 () Int)

(assert (=> d!206968 (>= lt!249179 0)))

(declare-fun e!355544 () Int)

(assert (=> d!206968 (= lt!249179 e!355544)))

(declare-fun c!109885 () Bool)

(assert (=> d!206968 (= c!109885 ((_ is Nil!5788) lt!249109))))

(assert (=> d!206968 (= (size!4597 lt!249109) lt!249179)))

(declare-fun b!588224 () Bool)

(assert (=> b!588224 (= e!355544 0)))

(declare-fun b!588225 () Bool)

(assert (=> b!588225 (= e!355544 (+ 1 (size!4597 (t!78727 lt!249109))))))

(assert (= (and d!206968 c!109885) b!588224))

(assert (= (and d!206968 (not c!109885)) b!588225))

(declare-fun m!848847 () Bool)

(assert (=> b!588225 m!848847))

(assert (=> b!588070 d!206968))

(declare-fun b!588228 () Bool)

(declare-fun res!253458 () Bool)

(declare-fun e!355545 () Bool)

(assert (=> b!588228 (=> (not res!253458) (not e!355545))))

(declare-fun lt!249180 () List!5798)

(assert (=> b!588228 (= res!253458 (= (size!4597 lt!249180) (+ (size!4597 lt!249115) (size!4597 (_2!3640 (v!16360 lt!249112))))))))

(declare-fun b!588229 () Bool)

(assert (=> b!588229 (= e!355545 (or (not (= (_2!3640 (v!16360 lt!249112)) Nil!5788)) (= lt!249180 lt!249115)))))

(declare-fun b!588227 () Bool)

(declare-fun e!355546 () List!5798)

(assert (=> b!588227 (= e!355546 (Cons!5788 (h!11189 lt!249115) (++!1621 (t!78727 lt!249115) (_2!3640 (v!16360 lt!249112)))))))

(declare-fun b!588226 () Bool)

(assert (=> b!588226 (= e!355546 (_2!3640 (v!16360 lt!249112)))))

(declare-fun d!206970 () Bool)

(assert (=> d!206970 e!355545))

(declare-fun res!253459 () Bool)

(assert (=> d!206970 (=> (not res!253459) (not e!355545))))

(assert (=> d!206970 (= res!253459 (= (content!1035 lt!249180) ((_ map or) (content!1035 lt!249115) (content!1035 (_2!3640 (v!16360 lt!249112))))))))

(assert (=> d!206970 (= lt!249180 e!355546)))

(declare-fun c!109886 () Bool)

(assert (=> d!206970 (= c!109886 ((_ is Nil!5788) lt!249115))))

(assert (=> d!206970 (= (++!1621 lt!249115 (_2!3640 (v!16360 lt!249112))) lt!249180)))

(assert (= (and d!206970 c!109886) b!588226))

(assert (= (and d!206970 (not c!109886)) b!588227))

(assert (= (and d!206970 res!253459) b!588228))

(assert (= (and b!588228 res!253458) b!588229))

(declare-fun m!848849 () Bool)

(assert (=> b!588228 m!848849))

(assert (=> b!588228 m!848637))

(declare-fun m!848851 () Bool)

(assert (=> b!588228 m!848851))

(declare-fun m!848853 () Bool)

(assert (=> b!588227 m!848853))

(declare-fun m!848855 () Bool)

(assert (=> d!206970 m!848855))

(declare-fun m!848857 () Bool)

(assert (=> d!206970 m!848857))

(declare-fun m!848859 () Bool)

(assert (=> d!206970 m!848859))

(assert (=> b!588070 d!206970))

(declare-fun d!206972 () Bool)

(assert (=> d!206972 (and (= lt!249109 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!249183 () Unit!10510)

(declare-fun choose!4224 (List!5798 List!5798 List!5798 List!5798) Unit!10510)

(assert (=> d!206972 (= lt!249183 (choose!4224 lt!249109 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!206972 (= (++!1621 lt!249109 suffix!1342) (++!1621 input!2705 suffix!1342))))

(assert (=> d!206972 (= (lemmaConcatSameAndSameSizesThenSameLists!206 lt!249109 suffix!1342 input!2705 suffix!1342) lt!249183)))

(declare-fun bs!70173 () Bool)

(assert (= bs!70173 d!206972))

(declare-fun m!848861 () Bool)

(assert (=> bs!70173 m!848861))

(assert (=> bs!70173 m!848623))

(assert (=> bs!70173 m!848671))

(assert (=> b!588070 d!206972))

(declare-fun d!206974 () Bool)

(declare-fun lt!249184 () BalanceConc!3708)

(assert (=> d!206974 (= (list!2418 lt!249184) (originalCharacters!1172 (_1!3640 (v!16360 lt!249112))))))

(assert (=> d!206974 (= lt!249184 (dynLambda!3383 (toChars!1875 (transformation!1133 (rule!1899 (_1!3640 (v!16360 lt!249112))))) (value!37157 (_1!3640 (v!16360 lt!249112)))))))

(assert (=> d!206974 (= (charsOf!762 (_1!3640 (v!16360 lt!249112))) lt!249184)))

(declare-fun b_lambda!23165 () Bool)

(assert (=> (not b_lambda!23165) (not d!206974)))

(declare-fun tb!51483 () Bool)

(declare-fun t!78743 () Bool)

(assert (=> (and b!588075 (= (toChars!1875 (transformation!1133 (h!11191 rules!3103))) (toChars!1875 (transformation!1133 (rule!1899 (_1!3640 (v!16360 lt!249112)))))) t!78743) tb!51483))

(declare-fun b!588230 () Bool)

(declare-fun e!355547 () Bool)

(declare-fun tp!183442 () Bool)

(assert (=> b!588230 (= e!355547 (and (inv!7322 (c!109866 (dynLambda!3383 (toChars!1875 (transformation!1133 (rule!1899 (_1!3640 (v!16360 lt!249112))))) (value!37157 (_1!3640 (v!16360 lt!249112)))))) tp!183442))))

(declare-fun result!57694 () Bool)

(assert (=> tb!51483 (= result!57694 (and (inv!7323 (dynLambda!3383 (toChars!1875 (transformation!1133 (rule!1899 (_1!3640 (v!16360 lt!249112))))) (value!37157 (_1!3640 (v!16360 lt!249112))))) e!355547))))

(assert (= tb!51483 b!588230))

(declare-fun m!848863 () Bool)

(assert (=> b!588230 m!848863))

(declare-fun m!848865 () Bool)

(assert (=> tb!51483 m!848865))

(assert (=> d!206974 t!78743))

(declare-fun b_and!57955 () Bool)

(assert (= b_and!57947 (and (=> t!78743 result!57694) b_and!57955)))

(declare-fun tb!51485 () Bool)

(declare-fun t!78745 () Bool)

(assert (=> (and b!588086 (= (toChars!1875 (transformation!1133 (rule!1899 token!491))) (toChars!1875 (transformation!1133 (rule!1899 (_1!3640 (v!16360 lt!249112)))))) t!78745) tb!51485))

(declare-fun result!57696 () Bool)

(assert (= result!57696 result!57694))

(assert (=> d!206974 t!78745))

(declare-fun b_and!57957 () Bool)

(assert (= b_and!57949 (and (=> t!78745 result!57696) b_and!57957)))

(declare-fun m!848867 () Bool)

(assert (=> d!206974 m!848867))

(declare-fun m!848869 () Bool)

(assert (=> d!206974 m!848869))

(assert (=> b!588070 d!206974))

(declare-fun d!206976 () Bool)

(assert (=> d!206976 (isPrefix!761 lt!249115 (++!1621 lt!249115 (_2!3640 (v!16360 lt!249112))))))

(declare-fun lt!249187 () Unit!10510)

(declare-fun choose!4225 (List!5798 List!5798) Unit!10510)

(assert (=> d!206976 (= lt!249187 (choose!4225 lt!249115 (_2!3640 (v!16360 lt!249112))))))

(assert (=> d!206976 (= (lemmaConcatTwoListThenFirstIsPrefix!606 lt!249115 (_2!3640 (v!16360 lt!249112))) lt!249187)))

(declare-fun bs!70174 () Bool)

(assert (= bs!70174 d!206976))

(assert (=> bs!70174 m!848639))

(assert (=> bs!70174 m!848639))

(assert (=> bs!70174 m!848645))

(declare-fun m!848871 () Bool)

(assert (=> bs!70174 m!848871))

(assert (=> b!588070 d!206976))

(declare-fun b!588240 () Bool)

(declare-fun res!253468 () Bool)

(declare-fun e!355554 () Bool)

(assert (=> b!588240 (=> (not res!253468) (not e!355554))))

(declare-fun head!1242 (List!5798) C!3856)

(assert (=> b!588240 (= res!253468 (= (head!1242 input!2705) (head!1242 input!2705)))))

(declare-fun b!588242 () Bool)

(declare-fun e!355556 () Bool)

(assert (=> b!588242 (= e!355556 (>= (size!4597 input!2705) (size!4597 input!2705)))))

(declare-fun b!588239 () Bool)

(declare-fun e!355555 () Bool)

(assert (=> b!588239 (= e!355555 e!355554)))

(declare-fun res!253470 () Bool)

(assert (=> b!588239 (=> (not res!253470) (not e!355554))))

(assert (=> b!588239 (= res!253470 (not ((_ is Nil!5788) input!2705)))))

(declare-fun d!206978 () Bool)

(assert (=> d!206978 e!355556))

(declare-fun res!253471 () Bool)

(assert (=> d!206978 (=> res!253471 e!355556)))

(declare-fun lt!249190 () Bool)

(assert (=> d!206978 (= res!253471 (not lt!249190))))

(assert (=> d!206978 (= lt!249190 e!355555)))

(declare-fun res!253469 () Bool)

(assert (=> d!206978 (=> res!253469 e!355555)))

(assert (=> d!206978 (= res!253469 ((_ is Nil!5788) input!2705))))

(assert (=> d!206978 (= (isPrefix!761 input!2705 input!2705) lt!249190)))

(declare-fun b!588241 () Bool)

(declare-fun tail!771 (List!5798) List!5798)

(assert (=> b!588241 (= e!355554 (isPrefix!761 (tail!771 input!2705) (tail!771 input!2705)))))

(assert (= (and d!206978 (not res!253469)) b!588239))

(assert (= (and b!588239 res!253470) b!588240))

(assert (= (and b!588240 res!253468) b!588241))

(assert (= (and d!206978 (not res!253471)) b!588242))

(declare-fun m!848873 () Bool)

(assert (=> b!588240 m!848873))

(assert (=> b!588240 m!848873))

(assert (=> b!588242 m!848835))

(assert (=> b!588242 m!848835))

(declare-fun m!848875 () Bool)

(assert (=> b!588241 m!848875))

(assert (=> b!588241 m!848875))

(assert (=> b!588241 m!848875))

(assert (=> b!588241 m!848875))

(declare-fun m!848877 () Bool)

(assert (=> b!588241 m!848877))

(assert (=> b!588070 d!206978))

(declare-fun d!206980 () Bool)

(assert (=> d!206980 (= (list!2418 (charsOf!762 (_1!3640 (v!16360 lt!249112)))) (list!2419 (c!109866 (charsOf!762 (_1!3640 (v!16360 lt!249112))))))))

(declare-fun bs!70175 () Bool)

(assert (= bs!70175 d!206980))

(declare-fun m!848879 () Bool)

(assert (=> bs!70175 m!848879))

(assert (=> b!588070 d!206980))

(declare-fun d!206982 () Bool)

(assert (=> d!206982 (= (size!4596 (_1!3640 (v!16360 lt!249112))) (size!4597 (originalCharacters!1172 (_1!3640 (v!16360 lt!249112)))))))

(declare-fun Unit!10517 () Unit!10510)

(assert (=> d!206982 (= (lemmaCharactersSize!192 (_1!3640 (v!16360 lt!249112))) Unit!10517)))

(declare-fun bs!70176 () Bool)

(assert (= bs!70176 d!206982))

(declare-fun m!848881 () Bool)

(assert (=> bs!70176 m!848881))

(assert (=> b!588070 d!206982))

(declare-fun d!206984 () Bool)

(assert (=> d!206984 (= (_2!3640 (v!16360 lt!249112)) lt!249105)))

(declare-fun lt!249193 () Unit!10510)

(declare-fun choose!4226 (List!5798 List!5798 List!5798 List!5798 List!5798) Unit!10510)

(assert (=> d!206984 (= lt!249193 (choose!4226 lt!249115 (_2!3640 (v!16360 lt!249112)) lt!249115 lt!249105 input!2705))))

(assert (=> d!206984 (isPrefix!761 lt!249115 input!2705)))

(assert (=> d!206984 (= (lemmaSamePrefixThenSameSuffix!474 lt!249115 (_2!3640 (v!16360 lt!249112)) lt!249115 lt!249105 input!2705) lt!249193)))

(declare-fun bs!70177 () Bool)

(assert (= bs!70177 d!206984))

(declare-fun m!848883 () Bool)

(assert (=> bs!70177 m!848883))

(declare-fun m!848885 () Bool)

(assert (=> bs!70177 m!848885))

(assert (=> b!588070 d!206984))

(declare-fun d!206986 () Bool)

(assert (=> d!206986 (isPrefix!761 input!2705 input!2705)))

(declare-fun lt!249196 () Unit!10510)

(declare-fun choose!4227 (List!5798 List!5798) Unit!10510)

(assert (=> d!206986 (= lt!249196 (choose!4227 input!2705 input!2705))))

(assert (=> d!206986 (= (lemmaIsPrefixRefl!497 input!2705 input!2705) lt!249196)))

(declare-fun bs!70178 () Bool)

(assert (= bs!70178 d!206986))

(assert (=> bs!70178 m!848657))

(declare-fun m!848887 () Bool)

(assert (=> bs!70178 m!848887))

(assert (=> b!588070 d!206986))

(declare-fun d!206988 () Bool)

(declare-fun lt!249205 () Bool)

(declare-fun content!1037 (List!5800) (InoxSet Rule!2066))

(assert (=> d!206988 (= lt!249205 (select (content!1037 rules!3103) (rule!1899 (_1!3640 (v!16360 lt!249112)))))))

(declare-fun e!355561 () Bool)

(assert (=> d!206988 (= lt!249205 e!355561)))

(declare-fun res!253476 () Bool)

(assert (=> d!206988 (=> (not res!253476) (not e!355561))))

(assert (=> d!206988 (= res!253476 ((_ is Cons!5790) rules!3103))))

(assert (=> d!206988 (= (contains!1365 rules!3103 (rule!1899 (_1!3640 (v!16360 lt!249112)))) lt!249205)))

(declare-fun b!588249 () Bool)

(declare-fun e!355562 () Bool)

(assert (=> b!588249 (= e!355561 e!355562)))

(declare-fun res!253477 () Bool)

(assert (=> b!588249 (=> res!253477 e!355562)))

(assert (=> b!588249 (= res!253477 (= (h!11191 rules!3103) (rule!1899 (_1!3640 (v!16360 lt!249112)))))))

(declare-fun b!588250 () Bool)

(assert (=> b!588250 (= e!355562 (contains!1365 (t!78729 rules!3103) (rule!1899 (_1!3640 (v!16360 lt!249112)))))))

(assert (= (and d!206988 res!253476) b!588249))

(assert (= (and b!588249 (not res!253477)) b!588250))

(declare-fun m!848889 () Bool)

(assert (=> d!206988 m!848889))

(declare-fun m!848891 () Bool)

(assert (=> d!206988 m!848891))

(declare-fun m!848893 () Bool)

(assert (=> b!588250 m!848893))

(assert (=> b!588070 d!206988))

(declare-fun d!206990 () Bool)

(assert (=> d!206990 (= (size!4596 token!491) (size!4597 (originalCharacters!1172 token!491)))))

(declare-fun Unit!10518 () Unit!10510)

(assert (=> d!206990 (= (lemmaCharactersSize!192 token!491) Unit!10518)))

(declare-fun bs!70179 () Bool)

(assert (= bs!70179 d!206990))

(assert (=> bs!70179 m!848775))

(assert (=> b!588070 d!206990))

(declare-fun b!588254 () Bool)

(declare-fun res!253478 () Bool)

(declare-fun e!355565 () Bool)

(assert (=> b!588254 (=> (not res!253478) (not e!355565))))

(assert (=> b!588254 (= res!253478 (= (head!1242 lt!249115) (head!1242 (++!1621 lt!249115 (_2!3640 (v!16360 lt!249112))))))))

(declare-fun b!588256 () Bool)

(declare-fun e!355567 () Bool)

(assert (=> b!588256 (= e!355567 (>= (size!4597 (++!1621 lt!249115 (_2!3640 (v!16360 lt!249112)))) (size!4597 lt!249115)))))

(declare-fun b!588253 () Bool)

(declare-fun e!355566 () Bool)

(assert (=> b!588253 (= e!355566 e!355565)))

(declare-fun res!253480 () Bool)

(assert (=> b!588253 (=> (not res!253480) (not e!355565))))

(assert (=> b!588253 (= res!253480 (not ((_ is Nil!5788) (++!1621 lt!249115 (_2!3640 (v!16360 lt!249112))))))))

(declare-fun d!206992 () Bool)

(assert (=> d!206992 e!355567))

(declare-fun res!253481 () Bool)

(assert (=> d!206992 (=> res!253481 e!355567)))

(declare-fun lt!249210 () Bool)

(assert (=> d!206992 (= res!253481 (not lt!249210))))

(assert (=> d!206992 (= lt!249210 e!355566)))

(declare-fun res!253479 () Bool)

(assert (=> d!206992 (=> res!253479 e!355566)))

(assert (=> d!206992 (= res!253479 ((_ is Nil!5788) lt!249115))))

(assert (=> d!206992 (= (isPrefix!761 lt!249115 (++!1621 lt!249115 (_2!3640 (v!16360 lt!249112)))) lt!249210)))

(declare-fun b!588255 () Bool)

(assert (=> b!588255 (= e!355565 (isPrefix!761 (tail!771 lt!249115) (tail!771 (++!1621 lt!249115 (_2!3640 (v!16360 lt!249112))))))))

(assert (= (and d!206992 (not res!253479)) b!588253))

(assert (= (and b!588253 res!253480) b!588254))

(assert (= (and b!588254 res!253478) b!588255))

(assert (= (and d!206992 (not res!253481)) b!588256))

(declare-fun m!848895 () Bool)

(assert (=> b!588254 m!848895))

(assert (=> b!588254 m!848639))

(declare-fun m!848897 () Bool)

(assert (=> b!588254 m!848897))

(assert (=> b!588256 m!848639))

(declare-fun m!848899 () Bool)

(assert (=> b!588256 m!848899))

(assert (=> b!588256 m!848637))

(declare-fun m!848901 () Bool)

(assert (=> b!588255 m!848901))

(assert (=> b!588255 m!848639))

(declare-fun m!848903 () Bool)

(assert (=> b!588255 m!848903))

(assert (=> b!588255 m!848901))

(assert (=> b!588255 m!848903))

(declare-fun m!848905 () Bool)

(assert (=> b!588255 m!848905))

(assert (=> b!588070 d!206992))

(declare-fun d!206994 () Bool)

(declare-fun lt!249211 () Int)

(assert (=> d!206994 (>= lt!249211 0)))

(declare-fun e!355570 () Int)

(assert (=> d!206994 (= lt!249211 e!355570)))

(declare-fun c!109889 () Bool)

(assert (=> d!206994 (= c!109889 ((_ is Nil!5788) lt!249115))))

(assert (=> d!206994 (= (size!4597 lt!249115) lt!249211)))

(declare-fun b!588258 () Bool)

(assert (=> b!588258 (= e!355570 0)))

(declare-fun b!588260 () Bool)

(assert (=> b!588260 (= e!355570 (+ 1 (size!4597 (t!78727 lt!249115))))))

(assert (= (and d!206994 c!109889) b!588258))

(assert (= (and d!206994 (not c!109889)) b!588260))

(declare-fun m!848907 () Bool)

(assert (=> b!588260 m!848907))

(assert (=> b!588070 d!206994))

(declare-fun d!206996 () Bool)

(declare-fun lt!249214 () List!5798)

(assert (=> d!206996 (= (++!1621 lt!249115 lt!249214) input!2705)))

(declare-fun e!355575 () List!5798)

(assert (=> d!206996 (= lt!249214 e!355575)))

(declare-fun c!109892 () Bool)

(assert (=> d!206996 (= c!109892 ((_ is Cons!5788) lt!249115))))

(assert (=> d!206996 (>= (size!4597 input!2705) (size!4597 lt!249115))))

(assert (=> d!206996 (= (getSuffix!278 input!2705 lt!249115) lt!249214)))

(declare-fun b!588277 () Bool)

(assert (=> b!588277 (= e!355575 (getSuffix!278 (tail!771 input!2705) (t!78727 lt!249115)))))

(declare-fun b!588278 () Bool)

(assert (=> b!588278 (= e!355575 input!2705)))

(assert (= (and d!206996 c!109892) b!588277))

(assert (= (and d!206996 (not c!109892)) b!588278))

(declare-fun m!848909 () Bool)

(assert (=> d!206996 m!848909))

(assert (=> d!206996 m!848835))

(assert (=> d!206996 m!848637))

(assert (=> b!588277 m!848875))

(assert (=> b!588277 m!848875))

(declare-fun m!848911 () Bool)

(assert (=> b!588277 m!848911))

(assert (=> b!588070 d!206996))

(declare-fun d!206998 () Bool)

(assert (=> d!206998 (= (isEmpty!4179 input!2705) ((_ is Nil!5788) input!2705))))

(assert (=> b!588076 d!206998))

(declare-fun d!207000 () Bool)

(assert (=> d!207000 (= (isEmpty!4180 rules!3103) ((_ is Nil!5790) rules!3103))))

(assert (=> b!588077 d!207000))

(declare-fun b!588298 () Bool)

(declare-fun e!355585 () Bool)

(declare-fun inv!17 (TokenValue!1157) Bool)

(assert (=> b!588298 (= e!355585 (inv!17 (value!37157 token!491)))))

(declare-fun b!588299 () Bool)

(declare-fun e!355586 () Bool)

(declare-fun inv!15 (TokenValue!1157) Bool)

(assert (=> b!588299 (= e!355586 (inv!15 (value!37157 token!491)))))

(declare-fun d!207002 () Bool)

(declare-fun c!109899 () Bool)

(assert (=> d!207002 (= c!109899 ((_ is IntegerValue!3471) (value!37157 token!491)))))

(declare-fun e!355587 () Bool)

(assert (=> d!207002 (= (inv!21 (value!37157 token!491)) e!355587)))

(declare-fun b!588300 () Bool)

(assert (=> b!588300 (= e!355587 e!355585)))

(declare-fun c!109898 () Bool)

(assert (=> b!588300 (= c!109898 ((_ is IntegerValue!3472) (value!37157 token!491)))))

(declare-fun b!588301 () Bool)

(declare-fun inv!16 (TokenValue!1157) Bool)

(assert (=> b!588301 (= e!355587 (inv!16 (value!37157 token!491)))))

(declare-fun b!588302 () Bool)

(declare-fun res!253505 () Bool)

(assert (=> b!588302 (=> res!253505 e!355586)))

(assert (=> b!588302 (= res!253505 (not ((_ is IntegerValue!3473) (value!37157 token!491))))))

(assert (=> b!588302 (= e!355585 e!355586)))

(assert (= (and d!207002 c!109899) b!588301))

(assert (= (and d!207002 (not c!109899)) b!588300))

(assert (= (and b!588300 c!109898) b!588298))

(assert (= (and b!588300 (not c!109898)) b!588302))

(assert (= (and b!588302 (not res!253505)) b!588299))

(declare-fun m!848931 () Bool)

(assert (=> b!588298 m!848931))

(declare-fun m!848933 () Bool)

(assert (=> b!588299 m!848933))

(declare-fun m!848935 () Bool)

(assert (=> b!588301 m!848935))

(assert (=> b!588088 d!207002))

(declare-fun b!588303 () Bool)

(declare-fun e!355590 () Option!1484)

(declare-fun call!40252 () Option!1484)

(assert (=> b!588303 (= e!355590 call!40252)))

(declare-fun bm!40247 () Bool)

(assert (=> bm!40247 (= call!40252 (maxPrefixOneRule!407 thiss!22590 (h!11191 rules!3103) input!2705))))

(declare-fun b!588305 () Bool)

(declare-fun res!253512 () Bool)

(declare-fun e!355588 () Bool)

(assert (=> b!588305 (=> (not res!253512) (not e!355588))))

(declare-fun lt!249223 () Option!1484)

(assert (=> b!588305 (= res!253512 (= (value!37157 (_1!3640 (get!2214 lt!249223))) (apply!1387 (transformation!1133 (rule!1899 (_1!3640 (get!2214 lt!249223)))) (seqFromList!1310 (originalCharacters!1172 (_1!3640 (get!2214 lt!249223)))))))))

(declare-fun b!588306 () Bool)

(assert (=> b!588306 (= e!355588 (contains!1365 rules!3103 (rule!1899 (_1!3640 (get!2214 lt!249223)))))))

(declare-fun b!588307 () Bool)

(declare-fun res!253510 () Bool)

(assert (=> b!588307 (=> (not res!253510) (not e!355588))))

(assert (=> b!588307 (= res!253510 (matchR!603 (regex!1133 (rule!1899 (_1!3640 (get!2214 lt!249223)))) (list!2418 (charsOf!762 (_1!3640 (get!2214 lt!249223))))))))

(declare-fun b!588308 () Bool)

(declare-fun res!253508 () Bool)

(assert (=> b!588308 (=> (not res!253508) (not e!355588))))

(assert (=> b!588308 (= res!253508 (= (++!1621 (list!2418 (charsOf!762 (_1!3640 (get!2214 lt!249223)))) (_2!3640 (get!2214 lt!249223))) input!2705))))

(declare-fun b!588309 () Bool)

(declare-fun e!355589 () Bool)

(assert (=> b!588309 (= e!355589 e!355588)))

(declare-fun res!253507 () Bool)

(assert (=> b!588309 (=> (not res!253507) (not e!355588))))

(assert (=> b!588309 (= res!253507 (isDefined!1295 lt!249223))))

(declare-fun b!588310 () Bool)

(declare-fun res!253506 () Bool)

(assert (=> b!588310 (=> (not res!253506) (not e!355588))))

(assert (=> b!588310 (= res!253506 (= (list!2418 (charsOf!762 (_1!3640 (get!2214 lt!249223)))) (originalCharacters!1172 (_1!3640 (get!2214 lt!249223)))))))

(declare-fun b!588311 () Bool)

(declare-fun lt!249224 () Option!1484)

(declare-fun lt!249221 () Option!1484)

(assert (=> b!588311 (= e!355590 (ite (and ((_ is None!1483) lt!249224) ((_ is None!1483) lt!249221)) None!1483 (ite ((_ is None!1483) lt!249221) lt!249224 (ite ((_ is None!1483) lt!249224) lt!249221 (ite (>= (size!4596 (_1!3640 (v!16360 lt!249224))) (size!4596 (_1!3640 (v!16360 lt!249221)))) lt!249224 lt!249221)))))))

(assert (=> b!588311 (= lt!249224 call!40252)))

(assert (=> b!588311 (= lt!249221 (maxPrefix!717 thiss!22590 (t!78729 rules!3103) input!2705))))

(declare-fun d!207004 () Bool)

(assert (=> d!207004 e!355589))

(declare-fun res!253511 () Bool)

(assert (=> d!207004 (=> res!253511 e!355589)))

(assert (=> d!207004 (= res!253511 (isEmpty!4181 lt!249223))))

(assert (=> d!207004 (= lt!249223 e!355590)))

(declare-fun c!109900 () Bool)

(assert (=> d!207004 (= c!109900 (and ((_ is Cons!5790) rules!3103) ((_ is Nil!5790) (t!78729 rules!3103))))))

(declare-fun lt!249220 () Unit!10510)

(declare-fun lt!249222 () Unit!10510)

(assert (=> d!207004 (= lt!249220 lt!249222)))

(assert (=> d!207004 (isPrefix!761 input!2705 input!2705)))

(assert (=> d!207004 (= lt!249222 (lemmaIsPrefixRefl!497 input!2705 input!2705))))

(assert (=> d!207004 (rulesValidInductive!412 thiss!22590 rules!3103)))

(assert (=> d!207004 (= (maxPrefix!717 thiss!22590 rules!3103 input!2705) lt!249223)))

(declare-fun b!588304 () Bool)

(declare-fun res!253509 () Bool)

(assert (=> b!588304 (=> (not res!253509) (not e!355588))))

(assert (=> b!588304 (= res!253509 (< (size!4597 (_2!3640 (get!2214 lt!249223))) (size!4597 input!2705)))))

(assert (= (and d!207004 c!109900) b!588303))

(assert (= (and d!207004 (not c!109900)) b!588311))

(assert (= (or b!588303 b!588311) bm!40247))

(assert (= (and d!207004 (not res!253511)) b!588309))

(assert (= (and b!588309 res!253507) b!588310))

(assert (= (and b!588310 res!253506) b!588304))

(assert (= (and b!588304 res!253509) b!588308))

(assert (= (and b!588308 res!253508) b!588305))

(assert (= (and b!588305 res!253512) b!588307))

(assert (= (and b!588307 res!253510) b!588306))

(declare-fun m!848963 () Bool)

(assert (=> b!588311 m!848963))

(declare-fun m!848965 () Bool)

(assert (=> b!588304 m!848965))

(declare-fun m!848967 () Bool)

(assert (=> b!588304 m!848967))

(assert (=> b!588304 m!848835))

(declare-fun m!848969 () Bool)

(assert (=> b!588309 m!848969))

(declare-fun m!848971 () Bool)

(assert (=> d!207004 m!848971))

(assert (=> d!207004 m!848657))

(assert (=> d!207004 m!848649))

(assert (=> d!207004 m!848615))

(assert (=> b!588308 m!848965))

(declare-fun m!848973 () Bool)

(assert (=> b!588308 m!848973))

(assert (=> b!588308 m!848973))

(declare-fun m!848975 () Bool)

(assert (=> b!588308 m!848975))

(assert (=> b!588308 m!848975))

(declare-fun m!848977 () Bool)

(assert (=> b!588308 m!848977))

(assert (=> b!588307 m!848965))

(assert (=> b!588307 m!848973))

(assert (=> b!588307 m!848973))

(assert (=> b!588307 m!848975))

(assert (=> b!588307 m!848975))

(declare-fun m!848979 () Bool)

(assert (=> b!588307 m!848979))

(assert (=> b!588310 m!848965))

(assert (=> b!588310 m!848973))

(assert (=> b!588310 m!848973))

(assert (=> b!588310 m!848975))

(declare-fun m!848981 () Bool)

(assert (=> bm!40247 m!848981))

(assert (=> b!588306 m!848965))

(declare-fun m!848983 () Bool)

(assert (=> b!588306 m!848983))

(assert (=> b!588305 m!848965))

(declare-fun m!848985 () Bool)

(assert (=> b!588305 m!848985))

(assert (=> b!588305 m!848985))

(declare-fun m!848987 () Bool)

(assert (=> b!588305 m!848987))

(assert (=> b!588089 d!207004))

(declare-fun b!588327 () Bool)

(declare-fun res!253522 () Bool)

(declare-fun e!355596 () Bool)

(assert (=> b!588327 (=> (not res!253522) (not e!355596))))

(declare-fun lt!249231 () List!5798)

(assert (=> b!588327 (= res!253522 (= (size!4597 lt!249231) (+ (size!4597 lt!249109) (size!4597 suffix!1342))))))

(declare-fun b!588328 () Bool)

(assert (=> b!588328 (= e!355596 (or (not (= suffix!1342 Nil!5788)) (= lt!249231 lt!249109)))))

(declare-fun b!588326 () Bool)

(declare-fun e!355597 () List!5798)

(assert (=> b!588326 (= e!355597 (Cons!5788 (h!11189 lt!249109) (++!1621 (t!78727 lt!249109) suffix!1342)))))

(declare-fun b!588325 () Bool)

(assert (=> b!588325 (= e!355597 suffix!1342)))

(declare-fun d!207010 () Bool)

(assert (=> d!207010 e!355596))

(declare-fun res!253523 () Bool)

(assert (=> d!207010 (=> (not res!253523) (not e!355596))))

(assert (=> d!207010 (= res!253523 (= (content!1035 lt!249231) ((_ map or) (content!1035 lt!249109) (content!1035 suffix!1342))))))

(assert (=> d!207010 (= lt!249231 e!355597)))

(declare-fun c!109903 () Bool)

(assert (=> d!207010 (= c!109903 ((_ is Nil!5788) lt!249109))))

(assert (=> d!207010 (= (++!1621 lt!249109 suffix!1342) lt!249231)))

(assert (= (and d!207010 c!109903) b!588325))

(assert (= (and d!207010 (not c!109903)) b!588326))

(assert (= (and d!207010 res!253523) b!588327))

(assert (= (and b!588327 res!253522) b!588328))

(declare-fun m!849003 () Bool)

(assert (=> b!588327 m!849003))

(assert (=> b!588327 m!848663))

(assert (=> b!588327 m!848837))

(declare-fun m!849005 () Bool)

(assert (=> b!588326 m!849005))

(declare-fun m!849009 () Bool)

(assert (=> d!207010 m!849009))

(declare-fun m!849011 () Bool)

(assert (=> d!207010 m!849011))

(assert (=> d!207010 m!848845))

(assert (=> b!588078 d!207010))

(declare-fun e!355600 () Bool)

(assert (=> b!588084 (= tp!183432 e!355600)))

(declare-fun b!588340 () Bool)

(declare-fun tp!183455 () Bool)

(declare-fun tp!183456 () Bool)

(assert (=> b!588340 (= e!355600 (and tp!183455 tp!183456))))

(declare-fun b!588339 () Bool)

(assert (=> b!588339 (= e!355600 tp_is_empty!3289)))

(declare-fun b!588342 () Bool)

(declare-fun tp!183454 () Bool)

(declare-fun tp!183453 () Bool)

(assert (=> b!588342 (= e!355600 (and tp!183454 tp!183453))))

(declare-fun b!588341 () Bool)

(declare-fun tp!183457 () Bool)

(assert (=> b!588341 (= e!355600 tp!183457)))

(assert (= (and b!588084 ((_ is ElementMatch!1467) (regex!1133 (rule!1899 token!491)))) b!588339))

(assert (= (and b!588084 ((_ is Concat!2624) (regex!1133 (rule!1899 token!491)))) b!588340))

(assert (= (and b!588084 ((_ is Star!1467) (regex!1133 (rule!1899 token!491)))) b!588341))

(assert (= (and b!588084 ((_ is Union!1467) (regex!1133 (rule!1899 token!491)))) b!588342))

(declare-fun b!588355 () Bool)

(declare-fun b_free!16445 () Bool)

(declare-fun b_next!16461 () Bool)

(assert (=> b!588355 (= b_free!16445 (not b_next!16461))))

(declare-fun tp!183466 () Bool)

(declare-fun b_and!57959 () Bool)

(assert (=> b!588355 (= tp!183466 b_and!57959)))

(declare-fun b_free!16447 () Bool)

(declare-fun b_next!16463 () Bool)

(assert (=> b!588355 (= b_free!16447 (not b_next!16463))))

(declare-fun tb!51487 () Bool)

(declare-fun t!78747 () Bool)

(assert (=> (and b!588355 (= (toChars!1875 (transformation!1133 (h!11191 (t!78729 rules!3103)))) (toChars!1875 (transformation!1133 (rule!1899 token!491)))) t!78747) tb!51487))

(declare-fun result!57702 () Bool)

(assert (= result!57702 result!57684))

(assert (=> d!206944 t!78747))

(assert (=> b!588171 t!78747))

(declare-fun t!78749 () Bool)

(declare-fun tb!51489 () Bool)

(assert (=> (and b!588355 (= (toChars!1875 (transformation!1133 (h!11191 (t!78729 rules!3103)))) (toChars!1875 (transformation!1133 (rule!1899 (_1!3640 (v!16360 lt!249112)))))) t!78749) tb!51489))

(declare-fun result!57704 () Bool)

(assert (= result!57704 result!57694))

(assert (=> d!206974 t!78749))

(declare-fun b_and!57961 () Bool)

(declare-fun tp!183467 () Bool)

(assert (=> b!588355 (= tp!183467 (and (=> t!78747 result!57702) (=> t!78749 result!57704) b_and!57961))))

(declare-fun e!355612 () Bool)

(assert (=> b!588355 (= e!355612 (and tp!183466 tp!183467))))

(declare-fun b!588354 () Bool)

(declare-fun tp!183468 () Bool)

(declare-fun e!355614 () Bool)

(assert (=> b!588354 (= e!355614 (and tp!183468 (inv!7317 (tag!1395 (h!11191 (t!78729 rules!3103)))) (inv!7320 (transformation!1133 (h!11191 (t!78729 rules!3103)))) e!355612))))

(declare-fun b!588353 () Bool)

(declare-fun e!355613 () Bool)

(declare-fun tp!183469 () Bool)

(assert (=> b!588353 (= e!355613 (and e!355614 tp!183469))))

(assert (=> b!588080 (= tp!183434 e!355613)))

(assert (= b!588354 b!588355))

(assert (= b!588353 b!588354))

(assert (= (and b!588080 ((_ is Cons!5790) (t!78729 rules!3103))) b!588353))

(declare-fun m!849029 () Bool)

(assert (=> b!588354 m!849029))

(declare-fun m!849033 () Bool)

(assert (=> b!588354 m!849033))

(declare-fun b!588366 () Bool)

(declare-fun e!355621 () Bool)

(declare-fun tp!183472 () Bool)

(assert (=> b!588366 (= e!355621 (and tp_is_empty!3289 tp!183472))))

(assert (=> b!588071 (= tp!183428 e!355621)))

(assert (= (and b!588071 ((_ is Cons!5788) (t!78727 suffix!1342))) b!588366))

(declare-fun b!588367 () Bool)

(declare-fun e!355622 () Bool)

(declare-fun tp!183473 () Bool)

(assert (=> b!588367 (= e!355622 (and tp_is_empty!3289 tp!183473))))

(assert (=> b!588087 (= tp!183433 e!355622)))

(assert (= (and b!588087 ((_ is Cons!5788) (t!78727 input!2705))) b!588367))

(declare-fun e!355623 () Bool)

(assert (=> b!588083 (= tp!183427 e!355623)))

(declare-fun b!588369 () Bool)

(declare-fun tp!183476 () Bool)

(declare-fun tp!183477 () Bool)

(assert (=> b!588369 (= e!355623 (and tp!183476 tp!183477))))

(declare-fun b!588368 () Bool)

(assert (=> b!588368 (= e!355623 tp_is_empty!3289)))

(declare-fun b!588371 () Bool)

(declare-fun tp!183475 () Bool)

(declare-fun tp!183474 () Bool)

(assert (=> b!588371 (= e!355623 (and tp!183475 tp!183474))))

(declare-fun b!588370 () Bool)

(declare-fun tp!183478 () Bool)

(assert (=> b!588370 (= e!355623 tp!183478)))

(assert (= (and b!588083 ((_ is ElementMatch!1467) (regex!1133 (h!11191 rules!3103)))) b!588368))

(assert (= (and b!588083 ((_ is Concat!2624) (regex!1133 (h!11191 rules!3103)))) b!588369))

(assert (= (and b!588083 ((_ is Star!1467) (regex!1133 (h!11191 rules!3103)))) b!588370))

(assert (= (and b!588083 ((_ is Union!1467) (regex!1133 (h!11191 rules!3103)))) b!588371))

(declare-fun b!588372 () Bool)

(declare-fun e!355624 () Bool)

(declare-fun tp!183479 () Bool)

(assert (=> b!588372 (= e!355624 (and tp_is_empty!3289 tp!183479))))

(assert (=> b!588088 (= tp!183429 e!355624)))

(assert (= (and b!588088 ((_ is Cons!5788) (originalCharacters!1172 token!491))) b!588372))

(declare-fun b_lambda!23167 () Bool)

(assert (= b_lambda!23161 (or (and b!588075 b_free!16439 (= (toChars!1875 (transformation!1133 (h!11191 rules!3103))) (toChars!1875 (transformation!1133 (rule!1899 token!491))))) (and b!588086 b_free!16443) (and b!588355 b_free!16447 (= (toChars!1875 (transformation!1133 (h!11191 (t!78729 rules!3103)))) (toChars!1875 (transformation!1133 (rule!1899 token!491))))) b_lambda!23167)))

(declare-fun b_lambda!23169 () Bool)

(assert (= b_lambda!23159 (or (and b!588075 b_free!16439 (= (toChars!1875 (transformation!1133 (h!11191 rules!3103))) (toChars!1875 (transformation!1133 (rule!1899 token!491))))) (and b!588086 b_free!16443) (and b!588355 b_free!16447 (= (toChars!1875 (transformation!1133 (h!11191 (t!78729 rules!3103)))) (toChars!1875 (transformation!1133 (rule!1899 token!491))))) b_lambda!23169)))

(check-sat (not d!206948) (not b!588218) (not b!588225) (not d!206990) (not b!588198) (not b!588154) (not b!588155) (not b!588299) (not d!206900) (not d!206944) (not b_next!16453) (not b!588304) (not b!588371) (not bm!40247) (not b!588230) (not b_next!16461) (not d!206980) (not b!588201) (not b!588353) (not b!588301) (not b_lambda!23167) (not d!206984) (not b!588196) (not d!206996) (not b!588370) (not d!206958) (not d!206988) (not b!588307) (not b!588372) (not b!588227) (not b!588197) tp_is_empty!3289 (not b!588172) (not b!588163) (not d!206972) (not b!588367) (not tb!51475) (not d!206902) b_and!57961 (not d!207004) (not b!588228) (not b!588202) b_and!57931 (not b!588260) (not b_lambda!23169) (not d!206946) (not b!588326) (not b!588166) (not b!588254) (not b_next!16463) (not d!206982) b_and!57957 (not b_next!16457) (not b!588309) (not d!207010) (not b!588310) (not b!588308) (not d!206952) (not b!588240) (not b!588366) b_and!57959 (not b!588354) (not b!588171) (not d!206974) (not bm!40243) (not b!588242) (not b!588340) (not b!588311) (not b!588342) (not d!206940) (not b!588305) (not b_lambda!23165) (not d!206950) (not b!588255) b_and!57935 (not b_next!16459) (not d!206986) (not b_next!16455) (not b!588241) (not b!588203) (not b!588256) (not b!588369) b_and!57955 (not b!588092) (not b!588217) (not b!588199) (not d!206970) (not b!588158) (not tb!51483) (not b!588306) (not b!588298) (not b!588277) (not b!588250) (not b!588200) (not b!588327) (not d!206942) (not b!588341) (not d!206976))
(check-sat (not b_next!16453) (not b_next!16461) b_and!57961 b_and!57931 b_and!57959 b_and!57935 b_and!57955 (not b_next!16463) b_and!57957 (not b_next!16457) (not b_next!16459) (not b_next!16455))
