; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297930 () Bool)

(assert start!297930)

(declare-fun b!3180667 () Bool)

(declare-fun b_free!83841 () Bool)

(declare-fun b_next!84545 () Bool)

(assert (=> b!3180667 (= b_free!83841 (not b_next!84545))))

(declare-fun tp!1006268 () Bool)

(declare-fun b_and!210231 () Bool)

(assert (=> b!3180667 (= tp!1006268 b_and!210231)))

(declare-fun b_free!83843 () Bool)

(declare-fun b_next!84547 () Bool)

(assert (=> b!3180667 (= b_free!83843 (not b_next!84547))))

(declare-fun tp!1006262 () Bool)

(declare-fun b_and!210233 () Bool)

(assert (=> b!3180667 (= tp!1006262 b_and!210233)))

(declare-fun b!3180663 () Bool)

(declare-fun b_free!83845 () Bool)

(declare-fun b_next!84549 () Bool)

(assert (=> b!3180663 (= b_free!83845 (not b_next!84549))))

(declare-fun tp!1006263 () Bool)

(declare-fun b_and!210235 () Bool)

(assert (=> b!3180663 (= tp!1006263 b_and!210235)))

(declare-fun b_free!83847 () Bool)

(declare-fun b_next!84551 () Bool)

(assert (=> b!3180663 (= b_free!83847 (not b_next!84551))))

(declare-fun tp!1006259 () Bool)

(declare-fun b_and!210237 () Bool)

(assert (=> b!3180663 (= tp!1006259 b_and!210237)))

(declare-fun b!3180672 () Bool)

(declare-fun b_free!83849 () Bool)

(declare-fun b_next!84553 () Bool)

(assert (=> b!3180672 (= b_free!83849 (not b_next!84553))))

(declare-fun tp!1006270 () Bool)

(declare-fun b_and!210239 () Bool)

(assert (=> b!3180672 (= tp!1006270 b_and!210239)))

(declare-fun b_free!83851 () Bool)

(declare-fun b_next!84555 () Bool)

(assert (=> b!3180672 (= b_free!83851 (not b_next!84555))))

(declare-fun tp!1006261 () Bool)

(declare-fun b_and!210241 () Bool)

(assert (=> b!3180672 (= tp!1006261 b_and!210241)))

(declare-fun tp!1006266 () Bool)

(declare-fun e!1981552 () Bool)

(declare-datatypes ((C!19940 0))(
  ( (C!19941 (val!12018 Int)) )
))
(declare-datatypes ((Regex!9877 0))(
  ( (ElementMatch!9877 (c!534252 C!19940)) (Concat!15225 (regOne!20266 Regex!9877) (regTwo!20266 Regex!9877)) (EmptyExpr!9877) (Star!9877 (reg!10206 Regex!9877)) (EmptyLang!9877) (Union!9877 (regOne!20267 Regex!9877) (regTwo!20267 Regex!9877)) )
))
(declare-datatypes ((List!35852 0))(
  ( (Nil!35728) (Cons!35728 (h!41148 (_ BitVec 16)) (t!235113 List!35852)) )
))
(declare-datatypes ((TokenValue!5348 0))(
  ( (FloatLiteralValue!10696 (text!37881 List!35852)) (TokenValueExt!5347 (__x!22913 Int)) (Broken!26740 (value!166297 List!35852)) (Object!5471) (End!5348) (Def!5348) (Underscore!5348) (Match!5348) (Else!5348) (Error!5348) (Case!5348) (If!5348) (Extends!5348) (Abstract!5348) (Class!5348) (Val!5348) (DelimiterValue!10696 (del!5408 List!35852)) (KeywordValue!5354 (value!166298 List!35852)) (CommentValue!10696 (value!166299 List!35852)) (WhitespaceValue!10696 (value!166300 List!35852)) (IndentationValue!5348 (value!166301 List!35852)) (String!40073) (Int32!5348) (Broken!26741 (value!166302 List!35852)) (Boolean!5349) (Unit!50135) (OperatorValue!5351 (op!5408 List!35852)) (IdentifierValue!10696 (value!166303 List!35852)) (IdentifierValue!10697 (value!166304 List!35852)) (WhitespaceValue!10697 (value!166305 List!35852)) (True!10696) (False!10696) (Broken!26742 (value!166306 List!35852)) (Broken!26743 (value!166307 List!35852)) (True!10697) (RightBrace!5348) (RightBracket!5348) (Colon!5348) (Null!5348) (Comma!5348) (LeftBracket!5348) (False!10697) (LeftBrace!5348) (ImaginaryLiteralValue!5348 (text!37882 List!35852)) (StringLiteralValue!16044 (value!166308 List!35852)) (EOFValue!5348 (value!166309 List!35852)) (IdentValue!5348 (value!166310 List!35852)) (DelimiterValue!10697 (value!166311 List!35852)) (DedentValue!5348 (value!166312 List!35852)) (NewLineValue!5348 (value!166313 List!35852)) (IntegerValue!16044 (value!166314 (_ BitVec 32)) (text!37883 List!35852)) (IntegerValue!16045 (value!166315 Int) (text!37884 List!35852)) (Times!5348) (Or!5348) (Equal!5348) (Minus!5348) (Broken!26744 (value!166316 List!35852)) (And!5348) (Div!5348) (LessEqual!5348) (Mod!5348) (Concat!15226) (Not!5348) (Plus!5348) (SpaceValue!5348 (value!166317 List!35852)) (IntegerValue!16046 (value!166318 Int) (text!37885 List!35852)) (StringLiteralValue!16045 (text!37886 List!35852)) (FloatLiteralValue!10697 (text!37887 List!35852)) (BytesLiteralValue!5348 (value!166319 List!35852)) (CommentValue!10697 (value!166320 List!35852)) (StringLiteralValue!16046 (value!166321 List!35852)) (ErrorTokenValue!5348 (msg!5409 List!35852)) )
))
(declare-datatypes ((List!35853 0))(
  ( (Nil!35729) (Cons!35729 (h!41149 C!19940) (t!235114 List!35853)) )
))
(declare-datatypes ((IArray!21227 0))(
  ( (IArray!21228 (innerList!10671 List!35853)) )
))
(declare-datatypes ((Conc!10611 0))(
  ( (Node!10611 (left!27788 Conc!10611) (right!28118 Conc!10611) (csize!21452 Int) (cheight!10822 Int)) (Leaf!16781 (xs!13729 IArray!21227) (csize!21453 Int)) (Empty!10611) )
))
(declare-datatypes ((BalanceConc!20836 0))(
  ( (BalanceConc!20837 (c!534253 Conc!10611)) )
))
(declare-datatypes ((String!40074 0))(
  ( (String!40075 (value!166322 String)) )
))
(declare-datatypes ((TokenValueInjection!10124 0))(
  ( (TokenValueInjection!10125 (toValue!7178 Int) (toChars!7037 Int)) )
))
(declare-datatypes ((Rule!10036 0))(
  ( (Rule!10037 (regex!5118 Regex!9877) (tag!5624 String!40074) (isSeparator!5118 Bool) (transformation!5118 TokenValueInjection!10124)) )
))
(declare-datatypes ((Token!9602 0))(
  ( (Token!9603 (value!166323 TokenValue!5348) (rule!7530 Rule!10036) (size!26962 Int) (originalCharacters!5832 List!35853)) )
))
(declare-datatypes ((List!35854 0))(
  ( (Nil!35730) (Cons!35730 (h!41150 Token!9602) (t!235115 List!35854)) )
))
(declare-fun tokens!494 () List!35854)

(declare-fun b!3180647 () Bool)

(declare-fun e!1981558 () Bool)

(declare-fun inv!21 (TokenValue!5348) Bool)

(assert (=> b!3180647 (= e!1981552 (and (inv!21 (value!166323 (h!41150 tokens!494))) e!1981558 tp!1006266))))

(declare-fun b!3180648 () Bool)

(declare-fun e!1981574 () Bool)

(declare-fun lt!1069172 () Rule!10036)

(assert (=> b!3180648 (= e!1981574 (= (rule!7530 (h!41150 tokens!494)) lt!1069172))))

(declare-fun tp!1006260 () Bool)

(declare-fun separatorToken!241 () Token!9602)

(declare-fun e!1981572 () Bool)

(declare-fun b!3180649 () Bool)

(declare-fun e!1981564 () Bool)

(assert (=> b!3180649 (= e!1981572 (and (inv!21 (value!166323 separatorToken!241)) e!1981564 tp!1006260))))

(declare-fun tp!1006258 () Bool)

(declare-fun b!3180650 () Bool)

(declare-fun e!1981562 () Bool)

(declare-fun inv!48577 (String!40074) Bool)

(declare-fun inv!48580 (TokenValueInjection!10124) Bool)

(assert (=> b!3180650 (= e!1981564 (and tp!1006258 (inv!48577 (tag!5624 (rule!7530 separatorToken!241))) (inv!48580 (transformation!5118 (rule!7530 separatorToken!241))) e!1981562))))

(declare-fun b!3180651 () Bool)

(declare-fun res!1292603 () Bool)

(declare-fun e!1981569 () Bool)

(assert (=> b!3180651 (=> res!1292603 e!1981569)))

(declare-datatypes ((LexerInterface!4707 0))(
  ( (LexerInterfaceExt!4704 (__x!22914 Int)) (Lexer!4705) )
))
(declare-fun thiss!18206 () LexerInterface!4707)

(declare-datatypes ((List!35855 0))(
  ( (Nil!35731) (Cons!35731 (h!41151 Rule!10036) (t!235116 List!35855)) )
))
(declare-fun rules!2135 () List!35855)

(declare-fun rulesProduceIndividualToken!2199 (LexerInterface!4707 List!35855 Token!9602) Bool)

(assert (=> b!3180651 (= res!1292603 (not (rulesProduceIndividualToken!2199 thiss!18206 rules!2135 (h!41150 tokens!494))))))

(declare-fun b!3180652 () Bool)

(declare-fun e!1981571 () Bool)

(assert (=> b!3180652 (= e!1981571 e!1981574)))

(declare-fun res!1292595 () Bool)

(assert (=> b!3180652 (=> (not res!1292595) (not e!1981574))))

(declare-fun lt!1069175 () List!35853)

(declare-fun matchR!4535 (Regex!9877 List!35853) Bool)

(assert (=> b!3180652 (= res!1292595 (matchR!4535 (regex!5118 lt!1069172) lt!1069175))))

(declare-datatypes ((Option!6967 0))(
  ( (None!6966) (Some!6966 (v!35412 Rule!10036)) )
))
(declare-fun lt!1069171 () Option!6967)

(declare-fun get!11360 (Option!6967) Rule!10036)

(assert (=> b!3180652 (= lt!1069172 (get!11360 lt!1069171))))

(declare-fun res!1292588 () Bool)

(declare-fun e!1981560 () Bool)

(assert (=> start!297930 (=> (not res!1292588) (not e!1981560))))

(get-info :version)

(assert (=> start!297930 (= res!1292588 ((_ is Lexer!4705) thiss!18206))))

(assert (=> start!297930 e!1981560))

(assert (=> start!297930 true))

(declare-fun e!1981563 () Bool)

(assert (=> start!297930 e!1981563))

(declare-fun inv!48581 (Token!9602) Bool)

(assert (=> start!297930 (and (inv!48581 separatorToken!241) e!1981572)))

(declare-fun e!1981548 () Bool)

(assert (=> start!297930 e!1981548))

(declare-fun b!3180653 () Bool)

(declare-fun res!1292591 () Bool)

(assert (=> b!3180653 (=> (not res!1292591) (not e!1981560))))

(declare-fun rulesInvariant!4104 (LexerInterface!4707 List!35855) Bool)

(assert (=> b!3180653 (= res!1292591 (rulesInvariant!4104 thiss!18206 rules!2135))))

(declare-fun b!3180654 () Bool)

(declare-fun tp!1006264 () Bool)

(assert (=> b!3180654 (= e!1981548 (and (inv!48581 (h!41150 tokens!494)) e!1981552 tp!1006264))))

(declare-fun b!3180655 () Bool)

(declare-fun e!1981554 () Bool)

(declare-fun tp!1006267 () Bool)

(assert (=> b!3180655 (= e!1981563 (and e!1981554 tp!1006267))))

(declare-fun b!3180656 () Bool)

(declare-fun res!1292590 () Bool)

(declare-fun e!1981561 () Bool)

(assert (=> b!3180656 (=> (not res!1292590) (not e!1981561))))

(assert (=> b!3180656 (= res!1292590 (rulesProduceIndividualToken!2199 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3180657 () Bool)

(declare-fun res!1292589 () Bool)

(assert (=> b!3180657 (=> (not res!1292589) (not e!1981561))))

(declare-fun sepAndNonSepRulesDisjointChars!1312 (List!35855 List!35855) Bool)

(assert (=> b!3180657 (= res!1292589 (sepAndNonSepRulesDisjointChars!1312 rules!2135 rules!2135))))

(declare-fun b!3180658 () Bool)

(declare-fun res!1292596 () Bool)

(assert (=> b!3180658 (=> (not res!1292596) (not e!1981561))))

(assert (=> b!3180658 (= res!1292596 (isSeparator!5118 (rule!7530 separatorToken!241)))))

(declare-fun b!3180659 () Bool)

(declare-fun e!1981566 () Bool)

(declare-fun e!1981559 () Bool)

(assert (=> b!3180659 (= e!1981566 e!1981559)))

(declare-fun res!1292599 () Bool)

(assert (=> b!3180659 (=> res!1292599 e!1981559)))

(assert (=> b!3180659 (= res!1292599 (isSeparator!5118 (rule!7530 (h!41150 tokens!494))))))

(declare-datatypes ((Unit!50136 0))(
  ( (Unit!50137) )
))
(declare-fun lt!1069176 () Unit!50136)

(declare-fun lambda!116393 () Int)

(declare-fun forallContained!1101 (List!35854 Int Token!9602) Unit!50136)

(assert (=> b!3180659 (= lt!1069176 (forallContained!1101 tokens!494 lambda!116393 (h!41150 tokens!494)))))

(declare-fun b!3180660 () Bool)

(declare-fun res!1292597 () Bool)

(assert (=> b!3180660 (=> (not res!1292597) (not e!1981561))))

(declare-fun forall!7230 (List!35854 Int) Bool)

(assert (=> b!3180660 (= res!1292597 (forall!7230 tokens!494 lambda!116393))))

(declare-fun b!3180661 () Bool)

(declare-fun e!1981555 () Bool)

(declare-fun e!1981573 () Bool)

(assert (=> b!3180661 (= e!1981555 e!1981573)))

(declare-fun res!1292602 () Bool)

(assert (=> b!3180661 (=> (not res!1292602) (not e!1981573))))

(declare-fun lt!1069165 () Rule!10036)

(declare-fun lt!1069164 () List!35853)

(assert (=> b!3180661 (= res!1292602 (matchR!4535 (regex!5118 lt!1069165) lt!1069164))))

(declare-fun lt!1069168 () Option!6967)

(assert (=> b!3180661 (= lt!1069165 (get!11360 lt!1069168))))

(declare-fun b!3180662 () Bool)

(declare-fun e!1981549 () Bool)

(declare-fun e!1981570 () Bool)

(assert (=> b!3180662 (= e!1981549 e!1981570)))

(declare-fun res!1292594 () Bool)

(assert (=> b!3180662 (=> res!1292594 e!1981570)))

(declare-fun contains!6313 (List!35853 C!19940) Bool)

(declare-fun usedCharacters!462 (Regex!9877) List!35853)

(declare-fun head!6941 (List!35853) C!19940)

(assert (=> b!3180662 (= res!1292594 (contains!6313 (usedCharacters!462 (regex!5118 (rule!7530 separatorToken!241))) (head!6941 lt!1069164)))))

(declare-fun lt!1069162 () BalanceConc!20836)

(declare-datatypes ((tuple2!35062 0))(
  ( (tuple2!35063 (_1!20665 Token!9602) (_2!20665 List!35853)) )
))
(declare-datatypes ((Option!6968 0))(
  ( (None!6967) (Some!6967 (v!35413 tuple2!35062)) )
))
(declare-fun maxPrefixOneRule!1512 (LexerInterface!4707 Rule!10036 List!35853) Option!6968)

(declare-fun apply!8030 (TokenValueInjection!10124 BalanceConc!20836) TokenValue!5348)

(declare-fun size!26963 (List!35853) Int)

(assert (=> b!3180662 (= (maxPrefixOneRule!1512 thiss!18206 (rule!7530 (h!41150 tokens!494)) lt!1069175) (Some!6967 (tuple2!35063 (Token!9603 (apply!8030 (transformation!5118 (rule!7530 (h!41150 tokens!494))) lt!1069162) (rule!7530 (h!41150 tokens!494)) (size!26963 lt!1069175) lt!1069175) Nil!35729)))))

(declare-fun lt!1069179 () Unit!50136)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!625 (LexerInterface!4707 List!35855 List!35853 List!35853 List!35853 Rule!10036) Unit!50136)

(assert (=> b!3180662 (= lt!1069179 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!625 thiss!18206 rules!2135 lt!1069175 lt!1069175 Nil!35729 (rule!7530 (h!41150 tokens!494))))))

(assert (=> b!3180662 e!1981555))

(declare-fun res!1292592 () Bool)

(assert (=> b!3180662 (=> (not res!1292592) (not e!1981555))))

(declare-fun isDefined!5462 (Option!6967) Bool)

(assert (=> b!3180662 (= res!1292592 (isDefined!5462 lt!1069168))))

(declare-fun getRuleFromTag!847 (LexerInterface!4707 List!35855 String!40074) Option!6967)

(assert (=> b!3180662 (= lt!1069168 (getRuleFromTag!847 thiss!18206 rules!2135 (tag!5624 (rule!7530 separatorToken!241))))))

(declare-fun lt!1069163 () Unit!50136)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!847 (LexerInterface!4707 List!35855 List!35853 Token!9602) Unit!50136)

(assert (=> b!3180662 (= lt!1069163 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!847 thiss!18206 rules!2135 lt!1069164 separatorToken!241))))

(assert (=> b!3180662 e!1981571))

(declare-fun res!1292601 () Bool)

(assert (=> b!3180662 (=> (not res!1292601) (not e!1981571))))

(assert (=> b!3180662 (= res!1292601 (isDefined!5462 lt!1069171))))

(assert (=> b!3180662 (= lt!1069171 (getRuleFromTag!847 thiss!18206 rules!2135 (tag!5624 (rule!7530 (h!41150 tokens!494)))))))

(declare-fun lt!1069170 () Unit!50136)

(assert (=> b!3180662 (= lt!1069170 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!847 thiss!18206 rules!2135 lt!1069175 (h!41150 tokens!494)))))

(declare-fun lt!1069178 () Unit!50136)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!768 (LexerInterface!4707 List!35855 List!35854 Token!9602) Unit!50136)

(assert (=> b!3180662 (= lt!1069178 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!768 thiss!18206 rules!2135 tokens!494 (h!41150 tokens!494)))))

(declare-fun isEmpty!19843 (List!35853) Bool)

(declare-fun getSuffix!1334 (List!35853 List!35853) List!35853)

(assert (=> b!3180662 (isEmpty!19843 (getSuffix!1334 lt!1069175 lt!1069175))))

(declare-fun lt!1069177 () Unit!50136)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!12 (List!35853) Unit!50136)

(assert (=> b!3180662 (= lt!1069177 (lemmaGetSuffixOnListWithItSelfIsEmpty!12 lt!1069175))))

(declare-fun e!1981567 () Bool)

(assert (=> b!3180663 (= e!1981567 (and tp!1006263 tp!1006259))))

(declare-fun b!3180664 () Bool)

(assert (=> b!3180664 (= e!1981570 (not (= lt!1069164 Nil!35729)))))

(declare-fun b!3180665 () Bool)

(assert (=> b!3180665 (= e!1981560 e!1981561)))

(declare-fun res!1292593 () Bool)

(assert (=> b!3180665 (=> (not res!1292593) (not e!1981561))))

(declare-datatypes ((IArray!21229 0))(
  ( (IArray!21230 (innerList!10672 List!35854)) )
))
(declare-datatypes ((Conc!10612 0))(
  ( (Node!10612 (left!27789 Conc!10612) (right!28119 Conc!10612) (csize!21454 Int) (cheight!10823 Int)) (Leaf!16782 (xs!13730 IArray!21229) (csize!21455 Int)) (Empty!10612) )
))
(declare-datatypes ((BalanceConc!20838 0))(
  ( (BalanceConc!20839 (c!534254 Conc!10612)) )
))
(declare-fun lt!1069169 () BalanceConc!20838)

(declare-fun rulesProduceEachTokenIndividually!1158 (LexerInterface!4707 List!35855 BalanceConc!20838) Bool)

(assert (=> b!3180665 (= res!1292593 (rulesProduceEachTokenIndividually!1158 thiss!18206 rules!2135 lt!1069169))))

(declare-fun seqFromList!3315 (List!35854) BalanceConc!20838)

(assert (=> b!3180665 (= lt!1069169 (seqFromList!3315 tokens!494))))

(declare-fun b!3180666 () Bool)

(declare-fun e!1981551 () Bool)

(assert (=> b!3180666 (= e!1981561 (not e!1981551))))

(declare-fun res!1292600 () Bool)

(assert (=> b!3180666 (=> res!1292600 e!1981551)))

(declare-fun lt!1069174 () List!35853)

