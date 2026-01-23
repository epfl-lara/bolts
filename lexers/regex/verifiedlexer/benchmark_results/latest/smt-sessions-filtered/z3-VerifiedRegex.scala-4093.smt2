; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!219100 () Bool)

(assert start!219100)

(declare-fun b!2247271 () Bool)

(declare-fun b_free!65693 () Bool)

(declare-fun b_next!66397 () Bool)

(assert (=> b!2247271 (= b_free!65693 (not b_next!66397))))

(declare-fun tp!709675 () Bool)

(declare-fun b_and!175865 () Bool)

(assert (=> b!2247271 (= tp!709675 b_and!175865)))

(declare-fun b_free!65695 () Bool)

(declare-fun b_next!66399 () Bool)

(assert (=> b!2247271 (= b_free!65695 (not b_next!66399))))

(declare-fun tp!709682 () Bool)

(declare-fun b_and!175867 () Bool)

(assert (=> b!2247271 (= tp!709682 b_and!175867)))

(declare-fun b!2247288 () Bool)

(declare-fun b_free!65697 () Bool)

(declare-fun b_next!66401 () Bool)

(assert (=> b!2247288 (= b_free!65697 (not b_next!66401))))

(declare-fun tp!709678 () Bool)

(declare-fun b_and!175869 () Bool)

(assert (=> b!2247288 (= tp!709678 b_and!175869)))

(declare-fun b_free!65699 () Bool)

(declare-fun b_next!66403 () Bool)

(assert (=> b!2247288 (= b_free!65699 (not b_next!66403))))

(declare-fun tp!709679 () Bool)

(declare-fun b_and!175871 () Bool)

(assert (=> b!2247288 (= tp!709679 b_and!175871)))

(declare-fun b!2247275 () Bool)

(declare-fun b_free!65701 () Bool)

(declare-fun b_next!66405 () Bool)

(assert (=> b!2247275 (= b_free!65701 (not b_next!66405))))

(declare-fun tp!709685 () Bool)

(declare-fun b_and!175873 () Bool)

(assert (=> b!2247275 (= tp!709685 b_and!175873)))

(declare-fun b_free!65703 () Bool)

(declare-fun b_next!66407 () Bool)

(assert (=> b!2247275 (= b_free!65703 (not b_next!66407))))

(declare-fun tp!709683 () Bool)

(declare-fun b_and!175875 () Bool)

(assert (=> b!2247275 (= tp!709683 b_and!175875)))

(declare-fun b!2247277 () Bool)

(declare-fun b_free!65705 () Bool)

(declare-fun b_next!66409 () Bool)

(assert (=> b!2247277 (= b_free!65705 (not b_next!66409))))

(declare-fun tp!709686 () Bool)

(declare-fun b_and!175877 () Bool)

(assert (=> b!2247277 (= tp!709686 b_and!175877)))

(declare-fun b_free!65707 () Bool)

(declare-fun b_next!66411 () Bool)

(assert (=> b!2247277 (= b_free!65707 (not b_next!66411))))

(declare-fun tp!709684 () Bool)

(declare-fun b_and!175879 () Bool)

(assert (=> b!2247277 (= tp!709684 b_and!175879)))

(declare-fun b!2247263 () Bool)

(declare-fun e!1437998 () Bool)

(declare-fun e!1438015 () Bool)

(declare-fun tp!709680 () Bool)

(assert (=> b!2247263 (= e!1437998 (and e!1438015 tp!709680))))

(declare-fun tp!709671 () Bool)

(declare-fun e!1438011 () Bool)

(declare-fun b!2247264 () Bool)

