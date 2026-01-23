; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!220196 () Bool)

(assert start!220196)

(declare-fun b!2257069 () Bool)

(declare-fun b_free!66509 () Bool)

(declare-fun b_next!67213 () Bool)

(assert (=> b!2257069 (= b_free!66509 (not b_next!67213))))

(declare-fun tp!713589 () Bool)

(declare-fun b_and!177201 () Bool)

(assert (=> b!2257069 (= tp!713589 b_and!177201)))

(declare-fun b_free!66511 () Bool)

(declare-fun b_next!67215 () Bool)

(assert (=> b!2257069 (= b_free!66511 (not b_next!67215))))

(declare-fun tp!713587 () Bool)

(declare-fun b_and!177203 () Bool)

(assert (=> b!2257069 (= tp!713587 b_and!177203)))

(declare-fun b!2257090 () Bool)

(declare-fun b_free!66513 () Bool)

(declare-fun b_next!67217 () Bool)

(assert (=> b!2257090 (= b_free!66513 (not b_next!67217))))

(declare-fun tp!713585 () Bool)

(declare-fun b_and!177205 () Bool)

(assert (=> b!2257090 (= tp!713585 b_and!177205)))

(declare-fun b_free!66515 () Bool)

(declare-fun b_next!67219 () Bool)

(assert (=> b!2257090 (= b_free!66515 (not b_next!67219))))

(declare-fun tp!713575 () Bool)

(declare-fun b_and!177207 () Bool)

(assert (=> b!2257090 (= tp!713575 b_and!177207)))

(declare-fun b!2257066 () Bool)

(declare-fun b_free!66517 () Bool)

(declare-fun b_next!67221 () Bool)

(assert (=> b!2257066 (= b_free!66517 (not b_next!67221))))

(declare-fun tp!713583 () Bool)

(declare-fun b_and!177209 () Bool)

(assert (=> b!2257066 (= tp!713583 b_and!177209)))

(declare-fun b_free!66519 () Bool)

(declare-fun b_next!67223 () Bool)

(assert (=> b!2257066 (= b_free!66519 (not b_next!67223))))

(declare-fun tp!713578 () Bool)

(declare-fun b_and!177211 () Bool)

(assert (=> b!2257066 (= tp!713578 b_and!177211)))

(declare-fun b!2257082 () Bool)

(declare-fun b_free!66521 () Bool)

(declare-fun b_next!67225 () Bool)

(assert (=> b!2257082 (= b_free!66521 (not b_next!67225))))

(declare-fun tp!713577 () Bool)

(declare-fun b_and!177213 () Bool)

(assert (=> b!2257082 (= tp!713577 b_and!177213)))

(declare-fun b_free!66523 () Bool)

(declare-fun b_next!67227 () Bool)

(assert (=> b!2257082 (= b_free!66523 (not b_next!67227))))

(declare-fun tp!713580 () Bool)

(declare-fun b_and!177215 () Bool)

(assert (=> b!2257082 (= tp!713580 b_and!177215)))

(declare-fun b!2257056 () Bool)

(declare-fun e!1445001 () Bool)

(declare-fun e!1445018 () Bool)

(assert (=> b!2257056 (= e!1445001 e!1445018)))

(declare-fun res!964890 () Bool)

(assert (=> b!2257056 (=> res!964890 e!1445018)))

(declare-datatypes ((List!26891 0))(
  ( (Nil!26797) (Cons!26797 (h!32198 (_ BitVec 16)) (t!201311 List!26891)) )
))
(declare-datatypes ((TokenValue!4421 0))(
  ( (FloatLiteralValue!8842 (text!31392 List!26891)) (TokenValueExt!4420 (__x!17902 Int)) (Broken!22105 (value!135175 List!26891)) (Object!4514) (End!4421) (Def!4421) (Underscore!4421) (Match!4421) (Else!4421) (Error!4421) (Case!4421) (If!4421) (Extends!4421) (Abstract!4421) (Class!4421) (Val!4421) (DelimiterValue!8842 (del!4481 List!26891)) (KeywordValue!4427 (value!135176 List!26891)) (CommentValue!8842 (value!135177 List!26891)) (WhitespaceValue!8842 (value!135178 List!26891)) (IndentationValue!4421 (value!135179 List!26891)) (String!29208) (Int32!4421) (Broken!22106 (value!135180 List!26891)) (Boolean!4422) (Unit!39721) (OperatorValue!4424 (op!4481 List!26891)) (IdentifierValue!8842 (value!135181 List!26891)) (IdentifierValue!8843 (value!135182 List!26891)) (WhitespaceValue!8843 (value!135183 List!26891)) (True!8842) (False!8842) (Broken!22107 (value!135184 List!26891)) (Broken!22108 (value!135185 List!26891)) (True!8843) (RightBrace!4421) (RightBracket!4421) (Colon!4421) (Null!4421) (Comma!4421) (LeftBracket!4421) (False!8843) (LeftBrace!4421) (ImaginaryLiteralValue!4421 (text!31393 List!26891)) (StringLiteralValue!13263 (value!135186 List!26891)) (EOFValue!4421 (value!135187 List!26891)) (IdentValue!4421 (value!135188 List!26891)) (DelimiterValue!8843 (value!135189 List!26891)) (DedentValue!4421 (value!135190 List!26891)) (NewLineValue!4421 (value!135191 List!26891)) (IntegerValue!13263 (value!135192 (_ BitVec 32)) (text!31394 List!26891)) (IntegerValue!13264 (value!135193 Int) (text!31395 List!26891)) (Times!4421) (Or!4421) (Equal!4421) (Minus!4421) (Broken!22109 (value!135194 List!26891)) (And!4421) (Div!4421) (LessEqual!4421) (Mod!4421) (Concat!11028) (Not!4421) (Plus!4421) (SpaceValue!4421 (value!135195 List!26891)) (IntegerValue!13265 (value!135196 Int) (text!31396 List!26891)) (StringLiteralValue!13264 (text!31397 List!26891)) (FloatLiteralValue!8843 (text!31398 List!26891)) (BytesLiteralValue!4421 (value!135197 List!26891)) (CommentValue!8843 (value!135198 List!26891)) (StringLiteralValue!13265 (value!135199 List!26891)) (ErrorTokenValue!4421 (msg!4482 List!26891)) )
))
(declare-datatypes ((C!13360 0))(
  ( (C!13361 (val!7728 Int)) )
))
(declare-datatypes ((List!26892 0))(
  ( (Nil!26798) (Cons!26798 (h!32199 C!13360) (t!201312 List!26892)) )
))
(declare-datatypes ((IArray!17337 0))(
  ( (IArray!17338 (innerList!8726 List!26892)) )
))
(declare-datatypes ((Conc!8666 0))(
  ( (Node!8666 (left!20348 Conc!8666) (right!20678 Conc!8666) (csize!17562 Int) (cheight!8877 Int)) (Leaf!12781 (xs!11608 IArray!17337) (csize!17563 Int)) (Empty!8666) )
))
(declare-datatypes ((BalanceConc!17060 0))(
  ( (BalanceConc!17061 (c!358640 Conc!8666)) )
))
(declare-datatypes ((Regex!6607 0))(
  ( (ElementMatch!6607 (c!358641 C!13360)) (Concat!11029 (regOne!13726 Regex!6607) (regTwo!13726 Regex!6607)) (EmptyExpr!6607) (Star!6607 (reg!6936 Regex!6607)) (EmptyLang!6607) (Union!6607 (regOne!13727 Regex!6607) (regTwo!13727 Regex!6607)) )
))
(declare-datatypes ((String!29209 0))(
  ( (String!29210 (value!135200 String)) )
))
(declare-datatypes ((TokenValueInjection!8382 0))(
  ( (TokenValueInjection!8383 (toValue!6001 Int) (toChars!5860 Int)) )
))
(declare-datatypes ((Rule!8318 0))(
  ( (Rule!8319 (regex!4259 Regex!6607) (tag!4749 String!29209) (isSeparator!4259 Bool) (transformation!4259 TokenValueInjection!8382)) )
))
(declare-datatypes ((Token!7996 0))(
  ( (Token!7997 (value!135201 TokenValue!4421) (rule!6565 Rule!8318) (size!20983 Int) (originalCharacters!5029 List!26892)) )
))
(declare-datatypes ((List!26893 0))(
  ( (Nil!26799) (Cons!26799 (h!32200 Token!7996) (t!201313 List!26893)) )
))
(declare-fun tokens!456 () List!26893)

(get-info :version)

(assert (=> b!2257056 (= res!964890 (not ((_ is Nil!26799) tokens!456)))))

(declare-datatypes ((Unit!39722 0))(
  ( (Unit!39723) )
))
(declare-fun lt!838970 () Unit!39722)

(declare-fun e!1444997 () Unit!39722)

(assert (=> b!2257056 (= lt!838970 e!1444997)))

(declare-fun c!358639 () Bool)

(declare-fun lt!838971 () Int)

(declare-fun lt!838974 () Int)

(assert (=> b!2257056 (= c!358639 (= lt!838971 lt!838974))))

(declare-fun e!1445016 () Bool)

(declare-fun b!2257057 () Bool)

(declare-fun e!1445023 () Bool)

(declare-fun tp!713586 () Bool)

(declare-fun inv!36327 (Token!7996) Bool)

(assert (=> b!2257057 (= e!1445023 (and (inv!36327 (h!32200 tokens!456)) e!1445016 tp!713586))))

(declare-fun b!2257058 () Bool)

(declare-fun res!964883 () Bool)

(declare-fun e!1445027 () Bool)

(assert (=> b!2257058 (=> res!964883 e!1445027)))

(declare-fun size!20984 (List!26893) Int)

(assert (=> b!2257058 (= res!964883 (<= (size!20984 tokens!456) 0))))

(declare-fun b!2257060 () Bool)

(declare-fun e!1445012 () Bool)

(declare-fun e!1445015 () Bool)

(assert (=> b!2257060 (= e!1445012 e!1445015)))

(declare-fun res!964882 () Bool)

(assert (=> b!2257060 (=> (not res!964882) (not e!1445015))))

(declare-fun e!1445020 () Bool)

(assert (=> b!2257060 (= res!964882 e!1445020)))

(declare-fun res!964895 () Bool)

(assert (=> b!2257060 (=> res!964895 e!1445020)))

(declare-fun lt!838975 () Bool)

(assert (=> b!2257060 (= res!964895 lt!838975)))

(declare-fun isEmpty!15132 (List!26893) Bool)

(assert (=> b!2257060 (= lt!838975 (isEmpty!15132 tokens!456))))

(declare-fun b!2257061 () Bool)

(declare-fun res!964878 () Bool)

(assert (=> b!2257061 (=> (not res!964878) (not e!1445015))))

(declare-fun otherP!12 () List!26892)

(declare-fun input!1722 () List!26892)

(declare-fun isPrefix!2249 (List!26892 List!26892) Bool)

(assert (=> b!2257061 (= res!964878 (isPrefix!2249 otherP!12 input!1722))))

(declare-fun e!1445024 () Bool)

(declare-fun b!2257062 () Bool)

(declare-fun tp!713584 () Bool)

(declare-fun inv!21 (TokenValue!4421) Bool)

(assert (=> b!2257062 (= e!1445016 (and (inv!21 (value!135201 (h!32200 tokens!456))) e!1445024 tp!713584))))

(declare-fun b!2257063 () Bool)

(declare-fun res!964881 () Bool)

(assert (=> b!2257063 (=> (not res!964881) (not e!1445015))))

(declare-fun e!1445008 () Bool)

(assert (=> b!2257063 (= res!964881 e!1445008)))

(declare-fun res!964893 () Bool)

(assert (=> b!2257063 (=> res!964893 e!1445008)))

(assert (=> b!2257063 (= res!964893 lt!838975)))

(declare-fun b!2257064 () Bool)

(declare-fun res!964880 () Bool)

(declare-fun e!1445025 () Bool)

(assert (=> b!2257064 (=> (not res!964880) (not e!1445025))))

(declare-datatypes ((List!26894 0))(
  ( (Nil!26800) (Cons!26800 (h!32201 Rule!8318) (t!201314 List!26894)) )
))
(declare-fun rules!1750 () List!26894)

(declare-fun isEmpty!15133 (List!26894) Bool)

(assert (=> b!2257064 (= res!964880 (not (isEmpty!15133 rules!1750)))))

(declare-fun b!2257065 () Bool)

(declare-fun Unit!39724 () Unit!39722)

(assert (=> b!2257065 (= e!1444997 Unit!39724)))

(declare-fun e!1445009 () Bool)

(assert (=> b!2257066 (= e!1445009 (and tp!713583 tp!713578))))

(declare-fun b!2257067 () Bool)

(declare-fun e!1445000 () Bool)

(assert (=> b!2257067 (= e!1445000 e!1445027)))

(declare-fun res!964896 () Bool)

(assert (=> b!2257067 (=> res!964896 e!1445027)))

(assert (=> b!2257067 (= res!964896 (< lt!838974 lt!838971))))

(declare-fun otherR!12 () Rule!8318)

(declare-fun matchR!2868 (Regex!6607 List!26892) Bool)

(assert (=> b!2257067 (not (matchR!2868 (regex!4259 otherR!12) otherP!12))))

(declare-datatypes ((LexerInterface!3856 0))(
  ( (LexerInterfaceExt!3853 (__x!17903 Int)) (Lexer!3854) )
))
(declare-fun thiss!16613 () LexerInterface!3856)

(declare-fun lt!838973 () Unit!39722)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!399 (LexerInterface!3856 Rule!8318 List!26892 List!26892) Unit!39722)

(assert (=> b!2257067 (= lt!838973 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!399 thiss!16613 otherR!12 otherP!12 input!1722))))

(declare-fun tp!713576 () Bool)

(declare-fun e!1445011 () Bool)

(declare-fun r!2363 () Rule!8318)

(declare-fun b!2257068 () Bool)

(declare-fun e!1445017 () Bool)

(declare-fun inv!36324 (String!29209) Bool)

(declare-fun inv!36328 (TokenValueInjection!8382) Bool)

(assert (=> b!2257068 (= e!1445011 (and tp!713576 (inv!36324 (tag!4749 r!2363)) (inv!36328 (transformation!4259 r!2363)) e!1445017))))

(assert (=> b!2257069 (= e!1445017 (and tp!713589 tp!713587))))

(declare-fun b!2257070 () Bool)

(declare-fun res!964894 () Bool)

(assert (=> b!2257070 (=> (not res!964894) (not e!1445025))))

(declare-fun contains!4611 (List!26894 Rule!8318) Bool)

(assert (=> b!2257070 (= res!964894 (contains!4611 rules!1750 r!2363))))

(declare-fun b!2257071 () Bool)

(declare-fun res!964887 () Bool)

(assert (=> b!2257071 (=> (not res!964887) (not e!1445015))))

(assert (=> b!2257071 (= res!964887 (not (= r!2363 otherR!12)))))