(declare-fun lt!1069173 () List!35853)

(assert (=> b!3180666 (= res!1292600 (not (= lt!1069174 lt!1069173)))))

(declare-fun printList!1261 (LexerInterface!4707 List!35854) List!35853)

(assert (=> b!3180666 (= lt!1069173 (printList!1261 thiss!18206 (Cons!35730 (h!41150 tokens!494) Nil!35730)))))

(declare-fun lt!1069166 () BalanceConc!20836)

(declare-fun list!12679 (BalanceConc!20836) List!35853)

(assert (=> b!3180666 (= lt!1069174 (list!12679 lt!1069166))))

(declare-fun lt!1069180 () BalanceConc!20838)

(declare-fun printTailRec!1206 (LexerInterface!4707 BalanceConc!20838 Int BalanceConc!20836) BalanceConc!20836)

(assert (=> b!3180666 (= lt!1069166 (printTailRec!1206 thiss!18206 lt!1069180 0 (BalanceConc!20837 Empty!10611)))))

(declare-fun print!1774 (LexerInterface!4707 BalanceConc!20838) BalanceConc!20836)

(assert (=> b!3180666 (= lt!1069166 (print!1774 thiss!18206 lt!1069180))))

(declare-fun singletonSeq!2214 (Token!9602) BalanceConc!20838)

(assert (=> b!3180666 (= lt!1069180 (singletonSeq!2214 (h!41150 tokens!494)))))

(assert (=> b!3180667 (= e!1981562 (and tp!1006268 tp!1006262))))

(declare-fun b!3180668 () Bool)

(assert (=> b!3180668 (= e!1981551 e!1981569)))

(declare-fun res!1292585 () Bool)

(assert (=> b!3180668 (=> res!1292585 e!1981569)))

(assert (=> b!3180668 (= res!1292585 (or (not (= lt!1069173 lt!1069175)) (not (= lt!1069174 lt!1069175))))))

(declare-fun charsOf!3140 (Token!9602) BalanceConc!20836)

(assert (=> b!3180668 (= lt!1069175 (list!12679 (charsOf!3140 (h!41150 tokens!494))))))

(declare-fun b!3180669 () Bool)

(declare-fun e!1981553 () Bool)

(declare-fun tp!1006269 () Bool)

(assert (=> b!3180669 (= e!1981554 (and tp!1006269 (inv!48577 (tag!5624 (h!41151 rules!2135))) (inv!48580 (transformation!5118 (h!41151 rules!2135))) e!1981553))))

(declare-fun b!3180670 () Bool)

(declare-fun res!1292586 () Bool)

(assert (=> b!3180670 (=> (not res!1292586) (not e!1981561))))

(assert (=> b!3180670 (= res!1292586 (and (not ((_ is Nil!35730) tokens!494)) ((_ is Nil!35730) (t!235115 tokens!494))))))

(declare-fun b!3180671 () Bool)

(assert (=> b!3180671 (= e!1981573 (= (rule!7530 separatorToken!241) lt!1069165))))

(assert (=> b!3180672 (= e!1981553 (and tp!1006270 tp!1006261))))

(declare-fun b!3180673 () Bool)

(assert (=> b!3180673 (= e!1981569 e!1981566)))

(declare-fun res!1292598 () Bool)

(assert (=> b!3180673 (=> res!1292598 e!1981566)))

(declare-fun isEmpty!19844 (BalanceConc!20838) Bool)

(declare-datatypes ((tuple2!35064 0))(
  ( (tuple2!35065 (_1!20666 BalanceConc!20838) (_2!20666 BalanceConc!20836)) )
))
(declare-fun lex!2047 (LexerInterface!4707 List!35855 BalanceConc!20836) tuple2!35064)

(assert (=> b!3180673 (= res!1292598 (isEmpty!19844 (_1!20666 (lex!2047 thiss!18206 rules!2135 lt!1069162))))))

(declare-fun seqFromList!3316 (List!35853) BalanceConc!20836)

(assert (=> b!3180673 (= lt!1069162 (seqFromList!3316 lt!1069175))))

(declare-fun b!3180674 () Bool)

(declare-fun res!1292604 () Bool)

(assert (=> b!3180674 (=> (not res!1292604) (not e!1981560))))

(declare-fun isEmpty!19845 (List!35855) Bool)

(assert (=> b!3180674 (= res!1292604 (not (isEmpty!19845 rules!2135)))))

(declare-fun b!3180675 () Bool)

(assert (=> b!3180675 (= e!1981559 e!1981549)))

(declare-fun res!1292587 () Bool)

(assert (=> b!3180675 (=> res!1292587 e!1981549)))

(declare-fun lt!1069167 () BalanceConc!20836)

(declare-fun ++!8540 (List!35853 List!35853) List!35853)

(assert (=> b!3180675 (= res!1292587 (not (= (list!12679 lt!1069167) (++!8540 lt!1069175 lt!1069164))))))

(assert (=> b!3180675 (= lt!1069164 (list!12679 (charsOf!3140 separatorToken!241)))))

(declare-fun printWithSeparatorToken!16 (LexerInterface!4707 BalanceConc!20838 Token!9602) BalanceConc!20836)

(assert (=> b!3180675 (= lt!1069167 (printWithSeparatorToken!16 thiss!18206 lt!1069169 separatorToken!241))))

(declare-fun b!3180676 () Bool)

(declare-fun tp!1006265 () Bool)

(assert (=> b!3180676 (= e!1981558 (and tp!1006265 (inv!48577 (tag!5624 (rule!7530 (h!41150 tokens!494)))) (inv!48580 (transformation!5118 (rule!7530 (h!41150 tokens!494)))) e!1981567))))

(assert (= (and start!297930 res!1292588) b!3180674))

(assert (= (and b!3180674 res!1292604) b!3180653))

(assert (= (and b!3180653 res!1292591) b!3180665))

(assert (= (and b!3180665 res!1292593) b!3180656))

(assert (= (and b!3180656 res!1292590) b!3180658))

(assert (= (and b!3180658 res!1292596) b!3180660))

(assert (= (and b!3180660 res!1292597) b!3180657))

(assert (= (and b!3180657 res!1292589) b!3180670))

(assert (= (and b!3180670 res!1292586) b!3180666))

(assert (= (and b!3180666 (not res!1292600)) b!3180668))

(assert (= (and b!3180668 (not res!1292585)) b!3180651))

(assert (= (and b!3180651 (not res!1292603)) b!3180673))

(assert (= (and b!3180673 (not res!1292598)) b!3180659))

(assert (= (and b!3180659 (not res!1292599)) b!3180675))

(assert (= (and b!3180675 (not res!1292587)) b!3180662))

(assert (= (and b!3180662 res!1292601) b!3180652))

(assert (= (and b!3180652 res!1292595) b!3180648))

(assert (= (and b!3180662 res!1292592) b!3180661))

(assert (= (and b!3180661 res!1292602) b!3180671))

(assert (= (and b!3180662 (not res!1292594)) b!3180664))

(assert (= b!3180669 b!3180672))

(assert (= b!3180655 b!3180669))

(assert (= (and start!297930 ((_ is Cons!35731) rules!2135)) b!3180655))

(assert (= b!3180650 b!3180667))

(assert (= b!3180649 b!3180650))

(assert (= start!297930 b!3180649))

(assert (= b!3180676 b!3180663))

(assert (= b!3180647 b!3180676))

(assert (= b!3180654 b!3180647))

(assert (= (and start!297930 ((_ is Cons!35730) tokens!494)) b!3180654))

(declare-fun m!3437277 () Bool)

(assert (=> b!3180660 m!3437277))

(declare-fun m!3437279 () Bool)

(assert (=> start!297930 m!3437279))

(declare-fun m!3437281 () Bool)

(assert (=> b!3180652 m!3437281))

(declare-fun m!3437283 () Bool)

(assert (=> b!3180652 m!3437283))

(declare-fun m!3437285 () Bool)

(assert (=> b!3180675 m!3437285))

(declare-fun m!3437287 () Bool)

(assert (=> b!3180675 m!3437287))

(declare-fun m!3437289 () Bool)

(assert (=> b!3180675 m!3437289))

(declare-fun m!3437291 () Bool)

(assert (=> b!3180675 m!3437291))

(assert (=> b!3180675 m!3437287))

(declare-fun m!3437293 () Bool)

(assert (=> b!3180675 m!3437293))

(declare-fun m!3437295 () Bool)

(assert (=> b!3180662 m!3437295))

(declare-fun m!3437297 () Bool)

(assert (=> b!3180662 m!3437297))

(declare-fun m!3437299 () Bool)

(assert (=> b!3180662 m!3437299))

(declare-fun m!3437301 () Bool)

(assert (=> b!3180662 m!3437301))

(declare-fun m!3437303 () Bool)

(assert (=> b!3180662 m!3437303))

(declare-fun m!3437305 () Bool)

(assert (=> b!3180662 m!3437305))

(declare-fun m!3437307 () Bool)

(assert (=> b!3180662 m!3437307))

(declare-fun m!3437309 () Bool)

(assert (=> b!3180662 m!3437309))

(declare-fun m!3437311 () Bool)

(assert (=> b!3180662 m!3437311))

(declare-fun m!3437313 () Bool)

(assert (=> b!3180662 m!3437313))

(assert (=> b!3180662 m!3437295))

(declare-fun m!3437315 () Bool)

(assert (=> b!3180662 m!3437315))

(declare-fun m!3437317 () Bool)

(assert (=> b!3180662 m!3437317))

(declare-fun m!3437319 () Bool)

(assert (=> b!3180662 m!3437319))

(declare-fun m!3437321 () Bool)

(assert (=> b!3180662 m!3437321))

(assert (=> b!3180662 m!3437305))

(assert (=> b!3180662 m!3437315))

(declare-fun m!3437323 () Bool)

(assert (=> b!3180662 m!3437323))

(declare-fun m!3437325 () Bool)

(assert (=> b!3180662 m!3437325))

(declare-fun m!3437327 () Bool)

(assert (=> b!3180662 m!3437327))

(declare-fun m!3437329 () Bool)

(assert (=> b!3180656 m!3437329))

(declare-fun m!3437331 () Bool)

(assert (=> b!3180665 m!3437331))

(declare-fun m!3437333 () Bool)

(assert (=> b!3180665 m!3437333))

(declare-fun m!3437335 () Bool)

(assert (=> b!3180666 m!3437335))

(declare-fun m!3437337 () Bool)

(assert (=> b!3180666 m!3437337))

(declare-fun m!3437339 () Bool)

(assert (=> b!3180666 m!3437339))

(declare-fun m!3437341 () Bool)

(assert (=> b!3180666 m!3437341))

(declare-fun m!3437343 () Bool)

(assert (=> b!3180666 m!3437343))

(declare-fun m!3437345 () Bool)

(assert (=> b!3180661 m!3437345))

(declare-fun m!3437347 () Bool)

(assert (=> b!3180661 m!3437347))

(declare-fun m!3437349 () Bool)

(assert (=> b!3180669 m!3437349))

(declare-fun m!3437351 () Bool)

(assert (=> b!3180669 m!3437351))

(declare-fun m!3437353 () Bool)

(assert (=> b!3180654 m!3437353))

(declare-fun m!3437355 () Bool)

(assert (=> b!3180651 m!3437355))

(declare-fun m!3437357 () Bool)

(assert (=> b!3180649 m!3437357))

(declare-fun m!3437359 () Bool)

(assert (=> b!3180657 m!3437359))

(declare-fun m!3437361 () Bool)

(assert (=> b!3180676 m!3437361))

(declare-fun m!3437363 () Bool)

(assert (=> b!3180676 m!3437363))

(declare-fun m!3437365 () Bool)

(assert (=> b!3180674 m!3437365))

(declare-fun m!3437367 () Bool)

(assert (=> b!3180659 m!3437367))

(declare-fun m!3437369 () Bool)

(assert (=> b!3180647 m!3437369))

(declare-fun m!3437371 () Bool)

(assert (=> b!3180653 m!3437371))

(declare-fun m!3437373 () Bool)

(assert (=> b!3180650 m!3437373))

(declare-fun m!3437375 () Bool)

(assert (=> b!3180650 m!3437375))

(declare-fun m!3437377 () Bool)

(assert (=> b!3180673 m!3437377))

(declare-fun m!3437379 () Bool)

(assert (=> b!3180673 m!3437379))

(declare-fun m!3437381 () Bool)

(assert (=> b!3180673 m!3437381))

(declare-fun m!3437383 () Bool)

(assert (=> b!3180668 m!3437383))

(assert (=> b!3180668 m!3437383))

(declare-fun m!3437385 () Bool)

(assert (=> b!3180668 m!3437385))

(check-sat (not b!3180647) (not b!3180652) (not start!297930) (not b!3180673) (not b!3180655) (not b!3180675) (not b!3180654) (not b!3180676) b_and!210237 (not b!3180666) b_and!210235 (not b!3180651) (not b!3180653) b_and!210231 (not b_next!84545) b_and!210239 (not b!3180669) (not b!3180665) (not b_next!84553) (not b!3180674) (not b!3180656) (not b_next!84555) (not b!3180657) (not b_next!84547) (not b!3180660) (not b!3180662) (not b!3180650) (not b_next!84551) (not b!3180649) b_and!210241 (not b!3180659) (not b!3180661) (not b_next!84549) b_and!210233 (not b!3180668))
(check-sat (not b_next!84553) b_and!210237 b_and!210235 (not b_next!84551) b_and!210241 b_and!210231 (not b_next!84545) b_and!210239 (not b_next!84547) (not b_next!84555) (not b_next!84549) b_and!210233)
(get-model)

(declare-fun d!870380 () Bool)

(assert (=> d!870380 (= (inv!48577 (tag!5624 (rule!7530 (h!41150 tokens!494)))) (= (mod (str.len (value!166322 (tag!5624 (rule!7530 (h!41150 tokens!494))))) 2) 0))))

(assert (=> b!3180676 d!870380))

(declare-fun d!870382 () Bool)

(declare-fun res!1292649 () Bool)

(declare-fun e!1981607 () Bool)

(assert (=> d!870382 (=> (not res!1292649) (not e!1981607))))

(declare-fun semiInverseModEq!2131 (Int Int) Bool)

(assert (=> d!870382 (= res!1292649 (semiInverseModEq!2131 (toChars!7037 (transformation!5118 (rule!7530 (h!41150 tokens!494)))) (toValue!7178 (transformation!5118 (rule!7530 (h!41150 tokens!494))))))))

(assert (=> d!870382 (= (inv!48580 (transformation!5118 (rule!7530 (h!41150 tokens!494)))) e!1981607)))

(declare-fun b!3180735 () Bool)

(declare-fun equivClasses!2030 (Int Int) Bool)

(assert (=> b!3180735 (= e!1981607 (equivClasses!2030 (toChars!7037 (transformation!5118 (rule!7530 (h!41150 tokens!494)))) (toValue!7178 (transformation!5118 (rule!7530 (h!41150 tokens!494))))))))

(assert (= (and d!870382 res!1292649) b!3180735))

(declare-fun m!3437419 () Bool)

(assert (=> d!870382 m!3437419))

(declare-fun m!3437421 () Bool)

(assert (=> b!3180735 m!3437421))

(assert (=> b!3180676 d!870382))

(declare-fun d!870392 () Bool)

(declare-fun res!1292654 () Bool)

(declare-fun e!1981610 () Bool)

(assert (=> d!870392 (=> (not res!1292654) (not e!1981610))))

(assert (=> d!870392 (= res!1292654 (not (isEmpty!19843 (originalCharacters!5832 separatorToken!241))))))

(assert (=> d!870392 (= (inv!48581 separatorToken!241) e!1981610)))

(declare-fun b!3180740 () Bool)

(declare-fun res!1292655 () Bool)

(assert (=> b!3180740 (=> (not res!1292655) (not e!1981610))))

(declare-fun dynLambda!14403 (Int TokenValue!5348) BalanceConc!20836)

(assert (=> b!3180740 (= res!1292655 (= (originalCharacters!5832 separatorToken!241) (list!12679 (dynLambda!14403 (toChars!7037 (transformation!5118 (rule!7530 separatorToken!241))) (value!166323 separatorToken!241)))))))

(declare-fun b!3180741 () Bool)

(assert (=> b!3180741 (= e!1981610 (= (size!26962 separatorToken!241) (size!26963 (originalCharacters!5832 separatorToken!241))))))

(assert (= (and d!870392 res!1292654) b!3180740))

(assert (= (and b!3180740 res!1292655) b!3180741))

(declare-fun b_lambda!86605 () Bool)

(assert (=> (not b_lambda!86605) (not b!3180740)))

(declare-fun t!235124 () Bool)

(declare-fun tb!155221 () Bool)

(assert (=> (and b!3180667 (= (toChars!7037 (transformation!5118 (rule!7530 separatorToken!241))) (toChars!7037 (transformation!5118 (rule!7530 separatorToken!241)))) t!235124) tb!155221))

(declare-fun b!3180746 () Bool)

(declare-fun e!1981613 () Bool)

(declare-fun tp!1006276 () Bool)

(declare-fun inv!48584 (Conc!10611) Bool)

(assert (=> b!3180746 (= e!1981613 (and (inv!48584 (c!534253 (dynLambda!14403 (toChars!7037 (transformation!5118 (rule!7530 separatorToken!241))) (value!166323 separatorToken!241)))) tp!1006276))))

(declare-fun result!197260 () Bool)

(declare-fun inv!48585 (BalanceConc!20836) Bool)

(assert (=> tb!155221 (= result!197260 (and (inv!48585 (dynLambda!14403 (toChars!7037 (transformation!5118 (rule!7530 separatorToken!241))) (value!166323 separatorToken!241))) e!1981613))))

(assert (= tb!155221 b!3180746))

(declare-fun m!3437423 () Bool)

(assert (=> b!3180746 m!3437423))

(declare-fun m!3437425 () Bool)

(assert (=> tb!155221 m!3437425))

(assert (=> b!3180740 t!235124))

(declare-fun b_and!210249 () Bool)

(assert (= b_and!210233 (and (=> t!235124 result!197260) b_and!210249)))

(declare-fun t!235126 () Bool)

(declare-fun tb!155223 () Bool)

(assert (=> (and b!3180663 (= (toChars!7037 (transformation!5118 (rule!7530 (h!41150 tokens!494)))) (toChars!7037 (transformation!5118 (rule!7530 separatorToken!241)))) t!235126) tb!155223))

(declare-fun result!197264 () Bool)

(assert (= result!197264 result!197260))

(assert (=> b!3180740 t!235126))

(declare-fun b_and!210251 () Bool)

(assert (= b_and!210237 (and (=> t!235126 result!197264) b_and!210251)))

(declare-fun t!235128 () Bool)

(declare-fun tb!155225 () Bool)

(assert (=> (and b!3180672 (= (toChars!7037 (transformation!5118 (h!41151 rules!2135))) (toChars!7037 (transformation!5118 (rule!7530 separatorToken!241)))) t!235128) tb!155225))

(declare-fun result!197266 () Bool)

(assert (= result!197266 result!197260))

(assert (=> b!3180740 t!235128))

(declare-fun b_and!210253 () Bool)

(assert (= b_and!210241 (and (=> t!235128 result!197266) b_and!210253)))

(declare-fun m!3437427 () Bool)

(assert (=> d!870392 m!3437427))

(declare-fun m!3437429 () Bool)

(assert (=> b!3180740 m!3437429))

(assert (=> b!3180740 m!3437429))

(declare-fun m!3437431 () Bool)

(assert (=> b!3180740 m!3437431))

(declare-fun m!3437433 () Bool)

(assert (=> b!3180741 m!3437433))

(assert (=> start!297930 d!870392))

(declare-fun d!870394 () Bool)

(declare-fun res!1292656 () Bool)

(declare-fun e!1981614 () Bool)

(assert (=> d!870394 (=> (not res!1292656) (not e!1981614))))

(assert (=> d!870394 (= res!1292656 (not (isEmpty!19843 (originalCharacters!5832 (h!41150 tokens!494)))))))

(assert (=> d!870394 (= (inv!48581 (h!41150 tokens!494)) e!1981614)))

(declare-fun b!3180747 () Bool)

(declare-fun res!1292657 () Bool)

(assert (=> b!3180747 (=> (not res!1292657) (not e!1981614))))

(assert (=> b!3180747 (= res!1292657 (= (originalCharacters!5832 (h!41150 tokens!494)) (list!12679 (dynLambda!14403 (toChars!7037 (transformation!5118 (rule!7530 (h!41150 tokens!494)))) (value!166323 (h!41150 tokens!494))))))))

(declare-fun b!3180748 () Bool)

(assert (=> b!3180748 (= e!1981614 (= (size!26962 (h!41150 tokens!494)) (size!26963 (originalCharacters!5832 (h!41150 tokens!494)))))))

(assert (= (and d!870394 res!1292656) b!3180747))

(assert (= (and b!3180747 res!1292657) b!3180748))

(declare-fun b_lambda!86607 () Bool)

(assert (=> (not b_lambda!86607) (not b!3180747)))

(declare-fun tb!155227 () Bool)

(declare-fun t!235130 () Bool)

(assert (=> (and b!3180667 (= (toChars!7037 (transformation!5118 (rule!7530 separatorToken!241))) (toChars!7037 (transformation!5118 (rule!7530 (h!41150 tokens!494))))) t!235130) tb!155227))

(declare-fun b!3180749 () Bool)

(declare-fun e!1981615 () Bool)

