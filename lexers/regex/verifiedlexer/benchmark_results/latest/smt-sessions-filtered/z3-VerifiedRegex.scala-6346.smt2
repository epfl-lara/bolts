; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!326894 () Bool)

(assert start!326894)

(declare-fun b!3519156 () Bool)

(declare-fun b_free!90665 () Bool)

(declare-fun b_next!91369 () Bool)

(assert (=> b!3519156 (= b_free!90665 (not b_next!91369))))

(declare-fun tp!1086669 () Bool)

(declare-fun b_and!250579 () Bool)

(assert (=> b!3519156 (= tp!1086669 b_and!250579)))

(declare-fun b_free!90667 () Bool)

(declare-fun b_next!91371 () Bool)

(assert (=> b!3519156 (= b_free!90667 (not b_next!91371))))

(declare-fun tp!1086668 () Bool)

(declare-fun b_and!250581 () Bool)

(assert (=> b!3519156 (= tp!1086668 b_and!250581)))

(declare-fun b!3519142 () Bool)

(declare-fun b_free!90669 () Bool)

(declare-fun b_next!91373 () Bool)

(assert (=> b!3519142 (= b_free!90669 (not b_next!91373))))

(declare-fun tp!1086679 () Bool)

(declare-fun b_and!250583 () Bool)

(assert (=> b!3519142 (= tp!1086679 b_and!250583)))

(declare-fun b_free!90671 () Bool)

(declare-fun b_next!91375 () Bool)

(assert (=> b!3519142 (= b_free!90671 (not b_next!91375))))

(declare-fun tp!1086670 () Bool)

(declare-fun b_and!250585 () Bool)

(assert (=> b!3519142 (= tp!1086670 b_and!250585)))

(declare-fun b!3519129 () Bool)

(declare-fun b_free!90673 () Bool)

(declare-fun b_next!91377 () Bool)

(assert (=> b!3519129 (= b_free!90673 (not b_next!91377))))

(declare-fun tp!1086674 () Bool)

(declare-fun b_and!250587 () Bool)

(assert (=> b!3519129 (= tp!1086674 b_and!250587)))

(declare-fun b_free!90675 () Bool)

(declare-fun b_next!91379 () Bool)

(assert (=> b!3519129 (= b_free!90675 (not b_next!91379))))

(declare-fun tp!1086676 () Bool)

(declare-fun b_and!250589 () Bool)

(assert (=> b!3519129 (= tp!1086676 b_and!250589)))

(declare-fun bs!565201 () Bool)

(declare-fun b!3519165 () Bool)

(declare-fun b!3519152 () Bool)

(assert (= bs!565201 (and b!3519165 b!3519152)))

(declare-fun lambda!122693 () Int)

(declare-fun lambda!122692 () Int)

(assert (=> bs!565201 (not (= lambda!122693 lambda!122692))))

(declare-fun b!3519176 () Bool)

(declare-fun e!2178220 () Bool)

(assert (=> b!3519176 (= e!2178220 true)))

(declare-fun b!3519175 () Bool)

(declare-fun e!2178219 () Bool)

(assert (=> b!3519175 (= e!2178219 e!2178220)))

(declare-fun b!3519174 () Bool)

(declare-fun e!2178218 () Bool)

(assert (=> b!3519174 (= e!2178218 e!2178219)))

(assert (=> b!3519165 e!2178218))

(assert (= b!3519175 b!3519176))

(assert (= b!3519174 b!3519175))

(declare-datatypes ((C!20648 0))(
  ( (C!20649 (val!12372 Int)) )
))
(declare-datatypes ((Regex!10231 0))(
  ( (ElementMatch!10231 (c!606522 C!20648)) (Concat!15933 (regOne!20974 Regex!10231) (regTwo!20974 Regex!10231)) (EmptyExpr!10231) (Star!10231 (reg!10560 Regex!10231)) (EmptyLang!10231) (Union!10231 (regOne!20975 Regex!10231) (regTwo!20975 Regex!10231)) )
))
(declare-datatypes ((List!37448 0))(
  ( (Nil!37324) (Cons!37324 (h!42744 (_ BitVec 16)) (t!281541 List!37448)) )
))
(declare-datatypes ((TokenValue!5702 0))(
  ( (FloatLiteralValue!11404 (text!40359 List!37448)) (TokenValueExt!5701 (__x!23621 Int)) (Broken!28510 (value!176386 List!37448)) (Object!5825) (End!5702) (Def!5702) (Underscore!5702) (Match!5702) (Else!5702) (Error!5702) (Case!5702) (If!5702) (Extends!5702) (Abstract!5702) (Class!5702) (Val!5702) (DelimiterValue!11404 (del!5762 List!37448)) (KeywordValue!5708 (value!176387 List!37448)) (CommentValue!11404 (value!176388 List!37448)) (WhitespaceValue!11404 (value!176389 List!37448)) (IndentationValue!5702 (value!176390 List!37448)) (String!41843) (Int32!5702) (Broken!28511 (value!176391 List!37448)) (Boolean!5703) (Unit!52973) (OperatorValue!5705 (op!5762 List!37448)) (IdentifierValue!11404 (value!176392 List!37448)) (IdentifierValue!11405 (value!176393 List!37448)) (WhitespaceValue!11405 (value!176394 List!37448)) (True!11404) (False!11404) (Broken!28512 (value!176395 List!37448)) (Broken!28513 (value!176396 List!37448)) (True!11405) (RightBrace!5702) (RightBracket!5702) (Colon!5702) (Null!5702) (Comma!5702) (LeftBracket!5702) (False!11405) (LeftBrace!5702) (ImaginaryLiteralValue!5702 (text!40360 List!37448)) (StringLiteralValue!17106 (value!176397 List!37448)) (EOFValue!5702 (value!176398 List!37448)) (IdentValue!5702 (value!176399 List!37448)) (DelimiterValue!11405 (value!176400 List!37448)) (DedentValue!5702 (value!176401 List!37448)) (NewLineValue!5702 (value!176402 List!37448)) (IntegerValue!17106 (value!176403 (_ BitVec 32)) (text!40361 List!37448)) (IntegerValue!17107 (value!176404 Int) (text!40362 List!37448)) (Times!5702) (Or!5702) (Equal!5702) (Minus!5702) (Broken!28514 (value!176405 List!37448)) (And!5702) (Div!5702) (LessEqual!5702) (Mod!5702) (Concat!15934) (Not!5702) (Plus!5702) (SpaceValue!5702 (value!176406 List!37448)) (IntegerValue!17108 (value!176407 Int) (text!40363 List!37448)) (StringLiteralValue!17107 (text!40364 List!37448)) (FloatLiteralValue!11405 (text!40365 List!37448)) (BytesLiteralValue!5702 (value!176408 List!37448)) (CommentValue!11405 (value!176409 List!37448)) (StringLiteralValue!17108 (value!176410 List!37448)) (ErrorTokenValue!5702 (msg!5763 List!37448)) )
))
(declare-datatypes ((List!37449 0))(
  ( (Nil!37325) (Cons!37325 (h!42745 C!20648) (t!281542 List!37449)) )
))
(declare-datatypes ((IArray!22643 0))(
  ( (IArray!22644 (innerList!11379 List!37449)) )
))
(declare-datatypes ((Conc!11319 0))(
  ( (Node!11319 (left!29149 Conc!11319) (right!29479 Conc!11319) (csize!22868 Int) (cheight!11530 Int)) (Leaf!17666 (xs!14509 IArray!22643) (csize!22869 Int)) (Empty!11319) )
))
(declare-datatypes ((BalanceConc!22252 0))(
  ( (BalanceConc!22253 (c!606523 Conc!11319)) )
))
(declare-datatypes ((String!41844 0))(
  ( (String!41845 (value!176411 String)) )
))
(declare-datatypes ((TokenValueInjection!10832 0))(
  ( (TokenValueInjection!10833 (toValue!7724 Int) (toChars!7583 Int)) )
))
(declare-datatypes ((Rule!10744 0))(
  ( (Rule!10745 (regex!5472 Regex!10231) (tag!6108 String!41844) (isSeparator!5472 Bool) (transformation!5472 TokenValueInjection!10832)) )
))
(declare-datatypes ((List!37450 0))(
  ( (Nil!37326) (Cons!37326 (h!42746 Rule!10744) (t!281543 List!37450)) )
))
(declare-fun rules!2135 () List!37450)