(declare-fun b!2257072 () Bool)

(declare-fun e!1445021 () Bool)

(declare-fun tp_is_empty!10435 () Bool)

(declare-fun tp!713581 () Bool)

(assert (=> b!2257072 (= e!1445021 (and tp_is_empty!10435 tp!713581))))

(declare-fun b!2257073 () Bool)

(declare-fun e!1445003 () Bool)

(declare-fun e!1445005 () Bool)

(declare-fun tp!713574 () Bool)

(assert (=> b!2257073 (= e!1445003 (and e!1445005 tp!713574))))

(declare-fun res!964885 () Bool)

(assert (=> start!220196 (=> (not res!964885) (not e!1445025))))

(assert (=> start!220196 (= res!964885 ((_ is Lexer!3854) thiss!16613))))

(assert (=> start!220196 e!1445025))

(assert (=> start!220196 true))

(assert (=> start!220196 e!1445021))

(declare-fun e!1445013 () Bool)

(assert (=> start!220196 e!1445013))

(declare-fun e!1445019 () Bool)

(assert (=> start!220196 e!1445019))

(declare-fun e!1445022 () Bool)

(assert (=> start!220196 e!1445022))

(assert (=> start!220196 e!1445003))

(assert (=> start!220196 e!1445011))

(assert (=> start!220196 e!1445023))

(declare-fun b!2257059 () Bool)

(declare-fun e!1445010 () Bool)

(assert (=> b!2257059 (= e!1445010 e!1445001)))

(declare-fun res!964889 () Bool)

(assert (=> b!2257059 (=> res!964889 e!1445001)))

(assert (=> b!2257059 (= res!964889 (> lt!838971 lt!838974))))

(declare-fun getIndex!280 (List!26894 Rule!8318) Int)

(assert (=> b!2257059 (= lt!838974 (getIndex!280 rules!1750 otherR!12))))

(assert (=> b!2257059 (= lt!838971 (getIndex!280 rules!1750 r!2363))))

(declare-fun ruleValid!1351 (LexerInterface!3856 Rule!8318) Bool)

(assert (=> b!2257059 (ruleValid!1351 thiss!16613 otherR!12)))

(declare-fun lt!838972 () Unit!39722)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!758 (LexerInterface!3856 Rule!8318 List!26894) Unit!39722)

(assert (=> b!2257059 (= lt!838972 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!758 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2257074 () Bool)

(assert (=> b!2257074 (= e!1445025 e!1445012)))

(declare-fun res!964892 () Bool)

(assert (=> b!2257074 (=> (not res!964892) (not e!1445012))))

(declare-datatypes ((IArray!17339 0))(
  ( (IArray!17340 (innerList!8727 List!26893)) )
))
(declare-datatypes ((Conc!8667 0))(
  ( (Node!8667 (left!20349 Conc!8667) (right!20679 Conc!8667) (csize!17564 Int) (cheight!8878 Int)) (Leaf!12782 (xs!11609 IArray!17339) (csize!17565 Int)) (Empty!8667) )
))
(declare-datatypes ((BalanceConc!17062 0))(
  ( (BalanceConc!17063 (c!358642 Conc!8667)) )
))
(declare-datatypes ((tuple2!26366 0))(
  ( (tuple2!26367 (_1!15693 BalanceConc!17062) (_2!15693 BalanceConc!17060)) )
))
(declare-fun lt!838978 () tuple2!26366)

(declare-fun suffix!886 () List!26892)

(declare-datatypes ((tuple2!26368 0))(
  ( (tuple2!26369 (_1!15694 List!26893) (_2!15694 List!26892)) )
))
(declare-fun list!10313 (BalanceConc!17062) List!26893)

(declare-fun list!10314 (BalanceConc!17060) List!26892)

(assert (=> b!2257074 (= res!964892 (= (tuple2!26369 (list!10313 (_1!15693 lt!838978)) (list!10314 (_2!15693 lt!838978))) (tuple2!26369 tokens!456 suffix!886)))))

(declare-fun lex!1695 (LexerInterface!3856 List!26894 BalanceConc!17060) tuple2!26366)

(declare-fun seqFromList!2963 (List!26892) BalanceConc!17060)

(assert (=> b!2257074 (= lt!838978 (lex!1695 thiss!16613 rules!1750 (seqFromList!2963 input!1722)))))

(declare-fun b!2257075 () Bool)

(declare-fun res!964879 () Bool)

(assert (=> b!2257075 (=> (not res!964879) (not e!1445025))))

(declare-fun rulesInvariant!3358 (LexerInterface!3856 List!26894) Bool)

(assert (=> b!2257075 (= res!964879 (rulesInvariant!3358 thiss!16613 rules!1750))))

(declare-fun b!2257076 () Bool)

(declare-fun size!20985 (BalanceConc!17060) Int)

(declare-fun charsOf!2647 (Token!7996) BalanceConc!17060)

(declare-fun head!4832 (List!26893) Token!7996)

(declare-fun size!20986 (List!26892) Int)

(assert (=> b!2257076 (= e!1445020 (<= (size!20985 (charsOf!2647 (head!4832 tokens!456))) (size!20986 otherP!12)))))

(declare-fun b!2257077 () Bool)

(declare-fun tp!713579 () Bool)

(assert (=> b!2257077 (= e!1445019 (and tp_is_empty!10435 tp!713579))))

(declare-fun e!1445006 () Bool)

(declare-fun b!2257078 () Bool)

(declare-fun tp!713573 () Bool)

(assert (=> b!2257078 (= e!1445013 (and tp!713573 (inv!36324 (tag!4749 otherR!12)) (inv!36328 (transformation!4259 otherR!12)) e!1445006))))

(declare-fun b!2257079 () Bool)

(assert (=> b!2257079 (= e!1445008 (= (rule!6565 (head!4832 tokens!456)) r!2363))))

(declare-fun tp!713572 () Bool)

(declare-fun b!2257080 () Bool)

(assert (=> b!2257080 (= e!1445005 (and tp!713572 (inv!36324 (tag!4749 (h!32201 rules!1750))) (inv!36328 (transformation!4259 (h!32201 rules!1750))) e!1445009))))

(declare-fun b!2257081 () Bool)

(assert (=> b!2257081 (= e!1445018 e!1445000)))

(declare-fun res!964891 () Bool)

(assert (=> b!2257081 (=> res!964891 e!1445000)))

(declare-datatypes ((tuple2!26370 0))(
  ( (tuple2!26371 (_1!15695 Token!7996) (_2!15695 List!26892)) )
))
(declare-datatypes ((Option!5235 0))(
  ( (None!5234) (Some!5234 (v!30260 tuple2!26370)) )
))
(declare-fun lt!838969 () Option!5235)

(assert (=> b!2257081 (= res!964891 (not (= lt!838969 None!5234)))))

(declare-fun isEmpty!15134 (Option!5235) Bool)

(assert (=> b!2257081 (isEmpty!15134 lt!838969)))

(declare-fun maxPrefixOneRule!1334 (LexerInterface!3856 Rule!8318 List!26892) Option!5235)

(assert (=> b!2257081 (= lt!838969 (maxPrefixOneRule!1334 thiss!16613 otherR!12 input!1722))))

(declare-fun lt!838976 () Unit!39722)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!407 (LexerInterface!3856 Rule!8318 List!26894 List!26892) Unit!39722)

(assert (=> b!2257081 (= lt!838976 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!407 thiss!16613 otherR!12 rules!1750 input!1722))))

(assert (=> b!2257082 (= e!1445006 (and tp!713577 tp!713580))))

(declare-fun b!2257083 () Bool)

(declare-fun res!964886 () Bool)

(assert (=> b!2257083 (=> (not res!964886) (not e!1445025))))

(assert (=> b!2257083 (= res!964886 (contains!4611 rules!1750 otherR!12))))

(declare-fun b!2257084 () Bool)

(assert (=> b!2257084 (= e!1445027 (not (= tokens!456 Nil!26799)))))

(declare-fun b!2257085 () Bool)

(declare-fun Unit!39725 () Unit!39722)

(assert (=> b!2257085 (= e!1444997 Unit!39725)))

(declare-fun lt!838968 () Unit!39722)

(declare-fun lemmaSameIndexThenSameElement!126 (List!26894 Rule!8318 Rule!8318) Unit!39722)

(assert (=> b!2257085 (= lt!838968 (lemmaSameIndexThenSameElement!126 rules!1750 r!2363 otherR!12))))

(assert (=> b!2257085 false))

(declare-fun tp!713582 () Bool)

(declare-fun b!2257086 () Bool)

(declare-fun e!1445026 () Bool)

(assert (=> b!2257086 (= e!1445024 (and tp!713582 (inv!36324 (tag!4749 (rule!6565 (h!32200 tokens!456)))) (inv!36328 (transformation!4259 (rule!6565 (h!32200 tokens!456)))) e!1445026))))

(declare-fun b!2257087 () Bool)

(declare-fun tp!713588 () Bool)

(assert (=> b!2257087 (= e!1445022 (and tp_is_empty!10435 tp!713588))))

(declare-fun b!2257088 () Bool)

(declare-fun e!1445002 () Bool)

(assert (=> b!2257088 (= e!1445002 (not (matchR!2868 (regex!4259 r!2363) (list!10314 (charsOf!2647 (head!4832 tokens!456))))))))

(declare-fun b!2257089 () Bool)

(assert (=> b!2257089 (= e!1445015 (not e!1445010))))

(declare-fun res!964884 () Bool)

(assert (=> b!2257089 (=> res!964884 e!1445010)))

(assert (=> b!2257089 (= res!964884 e!1445002)))

(declare-fun res!964888 () Bool)

(assert (=> b!2257089 (=> (not res!964888) (not e!1445002))))

(assert (=> b!2257089 (= res!964888 (not lt!838975))))

(assert (=> b!2257089 (ruleValid!1351 thiss!16613 r!2363)))

(declare-fun lt!838977 () Unit!39722)

(assert (=> b!2257089 (= lt!838977 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!758 thiss!16613 r!2363 rules!1750))))

(assert (=> b!2257090 (= e!1445026 (and tp!713585 tp!713575))))

(assert (= (and start!220196 res!964885) b!2257064))

(assert (= (and b!2257064 res!964880) b!2257075))

(assert (= (and b!2257075 res!964879) b!2257070))

(assert (= (and b!2257070 res!964894) b!2257083))

(assert (= (and b!2257083 res!964886) b!2257074))

(assert (= (and b!2257074 res!964892) b!2257060))

(assert (= (and b!2257060 (not res!964895)) b!2257076))

(assert (= (and b!2257060 res!964882) b!2257063))

(assert (= (and b!2257063 (not res!964893)) b!2257079))

(assert (= (and b!2257063 res!964881) b!2257061))

(assert (= (and b!2257061 res!964878) b!2257071))

(assert (= (and b!2257071 res!964887) b!2257089))

(assert (= (and b!2257089 res!964888) b!2257088))

(assert (= (and b!2257089 (not res!964884)) b!2257059))

(assert (= (and b!2257059 (not res!964889)) b!2257056))

(assert (= (and b!2257056 c!358639) b!2257085))

(assert (= (and b!2257056 (not c!358639)) b!2257065))

(assert (= (and b!2257056 (not res!964890)) b!2257081))

(assert (= (and b!2257081 (not res!964891)) b!2257067))

(assert (= (and b!2257067 (not res!964896)) b!2257058))

(assert (= (and b!2257058 (not res!964883)) b!2257084))

(assert (= (and start!220196 ((_ is Cons!26798) input!1722)) b!2257072))

(assert (= b!2257078 b!2257082))

(assert (= start!220196 b!2257078))

(assert (= (and start!220196 ((_ is Cons!26798) suffix!886)) b!2257077))

(assert (= (and start!220196 ((_ is Cons!26798) otherP!12)) b!2257087))

(assert (= b!2257080 b!2257066))

(assert (= b!2257073 b!2257080))

(assert (= (and start!220196 ((_ is Cons!26800) rules!1750)) b!2257073))

(assert (= b!2257068 b!2257069))

(assert (= start!220196 b!2257068))

(assert (= b!2257086 b!2257090))

(assert (= b!2257062 b!2257086))

(assert (= b!2257057 b!2257062))

(assert (= (and start!220196 ((_ is Cons!26799) tokens!456)) b!2257057))

(declare-fun m!2687293 () Bool)

(assert (=> b!2257085 m!2687293))

(declare-fun m!2687295 () Bool)

(assert (=> b!2257058 m!2687295))

(declare-fun m!2687297 () Bool)

(assert (=> b!2257076 m!2687297))

(assert (=> b!2257076 m!2687297))

(declare-fun m!2687299 () Bool)

(assert (=> b!2257076 m!2687299))

(assert (=> b!2257076 m!2687299))

(declare-fun m!2687301 () Bool)

(assert (=> b!2257076 m!2687301))

(declare-fun m!2687303 () Bool)

(assert (=> b!2257076 m!2687303))

(declare-fun m!2687305 () Bool)

(assert (=> b!2257059 m!2687305))

(declare-fun m!2687307 () Bool)

(assert (=> b!2257059 m!2687307))

(declare-fun m!2687309 () Bool)

(assert (=> b!2257059 m!2687309))

(declare-fun m!2687311 () Bool)

(assert (=> b!2257059 m!2687311))

(declare-fun m!2687313 () Bool)

(assert (=> b!2257067 m!2687313))

(declare-fun m!2687315 () Bool)

(assert (=> b!2257067 m!2687315))

(declare-fun m!2687317 () Bool)

(assert (=> b!2257070 m!2687317))

(declare-fun m!2687319 () Bool)

(assert (=> b!2257068 m!2687319))

(declare-fun m!2687321 () Bool)

(assert (=> b!2257068 m!2687321))

(declare-fun m!2687323 () Bool)

(assert (=> b!2257080 m!2687323))

(declare-fun m!2687325 () Bool)

(assert (=> b!2257080 m!2687325))

(declare-fun m!2687327 () Bool)

(assert (=> b!2257062 m!2687327))

(declare-fun m!2687329 () Bool)

(assert (=> b!2257064 m!2687329))

(declare-fun m!2687331 () Bool)

(assert (=> b!2257060 m!2687331))

(declare-fun m!2687333 () Bool)

(assert (=> b!2257086 m!2687333))

(declare-fun m!2687335 () Bool)

(assert (=> b!2257086 m!2687335))

(declare-fun m!2687337 () Bool)

(assert (=> b!2257081 m!2687337))

(declare-fun m!2687339 () Bool)

(assert (=> b!2257081 m!2687339))

(declare-fun m!2687341 () Bool)

(assert (=> b!2257081 m!2687341))

(declare-fun m!2687343 () Bool)

(assert (=> b!2257083 m!2687343))

(declare-fun m!2687345 () Bool)

(assert (=> b!2257057 m!2687345))

(declare-fun m!2687347 () Bool)

(assert (=> b!2257078 m!2687347))

