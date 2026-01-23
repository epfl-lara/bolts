; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!219884 () Bool)

(assert start!219884)

(declare-fun b!2253471 () Bool)

(declare-fun b_free!66125 () Bool)

(declare-fun b_next!66829 () Bool)

(assert (=> b!2253471 (= b_free!66125 (not b_next!66829))))

(declare-fun tp!712118 () Bool)

(declare-fun b_and!176625 () Bool)

(assert (=> b!2253471 (= tp!712118 b_and!176625)))

(declare-fun b_free!66127 () Bool)

(declare-fun b_next!66831 () Bool)

(assert (=> b!2253471 (= b_free!66127 (not b_next!66831))))

(declare-fun tp!712129 () Bool)

(declare-fun b_and!176627 () Bool)

(assert (=> b!2253471 (= tp!712129 b_and!176627)))

(declare-fun b!2253458 () Bool)

(declare-fun b_free!66129 () Bool)

(declare-fun b_next!66833 () Bool)

(assert (=> b!2253458 (= b_free!66129 (not b_next!66833))))

(declare-fun tp!712116 () Bool)

(declare-fun b_and!176629 () Bool)

(assert (=> b!2253458 (= tp!712116 b_and!176629)))

(declare-fun b_free!66131 () Bool)

(declare-fun b_next!66835 () Bool)

(assert (=> b!2253458 (= b_free!66131 (not b_next!66835))))

(declare-fun tp!712123 () Bool)

(declare-fun b_and!176631 () Bool)

(assert (=> b!2253458 (= tp!712123 b_and!176631)))

(declare-fun b!2253463 () Bool)

(declare-fun b_free!66133 () Bool)

(declare-fun b_next!66837 () Bool)

(assert (=> b!2253463 (= b_free!66133 (not b_next!66837))))

(declare-fun tp!712125 () Bool)

(declare-fun b_and!176633 () Bool)

(assert (=> b!2253463 (= tp!712125 b_and!176633)))

(declare-fun b_free!66135 () Bool)

(declare-fun b_next!66839 () Bool)

(assert (=> b!2253463 (= b_free!66135 (not b_next!66839))))

(declare-fun tp!712128 () Bool)

(declare-fun b_and!176635 () Bool)

(assert (=> b!2253463 (= tp!712128 b_and!176635)))

(declare-fun b!2253466 () Bool)

(declare-fun b_free!66137 () Bool)

(declare-fun b_next!66841 () Bool)

(assert (=> b!2253466 (= b_free!66137 (not b_next!66841))))

(declare-fun tp!712115 () Bool)

(declare-fun b_and!176637 () Bool)

(assert (=> b!2253466 (= tp!712115 b_and!176637)))

(declare-fun b_free!66139 () Bool)

(declare-fun b_next!66843 () Bool)

(assert (=> b!2253466 (= b_free!66139 (not b_next!66843))))

(declare-fun tp!712127 () Bool)

(declare-fun b_and!176639 () Bool)

(assert (=> b!2253466 (= tp!712127 b_and!176639)))

(declare-fun b!2253445 () Bool)

(declare-fun res!962945 () Bool)

(declare-fun e!1442175 () Bool)

(assert (=> b!2253445 (=> (not res!962945) (not e!1442175))))

(declare-datatypes ((List!26799 0))(
  ( (Nil!26705) (Cons!26705 (h!32106 (_ BitVec 16)) (t!201027 List!26799)) )
))
(declare-datatypes ((TokenValue!4399 0))(
  ( (FloatLiteralValue!8798 (text!31238 List!26799)) (TokenValueExt!4398 (__x!17858 Int)) (Broken!21995 (value!134548 List!26799)) (Object!4492) (End!4399) (Def!4399) (Underscore!4399) (Match!4399) (Else!4399) (Error!4399) (Case!4399) (If!4399) (Extends!4399) (Abstract!4399) (Class!4399) (Val!4399) (DelimiterValue!8798 (del!4459 List!26799)) (KeywordValue!4405 (value!134549 List!26799)) (CommentValue!8798 (value!134550 List!26799)) (WhitespaceValue!8798 (value!134551 List!26799)) (IndentationValue!4399 (value!134552 List!26799)) (String!29098) (Int32!4399) (Broken!21996 (value!134553 List!26799)) (Boolean!4400) (Unit!39637) (OperatorValue!4402 (op!4459 List!26799)) (IdentifierValue!8798 (value!134554 List!26799)) (IdentifierValue!8799 (value!134555 List!26799)) (WhitespaceValue!8799 (value!134556 List!26799)) (True!8798) (False!8798) (Broken!21997 (value!134557 List!26799)) (Broken!21998 (value!134558 List!26799)) (True!8799) (RightBrace!4399) (RightBracket!4399) (Colon!4399) (Null!4399) (Comma!4399) (LeftBracket!4399) (False!8799) (LeftBrace!4399) (ImaginaryLiteralValue!4399 (text!31239 List!26799)) (StringLiteralValue!13197 (value!134559 List!26799)) (EOFValue!4399 (value!134560 List!26799)) (IdentValue!4399 (value!134561 List!26799)) (DelimiterValue!8799 (value!134562 List!26799)) (DedentValue!4399 (value!134563 List!26799)) (NewLineValue!4399 (value!134564 List!26799)) (IntegerValue!13197 (value!134565 (_ BitVec 32)) (text!31240 List!26799)) (IntegerValue!13198 (value!134566 Int) (text!31241 List!26799)) (Times!4399) (Or!4399) (Equal!4399) (Minus!4399) (Broken!21999 (value!134567 List!26799)) (And!4399) (Div!4399) (LessEqual!4399) (Mod!4399) (Concat!10984) (Not!4399) (Plus!4399) (SpaceValue!4399 (value!134568 List!26799)) (IntegerValue!13199 (value!134569 Int) (text!31242 List!26799)) (StringLiteralValue!13198 (text!31243 List!26799)) (FloatLiteralValue!8799 (text!31244 List!26799)) (BytesLiteralValue!4399 (value!134570 List!26799)) (CommentValue!8799 (value!134571 List!26799)) (StringLiteralValue!13199 (value!134572 List!26799)) (ErrorTokenValue!4399 (msg!4460 List!26799)) )
))
(declare-datatypes ((C!13316 0))(
  ( (C!13317 (val!7706 Int)) )
))
(declare-datatypes ((List!26800 0))(
  ( (Nil!26706) (Cons!26706 (h!32107 C!13316) (t!201028 List!26800)) )
))
(declare-datatypes ((IArray!17249 0))(
  ( (IArray!17250 (innerList!8682 List!26800)) )
))
(declare-datatypes ((Conc!8622 0))(
  ( (Node!8622 (left!20285 Conc!8622) (right!20615 Conc!8622) (csize!17474 Int) (cheight!8833 Int)) (Leaf!12726 (xs!11564 IArray!17249) (csize!17475 Int)) (Empty!8622) )
))
(declare-datatypes ((BalanceConc!16972 0))(
  ( (BalanceConc!16973 (c!358308 Conc!8622)) )
))
(declare-datatypes ((String!29099 0))(
  ( (String!29100 (value!134573 String)) )
))
(declare-datatypes ((Regex!6585 0))(
  ( (ElementMatch!6585 (c!358309 C!13316)) (Concat!10985 (regOne!13682 Regex!6585) (regTwo!13682 Regex!6585)) (EmptyExpr!6585) (Star!6585 (reg!6914 Regex!6585)) (EmptyLang!6585) (Union!6585 (regOne!13683 Regex!6585) (regTwo!13683 Regex!6585)) )
))
(declare-datatypes ((TokenValueInjection!8338 0))(
  ( (TokenValueInjection!8339 (toValue!5979 Int) (toChars!5838 Int)) )
))
(declare-datatypes ((Rule!8274 0))(
  ( (Rule!8275 (regex!4237 Regex!6585) (tag!4727 String!29099) (isSeparator!4237 Bool) (transformation!4237 TokenValueInjection!8338)) )
))
(declare-datatypes ((List!26801 0))(
  ( (Nil!26707) (Cons!26707 (h!32108 Rule!8274) (t!201029 List!26801)) )
))
(declare-fun rules!1750 () List!26801)

(declare-fun r!2363 () Rule!8274)

(declare-fun contains!4589 (List!26801 Rule!8274) Bool)

(assert (=> b!2253445 (= res!962945 (contains!4589 rules!1750 r!2363))))

(declare-fun b!2253446 () Bool)

(declare-fun res!962957 () Bool)

(declare-fun e!1442155 () Bool)

(assert (=> b!2253446 (=> res!962957 e!1442155)))

(declare-fun lt!837635 () List!26800)

(declare-fun matchR!2846 (Regex!6585 List!26800) Bool)

(assert (=> b!2253446 (= res!962957 (not (matchR!2846 (regex!4237 r!2363) lt!837635)))))

(declare-fun b!2253447 () Bool)

(declare-fun e!1442166 () Bool)

(declare-fun e!1442153 () Bool)

(declare-fun tp!712121 () Bool)

(declare-fun inv!36239 (String!29099) Bool)

(declare-fun inv!36242 (TokenValueInjection!8338) Bool)

(assert (=> b!2253447 (= e!1442153 (and tp!712121 (inv!36239 (tag!4727 (h!32108 rules!1750))) (inv!36242 (transformation!4237 (h!32108 rules!1750))) e!1442166))))

(declare-fun b!2253448 () Bool)

(declare-fun e!1442170 () Bool)

(declare-datatypes ((Token!7952 0))(
  ( (Token!7953 (value!134574 TokenValue!4399) (rule!6541 Rule!8274) (size!20904 Int) (originalCharacters!5007 List!26800)) )
))
(declare-datatypes ((List!26802 0))(
  ( (Nil!26708) (Cons!26708 (h!32109 Token!7952) (t!201030 List!26802)) )
))
(declare-fun tokens!456 () List!26802)

(declare-fun tp!712113 () Bool)

(declare-fun e!1442152 () Bool)

(declare-fun inv!21 (TokenValue!4399) Bool)

(assert (=> b!2253448 (= e!1442170 (and (inv!21 (value!134574 (h!32109 tokens!456))) e!1442152 tp!712113))))

(declare-fun b!2253449 () Bool)

(declare-fun res!962946 () Bool)

(declare-fun e!1442167 () Bool)

(assert (=> b!2253449 (=> (not res!962946) (not e!1442167))))

(declare-fun e!1442154 () Bool)

(assert (=> b!2253449 (= res!962946 e!1442154)))

(declare-fun res!962948 () Bool)

(assert (=> b!2253449 (=> res!962948 e!1442154)))

(declare-fun lt!837642 () Bool)

(assert (=> b!2253449 (= res!962948 lt!837642)))

(declare-fun b!2253450 () Bool)

(declare-fun res!962960 () Bool)

(assert (=> b!2253450 (=> res!962960 e!1442155)))

(declare-fun lt!837631 () Int)

(declare-fun lt!837639 () Int)

(assert (=> b!2253450 (= res!962960 (>= lt!837631 lt!837639))))

(declare-fun b!2253451 () Bool)

(declare-fun e!1442172 () Bool)

(declare-fun e!1442181 () Bool)

(assert (=> b!2253451 (= e!1442172 e!1442181)))

(declare-fun res!962951 () Bool)

(assert (=> b!2253451 (=> res!962951 e!1442181)))

(declare-fun lt!837644 () Int)

(declare-fun lt!837634 () Int)

(assert (=> b!2253451 (= res!962951 (not (= lt!837644 lt!837634)))))

(declare-fun size!20905 (List!26800) Int)

(assert (=> b!2253451 (= lt!837634 (size!20905 lt!837635))))

(declare-fun otherP!12 () List!26800)

(assert (=> b!2253451 (= lt!837644 (size!20905 otherP!12))))

(declare-datatypes ((tuple2!26230 0))(
  ( (tuple2!26231 (_1!15625 Token!7952) (_2!15625 List!26800)) )
))
(declare-fun lt!837637 () tuple2!26230)

(declare-fun lt!837643 () List!26800)

(assert (=> b!2253451 (= (_2!15625 lt!837637) lt!837643)))

(declare-fun input!1722 () List!26800)

(declare-datatypes ((Unit!39638 0))(
  ( (Unit!39639) )
))
(declare-fun lt!837630 () Unit!39638)

(declare-fun lemmaSamePrefixThenSameSuffix!982 (List!26800 List!26800 List!26800 List!26800 List!26800) Unit!39638)

(assert (=> b!2253451 (= lt!837630 (lemmaSamePrefixThenSameSuffix!982 lt!837635 (_2!15625 lt!837637) lt!837635 lt!837643 input!1722))))

(declare-fun getSuffix!1062 (List!26800 List!26800) List!26800)

(assert (=> b!2253451 (= lt!837643 (getSuffix!1062 input!1722 lt!837635))))

(declare-fun isPrefix!2227 (List!26800 List!26800) Bool)

(declare-fun ++!6509 (List!26800 List!26800) List!26800)

(assert (=> b!2253451 (isPrefix!2227 lt!837635 (++!6509 lt!837635 (_2!15625 lt!837637)))))

(declare-fun lt!837633 () Unit!39638)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1472 (List!26800 List!26800) Unit!39638)

(assert (=> b!2253451 (= lt!837633 (lemmaConcatTwoListThenFirstIsPrefix!1472 lt!837635 (_2!15625 lt!837637)))))

(declare-fun list!10261 (BalanceConc!16972) List!26800)

(declare-fun charsOf!2625 (Token!7952) BalanceConc!16972)

(assert (=> b!2253451 (= lt!837635 (list!10261 (charsOf!2625 (h!32109 tokens!456))))))

(declare-fun b!2253452 () Bool)

(declare-fun e!1442160 () Bool)

(declare-fun e!1442165 () Bool)

(assert (=> b!2253452 (= e!1442160 e!1442165)))

(declare-fun res!962943 () Bool)

(assert (=> b!2253452 (=> res!962943 e!1442165)))

(get-info :version)

(assert (=> b!2253452 (= res!962943 (or (<= lt!837639 lt!837631) ((_ is Nil!26708) tokens!456)))))

(declare-fun otherR!12 () Rule!8274)

(declare-fun getIndex!258 (List!26801 Rule!8274) Int)

(assert (=> b!2253452 (= lt!837631 (getIndex!258 rules!1750 otherR!12))))

(assert (=> b!2253452 (= lt!837639 (getIndex!258 rules!1750 r!2363))))

(declare-datatypes ((LexerInterface!3834 0))(
  ( (LexerInterfaceExt!3831 (__x!17859 Int)) (Lexer!3832) )
))
(declare-fun thiss!16613 () LexerInterface!3834)

(declare-fun ruleValid!1329 (LexerInterface!3834 Rule!8274) Bool)

(assert (=> b!2253452 (ruleValid!1329 thiss!16613 otherR!12)))

(declare-fun lt!837627 () Unit!39638)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!736 (LexerInterface!3834 Rule!8274 List!26801) Unit!39638)