(declare-datatypes ((List!26711 0))(
  ( (Nil!26617) (Cons!26617 (h!32018 (_ BitVec 16)) (t!200457 List!26711)) )
))
(declare-datatypes ((TokenValue!4379 0))(
  ( (FloatLiteralValue!8758 (text!31098 List!26711)) (TokenValueExt!4378 (__x!17818 Int)) (Broken!21895 (value!133978 List!26711)) (Object!4472) (End!4379) (Def!4379) (Underscore!4379) (Match!4379) (Else!4379) (Error!4379) (Case!4379) (If!4379) (Extends!4379) (Abstract!4379) (Class!4379) (Val!4379) (DelimiterValue!8758 (del!4439 List!26711)) (KeywordValue!4385 (value!133979 List!26711)) (CommentValue!8758 (value!133980 List!26711)) (WhitespaceValue!8758 (value!133981 List!26711)) (IndentationValue!4379 (value!133982 List!26711)) (String!28998) (Int32!4379) (Broken!21896 (value!133983 List!26711)) (Boolean!4380) (Unit!39567) (OperatorValue!4382 (op!4439 List!26711)) (IdentifierValue!8758 (value!133984 List!26711)) (IdentifierValue!8759 (value!133985 List!26711)) (WhitespaceValue!8759 (value!133986 List!26711)) (True!8758) (False!8758) (Broken!21897 (value!133987 List!26711)) (Broken!21898 (value!133988 List!26711)) (True!8759) (RightBrace!4379) (RightBracket!4379) (Colon!4379) (Null!4379) (Comma!4379) (LeftBracket!4379) (False!8759) (LeftBrace!4379) (ImaginaryLiteralValue!4379 (text!31099 List!26711)) (StringLiteralValue!13137 (value!133989 List!26711)) (EOFValue!4379 (value!133990 List!26711)) (IdentValue!4379 (value!133991 List!26711)) (DelimiterValue!8759 (value!133992 List!26711)) (DedentValue!4379 (value!133993 List!26711)) (NewLineValue!4379 (value!133994 List!26711)) (IntegerValue!13137 (value!133995 (_ BitVec 32)) (text!31100 List!26711)) (IntegerValue!13138 (value!133996 Int) (text!31101 List!26711)) (Times!4379) (Or!4379) (Equal!4379) (Minus!4379) (Broken!21899 (value!133997 List!26711)) (And!4379) (Div!4379) (LessEqual!4379) (Mod!4379) (Concat!10944) (Not!4379) (Plus!4379) (SpaceValue!4379 (value!133998 List!26711)) (IntegerValue!13139 (value!133999 Int) (text!31102 List!26711)) (StringLiteralValue!13138 (text!31103 List!26711)) (FloatLiteralValue!8759 (text!31104 List!26711)) (BytesLiteralValue!4379 (value!134000 List!26711)) (CommentValue!8759 (value!134001 List!26711)) (StringLiteralValue!13139 (value!134002 List!26711)) (ErrorTokenValue!4379 (msg!4440 List!26711)) )
))
(declare-datatypes ((C!13276 0))(
  ( (C!13277 (val!7686 Int)) )
))
(declare-datatypes ((List!26712 0))(
  ( (Nil!26618) (Cons!26618 (h!32019 C!13276) (t!200458 List!26712)) )
))
(declare-datatypes ((IArray!17169 0))(
  ( (IArray!17170 (innerList!8642 List!26712)) )
))
(declare-datatypes ((Conc!8582 0))(
  ( (Node!8582 (left!20223 Conc!8582) (right!20553 Conc!8582) (csize!17394 Int) (cheight!8793 Int)) (Leaf!12676 (xs!11524 IArray!17169) (csize!17395 Int)) (Empty!8582) )
))
(declare-datatypes ((BalanceConc!16892 0))(
  ( (BalanceConc!16893 (c!357456 Conc!8582)) )
))
(declare-datatypes ((String!28999 0))(
  ( (String!29000 (value!134003 String)) )
))
(declare-datatypes ((Regex!6565 0))(
  ( (ElementMatch!6565 (c!357457 C!13276)) (Concat!10945 (regOne!13642 Regex!6565) (regTwo!13642 Regex!6565)) (EmptyExpr!6565) (Star!6565 (reg!6894 Regex!6565)) (EmptyLang!6565) (Union!6565 (regOne!13643 Regex!6565) (regTwo!13643 Regex!6565)) )
))
(declare-datatypes ((TokenValueInjection!8298 0))(
  ( (TokenValueInjection!8299 (toValue!5947 Int) (toChars!5806 Int)) )
))
(declare-datatypes ((Rule!8234 0))(
  ( (Rule!8235 (regex!4217 Regex!6565) (tag!4707 String!28999) (isSeparator!4217 Bool) (transformation!4217 TokenValueInjection!8298)) )
))
(declare-datatypes ((Token!7912 0))(
  ( (Token!7913 (value!134004 TokenValue!4379) (rule!6517 Rule!8234) (size!20817 Int) (originalCharacters!4987 List!26712)) )
))
(declare-datatypes ((List!26713 0))(
  ( (Nil!26619) (Cons!26619 (h!32020 Token!7912) (t!200459 List!26713)) )
))
(declare-fun tokens!456 () List!26713)