(declare-fun m!2687349 () Bool)

(assert (=> b!2257078 m!2687349))

(declare-fun m!2687351 () Bool)

(assert (=> b!2257074 m!2687351))

(declare-fun m!2687353 () Bool)

(assert (=> b!2257074 m!2687353))

(declare-fun m!2687355 () Bool)

(assert (=> b!2257074 m!2687355))

(assert (=> b!2257074 m!2687355))

(declare-fun m!2687357 () Bool)

(assert (=> b!2257074 m!2687357))

(declare-fun m!2687359 () Bool)

(assert (=> b!2257089 m!2687359))

(declare-fun m!2687361 () Bool)

(assert (=> b!2257089 m!2687361))

(declare-fun m!2687363 () Bool)

(assert (=> b!2257075 m!2687363))

(declare-fun m!2687365 () Bool)

(assert (=> b!2257061 m!2687365))

(assert (=> b!2257079 m!2687297))

(assert (=> b!2257088 m!2687297))

(assert (=> b!2257088 m!2687297))

(assert (=> b!2257088 m!2687299))

(assert (=> b!2257088 m!2687299))

(declare-fun m!2687367 () Bool)

(assert (=> b!2257088 m!2687367))

(assert (=> b!2257088 m!2687367))

(declare-fun m!2687369 () Bool)

(assert (=> b!2257088 m!2687369))

(check-sat (not b!2257064) (not b_next!67225) b_and!177209 (not b!2257059) (not b!2257058) (not b!2257060) b_and!177203 b_and!177211 (not b!2257081) (not b!2257075) b_and!177213 b_and!177205 (not b!2257067) tp_is_empty!10435 (not b!2257077) (not b!2257062) (not b_next!67221) (not b_next!67213) (not b_next!67227) (not b!2257073) (not b_next!67215) (not b!2257089) (not b!2257087) (not b!2257057) (not b!2257076) b_and!177215 (not b!2257080) (not b_next!67217) (not b!2257083) (not b!2257079) (not b!2257072) (not b_next!67219) (not b!2257061) (not b!2257074) (not b_next!67223) b_and!177207 (not b!2257088) (not b!2257086) (not b!2257068) (not b!2257078) (not b!2257070) (not b!2257085) b_and!177201)
(check-sat (not b_next!67225) b_and!177209 (not b_next!67215) b_and!177215 (not b_next!67217) b_and!177203 b_and!177211 (not b_next!67219) b_and!177213 b_and!177205 b_and!177201 (not b_next!67221) (not b_next!67213) (not b_next!67227) (not b_next!67223) b_and!177207)
(get-model)

(declare-fun b!2257104 () Bool)

(declare-fun e!1445037 () Bool)

(declare-fun inv!15 (TokenValue!4421) Bool)

(assert (=> b!2257104 (= e!1445037 (inv!15 (value!135201 (h!32200 tokens!456))))))

(declare-fun b!2257105 () Bool)

(declare-fun e!1445039 () Bool)

(declare-fun inv!16 (TokenValue!4421) Bool)

(assert (=> b!2257105 (= e!1445039 (inv!16 (value!135201 (h!32200 tokens!456))))))

(declare-fun b!2257106 () Bool)

(declare-fun e!1445038 () Bool)

(declare-fun inv!17 (TokenValue!4421) Bool)

(assert (=> b!2257106 (= e!1445038 (inv!17 (value!135201 (h!32200 tokens!456))))))

(declare-fun d!668827 () Bool)

(declare-fun c!358647 () Bool)

(assert (=> d!668827 (= c!358647 ((_ is IntegerValue!13263) (value!135201 (h!32200 tokens!456))))))

(assert (=> d!668827 (= (inv!21 (value!135201 (h!32200 tokens!456))) e!1445039)))

(declare-fun b!2257107 () Bool)

(assert (=> b!2257107 (= e!1445039 e!1445038)))

(declare-fun c!358648 () Bool)

(assert (=> b!2257107 (= c!358648 ((_ is IntegerValue!13264) (value!135201 (h!32200 tokens!456))))))

(declare-fun b!2257108 () Bool)

(declare-fun res!964910 () Bool)

(assert (=> b!2257108 (=> res!964910 e!1445037)))

(assert (=> b!2257108 (= res!964910 (not ((_ is IntegerValue!13265) (value!135201 (h!32200 tokens!456)))))))

(assert (=> b!2257108 (= e!1445038 e!1445037)))

(assert (= (and d!668827 c!358647) b!2257105))

(assert (= (and d!668827 (not c!358647)) b!2257107))

(assert (= (and b!2257107 c!358648) b!2257106))

(assert (= (and b!2257107 (not c!358648)) b!2257108))

(assert (= (and b!2257108 (not res!964910)) b!2257104))

(declare-fun m!2687375 () Bool)

(assert (=> b!2257104 m!2687375))

(declare-fun m!2687377 () Bool)

(assert (=> b!2257105 m!2687377))

(declare-fun m!2687379 () Bool)

(assert (=> b!2257106 m!2687379))

(assert (=> b!2257062 d!668827))

(declare-fun d!668829 () Bool)

(declare-fun lt!838981 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3568 (List!26894) (InoxSet Rule!8318))

(assert (=> d!668829 (= lt!838981 (select (content!3568 rules!1750) otherR!12))))

(declare-fun e!1445044 () Bool)

(assert (=> d!668829 (= lt!838981 e!1445044)))

(declare-fun res!964915 () Bool)

(assert (=> d!668829 (=> (not res!964915) (not e!1445044))))

(assert (=> d!668829 (= res!964915 ((_ is Cons!26800) rules!1750))))

(assert (=> d!668829 (= (contains!4611 rules!1750 otherR!12) lt!838981)))

(declare-fun b!2257113 () Bool)

(declare-fun e!1445045 () Bool)

(assert (=> b!2257113 (= e!1445044 e!1445045)))

(declare-fun res!964916 () Bool)

(assert (=> b!2257113 (=> res!964916 e!1445045)))

(assert (=> b!2257113 (= res!964916 (= (h!32201 rules!1750) otherR!12))))

(declare-fun b!2257114 () Bool)

(assert (=> b!2257114 (= e!1445045 (contains!4611 (t!201314 rules!1750) otherR!12))))

(assert (= (and d!668829 res!964915) b!2257113))

(assert (= (and b!2257113 (not res!964916)) b!2257114))

(declare-fun m!2687381 () Bool)

(assert (=> d!668829 m!2687381))

(declare-fun m!2687383 () Bool)

(assert (=> d!668829 m!2687383))

(declare-fun m!2687385 () Bool)

(assert (=> b!2257114 m!2687385))

(assert (=> b!2257083 d!668829))

(declare-fun d!668831 () Bool)

(declare-fun e!1445052 () Bool)

(assert (=> d!668831 e!1445052))

(declare-fun res!964925 () Bool)

(assert (=> d!668831 (=> res!964925 e!1445052)))

(declare-fun lt!838984 () Bool)

(assert (=> d!668831 (= res!964925 (not lt!838984))))

(declare-fun e!1445054 () Bool)

(assert (=> d!668831 (= lt!838984 e!1445054)))

(declare-fun res!964927 () Bool)

(assert (=> d!668831 (=> res!964927 e!1445054)))

(assert (=> d!668831 (= res!964927 ((_ is Nil!26798) otherP!12))))

(assert (=> d!668831 (= (isPrefix!2249 otherP!12 input!1722) lt!838984)))

(declare-fun b!2257125 () Bool)

(declare-fun e!1445053 () Bool)

(declare-fun tail!3255 (List!26892) List!26892)

(assert (=> b!2257125 (= e!1445053 (isPrefix!2249 (tail!3255 otherP!12) (tail!3255 input!1722)))))

(declare-fun b!2257126 () Bool)

(assert (=> b!2257126 (= e!1445052 (>= (size!20986 input!1722) (size!20986 otherP!12)))))

(declare-fun b!2257124 () Bool)

(declare-fun res!964928 () Bool)

(assert (=> b!2257124 (=> (not res!964928) (not e!1445053))))

(declare-fun head!4834 (List!26892) C!13360)

(assert (=> b!2257124 (= res!964928 (= (head!4834 otherP!12) (head!4834 input!1722)))))

(declare-fun b!2257123 () Bool)

(assert (=> b!2257123 (= e!1445054 e!1445053)))

(declare-fun res!964926 () Bool)

(assert (=> b!2257123 (=> (not res!964926) (not e!1445053))))

(assert (=> b!2257123 (= res!964926 (not ((_ is Nil!26798) input!1722)))))

(assert (= (and d!668831 (not res!964927)) b!2257123))

(assert (= (and b!2257123 res!964926) b!2257124))

(assert (= (and b!2257124 res!964928) b!2257125))

(assert (= (and d!668831 (not res!964925)) b!2257126))

(declare-fun m!2687387 () Bool)

(assert (=> b!2257125 m!2687387))

(declare-fun m!2687389 () Bool)

(assert (=> b!2257125 m!2687389))

(assert (=> b!2257125 m!2687387))

(assert (=> b!2257125 m!2687389))

(declare-fun m!2687391 () Bool)

(assert (=> b!2257125 m!2687391))

(declare-fun m!2687393 () Bool)

(assert (=> b!2257126 m!2687393))

(assert (=> b!2257126 m!2687303))

(declare-fun m!2687395 () Bool)

(assert (=> b!2257124 m!2687395))

(declare-fun m!2687397 () Bool)

(assert (=> b!2257124 m!2687397))

(assert (=> b!2257061 d!668831))

(declare-fun d!668833 () Bool)

(assert (=> d!668833 (= (isEmpty!15132 tokens!456) ((_ is Nil!26799) tokens!456))))

(assert (=> b!2257060 d!668833))

(declare-fun d!668835 () Bool)

(assert (=> d!668835 (= (inv!36324 (tag!4749 (rule!6565 (h!32200 tokens!456)))) (= (mod (str.len (value!135200 (tag!4749 (rule!6565 (h!32200 tokens!456))))) 2) 0))))

(assert (=> b!2257086 d!668835))

(declare-fun d!668837 () Bool)

(declare-fun res!964945 () Bool)

(declare-fun e!1445065 () Bool)

(assert (=> d!668837 (=> (not res!964945) (not e!1445065))))

(declare-fun semiInverseModEq!1714 (Int Int) Bool)

(assert (=> d!668837 (= res!964945 (semiInverseModEq!1714 (toChars!5860 (transformation!4259 (rule!6565 (h!32200 tokens!456)))) (toValue!6001 (transformation!4259 (rule!6565 (h!32200 tokens!456))))))))

(assert (=> d!668837 (= (inv!36328 (transformation!4259 (rule!6565 (h!32200 tokens!456)))) e!1445065)))

(declare-fun b!2257147 () Bool)

(declare-fun equivClasses!1633 (Int Int) Bool)

(assert (=> b!2257147 (= e!1445065 (equivClasses!1633 (toChars!5860 (transformation!4259 (rule!6565 (h!32200 tokens!456)))) (toValue!6001 (transformation!4259 (rule!6565 (h!32200 tokens!456))))))))

(assert (= (and d!668837 res!964945) b!2257147))

(declare-fun m!2687399 () Bool)

(assert (=> d!668837 m!2687399))

(declare-fun m!2687401 () Bool)

(assert (=> b!2257147 m!2687401))

(assert (=> b!2257086 d!668837))

(declare-fun d!668839 () Bool)

(assert (=> d!668839 (= (isEmpty!15133 rules!1750) ((_ is Nil!26800) rules!1750))))

(assert (=> b!2257064 d!668839))

(declare-fun d!668841 () Bool)

(declare-fun res!964955 () Bool)

(declare-fun e!1445072 () Bool)

(assert (=> d!668841 (=> (not res!964955) (not e!1445072))))

(declare-fun rulesValid!1558 (LexerInterface!3856 List!26894) Bool)

(assert (=> d!668841 (= res!964955 (rulesValid!1558 thiss!16613 rules!1750))))

(assert (=> d!668841 (= (rulesInvariant!3358 thiss!16613 rules!1750) e!1445072)))

(declare-fun b!2257159 () Bool)

(declare-datatypes ((List!26896 0))(
  ( (Nil!26802) (Cons!26802 (h!32203 String!29209) (t!201364 List!26896)) )
))
(declare-fun noDuplicateTag!1556 (LexerInterface!3856 List!26894 List!26896) Bool)

(assert (=> b!2257159 (= e!1445072 (noDuplicateTag!1556 thiss!16613 rules!1750 Nil!26802))))

(assert (= (and d!668841 res!964955) b!2257159))

(declare-fun m!2687445 () Bool)

(assert (=> d!668841 m!2687445))

(declare-fun m!2687449 () Bool)

(assert (=> b!2257159 m!2687449))

(assert (=> b!2257075 d!668841))

(declare-fun d!668845 () Bool)

(declare-fun list!10316 (Conc!8667) List!26893)

(assert (=> d!668845 (= (list!10313 (_1!15693 lt!838978)) (list!10316 (c!358642 (_1!15693 lt!838978))))))

(declare-fun bs!455264 () Bool)

(assert (= bs!455264 d!668845))

(declare-fun m!2687451 () Bool)

(assert (=> bs!455264 m!2687451))

(assert (=> b!2257074 d!668845))

(declare-fun d!668847 () Bool)

(declare-fun list!10317 (Conc!8666) List!26892)

(assert (=> d!668847 (= (list!10314 (_2!15693 lt!838978)) (list!10317 (c!358640 (_2!15693 lt!838978))))))

(declare-fun bs!455265 () Bool)

(assert (= bs!455265 d!668847))

(declare-fun m!2687453 () Bool)

(assert (=> bs!455265 m!2687453))

(assert (=> b!2257074 d!668847))

(declare-fun b!2257389 () Bool)

(declare-fun e!1445216 () Bool)

(declare-fun e!1445218 () Bool)

(assert (=> b!2257389 (= e!1445216 e!1445218)))

(declare-fun res!965046 () Bool)

(declare-fun lt!839045 () tuple2!26366)

(assert (=> b!2257389 (= res!965046 (< (size!20985 (_2!15693 lt!839045)) (size!20985 (seqFromList!2963 input!1722))))))

(assert (=> b!2257389 (=> (not res!965046) (not e!1445218))))

(declare-fun d!668849 () Bool)

(declare-fun e!1445217 () Bool)

(assert (=> d!668849 e!1445217))

(declare-fun res!965047 () Bool)

(assert (=> d!668849 (=> (not res!965047) (not e!1445217))))

(assert (=> d!668849 (= res!965047 e!1445216)))

(declare-fun c!358689 () Bool)

(declare-fun size!20988 (BalanceConc!17062) Int)

(assert (=> d!668849 (= c!358689 (> (size!20988 (_1!15693 lt!839045)) 0))))

(declare-fun lexTailRecV2!732 (LexerInterface!3856 List!26894 BalanceConc!17060 BalanceConc!17060 BalanceConc!17060 BalanceConc!17062) tuple2!26366)

