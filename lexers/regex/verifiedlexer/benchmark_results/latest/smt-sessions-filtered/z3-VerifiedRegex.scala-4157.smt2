; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!223892 () Bool)

(assert start!223892)

(declare-fun b!2284299 () Bool)

(declare-fun b_free!68397 () Bool)

(declare-fun b_next!69101 () Bool)

(assert (=> b!2284299 (= b_free!68397 (not b_next!69101))))

(declare-fun tp!724077 () Bool)

(declare-fun b_and!180745 () Bool)

(assert (=> b!2284299 (= tp!724077 b_and!180745)))

(declare-fun b_free!68399 () Bool)

(declare-fun b_next!69103 () Bool)

(assert (=> b!2284299 (= b_free!68399 (not b_next!69103))))

(declare-fun tp!724087 () Bool)

(declare-fun b_and!180747 () Bool)

(assert (=> b!2284299 (= tp!724087 b_and!180747)))

(declare-fun b!2284311 () Bool)

(declare-fun b_free!68401 () Bool)

(declare-fun b_next!69105 () Bool)

(assert (=> b!2284311 (= b_free!68401 (not b_next!69105))))

(declare-fun tp!724079 () Bool)

(declare-fun b_and!180749 () Bool)

(assert (=> b!2284311 (= tp!724079 b_and!180749)))

(declare-fun b_free!68403 () Bool)

(declare-fun b_next!69107 () Bool)

(assert (=> b!2284311 (= b_free!68403 (not b_next!69107))))

(declare-fun tp!724080 () Bool)

(declare-fun b_and!180751 () Bool)

(assert (=> b!2284311 (= tp!724080 b_and!180751)))

(declare-fun b!2284287 () Bool)

(declare-fun b_free!68405 () Bool)

(declare-fun b_next!69109 () Bool)

(assert (=> b!2284287 (= b_free!68405 (not b_next!69109))))

(declare-fun tp!724085 () Bool)

(declare-fun b_and!180753 () Bool)

(assert (=> b!2284287 (= tp!724085 b_and!180753)))

(declare-fun b_free!68407 () Bool)

(declare-fun b_next!69111 () Bool)

(assert (=> b!2284287 (= b_free!68407 (not b_next!69111))))

(declare-fun tp!724070 () Bool)

(declare-fun b_and!180755 () Bool)

(assert (=> b!2284287 (= tp!724070 b_and!180755)))

(declare-fun b!2284294 () Bool)

(declare-fun b_free!68409 () Bool)

(declare-fun b_next!69113 () Bool)

(assert (=> b!2284294 (= b_free!68409 (not b_next!69113))))

(declare-fun tp!724074 () Bool)

(declare-fun b_and!180757 () Bool)

(assert (=> b!2284294 (= tp!724074 b_and!180757)))

(declare-fun b_free!68411 () Bool)

(declare-fun b_next!69115 () Bool)

(assert (=> b!2284294 (= b_free!68411 (not b_next!69115))))

(declare-fun tp!724072 () Bool)

(declare-fun b_and!180759 () Bool)

(assert (=> b!2284294 (= tp!724072 b_and!180759)))

(declare-fun b!2284282 () Bool)

(declare-fun e!1463452 () Bool)

(declare-fun e!1463475 () Bool)

(declare-fun tp!724084 () Bool)

(assert (=> b!2284282 (= e!1463452 (and e!1463475 tp!724084))))

(declare-fun b!2284283 () Bool)

(declare-fun e!1463472 () Bool)

