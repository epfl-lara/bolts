; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32762 () Bool)

(assert start!32762)

(declare-fun b!304433 () Bool)

(declare-fun b_free!10841 () Bool)

(declare-fun b_next!10841 () Bool)

(assert (=> b!304433 (= b_free!10841 (not b_next!10841))))

(declare-fun tp!108253 () Bool)

(declare-fun b_and!25693 () Bool)

(assert (=> b!304433 (= tp!108253 b_and!25693)))

(declare-fun b_free!10843 () Bool)

(declare-fun b_next!10843 () Bool)

(assert (=> b!304433 (= b_free!10843 (not b_next!10843))))

(declare-fun tp!108255 () Bool)

(declare-fun b_and!25695 () Bool)

(assert (=> b!304433 (= tp!108255 b_and!25695)))

(declare-fun b!304444 () Bool)

(declare-fun b_free!10845 () Bool)

(declare-fun b_next!10845 () Bool)

(assert (=> b!304444 (= b_free!10845 (not b_next!10845))))

(declare-fun tp!108252 () Bool)

(declare-fun b_and!25697 () Bool)

(assert (=> b!304444 (= tp!108252 b_and!25697)))

(declare-fun b_free!10847 () Bool)

(declare-fun b_next!10847 () Bool)

(assert (=> b!304444 (= b_free!10847 (not b_next!10847))))

(declare-fun tp!108259 () Bool)

(declare-fun b_and!25699 () Bool)

(assert (=> b!304444 (= tp!108259 b_and!25699)))

(declare-fun b!304426 () Bool)

(declare-fun b_free!10849 () Bool)

(declare-fun b_next!10849 () Bool)

(assert (=> b!304426 (= b_free!10849 (not b_next!10849))))

(declare-fun tp!108249 () Bool)

(declare-fun b_and!25701 () Bool)

(assert (=> b!304426 (= tp!108249 b_and!25701)))

(declare-fun b_free!10851 () Bool)

(declare-fun b_next!10851 () Bool)

(assert (=> b!304426 (= b_free!10851 (not b_next!10851))))

(declare-fun tp!108251 () Bool)

(declare-fun b_and!25703 () Bool)

(assert (=> b!304426 (= tp!108251 b_and!25703)))

(declare-fun bs!35264 () Bool)

(declare-fun b!304451 () Bool)

(declare-fun b!304420 () Bool)

(assert (= bs!35264 (and b!304451 b!304420)))

(declare-fun lambda!10352 () Int)

(declare-fun lambda!10351 () Int)

(assert (=> bs!35264 (not (= lambda!10352 lambda!10351))))

(declare-fun b!304462 () Bool)

(declare-fun e!189108 () Bool)

(assert (=> b!304462 (= e!189108 true)))

(declare-fun b!304461 () Bool)

(declare-fun e!189107 () Bool)

(assert (=> b!304461 (= e!189107 e!189108)))

(declare-fun b!304460 () Bool)

(declare-fun e!189106 () Bool)

(assert (=> b!304460 (= e!189106 e!189107)))

(assert (=> b!304451 e!189106))

(assert (= b!304461 b!304462))

(assert (= b!304460 b!304461))