(get-info :version)

(assert (= (and b!3519165 ((_ is Cons!37326) rules!2135)) b!3519174))

(declare-fun order!20061 () Int)

(declare-fun order!20063 () Int)

(declare-fun dynLambda!15886 (Int Int) Int)

(declare-fun dynLambda!15887 (Int Int) Int)

(assert (=> b!3519176 (< (dynLambda!15886 order!20061 (toValue!7724 (transformation!5472 (h!42746 rules!2135)))) (dynLambda!15887 order!20063 lambda!122693))))

(declare-fun order!20065 () Int)

(declare-fun dynLambda!15888 (Int Int) Int)

(assert (=> b!3519176 (< (dynLambda!15888 order!20065 (toChars!7583 (transformation!5472 (h!42746 rules!2135)))) (dynLambda!15887 order!20063 lambda!122693))))

(assert (=> b!3519165 true))

(declare-fun b!3519122 () Bool)

(declare-fun e!2178185 () Bool)

(declare-fun e!2178181 () Bool)

(assert (=> b!3519122 (= e!2178185 e!2178181)))

(declare-fun res!1419063 () Bool)

(assert (=> b!3519122 (=> (not res!1419063) (not e!2178181))))

(declare-fun lt!1201023 () Rule!10744)

(declare-fun lt!1201047 () List!37449)

(declare-fun matchR!4815 (Regex!10231 List!37449) Bool)

(assert (=> b!3519122 (= res!1419063 (matchR!4815 (regex!5472 lt!1201023) lt!1201047))))

(declare-datatypes ((Option!7605 0))(
  ( (None!7604) (Some!7604 (v!37086 Rule!10744)) )
))
(declare-fun lt!1201043 () Option!7605)

(declare-fun get!11981 (Option!7605) Rule!10744)

(assert (=> b!3519122 (= lt!1201023 (get!11981 lt!1201043))))

(declare-fun b!3519123 () Bool)

(declare-fun res!1419045 () Bool)

(declare-fun e!2178205 () Bool)

(assert (=> b!3519123 (=> (not res!1419045) (not e!2178205))))

(declare-datatypes ((Token!10310 0))(
  ( (Token!10311 (value!176412 TokenValue!5702) (rule!8114 Rule!10744) (size!28393 Int) (originalCharacters!6186 List!37449)) )
))
(declare-fun separatorToken!241 () Token!10310)

(assert (=> b!3519123 (= res!1419045 (isSeparator!5472 (rule!8114 separatorToken!241)))))

(declare-fun b!3519124 () Bool)

(declare-fun e!2178199 () Bool)

(declare-fun e!2178200 () Bool)

(declare-fun tp!1086680 () Bool)

(assert (=> b!3519124 (= e!2178199 (and e!2178200 tp!1086680))))

(declare-fun b!3519125 () Bool)

(declare-fun e!2178193 () Bool)

(declare-datatypes ((List!37451 0))(
  ( (Nil!37327) (Cons!37327 (h!42747 Token!10310) (t!281544 List!37451)) )
))
(declare-datatypes ((IArray!22645 0))(
  ( (IArray!22646 (innerList!11380 List!37451)) )
))
(declare-datatypes ((Conc!11320 0))(
  ( (Node!11320 (left!29150 Conc!11320) (right!29480 Conc!11320) (csize!22870 Int) (cheight!11531 Int)) (Leaf!17667 (xs!14510 IArray!22645) (csize!22871 Int)) (Empty!11320) )
))
(declare-datatypes ((BalanceConc!22254 0))(
  ( (BalanceConc!22255 (c!606524 Conc!11320)) )
))
(declare-datatypes ((tuple2!37152 0))(
  ( (tuple2!37153 (_1!21710 BalanceConc!22254) (_2!21710 BalanceConc!22252)) )
))
(declare-fun lt!1201022 () tuple2!37152)

(declare-fun isEmpty!21780 (BalanceConc!22252) Bool)

(assert (=> b!3519125 (= e!2178193 (not (isEmpty!21780 (_2!21710 lt!1201022))))))

(declare-fun b!3519127 () Bool)

(declare-fun e!2178183 () Bool)

(declare-fun e!2178203 () Bool)

(assert (=> b!3519127 (= e!2178183 e!2178203)))

(declare-fun res!1419061 () Bool)

(assert (=> b!3519127 (=> res!1419061 e!2178203)))

(declare-fun tokens!494 () List!37451)

(assert (=> b!3519127 (= res!1419061 (or (isSeparator!5472 (rule!8114 (h!42747 tokens!494))) (isSeparator!5472 (rule!8114 (h!42747 (t!281544 tokens!494))))))))

(declare-datatypes ((Unit!52974 0))(
  ( (Unit!52975) )
))
(declare-fun lt!1201038 () Unit!52974)

(declare-fun forallContained!1419 (List!37451 Int Token!10310) Unit!52974)

(assert (=> b!3519127 (= lt!1201038 (forallContained!1419 tokens!494 lambda!122692 (h!42747 (t!281544 tokens!494))))))

(declare-fun lt!1201010 () Unit!52974)

(assert (=> b!3519127 (= lt!1201010 (forallContained!1419 tokens!494 lambda!122692 (h!42747 tokens!494)))))

(declare-fun b!3519128 () Bool)

(declare-fun res!1419071 () Bool)

(declare-fun e!2178201 () Bool)

(assert (=> b!3519128 (=> res!1419071 e!2178201)))

(declare-fun lt!1201029 () List!37449)

(declare-fun isEmpty!21781 (List!37449) Bool)

(assert (=> b!3519128 (= res!1419071 (isEmpty!21781 lt!1201029))))

(declare-fun e!2178182 () Bool)