(declare-datatypes ((List!27277 0))(
  ( (Nil!27183) (Cons!27183 (h!32584 (_ BitVec 16)) (t!203907 List!27277)) )
))
(declare-datatypes ((TokenValue!4507 0))(
  ( (FloatLiteralValue!9014 (text!31994 List!27277)) (TokenValueExt!4506 (__x!18074 Int)) (Broken!22535 (value!137626 List!27277)) (Object!4600) (End!4507) (Def!4507) (Underscore!4507) (Match!4507) (Else!4507) (Error!4507) (Case!4507) (If!4507) (Extends!4507) (Abstract!4507) (Class!4507) (Val!4507) (DelimiterValue!9014 (del!4567 List!27277)) (KeywordValue!4513 (value!137627 List!27277)) (CommentValue!9014 (value!137628 List!27277)) (WhitespaceValue!9014 (value!137629 List!27277)) (IndentationValue!4507 (value!137630 List!27277)) (String!29638) (Int32!4507) (Broken!22536 (value!137631 List!27277)) (Boolean!4508) (Unit!40093) (OperatorValue!4510 (op!4567 List!27277)) (IdentifierValue!9014 (value!137632 List!27277)) (IdentifierValue!9015 (value!137633 List!27277)) (WhitespaceValue!9015 (value!137634 List!27277)) (True!9014) (False!9014) (Broken!22537 (value!137635 List!27277)) (Broken!22538 (value!137636 List!27277)) (True!9015) (RightBrace!4507) (RightBracket!4507) (Colon!4507) (Null!4507) (Comma!4507) (LeftBracket!4507) (False!9015) (LeftBrace!4507) (ImaginaryLiteralValue!4507 (text!31995 List!27277)) (StringLiteralValue!13521 (value!137637 List!27277)) (EOFValue!4507 (value!137638 List!27277)) (IdentValue!4507 (value!137639 List!27277)) (DelimiterValue!9015 (value!137640 List!27277)) (DedentValue!4507 (value!137641 List!27277)) (NewLineValue!4507 (value!137642 List!27277)) (IntegerValue!13521 (value!137643 (_ BitVec 32)) (text!31996 List!27277)) (IntegerValue!13522 (value!137644 Int) (text!31997 List!27277)) (Times!4507) (Or!4507) (Equal!4507) (Minus!4507) (Broken!22539 (value!137645 List!27277)) (And!4507) (Div!4507) (LessEqual!4507) (Mod!4507) (Concat!11200) (Not!4507) (Plus!4507) (SpaceValue!4507 (value!137646 List!27277)) (IntegerValue!13523 (value!137647 Int) (text!31998 List!27277)) (StringLiteralValue!13522 (text!31999 List!27277)) (FloatLiteralValue!9015 (text!32000 List!27277)) (BytesLiteralValue!4507 (value!137648 List!27277)) (CommentValue!9015 (value!137649 List!27277)) (StringLiteralValue!13523 (value!137650 List!27277)) (ErrorTokenValue!4507 (msg!4568 List!27277)) )
))
(declare-datatypes ((C!13532 0))(
  ( (C!13533 (val!7814 Int)) )
))
(declare-datatypes ((List!27278 0))(
  ( (Nil!27184) (Cons!27184 (h!32585 C!13532) (t!203908 List!27278)) )
))
(declare-datatypes ((IArray!17681 0))(
  ( (IArray!17682 (innerList!8898 List!27278)) )
))
(declare-datatypes ((Conc!8838 0))(
  ( (Node!8838 (left!20615 Conc!8838) (right!20945 Conc!8838) (csize!17906 Int) (cheight!9049 Int)) (Leaf!12996 (xs!11780 IArray!17681) (csize!17907 Int)) (Empty!8838) )
))
(declare-datatypes ((BalanceConc!17404 0))(
  ( (BalanceConc!17405 (c!362388 Conc!8838)) )
))
(declare-datatypes ((String!29639 0))(
  ( (String!29640 (value!137651 String)) )
))
(declare-datatypes ((Regex!6693 0))(
  ( (ElementMatch!6693 (c!362389 C!13532)) (Concat!11201 (regOne!13898 Regex!6693) (regTwo!13898 Regex!6693)) (EmptyExpr!6693) (Star!6693 (reg!7022 Regex!6693)) (EmptyLang!6693) (Union!6693 (regOne!13899 Regex!6693) (regTwo!13899 Regex!6693)) )
))
(declare-datatypes ((TokenValueInjection!8554 0))(
  ( (TokenValueInjection!8555 (toValue!6131 Int) (toChars!5990 Int)) )
))
(declare-datatypes ((Rule!8490 0))(
  ( (Rule!8491 (regex!4345 Regex!6693) (tag!4835 String!29639) (isSeparator!4345 Bool) (transformation!4345 TokenValueInjection!8554)) )
))
(declare-datatypes ((Token!8168 0))(
  ( (Token!8169 (value!137652 TokenValue!4507) (rule!6673 Rule!8490) (size!21382 Int) (originalCharacters!5115 List!27278)) )
))
(declare-datatypes ((List!27279 0))(
  ( (Nil!27185) (Cons!27185 (h!32586 Token!8168) (t!203909 List!27279)) )
))
(declare-fun tokens!456 () List!27279)