(declare-fun tp!1006277 () Bool)

(assert (=> b!3180749 (= e!1981615 (and (inv!48584 (c!534253 (dynLambda!14403 (toChars!7037 (transformation!5118 (rule!7530 (h!41150 tokens!494)))) (value!166323 (h!41150 tokens!494))))) tp!1006277))))

(declare-fun result!197268 () Bool)

(assert (=> tb!155227 (= result!197268 (and (inv!48585 (dynLambda!14403 (toChars!7037 (transformation!5118 (rule!7530 (h!41150 tokens!494)))) (value!166323 (h!41150 tokens!494)))) e!1981615))))

(assert (= tb!155227 b!3180749))

(declare-fun m!3437435 () Bool)

(assert (=> b!3180749 m!3437435))

(declare-fun m!3437437 () Bool)

(assert (=> tb!155227 m!3437437))

(assert (=> b!3180747 t!235130))

(declare-fun b_and!210255 () Bool)

(assert (= b_and!210249 (and (=> t!235130 result!197268) b_and!210255)))

(declare-fun t!235132 () Bool)

(declare-fun tb!155229 () Bool)

(assert (=> (and b!3180663 (= (toChars!7037 (transformation!5118 (rule!7530 (h!41150 tokens!494)))) (toChars!7037 (transformation!5118 (rule!7530 (h!41150 tokens!494))))) t!235132) tb!155229))

(declare-fun result!197270 () Bool)

(assert (= result!197270 result!197268))

(assert (=> b!3180747 t!235132))

(declare-fun b_and!210257 () Bool)

(assert (= b_and!210251 (and (=> t!235132 result!197270) b_and!210257)))

(declare-fun tb!155231 () Bool)

(declare-fun t!235134 () Bool)

(assert (=> (and b!3180672 (= (toChars!7037 (transformation!5118 (h!41151 rules!2135))) (toChars!7037 (transformation!5118 (rule!7530 (h!41150 tokens!494))))) t!235134) tb!155231))

(declare-fun result!197272 () Bool)

(assert (= result!197272 result!197268))

(assert (=> b!3180747 t!235134))

(declare-fun b_and!210259 () Bool)

(assert (= b_and!210253 (and (=> t!235134 result!197272) b_and!210259)))

(declare-fun m!3437439 () Bool)

(assert (=> d!870394 m!3437439))

(declare-fun m!3437441 () Bool)

(assert (=> b!3180747 m!3437441))

(assert (=> b!3180747 m!3437441))

(declare-fun m!3437443 () Bool)

(assert (=> b!3180747 m!3437443))

(declare-fun m!3437445 () Bool)

(assert (=> b!3180748 m!3437445))

(assert (=> b!3180654 d!870394))

(declare-fun bs!539866 () Bool)

(declare-fun d!870396 () Bool)

(assert (= bs!539866 (and d!870396 b!3180660)))

(declare-fun lambda!116398 () Int)

(assert (=> bs!539866 (not (= lambda!116398 lambda!116393))))

(declare-fun b!3180832 () Bool)

(declare-fun e!1981674 () Bool)

(assert (=> b!3180832 (= e!1981674 true)))

(declare-fun b!3180831 () Bool)

(declare-fun e!1981673 () Bool)

(assert (=> b!3180831 (= e!1981673 e!1981674)))

(declare-fun b!3180830 () Bool)

(declare-fun e!1981672 () Bool)

(assert (=> b!3180830 (= e!1981672 e!1981673)))

(assert (=> d!870396 e!1981672))

(assert (= b!3180831 b!3180832))

(assert (= b!3180830 b!3180831))

(assert (= (and d!870396 ((_ is Cons!35731) rules!2135)) b!3180830))

(declare-fun order!18193 () Int)

(declare-fun order!18191 () Int)

(declare-fun dynLambda!14404 (Int Int) Int)

(declare-fun dynLambda!14405 (Int Int) Int)

(assert (=> b!3180832 (< (dynLambda!14404 order!18191 (toValue!7178 (transformation!5118 (h!41151 rules!2135)))) (dynLambda!14405 order!18193 lambda!116398))))

(declare-fun order!18195 () Int)

(declare-fun dynLambda!14406 (Int Int) Int)

(assert (=> b!3180832 (< (dynLambda!14406 order!18195 (toChars!7037 (transformation!5118 (h!41151 rules!2135)))) (dynLambda!14405 order!18193 lambda!116398))))

(assert (=> d!870396 true))

(declare-fun e!1981665 () Bool)

(assert (=> d!870396 e!1981665))

(declare-fun res!1292699 () Bool)

(assert (=> d!870396 (=> (not res!1292699) (not e!1981665))))

(declare-fun lt!1069225 () Bool)

(declare-fun list!12682 (BalanceConc!20838) List!35854)

(assert (=> d!870396 (= res!1292699 (= lt!1069225 (forall!7230 (list!12682 lt!1069169) lambda!116398)))))

(declare-fun forall!7232 (BalanceConc!20838 Int) Bool)

(assert (=> d!870396 (= lt!1069225 (forall!7232 lt!1069169 lambda!116398))))

(assert (=> d!870396 (not (isEmpty!19845 rules!2135))))

(assert (=> d!870396 (= (rulesProduceEachTokenIndividually!1158 thiss!18206 rules!2135 lt!1069169) lt!1069225)))

(declare-fun b!3180821 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1699 (LexerInterface!4707 List!35855 List!35854) Bool)

(assert (=> b!3180821 (= e!1981665 (= lt!1069225 (rulesProduceEachTokenIndividuallyList!1699 thiss!18206 rules!2135 (list!12682 lt!1069169))))))

(assert (= (and d!870396 res!1292699) b!3180821))

(declare-fun m!3437555 () Bool)

(assert (=> d!870396 m!3437555))

(assert (=> d!870396 m!3437555))

(declare-fun m!3437557 () Bool)

(assert (=> d!870396 m!3437557))

(declare-fun m!3437559 () Bool)

(assert (=> d!870396 m!3437559))

(assert (=> d!870396 m!3437365))

(assert (=> b!3180821 m!3437555))

(assert (=> b!3180821 m!3437555))

(declare-fun m!3437561 () Bool)

(assert (=> b!3180821 m!3437561))

(assert (=> b!3180665 d!870396))

(declare-fun d!870428 () Bool)

(declare-fun fromListB!1493 (List!35854) BalanceConc!20838)

(assert (=> d!870428 (= (seqFromList!3315 tokens!494) (fromListB!1493 tokens!494))))

(declare-fun bs!539867 () Bool)

(assert (= bs!539867 d!870428))

(declare-fun m!3437563 () Bool)

(assert (=> bs!539867 m!3437563))

(assert (=> b!3180665 d!870428))

(declare-fun d!870430 () Bool)

(declare-fun list!12683 (Conc!10611) List!35853)

(assert (=> d!870430 (= (list!12679 (charsOf!3140 separatorToken!241)) (list!12683 (c!534253 (charsOf!3140 separatorToken!241))))))

(declare-fun bs!539868 () Bool)

(assert (= bs!539868 d!870430))

(declare-fun m!3437565 () Bool)

(assert (=> bs!539868 m!3437565))

(assert (=> b!3180675 d!870430))

(declare-fun d!870432 () Bool)

(declare-fun lt!1069228 () BalanceConc!20836)

(assert (=> d!870432 (= (list!12679 lt!1069228) (originalCharacters!5832 separatorToken!241))))

(assert (=> d!870432 (= lt!1069228 (dynLambda!14403 (toChars!7037 (transformation!5118 (rule!7530 separatorToken!241))) (value!166323 separatorToken!241)))))

(assert (=> d!870432 (= (charsOf!3140 separatorToken!241) lt!1069228)))

(declare-fun b_lambda!86613 () Bool)

(assert (=> (not b_lambda!86613) (not d!870432)))

(assert (=> d!870432 t!235124))

(declare-fun b_and!210261 () Bool)

(assert (= b_and!210255 (and (=> t!235124 result!197260) b_and!210261)))

(assert (=> d!870432 t!235126))

(declare-fun b_and!210263 () Bool)

(assert (= b_and!210257 (and (=> t!235126 result!197264) b_and!210263)))

(assert (=> d!870432 t!235128))

(declare-fun b_and!210265 () Bool)

(assert (= b_and!210259 (and (=> t!235128 result!197266) b_and!210265)))

(declare-fun m!3437567 () Bool)

(assert (=> d!870432 m!3437567))

(assert (=> d!870432 m!3437429))

(assert (=> b!3180675 d!870432))

(declare-fun d!870434 () Bool)

(assert (=> d!870434 (= (list!12679 lt!1069167) (list!12683 (c!534253 lt!1069167)))))

(declare-fun bs!539869 () Bool)

(assert (= bs!539869 d!870434))

(declare-fun m!3437569 () Bool)

(assert (=> bs!539869 m!3437569))

(assert (=> b!3180675 d!870434))

(declare-fun b!3180845 () Bool)

(declare-fun res!1292705 () Bool)

(declare-fun e!1981679 () Bool)

(assert (=> b!3180845 (=> (not res!1292705) (not e!1981679))))

(declare-fun lt!1069231 () List!35853)

(assert (=> b!3180845 (= res!1292705 (= (size!26963 lt!1069231) (+ (size!26963 lt!1069175) (size!26963 lt!1069164))))))

(declare-fun b!3180844 () Bool)

(declare-fun e!1981680 () List!35853)

(assert (=> b!3180844 (= e!1981680 (Cons!35729 (h!41149 lt!1069175) (++!8540 (t!235114 lt!1069175) lt!1069164)))))

(declare-fun b!3180846 () Bool)

(assert (=> b!3180846 (= e!1981679 (or (not (= lt!1069164 Nil!35729)) (= lt!1069231 lt!1069175)))))

(declare-fun b!3180843 () Bool)

(assert (=> b!3180843 (= e!1981680 lt!1069164)))

(declare-fun d!870436 () Bool)

(assert (=> d!870436 e!1981679))

(declare-fun res!1292704 () Bool)

(assert (=> d!870436 (=> (not res!1292704) (not e!1981679))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4841 (List!35853) (InoxSet C!19940))

(assert (=> d!870436 (= res!1292704 (= (content!4841 lt!1069231) ((_ map or) (content!4841 lt!1069175) (content!4841 lt!1069164))))))

(assert (=> d!870436 (= lt!1069231 e!1981680)))

(declare-fun c!534281 () Bool)

(assert (=> d!870436 (= c!534281 ((_ is Nil!35729) lt!1069175))))

(assert (=> d!870436 (= (++!8540 lt!1069175 lt!1069164) lt!1069231)))

(assert (= (and d!870436 c!534281) b!3180843))

(assert (= (and d!870436 (not c!534281)) b!3180844))

(assert (= (and d!870436 res!1292704) b!3180845))

(assert (= (and b!3180845 res!1292705) b!3180846))

(declare-fun m!3437571 () Bool)

(assert (=> b!3180845 m!3437571))

(assert (=> b!3180845 m!3437325))

(declare-fun m!3437573 () Bool)

(assert (=> b!3180845 m!3437573))

(declare-fun m!3437575 () Bool)

(assert (=> b!3180844 m!3437575))

(declare-fun m!3437577 () Bool)

(assert (=> d!870436 m!3437577))

(declare-fun m!3437579 () Bool)

(assert (=> d!870436 m!3437579))

(declare-fun m!3437581 () Bool)

(assert (=> d!870436 m!3437581))

(assert (=> b!3180675 d!870436))

(declare-fun lt!1069234 () BalanceConc!20836)

(declare-fun d!870438 () Bool)

(declare-fun printWithSeparatorTokenList!89 (LexerInterface!4707 List!35854 Token!9602) List!35853)

(assert (=> d!870438 (= (list!12679 lt!1069234) (printWithSeparatorTokenList!89 thiss!18206 (list!12682 lt!1069169) separatorToken!241))))

(declare-fun printWithSeparatorTokenTailRec!3 (LexerInterface!4707 BalanceConc!20838 Token!9602 Int BalanceConc!20836) BalanceConc!20836)

(assert (=> d!870438 (= lt!1069234 (printWithSeparatorTokenTailRec!3 thiss!18206 lt!1069169 separatorToken!241 0 (BalanceConc!20837 Empty!10611)))))

(assert (=> d!870438 (isSeparator!5118 (rule!7530 separatorToken!241))))

(assert (=> d!870438 (= (printWithSeparatorToken!16 thiss!18206 lt!1069169 separatorToken!241) lt!1069234)))

(declare-fun bs!539870 () Bool)

(assert (= bs!539870 d!870438))

(declare-fun m!3437583 () Bool)

(assert (=> bs!539870 m!3437583))

(assert (=> bs!539870 m!3437555))

(assert (=> bs!539870 m!3437555))

(declare-fun m!3437585 () Bool)

(assert (=> bs!539870 m!3437585))

(declare-fun m!3437587 () Bool)

(assert (=> bs!539870 m!3437587))

(assert (=> b!3180675 d!870438))

(declare-fun d!870440 () Bool)

(assert (=> d!870440 (= (isEmpty!19845 rules!2135) ((_ is Nil!35731) rules!2135))))

(assert (=> b!3180674 d!870440))

(declare-fun d!870442 () Bool)

(declare-fun res!1292710 () Bool)

(declare-fun e!1981685 () Bool)

(assert (=> d!870442 (=> (not res!1292710) (not e!1981685))))

(declare-fun rulesValid!1891 (LexerInterface!4707 List!35855) Bool)

(assert (=> d!870442 (= res!1292710 (rulesValid!1891 thiss!18206 rules!2135))))

(assert (=> d!870442 (= (rulesInvariant!4104 thiss!18206 rules!2135) e!1981685)))

(declare-fun b!3180851 () Bool)

(declare-datatypes ((List!35857 0))(
  ( (Nil!35733) (Cons!35733 (h!41153 String!40074) (t!235192 List!35857)) )
))
(declare-fun noDuplicateTag!1887 (LexerInterface!4707 List!35855 List!35857) Bool)

(assert (=> b!3180851 (= e!1981685 (noDuplicateTag!1887 thiss!18206 rules!2135 Nil!35733))))

(assert (= (and d!870442 res!1292710) b!3180851))

(declare-fun m!3437589 () Bool)

(assert (=> d!870442 m!3437589))

(declare-fun m!3437591 () Bool)

(assert (=> b!3180851 m!3437591))

(assert (=> b!3180653 d!870442))

(declare-fun b!3180894 () Bool)

(declare-fun e!1981715 () Bool)

(declare-fun e!1981713 () Bool)

(assert (=> b!3180894 (= e!1981715 e!1981713)))

(declare-fun c!534290 () Bool)

(assert (=> b!3180894 (= c!534290 ((_ is EmptyLang!9877) (regex!5118 lt!1069172)))))

(declare-fun b!3180895 () Bool)

(declare-fun res!1292731 () Bool)

(declare-fun e!1981712 () Bool)

(assert (=> b!3180895 (=> (not res!1292731) (not e!1981712))))

(declare-fun tail!5168 (List!35853) List!35853)

(assert (=> b!3180895 (= res!1292731 (isEmpty!19843 (tail!5168 lt!1069175)))))

(declare-fun b!3180896 () Bool)

(declare-fun e!1981714 () Bool)

(declare-fun e!1981716 () Bool)

(assert (=> b!3180896 (= e!1981714 e!1981716)))

(declare-fun res!1292730 () Bool)

(assert (=> b!3180896 (=> (not res!1292730) (not e!1981716))))

(declare-fun lt!1069241 () Bool)

(assert (=> b!3180896 (= res!1292730 (not lt!1069241))))

(declare-fun b!3180897 () Bool)

(declare-fun call!230939 () Bool)

(assert (=> b!3180897 (= e!1981715 (= lt!1069241 call!230939))))

(declare-fun b!3180898 () Bool)

(declare-fun res!1292728 () Bool)

(assert (=> b!3180898 (=> res!1292728 e!1981714)))

(assert (=> b!3180898 (= res!1292728 (not ((_ is ElementMatch!9877) (regex!5118 lt!1069172))))))

(assert (=> b!3180898 (= e!1981713 e!1981714)))

(declare-fun b!3180899 () Bool)

(declare-fun e!1981710 () Bool)

(assert (=> b!3180899 (= e!1981716 e!1981710)))

(declare-fun res!1292735 () Bool)

(assert (=> b!3180899 (=> res!1292735 e!1981710)))

(assert (=> b!3180899 (= res!1292735 call!230939)))

(declare-fun b!3180900 () Bool)

(assert (=> b!3180900 (= e!1981712 (= (head!6941 lt!1069175) (c!534252 (regex!5118 lt!1069172))))))

(declare-fun b!3180901 () Bool)

(declare-fun res!1292734 () Bool)

(assert (=> b!3180901 (=> (not res!1292734) (not e!1981712))))

(assert (=> b!3180901 (= res!1292734 (not call!230939))))

(declare-fun b!3180902 () Bool)

(declare-fun res!1292733 () Bool)

(assert (=> b!3180902 (=> res!1292733 e!1981714)))

(assert (=> b!3180902 (= res!1292733 e!1981712)))

(declare-fun res!1292729 () Bool)

(assert (=> b!3180902 (=> (not res!1292729) (not e!1981712))))

(assert (=> b!3180902 (= res!1292729 lt!1069241)))

(declare-fun b!3180903 () Bool)

(assert (=> b!3180903 (= e!1981713 (not lt!1069241))))

(declare-fun d!870444 () Bool)

(assert (=> d!870444 e!1981715))

(declare-fun c!534288 () Bool)

(assert (=> d!870444 (= c!534288 ((_ is EmptyExpr!9877) (regex!5118 lt!1069172)))))

(declare-fun e!1981711 () Bool)

(assert (=> d!870444 (= lt!1069241 e!1981711)))

(declare-fun c!534289 () Bool)

(assert (=> d!870444 (= c!534289 (isEmpty!19843 lt!1069175))))

(declare-fun validRegex!4528 (Regex!9877) Bool)

(assert (=> d!870444 (validRegex!4528 (regex!5118 lt!1069172))))

(assert (=> d!870444 (= (matchR!4535 (regex!5118 lt!1069172) lt!1069175) lt!1069241)))

(declare-fun b!3180904 () Bool)

(declare-fun derivativeStep!2931 (Regex!9877 C!19940) Regex!9877)

(assert (=> b!3180904 (= e!1981711 (matchR!4535 (derivativeStep!2931 (regex!5118 lt!1069172) (head!6941 lt!1069175)) (tail!5168 lt!1069175)))))

(declare-fun b!3180905 () Bool)

(declare-fun nullable!3378 (Regex!9877) Bool)

(assert (=> b!3180905 (= e!1981711 (nullable!3378 (regex!5118 lt!1069172)))))

(declare-fun bm!230934 () Bool)

(assert (=> bm!230934 (= call!230939 (isEmpty!19843 lt!1069175))))

(declare-fun b!3180906 () Bool)

(declare-fun res!1292732 () Bool)

(assert (=> b!3180906 (=> res!1292732 e!1981710)))

(assert (=> b!3180906 (= res!1292732 (not (isEmpty!19843 (tail!5168 lt!1069175))))))

(declare-fun b!3180907 () Bool)

(assert (=> b!3180907 (= e!1981710 (not (= (head!6941 lt!1069175) (c!534252 (regex!5118 lt!1069172)))))))

(assert (= (and d!870444 c!534289) b!3180905))

(assert (= (and d!870444 (not c!534289)) b!3180904))

(assert (= (and d!870444 c!534288) b!3180897))

(assert (= (and d!870444 (not c!534288)) b!3180894))

(assert (= (and b!3180894 c!534290) b!3180903))

(assert (= (and b!3180894 (not c!534290)) b!3180898))

(assert (= (and b!3180898 (not res!1292728)) b!3180902))

(assert (= (and b!3180902 res!1292729) b!3180901))

(assert (= (and b!3180901 res!1292734) b!3180895))

(assert (= (and b!3180895 res!1292731) b!3180900))

(assert (= (and b!3180902 (not res!1292733)) b!3180896))

(assert (= (and b!3180896 res!1292730) b!3180899))

(assert (= (and b!3180899 (not res!1292735)) b!3180906))

(assert (= (and b!3180906 (not res!1292732)) b!3180907))

(assert (= (or b!3180897 b!3180899 b!3180901) bm!230934))

(declare-fun m!3437609 () Bool)

(assert (=> b!3180906 m!3437609))

(assert (=> b!3180906 m!3437609))

(declare-fun m!3437611 () Bool)

(assert (=> b!3180906 m!3437611))

(declare-fun m!3437613 () Bool)

(assert (=> d!870444 m!3437613))

(declare-fun m!3437615 () Bool)

(assert (=> d!870444 m!3437615))

(declare-fun m!3437617 () Bool)

(assert (=> b!3180904 m!3437617))

(assert (=> b!3180904 m!3437617))

(declare-fun m!3437619 () Bool)

(assert (=> b!3180904 m!3437619))

(assert (=> b!3180904 m!3437609))

(assert (=> b!3180904 m!3437619))

(assert (=> b!3180904 m!3437609))

(declare-fun m!3437621 () Bool)

(assert (=> b!3180904 m!3437621))

(assert (=> b!3180895 m!3437609))

(assert (=> b!3180895 m!3437609))

(assert (=> b!3180895 m!3437611))

(declare-fun m!3437623 () Bool)

(assert (=> b!3180905 m!3437623))

(assert (=> bm!230934 m!3437613))

(assert (=> b!3180900 m!3437617))

(assert (=> b!3180907 m!3437617))

(assert (=> b!3180652 d!870444))

(declare-fun d!870452 () Bool)

(assert (=> d!870452 (= (get!11360 lt!1069171) (v!35412 lt!1069171))))

(assert (=> b!3180652 d!870452))

(declare-fun d!870454 () Bool)

(assert (=> d!870454 (= (head!6941 lt!1069164) (h!41149 lt!1069164))))

(assert (=> b!3180662 d!870454))

(declare-fun d!870456 () Bool)

(assert (=> d!870456 (rulesProduceIndividualToken!2199 thiss!18206 rules!2135 (h!41150 tokens!494))))

(declare-fun lt!1069247 () Unit!50136)

(declare-fun choose!18540 (LexerInterface!4707 List!35855 List!35854 Token!9602) Unit!50136)

(assert (=> d!870456 (= lt!1069247 (choose!18540 thiss!18206 rules!2135 tokens!494 (h!41150 tokens!494)))))

(assert (=> d!870456 (not (isEmpty!19845 rules!2135))))

(assert (=> d!870456 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!768 thiss!18206 rules!2135 tokens!494 (h!41150 tokens!494)) lt!1069247)))