(assert (=> b!3519129 (= e!2178182 (and tp!1086674 tp!1086676))))

(declare-fun b!3519130 () Bool)

(declare-fun e!2178178 () Bool)

(assert (=> b!3519130 (= e!2178201 e!2178178)))

(declare-fun res!1419064 () Bool)

(assert (=> b!3519130 (=> res!1419064 e!2178178)))

(declare-fun lt!1201049 () BalanceConc!22252)

(declare-datatypes ((LexerInterface!5061 0))(
  ( (LexerInterfaceExt!5058 (__x!23622 Int)) (Lexer!5059) )
))
(declare-fun thiss!18206 () LexerInterface!5061)

(declare-datatypes ((tuple2!37154 0))(
  ( (tuple2!37155 (_1!21711 Token!10310) (_2!21711 List!37449)) )
))
(declare-datatypes ((Option!7606 0))(
  ( (None!7605) (Some!7605 (v!37087 tuple2!37154)) )
))
(declare-fun maxPrefix!2601 (LexerInterface!5061 List!37450 List!37449) Option!7606)

(declare-fun apply!8884 (TokenValueInjection!10832 BalanceConc!22252) TokenValue!5702)

(declare-fun size!28394 (List!37449) Int)

(assert (=> b!3519130 (= res!1419064 (not (= (maxPrefix!2601 thiss!18206 rules!2135 lt!1201029) (Some!7605 (tuple2!37155 (Token!10311 (apply!8884 (transformation!5472 (rule!8114 (h!42747 (t!281544 tokens!494)))) lt!1201049) (rule!8114 (h!42747 (t!281544 tokens!494))) (size!28394 lt!1201029) lt!1201029) Nil!37325)))))))

(declare-fun lt!1201054 () Unit!52974)

(declare-fun lemmaSemiInverse!1287 (TokenValueInjection!10832 BalanceConc!22252) Unit!52974)

(assert (=> b!3519130 (= lt!1201054 (lemmaSemiInverse!1287 (transformation!5472 (rule!8114 (h!42747 (t!281544 tokens!494)))) lt!1201049))))

(declare-fun seqFromList!3997 (List!37449) BalanceConc!22252)

(assert (=> b!3519130 (= lt!1201049 (seqFromList!3997 lt!1201029))))

(declare-fun b!3519131 () Bool)

(declare-fun res!1419075 () Bool)

(declare-fun e!2178179 () Bool)

(assert (=> b!3519131 (=> res!1419075 e!2178179)))

(declare-fun rulesProduceIndividualToken!2553 (LexerInterface!5061 List!37450 Token!10310) Bool)

(assert (=> b!3519131 (= res!1419075 (not (rulesProduceIndividualToken!2553 thiss!18206 rules!2135 (h!42747 tokens!494))))))

(declare-fun tp!1086672 () Bool)

(declare-fun e!2178204 () Bool)

(declare-fun b!3519132 () Bool)

(declare-fun e!2178207 () Bool)

(declare-fun inv!50556 (String!41844) Bool)

(declare-fun inv!50559 (TokenValueInjection!10832) Bool)

(assert (=> b!3519132 (= e!2178204 (and tp!1086672 (inv!50556 (tag!6108 (rule!8114 separatorToken!241))) (inv!50559 (transformation!5472 (rule!8114 separatorToken!241))) e!2178207))))

(declare-fun b!3519133 () Bool)

(declare-fun e!2178192 () Bool)

(declare-fun lt!1201021 () Rule!10744)

(assert (=> b!3519133 (= e!2178192 (= (rule!8114 (h!42747 (t!281544 tokens!494))) lt!1201021))))

(declare-fun b!3519134 () Bool)

(declare-fun e!2178184 () Bool)

(assert (=> b!3519134 (= e!2178184 false)))

(declare-fun e!2178198 () Bool)

(declare-fun e!2178208 () Bool)

(declare-fun tp!1086671 () Bool)

(declare-fun b!3519135 () Bool)

(assert (=> b!3519135 (= e!2178198 (and tp!1086671 (inv!50556 (tag!6108 (rule!8114 (h!42747 tokens!494)))) (inv!50559 (transformation!5472 (rule!8114 (h!42747 tokens!494)))) e!2178208))))

(declare-fun b!3519136 () Bool)

(assert (=> b!3519136 (= e!2178179 e!2178183)))

(declare-fun res!1419053 () Bool)

(assert (=> b!3519136 (=> res!1419053 e!2178183)))

(declare-fun lt!1201050 () BalanceConc!22252)

(declare-fun isEmpty!21782 (BalanceConc!22254) Bool)

(declare-fun lex!2387 (LexerInterface!5061 List!37450 BalanceConc!22252) tuple2!37152)

(assert (=> b!3519136 (= res!1419053 (isEmpty!21782 (_1!21710 (lex!2387 thiss!18206 rules!2135 lt!1201050))))))

(assert (=> b!3519136 (= lt!1201050 (seqFromList!3997 lt!1201047))))

(declare-fun b!3519137 () Bool)

(declare-fun res!1419065 () Bool)

(assert (=> b!3519137 (=> (not res!1419065) (not e!2178205))))