(declare-fun r!2363 () Rule!8490)

(declare-fun head!4960 (List!27279) Token!8168)

(assert (=> b!2284283 (= e!1463472 (= (rule!6673 (head!4960 tokens!456)) r!2363))))

(declare-fun tp!724073 () Bool)

(declare-fun b!2284284 () Bool)

(declare-fun e!1463470 () Bool)

(declare-fun e!1463460 () Bool)

(declare-fun inv!36771 (String!29639) Bool)

(declare-fun inv!36774 (TokenValueInjection!8554) Bool)

(assert (=> b!2284284 (= e!1463460 (and tp!724073 (inv!36771 (tag!4835 r!2363)) (inv!36774 (transformation!4345 r!2363)) e!1463470))))

(declare-fun b!2284285 () Bool)

(declare-fun res!976498 () Bool)

(declare-fun e!1463474 () Bool)

(assert (=> b!2284285 (=> (not res!976498) (not e!1463474))))

(declare-datatypes ((LexerInterface!3942 0))(
  ( (LexerInterfaceExt!3939 (__x!18075 Int)) (Lexer!3940) )
))
(declare-fun thiss!16613 () LexerInterface!3942)

(declare-datatypes ((List!27280 0))(
  ( (Nil!27186) (Cons!27186 (h!32587 Rule!8490) (t!203910 List!27280)) )
))
(declare-fun rules!1750 () List!27280)

(declare-fun rulesInvariant!3444 (LexerInterface!3942 List!27280) Bool)

(assert (=> b!2284285 (= res!976498 (rulesInvariant!3444 thiss!16613 rules!1750))))

(declare-fun b!2284286 () Bool)

(declare-fun res!976505 () Bool)

(declare-fun e!1463459 () Bool)

(assert (=> b!2284286 (=> (not res!976505) (not e!1463459))))

(declare-fun otherP!12 () List!27278)

(declare-fun input!1722 () List!27278)

(declare-fun isPrefix!2335 (List!27278 List!27278) Bool)

(assert (=> b!2284286 (= res!976505 (isPrefix!2335 otherP!12 input!1722))))

(declare-fun e!1463450 () Bool)

(assert (=> b!2284287 (= e!1463450 (and tp!724085 tp!724070))))

(declare-fun b!2284288 () Bool)

(declare-fun e!1463468 () Bool)

(assert (=> b!2284288 (= e!1463474 e!1463468)))

(declare-fun res!976507 () Bool)

(assert (=> b!2284288 (=> (not res!976507) (not e!1463468))))

(declare-datatypes ((IArray!17683 0))(
  ( (IArray!17684 (innerList!8899 List!27279)) )
))
(declare-datatypes ((Conc!8839 0))(
  ( (Node!8839 (left!20616 Conc!8839) (right!20946 Conc!8839) (csize!17908 Int) (cheight!9050 Int)) (Leaf!12997 (xs!11781 IArray!17683) (csize!17909 Int)) (Empty!8839) )
))
(declare-datatypes ((BalanceConc!17406 0))(
  ( (BalanceConc!17407 (c!362390 Conc!8839)) )
))
(declare-datatypes ((tuple2!26950 0))(
  ( (tuple2!26951 (_1!15985 BalanceConc!17406) (_2!15985 BalanceConc!17404)) )
))
(declare-fun lt!847800 () tuple2!26950)