(assert (=> d!668849 (= lt!839045 (lexTailRecV2!732 thiss!16613 rules!1750 (seqFromList!2963 input!1722) (BalanceConc!17061 Empty!8666) (seqFromList!2963 input!1722) (BalanceConc!17063 Empty!8667)))))

(assert (=> d!668849 (= (lex!1695 thiss!16613 rules!1750 (seqFromList!2963 input!1722)) lt!839045)))

(declare-fun b!2257390 () Bool)

(assert (=> b!2257390 (= e!1445216 (= (_2!15693 lt!839045) (seqFromList!2963 input!1722)))))

(declare-fun b!2257391 () Bool)

(declare-fun lexList!1058 (LexerInterface!3856 List!26894 List!26892) tuple2!26368)

(assert (=> b!2257391 (= e!1445217 (= (list!10314 (_2!15693 lt!839045)) (_2!15694 (lexList!1058 thiss!16613 rules!1750 (list!10314 (seqFromList!2963 input!1722))))))))

(declare-fun b!2257392 () Bool)

(declare-fun isEmpty!15137 (BalanceConc!17062) Bool)

(assert (=> b!2257392 (= e!1445218 (not (isEmpty!15137 (_1!15693 lt!839045))))))

(declare-fun b!2257393 () Bool)

(declare-fun res!965048 () Bool)

(assert (=> b!2257393 (=> (not res!965048) (not e!1445217))))

(assert (=> b!2257393 (= res!965048 (= (list!10313 (_1!15693 lt!839045)) (_1!15694 (lexList!1058 thiss!16613 rules!1750 (list!10314 (seqFromList!2963 input!1722))))))))

(assert (= (and d!668849 c!358689) b!2257389))

(assert (= (and d!668849 (not c!358689)) b!2257390))

(assert (= (and b!2257389 res!965046) b!2257392))

(assert (= (and d!668849 res!965047) b!2257393))

(assert (= (and b!2257393 res!965048) b!2257391))

(declare-fun m!2687607 () Bool)

(assert (=> b!2257391 m!2687607))

(assert (=> b!2257391 m!2687355))

(declare-fun m!2687609 () Bool)

(assert (=> b!2257391 m!2687609))

(assert (=> b!2257391 m!2687609))

(declare-fun m!2687611 () Bool)

(assert (=> b!2257391 m!2687611))

(declare-fun m!2687613 () Bool)

(assert (=> d!668849 m!2687613))

(assert (=> d!668849 m!2687355))

(assert (=> d!668849 m!2687355))

(declare-fun m!2687615 () Bool)

(assert (=> d!668849 m!2687615))

(declare-fun m!2687617 () Bool)

(assert (=> b!2257393 m!2687617))

(assert (=> b!2257393 m!2687355))

(assert (=> b!2257393 m!2687609))

(assert (=> b!2257393 m!2687609))

(assert (=> b!2257393 m!2687611))

(declare-fun m!2687619 () Bool)

(assert (=> b!2257389 m!2687619))

(assert (=> b!2257389 m!2687355))

(declare-fun m!2687621 () Bool)

(assert (=> b!2257389 m!2687621))

(declare-fun m!2687623 () Bool)

(assert (=> b!2257392 m!2687623))

(assert (=> b!2257074 d!668849))

(declare-fun d!668919 () Bool)

(declare-fun fromListB!1323 (List!26892) BalanceConc!17060)

(assert (=> d!668919 (= (seqFromList!2963 input!1722) (fromListB!1323 input!1722))))

(declare-fun bs!455276 () Bool)

(assert (= bs!455276 d!668919))

(declare-fun m!2687625 () Bool)

(assert (=> bs!455276 m!2687625))

(assert (=> b!2257074 d!668919))

(declare-fun d!668921 () Bool)

(assert (=> d!668921 (= r!2363 otherR!12)))

(declare-fun lt!839048 () Unit!39722)

(declare-fun choose!13203 (List!26894 Rule!8318 Rule!8318) Unit!39722)

(assert (=> d!668921 (= lt!839048 (choose!13203 rules!1750 r!2363 otherR!12))))

(assert (=> d!668921 (contains!4611 rules!1750 r!2363)))

(assert (=> d!668921 (= (lemmaSameIndexThenSameElement!126 rules!1750 r!2363 otherR!12) lt!839048)))

(declare-fun bs!455277 () Bool)

(assert (= bs!455277 d!668921))

(declare-fun m!2687627 () Bool)

(assert (=> bs!455277 m!2687627))

(assert (=> bs!455277 m!2687317))

(assert (=> b!2257085 d!668921))

(declare-fun d!668923 () Bool)

(assert (=> d!668923 (= (inv!36324 (tag!4749 otherR!12)) (= (mod (str.len (value!135200 (tag!4749 otherR!12))) 2) 0))))

(assert (=> b!2257078 d!668923))

(declare-fun d!668925 () Bool)

(declare-fun res!965049 () Bool)

(declare-fun e!1445219 () Bool)

(assert (=> d!668925 (=> (not res!965049) (not e!1445219))))

(assert (=> d!668925 (= res!965049 (semiInverseModEq!1714 (toChars!5860 (transformation!4259 otherR!12)) (toValue!6001 (transformation!4259 otherR!12))))))

(assert (=> d!668925 (= (inv!36328 (transformation!4259 otherR!12)) e!1445219)))

(declare-fun b!2257394 () Bool)

(assert (=> b!2257394 (= e!1445219 (equivClasses!1633 (toChars!5860 (transformation!4259 otherR!12)) (toValue!6001 (transformation!4259 otherR!12))))))

(assert (= (and d!668925 res!965049) b!2257394))

(declare-fun m!2687629 () Bool)

(assert (=> d!668925 m!2687629))

(declare-fun m!2687631 () Bool)

(assert (=> b!2257394 m!2687631))

(assert (=> b!2257078 d!668925))

(declare-fun d!668927 () Bool)

(declare-fun res!965054 () Bool)

(declare-fun e!1445222 () Bool)

(assert (=> d!668927 (=> (not res!965054) (not e!1445222))))

(declare-fun isEmpty!15138 (List!26892) Bool)

(assert (=> d!668927 (= res!965054 (not (isEmpty!15138 (originalCharacters!5029 (h!32200 tokens!456)))))))

(assert (=> d!668927 (= (inv!36327 (h!32200 tokens!456)) e!1445222)))

(declare-fun b!2257399 () Bool)

(declare-fun res!965055 () Bool)

(assert (=> b!2257399 (=> (not res!965055) (not e!1445222))))

(declare-fun dynLambda!11625 (Int TokenValue!4421) BalanceConc!17060)

(assert (=> b!2257399 (= res!965055 (= (originalCharacters!5029 (h!32200 tokens!456)) (list!10314 (dynLambda!11625 (toChars!5860 (transformation!4259 (rule!6565 (h!32200 tokens!456)))) (value!135201 (h!32200 tokens!456))))))))

(declare-fun b!2257400 () Bool)

(assert (=> b!2257400 (= e!1445222 (= (size!20983 (h!32200 tokens!456)) (size!20986 (originalCharacters!5029 (h!32200 tokens!456)))))))

(assert (= (and d!668927 res!965054) b!2257399))

(assert (= (and b!2257399 res!965055) b!2257400))

(declare-fun b_lambda!72075 () Bool)

(assert (=> (not b_lambda!72075) (not b!2257399)))

(declare-fun t!201340 () Bool)

(declare-fun tb!133767 () Bool)

(assert (=> (and b!2257069 (= (toChars!5860 (transformation!4259 r!2363)) (toChars!5860 (transformation!4259 (rule!6565 (h!32200 tokens!456))))) t!201340) tb!133767))

(declare-fun b!2257405 () Bool)

(declare-fun e!1445225 () Bool)

(declare-fun tp!713659 () Bool)

(declare-fun inv!36331 (Conc!8666) Bool)

(assert (=> b!2257405 (= e!1445225 (and (inv!36331 (c!358640 (dynLambda!11625 (toChars!5860 (transformation!4259 (rule!6565 (h!32200 tokens!456)))) (value!135201 (h!32200 tokens!456))))) tp!713659))))

(declare-fun result!163072 () Bool)

(declare-fun inv!36332 (BalanceConc!17060) Bool)

(assert (=> tb!133767 (= result!163072 (and (inv!36332 (dynLambda!11625 (toChars!5860 (transformation!4259 (rule!6565 (h!32200 tokens!456)))) (value!135201 (h!32200 tokens!456)))) e!1445225))))

(assert (= tb!133767 b!2257405))

(declare-fun m!2687633 () Bool)

(assert (=> b!2257405 m!2687633))

(declare-fun m!2687635 () Bool)

(assert (=> tb!133767 m!2687635))

(assert (=> b!2257399 t!201340))

(declare-fun b_and!177241 () Bool)

(assert (= b_and!177203 (and (=> t!201340 result!163072) b_and!177241)))

(declare-fun t!201342 () Bool)

(declare-fun tb!133769 () Bool)

(assert (=> (and b!2257090 (= (toChars!5860 (transformation!4259 (rule!6565 (h!32200 tokens!456)))) (toChars!5860 (transformation!4259 (rule!6565 (h!32200 tokens!456))))) t!201342) tb!133769))

(declare-fun result!163076 () Bool)

(assert (= result!163076 result!163072))

(assert (=> b!2257399 t!201342))

(declare-fun b_and!177243 () Bool)

(assert (= b_and!177207 (and (=> t!201342 result!163076) b_and!177243)))

(declare-fun t!201344 () Bool)

(declare-fun tb!133771 () Bool)

(assert (=> (and b!2257066 (= (toChars!5860 (transformation!4259 (h!32201 rules!1750))) (toChars!5860 (transformation!4259 (rule!6565 (h!32200 tokens!456))))) t!201344) tb!133771))

(declare-fun result!163078 () Bool)

(assert (= result!163078 result!163072))

(assert (=> b!2257399 t!201344))

(declare-fun b_and!177245 () Bool)

(assert (= b_and!177211 (and (=> t!201344 result!163078) b_and!177245)))

(declare-fun t!201346 () Bool)

(declare-fun tb!133773 () Bool)

(assert (=> (and b!2257082 (= (toChars!5860 (transformation!4259 otherR!12)) (toChars!5860 (transformation!4259 (rule!6565 (h!32200 tokens!456))))) t!201346) tb!133773))

(declare-fun result!163080 () Bool)

(assert (= result!163080 result!163072))

(assert (=> b!2257399 t!201346))

(declare-fun b_and!177247 () Bool)

(assert (= b_and!177215 (and (=> t!201346 result!163080) b_and!177247)))

(declare-fun m!2687637 () Bool)

(assert (=> d!668927 m!2687637))

(declare-fun m!2687639 () Bool)

(assert (=> b!2257399 m!2687639))

(assert (=> b!2257399 m!2687639))

(declare-fun m!2687641 () Bool)

(assert (=> b!2257399 m!2687641))

(declare-fun m!2687643 () Bool)

(assert (=> b!2257400 m!2687643))

(assert (=> b!2257057 d!668927))

(declare-fun d!668929 () Bool)

(declare-fun res!965060 () Bool)

(declare-fun e!1445228 () Bool)

(assert (=> d!668929 (=> (not res!965060) (not e!1445228))))

(declare-fun validRegex!2470 (Regex!6607) Bool)

(assert (=> d!668929 (= res!965060 (validRegex!2470 (regex!4259 r!2363)))))

(assert (=> d!668929 (= (ruleValid!1351 thiss!16613 r!2363) e!1445228)))

(declare-fun b!2257410 () Bool)

(declare-fun res!965061 () Bool)

(assert (=> b!2257410 (=> (not res!965061) (not e!1445228))))

(declare-fun nullable!1812 (Regex!6607) Bool)

(assert (=> b!2257410 (= res!965061 (not (nullable!1812 (regex!4259 r!2363))))))

(declare-fun b!2257411 () Bool)

(assert (=> b!2257411 (= e!1445228 (not (= (tag!4749 r!2363) (String!29210 ""))))))

(assert (= (and d!668929 res!965060) b!2257410))

(assert (= (and b!2257410 res!965061) b!2257411))

(declare-fun m!2687645 () Bool)

(assert (=> d!668929 m!2687645))

(declare-fun m!2687647 () Bool)

(assert (=> b!2257410 m!2687647))

(assert (=> b!2257089 d!668929))

(declare-fun d!668931 () Bool)

(assert (=> d!668931 (ruleValid!1351 thiss!16613 r!2363)))

(declare-fun lt!839051 () Unit!39722)

(declare-fun choose!13204 (LexerInterface!3856 Rule!8318 List!26894) Unit!39722)

(assert (=> d!668931 (= lt!839051 (choose!13204 thiss!16613 r!2363 rules!1750))))

(assert (=> d!668931 (contains!4611 rules!1750 r!2363)))

(assert (=> d!668931 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!758 thiss!16613 r!2363 rules!1750) lt!839051)))

(declare-fun bs!455278 () Bool)

(assert (= bs!455278 d!668931))

(assert (=> bs!455278 m!2687359))

(declare-fun m!2687649 () Bool)

(assert (=> bs!455278 m!2687649))

(assert (=> bs!455278 m!2687317))

(assert (=> b!2257089 d!668931))

(declare-fun b!2257440 () Bool)

(declare-fun e!1445244 () Bool)

(declare-fun derivativeStep!1474 (Regex!6607 C!13360) Regex!6607)

(assert (=> b!2257440 (= e!1445244 (matchR!2868 (derivativeStep!1474 (regex!4259 r!2363) (head!4834 (list!10314 (charsOf!2647 (head!4832 tokens!456))))) (tail!3255 (list!10314 (charsOf!2647 (head!4832 tokens!456))))))))

(declare-fun b!2257441 () Bool)

(declare-fun res!965081 () Bool)

(declare-fun e!1445243 () Bool)

(assert (=> b!2257441 (=> res!965081 e!1445243)))

(assert (=> b!2257441 (= res!965081 (not ((_ is ElementMatch!6607) (regex!4259 r!2363))))))

(declare-fun e!1445245 () Bool)

(assert (=> b!2257441 (= e!1445245 e!1445243)))

(declare-fun b!2257442 () Bool)

(declare-fun e!1445249 () Bool)

(declare-fun e!1445247 () Bool)

(assert (=> b!2257442 (= e!1445249 e!1445247)))

(declare-fun res!965080 () Bool)

(assert (=> b!2257442 (=> res!965080 e!1445247)))

(declare-fun call!135721 () Bool)

(assert (=> b!2257442 (= res!965080 call!135721)))

(declare-fun b!2257443 () Bool)

(declare-fun e!1445248 () Bool)

(declare-fun lt!839054 () Bool)

(assert (=> b!2257443 (= e!1445248 (= lt!839054 call!135721))))

(declare-fun b!2257444 () Bool)

(declare-fun res!965084 () Bool)

(declare-fun e!1445246 () Bool)