(assert (=> b!3519137 (= res!1419065 (rulesProduceIndividualToken!2553 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun res!1419069 () Bool)

(assert (=> start!326894 (=> (not res!1419069) (not e!2178205))))

(assert (=> start!326894 (= res!1419069 ((_ is Lexer!5059) thiss!18206))))

(assert (=> start!326894 e!2178205))

(assert (=> start!326894 true))

(assert (=> start!326894 e!2178199))

(declare-fun e!2178189 () Bool)

(assert (=> start!326894 e!2178189))

(declare-fun e!2178197 () Bool)

(declare-fun inv!50560 (Token!10310) Bool)

(assert (=> start!326894 (and (inv!50560 separatorToken!241) e!2178197)))

(declare-fun b!3519126 () Bool)

(assert (=> b!3519126 (= e!2178178 (matchR!4815 (regex!5472 (rule!8114 (h!42747 (t!281544 tokens!494)))) lt!1201029))))

(declare-fun ruleValid!1768 (LexerInterface!5061 Rule!10744) Bool)

(assert (=> b!3519126 (ruleValid!1768 thiss!18206 (rule!8114 (h!42747 (t!281544 tokens!494))))))

(declare-fun lt!1201017 () Unit!52974)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!952 (LexerInterface!5061 Rule!10744 List!37450) Unit!52974)

(assert (=> b!3519126 (= lt!1201017 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!952 thiss!18206 (rule!8114 (h!42747 (t!281544 tokens!494))) rules!2135))))

(declare-fun b!3519138 () Bool)

(declare-fun res!1419072 () Bool)

(assert (=> b!3519138 (=> (not res!1419072) (not e!2178205))))

(declare-fun rulesProduceEachTokenIndividually!1512 (LexerInterface!5061 List!37450 BalanceConc!22254) Bool)

(declare-fun seqFromList!3998 (List!37451) BalanceConc!22254)

(assert (=> b!3519138 (= res!1419072 (rulesProduceEachTokenIndividually!1512 thiss!18206 rules!2135 (seqFromList!3998 tokens!494)))))

(declare-fun b!3519139 () Bool)

(declare-fun tp!1086673 () Bool)

(declare-fun inv!21 (TokenValue!5702) Bool)

(assert (=> b!3519139 (= e!2178197 (and (inv!21 (value!176412 separatorToken!241)) e!2178204 tp!1086673))))

(declare-fun b!3519140 () Bool)

(declare-fun res!1419067 () Bool)

(assert (=> b!3519140 (=> (not res!1419067) (not e!2178205))))

(declare-fun rulesInvariant!4458 (LexerInterface!5061 List!37450) Bool)

(assert (=> b!3519140 (= res!1419067 (rulesInvariant!4458 thiss!18206 rules!2135))))

(declare-fun b!3519141 () Bool)

(declare-fun e!2178210 () Bool)

(assert (=> b!3519141 (= e!2178203 e!2178210)))

(declare-fun res!1419058 () Bool)

(assert (=> b!3519141 (=> res!1419058 e!2178210)))

(declare-fun lt!1201028 () List!37449)

(declare-fun lt!1201037 () List!37449)

(declare-fun ++!9247 (List!37449 List!37449) List!37449)

(declare-fun printWithSeparatorTokenList!348 (LexerInterface!5061 List!37451 Token!10310) List!37449)

(assert (=> b!3519141 (= res!1419058 (not (= lt!1201028 (++!9247 (++!9247 lt!1201029 lt!1201037) (printWithSeparatorTokenList!348 thiss!18206 (t!281544 (t!281544 tokens!494)) separatorToken!241)))))))

(declare-fun list!13651 (BalanceConc!22252) List!37449)

(declare-fun charsOf!3486 (Token!10310) BalanceConc!22252)

(assert (=> b!3519141 (= lt!1201029 (list!13651 (charsOf!3486 (h!42747 (t!281544 tokens!494)))))))

(declare-fun lt!1201041 () List!37449)

(assert (=> b!3519141 (= lt!1201041 (++!9247 lt!1201037 lt!1201028))))

(assert (=> b!3519141 (= lt!1201037 (list!13651 (charsOf!3486 separatorToken!241)))))

(assert (=> b!3519141 (= lt!1201028 (printWithSeparatorTokenList!348 thiss!18206 (t!281544 tokens!494) separatorToken!241))))

(declare-fun lt!1201012 () List!37449)

(assert (=> b!3519141 (= lt!1201012 (printWithSeparatorTokenList!348 thiss!18206 tokens!494 separatorToken!241))))

(assert (=> b!3519142 (= e!2178208 (and tp!1086679 tp!1086670))))

(declare-fun b!3519143 () Bool)

(declare-fun e!2178211 () Bool)

(declare-fun lt!1201033 () tuple2!37152)

(assert (=> b!3519143 (= e!2178211 (isEmpty!21780 (_2!21710 lt!1201033)))))

(declare-fun b!3519144 () Bool)

(declare-fun e!2178190 () Bool)

(assert (=> b!3519144 (= e!2178205 (not e!2178190))))

(declare-fun res!1419068 () Bool)

(assert (=> b!3519144 (=> res!1419068 e!2178190)))

(declare-fun lt!1201013 () List!37449)

(declare-fun lt!1201052 () List!37449)

(assert (=> b!3519144 (= res!1419068 (not (= lt!1201013 lt!1201052)))))

(declare-fun printList!1609 (LexerInterface!5061 List!37451) List!37449)

(assert (=> b!3519144 (= lt!1201052 (printList!1609 thiss!18206 (Cons!37327 (h!42747 tokens!494) Nil!37327)))))

(declare-fun lt!1201015 () BalanceConc!22252)

(assert (=> b!3519144 (= lt!1201013 (list!13651 lt!1201015))))

(declare-fun lt!1201039 () BalanceConc!22254)

(declare-fun printTailRec!1556 (LexerInterface!5061 BalanceConc!22254 Int BalanceConc!22252) BalanceConc!22252)

(assert (=> b!3519144 (= lt!1201015 (printTailRec!1556 thiss!18206 lt!1201039 0 (BalanceConc!22253 Empty!11319)))))

(declare-fun print!2126 (LexerInterface!5061 BalanceConc!22254) BalanceConc!22252)

(assert (=> b!3519144 (= lt!1201015 (print!2126 thiss!18206 lt!1201039))))

(declare-fun singletonSeq!2568 (Token!10310) BalanceConc!22254)

(assert (=> b!3519144 (= lt!1201039 (singletonSeq!2568 (h!42747 tokens!494)))))

(declare-fun b!3519145 () Bool)

(declare-fun res!1419056 () Bool)

(assert (=> b!3519145 (=> (not res!1419056) (not e!2178205))))

(declare-fun isEmpty!21783 (List!37450) Bool)

(assert (=> b!3519145 (= res!1419056 (not (isEmpty!21783 rules!2135)))))

(declare-fun b!3519146 () Bool)

(declare-fun res!1419046 () Bool)

(assert (=> b!3519146 (=> res!1419046 e!2178193)))

(declare-fun apply!8885 (BalanceConc!22254 Int) Token!10310)

(assert (=> b!3519146 (= res!1419046 (not (= (apply!8885 (_1!21710 lt!1201022) 0) (h!42747 (t!281544 tokens!494)))))))

(declare-fun b!3519147 () Bool)

(assert (=> b!3519147 (= e!2178181 (= (rule!8114 (h!42747 tokens!494)) lt!1201023))))

(declare-fun b!3519148 () Bool)

(declare-fun res!1419070 () Bool)

(assert (=> b!3519148 (=> res!1419070 e!2178201)))

(assert (=> b!3519148 (= res!1419070 (not (= lt!1201029 (++!9247 lt!1201029 Nil!37325))))))

(declare-fun b!3519149 () Bool)

(declare-fun e!2178209 () Bool)

(assert (=> b!3519149 (= e!2178210 e!2178209)))

(declare-fun res!1419066 () Bool)

(assert (=> b!3519149 (=> res!1419066 e!2178209)))

(declare-fun lt!1201014 () List!37449)

(assert (=> b!3519149 (= res!1419066 (not (= lt!1201012 lt!1201014)))))

(assert (=> b!3519149 (= lt!1201014 (++!9247 (++!9247 lt!1201047 lt!1201037) lt!1201028))))

(declare-fun b!3519150 () Bool)

(declare-fun e!2178177 () Bool)

(assert (=> b!3519150 (= e!2178177 e!2178192)))

(declare-fun res!1419050 () Bool)

(assert (=> b!3519150 (=> (not res!1419050) (not e!2178192))))

(assert (=> b!3519150 (= res!1419050 (matchR!4815 (regex!5472 lt!1201021) lt!1201029))))

(declare-fun lt!1201045 () Option!7605)

(assert (=> b!3519150 (= lt!1201021 (get!11981 lt!1201045))))

(declare-fun b!3519151 () Bool)

(assert (=> b!3519151 (= e!2178190 e!2178179)))

(declare-fun res!1419052 () Bool)

(assert (=> b!3519151 (=> res!1419052 e!2178179)))

(assert (=> b!3519151 (= res!1419052 (or (not (= lt!1201052 lt!1201047)) (not (= lt!1201013 lt!1201047))))))

(assert (=> b!3519151 (= lt!1201047 (list!13651 (charsOf!3486 (h!42747 tokens!494))))))

(declare-fun res!1419060 () Bool)

(assert (=> b!3519152 (=> (not res!1419060) (not e!2178205))))

(declare-fun forall!8023 (List!37451 Int) Bool)

(assert (=> b!3519152 (= res!1419060 (forall!8023 tokens!494 lambda!122692))))

(declare-fun e!2178180 () Bool)

(declare-fun tp!1086675 () Bool)

(declare-fun b!3519153 () Bool)

(assert (=> b!3519153 (= e!2178189 (and (inv!50560 (h!42747 tokens!494)) e!2178180 tp!1086675))))

(declare-fun b!3519154 () Bool)

(declare-fun e!2178202 () Unit!52974)

(declare-fun Unit!52976 () Unit!52974)

(assert (=> b!3519154 (= e!2178202 Unit!52976)))

(declare-fun b!3519155 () Bool)

(declare-fun tp!1086677 () Bool)

(assert (=> b!3519155 (= e!2178180 (and (inv!21 (value!176412 (h!42747 tokens!494))) e!2178198 tp!1086677))))

(assert (=> b!3519156 (= e!2178207 (and tp!1086669 tp!1086668))))

(declare-fun b!3519157 () Bool)

(declare-fun Unit!52977 () Unit!52974)

(assert (=> b!3519157 (= e!2178202 Unit!52977)))

(declare-fun lt!1201026 () C!20648)

(declare-fun lt!1201036 () Unit!52974)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!530 (Regex!10231 List!37449 C!20648) Unit!52974)