(declare-fun suffix!886 () List!27278)

(declare-datatypes ((tuple2!26952 0))(
  ( (tuple2!26953 (_1!15986 List!27279) (_2!15986 List!27278)) )
))
(declare-fun list!10612 (BalanceConc!17406) List!27279)

(declare-fun list!10613 (BalanceConc!17404) List!27278)

(assert (=> b!2284288 (= res!976507 (= (tuple2!26953 (list!10612 (_1!15985 lt!847800)) (list!10613 (_2!15985 lt!847800))) (tuple2!26953 tokens!456 suffix!886)))))

(declare-fun lex!1781 (LexerInterface!3942 List!27280 BalanceConc!17404) tuple2!26950)

(declare-fun seqFromList!3049 (List!27278) BalanceConc!17404)

(assert (=> b!2284288 (= lt!847800 (lex!1781 thiss!16613 rules!1750 (seqFromList!3049 input!1722)))))

(declare-fun b!2284289 () Bool)

(declare-fun e!1463473 () Bool)

(declare-fun e!1463453 () Bool)

(assert (=> b!2284289 (= e!1463473 e!1463453)))

(declare-fun res!976511 () Bool)

(assert (=> b!2284289 (=> res!976511 e!1463453)))

(declare-datatypes ((tuple2!26954 0))(
  ( (tuple2!26955 (_1!15987 Token!8168) (_2!15987 List!27278)) )
))
(declare-fun lt!847792 () tuple2!26954)

(assert (=> b!2284289 (= res!976511 (not (= (h!32586 tokens!456) (_1!15987 lt!847792))))))

(declare-datatypes ((Option!5333 0))(
  ( (None!5332) (Some!5332 (v!30400 tuple2!26954)) )
))
(declare-fun get!8197 (Option!5333) tuple2!26954)

(declare-fun maxPrefix!2206 (LexerInterface!3942 List!27280 List!27278) Option!5333)