(declare-fun bs!539874 () Bool)

(assert (= bs!539874 d!870456))

(assert (=> bs!539874 m!3437355))

(declare-fun m!3437643 () Bool)

(assert (=> bs!539874 m!3437643))

(assert (=> bs!539874 m!3437365))

(assert (=> b!3180662 d!870456))

(declare-fun d!870460 () Bool)

(assert (=> d!870460 (= (isEmpty!19843 (getSuffix!1334 lt!1069175 lt!1069175)) ((_ is Nil!35729) (getSuffix!1334 lt!1069175 lt!1069175)))))

(assert (=> b!3180662 d!870460))

(declare-fun d!870462 () Bool)

(declare-fun lt!1069250 () Int)

(assert (=> d!870462 (>= lt!1069250 0)))

(declare-fun e!1981728 () Int)

(assert (=> d!870462 (= lt!1069250 e!1981728)))

(declare-fun c!534296 () Bool)

(assert (=> d!870462 (= c!534296 ((_ is Nil!35729) lt!1069175))))

(assert (=> d!870462 (= (size!26963 lt!1069175) lt!1069250)))

(declare-fun b!3180927 () Bool)

(assert (=> b!3180927 (= e!1981728 0)))

(declare-fun b!3180928 () Bool)

(assert (=> b!3180928 (= e!1981728 (+ 1 (size!26963 (t!235114 lt!1069175))))))

(assert (= (and d!870462 c!534296) b!3180927))

(assert (= (and d!870462 (not c!534296)) b!3180928))

(declare-fun m!3437647 () Bool)

(assert (=> b!3180928 m!3437647))

(assert (=> b!3180662 d!870462))

(declare-fun b!3180941 () Bool)

(declare-fun e!1981739 () Bool)

(declare-fun lt!1069257 () Option!6967)

(assert (=> b!3180941 (= e!1981739 (= (tag!5624 (get!11360 lt!1069257)) (tag!5624 (rule!7530 (h!41150 tokens!494)))))))

(declare-fun b!3180942 () Bool)

(declare-fun e!1981737 () Option!6967)

(declare-fun e!1981738 () Option!6967)

(assert (=> b!3180942 (= e!1981737 e!1981738)))

(declare-fun c!534301 () Bool)

(assert (=> b!3180942 (= c!534301 (and ((_ is Cons!35731) rules!2135) (not (= (tag!5624 (h!41151 rules!2135)) (tag!5624 (rule!7530 (h!41150 tokens!494)))))))))

(declare-fun b!3180943 () Bool)

(declare-fun e!1981740 () Bool)

(assert (=> b!3180943 (= e!1981740 e!1981739)))

(declare-fun res!1292749 () Bool)

(assert (=> b!3180943 (=> (not res!1292749) (not e!1981739))))

(declare-fun contains!6316 (List!35855 Rule!10036) Bool)

(assert (=> b!3180943 (= res!1292749 (contains!6316 rules!2135 (get!11360 lt!1069257)))))

(declare-fun b!3180945 () Bool)

(assert (=> b!3180945 (= e!1981738 None!6966)))

(declare-fun b!3180946 () Bool)

(assert (=> b!3180946 (= e!1981737 (Some!6966 (h!41151 rules!2135)))))

(declare-fun d!870466 () Bool)

(assert (=> d!870466 e!1981740))

(declare-fun res!1292750 () Bool)

(assert (=> d!870466 (=> res!1292750 e!1981740)))

(declare-fun isEmpty!19851 (Option!6967) Bool)

(assert (=> d!870466 (= res!1292750 (isEmpty!19851 lt!1069257))))

(assert (=> d!870466 (= lt!1069257 e!1981737)))

(declare-fun c!534302 () Bool)

(assert (=> d!870466 (= c!534302 (and ((_ is Cons!35731) rules!2135) (= (tag!5624 (h!41151 rules!2135)) (tag!5624 (rule!7530 (h!41150 tokens!494))))))))

(assert (=> d!870466 (rulesInvariant!4104 thiss!18206 rules!2135)))

(assert (=> d!870466 (= (getRuleFromTag!847 thiss!18206 rules!2135 (tag!5624 (rule!7530 (h!41150 tokens!494)))) lt!1069257)))

(declare-fun b!3180944 () Bool)

(declare-fun lt!1069259 () Unit!50136)

(declare-fun lt!1069258 () Unit!50136)

(assert (=> b!3180944 (= lt!1069259 lt!1069258)))

(assert (=> b!3180944 (rulesInvariant!4104 thiss!18206 (t!235116 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!330 (LexerInterface!4707 Rule!10036 List!35855) Unit!50136)

(assert (=> b!3180944 (= lt!1069258 (lemmaInvariantOnRulesThenOnTail!330 thiss!18206 (h!41151 rules!2135) (t!235116 rules!2135)))))

(assert (=> b!3180944 (= e!1981738 (getRuleFromTag!847 thiss!18206 (t!235116 rules!2135) (tag!5624 (rule!7530 (h!41150 tokens!494)))))))

(assert (= (and d!870466 c!534302) b!3180946))

(assert (= (and d!870466 (not c!534302)) b!3180942))

(assert (= (and b!3180942 c!534301) b!3180944))

(assert (= (and b!3180942 (not c!534301)) b!3180945))

(assert (= (and d!870466 (not res!1292750)) b!3180943))

(assert (= (and b!3180943 res!1292749) b!3180941))

(declare-fun m!3437649 () Bool)

(assert (=> b!3180941 m!3437649))

(assert (=> b!3180943 m!3437649))

(assert (=> b!3180943 m!3437649))

(declare-fun m!3437651 () Bool)

(assert (=> b!3180943 m!3437651))

(declare-fun m!3437653 () Bool)

(assert (=> d!870466 m!3437653))

(assert (=> d!870466 m!3437371))

(declare-fun m!3437655 () Bool)

(assert (=> b!3180944 m!3437655))

(declare-fun m!3437657 () Bool)

(assert (=> b!3180944 m!3437657))

(declare-fun m!3437659 () Bool)

(assert (=> b!3180944 m!3437659))

(assert (=> b!3180662 d!870466))

(declare-fun b!3180947 () Bool)

(declare-fun e!1981743 () Bool)

(declare-fun lt!1069260 () Option!6967)

(assert (=> b!3180947 (= e!1981743 (= (tag!5624 (get!11360 lt!1069260)) (tag!5624 (rule!7530 separatorToken!241))))))

(declare-fun b!3180948 () Bool)

(declare-fun e!1981741 () Option!6967)

(declare-fun e!1981742 () Option!6967)

(assert (=> b!3180948 (= e!1981741 e!1981742)))

(declare-fun c!534303 () Bool)

(assert (=> b!3180948 (= c!534303 (and ((_ is Cons!35731) rules!2135) (not (= (tag!5624 (h!41151 rules!2135)) (tag!5624 (rule!7530 separatorToken!241))))))))

(declare-fun b!3180949 () Bool)

(declare-fun e!1981744 () Bool)

(assert (=> b!3180949 (= e!1981744 e!1981743)))

(declare-fun res!1292751 () Bool)

(assert (=> b!3180949 (=> (not res!1292751) (not e!1981743))))

(assert (=> b!3180949 (= res!1292751 (contains!6316 rules!2135 (get!11360 lt!1069260)))))

(declare-fun b!3180951 () Bool)

(assert (=> b!3180951 (= e!1981742 None!6966)))

(declare-fun b!3180952 () Bool)

(assert (=> b!3180952 (= e!1981741 (Some!6966 (h!41151 rules!2135)))))

(declare-fun d!870468 () Bool)

(assert (=> d!870468 e!1981744))

(declare-fun res!1292752 () Bool)

(assert (=> d!870468 (=> res!1292752 e!1981744)))

(assert (=> d!870468 (= res!1292752 (isEmpty!19851 lt!1069260))))

(assert (=> d!870468 (= lt!1069260 e!1981741)))

(declare-fun c!534304 () Bool)

(assert (=> d!870468 (= c!534304 (and ((_ is Cons!35731) rules!2135) (= (tag!5624 (h!41151 rules!2135)) (tag!5624 (rule!7530 separatorToken!241)))))))

(assert (=> d!870468 (rulesInvariant!4104 thiss!18206 rules!2135)))

(assert (=> d!870468 (= (getRuleFromTag!847 thiss!18206 rules!2135 (tag!5624 (rule!7530 separatorToken!241))) lt!1069260)))

(declare-fun b!3180950 () Bool)

(declare-fun lt!1069262 () Unit!50136)

(declare-fun lt!1069261 () Unit!50136)

(assert (=> b!3180950 (= lt!1069262 lt!1069261)))

(assert (=> b!3180950 (rulesInvariant!4104 thiss!18206 (t!235116 rules!2135))))

(assert (=> b!3180950 (= lt!1069261 (lemmaInvariantOnRulesThenOnTail!330 thiss!18206 (h!41151 rules!2135) (t!235116 rules!2135)))))

(assert (=> b!3180950 (= e!1981742 (getRuleFromTag!847 thiss!18206 (t!235116 rules!2135) (tag!5624 (rule!7530 separatorToken!241))))))

(assert (= (and d!870468 c!534304) b!3180952))

(assert (= (and d!870468 (not c!534304)) b!3180948))

(assert (= (and b!3180948 c!534303) b!3180950))

(assert (= (and b!3180948 (not c!534303)) b!3180951))

(assert (= (and d!870468 (not res!1292752)) b!3180949))

(assert (= (and b!3180949 res!1292751) b!3180947))

(declare-fun m!3437661 () Bool)

(assert (=> b!3180947 m!3437661))

(assert (=> b!3180949 m!3437661))

(assert (=> b!3180949 m!3437661))

(declare-fun m!3437663 () Bool)

(assert (=> b!3180949 m!3437663))

(declare-fun m!3437665 () Bool)

(assert (=> d!870468 m!3437665))

(assert (=> d!870468 m!3437371))

(assert (=> b!3180950 m!3437655))

(assert (=> b!3180950 m!3437657))

(declare-fun m!3437667 () Bool)

(assert (=> b!3180950 m!3437667))

(assert (=> b!3180662 d!870468))

(declare-fun d!870470 () Bool)

(declare-fun lt!1069265 () List!35853)

(assert (=> d!870470 (= (++!8540 lt!1069175 lt!1069265) lt!1069175)))

(declare-fun e!1981747 () List!35853)

(assert (=> d!870470 (= lt!1069265 e!1981747)))

(declare-fun c!534307 () Bool)

(assert (=> d!870470 (= c!534307 ((_ is Cons!35729) lt!1069175))))

(assert (=> d!870470 (>= (size!26963 lt!1069175) (size!26963 lt!1069175))))

(assert (=> d!870470 (= (getSuffix!1334 lt!1069175 lt!1069175) lt!1069265)))

(declare-fun b!3180957 () Bool)

(assert (=> b!3180957 (= e!1981747 (getSuffix!1334 (tail!5168 lt!1069175) (t!235114 lt!1069175)))))

(declare-fun b!3180958 () Bool)

(assert (=> b!3180958 (= e!1981747 lt!1069175)))

(assert (= (and d!870470 c!534307) b!3180957))

(assert (= (and d!870470 (not c!534307)) b!3180958))

(declare-fun m!3437669 () Bool)

(assert (=> d!870470 m!3437669))

(assert (=> d!870470 m!3437325))

(assert (=> d!870470 m!3437325))

(assert (=> b!3180957 m!3437609))

(assert (=> b!3180957 m!3437609))

(declare-fun m!3437671 () Bool)

(assert (=> b!3180957 m!3437671))

(assert (=> b!3180662 d!870470))

(declare-fun d!870472 () Bool)

(declare-fun lt!1069268 () Bool)

(assert (=> d!870472 (= lt!1069268 (select (content!4841 (usedCharacters!462 (regex!5118 (rule!7530 separatorToken!241)))) (head!6941 lt!1069164)))))

(declare-fun e!1981752 () Bool)

(assert (=> d!870472 (= lt!1069268 e!1981752)))

(declare-fun res!1292757 () Bool)

(assert (=> d!870472 (=> (not res!1292757) (not e!1981752))))

(assert (=> d!870472 (= res!1292757 ((_ is Cons!35729) (usedCharacters!462 (regex!5118 (rule!7530 separatorToken!241)))))))

(assert (=> d!870472 (= (contains!6313 (usedCharacters!462 (regex!5118 (rule!7530 separatorToken!241))) (head!6941 lt!1069164)) lt!1069268)))

(declare-fun b!3180963 () Bool)

(declare-fun e!1981753 () Bool)

(assert (=> b!3180963 (= e!1981752 e!1981753)))

(declare-fun res!1292758 () Bool)

(assert (=> b!3180963 (=> res!1292758 e!1981753)))

(assert (=> b!3180963 (= res!1292758 (= (h!41149 (usedCharacters!462 (regex!5118 (rule!7530 separatorToken!241)))) (head!6941 lt!1069164)))))

(declare-fun b!3180964 () Bool)

(assert (=> b!3180964 (= e!1981753 (contains!6313 (t!235114 (usedCharacters!462 (regex!5118 (rule!7530 separatorToken!241)))) (head!6941 lt!1069164)))))

(assert (= (and d!870472 res!1292757) b!3180963))

(assert (= (and b!3180963 (not res!1292758)) b!3180964))

(assert (=> d!870472 m!3437295))

(declare-fun m!3437673 () Bool)

(assert (=> d!870472 m!3437673))

(assert (=> d!870472 m!3437315))

(declare-fun m!3437675 () Bool)

(assert (=> d!870472 m!3437675))

(assert (=> b!3180964 m!3437315))

(declare-fun m!3437677 () Bool)

(assert (=> b!3180964 m!3437677))

(assert (=> b!3180662 d!870472))

(declare-fun d!870474 () Bool)

(assert (=> d!870474 (= (isDefined!5462 lt!1069171) (not (isEmpty!19851 lt!1069171)))))

(declare-fun bs!539876 () Bool)

(assert (= bs!539876 d!870474))

(declare-fun m!3437679 () Bool)

(assert (=> bs!539876 m!3437679))

(assert (=> b!3180662 d!870474))

(declare-fun d!870476 () Bool)

(assert (=> d!870476 (= (maxPrefixOneRule!1512 thiss!18206 (rule!7530 (h!41150 tokens!494)) lt!1069175) (Some!6967 (tuple2!35063 (Token!9603 (apply!8030 (transformation!5118 (rule!7530 (h!41150 tokens!494))) (seqFromList!3316 lt!1069175)) (rule!7530 (h!41150 tokens!494)) (size!26963 lt!1069175) lt!1069175) Nil!35729)))))

(declare-fun lt!1069271 () Unit!50136)

(declare-fun choose!18543 (LexerInterface!4707 List!35855 List!35853 List!35853 List!35853 Rule!10036) Unit!50136)

(assert (=> d!870476 (= lt!1069271 (choose!18543 thiss!18206 rules!2135 lt!1069175 lt!1069175 Nil!35729 (rule!7530 (h!41150 tokens!494))))))

(assert (=> d!870476 (not (isEmpty!19845 rules!2135))))

(assert (=> d!870476 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!625 thiss!18206 rules!2135 lt!1069175 lt!1069175 Nil!35729 (rule!7530 (h!41150 tokens!494))) lt!1069271)))

(declare-fun bs!539877 () Bool)

(assert (= bs!539877 d!870476))

(declare-fun m!3437681 () Bool)

(assert (=> bs!539877 m!3437681))

(assert (=> bs!539877 m!3437381))

(assert (=> bs!539877 m!3437381))

(declare-fun m!3437683 () Bool)

(assert (=> bs!539877 m!3437683))

(assert (=> bs!539877 m!3437365))

(assert (=> bs!539877 m!3437325))

(assert (=> bs!539877 m!3437297))

(assert (=> b!3180662 d!870476))

(declare-fun d!870478 () Bool)

(assert (=> d!870478 (= (isDefined!5462 lt!1069168) (not (isEmpty!19851 lt!1069168)))))

(declare-fun bs!539878 () Bool)

(assert (= bs!539878 d!870478))

(declare-fun m!3437685 () Bool)

(assert (=> bs!539878 m!3437685))

(assert (=> b!3180662 d!870478))

(declare-fun d!870480 () Bool)

(declare-fun e!1981756 () Bool)

(assert (=> d!870480 e!1981756))

(declare-fun res!1292763 () Bool)

(assert (=> d!870480 (=> (not res!1292763) (not e!1981756))))

(assert (=> d!870480 (= res!1292763 (isDefined!5462 (getRuleFromTag!847 thiss!18206 rules!2135 (tag!5624 (rule!7530 separatorToken!241)))))))

(declare-fun lt!1069274 () Unit!50136)

(declare-fun choose!18544 (LexerInterface!4707 List!35855 List!35853 Token!9602) Unit!50136)

(assert (=> d!870480 (= lt!1069274 (choose!18544 thiss!18206 rules!2135 lt!1069164 separatorToken!241))))

(assert (=> d!870480 (rulesInvariant!4104 thiss!18206 rules!2135)))

(assert (=> d!870480 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!847 thiss!18206 rules!2135 lt!1069164 separatorToken!241) lt!1069274)))

(declare-fun b!3180969 () Bool)

(declare-fun res!1292764 () Bool)

(assert (=> b!3180969 (=> (not res!1292764) (not e!1981756))))

(assert (=> b!3180969 (= res!1292764 (matchR!4535 (regex!5118 (get!11360 (getRuleFromTag!847 thiss!18206 rules!2135 (tag!5624 (rule!7530 separatorToken!241))))) (list!12679 (charsOf!3140 separatorToken!241))))))

(declare-fun b!3180970 () Bool)

(assert (=> b!3180970 (= e!1981756 (= (rule!7530 separatorToken!241) (get!11360 (getRuleFromTag!847 thiss!18206 rules!2135 (tag!5624 (rule!7530 separatorToken!241))))))))

(assert (= (and d!870480 res!1292763) b!3180969))

(assert (= (and b!3180969 res!1292764) b!3180970))

(assert (=> d!870480 m!3437313))

(assert (=> d!870480 m!3437313))

(declare-fun m!3437687 () Bool)

(assert (=> d!870480 m!3437687))

(declare-fun m!3437689 () Bool)

(assert (=> d!870480 m!3437689))

(assert (=> d!870480 m!3437371))

(assert (=> b!3180969 m!3437313))

(assert (=> b!3180969 m!3437293))

(declare-fun m!3437691 () Bool)

(assert (=> b!3180969 m!3437691))

(assert (=> b!3180969 m!3437313))

(declare-fun m!3437693 () Bool)

(assert (=> b!3180969 m!3437693))

(assert (=> b!3180969 m!3437287))

(assert (=> b!3180969 m!3437293))

(assert (=> b!3180969 m!3437287))

(assert (=> b!3180970 m!3437313))

(assert (=> b!3180970 m!3437313))

(assert (=> b!3180970 m!3437693))

(assert (=> b!3180662 d!870480))

(declare-fun d!870482 () Bool)

(assert (=> d!870482 (isEmpty!19843 (getSuffix!1334 lt!1069175 lt!1069175))))

(declare-fun lt!1069277 () Unit!50136)

(declare-fun choose!18545 (List!35853) Unit!50136)

(assert (=> d!870482 (= lt!1069277 (choose!18545 lt!1069175))))

(assert (=> d!870482 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!12 lt!1069175) lt!1069277)))

(declare-fun bs!539879 () Bool)

(assert (= bs!539879 d!870482))

(assert (=> bs!539879 m!3437305))

(assert (=> bs!539879 m!3437305))

(assert (=> bs!539879 m!3437307))

(declare-fun m!3437695 () Bool)

(assert (=> bs!539879 m!3437695))

(assert (=> b!3180662 d!870482))

(declare-fun b!3181019 () Bool)

(declare-fun e!1981788 () Bool)

(declare-datatypes ((tuple2!35070 0))(
  ( (tuple2!35071 (_1!20669 List!35853) (_2!20669 List!35853)) )
))
(declare-fun findLongestMatchInner!811 (Regex!9877 List!35853 Int List!35853 List!35853 Int) tuple2!35070)