(assert (=> b!2257444 (=> (not res!965084) (not e!1445246))))

(assert (=> b!2257444 (= res!965084 (not call!135721))))

(declare-fun b!2257445 () Bool)

(assert (=> b!2257445 (= e!1445243 e!1445249)))

(declare-fun res!965078 () Bool)

(assert (=> b!2257445 (=> (not res!965078) (not e!1445249))))

(assert (=> b!2257445 (= res!965078 (not lt!839054))))

(declare-fun b!2257446 () Bool)

(assert (=> b!2257446 (= e!1445247 (not (= (head!4834 (list!10314 (charsOf!2647 (head!4832 tokens!456)))) (c!358641 (regex!4259 r!2363)))))))

(declare-fun b!2257447 () Bool)

(declare-fun res!965083 () Bool)

(assert (=> b!2257447 (=> res!965083 e!1445247)))

(assert (=> b!2257447 (= res!965083 (not (isEmpty!15138 (tail!3255 (list!10314 (charsOf!2647 (head!4832 tokens!456)))))))))

(declare-fun b!2257449 () Bool)

(declare-fun res!965082 () Bool)

(assert (=> b!2257449 (=> (not res!965082) (not e!1445246))))

(assert (=> b!2257449 (= res!965082 (isEmpty!15138 (tail!3255 (list!10314 (charsOf!2647 (head!4832 tokens!456))))))))

(declare-fun b!2257450 () Bool)

(assert (=> b!2257450 (= e!1445244 (nullable!1812 (regex!4259 r!2363)))))

(declare-fun b!2257451 () Bool)

(declare-fun res!965085 () Bool)

(assert (=> b!2257451 (=> res!965085 e!1445243)))

(assert (=> b!2257451 (= res!965085 e!1445246)))

(declare-fun res!965079 () Bool)

(assert (=> b!2257451 (=> (not res!965079) (not e!1445246))))

(assert (=> b!2257451 (= res!965079 lt!839054)))

(declare-fun b!2257448 () Bool)

(assert (=> b!2257448 (= e!1445246 (= (head!4834 (list!10314 (charsOf!2647 (head!4832 tokens!456)))) (c!358641 (regex!4259 r!2363))))))

(declare-fun d!668933 () Bool)

(assert (=> d!668933 e!1445248))

(declare-fun c!358698 () Bool)

(assert (=> d!668933 (= c!358698 ((_ is EmptyExpr!6607) (regex!4259 r!2363)))))

(assert (=> d!668933 (= lt!839054 e!1445244)))

(declare-fun c!358697 () Bool)

(assert (=> d!668933 (= c!358697 (isEmpty!15138 (list!10314 (charsOf!2647 (head!4832 tokens!456)))))))

(assert (=> d!668933 (validRegex!2470 (regex!4259 r!2363))))

(assert (=> d!668933 (= (matchR!2868 (regex!4259 r!2363) (list!10314 (charsOf!2647 (head!4832 tokens!456)))) lt!839054)))

(declare-fun b!2257452 () Bool)

(assert (=> b!2257452 (= e!1445248 e!1445245)))

(declare-fun c!358696 () Bool)

(assert (=> b!2257452 (= c!358696 ((_ is EmptyLang!6607) (regex!4259 r!2363)))))

(declare-fun b!2257453 () Bool)

(assert (=> b!2257453 (= e!1445245 (not lt!839054))))

(declare-fun bm!135716 () Bool)

(assert (=> bm!135716 (= call!135721 (isEmpty!15138 (list!10314 (charsOf!2647 (head!4832 tokens!456)))))))

(assert (= (and d!668933 c!358697) b!2257450))

(assert (= (and d!668933 (not c!358697)) b!2257440))

(assert (= (and d!668933 c!358698) b!2257443))

(assert (= (and d!668933 (not c!358698)) b!2257452))

(assert (= (and b!2257452 c!358696) b!2257453))

(assert (= (and b!2257452 (not c!358696)) b!2257441))

(assert (= (and b!2257441 (not res!965081)) b!2257451))

(assert (= (and b!2257451 res!965079) b!2257444))

(assert (= (and b!2257444 res!965084) b!2257449))

(assert (= (and b!2257449 res!965082) b!2257448))

(assert (= (and b!2257451 (not res!965085)) b!2257445))

(assert (= (and b!2257445 res!965078) b!2257442))

(assert (= (and b!2257442 (not res!965080)) b!2257447))

(assert (= (and b!2257447 (not res!965083)) b!2257446))

(assert (= (or b!2257443 b!2257442 b!2257444) bm!135716))

(assert (=> b!2257450 m!2687647))

(assert (=> bm!135716 m!2687367))

(declare-fun m!2687651 () Bool)

(assert (=> bm!135716 m!2687651))

(assert (=> b!2257440 m!2687367))

(declare-fun m!2687653 () Bool)

(assert (=> b!2257440 m!2687653))

(assert (=> b!2257440 m!2687653))

(declare-fun m!2687655 () Bool)

(assert (=> b!2257440 m!2687655))

(assert (=> b!2257440 m!2687367))

(declare-fun m!2687657 () Bool)

(assert (=> b!2257440 m!2687657))

(assert (=> b!2257440 m!2687655))

(assert (=> b!2257440 m!2687657))

(declare-fun m!2687659 () Bool)

(assert (=> b!2257440 m!2687659))

(assert (=> d!668933 m!2687367))

(assert (=> d!668933 m!2687651))

(assert (=> d!668933 m!2687645))

(assert (=> b!2257449 m!2687367))

(assert (=> b!2257449 m!2687657))

(assert (=> b!2257449 m!2687657))

(declare-fun m!2687661 () Bool)

(assert (=> b!2257449 m!2687661))

(assert (=> b!2257448 m!2687367))

(assert (=> b!2257448 m!2687653))

(assert (=> b!2257446 m!2687367))

(assert (=> b!2257446 m!2687653))

(assert (=> b!2257447 m!2687367))

(assert (=> b!2257447 m!2687657))

(assert (=> b!2257447 m!2687657))

(assert (=> b!2257447 m!2687661))

(assert (=> b!2257088 d!668933))

(declare-fun d!668935 () Bool)

(assert (=> d!668935 (= (list!10314 (charsOf!2647 (head!4832 tokens!456))) (list!10317 (c!358640 (charsOf!2647 (head!4832 tokens!456)))))))

(declare-fun bs!455279 () Bool)

(assert (= bs!455279 d!668935))

(declare-fun m!2687663 () Bool)

(assert (=> bs!455279 m!2687663))

(assert (=> b!2257088 d!668935))

(declare-fun d!668937 () Bool)

(declare-fun lt!839057 () BalanceConc!17060)

(assert (=> d!668937 (= (list!10314 lt!839057) (originalCharacters!5029 (head!4832 tokens!456)))))

(assert (=> d!668937 (= lt!839057 (dynLambda!11625 (toChars!5860 (transformation!4259 (rule!6565 (head!4832 tokens!456)))) (value!135201 (head!4832 tokens!456))))))

(assert (=> d!668937 (= (charsOf!2647 (head!4832 tokens!456)) lt!839057)))

(declare-fun b_lambda!72077 () Bool)

(assert (=> (not b_lambda!72077) (not d!668937)))

(declare-fun t!201348 () Bool)

(declare-fun tb!133775 () Bool)

(assert (=> (and b!2257069 (= (toChars!5860 (transformation!4259 r!2363)) (toChars!5860 (transformation!4259 (rule!6565 (head!4832 tokens!456))))) t!201348) tb!133775))

(declare-fun b!2257454 () Bool)

(declare-fun e!1445250 () Bool)

(declare-fun tp!713660 () Bool)

(assert (=> b!2257454 (= e!1445250 (and (inv!36331 (c!358640 (dynLambda!11625 (toChars!5860 (transformation!4259 (rule!6565 (head!4832 tokens!456)))) (value!135201 (head!4832 tokens!456))))) tp!713660))))

(declare-fun result!163082 () Bool)

(assert (=> tb!133775 (= result!163082 (and (inv!36332 (dynLambda!11625 (toChars!5860 (transformation!4259 (rule!6565 (head!4832 tokens!456)))) (value!135201 (head!4832 tokens!456)))) e!1445250))))

(assert (= tb!133775 b!2257454))

(declare-fun m!2687665 () Bool)

(assert (=> b!2257454 m!2687665))

(declare-fun m!2687667 () Bool)

(assert (=> tb!133775 m!2687667))

(assert (=> d!668937 t!201348))

(declare-fun b_and!177249 () Bool)

(assert (= b_and!177241 (and (=> t!201348 result!163082) b_and!177249)))

(declare-fun t!201350 () Bool)

(declare-fun tb!133777 () Bool)

(assert (=> (and b!2257090 (= (toChars!5860 (transformation!4259 (rule!6565 (h!32200 tokens!456)))) (toChars!5860 (transformation!4259 (rule!6565 (head!4832 tokens!456))))) t!201350) tb!133777))

(declare-fun result!163084 () Bool)

(assert (= result!163084 result!163082))

(assert (=> d!668937 t!201350))

(declare-fun b_and!177251 () Bool)

(assert (= b_and!177243 (and (=> t!201350 result!163084) b_and!177251)))

(declare-fun tb!133779 () Bool)

(declare-fun t!201352 () Bool)

(assert (=> (and b!2257066 (= (toChars!5860 (transformation!4259 (h!32201 rules!1750))) (toChars!5860 (transformation!4259 (rule!6565 (head!4832 tokens!456))))) t!201352) tb!133779))

(declare-fun result!163086 () Bool)

(assert (= result!163086 result!163082))

(assert (=> d!668937 t!201352))

(declare-fun b_and!177253 () Bool)

(assert (= b_and!177245 (and (=> t!201352 result!163086) b_and!177253)))

(declare-fun tb!133781 () Bool)

(declare-fun t!201354 () Bool)

(assert (=> (and b!2257082 (= (toChars!5860 (transformation!4259 otherR!12)) (toChars!5860 (transformation!4259 (rule!6565 (head!4832 tokens!456))))) t!201354) tb!133781))

(declare-fun result!163088 () Bool)

(assert (= result!163088 result!163082))

(assert (=> d!668937 t!201354))

(declare-fun b_and!177255 () Bool)

(assert (= b_and!177247 (and (=> t!201354 result!163088) b_and!177255)))

(declare-fun m!2687669 () Bool)

(assert (=> d!668937 m!2687669))

(declare-fun m!2687671 () Bool)

(assert (=> d!668937 m!2687671))

(assert (=> b!2257088 d!668937))

(declare-fun d!668939 () Bool)

(assert (=> d!668939 (= (head!4832 tokens!456) (h!32200 tokens!456))))

(assert (=> b!2257088 d!668939))

(declare-fun b!2257455 () Bool)

(declare-fun e!1445252 () Bool)

(assert (=> b!2257455 (= e!1445252 (matchR!2868 (derivativeStep!1474 (regex!4259 otherR!12) (head!4834 otherP!12)) (tail!3255 otherP!12)))))

(declare-fun b!2257456 () Bool)

(declare-fun res!965089 () Bool)

(declare-fun e!1445251 () Bool)

(assert (=> b!2257456 (=> res!965089 e!1445251)))

(assert (=> b!2257456 (= res!965089 (not ((_ is ElementMatch!6607) (regex!4259 otherR!12))))))

(declare-fun e!1445253 () Bool)

(assert (=> b!2257456 (= e!1445253 e!1445251)))

(declare-fun b!2257457 () Bool)

(declare-fun e!1445257 () Bool)

(declare-fun e!1445255 () Bool)

(assert (=> b!2257457 (= e!1445257 e!1445255)))

(declare-fun res!965088 () Bool)

(assert (=> b!2257457 (=> res!965088 e!1445255)))

(declare-fun call!135722 () Bool)

(assert (=> b!2257457 (= res!965088 call!135722)))

(declare-fun b!2257458 () Bool)

(declare-fun e!1445256 () Bool)

(declare-fun lt!839058 () Bool)

(assert (=> b!2257458 (= e!1445256 (= lt!839058 call!135722))))

(declare-fun b!2257459 () Bool)

(declare-fun res!965092 () Bool)

(declare-fun e!1445254 () Bool)

(assert (=> b!2257459 (=> (not res!965092) (not e!1445254))))

(assert (=> b!2257459 (= res!965092 (not call!135722))))

(declare-fun b!2257460 () Bool)

(assert (=> b!2257460 (= e!1445251 e!1445257)))

(declare-fun res!965086 () Bool)

(assert (=> b!2257460 (=> (not res!965086) (not e!1445257))))

(assert (=> b!2257460 (= res!965086 (not lt!839058))))

(declare-fun b!2257461 () Bool)

(assert (=> b!2257461 (= e!1445255 (not (= (head!4834 otherP!12) (c!358641 (regex!4259 otherR!12)))))))

(declare-fun b!2257462 () Bool)

(declare-fun res!965091 () Bool)

(assert (=> b!2257462 (=> res!965091 e!1445255)))

(assert (=> b!2257462 (= res!965091 (not (isEmpty!15138 (tail!3255 otherP!12))))))

(declare-fun b!2257464 () Bool)

(declare-fun res!965090 () Bool)

(assert (=> b!2257464 (=> (not res!965090) (not e!1445254))))

(assert (=> b!2257464 (= res!965090 (isEmpty!15138 (tail!3255 otherP!12)))))

(declare-fun b!2257465 () Bool)

(assert (=> b!2257465 (= e!1445252 (nullable!1812 (regex!4259 otherR!12)))))

(declare-fun b!2257466 () Bool)

(declare-fun res!965093 () Bool)

(assert (=> b!2257466 (=> res!965093 e!1445251)))

(assert (=> b!2257466 (= res!965093 e!1445254)))

(declare-fun res!965087 () Bool)

(assert (=> b!2257466 (=> (not res!965087) (not e!1445254))))

(assert (=> b!2257466 (= res!965087 lt!839058)))

(declare-fun b!2257463 () Bool)

(assert (=> b!2257463 (= e!1445254 (= (head!4834 otherP!12) (c!358641 (regex!4259 otherR!12))))))

(declare-fun d!668941 () Bool)

(assert (=> d!668941 e!1445256))

(declare-fun c!358701 () Bool)

(assert (=> d!668941 (= c!358701 ((_ is EmptyExpr!6607) (regex!4259 otherR!12)))))

(assert (=> d!668941 (= lt!839058 e!1445252)))

(declare-fun c!358700 () Bool)

(assert (=> d!668941 (= c!358700 (isEmpty!15138 otherP!12))))

(assert (=> d!668941 (validRegex!2470 (regex!4259 otherR!12))))

(assert (=> d!668941 (= (matchR!2868 (regex!4259 otherR!12) otherP!12) lt!839058)))

(declare-fun b!2257467 () Bool)

(assert (=> b!2257467 (= e!1445256 e!1445253)))

(declare-fun c!358699 () Bool)