(assert (=> b!3519157 (= lt!1201036 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!530 (regex!5472 (rule!8114 separatorToken!241)) lt!1201037 lt!1201026))))

(declare-fun res!1419055 () Bool)

(assert (=> b!3519157 (= res!1419055 (not (matchR!4815 (regex!5472 (rule!8114 separatorToken!241)) lt!1201037)))))

(assert (=> b!3519157 (=> (not res!1419055) (not e!2178184))))

(assert (=> b!3519157 e!2178184))

(declare-fun b!3519158 () Bool)

(declare-fun e!2178188 () Bool)

(declare-fun e!2178206 () Bool)

(assert (=> b!3519158 (= e!2178188 e!2178206)))

(declare-fun res!1419073 () Bool)

(assert (=> b!3519158 (=> (not res!1419073) (not e!2178206))))

(declare-fun lt!1201046 () Rule!10744)

(assert (=> b!3519158 (= res!1419073 (matchR!4815 (regex!5472 lt!1201046) lt!1201037))))

(declare-fun lt!1201030 () Option!7605)

(assert (=> b!3519158 (= lt!1201046 (get!11981 lt!1201030))))

(declare-fun b!3519159 () Bool)

(declare-fun res!1419051 () Bool)

(assert (=> b!3519159 (=> (not res!1419051) (not e!2178211))))

(assert (=> b!3519159 (= res!1419051 (= (apply!8885 (_1!21710 lt!1201033) 0) separatorToken!241))))

(declare-fun b!3519160 () Bool)

(declare-fun res!1419044 () Bool)

(assert (=> b!3519160 (=> (not res!1419044) (not e!2178205))))

(declare-fun sepAndNonSepRulesDisjointChars!1666 (List!37450 List!37450) Bool)

(assert (=> b!3519160 (= res!1419044 (sepAndNonSepRulesDisjointChars!1666 rules!2135 rules!2135))))

(declare-fun b!3519161 () Bool)

(assert (=> b!3519161 (= e!2178206 (= (rule!8114 separatorToken!241) lt!1201046))))

(declare-fun b!3519162 () Bool)

(declare-fun e!2178194 () Bool)

(assert (=> b!3519162 (= e!2178209 e!2178194)))

(declare-fun res!1419062 () Bool)

(assert (=> b!3519162 (=> res!1419062 e!2178194)))

(declare-fun lt!1201044 () List!37449)

(assert (=> b!3519162 (= res!1419062 (not (= lt!1201012 lt!1201044)))))

(assert (=> b!3519162 (= lt!1201014 lt!1201044)))

(assert (=> b!3519162 (= lt!1201044 (++!9247 lt!1201047 lt!1201041))))

(declare-fun lt!1201016 () Unit!52974)

(declare-fun lemmaConcatAssociativity!2004 (List!37449 List!37449 List!37449) Unit!52974)

(assert (=> b!3519162 (= lt!1201016 (lemmaConcatAssociativity!2004 lt!1201047 lt!1201037 lt!1201028))))

(declare-fun tp!1086678 () Bool)

(declare-fun b!3519163 () Bool)

(assert (=> b!3519163 (= e!2178200 (and tp!1086678 (inv!50556 (tag!6108 (h!42746 rules!2135))) (inv!50559 (transformation!5472 (h!42746 rules!2135))) e!2178182))))

(declare-fun b!3519164 () Bool)

(declare-fun res!1419074 () Bool)

(assert (=> b!3519164 (=> (not res!1419074) (not e!2178205))))

(assert (=> b!3519164 (= res!1419074 (and (not ((_ is Nil!37327) tokens!494)) (not ((_ is Nil!37327) (t!281544 tokens!494)))))))

(assert (=> b!3519165 (= e!2178194 e!2178201)))

(declare-fun res!1419057 () Bool)

(assert (=> b!3519165 (=> res!1419057 e!2178201)))

(declare-fun contains!6995 (List!37450 Rule!10744) Bool)

(assert (=> b!3519165 (= res!1419057 (not (contains!6995 rules!2135 (rule!8114 (h!42747 (t!281544 tokens!494))))))))

(assert (=> b!3519165 e!2178177))

(declare-fun res!1419054 () Bool)

(assert (=> b!3519165 (=> (not res!1419054) (not e!2178177))))

(declare-fun isDefined!5864 (Option!7605) Bool)

(assert (=> b!3519165 (= res!1419054 (isDefined!5864 lt!1201045))))

(declare-fun getRuleFromTag!1115 (LexerInterface!5061 List!37450 String!41844) Option!7605)

(assert (=> b!3519165 (= lt!1201045 (getRuleFromTag!1115 thiss!18206 rules!2135 (tag!6108 (rule!8114 (h!42747 (t!281544 tokens!494))))))))

(declare-fun lt!1201024 () Unit!52974)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1115 (LexerInterface!5061 List!37450 List!37449 Token!10310) Unit!52974)

(assert (=> b!3519165 (= lt!1201024 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1115 thiss!18206 rules!2135 lt!1201029 (h!42747 (t!281544 tokens!494))))))

(declare-fun lt!1201031 () Bool)