(assert (=> b!3181019 (= e!1981788 (matchR!4535 (regex!5118 (rule!7530 (h!41150 tokens!494))) (_1!20669 (findLongestMatchInner!811 (regex!5118 (rule!7530 (h!41150 tokens!494))) Nil!35729 (size!26963 Nil!35729) lt!1069175 lt!1069175 (size!26963 lt!1069175)))))))

(declare-fun b!3181020 () Bool)

(declare-fun res!1292794 () Bool)

(declare-fun e!1981790 () Bool)

(assert (=> b!3181020 (=> (not res!1292794) (not e!1981790))))

(declare-fun lt!1069306 () Option!6968)

(declare-fun get!11362 (Option!6968) tuple2!35062)

(assert (=> b!3181020 (= res!1292794 (= (++!8540 (list!12679 (charsOf!3140 (_1!20665 (get!11362 lt!1069306)))) (_2!20665 (get!11362 lt!1069306))) lt!1069175))))

(declare-fun b!3181021 () Bool)

(declare-fun res!1292797 () Bool)

(assert (=> b!3181021 (=> (not res!1292797) (not e!1981790))))

(assert (=> b!3181021 (= res!1292797 (= (value!166323 (_1!20665 (get!11362 lt!1069306))) (apply!8030 (transformation!5118 (rule!7530 (_1!20665 (get!11362 lt!1069306)))) (seqFromList!3316 (originalCharacters!5832 (_1!20665 (get!11362 lt!1069306)))))))))

(declare-fun b!3181022 () Bool)

(declare-fun res!1292798 () Bool)

(assert (=> b!3181022 (=> (not res!1292798) (not e!1981790))))

(assert (=> b!3181022 (= res!1292798 (= (rule!7530 (_1!20665 (get!11362 lt!1069306))) (rule!7530 (h!41150 tokens!494))))))

(declare-fun b!3181023 () Bool)

(declare-fun e!1981789 () Bool)

(assert (=> b!3181023 (= e!1981789 e!1981790)))

(declare-fun res!1292799 () Bool)

(assert (=> b!3181023 (=> (not res!1292799) (not e!1981790))))

(assert (=> b!3181023 (= res!1292799 (matchR!4535 (regex!5118 (rule!7530 (h!41150 tokens!494))) (list!12679 (charsOf!3140 (_1!20665 (get!11362 lt!1069306))))))))

(declare-fun b!3181024 () Bool)

(assert (=> b!3181024 (= e!1981790 (= (size!26962 (_1!20665 (get!11362 lt!1069306))) (size!26963 (originalCharacters!5832 (_1!20665 (get!11362 lt!1069306))))))))

(declare-fun b!3181025 () Bool)

(declare-fun e!1981787 () Option!6968)

(assert (=> b!3181025 (= e!1981787 None!6967)))

(declare-fun d!870484 () Bool)

(assert (=> d!870484 e!1981789))

(declare-fun res!1292793 () Bool)

(assert (=> d!870484 (=> res!1292793 e!1981789)))

(declare-fun isEmpty!19852 (Option!6968) Bool)

(assert (=> d!870484 (= res!1292793 (isEmpty!19852 lt!1069306))))

(assert (=> d!870484 (= lt!1069306 e!1981787)))

(declare-fun c!534318 () Bool)

(declare-fun lt!1069308 () tuple2!35070)

(assert (=> d!870484 (= c!534318 (isEmpty!19843 (_1!20669 lt!1069308)))))

(declare-fun findLongestMatch!726 (Regex!9877 List!35853) tuple2!35070)

(assert (=> d!870484 (= lt!1069308 (findLongestMatch!726 (regex!5118 (rule!7530 (h!41150 tokens!494))) lt!1069175))))

(declare-fun ruleValid!1620 (LexerInterface!4707 Rule!10036) Bool)

(assert (=> d!870484 (ruleValid!1620 thiss!18206 (rule!7530 (h!41150 tokens!494)))))

(assert (=> d!870484 (= (maxPrefixOneRule!1512 thiss!18206 (rule!7530 (h!41150 tokens!494)) lt!1069175) lt!1069306)))

(declare-fun b!3181026 () Bool)

(declare-fun size!26966 (BalanceConc!20836) Int)

(assert (=> b!3181026 (= e!1981787 (Some!6967 (tuple2!35063 (Token!9603 (apply!8030 (transformation!5118 (rule!7530 (h!41150 tokens!494))) (seqFromList!3316 (_1!20669 lt!1069308))) (rule!7530 (h!41150 tokens!494)) (size!26966 (seqFromList!3316 (_1!20669 lt!1069308))) (_1!20669 lt!1069308)) (_2!20669 lt!1069308))))))

(declare-fun lt!1069309 () Unit!50136)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!784 (Regex!9877 List!35853) Unit!50136)

(assert (=> b!3181026 (= lt!1069309 (longestMatchIsAcceptedByMatchOrIsEmpty!784 (regex!5118 (rule!7530 (h!41150 tokens!494))) lt!1069175))))

(declare-fun res!1292795 () Bool)

(assert (=> b!3181026 (= res!1292795 (isEmpty!19843 (_1!20669 (findLongestMatchInner!811 (regex!5118 (rule!7530 (h!41150 tokens!494))) Nil!35729 (size!26963 Nil!35729) lt!1069175 lt!1069175 (size!26963 lt!1069175)))))))

(assert (=> b!3181026 (=> res!1292795 e!1981788)))

(assert (=> b!3181026 e!1981788))

(declare-fun lt!1069307 () Unit!50136)

(assert (=> b!3181026 (= lt!1069307 lt!1069309)))

(declare-fun lt!1069310 () Unit!50136)

(declare-fun lemmaSemiInverse!1153 (TokenValueInjection!10124 BalanceConc!20836) Unit!50136)

(assert (=> b!3181026 (= lt!1069310 (lemmaSemiInverse!1153 (transformation!5118 (rule!7530 (h!41150 tokens!494))) (seqFromList!3316 (_1!20669 lt!1069308))))))

(declare-fun b!3181027 () Bool)

(declare-fun res!1292796 () Bool)

(assert (=> b!3181027 (=> (not res!1292796) (not e!1981790))))

(assert (=> b!3181027 (= res!1292796 (< (size!26963 (_2!20665 (get!11362 lt!1069306))) (size!26963 lt!1069175)))))

(assert (= (and d!870484 c!534318) b!3181025))

(assert (= (and d!870484 (not c!534318)) b!3181026))

(assert (= (and b!3181026 (not res!1292795)) b!3181019))

(assert (= (and d!870484 (not res!1292793)) b!3181023))

(assert (= (and b!3181023 res!1292799) b!3181020))

(assert (= (and b!3181020 res!1292794) b!3181027))

(assert (= (and b!3181027 res!1292796) b!3181022))

(assert (= (and b!3181022 res!1292798) b!3181021))

(assert (= (and b!3181021 res!1292797) b!3181024))

(declare-fun m!3437725 () Bool)

(assert (=> b!3181027 m!3437725))

(declare-fun m!3437727 () Bool)

(assert (=> b!3181027 m!3437727))

(assert (=> b!3181027 m!3437325))

(assert (=> b!3181021 m!3437725))

(declare-fun m!3437729 () Bool)

(assert (=> b!3181021 m!3437729))

(assert (=> b!3181021 m!3437729))

(declare-fun m!3437731 () Bool)

(assert (=> b!3181021 m!3437731))

(assert (=> b!3181024 m!3437725))

(declare-fun m!3437733 () Bool)

(assert (=> b!3181024 m!3437733))

(assert (=> b!3181023 m!3437725))

(declare-fun m!3437735 () Bool)

(assert (=> b!3181023 m!3437735))

(assert (=> b!3181023 m!3437735))

(declare-fun m!3437737 () Bool)

(assert (=> b!3181023 m!3437737))

(assert (=> b!3181023 m!3437737))

(declare-fun m!3437739 () Bool)

(assert (=> b!3181023 m!3437739))

(assert (=> b!3181020 m!3437725))

(assert (=> b!3181020 m!3437735))

(assert (=> b!3181020 m!3437735))

(assert (=> b!3181020 m!3437737))

(assert (=> b!3181020 m!3437737))

(declare-fun m!3437741 () Bool)

(assert (=> b!3181020 m!3437741))

(declare-fun m!3437743 () Bool)

(assert (=> b!3181019 m!3437743))

(assert (=> b!3181019 m!3437325))

(assert (=> b!3181019 m!3437743))

(assert (=> b!3181019 m!3437325))

(declare-fun m!3437745 () Bool)

(assert (=> b!3181019 m!3437745))

(declare-fun m!3437747 () Bool)

(assert (=> b!3181019 m!3437747))

(assert (=> b!3181022 m!3437725))

(declare-fun m!3437749 () Bool)

(assert (=> d!870484 m!3437749))

(declare-fun m!3437751 () Bool)

(assert (=> d!870484 m!3437751))

(declare-fun m!3437753 () Bool)

(assert (=> d!870484 m!3437753))

(declare-fun m!3437755 () Bool)

(assert (=> d!870484 m!3437755))

(assert (=> b!3181026 m!3437743))

(assert (=> b!3181026 m!3437325))

(assert (=> b!3181026 m!3437745))

(declare-fun m!3437757 () Bool)

(assert (=> b!3181026 m!3437757))

(declare-fun m!3437759 () Bool)

(assert (=> b!3181026 m!3437759))

(assert (=> b!3181026 m!3437325))

(declare-fun m!3437761 () Bool)

(assert (=> b!3181026 m!3437761))

(declare-fun m!3437763 () Bool)

(assert (=> b!3181026 m!3437763))

(assert (=> b!3181026 m!3437743))

(assert (=> b!3181026 m!3437757))

(declare-fun m!3437765 () Bool)

(assert (=> b!3181026 m!3437765))

(assert (=> b!3181026 m!3437757))

(declare-fun m!3437767 () Bool)

(assert (=> b!3181026 m!3437767))

(assert (=> b!3181026 m!3437757))

(assert (=> b!3180662 d!870484))

(declare-fun d!870494 () Bool)

(declare-fun dynLambda!14408 (Int BalanceConc!20836) TokenValue!5348)

(assert (=> d!870494 (= (apply!8030 (transformation!5118 (rule!7530 (h!41150 tokens!494))) lt!1069162) (dynLambda!14408 (toValue!7178 (transformation!5118 (rule!7530 (h!41150 tokens!494)))) lt!1069162))))

(declare-fun b_lambda!86615 () Bool)

(assert (=> (not b_lambda!86615) (not d!870494)))

(declare-fun tb!155233 () Bool)

(declare-fun t!235148 () Bool)

(assert (=> (and b!3180667 (= (toValue!7178 (transformation!5118 (rule!7530 separatorToken!241))) (toValue!7178 (transformation!5118 (rule!7530 (h!41150 tokens!494))))) t!235148) tb!155233))

(declare-fun result!197274 () Bool)

(assert (=> tb!155233 (= result!197274 (inv!21 (dynLambda!14408 (toValue!7178 (transformation!5118 (rule!7530 (h!41150 tokens!494)))) lt!1069162)))))

(declare-fun m!3437769 () Bool)

(assert (=> tb!155233 m!3437769))

(assert (=> d!870494 t!235148))

(declare-fun b_and!210267 () Bool)

(assert (= b_and!210231 (and (=> t!235148 result!197274) b_and!210267)))

(declare-fun t!235150 () Bool)

(declare-fun tb!155235 () Bool)

(assert (=> (and b!3180663 (= (toValue!7178 (transformation!5118 (rule!7530 (h!41150 tokens!494)))) (toValue!7178 (transformation!5118 (rule!7530 (h!41150 tokens!494))))) t!235150) tb!155235))

(declare-fun result!197278 () Bool)

(assert (= result!197278 result!197274))

(assert (=> d!870494 t!235150))

(declare-fun b_and!210269 () Bool)

(assert (= b_and!210235 (and (=> t!235150 result!197278) b_and!210269)))

(declare-fun tb!155237 () Bool)

(declare-fun t!235152 () Bool)

(assert (=> (and b!3180672 (= (toValue!7178 (transformation!5118 (h!41151 rules!2135))) (toValue!7178 (transformation!5118 (rule!7530 (h!41150 tokens!494))))) t!235152) tb!155237))

(declare-fun result!197280 () Bool)

(assert (= result!197280 result!197274))

(assert (=> d!870494 t!235152))

(declare-fun b_and!210271 () Bool)

(assert (= b_and!210239 (and (=> t!235152 result!197280) b_and!210271)))

(declare-fun m!3437775 () Bool)

(assert (=> d!870494 m!3437775))

(assert (=> b!3180662 d!870494))

(declare-fun d!870498 () Bool)

(declare-fun e!1981794 () Bool)

(assert (=> d!870498 e!1981794))

(declare-fun res!1292800 () Bool)

(assert (=> d!870498 (=> (not res!1292800) (not e!1981794))))

(assert (=> d!870498 (= res!1292800 (isDefined!5462 (getRuleFromTag!847 thiss!18206 rules!2135 (tag!5624 (rule!7530 (h!41150 tokens!494))))))))

(declare-fun lt!1069314 () Unit!50136)

(assert (=> d!870498 (= lt!1069314 (choose!18544 thiss!18206 rules!2135 lt!1069175 (h!41150 tokens!494)))))

(assert (=> d!870498 (rulesInvariant!4104 thiss!18206 rules!2135)))

(assert (=> d!870498 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!847 thiss!18206 rules!2135 lt!1069175 (h!41150 tokens!494)) lt!1069314)))

(declare-fun b!3181030 () Bool)

(declare-fun res!1292801 () Bool)

(assert (=> b!3181030 (=> (not res!1292801) (not e!1981794))))

(assert (=> b!3181030 (= res!1292801 (matchR!4535 (regex!5118 (get!11360 (getRuleFromTag!847 thiss!18206 rules!2135 (tag!5624 (rule!7530 (h!41150 tokens!494)))))) (list!12679 (charsOf!3140 (h!41150 tokens!494)))))))

(declare-fun b!3181031 () Bool)

(assert (=> b!3181031 (= e!1981794 (= (rule!7530 (h!41150 tokens!494)) (get!11360 (getRuleFromTag!847 thiss!18206 rules!2135 (tag!5624 (rule!7530 (h!41150 tokens!494)))))))))

(assert (= (and d!870498 res!1292800) b!3181030))

(assert (= (and b!3181030 res!1292801) b!3181031))

(assert (=> d!870498 m!3437299))

(assert (=> d!870498 m!3437299))

(declare-fun m!3437777 () Bool)

(assert (=> d!870498 m!3437777))

(declare-fun m!3437779 () Bool)

(assert (=> d!870498 m!3437779))

(assert (=> d!870498 m!3437371))

(assert (=> b!3181030 m!3437299))

(assert (=> b!3181030 m!3437385))

(declare-fun m!3437781 () Bool)

(assert (=> b!3181030 m!3437781))

(assert (=> b!3181030 m!3437299))

(declare-fun m!3437783 () Bool)

(assert (=> b!3181030 m!3437783))

(assert (=> b!3181030 m!3437383))

(assert (=> b!3181030 m!3437385))

(assert (=> b!3181030 m!3437383))

(assert (=> b!3181031 m!3437299))

(assert (=> b!3181031 m!3437299))

(assert (=> b!3181031 m!3437783))

(assert (=> b!3180662 d!870498))

(declare-fun bm!230955 () Bool)

(declare-fun call!230960 () List!35853)

(declare-fun c!534342 () Bool)

(assert (=> bm!230955 (= call!230960 (usedCharacters!462 (ite c!534342 (regTwo!20267 (regex!5118 (rule!7530 separatorToken!241))) (regOne!20266 (regex!5118 (rule!7530 separatorToken!241))))))))

(declare-fun b!3181072 () Bool)

(declare-fun e!1981818 () List!35853)

(declare-fun call!230961 () List!35853)

(assert (=> b!3181072 (= e!1981818 call!230961)))

(declare-fun b!3181073 () Bool)

(declare-fun e!1981816 () List!35853)

(assert (=> b!3181073 (= e!1981816 (Cons!35729 (c!534252 (regex!5118 (rule!7530 separatorToken!241))) Nil!35729))))

(declare-fun b!3181074 () Bool)

(declare-fun e!1981815 () List!35853)

(assert (=> b!3181074 (= e!1981815 e!1981818)))

(assert (=> b!3181074 (= c!534342 ((_ is Union!9877) (regex!5118 (rule!7530 separatorToken!241))))))

(declare-fun b!3181075 () Bool)

(assert (=> b!3181075 (= e!1981818 call!230961)))

(declare-fun b!3181076 () Bool)

(declare-fun e!1981817 () List!35853)

(assert (=> b!3181076 (= e!1981817 Nil!35729)))

(declare-fun bm!230956 () Bool)

(declare-fun call!230962 () List!35853)

(declare-fun call!230963 () List!35853)

(assert (=> bm!230956 (= call!230962 call!230963)))

(declare-fun b!3181077 () Bool)

(assert (=> b!3181077 (= e!1981817 e!1981816)))

(declare-fun c!534340 () Bool)

(assert (=> b!3181077 (= c!534340 ((_ is ElementMatch!9877) (regex!5118 (rule!7530 separatorToken!241))))))

(declare-fun b!3181078 () Bool)

(assert (=> b!3181078 (= e!1981815 call!230963)))

(declare-fun b!3181079 () Bool)

(declare-fun c!534339 () Bool)

(assert (=> b!3181079 (= c!534339 ((_ is Star!9877) (regex!5118 (rule!7530 separatorToken!241))))))

(assert (=> b!3181079 (= e!1981816 e!1981815)))

(declare-fun bm!230958 () Bool)

(assert (=> bm!230958 (= call!230963 (usedCharacters!462 (ite c!534339 (reg!10206 (regex!5118 (rule!7530 separatorToken!241))) (ite c!534342 (regOne!20267 (regex!5118 (rule!7530 separatorToken!241))) (regTwo!20266 (regex!5118 (rule!7530 separatorToken!241)))))))))

(declare-fun d!870500 () Bool)

(declare-fun c!534341 () Bool)

(assert (=> d!870500 (= c!534341 (or ((_ is EmptyExpr!9877) (regex!5118 (rule!7530 separatorToken!241))) ((_ is EmptyLang!9877) (regex!5118 (rule!7530 separatorToken!241)))))))

(assert (=> d!870500 (= (usedCharacters!462 (regex!5118 (rule!7530 separatorToken!241))) e!1981817)))

(declare-fun bm!230957 () Bool)

(assert (=> bm!230957 (= call!230961 (++!8540 (ite c!534342 call!230962 call!230960) (ite c!534342 call!230960 call!230962)))))

(assert (= (and d!870500 c!534341) b!3181076))

(assert (= (and d!870500 (not c!534341)) b!3181077))

(assert (= (and b!3181077 c!534340) b!3181073))

(assert (= (and b!3181077 (not c!534340)) b!3181079))

(assert (= (and b!3181079 c!534339) b!3181078))

(assert (= (and b!3181079 (not c!534339)) b!3181074))

(assert (= (and b!3181074 c!534342) b!3181072))

(assert (= (and b!3181074 (not c!534342)) b!3181075))

(assert (= (or b!3181072 b!3181075) bm!230955))

(assert (= (or b!3181072 b!3181075) bm!230956))

(assert (= (or b!3181072 b!3181075) bm!230957))

(assert (= (or b!3181078 bm!230956) bm!230958))

(declare-fun m!3437793 () Bool)

(assert (=> bm!230955 m!3437793))

(declare-fun m!3437795 () Bool)

(assert (=> bm!230958 m!3437795))

(declare-fun m!3437797 () Bool)

(assert (=> bm!230957 m!3437797))

(assert (=> b!3180662 d!870500))

(declare-fun lt!1069317 () Bool)

(declare-fun d!870506 () Bool)

(declare-fun isEmpty!19853 (List!35854) Bool)

(assert (=> d!870506 (= lt!1069317 (isEmpty!19853 (list!12682 (_1!20666 (lex!2047 thiss!18206 rules!2135 lt!1069162)))))))

(declare-fun isEmpty!19854 (Conc!10612) Bool)

(assert (=> d!870506 (= lt!1069317 (isEmpty!19854 (c!534254 (_1!20666 (lex!2047 thiss!18206 rules!2135 lt!1069162)))))))

(assert (=> d!870506 (= (isEmpty!19844 (_1!20666 (lex!2047 thiss!18206 rules!2135 lt!1069162))) lt!1069317)))

(declare-fun bs!539883 () Bool)

(assert (= bs!539883 d!870506))

(declare-fun m!3437799 () Bool)

(assert (=> bs!539883 m!3437799))

(assert (=> bs!539883 m!3437799))

(declare-fun m!3437801 () Bool)

(assert (=> bs!539883 m!3437801))

(declare-fun m!3437803 () Bool)

(assert (=> bs!539883 m!3437803))

(assert (=> b!3180673 d!870506))

(declare-fun b!3181139 () Bool)

(declare-fun e!1981850 () Bool)

(declare-fun lt!1069348 () tuple2!35064)

(assert (=> b!3181139 (= e!1981850 (= (_2!20666 lt!1069348) lt!1069162))))

(declare-fun b!3181140 () Bool)

(declare-fun e!1981852 () Bool)

(declare-datatypes ((tuple2!35072 0))(
  ( (tuple2!35073 (_1!20670 List!35854) (_2!20670 List!35853)) )
))
(declare-fun lexList!1271 (LexerInterface!4707 List!35855 List!35853) tuple2!35072)