(declare-fun e!1438000 () Bool)

(declare-fun inv!36139 (String!28999) Bool)

(declare-fun inv!36142 (TokenValueInjection!8298) Bool)

(assert (=> b!2247264 (= e!1438011 (and tp!709671 (inv!36139 (tag!4707 (rule!6517 (h!32020 tokens!456)))) (inv!36142 (transformation!4217 (rule!6517 (h!32020 tokens!456)))) e!1438000))))

(declare-fun e!1438022 () Bool)

(declare-fun tp!709674 () Bool)

(declare-fun b!2247265 () Bool)

(declare-fun r!2363 () Rule!8234)

(declare-fun e!1438005 () Bool)

(assert (=> b!2247265 (= e!1438005 (and tp!709674 (inv!36139 (tag!4707 r!2363)) (inv!36142 (transformation!4217 r!2363)) e!1438022))))

(declare-fun b!2247266 () Bool)

(declare-fun e!1438013 () Bool)

(declare-fun otherP!12 () List!26712)

(declare-fun size!20818 (BalanceConc!16892) Int)

(declare-fun charsOf!2605 (Token!7912) BalanceConc!16892)

(declare-fun head!4778 (List!26713) Token!7912)

(declare-fun size!20819 (List!26712) Int)

(assert (=> b!2247266 (= e!1438013 (<= (size!20818 (charsOf!2605 (head!4778 tokens!456))) (size!20819 otherP!12)))))

(declare-fun b!2247267 () Bool)

(declare-fun e!1438007 () Bool)

(declare-fun tp_is_empty!10351 () Bool)

(declare-fun tp!709687 () Bool)

(assert (=> b!2247267 (= e!1438007 (and tp_is_empty!10351 tp!709687))))

(declare-fun e!1438023 () Bool)

(declare-fun b!2247268 () Bool)

(declare-fun e!1438001 () Bool)

(declare-fun tp!709672 () Bool)

(declare-fun inv!36143 (Token!7912) Bool)

(assert (=> b!2247268 (= e!1438001 (and (inv!36143 (h!32020 tokens!456)) e!1438023 tp!709672))))

(declare-fun b!2247269 () Bool)

(declare-fun e!1438009 () Bool)

(assert (=> b!2247269 (= e!1438009 true)))

(declare-fun lt!835678 () Int)

(declare-datatypes ((List!26714 0))(
  ( (Nil!26620) (Cons!26620 (h!32021 Rule!8234) (t!200460 List!26714)) )
))
(declare-fun rules!1750 () List!26714)

(declare-fun otherR!12 () Rule!8234)

(declare-fun getIndex!238 (List!26714 Rule!8234) Int)

(assert (=> b!2247269 (= lt!835678 (getIndex!238 rules!1750 otherR!12))))

(declare-fun lt!835673 () Int)

(assert (=> b!2247269 (= lt!835673 (getIndex!238 rules!1750 r!2363))))

(declare-datatypes ((LexerInterface!3814 0))(
  ( (LexerInterfaceExt!3811 (__x!17819 Int)) (Lexer!3812) )
))
(declare-fun thiss!16613 () LexerInterface!3814)