(assert (=> b!2284289 (= lt!847792 (get!8197 (maxPrefix!2206 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2284290 () Bool)

(declare-fun res!976503 () Bool)

(assert (=> b!2284290 (=> (not res!976503) (not e!1463459))))

(assert (=> b!2284290 (= res!976503 e!1463472)))

(declare-fun res!976510 () Bool)

(assert (=> b!2284290 (=> res!976510 e!1463472)))

(declare-fun lt!847794 () Bool)

(assert (=> b!2284290 (= res!976510 lt!847794)))

(declare-fun e!1463476 () Bool)

(declare-fun tp!724078 () Bool)

(declare-fun b!2284291 () Bool)

(declare-fun e!1463458 () Bool)

(declare-fun inv!21 (TokenValue!4507) Bool)

(assert (=> b!2284291 (= e!1463458 (and (inv!21 (value!137652 (h!32586 tokens!456))) e!1463476 tp!724078))))

(declare-fun b!2284292 () Bool)

(declare-fun e!1463477 () Bool)

(declare-fun tp!724071 () Bool)

(declare-fun otherR!12 () Rule!8490)

(assert (=> b!2284292 (= e!1463477 (and tp!724071 (inv!36771 (tag!4835 otherR!12)) (inv!36774 (transformation!4345 otherR!12)) e!1463450))))

(assert (=> b!2284294 (= e!1463470 (and tp!724074 tp!724072))))

(declare-fun b!2284295 () Bool)

(declare-fun tp!724075 () Bool)

(declare-fun e!1463469 () Bool)

(declare-fun inv!36775 (Token!8168) Bool)

(assert (=> b!2284295 (= e!1463469 (and (inv!36775 (h!32586 tokens!456)) e!1463458 tp!724075))))

(declare-fun b!2284296 () Bool)

(declare-fun res!976502 () Bool)

(assert (=> b!2284296 (=> res!976502 e!1463473)))

(get-info :version)

(assert (=> b!2284296 (= res!976502 ((_ is Nil!27185) tokens!456))))

(declare-fun b!2284297 () Bool)

(declare-fun e!1463465 () Bool)

(assert (=> b!2284297 (= e!1463459 (not e!1463465))))

(declare-fun res!976501 () Bool)

(assert (=> b!2284297 (=> res!976501 e!1463465)))

(declare-fun e!1463464 () Bool)

(assert (=> b!2284297 (= res!976501 e!1463464)))

(declare-fun res!976497 () Bool)

(assert (=> b!2284297 (=> (not res!976497) (not e!1463464))))

(assert (=> b!2284297 (= res!976497 (not lt!847794))))

(declare-fun ruleValid!1435 (LexerInterface!3942 Rule!8490) Bool)

(assert (=> b!2284297 (ruleValid!1435 thiss!16613 r!2363)))

(declare-datatypes ((Unit!40094 0))(
  ( (Unit!40095) )
))
(declare-fun lt!847799 () Unit!40094)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!840 (LexerInterface!3942 Rule!8490 List!27280) Unit!40094)

(assert (=> b!2284297 (= lt!847799 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!840 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2284298 () Bool)

(assert (=> b!2284298 (= e!1463468 e!1463459)))

(declare-fun res!976512 () Bool)

(assert (=> b!2284298 (=> (not res!976512) (not e!1463459))))

(declare-fun e!1463461 () Bool)

(assert (=> b!2284298 (= res!976512 e!1463461)))

(declare-fun res!976506 () Bool)

(assert (=> b!2284298 (=> res!976506 e!1463461)))

(assert (=> b!2284298 (= res!976506 lt!847794)))

(declare-fun isEmpty!15451 (List!27279) Bool)

(assert (=> b!2284298 (= lt!847794 (isEmpty!15451 tokens!456))))

(declare-fun e!1463463 () Bool)

(assert (=> b!2284299 (= e!1463463 (and tp!724077 tp!724087))))

(declare-fun b!2284300 () Bool)

(declare-fun e!1463462 () Bool)

(declare-fun tp_is_empty!10607 () Bool)

(declare-fun tp!724086 () Bool)

(assert (=> b!2284300 (= e!1463462 (and tp_is_empty!10607 tp!724086))))

(declare-fun b!2284301 () Bool)

(declare-fun size!21383 (BalanceConc!17404) Int)

(declare-fun charsOf!2733 (Token!8168) BalanceConc!17404)

(declare-fun size!21384 (List!27278) Int)

(assert (=> b!2284301 (= e!1463461 (<= (size!21383 (charsOf!2733 (head!4960 tokens!456))) (size!21384 otherP!12)))))

(declare-fun b!2284302 () Bool)

(declare-fun res!976509 () Bool)

(assert (=> b!2284302 (=> (not res!976509) (not e!1463474))))

(declare-fun contains!4719 (List!27280 Rule!8490) Bool)

(assert (=> b!2284302 (= res!976509 (contains!4719 rules!1750 r!2363))))

(declare-fun b!2284303 () Bool)

(declare-fun res!976499 () Bool)

(assert (=> b!2284303 (=> (not res!976499) (not e!1463474))))

(assert (=> b!2284303 (= res!976499 (contains!4719 rules!1750 otherR!12))))

(declare-fun b!2284304 () Bool)

(assert (=> b!2284304 (= e!1463453 true)))

(declare-fun lt!847796 () Int)

(declare-fun lt!847790 () List!27278)

(assert (=> b!2284304 (= lt!847796 (size!21384 lt!847790))))

(declare-fun lt!847797 () Int)

(assert (=> b!2284304 (= lt!847797 (size!21384 otherP!12))))

(declare-fun lt!847793 () List!27278)

(assert (=> b!2284304 (= (_2!15987 lt!847792) lt!847793)))

(declare-fun lt!847798 () Unit!40094)

(declare-fun lemmaSamePrefixThenSameSuffix!1036 (List!27278 List!27278 List!27278 List!27278 List!27278) Unit!40094)

(assert (=> b!2284304 (= lt!847798 (lemmaSamePrefixThenSameSuffix!1036 lt!847790 (_2!15987 lt!847792) lt!847790 lt!847793 input!1722))))

(declare-fun getSuffix!1126 (List!27278 List!27278) List!27278)

(assert (=> b!2284304 (= lt!847793 (getSuffix!1126 input!1722 lt!847790))))

(declare-fun ++!6641 (List!27278 List!27278) List!27278)

(assert (=> b!2284304 (isPrefix!2335 lt!847790 (++!6641 lt!847790 (_2!15987 lt!847792)))))

(declare-fun lt!847791 () Unit!40094)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1540 (List!27278 List!27278) Unit!40094)

(assert (=> b!2284304 (= lt!847791 (lemmaConcatTwoListThenFirstIsPrefix!1540 lt!847790 (_2!15987 lt!847792)))))

(assert (=> b!2284304 (= lt!847790 (list!10613 (charsOf!2733 (h!32586 tokens!456))))))

(declare-fun b!2284305 () Bool)

(declare-fun matchR!2950 (Regex!6693 List!27278) Bool)

(assert (=> b!2284305 (= e!1463464 (not (matchR!2950 (regex!4345 r!2363) (list!10613 (charsOf!2733 (head!4960 tokens!456))))))))

(declare-fun b!2284306 () Bool)

(declare-fun res!976500 () Bool)

(assert (=> b!2284306 (=> (not res!976500) (not e!1463459))))

(assert (=> b!2284306 (= res!976500 (not (= r!2363 otherR!12)))))

(declare-fun b!2284307 () Bool)

(assert (=> b!2284307 (= e!1463465 e!1463473)))

(declare-fun res!976508 () Bool)

(assert (=> b!2284307 (=> res!976508 e!1463473)))

(declare-fun getIndex!358 (List!27280 Rule!8490) Int)

(assert (=> b!2284307 (= res!976508 (<= (getIndex!358 rules!1750 r!2363) (getIndex!358 rules!1750 otherR!12)))))

(assert (=> b!2284307 (ruleValid!1435 thiss!16613 otherR!12)))

(declare-fun lt!847795 () Unit!40094)

(assert (=> b!2284307 (= lt!847795 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!840 thiss!16613 otherR!12 rules!1750))))

(declare-fun e!1463455 () Bool)

(declare-fun tp!724076 () Bool)

(declare-fun b!2284308 () Bool)

(assert (=> b!2284308 (= e!1463475 (and tp!724076 (inv!36771 (tag!4835 (h!32587 rules!1750))) (inv!36774 (transformation!4345 (h!32587 rules!1750))) e!1463455))))

(declare-fun tp!724083 () Bool)

(declare-fun b!2284309 () Bool)

(assert (=> b!2284309 (= e!1463476 (and tp!724083 (inv!36771 (tag!4835 (rule!6673 (h!32586 tokens!456)))) (inv!36774 (transformation!4345 (rule!6673 (h!32586 tokens!456)))) e!1463463))))

(declare-fun b!2284310 () Bool)

(declare-fun e!1463457 () Bool)

(declare-fun tp!724082 () Bool)

(assert (=> b!2284310 (= e!1463457 (and tp_is_empty!10607 tp!724082))))

(declare-fun b!2284293 () Bool)

(declare-fun e!1463451 () Bool)

(declare-fun tp!724081 () Bool)

(assert (=> b!2284293 (= e!1463451 (and tp_is_empty!10607 tp!724081))))

(declare-fun res!976513 () Bool)

(assert (=> start!223892 (=> (not res!976513) (not e!1463474))))

(assert (=> start!223892 (= res!976513 ((_ is Lexer!3940) thiss!16613))))

(assert (=> start!223892 e!1463474))

(assert (=> start!223892 true))

(assert (=> start!223892 e!1463451))

(assert (=> start!223892 e!1463477))

(assert (=> start!223892 e!1463462))

(assert (=> start!223892 e!1463457))

(assert (=> start!223892 e!1463452))

(assert (=> start!223892 e!1463460))

(assert (=> start!223892 e!1463469))

(assert (=> b!2284311 (= e!1463455 (and tp!724079 tp!724080))))

(declare-fun b!2284312 () Bool)

(declare-fun res!976504 () Bool)

(assert (=> b!2284312 (=> (not res!976504) (not e!1463474))))

(declare-fun isEmpty!15452 (List!27280) Bool)

(assert (=> b!2284312 (= res!976504 (not (isEmpty!15452 rules!1750)))))

(assert (= (and start!223892 res!976513) b!2284312))

(assert (= (and b!2284312 res!976504) b!2284285))

(assert (= (and b!2284285 res!976498) b!2284302))

(assert (= (and b!2284302 res!976509) b!2284303))

(assert (= (and b!2284303 res!976499) b!2284288))

(assert (= (and b!2284288 res!976507) b!2284298))

(assert (= (and b!2284298 (not res!976506)) b!2284301))

(assert (= (and b!2284298 res!976512) b!2284290))

(assert (= (and b!2284290 (not res!976510)) b!2284283))

(assert (= (and b!2284290 res!976503) b!2284286))

(assert (= (and b!2284286 res!976505) b!2284306))

(assert (= (and b!2284306 res!976500) b!2284297))

(assert (= (and b!2284297 res!976497) b!2284305))

(assert (= (and b!2284297 (not res!976501)) b!2284307))

(assert (= (and b!2284307 (not res!976508)) b!2284296))

(assert (= (and b!2284296 (not res!976502)) b!2284289))

(assert (= (and b!2284289 (not res!976511)) b!2284304))

(assert (= (and start!223892 ((_ is Cons!27184) input!1722)) b!2284293))

(assert (= b!2284292 b!2284287))

(assert (= start!223892 b!2284292))

(assert (= (and start!223892 ((_ is Cons!27184) suffix!886)) b!2284300))

(assert (= (and start!223892 ((_ is Cons!27184) otherP!12)) b!2284310))

(assert (= b!2284308 b!2284311))

(assert (= b!2284282 b!2284308))

(assert (= (and start!223892 ((_ is Cons!27186) rules!1750)) b!2284282))

(assert (= b!2284284 b!2284294))

(assert (= start!223892 b!2284284))

(assert (= b!2284309 b!2284299))

(assert (= b!2284291 b!2284309))

(assert (= b!2284295 b!2284291))

(assert (= (and start!223892 ((_ is Cons!27185) tokens!456)) b!2284295))

(declare-fun m!2712199 () Bool)

(assert (=> b!2284312 m!2712199))

(declare-fun m!2712201 () Bool)

(assert (=> b!2284304 m!2712201))

(declare-fun m!2712203 () Bool)

(assert (=> b!2284304 m!2712203))

(declare-fun m!2712205 () Bool)

(assert (=> b!2284304 m!2712205))

(declare-fun m!2712207 () Bool)

(assert (=> b!2284304 m!2712207))

(declare-fun m!2712209 () Bool)

(assert (=> b!2284304 m!2712209))

(declare-fun m!2712211 () Bool)

(assert (=> b!2284304 m!2712211))

(assert (=> b!2284304 m!2712209))

(assert (=> b!2284304 m!2712203))

(declare-fun m!2712213 () Bool)

(assert (=> b!2284304 m!2712213))

(declare-fun m!2712215 () Bool)

(assert (=> b!2284304 m!2712215))

(declare-fun m!2712217 () Bool)

(assert (=> b!2284304 m!2712217))

(declare-fun m!2712219 () Bool)

(assert (=> b!2284308 m!2712219))

(declare-fun m!2712221 () Bool)

(assert (=> b!2284308 m!2712221))

(declare-fun m!2712223 () Bool)

(assert (=> b!2284303 m!2712223))

(declare-fun m!2712225 () Bool)

(assert (=> b!2284284 m!2712225))

(declare-fun m!2712227 () Bool)

(assert (=> b!2284284 m!2712227))

(declare-fun m!2712229 () Bool)

(assert (=> b!2284289 m!2712229))

(assert (=> b!2284289 m!2712229))

(declare-fun m!2712231 () Bool)

(assert (=> b!2284289 m!2712231))

(declare-fun m!2712233 () Bool)

(assert (=> b!2284285 m!2712233))

(declare-fun m!2712235 () Bool)

(assert (=> b!2284286 m!2712235))

(declare-fun m!2712237 () Bool)

(assert (=> b!2284302 m!2712237))

(declare-fun m!2712239 () Bool)

(assert (=> b!2284291 m!2712239))

(declare-fun m!2712241 () Bool)

(assert (=> b!2284309 m!2712241))

(declare-fun m!2712243 () Bool)

(assert (=> b!2284309 m!2712243))

(declare-fun m!2712245 () Bool)

(assert (=> b!2284297 m!2712245))

(declare-fun m!2712247 () Bool)

(assert (=> b!2284297 m!2712247))

(declare-fun m!2712249 () Bool)

(assert (=> b!2284295 m!2712249))

(declare-fun m!2712251 () Bool)

(assert (=> b!2284288 m!2712251))

(declare-fun m!2712253 () Bool)

(assert (=> b!2284288 m!2712253))

(declare-fun m!2712255 () Bool)

(assert (=> b!2284288 m!2712255))

(assert (=> b!2284288 m!2712255))

(declare-fun m!2712257 () Bool)

(assert (=> b!2284288 m!2712257))

(declare-fun m!2712259 () Bool)

(assert (=> b!2284298 m!2712259))

(declare-fun m!2712261 () Bool)

(assert (=> b!2284305 m!2712261))

(assert (=> b!2284305 m!2712261))

(declare-fun m!2712263 () Bool)

(assert (=> b!2284305 m!2712263))

(assert (=> b!2284305 m!2712263))

(declare-fun m!2712265 () Bool)

(assert (=> b!2284305 m!2712265))

(assert (=> b!2284305 m!2712265))

(declare-fun m!2712267 () Bool)

(assert (=> b!2284305 m!2712267))

(assert (=> b!2284283 m!2712261))

(assert (=> b!2284301 m!2712261))

(assert (=> b!2284301 m!2712261))

(assert (=> b!2284301 m!2712263))

(assert (=> b!2284301 m!2712263))

(declare-fun m!2712269 () Bool)

(assert (=> b!2284301 m!2712269))

(assert (=> b!2284301 m!2712217))

(declare-fun m!2712271 () Bool)

(assert (=> b!2284292 m!2712271))

(declare-fun m!2712273 () Bool)

(assert (=> b!2284292 m!2712273))

(declare-fun m!2712275 () Bool)

(assert (=> b!2284307 m!2712275))

(declare-fun m!2712277 () Bool)

(assert (=> b!2284307 m!2712277))

(declare-fun m!2712279 () Bool)

(assert (=> b!2284307 m!2712279))

(declare-fun m!2712281 () Bool)

(assert (=> b!2284307 m!2712281))

(check-sat b_and!180751 (not b!2284304) (not b_next!69101) (not b!2284302) (not b!2284297) (not b!2284292) (not b!2284286) (not b_next!69115) (not b!2284291) (not b_next!69109) b_and!180755 (not b!2284298) (not b!2284289) b_and!180749 b_and!180747 b_and!180753 (not b!2284300) (not b!2284284) (not b_next!69107) (not b!2284283) (not b!2284301) tp_is_empty!10607 (not b_next!69105) (not b!2284305) (not b!2284310) (not b_next!69103) (not b!2284285) b_and!180745 (not b!2284293) (not b!2284307) (not b!2284309) (not b!2284282) (not b!2284312) (not b_next!69113) (not b!2284288) (not b_next!69111) (not b!2284308) b_and!180759 (not b!2284303) (not b!2284295) b_and!180757)
(check-sat b_and!180751 b_and!180749 (not b_next!69101) (not b_next!69107) (not b_next!69105) (not b_next!69103) b_and!180745 (not b_next!69115) (not b_next!69113) (not b_next!69111) b_and!180759 b_and!180757 (not b_next!69109) b_and!180755 b_and!180747 b_and!180753)