(assert (=> b!3181140 (= e!1981852 (= (list!12679 (_2!20666 lt!1069348)) (_2!20670 (lexList!1271 thiss!18206 rules!2135 (list!12679 lt!1069162)))))))

(declare-fun d!870508 () Bool)

(assert (=> d!870508 e!1981852))

(declare-fun res!1292838 () Bool)

(assert (=> d!870508 (=> (not res!1292838) (not e!1981852))))

(assert (=> d!870508 (= res!1292838 e!1981850)))

(declare-fun c!534354 () Bool)

(declare-fun size!26967 (BalanceConc!20838) Int)

(assert (=> d!870508 (= c!534354 (> (size!26967 (_1!20666 lt!1069348)) 0))))

(declare-fun lexTailRecV2!909 (LexerInterface!4707 List!35855 BalanceConc!20836 BalanceConc!20836 BalanceConc!20836 BalanceConc!20838) tuple2!35064)

(assert (=> d!870508 (= lt!1069348 (lexTailRecV2!909 thiss!18206 rules!2135 lt!1069162 (BalanceConc!20837 Empty!10611) lt!1069162 (BalanceConc!20839 Empty!10612)))))

(assert (=> d!870508 (= (lex!2047 thiss!18206 rules!2135 lt!1069162) lt!1069348)))

(declare-fun b!3181141 () Bool)

(declare-fun res!1292837 () Bool)

(assert (=> b!3181141 (=> (not res!1292837) (not e!1981852))))

(assert (=> b!3181141 (= res!1292837 (= (list!12682 (_1!20666 lt!1069348)) (_1!20670 (lexList!1271 thiss!18206 rules!2135 (list!12679 lt!1069162)))))))

(declare-fun b!3181142 () Bool)

(declare-fun e!1981851 () Bool)

(assert (=> b!3181142 (= e!1981850 e!1981851)))

(declare-fun res!1292839 () Bool)

(assert (=> b!3181142 (= res!1292839 (< (size!26966 (_2!20666 lt!1069348)) (size!26966 lt!1069162)))))

(assert (=> b!3181142 (=> (not res!1292839) (not e!1981851))))

(declare-fun b!3181143 () Bool)

(assert (=> b!3181143 (= e!1981851 (not (isEmpty!19844 (_1!20666 lt!1069348))))))

(assert (= (and d!870508 c!534354) b!3181142))

(assert (= (and d!870508 (not c!534354)) b!3181139))

(assert (= (and b!3181142 res!1292839) b!3181143))

(assert (= (and d!870508 res!1292838) b!3181141))

(assert (= (and b!3181141 res!1292837) b!3181140))

(declare-fun m!3437881 () Bool)

(assert (=> d!870508 m!3437881))

(declare-fun m!3437883 () Bool)

(assert (=> d!870508 m!3437883))

(declare-fun m!3437885 () Bool)

(assert (=> b!3181143 m!3437885))

(declare-fun m!3437887 () Bool)

(assert (=> b!3181140 m!3437887))

(declare-fun m!3437889 () Bool)

(assert (=> b!3181140 m!3437889))

(assert (=> b!3181140 m!3437889))

(declare-fun m!3437891 () Bool)

(assert (=> b!3181140 m!3437891))

(declare-fun m!3437893 () Bool)

(assert (=> b!3181141 m!3437893))

(assert (=> b!3181141 m!3437889))

(assert (=> b!3181141 m!3437889))

(assert (=> b!3181141 m!3437891))

(declare-fun m!3437895 () Bool)

(assert (=> b!3181142 m!3437895))

(declare-fun m!3437897 () Bool)

(assert (=> b!3181142 m!3437897))

(assert (=> b!3180673 d!870508))

(declare-fun d!870532 () Bool)

(declare-fun fromListB!1494 (List!35853) BalanceConc!20836)

(assert (=> d!870532 (= (seqFromList!3316 lt!1069175) (fromListB!1494 lt!1069175))))

(declare-fun bs!539887 () Bool)

(assert (= bs!539887 d!870532))

(declare-fun m!3437907 () Bool)

(assert (=> bs!539887 m!3437907))

(assert (=> b!3180673 d!870532))

(declare-fun d!870536 () Bool)

(declare-fun lt!1069366 () Bool)

(declare-fun e!1981916 () Bool)

(assert (=> d!870536 (= lt!1069366 e!1981916)))

(declare-fun res!1292865 () Bool)

(assert (=> d!870536 (=> (not res!1292865) (not e!1981916))))

(assert (=> d!870536 (= res!1292865 (= (list!12682 (_1!20666 (lex!2047 thiss!18206 rules!2135 (print!1774 thiss!18206 (singletonSeq!2214 (h!41150 tokens!494)))))) (list!12682 (singletonSeq!2214 (h!41150 tokens!494)))))))

(declare-fun e!1981917 () Bool)

(assert (=> d!870536 (= lt!1069366 e!1981917)))

(declare-fun res!1292867 () Bool)

(assert (=> d!870536 (=> (not res!1292867) (not e!1981917))))

(declare-fun lt!1069365 () tuple2!35064)

(assert (=> d!870536 (= res!1292867 (= (size!26967 (_1!20666 lt!1069365)) 1))))

(assert (=> d!870536 (= lt!1069365 (lex!2047 thiss!18206 rules!2135 (print!1774 thiss!18206 (singletonSeq!2214 (h!41150 tokens!494)))))))

(assert (=> d!870536 (not (isEmpty!19845 rules!2135))))

(assert (=> d!870536 (= (rulesProduceIndividualToken!2199 thiss!18206 rules!2135 (h!41150 tokens!494)) lt!1069366)))

(declare-fun b!3181233 () Bool)

(declare-fun res!1292866 () Bool)

(assert (=> b!3181233 (=> (not res!1292866) (not e!1981917))))

(declare-fun apply!8033 (BalanceConc!20838 Int) Token!9602)

(assert (=> b!3181233 (= res!1292866 (= (apply!8033 (_1!20666 lt!1069365) 0) (h!41150 tokens!494)))))

(declare-fun b!3181234 () Bool)

(declare-fun isEmpty!19855 (BalanceConc!20836) Bool)

(assert (=> b!3181234 (= e!1981917 (isEmpty!19855 (_2!20666 lt!1069365)))))

(declare-fun b!3181235 () Bool)

(assert (=> b!3181235 (= e!1981916 (isEmpty!19855 (_2!20666 (lex!2047 thiss!18206 rules!2135 (print!1774 thiss!18206 (singletonSeq!2214 (h!41150 tokens!494)))))))))

(assert (= (and d!870536 res!1292867) b!3181233))

(assert (= (and b!3181233 res!1292866) b!3181234))

(assert (= (and d!870536 res!1292865) b!3181235))

(declare-fun m!3437983 () Bool)

(assert (=> d!870536 m!3437983))

(declare-fun m!3437985 () Bool)

(assert (=> d!870536 m!3437985))

(declare-fun m!3437987 () Bool)

(assert (=> d!870536 m!3437987))

(assert (=> d!870536 m!3437341))

(declare-fun m!3437989 () Bool)

(assert (=> d!870536 m!3437989))

(assert (=> d!870536 m!3437365))

(assert (=> d!870536 m!3437341))

(declare-fun m!3437991 () Bool)

(assert (=> d!870536 m!3437991))

(assert (=> d!870536 m!3437341))

(assert (=> d!870536 m!3437985))

(declare-fun m!3437993 () Bool)

(assert (=> b!3181233 m!3437993))

(declare-fun m!3437995 () Bool)

(assert (=> b!3181234 m!3437995))

(assert (=> b!3181235 m!3437341))

(assert (=> b!3181235 m!3437341))

(assert (=> b!3181235 m!3437985))

(assert (=> b!3181235 m!3437985))

(assert (=> b!3181235 m!3437987))

(declare-fun m!3437997 () Bool)

(assert (=> b!3181235 m!3437997))

(assert (=> b!3180651 d!870536))

(declare-fun d!870560 () Bool)

(assert (=> d!870560 (= (inv!48577 (tag!5624 (rule!7530 separatorToken!241))) (= (mod (str.len (value!166322 (tag!5624 (rule!7530 separatorToken!241)))) 2) 0))))

(assert (=> b!3180650 d!870560))

(declare-fun d!870562 () Bool)

(declare-fun res!1292868 () Bool)

(declare-fun e!1981918 () Bool)

(assert (=> d!870562 (=> (not res!1292868) (not e!1981918))))

(assert (=> d!870562 (= res!1292868 (semiInverseModEq!2131 (toChars!7037 (transformation!5118 (rule!7530 separatorToken!241))) (toValue!7178 (transformation!5118 (rule!7530 separatorToken!241)))))))

(assert (=> d!870562 (= (inv!48580 (transformation!5118 (rule!7530 separatorToken!241))) e!1981918)))

(declare-fun b!3181236 () Bool)

(assert (=> b!3181236 (= e!1981918 (equivClasses!2030 (toChars!7037 (transformation!5118 (rule!7530 separatorToken!241))) (toValue!7178 (transformation!5118 (rule!7530 separatorToken!241)))))))

(assert (= (and d!870562 res!1292868) b!3181236))

(declare-fun m!3437999 () Bool)

(assert (=> d!870562 m!3437999))

(declare-fun m!3438001 () Bool)

(assert (=> b!3181236 m!3438001))

(assert (=> b!3180650 d!870562))

(declare-fun b!3181237 () Bool)

(declare-fun e!1981924 () Bool)

(declare-fun e!1981922 () Bool)

(assert (=> b!3181237 (= e!1981924 e!1981922)))

(declare-fun c!534362 () Bool)

(assert (=> b!3181237 (= c!534362 ((_ is EmptyLang!9877) (regex!5118 lt!1069165)))))

(declare-fun b!3181238 () Bool)

(declare-fun res!1292872 () Bool)

(declare-fun e!1981921 () Bool)

(assert (=> b!3181238 (=> (not res!1292872) (not e!1981921))))

(assert (=> b!3181238 (= res!1292872 (isEmpty!19843 (tail!5168 lt!1069164)))))

(declare-fun b!3181239 () Bool)

(declare-fun e!1981923 () Bool)

(declare-fun e!1981925 () Bool)

(assert (=> b!3181239 (= e!1981923 e!1981925)))

(declare-fun res!1292871 () Bool)

(assert (=> b!3181239 (=> (not res!1292871) (not e!1981925))))

(declare-fun lt!1069367 () Bool)

(assert (=> b!3181239 (= res!1292871 (not lt!1069367))))

(declare-fun b!3181240 () Bool)

(declare-fun call!230964 () Bool)

(assert (=> b!3181240 (= e!1981924 (= lt!1069367 call!230964))))

(declare-fun b!3181241 () Bool)

(declare-fun res!1292869 () Bool)

(assert (=> b!3181241 (=> res!1292869 e!1981923)))

(assert (=> b!3181241 (= res!1292869 (not ((_ is ElementMatch!9877) (regex!5118 lt!1069165))))))

(assert (=> b!3181241 (= e!1981922 e!1981923)))

(declare-fun b!3181242 () Bool)

(declare-fun e!1981919 () Bool)

(assert (=> b!3181242 (= e!1981925 e!1981919)))

(declare-fun res!1292876 () Bool)

(assert (=> b!3181242 (=> res!1292876 e!1981919)))

(assert (=> b!3181242 (= res!1292876 call!230964)))

(declare-fun b!3181243 () Bool)

(assert (=> b!3181243 (= e!1981921 (= (head!6941 lt!1069164) (c!534252 (regex!5118 lt!1069165))))))

(declare-fun b!3181244 () Bool)

(declare-fun res!1292875 () Bool)

(assert (=> b!3181244 (=> (not res!1292875) (not e!1981921))))

(assert (=> b!3181244 (= res!1292875 (not call!230964))))

(declare-fun b!3181245 () Bool)

(declare-fun res!1292874 () Bool)

(assert (=> b!3181245 (=> res!1292874 e!1981923)))

(assert (=> b!3181245 (= res!1292874 e!1981921)))

(declare-fun res!1292870 () Bool)

(assert (=> b!3181245 (=> (not res!1292870) (not e!1981921))))

(assert (=> b!3181245 (= res!1292870 lt!1069367)))

(declare-fun b!3181246 () Bool)

(assert (=> b!3181246 (= e!1981922 (not lt!1069367))))

(declare-fun d!870564 () Bool)

(assert (=> d!870564 e!1981924))

(declare-fun c!534360 () Bool)

(assert (=> d!870564 (= c!534360 ((_ is EmptyExpr!9877) (regex!5118 lt!1069165)))))

(declare-fun e!1981920 () Bool)

(assert (=> d!870564 (= lt!1069367 e!1981920)))

(declare-fun c!534361 () Bool)

(assert (=> d!870564 (= c!534361 (isEmpty!19843 lt!1069164))))

(assert (=> d!870564 (validRegex!4528 (regex!5118 lt!1069165))))

(assert (=> d!870564 (= (matchR!4535 (regex!5118 lt!1069165) lt!1069164) lt!1069367)))

(declare-fun b!3181247 () Bool)

(assert (=> b!3181247 (= e!1981920 (matchR!4535 (derivativeStep!2931 (regex!5118 lt!1069165) (head!6941 lt!1069164)) (tail!5168 lt!1069164)))))

(declare-fun b!3181248 () Bool)

(assert (=> b!3181248 (= e!1981920 (nullable!3378 (regex!5118 lt!1069165)))))

(declare-fun bm!230959 () Bool)

(assert (=> bm!230959 (= call!230964 (isEmpty!19843 lt!1069164))))

(declare-fun b!3181249 () Bool)

(declare-fun res!1292873 () Bool)

(assert (=> b!3181249 (=> res!1292873 e!1981919)))

(assert (=> b!3181249 (= res!1292873 (not (isEmpty!19843 (tail!5168 lt!1069164))))))

(declare-fun b!3181250 () Bool)

(assert (=> b!3181250 (= e!1981919 (not (= (head!6941 lt!1069164) (c!534252 (regex!5118 lt!1069165)))))))

(assert (= (and d!870564 c!534361) b!3181248))

(assert (= (and d!870564 (not c!534361)) b!3181247))

(assert (= (and d!870564 c!534360) b!3181240))

(assert (= (and d!870564 (not c!534360)) b!3181237))

(assert (= (and b!3181237 c!534362) b!3181246))

(assert (= (and b!3181237 (not c!534362)) b!3181241))

(assert (= (and b!3181241 (not res!1292869)) b!3181245))

(assert (= (and b!3181245 res!1292870) b!3181244))

(assert (= (and b!3181244 res!1292875) b!3181238))

(assert (= (and b!3181238 res!1292872) b!3181243))

(assert (= (and b!3181245 (not res!1292874)) b!3181239))

(assert (= (and b!3181239 res!1292871) b!3181242))

(assert (= (and b!3181242 (not res!1292876)) b!3181249))

(assert (= (and b!3181249 (not res!1292873)) b!3181250))

(assert (= (or b!3181240 b!3181242 b!3181244) bm!230959))

(declare-fun m!3438003 () Bool)

(assert (=> b!3181249 m!3438003))

(assert (=> b!3181249 m!3438003))

(declare-fun m!3438005 () Bool)

(assert (=> b!3181249 m!3438005))

(declare-fun m!3438007 () Bool)

(assert (=> d!870564 m!3438007))

(declare-fun m!3438009 () Bool)

(assert (=> d!870564 m!3438009))

(assert (=> b!3181247 m!3437315))

(assert (=> b!3181247 m!3437315))

(declare-fun m!3438011 () Bool)

(assert (=> b!3181247 m!3438011))

(assert (=> b!3181247 m!3438003))

(assert (=> b!3181247 m!3438011))

(assert (=> b!3181247 m!3438003))

(declare-fun m!3438013 () Bool)

(assert (=> b!3181247 m!3438013))

(assert (=> b!3181238 m!3438003))

(assert (=> b!3181238 m!3438003))

(assert (=> b!3181238 m!3438005))

(declare-fun m!3438015 () Bool)

(assert (=> b!3181248 m!3438015))

(assert (=> bm!230959 m!3438007))

(assert (=> b!3181243 m!3437315))

(assert (=> b!3181250 m!3437315))

(assert (=> b!3180661 d!870564))

(declare-fun d!870566 () Bool)

(assert (=> d!870566 (= (get!11360 lt!1069168) (v!35412 lt!1069168))))

(assert (=> b!3180661 d!870566))

(declare-fun d!870568 () Bool)

(declare-fun res!1292881 () Bool)

(declare-fun e!1981930 () Bool)

(assert (=> d!870568 (=> res!1292881 e!1981930)))

(assert (=> d!870568 (= res!1292881 ((_ is Nil!35730) tokens!494))))

(assert (=> d!870568 (= (forall!7230 tokens!494 lambda!116393) e!1981930)))

(declare-fun b!3181255 () Bool)

(declare-fun e!1981931 () Bool)

(assert (=> b!3181255 (= e!1981930 e!1981931)))

(declare-fun res!1292882 () Bool)

(assert (=> b!3181255 (=> (not res!1292882) (not e!1981931))))

(declare-fun dynLambda!14409 (Int Token!9602) Bool)

(assert (=> b!3181255 (= res!1292882 (dynLambda!14409 lambda!116393 (h!41150 tokens!494)))))

(declare-fun b!3181256 () Bool)

(assert (=> b!3181256 (= e!1981931 (forall!7230 (t!235115 tokens!494) lambda!116393))))

(assert (= (and d!870568 (not res!1292881)) b!3181255))

(assert (= (and b!3181255 res!1292882) b!3181256))

(declare-fun b_lambda!86639 () Bool)

(assert (=> (not b_lambda!86639) (not b!3181255)))

(declare-fun m!3438017 () Bool)

(assert (=> b!3181255 m!3438017))

(declare-fun m!3438019 () Bool)

(assert (=> b!3181256 m!3438019))

(assert (=> b!3180660 d!870568))

(declare-fun b!3181267 () Bool)

(declare-fun e!1981940 () Bool)

(declare-fun inv!16 (TokenValue!5348) Bool)

(assert (=> b!3181267 (= e!1981940 (inv!16 (value!166323 separatorToken!241)))))

(declare-fun b!3181268 () Bool)

(declare-fun e!1981938 () Bool)

(assert (=> b!3181268 (= e!1981940 e!1981938)))

(declare-fun c!534367 () Bool)

(assert (=> b!3181268 (= c!534367 ((_ is IntegerValue!16045) (value!166323 separatorToken!241)))))

(declare-fun b!3181269 () Bool)

(declare-fun inv!17 (TokenValue!5348) Bool)

(assert (=> b!3181269 (= e!1981938 (inv!17 (value!166323 separatorToken!241)))))

(declare-fun b!3181270 () Bool)

(declare-fun res!1292885 () Bool)

(declare-fun e!1981939 () Bool)

(assert (=> b!3181270 (=> res!1292885 e!1981939)))

(assert (=> b!3181270 (= res!1292885 (not ((_ is IntegerValue!16046) (value!166323 separatorToken!241))))))

(assert (=> b!3181270 (= e!1981938 e!1981939)))

(declare-fun d!870570 () Bool)

(declare-fun c!534368 () Bool)

(assert (=> d!870570 (= c!534368 ((_ is IntegerValue!16044) (value!166323 separatorToken!241)))))

(assert (=> d!870570 (= (inv!21 (value!166323 separatorToken!241)) e!1981940)))

(declare-fun b!3181271 () Bool)

(declare-fun inv!15 (TokenValue!5348) Bool)

(assert (=> b!3181271 (= e!1981939 (inv!15 (value!166323 separatorToken!241)))))

(assert (= (and d!870570 c!534368) b!3181267))

(assert (= (and d!870570 (not c!534368)) b!3181268))

(assert (= (and b!3181268 c!534367) b!3181269))

(assert (= (and b!3181268 (not c!534367)) b!3181270))

(assert (= (and b!3181270 (not res!1292885)) b!3181271))

(declare-fun m!3438021 () Bool)

(assert (=> b!3181267 m!3438021))

(declare-fun m!3438023 () Bool)

(assert (=> b!3181269 m!3438023))

(declare-fun m!3438025 () Bool)

(assert (=> b!3181271 m!3438025))

(assert (=> b!3180649 d!870570))

(declare-fun d!870572 () Bool)

(assert (=> d!870572 (dynLambda!14409 lambda!116393 (h!41150 tokens!494))))

(declare-fun lt!1069370 () Unit!50136)

(declare-fun choose!18546 (List!35854 Int Token!9602) Unit!50136)

(assert (=> d!870572 (= lt!1069370 (choose!18546 tokens!494 lambda!116393 (h!41150 tokens!494)))))

(declare-fun e!1981943 () Bool)

(assert (=> d!870572 e!1981943))

(declare-fun res!1292888 () Bool)

(assert (=> d!870572 (=> (not res!1292888) (not e!1981943))))

(assert (=> d!870572 (= res!1292888 (forall!7230 tokens!494 lambda!116393))))

(assert (=> d!870572 (= (forallContained!1101 tokens!494 lambda!116393 (h!41150 tokens!494)) lt!1069370)))

(declare-fun b!3181274 () Bool)

(declare-fun contains!6317 (List!35854 Token!9602) Bool)

(assert (=> b!3181274 (= e!1981943 (contains!6317 tokens!494 (h!41150 tokens!494)))))

(assert (= (and d!870572 res!1292888) b!3181274))

(declare-fun b_lambda!86641 () Bool)

(assert (=> (not b_lambda!86641) (not d!870572)))