(declare-datatypes ((List!4018 0))(
  ( (Nil!4008) (Cons!4008 (h!9405 (_ BitVec 16)) (t!43098 List!4018)) )
))
(declare-datatypes ((TokenValue!791 0))(
  ( (FloatLiteralValue!1582 (text!5982 List!4018)) (TokenValueExt!790 (__x!3069 Int)) (Broken!3955 (value!26206 List!4018)) (Object!800) (End!791) (Def!791) (Underscore!791) (Match!791) (Else!791) (Error!791) (Case!791) (If!791) (Extends!791) (Abstract!791) (Class!791) (Val!791) (DelimiterValue!1582 (del!851 List!4018)) (KeywordValue!797 (value!26207 List!4018)) (CommentValue!1582 (value!26208 List!4018)) (WhitespaceValue!1582 (value!26209 List!4018)) (IndentationValue!791 (value!26210 List!4018)) (String!5034) (Int32!791) (Broken!3956 (value!26211 List!4018)) (Boolean!792) (Unit!5615) (OperatorValue!794 (op!851 List!4018)) (IdentifierValue!1582 (value!26212 List!4018)) (IdentifierValue!1583 (value!26213 List!4018)) (WhitespaceValue!1583 (value!26214 List!4018)) (True!1582) (False!1582) (Broken!3957 (value!26215 List!4018)) (Broken!3958 (value!26216 List!4018)) (True!1583) (RightBrace!791) (RightBracket!791) (Colon!791) (Null!791) (Comma!791) (LeftBracket!791) (False!1583) (LeftBrace!791) (ImaginaryLiteralValue!791 (text!5983 List!4018)) (StringLiteralValue!2373 (value!26217 List!4018)) (EOFValue!791 (value!26218 List!4018)) (IdentValue!791 (value!26219 List!4018)) (DelimiterValue!1583 (value!26220 List!4018)) (DedentValue!791 (value!26221 List!4018)) (NewLineValue!791 (value!26222 List!4018)) (IntegerValue!2373 (value!26223 (_ BitVec 32)) (text!5984 List!4018)) (IntegerValue!2374 (value!26224 Int) (text!5985 List!4018)) (Times!791) (Or!791) (Equal!791) (Minus!791) (Broken!3959 (value!26225 List!4018)) (And!791) (Div!791) (LessEqual!791) (Mod!791) (Concat!1784) (Not!791) (Plus!791) (SpaceValue!791 (value!26226 List!4018)) (IntegerValue!2375 (value!26227 Int) (text!5986 List!4018)) (StringLiteralValue!2374 (text!5987 List!4018)) (FloatLiteralValue!1583 (text!5988 List!4018)) (BytesLiteralValue!791 (value!26228 List!4018)) (CommentValue!1583 (value!26229 List!4018)) (StringLiteralValue!2375 (value!26230 List!4018)) (ErrorTokenValue!791 (msg!852 List!4018)) )
))
(declare-datatypes ((C!2908 0))(
  ( (C!2909 (val!1340 Int)) )
))
(declare-datatypes ((List!4019 0))(
  ( (Nil!4009) (Cons!4009 (h!9406 C!2908) (t!43099 List!4019)) )
))
(declare-datatypes ((IArray!2721 0))(
  ( (IArray!2722 (innerList!1418 List!4019)) )
))
(declare-datatypes ((Conc!1360 0))(
  ( (Node!1360 (left!3323 Conc!1360) (right!3653 Conc!1360) (csize!2950 Int) (cheight!1571 Int)) (Leaf!2084 (xs!3963 IArray!2721) (csize!2951 Int)) (Empty!1360) )
))
(declare-datatypes ((BalanceConc!2728 0))(
  ( (BalanceConc!2729 (c!57932 Conc!1360)) )
))
(declare-datatypes ((String!5035 0))(
  ( (String!5036 (value!26231 String)) )
))
(declare-datatypes ((TokenValueInjection!1354 0))(
  ( (TokenValueInjection!1355 (toValue!1528 Int) (toChars!1387 Int)) )
))
(declare-datatypes ((Regex!993 0))(
  ( (ElementMatch!993 (c!57933 C!2908)) (Concat!1785 (regOne!2498 Regex!993) (regTwo!2498 Regex!993)) (EmptyExpr!993) (Star!993 (reg!1322 Regex!993)) (EmptyLang!993) (Union!993 (regOne!2499 Regex!993) (regTwo!2499 Regex!993)) )
))
(declare-datatypes ((Rule!1338 0))(
  ( (Rule!1339 (regex!769 Regex!993) (tag!987 String!5035) (isSeparator!769 Bool) (transformation!769 TokenValueInjection!1354)) )
))
(declare-datatypes ((List!4020 0))(
  ( (Nil!4010) (Cons!4010 (h!9407 Rule!1338) (t!43100 List!4020)) )
))
(declare-fun rules!1920 () List!4020)

(get-info :version)

(assert (= (and b!304451 ((_ is Cons!4010) rules!1920)) b!304460))

(declare-fun order!3227 () Int)

(declare-fun order!3225 () Int)

(declare-fun dynLambda!2175 (Int Int) Int)

(declare-fun dynLambda!2176 (Int Int) Int)

(assert (=> b!304462 (< (dynLambda!2175 order!3225 (toValue!1528 (transformation!769 (h!9407 rules!1920)))) (dynLambda!2176 order!3227 lambda!10352))))

(declare-fun order!3229 () Int)

(declare-fun dynLambda!2177 (Int Int) Int)

(assert (=> b!304462 (< (dynLambda!2177 order!3229 (toChars!1387 (transformation!769 (h!9407 rules!1920)))) (dynLambda!2176 order!3227 lambda!10352))))

(assert (=> b!304451 true))

(declare-fun b!304419 () Bool)

(declare-fun e!189084 () Bool)

(declare-fun e!189076 () Bool)

(declare-fun tp!108261 () Bool)

(assert (=> b!304419 (= e!189084 (and e!189076 tp!108261))))

(declare-fun res!138172 () Bool)

(declare-fun e!189077 () Bool)

(assert (=> b!304420 (=> (not res!138172) (not e!189077))))