(assert (=> b!2257467 (= c!358699 ((_ is EmptyLang!6607) (regex!4259 otherR!12)))))

(declare-fun b!2257468 () Bool)

(assert (=> b!2257468 (= e!1445253 (not lt!839058))))

(declare-fun bm!135717 () Bool)

(assert (=> bm!135717 (= call!135722 (isEmpty!15138 otherP!12))))

(assert (= (and d!668941 c!358700) b!2257465))

(assert (= (and d!668941 (not c!358700)) b!2257455))

(assert (= (and d!668941 c!358701) b!2257458))

(assert (= (and d!668941 (not c!358701)) b!2257467))

(assert (= (and b!2257467 c!358699) b!2257468))

(assert (= (and b!2257467 (not c!358699)) b!2257456))

(assert (= (and b!2257456 (not res!965089)) b!2257466))

(assert (= (and b!2257466 res!965087) b!2257459))

(assert (= (and b!2257459 res!965092) b!2257464))

(assert (= (and b!2257464 res!965090) b!2257463))

(assert (= (and b!2257466 (not res!965093)) b!2257460))

(assert (= (and b!2257460 res!965086) b!2257457))

(assert (= (and b!2257457 (not res!965088)) b!2257462))

(assert (= (and b!2257462 (not res!965091)) b!2257461))

(assert (= (or b!2257458 b!2257457 b!2257459) bm!135717))

(declare-fun m!2687673 () Bool)

(assert (=> b!2257465 m!2687673))

(declare-fun m!2687675 () Bool)

(assert (=> bm!135717 m!2687675))

(assert (=> b!2257455 m!2687395))

(assert (=> b!2257455 m!2687395))

(declare-fun m!2687677 () Bool)

(assert (=> b!2257455 m!2687677))

(assert (=> b!2257455 m!2687387))

(assert (=> b!2257455 m!2687677))

(assert (=> b!2257455 m!2687387))

(declare-fun m!2687679 () Bool)

(assert (=> b!2257455 m!2687679))

(assert (=> d!668941 m!2687675))

(declare-fun m!2687681 () Bool)

(assert (=> d!668941 m!2687681))

(assert (=> b!2257464 m!2687387))

(assert (=> b!2257464 m!2687387))

(declare-fun m!2687683 () Bool)

(assert (=> b!2257464 m!2687683))

(assert (=> b!2257463 m!2687395))

(assert (=> b!2257461 m!2687395))

(assert (=> b!2257462 m!2687387))

(assert (=> b!2257462 m!2687387))

(assert (=> b!2257462 m!2687683))

(assert (=> b!2257067 d!668941))

(declare-fun d!668943 () Bool)

(assert (=> d!668943 (not (matchR!2868 (regex!4259 otherR!12) otherP!12))))

(declare-fun lt!839061 () Unit!39722)

(declare-fun choose!13205 (LexerInterface!3856 Rule!8318 List!26892 List!26892) Unit!39722)

(assert (=> d!668943 (= lt!839061 (choose!13205 thiss!16613 otherR!12 otherP!12 input!1722))))

(assert (=> d!668943 (isPrefix!2249 otherP!12 input!1722)))

(assert (=> d!668943 (= (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!399 thiss!16613 otherR!12 otherP!12 input!1722) lt!839061)))

(declare-fun bs!455280 () Bool)

(assert (= bs!455280 d!668943))

(assert (=> bs!455280 m!2687313))

(declare-fun m!2687685 () Bool)

(assert (=> bs!455280 m!2687685))

(assert (=> bs!455280 m!2687365))

(assert (=> b!2257067 d!668943))

(declare-fun d!668945 () Bool)

(declare-fun lt!839064 () Int)

(assert (=> d!668945 (= lt!839064 (size!20986 (list!10314 (charsOf!2647 (head!4832 tokens!456)))))))

(declare-fun size!20990 (Conc!8666) Int)

(assert (=> d!668945 (= lt!839064 (size!20990 (c!358640 (charsOf!2647 (head!4832 tokens!456)))))))

(assert (=> d!668945 (= (size!20985 (charsOf!2647 (head!4832 tokens!456))) lt!839064)))

(declare-fun bs!455281 () Bool)

(assert (= bs!455281 d!668945))

(assert (=> bs!455281 m!2687299))

(assert (=> bs!455281 m!2687367))

(assert (=> bs!455281 m!2687367))

(declare-fun m!2687687 () Bool)

(assert (=> bs!455281 m!2687687))

(declare-fun m!2687689 () Bool)

(assert (=> bs!455281 m!2687689))

(assert (=> b!2257076 d!668945))

(assert (=> b!2257076 d!668937))

(assert (=> b!2257076 d!668939))

(declare-fun d!668947 () Bool)

(declare-fun lt!839067 () Int)

(assert (=> d!668947 (>= lt!839067 0)))

(declare-fun e!1445260 () Int)

(assert (=> d!668947 (= lt!839067 e!1445260)))

(declare-fun c!358704 () Bool)

(assert (=> d!668947 (= c!358704 ((_ is Nil!26798) otherP!12))))

(assert (=> d!668947 (= (size!20986 otherP!12) lt!839067)))

(declare-fun b!2257473 () Bool)

(assert (=> b!2257473 (= e!1445260 0)))

(declare-fun b!2257474 () Bool)

(assert (=> b!2257474 (= e!1445260 (+ 1 (size!20986 (t!201312 otherP!12))))))

(assert (= (and d!668947 c!358704) b!2257473))

(assert (= (and d!668947 (not c!358704)) b!2257474))

(declare-fun m!2687691 () Bool)

(assert (=> b!2257474 m!2687691))

(assert (=> b!2257076 d!668947))

(declare-fun d!668949 () Bool)

(declare-fun lt!839068 () Bool)

(assert (=> d!668949 (= lt!839068 (select (content!3568 rules!1750) r!2363))))

(declare-fun e!1445261 () Bool)

(assert (=> d!668949 (= lt!839068 e!1445261)))

(declare-fun res!965094 () Bool)

(assert (=> d!668949 (=> (not res!965094) (not e!1445261))))

(assert (=> d!668949 (= res!965094 ((_ is Cons!26800) rules!1750))))

(assert (=> d!668949 (= (contains!4611 rules!1750 r!2363) lt!839068)))

(declare-fun b!2257475 () Bool)

(declare-fun e!1445262 () Bool)

(assert (=> b!2257475 (= e!1445261 e!1445262)))

(declare-fun res!965095 () Bool)

(assert (=> b!2257475 (=> res!965095 e!1445262)))

(assert (=> b!2257475 (= res!965095 (= (h!32201 rules!1750) r!2363))))

(declare-fun b!2257476 () Bool)

(assert (=> b!2257476 (= e!1445262 (contains!4611 (t!201314 rules!1750) r!2363))))

(assert (= (and d!668949 res!965094) b!2257475))

(assert (= (and b!2257475 (not res!965095)) b!2257476))

(assert (=> d!668949 m!2687381))

(declare-fun m!2687693 () Bool)

(assert (=> d!668949 m!2687693))

(declare-fun m!2687695 () Bool)

(assert (=> b!2257476 m!2687695))

(assert (=> b!2257070 d!668949))

(declare-fun d!668951 () Bool)

(assert (=> d!668951 (= (isEmpty!15134 lt!838969) (not ((_ is Some!5234) lt!838969)))))

(assert (=> b!2257081 d!668951))

(declare-fun d!668953 () Bool)

(declare-fun e!1445273 () Bool)

(assert (=> d!668953 e!1445273))

(declare-fun res!965115 () Bool)

(assert (=> d!668953 (=> res!965115 e!1445273)))

(declare-fun lt!839081 () Option!5235)

(assert (=> d!668953 (= res!965115 (isEmpty!15134 lt!839081))))

(declare-fun e!1445274 () Option!5235)

(assert (=> d!668953 (= lt!839081 e!1445274)))

(declare-fun c!358707 () Bool)

(declare-datatypes ((tuple2!26374 0))(
  ( (tuple2!26375 (_1!15697 List!26892) (_2!15697 List!26892)) )
))
(declare-fun lt!839080 () tuple2!26374)

(assert (=> d!668953 (= c!358707 (isEmpty!15138 (_1!15697 lt!839080)))))

(declare-fun findLongestMatch!622 (Regex!6607 List!26892) tuple2!26374)

(assert (=> d!668953 (= lt!839080 (findLongestMatch!622 (regex!4259 otherR!12) input!1722))))

(assert (=> d!668953 (ruleValid!1351 thiss!16613 otherR!12)))

(assert (=> d!668953 (= (maxPrefixOneRule!1334 thiss!16613 otherR!12 input!1722) lt!839081)))

(declare-fun b!2257495 () Bool)

(declare-fun res!965112 () Bool)

(declare-fun e!1445271 () Bool)

(assert (=> b!2257495 (=> (not res!965112) (not e!1445271))))

(declare-fun get!8088 (Option!5235) tuple2!26370)

(assert (=> b!2257495 (= res!965112 (< (size!20986 (_2!15695 (get!8088 lt!839081))) (size!20986 input!1722)))))

(declare-fun b!2257496 () Bool)

(declare-fun apply!6571 (TokenValueInjection!8382 BalanceConc!17060) TokenValue!4421)

(assert (=> b!2257496 (= e!1445274 (Some!5234 (tuple2!26371 (Token!7997 (apply!6571 (transformation!4259 otherR!12) (seqFromList!2963 (_1!15697 lt!839080))) otherR!12 (size!20985 (seqFromList!2963 (_1!15697 lt!839080))) (_1!15697 lt!839080)) (_2!15697 lt!839080))))))

(declare-fun lt!839083 () Unit!39722)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!666 (Regex!6607 List!26892) Unit!39722)

(assert (=> b!2257496 (= lt!839083 (longestMatchIsAcceptedByMatchOrIsEmpty!666 (regex!4259 otherR!12) input!1722))))

(declare-fun res!965114 () Bool)

(declare-fun findLongestMatchInner!693 (Regex!6607 List!26892 Int List!26892 List!26892 Int) tuple2!26374)

(assert (=> b!2257496 (= res!965114 (isEmpty!15138 (_1!15697 (findLongestMatchInner!693 (regex!4259 otherR!12) Nil!26798 (size!20986 Nil!26798) input!1722 input!1722 (size!20986 input!1722)))))))

(declare-fun e!1445272 () Bool)

(assert (=> b!2257496 (=> res!965114 e!1445272)))

(assert (=> b!2257496 e!1445272))

(declare-fun lt!839082 () Unit!39722)

(assert (=> b!2257496 (= lt!839082 lt!839083)))

(declare-fun lt!839079 () Unit!39722)

(declare-fun lemmaSemiInverse!1016 (TokenValueInjection!8382 BalanceConc!17060) Unit!39722)

(assert (=> b!2257496 (= lt!839079 (lemmaSemiInverse!1016 (transformation!4259 otherR!12) (seqFromList!2963 (_1!15697 lt!839080))))))

(declare-fun b!2257497 () Bool)

(declare-fun res!965113 () Bool)

(assert (=> b!2257497 (=> (not res!965113) (not e!1445271))))

(declare-fun ++!6523 (List!26892 List!26892) List!26892)

(assert (=> b!2257497 (= res!965113 (= (++!6523 (list!10314 (charsOf!2647 (_1!15695 (get!8088 lt!839081)))) (_2!15695 (get!8088 lt!839081))) input!1722))))

(declare-fun b!2257498 () Bool)

(declare-fun res!965111 () Bool)

(assert (=> b!2257498 (=> (not res!965111) (not e!1445271))))

(assert (=> b!2257498 (= res!965111 (= (rule!6565 (_1!15695 (get!8088 lt!839081))) otherR!12))))

(declare-fun b!2257499 () Bool)

(assert (=> b!2257499 (= e!1445271 (= (size!20983 (_1!15695 (get!8088 lt!839081))) (size!20986 (originalCharacters!5029 (_1!15695 (get!8088 lt!839081))))))))

(declare-fun b!2257500 () Bool)

(assert (=> b!2257500 (= e!1445274 None!5234)))

(declare-fun b!2257501 () Bool)

(assert (=> b!2257501 (= e!1445273 e!1445271)))

(declare-fun res!965116 () Bool)

(assert (=> b!2257501 (=> (not res!965116) (not e!1445271))))

(assert (=> b!2257501 (= res!965116 (matchR!2868 (regex!4259 otherR!12) (list!10314 (charsOf!2647 (_1!15695 (get!8088 lt!839081))))))))

(declare-fun b!2257502 () Bool)

(assert (=> b!2257502 (= e!1445272 (matchR!2868 (regex!4259 otherR!12) (_1!15697 (findLongestMatchInner!693 (regex!4259 otherR!12) Nil!26798 (size!20986 Nil!26798) input!1722 input!1722 (size!20986 input!1722)))))))

(declare-fun b!2257503 () Bool)

(declare-fun res!965110 () Bool)

(assert (=> b!2257503 (=> (not res!965110) (not e!1445271))))

(assert (=> b!2257503 (= res!965110 (= (value!135201 (_1!15695 (get!8088 lt!839081))) (apply!6571 (transformation!4259 (rule!6565 (_1!15695 (get!8088 lt!839081)))) (seqFromList!2963 (originalCharacters!5029 (_1!15695 (get!8088 lt!839081)))))))))

(assert (= (and d!668953 c!358707) b!2257500))

(assert (= (and d!668953 (not c!358707)) b!2257496))

(assert (= (and b!2257496 (not res!965114)) b!2257502))

(assert (= (and d!668953 (not res!965115)) b!2257501))

(assert (= (and b!2257501 res!965116) b!2257497))

(assert (= (and b!2257497 res!965113) b!2257495))

(assert (= (and b!2257495 res!965112) b!2257498))

(assert (= (and b!2257498 res!965111) b!2257503))

(assert (= (and b!2257503 res!965110) b!2257499))

(declare-fun m!2687697 () Bool)

(assert (=> b!2257495 m!2687697))

(declare-fun m!2687699 () Bool)

(assert (=> b!2257495 m!2687699))

(assert (=> b!2257495 m!2687393))

(assert (=> b!2257498 m!2687697))

(assert (=> b!2257497 m!2687697))

(declare-fun m!2687701 () Bool)

(assert (=> b!2257497 m!2687701))

(assert (=> b!2257497 m!2687701))

(declare-fun m!2687703 () Bool)

(assert (=> b!2257497 m!2687703))

(assert (=> b!2257497 m!2687703))

(declare-fun m!2687705 () Bool)

(assert (=> b!2257497 m!2687705))

(declare-fun m!2687707 () Bool)

(assert (=> b!2257496 m!2687707))

(assert (=> b!2257496 m!2687707))

(assert (=> b!2257496 m!2687393))

(declare-fun m!2687709 () Bool)

(assert (=> b!2257496 m!2687709))

(declare-fun m!2687711 () Bool)

(assert (=> b!2257496 m!2687711))

(assert (=> b!2257496 m!2687393))