(assert (=> d!870572 m!3438017))

(declare-fun m!3438027 () Bool)

(assert (=> d!870572 m!3438027))

(assert (=> d!870572 m!3437277))

(declare-fun m!3438029 () Bool)

(assert (=> b!3181274 m!3438029))

(assert (=> b!3180659 d!870572))

(declare-fun d!870574 () Bool)

(assert (=> d!870574 (= (inv!48577 (tag!5624 (h!41151 rules!2135))) (= (mod (str.len (value!166322 (tag!5624 (h!41151 rules!2135)))) 2) 0))))

(assert (=> b!3180669 d!870574))

(declare-fun d!870576 () Bool)

(declare-fun res!1292889 () Bool)

(declare-fun e!1981944 () Bool)

(assert (=> d!870576 (=> (not res!1292889) (not e!1981944))))

(assert (=> d!870576 (= res!1292889 (semiInverseModEq!2131 (toChars!7037 (transformation!5118 (h!41151 rules!2135))) (toValue!7178 (transformation!5118 (h!41151 rules!2135)))))))

(assert (=> d!870576 (= (inv!48580 (transformation!5118 (h!41151 rules!2135))) e!1981944)))

(declare-fun b!3181275 () Bool)

(assert (=> b!3181275 (= e!1981944 (equivClasses!2030 (toChars!7037 (transformation!5118 (h!41151 rules!2135))) (toValue!7178 (transformation!5118 (h!41151 rules!2135)))))))

(assert (= (and d!870576 res!1292889) b!3181275))

(declare-fun m!3438031 () Bool)

(assert (=> d!870576 m!3438031))

(declare-fun m!3438033 () Bool)

(assert (=> b!3181275 m!3438033))

(assert (=> b!3180669 d!870576))

(declare-fun d!870578 () Bool)

(assert (=> d!870578 (= (list!12679 (charsOf!3140 (h!41150 tokens!494))) (list!12683 (c!534253 (charsOf!3140 (h!41150 tokens!494)))))))

(declare-fun bs!539892 () Bool)

(assert (= bs!539892 d!870578))

(declare-fun m!3438035 () Bool)

(assert (=> bs!539892 m!3438035))

(assert (=> b!3180668 d!870578))

(declare-fun d!870580 () Bool)

(declare-fun lt!1069371 () BalanceConc!20836)

(assert (=> d!870580 (= (list!12679 lt!1069371) (originalCharacters!5832 (h!41150 tokens!494)))))

(assert (=> d!870580 (= lt!1069371 (dynLambda!14403 (toChars!7037 (transformation!5118 (rule!7530 (h!41150 tokens!494)))) (value!166323 (h!41150 tokens!494))))))

(assert (=> d!870580 (= (charsOf!3140 (h!41150 tokens!494)) lt!1069371)))

(declare-fun b_lambda!86643 () Bool)

(assert (=> (not b_lambda!86643) (not d!870580)))

(assert (=> d!870580 t!235130))

(declare-fun b_and!210305 () Bool)

(assert (= b_and!210261 (and (=> t!235130 result!197268) b_and!210305)))

(assert (=> d!870580 t!235132))

(declare-fun b_and!210307 () Bool)

(assert (= b_and!210263 (and (=> t!235132 result!197270) b_and!210307)))

(assert (=> d!870580 t!235134))

(declare-fun b_and!210309 () Bool)

(assert (= b_and!210265 (and (=> t!235134 result!197272) b_and!210309)))

(declare-fun m!3438037 () Bool)

(assert (=> d!870580 m!3438037))

(assert (=> d!870580 m!3437441))

(assert (=> b!3180668 d!870580))

(declare-fun b!3181276 () Bool)

(declare-fun e!1981947 () Bool)

(assert (=> b!3181276 (= e!1981947 (inv!16 (value!166323 (h!41150 tokens!494))))))

(declare-fun b!3181277 () Bool)

(declare-fun e!1981945 () Bool)

(assert (=> b!3181277 (= e!1981947 e!1981945)))

(declare-fun c!534369 () Bool)

(assert (=> b!3181277 (= c!534369 ((_ is IntegerValue!16045) (value!166323 (h!41150 tokens!494))))))

(declare-fun b!3181278 () Bool)

(assert (=> b!3181278 (= e!1981945 (inv!17 (value!166323 (h!41150 tokens!494))))))

(declare-fun b!3181279 () Bool)

(declare-fun res!1292890 () Bool)

(declare-fun e!1981946 () Bool)

(assert (=> b!3181279 (=> res!1292890 e!1981946)))

(assert (=> b!3181279 (= res!1292890 (not ((_ is IntegerValue!16046) (value!166323 (h!41150 tokens!494)))))))

(assert (=> b!3181279 (= e!1981945 e!1981946)))

(declare-fun d!870582 () Bool)

(declare-fun c!534370 () Bool)

(assert (=> d!870582 (= c!534370 ((_ is IntegerValue!16044) (value!166323 (h!41150 tokens!494))))))

(assert (=> d!870582 (= (inv!21 (value!166323 (h!41150 tokens!494))) e!1981947)))

(declare-fun b!3181280 () Bool)

(assert (=> b!3181280 (= e!1981946 (inv!15 (value!166323 (h!41150 tokens!494))))))

(assert (= (and d!870582 c!534370) b!3181276))

(assert (= (and d!870582 (not c!534370)) b!3181277))

(assert (= (and b!3181277 c!534369) b!3181278))

(assert (= (and b!3181277 (not c!534369)) b!3181279))

(assert (= (and b!3181279 (not res!1292890)) b!3181280))

(declare-fun m!3438039 () Bool)

(assert (=> b!3181276 m!3438039))

(declare-fun m!3438041 () Bool)

(assert (=> b!3181278 m!3438041))

(declare-fun m!3438043 () Bool)

(assert (=> b!3181280 m!3438043))

(assert (=> b!3180647 d!870582))

(declare-fun d!870584 () Bool)

(declare-fun res!1292895 () Bool)

(declare-fun e!1981952 () Bool)

(assert (=> d!870584 (=> res!1292895 e!1981952)))

(assert (=> d!870584 (= res!1292895 (not ((_ is Cons!35731) rules!2135)))))

(assert (=> d!870584 (= (sepAndNonSepRulesDisjointChars!1312 rules!2135 rules!2135) e!1981952)))

(declare-fun b!3181285 () Bool)

(declare-fun e!1981953 () Bool)

(assert (=> b!3181285 (= e!1981952 e!1981953)))

(declare-fun res!1292896 () Bool)