(assert (=> b!3519165 lt!1201031))

(declare-fun lt!1201032 () Unit!52974)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1050 (LexerInterface!5061 List!37450 List!37451 Token!10310) Unit!52974)

(assert (=> b!3519165 (= lt!1201032 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1050 thiss!18206 rules!2135 tokens!494 (h!42747 (t!281544 tokens!494))))))

(assert (=> b!3519165 (= (maxPrefix!2601 thiss!18206 rules!2135 lt!1201044) (Some!7605 (tuple2!37155 (h!42747 tokens!494) lt!1201041)))))

(declare-fun lt!1201011 () Unit!52974)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!228 (LexerInterface!5061 List!37450 Token!10310 Rule!10744 List!37449 Rule!10744) Unit!52974)

(assert (=> b!3519165 (= lt!1201011 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!228 thiss!18206 rules!2135 (h!42747 tokens!494) (rule!8114 (h!42747 tokens!494)) lt!1201041 (rule!8114 separatorToken!241)))))

(declare-fun contains!6996 (List!37449 C!20648) Bool)

(declare-fun usedCharacters!706 (Regex!10231) List!37449)

(assert (=> b!3519165 (not (contains!6996 (usedCharacters!706 (regex!5472 (rule!8114 (h!42747 tokens!494)))) lt!1201026))))

(declare-fun lt!1201027 () Unit!52974)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!272 (LexerInterface!5061 List!37450 List!37450 Rule!10744 Rule!10744 C!20648) Unit!52974)

(assert (=> b!3519165 (= lt!1201027 (lemmaNonSepRuleNotContainsCharContainedInASepRule!272 thiss!18206 rules!2135 rules!2135 (rule!8114 (h!42747 tokens!494)) (rule!8114 separatorToken!241) lt!1201026))))

(declare-fun lt!1201019 () Unit!52974)

(assert (=> b!3519165 (= lt!1201019 (forallContained!1419 tokens!494 lambda!122693 (h!42747 (t!281544 tokens!494))))))

(declare-fun lt!1201025 () Bool)

(assert (=> b!3519165 (= lt!1201031 (not lt!1201025))))

(assert (=> b!3519165 (= lt!1201031 (rulesProduceIndividualToken!2553 thiss!18206 rules!2135 (h!42747 (t!281544 tokens!494))))))

(assert (=> b!3519165 (= lt!1201025 e!2178193)))

(declare-fun res!1419047 () Bool)

(assert (=> b!3519165 (=> res!1419047 e!2178193)))

(declare-fun size!28395 (BalanceConc!22254) Int)

(assert (=> b!3519165 (= res!1419047 (not (= (size!28395 (_1!21710 lt!1201022)) 1)))))

(declare-fun lt!1201051 () BalanceConc!22252)

(assert (=> b!3519165 (= lt!1201022 (lex!2387 thiss!18206 rules!2135 lt!1201051))))

(declare-fun lt!1201035 () BalanceConc!22254)

(assert (=> b!3519165 (= lt!1201051 (printTailRec!1556 thiss!18206 lt!1201035 0 (BalanceConc!22253 Empty!11319)))))

(assert (=> b!3519165 (= lt!1201051 (print!2126 thiss!18206 lt!1201035))))

(assert (=> b!3519165 (= lt!1201035 (singletonSeq!2568 (h!42747 (t!281544 tokens!494))))))

(assert (=> b!3519165 e!2178211))

(declare-fun res!1419049 () Bool)

(assert (=> b!3519165 (=> (not res!1419049) (not e!2178211))))

(assert (=> b!3519165 (= res!1419049 (= (size!28395 (_1!21710 lt!1201033)) 1))))

(declare-fun lt!1201034 () BalanceConc!22252)

(assert (=> b!3519165 (= lt!1201033 (lex!2387 thiss!18206 rules!2135 lt!1201034))))

(declare-fun lt!1201042 () BalanceConc!22254)

(assert (=> b!3519165 (= lt!1201034 (printTailRec!1556 thiss!18206 lt!1201042 0 (BalanceConc!22253 Empty!11319)))))

(assert (=> b!3519165 (= lt!1201034 (print!2126 thiss!18206 lt!1201042))))

(assert (=> b!3519165 (= lt!1201042 (singletonSeq!2568 separatorToken!241))))

(declare-fun lt!1201020 () Unit!52974)

(assert (=> b!3519165 (= lt!1201020 e!2178202)))

(declare-fun c!606521 () Bool)

(assert (=> b!3519165 (= c!606521 (not (contains!6996 (usedCharacters!706 (regex!5472 (rule!8114 separatorToken!241))) lt!1201026)))))

(declare-fun head!7379 (List!37449) C!20648)

(assert (=> b!3519165 (= lt!1201026 (head!7379 lt!1201037))))

(assert (=> b!3519165 e!2178188))

(declare-fun res!1419059 () Bool)

(assert (=> b!3519165 (=> (not res!1419059) (not e!2178188))))

(assert (=> b!3519165 (= res!1419059 (isDefined!5864 lt!1201030))))

(assert (=> b!3519165 (= lt!1201030 (getRuleFromTag!1115 thiss!18206 rules!2135 (tag!6108 (rule!8114 separatorToken!241))))))

(declare-fun lt!1201048 () Unit!52974)

(assert (=> b!3519165 (= lt!1201048 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1115 thiss!18206 rules!2135 lt!1201037 separatorToken!241))))

(declare-fun maxPrefixOneRule!1768 (LexerInterface!5061 Rule!10744 List!37449) Option!7606)

(assert (=> b!3519165 (= (maxPrefixOneRule!1768 thiss!18206 (rule!8114 (h!42747 tokens!494)) lt!1201047) (Some!7605 (tuple2!37155 (Token!10311 (apply!8884 (transformation!5472 (rule!8114 (h!42747 tokens!494))) lt!1201050) (rule!8114 (h!42747 tokens!494)) (size!28394 lt!1201047) lt!1201047) Nil!37325)))))

(declare-fun lt!1201040 () Unit!52974)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!861 (LexerInterface!5061 List!37450 List!37449 List!37449 List!37449 Rule!10744) Unit!52974)

(assert (=> b!3519165 (= lt!1201040 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!861 thiss!18206 rules!2135 lt!1201047 lt!1201047 Nil!37325 (rule!8114 (h!42747 tokens!494))))))

(assert (=> b!3519165 e!2178185))

(declare-fun res!1419048 () Bool)

(assert (=> b!3519165 (=> (not res!1419048) (not e!2178185))))

(assert (=> b!3519165 (= res!1419048 (isDefined!5864 lt!1201043))))

(assert (=> b!3519165 (= lt!1201043 (getRuleFromTag!1115 thiss!18206 rules!2135 (tag!6108 (rule!8114 (h!42747 tokens!494)))))))

(declare-fun lt!1201018 () Unit!52974)

(assert (=> b!3519165 (= lt!1201018 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1115 thiss!18206 rules!2135 lt!1201047 (h!42747 tokens!494)))))

(declare-fun lt!1201053 () Unit!52974)