(declare-fun m!2687713 () Bool)

(assert (=> b!2257496 m!2687713))

(assert (=> b!2257496 m!2687713))

(declare-fun m!2687715 () Bool)

(assert (=> b!2257496 m!2687715))

(assert (=> b!2257496 m!2687713))

(declare-fun m!2687717 () Bool)

(assert (=> b!2257496 m!2687717))

(assert (=> b!2257496 m!2687713))

(declare-fun m!2687719 () Bool)

(assert (=> b!2257496 m!2687719))

(declare-fun m!2687721 () Bool)

(assert (=> b!2257496 m!2687721))

(assert (=> b!2257501 m!2687697))

(assert (=> b!2257501 m!2687701))

(assert (=> b!2257501 m!2687701))

(assert (=> b!2257501 m!2687703))

(assert (=> b!2257501 m!2687703))

(declare-fun m!2687723 () Bool)

(assert (=> b!2257501 m!2687723))

(assert (=> b!2257502 m!2687707))

(assert (=> b!2257502 m!2687393))

(assert (=> b!2257502 m!2687707))

(assert (=> b!2257502 m!2687393))

(assert (=> b!2257502 m!2687709))

(declare-fun m!2687725 () Bool)

(assert (=> b!2257502 m!2687725))

(declare-fun m!2687727 () Bool)

(assert (=> d!668953 m!2687727))

(declare-fun m!2687729 () Bool)

(assert (=> d!668953 m!2687729))

(declare-fun m!2687731 () Bool)

(assert (=> d!668953 m!2687731))

(assert (=> d!668953 m!2687309))

(assert (=> b!2257503 m!2687697))

(declare-fun m!2687733 () Bool)

(assert (=> b!2257503 m!2687733))

(assert (=> b!2257503 m!2687733))

(declare-fun m!2687735 () Bool)

(assert (=> b!2257503 m!2687735))

(assert (=> b!2257499 m!2687697))

(declare-fun m!2687737 () Bool)

(assert (=> b!2257499 m!2687737))

(assert (=> b!2257081 d!668953))

(declare-fun d!668955 () Bool)

(assert (=> d!668955 (isEmpty!15134 (maxPrefixOneRule!1334 thiss!16613 otherR!12 input!1722))))

(declare-fun lt!839086 () Unit!39722)

(declare-fun choose!13206 (LexerInterface!3856 Rule!8318 List!26894 List!26892) Unit!39722)

(assert (=> d!668955 (= lt!839086 (choose!13206 thiss!16613 otherR!12 rules!1750 input!1722))))

(assert (=> d!668955 (not (isEmpty!15133 rules!1750))))

(assert (=> d!668955 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!407 thiss!16613 otherR!12 rules!1750 input!1722) lt!839086)))

(declare-fun bs!455282 () Bool)

(assert (= bs!455282 d!668955))

(assert (=> bs!455282 m!2687339))

(assert (=> bs!455282 m!2687339))

(declare-fun m!2687739 () Bool)

(assert (=> bs!455282 m!2687739))

(declare-fun m!2687741 () Bool)

(assert (=> bs!455282 m!2687741))

(assert (=> bs!455282 m!2687329))

(assert (=> b!2257081 d!668955))

(declare-fun d!668957 () Bool)

(assert (=> d!668957 (= (inv!36324 (tag!4749 (h!32201 rules!1750))) (= (mod (str.len (value!135200 (tag!4749 (h!32201 rules!1750)))) 2) 0))))

(assert (=> b!2257080 d!668957))

(declare-fun d!668959 () Bool)

(declare-fun res!965117 () Bool)

(declare-fun e!1445275 () Bool)

(assert (=> d!668959 (=> (not res!965117) (not e!1445275))))

(assert (=> d!668959 (= res!965117 (semiInverseModEq!1714 (toChars!5860 (transformation!4259 (h!32201 rules!1750))) (toValue!6001 (transformation!4259 (h!32201 rules!1750)))))))

(assert (=> d!668959 (= (inv!36328 (transformation!4259 (h!32201 rules!1750))) e!1445275)))

(declare-fun b!2257504 () Bool)

(assert (=> b!2257504 (= e!1445275 (equivClasses!1633 (toChars!5860 (transformation!4259 (h!32201 rules!1750))) (toValue!6001 (transformation!4259 (h!32201 rules!1750)))))))

(assert (= (and d!668959 res!965117) b!2257504))

(declare-fun m!2687743 () Bool)

(assert (=> d!668959 m!2687743))

(declare-fun m!2687745 () Bool)

(assert (=> b!2257504 m!2687745))

(assert (=> b!2257080 d!668959))

(declare-fun b!2257514 () Bool)

(declare-fun e!1445281 () Int)

(declare-fun e!1445282 () Int)

(assert (=> b!2257514 (= e!1445281 e!1445282)))

(declare-fun c!358712 () Bool)

(assert (=> b!2257514 (= c!358712 (and ((_ is Cons!26800) rules!1750) (not (= (h!32201 rules!1750) otherR!12))))))

(declare-fun b!2257515 () Bool)

(assert (=> b!2257515 (= e!1445282 (+ 1 (getIndex!280 (t!201314 rules!1750) otherR!12)))))

(declare-fun d!668961 () Bool)

(declare-fun lt!839089 () Int)

(assert (=> d!668961 (>= lt!839089 0)))

(assert (=> d!668961 (= lt!839089 e!1445281)))

(declare-fun c!358713 () Bool)

(assert (=> d!668961 (= c!358713 (and ((_ is Cons!26800) rules!1750) (= (h!32201 rules!1750) otherR!12)))))

(assert (=> d!668961 (contains!4611 rules!1750 otherR!12)))

(assert (=> d!668961 (= (getIndex!280 rules!1750 otherR!12) lt!839089)))

(declare-fun b!2257513 () Bool)

(assert (=> b!2257513 (= e!1445281 0)))

(declare-fun b!2257516 () Bool)

(assert (=> b!2257516 (= e!1445282 (- 1))))

(assert (= (and d!668961 c!358713) b!2257513))

(assert (= (and d!668961 (not c!358713)) b!2257514))

(assert (= (and b!2257514 c!358712) b!2257515))

(assert (= (and b!2257514 (not c!358712)) b!2257516))

(declare-fun m!2687747 () Bool)

(assert (=> b!2257515 m!2687747))

(assert (=> d!668961 m!2687343))

(assert (=> b!2257059 d!668961))

(declare-fun b!2257518 () Bool)

(declare-fun e!1445283 () Int)

(declare-fun e!1445284 () Int)

(assert (=> b!2257518 (= e!1445283 e!1445284)))

(declare-fun c!358714 () Bool)

(assert (=> b!2257518 (= c!358714 (and ((_ is Cons!26800) rules!1750) (not (= (h!32201 rules!1750) r!2363))))))

(declare-fun b!2257519 () Bool)

(assert (=> b!2257519 (= e!1445284 (+ 1 (getIndex!280 (t!201314 rules!1750) r!2363)))))

(declare-fun d!668963 () Bool)

(declare-fun lt!839090 () Int)

(assert (=> d!668963 (>= lt!839090 0)))

(assert (=> d!668963 (= lt!839090 e!1445283)))

(declare-fun c!358715 () Bool)

(assert (=> d!668963 (= c!358715 (and ((_ is Cons!26800) rules!1750) (= (h!32201 rules!1750) r!2363)))))

(assert (=> d!668963 (contains!4611 rules!1750 r!2363)))

(assert (=> d!668963 (= (getIndex!280 rules!1750 r!2363) lt!839090)))

(declare-fun b!2257517 () Bool)

(assert (=> b!2257517 (= e!1445283 0)))

(declare-fun b!2257520 () Bool)

(assert (=> b!2257520 (= e!1445284 (- 1))))

(assert (= (and d!668963 c!358715) b!2257517))

(assert (= (and d!668963 (not c!358715)) b!2257518))

(assert (= (and b!2257518 c!358714) b!2257519))

(assert (= (and b!2257518 (not c!358714)) b!2257520))

(declare-fun m!2687749 () Bool)

(assert (=> b!2257519 m!2687749))

(assert (=> d!668963 m!2687317))

(assert (=> b!2257059 d!668963))

(declare-fun d!668965 () Bool)

(declare-fun res!965118 () Bool)

(declare-fun e!1445285 () Bool)

(assert (=> d!668965 (=> (not res!965118) (not e!1445285))))

(assert (=> d!668965 (= res!965118 (validRegex!2470 (regex!4259 otherR!12)))))

(assert (=> d!668965 (= (ruleValid!1351 thiss!16613 otherR!12) e!1445285)))

(declare-fun b!2257521 () Bool)

(declare-fun res!965119 () Bool)

(assert (=> b!2257521 (=> (not res!965119) (not e!1445285))))

(assert (=> b!2257521 (= res!965119 (not (nullable!1812 (regex!4259 otherR!12))))))

(declare-fun b!2257522 () Bool)

(assert (=> b!2257522 (= e!1445285 (not (= (tag!4749 otherR!12) (String!29210 ""))))))

(assert (= (and d!668965 res!965118) b!2257521))

(assert (= (and b!2257521 res!965119) b!2257522))

(assert (=> d!668965 m!2687681))

(assert (=> b!2257521 m!2687673))

(assert (=> b!2257059 d!668965))

(declare-fun d!668967 () Bool)

(assert (=> d!668967 (ruleValid!1351 thiss!16613 otherR!12)))

(declare-fun lt!839091 () Unit!39722)

(assert (=> d!668967 (= lt!839091 (choose!13204 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!668967 (contains!4611 rules!1750 otherR!12)))

(assert (=> d!668967 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!758 thiss!16613 otherR!12 rules!1750) lt!839091)))

(declare-fun bs!455283 () Bool)

(assert (= bs!455283 d!668967))

(assert (=> bs!455283 m!2687309))

(declare-fun m!2687751 () Bool)

(assert (=> bs!455283 m!2687751))

(assert (=> bs!455283 m!2687343))

(assert (=> b!2257059 d!668967))

(declare-fun d!668969 () Bool)

(declare-fun lt!839094 () Int)

(assert (=> d!668969 (>= lt!839094 0)))

(declare-fun e!1445288 () Int)

(assert (=> d!668969 (= lt!839094 e!1445288)))

(declare-fun c!358718 () Bool)

(assert (=> d!668969 (= c!358718 ((_ is Nil!26799) tokens!456))))

(assert (=> d!668969 (= (size!20984 tokens!456) lt!839094)))

(declare-fun b!2257527 () Bool)

(assert (=> b!2257527 (= e!1445288 0)))

(declare-fun b!2257528 () Bool)

(assert (=> b!2257528 (= e!1445288 (+ 1 (size!20984 (t!201313 tokens!456))))))

(assert (= (and d!668969 c!358718) b!2257527))

(assert (= (and d!668969 (not c!358718)) b!2257528))

(declare-fun m!2687753 () Bool)

(assert (=> b!2257528 m!2687753))

(assert (=> b!2257058 d!668969))

(declare-fun d!668971 () Bool)

(assert (=> d!668971 (= (inv!36324 (tag!4749 r!2363)) (= (mod (str.len (value!135200 (tag!4749 r!2363))) 2) 0))))

(assert (=> b!2257068 d!668971))

(declare-fun d!668973 () Bool)

(declare-fun res!965120 () Bool)

(declare-fun e!1445289 () Bool)

(assert (=> d!668973 (=> (not res!965120) (not e!1445289))))

(assert (=> d!668973 (= res!965120 (semiInverseModEq!1714 (toChars!5860 (transformation!4259 r!2363)) (toValue!6001 (transformation!4259 r!2363))))))

(assert (=> d!668973 (= (inv!36328 (transformation!4259 r!2363)) e!1445289)))

(declare-fun b!2257529 () Bool)

(assert (=> b!2257529 (= e!1445289 (equivClasses!1633 (toChars!5860 (transformation!4259 r!2363)) (toValue!6001 (transformation!4259 r!2363))))))

(assert (= (and d!668973 res!965120) b!2257529))

(declare-fun m!2687755 () Bool)

(assert (=> d!668973 m!2687755))

(declare-fun m!2687757 () Bool)

(assert (=> b!2257529 m!2687757))

(assert (=> b!2257068 d!668973))

(assert (=> b!2257079 d!668939))

(declare-fun b!2257534 () Bool)

(declare-fun e!1445292 () Bool)

(declare-fun tp!713663 () Bool)

(assert (=> b!2257534 (= e!1445292 (and tp_is_empty!10435 tp!713663))))

(assert (=> b!2257062 (= tp!713584 e!1445292)))

(assert (= (and b!2257062 ((_ is Cons!26798) (originalCharacters!5029 (h!32200 tokens!456)))) b!2257534))

(declare-fun b!2257545 () Bool)

(declare-fun b_free!66533 () Bool)

(declare-fun b_next!67237 () Bool)

(assert (=> b!2257545 (= b_free!66533 (not b_next!67237))))

(declare-fun tp!713675 () Bool)

(declare-fun b_and!177257 () Bool)

(assert (=> b!2257545 (= tp!713675 b_and!177257)))

(declare-fun b_free!66535 () Bool)

(declare-fun b_next!67239 () Bool)

(assert (=> b!2257545 (= b_free!66535 (not b_next!67239))))

(declare-fun t!201357 () Bool)

(declare-fun tb!133783 () Bool)

(assert (=> (and b!2257545 (= (toChars!5860 (transformation!4259 (h!32201 (t!201314 rules!1750)))) (toChars!5860 (transformation!4259 (rule!6565 (h!32200 tokens!456))))) t!201357) tb!133783))

(declare-fun result!163094 () Bool)

(assert (= result!163094 result!163072))

(assert (=> b!2257399 t!201357))

(declare-fun t!201359 () Bool)

(declare-fun tb!133785 () Bool)

(assert (=> (and b!2257545 (= (toChars!5860 (transformation!4259 (h!32201 (t!201314 rules!1750)))) (toChars!5860 (transformation!4259 (rule!6565 (head!4832 tokens!456))))) t!201359) tb!133785))

(declare-fun result!163096 () Bool)

(assert (= result!163096 result!163082))

(assert (=> d!668937 t!201359))

(declare-fun b_and!177259 () Bool)

(declare-fun tp!713672 () Bool)

(assert (=> b!2257545 (= tp!713672 (and (=> t!201357 result!163094) (=> t!201359 result!163096) b_and!177259))))

(declare-fun e!1445301 () Bool)

(assert (=> b!2257545 (= e!1445301 (and tp!713675 tp!713672))))

(declare-fun tp!713674 () Bool)

(declare-fun e!1445303 () Bool)

(declare-fun b!2257544 () Bool)

(assert (=> b!2257544 (= e!1445303 (and tp!713674 (inv!36324 (tag!4749 (h!32201 (t!201314 rules!1750)))) (inv!36328 (transformation!4259 (h!32201 (t!201314 rules!1750)))) e!1445301))))