(assert (=> b!2253452 (= lt!837627 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!736 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2253453 () Bool)

(declare-fun e!1442151 () Bool)

(declare-fun tp_is_empty!10391 () Bool)

(declare-fun tp!712124 () Bool)

(assert (=> b!2253453 (= e!1442151 (and tp_is_empty!10391 tp!712124))))

(declare-fun res!962940 () Bool)

(assert (=> start!219884 (=> (not res!962940) (not e!1442175))))

(assert (=> start!219884 (= res!962940 ((_ is Lexer!3832) thiss!16613))))

(assert (=> start!219884 e!1442175))

(assert (=> start!219884 true))

(declare-fun e!1442157 () Bool)

(assert (=> start!219884 e!1442157))

(declare-fun e!1442178 () Bool)

(assert (=> start!219884 e!1442178))

(assert (=> start!219884 e!1442151))

(declare-fun e!1442159 () Bool)

(assert (=> start!219884 e!1442159))

(declare-fun e!1442174 () Bool)

(assert (=> start!219884 e!1442174))

(declare-fun e!1442169 () Bool)

(assert (=> start!219884 e!1442169))

(declare-fun e!1442177 () Bool)

(assert (=> start!219884 e!1442177))

(declare-fun b!2253454 () Bool)

(declare-fun e!1442171 () Bool)

(declare-fun head!4806 (List!26802) Token!7952)

(assert (=> b!2253454 (= e!1442171 (not (matchR!2846 (regex!4237 r!2363) (list!10261 (charsOf!2625 (head!4806 tokens!456))))))))

(declare-fun b!2253455 () Bool)

(declare-fun res!962942 () Bool)

(assert (=> b!2253455 (=> (not res!962942) (not e!1442175))))

(declare-fun rulesInvariant!3336 (LexerInterface!3834 List!26801) Bool)

(assert (=> b!2253455 (= res!962942 (rulesInvariant!3336 thiss!16613 rules!1750))))

(declare-fun e!1442164 () Bool)

(declare-fun b!2253456 () Bool)

(declare-fun tp!712120 () Bool)

(assert (=> b!2253456 (= e!1442178 (and tp!712120 (inv!36239 (tag!4727 otherR!12)) (inv!36242 (transformation!4237 otherR!12)) e!1442164))))

(declare-fun b!2253457 () Bool)

(declare-fun validRegex!2462 (Regex!6585) Bool)

(assert (=> b!2253457 (= e!1442155 (validRegex!2462 (regex!4237 otherR!12)))))

(assert (=> b!2253457 (not (matchR!2846 (regex!4237 otherR!12) lt!837635))))

(declare-fun lt!837636 () Unit!39638)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!184 (LexerInterface!3834 List!26801 Rule!8274 List!26800 List!26800 Rule!8274) Unit!39638)

(assert (=> b!2253457 (= lt!837636 (lemmaMaxPrefNoSmallerRuleMatches!184 thiss!16613 rules!1750 r!2363 lt!837635 input!1722 otherR!12))))

(declare-fun e!1442161 () Bool)

(assert (=> b!2253458 (= e!1442161 (and tp!712116 tp!712123))))

(declare-fun b!2253459 () Bool)

(assert (=> b!2253459 (= e!1442165 e!1442172)))

(declare-fun res!962959 () Bool)

(assert (=> b!2253459 (=> res!962959 e!1442172)))

(assert (=> b!2253459 (= res!962959 (not (= (h!32109 tokens!456) (_1!15625 lt!837637))))))

(declare-datatypes ((Option!5213 0))(
  ( (None!5212) (Some!5212 (v!30234 tuple2!26230)) )
))
(declare-fun lt!837641 () Option!5213)

(declare-fun get!8063 (Option!5213) tuple2!26230)

(assert (=> b!2253459 (= lt!837637 (get!8063 lt!837641))))

(declare-fun maxPrefix!2122 (LexerInterface!3834 List!26801 List!26800) Option!5213)

(assert (=> b!2253459 (= lt!837641 (maxPrefix!2122 thiss!16613 rules!1750 input!1722))))

(declare-fun b!2253460 () Bool)

(declare-fun e!1442179 () Bool)

(assert (=> b!2253460 (= e!1442175 e!1442179)))

(declare-fun res!962954 () Bool)

(assert (=> b!2253460 (=> (not res!962954) (not e!1442179))))

(declare-datatypes ((IArray!17251 0))(
  ( (IArray!17252 (innerList!8683 List!26802)) )
))
(declare-datatypes ((Conc!8623 0))(
  ( (Node!8623 (left!20286 Conc!8623) (right!20616 Conc!8623) (csize!17476 Int) (cheight!8834 Int)) (Leaf!12727 (xs!11565 IArray!17251) (csize!17477 Int)) (Empty!8623) )
))
(declare-datatypes ((BalanceConc!16974 0))(
  ( (BalanceConc!16975 (c!358310 Conc!8623)) )
))
(declare-datatypes ((tuple2!26232 0))(
  ( (tuple2!26233 (_1!15626 BalanceConc!16974) (_2!15626 BalanceConc!16972)) )
))
(declare-fun lt!837628 () tuple2!26232)

(declare-fun suffix!886 () List!26800)

(declare-datatypes ((tuple2!26234 0))(
  ( (tuple2!26235 (_1!15627 List!26802) (_2!15627 List!26800)) )
))
(declare-fun list!10262 (BalanceConc!16974) List!26802)

(assert (=> b!2253460 (= res!962954 (= (tuple2!26235 (list!10262 (_1!15626 lt!837628)) (list!10261 (_2!15626 lt!837628))) (tuple2!26235 tokens!456 suffix!886)))))

(declare-fun lex!1673 (LexerInterface!3834 List!26801 BalanceConc!16972) tuple2!26232)

(declare-fun seqFromList!2941 (List!26800) BalanceConc!16972)

(assert (=> b!2253460 (= lt!837628 (lex!1673 thiss!16613 rules!1750 (seqFromList!2941 input!1722)))))

(declare-fun b!2253461 () Bool)

(declare-fun res!962955 () Bool)

(assert (=> b!2253461 (=> (not res!962955) (not e!1442167))))

(assert (=> b!2253461 (= res!962955 (isPrefix!2227 otherP!12 input!1722))))

(declare-fun tp!712112 () Bool)

(declare-fun b!2253462 () Bool)

(assert (=> b!2253462 (= e!1442152 (and tp!712112 (inv!36239 (tag!4727 (rule!6541 (h!32109 tokens!456)))) (inv!36242 (transformation!4237 (rule!6541 (h!32109 tokens!456)))) e!1442161))))

(assert (=> b!2253463 (= e!1442164 (and tp!712125 tp!712128))))

(declare-fun b!2253464 () Bool)

(declare-fun tp!712114 () Bool)

(declare-fun e!1442180 () Bool)

(assert (=> b!2253464 (= e!1442169 (and tp!712114 (inv!36239 (tag!4727 r!2363)) (inv!36242 (transformation!4237 r!2363)) e!1442180))))

(declare-fun b!2253465 () Bool)

(declare-fun tp!712126 () Bool)

(assert (=> b!2253465 (= e!1442159 (and tp_is_empty!10391 tp!712126))))

(assert (=> b!2253466 (= e!1442180 (and tp!712115 tp!712127))))

(declare-fun b!2253467 () Bool)

(assert (=> b!2253467 (= e!1442179 e!1442167)))

(declare-fun res!962953 () Bool)

(assert (=> b!2253467 (=> (not res!962953) (not e!1442167))))

(declare-fun e!1442168 () Bool)

(assert (=> b!2253467 (= res!962953 e!1442168)))

(declare-fun res!962949 () Bool)

(assert (=> b!2253467 (=> res!962949 e!1442168)))

(assert (=> b!2253467 (= res!962949 lt!837642)))

(declare-fun isEmpty!15068 (List!26802) Bool)

(assert (=> b!2253467 (= lt!837642 (isEmpty!15068 tokens!456))))

(declare-fun b!2253468 () Bool)

(assert (=> b!2253468 (= e!1442167 (not e!1442160))))

(declare-fun res!962950 () Bool)

(assert (=> b!2253468 (=> res!962950 e!1442160)))

(assert (=> b!2253468 (= res!962950 e!1442171)))

(declare-fun res!962941 () Bool)

(assert (=> b!2253468 (=> (not res!962941) (not e!1442171))))

(assert (=> b!2253468 (= res!962941 (not lt!837642))))

(assert (=> b!2253468 (ruleValid!1329 thiss!16613 r!2363)))

(declare-fun lt!837640 () Unit!39638)

(assert (=> b!2253468 (= lt!837640 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!736 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2253469 () Bool)

(declare-fun size!20906 (BalanceConc!16972) Int)

(assert (=> b!2253469 (= e!1442168 (<= (size!20906 (charsOf!2625 (head!4806 tokens!456))) (size!20905 otherP!12)))))

(declare-fun b!2253470 () Bool)

(declare-fun res!962944 () Bool)

(assert (=> b!2253470 (=> (not res!962944) (not e!1442175))))

(declare-fun isEmpty!15069 (List!26801) Bool)

(assert (=> b!2253470 (= res!962944 (not (isEmpty!15069 rules!1750)))))

(assert (=> b!2253471 (= e!1442166 (and tp!712118 tp!712129))))

(declare-fun b!2253472 () Bool)

(declare-fun tp!712122 () Bool)

(assert (=> b!2253472 (= e!1442157 (and tp_is_empty!10391 tp!712122))))

(declare-fun b!2253473 () Bool)

(declare-fun e!1442158 () Bool)

(assert (=> b!2253473 (= e!1442181 e!1442158)))

(declare-fun res!962939 () Bool)

(assert (=> b!2253473 (=> res!962939 e!1442158)))

(assert (=> b!2253473 (= res!962939 (not (isPrefix!2227 lt!837635 input!1722)))))

(assert (=> b!2253473 (= lt!837635 otherP!12)))

(declare-fun lt!837632 () Unit!39638)

(declare-fun lemmaIsPrefixSameLengthThenSameList!383 (List!26800 List!26800 List!26800) Unit!39638)

(assert (=> b!2253473 (= lt!837632 (lemmaIsPrefixSameLengthThenSameList!383 lt!837635 otherP!12 input!1722))))

(declare-fun b!2253474 () Bool)

(declare-fun tp!712117 () Bool)

(declare-fun inv!36243 (Token!7952) Bool)

(assert (=> b!2253474 (= e!1442177 (and (inv!36243 (h!32109 tokens!456)) e!1442170 tp!712117))))

(declare-fun b!2253475 () Bool)

(declare-fun res!962952 () Bool)

(assert (=> b!2253475 (=> (not res!962952) (not e!1442175))))

(assert (=> b!2253475 (= res!962952 (contains!4589 rules!1750 otherR!12))))

(declare-fun b!2253476 () Bool)

(assert (=> b!2253476 (= e!1442154 (= (rule!6541 (head!4806 tokens!456)) r!2363))))

(declare-fun b!2253477 () Bool)

(declare-fun res!962958 () Bool)

(assert (=> b!2253477 (=> res!962958 e!1442158)))

(declare-fun isEmpty!15070 (List!26800) Bool)

(assert (=> b!2253477 (= res!962958 (isEmpty!15070 lt!837635))))

(declare-fun b!2253478 () Bool)

(assert (=> b!2253478 (= e!1442158 e!1442155)))

(declare-fun res!962947 () Bool)

(assert (=> b!2253478 (=> res!962947 e!1442155)))

(declare-fun lt!837638 () BalanceConc!16972)

(declare-fun apply!6557 (TokenValueInjection!8338 BalanceConc!16972) TokenValue!4399)

(assert (=> b!2253478 (= res!962947 (not (= lt!837641 (Some!5212 (tuple2!26231 (Token!7953 (apply!6557 (transformation!4237 r!2363) lt!837638) r!2363 lt!837634 lt!837635) lt!837643)))))))

(declare-fun lt!837629 () Unit!39638)

(declare-fun lemmaSemiInverse!1002 (TokenValueInjection!8338 BalanceConc!16972) Unit!39638)

(assert (=> b!2253478 (= lt!837629 (lemmaSemiInverse!1002 (transformation!4237 r!2363) lt!837638))))

(assert (=> b!2253478 (= lt!837638 (seqFromList!2941 lt!837635))))

(declare-fun b!2253479 () Bool)

(declare-fun tp!712119 () Bool)

(assert (=> b!2253479 (= e!1442174 (and e!1442153 tp!712119))))

(declare-fun b!2253480 () Bool)

(declare-fun res!962956 () Bool)

(assert (=> b!2253480 (=> (not res!962956) (not e!1442167))))

(assert (=> b!2253480 (= res!962956 (not (= r!2363 otherR!12)))))

(assert (= (and start!219884 res!962940) b!2253470))

(assert (= (and b!2253470 res!962944) b!2253455))

(assert (= (and b!2253455 res!962942) b!2253445))

(assert (= (and b!2253445 res!962945) b!2253475))

(assert (= (and b!2253475 res!962952) b!2253460))

(assert (= (and b!2253460 res!962954) b!2253467))

(assert (= (and b!2253467 (not res!962949)) b!2253469))

(assert (= (and b!2253467 res!962953) b!2253449))

(assert (= (and b!2253449 (not res!962948)) b!2253476))

(assert (= (and b!2253449 res!962946) b!2253461))

(assert (= (and b!2253461 res!962955) b!2253480))

(assert (= (and b!2253480 res!962956) b!2253468))

(assert (= (and b!2253468 res!962941) b!2253454))

(assert (= (and b!2253468 (not res!962950)) b!2253452))

(assert (= (and b!2253452 (not res!962943)) b!2253459))

(assert (= (and b!2253459 (not res!962959)) b!2253451))

(assert (= (and b!2253451 (not res!962951)) b!2253473))

(assert (= (and b!2253473 (not res!962939)) b!2253477))

(assert (= (and b!2253477 (not res!962958)) b!2253478))

(assert (= (and b!2253478 (not res!962947)) b!2253446))

(assert (= (and b!2253446 (not res!962957)) b!2253450))

(assert (= (and b!2253450 (not res!962960)) b!2253457))

(assert (= (and start!219884 ((_ is Cons!26706) input!1722)) b!2253472))

(assert (= b!2253456 b!2253463))

(assert (= start!219884 b!2253456))

(assert (= (and start!219884 ((_ is Cons!26706) suffix!886)) b!2253453))

(assert (= (and start!219884 ((_ is Cons!26706) otherP!12)) b!2253465))

(assert (= b!2253447 b!2253471))

(assert (= b!2253479 b!2253447))

(assert (= (and start!219884 ((_ is Cons!26707) rules!1750)) b!2253479))

(assert (= b!2253464 b!2253466))

(assert (= start!219884 b!2253464))

(assert (= b!2253462 b!2253458))

(assert (= b!2253448 b!2253462))

(assert (= b!2253474 b!2253448))

(assert (= (and start!219884 ((_ is Cons!26708) tokens!456)) b!2253474))

(declare-fun m!2684171 () Bool)

(assert (=> b!2253446 m!2684171))

(declare-fun m!2684173 () Bool)

(assert (=> b!2253469 m!2684173))

(assert (=> b!2253469 m!2684173))

(declare-fun m!2684175 () Bool)

(assert (=> b!2253469 m!2684175))

(assert (=> b!2253469 m!2684175))

(declare-fun m!2684177 () Bool)

(assert (=> b!2253469 m!2684177))

(declare-fun m!2684179 () Bool)

(assert (=> b!2253469 m!2684179))

(declare-fun m!2684181 () Bool)

(assert (=> b!2253448 m!2684181))

(declare-fun m!2684183 () Bool)

(assert (=> b!2253447 m!2684183))

(declare-fun m!2684185 () Bool)

(assert (=> b!2253447 m!2684185))

(declare-fun m!2684187 () Bool)

(assert (=> b!2253462 m!2684187))

(declare-fun m!2684189 () Bool)

(assert (=> b!2253462 m!2684189))

(declare-fun m!2684191 () Bool)

(assert (=> b!2253456 m!2684191))

(declare-fun m!2684193 () Bool)

(assert (=> b!2253456 m!2684193))

(declare-fun m!2684195 () Bool)

(assert (=> b!2253468 m!2684195))

(declare-fun m!2684197 () Bool)

(assert (=> b!2253468 m!2684197))

(declare-fun m!2684199 () Bool)

(assert (=> b!2253478 m!2684199))

(declare-fun m!2684201 () Bool)

(assert (=> b!2253478 m!2684201))

(declare-fun m!2684203 () Bool)

(assert (=> b!2253478 m!2684203))

(declare-fun m!2684205 () Bool)

(assert (=> b!2253461 m!2684205))

(declare-fun m!2684207 () Bool)

(assert (=> b!2253477 m!2684207))

(declare-fun m!2684209 () Bool)

(assert (=> b!2253475 m!2684209))

(declare-fun m!2684211 () Bool)

(assert (=> b!2253464 m!2684211))

(declare-fun m!2684213 () Bool)

(assert (=> b!2253464 m!2684213))

(assert (=> b!2253454 m!2684173))

(assert (=> b!2253454 m!2684173))

(assert (=> b!2253454 m!2684175))

(assert (=> b!2253454 m!2684175))

(declare-fun m!2684215 () Bool)

(assert (=> b!2253454 m!2684215))

(assert (=> b!2253454 m!2684215))

(declare-fun m!2684217 () Bool)

(assert (=> b!2253454 m!2684217))

(declare-fun m!2684219 () Bool)

(assert (=> b!2253470 m!2684219))

(declare-fun m!2684221 () Bool)

(assert (=> b!2253474 m!2684221))

(declare-fun m!2684223 () Bool)

(assert (=> b!2253457 m!2684223))

(declare-fun m!2684225 () Bool)

(assert (=> b!2253457 m!2684225))

(declare-fun m!2684227 () Bool)

(assert (=> b!2253457 m!2684227))

(declare-fun m!2684229 () Bool)

(assert (=> b!2253452 m!2684229))

(declare-fun m!2684231 () Bool)

(assert (=> b!2253452 m!2684231))

(declare-fun m!2684233 () Bool)

(assert (=> b!2253452 m!2684233))

(declare-fun m!2684235 () Bool)

(assert (=> b!2253452 m!2684235))

(declare-fun m!2684237 () Bool)

(assert (=> b!2253451 m!2684237))

(declare-fun m!2684239 () Bool)

(assert (=> b!2253451 m!2684239))

(declare-fun m!2684241 () Bool)

(assert (=> b!2253451 m!2684241))

(declare-fun m!2684243 () Bool)

(assert (=> b!2253451 m!2684243))

(assert (=> b!2253451 m!2684179))

(declare-fun m!2684245 () Bool)

(assert (=> b!2253451 m!2684245))

(declare-fun m!2684247 () Bool)

(assert (=> b!2253451 m!2684247))

(declare-fun m!2684249 () Bool)

(assert (=> b!2253451 m!2684249))

(assert (=> b!2253451 m!2684249))

(declare-fun m!2684251 () Bool)

(assert (=> b!2253451 m!2684251))

(assert (=> b!2253451 m!2684239))

(declare-fun m!2684253 () Bool)

(assert (=> b!2253445 m!2684253))

(declare-fun m!2684255 () Bool)

(assert (=> b!2253455 m!2684255))

(declare-fun m!2684257 () Bool)

(assert (=> b!2253467 m!2684257))

(declare-fun m!2684259 () Bool)

(assert (=> b!2253460 m!2684259))

(declare-fun m!2684261 () Bool)

(assert (=> b!2253460 m!2684261))

(declare-fun m!2684263 () Bool)

(assert (=> b!2253460 m!2684263))

(assert (=> b!2253460 m!2684263))

(declare-fun m!2684265 () Bool)

(assert (=> b!2253460 m!2684265))

(assert (=> b!2253476 m!2684173))

(declare-fun m!2684267 () Bool)

(assert (=> b!2253459 m!2684267))

(declare-fun m!2684269 () Bool)

(assert (=> b!2253459 m!2684269))

(declare-fun m!2684271 () Bool)

(assert (=> b!2253473 m!2684271))

(declare-fun m!2684273 () Bool)

(assert (=> b!2253473 m!2684273))

(check-sat (not b!2253446) (not b!2253453) (not b!2253457) (not b!2253459) (not b!2253467) (not b_next!66841) (not b!2253445) (not b!2253468) (not b!2253473) (not b!2253470) (not b!2253456) (not b!2253448) (not b!2253474) (not b_next!66837) (not b!2253454) (not b!2253452) (not b!2253475) (not b!2253447) b_and!176625 (not b!2253465) (not b!2253476) (not b_next!66835) (not b!2253478) b_and!176631 tp_is_empty!10391 b_and!176633 (not b!2253464) (not b_next!66829) (not b_next!66831) (not b!2253461) (not b!2253460) (not b!2253469) (not b!2253462) (not b!2253477) (not b!2253479) (not b!2253455) b_and!176637 b_and!176629 (not b_next!66839) b_and!176635 (not b!2253472) (not b_next!66833) b_and!176639 (not b!2253451) b_and!176627 (not b_next!66843))
(check-sat (not b_next!66837) b_and!176625 (not b_next!66835) (not b_next!66841) b_and!176637 b_and!176639 b_and!176631 b_and!176633 (not b_next!66829) (not b_next!66831) b_and!176629 (not b_next!66839) b_and!176635 (not b_next!66833) b_and!176627 (not b_next!66843))
(get-model)

(declare-fun d!668384 () Bool)

(declare-fun lt!837647 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3559 (List!26801) (InoxSet Rule!8274))

(assert (=> d!668384 (= lt!837647 (select (content!3559 rules!1750) otherR!12))))

(declare-fun e!1442186 () Bool)

(assert (=> d!668384 (= lt!837647 e!1442186)))

(declare-fun res!962976 () Bool)

(assert (=> d!668384 (=> (not res!962976) (not e!1442186))))

(assert (=> d!668384 (= res!962976 ((_ is Cons!26707) rules!1750))))

(assert (=> d!668384 (= (contains!4589 rules!1750 otherR!12) lt!837647)))

(declare-fun b!2253485 () Bool)

(declare-fun e!1442187 () Bool)

(assert (=> b!2253485 (= e!1442186 e!1442187)))

(declare-fun res!962977 () Bool)

(assert (=> b!2253485 (=> res!962977 e!1442187)))

(assert (=> b!2253485 (= res!962977 (= (h!32108 rules!1750) otherR!12))))

(declare-fun b!2253486 () Bool)

(assert (=> b!2253486 (= e!1442187 (contains!4589 (t!201029 rules!1750) otherR!12))))

(assert (= (and d!668384 res!962976) b!2253485))

(assert (= (and b!2253485 (not res!962977)) b!2253486))

(declare-fun m!2684275 () Bool)

(assert (=> d!668384 m!2684275))

(declare-fun m!2684277 () Bool)

(assert (=> d!668384 m!2684277))

(declare-fun m!2684279 () Bool)

(assert (=> b!2253486 m!2684279))

(assert (=> b!2253475 d!668384))

(declare-fun b!2253590 () Bool)

(declare-fun res!963042 () Bool)

(declare-fun e!1442256 () Bool)

(assert (=> b!2253590 (=> (not res!963042) (not e!1442256))))

(declare-fun call!135661 () Bool)

(assert (=> b!2253590 (= res!963042 (not call!135661))))

(declare-fun b!2253591 () Bool)

(declare-fun res!963038 () Bool)

(assert (=> b!2253591 (=> (not res!963038) (not e!1442256))))

(declare-fun tail!3251 (List!26800) List!26800)

(assert (=> b!2253591 (= res!963038 (isEmpty!15070 (tail!3251 (list!10261 (charsOf!2625 (head!4806 tokens!456))))))))

(declare-fun b!2253592 () Bool)

(declare-fun e!1442257 () Bool)

(declare-fun e!1442253 () Bool)

(assert (=> b!2253592 (= e!1442257 e!1442253)))

(declare-fun res!963041 () Bool)

(assert (=> b!2253592 (=> res!963041 e!1442253)))

(assert (=> b!2253592 (= res!963041 call!135661)))

(declare-fun b!2253593 () Bool)

(declare-fun e!1442254 () Bool)

(declare-fun lt!837656 () Bool)

(assert (=> b!2253593 (= e!1442254 (not lt!837656))))

(declare-fun b!2253594 () Bool)

(declare-fun head!4808 (List!26800) C!13316)

(assert (=> b!2253594 (= e!1442256 (= (head!4808 (list!10261 (charsOf!2625 (head!4806 tokens!456)))) (c!358309 (regex!4237 r!2363))))))

(declare-fun b!2253595 () Bool)

(declare-fun e!1442251 () Bool)

(assert (=> b!2253595 (= e!1442251 e!1442257)))

(declare-fun res!963040 () Bool)

(assert (=> b!2253595 (=> (not res!963040) (not e!1442257))))

(assert (=> b!2253595 (= res!963040 (not lt!837656))))

(declare-fun b!2253596 () Bool)

(declare-fun e!1442255 () Bool)

(assert (=> b!2253596 (= e!1442255 e!1442254)))

(declare-fun c!358332 () Bool)

(assert (=> b!2253596 (= c!358332 ((_ is EmptyLang!6585) (regex!4237 r!2363)))))

(declare-fun d!668390 () Bool)

(assert (=> d!668390 e!1442255))

(declare-fun c!358333 () Bool)

(assert (=> d!668390 (= c!358333 ((_ is EmptyExpr!6585) (regex!4237 r!2363)))))

(declare-fun e!1442252 () Bool)

(assert (=> d!668390 (= lt!837656 e!1442252)))

(declare-fun c!358334 () Bool)

(assert (=> d!668390 (= c!358334 (isEmpty!15070 (list!10261 (charsOf!2625 (head!4806 tokens!456)))))))

(assert (=> d!668390 (validRegex!2462 (regex!4237 r!2363))))

(assert (=> d!668390 (= (matchR!2846 (regex!4237 r!2363) (list!10261 (charsOf!2625 (head!4806 tokens!456)))) lt!837656)))

(declare-fun bm!135656 () Bool)

(assert (=> bm!135656 (= call!135661 (isEmpty!15070 (list!10261 (charsOf!2625 (head!4806 tokens!456)))))))

(declare-fun b!2253597 () Bool)

(declare-fun res!963043 () Bool)

(assert (=> b!2253597 (=> res!963043 e!1442251)))

(assert (=> b!2253597 (= res!963043 (not ((_ is ElementMatch!6585) (regex!4237 r!2363))))))

(assert (=> b!2253597 (= e!1442254 e!1442251)))

(declare-fun b!2253598 () Bool)

(declare-fun res!963044 () Bool)

(assert (=> b!2253598 (=> res!963044 e!1442251)))

(assert (=> b!2253598 (= res!963044 e!1442256)))

(declare-fun res!963037 () Bool)

(assert (=> b!2253598 (=> (not res!963037) (not e!1442256))))

(assert (=> b!2253598 (= res!963037 lt!837656)))

(declare-fun b!2253599 () Bool)

(assert (=> b!2253599 (= e!1442255 (= lt!837656 call!135661))))

(declare-fun b!2253600 () Bool)

(declare-fun res!963039 () Bool)

(assert (=> b!2253600 (=> res!963039 e!1442253)))

(assert (=> b!2253600 (= res!963039 (not (isEmpty!15070 (tail!3251 (list!10261 (charsOf!2625 (head!4806 tokens!456)))))))))

(declare-fun b!2253601 () Bool)

(assert (=> b!2253601 (= e!1442253 (not (= (head!4808 (list!10261 (charsOf!2625 (head!4806 tokens!456)))) (c!358309 (regex!4237 r!2363)))))))

(declare-fun b!2253602 () Bool)

(declare-fun derivativeStep!1470 (Regex!6585 C!13316) Regex!6585)

(assert (=> b!2253602 (= e!1442252 (matchR!2846 (derivativeStep!1470 (regex!4237 r!2363) (head!4808 (list!10261 (charsOf!2625 (head!4806 tokens!456))))) (tail!3251 (list!10261 (charsOf!2625 (head!4806 tokens!456))))))))

(declare-fun b!2253603 () Bool)

(declare-fun nullable!1808 (Regex!6585) Bool)

(assert (=> b!2253603 (= e!1442252 (nullable!1808 (regex!4237 r!2363)))))

(assert (= (and d!668390 c!358334) b!2253603))

(assert (= (and d!668390 (not c!358334)) b!2253602))

(assert (= (and d!668390 c!358333) b!2253599))

(assert (= (and d!668390 (not c!358333)) b!2253596))

(assert (= (and b!2253596 c!358332) b!2253593))

(assert (= (and b!2253596 (not c!358332)) b!2253597))

(assert (= (and b!2253597 (not res!963043)) b!2253598))

(assert (= (and b!2253598 res!963037) b!2253590))

(assert (= (and b!2253590 res!963042) b!2253591))

(assert (= (and b!2253591 res!963038) b!2253594))

(assert (= (and b!2253598 (not res!963044)) b!2253595))

(assert (= (and b!2253595 res!963040) b!2253592))

(assert (= (and b!2253592 (not res!963041)) b!2253600))

(assert (= (and b!2253600 (not res!963039)) b!2253601))

(assert (= (or b!2253599 b!2253590 b!2253592) bm!135656))

(assert (=> b!2253600 m!2684215))

(declare-fun m!2684313 () Bool)

(assert (=> b!2253600 m!2684313))

(assert (=> b!2253600 m!2684313))

(declare-fun m!2684315 () Bool)

(assert (=> b!2253600 m!2684315))

(assert (=> b!2253594 m!2684215))

(declare-fun m!2684317 () Bool)

(assert (=> b!2253594 m!2684317))

(assert (=> bm!135656 m!2684215))

(declare-fun m!2684319 () Bool)

(assert (=> bm!135656 m!2684319))

(assert (=> d!668390 m!2684215))

(assert (=> d!668390 m!2684319))

(declare-fun m!2684321 () Bool)

(assert (=> d!668390 m!2684321))

(assert (=> b!2253591 m!2684215))

(assert (=> b!2253591 m!2684313))

(assert (=> b!2253591 m!2684313))

(assert (=> b!2253591 m!2684315))

(assert (=> b!2253602 m!2684215))

(assert (=> b!2253602 m!2684317))

(assert (=> b!2253602 m!2684317))

(declare-fun m!2684323 () Bool)

(assert (=> b!2253602 m!2684323))

(assert (=> b!2253602 m!2684215))

(assert (=> b!2253602 m!2684313))

(assert (=> b!2253602 m!2684323))

(assert (=> b!2253602 m!2684313))

(declare-fun m!2684325 () Bool)

(assert (=> b!2253602 m!2684325))

(assert (=> b!2253601 m!2684215))

(assert (=> b!2253601 m!2684317))

(declare-fun m!2684327 () Bool)

(assert (=> b!2253603 m!2684327))

(assert (=> b!2253454 d!668390))

(declare-fun d!668406 () Bool)

(declare-fun list!10265 (Conc!8622) List!26800)

(assert (=> d!668406 (= (list!10261 (charsOf!2625 (head!4806 tokens!456))) (list!10265 (c!358308 (charsOf!2625 (head!4806 tokens!456)))))))

(declare-fun bs!455189 () Bool)

(assert (= bs!455189 d!668406))

(declare-fun m!2684329 () Bool)

(assert (=> bs!455189 m!2684329))

(assert (=> b!2253454 d!668406))

(declare-fun d!668408 () Bool)

(declare-fun lt!837661 () BalanceConc!16972)

(assert (=> d!668408 (= (list!10261 lt!837661) (originalCharacters!5007 (head!4806 tokens!456)))))

(declare-fun dynLambda!11609 (Int TokenValue!4399) BalanceConc!16972)

(assert (=> d!668408 (= lt!837661 (dynLambda!11609 (toChars!5838 (transformation!4237 (rule!6541 (head!4806 tokens!456)))) (value!134574 (head!4806 tokens!456))))))

(assert (=> d!668408 (= (charsOf!2625 (head!4806 tokens!456)) lt!837661)))

(declare-fun b_lambda!71983 () Bool)

(assert (=> (not b_lambda!71983) (not d!668408)))

(declare-fun t!201040 () Bool)

(declare-fun tb!133559 () Bool)

(assert (=> (and b!2253471 (= (toChars!5838 (transformation!4237 (h!32108 rules!1750))) (toChars!5838 (transformation!4237 (rule!6541 (head!4806 tokens!456))))) t!201040) tb!133559))

(declare-fun b!2253608 () Bool)

(declare-fun e!1442260 () Bool)

(declare-fun tp!712132 () Bool)

(declare-fun inv!36246 (Conc!8622) Bool)

(assert (=> b!2253608 (= e!1442260 (and (inv!36246 (c!358308 (dynLambda!11609 (toChars!5838 (transformation!4237 (rule!6541 (head!4806 tokens!456)))) (value!134574 (head!4806 tokens!456))))) tp!712132))))

(declare-fun result!162808 () Bool)

(declare-fun inv!36247 (BalanceConc!16972) Bool)

(assert (=> tb!133559 (= result!162808 (and (inv!36247 (dynLambda!11609 (toChars!5838 (transformation!4237 (rule!6541 (head!4806 tokens!456)))) (value!134574 (head!4806 tokens!456)))) e!1442260))))

(assert (= tb!133559 b!2253608))

(declare-fun m!2684331 () Bool)

(assert (=> b!2253608 m!2684331))

(declare-fun m!2684333 () Bool)

(assert (=> tb!133559 m!2684333))

(assert (=> d!668408 t!201040))

(declare-fun b_and!176649 () Bool)

(assert (= b_and!176627 (and (=> t!201040 result!162808) b_and!176649)))

(declare-fun t!201042 () Bool)

(declare-fun tb!133561 () Bool)

(assert (=> (and b!2253458 (= (toChars!5838 (transformation!4237 (rule!6541 (h!32109 tokens!456)))) (toChars!5838 (transformation!4237 (rule!6541 (head!4806 tokens!456))))) t!201042) tb!133561))

(declare-fun result!162812 () Bool)

(assert (= result!162812 result!162808))

(assert (=> d!668408 t!201042))

(declare-fun b_and!176651 () Bool)

(assert (= b_and!176631 (and (=> t!201042 result!162812) b_and!176651)))

(declare-fun t!201044 () Bool)

(declare-fun tb!133563 () Bool)

(assert (=> (and b!2253463 (= (toChars!5838 (transformation!4237 otherR!12)) (toChars!5838 (transformation!4237 (rule!6541 (head!4806 tokens!456))))) t!201044) tb!133563))

(declare-fun result!162814 () Bool)

(assert (= result!162814 result!162808))

(assert (=> d!668408 t!201044))

(declare-fun b_and!176653 () Bool)

(assert (= b_and!176635 (and (=> t!201044 result!162814) b_and!176653)))

(declare-fun tb!133565 () Bool)

(declare-fun t!201046 () Bool)

(assert (=> (and b!2253466 (= (toChars!5838 (transformation!4237 r!2363)) (toChars!5838 (transformation!4237 (rule!6541 (head!4806 tokens!456))))) t!201046) tb!133565))

(declare-fun result!162816 () Bool)

(assert (= result!162816 result!162808))

(assert (=> d!668408 t!201046))

(declare-fun b_and!176655 () Bool)

(assert (= b_and!176639 (and (=> t!201046 result!162816) b_and!176655)))

(declare-fun m!2684335 () Bool)

(assert (=> d!668408 m!2684335))

(declare-fun m!2684337 () Bool)

(assert (=> d!668408 m!2684337))

(assert (=> b!2253454 d!668408))

(declare-fun d!668410 () Bool)

(assert (=> d!668410 (= (head!4806 tokens!456) (h!32109 tokens!456))))

(assert (=> b!2253454 d!668410))

(declare-fun b!2253618 () Bool)

(declare-fun e!1442267 () Int)

(declare-fun e!1442266 () Int)

(assert (=> b!2253618 (= e!1442267 e!1442266)))

(declare-fun c!358341 () Bool)

(assert (=> b!2253618 (= c!358341 (and ((_ is Cons!26707) rules!1750) (not (= (h!32108 rules!1750) otherR!12))))))

(declare-fun b!2253619 () Bool)

(assert (=> b!2253619 (= e!1442266 (+ 1 (getIndex!258 (t!201029 rules!1750) otherR!12)))))

(declare-fun b!2253620 () Bool)

(assert (=> b!2253620 (= e!1442266 (- 1))))

(declare-fun b!2253617 () Bool)

(assert (=> b!2253617 (= e!1442267 0)))

(declare-fun d!668412 () Bool)

(declare-fun lt!837664 () Int)

(assert (=> d!668412 (>= lt!837664 0)))

(assert (=> d!668412 (= lt!837664 e!1442267)))

(declare-fun c!358340 () Bool)

(assert (=> d!668412 (= c!358340 (and ((_ is Cons!26707) rules!1750) (= (h!32108 rules!1750) otherR!12)))))

(assert (=> d!668412 (contains!4589 rules!1750 otherR!12)))

(assert (=> d!668412 (= (getIndex!258 rules!1750 otherR!12) lt!837664)))

(assert (= (and d!668412 c!358340) b!2253617))

(assert (= (and d!668412 (not c!358340)) b!2253618))

(assert (= (and b!2253618 c!358341) b!2253619))

(assert (= (and b!2253618 (not c!358341)) b!2253620))

(declare-fun m!2684339 () Bool)

(assert (=> b!2253619 m!2684339))

(assert (=> d!668412 m!2684209))

(assert (=> b!2253452 d!668412))

(declare-fun b!2253622 () Bool)

(declare-fun e!1442269 () Int)

(declare-fun e!1442268 () Int)

(assert (=> b!2253622 (= e!1442269 e!1442268)))

(declare-fun c!358343 () Bool)

(assert (=> b!2253622 (= c!358343 (and ((_ is Cons!26707) rules!1750) (not (= (h!32108 rules!1750) r!2363))))))

(declare-fun b!2253623 () Bool)

(assert (=> b!2253623 (= e!1442268 (+ 1 (getIndex!258 (t!201029 rules!1750) r!2363)))))

(declare-fun b!2253624 () Bool)

(assert (=> b!2253624 (= e!1442268 (- 1))))

(declare-fun b!2253621 () Bool)

(assert (=> b!2253621 (= e!1442269 0)))

(declare-fun d!668414 () Bool)

(declare-fun lt!837665 () Int)

(assert (=> d!668414 (>= lt!837665 0)))

(assert (=> d!668414 (= lt!837665 e!1442269)))

(declare-fun c!358342 () Bool)

(assert (=> d!668414 (= c!358342 (and ((_ is Cons!26707) rules!1750) (= (h!32108 rules!1750) r!2363)))))

(assert (=> d!668414 (contains!4589 rules!1750 r!2363)))

(assert (=> d!668414 (= (getIndex!258 rules!1750 r!2363) lt!837665)))

(assert (= (and d!668414 c!358342) b!2253621))

(assert (= (and d!668414 (not c!358342)) b!2253622))

(assert (= (and b!2253622 c!358343) b!2253623))

(assert (= (and b!2253622 (not c!358343)) b!2253624))

(declare-fun m!2684341 () Bool)

(assert (=> b!2253623 m!2684341))

(assert (=> d!668414 m!2684253))

(assert (=> b!2253452 d!668414))

(declare-fun d!668416 () Bool)

(declare-fun res!963049 () Bool)

(declare-fun e!1442272 () Bool)

(assert (=> d!668416 (=> (not res!963049) (not e!1442272))))

(assert (=> d!668416 (= res!963049 (validRegex!2462 (regex!4237 otherR!12)))))

(assert (=> d!668416 (= (ruleValid!1329 thiss!16613 otherR!12) e!1442272)))

(declare-fun b!2253629 () Bool)

(declare-fun res!963050 () Bool)

(assert (=> b!2253629 (=> (not res!963050) (not e!1442272))))

(assert (=> b!2253629 (= res!963050 (not (nullable!1808 (regex!4237 otherR!12))))))

(declare-fun b!2253630 () Bool)

(assert (=> b!2253630 (= e!1442272 (not (= (tag!4727 otherR!12) (String!29100 ""))))))

(assert (= (and d!668416 res!963049) b!2253629))

(assert (= (and b!2253629 res!963050) b!2253630))

(assert (=> d!668416 m!2684223))

(declare-fun m!2684343 () Bool)

(assert (=> b!2253629 m!2684343))

(assert (=> b!2253452 d!668416))

(declare-fun d!668418 () Bool)

(assert (=> d!668418 (ruleValid!1329 thiss!16613 otherR!12)))

(declare-fun lt!837668 () Unit!39638)

(declare-fun choose!13180 (LexerInterface!3834 Rule!8274 List!26801) Unit!39638)

(assert (=> d!668418 (= lt!837668 (choose!13180 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!668418 (contains!4589 rules!1750 otherR!12)))

(assert (=> d!668418 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!736 thiss!16613 otherR!12 rules!1750) lt!837668)))

(declare-fun bs!455190 () Bool)

(assert (= bs!455190 d!668418))

(assert (=> bs!455190 m!2684233))

(declare-fun m!2684345 () Bool)

(assert (=> bs!455190 m!2684345))

(assert (=> bs!455190 m!2684209))

(assert (=> b!2253452 d!668418))

(declare-fun d!668420 () Bool)

(declare-fun res!963055 () Bool)

(declare-fun e!1442275 () Bool)

(assert (=> d!668420 (=> (not res!963055) (not e!1442275))))

(assert (=> d!668420 (= res!963055 (not (isEmpty!15070 (originalCharacters!5007 (h!32109 tokens!456)))))))

(assert (=> d!668420 (= (inv!36243 (h!32109 tokens!456)) e!1442275)))

(declare-fun b!2253635 () Bool)

(declare-fun res!963056 () Bool)

(assert (=> b!2253635 (=> (not res!963056) (not e!1442275))))

(assert (=> b!2253635 (= res!963056 (= (originalCharacters!5007 (h!32109 tokens!456)) (list!10261 (dynLambda!11609 (toChars!5838 (transformation!4237 (rule!6541 (h!32109 tokens!456)))) (value!134574 (h!32109 tokens!456))))))))

(declare-fun b!2253636 () Bool)

(assert (=> b!2253636 (= e!1442275 (= (size!20904 (h!32109 tokens!456)) (size!20905 (originalCharacters!5007 (h!32109 tokens!456)))))))

(assert (= (and d!668420 res!963055) b!2253635))

(assert (= (and b!2253635 res!963056) b!2253636))

(declare-fun b_lambda!71985 () Bool)

(assert (=> (not b_lambda!71985) (not b!2253635)))

(declare-fun t!201048 () Bool)

(declare-fun tb!133567 () Bool)

(assert (=> (and b!2253471 (= (toChars!5838 (transformation!4237 (h!32108 rules!1750))) (toChars!5838 (transformation!4237 (rule!6541 (h!32109 tokens!456))))) t!201048) tb!133567))

(declare-fun b!2253637 () Bool)

(declare-fun e!1442276 () Bool)

(declare-fun tp!712133 () Bool)

(assert (=> b!2253637 (= e!1442276 (and (inv!36246 (c!358308 (dynLambda!11609 (toChars!5838 (transformation!4237 (rule!6541 (h!32109 tokens!456)))) (value!134574 (h!32109 tokens!456))))) tp!712133))))

(declare-fun result!162818 () Bool)

(assert (=> tb!133567 (= result!162818 (and (inv!36247 (dynLambda!11609 (toChars!5838 (transformation!4237 (rule!6541 (h!32109 tokens!456)))) (value!134574 (h!32109 tokens!456)))) e!1442276))))

(assert (= tb!133567 b!2253637))

(declare-fun m!2684347 () Bool)

(assert (=> b!2253637 m!2684347))

(declare-fun m!2684349 () Bool)

(assert (=> tb!133567 m!2684349))

(assert (=> b!2253635 t!201048))

(declare-fun b_and!176657 () Bool)

(assert (= b_and!176649 (and (=> t!201048 result!162818) b_and!176657)))

(declare-fun t!201050 () Bool)

(declare-fun tb!133569 () Bool)

(assert (=> (and b!2253458 (= (toChars!5838 (transformation!4237 (rule!6541 (h!32109 tokens!456)))) (toChars!5838 (transformation!4237 (rule!6541 (h!32109 tokens!456))))) t!201050) tb!133569))

(declare-fun result!162820 () Bool)

(assert (= result!162820 result!162818))

(assert (=> b!2253635 t!201050))

(declare-fun b_and!176659 () Bool)

(assert (= b_and!176651 (and (=> t!201050 result!162820) b_and!176659)))

(declare-fun tb!133571 () Bool)

(declare-fun t!201052 () Bool)

(assert (=> (and b!2253463 (= (toChars!5838 (transformation!4237 otherR!12)) (toChars!5838 (transformation!4237 (rule!6541 (h!32109 tokens!456))))) t!201052) tb!133571))

(declare-fun result!162822 () Bool)

(assert (= result!162822 result!162818))

(assert (=> b!2253635 t!201052))

(declare-fun b_and!176661 () Bool)

(assert (= b_and!176653 (and (=> t!201052 result!162822) b_and!176661)))

(declare-fun t!201054 () Bool)

(declare-fun tb!133573 () Bool)

(assert (=> (and b!2253466 (= (toChars!5838 (transformation!4237 r!2363)) (toChars!5838 (transformation!4237 (rule!6541 (h!32109 tokens!456))))) t!201054) tb!133573))

(declare-fun result!162824 () Bool)

(assert (= result!162824 result!162818))

(assert (=> b!2253635 t!201054))

(declare-fun b_and!176663 () Bool)

(assert (= b_and!176655 (and (=> t!201054 result!162824) b_and!176663)))

(declare-fun m!2684351 () Bool)

(assert (=> d!668420 m!2684351))

(declare-fun m!2684353 () Bool)

(assert (=> b!2253635 m!2684353))

(assert (=> b!2253635 m!2684353))

(declare-fun m!2684355 () Bool)

(assert (=> b!2253635 m!2684355))

(declare-fun m!2684357 () Bool)

(assert (=> b!2253636 m!2684357))

(assert (=> b!2253474 d!668420))

(declare-fun d!668422 () Bool)

(assert (=> d!668422 (isPrefix!2227 lt!837635 (++!6509 lt!837635 (_2!15625 lt!837637)))))

(declare-fun lt!837671 () Unit!39638)

(declare-fun choose!13181 (List!26800 List!26800) Unit!39638)

(assert (=> d!668422 (= lt!837671 (choose!13181 lt!837635 (_2!15625 lt!837637)))))

(assert (=> d!668422 (= (lemmaConcatTwoListThenFirstIsPrefix!1472 lt!837635 (_2!15625 lt!837637)) lt!837671)))

(declare-fun bs!455191 () Bool)

(assert (= bs!455191 d!668422))

(assert (=> bs!455191 m!2684239))

(assert (=> bs!455191 m!2684239))

(assert (=> bs!455191 m!2684241))

(declare-fun m!2684359 () Bool)

(assert (=> bs!455191 m!2684359))

(assert (=> b!2253451 d!668422))

(declare-fun d!668424 () Bool)

(assert (=> d!668424 (= (_2!15625 lt!837637) lt!837643)))

(declare-fun lt!837674 () Unit!39638)

(declare-fun choose!13182 (List!26800 List!26800 List!26800 List!26800 List!26800) Unit!39638)

(assert (=> d!668424 (= lt!837674 (choose!13182 lt!837635 (_2!15625 lt!837637) lt!837635 lt!837643 input!1722))))

(assert (=> d!668424 (isPrefix!2227 lt!837635 input!1722)))

(assert (=> d!668424 (= (lemmaSamePrefixThenSameSuffix!982 lt!837635 (_2!15625 lt!837637) lt!837635 lt!837643 input!1722) lt!837674)))

(declare-fun bs!455192 () Bool)

(assert (= bs!455192 d!668424))

(declare-fun m!2684361 () Bool)

(assert (=> bs!455192 m!2684361))

(assert (=> bs!455192 m!2684271))

(assert (=> b!2253451 d!668424))

(declare-fun d!668426 () Bool)

(assert (=> d!668426 (= (list!10261 (charsOf!2625 (h!32109 tokens!456))) (list!10265 (c!358308 (charsOf!2625 (h!32109 tokens!456)))))))

(declare-fun bs!455193 () Bool)

(assert (= bs!455193 d!668426))

(declare-fun m!2684363 () Bool)

(assert (=> bs!455193 m!2684363))

(assert (=> b!2253451 d!668426))

(declare-fun b!2253648 () Bool)

(declare-fun res!963061 () Bool)

(declare-fun e!1442282 () Bool)

(assert (=> b!2253648 (=> (not res!963061) (not e!1442282))))

(declare-fun lt!837677 () List!26800)

(assert (=> b!2253648 (= res!963061 (= (size!20905 lt!837677) (+ (size!20905 lt!837635) (size!20905 (_2!15625 lt!837637)))))))

(declare-fun b!2253646 () Bool)

(declare-fun e!1442281 () List!26800)

(assert (=> b!2253646 (= e!1442281 (_2!15625 lt!837637))))

(declare-fun d!668428 () Bool)

(assert (=> d!668428 e!1442282))

(declare-fun res!963062 () Bool)

(assert (=> d!668428 (=> (not res!963062) (not e!1442282))))

(declare-fun content!3562 (List!26800) (InoxSet C!13316))

(assert (=> d!668428 (= res!963062 (= (content!3562 lt!837677) ((_ map or) (content!3562 lt!837635) (content!3562 (_2!15625 lt!837637)))))))

(assert (=> d!668428 (= lt!837677 e!1442281)))

(declare-fun c!358346 () Bool)

(assert (=> d!668428 (= c!358346 ((_ is Nil!26706) lt!837635))))

(assert (=> d!668428 (= (++!6509 lt!837635 (_2!15625 lt!837637)) lt!837677)))

(declare-fun b!2253647 () Bool)

(assert (=> b!2253647 (= e!1442281 (Cons!26706 (h!32107 lt!837635) (++!6509 (t!201028 lt!837635) (_2!15625 lt!837637))))))

(declare-fun b!2253649 () Bool)

(assert (=> b!2253649 (= e!1442282 (or (not (= (_2!15625 lt!837637) Nil!26706)) (= lt!837677 lt!837635)))))

(assert (= (and d!668428 c!358346) b!2253646))

(assert (= (and d!668428 (not c!358346)) b!2253647))

(assert (= (and d!668428 res!963062) b!2253648))

(assert (= (and b!2253648 res!963061) b!2253649))

(declare-fun m!2684365 () Bool)

(assert (=> b!2253648 m!2684365))

(assert (=> b!2253648 m!2684247))

(declare-fun m!2684367 () Bool)

(assert (=> b!2253648 m!2684367))

(declare-fun m!2684369 () Bool)

(assert (=> d!668428 m!2684369))

(declare-fun m!2684371 () Bool)

(assert (=> d!668428 m!2684371))

(declare-fun m!2684373 () Bool)

(assert (=> d!668428 m!2684373))

(declare-fun m!2684375 () Bool)

(assert (=> b!2253647 m!2684375))

(assert (=> b!2253451 d!668428))

(declare-fun d!668430 () Bool)

(declare-fun lt!837678 () BalanceConc!16972)

(assert (=> d!668430 (= (list!10261 lt!837678) (originalCharacters!5007 (h!32109 tokens!456)))))

(assert (=> d!668430 (= lt!837678 (dynLambda!11609 (toChars!5838 (transformation!4237 (rule!6541 (h!32109 tokens!456)))) (value!134574 (h!32109 tokens!456))))))

(assert (=> d!668430 (= (charsOf!2625 (h!32109 tokens!456)) lt!837678)))

(declare-fun b_lambda!71987 () Bool)

(assert (=> (not b_lambda!71987) (not d!668430)))

(assert (=> d!668430 t!201048))

(declare-fun b_and!176665 () Bool)

(assert (= b_and!176657 (and (=> t!201048 result!162818) b_and!176665)))

(assert (=> d!668430 t!201050))

(declare-fun b_and!176667 () Bool)

(assert (= b_and!176659 (and (=> t!201050 result!162820) b_and!176667)))

(assert (=> d!668430 t!201052))

(declare-fun b_and!176669 () Bool)

(assert (= b_and!176661 (and (=> t!201052 result!162822) b_and!176669)))

(assert (=> d!668430 t!201054))

(declare-fun b_and!176671 () Bool)

(assert (= b_and!176663 (and (=> t!201054 result!162824) b_and!176671)))

(declare-fun m!2684377 () Bool)

(assert (=> d!668430 m!2684377))

(assert (=> d!668430 m!2684353))

(assert (=> b!2253451 d!668430))

(declare-fun b!2253660 () Bool)

(declare-fun e!1442290 () Bool)

(assert (=> b!2253660 (= e!1442290 (isPrefix!2227 (tail!3251 lt!837635) (tail!3251 (++!6509 lt!837635 (_2!15625 lt!837637)))))))

(declare-fun b!2253659 () Bool)

(declare-fun res!963074 () Bool)

(assert (=> b!2253659 (=> (not res!963074) (not e!1442290))))

(assert (=> b!2253659 (= res!963074 (= (head!4808 lt!837635) (head!4808 (++!6509 lt!837635 (_2!15625 lt!837637)))))))

(declare-fun d!668432 () Bool)

(declare-fun e!1442289 () Bool)

(assert (=> d!668432 e!1442289))

(declare-fun res!963071 () Bool)

(assert (=> d!668432 (=> res!963071 e!1442289)))

(declare-fun lt!837681 () Bool)

(assert (=> d!668432 (= res!963071 (not lt!837681))))

(declare-fun e!1442291 () Bool)

(assert (=> d!668432 (= lt!837681 e!1442291)))

(declare-fun res!963073 () Bool)

(assert (=> d!668432 (=> res!963073 e!1442291)))

(assert (=> d!668432 (= res!963073 ((_ is Nil!26706) lt!837635))))

(assert (=> d!668432 (= (isPrefix!2227 lt!837635 (++!6509 lt!837635 (_2!15625 lt!837637))) lt!837681)))

(declare-fun b!2253661 () Bool)

(assert (=> b!2253661 (= e!1442289 (>= (size!20905 (++!6509 lt!837635 (_2!15625 lt!837637))) (size!20905 lt!837635)))))

(declare-fun b!2253658 () Bool)

(assert (=> b!2253658 (= e!1442291 e!1442290)))

(declare-fun res!963072 () Bool)

(assert (=> b!2253658 (=> (not res!963072) (not e!1442290))))

(assert (=> b!2253658 (= res!963072 (not ((_ is Nil!26706) (++!6509 lt!837635 (_2!15625 lt!837637)))))))

(assert (= (and d!668432 (not res!963073)) b!2253658))

(assert (= (and b!2253658 res!963072) b!2253659))

(assert (= (and b!2253659 res!963074) b!2253660))

(assert (= (and d!668432 (not res!963071)) b!2253661))

(declare-fun m!2684379 () Bool)

(assert (=> b!2253660 m!2684379))

(assert (=> b!2253660 m!2684239))

(declare-fun m!2684381 () Bool)

(assert (=> b!2253660 m!2684381))

(assert (=> b!2253660 m!2684379))

(assert (=> b!2253660 m!2684381))

(declare-fun m!2684383 () Bool)

(assert (=> b!2253660 m!2684383))

(declare-fun m!2684385 () Bool)

(assert (=> b!2253659 m!2684385))

(assert (=> b!2253659 m!2684239))

(declare-fun m!2684387 () Bool)

(assert (=> b!2253659 m!2684387))

(assert (=> b!2253661 m!2684239))

(declare-fun m!2684389 () Bool)

(assert (=> b!2253661 m!2684389))

(assert (=> b!2253661 m!2684247))

(assert (=> b!2253451 d!668432))

(declare-fun d!668434 () Bool)

(declare-fun lt!837684 () List!26800)

(assert (=> d!668434 (= (++!6509 lt!837635 lt!837684) input!1722)))

(declare-fun e!1442294 () List!26800)

(assert (=> d!668434 (= lt!837684 e!1442294)))

(declare-fun c!358349 () Bool)

(assert (=> d!668434 (= c!358349 ((_ is Cons!26706) lt!837635))))

(assert (=> d!668434 (>= (size!20905 input!1722) (size!20905 lt!837635))))

(assert (=> d!668434 (= (getSuffix!1062 input!1722 lt!837635) lt!837684)))

(declare-fun b!2253666 () Bool)

(assert (=> b!2253666 (= e!1442294 (getSuffix!1062 (tail!3251 input!1722) (t!201028 lt!837635)))))

(declare-fun b!2253667 () Bool)

(assert (=> b!2253667 (= e!1442294 input!1722)))

(assert (= (and d!668434 c!358349) b!2253666))

(assert (= (and d!668434 (not c!358349)) b!2253667))

(declare-fun m!2684391 () Bool)

(assert (=> d!668434 m!2684391))

(declare-fun m!2684393 () Bool)

(assert (=> d!668434 m!2684393))

(assert (=> d!668434 m!2684247))

(declare-fun m!2684395 () Bool)

(assert (=> b!2253666 m!2684395))

(assert (=> b!2253666 m!2684395))

(declare-fun m!2684397 () Bool)

(assert (=> b!2253666 m!2684397))

(assert (=> b!2253451 d!668434))

(declare-fun d!668436 () Bool)

(declare-fun lt!837687 () Int)

(assert (=> d!668436 (>= lt!837687 0)))

(declare-fun e!1442297 () Int)

(assert (=> d!668436 (= lt!837687 e!1442297)))

(declare-fun c!358352 () Bool)

(assert (=> d!668436 (= c!358352 ((_ is Nil!26706) lt!837635))))

(assert (=> d!668436 (= (size!20905 lt!837635) lt!837687)))

(declare-fun b!2253672 () Bool)

(assert (=> b!2253672 (= e!1442297 0)))

(declare-fun b!2253673 () Bool)

(assert (=> b!2253673 (= e!1442297 (+ 1 (size!20905 (t!201028 lt!837635))))))

(assert (= (and d!668436 c!358352) b!2253672))

(assert (= (and d!668436 (not c!358352)) b!2253673))

(declare-fun m!2684399 () Bool)

(assert (=> b!2253673 m!2684399))

(assert (=> b!2253451 d!668436))

(declare-fun d!668438 () Bool)

(declare-fun lt!837688 () Int)

(assert (=> d!668438 (>= lt!837688 0)))

(declare-fun e!1442298 () Int)

(assert (=> d!668438 (= lt!837688 e!1442298)))

(declare-fun c!358353 () Bool)

(assert (=> d!668438 (= c!358353 ((_ is Nil!26706) otherP!12))))

(assert (=> d!668438 (= (size!20905 otherP!12) lt!837688)))

(declare-fun b!2253674 () Bool)

(assert (=> b!2253674 (= e!1442298 0)))

(declare-fun b!2253675 () Bool)

(assert (=> b!2253675 (= e!1442298 (+ 1 (size!20905 (t!201028 otherP!12))))))

(assert (= (and d!668438 c!358353) b!2253674))

(assert (= (and d!668438 (not c!358353)) b!2253675))

(declare-fun m!2684401 () Bool)

(assert (=> b!2253675 m!2684401))

(assert (=> b!2253451 d!668438))

(declare-fun b!2253678 () Bool)

(declare-fun e!1442300 () Bool)

(assert (=> b!2253678 (= e!1442300 (isPrefix!2227 (tail!3251 lt!837635) (tail!3251 input!1722)))))

(declare-fun b!2253677 () Bool)

(declare-fun res!963078 () Bool)

(assert (=> b!2253677 (=> (not res!963078) (not e!1442300))))

(assert (=> b!2253677 (= res!963078 (= (head!4808 lt!837635) (head!4808 input!1722)))))

(declare-fun d!668440 () Bool)

(declare-fun e!1442299 () Bool)

(assert (=> d!668440 e!1442299))

(declare-fun res!963075 () Bool)

(assert (=> d!668440 (=> res!963075 e!1442299)))

(declare-fun lt!837689 () Bool)

(assert (=> d!668440 (= res!963075 (not lt!837689))))

(declare-fun e!1442301 () Bool)

(assert (=> d!668440 (= lt!837689 e!1442301)))

(declare-fun res!963077 () Bool)

(assert (=> d!668440 (=> res!963077 e!1442301)))

(assert (=> d!668440 (= res!963077 ((_ is Nil!26706) lt!837635))))

(assert (=> d!668440 (= (isPrefix!2227 lt!837635 input!1722) lt!837689)))

(declare-fun b!2253679 () Bool)

(assert (=> b!2253679 (= e!1442299 (>= (size!20905 input!1722) (size!20905 lt!837635)))))

(declare-fun b!2253676 () Bool)

(assert (=> b!2253676 (= e!1442301 e!1442300)))

(declare-fun res!963076 () Bool)

(assert (=> b!2253676 (=> (not res!963076) (not e!1442300))))

(assert (=> b!2253676 (= res!963076 (not ((_ is Nil!26706) input!1722)))))

(assert (= (and d!668440 (not res!963077)) b!2253676))

(assert (= (and b!2253676 res!963076) b!2253677))

(assert (= (and b!2253677 res!963078) b!2253678))

(assert (= (and d!668440 (not res!963075)) b!2253679))

(assert (=> b!2253678 m!2684379))

(assert (=> b!2253678 m!2684395))

(assert (=> b!2253678 m!2684379))

(assert (=> b!2253678 m!2684395))

(declare-fun m!2684403 () Bool)

(assert (=> b!2253678 m!2684403))

(assert (=> b!2253677 m!2684385))

(declare-fun m!2684405 () Bool)

(assert (=> b!2253677 m!2684405))

(assert (=> b!2253679 m!2684393))

(assert (=> b!2253679 m!2684247))

(assert (=> b!2253473 d!668440))

(declare-fun d!668442 () Bool)

(assert (=> d!668442 (= lt!837635 otherP!12)))

(declare-fun lt!837692 () Unit!39638)

(declare-fun choose!13184 (List!26800 List!26800 List!26800) Unit!39638)

(assert (=> d!668442 (= lt!837692 (choose!13184 lt!837635 otherP!12 input!1722))))

(assert (=> d!668442 (isPrefix!2227 lt!837635 input!1722)))

(assert (=> d!668442 (= (lemmaIsPrefixSameLengthThenSameList!383 lt!837635 otherP!12 input!1722) lt!837692)))

(declare-fun bs!455194 () Bool)

(assert (= bs!455194 d!668442))

(declare-fun m!2684407 () Bool)

(assert (=> bs!455194 m!2684407))

(assert (=> bs!455194 m!2684271))

(assert (=> b!2253473 d!668442))

(declare-fun b!2253690 () Bool)

(declare-fun res!963081 () Bool)

(declare-fun e!1442309 () Bool)

(assert (=> b!2253690 (=> res!963081 e!1442309)))

(assert (=> b!2253690 (= res!963081 (not ((_ is IntegerValue!13199) (value!134574 (h!32109 tokens!456)))))))

(declare-fun e!1442308 () Bool)

(assert (=> b!2253690 (= e!1442308 e!1442309)))

(declare-fun d!668444 () Bool)

(declare-fun c!358358 () Bool)

(assert (=> d!668444 (= c!358358 ((_ is IntegerValue!13197) (value!134574 (h!32109 tokens!456))))))

(declare-fun e!1442310 () Bool)

(assert (=> d!668444 (= (inv!21 (value!134574 (h!32109 tokens!456))) e!1442310)))

(declare-fun b!2253691 () Bool)

(declare-fun inv!17 (TokenValue!4399) Bool)

(assert (=> b!2253691 (= e!1442308 (inv!17 (value!134574 (h!32109 tokens!456))))))

(declare-fun b!2253692 () Bool)

(declare-fun inv!16 (TokenValue!4399) Bool)

(assert (=> b!2253692 (= e!1442310 (inv!16 (value!134574 (h!32109 tokens!456))))))

(declare-fun b!2253693 () Bool)

(declare-fun inv!15 (TokenValue!4399) Bool)

(assert (=> b!2253693 (= e!1442309 (inv!15 (value!134574 (h!32109 tokens!456))))))

(declare-fun b!2253694 () Bool)

(assert (=> b!2253694 (= e!1442310 e!1442308)))

(declare-fun c!358359 () Bool)

(assert (=> b!2253694 (= c!358359 ((_ is IntegerValue!13198) (value!134574 (h!32109 tokens!456))))))

(assert (= (and d!668444 c!358358) b!2253692))

(assert (= (and d!668444 (not c!358358)) b!2253694))

(assert (= (and b!2253694 c!358359) b!2253691))

(assert (= (and b!2253694 (not c!358359)) b!2253690))

(assert (= (and b!2253690 (not res!963081)) b!2253693))

(declare-fun m!2684409 () Bool)

(assert (=> b!2253691 m!2684409))

(declare-fun m!2684411 () Bool)

(assert (=> b!2253692 m!2684411))

(declare-fun m!2684413 () Bool)

(assert (=> b!2253693 m!2684413))

(assert (=> b!2253448 d!668444))

(declare-fun d!668446 () Bool)

(assert (=> d!668446 (= (isEmpty!15069 rules!1750) ((_ is Nil!26707) rules!1750))))

(assert (=> b!2253470 d!668446))

(declare-fun d!668448 () Bool)

(assert (=> d!668448 (= (inv!36239 (tag!4727 (h!32108 rules!1750))) (= (mod (str.len (value!134573 (tag!4727 (h!32108 rules!1750)))) 2) 0))))

(assert (=> b!2253447 d!668448))

(declare-fun d!668450 () Bool)

(declare-fun res!963084 () Bool)

(declare-fun e!1442313 () Bool)

(assert (=> d!668450 (=> (not res!963084) (not e!1442313))))

(declare-fun semiInverseModEq!1710 (Int Int) Bool)

(assert (=> d!668450 (= res!963084 (semiInverseModEq!1710 (toChars!5838 (transformation!4237 (h!32108 rules!1750))) (toValue!5979 (transformation!4237 (h!32108 rules!1750)))))))

(assert (=> d!668450 (= (inv!36242 (transformation!4237 (h!32108 rules!1750))) e!1442313)))

(declare-fun b!2253697 () Bool)

(declare-fun equivClasses!1629 (Int Int) Bool)

(assert (=> b!2253697 (= e!1442313 (equivClasses!1629 (toChars!5838 (transformation!4237 (h!32108 rules!1750))) (toValue!5979 (transformation!4237 (h!32108 rules!1750)))))))

(assert (= (and d!668450 res!963084) b!2253697))

(declare-fun m!2684415 () Bool)

(assert (=> d!668450 m!2684415))

(declare-fun m!2684417 () Bool)

(assert (=> b!2253697 m!2684417))

(assert (=> b!2253447 d!668450))

(declare-fun d!668452 () Bool)

(declare-fun res!963085 () Bool)

(declare-fun e!1442314 () Bool)

(assert (=> d!668452 (=> (not res!963085) (not e!1442314))))

(assert (=> d!668452 (= res!963085 (validRegex!2462 (regex!4237 r!2363)))))

(assert (=> d!668452 (= (ruleValid!1329 thiss!16613 r!2363) e!1442314)))

(declare-fun b!2253698 () Bool)

(declare-fun res!963086 () Bool)

(assert (=> b!2253698 (=> (not res!963086) (not e!1442314))))

(assert (=> b!2253698 (= res!963086 (not (nullable!1808 (regex!4237 r!2363))))))

(declare-fun b!2253699 () Bool)

(assert (=> b!2253699 (= e!1442314 (not (= (tag!4727 r!2363) (String!29100 ""))))))

(assert (= (and d!668452 res!963085) b!2253698))

(assert (= (and b!2253698 res!963086) b!2253699))

(assert (=> d!668452 m!2684321))

(assert (=> b!2253698 m!2684327))

(assert (=> b!2253468 d!668452))

(declare-fun d!668454 () Bool)

(assert (=> d!668454 (ruleValid!1329 thiss!16613 r!2363)))

(declare-fun lt!837693 () Unit!39638)

(assert (=> d!668454 (= lt!837693 (choose!13180 thiss!16613 r!2363 rules!1750))))

(assert (=> d!668454 (contains!4589 rules!1750 r!2363)))

(assert (=> d!668454 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!736 thiss!16613 r!2363 rules!1750) lt!837693)))

(declare-fun bs!455195 () Bool)

(assert (= bs!455195 d!668454))

(assert (=> bs!455195 m!2684195))

(declare-fun m!2684419 () Bool)

(assert (=> bs!455195 m!2684419))

(assert (=> bs!455195 m!2684253))

(assert (=> b!2253468 d!668454))

(declare-fun d!668456 () Bool)

(declare-fun lt!837696 () Int)

(assert (=> d!668456 (= lt!837696 (size!20905 (list!10261 (charsOf!2625 (head!4806 tokens!456)))))))

(declare-fun size!20908 (Conc!8622) Int)

(assert (=> d!668456 (= lt!837696 (size!20908 (c!358308 (charsOf!2625 (head!4806 tokens!456)))))))

(assert (=> d!668456 (= (size!20906 (charsOf!2625 (head!4806 tokens!456))) lt!837696)))

(declare-fun bs!455196 () Bool)

(assert (= bs!455196 d!668456))

(assert (=> bs!455196 m!2684175))

(assert (=> bs!455196 m!2684215))

(assert (=> bs!455196 m!2684215))

(declare-fun m!2684421 () Bool)

(assert (=> bs!455196 m!2684421))

(declare-fun m!2684423 () Bool)

(assert (=> bs!455196 m!2684423))

(assert (=> b!2253469 d!668456))

(assert (=> b!2253469 d!668408))

(assert (=> b!2253469 d!668410))

(assert (=> b!2253469 d!668438))

(declare-fun d!668458 () Bool)

(assert (=> d!668458 (= (isEmpty!15068 tokens!456) ((_ is Nil!26708) tokens!456))))

(assert (=> b!2253467 d!668458))

(declare-fun b!2253700 () Bool)

(declare-fun res!963092 () Bool)

(declare-fun e!1442320 () Bool)

(assert (=> b!2253700 (=> (not res!963092) (not e!1442320))))

(declare-fun call!135662 () Bool)

(assert (=> b!2253700 (= res!963092 (not call!135662))))

(declare-fun b!2253701 () Bool)

(declare-fun res!963088 () Bool)

(assert (=> b!2253701 (=> (not res!963088) (not e!1442320))))

(assert (=> b!2253701 (= res!963088 (isEmpty!15070 (tail!3251 lt!837635)))))

(declare-fun b!2253702 () Bool)

(declare-fun e!1442321 () Bool)

(declare-fun e!1442317 () Bool)

(assert (=> b!2253702 (= e!1442321 e!1442317)))

(declare-fun res!963091 () Bool)

(assert (=> b!2253702 (=> res!963091 e!1442317)))

(assert (=> b!2253702 (= res!963091 call!135662)))

(declare-fun b!2253703 () Bool)

(declare-fun e!1442318 () Bool)

(declare-fun lt!837697 () Bool)

(assert (=> b!2253703 (= e!1442318 (not lt!837697))))

(declare-fun b!2253704 () Bool)

(assert (=> b!2253704 (= e!1442320 (= (head!4808 lt!837635) (c!358309 (regex!4237 r!2363))))))

(declare-fun b!2253705 () Bool)

(declare-fun e!1442315 () Bool)

(assert (=> b!2253705 (= e!1442315 e!1442321)))

(declare-fun res!963090 () Bool)

(assert (=> b!2253705 (=> (not res!963090) (not e!1442321))))

(assert (=> b!2253705 (= res!963090 (not lt!837697))))

(declare-fun b!2253706 () Bool)

(declare-fun e!1442319 () Bool)

(assert (=> b!2253706 (= e!1442319 e!1442318)))

(declare-fun c!358360 () Bool)

(assert (=> b!2253706 (= c!358360 ((_ is EmptyLang!6585) (regex!4237 r!2363)))))

(declare-fun d!668460 () Bool)

(assert (=> d!668460 e!1442319))

(declare-fun c!358361 () Bool)

(assert (=> d!668460 (= c!358361 ((_ is EmptyExpr!6585) (regex!4237 r!2363)))))

(declare-fun e!1442316 () Bool)

(assert (=> d!668460 (= lt!837697 e!1442316)))

(declare-fun c!358362 () Bool)

(assert (=> d!668460 (= c!358362 (isEmpty!15070 lt!837635))))

(assert (=> d!668460 (validRegex!2462 (regex!4237 r!2363))))

(assert (=> d!668460 (= (matchR!2846 (regex!4237 r!2363) lt!837635) lt!837697)))

(declare-fun bm!135657 () Bool)

(assert (=> bm!135657 (= call!135662 (isEmpty!15070 lt!837635))))

(declare-fun b!2253707 () Bool)

(declare-fun res!963093 () Bool)

(assert (=> b!2253707 (=> res!963093 e!1442315)))

(assert (=> b!2253707 (= res!963093 (not ((_ is ElementMatch!6585) (regex!4237 r!2363))))))

(assert (=> b!2253707 (= e!1442318 e!1442315)))

(declare-fun b!2253708 () Bool)

(declare-fun res!963094 () Bool)

(assert (=> b!2253708 (=> res!963094 e!1442315)))

(assert (=> b!2253708 (= res!963094 e!1442320)))

(declare-fun res!963087 () Bool)

(assert (=> b!2253708 (=> (not res!963087) (not e!1442320))))

(assert (=> b!2253708 (= res!963087 lt!837697)))

(declare-fun b!2253709 () Bool)

(assert (=> b!2253709 (= e!1442319 (= lt!837697 call!135662))))

(declare-fun b!2253710 () Bool)

(declare-fun res!963089 () Bool)

(assert (=> b!2253710 (=> res!963089 e!1442317)))

(assert (=> b!2253710 (= res!963089 (not (isEmpty!15070 (tail!3251 lt!837635))))))

(declare-fun b!2253711 () Bool)

(assert (=> b!2253711 (= e!1442317 (not (= (head!4808 lt!837635) (c!358309 (regex!4237 r!2363)))))))

(declare-fun b!2253712 () Bool)

(assert (=> b!2253712 (= e!1442316 (matchR!2846 (derivativeStep!1470 (regex!4237 r!2363) (head!4808 lt!837635)) (tail!3251 lt!837635)))))

(declare-fun b!2253713 () Bool)

(assert (=> b!2253713 (= e!1442316 (nullable!1808 (regex!4237 r!2363)))))

(assert (= (and d!668460 c!358362) b!2253713))

(assert (= (and d!668460 (not c!358362)) b!2253712))

(assert (= (and d!668460 c!358361) b!2253709))

(assert (= (and d!668460 (not c!358361)) b!2253706))

(assert (= (and b!2253706 c!358360) b!2253703))

(assert (= (and b!2253706 (not c!358360)) b!2253707))

(assert (= (and b!2253707 (not res!963093)) b!2253708))

(assert (= (and b!2253708 res!963087) b!2253700))

(assert (= (and b!2253700 res!963092) b!2253701))

(assert (= (and b!2253701 res!963088) b!2253704))

(assert (= (and b!2253708 (not res!963094)) b!2253705))

(assert (= (and b!2253705 res!963090) b!2253702))

(assert (= (and b!2253702 (not res!963091)) b!2253710))

(assert (= (and b!2253710 (not res!963089)) b!2253711))

(assert (= (or b!2253709 b!2253700 b!2253702) bm!135657))

(assert (=> b!2253710 m!2684379))

(assert (=> b!2253710 m!2684379))

(declare-fun m!2684425 () Bool)

(assert (=> b!2253710 m!2684425))

(assert (=> b!2253704 m!2684385))

(assert (=> bm!135657 m!2684207))

(assert (=> d!668460 m!2684207))

(assert (=> d!668460 m!2684321))

(assert (=> b!2253701 m!2684379))

(assert (=> b!2253701 m!2684379))

(assert (=> b!2253701 m!2684425))

(assert (=> b!2253712 m!2684385))

(assert (=> b!2253712 m!2684385))

(declare-fun m!2684427 () Bool)

(assert (=> b!2253712 m!2684427))

(assert (=> b!2253712 m!2684379))

(assert (=> b!2253712 m!2684427))

(assert (=> b!2253712 m!2684379))

(declare-fun m!2684429 () Bool)

(assert (=> b!2253712 m!2684429))

(assert (=> b!2253711 m!2684385))

(assert (=> b!2253713 m!2684327))

(assert (=> b!2253446 d!668460))

(declare-fun d!668462 () Bool)

(declare-fun lt!837698 () Bool)

(assert (=> d!668462 (= lt!837698 (select (content!3559 rules!1750) r!2363))))

(declare-fun e!1442322 () Bool)

(assert (=> d!668462 (= lt!837698 e!1442322)))

(declare-fun res!963095 () Bool)

(assert (=> d!668462 (=> (not res!963095) (not e!1442322))))

(assert (=> d!668462 (= res!963095 ((_ is Cons!26707) rules!1750))))

(assert (=> d!668462 (= (contains!4589 rules!1750 r!2363) lt!837698)))

(declare-fun b!2253714 () Bool)

(declare-fun e!1442323 () Bool)

(assert (=> b!2253714 (= e!1442322 e!1442323)))

(declare-fun res!963096 () Bool)

(assert (=> b!2253714 (=> res!963096 e!1442323)))

(assert (=> b!2253714 (= res!963096 (= (h!32108 rules!1750) r!2363))))

(declare-fun b!2253715 () Bool)

(assert (=> b!2253715 (= e!1442323 (contains!4589 (t!201029 rules!1750) r!2363))))

(assert (= (and d!668462 res!963095) b!2253714))

(assert (= (and b!2253714 (not res!963096)) b!2253715))

(assert (=> d!668462 m!2684275))

(declare-fun m!2684431 () Bool)

(assert (=> d!668462 m!2684431))

(declare-fun m!2684433 () Bool)

(assert (=> b!2253715 m!2684433))

(assert (=> b!2253445 d!668462))

(declare-fun d!668464 () Bool)

(assert (=> d!668464 (= (inv!36239 (tag!4727 r!2363)) (= (mod (str.len (value!134573 (tag!4727 r!2363))) 2) 0))))

(assert (=> b!2253464 d!668464))

(declare-fun d!668466 () Bool)

(declare-fun res!963097 () Bool)

(declare-fun e!1442324 () Bool)

(assert (=> d!668466 (=> (not res!963097) (not e!1442324))))

(assert (=> d!668466 (= res!963097 (semiInverseModEq!1710 (toChars!5838 (transformation!4237 r!2363)) (toValue!5979 (transformation!4237 r!2363))))))

(assert (=> d!668466 (= (inv!36242 (transformation!4237 r!2363)) e!1442324)))

(declare-fun b!2253716 () Bool)

(assert (=> b!2253716 (= e!1442324 (equivClasses!1629 (toChars!5838 (transformation!4237 r!2363)) (toValue!5979 (transformation!4237 r!2363))))))

(assert (= (and d!668466 res!963097) b!2253716))

(declare-fun m!2684435 () Bool)

(assert (=> d!668466 m!2684435))

(declare-fun m!2684437 () Bool)

(assert (=> b!2253716 m!2684437))

(assert (=> b!2253464 d!668466))

(declare-fun d!668468 () Bool)

(assert (=> d!668468 (= (inv!36239 (tag!4727 (rule!6541 (h!32109 tokens!456)))) (= (mod (str.len (value!134573 (tag!4727 (rule!6541 (h!32109 tokens!456))))) 2) 0))))

(assert (=> b!2253462 d!668468))

(declare-fun d!668470 () Bool)

(declare-fun res!963098 () Bool)

(declare-fun e!1442325 () Bool)

(assert (=> d!668470 (=> (not res!963098) (not e!1442325))))

(assert (=> d!668470 (= res!963098 (semiInverseModEq!1710 (toChars!5838 (transformation!4237 (rule!6541 (h!32109 tokens!456)))) (toValue!5979 (transformation!4237 (rule!6541 (h!32109 tokens!456))))))))

(assert (=> d!668470 (= (inv!36242 (transformation!4237 (rule!6541 (h!32109 tokens!456)))) e!1442325)))

(declare-fun b!2253717 () Bool)

(assert (=> b!2253717 (= e!1442325 (equivClasses!1629 (toChars!5838 (transformation!4237 (rule!6541 (h!32109 tokens!456)))) (toValue!5979 (transformation!4237 (rule!6541 (h!32109 tokens!456))))))))

(assert (= (and d!668470 res!963098) b!2253717))

(declare-fun m!2684439 () Bool)

(assert (=> d!668470 m!2684439))

(declare-fun m!2684441 () Bool)

(assert (=> b!2253717 m!2684441))

(assert (=> b!2253462 d!668470))

(declare-fun d!668472 () Bool)

(declare-fun list!10266 (Conc!8623) List!26802)

(assert (=> d!668472 (= (list!10262 (_1!15626 lt!837628)) (list!10266 (c!358310 (_1!15626 lt!837628))))))

(declare-fun bs!455197 () Bool)

(assert (= bs!455197 d!668472))

(declare-fun m!2684443 () Bool)

(assert (=> bs!455197 m!2684443))

(assert (=> b!2253460 d!668472))

(declare-fun d!668474 () Bool)

(assert (=> d!668474 (= (list!10261 (_2!15626 lt!837628)) (list!10265 (c!358308 (_2!15626 lt!837628))))))

(declare-fun bs!455198 () Bool)

(assert (= bs!455198 d!668474))

(declare-fun m!2684445 () Bool)

(assert (=> bs!455198 m!2684445))

(assert (=> b!2253460 d!668474))

(declare-fun b!2253728 () Bool)

(declare-fun e!1442332 () Bool)

(declare-fun lt!837701 () tuple2!26232)

(assert (=> b!2253728 (= e!1442332 (= (_2!15626 lt!837701) (seqFromList!2941 input!1722)))))

(declare-fun b!2253730 () Bool)

(declare-fun res!963105 () Bool)

(declare-fun e!1442333 () Bool)

(assert (=> b!2253730 (=> (not res!963105) (not e!1442333))))

(declare-fun lexList!1054 (LexerInterface!3834 List!26801 List!26800) tuple2!26234)

(assert (=> b!2253730 (= res!963105 (= (list!10262 (_1!15626 lt!837701)) (_1!15627 (lexList!1054 thiss!16613 rules!1750 (list!10261 (seqFromList!2941 input!1722))))))))

(declare-fun b!2253731 () Bool)

(declare-fun e!1442334 () Bool)

(declare-fun isEmpty!15072 (BalanceConc!16974) Bool)

(assert (=> b!2253731 (= e!1442334 (not (isEmpty!15072 (_1!15626 lt!837701))))))

(declare-fun b!2253732 () Bool)

(assert (=> b!2253732 (= e!1442332 e!1442334)))

(declare-fun res!963107 () Bool)

(assert (=> b!2253732 (= res!963107 (< (size!20906 (_2!15626 lt!837701)) (size!20906 (seqFromList!2941 input!1722))))))

(assert (=> b!2253732 (=> (not res!963107) (not e!1442334))))

(declare-fun b!2253729 () Bool)

(assert (=> b!2253729 (= e!1442333 (= (list!10261 (_2!15626 lt!837701)) (_2!15627 (lexList!1054 thiss!16613 rules!1750 (list!10261 (seqFromList!2941 input!1722))))))))

(declare-fun d!668476 () Bool)

(assert (=> d!668476 e!1442333))

(declare-fun res!963106 () Bool)

(assert (=> d!668476 (=> (not res!963106) (not e!1442333))))

(assert (=> d!668476 (= res!963106 e!1442332)))

(declare-fun c!358365 () Bool)

(declare-fun size!20910 (BalanceConc!16974) Int)

(assert (=> d!668476 (= c!358365 (> (size!20910 (_1!15626 lt!837701)) 0))))

(declare-fun lexTailRecV2!729 (LexerInterface!3834 List!26801 BalanceConc!16972 BalanceConc!16972 BalanceConc!16972 BalanceConc!16974) tuple2!26232)

(assert (=> d!668476 (= lt!837701 (lexTailRecV2!729 thiss!16613 rules!1750 (seqFromList!2941 input!1722) (BalanceConc!16973 Empty!8622) (seqFromList!2941 input!1722) (BalanceConc!16975 Empty!8623)))))

(assert (=> d!668476 (= (lex!1673 thiss!16613 rules!1750 (seqFromList!2941 input!1722)) lt!837701)))

(assert (= (and d!668476 c!358365) b!2253732))

(assert (= (and d!668476 (not c!358365)) b!2253728))

(assert (= (and b!2253732 res!963107) b!2253731))

(assert (= (and d!668476 res!963106) b!2253730))

(assert (= (and b!2253730 res!963105) b!2253729))

(declare-fun m!2684447 () Bool)

(assert (=> b!2253732 m!2684447))

(assert (=> b!2253732 m!2684263))

(declare-fun m!2684449 () Bool)

(assert (=> b!2253732 m!2684449))

(declare-fun m!2684451 () Bool)

(assert (=> b!2253730 m!2684451))

(assert (=> b!2253730 m!2684263))

(declare-fun m!2684453 () Bool)

(assert (=> b!2253730 m!2684453))

(assert (=> b!2253730 m!2684453))

(declare-fun m!2684455 () Bool)

(assert (=> b!2253730 m!2684455))

(declare-fun m!2684457 () Bool)

(assert (=> d!668476 m!2684457))

(assert (=> d!668476 m!2684263))

(assert (=> d!668476 m!2684263))

(declare-fun m!2684459 () Bool)

(assert (=> d!668476 m!2684459))

(declare-fun m!2684461 () Bool)

(assert (=> b!2253729 m!2684461))

(assert (=> b!2253729 m!2684263))

(assert (=> b!2253729 m!2684453))

(assert (=> b!2253729 m!2684453))

(assert (=> b!2253729 m!2684455))

(declare-fun m!2684463 () Bool)

(assert (=> b!2253731 m!2684463))

(assert (=> b!2253460 d!668476))

(declare-fun d!668478 () Bool)

(declare-fun fromListB!1320 (List!26800) BalanceConc!16972)

(assert (=> d!668478 (= (seqFromList!2941 input!1722) (fromListB!1320 input!1722))))

(declare-fun bs!455199 () Bool)

(assert (= bs!455199 d!668478))

(declare-fun m!2684465 () Bool)

(assert (=> bs!455199 m!2684465))

(assert (=> b!2253460 d!668478))

(declare-fun b!2253735 () Bool)

(declare-fun e!1442336 () Bool)

(assert (=> b!2253735 (= e!1442336 (isPrefix!2227 (tail!3251 otherP!12) (tail!3251 input!1722)))))

(declare-fun b!2253734 () Bool)

(declare-fun res!963111 () Bool)

(assert (=> b!2253734 (=> (not res!963111) (not e!1442336))))

(assert (=> b!2253734 (= res!963111 (= (head!4808 otherP!12) (head!4808 input!1722)))))

(declare-fun d!668480 () Bool)

(declare-fun e!1442335 () Bool)

(assert (=> d!668480 e!1442335))

(declare-fun res!963108 () Bool)

(assert (=> d!668480 (=> res!963108 e!1442335)))

(declare-fun lt!837702 () Bool)

(assert (=> d!668480 (= res!963108 (not lt!837702))))

(declare-fun e!1442337 () Bool)

(assert (=> d!668480 (= lt!837702 e!1442337)))

(declare-fun res!963110 () Bool)

(assert (=> d!668480 (=> res!963110 e!1442337)))

(assert (=> d!668480 (= res!963110 ((_ is Nil!26706) otherP!12))))

(assert (=> d!668480 (= (isPrefix!2227 otherP!12 input!1722) lt!837702)))

(declare-fun b!2253736 () Bool)

(assert (=> b!2253736 (= e!1442335 (>= (size!20905 input!1722) (size!20905 otherP!12)))))

(declare-fun b!2253733 () Bool)

(assert (=> b!2253733 (= e!1442337 e!1442336)))

(declare-fun res!963109 () Bool)

(assert (=> b!2253733 (=> (not res!963109) (not e!1442336))))

(assert (=> b!2253733 (= res!963109 (not ((_ is Nil!26706) input!1722)))))

(assert (= (and d!668480 (not res!963110)) b!2253733))

(assert (= (and b!2253733 res!963109) b!2253734))

(assert (= (and b!2253734 res!963111) b!2253735))

(assert (= (and d!668480 (not res!963108)) b!2253736))

(declare-fun m!2684467 () Bool)

(assert (=> b!2253735 m!2684467))

(assert (=> b!2253735 m!2684395))

(assert (=> b!2253735 m!2684467))

(assert (=> b!2253735 m!2684395))

(declare-fun m!2684469 () Bool)

(assert (=> b!2253735 m!2684469))

(declare-fun m!2684471 () Bool)

(assert (=> b!2253734 m!2684471))

(assert (=> b!2253734 m!2684405))

(assert (=> b!2253736 m!2684393))

(assert (=> b!2253736 m!2684179))

(assert (=> b!2253461 d!668480))

(declare-fun d!668482 () Bool)

(assert (=> d!668482 (= (get!8063 lt!837641) (v!30234 lt!837641))))

(assert (=> b!2253459 d!668482))

(declare-fun d!668484 () Bool)

(declare-fun e!1442352 () Bool)

(assert (=> d!668484 e!1442352))

(declare-fun res!963126 () Bool)

(assert (=> d!668484 (=> res!963126 e!1442352)))

(declare-fun lt!837717 () Option!5213)

(declare-fun isEmpty!15074 (Option!5213) Bool)

(assert (=> d!668484 (= res!963126 (isEmpty!15074 lt!837717))))

(declare-fun e!1442350 () Option!5213)

(assert (=> d!668484 (= lt!837717 e!1442350)))

(declare-fun c!358368 () Bool)

(assert (=> d!668484 (= c!358368 (and ((_ is Cons!26707) rules!1750) ((_ is Nil!26707) (t!201029 rules!1750))))))

(declare-fun lt!837715 () Unit!39638)

(declare-fun lt!837714 () Unit!39638)

(assert (=> d!668484 (= lt!837715 lt!837714)))

(assert (=> d!668484 (isPrefix!2227 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1435 (List!26800 List!26800) Unit!39638)

(assert (=> d!668484 (= lt!837714 (lemmaIsPrefixRefl!1435 input!1722 input!1722))))

(declare-fun rulesValidInductive!1479 (LexerInterface!3834 List!26801) Bool)

(assert (=> d!668484 (rulesValidInductive!1479 thiss!16613 rules!1750)))

(assert (=> d!668484 (= (maxPrefix!2122 thiss!16613 rules!1750 input!1722) lt!837717)))

(declare-fun b!2253765 () Bool)

(declare-fun res!963130 () Bool)

(declare-fun e!1442351 () Bool)

(assert (=> b!2253765 (=> (not res!963130) (not e!1442351))))

(assert (=> b!2253765 (= res!963130 (matchR!2846 (regex!4237 (rule!6541 (_1!15625 (get!8063 lt!837717)))) (list!10261 (charsOf!2625 (_1!15625 (get!8063 lt!837717))))))))

(declare-fun b!2253766 () Bool)

(declare-fun res!963129 () Bool)

(assert (=> b!2253766 (=> (not res!963129) (not e!1442351))))

(assert (=> b!2253766 (= res!963129 (= (list!10261 (charsOf!2625 (_1!15625 (get!8063 lt!837717)))) (originalCharacters!5007 (_1!15625 (get!8063 lt!837717)))))))

(declare-fun b!2253767 () Bool)

(declare-fun res!963127 () Bool)

(assert (=> b!2253767 (=> (not res!963127) (not e!1442351))))

(assert (=> b!2253767 (= res!963127 (= (value!134574 (_1!15625 (get!8063 lt!837717))) (apply!6557 (transformation!4237 (rule!6541 (_1!15625 (get!8063 lt!837717)))) (seqFromList!2941 (originalCharacters!5007 (_1!15625 (get!8063 lt!837717)))))))))

(declare-fun b!2253768 () Bool)

(declare-fun res!963128 () Bool)

(assert (=> b!2253768 (=> (not res!963128) (not e!1442351))))

(assert (=> b!2253768 (= res!963128 (= (++!6509 (list!10261 (charsOf!2625 (_1!15625 (get!8063 lt!837717)))) (_2!15625 (get!8063 lt!837717))) input!1722))))

(declare-fun b!2253769 () Bool)

(declare-fun res!963132 () Bool)

(assert (=> b!2253769 (=> (not res!963132) (not e!1442351))))

(assert (=> b!2253769 (= res!963132 (< (size!20905 (_2!15625 (get!8063 lt!837717))) (size!20905 input!1722)))))

(declare-fun b!2253770 () Bool)

(declare-fun lt!837718 () Option!5213)

(declare-fun lt!837716 () Option!5213)

(assert (=> b!2253770 (= e!1442350 (ite (and ((_ is None!5212) lt!837718) ((_ is None!5212) lt!837716)) None!5212 (ite ((_ is None!5212) lt!837716) lt!837718 (ite ((_ is None!5212) lt!837718) lt!837716 (ite (>= (size!20904 (_1!15625 (v!30234 lt!837718))) (size!20904 (_1!15625 (v!30234 lt!837716)))) lt!837718 lt!837716)))))))

(declare-fun call!135665 () Option!5213)

(assert (=> b!2253770 (= lt!837718 call!135665)))

(assert (=> b!2253770 (= lt!837716 (maxPrefix!2122 thiss!16613 (t!201029 rules!1750) input!1722))))

(declare-fun b!2253771 () Bool)

(assert (=> b!2253771 (= e!1442351 (contains!4589 rules!1750 (rule!6541 (_1!15625 (get!8063 lt!837717)))))))

(declare-fun b!2253772 () Bool)

(assert (=> b!2253772 (= e!1442350 call!135665)))

(declare-fun bm!135660 () Bool)

(declare-fun maxPrefixOneRule!1316 (LexerInterface!3834 Rule!8274 List!26800) Option!5213)

(assert (=> bm!135660 (= call!135665 (maxPrefixOneRule!1316 thiss!16613 (h!32108 rules!1750) input!1722))))

(declare-fun b!2253773 () Bool)

(assert (=> b!2253773 (= e!1442352 e!1442351)))

(declare-fun res!963131 () Bool)

(assert (=> b!2253773 (=> (not res!963131) (not e!1442351))))

(declare-fun isDefined!4188 (Option!5213) Bool)

(assert (=> b!2253773 (= res!963131 (isDefined!4188 lt!837717))))

(assert (= (and d!668484 c!358368) b!2253772))

(assert (= (and d!668484 (not c!358368)) b!2253770))

(assert (= (or b!2253772 b!2253770) bm!135660))

(assert (= (and d!668484 (not res!963126)) b!2253773))

(assert (= (and b!2253773 res!963131) b!2253766))

(assert (= (and b!2253766 res!963129) b!2253769))

(assert (= (and b!2253769 res!963132) b!2253768))

(assert (= (and b!2253768 res!963128) b!2253767))

(assert (= (and b!2253767 res!963127) b!2253765))

(assert (= (and b!2253765 res!963130) b!2253771))

(declare-fun m!2684491 () Bool)

(assert (=> d!668484 m!2684491))

(declare-fun m!2684493 () Bool)

(assert (=> d!668484 m!2684493))

(declare-fun m!2684495 () Bool)

(assert (=> d!668484 m!2684495))

(declare-fun m!2684497 () Bool)

(assert (=> d!668484 m!2684497))

(declare-fun m!2684499 () Bool)

(assert (=> b!2253766 m!2684499))

(declare-fun m!2684501 () Bool)

(assert (=> b!2253766 m!2684501))

(assert (=> b!2253766 m!2684501))

(declare-fun m!2684503 () Bool)

(assert (=> b!2253766 m!2684503))

(assert (=> b!2253765 m!2684499))

(assert (=> b!2253765 m!2684501))

(assert (=> b!2253765 m!2684501))

(assert (=> b!2253765 m!2684503))

(assert (=> b!2253765 m!2684503))

(declare-fun m!2684505 () Bool)

(assert (=> b!2253765 m!2684505))

(assert (=> b!2253771 m!2684499))

(declare-fun m!2684507 () Bool)

(assert (=> b!2253771 m!2684507))

(assert (=> b!2253768 m!2684499))

(assert (=> b!2253768 m!2684501))

(assert (=> b!2253768 m!2684501))

(assert (=> b!2253768 m!2684503))

(assert (=> b!2253768 m!2684503))

(declare-fun m!2684509 () Bool)

(assert (=> b!2253768 m!2684509))

(declare-fun m!2684511 () Bool)

(assert (=> bm!135660 m!2684511))

(declare-fun m!2684513 () Bool)

(assert (=> b!2253770 m!2684513))

(assert (=> b!2253767 m!2684499))

(declare-fun m!2684515 () Bool)

(assert (=> b!2253767 m!2684515))

(assert (=> b!2253767 m!2684515))

(declare-fun m!2684517 () Bool)

(assert (=> b!2253767 m!2684517))

(declare-fun m!2684519 () Bool)

(assert (=> b!2253773 m!2684519))

(assert (=> b!2253769 m!2684499))

(declare-fun m!2684521 () Bool)

(assert (=> b!2253769 m!2684521))

(assert (=> b!2253769 m!2684393))

(assert (=> b!2253459 d!668484))

(declare-fun d!668494 () Bool)

(assert (=> d!668494 (= (inv!36239 (tag!4727 otherR!12)) (= (mod (str.len (value!134573 (tag!4727 otherR!12))) 2) 0))))

(assert (=> b!2253456 d!668494))

(declare-fun d!668496 () Bool)

(declare-fun res!963133 () Bool)

(declare-fun e!1442353 () Bool)

(assert (=> d!668496 (=> (not res!963133) (not e!1442353))))

(assert (=> d!668496 (= res!963133 (semiInverseModEq!1710 (toChars!5838 (transformation!4237 otherR!12)) (toValue!5979 (transformation!4237 otherR!12))))))

(assert (=> d!668496 (= (inv!36242 (transformation!4237 otherR!12)) e!1442353)))

(declare-fun b!2253774 () Bool)

(assert (=> b!2253774 (= e!1442353 (equivClasses!1629 (toChars!5838 (transformation!4237 otherR!12)) (toValue!5979 (transformation!4237 otherR!12))))))

(assert (= (and d!668496 res!963133) b!2253774))

(declare-fun m!2684523 () Bool)

(assert (=> d!668496 m!2684523))

(declare-fun m!2684525 () Bool)

(assert (=> b!2253774 m!2684525))

(assert (=> b!2253456 d!668496))

(declare-fun bm!135667 () Bool)

(declare-fun call!135673 () Bool)

(declare-fun call!135674 () Bool)

(assert (=> bm!135667 (= call!135673 call!135674)))

(declare-fun b!2253793 () Bool)

(declare-fun e!1442368 () Bool)

(declare-fun e!1442372 () Bool)

(assert (=> b!2253793 (= e!1442368 e!1442372)))

(declare-fun c!358373 () Bool)

(assert (=> b!2253793 (= c!358373 ((_ is Union!6585) (regex!4237 otherR!12)))))

(declare-fun b!2253794 () Bool)

(declare-fun e!1442374 () Bool)

(assert (=> b!2253794 (= e!1442374 call!135673)))

(declare-fun b!2253795 () Bool)

(declare-fun res!963144 () Bool)

(declare-fun e!1442369 () Bool)

(assert (=> b!2253795 (=> res!963144 e!1442369)))

(assert (=> b!2253795 (= res!963144 (not ((_ is Concat!10985) (regex!4237 otherR!12))))))

(assert (=> b!2253795 (= e!1442372 e!1442369)))

(declare-fun b!2253796 () Bool)

(declare-fun res!963146 () Bool)

(assert (=> b!2253796 (=> (not res!963146) (not e!1442374))))

(declare-fun call!135672 () Bool)

(assert (=> b!2253796 (= res!963146 call!135672)))

(assert (=> b!2253796 (= e!1442372 e!1442374)))

(declare-fun c!358374 () Bool)

(declare-fun bm!135668 () Bool)

(assert (=> bm!135668 (= call!135674 (validRegex!2462 (ite c!358374 (reg!6914 (regex!4237 otherR!12)) (ite c!358373 (regTwo!13683 (regex!4237 otherR!12)) (regOne!13682 (regex!4237 otherR!12))))))))

(declare-fun b!2253797 () Bool)

(declare-fun e!1442370 () Bool)

(assert (=> b!2253797 (= e!1442368 e!1442370)))

(declare-fun res!963148 () Bool)

(assert (=> b!2253797 (= res!963148 (not (nullable!1808 (reg!6914 (regex!4237 otherR!12)))))))

(assert (=> b!2253797 (=> (not res!963148) (not e!1442370))))

(declare-fun b!2253798 () Bool)

(declare-fun e!1442373 () Bool)

(assert (=> b!2253798 (= e!1442373 call!135672)))

(declare-fun b!2253799 () Bool)

(assert (=> b!2253799 (= e!1442370 call!135674)))

(declare-fun bm!135669 () Bool)

(assert (=> bm!135669 (= call!135672 (validRegex!2462 (ite c!358373 (regOne!13683 (regex!4237 otherR!12)) (regTwo!13682 (regex!4237 otherR!12)))))))

(declare-fun d!668498 () Bool)

(declare-fun res!963145 () Bool)

(declare-fun e!1442371 () Bool)

(assert (=> d!668498 (=> res!963145 e!1442371)))

(assert (=> d!668498 (= res!963145 ((_ is ElementMatch!6585) (regex!4237 otherR!12)))))

(assert (=> d!668498 (= (validRegex!2462 (regex!4237 otherR!12)) e!1442371)))

(declare-fun b!2253800 () Bool)

(assert (=> b!2253800 (= e!1442371 e!1442368)))

(assert (=> b!2253800 (= c!358374 ((_ is Star!6585) (regex!4237 otherR!12)))))

(declare-fun b!2253801 () Bool)

(assert (=> b!2253801 (= e!1442369 e!1442373)))

(declare-fun res!963147 () Bool)

(assert (=> b!2253801 (=> (not res!963147) (not e!1442373))))

(assert (=> b!2253801 (= res!963147 call!135673)))

(assert (= (and d!668498 (not res!963145)) b!2253800))

(assert (= (and b!2253800 c!358374) b!2253797))

(assert (= (and b!2253800 (not c!358374)) b!2253793))

(assert (= (and b!2253797 res!963148) b!2253799))

(assert (= (and b!2253793 c!358373) b!2253796))

(assert (= (and b!2253793 (not c!358373)) b!2253795))

(assert (= (and b!2253796 res!963146) b!2253794))

(assert (= (and b!2253795 (not res!963144)) b!2253801))

(assert (= (and b!2253801 res!963147) b!2253798))

(assert (= (or b!2253796 b!2253798) bm!135669))

(assert (= (or b!2253794 b!2253801) bm!135667))

(assert (= (or b!2253799 bm!135667) bm!135668))

(declare-fun m!2684527 () Bool)

(assert (=> bm!135668 m!2684527))

(declare-fun m!2684529 () Bool)

(assert (=> b!2253797 m!2684529))

(declare-fun m!2684531 () Bool)

(assert (=> bm!135669 m!2684531))

(assert (=> b!2253457 d!668498))

(declare-fun b!2253802 () Bool)

(declare-fun res!963154 () Bool)

(declare-fun e!1442380 () Bool)

(assert (=> b!2253802 (=> (not res!963154) (not e!1442380))))

(declare-fun call!135675 () Bool)

(assert (=> b!2253802 (= res!963154 (not call!135675))))

(declare-fun b!2253803 () Bool)

(declare-fun res!963150 () Bool)

(assert (=> b!2253803 (=> (not res!963150) (not e!1442380))))

(assert (=> b!2253803 (= res!963150 (isEmpty!15070 (tail!3251 lt!837635)))))

(declare-fun b!2253804 () Bool)

(declare-fun e!1442381 () Bool)

(declare-fun e!1442377 () Bool)

(assert (=> b!2253804 (= e!1442381 e!1442377)))

(declare-fun res!963153 () Bool)

(assert (=> b!2253804 (=> res!963153 e!1442377)))

(assert (=> b!2253804 (= res!963153 call!135675)))

(declare-fun b!2253805 () Bool)

(declare-fun e!1442378 () Bool)

(declare-fun lt!837719 () Bool)

(assert (=> b!2253805 (= e!1442378 (not lt!837719))))

(declare-fun b!2253806 () Bool)

(assert (=> b!2253806 (= e!1442380 (= (head!4808 lt!837635) (c!358309 (regex!4237 otherR!12))))))

(declare-fun b!2253807 () Bool)

(declare-fun e!1442375 () Bool)

(assert (=> b!2253807 (= e!1442375 e!1442381)))

(declare-fun res!963152 () Bool)

(assert (=> b!2253807 (=> (not res!963152) (not e!1442381))))

(assert (=> b!2253807 (= res!963152 (not lt!837719))))

(declare-fun b!2253808 () Bool)

(declare-fun e!1442379 () Bool)

(assert (=> b!2253808 (= e!1442379 e!1442378)))

(declare-fun c!358375 () Bool)

(assert (=> b!2253808 (= c!358375 ((_ is EmptyLang!6585) (regex!4237 otherR!12)))))

(declare-fun d!668500 () Bool)

(assert (=> d!668500 e!1442379))

(declare-fun c!358376 () Bool)

(assert (=> d!668500 (= c!358376 ((_ is EmptyExpr!6585) (regex!4237 otherR!12)))))

(declare-fun e!1442376 () Bool)

(assert (=> d!668500 (= lt!837719 e!1442376)))

(declare-fun c!358377 () Bool)

(assert (=> d!668500 (= c!358377 (isEmpty!15070 lt!837635))))

(assert (=> d!668500 (validRegex!2462 (regex!4237 otherR!12))))

(assert (=> d!668500 (= (matchR!2846 (regex!4237 otherR!12) lt!837635) lt!837719)))

(declare-fun bm!135670 () Bool)

(assert (=> bm!135670 (= call!135675 (isEmpty!15070 lt!837635))))

(declare-fun b!2253809 () Bool)

(declare-fun res!963155 () Bool)

(assert (=> b!2253809 (=> res!963155 e!1442375)))

(assert (=> b!2253809 (= res!963155 (not ((_ is ElementMatch!6585) (regex!4237 otherR!12))))))

(assert (=> b!2253809 (= e!1442378 e!1442375)))

(declare-fun b!2253810 () Bool)

(declare-fun res!963156 () Bool)

(assert (=> b!2253810 (=> res!963156 e!1442375)))

(assert (=> b!2253810 (= res!963156 e!1442380)))

(declare-fun res!963149 () Bool)

(assert (=> b!2253810 (=> (not res!963149) (not e!1442380))))

(assert (=> b!2253810 (= res!963149 lt!837719)))

(declare-fun b!2253811 () Bool)

(assert (=> b!2253811 (= e!1442379 (= lt!837719 call!135675))))

(declare-fun b!2253812 () Bool)

(declare-fun res!963151 () Bool)

(assert (=> b!2253812 (=> res!963151 e!1442377)))

(assert (=> b!2253812 (= res!963151 (not (isEmpty!15070 (tail!3251 lt!837635))))))

(declare-fun b!2253813 () Bool)

(assert (=> b!2253813 (= e!1442377 (not (= (head!4808 lt!837635) (c!358309 (regex!4237 otherR!12)))))))

(declare-fun b!2253814 () Bool)

(assert (=> b!2253814 (= e!1442376 (matchR!2846 (derivativeStep!1470 (regex!4237 otherR!12) (head!4808 lt!837635)) (tail!3251 lt!837635)))))

(declare-fun b!2253815 () Bool)

(assert (=> b!2253815 (= e!1442376 (nullable!1808 (regex!4237 otherR!12)))))

(assert (= (and d!668500 c!358377) b!2253815))

(assert (= (and d!668500 (not c!358377)) b!2253814))

(assert (= (and d!668500 c!358376) b!2253811))

(assert (= (and d!668500 (not c!358376)) b!2253808))

(assert (= (and b!2253808 c!358375) b!2253805))

(assert (= (and b!2253808 (not c!358375)) b!2253809))

(assert (= (and b!2253809 (not res!963155)) b!2253810))

(assert (= (and b!2253810 res!963149) b!2253802))

(assert (= (and b!2253802 res!963154) b!2253803))

(assert (= (and b!2253803 res!963150) b!2253806))

(assert (= (and b!2253810 (not res!963156)) b!2253807))

(assert (= (and b!2253807 res!963152) b!2253804))

(assert (= (and b!2253804 (not res!963153)) b!2253812))

(assert (= (and b!2253812 (not res!963151)) b!2253813))

(assert (= (or b!2253811 b!2253802 b!2253804) bm!135670))

(assert (=> b!2253812 m!2684379))

(assert (=> b!2253812 m!2684379))

(assert (=> b!2253812 m!2684425))

(assert (=> b!2253806 m!2684385))

(assert (=> bm!135670 m!2684207))

(assert (=> d!668500 m!2684207))

(assert (=> d!668500 m!2684223))

(assert (=> b!2253803 m!2684379))

(assert (=> b!2253803 m!2684379))

(assert (=> b!2253803 m!2684425))

(assert (=> b!2253814 m!2684385))

(assert (=> b!2253814 m!2684385))

(declare-fun m!2684533 () Bool)

(assert (=> b!2253814 m!2684533))

(assert (=> b!2253814 m!2684379))

(assert (=> b!2253814 m!2684533))

(assert (=> b!2253814 m!2684379))

(declare-fun m!2684535 () Bool)

(assert (=> b!2253814 m!2684535))

(assert (=> b!2253813 m!2684385))

(assert (=> b!2253815 m!2684343))

(assert (=> b!2253457 d!668500))

(declare-fun d!668502 () Bool)

(assert (=> d!668502 (not (matchR!2846 (regex!4237 otherR!12) lt!837635))))

(declare-fun lt!837722 () Unit!39638)

(declare-fun choose!13186 (LexerInterface!3834 List!26801 Rule!8274 List!26800 List!26800 Rule!8274) Unit!39638)

(assert (=> d!668502 (= lt!837722 (choose!13186 thiss!16613 rules!1750 r!2363 lt!837635 input!1722 otherR!12))))

(assert (=> d!668502 (isPrefix!2227 lt!837635 input!1722)))

(assert (=> d!668502 (= (lemmaMaxPrefNoSmallerRuleMatches!184 thiss!16613 rules!1750 r!2363 lt!837635 input!1722 otherR!12) lt!837722)))

(declare-fun bs!455203 () Bool)

(assert (= bs!455203 d!668502))

(assert (=> bs!455203 m!2684225))

(declare-fun m!2684537 () Bool)

(assert (=> bs!455203 m!2684537))

(assert (=> bs!455203 m!2684271))

(assert (=> b!2253457 d!668502))

(declare-fun d!668504 () Bool)

(declare-fun dynLambda!11610 (Int BalanceConc!16972) TokenValue!4399)

(assert (=> d!668504 (= (apply!6557 (transformation!4237 r!2363) lt!837638) (dynLambda!11610 (toValue!5979 (transformation!4237 r!2363)) lt!837638))))

(declare-fun b_lambda!71993 () Bool)

(assert (=> (not b_lambda!71993) (not d!668504)))

(declare-fun t!201064 () Bool)

(declare-fun tb!133583 () Bool)

(assert (=> (and b!2253471 (= (toValue!5979 (transformation!4237 (h!32108 rules!1750))) (toValue!5979 (transformation!4237 r!2363))) t!201064) tb!133583))

(declare-fun result!162836 () Bool)

(assert (=> tb!133583 (= result!162836 (inv!21 (dynLambda!11610 (toValue!5979 (transformation!4237 r!2363)) lt!837638)))))

(declare-fun m!2684539 () Bool)

(assert (=> tb!133583 m!2684539))

(assert (=> d!668504 t!201064))

(declare-fun b_and!176689 () Bool)

(assert (= b_and!176625 (and (=> t!201064 result!162836) b_and!176689)))

(declare-fun tb!133585 () Bool)

(declare-fun t!201066 () Bool)

(assert (=> (and b!2253458 (= (toValue!5979 (transformation!4237 (rule!6541 (h!32109 tokens!456)))) (toValue!5979 (transformation!4237 r!2363))) t!201066) tb!133585))

(declare-fun result!162840 () Bool)

(assert (= result!162840 result!162836))

(assert (=> d!668504 t!201066))

(declare-fun b_and!176691 () Bool)

(assert (= b_and!176629 (and (=> t!201066 result!162840) b_and!176691)))

(declare-fun t!201068 () Bool)

(declare-fun tb!133587 () Bool)

(assert (=> (and b!2253463 (= (toValue!5979 (transformation!4237 otherR!12)) (toValue!5979 (transformation!4237 r!2363))) t!201068) tb!133587))

(declare-fun result!162842 () Bool)

(assert (= result!162842 result!162836))

(assert (=> d!668504 t!201068))

(declare-fun b_and!176693 () Bool)

(assert (= b_and!176633 (and (=> t!201068 result!162842) b_and!176693)))

(declare-fun t!201070 () Bool)

(declare-fun tb!133589 () Bool)

(assert (=> (and b!2253466 (= (toValue!5979 (transformation!4237 r!2363)) (toValue!5979 (transformation!4237 r!2363))) t!201070) tb!133589))

(declare-fun result!162844 () Bool)

(assert (= result!162844 result!162836))

(assert (=> d!668504 t!201070))

(declare-fun b_and!176695 () Bool)

(assert (= b_and!176637 (and (=> t!201070 result!162844) b_and!176695)))

(declare-fun m!2684541 () Bool)

(assert (=> d!668504 m!2684541))

(assert (=> b!2253478 d!668504))

(declare-fun b!2254057 () Bool)

(declare-fun e!1442529 () Bool)

(assert (=> b!2254057 (= e!1442529 true)))

(declare-fun d!668506 () Bool)

(assert (=> d!668506 e!1442529))

(assert (= d!668506 b!2254057))

(declare-fun lambda!85267 () Int)

(declare-fun order!14941 () Int)

(declare-fun order!14939 () Int)

(declare-fun dynLambda!11611 (Int Int) Int)

(declare-fun dynLambda!11612 (Int Int) Int)

(assert (=> b!2254057 (< (dynLambda!11611 order!14939 (toValue!5979 (transformation!4237 r!2363))) (dynLambda!11612 order!14941 lambda!85267))))

(declare-fun order!14943 () Int)

(declare-fun dynLambda!11613 (Int Int) Int)

(assert (=> b!2254057 (< (dynLambda!11613 order!14943 (toChars!5838 (transformation!4237 r!2363))) (dynLambda!11612 order!14941 lambda!85267))))

(assert (=> d!668506 (= (list!10261 (dynLambda!11609 (toChars!5838 (transformation!4237 r!2363)) (dynLambda!11610 (toValue!5979 (transformation!4237 r!2363)) lt!837638))) (list!10261 lt!837638))))

(declare-fun lt!837788 () Unit!39638)

(declare-fun ForallOf!481 (Int BalanceConc!16972) Unit!39638)

(assert (=> d!668506 (= lt!837788 (ForallOf!481 lambda!85267 lt!837638))))

(assert (=> d!668506 (= (lemmaSemiInverse!1002 (transformation!4237 r!2363) lt!837638) lt!837788)))

(declare-fun b_lambda!72011 () Bool)

(assert (=> (not b_lambda!72011) (not d!668506)))

(declare-fun t!201104 () Bool)

(declare-fun tb!133623 () Bool)

(assert (=> (and b!2253471 (= (toChars!5838 (transformation!4237 (h!32108 rules!1750))) (toChars!5838 (transformation!4237 r!2363))) t!201104) tb!133623))

(declare-fun b!2254058 () Bool)

(declare-fun e!1442530 () Bool)

(declare-fun tp!712202 () Bool)

(assert (=> b!2254058 (= e!1442530 (and (inv!36246 (c!358308 (dynLambda!11609 (toChars!5838 (transformation!4237 r!2363)) (dynLambda!11610 (toValue!5979 (transformation!4237 r!2363)) lt!837638)))) tp!712202))))

(declare-fun result!162886 () Bool)

(assert (=> tb!133623 (= result!162886 (and (inv!36247 (dynLambda!11609 (toChars!5838 (transformation!4237 r!2363)) (dynLambda!11610 (toValue!5979 (transformation!4237 r!2363)) lt!837638))) e!1442530))))

(assert (= tb!133623 b!2254058))

(declare-fun m!2684741 () Bool)

(assert (=> b!2254058 m!2684741))

(declare-fun m!2684743 () Bool)

(assert (=> tb!133623 m!2684743))

(assert (=> d!668506 t!201104))

(declare-fun b_and!176729 () Bool)

(assert (= b_and!176665 (and (=> t!201104 result!162886) b_and!176729)))

(declare-fun tb!133625 () Bool)

(declare-fun t!201106 () Bool)

(assert (=> (and b!2253458 (= (toChars!5838 (transformation!4237 (rule!6541 (h!32109 tokens!456)))) (toChars!5838 (transformation!4237 r!2363))) t!201106) tb!133625))

(declare-fun result!162888 () Bool)

(assert (= result!162888 result!162886))

(assert (=> d!668506 t!201106))

(declare-fun b_and!176731 () Bool)

(assert (= b_and!176667 (and (=> t!201106 result!162888) b_and!176731)))

(declare-fun t!201108 () Bool)

(declare-fun tb!133627 () Bool)

(assert (=> (and b!2253463 (= (toChars!5838 (transformation!4237 otherR!12)) (toChars!5838 (transformation!4237 r!2363))) t!201108) tb!133627))

(declare-fun result!162890 () Bool)

(assert (= result!162890 result!162886))

(assert (=> d!668506 t!201108))

(declare-fun b_and!176733 () Bool)

(assert (= b_and!176669 (and (=> t!201108 result!162890) b_and!176733)))

(declare-fun t!201110 () Bool)

(declare-fun tb!133629 () Bool)

(assert (=> (and b!2253466 (= (toChars!5838 (transformation!4237 r!2363)) (toChars!5838 (transformation!4237 r!2363))) t!201110) tb!133629))

(declare-fun result!162892 () Bool)

(assert (= result!162892 result!162886))

(assert (=> d!668506 t!201110))

(declare-fun b_and!176735 () Bool)

(assert (= b_and!176671 (and (=> t!201110 result!162892) b_and!176735)))

(declare-fun b_lambda!72013 () Bool)

(assert (=> (not b_lambda!72013) (not d!668506)))

(assert (=> d!668506 t!201064))

(declare-fun b_and!176737 () Bool)

(assert (= b_and!176689 (and (=> t!201064 result!162836) b_and!176737)))

(assert (=> d!668506 t!201066))

(declare-fun b_and!176739 () Bool)

(assert (= b_and!176691 (and (=> t!201066 result!162840) b_and!176739)))

(assert (=> d!668506 t!201068))

(declare-fun b_and!176741 () Bool)

(assert (= b_and!176693 (and (=> t!201068 result!162842) b_and!176741)))

(assert (=> d!668506 t!201070))

(declare-fun b_and!176743 () Bool)

(assert (= b_and!176695 (and (=> t!201070 result!162844) b_and!176743)))

(declare-fun m!2684745 () Bool)

(assert (=> d!668506 m!2684745))

(declare-fun m!2684747 () Bool)

(assert (=> d!668506 m!2684747))

(assert (=> d!668506 m!2684541))

(assert (=> d!668506 m!2684541))

(declare-fun m!2684749 () Bool)

(assert (=> d!668506 m!2684749))

(assert (=> d!668506 m!2684749))

(declare-fun m!2684751 () Bool)

(assert (=> d!668506 m!2684751))

(assert (=> b!2253478 d!668506))

(declare-fun d!668586 () Bool)

(assert (=> d!668586 (= (seqFromList!2941 lt!837635) (fromListB!1320 lt!837635))))

(declare-fun bs!455213 () Bool)

(assert (= bs!455213 d!668586))

(declare-fun m!2684753 () Bool)

(assert (=> bs!455213 m!2684753))

(assert (=> b!2253478 d!668586))

(declare-fun d!668588 () Bool)

(declare-fun res!963261 () Bool)

(declare-fun e!1442533 () Bool)

(assert (=> d!668588 (=> (not res!963261) (not e!1442533))))

(declare-fun rulesValid!1554 (LexerInterface!3834 List!26801) Bool)

(assert (=> d!668588 (= res!963261 (rulesValid!1554 thiss!16613 rules!1750))))

(assert (=> d!668588 (= (rulesInvariant!3336 thiss!16613 rules!1750) e!1442533)))

(declare-fun b!2254061 () Bool)

(declare-datatypes ((List!26804 0))(
  ( (Nil!26710) (Cons!26710 (h!32111 String!29099) (t!201128 List!26804)) )
))
(declare-fun noDuplicateTag!1552 (LexerInterface!3834 List!26801 List!26804) Bool)

(assert (=> b!2254061 (= e!1442533 (noDuplicateTag!1552 thiss!16613 rules!1750 Nil!26710))))

(assert (= (and d!668588 res!963261) b!2254061))

(declare-fun m!2684755 () Bool)

(assert (=> d!668588 m!2684755))

(declare-fun m!2684757 () Bool)

(assert (=> b!2254061 m!2684757))

(assert (=> b!2253455 d!668588))

(assert (=> b!2253476 d!668410))

(declare-fun d!668590 () Bool)

(assert (=> d!668590 (= (isEmpty!15070 lt!837635) ((_ is Nil!26706) lt!837635))))

(assert (=> b!2253477 d!668590))

(declare-fun e!1442536 () Bool)

(assert (=> b!2253464 (= tp!712114 e!1442536)))

(declare-fun b!2254073 () Bool)

(declare-fun tp!712215 () Bool)

(declare-fun tp!712217 () Bool)

(assert (=> b!2254073 (= e!1442536 (and tp!712215 tp!712217))))

(declare-fun b!2254074 () Bool)

(declare-fun tp!712214 () Bool)

(assert (=> b!2254074 (= e!1442536 tp!712214)))

(declare-fun b!2254075 () Bool)

(declare-fun tp!712216 () Bool)

(declare-fun tp!712213 () Bool)

(assert (=> b!2254075 (= e!1442536 (and tp!712216 tp!712213))))

(declare-fun b!2254072 () Bool)

(assert (=> b!2254072 (= e!1442536 tp_is_empty!10391)))

(assert (= (and b!2253464 ((_ is ElementMatch!6585) (regex!4237 r!2363))) b!2254072))

(assert (= (and b!2253464 ((_ is Concat!10985) (regex!4237 r!2363))) b!2254073))

(assert (= (and b!2253464 ((_ is Star!6585) (regex!4237 r!2363))) b!2254074))

(assert (= (and b!2253464 ((_ is Union!6585) (regex!4237 r!2363))) b!2254075))

(declare-fun b!2254080 () Bool)

(declare-fun e!1442539 () Bool)

(declare-fun tp!712220 () Bool)

(assert (=> b!2254080 (= e!1442539 (and tp_is_empty!10391 tp!712220))))

(assert (=> b!2253465 (= tp!712126 e!1442539)))

(assert (= (and b!2253465 ((_ is Cons!26706) (t!201028 otherP!12))) b!2254080))

(declare-fun b!2254081 () Bool)

(declare-fun e!1442540 () Bool)

(declare-fun tp!712221 () Bool)

(assert (=> b!2254081 (= e!1442540 (and tp_is_empty!10391 tp!712221))))

(assert (=> b!2253453 (= tp!712124 e!1442540)))

(assert (= (and b!2253453 ((_ is Cons!26706) (t!201028 suffix!886))) b!2254081))

(declare-fun b!2254095 () Bool)

(declare-fun b_free!66149 () Bool)

(declare-fun b_next!66853 () Bool)

(assert (=> b!2254095 (= b_free!66149 (not b_next!66853))))

(declare-fun tb!133631 () Bool)

(declare-fun t!201112 () Bool)

(assert (=> (and b!2254095 (= (toValue!5979 (transformation!4237 (rule!6541 (h!32109 (t!201030 tokens!456))))) (toValue!5979 (transformation!4237 r!2363))) t!201112) tb!133631))

(declare-fun result!162900 () Bool)

(assert (= result!162900 result!162836))

(assert (=> d!668504 t!201112))

(assert (=> d!668506 t!201112))

(declare-fun b_and!176745 () Bool)

(declare-fun tp!712233 () Bool)

(assert (=> b!2254095 (= tp!712233 (and (=> t!201112 result!162900) b_and!176745))))

(declare-fun b_free!66151 () Bool)

(declare-fun b_next!66855 () Bool)

(assert (=> b!2254095 (= b_free!66151 (not b_next!66855))))

(declare-fun t!201114 () Bool)

(declare-fun tb!133633 () Bool)

(assert (=> (and b!2254095 (= (toChars!5838 (transformation!4237 (rule!6541 (h!32109 (t!201030 tokens!456))))) (toChars!5838 (transformation!4237 (rule!6541 (head!4806 tokens!456))))) t!201114) tb!133633))

(declare-fun result!162902 () Bool)

(assert (= result!162902 result!162808))

(assert (=> d!668408 t!201114))

(declare-fun t!201116 () Bool)

(declare-fun tb!133635 () Bool)

(assert (=> (and b!2254095 (= (toChars!5838 (transformation!4237 (rule!6541 (h!32109 (t!201030 tokens!456))))) (toChars!5838 (transformation!4237 (rule!6541 (h!32109 tokens!456))))) t!201116) tb!133635))

(declare-fun result!162904 () Bool)

(assert (= result!162904 result!162818))

(assert (=> b!2253635 t!201116))

(assert (=> d!668430 t!201116))

(declare-fun tb!133637 () Bool)

(declare-fun t!201118 () Bool)

(assert (=> (and b!2254095 (= (toChars!5838 (transformation!4237 (rule!6541 (h!32109 (t!201030 tokens!456))))) (toChars!5838 (transformation!4237 r!2363))) t!201118) tb!133637))

(declare-fun result!162906 () Bool)

(assert (= result!162906 result!162886))

(assert (=> d!668506 t!201118))

(declare-fun tp!712236 () Bool)

(declare-fun b_and!176747 () Bool)

(assert (=> b!2254095 (= tp!712236 (and (=> t!201114 result!162902) (=> t!201116 result!162904) (=> t!201118 result!162906) b_and!176747))))

(declare-fun e!1442558 () Bool)

(assert (=> b!2253474 (= tp!712117 e!1442558)))

(declare-fun e!1442555 () Bool)

(declare-fun b!2254092 () Bool)

(declare-fun tp!712232 () Bool)

(assert (=> b!2254092 (= e!1442558 (and (inv!36243 (h!32109 (t!201030 tokens!456))) e!1442555 tp!712232))))

(declare-fun e!1442556 () Bool)

(declare-fun tp!712235 () Bool)

(declare-fun b!2254093 () Bool)

(assert (=> b!2254093 (= e!1442555 (and (inv!21 (value!134574 (h!32109 (t!201030 tokens!456)))) e!1442556 tp!712235))))

(declare-fun e!1442557 () Bool)

(assert (=> b!2254095 (= e!1442557 (and tp!712233 tp!712236))))

(declare-fun tp!712234 () Bool)

(declare-fun b!2254094 () Bool)

(assert (=> b!2254094 (= e!1442556 (and tp!712234 (inv!36239 (tag!4727 (rule!6541 (h!32109 (t!201030 tokens!456))))) (inv!36242 (transformation!4237 (rule!6541 (h!32109 (t!201030 tokens!456))))) e!1442557))))

(assert (= b!2254094 b!2254095))

(assert (= b!2254093 b!2254094))

(assert (= b!2254092 b!2254093))

(assert (= (and b!2253474 ((_ is Cons!26708) (t!201030 tokens!456))) b!2254092))

(declare-fun m!2684759 () Bool)

(assert (=> b!2254092 m!2684759))

(declare-fun m!2684761 () Bool)

(assert (=> b!2254093 m!2684761))

(declare-fun m!2684763 () Bool)

(assert (=> b!2254094 m!2684763))

(declare-fun m!2684765 () Bool)

(assert (=> b!2254094 m!2684765))

(declare-fun b!2254096 () Bool)

(declare-fun e!1442559 () Bool)

(declare-fun tp!712237 () Bool)

(assert (=> b!2254096 (= e!1442559 (and tp_is_empty!10391 tp!712237))))

(assert (=> b!2253472 (= tp!712122 e!1442559)))

(assert (= (and b!2253472 ((_ is Cons!26706) (t!201028 input!1722))) b!2254096))

(declare-fun e!1442560 () Bool)

(assert (=> b!2253462 (= tp!712112 e!1442560)))

(declare-fun b!2254098 () Bool)

(declare-fun tp!712240 () Bool)

(declare-fun tp!712242 () Bool)

(assert (=> b!2254098 (= e!1442560 (and tp!712240 tp!712242))))

(declare-fun b!2254099 () Bool)

(declare-fun tp!712239 () Bool)

(assert (=> b!2254099 (= e!1442560 tp!712239)))

(declare-fun b!2254100 () Bool)

(declare-fun tp!712241 () Bool)

(declare-fun tp!712238 () Bool)

(assert (=> b!2254100 (= e!1442560 (and tp!712241 tp!712238))))

(declare-fun b!2254097 () Bool)

(assert (=> b!2254097 (= e!1442560 tp_is_empty!10391)))

(assert (= (and b!2253462 ((_ is ElementMatch!6585) (regex!4237 (rule!6541 (h!32109 tokens!456))))) b!2254097))

(assert (= (and b!2253462 ((_ is Concat!10985) (regex!4237 (rule!6541 (h!32109 tokens!456))))) b!2254098))

(assert (= (and b!2253462 ((_ is Star!6585) (regex!4237 (rule!6541 (h!32109 tokens!456))))) b!2254099))

(assert (= (and b!2253462 ((_ is Union!6585) (regex!4237 (rule!6541 (h!32109 tokens!456))))) b!2254100))

(declare-fun b!2254101 () Bool)

(declare-fun e!1442561 () Bool)

(declare-fun tp!712243 () Bool)

(assert (=> b!2254101 (= e!1442561 (and tp_is_empty!10391 tp!712243))))

(assert (=> b!2253448 (= tp!712113 e!1442561)))

(assert (= (and b!2253448 ((_ is Cons!26706) (originalCharacters!5007 (h!32109 tokens!456)))) b!2254101))

(declare-fun e!1442562 () Bool)

(assert (=> b!2253447 (= tp!712121 e!1442562)))

(declare-fun b!2254103 () Bool)

(declare-fun tp!712246 () Bool)

(declare-fun tp!712248 () Bool)

(assert (=> b!2254103 (= e!1442562 (and tp!712246 tp!712248))))

(declare-fun b!2254104 () Bool)

(declare-fun tp!712245 () Bool)

(assert (=> b!2254104 (= e!1442562 tp!712245)))

(declare-fun b!2254105 () Bool)

(declare-fun tp!712247 () Bool)

(declare-fun tp!712244 () Bool)

(assert (=> b!2254105 (= e!1442562 (and tp!712247 tp!712244))))

(declare-fun b!2254102 () Bool)

(assert (=> b!2254102 (= e!1442562 tp_is_empty!10391)))

(assert (= (and b!2253447 ((_ is ElementMatch!6585) (regex!4237 (h!32108 rules!1750)))) b!2254102))

(assert (= (and b!2253447 ((_ is Concat!10985) (regex!4237 (h!32108 rules!1750)))) b!2254103))

(assert (= (and b!2253447 ((_ is Star!6585) (regex!4237 (h!32108 rules!1750)))) b!2254104))

(assert (= (and b!2253447 ((_ is Union!6585) (regex!4237 (h!32108 rules!1750)))) b!2254105))

(declare-fun b!2254116 () Bool)

(declare-fun b_free!66153 () Bool)

(declare-fun b_next!66857 () Bool)

(assert (=> b!2254116 (= b_free!66153 (not b_next!66857))))

(declare-fun t!201120 () Bool)

(declare-fun tb!133639 () Bool)

(assert (=> (and b!2254116 (= (toValue!5979 (transformation!4237 (h!32108 (t!201029 rules!1750)))) (toValue!5979 (transformation!4237 r!2363))) t!201120) tb!133639))

(declare-fun result!162910 () Bool)

(assert (= result!162910 result!162836))

(assert (=> d!668504 t!201120))

(assert (=> d!668506 t!201120))

(declare-fun b_and!176749 () Bool)

(declare-fun tp!712258 () Bool)

(assert (=> b!2254116 (= tp!712258 (and (=> t!201120 result!162910) b_and!176749))))

(declare-fun b_free!66155 () Bool)

(declare-fun b_next!66859 () Bool)

(assert (=> b!2254116 (= b_free!66155 (not b_next!66859))))

(declare-fun t!201122 () Bool)

(declare-fun tb!133641 () Bool)

(assert (=> (and b!2254116 (= (toChars!5838 (transformation!4237 (h!32108 (t!201029 rules!1750)))) (toChars!5838 (transformation!4237 (rule!6541 (head!4806 tokens!456))))) t!201122) tb!133641))

(declare-fun result!162912 () Bool)

(assert (= result!162912 result!162808))

(assert (=> d!668408 t!201122))

(declare-fun tb!133643 () Bool)

(declare-fun t!201124 () Bool)

(assert (=> (and b!2254116 (= (toChars!5838 (transformation!4237 (h!32108 (t!201029 rules!1750)))) (toChars!5838 (transformation!4237 (rule!6541 (h!32109 tokens!456))))) t!201124) tb!133643))

(declare-fun result!162914 () Bool)

(assert (= result!162914 result!162818))

(assert (=> b!2253635 t!201124))

(assert (=> d!668430 t!201124))

(declare-fun tb!133645 () Bool)

(declare-fun t!201126 () Bool)

(assert (=> (and b!2254116 (= (toChars!5838 (transformation!4237 (h!32108 (t!201029 rules!1750)))) (toChars!5838 (transformation!4237 r!2363))) t!201126) tb!133645))

(declare-fun result!162916 () Bool)

(assert (= result!162916 result!162886))

(assert (=> d!668506 t!201126))

(declare-fun b_and!176751 () Bool)

(declare-fun tp!712257 () Bool)

(assert (=> b!2254116 (= tp!712257 (and (=> t!201122 result!162912) (=> t!201124 result!162914) (=> t!201126 result!162916) b_and!176751))))

(declare-fun e!1442571 () Bool)

(assert (=> b!2254116 (= e!1442571 (and tp!712258 tp!712257))))

(declare-fun b!2254115 () Bool)

(declare-fun e!1442573 () Bool)

(declare-fun tp!712259 () Bool)

(assert (=> b!2254115 (= e!1442573 (and tp!712259 (inv!36239 (tag!4727 (h!32108 (t!201029 rules!1750)))) (inv!36242 (transformation!4237 (h!32108 (t!201029 rules!1750)))) e!1442571))))

(declare-fun b!2254114 () Bool)

(declare-fun e!1442574 () Bool)

(declare-fun tp!712260 () Bool)

(assert (=> b!2254114 (= e!1442574 (and e!1442573 tp!712260))))

(assert (=> b!2253479 (= tp!712119 e!1442574)))

(assert (= b!2254115 b!2254116))

(assert (= b!2254114 b!2254115))

(assert (= (and b!2253479 ((_ is Cons!26707) (t!201029 rules!1750))) b!2254114))

(declare-fun m!2684767 () Bool)

(assert (=> b!2254115 m!2684767))

(declare-fun m!2684769 () Bool)

(assert (=> b!2254115 m!2684769))

(declare-fun e!1442575 () Bool)

(assert (=> b!2253456 (= tp!712120 e!1442575)))

(declare-fun b!2254118 () Bool)

(declare-fun tp!712263 () Bool)

(declare-fun tp!712265 () Bool)

(assert (=> b!2254118 (= e!1442575 (and tp!712263 tp!712265))))

(declare-fun b!2254119 () Bool)

(declare-fun tp!712262 () Bool)

(assert (=> b!2254119 (= e!1442575 tp!712262)))

(declare-fun b!2254120 () Bool)

(declare-fun tp!712264 () Bool)

(declare-fun tp!712261 () Bool)

(assert (=> b!2254120 (= e!1442575 (and tp!712264 tp!712261))))

(declare-fun b!2254117 () Bool)

(assert (=> b!2254117 (= e!1442575 tp_is_empty!10391)))

(assert (= (and b!2253456 ((_ is ElementMatch!6585) (regex!4237 otherR!12))) b!2254117))

(assert (= (and b!2253456 ((_ is Concat!10985) (regex!4237 otherR!12))) b!2254118))

(assert (= (and b!2253456 ((_ is Star!6585) (regex!4237 otherR!12))) b!2254119))

(assert (= (and b!2253456 ((_ is Union!6585) (regex!4237 otherR!12))) b!2254120))

(declare-fun b_lambda!72015 () Bool)

(assert (= b_lambda!71985 (or (and b!2253458 b_free!66131) (and b!2253466 b_free!66139 (= (toChars!5838 (transformation!4237 r!2363)) (toChars!5838 (transformation!4237 (rule!6541 (h!32109 tokens!456)))))) (and b!2253471 b_free!66127 (= (toChars!5838 (transformation!4237 (h!32108 rules!1750))) (toChars!5838 (transformation!4237 (rule!6541 (h!32109 tokens!456)))))) (and b!2254095 b_free!66151 (= (toChars!5838 (transformation!4237 (rule!6541 (h!32109 (t!201030 tokens!456))))) (toChars!5838 (transformation!4237 (rule!6541 (h!32109 tokens!456)))))) (and b!2254116 b_free!66155 (= (toChars!5838 (transformation!4237 (h!32108 (t!201029 rules!1750)))) (toChars!5838 (transformation!4237 (rule!6541 (h!32109 tokens!456)))))) (and b!2253463 b_free!66135 (= (toChars!5838 (transformation!4237 otherR!12)) (toChars!5838 (transformation!4237 (rule!6541 (h!32109 tokens!456)))))) b_lambda!72015)))

(declare-fun b_lambda!72017 () Bool)

(assert (= b_lambda!72013 (or (and b!2253458 b_free!66129 (= (toValue!5979 (transformation!4237 (rule!6541 (h!32109 tokens!456)))) (toValue!5979 (transformation!4237 r!2363)))) (and b!2253471 b_free!66125 (= (toValue!5979 (transformation!4237 (h!32108 rules!1750))) (toValue!5979 (transformation!4237 r!2363)))) (and b!2254095 b_free!66149 (= (toValue!5979 (transformation!4237 (rule!6541 (h!32109 (t!201030 tokens!456))))) (toValue!5979 (transformation!4237 r!2363)))) (and b!2254116 b_free!66153 (= (toValue!5979 (transformation!4237 (h!32108 (t!201029 rules!1750)))) (toValue!5979 (transformation!4237 r!2363)))) (and b!2253466 b_free!66137) (and b!2253463 b_free!66133 (= (toValue!5979 (transformation!4237 otherR!12)) (toValue!5979 (transformation!4237 r!2363)))) b_lambda!72017)))

(declare-fun b_lambda!72019 () Bool)

(assert (= b_lambda!71987 (or (and b!2253458 b_free!66131) (and b!2253466 b_free!66139 (= (toChars!5838 (transformation!4237 r!2363)) (toChars!5838 (transformation!4237 (rule!6541 (h!32109 tokens!456)))))) (and b!2253471 b_free!66127 (= (toChars!5838 (transformation!4237 (h!32108 rules!1750))) (toChars!5838 (transformation!4237 (rule!6541 (h!32109 tokens!456)))))) (and b!2254095 b_free!66151 (= (toChars!5838 (transformation!4237 (rule!6541 (h!32109 (t!201030 tokens!456))))) (toChars!5838 (transformation!4237 (rule!6541 (h!32109 tokens!456)))))) (and b!2254116 b_free!66155 (= (toChars!5838 (transformation!4237 (h!32108 (t!201029 rules!1750)))) (toChars!5838 (transformation!4237 (rule!6541 (h!32109 tokens!456)))))) (and b!2253463 b_free!66135 (= (toChars!5838 (transformation!4237 otherR!12)) (toChars!5838 (transformation!4237 (rule!6541 (h!32109 tokens!456)))))) b_lambda!72019)))

(declare-fun b_lambda!72021 () Bool)

(assert (= b_lambda!72011 (or (and b!2253466 b_free!66139) (and b!2253463 b_free!66135 (= (toChars!5838 (transformation!4237 otherR!12)) (toChars!5838 (transformation!4237 r!2363)))) (and b!2253458 b_free!66131 (= (toChars!5838 (transformation!4237 (rule!6541 (h!32109 tokens!456)))) (toChars!5838 (transformation!4237 r!2363)))) (and b!2253471 b_free!66127 (= (toChars!5838 (transformation!4237 (h!32108 rules!1750))) (toChars!5838 (transformation!4237 r!2363)))) (and b!2254095 b_free!66151 (= (toChars!5838 (transformation!4237 (rule!6541 (h!32109 (t!201030 tokens!456))))) (toChars!5838 (transformation!4237 r!2363)))) (and b!2254116 b_free!66155 (= (toChars!5838 (transformation!4237 (h!32108 (t!201029 rules!1750)))) (toChars!5838 (transformation!4237 r!2363)))) b_lambda!72021)))

(declare-fun b_lambda!72023 () Bool)

(assert (= b_lambda!71993 (or (and b!2253458 b_free!66129 (= (toValue!5979 (transformation!4237 (rule!6541 (h!32109 tokens!456)))) (toValue!5979 (transformation!4237 r!2363)))) (and b!2253471 b_free!66125 (= (toValue!5979 (transformation!4237 (h!32108 rules!1750))) (toValue!5979 (transformation!4237 r!2363)))) (and b!2254095 b_free!66149 (= (toValue!5979 (transformation!4237 (rule!6541 (h!32109 (t!201030 tokens!456))))) (toValue!5979 (transformation!4237 r!2363)))) (and b!2254116 b_free!66153 (= (toValue!5979 (transformation!4237 (h!32108 (t!201029 rules!1750)))) (toValue!5979 (transformation!4237 r!2363)))) (and b!2253466 b_free!66137) (and b!2253463 b_free!66133 (= (toValue!5979 (transformation!4237 otherR!12)) (toValue!5979 (transformation!4237 r!2363)))) b_lambda!72023)))

(check-sat (not d!668408) (not b!2254119) (not b!2253812) (not b!2254081) (not b!2254115) (not d!668430) (not b_lambda!72019) (not d!668424) (not bm!135669) (not b_lambda!72023) b_and!176741 b_and!176737 (not b!2254100) (not b!2253732) (not d!668390) (not b!2253735) (not b!2253731) (not b!2253648) (not d!668452) (not bm!135670) (not b!2253704) (not b!2253591) (not b!2254114) (not b!2253677) (not b!2253659) (not b_next!66837) (not d!668474) (not b_next!66855) (not b!2253678) b_and!176735 b_and!176749 (not b!2253729) (not b!2253734) (not b!2253486) b_and!176733 (not b!2253602) (not d!668502) b_and!176739 (not d!668496) (not b!2254093) (not tb!133567) (not b!2253767) (not d!668434) (not b!2253711) (not b!2253768) (not b!2253698) (not b!2253601) (not b!2253679) (not b!2253715) (not b!2253608) (not b!2253774) (not b!2254092) b_and!176745 (not d!668412) (not bm!135657) (not b!2253813) (not b!2253660) (not b!2254073) (not d!668418) (not b!2253769) b_and!176731 (not b!2253629) (not b!2253673) (not b!2253697) (not b_next!66835) (not b!2253594) (not b!2254118) (not b!2253691) (not b!2253647) (not b!2253770) (not b!2254105) (not b!2253666) (not b_next!66841) (not b!2253713) tp_is_empty!10391 (not b!2254098) (not b!2253765) (not b!2254094) (not b_lambda!71983) (not d!668476) (not b!2253661) (not d!668416) (not b!2254104) (not d!668442) (not b_next!66829) (not b_next!66831) (not b!2253623) (not b!2254101) (not b_lambda!72015) (not b_lambda!72017) (not b!2253603) b_and!176751 (not d!668500) (not d!668484) (not bm!135668) b_and!176747 (not b!2253736) (not b!2254120) (not d!668454) (not b_next!66859) (not b_lambda!72021) (not b!2253815) (not d!668414) (not b!2254058) (not d!668466) (not b_next!66857) (not d!668428) (not d!668384) (not b!2253766) (not b!2253717) (not b!2253693) (not b_next!66839) (not b!2253636) (not b!2253773) (not b!2253814) (not b_next!66833) (not d!668588) (not b!2253692) (not b!2253771) (not b!2254061) (not d!668422) (not d!668472) (not b!2253716) (not b!2253712) (not b!2253797) (not bm!135656) (not d!668420) (not b!2254074) (not d!668478) (not d!668460) (not b!2254096) b_and!176729 (not b!2254103) (not d!668470) (not tb!133559) (not tb!133583) (not b!2254080) (not b!2254099) (not b!2253637) (not d!668456) (not b!2253675) (not b_next!66853) (not bm!135660) (not b!2253710) (not d!668406) (not tb!133623) (not d!668462) b_and!176743 (not d!668586) (not b!2253701) (not b_next!66843) (not b!2253806) (not d!668426) (not b!2253635) (not b!2253803) (not b!2253619) (not b!2253730) (not b!2253600) (not d!668506) (not b!2254075) (not d!668450))
(check-sat (not b_next!66837) b_and!176745 b_and!176731 (not b_next!66835) (not b_next!66841) b_and!176751 (not b_next!66833) b_and!176729 (not b_next!66853) b_and!176743 (not b_next!66843) b_and!176741 b_and!176737 (not b_next!66855) b_and!176735 b_and!176749 b_and!176733 b_and!176739 (not b_next!66829) (not b_next!66831) b_and!176747 (not b_next!66859) (not b_next!66839) (not b_next!66857))