(declare-datatypes ((Token!1282 0))(
  ( (Token!1283 (value!26232 TokenValue!791) (rule!1382 Rule!1338) (size!3219 Int) (originalCharacters!812 List!4019)) )
))
(declare-datatypes ((List!4021 0))(
  ( (Nil!4011) (Cons!4011 (h!9408 Token!1282) (t!43101 List!4021)) )
))
(declare-fun tokens!465 () List!4021)

(declare-fun forall!1056 (List!4021 Int) Bool)

(assert (=> b!304420 (= res!138172 (forall!1056 tokens!465 lambda!10351))))

(declare-fun b!304421 () Bool)

(declare-fun tp!108258 () Bool)

(declare-fun e!189085 () Bool)

(declare-fun inv!4962 (String!5035) Bool)

(declare-fun inv!4965 (TokenValueInjection!1354) Bool)

(assert (=> b!304421 (= e!189076 (and tp!108258 (inv!4962 (tag!987 (h!9407 rules!1920))) (inv!4965 (transformation!769 (h!9407 rules!1920))) e!189085))))

(declare-fun b!304422 () Bool)

(declare-fun e!189073 () Bool)

(assert (=> b!304422 (= e!189073 e!189077)))

(declare-fun res!138173 () Bool)

(assert (=> b!304422 (=> (not res!138173) (not e!189077))))

(declare-datatypes ((IArray!2723 0))(
  ( (IArray!2724 (innerList!1419 List!4021)) )
))
(declare-datatypes ((Conc!1361 0))(
  ( (Node!1361 (left!3324 Conc!1361) (right!3654 Conc!1361) (csize!2952 Int) (cheight!1572 Int)) (Leaf!2085 (xs!3964 IArray!2723) (csize!2953 Int)) (Empty!1361) )
))
(declare-datatypes ((BalanceConc!2730 0))(
  ( (BalanceConc!2731 (c!57934 Conc!1361)) )
))
(declare-fun lt!129506 () BalanceConc!2730)

(declare-datatypes ((LexerInterface!655 0))(
  ( (LexerInterfaceExt!652 (__x!3070 Int)) (Lexer!653) )
))
(declare-fun thiss!17480 () LexerInterface!655)

(declare-fun rulesProduceEachTokenIndividually!447 (LexerInterface!655 List!4020 BalanceConc!2730) Bool)

(assert (=> b!304422 (= res!138173 (rulesProduceEachTokenIndividually!447 thiss!17480 rules!1920 lt!129506))))

(declare-fun seqFromList!903 (List!4021) BalanceConc!2730)

(assert (=> b!304422 (= lt!129506 (seqFromList!903 tokens!465))))

(declare-fun b!304423 () Bool)

(declare-fun res!138176 () Bool)

(assert (=> b!304423 (=> (not res!138176) (not e!189077))))

(declare-fun separatorToken!170 () Token!1282)

(declare-fun rulesProduceIndividualToken!404 (LexerInterface!655 List!4020 Token!1282) Bool)