(declare-fun b!2257543 () Bool)

(declare-fun e!1445302 () Bool)

(declare-fun tp!713673 () Bool)

(assert (=> b!2257543 (= e!1445302 (and e!1445303 tp!713673))))

(assert (=> b!2257073 (= tp!713574 e!1445302)))

(assert (= b!2257544 b!2257545))

(assert (= b!2257543 b!2257544))

(assert (= (and b!2257073 ((_ is Cons!26800) (t!201314 rules!1750))) b!2257543))

(declare-fun m!2687759 () Bool)

(assert (=> b!2257544 m!2687759))

(declare-fun m!2687761 () Bool)

(assert (=> b!2257544 m!2687761))

(declare-fun b!2257546 () Bool)

(declare-fun e!1445305 () Bool)

(declare-fun tp!713676 () Bool)

(assert (=> b!2257546 (= e!1445305 (and tp_is_empty!10435 tp!713676))))

(assert (=> b!2257072 (= tp!713581 e!1445305)))

(assert (= (and b!2257072 ((_ is Cons!26798) (t!201312 input!1722))) b!2257546))

(declare-fun b!2257559 () Bool)

(declare-fun e!1445308 () Bool)

(declare-fun tp!713690 () Bool)

(assert (=> b!2257559 (= e!1445308 tp!713690)))

(assert (=> b!2257086 (= tp!713582 e!1445308)))

(declare-fun b!2257560 () Bool)

(declare-fun tp!713691 () Bool)

(declare-fun tp!713687 () Bool)

(assert (=> b!2257560 (= e!1445308 (and tp!713691 tp!713687))))

(declare-fun b!2257557 () Bool)

(assert (=> b!2257557 (= e!1445308 tp_is_empty!10435)))

(declare-fun b!2257558 () Bool)

(declare-fun tp!713689 () Bool)

(declare-fun tp!713688 () Bool)

(assert (=> b!2257558 (= e!1445308 (and tp!713689 tp!713688))))

(assert (= (and b!2257086 ((_ is ElementMatch!6607) (regex!4259 (rule!6565 (h!32200 tokens!456))))) b!2257557))

(assert (= (and b!2257086 ((_ is Concat!11029) (regex!4259 (rule!6565 (h!32200 tokens!456))))) b!2257558))

(assert (= (and b!2257086 ((_ is Star!6607) (regex!4259 (rule!6565 (h!32200 tokens!456))))) b!2257559))

(assert (= (and b!2257086 ((_ is Union!6607) (regex!4259 (rule!6565 (h!32200 tokens!456))))) b!2257560))

(declare-fun b!2257563 () Bool)

(declare-fun e!1445309 () Bool)

(declare-fun tp!713695 () Bool)

(assert (=> b!2257563 (= e!1445309 tp!713695)))

(assert (=> b!2257078 (= tp!713573 e!1445309)))

(declare-fun b!2257564 () Bool)

(declare-fun tp!713696 () Bool)

(declare-fun tp!713692 () Bool)

(assert (=> b!2257564 (= e!1445309 (and tp!713696 tp!713692))))

(declare-fun b!2257561 () Bool)

(assert (=> b!2257561 (= e!1445309 tp_is_empty!10435)))

(declare-fun b!2257562 () Bool)

(declare-fun tp!713694 () Bool)

(declare-fun tp!713693 () Bool)

(assert (=> b!2257562 (= e!1445309 (and tp!713694 tp!713693))))

(assert (= (and b!2257078 ((_ is ElementMatch!6607) (regex!4259 otherR!12))) b!2257561))

(assert (= (and b!2257078 ((_ is Concat!11029) (regex!4259 otherR!12))) b!2257562))

(assert (= (and b!2257078 ((_ is Star!6607) (regex!4259 otherR!12))) b!2257563))

(assert (= (and b!2257078 ((_ is Union!6607) (regex!4259 otherR!12))) b!2257564))

(declare-fun b!2257578 () Bool)

(declare-fun b_free!66537 () Bool)

(declare-fun b_next!67241 () Bool)

(assert (=> b!2257578 (= b_free!66537 (not b_next!67241))))

(declare-fun tp!713711 () Bool)

(declare-fun b_and!177261 () Bool)

(assert (=> b!2257578 (= tp!713711 b_and!177261)))

(declare-fun b_free!66539 () Bool)

(declare-fun b_next!67243 () Bool)

(assert (=> b!2257578 (= b_free!66539 (not b_next!67243))))

(declare-fun t!201361 () Bool)

(declare-fun tb!133787 () Bool)

(assert (=> (and b!2257578 (= (toChars!5860 (transformation!4259 (rule!6565 (h!32200 (t!201313 tokens!456))))) (toChars!5860 (transformation!4259 (rule!6565 (h!32200 tokens!456))))) t!201361) tb!133787))

(declare-fun result!163102 () Bool)

(assert (= result!163102 result!163072))

(assert (=> b!2257399 t!201361))

(declare-fun t!201363 () Bool)

(declare-fun tb!133789 () Bool)

(assert (=> (and b!2257578 (= (toChars!5860 (transformation!4259 (rule!6565 (h!32200 (t!201313 tokens!456))))) (toChars!5860 (transformation!4259 (rule!6565 (head!4832 tokens!456))))) t!201363) tb!133789))

(declare-fun result!163104 () Bool)

(assert (= result!163104 result!163082))

(assert (=> d!668937 t!201363))

(declare-fun tp!713710 () Bool)

(declare-fun b_and!177263 () Bool)

(assert (=> b!2257578 (= tp!713710 (and (=> t!201361 result!163102) (=> t!201363 result!163104) b_and!177263))))

(declare-fun e!1445327 () Bool)

(assert (=> b!2257578 (= e!1445327 (and tp!713711 tp!713710))))

(declare-fun e!1445326 () Bool)

(assert (=> b!2257057 (= tp!713586 e!1445326)))

(declare-fun e!1445324 () Bool)

(declare-fun tp!713708 () Bool)

(declare-fun b!2257575 () Bool)

(assert (=> b!2257575 (= e!1445326 (and (inv!36327 (h!32200 (t!201313 tokens!456))) e!1445324 tp!713708))))

(declare-fun tp!713707 () Bool)

(declare-fun b!2257577 () Bool)

(declare-fun e!1445322 () Bool)

(assert (=> b!2257577 (= e!1445322 (and tp!713707 (inv!36324 (tag!4749 (rule!6565 (h!32200 (t!201313 tokens!456))))) (inv!36328 (transformation!4259 (rule!6565 (h!32200 (t!201313 tokens!456))))) e!1445327))))

(declare-fun b!2257576 () Bool)

(declare-fun tp!713709 () Bool)

(assert (=> b!2257576 (= e!1445324 (and (inv!21 (value!135201 (h!32200 (t!201313 tokens!456)))) e!1445322 tp!713709))))

(assert (= b!2257577 b!2257578))

(assert (= b!2257576 b!2257577))

(assert (= b!2257575 b!2257576))

(assert (= (and b!2257057 ((_ is Cons!26799) (t!201313 tokens!456))) b!2257575))

(declare-fun m!2687763 () Bool)

(assert (=> b!2257575 m!2687763))

(declare-fun m!2687765 () Bool)

(assert (=> b!2257577 m!2687765))

(declare-fun m!2687767 () Bool)

(assert (=> b!2257577 m!2687767))

(declare-fun m!2687769 () Bool)

(assert (=> b!2257576 m!2687769))

(declare-fun b!2257579 () Bool)

(declare-fun e!1445328 () Bool)

(declare-fun tp!713712 () Bool)

(assert (=> b!2257579 (= e!1445328 (and tp_is_empty!10435 tp!713712))))

(assert (=> b!2257077 (= tp!713579 e!1445328)))

(assert (= (and b!2257077 ((_ is Cons!26798) (t!201312 suffix!886))) b!2257579))

(declare-fun b!2257580 () Bool)

(declare-fun e!1445329 () Bool)

(declare-fun tp!713713 () Bool)

(assert (=> b!2257580 (= e!1445329 (and tp_is_empty!10435 tp!713713))))

(assert (=> b!2257087 (= tp!713588 e!1445329)))

(assert (= (and b!2257087 ((_ is Cons!26798) (t!201312 otherP!12))) b!2257580))

(declare-fun b!2257583 () Bool)

(declare-fun e!1445330 () Bool)

(declare-fun tp!713717 () Bool)

(assert (=> b!2257583 (= e!1445330 tp!713717)))

(assert (=> b!2257080 (= tp!713572 e!1445330)))

(declare-fun b!2257584 () Bool)

(declare-fun tp!713718 () Bool)

(declare-fun tp!713714 () Bool)

(assert (=> b!2257584 (= e!1445330 (and tp!713718 tp!713714))))

(declare-fun b!2257581 () Bool)

(assert (=> b!2257581 (= e!1445330 tp_is_empty!10435)))

(declare-fun b!2257582 () Bool)

(declare-fun tp!713716 () Bool)

(declare-fun tp!713715 () Bool)

(assert (=> b!2257582 (= e!1445330 (and tp!713716 tp!713715))))

(assert (= (and b!2257080 ((_ is ElementMatch!6607) (regex!4259 (h!32201 rules!1750)))) b!2257581))

(assert (= (and b!2257080 ((_ is Concat!11029) (regex!4259 (h!32201 rules!1750)))) b!2257582))

(assert (= (and b!2257080 ((_ is Star!6607) (regex!4259 (h!32201 rules!1750)))) b!2257583))

(assert (= (and b!2257080 ((_ is Union!6607) (regex!4259 (h!32201 rules!1750)))) b!2257584))

(declare-fun b!2257587 () Bool)

(declare-fun e!1445331 () Bool)

(declare-fun tp!713722 () Bool)

(assert (=> b!2257587 (= e!1445331 tp!713722)))

(assert (=> b!2257068 (= tp!713576 e!1445331)))

(declare-fun b!2257588 () Bool)

(declare-fun tp!713723 () Bool)

(declare-fun tp!713719 () Bool)

(assert (=> b!2257588 (= e!1445331 (and tp!713723 tp!713719))))

(declare-fun b!2257585 () Bool)

(assert (=> b!2257585 (= e!1445331 tp_is_empty!10435)))

(declare-fun b!2257586 () Bool)

(declare-fun tp!713721 () Bool)

(declare-fun tp!713720 () Bool)

(assert (=> b!2257586 (= e!1445331 (and tp!713721 tp!713720))))

(assert (= (and b!2257068 ((_ is ElementMatch!6607) (regex!4259 r!2363))) b!2257585))

(assert (= (and b!2257068 ((_ is Concat!11029) (regex!4259 r!2363))) b!2257586))

(assert (= (and b!2257068 ((_ is Star!6607) (regex!4259 r!2363))) b!2257587))

(assert (= (and b!2257068 ((_ is Union!6607) (regex!4259 r!2363))) b!2257588))

(declare-fun b_lambda!72079 () Bool)

(assert (= b_lambda!72075 (or (and b!2257069 b_free!66511 (= (toChars!5860 (transformation!4259 r!2363)) (toChars!5860 (transformation!4259 (rule!6565 (h!32200 tokens!456)))))) (and b!2257090 b_free!66515) (and b!2257545 b_free!66535 (= (toChars!5860 (transformation!4259 (h!32201 (t!201314 rules!1750)))) (toChars!5860 (transformation!4259 (rule!6565 (h!32200 tokens!456)))))) (and b!2257066 b_free!66519 (= (toChars!5860 (transformation!4259 (h!32201 rules!1750))) (toChars!5860 (transformation!4259 (rule!6565 (h!32200 tokens!456)))))) (and b!2257082 b_free!66523 (= (toChars!5860 (transformation!4259 otherR!12)) (toChars!5860 (transformation!4259 (rule!6565 (h!32200 tokens!456)))))) (and b!2257578 b_free!66539 (= (toChars!5860 (transformation!4259 (rule!6565 (h!32200 (t!201313 tokens!456))))) (toChars!5860 (transformation!4259 (rule!6565 (h!32200 tokens!456)))))) b_lambda!72079)))

(check-sat (not d!668935) (not b!2257584) (not b!2257544) (not b_next!67221) (not b_next!67213) (not b_next!67227) (not d!668967) (not d!668919) (not d!668953) (not b_next!67239) (not b!2257465) (not b!2257501) (not b!2257576) (not d!668955) (not bm!135716) (not d!668829) (not b!2257499) (not b!2257560) (not b_next!67225) (not b!2257440) (not d!668929) (not d!668933) (not b!2257528) b_and!177209 (not d!668837) (not b!2257521) (not d!668965) (not b!2257159) (not b!2257495) (not b_next!67215) b_and!177253 (not b!2257534) (not b!2257126) (not b_lambda!72079) (not b!2257497) (not d!668959) (not d!668931) (not b!2257564) (not b!2257519) (not b!2257582) (not d!668945) (not b!2257105) (not d!668943) (not b!2257463) (not b!2257502) (not b!2257447) (not d!668963) (not d!668941) (not b!2257498) (not d!668973) (not b!2257394) (not bm!135717) (not d!668961) (not b!2257515) (not b_next!67217) (not b!2257587) (not d!668921) (not b!2257503) (not b!2257448) (not b!2257400) (not b!2257588) (not b_next!67237) (not d!668937) (not b!2257454) (not b!2257410) (not b!2257558) (not b!2257450) (not b!2257449) (not b!2257393) (not b_next!67243) b_and!177259 (not b!2257504) (not b!2257147) (not b!2257124) (not b_next!67219) (not d!668849) (not b!2257106) (not b!2257114) (not b!2257559) b_and!177249 (not d!668847) (not b_next!67223) (not b!2257446) (not b!2257577) (not b!2257583) b_and!177251 (not b!2257399) (not d!668927) (not b!2257543) (not b!2257529) (not b!2257405) (not b!2257455) b_and!177263 (not d!668841) (not b!2257389) (not b!2257464) b_and!177213 (not d!668949) (not tb!133775) (not b!2257562) (not b!2257476) (not b_next!67241) b_and!177255 b_and!177261 (not b!2257579) (not b!2257391) (not b!2257586) (not b!2257462) (not b!2257563) (not b!2257575) (not d!668845) b_and!177205 (not b!2257461) (not d!668925) (not b!2257392) b_and!177257 (not b_lambda!72077) tp_is_empty!10435 (not b!2257104) (not b!2257580) b_and!177201 (not b!2257125) (not tb!133767) (not b!2257474) (not b!2257546) (not b!2257496))
(check-sat (not b_next!67225) b_and!177209 (not b_next!67217) (not b_next!67237) (not b_next!67243) b_and!177249 (not b_next!67223) b_and!177251 b_and!177263 b_and!177213 b_and!177205 b_and!177257 b_and!177201 (not b_next!67221) (not b_next!67239) (not b_next!67213) (not b_next!67227) (not b_next!67215) b_and!177253 b_and!177259 (not b_next!67219) (not b_next!67241) b_and!177255 b_and!177261)