(assert (=> b!3181285 (=> (not res!1292896) (not e!1981953))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!567 (Rule!10036 List!35855) Bool)

(assert (=> b!3181285 (= res!1292896 (ruleDisjointCharsFromAllFromOtherType!567 (h!41151 rules!2135) rules!2135))))

(declare-fun b!3181286 () Bool)

(assert (=> b!3181286 (= e!1981953 (sepAndNonSepRulesDisjointChars!1312 rules!2135 (t!235116 rules!2135)))))

(assert (= (and d!870584 (not res!1292895)) b!3181285))

(assert (= (and b!3181285 res!1292896) b!3181286))

(declare-fun m!3438045 () Bool)

(assert (=> b!3181285 m!3438045))

(declare-fun m!3438047 () Bool)

(assert (=> b!3181286 m!3438047))

(assert (=> b!3180657 d!870584))

(declare-fun d!870586 () Bool)

(declare-fun lt!1069373 () Bool)

(declare-fun e!1981954 () Bool)

(assert (=> d!870586 (= lt!1069373 e!1981954)))

(declare-fun res!1292897 () Bool)

(assert (=> d!870586 (=> (not res!1292897) (not e!1981954))))

(assert (=> d!870586 (= res!1292897 (= (list!12682 (_1!20666 (lex!2047 thiss!18206 rules!2135 (print!1774 thiss!18206 (singletonSeq!2214 separatorToken!241))))) (list!12682 (singletonSeq!2214 separatorToken!241))))))

(declare-fun e!1981955 () Bool)

(assert (=> d!870586 (= lt!1069373 e!1981955)))

(declare-fun res!1292899 () Bool)

(assert (=> d!870586 (=> (not res!1292899) (not e!1981955))))

(declare-fun lt!1069372 () tuple2!35064)

(assert (=> d!870586 (= res!1292899 (= (size!26967 (_1!20666 lt!1069372)) 1))))

(assert (=> d!870586 (= lt!1069372 (lex!2047 thiss!18206 rules!2135 (print!1774 thiss!18206 (singletonSeq!2214 separatorToken!241))))))

(assert (=> d!870586 (not (isEmpty!19845 rules!2135))))

(assert (=> d!870586 (= (rulesProduceIndividualToken!2199 thiss!18206 rules!2135 separatorToken!241) lt!1069373)))

(declare-fun b!3181287 () Bool)

(declare-fun res!1292898 () Bool)

(assert (=> b!3181287 (=> (not res!1292898) (not e!1981955))))

(assert (=> b!3181287 (= res!1292898 (= (apply!8033 (_1!20666 lt!1069372) 0) separatorToken!241))))

(declare-fun b!3181288 () Bool)

(assert (=> b!3181288 (= e!1981955 (isEmpty!19855 (_2!20666 lt!1069372)))))

(declare-fun b!3181289 () Bool)

(assert (=> b!3181289 (= e!1981954 (isEmpty!19855 (_2!20666 (lex!2047 thiss!18206 rules!2135 (print!1774 thiss!18206 (singletonSeq!2214 separatorToken!241))))))))

(assert (= (and d!870586 res!1292899) b!3181287))

(assert (= (and b!3181287 res!1292898) b!3181288))

(assert (= (and d!870586 res!1292897) b!3181289))

(declare-fun m!3438049 () Bool)

(assert (=> d!870586 m!3438049))

(declare-fun m!3438051 () Bool)

(assert (=> d!870586 m!3438051))

(declare-fun m!3438053 () Bool)

(assert (=> d!870586 m!3438053))

(declare-fun m!3438055 () Bool)

(assert (=> d!870586 m!3438055))

(declare-fun m!3438057 () Bool)

(assert (=> d!870586 m!3438057))

(assert (=> d!870586 m!3437365))

(assert (=> d!870586 m!3438055))

(declare-fun m!3438059 () Bool)

(assert (=> d!870586 m!3438059))

(assert (=> d!870586 m!3438055))

(assert (=> d!870586 m!3438051))

(declare-fun m!3438061 () Bool)

(assert (=> b!3181287 m!3438061))

(declare-fun m!3438063 () Bool)

(assert (=> b!3181288 m!3438063))

(assert (=> b!3181289 m!3438055))

(assert (=> b!3181289 m!3438055))

(assert (=> b!3181289 m!3438051))

(assert (=> b!3181289 m!3438051))

(assert (=> b!3181289 m!3438053))

(declare-fun m!3438065 () Bool)

(assert (=> b!3181289 m!3438065))

(assert (=> b!3180656 d!870586))

(declare-fun d!870588 () Bool)

(declare-fun lt!1069391 () BalanceConc!20836)

(declare-fun printListTailRec!537 (LexerInterface!4707 List!35854 List!35853) List!35853)

(declare-fun dropList!1054 (BalanceConc!20838 Int) List!35854)

(assert (=> d!870588 (= (list!12679 lt!1069391) (printListTailRec!537 thiss!18206 (dropList!1054 lt!1069180 0) (list!12679 (BalanceConc!20837 Empty!10611))))))

(declare-fun e!1981961 () BalanceConc!20836)

(assert (=> d!870588 (= lt!1069391 e!1981961)))

(declare-fun c!534373 () Bool)

(assert (=> d!870588 (= c!534373 (>= 0 (size!26967 lt!1069180)))))

(declare-fun e!1981960 () Bool)

(assert (=> d!870588 e!1981960))

(declare-fun res!1292902 () Bool)

(assert (=> d!870588 (=> (not res!1292902) (not e!1981960))))

(assert (=> d!870588 (= res!1292902 (>= 0 0))))

(assert (=> d!870588 (= (printTailRec!1206 thiss!18206 lt!1069180 0 (BalanceConc!20837 Empty!10611)) lt!1069391)))

(declare-fun b!3181296 () Bool)

(assert (=> b!3181296 (= e!1981960 (<= 0 (size!26967 lt!1069180)))))

(declare-fun b!3181297 () Bool)

(assert (=> b!3181297 (= e!1981961 (BalanceConc!20837 Empty!10611))))

(declare-fun b!3181298 () Bool)

(declare-fun ++!8542 (BalanceConc!20836 BalanceConc!20836) BalanceConc!20836)

(assert (=> b!3181298 (= e!1981961 (printTailRec!1206 thiss!18206 lt!1069180 (+ 0 1) (++!8542 (BalanceConc!20837 Empty!10611) (charsOf!3140 (apply!8033 lt!1069180 0)))))))

(declare-fun lt!1069390 () List!35854)

(assert (=> b!3181298 (= lt!1069390 (list!12682 lt!1069180))))

(declare-fun lt!1069394 () Unit!50136)

(declare-fun lemmaDropApply!1013 (List!35854 Int) Unit!50136)

(assert (=> b!3181298 (= lt!1069394 (lemmaDropApply!1013 lt!1069390 0))))

(declare-fun head!6943 (List!35854) Token!9602)

(declare-fun drop!1837 (List!35854 Int) List!35854)

(declare-fun apply!8034 (List!35854 Int) Token!9602)

(assert (=> b!3181298 (= (head!6943 (drop!1837 lt!1069390 0)) (apply!8034 lt!1069390 0))))

(declare-fun lt!1069389 () Unit!50136)

(assert (=> b!3181298 (= lt!1069389 lt!1069394)))

(declare-fun lt!1069393 () List!35854)

(assert (=> b!3181298 (= lt!1069393 (list!12682 lt!1069180))))

(declare-fun lt!1069392 () Unit!50136)

(declare-fun lemmaDropTail!897 (List!35854 Int) Unit!50136)

(assert (=> b!3181298 (= lt!1069392 (lemmaDropTail!897 lt!1069393 0))))

(declare-fun tail!5169 (List!35854) List!35854)

(assert (=> b!3181298 (= (tail!5169 (drop!1837 lt!1069393 0)) (drop!1837 lt!1069393 (+ 0 1)))))

(declare-fun lt!1069388 () Unit!50136)

(assert (=> b!3181298 (= lt!1069388 lt!1069392)))

(assert (= (and d!870588 res!1292902) b!3181296))

(assert (= (and d!870588 c!534373) b!3181297))

(assert (= (and d!870588 (not c!534373)) b!3181298))

(declare-fun m!3438067 () Bool)

(assert (=> d!870588 m!3438067))

(declare-fun m!3438069 () Bool)

(assert (=> d!870588 m!3438069))

(declare-fun m!3438071 () Bool)

(assert (=> d!870588 m!3438071))

(declare-fun m!3438073 () Bool)

(assert (=> d!870588 m!3438073))

(assert (=> d!870588 m!3438069))

(assert (=> d!870588 m!3438067))

(declare-fun m!3438075 () Bool)

(assert (=> d!870588 m!3438075))

(assert (=> b!3181296 m!3438071))

(declare-fun m!3438077 () Bool)

(assert (=> b!3181298 m!3438077))

(declare-fun m!3438079 () Bool)

(assert (=> b!3181298 m!3438079))

(declare-fun m!3438081 () Bool)

(assert (=> b!3181298 m!3438081))

(declare-fun m!3438083 () Bool)

(assert (=> b!3181298 m!3438083))

(declare-fun m!3438085 () Bool)

(assert (=> b!3181298 m!3438085))

(declare-fun m!3438087 () Bool)

(assert (=> b!3181298 m!3438087))

(declare-fun m!3438089 () Bool)

(assert (=> b!3181298 m!3438089))

(declare-fun m!3438091 () Bool)

(assert (=> b!3181298 m!3438091))

(assert (=> b!3181298 m!3438085))

(declare-fun m!3438093 () Bool)

(assert (=> b!3181298 m!3438093))

(assert (=> b!3181298 m!3438077))

(assert (=> b!3181298 m!3438091))

(declare-fun m!3438095 () Bool)

(assert (=> b!3181298 m!3438095))

(assert (=> b!3181298 m!3438093))

(assert (=> b!3181298 m!3438081))

(declare-fun m!3438097 () Bool)

(assert (=> b!3181298 m!3438097))

(declare-fun m!3438099 () Bool)

(assert (=> b!3181298 m!3438099))

(declare-fun m!3438101 () Bool)

(assert (=> b!3181298 m!3438101))

(assert (=> b!3180666 d!870588))

(declare-fun d!870590 () Bool)

(declare-fun lt!1069397 () BalanceConc!20836)

(assert (=> d!870590 (= (list!12679 lt!1069397) (printList!1261 thiss!18206 (list!12682 lt!1069180)))))

(assert (=> d!870590 (= lt!1069397 (printTailRec!1206 thiss!18206 lt!1069180 0 (BalanceConc!20837 Empty!10611)))))

(assert (=> d!870590 (= (print!1774 thiss!18206 lt!1069180) lt!1069397)))

(declare-fun bs!539893 () Bool)

(assert (= bs!539893 d!870590))

(declare-fun m!3438103 () Bool)

(assert (=> bs!539893 m!3438103))

(assert (=> bs!539893 m!3438101))

(assert (=> bs!539893 m!3438101))

(declare-fun m!3438105 () Bool)

(assert (=> bs!539893 m!3438105))

(assert (=> bs!539893 m!3437337))

(assert (=> b!3180666 d!870590))

(declare-fun d!870592 () Bool)

(assert (=> d!870592 (= (list!12679 lt!1069166) (list!12683 (c!534253 lt!1069166)))))

(declare-fun bs!539894 () Bool)

(assert (= bs!539894 d!870592))

(declare-fun m!3438107 () Bool)

(assert (=> bs!539894 m!3438107))

(assert (=> b!3180666 d!870592))

(declare-fun d!870594 () Bool)

(declare-fun e!1981964 () Bool)

(assert (=> d!870594 e!1981964))

(declare-fun res!1292905 () Bool)

(assert (=> d!870594 (=> (not res!1292905) (not e!1981964))))

(declare-fun lt!1069400 () BalanceConc!20838)

(assert (=> d!870594 (= res!1292905 (= (list!12682 lt!1069400) (Cons!35730 (h!41150 tokens!494) Nil!35730)))))

(declare-fun singleton!970 (Token!9602) BalanceConc!20838)

(assert (=> d!870594 (= lt!1069400 (singleton!970 (h!41150 tokens!494)))))

(assert (=> d!870594 (= (singletonSeq!2214 (h!41150 tokens!494)) lt!1069400)))

(declare-fun b!3181301 () Bool)

(declare-fun isBalanced!3181 (Conc!10612) Bool)

(assert (=> b!3181301 (= e!1981964 (isBalanced!3181 (c!534254 lt!1069400)))))

(assert (= (and d!870594 res!1292905) b!3181301))

(declare-fun m!3438109 () Bool)

(assert (=> d!870594 m!3438109))

(declare-fun m!3438111 () Bool)

(assert (=> d!870594 m!3438111))

(declare-fun m!3438113 () Bool)

(assert (=> b!3181301 m!3438113))

(assert (=> b!3180666 d!870594))

(declare-fun d!870596 () Bool)

(declare-fun c!534376 () Bool)

(assert (=> d!870596 (= c!534376 ((_ is Cons!35730) (Cons!35730 (h!41150 tokens!494) Nil!35730)))))

(declare-fun e!1981967 () List!35853)

(assert (=> d!870596 (= (printList!1261 thiss!18206 (Cons!35730 (h!41150 tokens!494) Nil!35730)) e!1981967)))

(declare-fun b!3181306 () Bool)

(assert (=> b!3181306 (= e!1981967 (++!8540 (list!12679 (charsOf!3140 (h!41150 (Cons!35730 (h!41150 tokens!494) Nil!35730)))) (printList!1261 thiss!18206 (t!235115 (Cons!35730 (h!41150 tokens!494) Nil!35730)))))))

(declare-fun b!3181307 () Bool)

(assert (=> b!3181307 (= e!1981967 Nil!35729)))

(assert (= (and d!870596 c!534376) b!3181306))

(assert (= (and d!870596 (not c!534376)) b!3181307))

(declare-fun m!3438115 () Bool)

(assert (=> b!3181306 m!3438115))

(assert (=> b!3181306 m!3438115))

(declare-fun m!3438117 () Bool)

(assert (=> b!3181306 m!3438117))

(declare-fun m!3438119 () Bool)

(assert (=> b!3181306 m!3438119))

(assert (=> b!3181306 m!3438117))

(assert (=> b!3181306 m!3438119))

(declare-fun m!3438121 () Bool)

(assert (=> b!3181306 m!3438121))

(assert (=> b!3180666 d!870596))

(declare-fun b!3181318 () Bool)

(declare-fun e!1981970 () Bool)

(declare-fun tp_is_empty!17249 () Bool)

(assert (=> b!3181318 (= e!1981970 tp_is_empty!17249)))

(declare-fun b!3181319 () Bool)

(declare-fun tp!1006347 () Bool)

(declare-fun tp!1006348 () Bool)

(assert (=> b!3181319 (= e!1981970 (and tp!1006347 tp!1006348))))

(declare-fun b!3181321 () Bool)

(declare-fun tp!1006346 () Bool)

(declare-fun tp!1006349 () Bool)

(assert (=> b!3181321 (= e!1981970 (and tp!1006346 tp!1006349))))

(declare-fun b!3181320 () Bool)

(declare-fun tp!1006345 () Bool)

(assert (=> b!3181320 (= e!1981970 tp!1006345)))

(assert (=> b!3180676 (= tp!1006265 e!1981970)))

(assert (= (and b!3180676 ((_ is ElementMatch!9877) (regex!5118 (rule!7530 (h!41150 tokens!494))))) b!3181318))

(assert (= (and b!3180676 ((_ is Concat!15225) (regex!5118 (rule!7530 (h!41150 tokens!494))))) b!3181319))

(assert (= (and b!3180676 ((_ is Star!9877) (regex!5118 (rule!7530 (h!41150 tokens!494))))) b!3181320))

(assert (= (and b!3180676 ((_ is Union!9877) (regex!5118 (rule!7530 (h!41150 tokens!494))))) b!3181321))

(declare-fun b!3181332 () Bool)

(declare-fun b_free!83861 () Bool)

(declare-fun b_next!84565 () Bool)

(assert (=> b!3181332 (= b_free!83861 (not b_next!84565))))

(declare-fun tb!155263 () Bool)

(declare-fun t!235181 () Bool)

(assert (=> (and b!3181332 (= (toValue!7178 (transformation!5118 (h!41151 (t!235116 rules!2135)))) (toValue!7178 (transformation!5118 (rule!7530 (h!41150 tokens!494))))) t!235181) tb!155263))

(declare-fun result!197320 () Bool)

(assert (= result!197320 result!197274))

(assert (=> d!870494 t!235181))

(declare-fun b_and!210311 () Bool)

(declare-fun tp!1006361 () Bool)

(assert (=> b!3181332 (= tp!1006361 (and (=> t!235181 result!197320) b_and!210311))))

(declare-fun b_free!83863 () Bool)

(declare-fun b_next!84567 () Bool)

(assert (=> b!3181332 (= b_free!83863 (not b_next!84567))))

(declare-fun t!235183 () Bool)

(declare-fun tb!155265 () Bool)

(assert (=> (and b!3181332 (= (toChars!7037 (transformation!5118 (h!41151 (t!235116 rules!2135)))) (toChars!7037 (transformation!5118 (rule!7530 separatorToken!241)))) t!235183) tb!155265))

(declare-fun result!197322 () Bool)

(assert (= result!197322 result!197260))

(assert (=> b!3180740 t!235183))

(declare-fun tb!155267 () Bool)

(declare-fun t!235185 () Bool)

(assert (=> (and b!3181332 (= (toChars!7037 (transformation!5118 (h!41151 (t!235116 rules!2135)))) (toChars!7037 (transformation!5118 (rule!7530 (h!41150 tokens!494))))) t!235185) tb!155267))

(declare-fun result!197324 () Bool)

(assert (= result!197324 result!197268))

(assert (=> b!3180747 t!235185))

(assert (=> d!870432 t!235183))

(assert (=> d!870580 t!235185))

(declare-fun tp!1006359 () Bool)

(declare-fun b_and!210313 () Bool)

(assert (=> b!3181332 (= tp!1006359 (and (=> t!235183 result!197322) (=> t!235185 result!197324) b_and!210313))))

(declare-fun e!1981980 () Bool)

(assert (=> b!3181332 (= e!1981980 (and tp!1006361 tp!1006359))))

(declare-fun e!1981982 () Bool)

(declare-fun b!3181331 () Bool)

(declare-fun tp!1006358 () Bool)

(assert (=> b!3181331 (= e!1981982 (and tp!1006358 (inv!48577 (tag!5624 (h!41151 (t!235116 rules!2135)))) (inv!48580 (transformation!5118 (h!41151 (t!235116 rules!2135)))) e!1981980))))

(declare-fun b!3181330 () Bool)

(declare-fun e!1981981 () Bool)

(declare-fun tp!1006360 () Bool)

(assert (=> b!3181330 (= e!1981981 (and e!1981982 tp!1006360))))

(assert (=> b!3180655 (= tp!1006267 e!1981981)))

(assert (= b!3181331 b!3181332))

(assert (= b!3181330 b!3181331))

(assert (= (and b!3180655 ((_ is Cons!35731) (t!235116 rules!2135))) b!3181330))

(declare-fun m!3438123 () Bool)

(assert (=> b!3181331 m!3438123))

(declare-fun m!3438125 () Bool)

(assert (=> b!3181331 m!3438125))

(declare-fun b!3181346 () Bool)

(declare-fun b_free!83865 () Bool)

(declare-fun b_next!84569 () Bool)

(assert (=> b!3181346 (= b_free!83865 (not b_next!84569))))

(declare-fun t!235187 () Bool)

(declare-fun tb!155269 () Bool)

(assert (=> (and b!3181346 (= (toValue!7178 (transformation!5118 (rule!7530 (h!41150 (t!235115 tokens!494))))) (toValue!7178 (transformation!5118 (rule!7530 (h!41150 tokens!494))))) t!235187) tb!155269))

(declare-fun result!197328 () Bool)

(assert (= result!197328 result!197274))

(assert (=> d!870494 t!235187))

(declare-fun b_and!210315 () Bool)

(declare-fun tp!1006372 () Bool)

(assert (=> b!3181346 (= tp!1006372 (and (=> t!235187 result!197328) b_and!210315))))

(declare-fun b_free!83867 () Bool)

(declare-fun b_next!84571 () Bool)

(assert (=> b!3181346 (= b_free!83867 (not b_next!84571))))

(declare-fun t!235189 () Bool)

(declare-fun tb!155271 () Bool)

(assert (=> (and b!3181346 (= (toChars!7037 (transformation!5118 (rule!7530 (h!41150 (t!235115 tokens!494))))) (toChars!7037 (transformation!5118 (rule!7530 separatorToken!241)))) t!235189) tb!155271))

(declare-fun result!197330 () Bool)

(assert (= result!197330 result!197260))

(assert (=> b!3180740 t!235189))

(declare-fun t!235191 () Bool)

(declare-fun tb!155273 () Bool)

(assert (=> (and b!3181346 (= (toChars!7037 (transformation!5118 (rule!7530 (h!41150 (t!235115 tokens!494))))) (toChars!7037 (transformation!5118 (rule!7530 (h!41150 tokens!494))))) t!235191) tb!155273))

(declare-fun result!197332 () Bool)

(assert (= result!197332 result!197268))

(assert (=> b!3180747 t!235191))

(assert (=> d!870432 t!235189))

(assert (=> d!870580 t!235191))

(declare-fun b_and!210317 () Bool)

(declare-fun tp!1006376 () Bool)

(assert (=> b!3181346 (= tp!1006376 (and (=> t!235189 result!197330) (=> t!235191 result!197332) b_and!210317))))

(declare-fun e!1981995 () Bool)

(assert (=> b!3180654 (= tp!1006264 e!1981995)))

(declare-fun e!1981996 () Bool)

(declare-fun tp!1006373 () Bool)

(declare-fun e!1981998 () Bool)

(declare-fun b!3181345 () Bool)

(assert (=> b!3181345 (= e!1981998 (and tp!1006373 (inv!48577 (tag!5624 (rule!7530 (h!41150 (t!235115 tokens!494))))) (inv!48580 (transformation!5118 (rule!7530 (h!41150 (t!235115 tokens!494))))) e!1981996))))

(declare-fun tp!1006374 () Bool)

(declare-fun e!1982000 () Bool)

(declare-fun b!3181344 () Bool)

(assert (=> b!3181344 (= e!1982000 (and (inv!21 (value!166323 (h!41150 (t!235115 tokens!494)))) e!1981998 tp!1006374))))

(declare-fun b!3181343 () Bool)

(declare-fun tp!1006375 () Bool)

(assert (=> b!3181343 (= e!1981995 (and (inv!48581 (h!41150 (t!235115 tokens!494))) e!1982000 tp!1006375))))

(assert (=> b!3181346 (= e!1981996 (and tp!1006372 tp!1006376))))

(assert (= b!3181345 b!3181346))

(assert (= b!3181344 b!3181345))

(assert (= b!3181343 b!3181344))

(assert (= (and b!3180654 ((_ is Cons!35730) (t!235115 tokens!494))) b!3181343))

(declare-fun m!3438127 () Bool)

(assert (=> b!3181345 m!3438127))

(declare-fun m!3438129 () Bool)

(assert (=> b!3181345 m!3438129))

(declare-fun m!3438131 () Bool)

(assert (=> b!3181344 m!3438131))

(declare-fun m!3438133 () Bool)

(assert (=> b!3181343 m!3438133))

(declare-fun b!3181351 () Bool)

(declare-fun e!1982003 () Bool)

(declare-fun tp!1006379 () Bool)

(assert (=> b!3181351 (= e!1982003 (and tp_is_empty!17249 tp!1006379))))

(assert (=> b!3180649 (= tp!1006260 e!1982003)))

(assert (= (and b!3180649 ((_ is Cons!35729) (originalCharacters!5832 separatorToken!241))) b!3181351))

(declare-fun b!3181352 () Bool)

(declare-fun e!1982004 () Bool)

(assert (=> b!3181352 (= e!1982004 tp_is_empty!17249)))

(declare-fun b!3181353 () Bool)

(declare-fun tp!1006382 () Bool)

(declare-fun tp!1006383 () Bool)

(assert (=> b!3181353 (= e!1982004 (and tp!1006382 tp!1006383))))

(declare-fun b!3181355 () Bool)

(declare-fun tp!1006381 () Bool)

(declare-fun tp!1006384 () Bool)

(assert (=> b!3181355 (= e!1982004 (and tp!1006381 tp!1006384))))

(declare-fun b!3181354 () Bool)

(declare-fun tp!1006380 () Bool)

(assert (=> b!3181354 (= e!1982004 tp!1006380)))

(assert (=> b!3180669 (= tp!1006269 e!1982004)))

(assert (= (and b!3180669 ((_ is ElementMatch!9877) (regex!5118 (h!41151 rules!2135)))) b!3181352))

(assert (= (and b!3180669 ((_ is Concat!15225) (regex!5118 (h!41151 rules!2135)))) b!3181353))

(assert (= (and b!3180669 ((_ is Star!9877) (regex!5118 (h!41151 rules!2135)))) b!3181354))

(assert (= (and b!3180669 ((_ is Union!9877) (regex!5118 (h!41151 rules!2135)))) b!3181355))

(declare-fun b!3181356 () Bool)

(declare-fun e!1982005 () Bool)

(declare-fun tp!1006385 () Bool)

(assert (=> b!3181356 (= e!1982005 (and tp_is_empty!17249 tp!1006385))))

(assert (=> b!3180647 (= tp!1006266 e!1982005)))

(assert (= (and b!3180647 ((_ is Cons!35729) (originalCharacters!5832 (h!41150 tokens!494)))) b!3181356))

(declare-fun b!3181357 () Bool)

(declare-fun e!1982006 () Bool)

(assert (=> b!3181357 (= e!1982006 tp_is_empty!17249)))

(declare-fun b!3181358 () Bool)

(declare-fun tp!1006388 () Bool)

(declare-fun tp!1006389 () Bool)

(assert (=> b!3181358 (= e!1982006 (and tp!1006388 tp!1006389))))

(declare-fun b!3181360 () Bool)

(declare-fun tp!1006387 () Bool)

(declare-fun tp!1006390 () Bool)

(assert (=> b!3181360 (= e!1982006 (and tp!1006387 tp!1006390))))

(declare-fun b!3181359 () Bool)

(declare-fun tp!1006386 () Bool)

(assert (=> b!3181359 (= e!1982006 tp!1006386)))

(assert (=> b!3180650 (= tp!1006258 e!1982006)))

(assert (= (and b!3180650 ((_ is ElementMatch!9877) (regex!5118 (rule!7530 separatorToken!241)))) b!3181357))

(assert (= (and b!3180650 ((_ is Concat!15225) (regex!5118 (rule!7530 separatorToken!241)))) b!3181358))

(assert (= (and b!3180650 ((_ is Star!9877) (regex!5118 (rule!7530 separatorToken!241)))) b!3181359))

(assert (= (and b!3180650 ((_ is Union!9877) (regex!5118 (rule!7530 separatorToken!241)))) b!3181360))

(declare-fun b_lambda!86645 () Bool)

(assert (= b_lambda!86613 (or (and b!3181332 b_free!83863 (= (toChars!7037 (transformation!5118 (h!41151 (t!235116 rules!2135)))) (toChars!7037 (transformation!5118 (rule!7530 separatorToken!241))))) (and b!3180672 b_free!83851 (= (toChars!7037 (transformation!5118 (h!41151 rules!2135))) (toChars!7037 (transformation!5118 (rule!7530 separatorToken!241))))) (and b!3180663 b_free!83847 (= (toChars!7037 (transformation!5118 (rule!7530 (h!41150 tokens!494)))) (toChars!7037 (transformation!5118 (rule!7530 separatorToken!241))))) (and b!3180667 b_free!83843) (and b!3181346 b_free!83867 (= (toChars!7037 (transformation!5118 (rule!7530 (h!41150 (t!235115 tokens!494))))) (toChars!7037 (transformation!5118 (rule!7530 separatorToken!241))))) b_lambda!86645)))

(declare-fun b_lambda!86647 () Bool)

(assert (= b_lambda!86607 (or (and b!3180667 b_free!83843 (= (toChars!7037 (transformation!5118 (rule!7530 separatorToken!241))) (toChars!7037 (transformation!5118 (rule!7530 (h!41150 tokens!494)))))) (and b!3181332 b_free!83863 (= (toChars!7037 (transformation!5118 (h!41151 (t!235116 rules!2135)))) (toChars!7037 (transformation!5118 (rule!7530 (h!41150 tokens!494)))))) (and b!3180672 b_free!83851 (= (toChars!7037 (transformation!5118 (h!41151 rules!2135))) (toChars!7037 (transformation!5118 (rule!7530 (h!41150 tokens!494)))))) (and b!3180663 b_free!83847) (and b!3181346 b_free!83867 (= (toChars!7037 (transformation!5118 (rule!7530 (h!41150 (t!235115 tokens!494))))) (toChars!7037 (transformation!5118 (rule!7530 (h!41150 tokens!494)))))) b_lambda!86647)))

(declare-fun b_lambda!86649 () Bool)

(assert (= b_lambda!86639 (or b!3180660 b_lambda!86649)))

(declare-fun bs!539895 () Bool)

(declare-fun d!870598 () Bool)

(assert (= bs!539895 (and d!870598 b!3180660)))

(assert (=> bs!539895 (= (dynLambda!14409 lambda!116393 (h!41150 tokens!494)) (not (isSeparator!5118 (rule!7530 (h!41150 tokens!494)))))))

(assert (=> b!3181255 d!870598))

(declare-fun b_lambda!86651 () Bool)

(assert (= b_lambda!86615 (or (and b!3181346 b_free!83865 (= (toValue!7178 (transformation!5118 (rule!7530 (h!41150 (t!235115 tokens!494))))) (toValue!7178 (transformation!5118 (rule!7530 (h!41150 tokens!494)))))) (and b!3180672 b_free!83849 (= (toValue!7178 (transformation!5118 (h!41151 rules!2135))) (toValue!7178 (transformation!5118 (rule!7530 (h!41150 tokens!494)))))) (and b!3181332 b_free!83861 (= (toValue!7178 (transformation!5118 (h!41151 (t!235116 rules!2135)))) (toValue!7178 (transformation!5118 (rule!7530 (h!41150 tokens!494)))))) (and b!3180667 b_free!83841 (= (toValue!7178 (transformation!5118 (rule!7530 separatorToken!241))) (toValue!7178 (transformation!5118 (rule!7530 (h!41150 tokens!494)))))) (and b!3180663 b_free!83845) b_lambda!86651)))

(declare-fun b_lambda!86653 () Bool)

(assert (= b_lambda!86605 (or (and b!3181332 b_free!83863 (= (toChars!7037 (transformation!5118 (h!41151 (t!235116 rules!2135)))) (toChars!7037 (transformation!5118 (rule!7530 separatorToken!241))))) (and b!3180672 b_free!83851 (= (toChars!7037 (transformation!5118 (h!41151 rules!2135))) (toChars!7037 (transformation!5118 (rule!7530 separatorToken!241))))) (and b!3180663 b_free!83847 (= (toChars!7037 (transformation!5118 (rule!7530 (h!41150 tokens!494)))) (toChars!7037 (transformation!5118 (rule!7530 separatorToken!241))))) (and b!3180667 b_free!83843) (and b!3181346 b_free!83867 (= (toChars!7037 (transformation!5118 (rule!7530 (h!41150 (t!235115 tokens!494))))) (toChars!7037 (transformation!5118 (rule!7530 separatorToken!241))))) b_lambda!86653)))

(declare-fun b_lambda!86655 () Bool)

(assert (= b_lambda!86641 (or b!3180660 b_lambda!86655)))

(assert (=> d!870572 d!870598))

(declare-fun b_lambda!86657 () Bool)

(assert (= b_lambda!86643 (or (and b!3180667 b_free!83843 (= (toChars!7037 (transformation!5118 (rule!7530 separatorToken!241))) (toChars!7037 (transformation!5118 (rule!7530 (h!41150 tokens!494)))))) (and b!3181332 b_free!83863 (= (toChars!7037 (transformation!5118 (h!41151 (t!235116 rules!2135)))) (toChars!7037 (transformation!5118 (rule!7530 (h!41150 tokens!494)))))) (and b!3180672 b_free!83851 (= (toChars!7037 (transformation!5118 (h!41151 rules!2135))) (toChars!7037 (transformation!5118 (rule!7530 (h!41150 tokens!494)))))) (and b!3180663 b_free!83847) (and b!3181346 b_free!83867 (= (toChars!7037 (transformation!5118 (rule!7530 (h!41150 (t!235115 tokens!494))))) (toChars!7037 (transformation!5118 (rule!7530 (h!41150 tokens!494)))))) b_lambda!86657)))

(check-sat (not b_next!84545) (not b!3181354) (not b!3181233) (not d!870564) (not b!3181019) (not b!3181330) (not b!3181287) (not bm!230934) (not b!3181143) (not b!3180969) (not b!3181271) b_and!210317 (not b!3181289) (not b_next!84569) (not d!870472) (not b!3181250) (not b!3180749) (not b!3181321) (not b!3181026) (not d!870468) (not b!3181141) (not b!3180904) (not b!3181024) (not d!870470) (not b!3181021) (not d!870588) (not b!3181320) (not b!3181278) (not b!3181359) (not d!870580) (not b!3181296) (not d!870432) (not b!3181142) (not b!3181249) (not b!3180844) (not b!3181020) (not d!870576) (not b!3181267) (not b_lambda!86653) (not b!3180906) b_and!210315 (not d!870480) b_and!210267 b_and!210269 (not b!3180830) (not b!3180964) (not b!3180895) (not d!870456) (not b!3181235) (not b!3181319) (not b!3181022) (not d!870586) (not b!3181243) (not d!870444) (not b!3181236) (not b!3180957) (not d!870478) (not d!870484) (not b!3181286) (not d!870428) b_and!210313 (not b!3181298) (not b_lambda!86649) (not b!3180735) b_and!210311 (not b!3181360) (not b_next!84553) (not b!3181256) (not d!870466) (not b!3180941) (not d!870430) (not d!870474) (not b_lambda!86651) (not b!3181351) (not d!870506) b_and!210271 (not d!870532) (not b!3180950) (not d!870590) (not b!3180747) (not b!3180970) (not d!870562) (not b!3181285) (not b!3180907) (not d!870438) (not b!3180905) (not d!870536) (not b!3181234) (not b_lambda!86645) (not d!870434) (not bm!230958) (not b!3181247) (not b_next!84547) (not b!3180947) (not b!3180943) b_and!210307 (not b_next!84555) (not b!3181358) (not b!3180944) (not b!3181276) (not b!3181030) (not b!3181343) (not b!3181248) (not b_lambda!86647) (not d!870392) (not b_lambda!86655) (not b_next!84551) (not b!3180845) (not b!3181306) (not b!3180900) (not b!3181274) (not d!870578) (not d!870442) (not b!3181023) (not d!870594) (not bm!230955) (not b!3181027) (not b!3180740) b_and!210309 (not d!870508) (not b!3181031) (not d!870394) (not b_lambda!86657) (not b!3181269) (not b!3180748) (not b!3180949) (not b!3180851) b_and!210305 (not b!3181288) (not b!3181238) (not b!3181344) (not b!3181140) (not d!870382) (not b!3180928) (not d!870476) (not b_next!84565) (not b_next!84571) (not b_next!84567) (not d!870498) tp_is_empty!17249 (not tb!155227) (not d!870572) (not tb!155221) (not d!870592) (not b!3181301) (not b!3181280) (not b!3180746) (not d!870396) (not b!3181331) (not b!3181345) (not tb!155233) (not bm!230959) (not bm!230957) (not b!3180821) (not b!3180741) (not b!3181353) (not b!3181275) (not b!3181356) (not d!870436) (not b!3181355) (not d!870482) (not b_next!84549))
(check-sat (not b_next!84545) b_and!210317 (not b_next!84569) b_and!210315 b_and!210313 b_and!210311 (not b_next!84553) b_and!210271 (not b_next!84551) b_and!210309 b_and!210305 (not b_next!84549) b_and!210267 b_and!210269 (not b_next!84547) b_and!210307 (not b_next!84555) (not b_next!84565) (not b_next!84571) (not b_next!84567))