(assert (=> b!304423 (= res!138176 (rulesProduceIndividualToken!404 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!304424 () Bool)

(declare-fun e!189096 () Bool)

(declare-fun lt!129511 () List!4019)

(declare-fun matchR!311 (Regex!993 List!4019) Bool)

(assert (=> b!304424 (= e!189096 (matchR!311 (regex!769 (rule!1382 (h!9408 tokens!465))) lt!129511))))

(declare-fun b!304425 () Bool)

(declare-fun res!138175 () Bool)

(assert (=> b!304425 (=> (not res!138175) (not e!189096))))

(declare-datatypes ((tuple2!4610 0))(
  ( (tuple2!4611 (_1!2521 Token!1282) (_2!2521 List!4019)) )
))
(declare-fun lt!129499 () tuple2!4610)

(declare-fun isEmpty!2711 (List!4019) Bool)

(assert (=> b!304425 (= res!138175 (isEmpty!2711 (_2!2521 lt!129499)))))

(declare-fun e!189093 () Bool)

(assert (=> b!304426 (= e!189093 (and tp!108249 tp!108251))))

(declare-fun b!304427 () Bool)

(declare-fun res!138174 () Bool)

(declare-fun e!189075 () Bool)

(assert (=> b!304427 (=> (not res!138174) (not e!189075))))

(declare-fun lt!129516 () List!4019)

(declare-fun lt!129500 () List!4019)

(declare-fun list!1693 (BalanceConc!2728) List!4019)

(declare-fun seqFromList!904 (List!4019) BalanceConc!2728)

(assert (=> b!304427 (= res!138174 (= (list!1693 (seqFromList!904 lt!129516)) lt!129500))))

(declare-fun b!304428 () Bool)

(declare-fun e!189097 () Bool)

(declare-fun isPrefix!429 (List!4019 List!4019) Bool)

(assert (=> b!304428 (= e!189097 (isPrefix!429 lt!129511 lt!129516))))

(declare-datatypes ((Option!904 0))(
  ( (None!903) (Some!903 (v!14896 tuple2!4610)) )
))
(declare-fun lt!129508 () Option!904)

(declare-fun maxPrefix!371 (LexerInterface!655 List!4020 List!4019) Option!904)

(assert (=> b!304428 (= lt!129508 (maxPrefix!371 thiss!17480 rules!1920 lt!129516))))

(declare-fun lt!129510 () List!4019)

(assert (=> b!304428 (isPrefix!429 lt!129511 lt!129510)))

(declare-datatypes ((Unit!5616 0))(
  ( (Unit!5617) )
))
(declare-fun lt!129512 () Unit!5616)

(declare-fun lt!129513 () List!4019)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!320 (List!4019 List!4019) Unit!5616)

(assert (=> b!304428 (= lt!129512 (lemmaConcatTwoListThenFirstIsPrefix!320 lt!129511 lt!129513))))

(declare-fun e!189079 () Bool)

(assert (=> b!304428 e!189079))

(declare-fun res!138163 () Bool)

(assert (=> b!304428 (=> res!138163 e!189079)))

(declare-fun isEmpty!2712 (List!4021) Bool)

(assert (=> b!304428 (= res!138163 (isEmpty!2712 tokens!465))))

(declare-fun lt!129507 () Unit!5616)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!176 (LexerInterface!655 List!4020 List!4021 Token!1282) Unit!5616)

(assert (=> b!304428 (= lt!129507 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!176 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!304429 () Bool)

(declare-fun e!189095 () Bool)

(declare-fun lt!129503 () Option!904)

(declare-fun get!1366 (Option!904) tuple2!4610)

(declare-fun head!950 (List!4021) Token!1282)

(assert (=> b!304429 (= e!189095 (= (_1!2521 (get!1366 lt!129503)) (head!950 tokens!465)))))

(declare-fun b!304430 () Bool)

(assert (=> b!304430 (= e!189079 e!189095)))

(declare-fun res!138169 () Bool)

(assert (=> b!304430 (=> (not res!138169) (not e!189095))))

(declare-fun isDefined!743 (Option!904) Bool)

(assert (=> b!304430 (= res!138169 (isDefined!743 lt!129503))))

(assert (=> b!304430 (= lt!129503 (maxPrefix!371 thiss!17480 rules!1920 lt!129516))))

(declare-fun e!189083 () Bool)

(declare-fun b!304431 () Bool)

(declare-fun e!189098 () Bool)

(declare-fun tp!108250 () Bool)

(declare-fun inv!4966 (Token!1282) Bool)

(assert (=> b!304431 (= e!189098 (and (inv!4966 (h!9408 tokens!465)) e!189083 tp!108250))))

(declare-fun e!189088 () Bool)

(assert (=> b!304433 (= e!189088 (and tp!108253 tp!108255))))

(declare-fun b!304434 () Bool)

(declare-fun e!189080 () Bool)

(declare-fun e!189089 () Bool)

(assert (=> b!304434 (= e!189080 e!189089)))

(declare-fun res!138164 () Bool)

(assert (=> b!304434 (=> res!138164 e!189089)))

(declare-fun e!189094 () Bool)

(assert (=> b!304434 (= res!138164 e!189094)))

(declare-fun res!138167 () Bool)

(assert (=> b!304434 (=> (not res!138167) (not e!189094))))

(declare-fun lt!129515 () Bool)

(assert (=> b!304434 (= res!138167 (not lt!129515))))

(assert (=> b!304434 (= lt!129515 (= lt!129516 lt!129510))))

(declare-fun b!304435 () Bool)

(assert (=> b!304435 (= e!189077 e!189075)))

(declare-fun res!138159 () Bool)

(assert (=> b!304435 (=> (not res!138159) (not e!189075))))

(assert (=> b!304435 (= res!138159 (= lt!129516 lt!129500))))

(declare-fun printWithSeparatorTokenWhenNeededRec!328 (LexerInterface!655 List!4020 BalanceConc!2730 Token!1282 Int) BalanceConc!2728)

(assert (=> b!304435 (= lt!129500 (list!1693 (printWithSeparatorTokenWhenNeededRec!328 thiss!17480 rules!1920 lt!129506 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!336 (LexerInterface!655 List!4020 List!4021 Token!1282) List!4019)

(assert (=> b!304435 (= lt!129516 (printWithSeparatorTokenWhenNeededList!336 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!304436 () Bool)

(declare-fun res!138170 () Bool)

(declare-fun e!189087 () Bool)

(assert (=> b!304436 (=> res!138170 e!189087)))

(declare-fun isEmpty!2713 (BalanceConc!2730) Bool)

(declare-datatypes ((tuple2!4612 0))(
  ( (tuple2!4613 (_1!2522 BalanceConc!2730) (_2!2522 BalanceConc!2728)) )
))
(declare-fun lex!447 (LexerInterface!655 List!4020 BalanceConc!2728) tuple2!4612)

(assert (=> b!304436 (= res!138170 (isEmpty!2713 (_1!2522 (lex!447 thiss!17480 rules!1920 (seqFromList!904 lt!129511)))))))

(declare-fun b!304437 () Bool)

(declare-fun res!138177 () Bool)

(assert (=> b!304437 (=> (not res!138177) (not e!189077))))

(declare-fun sepAndNonSepRulesDisjointChars!358 (List!4020 List!4020) Bool)

(assert (=> b!304437 (= res!138177 (sepAndNonSepRulesDisjointChars!358 rules!1920 rules!1920))))

(declare-fun b!304438 () Bool)

(declare-fun res!138165 () Bool)

(assert (=> b!304438 (=> res!138165 e!189087)))

(assert (=> b!304438 (= res!138165 (not (rulesProduceIndividualToken!404 thiss!17480 rules!1920 (h!9408 tokens!465))))))

(declare-fun b!304439 () Bool)

(declare-fun e!189099 () Bool)

(declare-fun e!189092 () Bool)

(declare-fun tp!108256 () Bool)

(declare-fun inv!21 (TokenValue!791) Bool)

(assert (=> b!304439 (= e!189099 (and (inv!21 (value!26232 separatorToken!170)) e!189092 tp!108256))))

(declare-fun b!304440 () Bool)

(declare-fun res!138160 () Bool)

(assert (=> b!304440 (=> (not res!138160) (not e!189077))))

(assert (=> b!304440 (= res!138160 (isSeparator!769 (rule!1382 separatorToken!170)))))

(declare-fun b!304441 () Bool)

(declare-fun res!138162 () Bool)

(assert (=> b!304441 (=> (not res!138162) (not e!189073))))

(declare-fun rulesInvariant!621 (LexerInterface!655 List!4020) Bool)

(assert (=> b!304441 (= res!138162 (rulesInvariant!621 thiss!17480 rules!1920))))

(declare-fun e!189082 () Bool)

(declare-fun b!304442 () Bool)

(declare-fun tp!108257 () Bool)

(assert (=> b!304442 (= e!189083 (and (inv!21 (value!26232 (h!9408 tokens!465))) e!189082 tp!108257))))

(declare-fun b!304443 () Bool)

(declare-fun lt!129504 () List!4019)

(declare-fun ++!1086 (List!4019 List!4019) List!4019)

(assert (=> b!304443 (= e!189094 (not (= lt!129516 (++!1086 lt!129511 lt!129504))))))

(assert (=> b!304444 (= e!189085 (and tp!108252 tp!108259))))

(declare-fun b!304445 () Bool)

(assert (=> b!304445 (= e!189075 (not e!189080))))

(declare-fun res!138166 () Bool)

(assert (=> b!304445 (=> res!138166 e!189080)))

(assert (=> b!304445 (= res!138166 (not (= lt!129504 (list!1693 (printWithSeparatorTokenWhenNeededRec!328 thiss!17480 rules!1920 (seqFromList!903 (t!43101 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!129514 () List!4019)

(assert (=> b!304445 (= lt!129514 lt!129510)))

(assert (=> b!304445 (= lt!129510 (++!1086 lt!129511 lt!129513))))

(declare-fun lt!129498 () List!4019)

(assert (=> b!304445 (= lt!129514 (++!1086 (++!1086 lt!129511 lt!129498) lt!129504))))

(declare-fun lt!129509 () Unit!5616)

(declare-fun lemmaConcatAssociativity!476 (List!4019 List!4019 List!4019) Unit!5616)

(assert (=> b!304445 (= lt!129509 (lemmaConcatAssociativity!476 lt!129511 lt!129498 lt!129504))))

(declare-fun charsOf!412 (Token!1282) BalanceConc!2728)

(assert (=> b!304445 (= lt!129511 (list!1693 (charsOf!412 (h!9408 tokens!465))))))

(assert (=> b!304445 (= lt!129513 (++!1086 lt!129498 lt!129504))))

(assert (=> b!304445 (= lt!129504 (printWithSeparatorTokenWhenNeededList!336 thiss!17480 rules!1920 (t!43101 tokens!465) separatorToken!170))))

(assert (=> b!304445 (= lt!129498 (list!1693 (charsOf!412 separatorToken!170)))))

(declare-fun tp!108254 () Bool)

(declare-fun b!304446 () Bool)

(assert (=> b!304446 (= e!189082 (and tp!108254 (inv!4962 (tag!987 (rule!1382 (h!9408 tokens!465)))) (inv!4965 (transformation!769 (rule!1382 (h!9408 tokens!465)))) e!189093))))

(declare-fun b!304447 () Bool)

(assert (=> b!304447 (= e!189089 e!189087)))

(declare-fun res!138181 () Bool)

(assert (=> b!304447 (=> res!138181 e!189087)))

(declare-fun lt!129496 () List!4019)

(declare-fun lt!129505 () List!4019)

(assert (=> b!304447 (= res!138181 (or (not (= lt!129505 lt!129496)) (not (= lt!129496 lt!129511)) (not (= lt!129505 lt!129511))))))

(declare-fun printList!329 (LexerInterface!655 List!4021) List!4019)

(assert (=> b!304447 (= lt!129496 (printList!329 thiss!17480 (Cons!4011 (h!9408 tokens!465) Nil!4011)))))

(declare-fun lt!129497 () BalanceConc!2728)

(assert (=> b!304447 (= lt!129505 (list!1693 lt!129497))))

(declare-fun lt!129502 () BalanceConc!2730)

(declare-fun printTailRec!341 (LexerInterface!655 BalanceConc!2730 Int BalanceConc!2728) BalanceConc!2728)

(assert (=> b!304447 (= lt!129497 (printTailRec!341 thiss!17480 lt!129502 0 (BalanceConc!2729 Empty!1360)))))

(declare-fun print!380 (LexerInterface!655 BalanceConc!2730) BalanceConc!2728)

(assert (=> b!304447 (= lt!129497 (print!380 thiss!17480 lt!129502))))

(declare-fun singletonSeq!315 (Token!1282) BalanceConc!2730)

(assert (=> b!304447 (= lt!129502 (singletonSeq!315 (h!9408 tokens!465)))))

(declare-fun tp!108260 () Bool)

(declare-fun b!304448 () Bool)

(assert (=> b!304448 (= e!189092 (and tp!108260 (inv!4962 (tag!987 (rule!1382 separatorToken!170))) (inv!4965 (transformation!769 (rule!1382 separatorToken!170))) e!189088))))

(declare-fun b!304449 () Bool)

(declare-fun e!189090 () Bool)

(assert (=> b!304449 (= e!189090 e!189097)))

(declare-fun res!138178 () Bool)

(assert (=> b!304449 (=> res!138178 e!189097)))

(assert (=> b!304449 (= res!138178 (not lt!129515))))

(assert (=> b!304449 e!189096))

(declare-fun res!138180 () Bool)

(assert (=> b!304449 (=> (not res!138180) (not e!189096))))

(assert (=> b!304449 (= res!138180 (= (_1!2521 lt!129499) (h!9408 tokens!465)))))

(declare-fun lt!129495 () Option!904)

(assert (=> b!304449 (= lt!129499 (get!1366 lt!129495))))

(assert (=> b!304449 (isDefined!743 lt!129495)))

(assert (=> b!304449 (= lt!129495 (maxPrefix!371 thiss!17480 rules!1920 lt!129511))))

(declare-fun b!304432 () Bool)

(declare-fun res!138168 () Bool)

(assert (=> b!304432 (=> (not res!138168) (not e!189073))))

(declare-fun isEmpty!2714 (List!4020) Bool)

(assert (=> b!304432 (= res!138168 (not (isEmpty!2714 rules!1920)))))

(declare-fun res!138171 () Bool)

(assert (=> start!32762 (=> (not res!138171) (not e!189073))))

(assert (=> start!32762 (= res!138171 ((_ is Lexer!653) thiss!17480))))

(assert (=> start!32762 e!189073))

(assert (=> start!32762 true))

(assert (=> start!32762 e!189084))

(assert (=> start!32762 (and (inv!4966 separatorToken!170) e!189099)))

(assert (=> start!32762 e!189098))

(declare-fun b!304450 () Bool)

(declare-fun res!138179 () Bool)

(assert (=> b!304450 (=> (not res!138179) (not e!189077))))

(assert (=> b!304450 (= res!138179 ((_ is Cons!4011) tokens!465))))

(assert (=> b!304451 (= e!189087 e!189090)))

(declare-fun res!138161 () Bool)

(assert (=> b!304451 (=> res!138161 e!189090)))

(declare-datatypes ((tuple2!4614 0))(
  ( (tuple2!4615 (_1!2523 Token!1282) (_2!2523 BalanceConc!2728)) )
))
(declare-datatypes ((Option!905 0))(
  ( (None!904) (Some!904 (v!14897 tuple2!4614)) )
))
(declare-fun isDefined!744 (Option!905) Bool)

(declare-fun maxPrefixZipperSequence!334 (LexerInterface!655 List!4020 BalanceConc!2728) Option!905)

(assert (=> b!304451 (= res!138161 (not (isDefined!744 (maxPrefixZipperSequence!334 thiss!17480 rules!1920 (seqFromList!904 (originalCharacters!812 (h!9408 tokens!465)))))))))

(declare-fun lt!129501 () Unit!5616)

(declare-fun forallContained!322 (List!4021 Int Token!1282) Unit!5616)

(assert (=> b!304451 (= lt!129501 (forallContained!322 tokens!465 lambda!10352 (h!9408 tokens!465)))))

(assert (=> b!304451 (= lt!129511 (originalCharacters!812 (h!9408 tokens!465)))))

(assert (= (and start!32762 res!138171) b!304432))

(assert (= (and b!304432 res!138168) b!304441))

(assert (= (and b!304441 res!138162) b!304422))

(assert (= (and b!304422 res!138173) b!304423))

(assert (= (and b!304423 res!138176) b!304440))

(assert (= (and b!304440 res!138160) b!304420))

(assert (= (and b!304420 res!138172) b!304437))

(assert (= (and b!304437 res!138177) b!304450))

(assert (= (and b!304450 res!138179) b!304435))

(assert (= (and b!304435 res!138159) b!304427))

(assert (= (and b!304427 res!138174) b!304445))

(assert (= (and b!304445 (not res!138166)) b!304434))

(assert (= (and b!304434 res!138167) b!304443))

(assert (= (and b!304434 (not res!138164)) b!304447))

(assert (= (and b!304447 (not res!138181)) b!304438))

(assert (= (and b!304438 (not res!138165)) b!304436))

(assert (= (and b!304436 (not res!138170)) b!304451))

(assert (= (and b!304451 (not res!138161)) b!304449))

(assert (= (and b!304449 res!138180) b!304425))

(assert (= (and b!304425 res!138175) b!304424))

(assert (= (and b!304449 (not res!138178)) b!304428))

(assert (= (and b!304428 (not res!138163)) b!304430))

(assert (= (and b!304430 res!138169) b!304429))

(assert (= b!304421 b!304444))

(assert (= b!304419 b!304421))

(assert (= (and start!32762 ((_ is Cons!4010) rules!1920)) b!304419))

(assert (= b!304448 b!304433))

(assert (= b!304439 b!304448))

(assert (= start!32762 b!304439))

(assert (= b!304446 b!304426))

(assert (= b!304442 b!304446))

(assert (= b!304431 b!304442))

(assert (= (and start!32762 ((_ is Cons!4011) tokens!465)) b!304431))

(declare-fun m!406253 () Bool)

(assert (=> b!304439 m!406253))

(declare-fun m!406255 () Bool)

(assert (=> b!304420 m!406255))

(declare-fun m!406257 () Bool)

(assert (=> b!304432 m!406257))

(declare-fun m!406259 () Bool)

(assert (=> b!304435 m!406259))

(assert (=> b!304435 m!406259))

(declare-fun m!406261 () Bool)

(assert (=> b!304435 m!406261))

(declare-fun m!406263 () Bool)

(assert (=> b!304435 m!406263))

(declare-fun m!406265 () Bool)

(assert (=> b!304437 m!406265))

(declare-fun m!406267 () Bool)

(assert (=> b!304428 m!406267))

(declare-fun m!406269 () Bool)

(assert (=> b!304428 m!406269))

(declare-fun m!406271 () Bool)

(assert (=> b!304428 m!406271))

(declare-fun m!406273 () Bool)

(assert (=> b!304428 m!406273))

(declare-fun m!406275 () Bool)

(assert (=> b!304428 m!406275))

(declare-fun m!406277 () Bool)

(assert (=> b!304428 m!406277))

(declare-fun m!406279 () Bool)

(assert (=> b!304425 m!406279))

(declare-fun m!406281 () Bool)

(assert (=> b!304447 m!406281))

(declare-fun m!406283 () Bool)

(assert (=> b!304447 m!406283))

(declare-fun m!406285 () Bool)

(assert (=> b!304447 m!406285))

(declare-fun m!406287 () Bool)

(assert (=> b!304447 m!406287))

(declare-fun m!406289 () Bool)

(assert (=> b!304447 m!406289))

(declare-fun m!406291 () Bool)

(assert (=> b!304442 m!406291))

(declare-fun m!406293 () Bool)

(assert (=> b!304423 m!406293))

(declare-fun m!406295 () Bool)

(assert (=> b!304448 m!406295))

(declare-fun m!406297 () Bool)

(assert (=> b!304448 m!406297))

(declare-fun m!406299 () Bool)

(assert (=> b!304424 m!406299))

(declare-fun m!406301 () Bool)

(assert (=> b!304443 m!406301))

(declare-fun m!406303 () Bool)

(assert (=> start!32762 m!406303))

(declare-fun m!406305 () Bool)

(assert (=> b!304446 m!406305))

(declare-fun m!406307 () Bool)

(assert (=> b!304446 m!406307))

(declare-fun m!406309 () Bool)

(assert (=> b!304445 m!406309))

(declare-fun m!406311 () Bool)

(assert (=> b!304445 m!406311))

(declare-fun m!406313 () Bool)

(assert (=> b!304445 m!406313))

(declare-fun m!406315 () Bool)

(assert (=> b!304445 m!406315))

(declare-fun m!406317 () Bool)

(assert (=> b!304445 m!406317))

(declare-fun m!406319 () Bool)

(assert (=> b!304445 m!406319))

(declare-fun m!406321 () Bool)

(assert (=> b!304445 m!406321))

(assert (=> b!304445 m!406319))

(declare-fun m!406323 () Bool)

(assert (=> b!304445 m!406323))

(assert (=> b!304445 m!406309))

(declare-fun m!406325 () Bool)

(assert (=> b!304445 m!406325))

(declare-fun m!406327 () Bool)

(assert (=> b!304445 m!406327))

(declare-fun m!406329 () Bool)

(assert (=> b!304445 m!406329))

(assert (=> b!304445 m!406311))

(assert (=> b!304445 m!406325))

(declare-fun m!406331 () Bool)

(assert (=> b!304445 m!406331))

(declare-fun m!406333 () Bool)

(assert (=> b!304445 m!406333))

(assert (=> b!304445 m!406327))

(declare-fun m!406335 () Bool)

(assert (=> b!304451 m!406335))

(assert (=> b!304451 m!406335))

(declare-fun m!406337 () Bool)

(assert (=> b!304451 m!406337))

(assert (=> b!304451 m!406337))

(declare-fun m!406339 () Bool)

(assert (=> b!304451 m!406339))

(declare-fun m!406341 () Bool)

(assert (=> b!304451 m!406341))

(declare-fun m!406343 () Bool)

(assert (=> b!304422 m!406343))

(declare-fun m!406345 () Bool)

(assert (=> b!304422 m!406345))

(declare-fun m!406347 () Bool)

(assert (=> b!304429 m!406347))

(declare-fun m!406349 () Bool)

(assert (=> b!304429 m!406349))

(declare-fun m!406351 () Bool)

(assert (=> b!304430 m!406351))

(assert (=> b!304430 m!406271))

(declare-fun m!406353 () Bool)

(assert (=> b!304421 m!406353))

(declare-fun m!406355 () Bool)

(assert (=> b!304421 m!406355))

(declare-fun m!406357 () Bool)

(assert (=> b!304438 m!406357))

(declare-fun m!406359 () Bool)

(assert (=> b!304449 m!406359))

(declare-fun m!406361 () Bool)

(assert (=> b!304449 m!406361))

(declare-fun m!406363 () Bool)

(assert (=> b!304449 m!406363))

(declare-fun m!406365 () Bool)

(assert (=> b!304427 m!406365))

(assert (=> b!304427 m!406365))

(declare-fun m!406367 () Bool)

(assert (=> b!304427 m!406367))

(declare-fun m!406369 () Bool)

(assert (=> b!304436 m!406369))

(assert (=> b!304436 m!406369))

(declare-fun m!406371 () Bool)

(assert (=> b!304436 m!406371))

(declare-fun m!406373 () Bool)

(assert (=> b!304436 m!406373))

(declare-fun m!406375 () Bool)

(assert (=> b!304431 m!406375))

(declare-fun m!406377 () Bool)

(assert (=> b!304441 m!406377))

(check-sat (not b!304425) (not b_next!10849) (not b_next!10851) (not b!304431) (not b!304428) (not b!304419) (not b!304435) (not b!304443) (not b!304439) b_and!25701 b_and!25697 (not b_next!10843) (not b_next!10845) (not b!304460) (not b!304437) b_and!25695 (not b!304449) (not b!304442) (not b!304445) (not b!304448) (not b!304420) (not b!304447) (not b!304430) (not start!32762) (not b!304432) b_and!25703 (not b!304451) (not b!304446) (not b!304424) (not b!304423) (not b!304436) (not b!304422) (not b!304427) (not b_next!10847) b_and!25699 (not b!304438) (not b!304429) (not b!304421) (not b!304441) (not b_next!10841) b_and!25693)
(check-sat (not b_next!10849) (not b_next!10851) b_and!25695 b_and!25703 b_and!25701 b_and!25697 (not b_next!10843) (not b_next!10847) b_and!25699 (not b_next!10845) (not b_next!10841) b_and!25693)