(declare-fun ruleValid!1309 (LexerInterface!3814 Rule!8234) Bool)

(assert (=> b!2247269 (ruleValid!1309 thiss!16613 otherR!12)))

(declare-datatypes ((Unit!39568 0))(
  ( (Unit!39569) )
))
(declare-fun lt!835676 () Unit!39568)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!716 (LexerInterface!3814 Rule!8234 List!26714) Unit!39568)

(assert (=> b!2247269 (= lt!835676 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!716 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2247270 () Bool)

(declare-fun e!1438017 () Bool)

(assert (=> b!2247270 (= e!1438017 (not e!1438009))))

(declare-fun res!960336 () Bool)

(assert (=> b!2247270 (=> res!960336 e!1438009)))

(declare-fun e!1438003 () Bool)

(assert (=> b!2247270 (= res!960336 e!1438003)))

(declare-fun res!960338 () Bool)

(assert (=> b!2247270 (=> (not res!960338) (not e!1438003))))

(declare-fun lt!835674 () Bool)

(assert (=> b!2247270 (= res!960338 (not lt!835674))))

(assert (=> b!2247270 (ruleValid!1309 thiss!16613 r!2363)))

(declare-fun lt!835677 () Unit!39568)

(assert (=> b!2247270 (= lt!835677 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!716 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2247272 () Bool)

(declare-fun res!960346 () Bool)

(declare-fun e!1438010 () Bool)

(assert (=> b!2247272 (=> (not res!960346) (not e!1438010))))

(declare-fun contains!4564 (List!26714 Rule!8234) Bool)

(assert (=> b!2247272 (= res!960346 (contains!4564 rules!1750 r!2363))))

(declare-fun b!2247273 () Bool)

(declare-fun res!960345 () Bool)

(assert (=> b!2247273 (=> (not res!960345) (not e!1438017))))

(assert (=> b!2247273 (= res!960345 (not (= r!2363 otherR!12)))))

(declare-fun b!2247274 () Bool)

(declare-fun res!960335 () Bool)

(assert (=> b!2247274 (=> (not res!960335) (not e!1438010))))

(assert (=> b!2247274 (= res!960335 (contains!4564 rules!1750 otherR!12))))

(assert (=> b!2247275 (= e!1438022 (and tp!709685 tp!709683))))

(declare-fun e!1438018 () Bool)

(declare-fun b!2247276 () Bool)

(declare-fun tp!709673 () Bool)

(assert (=> b!2247276 (= e!1438015 (and tp!709673 (inv!36139 (tag!4707 (h!32021 rules!1750))) (inv!36142 (transformation!4217 (h!32021 rules!1750))) e!1438018))))

(assert (=> b!2247277 (= e!1438018 (and tp!709686 tp!709684))))

(declare-fun b!2247278 () Bool)

(declare-fun e!1438016 () Bool)

(declare-fun tp!709677 () Bool)

(assert (=> b!2247278 (= e!1438016 (and tp_is_empty!10351 tp!709677))))

(declare-fun b!2247279 () Bool)

(declare-fun res!960342 () Bool)

(assert (=> b!2247279 (=> (not res!960342) (not e!1438017))))

(declare-fun e!1438019 () Bool)

(assert (=> b!2247279 (= res!960342 e!1438019)))

(declare-fun res!960340 () Bool)

(assert (=> b!2247279 (=> res!960340 e!1438019)))

(assert (=> b!2247279 (= res!960340 lt!835674)))

(declare-fun b!2247280 () Bool)

(assert (=> b!2247280 (= e!1438019 (= (rule!6517 (head!4778 tokens!456)) r!2363))))

(declare-fun b!2247281 () Bool)

(declare-fun res!960334 () Bool)

(assert (=> b!2247281 (=> (not res!960334) (not e!1438010))))

(declare-fun isEmpty!14997 (List!26714) Bool)

(assert (=> b!2247281 (= res!960334 (not (isEmpty!14997 rules!1750)))))

(assert (=> b!2247271 (= e!1438000 (and tp!709675 tp!709682))))

(declare-fun res!960347 () Bool)

(assert (=> start!219100 (=> (not res!960347) (not e!1438010))))

(get-info :version)

(assert (=> start!219100 (= res!960347 ((_ is Lexer!3812) thiss!16613))))

(assert (=> start!219100 e!1438010))

(assert (=> start!219100 true))

(assert (=> start!219100 e!1438007))

(declare-fun e!1438020 () Bool)

(assert (=> start!219100 e!1438020))

(assert (=> start!219100 e!1438016))

(declare-fun e!1438014 () Bool)

(assert (=> start!219100 e!1438014))

(assert (=> start!219100 e!1437998))

(assert (=> start!219100 e!1438005))

(assert (=> start!219100 e!1438001))

(declare-fun b!2247282 () Bool)

(declare-fun matchR!2826 (Regex!6565 List!26712) Bool)

(declare-fun list!10194 (BalanceConc!16892) List!26712)

(assert (=> b!2247282 (= e!1438003 (not (matchR!2826 (regex!4217 r!2363) (list!10194 (charsOf!2605 (head!4778 tokens!456))))))))

(declare-fun b!2247283 () Bool)

(declare-fun res!960341 () Bool)

(assert (=> b!2247283 (=> (not res!960341) (not e!1438010))))

(declare-fun rulesInvariant!3316 (LexerInterface!3814 List!26714) Bool)

(assert (=> b!2247283 (= res!960341 (rulesInvariant!3316 thiss!16613 rules!1750))))

(declare-fun tp!709670 () Bool)

(declare-fun b!2247284 () Bool)

(declare-fun inv!21 (TokenValue!4379) Bool)

(assert (=> b!2247284 (= e!1438023 (and (inv!21 (value!134004 (h!32020 tokens!456))) e!1438011 tp!709670))))

(declare-fun b!2247285 () Bool)

(declare-fun e!1438021 () Bool)

(assert (=> b!2247285 (= e!1438010 e!1438021)))

(declare-fun res!960343 () Bool)

(assert (=> b!2247285 (=> (not res!960343) (not e!1438021))))

(declare-datatypes ((IArray!17171 0))(
  ( (IArray!17172 (innerList!8643 List!26713)) )
))
(declare-datatypes ((Conc!8583 0))(
  ( (Node!8583 (left!20224 Conc!8583) (right!20554 Conc!8583) (csize!17396 Int) (cheight!8794 Int)) (Leaf!12677 (xs!11525 IArray!17171) (csize!17397 Int)) (Empty!8583) )
))
(declare-datatypes ((BalanceConc!16894 0))(
  ( (BalanceConc!16895 (c!357458 Conc!8583)) )
))
(declare-datatypes ((tuple2!26100 0))(
  ( (tuple2!26101 (_1!15560 BalanceConc!16894) (_2!15560 BalanceConc!16892)) )
))
(declare-fun lt!835675 () tuple2!26100)

(declare-fun suffix!886 () List!26712)

(declare-datatypes ((tuple2!26102 0))(
  ( (tuple2!26103 (_1!15561 List!26713) (_2!15561 List!26712)) )
))
(declare-fun list!10195 (BalanceConc!16894) List!26713)

(assert (=> b!2247285 (= res!960343 (= (tuple2!26103 (list!10195 (_1!15560 lt!835675)) (list!10194 (_2!15560 lt!835675))) (tuple2!26103 tokens!456 suffix!886)))))

(declare-fun input!1722 () List!26712)

(declare-fun lex!1653 (LexerInterface!3814 List!26714 BalanceConc!16892) tuple2!26100)

(declare-fun seqFromList!2921 (List!26712) BalanceConc!16892)

(assert (=> b!2247285 (= lt!835675 (lex!1653 thiss!16613 rules!1750 (seqFromList!2921 input!1722)))))

(declare-fun b!2247286 () Bool)

(declare-fun tp!709676 () Bool)

(assert (=> b!2247286 (= e!1438014 (and tp_is_empty!10351 tp!709676))))

(declare-fun b!2247287 () Bool)

(declare-fun tp!709681 () Bool)

(declare-fun e!1438012 () Bool)

(assert (=> b!2247287 (= e!1438020 (and tp!709681 (inv!36139 (tag!4707 otherR!12)) (inv!36142 (transformation!4217 otherR!12)) e!1438012))))

(assert (=> b!2247288 (= e!1438012 (and tp!709678 tp!709679))))

(declare-fun b!2247289 () Bool)

(assert (=> b!2247289 (= e!1438021 e!1438017)))

(declare-fun res!960337 () Bool)

(assert (=> b!2247289 (=> (not res!960337) (not e!1438017))))

(assert (=> b!2247289 (= res!960337 e!1438013)))

(declare-fun res!960344 () Bool)

(assert (=> b!2247289 (=> res!960344 e!1438013)))

(assert (=> b!2247289 (= res!960344 lt!835674)))

(declare-fun isEmpty!14998 (List!26713) Bool)

(assert (=> b!2247289 (= lt!835674 (isEmpty!14998 tokens!456))))

(declare-fun b!2247290 () Bool)

(declare-fun res!960339 () Bool)

(assert (=> b!2247290 (=> (not res!960339) (not e!1438017))))

(declare-fun isPrefix!2207 (List!26712 List!26712) Bool)

(assert (=> b!2247290 (= res!960339 (isPrefix!2207 otherP!12 input!1722))))

(assert (= (and start!219100 res!960347) b!2247281))

(assert (= (and b!2247281 res!960334) b!2247283))

(assert (= (and b!2247283 res!960341) b!2247272))

(assert (= (and b!2247272 res!960346) b!2247274))

(assert (= (and b!2247274 res!960335) b!2247285))

(assert (= (and b!2247285 res!960343) b!2247289))

(assert (= (and b!2247289 (not res!960344)) b!2247266))

(assert (= (and b!2247289 res!960337) b!2247279))

(assert (= (and b!2247279 (not res!960340)) b!2247280))

(assert (= (and b!2247279 res!960342) b!2247290))

(assert (= (and b!2247290 res!960339) b!2247273))

(assert (= (and b!2247273 res!960345) b!2247270))

(assert (= (and b!2247270 res!960338) b!2247282))

(assert (= (and b!2247270 (not res!960336)) b!2247269))

(assert (= (and start!219100 ((_ is Cons!26618) input!1722)) b!2247267))

(assert (= b!2247287 b!2247288))

(assert (= start!219100 b!2247287))

(assert (= (and start!219100 ((_ is Cons!26618) suffix!886)) b!2247278))

(assert (= (and start!219100 ((_ is Cons!26618) otherP!12)) b!2247286))

(assert (= b!2247276 b!2247277))

(assert (= b!2247263 b!2247276))

(assert (= (and start!219100 ((_ is Cons!26620) rules!1750)) b!2247263))

(assert (= b!2247265 b!2247275))

(assert (= start!219100 b!2247265))

(assert (= b!2247264 b!2247271))

(assert (= b!2247284 b!2247264))

(assert (= b!2247268 b!2247284))

(assert (= (and start!219100 ((_ is Cons!26619) tokens!456)) b!2247268))

(declare-fun m!2678483 () Bool)

(assert (=> b!2247283 m!2678483))

(declare-fun m!2678485 () Bool)

(assert (=> b!2247269 m!2678485))

(declare-fun m!2678487 () Bool)

(assert (=> b!2247269 m!2678487))

(declare-fun m!2678489 () Bool)

(assert (=> b!2247269 m!2678489))

(declare-fun m!2678491 () Bool)

(assert (=> b!2247269 m!2678491))

(declare-fun m!2678493 () Bool)

(assert (=> b!2247265 m!2678493))

(declare-fun m!2678495 () Bool)

(assert (=> b!2247265 m!2678495))

(declare-fun m!2678497 () Bool)

(assert (=> b!2247276 m!2678497))

(declare-fun m!2678499 () Bool)

(assert (=> b!2247276 m!2678499))

(declare-fun m!2678501 () Bool)

(assert (=> b!2247274 m!2678501))

(declare-fun m!2678503 () Bool)

(assert (=> b!2247289 m!2678503))

(declare-fun m!2678505 () Bool)

(assert (=> b!2247264 m!2678505))

(declare-fun m!2678507 () Bool)

(assert (=> b!2247264 m!2678507))

(declare-fun m!2678509 () Bool)

(assert (=> b!2247280 m!2678509))

(declare-fun m!2678511 () Bool)

(assert (=> b!2247272 m!2678511))

(declare-fun m!2678513 () Bool)

(assert (=> b!2247270 m!2678513))

(declare-fun m!2678515 () Bool)

(assert (=> b!2247270 m!2678515))

(declare-fun m!2678517 () Bool)

(assert (=> b!2247281 m!2678517))

(assert (=> b!2247282 m!2678509))

(assert (=> b!2247282 m!2678509))

(declare-fun m!2678519 () Bool)

(assert (=> b!2247282 m!2678519))

(assert (=> b!2247282 m!2678519))

(declare-fun m!2678521 () Bool)

(assert (=> b!2247282 m!2678521))

(assert (=> b!2247282 m!2678521))

(declare-fun m!2678523 () Bool)

(assert (=> b!2247282 m!2678523))

(declare-fun m!2678525 () Bool)

(assert (=> b!2247284 m!2678525))

(assert (=> b!2247266 m!2678509))

(assert (=> b!2247266 m!2678509))

(assert (=> b!2247266 m!2678519))

(assert (=> b!2247266 m!2678519))

(declare-fun m!2678527 () Bool)

(assert (=> b!2247266 m!2678527))

(declare-fun m!2678529 () Bool)

(assert (=> b!2247266 m!2678529))

(declare-fun m!2678531 () Bool)

(assert (=> b!2247287 m!2678531))

(declare-fun m!2678533 () Bool)

(assert (=> b!2247287 m!2678533))

(declare-fun m!2678535 () Bool)

(assert (=> b!2247290 m!2678535))

(declare-fun m!2678537 () Bool)

(assert (=> b!2247285 m!2678537))

(declare-fun m!2678539 () Bool)

(assert (=> b!2247285 m!2678539))

(declare-fun m!2678541 () Bool)

(assert (=> b!2247285 m!2678541))

(assert (=> b!2247285 m!2678541))

(declare-fun m!2678543 () Bool)

(assert (=> b!2247285 m!2678543))

(declare-fun m!2678545 () Bool)

(assert (=> b!2247268 m!2678545))

(check-sat (not b!2247266) (not b!2247281) (not b!2247287) (not b_next!66405) (not b!2247285) (not b!2247264) b_and!175871 (not b!2247276) (not b!2247269) (not b!2247265) (not b_next!66403) (not b_next!66401) (not b!2247267) (not b!2247274) (not b!2247280) (not b_next!66411) (not b!2247286) tp_is_empty!10351 (not b!2247272) b_and!175865 (not b_next!66399) (not b!2247270) b_and!175869 (not b!2247278) b_and!175873 (not b_next!66409) (not b!2247283) (not b!2247263) (not b!2247268) (not b_next!66397) b_and!175875 (not b!2247284) (not b!2247282) (not b!2247290) b_and!175877 b_and!175867 (not b_next!66407) b_and!175879 (not b!2247289))
(check-sat (not b_next!66411) (not b_next!66409) (not b_next!66405) b_and!175871 b_and!175879 (not b_next!66403) (not b_next!66401) b_and!175865 (not b_next!66399) b_and!175869 b_and!175873 (not b_next!66397) b_and!175875 b_and!175877 b_and!175867 (not b_next!66407))