(assert (=> b!3519165 (= lt!1201053 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1050 thiss!18206 rules!2135 tokens!494 (h!42747 tokens!494)))))

(assert (= (and start!326894 res!1419069) b!3519145))

(assert (= (and b!3519145 res!1419056) b!3519140))

(assert (= (and b!3519140 res!1419067) b!3519138))

(assert (= (and b!3519138 res!1419072) b!3519137))

(assert (= (and b!3519137 res!1419065) b!3519123))

(assert (= (and b!3519123 res!1419045) b!3519152))

(assert (= (and b!3519152 res!1419060) b!3519160))

(assert (= (and b!3519160 res!1419044) b!3519164))

(assert (= (and b!3519164 res!1419074) b!3519144))

(assert (= (and b!3519144 (not res!1419068)) b!3519151))

(assert (= (and b!3519151 (not res!1419052)) b!3519131))

(assert (= (and b!3519131 (not res!1419075)) b!3519136))

(assert (= (and b!3519136 (not res!1419053)) b!3519127))

(assert (= (and b!3519127 (not res!1419061)) b!3519141))

(assert (= (and b!3519141 (not res!1419058)) b!3519149))

(assert (= (and b!3519149 (not res!1419066)) b!3519162))

(assert (= (and b!3519162 (not res!1419062)) b!3519165))

(assert (= (and b!3519165 res!1419048) b!3519122))

(assert (= (and b!3519122 res!1419063) b!3519147))

(assert (= (and b!3519165 res!1419059) b!3519158))

(assert (= (and b!3519158 res!1419073) b!3519161))

(assert (= (and b!3519165 c!606521) b!3519157))

(assert (= (and b!3519165 (not c!606521)) b!3519154))

(assert (= (and b!3519157 res!1419055) b!3519134))

(assert (= (and b!3519165 res!1419049) b!3519159))

(assert (= (and b!3519159 res!1419051) b!3519143))

(assert (= (and b!3519165 (not res!1419047)) b!3519146))

(assert (= (and b!3519146 (not res!1419046)) b!3519125))

(assert (= (and b!3519165 res!1419054) b!3519150))

(assert (= (and b!3519150 res!1419050) b!3519133))

(assert (= (and b!3519165 (not res!1419057)) b!3519148))

(assert (= (and b!3519148 (not res!1419070)) b!3519128))

(assert (= (and b!3519128 (not res!1419071)) b!3519130))

(assert (= (and b!3519130 (not res!1419064)) b!3519126))

(assert (= b!3519163 b!3519129))

(assert (= b!3519124 b!3519163))

(assert (= (and start!326894 ((_ is Cons!37326) rules!2135)) b!3519124))

(assert (= b!3519135 b!3519142))

(assert (= b!3519155 b!3519135))

(assert (= b!3519153 b!3519155))

(assert (= (and start!326894 ((_ is Cons!37327) tokens!494)) b!3519153))

(assert (= b!3519132 b!3519156))

(assert (= b!3519139 b!3519132))

(assert (= start!326894 b!3519139))

(declare-fun m!3968129 () Bool)

(assert (=> b!3519137 m!3968129))

(declare-fun m!3968131 () Bool)

(assert (=> b!3519155 m!3968131))

(declare-fun m!3968133 () Bool)

(assert (=> b!3519135 m!3968133))

(declare-fun m!3968135 () Bool)

(assert (=> b!3519135 m!3968135))

(declare-fun m!3968137 () Bool)

(assert (=> b!3519132 m!3968137))

(declare-fun m!3968139 () Bool)

(assert (=> b!3519132 m!3968139))

(declare-fun m!3968141 () Bool)

(assert (=> b!3519148 m!3968141))

(declare-fun m!3968143 () Bool)

(assert (=> b!3519122 m!3968143))

(declare-fun m!3968145 () Bool)

(assert (=> b!3519122 m!3968145))

(declare-fun m!3968147 () Bool)

(assert (=> b!3519160 m!3968147))

(declare-fun m!3968149 () Bool)

(assert (=> b!3519159 m!3968149))

(declare-fun m!3968151 () Bool)

(assert (=> b!3519158 m!3968151))

(declare-fun m!3968153 () Bool)

(assert (=> b!3519158 m!3968153))

(declare-fun m!3968155 () Bool)

(assert (=> b!3519128 m!3968155))

(declare-fun m!3968157 () Bool)

(assert (=> b!3519140 m!3968157))

(declare-fun m!3968159 () Bool)

(assert (=> b!3519131 m!3968159))

(declare-fun m!3968161 () Bool)

(assert (=> b!3519152 m!3968161))

(declare-fun m!3968163 () Bool)

(assert (=> b!3519139 m!3968163))

(declare-fun m!3968165 () Bool)

(assert (=> b!3519126 m!3968165))

(declare-fun m!3968167 () Bool)

(assert (=> b!3519126 m!3968167))

(declare-fun m!3968169 () Bool)

(assert (=> b!3519126 m!3968169))

(declare-fun m!3968171 () Bool)

(assert (=> b!3519145 m!3968171))

(declare-fun m!3968173 () Bool)

(assert (=> b!3519163 m!3968173))

(declare-fun m!3968175 () Bool)

(assert (=> b!3519163 m!3968175))

(declare-fun m!3968177 () Bool)

(assert (=> b!3519151 m!3968177))

(assert (=> b!3519151 m!3968177))

(declare-fun m!3968179 () Bool)

(assert (=> b!3519151 m!3968179))

(declare-fun m!3968181 () Bool)

(assert (=> b!3519127 m!3968181))

(declare-fun m!3968183 () Bool)

(assert (=> b!3519127 m!3968183))

(declare-fun m!3968185 () Bool)

(assert (=> b!3519162 m!3968185))

(declare-fun m!3968187 () Bool)

(assert (=> b!3519162 m!3968187))

(declare-fun m!3968189 () Bool)

(assert (=> b!3519153 m!3968189))

(declare-fun m!3968191 () Bool)

(assert (=> b!3519136 m!3968191))

(declare-fun m!3968193 () Bool)

(assert (=> b!3519136 m!3968193))

(declare-fun m!3968195 () Bool)

(assert (=> b!3519136 m!3968195))

(declare-fun m!3968197 () Bool)

(assert (=> b!3519130 m!3968197))

(declare-fun m!3968199 () Bool)

(assert (=> b!3519130 m!3968199))

(declare-fun m!3968201 () Bool)

(assert (=> b!3519130 m!3968201))

(declare-fun m!3968203 () Bool)

(assert (=> b!3519130 m!3968203))

(declare-fun m!3968205 () Bool)

(assert (=> b!3519130 m!3968205))

(declare-fun m!3968207 () Bool)

(assert (=> b!3519138 m!3968207))

(assert (=> b!3519138 m!3968207))

(declare-fun m!3968209 () Bool)

(assert (=> b!3519138 m!3968209))

(declare-fun m!3968211 () Bool)

(assert (=> b!3519141 m!3968211))

(assert (=> b!3519141 m!3968211))

(declare-fun m!3968213 () Bool)

(assert (=> b!3519141 m!3968213))

(declare-fun m!3968215 () Bool)

(assert (=> b!3519141 m!3968215))

(declare-fun m!3968217 () Bool)

(assert (=> b!3519141 m!3968217))

(declare-fun m!3968219 () Bool)

(assert (=> b!3519141 m!3968219))

(declare-fun m!3968221 () Bool)

(assert (=> b!3519141 m!3968221))

(declare-fun m!3968223 () Bool)

(assert (=> b!3519141 m!3968223))

(assert (=> b!3519141 m!3968217))

(declare-fun m!3968225 () Bool)

(assert (=> b!3519141 m!3968225))

(assert (=> b!3519141 m!3968213))

(declare-fun m!3968227 () Bool)

(assert (=> b!3519141 m!3968227))

(assert (=> b!3519141 m!3968219))

(declare-fun m!3968229 () Bool)

(assert (=> b!3519141 m!3968229))

(declare-fun m!3968231 () Bool)

(assert (=> b!3519144 m!3968231))

(declare-fun m!3968233 () Bool)

(assert (=> b!3519144 m!3968233))

(declare-fun m!3968235 () Bool)

(assert (=> b!3519144 m!3968235))

(declare-fun m!3968237 () Bool)

(assert (=> b!3519144 m!3968237))

(declare-fun m!3968239 () Bool)

(assert (=> b!3519144 m!3968239))

(declare-fun m!3968241 () Bool)

(assert (=> b!3519146 m!3968241))

(declare-fun m!3968243 () Bool)

(assert (=> b!3519125 m!3968243))

(declare-fun m!3968245 () Bool)

(assert (=> b!3519149 m!3968245))

(assert (=> b!3519149 m!3968245))

(declare-fun m!3968247 () Bool)

(assert (=> b!3519149 m!3968247))

(declare-fun m!3968249 () Bool)

(assert (=> b!3519157 m!3968249))

(declare-fun m!3968251 () Bool)

(assert (=> b!3519157 m!3968251))

(declare-fun m!3968253 () Bool)

(assert (=> start!326894 m!3968253))

(declare-fun m!3968255 () Bool)

(assert (=> b!3519165 m!3968255))

(declare-fun m!3968257 () Bool)

(assert (=> b!3519165 m!3968257))

(declare-fun m!3968259 () Bool)

(assert (=> b!3519165 m!3968259))

(declare-fun m!3968261 () Bool)

(assert (=> b!3519165 m!3968261))

(declare-fun m!3968263 () Bool)

(assert (=> b!3519165 m!3968263))

(declare-fun m!3968265 () Bool)

(assert (=> b!3519165 m!3968265))

(declare-fun m!3968267 () Bool)

(assert (=> b!3519165 m!3968267))

(declare-fun m!3968269 () Bool)

(assert (=> b!3519165 m!3968269))

(declare-fun m!3968271 () Bool)

(assert (=> b!3519165 m!3968271))

(declare-fun m!3968273 () Bool)

(assert (=> b!3519165 m!3968273))

(declare-fun m!3968275 () Bool)

(assert (=> b!3519165 m!3968275))

(declare-fun m!3968277 () Bool)

(assert (=> b!3519165 m!3968277))

(declare-fun m!3968279 () Bool)

(assert (=> b!3519165 m!3968279))

(declare-fun m!3968281 () Bool)

(assert (=> b!3519165 m!3968281))

(assert (=> b!3519165 m!3968257))

(declare-fun m!3968283 () Bool)

(assert (=> b!3519165 m!3968283))

(declare-fun m!3968285 () Bool)

(assert (=> b!3519165 m!3968285))

(declare-fun m!3968287 () Bool)

(assert (=> b!3519165 m!3968287))

(declare-fun m!3968289 () Bool)

(assert (=> b!3519165 m!3968289))

(declare-fun m!3968291 () Bool)

(assert (=> b!3519165 m!3968291))

(declare-fun m!3968293 () Bool)

(assert (=> b!3519165 m!3968293))

(declare-fun m!3968295 () Bool)

(assert (=> b!3519165 m!3968295))

(declare-fun m!3968297 () Bool)

(assert (=> b!3519165 m!3968297))

(declare-fun m!3968299 () Bool)

(assert (=> b!3519165 m!3968299))

(declare-fun m!3968301 () Bool)

(assert (=> b!3519165 m!3968301))

(declare-fun m!3968303 () Bool)

(assert (=> b!3519165 m!3968303))

(declare-fun m!3968305 () Bool)

(assert (=> b!3519165 m!3968305))

(declare-fun m!3968307 () Bool)

(assert (=> b!3519165 m!3968307))

(declare-fun m!3968309 () Bool)

(assert (=> b!3519165 m!3968309))

(declare-fun m!3968311 () Bool)

(assert (=> b!3519165 m!3968311))

(declare-fun m!3968313 () Bool)

(assert (=> b!3519165 m!3968313))

(declare-fun m!3968315 () Bool)

(assert (=> b!3519165 m!3968315))

(declare-fun m!3968317 () Bool)

(assert (=> b!3519165 m!3968317))

(declare-fun m!3968319 () Bool)

(assert (=> b!3519165 m!3968319))

(declare-fun m!3968321 () Bool)

(assert (=> b!3519165 m!3968321))

(assert (=> b!3519165 m!3968275))

(declare-fun m!3968323 () Bool)

(assert (=> b!3519165 m!3968323))

(declare-fun m!3968325 () Bool)

(assert (=> b!3519165 m!3968325))

(declare-fun m!3968327 () Bool)

(assert (=> b!3519143 m!3968327))

(declare-fun m!3968329 () Bool)

(assert (=> b!3519150 m!3968329))

(declare-fun m!3968331 () Bool)

(assert (=> b!3519150 m!3968331))

(check-sat (not b!3519149) (not b!3519139) (not b!3519148) b_and!250585 (not b_next!91375) (not b!3519131) (not b_next!91373) (not b!3519144) (not b!3519174) (not b!3519126) (not b!3519137) b_and!250589 (not b!3519130) b_and!250579 (not b!3519138) (not b!3519158) (not b!3519124) (not b_next!91369) (not b!3519128) (not b!3519132) (not b!3519157) (not b!3519159) (not b!3519155) (not b_next!91377) (not b!3519122) (not b!3519146) b_and!250581 (not b!3519140) (not b!3519125) (not b!3519127) (not b!3519141) (not b!3519152) b_and!250587 (not b!3519136) (not b!3519165) (not b!3519135) (not b_next!91379) (not b!3519153) (not b!3519150) (not b!3519163) (not b!3519160) (not start!326894) (not b!3519162) b_and!250583 (not b_next!91371) (not b!3519145) (not b!3519151) (not b!3519143))
(check-sat (not b_next!91369) (not b_next!91377) b_and!250581 b_and!250585 b_and!250587 (not b_next!91375) (not b_next!91373) (not b_next!91379) b_and!250583 b_and!250589 (not b_next!91371) b_and!250579)
